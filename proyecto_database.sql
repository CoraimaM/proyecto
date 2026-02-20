-- Base de datos: proyecto
-- Fecha de exportación: 2026-02-20 12:30:39

SET FOREIGN_KEY_CHECKS=0;


-- Estructura de tabla para `cache`
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `cache`
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('uiux-cache-corimedina26@alumnos.alborfp.com|127.0.0.1', 'i:1;', '1771580320');
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('uiux-cache-corimedina26@alumnos.alborfp.com|127.0.0.1:timer', 'i:1771580320;', '1771580320');
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('uiux-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:24:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"ver-clientes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"crear-clientes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:15:\"editar-clientes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:17:\"eliminar-clientes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:13:\"ver-productos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"crear-productos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:16:\"editar-productos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:18:\"eliminar-productos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"ver-empleados\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"crear-empleados\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:16:\"editar-empleados\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:18:\"eliminar-empleados\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"ver-facturas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:14:\"crear-facturas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"editar-facturas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:17:\"eliminar-facturas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"ver-proveedores\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:17:\"crear-proveedores\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"editar-proveedores\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:20:\"eliminar-proveedores\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"ver-incidencias\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:17:\"crear-incidencias\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:18:\"editar-incidencias\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:20:\"eliminar-incidencias\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"Usuario\";s:1:\"c\";s:3:\"web\";}}}', '1771671503');


