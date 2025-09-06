<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use App\RegistrasiSengketaInformasi;

class RegistrasiSengketaInformasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return void
     */
    public function index(Request $request)
    {
		if(Auth::user()->can('read-registrasisengketainformasi')) {
			return view('backend.bidangpsi.registrasisengketainformasi');
		} else {
			return redirect('forbidden');
		}
    }
}