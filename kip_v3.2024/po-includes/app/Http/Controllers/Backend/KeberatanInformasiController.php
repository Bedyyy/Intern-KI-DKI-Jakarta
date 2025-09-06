<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

use App\Post;
use App\PostGallery;
use App\KeberatanInformasi;

use App\Mail\SubscribeMail;

use DB;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;
use Exception;

class KeberatanInformasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return void
     */
    public function index(Request $request)
    {
        if (Auth::user()->can('read-keberataninformasis')) {
            return view('backend.ppid.keberataninformasi.datatable');
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
        if (Auth::user()->can('read-keberataninformasis')) {
            return view('backend.ppid.keberataninformasi.datatable');
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Process datatables ajax request for keberataninformasis.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function anyData()
    {
        if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
            $keberataninformasis = KeberatanInformasi::leftJoin('users', 'users.id', '=', 'keberataninformasis.created_by')
                ->select('keberataninformasis.*', 'users.id as uid', 'users.name as uname');
        } else {
            $keberataninformasis = KeberatanInformasi::leftJoin('users', 'users.id', '=', 'keberataninformasis.created_by')
                ->where('keberataninformasis.created_by', '=', Auth::user()->id)
                ->select('keberataninformasis.*', 'users.id as uid', 'users.name as uname');
        }
        return Datatables::of($keberataninformasis)
            ->addColumn('check', function ($keberataninformasi) {
                return '<div style="text-align:center;">
                        <input type="checkbox" id="titleCheckdel" />
                        <input type="hidden" class="deldata" name="id[]" value="' . Hashids::encode($keberataninformasi->id) . '" disabled />
                    </div>';
            })
            ->addColumn('nomor_permohonan', function ($keberataninformasi) {
                return $keberataninformasi->nomor_permohonan;
            })
            ->addColumn('nama_pemohon', function ($keberataninformasi) {
                return $keberataninformasi->nama_pemohon;
            })
            ->addColumn('status_keberatan', function ($keberataninformasi) {
                switch ($keberataninformasi->status_keberatan) {
                    case 'Diproses':
                        $class = 'badge-status status-diproses';
                        break;
                    case 'Diterima':
                        $class = 'badge-status status-diterima';
                        break;
                    case 'Ditolak':
                        $class = 'badge-status status-ditolak';
                        break;
                    default:
                        $class = '';
                }

                return '<span class="' . $class . '">' . $keberataninformasi->status_keberatan . '</span>';
            })->rawColumns(['status_keberatan'])
            ->addColumn('action', function ($keberataninformasi) {
                return '<div style="text-align:center;">
                        <div class="btn-group">
                            <a href="' . url('dashboard/ppid/keberataninformasi/' . Hashids::encode($keberataninformasi->id)) . '" class="btn btn-secondary btn-xs btn-icon" title="' . __('general.view') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-eye"></i></a>
                            <a href="' . url('dashboard/ppid/keberataninformasi/' . Hashids::encode($keberataninformasi->id) . '/edit') . '" class="btn btn-primary btn-xs btn-icon" title="' . __('general.edit') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-edit"></i></a>
                            <a href="' . url('dashboard/ppid/keberataninformasi/' . Hashids::encode($keberataninformasi->id)) . '" class="btn btn-danger btn-xs btn-icon" data-delete="" title="' . __('general.delete') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-trash"></i></a>
                        </div>
                    </div>';
            })
            ->addColumn('control', function ($keberataninformasi) {
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
        if (Auth::user()->can('create-keberataninformasis')) {
            return view('backend.ppid.keberataninformasi.create');
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
        if (!Auth::user()->can('create-keberataninformasis')) {
            return redirect('forbidden');
        }

        $this->validate($request, [
            'nomor_permohonan' => 'required',
            'status_keberatan' => 'required',
        ]);

        $requestData = $request->all();
        $requestData['created_by'] = Auth::user()->id;
        $requestData['updated_by'] = Auth::user()->id;

        KeberatanInformasi::create($requestData);

        return redirect('dashboard/ppid/keberataninformasi')->with('keberataninformasi', __('keberataninformasi.store_notif'));
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
        if (Auth::user()->can('read-keberataninformasis')) {
            $ids = Hashids::decode($id);
            $keberataninformasi = KeberatanInformasi::findOrFail($ids[0]);

            return view('backend.ppid.keberataninformasi.show', compact('keberataninformasi'));
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
        if (Auth::user()->can('update-keberataninformasis')) {
            $ids = Hashids::decode($id);
            $keberataninformasi = KeberatanInformasi::findOrFail($ids[0]);

            return view('backend.ppid.keberataninformasi.edit', compact('keberataninformasi'));
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
        if (Auth::user()->can('update-keberataninformasis')) {
            $ids = Hashids::decode($id);
            $keberataninformasi = KeberatanInformasi::findOrFail($ids[0]);

            $this->validate($request, [
                'status_keberatan' => 'required',
            ]);

            $requestData = $request->all();
            $requestData['updated_by'] = Auth::user()->id;

            $keberataninformasi->update($requestData);

            return redirect('dashboard/ppid/keberataninformasi')->with('flash_message', __('keberataninformasi.update_notif'));
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
        if (Auth::user()->can('delete-keberataninformasis')) {
            $ids = Hashids::decode($id);
            $keberataninformasi = KeberatanInformasi::findOrFail($ids[0]);

            if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                KeberatanInformasi::destroy($ids[0]);
            } else if ($keberataninformasi->created_by == Auth::user()->id) {
                KeberatanInformasi::destroy($ids[0]);
            } else {
                return redirect('forbidden');
            }

            return redirect('dashboard/ppid/keberataninformasi')->with('flash_message', __('keberataninformasi.destroy_notif'));
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
        if (Auth::user()->can('delete-keberataninformasis')) {
            if ($request->has('id')) {
                $ids = $request->id;
                foreach ($ids as $id) {
                    $idd = Hashids::decode($id);
                    $keberataninformasi = KeberatanInformasi::findOrFail($idd[0]);

                    if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                        KeberatanInformasi::destroy($idd[0]);
                    } else if ($keberataninformasi->created_by == Auth::user()->id) {
                        KeberatanInformasi::destroy($idd[0]);
                    } else {
                        return redirect('forbidden');
                    }
                }
                return redirect('dashboard/ppid/keberataninformasi')->with('flash_message', __('keberataninformasi.destroy_notif'));
            } else {
                return redirect('dashboard/ppid/keberataninformasi')->with('flash_message', __('keberataninformasi.destroy_error_notif'));
            }
        } else {
            return redirect('forbidden');
        }
    }
}