-- Estructura de tabla para `cache_locks`
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `clientes`
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientes_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `clientes`
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'D. Miguel Ángel Esquibel', 'leire69@example.com', '673-856-914', 'Calle Mayor, 338, Sevilla', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'Dr. Francisco Javier Rubio Tercero', 'tclemente@example.com', '678-042-763', 'Calle Real, 142, Palma', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'Ander Delarosa Hijo', 'ordonez.amparo@example.com', '616-593-687', 'Pasaje Comercial, 406, Málaga', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Joel Padrón', 'gloria.perales@example.com', '683-191-527', 'Calle Mayor, 141, Alicante', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'Lic. Juana Torres', 'diana02@example.com', '603-906-853', 'Paseo del Prado, 459, Alicante', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'Yago Ocasio', 'gael78@example.net', '623-874-802', 'Pasaje Comercial, 138, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'Jesús Castillo', 'ian.sanz@example.net', '640-559-492', 'Calle Mayor, 64, Alicante', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'Ing. Alberto Robledo', 'rcarbajal@example.net', '618-090-660', 'Avenida Central, 400, Valencia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'Carla Meza', 'leire.cortes@example.org', '632-793-746', 'Pasaje Comercial, 206, Murcia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'Eric Torres', 'egamez@example.com', '619-414-605', 'Avenida Central, 33, Alicante', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('11', 'Mateo Tello', 'carlota02@example.org', '641-118-468', 'Avenida Principal, 354, Valencia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('12', 'Diana Chapa', 'harevalo@example.org', '677-585-492', 'Calle Mayor, 267, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('13', 'Ing. Samuel Corona', 'margarita.villalobos@example.net', '674-892-066', 'Avenida Principal, 307, Madrid', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('14', 'Lic. Biel Córdova Segundo', 'miramontes.miriam@example.com', '611-584-485', 'Calle Mayor, 116, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('15', 'Dña Ana María Gallegos Hijo', 'furrutia@example.com', '630-574-242', 'Avenida Principal, 45, Madrid', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('16', 'Daniel Blasco Hijo', 'contreras.juan@example.net', '687-949-562', 'Avenida Principal, 232, Valencia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('17', 'Encarnación Salinas', 'pol.fonseca@example.net', '648-486-811', 'Calle Real, 79, Valencia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('18', 'Alonso Escamilla', 'zruiz@example.org', '685-864-224', 'Paseo del Prado, 392, Palma', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('19', 'D. Santiago Lorente Tercero', 'jan77@example.org', '628-707-254', 'Calle Mayor, 496, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('20', 'Aaron Aguado', 'aitor.conde@example.com', '618-600-687', 'Avenida Principal, 334, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('21', 'Emilia Hernández', 'marc.villar@example.net', '645-497-811', 'Pasaje Comercial, 53, Málaga', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('22', 'Gabriela Pabón', 'rosario.calderon@example.net', '631-303-654', 'Avenida Principal, 59, Valencia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('23', 'Arnau Carmona Hijo', 'duarte.raul@example.com', '663-639-490', 'Paseo del Prado, 367, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('24', 'Antonia Elizondo', 'saez.javier@example.com', '640-799-777', 'Avenida Principal, 233, Murcia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('25', 'David Monroy', 'erik80@example.net', '660-199-571', 'Calle Mayor, 486, Las Palmas', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('26', 'Luis Arroyo', 'blanca02@example.org', '630-858-449', 'Pasaje Comercial, 176, Málaga', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('27', 'Dña Berta Yáñez Segundo', 'diez.luna@example.net', '653-924-536', 'Avenida Principal, 306, Murcia', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('28', 'Lic. Carlos Lucero', 'emadrigal@example.net', '652-235-823', 'Calle Real, 170, Bilbao', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('29', 'Manuela Alvarado', 'apadron@example.net', '677-236-422', 'Paseo del Prado, 251, Sevilla', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES ('30', 'Naia Terán', 'bpastor@example.net', '699-712-828', 'Avenida Central, 314, Palma', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `empleados`
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puesto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleados_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `empleados`
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'Ángel Báez', 'pablo.alcantar@padron.org', '+34 926 82 4373', 'Community Manager', 'IT', '37595.82', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'Diego Curiel', 'martinez.aaron@gonzales.com', '+34 985745960', 'Director de Diseño', 'Marketing', '72273.06', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'Miriam Mesa', 'moran.sofia@garcia.net', '964-61-4971', 'Diseñador Gráfico Junior', 'Marketing', '28082.96', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Roberto Montes Hijo', 'vcolunga@barela.es', '998-714749', 'Especialista en Marketing Digital', 'Diseño', '49483.62', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'Verónica Lorenzo', 'anamaria.armenta@montano.com.es', '+34 948 725307', 'Diseñador Gráfico Senior', 'RRHH', '40629.10', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'Lic. Ana Paredes', 'loya.daniel@alcaraz.net', '+34 922 57 4112', 'Community Manager', 'IT', '49198.34', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'Dr. Oriol Vargas', 'alba.giron@zavala.es', '+34 901-823711', 'Director de Diseño', 'IT', '44693.33', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'Inés Alcaráz Segundo', 'alarcon.daniel@gastelum.es', '973-102865', 'Community Manager', 'Marketing', '42656.77', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'Saúl Suárez', 'rosamaria94@yahoo.com', '964428833', 'Asistente Administrativo', 'RRHH', '49715.72', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'Antonio Alicea Tercero', 'marco90@avalos.com', '996941087', 'Especialista en Marketing Digital', 'Diseño', '45516.37', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('11', 'Ing. Raquel Del Río', 'pozo.luis@orozco.com', '996 65 2475', 'Ejecutivo de Cuentas', 'IT', '58700.25', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `empleados` (`id`, `nombre`, `email`, `telefono`, `puesto`, `departamento`, `salario`, `created_at`, `updated_at`, `deleted_at`) VALUES ('12', 'Alex Domenech', 'vila.oliver@castellano.org', '+34 955214715', 'Asistente Administrativo', 'Ventas', '65185.85', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `facturas`
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_id` bigint unsigned DEFAULT NULL,
  `monto` decimal(12,2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `notas` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facturas_numero_unique` (`numero`),
  KEY `facturas_cliente_id_foreign` (`cliente_id`),
  CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `facturas`
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'FAC-607110', '10', '593.27', '2026-01-15', 'pagada', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'FAC-357187', '24', '3694.12', '2025-12-04', 'pagada', 'Proyecto especial con descuento', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'FAC-396939', '3', '6499.31', '2025-11-07', 'pendiente', 'Factura rectificativa', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'FAC-106304', '15', '229.07', '2025-11-09', 'pendiente', 'Pago por adelantado', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'FAC-773349', '14', '8208.40', '2025-11-07', 'pendiente', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'FAC-121128', '11', '2459.86', '2026-01-06', 'pagada', 'Pago por adelantado', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'FAC-986268', '26', '354.55', '2025-10-30', 'pagada', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'FAC-138390', '15', '424.82', '2025-12-05', 'pagada', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'FAC-757449', '3', '4662.88', '2025-12-23', 'pendiente', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'FAC-298548', '6', '9045.25', '2025-11-11', 'pagada', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('11', 'FAC-019275', '25', '8897.36', '2026-01-20', 'pendiente', 'Proyecto completado', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('12', 'FAC-077987', '3', '7058.50', '2025-11-27', 'pendiente', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('13', 'FAC-147393', '9', '6764.07', '2025-11-24', 'pagada', 'Servicio premium', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('14', 'FAC-823640', '24', '2334.67', '2025-12-07', 'pendiente', 'Entrega en tiempo', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('15', 'FAC-230443', '20', '2175.48', '2025-12-27', 'pendiente', 'Pago por adelantado', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('16', 'FAC-608740', '22', '4116.32', '2025-11-28', 'pendiente', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('17', 'FAC-964510', '26', '8494.95', '2025-11-17', 'pagada', NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('18', 'FAC-456584', '11', '3941.21', '2025-12-25', 'pendiente', 'Entrega en tiempo', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('19', 'FAC-031209', '15', '452.00', '2025-11-14', 'pagada', 'Incluye soporte técnico', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `monto`, `fecha`, `estado`, `notas`, `created_at`, `updated_at`, `deleted_at`) VALUES ('20', 'FAC-796502', '11', '8372.43', '2025-12-26', 'pendiente', 'Pago a 30 días', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `failed_jobs`
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `incidencias`
DROP TABLE IF EXISTS `incidencias`;
CREATE TABLE `incidencias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'abierta',
  `prioridad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `usuario_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incidencias_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `incidencias_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `incidencias`
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'Solicitud de información', 'El cliente solicita cambios en el diseño presentado', 'cerrada', 'normal', '2', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'Error de comunicación', 'Problema técnico en la entrega del archivo', 'abierta', 'normal', '6', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'Incidencia técnica', 'El cliente solicita cambios en el diseño presentado', 'pendiente', 'alta', '2', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Ajuste de tipografía', 'Retraso en la entrega por falta de recursos', 'abierta', 'baja', '5', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'Problema con paleta de colores', 'Retraso en la entrega por falta de recursos', 'pendiente', 'baja', '3', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'Revisión de banners web', 'Falta información para continuar', 'pendiente', 'alta', '3', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'Ajuste de tipografía', 'Retraso en la entrega por falta de recursos', 'pendiente', 'alta', '4', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'Incidencia técnica', 'Necesita revisión de cumplimiento', 'abierta', 'alta', '4', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'Retraso en entrega', 'Es necesario revisar la calidad del trabajo', 'cerrada', 'baja', '4', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'Problema con paleta de colores', 'El cliente solicita cambios en el diseño presentado', 'pendiente', 'alta', '2', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('11', 'Ajuste de tipografía', 'Retraso en la entrega por falta de recursos', 'cerrada', 'normal', '1', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('12', 'Incidencia técnica', 'Cambio de requisitos del proyecto', 'cerrada', 'normal', '1', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('13', 'Problema con cliente', 'Problema técnico en la entrega del archivo', 'cerrada', 'alta', '3', '2026-01-29 19:02:23', '2026-01-29 19:29:27', '2026-01-29 19:29:27');
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('14', 'Solicitud de información', 'Retraso en la entrega por falta de recursos', 'cerrada', 'normal', '2', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('15', 'Problema con cliente', 'Se requiere aprobación del gerente', 'abierta', 'baja', '3', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('16', 'Retraso en entrega', 'Es necesario revisar la calidad del trabajo', 'abierta', 'normal', '5', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('17', 'Retraso en entrega', 'Cambio de requisitos del proyecto', 'cerrada', 'baja', '3', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `incidencias` (`id`, `titulo`, `descripcion`, `estado`, `prioridad`, `usuario_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('18', 'Error de facturación', 'Problema técnico en la entrega del archivo', 'cerrada', 'alta', '6', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `job_batches`
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `jobs`
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `migrations`
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `migrations`
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('77', '0001_01_01_000000_create_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('78', '0001_01_01_000001_create_cache_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('79', '0001_01_01_000002_create_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('80', '2026_01_29_000000_add_deleted_at_to_clientes_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('81', '2026_01_29_010000_create_clientes_table_if_not_exists', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('82', '2026_01_29_182857_create_productos_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('83', '2026_01_29_182857_create_proveedors_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('84', '2026_01_29_182858_create_empleados_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('85', '2026_01_29_182858_create_facturas_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('86', '2026_01_29_182858_create_incidencias_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('87', '2026_01_29_183805_create_views', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('88', '2026_02_20_102445_create_permission_tables', '2');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('89', '2026_02_20_102457_add_image_to_clientes_table', '2');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('90', '2026_02_20_102459_add_image_and_pdf_to_productos_table', '2');


-- Estructura de tabla para `model_has_permissions`
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `model_has_roles`
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `model_has_roles`
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('1', 'App\\Models\\User', '7');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '8');


-- Estructura de tabla para `password_reset_tokens`
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para `permissions`
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `permissions`
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('1', 'ver-clientes', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('2', 'crear-clientes', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('3', 'editar-clientes', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('4', 'eliminar-clientes', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('5', 'ver-productos', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('6', 'crear-productos', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('7', 'editar-productos', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('8', 'eliminar-productos', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('9', 'ver-empleados', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('10', 'crear-empleados', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('11', 'editar-empleados', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('12', 'eliminar-empleados', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('13', 'ver-facturas', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('14', 'crear-facturas', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('15', 'editar-facturas', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('16', 'eliminar-facturas', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('17', 'ver-proveedores', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('18', 'crear-proveedores', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('19', 'editar-proveedores', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('20', 'eliminar-proveedores', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('21', 'ver-incidencias', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('22', 'crear-incidencias', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('23', 'editar-incidencias', 'web', '2026-02-20 10:28:49', '2026-02-20 10:28:49');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('24', 'eliminar-incidencias', 'web', '2026-02-20 10:28:50', '2026-02-20 10:28:50');


-- Estructura de tabla para `productos`
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productos_sku_unique` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `productos`
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'Tarjetas de Presentación', 'Diseño de tarjetas de presentación personalizadas', '218.51', '14', 'DG-5245-lv', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'Kit de Iconos', 'Conjunto de iconos personalizados para tu proyecto', '520.31', '31', 'DG-1661-ty', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'Banner Web', 'Banners optimizados para sitios web y redes sociales', '345.73', '49', 'DG-3589-az', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', 'Portada de Libro', 'Diseño de portada para libros y ebooks', '636.91', '39', 'DG-6991-bh', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'Plantilla Powerpoint', 'Plantillas profesionales para presentaciones', '210.84', '26', 'DG-1513-ns', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'Branding Completo', 'Paquete completo de identidad visual: logo, paleta, tipografía', '987.30', '42', 'DG-3558-xq', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'Diseño de Packaging', 'Diseño de empaque y etiquetado para productos', '521.17', '39', 'DG-0117-kj', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'Portada de Libro', 'Diseño de portada para libros y ebooks', '367.90', '49', 'DG-0360-wu', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'Etiquetas y Pegatinas', 'Diseño de etiquetas y pegatinas para productos', '177.16', '37', 'DG-1309-tr', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'Kit de Iconos', 'Conjunto de iconos personalizados para tu proyecto', '957.78', '47', 'DG-6856-ie', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('11', 'Infografía', 'Infografía custom basada en tus datos', '364.22', '33', 'DG-6164-qb', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('12', 'Diseño de Revista', 'Diseño de páginas interiores y portada de revista', '1977.28', '31', 'DG-9240-xq', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('13', 'Plantilla Powerpoint', 'Plantillas profesionales para presentaciones', '337.07', '27', 'DG-2223-kl', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('14', 'Diseño de Menú', 'Menú restaurante o cafetería con diseño gráfico profesional', '157.65', '19', 'DG-4184-py', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `sku`, `imagen`, `archivo_pdf`, `created_at`, `updated_at`, `deleted_at`) VALUES ('15', 'Póster Artístico', 'Póster decorativo personalizado para imprenta', '250.67', '1', 'DG-8862-js', NULL, NULL, '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `proveedors`
DROP TABLE IF EXISTS `proveedors`;
CREATE TABLE `proveedors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proveedors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `proveedors`
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('1', 'Shutterstock', 'montes.ariadna@barrientos.com', '681-132-089', 'Avenida Central, 368, Alicante', 'Banco de imágenes y recursos gráficos', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('2', 'Creative Market', 'nerea70@rosario.org', '670-343-110', 'Paseo del Prado, 458, Alicante', 'Marketplace de recursos de diseño', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('3', 'Getty Images', 'clara.pelayo@laureano.com', '699-893-051', 'Calle Real, 94, Murcia', 'Base de datos de fotografías de alta calidad', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('4', '123Royalty Free', 'carlos81@navas.es', '696-790-247', 'Calle Mayor, 103, Las Palmas', 'Música y sonidos para proyectos', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('5', 'Istock Photos', 'valentina47@velez.com', '612-825-310', 'Paseo del Prado, 144, Palma', 'Banco de stock photography', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('6', 'Adobe Creative Cloud', 'azavala@nava.org', '674-955-662', 'Pasaje Comercial, 349, Madrid', 'Proveedor de software de diseño profesional', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('7', 'Canva Pro', 'veronica94@lazaro.es', '686-270-153', 'Calle Mayor, 105, Alicante', 'Plataforma de diseño simplificada', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('8', 'Creative Market', 'jaime.meraz@quesada.com', '619-764-973', 'Pasaje Comercial, 2, Alicante', 'Marketplace de recursos de diseño', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('9', 'Creative Market', 'emilia.feliciano@jaramillo.org', '624-337-039', 'Calle Real, 175, Bilbao', 'Marketplace de recursos de diseño', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);
INSERT INTO `proveedors` (`id`, `nombre`, `email`, `telefono`, `direccion`, `empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES ('10', 'Shutterstock', 'hernadez.anaisabel@gonzales.com.es', '681-353-118', 'Avenida Central, 19, Barcelona', 'Banco de imágenes y recursos gráficos', '2026-01-29 19:02:23', '2026-01-29 19:02:23', NULL);


-- Estructura de tabla para `role_has_permissions`
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `role_has_permissions`
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('2', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('3', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('4', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('5', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('6', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('7', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('8', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('9', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('10', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('11', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('12', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('13', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('14', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('15', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('16', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('17', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('18', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('19', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('20', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('21', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('22', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('23', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('24', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('1', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('2', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('3', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('5', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('6', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('7', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('9', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('10', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('11', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('13', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('14', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('15', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('17', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('18', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('19', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('21', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('22', '2');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('23', '2');


-- Estructura de tabla para `roles`
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `roles`
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('1', 'Admin', 'web', '2026-02-20 10:28:50', '2026-02-20 10:28:50');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('2', 'Usuario', 'web', '2026-02-20 10:28:50', '2026-02-20 10:28:50');


-- Estructura de tabla para `sessions`
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `sessions`
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('atZkitYDmRfWTXAQ1nyUqMS9m4H5114bdpeVIQun', '6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY2tzUG9xMG5PUW02aEVaeDJianNPajFncDJORVJiSmdXNk92Z1FFMyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzcxNTgwMjg0O319', '1771585797');


-- Estructura de tabla para `users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Datos de la tabla `users`
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('1', 'Ing. Javier Portillo', 'gabriel20@example.net', '2026-01-29 19:02:22', '$2y$12$K7RUz3XXbzogpXBz9KWojuA9QNYguIdwR1NYGdC/EsKgodR1J6w3y', '9qFdRWvBy0', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('2', 'Jaime Delagarza Hijo', 'aitana80@example.org', '2026-01-29 19:02:22', '$2y$12$K7RUz3XXbzogpXBz9KWojuA9QNYguIdwR1NYGdC/EsKgodR1J6w3y', 'RBzRJfZgKF', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('3', 'Elena Vaca', 'pedraza.yaiza@example.com', '2026-01-29 19:02:22', '$2y$12$K7RUz3XXbzogpXBz9KWojuA9QNYguIdwR1NYGdC/EsKgodR1J6w3y', 'mzpv9GFRht', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('4', 'Ángel Páez', 'nunez.hector@example.com', '2026-01-29 19:02:23', '$2y$12$K7RUz3XXbzogpXBz9KWojuA9QNYguIdwR1NYGdC/EsKgodR1J6w3y', 'sjffV3udEf', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('5', 'Lara Vera', 'qvaca@example.org', '2026-01-29 19:02:23', '$2y$12$K7RUz3XXbzogpXBz9KWojuA9QNYguIdwR1NYGdC/EsKgodR1J6w3y', 'Fn8ugjsGzS', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('6', 'Coraima', 'corimedina26@gmail.com', '2026-01-29 19:02:23', '$2y$12$BjKFXOjlNFf8BFq4vAgUF.SmFS/qv.SO89Rnoj2bAblkZdoM2hHvK', 'eVWJKxeZ8K', '2026-01-29 19:02:23', '2026-01-29 19:02:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('7', 'Administrador', 'admin@sistema.com', NULL, '$2y$12$OLuS7Xrj198LsoRcQ0XC3.LJqY9y1PlzE2j/upJeUYBXcqRNvYxiq', NULL, '2026-02-20 10:28:50', '2026-02-20 10:28:50');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('8', 'Usuario Test', 'usuario@sistema.com', NULL, '$2y$12$/ZRL8d.Sc06nd8wnqyVmHe5CuEaP8uHJJYvAtng2WydMtK3NMQp/y', NULL, '2026-02-20 10:28:50', '2026-02-20 10:28:50');

SET FOREIGN_KEY_CHECKS=1;
