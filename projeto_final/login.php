<?php
include 'abrirCnx.php';
session_start();

$email = mysqli_real_escape_string($conexao, $_POST["email"]);
$senha = mysqli_real_escape_string($conexao, $_POST["pwd"]);
$dbname = 'projeto_final';
if ($conexao) {
  if (mysqli_select_db($conexao, $dbname) === TRUE) {
    $sql = "SELECT * FROM funcionarios WHERE Email = '$email' AND Palavra_passe = '$senha'";
    $result = $conexao->query($sql);

    if ($result->num_rows == 1) {
      $row = $result->fetch_assoc();
      $_SESSION['email'] = $row['Email'];
      $_SESSION['nim'] = $row['Nim'];

      if ($row['admin'] == 0) {
        header("Location: prefil_funcionarios.php"); // Redireciona para o perfil do utilizador
      } elseif ($row['admin'] == 1) {
        header("Location: perfil_admin.php"); // Redireciona para o perfil do administrador
      } else {
        echo "Papel desconhecido.";
      }
    } else {
      echo "Login falhou: email ou senha incorretos.";
    }
  } else {
    echo "Falha ao selecionar a base de dados.";
  }
  $conexao->close();
} else {
  echo "Falha na conexão com a base de dados.";
}
?>