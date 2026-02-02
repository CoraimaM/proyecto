# Sistema de Gestión Empresarial

Un sistema integral desarrollado con **Laravel** y **AdminLTE** para la gestión completa de clientes, facturas, empleados, productos, proveedores e incidencias.

## Descripción del Proyecto

Este proyecto es una aplicación web moderna diseñada para empresas que necesitan gestionar:

- **Clientes**: Registro y seguimiento de información de clientes
- **Empleados**: Gestión del personal y datos de empleados
- **Productos**: Catálogo y administración de productos
- **Proveedores**: Base de datos de proveedores y sus datos
- **Facturas**: Generación y seguimiento de facturas
- **Incidencias**: Registro y resolución de incidencias
- **Usuarios**: Autenticación y gestión de usuarios del sistema

## Requisitos Previos

- **PHP** >= 8.1
- **Composer**
- **Node.js** y **npm**
- **MySQL** o **MariaDB**
- **XAMPP** (recomendado para desarrollo local)

## Características Principales

✨ Interfaz intuitiva con **AdminLTE**  
📊 Gestión completa de datos empresariales  
🔐 Sistema de autenticación seguro  
🗄️ Base de datos relacional optimizada  
📱 Diseño responsive  
⚙️ Seeders y factories para datos de prueba  
🧪 Configuración lista para PHPUnit

## Instalación

### 1. Clonar o descargar el proyecto

```bash
cd c:\xampp\htdocs\proyecto
```

### 2. Instalar dependencias de PHP

```bash
composer install
```

### 3. Instalar dependencias de Node.js

```bash
npm install
```

### 4. Configurar el archivo de entorno

```bash
cp .env.example .env
```

Actualiza los datos de conexión a la base de datos en el archivo `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nombre_base_datos
DB_USERNAME=root
DB_PASSWORD=
```

### 5. Generar clave de aplicación

```bash
php artisan key:generate
```

### 6. Ejecutar migraciones

```bash
php artisan migrate
```

### 7. Ejecutar seeders (datos de prueba)

```bash
php artisan db:seed
```

### 8. Construir assets (CSS/JS)

```bash
npm run dev
```

Para producción:

```bash
npm run build
```

## Estructura del Proyecto

```
proyecto/
├── app/
│   ├── Http/
│   │   ├── Controllers/      # Controladores de la aplicación
│   │   └── Requests/         # Form Requests personalizados
│   ├── Models/               # Modelos Eloquent
│   │   ├── Clientes.php
│   │   ├── Empleado.php
│   │   ├── Factura.php
│   │   ├── Incidencia.php
│   │   ├── Producto.php
│   │   ├── Proveedor.php
│   │   └── User.php
│   └── Providers/            # Service Providers
├── database/
│   ├── migrations/           # Migraciones de base de datos
│   ├── factories/            # Factories para testing
│   └── seeders/              # Seeders para datos iniciales
├── resources/
│   ├── views/                # Vistas Blade
│   ├── css/                  # Estilos CSS
│   └── js/                   # Scripts JavaScript
├── routes/
│   ├── web.php              # Rutas web
│   └── console.php          # Comandos de consola
├── tests/                    # Tests automatizados
│   ├── Feature/
│   └── Unit/
├── config/                   # Archivos de configuración
├── storage/                  # Almacenamiento de logs y archivos
└── vendor/                   # Dependencias de Composer
```

## Modelos y Relaciones

### Clientes
Gestiona la información de los clientes principales de la empresa.

### Empleados
Registra datos de los empleados y su información personal.

### Productos
Catalogo de productos disponibles con detalles.

### Proveedores
Base de datos de proveedores y sus datos de contacto.

### Facturas
Genera y almacena facturas asociadas a clientes y productos.

### Incidencias
Registro de problemas, tickets y seguimiento de incidencias.

### Usuarios
Sistema de autenticación con roles y permisos.

## Comandos Útiles

### Desarrollo

Iniciar servidor de desarrollo:
```bash
php artisan serve
```

Compilar assets en modo observación:
```bash
npm run dev
```

### Base de Datos

Ejecutar todas las migraciones:
```bash
php artisan migrate
```

Revertir la última migración:
```bash
php artisan migrate:rollback
```

Ejecutar seeders:
```bash
php artisan db:seed
```

Resetear base de datos (CUIDADO - borra todos los datos):
```bash
php artisan migrate:fresh --seed
```

### Tests

Ejecutar pruebas:
```bash
php artisan test
```

Ejecutar con reporte de cobertura:
```bash
php artisan test --coverage
```

## Acceso a la Aplicación

Una vez instalada y ejecutada, accede a:

```
http://localhost:8000
```

Usa las credenciales del usuario creado en los seeders para iniciar sesión.

## Configuración AdminLTE

La configuración de AdminLTE se encuentra en:
```
config/adminlte.php
```

