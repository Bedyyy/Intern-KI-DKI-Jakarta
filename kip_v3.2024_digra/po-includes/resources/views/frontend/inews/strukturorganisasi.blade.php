@extends(getTheme('layouts.app'))

@section('content')
    <section id="Struktur-Organisasi">
        <div class="container">
            <img src="{{ asset('po-content/uploads/' . getSetting('struktur-organisasi')) }}" alt="">
        </div>
    </section>
@endsection
