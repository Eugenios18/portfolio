<?php
include('abrirCnx.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = intval($_POST['id']);
    $nim = $_POST['nim'];
    $posto = $_POST['posto'];
    $nome = $_POST['nome'];
    $apelido = $_POST['apelido'];
    $telefone = $_POST['telefone'];
    $email = $_POST['email'];

    $sql_atualiza = "UPDATE funcionarios SET Nim = ?, Posto = ?, Nome = ?, Apelido = ?, Telemovel = ?, Email = ? WHERE id = ?";
    $stmt = $conexao->prepare($sql_atualiza);
    $stmt->bind_param("ssssssi", $nim, $posto, $nome, $apelido, $telefone, $email, $id);

    if ($stmt->execute()) {
        header("Location: perfil_admin.php");
        exit();
    } else {
        echo "Erro ao atualizar o perfil: " . $conexao->error;
    }

    $stmt->close();
    $conexao->close();
} else {
    echo "Método de requisição inválido.";
}
?>