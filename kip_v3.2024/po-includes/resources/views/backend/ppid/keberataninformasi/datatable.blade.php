@extends('layouts.app')
@section('title', __('keberataninformasi.datatable_title'))

@section('content')
    <div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-20">
        <div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1 mg-b-10">
                    <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">{{ __('general.dashboard') }}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ __('keberataninformasi.datatable_list') }}</li>
                </ol>
            </nav>
            <h4 class="mg-b-0 tx-spacing--1">{{ __('keberataninformasi.datatable_list') }}</h4>
        </div>
    </div>
    
    <div class="card">
        <div class="card-body">
            {!! Form::open(['url' => 'dashboard/ppid/keberataninformasi/deleteall', 'method' => 'post', 'class' => 'form-horizontal']) !!}
                <input type="hidden" name="totaldata" id="totaldata" value="0" />
				<div class="table-responsive" style="overflow-x: auto;">
					<table class="table table-striped" id="keberataninformasis-table">
						<thead>
							<tr>
								<th style="text-align:center;" width="15"></th>
								<th style="text-align:center;" width="25">{{ __('general.id') }}</th>
								<th>{{ __('keberataninformasi.nomor_permohonan') }}</th>
								<th>{{ __('keberataninformasi.nama_pemohon') }}</th>
								<th>{{ __('keberataninformasi.alasan_keberatan') }}</th>
								<th>{{ __('keberataninformasi.status_keberatan') }}</th>
								<th style="text-align:center;" width="140">{{ __('general.actions') }}</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td style="width:10px;" style="text-align:center;">
									<input type="checkbox" id="titleCheck" data-toggle="tooltip" title="{{ __('general.check_all') }}" />
								</td>
								<td colspan="6">
									<button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target="#alertalldel">
										<i class="fa fa-trash"></i> {{ __('general.delete_selected') }}
									</button>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection

@push('scripts')
<script type="text/javascript">
$(document).ready(function() {
    $('#keberataninformasis-table').DataTable({
        processing: true,
        serverSide: true,
        stateSave: true,
        ajax: '{{ url("dashboard/ppid/keberataninformasi/data") }}',
        autoWidth: false,
        order: [[1, 'desc']],
		columnDefs: [{
				targets: 'no-sort',
				orderable: false
			},{
				className: 'control',
				orderable: false,
				targets:   -1
			}],
        columns: [
            { data: 'check', name: 'check', orderable: false, searchable: false },
            { data: 'id', name: 'keberataninformasis.id' },
            { data: 'nomor_permohonan', name: 'keberataninformasis.nomor_permohonan' },
            { data: 'nama_pemohon', name: 'keberataninformasis.nama_pemohon' },
            { data: 'alasan_keberatan', name: 'keberataninformasis.alasan_keberatan' },
            { data: 'status_keberatan', name: 'keberataninformasis.status_keberatan' },
            { data: 'action', name: 'action', orderable: false, searchable: false },
        ],
        drawCallback: function(settings) {
				$("#titleCheck").click(function() {
					var checkedStatus = this.checked;
					$("table tbody tr td div:first-child input[type=checkbox]").each(function() {
						this.checked = checkedStatus;
						if (checkedStatus == this.checked) {
							$(this).closest('table tbody tr').removeClass('selected');
							$(this).closest('table tbody tr').find('input:hidden').attr('disabled', !this.checked);
							$('#totaldata').val($('table tbody input[type=checkbox]:checked').length);
						}
						if (this.checked) {
							$(this).closest('table tbody tr').addClass('selected');
							$(this).closest('table tbody tr').find('input:hidden').attr('disabled', !this.checked);
							$('#totaldata').val($('table tbody input[type=checkbox]:checked').length);
						}
					});
				});	
				$('table tbody tr td div:first-child input[type=checkbox]').on('click', function () {
					var checkedStatus = this.checked;
					this.checked = checkedStatus;
					if (checkedStatus == this.checked) {
						$(this).closest('table tbody tr').removeClass('selected');
						$(this).closest('table tbody tr').find('input:hidden').attr('disabled', !this.checked);
						$('#totaldata').val($('table tbody input[type=checkbox]:checked').length);
					}
					if (this.checked) {
						$(this).closest('table tbody tr').addClass('selected');
						$(this).closest('table tbody tr').find('input:hidden').attr('disabled', !this.checked);
						$('#totaldata').val($('table tbody input[type=checkbox]:checked').length);
					}
				});
				$('table tbody tr td div:first-child input[type=checkbox]').change(function() {
					$(this).closest('tr').toggleClass("selected", this.checked);
				});
				deleter.init();
				$('[data-toggle="tooltip"]').tooltip();
			},
			language: {
				searchPlaceholder: 'Search...',
				sSearch: '',
				lengthMenu: '_MENU_ items/page',
			}
		});
		
        $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

        $('.data-search').on('keyup', function() {
            table.search(this.value).draw();
        });
    });
</script>
@endpush
