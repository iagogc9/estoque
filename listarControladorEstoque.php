<?php
    include 'conexaoEstoque.php';

    $sql = "SELECT * FROM controladorEstoque";
    $resultado = $mysqli->query($sql);

    if ($resultado->num_rows > 0) {
        echo " <table border='1' cellpading='5' > ";  
        echo "
        <tr><th>cracha</th>
        <th>Nome</th>
        <th>cpf</th>
        <th>dataAdmissao</th></tr>" ;   

        while ($row = $resultado->fetch_assoc()){
            echo "<tr>";
            echo "<td>" . $row['cracha'] . "</td>";
            echo "<td>" . $row['nome'] . "</td>";
            echo "<td>" . $row['cpf'] . "</td>";
            echo "<td>" . $row['dataAdmissao'] . "</td>" ;   
            echo "</tr>";
        }
        echo "</table>";
       } else {
        echo "<p>Nenhum controlador cadastrado</p>";
        }
    










?>