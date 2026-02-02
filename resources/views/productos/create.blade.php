@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h4 class="card-title mb-3">Nuevo producto</h4>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('productos.store') }}" method="POST">
                        @csrf

                        <div class="mb-3">
                            <label class="form-label">Nombre</label>
                            <input type="text" name="nombre" class="form-control form-control-lg" value="{{ old('nombre') }}" placeholder="Nombre del producto">
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Precio</label>
                                <input type="number" name="precio" class="form-control" value="{{ old('precio') }}" step="0.01" placeholder="0.00">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Stock</label>
                                <input type="number" name="stock" class="form-control" value="{{ old('stock', 0) }}" placeholder="0">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">SKU</label>
                            <input type="text" name="sku" class="form-control" value="{{ old('sku') }}" placeholder="SKU único">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Descripción</label>
                            <textarea name="descripcion" class="form-control" rows="3" placeholder="Descripción del producto">{{ old('descripcion') }}</textarea>
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="{{ route('productos.index') }}" class="btn btn-outline-pink-dark">Cancelar</a>
                            <button class="btn btn-pink">Guardar producto</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
