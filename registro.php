<?php
// Verifica si la solicitud HTTP es de tipo POST (envío de formulario)
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Configuración de conexión a la base de datos
    $servername = "localhost"; // Dirección del servidor de la base de datos
    $username = "root"; // Nombre de usuario para acceder a la base de datos
    $password = ""; // Contraseña para acceder a la base de datos
    $dbname = "bd_appvicola"; // Nombre de la base de datos a utilizar

    // Crea una conexión a la base de datos MySQL
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verifica si la conexión a la base de datos tiene errores
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

// Obtén el valor del campo combinado "nombre_apellido"
$nombre_apellido = mysqli_real_escape_string($conn, $_POST["nombre_apellido"]);

// Divide el valor en nombre y apellido
$parts = explode(" ", $nombre_apellido);

// Inicializa las variables para nombre y apellido
$primer_nombre = '';
$segundo_nombre = '';
$primer_apellido = '';
$segundo_apellido = '';

// Verifica cuántas partes se dividieron
if (count($parts) >= 1) {
    $primer_nombre = $parts[0]; // La primera parte es el primer nombre
}
if (count($parts) >= 2) {
    $segundo_nombre = $parts[1]; // La segunda parte es el segundo nombre
}
if (count($parts) >= 3) {
    $primer_apellido = $parts[2]; // La tercera parte es el primer apellido
}
if (count($parts) >= 4) {
    $segundo_apellido = $parts[3]; // La cuarta parte es el segundo apellido
}

// Obtén los demás campos del formulario
$identificacion = mysqli_real_escape_string($conn, $_POST["identificacion"]);
$correo = mysqli_real_escape_string($conn, $_POST["correo"]);
$celular = mysqli_real_escape_string($conn, $_POST["celular"]);
$direccion = mysqli_real_escape_string($conn, $_POST["direccion"]);
$contraseña = mysqli_real_escape_string($conn, $_POST["contraseña"]); //, PASSWORD_DEFAULT

// Construye la consulta SQL para insertar datos en la tabla de usuarios
$sql = "INSERT INTO persona (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, documento, correo, celular, contraseña) VALUES ('$primer_nombre', '$segundo_nombre', '$primer_apellido', '$segundo_apellido', '$identificacion', '$correo', '$celular', '$contraseña')";

    // Ejecuta la consulta SQL y maneja los resultados
    if ($conn->query($sql) === TRUE) {
        echo "
        <script language='JavaScript'>
        alert('Registro exitoso');
        location.assign('ingreso.html');
        </script>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}
?>
