<?php
include'conexion.php';

            if(isset($_POST['update'])){
                $nombreP=$_POST["nProducto"];
                $fechaVenci=$_POST["fechaV"];
                $precioV=$_POST["precioV"];
                $precioC=$_POST["precioC"];
                $habilitado=$_POST["hab"];
                
                $slqUpdate="insert into $tabla update directorio set documento='".$doc."',
                    nombreP='".$nombre."',
                    apellidoP='".$apellido."',
                    tel='".$tel."'
                    where id='".$id."'";
                $resultUpdate= mysqli_query($conn, $slqUpdate);
                if($resultUpdate){
                    echo"<Script language='JavaScript'>
                        alert('Los datos se actualizaron correctamente');
                        location.assign('index.php');
                        </script>";
                }else{
                    echo"<Script language='JavaScript'>
                        alert('Los datos NO se actualizaron');
                        location.assign('index.php');
                        </script>";
                }
                mysqli_close($conn);
            }else{
                $id=$_GET["id"];
                $sqlSelect="select * from directorio where id='".$id."'";
                $resultSelect= mysqli_query($conn, $sqlSelect);
                
                $fila= mysqli_fetch_assoc($resultSelect);
                $doc=$fila["documento"];
                $apellido=$fila["apellidoP"];
                $nombre=$fila["nombreP"];
                $telefono=$fila["tel"];                               
            }                 
        ?>