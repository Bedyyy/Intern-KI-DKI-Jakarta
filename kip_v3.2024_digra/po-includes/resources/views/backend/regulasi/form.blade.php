<div class="row">
    <div class="col-md-9">
        <div class="form-group">
            {!! Form::label('judul', __('regulasi.judul').' *', ['class' => 'control-label']) !!}
            {!! Form::text('judul', null, ['class' => $errors->has('judul') ? 'form-control is-invalid' : 'form-control', 'required' => 'required']) !!}
            {!! $errors->first('judul', '<p class="help-block text-danger">:message</p>') !!}
        </div>

        <div class="form-group">
            {!! Form::label('keterangan', __('regulasi.keterangan').' *', ['class' => 'control-label']) !!}
            {!! Form::text('keterangan', null, ['class' => $errors->has('keterangan') ? 'form-control is-invalid' : 'form-control', 'required' => 'required']) !!}
            {!! $errors->first('keterangan', '<p class="help-block text-danger">:message</p>') !!}
        </div>

        <div class="form-group">
            {!! Form::label('tentang', __('regulasi.tentang').' *', ['class' => 'control-label']) !!}
            {!! Form::textarea('tentang', null, ['class' => $errors->has('tentang') ? 'form-control is-invalid ht-300-i' : 'form-control ht-300-i', 'required' => 'required']) !!}
            {!! $errors->first('tentang', '<p class="help-block text-danger">:message</p>') !!}
        </div>

        <div class="form-group">
            {!! Form::label('file', __('regulasi.file').' *', ['class' => 'control-label']) !!}
            <div class="input-group">
                {!! Form::file('file', ['class' => $errors->has('file') ? 'form-control is-invalid' : 'form-control', 'id' => 'input-filemanager', 'required' => 'required', 'accept' => 'application/pdf']) !!}
            </div>
            {!! $errors->first('file', '<p class="help-block text-danger">:message</p>') !!}
        </div>
    </div>
</div>
