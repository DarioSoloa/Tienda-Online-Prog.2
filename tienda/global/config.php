<?php
    define("KEY","dariosoloa");
    define("COD","AES-128-ECB");

    define("SERVIDOR","localhost");
    define("USUARIO","root");
    define("PASSWORD","");
    define("BD","tienda");

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
  }
?>