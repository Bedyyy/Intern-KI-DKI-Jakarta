<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

use App\Post;
use App\PostGallery;
use App\PermohonanInformasi;

use App\Mail\SubscribeMail;

use DB;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;
use Exception;

class PermohonanInformasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return void
     */
    public function index(Request $request)
    {
        if (Auth::user()->can('read-permohonaninformasis')) {
            return view('backend.ppid.permohonaninformasi.datatable');
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
        if (Auth::user()->can('read-permohonaninformasis')) {
            return view('backend.ppid.permohonaninformasi.datatable');
        } else {
            return redirect('forbidden');
        }
    }

    /**
     * Process datatables ajax request for permohonaninformasis.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function anyData()
    {
        if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
            $permohonaninformasis = PermohonanInformasi::leftJoin('users', 'users.id', '=', 'permohonaninformasis.created_by')
                ->select('permohonaninformasis.*', 'users.id as uid', 'users.name as uname');
        } else {
            $permohonaninformasis = PermohonanInformasi::leftJoin('users', 'users.id', '=', 'permohonaninformasis.created_by')
                ->where('permohonaninformasis.created_by', '=', Auth::user()->id)
                ->select('permohonaninformasis.*', 'users.id as uid', 'users.name as uname');
        }
        return Datatables::of($permohonaninformasis)
            ->addColumn('check', function ($permohonaninformasi) {
                return '<div style="text-align:center;">
                        <input type="checkbox" id="titleCheckdel" />
                        <input type="hidden" class="deldata" name="id[]" value="' . Hashids::encode($permohonaninformasi->id) . '" disabled />
                    </div>';
            })
            ->addColumn('nomor_permohonan', function ($permohonaninformasi) {
                return $permohonaninformasi->nomor_permohonan;
            })
            ->addColumn('kategori_permohonan', function ($permohonaninformasi) {
                return $permohonaninformasi->kategori_permohonan;
            })
            ->addColumn('nama_pemohon', function ($permohonaninformasi) {
                return $permohonaninformasi->nama_pemohon;
            })
            ->addColumn('status_permohonan', function ($permohonaninformasi) {
                switch ($permohonaninformasi->status_permohonan) {
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

                return '<span class="' . $class . '">' . $permohonaninformasi->status_permohonan . '</span>';
            })->rawColumns(['status_permohonan'])
            ->addColumn('action', function ($permohonaninformasi) {
                return '<div style="text-align:center;">
                        <div class="btn-group">
                            <a href="' . url('dashboard/ppid/permohonaninformasi/' . Hashids::encode($permohonaninformasi->id)) . '" class="btn btn-secondary btn-xs btn-icon" title="' . __('general.view') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-eye"></i></a>
                            <a href="' . url('dashboard/ppid/permohonaninformasi/' . Hashids::encode($permohonaninformasi->id) . '/edit') . '" class="btn btn-primary btn-xs btn-icon" title="' . __('general.edit') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-edit"></i></a>
                            <a href="' . url('dashboard/ppid/permohonaninformasi/' . Hashids::encode($permohonaninformasi->id)) . '" class="btn btn-danger btn-xs btn-icon" data-delete="" title="' . __('general.delete') . '" data-toggle="tooltip" data-placement="left"><i class="fa fa-trash"></i></a>
                        </div>
                    </div>';
            })
            ->addColumn('control', function ($permohonaninformasi) {
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
        if (Auth::user()->can('create-permohonaninformasis')) {
            return view('backend.ppid.permohonaninformasi.create');
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
        if (!Auth::user()->can('create-permohonaninformasis')) {
            return redirect('forbidden');
        }

        $this->validate($request, [
            'nomor_permohonan' => 'required',
            'status_permohonan' => 'required',
        ]);

        $requestData = $request->all();
        $requestData['created_by'] = Auth::user()->id;
        $requestData['updated_by'] = Auth::user()->id;

        PermohonanInformasi::create($requestData);

        return redirect('dashboard/ppid/permohonaninformasi')->with('permohonaninformasi', __('permohonaninformasi.store_notif'));
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
        if (Auth::user()->can('read-permohonaninformasis')) {
            $ids = Hashids::decode($id);
            $permohonaninformasi = PermohonanInformasi::findOrFail($ids[0]);

            return view('backend.ppid.permohonaninformasi.show', compact('permohonaninformasi'));
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
        if (Auth::user()->can('update-permohonaninformasis')) {
            $ids = Hashids::decode($id);
            $permohonaninformasi = PermohonanInformasi::findOrFail($ids[0]);

            return view('backend.ppid.permohonaninformasi.edit', compact('permohonaninformasi'));
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
        if (Auth::user()->can('update-permohonaninformasis')) {
            $ids = Hashids::decode($id);
            $permohonaninformasi = PermohonanInformasi::findOrFail($ids[0]);

            $this->validate($request, [
                'nomor_permohonan' => 'required',
                'status_permohonan' => 'required',
            ]);

            $requestData = $request->all();
            $requestData['updated_by'] = Auth::user()->id;

            $permohonaninformasi->update($requestData);

            return redirect('dashboard/ppid/permohonaninformasi')->with('flash_message', __('permohonaninformasi.update_notif'));
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
        if (Auth::user()->can('delete-permohonaninformasis')) {
            $ids = Hashids::decode($id);
            $permohonaninformasi = PermohonanInformasi::findOrFail($ids[0]);

            $file_path = realpath('po-content/uploads/permohonaninformasi/' . $permohonaninformasi->file_ktp);
            if ($permohonaninformasi->file_ktp && file_exists($file_path)) {
                unlink($file_path);
            }

            if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                PermohonanInformasi::destroy($ids[0]);
            } else if ($permohonaninformasi->created_by == Auth::user()->id) {
                PermohonanInformasi::destroy($ids[0]);
            } else {
                return redirect('forbidden');
            }

            return redirect('dashboard/ppid/permohonaninformasi')->with('flash_message', __('permohonaninformasi.destroy_notif'));
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
        if (Auth::user()->can('delete-permohonaninformasis')) {
            if ($request->has('id')) {
                $ids = $request->id;
                foreach ($ids as $id) {
                    $idd = Hashids::decode($id);
                    $permohonaninformasi = PermohonanInformasi::findOrFail($idd[0]);

                    $file_path = realpath('po-content/uploads/permohonaninformasi/' . $permohonaninformasi->file_ktp);
                    if ($permohonaninformasi->file_ktp && file_exists($file_path)) {
                        unlink($file_path);
                    }

                    if (Auth::user()->hasRole('superadmin') || Auth::user()->hasRole('admin')) {
                        PermohonanInformasi::destroy($idd[0]);
                    } else if ($permohonaninformasi->created_by == Auth::user()->id) {
                        PermohonanInformasi::destroy($idd[0]);
                    } else {
                        return redirect('forbidden');
                    }
                }
                return redirect('dashboard/ppid/permohonaninformasi')->with('flash_message', __('permohonaninformasi.destroy_notif'));
            } else {
                return redirect('dashboard/ppid/permohonaninformasi')->with('flash_message', __('permohonaninformasi.destroy_error_notif'));
            }
        } else {
            return redirect('forbidden');
        }
    }
}
