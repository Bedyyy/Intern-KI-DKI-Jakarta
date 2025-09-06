<div class="row">
    <div class="col-md-9">
        <div class="form-group">
            {!! Form::label('nomor_permohonan', __('permohonaninformasi.nomor_permohonan').' *', ['class' => 'control-label']) !!}
            {!! Form::text('nomor_permohonan', null, ['class' => $errors->has('nomor_permohonan') ? 'form-control is-invalid' : 'form-control', 'required' => 'required']) !!}
            {!! $errors->first('nomor_permohonan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('kategori_permohonan', __('permohonaninformasi.kategori_permohonan').' *', ['class' => 'control-label']) !!}
            {!! Form::text('kategori_permohonan', null, ['class' => $errors->has('kategori_permohonan') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('kategori_permohonan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('nomor_identitas', __('permohonaninformasi.nomor_identitas').' *', ['class' => 'control-label']) !!}
            {!! Form::text('nomor_identitas', null, ['class' => $errors->has('nomor_identitas') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('nomor_identitas', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('nama_pemohon', __('permohonaninformasi.nama_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('nama_pemohon', null, ['class' => $errors->has('nama_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('nama_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('alamat_pemohon', __('permohonaninformasi.alamat_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('alamat_pemohon', null, ['class' => $errors->has('alamat_pemohon') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('alamat_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('email_pemohon', __('permohonaninformasi.email_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('email_pemohon', null, ['class' => $errors->has('email_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('email_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('no_telp_pemohon', __('permohonaninformasi.no_telp_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('no_telp_pemohon', null, ['class' => $errors->has('no_telp_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('no_telp_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('pekerjaan_pemohon', __('permohonaninformasi.pekerjaan_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('pekerjaan_pemohon', null, ['class' => $errors->has('pekerjaan_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('pekerjaan_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('tujuan_permohonan', __('permohonaninformasi.tujuan_permohonan').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('tujuan_permohonan', null, ['class' => $errors->has('tujuan_permohonan') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('tujuan_permohonan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('rincian_informasi', __('permohonaninformasi.rincian_informasi').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('rincian_informasi', null, ['class' => $errors->has('rincian_informasi') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('rincian_informasi', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('cara_dapat_informasi', __('permohonaninformasi.cara_dapat_informasi').' *', ['class' => 'control-label']) !!}
            {!! Form::text('cara_dapat_informasi', null, ['class' => $errors->has('cara_dapat_informasi') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('cara_dapat_informasi', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('dapat_salinan_informasi', __('permohonaninformasi.dapat_salinan_informasi').' *', ['class' => 'control-label']) !!}
            {!! Form::text('dapat_salinan_informasi', null, ['class' => $errors->has('dapat_salinan_informasi') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('dapat_salinan_informasi', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('cara_dapat_salinan_informasi', __('permohonaninformasi.cara_dapat_salinan_informasi').' *', ['class' => 'control-label']) !!}
            {!! Form::text('cara_dapat_salinan_informasi', null, ['class' => $errors->has('cara_dapat_salinan_informasi') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('cara_dapat_salinan_informasi', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('status_permohonan', __('permohonaninformasi.status_permohonan').' *', ['class' => 'control-label']) !!}
            <select class="select-style form-control" id="status_permohonan" name="status_permohonan">
                @if($formMode == 'edit')
                    <option value="{{ $permohonaninformasi->status_permohonan }}" selected>
                        {{ $permohonaninformasi->status_permohonan }}
                    </option>
                    @if($permohonaninformasi->status_permohonan !== 'Diproses')
                        <option value="Diproses">Diproses</option>
                    @endif
                    @if($permohonaninformasi->status_permohonan !== 'Diterima')
                        <option value="Diterima">Diterima</option>
                    @endif
                    @if($permohonaninformasi->status_permohonan !== 'Ditolak')
                        <option value="Ditolak">Ditolak</option>
                    @endif
                @else
                    <option value="Diproses">Diproses</option>
                    <option value="Diterima">Diterima</option>
                    <option value="Ditolak">Ditolak</option>
                @endif
            </select>
            {!! $errors->first('status_permohonan', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>
