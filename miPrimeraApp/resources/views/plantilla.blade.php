<html>

<head>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>
        @yield('titulo')
    </title>
</head>

<body>
    @include('partials.nav')
    @yield('contenido')
</body>

</html>
