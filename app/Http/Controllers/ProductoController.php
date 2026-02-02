<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use App\Http\Requests\StoreProductoRequest;
use App\Http\Requests\UpdateProductoRequest;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    public function index(Request $request)
    {
        $show = $request->query('show', 'active');
        $q = $request->query('q');

        $query = Producto::query();

        if ($q) {
            $query->where('nombre', 'like', "%{$q}%")
                  ->orWhere('sku', 'like', "%{$q}%")
                  ->orWhere('descripcion', 'like', "%{$q}%");
        }

        if ($show === 'trashed') {
            $query = $query->onlyTrashed();
        }

        $productos = $query->orderBy('nombre')->paginate(15);

        return view('productos.index', compact('productos', 'show', 'q'));
    }

    public function create()
    {
        return view('productos.create');
    }

    public function store(StoreProductoRequest $request)
    {
        $data = $request->validated();
        Producto::create($data);
        return redirect()->route('productos.index')->with('success', 'Producto creado correctamente.');
    }

    public function show($id)
    {
        $producto = Producto::withTrashed()->findOrFail($id);
        return view('productos.show', compact('producto'));
    }

    public function edit($id)
    {
        $producto = Producto::withTrashed()->findOrFail($id);
        return view('productos.edit', compact('producto'));
    }

    public function update(UpdateProductoRequest $request, $id)
    {
        $producto = Producto::withTrashed()->findOrFail($id);
        $data = $request->validated();
        $producto->update($data);
        return redirect()->route('productos.index')->with('success', 'Producto actualizado.');
    }

    public function destroy($id)
    {
        $producto = Producto::findOrFail($id);
        $producto->delete();
        return redirect()->route('productos.index')->with('success', 'Producto eliminado (borrado lógico).');
    }

    public function restore($id)
    {
        $producto = Producto::onlyTrashed()->findOrFail($id);
        $producto->restore();
        return redirect()->route('productos.index')->with('success', 'Producto restaurado.');
    }

    public function forceDelete($id)
    {
        $producto = Producto::withTrashed()->findOrFail($id);
        $producto->forceDelete();
        return redirect()->route('productos.index')->with('success', 'Producto eliminado permanentemente.');
    }
}
