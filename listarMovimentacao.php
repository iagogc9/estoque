<?php

include 'conexaoEstoque.php';

$sql = "SELECT * FROM movimentacoes";
$resultado = $mysqli->query($sql);

if ($resultado->num_rows > 0) {
    echo "<table border= '1' cellpadding= '5'>";
    echo "<tr><th>ID</th>
    <th>Tipo</th>
    <th>Data e Hora</th>
  <tr>";

    while ($row = $resultado->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['operador'] . "</td>";
        echo "<td>" . $row['produto'] . "</td>";
        echo "<td>" . $row['tipo'] . "</td>";
        echo "<td>" . $row['dataHora'] . "</td>";
        echo "<td>" . $row['usuarioMovimentacao'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";

 } else {
        echo "<p>Nenhum arquivo cadastrado</p>";
    }











?>