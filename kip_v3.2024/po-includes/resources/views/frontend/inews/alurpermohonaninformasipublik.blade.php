@extends(getTheme('layouts.app'))
@section('content')
    <section id="Alur-Permohonan">
        <div class="container">
            <img src="{{ asset('po-content/uploads/' . getSetting('Alur-Permohonan')) }}" alt="">
        </div>
    </section>
@endsection