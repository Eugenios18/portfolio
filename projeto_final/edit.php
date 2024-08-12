<!DOCTYPE html>
<html lang="pt">  
<head>  
    <meta charset="UTF-8">
    <title>Projeto Final</title>  
    <link href="estilo.css" rel="stylesheet">
    <link href="jquery-ui.css" rel="stylesheet">
    <style>
        body {
            background-image: linear-gradient(to right, #1D1D1D, #3EC522, #ffffff);
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
       
        .barNav {
            background-color: black;
            padding: 20px;
            font-size: 35px;
            text-align: center;
            margin-bottom: 200px;
            height: 70px;
        }
       
        .barNav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
        }
       
        .sair {
            float: right;
        }
      
        form {
            text-align: center;
            font-size: 40px;
            color: white;
        }

        input {
            font-size: 20px;
            background-color: darkgray;
            margin: 10px 0;
            padding: 5px;
            width: 300px;
        }

        h3 {
            font-size: 50px;
        }
    </style>
</head>
<body>
    <div class="caixa0">
        <div class="barNav">
            <a class="home" href="http://www.exercito.pt">Home</a>
            <a class="sair" href="perfil_admin.php">Voltar</a>
        </div>
    </div>
    <div class="caixa1">
        <?php
        include 'abrirCnx.php';

        if (!empty($_GET['id'])) {
            $id = intval($_GET['id']);
            $sql_edit = "SELECT * FROM funcionarios WHERE id = ?";
            $stmt = $conexao->prepare($sql_edit);
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result_edit = $stmt->get_result();

            if ($result_edit->num_rows > 0) {
                while ($row_funcionario = $result_edit->fetch_assoc()) {
        ?>
                <form method="POST" action="atualiza_perfil.php" name="form">
                    <h3>Formulário</h3>
                    <input type="hidden" name="id" value="<?php echo htmlspecialchars($row_funcionario['id']); ?>">
                    Nim <input type="text" placeholder="Nim" name="nim" value="<?php echo htmlspecialchars($row_funcionario['Nim']); ?>">
                    <br>
                    Posto <input type="text" placeholder="Posto" name="posto" value="<?php echo htmlspecialchars($row_funcionario['Posto']); ?>">
                    <br>
                    Nome <input type="text" placeholder="Nome" name="nome" value="<?php echo htmlspecialchars($row_funcionario['Nome']); ?>">
                    <br>
                    Apelido <input type="text" placeholder="Apelido" name="apelido" value="<?php echo htmlspecialchars($row_funcionario['Apelido']); ?>">
                    <br>
                    Telefone <input type="text" placeholder="Telefone" name="telefone" value="<?php echo htmlspecialchars($row_funcionario['Telemovel']); ?>">
                    <br>
                    E-mail <input type="text" placeholder="E-mail" name="email" value="<?php echo htmlspecialchars($row_funcionario['Email']); ?>">
                    <br>
                    <input type="submit" value="Editar" style="font-size: 30px">
                </form>
        <?php
                }
                $stmt->close();
            }
        }
        ?>
    </div>
</body>
</html>