<?php
    include 'global/config.php';
    include 'global/conexion.php';
    session_start();
    $email=$_POST['email'];
    $contraseña=openssl_encrypt($_POST['contraseña'], COD, KEY);

    $sentencia=$pdo->prepare("SELECT * FROM `usuario` WHERE Email = '$email' AND Contraseña = '$contraseña'");
    $sentencia->execute();
    $usuario=$sentencia->fetchAll(PDO::FETCH_ASSOC);

    if ($usuario) {
        $_SESSION['USER']=$usuario;
        echo "<script>
                alert('Sesión iniciada correctamente');
                window.location= 'index.php'
            </script>";

    }else{
        echo "<script>
                alert('ERROR: Los datos ingresados son incorrectos');
                window.location= 'login.php'
            </script>";
    }
?>
