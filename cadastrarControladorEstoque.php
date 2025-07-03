<?php
    ini_set('display_erros',1);
    error_reporting(E_ALL);
    include 'conexaoEstoque.php';

    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $cracha = $_POST['cracha'];
        $nome = $_POST['nome'];
        $cpf = $_POST['cpf'];
        $dataAdmi = $_POST['dataAdmissao'];


        $sql = "INSERT INTO controladorEstoque(cracha, nome, cpf, dataAdmissao)
         VALUES ('$cracha', '$nome','$cpf','$dataAdmi' )";

         if ($mysqli->query($sql)) {
            echo "Controlador Cadastrado";
         } else {
            echo "Erro " . $mysql->error;
         }
    }

    echo "<a href= 'listarControladorEstoque.php'>Ver cadastrados</a>";
?>