<?php
    include 'conexaoEstoque.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = $_POST['nome'];
        $dataValidade = $_POST['dataValidade'];
        $dataProducao = $_POST['dataProducao'];


        $sql = "INSERT INTO produto (nome, dataValidade, dataProducao) VALUES ('$nome ',' $dataValidade','$dataProducao')";

        if ($mysqli->query($sql)) {

            echo " Produto cadastrado";
        } else {
            echo "Erro: " . $mysqli->error;
        }

    }

    echo "<a href= 'listarProduto.php'>Ver cadastrados</a>";
?>
    





?>