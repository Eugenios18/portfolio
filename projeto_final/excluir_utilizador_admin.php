<?php
include('abrirCnx.php');
session_start();

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    $sql = "DELETE FROM funcionarios WHERE id = ?";
    $stmt = $conexao->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        $_SESSION['message'] = "Usuário removido com sucesso!";
        header("Location: perfil_admin.php");
        exit();
    } else {
        $_SESSION['message'] = "Erro ao remover usuário: " . $conexao->error;
        header("Location: perfil_admin.php");
        exit();
    }

    $stmt->close();
}

$conexao->close();
?>
