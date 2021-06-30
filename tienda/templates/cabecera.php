<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script src="https://kit.fontawesome.com/5029f3fcda.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="templates/estilo-index.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top navegador">
        <a class="navbar-brand" href="index.php">Tienda de Dario</a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php"><i class="fas fa-home icon"></i><b> Home</b></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="mostrarCarrito.php"><i class="fas fa-shopping-cart icon"></i><b> Carrito(<?php echo (empty($_SESSION['CARRITO'])?0:count($_SESSION['CARRITO'])); ?>)</a></b>
                </li>
                <li class="nav-item dropdown">                    
                    <a class="nav-link dropdown-toggle active" data-toggle="dropdown" data-target="desplegable" href="#" ><i class="fas fa-user icon"></i><b> 
                        <?php foreach ($_SESSION['USER'] as $indice => $usuario) {
                            echo $usuario['Nombre']." ".$usuario['Apellido'];
                        }?></b>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="mostrarCompras.php">Ver Compras</a>
                        <a class="dropdown-item" href="logout.php">Salir</a>
                    </div>
                
                </li>
            </ul>
        </div>
    </nav>
    <br>
    <br>
    <div class="container">