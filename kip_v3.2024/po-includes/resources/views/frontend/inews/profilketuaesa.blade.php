@extends(getTheme('layouts.app'))

@section('content')
    <section id="Profil-Ketua-ESA">
        <h1>Profil Komisioner Komisi Informasi DKI Jakarta</h1>
        <div class="container">
            <div class="row">
                <div class="col image">
                    <img src="{{ asset('po-content/uploads/' . getSetting('ketua-esa')) }}" alt="">
                </div>
                <div class="col profil">
                    <h2>Aang Muhdi Gozali</h2>
                    <h4>Ketua Bidang Edukasi, Sosialisasi, dan Advokasi (ESA)</h4>
                    <p>Aang Muhdi Gozali mengemban amanah Ketua Bidang Advokasi, Sosialisasi dan Edukasi Komisi Informasi
                        DKI Jakarta Periode 2020 - 2024. Mengawali karir sebelumnya sebagai Dose di Universitas Al Azhar
                        Indonesia, menyelesaikan pendidikan sarjana (S1) di International University Of Africa (Khourtum,
                        Sudan) dan melanjutkan program master (S2) di Unidurmas Islamic University Khourtum, Sudan. Aang
                        sosok muda kelahiran Tasikmalaya 28 April 1984, pernah aktif sebagai pengurus Cabang Istimewa
                        Nahdatul Ulama (PCI-NU) Khourtum, Sudan. Saat in sedang melanjutkan program studi pasca sarjana (S3)
                        di Ombdurman Islamic University (Khourtum, Sudan) Meski lama di Sudan, saat ini berkiprah di KI DKI
                        Jakarta memiliki komitmen melalui keterbukaan informasi publik mendorong peran aktif masyarakat
                        untuk terlibat dalam aspek pengawasan serta proses kebijakan publik. Upaya in akan terjalin
                        harmonisasi antara pemerintah dan warga mewujudkan pemerintahan yang baik (Good Governance),
                        InsyaAllah berkah melalui motto hidupnya "Man Jadda Wajada".</p>
                </div>
            </div>
        </div>
    </section>
@endsection
