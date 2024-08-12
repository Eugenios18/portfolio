<?php  
include('abrirCnx.php');

if(isset($_POST['update'])){
    $id = $_POST['id'];
    $nim = $_POST['Nim'];
    $posto = $_POST['Posto'];
    $nome = $_POST['Nome'];
    $apelido = $_POST['Apelido'];
    
    
    $sqlUpdate = "UPDATE funcionarios SET Nim = '$nim,' Posto = '$posto', Nome = '$nome', Apelido = '$apelido', Telemovel = '$telemovel', Email ='$email' WHERE id='$id'";
    $result = $conexao ->query($sqlUpdate);
}
header('Location: prefil_admin.php');

?>