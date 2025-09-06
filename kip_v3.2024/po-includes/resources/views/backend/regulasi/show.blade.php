@extends('layouts.app')
@section('title', __('regulasi.show_title'))

@section('content')
	<div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-20">
		<div>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb breadcrumb-style1 mg-b-10">
					<li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">{{ __('general.dashboard') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/regulasi/table') }}">{{ __('general.content') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/regulasi/table') }}">{{ __('general.regulasi') }}</a></li>
					<li class="breadcrumb-item active" aria-current="page">{{ __('regulasi.show_title') }}</li>
				</ol>
			</nav>
			<h4 class="mg-b-0 tx-spacing--1">{{ __('regulasi.show_title') }}</h4>
		</div>
		
		<div><a href="{{ url('dashboard/regulasi/table') }}" class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-t-10"><i data-feather="arrow-left" class="wd-10 mg-r-5"></i> {{ __('general.back') }}</a></div>
	</div>
	
	<div class="card">
		<div class="card-body">
			<div class="col-md-10 offset-md-1">
				<h2>{{ $regulasi->judul }}</h2>
				
				<div class="table-responsive">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>{{ __('regulasi.judul') }}</th><td>{{ $regulasi->judul }}</td>
							</tr>
							<tr>
								<th>{{ __('regulasi.keterangan') }}</th><td>{{ $regulasi->keterangan }}</td>
							</tr>
							<tr>
								<th>{{ __('regulasi.tentang') }}</th><td>{{ $regulasi->tentang }}</td>
							</tr>
							<tr>
								<th>{{ __('regulasi.file') }}</th><td><a href="{{ url('po-content/uploads/' . $regulasi->file) }}" target="_blank">{{ $regulasi->file }}</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
		</div>
	</div>
@endsection
