<?php
include'conexion.php';

$tabla="proveedor";

$id=$_GET['id'];    

$sqlDelte = "DELETE FROM $tabla where n_proveedor ='".$id."'";
$resultDelet= mysqli_query($conn, $sqlDelte);

if($resultDelet){
        echo"<Script language='JavaScript'>
            alert('Los datos se eliminaron correctamente');
            location.assign('proveedores.php');
            </script>";
    }else{
        echo"Error al eliminar registro:".mysqli_error($conn);
    }           
?>
