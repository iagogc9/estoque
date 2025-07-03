<?php
    include 'conexaoEstoque.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $operador = $_POST['operador'];
        $produto = $_POST['produto'];
        $tipo = $_POST['tipo'];
        $dataHora = $_POST['dataHora'];
        $usuarioMovimentacao = $_POST['usuarioMovimentacao'];
        


        $sql = "INSERT INTO movimentacoes (operador, produto, tipo, dataHora, usuarioMovimentacao) VALUES ('$operador','$produto','$tipo ',' $dataHora', '$usuarioMovimentacao')";

        if ($mysqli->query($sql)) {

            echo " Movimentacao cadastrada";
        } else {
            echo "Erro: " . $mysqli->error;
        }

    }
    echo "<a href= 'listarMovimentacao.php'>Ver cadastrados</a>";
?>
    





?>