<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Document</title>
    <!-- stylos para el dash -->
    <link rel="stylesheet" href="./style.css">
    <link href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js" type="text/javascript"></script>  
   
    
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
                    <a href="index.php"><img src="./img/caja-abierta.png" alt="Clientes">Resumen</a>    
                           
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
                    <a href="proveedores.php"><img src="./img/local_shipping.png" alt="Proveedores">Proveedores</a>
                    
                </li>
            </ul>

        </aside>

        <!-- contenedor central --------------------------------------------------------------->
        <section class="main-section">
            <section class="boton-modal">
                <h2>Clientes - Direccion</h2>
                <label  for="btn-modal">
                    Agregar Direccion
                </label>
                
            </section>
            <section class="tabular--wrapper">
                <h3 class="tabla--title">Articulos</h3>
                <article class="table-container">
                
                    <table id="tabla">
                        <thead>
                            
                            <tr>
                                <th>DIRECCION</th>
                                <th>ACCION</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                             <?php
                                require 'conexion.php';
                                  
                                    $doc=$_GET['id'];
                                    $sql="call concatenarDireccion($doc)";

                                    $result1= mysqli_query($conn, $sql);


                                    while ($row = $result1->fetch_assoc()) {                                                                      
                                       
                                ?>

                            <tr>
                                <td><?php echo $row['nombre'] ?></td>                                

                                <td>
                                <a href="">Editar</a>
                                -
                                <a href="">Eliminar</a>                             
                                </td>
                            </tr>
                            <?php
                                 }    
                            ?>
                                
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="7"></td>
                                

                            </tr>
                        </tfoot>
                        
                    </table>
                </article>
                   
            </section>

        </section>

       

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


<script>
  
    $(document).ready(function() {
    $('#tabla').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {            
            extend: 'copy',
            text: '<u>C</u>opiar',
            key: {
                key: 'c',
                altKey: true
                
            },
            title: 'Reporte Salsamentaria Palermo Sur'
            },
            {
            extend: 'print',
            text: '<u>I</u>mprimir',
            key: {
                key: 'i',
                altKey: true
            },
            title: 'Reporte Salsamentaria Palermo Sur'
            },
            {
            extend: 'pdf',
            text: '<u>P</u>DF',
            key: {
                key: 'p',
                altKey: true
            },
            title: 'Reporte Salsamentaria Palermo Sur'
            },
            {
            extend: 'excel',
            text: '<u>E</u>xcel',
            key: {
                key: 'k',
                altKey: true
            },  
            title: 'Reporte Salsamentaria Palermo Sur'
            }
        ],
        pageLength: 4,
        language: {
            search: "Buscar:",
            lengthMenu: "Mostrar _MENU_ registros por página",
            zeroRecords: "No se encontraron registros",
            info: "Mostrando _START_ a _END_ de _TOTAL_ registros",
            infoEmpty: "Mostrando 0 a 0 de 0 registros",
            infoFiltered: "(filtrados de _MAX_ registros totales)",
            paginate: {
                first: "Primero",
                previous: "Anterior",
                next: "Siguiente",
                last: "Último"
            }
        }
    });
}); 
</script>

<script src="https://code.jquery.com/jquery-3.7.0.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js" type="text/javascript"></script>

</html>