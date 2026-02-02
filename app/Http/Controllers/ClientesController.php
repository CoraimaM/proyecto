<?php

namespace App\Http\Controllers;

use App\Models\Clientes;
use App\Http\Requests\StoreClienteRequest;
use App\Http\Requests\UpdateClienteRequest;
use Illuminate\Http\Request;

class ClientesController extends Controller
{
    public function index(Request $request)
    {
        $show = $request->query('show', 'active');
        $q = $request->query('q');

        $query = Clientes::query();

        if ($q) {
            $query->where('nombre', 'like', "%{$q}%")
                  ->orWhere('email', 'like', "%{$q}%")
                  ->orWhere('telefono', 'like', "%{$q}%");
        }

        if ($show === 'trashed') {
            $query = $query->onlyTrashed();
        }

        $clientes = $query->orderBy('nombre')->paginate(15);

        return view('clientes.index', compact('clientes', 'show', 'q'));
    }

    public function create()
    {
        return view('clientes.create');
    }

    public function store(StoreClienteRequest $request)
    {
        $data = $request->validated();
        Clientes::create($data);
        return redirect()->route('clientes.index')->with('success', 'Cliente creado correctamente.');
    }

    public function show($id)
    {
        $cliente = Clientes::withTrashed()->findOrFail($id);
        return view('clientes.show', compact('cliente'));
    }

    public function edit($id)
    {
        $cliente = Clientes::withTrashed()->findOrFail($id);
        return view('clientes.edit', compact('cliente'));
    }

    public function update(UpdateClienteRequest $request, $id)
    {
        $cliente = Clientes::withTrashed()->findOrFail($id);
        $data = $request->validated();
        $cliente->update($data);
        return redirect()->route('clientes.index')->with('success', 'Cliente actualizado.');
    }

    public function destroy($id)
    {
        $cliente = Clientes::findOrFail($id);
        $cliente->delete();
        return redirect()->route('clientes.index')->with('success', 'Cliente eliminado (borrado lógico).');
    }

    public function restore($id)
    {
        $cliente = Clientes::onlyTrashed()->findOrFail($id);
        $cliente->restore();
        return redirect()->route('clientes.index')->with('success', 'Cliente restaurado.');
    }

    public function forceDelete($id)
    {
        $cliente = Clientes::withTrashed()->findOrFail($id);
        $cliente->forceDelete();
        return redirect()->route('clientes.index')->with('success', 'Cliente eliminado permanentemente.');
    }
}
