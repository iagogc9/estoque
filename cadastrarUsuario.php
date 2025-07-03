<?php
    include 'conexaoEstoque.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
       
        $senha = $_POST['senha'];
        $tempoLogado = $_POST['tempoLogado'];
        $nomeUsuario = $_POST['nomeUsuario'];
    
        $sql = "INSERT INTO usuario(nomeUsuario, senha, tempoLogado)
         VALUES ('$nomeUsuario', '$senha','$tempoLogado')";

         if ($mysqli->query($sql)) {
            echo "Usuario cadastrado";
         } else {
            echo "Erro " . $mysql->error;
         }
         echo "<a href= 'listarUsuario.php'>Ver cadastrados</a>";
    }
?>