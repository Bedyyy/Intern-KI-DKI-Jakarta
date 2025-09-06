@extends(getTheme('layouts.app'))

@section('content')

    <section id="Form">
        <h1>Form Permohonan dan Pengajuan Keberatan Informasi Publik</h1>
        <div class="container">
            <div class="row">
                <div class="judul col">
                    <h2>Form Permohonan Informasi</h2>
                </div>
            </div>
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
            <form action="{{ url('permohonaninformasi/send') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-row">
                    <div class="input-data-selection atas">
                        <select name="kategori_permohonan" id="kategori_permohonan" required>
                            <option value="#">-Kategori-</option>
                            <option value="Perorangan">Perorangan</option>
                            <option value="Lembaga/Organisasi">Lembaga/Organisasi</option>
                            <option value="Kelompok Orang">Kelompok Orang</option>
                        </select>
                        <div class="underline"></div>
                        <label for="kategori_permohonan">Silahkan Pilih Kategori</label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="input-data">
                        <input type="text" id="nama_pemohon" name="nama_pemohon" value="{{ old('nama_pemohon') }}" required>
                        <div class="underline"></div>
                        <label for="nama_pemohon">Nama Lengkap</label>
                    </div>
                    <div class="input-data">
                        <input type="number" id="nomor_identitas" name="nomor_identitas" value="{{ old('nomor_identitas') }}" required>
                        <div class="underline"></div>
                        <label for="nomor_identitas">NIK/No. Identitas Pribadi</label>
                    </div>
                </div>
                <div class="form-row file">
                    <div class="input-data-file">
                        <label class="label-input" for="file_ktp">Upload KTP Pribadi</label>
                        <input class="input-file" type="file" id="file_ktp" name="file_ktp" value="{{ old('file_ktp') }}" accept=".jpg,.png,.jpeg,.pdf" required>
                        <div class="underline"></div>
                    </div>
                    <div class="input-data">
                        <input type="text" id="pekerjaan_pemohon" name="pekerjaan_pemohon" value="{{ old('pekerjaan_pemohon') }}" required>
                        <div class="underline"></div>
                        <label for="pekerjaan_pemohon">Pekerjaan</label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="input-data">
                        <input type="email" id="email_pemohon" name="email_pemohon" value="{{ old('email_pemohon') }}" required>
                        <div class="underline"></div>
                        <label for="email_pemohon">Email</label>
                    </div>
                    <div class="input-data">
                        <input type="number" id="no_telp_pemohon" name="no_telp_pemohon" value="{{ old('no_telp_pemohon') }}" required>
                        <div class="underline"></div>
                        <label for="no_telp_pemohon">Nomor Telepon</label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="input-data textarea">
                        <textarea rows="8" id="alamat_pemohon" name="alamat_pemohon" required>{{ old('alamat_pemohon') }}</textarea>
                        <div class="underline"></div>
                        <label for="alamat_pemohon">Alamat</label>
                    </div>
                </div>
                <div class="form-row">
                    <div class="input-data textarea">
                        <textarea rows="8" id="tujuan_permohonan" name="tujuan_permohonan" required>{{ old('tujuan_permohonan') }}</textarea>
                        <div class="underline"></div>
                        <label for="tujuan_permohonan">Tujuan Penggunaan Informasi</label>
                    </div>
                    <div class="input-data textarea">
                        <textarea rows="8" id="rincian_informasi" name="rincian_informasi" required>{{ old('rincian_informasi') }}</textarea>
                        <div class="underline"></div>
                        <label for="rincian_informasi">Rincian Informasi</label>
                    </div>
                </div>
                <div class="form-row bawah">
                    <div class="input-data-selection bawah">
                        <select name="cara_dapat_informasi" id="cara_dapat_informasi" required>
                            <option value="#">-Perolehan Informasi-</option>
                            <option value="Melihat">Melihat</option>
                            <option value="Membaca">Membaca</option>
                            <option value="Mendengarkan">Mendengarkan</option>
                            <option value="Mencatat">Mencatat</option>
                        </select>
                        <div class="underline"></div>
                        <label for="cara_dapat_informasi">Cara Memperoleh Informasi</label>
                    </div>
                    <div class="input-data-selection bawah">
                        <select name="dapat_salinan_informasi" id="dapat_salinan_informasi" required>
                            <option value="#">-Tipe Salinan File-</option>
                            <option value="Softcopy">Softcopy</option>
                            <option value="Hardcopy">Hardcopy</option>
                        </select>
                        <div class="underline"></div>
                        <label for="dapat_salinan_informasi">Mendapatkan Salinan Informasi</label>
                    </div>
                    <div class="input-data-selection bawah">
                        <select name="cara_dapat_salinan_informasi" id="cara_dapat_salinan_informasi" required>
                            <option value="#">-Cara Mendapatkan Informasi-</option>
                            <option value="Mengambil Langsung">Mengambil Langsung</option>
                            <option value="Faksimili">Faksimili</option>
                            <option value="Email">Email</option>
                        </select>
                        <div class="underline"></div>
                        <label for="cara_dapat_salinan_informasi">Cara Mendapatkan Salinan Informasi</label>
                    </div>
                </div>
                <div class="form-group" id="captcha">
                    {!! NoCaptcha::display() !!}
                </div>
                <div class="form-row submit">
                    <div class="input-data-submit">
                        <button type="submit" class="btn btn-news">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
    

@endsection
