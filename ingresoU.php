<?php
// Verifica si la solicitud HTTP es de tipo POST (envío de formulario)
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Configuración de conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bd_appvicola";

    // Crea una conexión a la base de datos MySQL
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verifica si la conexión a la base de datos tiene errores
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Obtiene el correo electrónico y la contraseña del formulario
    $correo = mysqli_real_escape_string ($conn, $_POST["correo"]);
    $contraseña = $_POST["contraseña"];

    // Construye la consulta SQL para buscar el usuario en la tabla "persona"
    $sql = "SELECT * FROM persona WHERE correo = '$correo'";
 
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // Verifica si la contraseña ingresada coincide con la contraseña almacenada en la base de datos
        echo "Contraseña ingresada en el formulario: " . $contraseña; // Depuración
        echo "Contraseña almacenada en la base de datos: " . $row["contraseña"]; // Depuración
        if ($contraseña == $row["contraseña"]) {
            // La contraseña es válida, por lo que el inicio de sesión es exitoso
            session_start();
            $_SESSION["persona"] = $correo; // Almacena el correo electrónico del usuario en la sesión
            if($correo == 'diego@gmail.com'){
                header("Location: dash.php");
                exit();
            }else{
                header("Location: catalogo.php");
                exit();
            }
        } else {
            // Contraseña incorrecta
            echo "<script>alert('Contraseña incorrecta');</script>";
        }
    } else {
        // Usuario no encontrado
        echo "<script>alert('Usuario no encontrado');location.assign('ingreso.html')</script>";
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}
?>
