<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script src="https://kit.fontawesome.com/5029f3fcda.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="templates/estilos.css">
</head>
<body>
    <form class="formulario" method="post" action="registrar.php">
        <h1>Registrate</h1>
        <div class="container">
            <div class="input-container">
                <i class="fas fa-user-alt icon"></i>
                <input id="nombre" name="nombre" type="text" placeholder="Nombre/s" required>
            </div> 
            <div class="input-container">
                <i class="fas fa-user-alt icon"></i>
                <input id="apellido" name="apellido" type="text" placeholder="Apellido" required>
            </div> 
            <div class="input-container">
                <i class="fas fa-envelope icon"></i>
                <input id="email" name="email" type="email" placeholder="Email" required>
            </div>
            <div class="input-container">
                <i class="fas fa-unlock icon"></i>
                <input id="contraseña1" name="contraseña1" type="password" placeholder="Contraseña" required>
            </div>
            <div class="input-container">
                <i class="fas fa-unlock icon"></i>
                <input id="contraseña2" name="contraseña2" type="password" placeholder="Repita la contraseña" required>
            </div> 
            <input type="submit" value="Registrarse" class="button">
            <br>
            <p>¿Ya tienes una cuenta? <a class="link" href="login.php">Iniciar Sesión</a></p>       
        </div>
    </form>
    <?php include 'templates/pie.php'; ?>