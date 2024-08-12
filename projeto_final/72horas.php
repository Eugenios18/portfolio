<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $horas = $_POST['horas'];

    
    include('abrirCnx.php');

    $sql = "SELECT dt_inicio FROM ferias WHERE horas = $horas";
    $result = $conexao->query($sql);

    if ($result->num_rows > 0) {
        
        $row = $result->fetch_assoc();
        $dt_inicio = $row['dt_inicio'];

        
        $data_atual = new DateTime();
        $dt_inicio = new DateTime($dt_inicio);
        $diferenca_horas = $data_atual->diff($dt_inicio)->h;

        
        if ($diferenca_horas < 72) {
            echo "Você não pode editar esta data porque se passaram menos de 72 horas desde a data";
            
            exit;
        } else {
            
        }
    } else {
        echo "Data não encontrada.";
    }

    
    $conexao->close();
}
?>