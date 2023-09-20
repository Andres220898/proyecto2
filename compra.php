<?php
// initializ shopping cart class
include 'La-carta.php';
$cart = new Cart;
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
    <script>
        function updateCartItem(obj, id) {
            $.get("cartAction.php", {
                action: "updateCartItem",
                id: id,
                qty: obj.value
            }, function(data) {
                if (data == 'ok') {
                    location.reload();
                } else {
                    alert('fallo actualizacion de carrito, intente otra vez.');
                }
            });
        }
    </script>


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


<h1>Carrito de compras</h1>
<table class="table">
    <thead>
        <tr>
            <th>Producto</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th>Sub total</th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
        <?php
        if ($cart->total_items() > 0) {
            //obtener item de sesion 
            $cartItems = $cart->contents();
            foreach ($cartItems as $item) {
        ?>
                <tr>
                    <td><?php echo $item["name"]; ?></td>
                    <td><?php echo '$' . $item["price"] . ' COP'; ?></td>
                    <td><input type="number" class="form-control text-center" value="<?php echo $item["qty"]; ?>" onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')"></td>
                    <td><?php echo '$' . $item["subtotal"] . ' COP'; ?></td>
                    <td>
                        <a href="AccionCarta.php?action=removeCartItem&id=<?php echo $item["rowid"]; ?>" class="btn btn-danger" onclick="return confirm('Confirma eliminar?')"><i class="glyphicon glyphicon-trash"></i></a>
                    </td>
                </tr>
            <?php }
        } else { ?>
            <tr>
                <td colspan="5">
                    <p>No has solicitado ningún producto.....</p>
                </td>
            <?php } ?>
    </tbody>
    <tfoot>
        <tr>
            <td><a href="catalogo.php" class="btn btn-warning"><i class="glyphicon glyphicon-menu-left"></i> Volver a la tienda</a></td>
            <td colspan="2"></td>
            <?php if ($cart->total_items() > 0) { ?>
                <td class="text-center"><strong>Total <?php echo '$' . $cart->total() . ' COP'; ?></strong></td>
                <td><a href="Pagos.php" class="btn btn-success btn-block">Pagos <i class="glyphicon glyphicon-menu-right"></i></a></td>
            <?php } ?>
        </tr>
    </tfoot>
</table>

</div>
</div>  

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
