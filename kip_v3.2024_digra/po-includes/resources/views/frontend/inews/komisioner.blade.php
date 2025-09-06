@extends(getTheme('layouts.app'))

@section('content')
    <section id="Komisioner">
        <div class="row">
            <div class="judul col">
                <h2>Komisioner Komisi Informasi</h2>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col ketua">
                    <a href="profilketua">
                        <div class="card">
                            <img src="{{ asset('po-content/uploads/' . getSetting('ketua-ki')) }}" alt="">
                            <div class="isian container">
                                <h4>Harry Ara Hutabarat</h4><br>
                                <p>Ketua Komisi Informasi DKI Jakarta</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col ">
                    <a href="profilwakilketua">
                        <div class="card">
                            <img src="{{ asset('po-content/uploads/' . getSetting('wakil-ketua')) }}" alt="">
                            <div class="isian container">
                                <h4>Luqman Hakim Arifin</h4><br>
                                <p>Wakil Ketua Komisi Informasi DKI Jakarta</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col special-case">
                    <a href="profilketuapsi">
                        <div class="card">
                            <img src="{{ asset('po-content/uploads/' . getSetting('ketua-psi')) }}" alt="">
                            <div class="isian container">
                                <h4>Agus Wijayanto Nugroho</h4><br>
                                <p>Ketua Bidang Sengketa Penyelesaian Informasi <br>(PSI)</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col ">
                    <a href="profilketuaesa">
                        <div class="card">
                            <img src="{{ asset('po-content/uploads/' . getSetting('ketua-esa')) }}" alt="">
                            <div class="isian container">
                                <h4>Aang Muhdi Gozali</h4><br>
                                <p>Ketua Bidang Advokasi, Sosialisasi, dan Edukasi</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
@endsection
