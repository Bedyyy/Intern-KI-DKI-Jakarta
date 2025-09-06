@extends(getTheme('layouts.app'))

@section('content')
    <section id="Hasil-Permohonan">
        <div class="container status-permohonan">
            <h3>Status Pengajuan Keberatan Informasi Publik Anda</h3>
            <div class="table-responsive" style="overflow-x: auto;">
                <table class="tbl-header" id="hasil-permohonan">
                    <thead>
                        <tr>
                            <th class="tiga-top">{{ __('keberataninformasi.nomor_permohonan') }}</th>
                            <th class="tiga-top">{{ __('keberataninformasi.nama_pemohon') }}</th>
                            <th class="detail-top">{{ __('keberataninformasi.tujuan_keberatan') }}</th>
                            <th class="tiga-top">{{ __('keberataninformasi.status_keberatan') }}</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="kembali">
                <a href="{{ url('statuspengajuankeberatan') }}">&laquo; Kembali</a>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            const urlParams = new URLSearchParams(window.location.search);
            const nomorPermohonan = urlParams.get('nomor_permohonan') || '';
            const namaPemohon = urlParams.get('nama_pemohon') || '';
            sessionStorage.setItem('nomor_permohonan', nomorPermohonan);
            sessionStorage.setItem('nama_pemohon', namaPemohon);

            history.replaceState(null, null, window.location.pathname);
            $('#hasil-permohonan').DataTable({
                processing: true,
                serverSide: true,
                stateSave: true,
                ajax: {
                    url: "{{ url('hasilkeberatan/data') }}",
                    data: function(d) {
                        d.nomor_permohonan = sessionStorage.getItem('nomor_permohonan');
                        d.nama_pemohon = sessionStorage.getItem('nama_pemohon');
                    },
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
                        data: 'nomor_permohonan',
                        name: 'nomor_permohonan'
                    },
                    {
                        data: 'nama_pemohon',
                        name: 'nama_pemohon'
                    },
                    {
                        data: 'tujuan_keberatan',
                        name: 'tujuan_keberatan'
                    },
                    {
                        data: 'status_keberatan',
                        name: 'status_keberatan',
                        render: function(data, type, row) {
                            let statusHtml = '';
                            if (data === 'Diproses') {
                                statusHtml =
                                    `<div class="badge-status status-diproses">${data}</div>`;
                            } else if (data === 'Diterima') {
                                statusHtml =
                                    `<div class="badge-status status-diterima">${data}</div>`;
                            } else if (data === 'Ditolak') {
                                statusHtml =
                                    `<div class="badge-status status-ditolak">${data}</div>`;
                            }
                            return statusHtml;
                        }
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
