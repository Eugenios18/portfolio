<?php  
$hostnome = 'localhost';
$username = 'root';
$password = 'root';
$dbname = 'projeto_final';
$conexao = @mysqli_connect($hostnome, $username, $password, $dbname);

if (!$conexao) {  
  
mysqli_connect_errno() . "<br/><br/>" . PHP_EOL ;  
exit;  
}  
  mysqli_get_host_info($conexao) . "<br/><br/>" . PHP_EOL;  
?>