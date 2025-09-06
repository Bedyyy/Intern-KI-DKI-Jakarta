@extends(getTheme('layouts.app'))

@section('content')

{{-- <section class="keberatan-informasi">

    <h2>Form Pengajuan Keberatan Informasi</h2>

    <div class="container">
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
        <form class="comment-form" action="{{ url('keberataninformasi/send') }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-lg-6" id="set-col">
                    <h4>Informasi Pengajuan Keberatan</h4>
                    <div class="form-group">
                        <label for="npip">No. Permohonan Informasi Publik</label>
                        <input type="text" class="form-control" id="npip" name="nomor_permohonan"
                            value="{{ old('npip') }}" placeholder="Nomor Permohonan Informasi Publik Anda">
                    </div>
                    <div class="form-group">
                        <label for="name">Nama Lengkap</label>
                        <input type="text" class="form-control" id="name" name="nama_pemohon"
                            value="{{ old('name') }}" placeholder="Nama Anda">
                    </div>
                    <div class="form-group">
                        <label for="ktp">Upload KTP Pribadi</label>
                        <input type="file" class="form-control" id="ktp" name="file_ktp"
                            value="{{ old('ktp') }}" placeholder="KTP Anda">
                    </div>
                    <div class="form-group">
                        <label for="telp">Nomor Telepon</label>
                        <input type="number" class="form-control" id="telp" name="no_telp_pemohon"
                        value="{{ old('telp') }}" placeholder="Telepon Anda">
                    </div>
                    <div class="form-group">
                        <label for="pekerjaan">Pekerjaan</label>
                        <input type="text" class="form-control" id="pekerjaan" name="pekerjaan_pemohon"
                            value="{{ old('pekerjaan') }}" placeholder="Pekerjaan Anda">
                    </div>
                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <textarea class="form-control" id="alamat" name="alamat_pemohon" placeholder="Tuliskan Alamat Anda" rows="5">{{ old('alamat') }}</textarea>
                    </div>
                </div>
                <div class="col-lg-6" id="col_modify">
                    <div class="alasan-pengajuan-keberatan" id="set-col-2"> 
                        <h4>Alasan Pengajuan Keberatan</h4>
                        <div class="form-group">
                            <label for="tujuan-mengajukan-keberatan">Tujuan Mengajukan Keberatan</label>
                            <textarea class="form-control" id="tujuan-mengajukan-keberatan" name="tujuan_keberatan" placeholder="Tuliskan Tujuan Pengajuan Keberatan Anda" rows="5">{{ old('tujuan-mengajukan-keberatan') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="alasan-mengajukan-keberatan">Alasan Mengajukan Keberatan</label><br>
                            <input type="radio" id="ditolak" name="alasan_keberatan" value="Permohonan Informasi Ditolak">
                            <label for="ditolak">Permohonan Informasi Ditolak</label><br>
                            <input type="radio" id="tidak-disediakan" name="alasan_keberatan" value="Informasi Berkala Tidak Disediakan">
                            <label for="tidak-disediakan">Informasi Berkala Tidak Disediakan</label><br>
                            <input type="radio" id="tidak-ditanggapi" name="alasan_keberatan" value="Permintaan Informasi Tidak Ditanggapi">
                            <label for="tidak-ditanggapi">Permintaan Informasi Tidak Ditanggapi</label><br>
                            <input type="radio" id="tidak-ditanggapi2" name="alasan_keberatan" value="Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta">
                            <label for="tidak-ditanggapi2">Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta</label><br>
                            <input type="radio" id="tidak-dipenuhi" name="alasan_keberatan" value="Permintaan Informasi Tidak Dipenuhi">
                            <label for="tidak-dipenuhi">Permintaan Informasi Tidak Dipenuhi</label><br>
                            <input type="radio" id="tidak-wajar" name="alasan_keberatan" value="Biaya yang Dikenakan Tidak Wajar">
                            <label for="tidak-wajar">Biaya yang Dikenakan Tidak Wajar</label><br>
                            <input type="radio" id="terlambat" name="alasan_keberatan" value="Informasi Disampaikan Melebihi Jangka Waktu yang Ditentukan">
                            <label for="terlambat">Informasi Disampaikan Melebihi Jangka Waktu yang Ditentukan</label>
                        </div>                        
                    </div>
                    <div class="form-group" id="captcha">
                        {!! NoCaptcha::display() !!}
                    </div>
                    <div class="set-button">
                        <button type="submit" class="btn btn-news">Submit</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

</section> --}}

<section id="Form2">
    <h1>Form Permohonan dan Pengajuan Keberatan Informasi Publik</h1>
    <div class="container">
        <div class="row">
            <div class="judul col">
                <h2>Form Pengajuan Keberatan</h2>
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
        <form action="{{ url('keberataninformasi/send') }}" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="form-row">
                <div class="input-data-selection">
                    <select name="alasan_keberatan" id="alasan_keberatan">
                        <option value="#">-Alasan-</option>
                        <option value="Permohonan Informasi Ditolak">Permohonan Informasi Ditolak</option>
                        <option value="Informasi Berkala tidak Disediakan">Informasi Berkala tidak Disediakan</option>
                        <option value="Permintaan Informasi tidak Ditanggapi">Permintaan Informasi tidak Ditanggapi</option>
                        <option value="Permintaan Informasi tidak ditanggapi sebagaimana yang diminta">Permintaan Informasi tidak ditanggapi sebagaimana yang diminta</option>
                        <option value="Permintaan Informasi tidak dipenuhi">Permintaan Informasi tidak dipenuhi</option>
                        <option value="Informasi disampaikan melebihi jangka waktu yang ditentukan">Informasi disampaikan melebihi jangka waktu yang ditentukan</option>
                    </select>
                    <div class="underline"></div>
                    <label for="alasan_keberatan">Alasan Pengajuan Keberatan</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data">
                    <input type="text" name="nama_pemohon" id="nama_pemohon" value="{{ old('nama_pemohon') }}" required>
                    <div class="underline"></div>
                    <label for="nama_pemohon">Nama Lengkap</label>
                </div>
                <div class="input-data">
                    <input type="number" name="nomor_permohonan" value="{{ old('nomor_permohonan') }}" required>
                    <div class="underline"></div>
                    <label for="">No Permohonan Informasi Publik</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data">
                    <input type="text" name="pekerjaan_pemohon" value="{{ old('pekerjaan_pemohon') }}" required>
                    <div class="underline"></div>
                    <label for="">Pekerjaan</label>
                </div>
                <div class="input-data">
                    <input type="number" name="no_telp_pemohon" value="{{ old('no_telp_pemohon') }}" required>
                    <div class="underline"></div>
                    <label for="">No Telepon</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data textarea">
                    <textarea rows="8" cols="80" name="alamat_pemohon" required>{{ old('alamat_pemohon') }}</textarea>
                    <div class="underline"></div>
                    <label for="">Alamat</label>
                </div>
                <div class="input-data textarea">
                    <textarea rows="8" cols="80" name="tujuan_keberatan" required>{{ old('tujuan_keberatan') }}</textarea>
                    <div class="underline"></div>
                    <label for="">Tujuan Mengajukan Keberatan</label>
                </div>
            </div>
            <div class="form-group" id="captcha">
                {!! NoCaptcha::display() !!}
            </div>
            <div class="form-row submit">
                <div class="input-data-submit">
                    <button type="submit">Submit</button>
                </div>
            </div>
        </form>
    </div>
</section>

@endsection