<?php
    session_start();
    $mensaje="";

    if(isset($_POST['btnAccion'])){
        switch ($_POST['btnAccion']) {
            case 'Agregar':
                if ( is_numeric(openssl_decrypt($_POST['id'], COD, KEY))) {
                    $ID=openssl_decrypt($_POST['id'], COD, KEY);
                }else{
                    $mensaje.="Id incorrecto "."<br>";
                    break;
                }                
                
                if (is_string(openssl_decrypt($_POST['nombre'], COD, KEY))) {
                    $NOMBRE=openssl_decrypt($_POST['nombre'], COD, KEY);
                }else{
                    $mensaje.="Upss.. nombre incorrecto"."<br>";
                    break;
                }

                if (is_numeric(openssl_decrypt($_POST['precio'], COD, KEY))) {
                    $PRECIO=openssl_decrypt($_POST['precio'], COD, KEY);
                }else{
                    $mensaje.="Upss.. precio incorrecto"."<br>";
                    break;
                }

                if (is_numeric(openssl_decrypt($_POST['cantidad'], COD, KEY))) {
                    $CANTIDAD=openssl_decrypt($_POST['cantidad'], COD, KEY);
                }else{
                    $mensaje.="Upss.. cantidad incorrecta"."<br>";
                    break;
                }

                if (!isset($_SESSION['CARRITO'])) {
                    $producto=array('ID'=>$ID, 'NOMBRE'=>$NOMBRE, 'PRECIO'=>$PRECIO, 'CANTIDAD'=>$CANTIDAD);
                    $_SESSION['CARRITO'][0]=$producto;
                    $mensaje="Producto agregado al carrito";
                }else{
                    $numeroProductos=count($_SESSION['CARRITO']);
                    $producto=array('ID'=>$ID, 'NOMBRE'=>$NOMBRE, 'PRECIO'=>$PRECIO, 'CANTIDAD'=>$CANTIDAD);
                    $_SESSION['CARRITO'][$numeroProductos]=$producto;
                    $mensaje="Producto agregado al carrito";
                }
                
                break; 

            case 'Eliminar':
                if ( is_numeric(openssl_decrypt($_POST['id'], COD, KEY))) {
                    $ID=openssl_decrypt($_POST['id'], COD, KEY);
                    foreach($_SESSION['CARRITO'] as $indice=>$producto){
                        if ($producto['ID']==$ID) {
                            unset($_SESSION['CARRITO'][$indice]);
                            echo "<script>alert('Elemento eliminado...');</script>";
                        }
                    }
                }else{
                    $mensaje.="Id incorrecto "."<br>";
                    break;
                }
                break;
            
        }
    }
?>