@extends('plantilla')

@section('titulo')
<p>Listado de posts</p>
@endsection

@section('contenido')
<div>
    <h1>Listado de posts</h1>
    <ul>
        @foreach ($posts as $post)
            <li>
                {{ $post->titulo }} <a href="{{ route('posts.show', $post->id) }}" class="btn btn-primary">Ver ficha</a>
            </li>
        @endforeach
    </ul>
    {{ $posts->links() }}
</div>
@endsection
