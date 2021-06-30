<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script src="https://kit.fontawesome.com/5029f3fcda.js" crossorigin="anonymous"></script>    
    <link rel="stylesheet" href="templates/estilos.css">
</head>
<body>
    <form class="formulario" method="post" action="logear.php">
        <h1>Inicia Sesión</h1>
        <div class="container">
            <div class="input-container">
                <i class="fas fa-envelope icon"></i>
                <input type="email" name="email" id="email" placeholder="Email" required>
            </div>
            <div class="input-container">
                <i class="fas fa-unlock icon"></i>
                <input id="contraseña" name="contraseña" type="password" placeholder="Contraseña" required>
            </div>
            <input type="submit" value="Iniciar Sesión" class="button">
            <br>
            <p>¿No tienes una cuenta? <a class="link" href="registro.php">Registrarse</a></p>       
        </div>
    </form>
<?php include 'templates/pie.php'; ?>