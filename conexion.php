<?php
$db="bd_appvicola";

$conn = mysqli_connect("localhost", "root", "", "$db");

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}