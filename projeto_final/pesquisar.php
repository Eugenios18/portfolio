<?php
session_start();
include('abrirCnx.php');

if(isset($_POST['pesquisar'])){
    $pesquisar = $_POST['pesquisar'];
      
    if ($conexao){
        $sql = "SELECT * FROM funcionarios WHERE Nome LIKE '%$pesquisar%'";
        $result = $conexao->query($sql);
       
        if ($result->num_rows == 0) {
            $resposta = 'Sem resultado'; 
        } else {
            $row = $result->fetch_assoc(); 
                
                $nome = $row['Nome'];
                $apelido = $row['Apelido'];

                $resposta = '<p>' .$nome. '' .$apelido. '</p>';
                echo $resposta;
            
        }
    }
} else {
    echo 'resposta';
}
    
?>