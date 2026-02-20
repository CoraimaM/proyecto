<?php

// Script para exportar la base de datos a SQL
$host = '127.0.0.1';
$username = 'root';
$password = 'Carlos0811.';
$database = 'proyecto';
$output_file = 'proyecto_database.sql';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$database;charset=utf8mb4", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $sql_dump = "-- Base de datos: $database\n";
    $sql_dump .= "-- Fecha de exportación: " . date('Y-m-d H:i:s') . "\n\n";
    $sql_dump .= "SET FOREIGN_KEY_CHECKS=0;\n\n";
    
    // Obtener todas las tablas
    $tables = $pdo->query("SHOW TABLES")->fetchAll(PDO::FETCH_COLUMN);
    
    foreach ($tables as $table) {
        echo "Exportando tabla: $table\n";
        
        // Estructura de la tabla
        $create_table = $pdo->query("SHOW CREATE TABLE `$table`")->fetch(PDO::FETCH_ASSOC);
        $sql_dump .= "\n-- Estructura de tabla para `$table`\n";
        $sql_dump .= "DROP TABLE IF EXISTS `$table`;\n";
        $sql_dump .= $create_table['Create Table'] . ";\n\n";
        
        // Datos de la tabla
        $rows = $pdo->query("SELECT * FROM `$table`")->fetchAll(PDO::FETCH_ASSOC);
        
        if (count($rows) > 0) {
            $sql_dump .= "-- Datos de la tabla `$table`\n";
            
            foreach ($rows as $row) {
                $values = array_map(function($value) use ($pdo) {
                    return $value === null ? 'NULL' : $pdo->quote($value);
                }, array_values($row));
                
                $columns = array_map(function($col) {
                    return "`$col`";
                }, array_keys($row));
                
                $sql_dump .= "INSERT INTO `$table` (" . implode(', ', $columns) . ") VALUES (" . implode(', ', $values) . ");\n";
            }
            $sql_dump .= "\n";
        }
    }
    
    $sql_dump .= "SET FOREIGN_KEY_CHECKS=1;\n";
    
    // Guardar archivo
    file_put_contents($output_file, $sql_dump);
    
    echo "\n✓ Base de datos exportada exitosamente a: $output_file\n";
    echo "Tamaño: " . number_format(filesize($output_file) / 1024, 2) . " KB\n";
    echo "Tablas exportadas: " . count($tables) . "\n";
    
} catch (PDOException $e) {
    die("Error: " . $e->getMessage() . "\n");
}
