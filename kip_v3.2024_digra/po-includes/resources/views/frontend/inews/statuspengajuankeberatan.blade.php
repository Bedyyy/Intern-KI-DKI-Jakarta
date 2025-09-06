@extends(getTheme('layouts.app'))
@section('content')
    <section id="Status-Keberatan">
        <h1>Cek Status Keberatan Informasi Publik</h1>
        <div class="container">
            <form id="form-cari" action="{{ url('hasilkeberatan') }}" method="get">
                {{ csrf_field() }}
                <div class="form-group">
                    <input type="text" name="nomor_permohonan" id="nomor_permohonan" class="form-control" required>
                    <div class="underline"></div>
                    <label for="nomor_permohonan">Nomor Permohonan</label>
                </div>
                <div class="form-group">
                    <input type="text" name="nama_pemohon" id="nama_pemohon" class="form-control" required>
                    <div class="underline"></div>
                    <label for="nama_pemohon">Nama Lengkap</label>
                </div>
                <div class="btn-status">
                    <button type="submit" class="cek-status">Submit</button>
                </div>
            </form>
        </div>
    </section>
@endsection
