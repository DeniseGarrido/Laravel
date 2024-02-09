@extends('plantilla')

@section('titulo')
    <p>{{ $post->titulo }}</p>
@endsection

@section('contenido')
    <div>
        <h1>{{ $post->titulo }}</h1>
        <p>{{ $post->contenido }}</p>
        <p>Fecha de creación: {{ $post->created_at->format('d/m/Y') }}</p>
        <p><a href="{{ route('posts.index') }}">Volver al listado de posts</a></p>
    </div>
@endsection
