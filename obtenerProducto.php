<?php
// Configuración de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bd_appvicola";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Función para obtener productos
function obtenerProductos() {
    global $conn;
    $productos = array();

    $sql = "SELECT n_producto, nombre_producto, precio_venta, imagen FROM producto";
    $result = $conn->query($sql);

    // Verificar si hubo un error en la consulta
    if (!$result) {
        die("Error en la consulta: " . $conn->error);
    }

    // Verificar si se obtuvieron resultados
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $productos[] = $row;
        }
    }

    return $productos;
}



// Obtener los productos
$productos = obtenerProductos();
?>