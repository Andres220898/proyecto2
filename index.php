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
                <!-- <a href="">
                    <img class="search--icon" src="./img/busqueda.png" alt="buscar" title="Buscar">
                    
                </a>
                <input type="search" name="Buscar" placeholder="Buscar producto, cliente, proveedor..."> -->
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
                <img src="img/logout.png" alt="Cerrar sesión" title="Cerrar sesión">
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

        <!-- seccion principal del dash en donde van los contenidos -->
        <section class="main-section">
            <section class="main-section__title">
                <h3>Página principal - Resumen</h3>
            </section>

            <section class="main-cards" >
                <article class="card">
                    <article class="card-inner">
                        <p class="card-inner--number">67</p>
                        <span class="card-inner--name">Resumen de ventas</span>
                    </article>
                    <article class="card-icon">
                        <img src="./img/storefront_FILL0_wght400_GRAD0_opsz40.png" alt="Resumen de ventas">
                    </article>
                </article>
                <article class="card">
                    <article class="card-inner">
                        <p class="card-inner--number">30</p>
                        <span class="card-inner--name">Ventas esta semana</span>
                    </article>
                    <article class="card-icon">
                        <img src="./img/storefront_FILL0_wght400_GRAD0_opsz40.png" alt="Resumen de ventas">
                    </article>
                </article>
                <article class="card">
                    <article class="card-inner">
                        <p class="card-inner--number">40</p>
                        <span class="card-inner--name">Resumen de Compras</span>
                    </article>
                    <article>
                        <img src="./img/storefront_FILL0_wght400_GRAD0_opsz40.png" alt="Resumen de ventas">
                    </article>
                </article>
                <article class="card">
                    <article class="card-inner">
                        <p class="card-inner--number">101</p>
                        <span class="card-inner--name">Clientes</span>
                    </article>
                    <article class="card-icon">
                        <img src="./img/storefront_FILL0_wght400_GRAD0_opsz40.png" alt="Resumen de ventas">
                    </article>
                </article>
            </section>
            
            <section class="tabular--wrapper">
                <h3 class="tabla--title">Movimientos</h3>
                <article class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Tipo de pago</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Categoria</th>
                                <th>Estado</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2023-05-01</td>
                                <td>Transacción</td>
                                <td>Venta</td>
                                <td>$60.000</td>
                                <td>Pollo</td>
                                <td>Completado</td>
                                <td><button>Edit</button></td>
                            </tr>
                            <tr>
                                <td>2023-05-01</td>
                                <td>Efectivo</td>
                                <td>Venta</td>
                                <td>$45.000</td>
                                <td>Pavo</td>
                                <td>Completado</td>
                                <td><button>Edit</button></td>
                            </tr>
                            <tr>
                                <td>2023-05-01</td>
                                <td>Transacción</td>
                                <td>Venta</td>
                                <td>$89.000</td>
                                <td>Pollo</td>
                                <td>Completado</td>
                                <td><button>Edit</button></td>
                            </tr>
                            <tr>
                                <td>2023-05-01</td>
                                <td>Efectivo</td>
                                <td>Venta</td>
                                <td>$34.000</td>
                                <td>Pollo</td>
                                <td>Completado</td>
                                <td><button>Edit</button></td>
                            </tr>
                            <tr>
                                <td>2023-05-01</td>
                                <td>Transacción</td>
                                <td>Venta</td>
                                <td>$74.000</td>
                                <td>Pavo</td>
                                <td>Completado</td>
                                <td><button>Edit</button></td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="7">Total: $302.000</td>
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
</html>