<?php
include 'Configuracion.php';
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
                    <li><a href="compra.php" class="comp-icon"><i class="fas fa-shopping-cart"></i></a></li>
                    <li><a href="index.html" class="comp-icon"><i class="fa-solid fa-arrow-right-from-bracket" style="color: #f00a0a;"></i></a></li>

                </ul>
            </nav>
        </div>
    </header>

    <div class="search-bar">
        <input type="text" id="search" placeholder="Buscar">
        <button id="search-button">Buscar</button>
    </div>
<!--Clases para el catalgo de producto-->
    <section class="catalogo">

            <?php
            include('obtenerProducto.php');
                foreach ($productos as $producto) {
                    echo "<div class='producto'>";
                    echo "<img src='data:image/jpg;base64," . base64_encode($producto['imagen']) . "' alt='" . $producto['nombre_producto'] . "'>";
                    echo "<h2>" . $producto['nombre_producto'] . "</h2>";
                    echo "<p>Precio: $" . $producto['precio_venta'] . "</p>";
                    echo '<a href="AccionCarta.php?action=addToCart&id=' . $producto["n_producto"] . '">Agregar al Carrito</a>';
                    echo "</div>";
                }   
            ?>
        
    </section>

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
