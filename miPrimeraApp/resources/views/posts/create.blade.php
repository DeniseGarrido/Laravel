@extends('plantilla')

@section('titulo')
    Nuevo Post
@endsection

@section('contenido')

    <!--mostrar errores-->


    <form action="{{ route('posts.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="titulo">Título:</label>
            <input type="text" class="form-control" name="titulo" id="titulo" value="{{ old('titulo') }}">
            <!--error del campo-->
            @if ($errors->has('titulo'))
                <div class="text-danger">
                {{ $errors->first('titulo') }}
                </div>
            @endif

        </div>
        <div class="form-group">
            <label for="contenido">Contenido:</label>
            <textarea class="form-control" name="contenido" id="contenido">
                {{ old('contenido') }}
            </textarea>
            @if ($errors->has('contenido'))
            <div class="text-danger">
            {{ $errors->first('contenido') }}
            </div>
        @endif
        </div>
        </div>
        <input type="submit" name="enviar" value="Enviar" class="btn btn-dark btn-block">
    </form>
@endsection
