<?php
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
?>
        <br>
        <?php 
            if (!isset($_SESSION['USER'])) {
                header("location: login.php");
            }               
        ?>
        <?php if ($mensaje!=""){ ?>
        <div class="alert alert-success">
            <?php echo $mensaje; ?>
            <a href="mostrarCarrito.php" class="badge badge-succes" style="color:#09AD31">Ver carrito</a>
        </div>
        <?php } ?>

        <div class="row">
        <?php
        $sentencia=$pdo->prepare("SELECT * FROM `producto`");
        $sentencia->execute();
        $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
        ?>
        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <div class="card">
                    <img                   
                    data-toggle="popover"
                    title="<?php echo $producto['Nombre']; ?>" 
                    alt="<?php echo $producto['Nombre']; ?>" 
                    class="card-img-top" 
                    src="<?php echo $producto['Imagen']; ?>"
                    data-content="<?php echo $producto['Descripcion']; ?>"
                    data-trigger="hover"
                    >
                    <div class="card-body">
                    <span><b><?php echo $producto['Nombre']; ?></b></span>
                        <h5 class="card-title">$<?php echo $producto['Precio']; ?></h5>
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'], COD, KEY); ?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['Nombre'], COD, KEY); ?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['Precio'], COD, KEY); ?>">
                            <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, COD, KEY); ?>">
                            <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit"><i class="fas fa-cart-plus icon2"></i> Agregar al carrito</button>
                        </form>                        
                    </div>
                </div>
            </div>
        <?php } ?> 
            
        </div>
    </div>  

<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();
    });
</script>
<?php include 'templates/pie.php'; ?>
