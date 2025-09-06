<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ str_replace('_', '-', app()->getLocale()) }}"
    lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index, follow" />
    <meta name="generator" content="{{ config('app.version') }}" />
    <meta name="author" content="{{ getSetting('web_author') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    {!! SEO::generate() !!}

    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('po-content/uploads/' . getSetting('favicon')) }}" />
    <link href="{{ asset('po-content/frontend/inews/css/jquery-ui.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-admin/lib/datatables.net-dt/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('po-admin/lib/datatables.net-responsive-dt/css/responsive.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('po-content/frontend/inews/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/css/animate.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/bootsnav/css/bootsnav.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/css/RYPP.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/themify-icons/themify-icons.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/weather-icons/css/weather-icons.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/css/flaticon.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/owl-carousel/owl.carousel.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/owl-carousel/owl.theme.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/owl-carousel/owl.transitions.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/css/style.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/css/customize.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('po-content/frontend/inews/package/swiper-bundle.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    @stack('styles')

    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>

    {!! NoCaptcha::renderJs() !!}

    @if (getSetting('google_analytics_id') != '')
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', "{{ getSetting('google_analytics_id') }}"]);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') +
                    '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
        </script>
    @endif
</head>

<body>
    <header>

        <nav class="navbar navbar-default navbar-sticky navbar-mobile bootsnav">
            <div class="top-search">
                <div class="container">
                    <form method="get" action="{{ url('search') }}">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input name="terms" type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </form>
                </div>
            </div>

            <div class="container">
                <div class="logo-navbar position-relative d-flex align-items-center justify-content-between">
                    <div class="logo-and-title">
                        <a href="{{ url('/') }}" class="logo d-flex align-items-center">
                            <img src="{{ asset('po-content/uploads/' . getSetting('logo')) }}" class="img-responsive">
                        </a>
                        <div class="logo-text">
                            <p><span>KOMISI INFORMASI</span></p>
                            <p style="margin-top: -20px">PROVINSI DKI JAKARTA</p>
                        </div>
                    </div>
                    <nav id="navmenu" class="navmenu">
                        <div class="attr-nav">
                            <ul>
                                <li><a href="{{ url('/') }}" class="activated">Beranda</a></li>
                                <li class="dropdown"><a><span>Profil</span><span class="caret"></span></a>
                                    <ul>
                                        <li class="cust-list"><a href="visimisi">Visi & Misi</a></li>
                                        <li class="cust-list"><a href="komisioner">Komisioner</a></li>
                                        <li class="cust-list"><a href="strukturorganisasi">Struktur Organisasi</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#"><span>PPID</span><span
                                            class="caret"></span></a>
                                    <ul>
                                        <li class="dropdown cust-list"><a href="#"><span>Profil</span><span
                                                    class="caret"></span></a>
                                            <ul>
                                                <li class="cust-list"><a href="profilppid">Profil PPID</a></li>
                                                <li class="cust-list"><a href="strukturorganisasippid">Struktur Organisasi PPID</a></li>
                                                <li class="cust-list"><a href="visimisippid">Visi & Misi PPID</a></li>
                                            </ul>
                                        </li>
                                        <li class="specific-dropdown cust-list"><a href="#"><span>Standar
                                                    Layanan</span><span class="caret"></span></a>
                                            <ul>
                                                <li class="cust-list"><a href="prosedurpelayananinformasi">Prosedur Pelayanan
                                                        Informasi</a></li>
                                                <li class="cust-list"><a href="alurpermohonaninformasipublik">Alur Permohonan Informasi
                                                        Publik</a></li>
                                                <li class="cust-list"><a href="alurpenyelesaiansengketa">Alur Penyelesaian Sengketa</a>
                                                </li>
                                                <li class="cust-list"><a href="formpublik">Form Permohonan dan Pengajuan Informasi
                                                        Publik</a>
                                                </li>
                                                <li class="cust-list"><a href="maklumatinformasipublik">Maklumat Informasi Publik</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="specific-dropdown2 cust-list"><a href="#"><span>Informasi
                                                    Publik</span><span class="caret"></span></a>
                                            <ul>
                                                <li class="cust-list"><a href="informasiberkala">Informasi Berkala</a></li>
                                                <li class="cust-list"><a href="informasisertamerta">Informasi Serta Merta</a></li>
                                                <li class="cust-list"><a href="informasitersediasetiapsaat">Informasi Tersedia Setiap
                                                        Saat</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="berita">Berita</a></li>
                                <li><a href="regulasi">Regulasi</a></li>
                                <li><a href="faq">FAQ</a></li>
                                <li><a href="contact">Kontak</a></li>

                                <li class="search"><a href="javascript:void(0);"><i class="fa fa-search"></i></a>
                                </li>
                            </ul>
                            <button type="button" class="navbar-custom" data-toggle="modal" data-target="#myModal"
                                style="align-items: center;">
                                <i class="fa fa-bars"></i>
                            </button>
                        </div>
                    </nav>
                </div>
            </div>
        </nav>
    </header>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Menu</h4>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 lainnya">
                                <div class="container">
                                    <form method="get" action="{{ url('search') }}">
                                        <div class="pencarian">
                                            <input name="terms" type="text" class="form-control"
                                                placeholder="Search" required>
                                            <button type="submit" class="btn btn-primary">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-12 lainnya">
                                <h5><a href="{{ url('/') }}">Beranda</a></h5>
                            </div>
                            <div class="col-md-12 Dropdown">

                                <h5 class="click1"><a>Profil<span class="caret"></span></a></h5>

                                <ul class="spesifik1">
                                    <li>
                                        <h5><a href="visimisi">Visi & Misi</a></h5>
                                    </li>
                                    <li>
                                        <h5><a href="komisioner">Komisioner</a></h5>
                                    </li>
                                    <li>
                                        <h5><a href="strukturorganisasi">Struktur Organisasi</a></h5>
                                    </li>
                                </ul>

                            </div>
                            <div class="col-md-12 Dropdown">
                                <h5 class="click2"><a>PPID<span class="caret"></span></a></h5>

                                <ul class="spesifik2">
                                    <li>
                                        <div class="Dropdown">
                                            <h5 class="click3">Profil<span class="caret"></span></h5>
                                            <ul class="spesifik3">
                                                <li>
                                                    <h5><a href="profilppid">Profil PPID</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="visimisippid">Visi & Misi PPID</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="strukturorganisasippid">Struktur Organisasi PPID</a></h5>
                                                </li>
                                            </ul>
                                        </div>

                                    </li>
                                    <li>
                                        <div class="Dropdown">
                                            <h5 class="click4">Standar Layanan<span class="caret"></span>
                                            </h5>
                                            <ul class="spesifik4">
                                                <li>
                                                    <h5><a href="prosedurpelayananinformasi">Prosedur Pelayanan Informasi</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="alurpermohonaninformasipublik">Alur Permohonan Informasi Publik</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="alurpenyelesaiansengketa">Alur Penyelesaian Sengketa</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="formpublik">Form Permohonan dan Pengajuan Informasi
                                                            Publik</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="maklumatinformasipublik">Maklumat Informasi Publik</a></h5>
                                                </li>
                                            </ul>
                                        </div>

                                    </li>
                                    <li>
                                        <div class="Dropdown">
                                            <h5 class="click5">Informasi Publik<span class="caret"></span>
                                            </h5>
                                            <ul class="spesifik5">
                                                <li>
                                                    <h5><a href="informasiberkala">Informasi Berkala</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="informasisertamerta">Informasi Serta Merta</a></h5>
                                                </li>
                                                <li>
                                                    <h5><a href="informasitersediasetiapsaat">Informasi Tersedia Setiap Saat</a></h5>
                                                </li>
                                            </ul>
                                        </div>

                                    </li>
                                </ul>

                            </div>
                            <div class="col-md-12 lainnya">
                                <h5><a href="berita">Berita</a></h5>
                            </div>
                            <div class="col-md-12 lainnya">
                                <h5><a href="regulasi">Regulasi</a></h5>
                            </div>
                            <div class="col-md-12 lainnya">
                                <h5><a href="faq">FAQ</a></h5>
                            </div>
                            <div class="col-md-12 lainnya">
                                <h5><a href="contact">Kontak</a></h5>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main class="page_main_wrapper">
        @yield('content')
    </main>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 footer-box">
                    <div class="about-inner">
                        <img src="{{ asset('po-content/uploads/' . getSetting('favicon')) }}" class="img-responsive"
                            alt="" height="42" width="42" />
                        <p>Komisi Informasi DKI Jakarta hadir untuk menerima, memeriksa, dan memutus sengketa informasi
                            publik di
                            Ibukota melalui mediasi dan/atau ajudikasi nonlitigasi.</p>
                        <ul>
                            <li><i class="ti-location-arrow"></i>{{ getSetting('address') }}</li>
                            <li><i class="ti-mobile"></i>{{ getSetting('telephone') }}</li>
                            <li><i class="ti-email"></i><a
                                    href="mailto:{{ getSetting('email') }}">{{ getSetting('email') }}</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-2 footer-box">
                    <h3 class="wiget-title">Sitemap</h3>
                    <ul class="menu-services">
                        <li><a href="{{ url('/') }}">Beranda</a></li>
                        <li><a href="{{ url('berita') }}">Berita</a></li>
                        <li><a href="{{ url('regulasi') }}">Regulasi</a></li>
                        <li><a href="{{ url('contact') }}">Kontak</a></li>
                        <li><a href="{{ url('faq') }}">FAQ</a></li>
                    </ul>
                </div>

                <div class="col-sm-2 footer-box">
                    <h3 class="wiget-title">Useful Link</h3>
                    <ul class="menu-services">
                        <li><a href="https://komisiinformasi.go.id/">KI Pusat</a></li>
                        <li><a href="https://www.diskom.info/jakarta/">Diskominfotik</a></li>
                    </ul>
                </div>

                <div class="col-sm-4 footer-box">
                    <h3 class="wiget-title">Social Media</h3>
                    <div class="about-inner">
                        <ul>
                            <li><a href="{{ getSetting('facebook') }}"><i class="fa fa-facebook"></i>kip dki</a></li>
                            <li><a href="{{ getSetting('twitter') }}"><i class="fa fa-twitter"></i>kipdki</a></li>
                            <li><a href="{{ getSetting('youtube') }}"><i class="fa fa-youtube-play"></i>Komisi
                                    Informasi DKI Jakarta</a></li>
                            <li><a href="https://www.instagram.com/kipdkijakarta"><i
                                        class="fa fa-instagram"></i>kipdkijakarta</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <div class="sub-footer">
        <div class="container">
            <div class="row" style="text-align: center;">
                <div class="col">
                    <div class="copy">Copyright &copy; {{ date('Y') }} Komisi Informasi Provinsi DKI Jakarta.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="{{ asset('po-content/frontend/inews/js/jquery.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/jquery-ui.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/bootstrap.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/bootsnav/js/bootsnav.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/theia-sticky-sidebar.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/RYPP.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/owl-carousel/owl.carousel.min.js') }}" type="text/javascript">
    </script>
    <script src="{{ asset('po-content/frontend/inews/js/custom.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/customize.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/js/initaos.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/package/swiper-bundle.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-content/frontend/inews/package/swiper-element-bundle.min.js') }}" type="text/javascript">
    </script>
    <script src="{{ asset('po-content/frontend/inews/aos-master/dist/aos.js') }}" type="text/javascript"></script>
    <script src="{{ asset('po-admin/lib/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('po-admin/lib/datatables.net-dt/js/dataTables.dataTables.min.js') }}"></script>
    <script src="{{ asset('po-admin/lib/datatables.net-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('po-admin/lib/datatables.net-responsive-dt/js/responsive.dataTables.min.js') }}"></script>

    <script>
        $('#myModal .modal-body .Dropdown .click1').on('click', function() {
            $('#myModal .modal-body .container .row .Dropdown .spesifik1').toggleClass('open');
        });
        $('#myModal .modal-body .Dropdown .click2').on('click', function() {
            $('#myModal .modal-body .container .row .Dropdown .spesifik2').toggleClass('open');
        });
        $('#myModal .modal-body .Dropdown .spesifik2 .click3').on('click', function() {
            $('#myModal .modal-body .container .row .Dropdown .spesifik2 .spesifik3').toggleClass('open');
        });
        $('#myModal .modal-body .Dropdown .spesifik2 .click4').on('click', function() {
            $('#myModal .modal-body .container .row .Dropdown .spesifik2 .spesifik4').toggleClass('open');
        });
        $('#myModal .modal-body .Dropdown .spesifik2 .click5').on('click', function() {
            $('#myModal .modal-body .container .row .Dropdown .spesifik2 .spesifik5').toggleClass('open');
        });
    </script>

    @stack('scripts')
</body>

</html>
