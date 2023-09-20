<?php
// include database configuration file
include 'Configuracion.php';

// initializ shopping cart class
include 'La-carta.php';
$cart = new Cart;

// redirect to home if cart is empty
if ($cart->total_items() <= 0) {
    header("Location: index.php");
}

// set customer ID in session
$_SESSION['sessCustomerID'] = 78965232;

// get customer details by session customer ID
$query = $db->query("SELECT * FROM persona WHERE documento = " . $_SESSION['sessCustomerID']);
$custRow = $query->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo de Productos</title>
    <!--librerias de bootstrap-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- estilos locales -->
    <link rel="stylesheet" href="css/estilocata.css">
    <link rel="shortcut icon" href="css/Imagenes/icono.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/fbf50badbe.js" crossorigin="anonymous"></script>



</head>
<body>
    <header>
        <div class="menu">
           <a href="index.html"> <img src="css/Imagenes/icono.png" alt="" ></a>
            <nav>
                <ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="Contacto.html">Contacto</a></li>
                    <li><a href="quienessomos.html">Quienes Somos</a></li>
                    <li><a href="Ubicacion.html">Ubicacion</a></li>
                    <li><a href="compra.html" class="comp-icon"><i class="fas fa-shopping-cart"></i></a></li>
                    <li><a href="index.html" class="comp-icon"><i class="fa-solid fa-arrow-right-from-bracket" style="color: #f00a0a;"></i></a></li>

                </ul>
            </nav>
        </div>
    </header>

    
<!--Clases para el catalgo de producto-->
    
            <div class="panel-body">
                <h1>Vista previa de la Orden</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Sub total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if ($cart->total_items() > 0) {
                            //get cart items from session
                            $cartItems = $cart->contents();
                            foreach ($cartItems as $item) {
                        ?>
                                <tr>
                                    <td><?php echo $item["name"]; ?></td>
                                    <td><?php echo '$' . $item["price"] . ' COP'; ?></td>
                                    <td><?php echo $item["qty"]; ?></td>
                                    <td><?php echo '$' . $item["subtotal"] . ' COP'; ?></td>
                                </tr>
                            <?php }
                        } else { ?>
                            <tr>
                                <td colspan="4">
                                    <p>No hay articulos en tu carta......</p>
                                </td>
                            <?php } ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3"></td>
                            <?php if ($cart->total_items() > 0) { ?>
                                <td class="text-center"><strong>Total <?php echo '$' . $cart->total() . ' COP'; ?></strong></td>
                            <?php } ?>
                        </tr>
                    </tfoot>
                </table>
                <p>Metodo de pago</p>
                <select class="form-control">
                    <option>Seleccione metodo</option>
                    <option>PSE</option>
                    <option>Transferencia bancaria</option>
                    <option>Nequi</option>
                    
                </select>
                <div class="shipAddr">
                    <h4>Detalles de envío</h4>
                    <p><?php echo $custRow['primer_nombre'] .' '. $custRow['primer_apellido']; ?></p>
                    <p><?php echo $custRow['direccion']; ?></p>
                    <p><?php echo $custRow['celular']; ?></p>
                    <p><?php echo $custRow['correo']; ?></p>
                </div>
                <div class="footBtn">
                    <a href="catalogo.php" class="btn btn-warning"><i class="glyphicon glyphicon-menu-left"></i> Continue Comprando</a>
                    <a href="AccionCarta.php?action=placeOrder" class="btn btn-success orderBtn">Realizar pedido <i class="glyphicon glyphicon-menu-right"></i></a>
                </div>
                
            </div>
            
            <?php
            // Verifica si hay un mensaje de error en la variable de sesión.
if(isset($_SESSION['error_message'])) {
    // Muestra el mensaje de error.
    echo '<div class="error-message">' . $_SESSION['error_message'] . '</div>';
    
    // Limpia el mensaje de error de la variable de sesión para que no se muestre de nuevo en futuras páginas.
    unset($_SESSION['error_message']);
}
            ?>

    <footer> <!--Pie de pagina -->
        <div class="sec1">
            <div class="part2">
                <h3>Sobre Nosotros</h3>
                <p>Convierte tu visión en una realidad digital con nosotros: <br>desarrolladores web que crean experiencias únicas y funcionales</p>
            </div>
            <div class="part3">
                <h3>Siguenos</h3>
                <div class="redsocial">
                    <a href="https://www.facebook.com/ANDRESFRAGMENTOSMC" class="fa fa-facebook"></a>
                    <a href="https://www.instagram.com/andres.sert/" class="fa fa-instagram"></a> 
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>
                </div>
            </div>
        </div>
        <div class="sec2">
            <h3><small>&copy;2023 <b>D-TECNO</b> - Todos los derechos reservados</small></h3>
        </div>
    </footer>
    <script src="js/estilocarri.js"></script>
</body>
</html>
