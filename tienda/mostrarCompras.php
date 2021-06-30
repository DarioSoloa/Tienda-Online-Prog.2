<?php
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
?>
<br>
<h3>Lista de compras realizadas</h3>
<?php
foreach ($_SESSION['USER'] as $indice => $usuario) {
    $idUsuario = $usuario['ID'];
}

$statement=$pdo->prepare("SELECT prod.Nombre, prod.Precio, ped.Fecha, ped.Cantidad, ped.Total FROM producto prod, pedido ped, usuario us WHERE ped.Id_usuario=$idUsuario AND us.ID=$idUsuario AND ped.Id_producto=prod.ID GROUP BY ped.ID");
$statement->execute();
$listaProductos=$statement->fetchAll(PDO::FETCH_ASSOC);
?>
<?php if (!empty($listaProductos)){ ?>
<table class="table table-light table-bordered">
    <tbody>
        <tr>
            <th width="40%">Producto</th>
            <th width="15%">Fecha y Hora</th>
            <th width="5%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>            
        </tr>
        <?php foreach($listaProductos as $producto){ ?>
        <tr>
            <td width="40%"><?php echo $producto['Nombre']; ?></td>
            <td width="15%" class="text-center"><?php echo $producto['Fecha']; ?></td>
            <td width="5%" class="text-center"><?php echo $producto['Cantidad']; ?></td>
            <td width="20%" class="text-center">$<?php echo $producto['Precio']; ?></td>
            <td width="20%" class="text-center">$<?php echo $producto['Total']; ?></td>            
        </tr>
        <?php } ?>
    </tbody>
</table>
<?php }else{ ?>
<div class="alert alert-success" role="alert">
    No hay compras registradas...
</div>
<?php } ?>

<?php include 'templates/pie.php'; ?>