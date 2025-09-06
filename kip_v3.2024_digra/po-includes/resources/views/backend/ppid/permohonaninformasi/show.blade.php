@extends('layouts.app')
@section('title', __('permohonaninformasi.show_title'))

@section('content')
	<div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-20">
		<div>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb breadcrumb-style1 mg-b-10">
					<li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">{{ __('general.dashboard') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/permohonaninformasi/table') }}">{{ __('general.content') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/permohonaninformasi/table') }}">{{ __('general.permohonaninformasi') }}</a></li>
					<li class="breadcrumb-item active" aria-current="page">{{ __('permohonaninformasi.show_title') }}</li>
				</ol>
			</nav>
			<h4 class="mg-b-0 tx-spacing--1">{{ __('permohonaninformasi.show_title') }}</h4>
		</div>
		
		<div><a href="{{ url('dashboard/ppid/permohonaninformasi/table') }}" class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-t-10"><i data-feather="arrow-left" class="wd-10 mg-r-5"></i> {{ __('general.back') }}</a></div>
	</div>
	
	<div class="card">
		<div class="card-body">
			<div class="col-md-10 offset-md-1">
				<h2>{{ $permohonaninformasi->judul }}</h2>
				
				<div class="table-responsive">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>{{ __('permohonaninformasi.nomor_permohonan') }}</th><td>{{ $permohonaninformasi->nomor_permohonan }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.kategori_permohonan') }}</th><td>{{ $permohonaninformasi->kategori_permohonan }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.nomor_identitas') }}</th><td>{{ $permohonaninformasi->nomor_identitas }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.nama_pemohon') }}</th><td>{{ $permohonaninformasi->nama_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.file_ktp') }}</th><td><a href="{{ url('po-content/uploads/permohonaninformasi/' . $permohonaninformasi->file_ktp) }}" target="_blank">{{ $permohonaninformasi->file_ktp }}</a></td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.alamat_pemohon') }}</th><td>{{ $permohonaninformasi->alamat_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.email_pemohon') }}</th><td>{{ $permohonaninformasi->email_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.no_telp_pemohon') }}</th><td>{{ $permohonaninformasi->no_telp_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.pekerjaan_pemohon') }}</th><td>{{ $permohonaninformasi->pekerjaan_pemohon }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.tujuan_permohonan') }}</th><td>{{ $permohonaninformasi->tujuan_permohonan }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.rincian_informasi') }}</th><td>{{ $permohonaninformasi->rincian_informasi }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.cara_dapat_informasi') }}</th><td>{{ $permohonaninformasi->cara_dapat_informasi }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.dapat_salinan_informasi') }}</th><td>{{ $permohonaninformasi->dapat_salinan_informasi }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.cara_dapat_salinan_informasi') }}</th><td>{{ $permohonaninformasi->cara_dapat_salinan_informasi }}</td>
							</tr>
							<tr>
								<th>{{ __('permohonaninformasi.status_permohonan') }}</th><td>{{ $permohonaninformasi->status_permohonan }}</td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
		</div>
	</div>
@endsection
