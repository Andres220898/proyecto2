<?php
// Verifica si la solicitud HTTP es de tipo POST (envío de formulario)
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Configuración de conexión a la base de datos
    $servername = "localhost"; // Dirección del servidor de la base de datos
    $username = "root"; // Nombre de usuario para acceder a la base de datos
    $password = ""; // Contraseña para acceder a la base de datos
    $dbname = "registroU"; // Nombre de la base de datos a utilizar

    // Crea una conexión a la base de datos MySQL
    $conn = new mysqli($servername, $username, $password, $dbname); // en este caso el new se usa para crear una instancia para conectar la base de datos con el codigo

    // Verifica si la conexión a la base de datos tiene errores
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error); // Termina el script y muestra el mensaje de error (mediante el die es una forma de ahorrar la linea de echo)
    }

    /* valida los datos recibidos del formulario para prevenir inyección SQL es decir mysqli_real_escape_string 
    se usa de manera predefinida para carecteres especiales que no interfieran con una consulta, ya sea comillas o comas */
    $nombre = mysqli_real_escape_string($conn, $_POST["nombres"]); 
    $apellido = mysqli_real_escape_string($conn, $_POST["apellidos"]);
    $identificacion = mysqli_real_escape_string($conn, $_POST["identificacion"]);
    $correo = mysqli_real_escape_string($conn, $_POST["correo"]);
    $celular = mysqli_real_escape_string($conn, $_POST["celular"]);

    /* Genera un hash seguro de la contraseña ingresada por el usuario es decir cifra la contraseña 
    se debe validar con el profe eduer si se puede usar o no */
    $contraseña = password_hash($_POST["contraseña"], PASSWORD_DEFAULT);

    // Construye la consulta SQL para insertar datos en la tabla de usuarios
    $sql = "INSERT INTO usuarios (nombre, apellido, identificacion, correo, celular, contraseña) VALUES ('$nombre', '$apellido', '$identificacion', '$correo', '$celular', '$contraseña')";

    // Ejecuta la consulta SQL y maneja los resultados
    if ($conn->query($sql) === TRUE) { // el operador -> se usa para acceder a las propiedades de un metodo
        echo "
        <script language='JavaScript'>
        alert('Registro exitoso');
        location.assign('ingreso.html');
        </script>"; // Muestra un mensaje de éxito si la consulta se ejecuta correctamente
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error; // Muestra un mensaje de error si la consulta falla
    }

    // Cierra la conexión a la base de datos
    $conn->close();
    //mysqli_error($conn);
}
?>
