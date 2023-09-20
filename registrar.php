<?php
    include 'conexion.php';
    $tabla="producto";
    $nombreP=$_POST["nProducto"];
    $fechaVenci=$_POST["fechaV"];
    $precioV=$_POST["precioV"];
    $precioC=$_POST["precioC"];
    $proveedor=$_POST["proveedor"];
    
    
    $sqlRegistrar="insert into $tabla (nombre_producto, precio_venta, precio_compra, fecha_caducidad, n_proveedor) VALUES ('$nombreP','$precioV','$precioC', '$fechaVenci','$proveedor')";
    
    $resultRegistrar= mysqli_query($conn, $sqlRegistrar);    
    
    if(!$resultRegistrar){
        echo"Error al crear registro:".mysqli_error($conn);
    }else{
        echo"<Script language='JavaScript'>
        alert('Los datos se actualizaron correctamente');
        location.assign('productos.php');
        </script>";
    }
?>