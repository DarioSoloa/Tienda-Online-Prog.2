<?php
include 'global/config.php';
include 'global/conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre=test_input($_POST["nombre"]);
    $apellido=test_input($_POST["apellido"]);
    $contraseña1=openssl_encrypt($_POST['contraseña1'], COD, KEY);
    $contraseña2=openssl_encrypt($_POST['contraseña2'], COD, KEY);

    if (!preg_match("/^[a-zA-Z ]*$/",$nombre)) { 
        echo "<script>
                alert('ERROR: Solo se permiten letras y espacios vacios en Nombre/s...');
                window.location= 'registro.php'
            </script>"; 
    }

    if (!preg_match("/^[a-zA-Z ]*$/",$apellido)) { 
        echo "<script>
                alert('ERROR: Solo se permiten letras y espacios vacios en Apellido...');
                window.location= 'registro.php'
            </script>"; 
    }    

    if ($contraseña1!=$contraseña2) {
        echo "<script>
                alert('ERROR: Las contraseñas ingresadas no coinciden...');
                window.location= 'registro.php'
            </script>";
    }

    if (filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
        $email=$_POST["email"];
        $sentencia=$pdo->prepare("SELECT * FROM `usuario` WHERE Email = '$email'");
        $sentencia->execute();
        $usuario=$sentencia->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($usuario)) {
            echo "<script>
                    alert('ERROR: El Email ingresado ya se encuentra registrado...');
                    window.location= 'registro.php'
                </script>";
        }else{
            $sentencia2=$pdo->prepare("INSERT INTO `usuario` (`Nombre`, `Apellido`, `Email`, `Contraseña`) VALUES ('$nombre', '$apellido', '$email', '$contraseña1')");
            $sentencia2->execute();
            echo "<script>
                alert('Registro completado con éxito, porfavor inicie sesión...');
                window.location= 'login.php'
            </script>";
        }
    }else{
        echo "<script>
                alert('ERROR: Formato de email invalido...');
                window.location= 'registro.php'
            </script>";
    }
            
}
?>