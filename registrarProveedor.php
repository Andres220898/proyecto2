<?php
    include 'conexion.php';
    $tabla="proveedor";
    $nombreP=$_POST["nombreP"];
    $doc=$_POST["docP"];
    $tel=$_POST["tel"];
    $empresa=$_POST["empresa"];
    $ubicacion=$_POST["ubi"];
    // $fyh_creacion=$_POST["fyh_creacion"];
    
    
    
    $sqlRegistrar="insert into $tabla (nombre_proveedor, documento_proveedor, telefono, empresa, ubicacion, fyh_creacion) VALUES ('$nombreP','$doc','$tel', '$empresa','$ubicacion','".date("Y-m-d H:i:s")."')";
    
    $resultRegistrar= mysqli_query($conn, $sqlRegistrar);    
    
    if(!$resultRegistrar){
        echo"Error al crear registro:".mysqli_error($conn);
    }else{
        echo"<Script language='JavaScript'>
        alert('Los datos se actualizaron correctamente');
        location.assign('proveedor.php');
        </script>";
    }
?>