@extends(getTheme('layouts.app'))

@section('content')
    <section id="Profil-Wakil-Ketua">
        <h1>Profil Komisioner Komisi Informasi DKI Jakarta</h1>
        <div class="container">
            <div class="row">
                <div class="col image">
                    <img src="{{ asset('po-content/uploads/' . getSetting('wakil-ketua')) }}" alt="">
                </div>
                <div class="col profil">
                    <h2>Luqman Hakim Arifin</h2>
                    <h4>Wakil Ketua Komisi Informasi DKI Jakarta</h4>
                    <p>Luqman Hakim Arifin, diberi amanah sebagai Ketua bidang Kelembagaan Komisi Informasi DKI Jakarta
                        (2020-2024). Mengawali karier sebagai wartawan Majalah Gatra (2003-2006), lulusan Fakultas Filsafat
                        Universitas Gadjah Mada (UGM) Yogyakarta ini selanjutnya banyak aktif di dunia Konsultan Komunikasi
                        Publik dan Literasi Perbukuan. <br>
                        Lahir di Gresik, 9 Desember. Luqman adalah Founder Penerbit RENEBOOK-TUROS PUSTAKA, CO-Founder
                        Konsultan Komunikasi MAGNITUDE INDONESIA, Founder Jakarta Book Review dan Founder Pondok Pesantren
                        WALI salatiga. Kehadiranya sebagai Komisioner Komisi Informasi DKI Jakarta sejatinya merupakan
                        perjalanan panjang keterlibatannya dalam isu Keterbukaan Informasi Publik sejak tahun 2013. <br>
                        Ia juga pernah menjadi Pimred Majalah Pers Mahasiswa Balairung UGM, Pimred Mjalah Pramuka, Pimred
                        Majalah Parenting EDUKASIA, member Aliansi Jurnalis Independen (AJI) DKI Jakarta, Andalan Nasional
                        Kwartir Nasional Gerakan Pramuka bidang Kominfo (2013-2018), Deputy Program Coordinator U-Report
                        UNICEF-Gerakan Pramuka, Konsultan Komunikasi UNICEF di Satgas Covid-19 BNPB, dan terakhir sebagai
                        Staf Khusus Komunikasi Wakil Gubernur DKI Jakarta (2020-2022). <br>
                        Sebagai Anggota PAW (Pergantian Antar Waktu) Komisi Informasi DKI Jakarta, Luqman berkomitmen untuk
                        mengoptimalkan Keterbukaan Informasi Publik di wilayah dengan spirit ”Komisi Informasi makin Vital,
                        Kualitas hidup warga makin optimal”.</p>
                </div>
            </div>
        </div>
    </section>
@endsection