Personaliza aquí la apariencia del dashboard y menús.

Características incluidas:
- Dashboard personalizado
- Menús laterales dinámicos
- Widgets y gráficos
- Tema responsive para todos los dispositivos
- Autenticación integrada

## Variables de Entorno Detalladas

Asegúrate de configurar todas estas variables en tu archivo `.env`:

```env
# Aplicación
APP_NAME="Sistema Gestión Empresarial"
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost:8000

# Base de Datos
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=proyecto
DB_USERNAME=root
DB_PASSWORD=

# Cache y Sesión
CACHE_DRIVER=file
SESSION_DRIVER=file

# Mail (opcional)
MAIL_MAILER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=465
MAIL_USERNAME=
MAIL_PASSWORD=

# AdminLTE
ADMIN_LTE_LOGO_MINI=<b>SG</b>
ADMIN_LTE_LOGO_LARGE=<b>Sistema</b> Gestión
```

## Migraciones y Base de Datos

El proyecto incluye las siguientes migraciones:

| Migración | Descripción |
|-----------|-------------|
| `create_users_table` | Tabla de usuarios del sistema |
| `create_clientes_table_if_not_exists` | Información de clientes |
| `create_empleados_table` | Datos de empleados |
| `create_productos_table` | Catálogo de productos |
| `create_proveedors_table` | Base de proveedores |
| `create_facturas_table` | Registro de facturas |
| `create_incidencias_table` | Tickets de incidencias |
| `add_deleted_at_to_clientes_table` | Soft deletes en clientes |
| `create_views` | Vistas para reportes |

### Ejecutar una migración específica

```bash
php artisan migrate --path=database/migrations/[nombre_migración]
```

## Factories y Seeders

El proyecto incluye factories para generar datos de prueba:

### Usar factories para crear datos:

```bash
# Crear 10 clientes
php artisan tinker
>>> Clientes::factory()->count(10)->create()

# Crear un cliente específico
>>> Clientes::factory()->create(['nombre' => 'Acme Corp'])
```

### Seeders disponibles

- **ClientesSeeder**: Crea clientes de prueba
- **EmpleadoSeeder**: Crea empleados
- **ProductoSeeder**: Crea productos
- **FacturaSeeder**: Crea facturas
- **IncidenciaSeeder**: Crea incidencias
- **DatabaseSeeder**: Ejecuta todos los seeders

Ejecutar seeder específico:
```bash
php artisan db:seed --class=ClientesSeeder
```

## Rutas Disponibles

Las rutas están definidas en `routes/web.php`. Ejemplos:

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | `/` | Dashboard principal |
| GET\|POST | `/login` | Autenticación |
| GET | `/clientes` | Lista de clientes |
| POST | `/clientes` | Crear cliente |
| GET | `/empleados` | Lista de empleados |
| GET | `/facturas` | Lista de facturas |
| GET | `/productos` | Catálogo de productos |
| GET | `/proveedores` | Lista de proveedores |
| GET | `/incidencias` | Tickets de incidencias |

Ver todas las rutas:
```bash
php artisan route:list
```

## Vistas y Plantillas

Las vistas están organizadas en `resources/views/`:

```
views/
├── layouts/           # Layouts principales
├── cliente/           # Vistas de clientes
├── empleado/          # Vistas de empleados
├── producto/          # Vistas de productos
├── proveedor/         # Vistas de proveedores
├── factura/           # Vistas de facturas
├── incidencia/        # Vistas de incidencias
└── auth/              # Vistas de autenticación
```

Las vistas usan la plantilla Blade de Laravel con AdminLTE.

## Modelos Eloquent - Usos Comunes

### Crear un cliente
```php
$cliente = Clientes::create([
    'nombre' => 'Mi Empresa',
    'email' => 'info@miempresa.com',
    'telefono' => '123456789'
]);
```

### Obtener clientes con facturas
```php
$clientes = Clientes::with('facturas')->get();
```

### Buscar clientes
```php
$cliente = Clientes::where('nombre', 'like', '%Empresa%')->first();
```

### Actualizar cliente
```php
$cliente->update(['email' => 'newemail@example.com']);
```

### Eliminar cliente
```php
$cliente->delete();  // Soft delete
$cliente->forceDelete();  // Eliminación permanente
```

## Controladores

Los controladores principales se encuentran en `app/Http/Controllers/`:

- **ClientesController**: Gestión de clientes (CRUD)
- **EmpleadoController**: Gestión de empleados
- **ProductoController**: Gestión de productos
- **ProveedorController**: Gestión de proveedores
- **FacturaController**: Generación de facturas
- **IncidenciaController**: Gestión de incidencias
- **AuthController**: Autenticación

Cada controlador tiene métodos estándar: `index`, `create`, `store`, `show`, `edit`, `update`, `destroy`

## Validación

