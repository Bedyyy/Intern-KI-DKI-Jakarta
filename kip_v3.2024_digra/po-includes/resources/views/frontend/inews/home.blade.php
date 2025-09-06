@extends(getTheme('layouts.app'))

@section('content')
    <section id="hero" class="hero section">
        <div id="main-carousel" class="carousel slide" data-ride="carousel" data-interval="3000">
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="{{ asset('po-content/uploads/Monas.jpeg') }}" alt="" class="img-responsive">
                    <div class="carousel-container">
                        <h1>MENDORONG KETERBUKAAN INFORMASI PUBLIK WARGA DKI JAKARTA</h1>
                        <h3>#BukaInformasiPublik #HakAndaUntukTahu</h3>
                    </div>
                </div>
                <div class="item">
                    <img src="{{ asset('po-content/uploads/GBK.png') }}" alt="" class="img-responsive">
                    <div class="carousel-container">
                        <h1>MENDORONG KETERBUKAAN INFORMASI PUBLIK WARGA DKI JAKARTA</h1>
                        <h3>#BukaInformasiPublik #HakAndaUntukTahu</h3>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="featured container">
            <div class="row gy-4">
                <div class="col-lg-4 d-flex content" data-aos="zoom-in" data-aos-duration="300">
                    <div class="tiga featured-item position-relative">
                        <div class="icon">
                            <img src="{{ asset('po-content/uploads/ppid.png') }}" alt="" class="img-responsive">
                        </div>
                        <h4><a href="pageppid" class="stretched-link">Pejabat Pengelola Informasi dan Dokumentasi (PPID)</a>
                        </h4>
                    </div>
                </div>
                <div class="col-lg-4 d-flex content" data-aos="zoom-in" data-aos-duration="500">
                    <div class="tiga featured-item-special position-relative">
                        <div class="icon-special">
                            <img src="{{ asset('po-content/uploads/e-monev.jpg') }}" alt="" class="img-responsive">
                        </div>
                        <h4><a href="" class="stretched-link">E-Monev</a></h4>
                    </div>
                </div>
                <div class="col-lg-4 d-flex content" data-aos="zoom-in" data-aos-duration="700">
                    <div class="tiga featured-item position-relative">
                        <div class="icon">
                            <img src="{{ asset('po-content/uploads/psi.png') }}" alt="" class="img-responsive">
                        </div>
                        <h4><a href="epsi" class="stretched-link">Penyelesaian Sengketa Informasi (PSI)</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section about">

        <div class="container" data-aos="fade-up" data-aos-duration="2000">

            <h1>Tentang Kami</h1>

            <div class="row gy-4">
                <div class="col-lg-6 order-2 order-lg-1 content">
                    <p><span>Komisi Informasi DKI Jakarta</span> merupakan lembaga mandiri yang terbentuk sebagai realisasi
                        UU No. 14 Tahun 2008. Berkedudukan di ibukota provinsi DKI Jakarta dan berjumlah 5 (lima) orang yang
                        mencerminkan unsur pemerintah dan unsur masyarakat serta hadir untuk menerima, memeriksa, dan
                        memutus sengketa informasi publik di Daerah Khusus Ibukota Jakarta melalui mediasi dan/atau
                        ajudikasi nonlitigasi.</p>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 video">
                    <video muted controls>
                        <source src="{{ asset('po-content/uploads/video-profile-ki-dki.mp4') }}" type="video/mp4">
                    </video>
                </div>
            </div>

        </div>

    </section><!-- /About Section -->

    <section id="services" class="services section">

        <div class="container" data-aos="fade-up" data-aos-duration="2000">

            <h1>Informasi & Pelayanan</h1>

            <div class="row gy-4">

                <swiper-container class="mySwiper" pagination="true" pagination-dynamic-bullets="true" loop="true"
                    pagination-clickable="true" effect="coverflow" grab-cursor="true" centered-slides="true"
                    slides-per-view="auto" coverflow-effect-rotate="50" coverflow-effect-stretch="0" coverflow-effect-depth="100"
                    coverflow-effect-modifier="1" coverflow-effect-slide-shadows="true">
                    <swiper-slide>
                        <div class="col-lg-4 col-md-6 item">
                            <div class="service-item  position-relative">
                                <div class="icon">
                                    <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                </div>
                                <a href="#" class="stretched-link">
                                    <h3>Agenda Sidang</h3>
                                </a>
                            </div>
                        </div><!-- End Service Item -->
                    </swiper-slide>
                    <swiper-slide>
                        <div class="col-lg-4 col-md-6 item">
                            <div class="service-item position-relative">
                                <div class="icon">
                                    <i class="fa fa-gavel" aria-hidden="true"></i>
                                </div>
                                <a href="#" class="stretched-link">
                                    <h3>Putusan Sidang</h3>
                                </a>
                            </div>
                        </div><!-- End Service Item -->
                    </swiper-slide>
                    <swiper-slide>
                        <div class="col-lg-4 col-md-6 item">
                            <div class="service-item position-relative">
                                <div class="icon">
                                    <i class="fa fa-link" aria-hidden="true"></i>
                                </div>
                                <a href="#" class="stretched-link">
                                    <h3>Agenda Kegiatan</h3>
                                </a>
                            </div>
                        </div><!-- End Service Item -->
                    </swiper-slide>
                    <swiper-slide>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item position-relative">
                                <div class="icon">
                                    <i class="fa fa-paperclip" aria-hidden="true"></i>
                                </div>
                                <a href="permohonaninformasi" class="stretched-link">
                                    <h3>Form Permohonan Informasi Publik</h3>
                                </a>
                            </div>
                        </div><!-- End Service Item -->
                    </swiper-slide>
                    <swiper-slide>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item position-relative">
                                <div class="icon">
                                    <i class="fa fa-paperclip" aria-hidden="true"></i>
                                </div>
                                <a href="keberataninformasi" class="stretched-link">
                                    <h3>Form Pengajuan Keberatan</h3>
                                </a>
                            </div>
                        </div><!-- End Service Item -->
                    </swiper-slide>
                </swiper-container>
            </div>

        </div>

    </section><!-- /Services Section -->

    <section class="berita">

        <div class="container" data-aos="fade-up" data-aos-duration="2000">
            <h1>Berita Sorotan</h1>

            <section>
                <div class="container">
                    <div class="thm-padding">
                        <div class="popular row thm-margin">
                            @foreach (popularPost(3, 0) as $popularPost2)
                                <div class="col-xs-12 col-sm-8 col-md-12 thm-padding">
                                    <div class="slider-post post-height-2">
                                        <a href="{{ prettyUrl($popularPost2) }}" class="news-image"><img
                                                src="{{ getPicture($popularPost2->picture, 'medium', $popularPost2->updated_by) }}"
                                                alt="" class="img-responsive"></a>
                                        <div class="post-text">
                                            <span class="post-category">{{ $popularPost2->ctitle }}</span>
                                            <h4><a href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->title }}</a>
                                            </h4>
                                            <ul class="authar-info">
                                                <li class="authar hidden-xs hidden-sm"><a
                                                        href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->name }}</a>
                                                </li>
                                                <li class="hidden-xs">
                                                    {{ date('d F Y', strtotime($popularPost2->created_at)) }}</li>
                                                <li class="view hidden-xs hidden-sm"><a
                                                        href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->hits }}
                                                        Views</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="thm-padding">
                        <div class="popular row thm-margin">
                            @foreach (popularPost(3, 4) as $popularPost2)
                                <div class="col-xs-12 col-sm-8 col-md-12 thm-padding">
                                    <div class="slider-post post-height-2">
                                        <a href="{{ prettyUrl($popularPost2) }}" class="news-image"><img
                                                src="{{ getPicture($popularPost2->picture, 'medium', $popularPost2->updated_by) }}"
                                                alt="" class="img-responsive"></a>
                                        <div class="post-text">
                                            <span class="post-category">{{ $popularPost2->ctitle }}</span>
                                            <h4><a href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->title }}</a>
                                            </h4>
                                            <ul class="authar-info">
                                                <li class="authar hidden-xs hidden-sm"><a
                                                        href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->name }}</a>
                                                </li>
                                                <li class="hidden-xs">
                                                    {{ date('d F Y', strtotime($popularPost2->created_at)) }}</li>
                                                <li class="view hidden-xs hidden-sm"><a
                                                        href="{{ prettyUrl($popularPost2) }}">{{ $popularPost2->hits }}
                                                        Views</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </section>

            <div class="berita-button">
                <a href="berita">Selengkapnya &rightarrow;</a>
            </div>
        </div>

    </section>
@endsection
