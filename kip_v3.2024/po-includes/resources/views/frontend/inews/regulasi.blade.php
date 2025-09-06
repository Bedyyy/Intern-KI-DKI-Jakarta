@extends(getTheme('layouts.app'))
@section('content')
    <section id="Regulasi">
        <h1>Regulasi</h1>
        <div class="container status-permohonan">
            <div class="table-responsive" style="overflow-x: auto;">
                <table class="tbl-header" id="regulasi-table-fe">
                    <thead>
                        <tr>
                            <th class="tentang">{{ __('regulasi.tentang') }}</th>
                            <th class="judul">{{ __('regulasi.judul') }}</th>
                            <th class="keterangan">{{ __('regulasi.keterangan') }}</th>
                            <th class="file">{{ __('regulasi.file') }}</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            $('#regulasi-table-fe').DataTable({
                processing: true,
                serverSide: true,
                stateSave: true,
                ajax: {
                    url: "{{ url('regulasi/data') }}",
                    type: "GET",
                },
                autoWidth: false,
                order: [
                    [1, 'desc']
                ],
                columnDefs: [{
                    targets: 'no-sort',
                    orderable: false
                }, {
                    className: 'control',
                    orderable: false,
                    targets: -1
                }],
                columns: [{
                        data: 'tentang',
                        name: 'tentang'
                    },
                    {
                        data: 'judul',
                        name: 'judul'
                    },
                    {
                        data: 'keterangan',
                        name: 'keterangan'
                    },
                    {
                        data: 'file',
                        name: 'file',
                    },
                ],
                drawCallback: function(settings) {},
                language: {
                    searchPlaceholder: 'Search...',
                    sSearch: '',
                    lengthMenu: '_MENU_ items/page',
                }
            });

            $('.data-search').on('keyup', function() {
                table.search(this.value).draw();
            });
        });
    </script>
@endpush