El proyecto utiliza Form Requests en `app/Http/Requests/` para validar datos:

```php
// Ejemplo de validación
public function rules()
{
    return [
        'nombre' => 'required|string|max:255',
        'email' => 'required|email|unique:clientes',
        'telefono' => 'nullable|string',
    ];
}
```

## Troubleshooting - Solución de Problemas

### Error: "Class 'App\\Models\\[Model]' not found"
```bash
# Ejecutar autoload de composer
composer dump-autoload
```

### Error de conexión a base de datos
- Verifica que MySQL esté ejecutándose
- Comprueba las credenciales en `.env`
- Asegúrate que la base de datos existe

```bash
# Crear base de datos en MySQL
mysql -u root -e "CREATE DATABASE proyecto;"
```

### Assets no se actualizan
```bash
# Limpiar caché de compilación
npm run dev
```

### Permisos de almacenamiento
En Windows, asegúrate que la carpeta `storage/` tenga permisos de escritura:

```bash
# En PowerShell
icacls "C:\xampp\htdocs\proyecto\storage" /grant:r "$env:USERNAME:(OI)(CI)F"
```

### Error 419 Token Mismatch
Limpia la caché de sesión:
```bash
php artisan cache:clear
php artisan session:clear
```

### Migraciones no encontradas
```bash
# Limpiar configuración cacheada
php artisan config:clear
php artisan cache:clear
```

## Características Avanzadas

### Soft Deletes
Los clientes usan soft deletes (eliminación lógica):

```php
// Obtener solo registros no eliminados
$clientes = Clientes::all();

// Obtener también eliminados
$clientes = Clientes::withTrashed()->get();

// Solo eliminados
$clientes = Clientes::onlyTrashed()->get();

// Restaurar
$cliente->restore();
```

### Timestamps
Todos los modelos incluyen `created_at` y `updated_at`:

```php
$cliente->created_at;  // Fecha de creación
$cliente->updated_at;  // Última actualización
```

### Relaciones entre modelos

```php
// Una factura tiene un cliente
$factura->cliente;

// Un cliente tiene muchas facturas
$cliente->facturas;

// Un producto puede estar en muchas facturas
$producto->facturas;
```

## Desarrollo Local

### Configurar IDE para mejor experiencia

**VS Code**:
1. Instala extensión "PHP Intelephense"
2. Instala extensión "Laravel Extension Pack"
3. Instala extensión "Blade"

**PhpStorm**:
- Detecta automáticamente Laravel
- Habilita soporte para Blade

## Pruebas Unitarias

Crear un test:
```bash
php artisan make:test ClientesTest
```

Estructura de tests:
```
tests/
├── Feature/     # Tests de características completas
└── Unit/        # Tests unitarios
```

Ejecutar tests:
```bash
# Todos los tests
php artisan test

# Test específico
php artisan test tests/Feature/ClientesTest.php

# Con output detallado
php artisan test --verbose
```

## Deployment (Despliegue a Producción)

### Preparación

1. **Actualizar `.env` con configuración de producción**
```env
APP_ENV=production
APP_DEBUG=false
```

2. **Limpiar caché**
```bash
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

3. **Compilar assets**
```bash
npm run build
```

4. **Ejecutar migraciones**
```bash
php artisan migrate --force
```

5. **Generar enlace de almacenamiento**
```bash
php artisan storage:link
```

## Recursos y Documentación

- **Laravel**: [laravel.com/docs](https://laravel.com/docs)
- **AdminLTE**: [adminlte.io](https://adminlte.io)
- **Blade Templates**: [laravel.com/docs/blade](https://laravel.com/docs/blade)
- **Eloquent ORM**: [laravel.com/docs/eloquent](https://laravel.com/docs/eloquent)

## Preguntas Frecuentes (FAQ)

**P: ¿Cómo cambiar el puerto del servidor?**
```bash
php artisan serve --port=3000
```

**P: ¿Cómo ver todas las rutas?**
```bash
php artisan route:list
```

**P: ¿Cómo resetear la base de datos completamente?**
```bash
php artisan migrate:refresh --seed
```

**P: ¿Dónde están los logs de errores?**
```
storage/logs/laravel.log
```

**P: ¿Cómo agregar un nuevo modelo?**
```bash
php artisan make:model NombreModelo -m
```
Esto crea el modelo y la migración.

## Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

### Estándares de código
- Sigue PSR-12 para estilos de código
- Usa nombres descriptivos para variables y funciones
- Comenta código complejo
- Escribe tests para nuevas funcionalidades

## Licencia

Este proyecto está bajo la licencia MIT. Ver archivo LICENSE para más detalles.

## Soporte y Contacto

Para reportar bugs o sugerencias, por favor crea un issue en el repositorio.

---

**Última actualización**: 2 de febrero de 2026

Para cualquier pregunta o soporte adicional, contacta al equipo de desarrollo.
