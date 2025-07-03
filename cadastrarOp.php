<?php
    include 'conexaoEstoque.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $nomeOperador = $_POST['nomeOperador'];
        $dataNascimento = $_POST['dataNascimento'];
        $tempoServico = $_POST['tempoServico'];

        $comandosql = "INSERT INTO operadorEmpilhadeira(nomeOperador, dataNascimento, tempoServico)
                       VALUES ('$nomeOperador', '$dataNascimento', '$tempoServico')";

        if ($mysqli->query($comandosql)) {
            echo "Pessoa cadastrada";
        } else {
            echo "Erro: " . $mysqli->error;
        }
    }
    echo "<a href= 'listarem.php'>Ver cadastrados</a>";
?>
