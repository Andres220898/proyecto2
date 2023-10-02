<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Document</title>
    <!-- stylos para el dash -->
    <link rel="stylesheet" href="./style.css">
    
</head>
<body>
    <!-- parametros de grid en el main -->
    <main>    
        <!-- parametros del header y el search bar -->
        <header>
            <article class="search-container">
                <a href="">
                    <img class="search--icon" src="img/busqueda.png" alt="buscar" title="Buscar">
                </a>
                <input type="search" name="Buscar" placeholder="Buscar producto, cliente, proveedor...">
            </article>
            
            <a href="">
                <img src="./img/campanas.png" alt="Notificaciones" title="Notificaciones">
            </a>
            <a href="">
                <img src="img/sobres.png" alt="Mensajes" title="Mensajes">
            </a>
            <a href="">
                <img src="img/circulo-de-usuario.png" alt="Usuario" title="Usuario">
            </a>
            <a href="">
                <img src="img/settings.png" alt="configuracion" title="Configuración">
            </a>
        </header>
            <!-- parametros del menu -->
        <aside>
            <!-- titulos del menu -->
            <section class="menu-title">
                <img class="menu-logo"src="img/icono.png" alt="Logo">
                <h2>Salsamentaria Palermo</h2>
            </section>
            <!-- items del menu -->
            <ul class="menu-items">
                <li>
                    <a href="dash.php"><img src="./img/caja-abierta.png" alt="Clientes">Resumen</a>    
                           
                </li>
                <li>
                    <a href="cliente.php"><img src="./img/group_.png" alt="Clientes">Clientes</a>    
                           
                </li>
                
                <li>
                    <a href="productos.php"><img src="./img/storefront_FILL0_wght400_GRAD0_opsz40.png" alt="Productos">Productos</a>
                    
                </li>
                <li>
                    <a href=""><img src="./img/almacen-alternativo.png" alt="Inventario">Inventario</a>
                    
                </li>
                <li>
                    <a href=""><img src="./img/article_.png" alt="Categorias">Categorias</a>
                    
                </li>
                <li>
                    <a href=""><img src="./img/sell_.png" alt="Ventas">Ventas</a>
                    
                </li>
                <li>
                    <a href=""><img src="./img/inventory_FILL0_wght400_GRAD0_opsz40.png" alt="Compradores">Compras</a>
                    
                </li>
                <li>
                    <a href=""><img src="./img/local_shipping.png" alt="Proveedores">Proveedores</a>
                    
                </li>
            </ul>

        </aside>

        <!-- contenedor central --------------------------------------------------------------->
        

        <!-- Venta emergente de registro ------------------------------------->
        
        <article class="container-modal-up">
            <span class="content-modal">
                <h2>INGRESE DATOS DE PRODUCTO</h2>

                <?php
                    include 'conexion.php';
                    $tabla="producto";
                    if(isset($_POST['update'])){
                        $id=$_POST['id'];  
                        $nombreP=$_POST["nProducto"];
                        $fechaVenci=$_POST["fechaV"];
                        $precioV=$_POST["precioV"];
                        $precioC=$_POST["precioC"];
                        $hab=$_POST["hab"];
                        
                        $slqUpdate="update $tabla set nombre_producto='".$nombreP."',
                        fecha_caducidad='".$fechaVenci."',
                        precio_venta='".$precioV."',
                        precio_compra='".$precioC."',
                        habilitado='".$hab."'
                            where n_producto='".$id."'";
                        $resultUpdate= mysqli_query($conn, $slqUpdate);
                        if($resultUpdate){
                            echo"<Script language='JavaScript'>
                                alert('Los datos se actualizaron correctamente');
                                location.assign('productos.php');
                                </script>";
                        }else{
                            $error = mysqli_error($conn);
                            echo"<Script language='JavaScript'>
                                alert('Los datos NO se actualizaron. Error: $error');
                                location.assign('productos.php');
                                </script>";
                        }
                        mysqli_close($conn);
                    }else{
                        $id=$_GET["id"];
                        $sqlSelect="select * from $tabla where n_producto='".$id."'";
                        $resultSelect= mysqli_query($conn, $sqlSelect);
                        
                        $fila= mysqli_fetch_assoc($resultSelect);
                        $producto=$fila["nombre_producto"];
                        $fechaV=$fila["fecha_caducidad"];
                        $precioC=$fila["precio_venta"];
                        $precioV=$fila["precio_compra"];
                        $hab=$fila["habilitado"];                               
                    }                 
                ?>
                <form class ="form" action="<?=$_SERVER['PHP_SELF']?>" method="POST">
                
                    
                    <article class="form-container">
                        
                        <article class="form-group">
                            <input type="text" value="<?php echo $producto; ?>" name="nProducto" class="form__input"  placeholder=" " autocomplete="name" required> 
                            <label for="name" class="form__label">Nombre Producto</label>
                            <span class="form__line"></span>
                        </article>
                        
                        <article class="form-group">
                            <input 
                                class="form__input"
                                type="text"
                                name="proveedor"                          
                                value="<?php echo $hab; ?>"
                                placeholder=" "
                                autocomplete="on"
                                required
                            > 
                            <label for="date" class="form__label">Habilitado</label>
                            <span class="form__line"></span>
                        </article>
                        <article class="form-group">
                            <input 
                                class="form__input"
                                type="date"
                                name="fechaV"
                                value="<?php echo $fechaV; ?>"
                                placeholder=""
                                autocomplete="on"
                                required
                            > 
                            <label for="date" class="form__label">Fecha vencimiento</label>
                            <span class="form__line"></span>
                        </article>
                        <article class="form-group">
                            <input 
                                class="form__input"
                                type="text"
                                name="precioC"
                                value="<?php echo $precioC; ?>"
                                placeholder=" "
                                autocomplete="on"
                                required
                            > 
                            <label for="Compra" class="form__label">Precio compra</label>
                            <span class="form__line"></span>
                        </article>
                        <article class="form-group">
                            <input 
                                class="form__input"
                                type="text"
                                name="precioV"
                                value="<?php echo $precioV; ?>"
                                placeholder=" "
                                autocomplete="on"
                                required
                            > 
                            <label for="venta" class="form__label">Precio venta</label>
                            <span class="form__line"></span>
                        </article>
                    
                        
                    </article> 
                    <article class="btn-cerrar">
                    <input type="hidden" name="id" value="<?php echo $id; ?>">   
                    <input type="submit" name="update" value="Actualizar">
                    </article>   
                                    
                    </form>
            </span>
            <label for="btn-modal" ></label>
        </article>

          <!-- footer del dash -->
          <footer>
            <ul class="footer-items">
                <li>
                    <a href="">Privacidad</a>
                </li>
                <li>
                    <a href="">Condiciones</a>
                </li>
                <li>
                    <a href="">Contacto</a>
                </li>
            </ul>
        </footer>
    </main>
</body>
</html>