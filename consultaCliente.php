<?php
require 'conexion.php';
$tabla="persona";
$sql="select * from $tabla";

$result= mysqli_query($conn, $sql);

