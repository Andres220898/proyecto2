<?php
require 'conexion.php';
$tabla="domicilio_cliente";
$doc=$_POST['documento'];
$sql="call concatenarDireccion($doc)";

$result1= mysqli_query($conn, $sql);

