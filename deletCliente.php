<?php
include'conexion.php';

$tabla="cliente";

$id=$_GET['id'];    

$sqlDelte = "DELETE FROM $tabla where n_cliente ='".$id."'";
$resultDelet= mysqli_query($conn, $sqlDelte);

if($resultDelet){
        echo"<Script language='JavaScript'>
            alert('Los datos se eliminaron correctamente');
            location.assign('cliente.php');
            </script>";
    }else{
        echo"Error al eliminar registro:".mysqli_error($conn);
    }           
?>
