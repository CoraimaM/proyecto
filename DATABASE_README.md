# 📦 Base de Datos - Proyecto CRM

## 📄 Archivos incluidos

- **`proyecto_database.sql`** - Dump completo de la base de datos
- **`export_database.php`** - Script PHP para exportar la BD (opcional)

---

## 📊 Información de la Base de Datos

**Base de datos**: `proyecto`  
**Tablas exportadas**: 20 tablas  
**Tamaño**: ~60 KB  
**Fecha de exportación**: 20 de febrero de 2026

### Tablas incluidas:

1. **users** - Usuarios del sistema (con roles)
2. **roles** - Roles disponibles (Admin, Usuario)
3. **permissions** - Permisos granulares (24 permisos)
4. **model_has_roles** - Relación usuarios-roles
5. **role_has_permissions** - Relación roles-permisos
6. **clientes** - Información de clientes (con imágenes)
7. **productos** - Catálogo de productos (con imágenes y PDFs)
8. **empleados** - Gestión de empleados
9. **facturas** - Registro de facturas
10. **proveedores** - Base de proveedores
11. **incidencias** - Sistema de tickets
12. **sessions** - Sesiones de usuario
13. **cache** / **cache_locks** - Sistema de caché
14. **jobs** / **job_batches** / **failed_jobs** - Cola de trabajos
15. **migrations** - Historial de migraciones
16. **password_reset_tokens** - Tokens de recuperación

---

## 🚀 Cómo Importar la Base de Datos

### Opción 1: Usando phpMyAdmin (Recomendado para principiantes)

1. Abre **phpMyAdmin** en tu navegador:
   ```
   http://localhost/phpmyadmin
   ```

2. **Crea una nueva base de datos** llamada `proyecto`:
   - Clic en "Nueva" en el panel izquierdo
   - Nombre: `proyecto`
   - Cotejamiento: `utf8mb4_unicode_ci`
   - Clic en "Crear"

3. **Selecciona la base de datos** `proyecto` recién creada

4. **Importa el archivo SQL**:
   - Clic en la pestaña "Importar"
   - Clic en "Seleccionar archivo"
   - Busca y selecciona `proyecto_database.sql`
   - Clic en "Continuar" al final de la página

5. ¡Listo! Verás el mensaje de importación exitosa

### Opción 2: Usando Línea de Comandos (MySQL)

```bash
# 1. Crear la base de datos
mysql -u root -p -e "CREATE DATABASE proyecto CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# 2. Importar el archivo SQL
mysql -u root -p proyecto < proyecto_database.sql
```

### Opción 3: Usando PowerShell (XAMPP en Windows)

```powershell
# Navegar a la carpeta del proyecto
cd C:\xampp\htdocs\proyecto

# Crear la base de datos
C:\xampp\mysql\bin\mysql.exe -u root -p -e "CREATE DATABASE proyecto;"

# Importar el SQL
C:\xampp\mysql\bin\mysql.exe -u root -p proyecto < proyecto_database.sql
```

---

## ⚙️ Configuración del Proyecto

Después de importar la base de datos, configura tu archivo `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=proyecto
DB_USERNAME=root
DB_PASSWORD=tu_password_aqui
```

---

## 👥 Usuarios de Prueba Incluidos

La base de datos ya incluye 2 usuarios listos para usar:

### Administrador (Acceso Total)
- **Email**: `admin@sistema.com`
- **Contraseña**: `admin123`
- **Permisos**: Todos (ver, crear, editar, eliminar)
- **Acceso**: Panel de administración

### Usuario Estándar
- **Email**: `usuario@sistema.com`
- **Contraseña**: `usuario123`
- **Permisos**: Solo ver, crear y editar (NO puede eliminar)
- **Acceso**: Sin panel de administración

---

## 📋 Contenido de Datos de Ejemplo

La base de datos incluye:

✅ **2 usuarios** con sus roles asignados  
✅ **2 roles** (Admin y Usuario)  
✅ **24 permisos** (4 por cada uno de los 6 módulos)  
✅ Relaciones roles-permisos configuradas  
✅ Estructura completa de todas las tablas  
✅ Sesiones y configuración de caché  

---

## 🔍 Verificar Importación

Después de importar, verifica que todo esté correcto:

### Método 1: En phpMyAdmin
1. Abre phpMyAdmin
2. Selecciona la base de datos `proyecto`
3. Deberías ver **20 tablas**
4. Abre la tabla `users` → deberías ver 2 usuarios

### Método 2: En la aplicación
```bash
# Inicia el servidor Laravel
php artisan serve

# Abre el navegador
http://localhost:8000

# Intenta hacer login con:
admin@sistema.com / admin123
```

Si puedes iniciar sesión, ¡la importación fue exitosa!

---

## 🛠️ Comandos Útiles Laravel

Después de importar la BD, ejecuta estos comandos:

```bash
# Limpiar caché de configuración
php artisan config:clear

# Limpiar caché de aplicación
php artisan cache:clear

# Limpiar caché de vistas
php artisan view:clear

# Limpiar caché de permisos
php artisan permission:cache-reset

# Ver estado de migraciones
php artisan migrate:status
```

---

## ❓ Solución de Problemas

### Error: "Base de datos no encontrada"
```bash
# Verifica que la base de datos exista
mysql -u root -p -e "SHOW DATABASES;"

# Si no existe, créala
mysql -u root -p -e "CREATE DATABASE proyecto;"
```

### Error: "Access denied for user"
- Verifica tu usuario y contraseña en `.env`
- Asegúrate que MySQL esté ejecutándose en XAMPP

### Error: "Table doesn't exist"
- La importación falló. Elimina la BD y vuelve a importar:
```bash
mysql -u root -p -e "DROP DATABASE proyecto; CREATE DATABASE proyecto;"
mysql -u root -p proyecto < proyecto_database.sql
```

### Las imágenes no se ven
```bash
# Crea el enlace simbólico de storage
php artisan storage:link
```

---

## 📞 Soporte

Si tienes problemas con la importación:

1. Verifica que XAMPP esté ejecutándose (Apache + MySQL)
2. Comprueba que el archivo SQL no esté corrupto
3. Revisa los logs de MySQL: `C:\xampp\mysql\data\`
4. Consulta el README principal del proyecto

---

## 🔄 Actualizar/Recrear el Dump

Si necesitas exportar una nueva versión de la BD:

```bash
# Usar el script incluido
php export_database.php

# O usar mysqldump (si funciona en tu sistema)
mysqldump -u root -p proyecto > proyecto_database_nuevo.sql
```

---

**Última exportación**: 20 de febrero de 2026  
**Versión Laravel**: 11  
**Versión MySQL**: 5.7+ / 8.0+
