@extends('layouts.app')
@section('title', __('keberataninformasi.show_title'))

@section('content')
	<div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-20">
		<div>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb breadcrumb-style1 mg-b-10">
					<li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">{{ __('general.dashboard') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/keberataninformasi/table') }}">{{ __('general.content') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/keberataninformasi/table') }}">{{ __('general.keberataninformasi') }}</a></li>
					<li class="breadcrumb-item active" aria-current="page">{{ __('keberataninformasi.show_title') }}</li>
				</ol>
			</nav>
			<h4 class="mg-b-0 tx-spacing--1">{{ __('keberataninformasi.show_title') }}</h4>
		</div>
		
		<div><a href="{{ url('dashboard/ppid/keberataninformasi/table') }}" class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-t-10"><i data-feather="arrow-left" class="wd-10 mg-r-5"></i> {{ __('general.back') }}</a></div>
	</div>
	
	<div class="card">
		<div class="card-body">
			<div class="col-md-10 offset-md-1">
				<h2>{{ $keberataninformasi->judul }}</h2>
				
				<div class="table-responsive">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>{{ __('keberataninformasi.nomor_permohonan') }}</th><td>{{ $keberataninformasi->nomor_permohonan }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.nama_pemohon') }}</th><td>{{ $keberataninformasi->nama_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.no_telp_pemohon') }}</th><td>{{ $keberataninformasi->no_telp_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.pekerjaan_pemohon') }}</th><td>{{ $keberataninformasi->pekerjaan_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.alamat_pemohon') }}</th><td>{{ $keberataninformasi->alamat_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.tujuan_keberatan') }}</th><td>{{ $keberataninformasi->tujuan_keberatan }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.alasan_keberatan') }}</th><td>{{ $keberataninformasi->alasan_keberatan }}</td>
							</tr>
							<tr>
								<th>{{ __('keberataninformasi.status_keberatan') }}</th><td>{{ $keberataninformasi->status_keberatan }}</td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
		</div>
	</div>
@endsection
