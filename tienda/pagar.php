<?php
include 'global/config.php';
include 'global/conexion.php';
session_start();
date_default_timezone_set('America/Argentina/Buenos_Aires');
$fecha=date("Y-m-d H:i:s");
$idUsuario=$_POST['idUsuario'];
foreach ($_SESSION['CARRITO'] as $indice=>$producto) {
    $idProducto=$producto['ID'];
    $cantidad=$producto['CANTIDAD'];
    $total=str_replace(",","",number_format($producto['PRECIO']*$producto['CANTIDAD'],2));    
    $sentencia=$pdo->prepare("INSERT INTO `pedido` (`Id_usuario`, `Id_producto`, `Fecha`, `Cantidad`, `Total`) VALUES ('$idUsuario', '$idProducto', '$fecha', '$cantidad', '$total')");
    $sentencia->execute();
}
unset ($_SESSION['CARRITO']);

echo "<script>
            alert('Compra realizada con éxito...');
            window.location= 'index.php'
        </script>";
?>