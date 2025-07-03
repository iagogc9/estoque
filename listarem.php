<?php
    include 'conexaoEstoque.php';
    $sql = "SELECT * FROM operadorEmpilhadeira";
    $resultado = $mysqli->query($sql);
    if ($resultado->num_rows > 0 ) {
        echo "<table border='1' cellpading = '5'>";
        echo "
        <tr><th>id</th>
        <th>nome</th>
        <th>nascimento</th>
        <th>Tempo de servico</th>
        ";
        
        while ($row = $resultado->fetch_assoc()){
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['nomeOperador'] . "</td>";
            echo "<td>" . $row['dataNascimento'] . "</td>";
            echo "<td>" . $row['tempoServico'] . "</td>";
            echo "</tr>";
        }
            echo "</table>";
    }   else {
            echo "<p>Nenhum operador cadastrado</p>";
    }
    



?>