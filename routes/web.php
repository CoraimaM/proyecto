<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientesController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\ProveedorController;
use App\Http\Controllers\EmpleadoController;
use App\Http\Controllers\FacturaController;
use App\Http\Controllers\IncidenciaController;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Rutas protegidas por auth
Route::middleware('auth')->group(function () {
    // Clientes
    Route::resource('clientes', ClientesController::class);
    Route::post('clientes/{id}/restore', [ClientesController::class, 'restore'])->name('clientes.restore');
    Route::delete('clientes/{id}/force', [ClientesController::class, 'forceDelete'])->name('clientes.forceDelete');
    
    // Productos
    Route::resource('productos', ProductoController::class);
    Route::post('productos/{id}/restore', [ProductoController::class, 'restore'])->name('productos.restore');
    Route::delete('productos/{id}/force', [ProductoController::class, 'forceDelete'])->name('productos.forceDelete');
    
    // Proveedores
    Route::resource('proveedores', ProveedorController::class);
    Route::post('proveedores/{id}/restore', [ProveedorController::class, 'restore'])->name('proveedores.restore');
    Route::delete('proveedores/{id}/force', [ProveedorController::class, 'forceDelete'])->name('proveedores.forceDelete');
    
    // Empleados
    Route::resource('empleados', EmpleadoController::class);
    Route::post('empleados/{id}/restore', [EmpleadoController::class, 'restore'])->name('empleados.restore');
    Route::delete('empleados/{id}/force', [EmpleadoController::class, 'forceDelete'])->name('empleados.forceDelete');
    
    // Facturas
    Route::resource('facturas', FacturaController::class);
    Route::post('facturas/{id}/restore', [FacturaController::class, 'restore'])->name('facturas.restore');
    Route::delete('facturas/{id}/force', [FacturaController::class, 'forceDelete'])->name('facturas.forceDelete');
    
    // Incidencias
    Route::resource('incidencias', IncidenciaController::class);
    Route::post('incidencias/{id}/restore', [IncidenciaController::class, 'restore'])->name('incidencias.restore');
    Route::delete('incidencias/{id}/force', [IncidenciaController::class, 'forceDelete'])->name('incidencias.forceDelete');
});

