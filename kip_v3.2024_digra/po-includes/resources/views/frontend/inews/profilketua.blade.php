@extends(getTheme('layouts.app'))

@section('content')
    <section id="Profil-Ketua">
        <h1>Profil Komisioner Komisi Informasi DKI Jakarta</h1>
        <div class="container">
            <div class="row">
                <div class="col image">
                    <img src="{{ asset('po-content/uploads/' . getSetting('ketua-ki')) }}" alt="">
                </div>
                <div class="col profil">
                    <h2>Harry Ara Hutabarat</h2>
                    <h4>Ketua Komisi Informasi DKI Jakarta</h4>
                    <p>Harry Ara Hutabarat dipercaya memimpin dan terpilih sebagai Ketua Komisi Informasi Provinsi DKI
                        Jakarta Periode 2020 - 2024 Keterbukaan informasi publik adalah anugerah reformasi. Kemajuan suatu
                        badan publik tergantung konsep pemahaman terhadap keterbukaan informasi publk, motivasinya di Komisi
                        Informasi Provinsi DKI Jakarta tentunya dengan "Ora Et Labora " (Berdoa dan Bekerja) sebagai motto
                        hidupnya Menyelesaikan Pendidikan Sosial Ekonomi Perikanan Institut Pertanian Bogor (IPB), Sekolah
                        Tinggi Ilmu Hukum Dharma Andiga dan Institut Bisnis Law Jakarta. Lahir di Bogor 4 Oktober 1984 dan
                        biasa dipanggil Ara. Aktif sebagai konsultan Hukum (2005-2010), Advokat (2010 -2019) dan bergabung
                        di Tim ahli kelompok Pakar Badan Legislasi Daerah DKI Jakarta. Ara memiliki pengalaman organisasi
                        diantaranya aktif sebagai ketua Osis SMA Kornita IPB, Dewan Pimpinan Pusat (DPP) Komite Nasional
                        Pemuda Indonesia (KNPI) dan Pengurus Pusat Gerakan Mahasiswa Kristen Indonesia (GMKI).</p>
                </div>
            </div>
        </div>
    </section>
@endsection
