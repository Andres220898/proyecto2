<?php
require 'conexion.php';
$tabla="producto";
$sql="select * from $tabla";

$result= mysqli_query($conn, $sql);

