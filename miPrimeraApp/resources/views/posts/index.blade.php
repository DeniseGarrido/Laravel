@extends('plantilla')

@section('titulo')
    Listado de posts
@endsection

@section('contenido')
<div>
    <h1>Listado de posts</h1>
    <hr>
    <ul>
        @foreach ($posts as $post)
            <li>
                {{ $post->titulo }} ({{ $post->usuario->login }}) <br>
                <a href="{{ route('posts.show', $post->id) }}" class="btn btn-info" style="margin-top: 1%">Ver ficha</a>
                <form action="{{ route('posts.destroy', $post->id) }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <button class="btn btn-danger" style="margin-top: 1%">Borrar</button>
                </form>
            </li>
            <hr>
        @endforeach
    </ul>
</div>
@endsection
