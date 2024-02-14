@extends('plantilla')

@section('titulo')
    {{ $post->titulo }}
@endsection

@section('contenido')
    <div>
        <h1>{{ $post->titulo }}</h1>
        <p>{{ $post->contenido }}</p>
        <p>Fecha de creación: {{ $post->created_at->format('d/m/Y') }}</p>

        <form action="{{ route('posts.destroy', $post->id) }}" method="POST">
            @csrf
            @method('DELETE')
            <input type="submit" class="btn btn-danger" value="Borrar post" />
        </form>

        <p><a href="{{ route('posts.index') }}">Volver al listado de posts</a></p>

    </div>
@endsection
