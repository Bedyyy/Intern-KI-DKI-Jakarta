@extends(getTheme('layouts.app'))

@section('content')
    <section id="Form-General">
        <h1>Permohonan dan Pengajuan Keberatan Informasi Publik</h1>
        <div class="container">
            <div class="row form">
                <div class="col-lg-4 button">
                    <a href="permohonaninformasi" class="stretched-link">
                        <i class="fa fa-paperclip" aria-hidden="true"></i>
                        <h3>Form Permohonan Informasi Publik</h3>
                    </a>
                </div>
                <div class="col-lg-4 button">
                    <a href="statuspermohonaninformasi" class="stretched-link">
                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                        <h3>Cek Status Permohonan Informasi</h3>
                    </a>
                </div>
            </div>
            <div class="row form">
                <div class="col-lg-4 button">
                    <a href="keberataninformasi" class="stretched-link">
                        <i class="fa fa-paperclip" aria-hidden="true"></i>
                        <h3>Form Pengajuan Keberatan</h3>
                    </a>
                </div>
                <div class="col-lg-4 button">
                    <a href="statuspengajuankeberatan" class="stretched-link">
                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                        <h3>Cek Status Pengajuan Keberatan</h3>
                    </a>
                </div>
            </div>
        </div>
    </section>
@endsection
