<div class="row">
    <div class="col-md-9">
        <div class="form-group">
            {!! Form::label('nomor_permohonan', __('keberataninformasi.nomor_permohonan').' *', ['class' => 'control-label']) !!}
            {!! Form::text('nomor_permohonan', null, ['class' => $errors->has('nomor_permohonan') ? 'form-control is-invalid' : 'form-control', 'required' => 'required']) !!}
            {!! $errors->first('nomor_permohonan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('nama_pemohon', __('keberataninformasi.nama_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('nama_pemohon', null, ['class' => $errors->has('nama_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('nama_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('no_telp_pemohon', __('keberataninformasi.no_telp_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('no_telp_pemohon', null, ['class' => $errors->has('no_telp_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('no_telp_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('pekerjaan_pemohon', __('keberataninformasi.pekerjaan_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::text('pekerjaan_pemohon', null, ['class' => $errors->has('pekerjaan_pemohon') ? 'form-control is-invalid' : 'form-control', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('pekerjaan_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('alamat_pemohon', __('keberataninformasi.alamat_pemohon').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('alamat_pemohon', null, ['class' => $errors->has('alamat_pemohon') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('alamat_pemohon', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('tujuan_keberatan', __('keberataninformasi.tujuan_keberatan').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('tujuan_keberatan', null, ['class' => $errors->has('tujuan_keberatan') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('tujuan_keberatan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('alasan_keberatan', __('keberataninformasi.alasan_keberatan').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('alasan_keberatan', null, ['class' => $errors->has('alasan_keberatan') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required', 'readonly' => 'readonly']) !!}
            {!! $errors->first('alasan_keberatan', '<p class="help-block text-danger">:message</p>') !!}
        </div>
        <div class="form-group">
            {!! Form::label('status_keberatan', __('keberataninformasi.status_keberatan').' *', ['class' => 'control-label']) !!}
            <select class="select-style form-control" id="status_keberatan" name="status_keberatan">
                @if($formMode == 'edit')
                    <option value="{{ $keberataninformasi->status_keberatan }}" selected>
                        {{ $keberataninformasi->status_keberatan }}
                    </option>
                    @if($keberataninformasi->status_keberatan !== 'Diproses')
                        <option value="Diproses">Diproses</option>
                    @endif
                    @if($keberataninformasi->status_keberatan !== 'Diterima')
                        <option value="Diterima">Diterima</option>
                    @endif
                    @if($keberataninformasi->status_keberatan !== 'Ditolak')
                        <option value="Ditolak">Ditolak</option>
                    @endif
                @else
                    <option value="Diproses">Diproses</option>
                    <option value="Diterima">Diterima</option>
                    <option value="Ditolak">Ditolak</option>
                @endif
            </select>
            {!! $errors->first('status_keberatan', '<p class="help-block">:message</p>') !!}
        </div>
        
    </div>
</div>
