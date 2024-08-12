<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>Projeto Final</title>
    <link href="estilo.css" rel="stylesheet">
    <link href="jquery-ui.css" rel="stylesheet">
</head>
<div class="table">
<table border='0' cellpadding='8' cellspacing='2'>  
<tr>  
<td><b>ID</b></td>
<td><b>Nim</b></td>
<td><b>Posto</b></td>
<td><b>Nome</b></td>  
<td><b>Apelidos</b></td>  
<td><b>Data de Nascimento</b></td>
<td><b>Telémovel</b></td>  
<td><b>E-mail</b></td>
<td><b>Palavra_passe</b></td>
<td><b>Confirmar_passe_rep</b></td>
</tr> 
</div> 

<?php  

if(!empty($_REQUEST[''])){  
    include('abrirCnx.php');  
    $consulta = $_REQUEST['']; 
    $resultado = mysqli_query($conexao);  
    while($registo = mysqli_fetch_assoc($resultado)) {  
    echo "<tr>  
            <td>".$registo['id']."</td> 
            <td>".$registo['nim']."</td>
            <td>".$registo['posto']."</td> 
            <td>".$registo['nome']."</td>  
            <td>".$registo['apelidos']."</td>  
            <td>".$registo['dt_nascimento']."</td>
            <td>".$registo['telemovel']."</td>
            <td>".$registo['email']."</td> 
            <td>".$registo['pwd']."</td>
            <td>".$registo['cpasse']."</td> 
          </tr>";  
    };  

    mysqli_free_result($resultado);  
    echo "registo";  
    include('fecharCnx.php');  
   
 
};  
?>