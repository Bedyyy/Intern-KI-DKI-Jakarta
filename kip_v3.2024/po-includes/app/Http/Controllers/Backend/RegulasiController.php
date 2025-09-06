<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

use App\Post;
use App\PostGallery;
use App\Regulasi;

use App\Mail\SubscribeMail;

use DB;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;
use Exception;

class RegulasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return void
     */
    public function index(Request $request)
    {
        if (Auth::user()->can('read-regulasis')) {
            return view('backend.regulasi.datatable');
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Displays datatables front end view
     *
     * @return \Illuminate\View\View
     */
    public function getIndex()
    {
        if (Auth::user()->can('read-regulasis')) {
            return view('backend.regulasi.datatable');
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Process datatables ajax request for regulasis.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function anyData()
    {
        if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
            $regulasis = Regulasi::leftJoin('users', 'users.id', '=', 'regulasis.created_by')
                ->select('regulasis.*', 'users.id as uid', 'users.name as uname');
        } else {
            $regulasis = Regulasi::leftJoin('users', 'users.id', '=', 'regulasis.created_by')
                ->where('regulasis.created_by', '=', Auth::user()->id)
                ->select('regulasis.*', 'users.id as uid', 'users.name as uname');
        }
        return Datatables::of($regulasis)
            ->addColumn('check', function ($regulasi) {
                return '<div style="text-align:center;">
                        <input type="checkbox" id="titleCheckdel" />
                        <input type="hidden" class="deldata" name="id[]" value="' . Hashids::encode($regulasi->id) . '" disabled />
                    </div>';
            })
            ->addColumn('tentang', function ($regulasi) {
                return $regulasi->tentang;
            })
            ->addColumn('judul', function ($regulasi) {
                return $regulasi->judul;
            })
            ->addColumn('keterangan', function ($regulasi) {
                return $regulasi->keterangan;
            })
            ->addColumn('file', function ($regulasi) {
                return $regulasi->file ? $regulasi->file : 'Tidak ada file';
            })
            ->addColumn('action', function ($regulasi) {
                return '<div style="text-align:center;">
                        <div class="btn-group">
                            <a href="' . url('dashboard/regulasi/' . Hashids::encode($regulasi->id)) . '" class="btn btn-secondary btn-xs btn-icon" title="' . __('general.view') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-eye"></i></a>
                            <a href="' . url('dashboard/regulasi/' . Hashids::encode($regulasi->id) . '/edit') . '" class="btn btn-primary btn-xs btn-icon" title="' . __('general.edit') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-edit"></i></a>
                            <a href="' . url('dashboard/regulasi/' . Hashids::encode($regulasi->id)) . '" class="btn btn-danger btn-xs btn-icon" data-delete="" title="' . __('general.delete') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-trash"></i></a>
                        </div>
                    </div>';
            })
            ->addColumn('control', function ($regulasi) {
                return '<div style="text-align:center;">
                        <a href="javascript:void(0);" class="btn btn-secondary btn-xs btn-icon" data-placement="left"><i class="fa fa-plus"></i></a>
                    </div>';
            })
            ->escapeColumns([])
            ->make(true);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        if (Auth::user()->can('create-regulasis')) {
            return view('backend.regulasi.create');
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        if (!Auth::user()->can('create-regulasis')) {
            return redirect('forbidden');
        }

        $this->validate($request, [
            'tentang' => 'required',
            'judul' => 'required',
            'keterangan' => 'required',
            'file' => 'required|mimes:pdf|max:2048',
        ]);

        $requestData = $request->all();
        $requestData['created_by'] = Auth::user()->id;
        $requestData['updated_by'] = Auth::user()->id;

        if ($request->hasFile('file')) {
            $file = $request->file('file');

            date_default_timezone_set('Asia/Jakarta');
            $filename = time() . '_' . $file->getClientOriginalName();

            if ($file->move('po-content/uploads/regulasi', $filename)) {
                $requestData['file'] = $filename;
            } else {
                return redirect()->back()->withErrors(['file' => __('File upload failed')])->withInput();
            }
        } else {
            return redirect()->back()->withErrors(['file' => __('No file was uploaded')])->withInput();
        }

        Regulasi::create($requestData);

        return redirect('dashboard/regulasi')->with('flash_message', __('regulasi.store_notif'));
    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        if (Auth::user()->can('read-regulasis')) {
            $ids = Hashids::decode($id);
            $regulasi = Regulasi::findOrFail($ids[0]);

            return view('backend.regulasi.show', compact('regulasi'));
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        if (Auth::user()->can('update-regulasis')) {
            $ids = Hashids::decode($id);
            $regulasi = Regulasi::findOrFail($ids[0]);

            return view('backend.regulasi.edit', compact('regulasi'));
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        if (Auth::user()->can('update-regulasis')) {
            $ids = Hashids::decode($id);
            $regulasi = Regulasi::findOrFail($ids[0]);

            $this->validate($request, [
                'tentang' => 'required',
                'judul' => 'required',
                'keterangan' => 'required',
                'file' => 'mimes:pdf|max:2048', // Ensure PDF type and size limits
            ]);

            $requestData = $request->all();
            $requestData['updated_by'] = Auth::user()->id;

            if ($request->hasFile('file')) {
                $file = $request->file('file');

                $oldFilePath = realpath('po-content/uploads/regulasi/' . $regulasi->file);
                if ($regulasi->file && file_exists($oldFilePath)) {
                    unlink($oldFilePath);
                }

                date_default_timezone_set('Asia/Jakarta');
                $filename = time() . '_' . $file->getClientOriginalName();

                if ($file->move('po-content/uploads/regulasi', $filename)) {
                    $requestData['file'] = $filename;
                } else {
                    return redirect()->back()->withErrors(['file' => __('File upload failed')])->withInput();
                }
            }

            $regulasi->update($requestData);

            return redirect('dashboard/regulasi')->with('flash_message', __('regulasi.update_notif'));
        } else {
            return redirect('forbidden');
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        if (Auth::user()->can('delete-regulasis')) {
            $ids = Hashids::decode($id);
            $regulasi = Regulasi::findOrFail($ids[0]);

            $file_path = realpath('po-content/uploads/regulasi/' . $regulasi->file);
            if ($regulasi->file && file_exists($file_path)) {
                unlink($file_path);
            }

            if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                Regulasi::destroy($ids[0]);
            } else if ($regulasi->created_by == Auth::user()->id) {
                Regulasi::destroy($ids[0]);
            } else {
                return redirect('forbidden');
            }

            return redirect('dashboard/regulasi')->with('flash_message', __('regulasi.destroy_notif'));
        } else {
            return redirect('forbidden');
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return void
     */
    public function deleteAll(Request $request)
    {
        if (Auth::user()->can('delete-regulasis')) {
            if ($request->has('id')) {
                $ids = $request->id;
                foreach ($ids as $id) {
                    $idd = Hashids::decode($id);
                    $regulasi = Regulasi::findOrFail($idd[0]);

                    $file_path = realpath('po-content/uploads/regulasi' . $regulasi->file);
                    if ($regulasi->file && file_exists($file_path)) {
                        unlink($file_path);
                    }

                    if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                        Regulasi::destroy($idd[0]);
                    } else if ($regulasi->created_by == Auth::user()->id) {
                        Regulasi::destroy($idd[0]);
                    } else {
                        return redirect('forbidden');
                    }
                }
                return redirect('dashboard/regulasi')->with('flash_message', __('regulasi.destroy_notif'));
            } else {
                return redirect('dashboard/regulasi')->with('flash_message', __('regulasi.destroy_error_notif'));
            }
        } else {
            return redirect('forbidden');
        }
    }
}
