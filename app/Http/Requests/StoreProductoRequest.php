<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreProductoRequest extends FormRequest
{
    public function authorize()
    {
        return auth()->check();
    }

    public function rules()
    {
        return [
            'nombre' => 'required|string|max:255',
            'descripcion' => 'nullable|string|max:1000',
            'precio' => 'required|numeric|min:0',
            'stock' => 'required|integer|min:0',
            'sku' => 'nullable|string|max:100|unique:productos,sku',
        ];
    }
}
