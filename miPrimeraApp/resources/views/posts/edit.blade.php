@extends('plantilla')

@section('titulo')
    Editar Post
@endsection

@section('contenido')
<form action="{{ route('posts.update', ['post' => $post->id]) }}" method="POST">
    @csrf
        @method('PUT')
        <div class="form-group">
            <label for="titulo">Título:</label>
            <input type="text" class="form-control" name="titulo" id="titulo" value="{{ $post->titulo }}">
            @if ($errors->has('titulo'))
                <div class="text-danger">
                    {{ $errors->first('titulo') }}
                </div>
            @endif
        </div>
        <div class="form-group">
            <label for="contenido">Contenido:</label>
            <textarea class="form-control" name="contenido" id="contenido">{{ $post->contenido }}</textarea>
            @if ($errors->has('contenido'))
                <div class="text-danger">
                    {{ $errors->first('contenido') }}
                </div>
            @endif
        </div>
        <input type="submit" name="enviar" value="Actualizar" class="btn btn-dark btn-block">
    </form>
@endsection
