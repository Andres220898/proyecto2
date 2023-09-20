<?php
$db="aplicola";

$conn = mysqli_connect("localhost", "root", "", "$db");

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}