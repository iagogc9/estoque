<?php
    
    $hostname = 'localhost';
    $usuario = 'root';
    $senha = '';
    $nomeBanco = 'estoque';

    $mysqli = new mysqli($hostname, $usuario, $senha, $nomeBanco);

    if ($mysqli->connect_errno){
        echo 'Falha ao conectar' . $mysqli->connect_errno;
    } else {
        echo "Conectado!";
        
    }

    ?>