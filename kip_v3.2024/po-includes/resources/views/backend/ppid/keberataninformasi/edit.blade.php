@extends('layouts.app')
@section('title', __('keberataninformasi.edit_title'))

@section('content')
	<div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-20">
		<div>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb breadcrumb-style1 mg-b-10">
					<li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">{{ __('general.dashboard') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/keberataninformasi/table') }}">{{ __('general.content') }}</a></li>
					<li class="breadcrumb-item"><a href="{{ url('/dashboard/ppid/keberataninformasi/table') }}">{{ __('general.keberataninformasi') }}</a></li>
					<li class="breadcrumb-item active" aria-current="page">{{ __('post.edit_title') }}</li>
				</ol>
			</nav>
			<h4 class="mg-b-0 tx-spacing--1">{{ __('keberataninformasi.edit_title') }}</h4>
		</div>
		
		<div><a href="{{ url('dashboard/ppid/keberataninformasi/table') }}" class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-t-10"><i data-feather="arrow-left" class="wd-10 mg-r-5"></i> {{ __('general.back') }}</a></div>
	</div>
	
	<div class="card">
		{!! Form::model($keberataninformasi, [
			'method' => 'PATCH',
			'url' => ['/dashboard/ppid/keberataninformasi', Hashids::encode($keberataninformasi->id)],
			'class' => 'form-horizontal',
			'files' => true // Ini penting untuk upload file
		]) !!}
			<div class="card-body pd-b-0">
				@if ($errors->any())
					<ul class="alert alert-danger">
						@foreach ($errors->all() as $error)
							<li>{{ $error }}</li>
						@endforeach
					</ul>
				@endif

				@include ('backend.ppid.keberataninformasi.form', ['formMode' => 'edit'])
			</div>
			<div class="card-footer">
				<button type="submit" class="btn btn-primary"><i data-feather="send" class="wd-10 mg-r-5"></i> {{ __('general.update') }}</button>
			</div>
		{!! Form::close() !!}
	</div>
@endsection

@section('modal')
	<div class="alert-gallery" style="display:none;">
		<div class="pos-absolute t-10 r-10">
			<div class="toast" role="alert" aria-live="assertive" aria-atomic="true" style="opacity:1;">
				<div class="toast-header">
					<h6 class="tx-inverse tx-14 mg-b-0 mg-r-auto">{{ __('keberataninformasi.notification') }}</h6>
					<button type="button" class="ml-2 mb-1 close tx-normal" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body bg-gray-100">{{ __('keberataninformasi.error_gallery') }}</div>
			</div>
		</div>
	</div>
@endsection

@push('styles')
<link href="{{ asset('po-admin/lib/bootstrap-tagsinput/bootstrap-tagsinput.css') }}" rel="stylesheet">
@endpush

@push('scripts')
<script src="{{ asset('po-admin/lib/tinymce/tinymce.min.js') }}" referrerpolicy="origin"></script>
<script src="{{ asset('po-admin/lib/bootstrap-tagsinput/bootstrap-tagsinput.min.js') }}"></script>
<script src="{{ asset('po-admin/lib/typeahead.js/typeahead.bundle.min.js') }}"></script>

<script type="text/javascript">
	tinymce.init({
		selector: "#content",
		height: 600,
		min_height: 600,
		plugins: [
			"advlist autolink link image lists charmap print preview hr anchor pagebreak",
			"searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking",
			"table directionality emoticons paste",
			"save code fullscreen autoresize codesample autosave responsivefilemanager"
		],
		menubar : false,
		toolbar1: "undo redo restoredraft | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist hr | outdent indent table searchreplace",
		toolbar2: "| fontsizeselect | styleselect | link unlink anchor | image media emoticons | forecolor backcolor | code codesample fullscreen ",
		contextmenu: "link paste image imagetools table spellchecker",
		image_advtab: true,
		fontsize_formats: "8px 10px 12px 14px 18px 24px 36px",
		relative_urls: false,
		remove_script_host: false,
		external_filemanager_path: "{{ url('po-content/filemanager') }}/",
		filemanager_title: "{{ __('general.filemanager') }}",
		external_plugins: {
			"filemanager" : "{{ asset('po-content/filemanager/plugin.min.js') }}"
		},
		filemanager_access_key: '{{ env("FM_KEY") }}',
	});
</script>
@endpush
