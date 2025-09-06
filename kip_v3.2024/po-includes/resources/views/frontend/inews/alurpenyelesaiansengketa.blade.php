@extends(getTheme('layouts.app'))
@section('content')
    <section id="Alur-Penyelesaian">
        <div class="container">
            <img src="{{ asset('po-content/uploads/' . getSetting('Alur-Penyelesaian')) }}" alt="">
        </div>
    </section>
@endsection