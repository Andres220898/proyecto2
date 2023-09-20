<?php
require 'conexion.php';
$tabla="proveedor";
$sql="select * from $tabla";

$result= mysqli_query($conn, $sql);

