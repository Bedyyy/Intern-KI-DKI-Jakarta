@extends(getTheme('layouts.app'))

@section('content')
    <section id="Kontak">
        <h1>Lokasi Komisi Informasi</h1>
        <div class="container">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4856255434347!2d106.81101887475037!3d-6.199481893788222!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f6a10a6cc4eb%3A0x7617b1322f406886!2sKomisi%20Informasi%20Provinsi%20DKI%20Jakarta!5e0!3m2!1sen!2sid!4v1728976955690!5m2!1sen!2sid"
                width="1500" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="about-us container">
            <div class="row gy-4">
                <h2>Hubungi Kami</h2>
                <div class="info col-lg-4" style="margin-right: 10px">
                    <div class="info-item d-flex" >
                        <i class="fa fa-location-arrow" aria-hidden="true"></i>
                        <div class="info-text">
                            <h3>Alamat</h3>
                            <p>Gedung Graha Mental Spiritual Lt. 7,<br>
                                Jl. Awaludin II No.1 Tn Abang,
                                Jakarta Pusat. 10230</p>
                        </div>
                    </div>

                    <div class="info-item d-flex" >
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <div class="info-text">
                            <h3>Telp/Fax</h3>
                            <p>021 391 197 5</p>
                        </div>
                    </div>

                    <div class="info-item d-flex"  >
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <div class="info-text">
                            <h3>Email</h3>
                            <p>kip@jakarta.go.id</p>
                        </div>
                    </div>

					<div class="kerja">
						<h3>Jam Kerja</h3>
						<div class="kerja-item">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
							<div class="info-text-kerja">
								<h4>Senin – Jum’at: </h4>
								<p>09:00 s/d 16:00 WIB</p>
							</div>
						</div>
						<div class="kerja-item">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
							<div class="info-text-kerja">
								<h4>Sabtu – Minggu: </h4>
								<p>Tutup</p>
							</div>
						</div>
					</div>
                </div>
                <div class="col-lg-7">
                    <div class="theiaStickySidebar">
                        <div class="contact_form_inner">
                            <div class="panel_inner">
                                <div class="panel_body">
                                    @if (Session::has('flash_message'))
                                        <div class="alert alert-success">{{ Session::get('flash_message') }}</div>
                                    @endif

                                    @if ($errors->any())
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif

                                    <form class="comment-form" action="{{ url('contact/send') }}" method="post">
                                        {{ csrf_field() }}
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="name">Nama Lengkap</label>
                                                    <input type="text" class="form-control" id="name" name="name"
                                                        value="{{ old('name') }}" placeholder="Nama Anda">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="email">Email</label>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="email" name="email"
                                                        value="{{ old('email') }}" placeholder="Email Anda">
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <label for="subject">Judul</label>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="subject" name="subject"
                                                        value="{{ old('subject') }}" placeholder="Tentang Apa?">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="message">Pesan</label>
                                            <textarea class="form-control" id="message" name="message" placeholder="Tuliskan Pesan Anda" rows="5">{{ old('message') }}</textarea>
                                        </div>
                                        <div class="form-group">
                                            {!! NoCaptcha::display() !!}
                                        </div>
                                        <button type="submit" class="btn btn-news">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
@endsection
