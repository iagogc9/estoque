<?php

include 'conexaoEstoque.php';

$sql = "SELECT * FROM produto";
$resultado = $mysqli->query($sql);

if ($resultado->num_rows > 0) {
    echo "<table border= '1' cellpadding= '5'>";
    echo "<tr><th>ID</th>
    <th>Nome</th>
    <th>Data Validade</th>
    <th>Data Produçao</th><tr>";

    while ($row = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['nome'] . "</td>";
        echo "<td>" . $row['dataValidade'] . "</td>";
        echo "<td>" . $row['dataProducao'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";

 } else {
        echo "<p>Nenhum arquivo cadastrado</p>";
    }











?>