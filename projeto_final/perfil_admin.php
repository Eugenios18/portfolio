<?php
session_start();
include('abrirCnx.php');

$email = $_SESSION['email']; 
$nim1 = $_SESSION['nim'];
$sql_nim = "SELECT Nim FROM funcionarios WHERE email = '$email'";
$result_nim = $conexao->query($sql_nim);

if ($result_nim->num_rows > 0) {
    $row_nim = $result_nim->fetch_assoc();
    $nim = $row_nim['nim'];
} else {
    $nim = null; 
}

echo "NIM: " . $nim1;

if (isset($_GET['enviar']) && $_GET['enviar'] == 1) {
    $_SESSION['botao'] = array();
    header('Location: prefil_funcionarios.php');
    exit();
}


if (!$conexao) {
    die("Falha na conexão: " . mysqli_connect_error());
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $campos_preenchidos = true;
    $campos = ['n_dias', 'ano_anterior', 'ano_corrente', 'dt_inicio', 'dt_apresentacao'];
    
    foreach ($campos as $campo) {
        if (empty($_POST[$campo]) && $_POST[$campo] !== "0") {
            $campos_preenchidos = false;
            break;
        }
    }

    if ($campos_preenchidos) {
        $n_dias = mysqli_real_escape_string($conexao, $_POST['n_dias']);
        $ano_anterior = mysqli_real_escape_string($conexao, $_POST['ano_anterior']);
        $ano_corrente = mysqli_real_escape_string($conexao, $_POST['ano_corrente']);
        $dt_inicio = mysqli_real_escape_string($conexao, $_POST['dt_inicio']);
        $dt_apresentacao = mysqli_real_escape_string($conexao, $_POST['dt_apresentacao']);
        $nim = mysqli_real_escape_string($conexao, $_SESSION['nim'] ?? '');
        
        // Definindo dt_enviarP como a data atual
        $dt_enviarP = date('Y-m-d');

        $sql = "INSERT INTO ferias (n_dias, ano_anterior, ano_corrente, dt_inicio, dt_apresentacao, nim, dt_enviarP)
                VALUES ('$n_dias', '$ano_anterior', '$ano_corrente', '$dt_inicio', '$dt_apresentacao', '$nim', '$dt_enviarP')";

        if ($conexao->query($sql) === TRUE) {
            echo "Dados inseridos com sucesso.";
        } else {
            echo "Erro ao inserir dados: " . $conexao->error;
        }
    } else {
        echo "Todos os campos devem ser preenchidos.";
    }
}

$sql_2 = "SELECT * FROM ferias WHERE nim = '$nim1' ORDER BY id DESC";
$sql_3 = "SELECT * FROM funcionarios WHERE nim = '$nim1' ORDER BY id DESC";
$result = $conexao->query($sql_2);
$result_2 = $conexao->query($sql_3);



$total = 0;
$sql_totalCorrente = "SELECT totalDias FROM funcionarios WHERE Nim= '$nim1'";
$totalAnt = 0;
$resultado_totalCorrente = mysqli_query($conexao,  "SELECT totalDias FROM funcionarios WHERE Nim = '$nim1'");
$totalDias = $resultado_totalCorrente->fetch_assoc();  
echo $totalDias['totalDias'];
$resultado = mysqli_query($conexao, "SELECT sum(n_dias) as totaldias FROM ferias WHERE YEAR(dt_apresentacao)  = YEAR(CURDATE()) AND nim = '$nim1'");
$resultadoANT = mysqli_query($conexao, "SELECT sum(n_dias) as totaldias FROM ferias WHERE YEAR(dt_apresentacao) = YEAR(CURDATE()) - 1 AND nim = '$nim1'");
$sum = $resultado->fetch_assoc();
$sumANT = $resultadoANT->fetch_assoc();

$total = $sum['totaldias'];
$totalAnt = $totalAnt - $sumANT['totaldias'] - $total;

$totalCorrente = $totalDias['totalDias'] + $totalAnt;
if ($totalCorrente > $totalDias['totalDias']){
    $totalCorrente = $totalDias['totalDias'];
}
if ($totalAnt < 0){
    $totalAnt = 0;
}


?>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>Projeto Final</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
        crossorigin="anonymous">
    <link href="estilo.css" rel="stylesheet">
    <link href="jquery-ui.css" rel="stylesheet">
    <style>
        body{
	        background-color: currentColor;
             }
     
       .barNav{
            background-color: black;
            padding: 20px;
            font-size: 35px;
            padding-left: 140px;
        
             }
       
        .sair{
             float: right;
             height: 289px;
            }
      
        ul{
            color: beige;
            font-size: 50px;
            background-color: black;
            width: 90px;
            border-radius: 40px;
            }
   
        h3{
            background-color: #182424;
            color:white;
            margin-bottom: 0px;
            width: 75px;
            border-radius: 15px;
            height: 73px;
             text-align: center;
   
            }
   
        .dias {
           display: block ruby;
            }
   
        .ant {
           width: 350px;
            }
   
        .total {
           width: 300px;
            }
   
        table, th, td {
             border: 1px solid black;
             }
   
         table {
         border-collapse: collapse;
         margin: auto;
             }
   
         th, td{
         padding: 10px;
         text-align: center;
         width: 120px;
         color: white;
         font-size: 22px;
             }
   
         th, thead{
            color: white;
            font-size: 20px;
             }
   
         tr{
           background-color: black;
         }
        .form-row{
	        text-align: center;
	        font-size: 20px;
	        color: white;
              }
         p{
	        text-align: center;
	        color: white;
            background-color: black;
            border-radius: 10px;
            }
        #logo{
		    display: flex;
  		    padding: 59px;
  		    padding-inline: 795px;
	        }
        h4{
            color:white;
        }  
        a{
            text-align: center;
	        color: white; 
        }    
            

    </style>
</head>
<body>
    <div class="caixa0">
        <div class="barNav">
            <img src="img/logo1.jpg" alt="logo Home" width="90" class="d-inline-block aling-center">
            
                <a class="home" href="exercito.pt">Home</a>
                <a class="sair" href="index.php">Sair</a>
            
        </div>
    
                <div class="image">
                <span id="logo1"><img src="img/img2.jpg" style= "height: 800;"></span>
                </div>
            </div>
            </div>
            <div class="caixa1">
                <h2>Planeamento de Férias</h2>
                <table class="user-table">
                <tr>
                    <th>Nim</th>
                    <th>Posto</th>
                    <th>Nome</th>
                    <th>Apelido</th>
                </tr>
                <?php
                 if ($conexao){
                  $sql_table = "SELECT * FROM funcionarios WHERE Nim = '$nim1'"; 
                  $resultProfile = mysqli_query($conexao, "SELECT * FROM funcionarios WHERE Nim = '$nim1'");
                  
                  if ($resultProfile->num_rows == 1) {
                    $rowProfile = $resultProfile->fetch_assoc();
                    echo "<tr><td>".$rowProfile["Nim"]."</td>
                            <td>".$rowProfile["Posto"]."</td>
                            <td>".$rowProfile["Nome"]."</td>
                            <td>".$rowProfile["Apelido"]."</td>
                            </tr>";
                  }

                }
                ?>
                
            </table>
            </div>
    
        <div class="dias" id="dias">
                <div class="total" id="total" name="total">
                    <h3>Total</h3>
                    <ul><?php echo $total; ?></ul>
                </div>
                <div class="ant" id="ant" name="ant">
                    <h3>Ano Ant.</h3>
                    <ul><?php echo $totalAnt; ?></ul>
                </div>
                <div class="ano" id="ano" name="ano">
                    <h3>2024</h3>
                    <ul><?php echo $totalCorrente; ?></ul>
                </div>
            </div>

        <form action="" method="post" name="form">
            <div class="form-row">
                <div class="form-group col-md-2"style="display: ruby";>
                    <p>Nº Dias</p>
                    <input type="text" id="n_dias" name="n_dias">
                    <p>Ano Anterior</p>
                    <input type="text" id="ano_anterior" name="ano_anterior">
                    <p>Ano Corrente</p>
                    <input type="text" id="ano_corrente" name="ano_corrente">
                    <p>Data de Início</p>
                    <input type="date" id="dt_inicio" name="dt_inicio">
                    <p>Data de Apresentação</p>
                    <input type="date" id="dt_apresentacao" name="dt_apresentacao">
                </div>
            </div>
            
            <input type="submit" id="enviar_planeamento" class="botao" value="Enviar planeamento">
        </form>
        <div class="tabela text-white table-bg" style= "opacity: 0.7;">
              <?php
                 if ($conexao) {
                 if ($result->num_rows > 0) {
                     echo "<table border='1' cellpadding='6' cellspacing='2'>";
                     echo "<thead><tr><td>ID</td>
                        <td>Nº Dias</td>
                        <td>Ano Anterior</td>
                        <td>Ano Corrente</td>
                        <td>Data Início</td>
                        <td>Data Apresentação</td>
                        <td>Ações</td></tr></thead>
                        <tbody>";
                while($row = $result->fetch_assoc()) {
                     echo "<tr><td>".$row["id"]."</td>
                            <td>".$row["n_dias"]."</td>
                            <td>".$row["ano_anterior"]."</td>
                            <td>".$row["ano_corrente"]."</td>
                            <td>".$row["dt_inicio"]."</td>
                            <td>".$row["dt_apresentacao"]."</td>
                            <td>
                            <a class='delete' href='excluir_utilizador_admin.php?id=$row[id]'>
                            <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash3-fill' viewBox='0 0 16 16'>
                            <path d='M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5'/>
                            </svg></a></td></tr>";
                        }
                        echo "</tbody></table>";
                         } else {
                        echo "<p>Nenhum registro encontrado.</p>";
                      }
                    }
             ?>
             </div>
            <br>
            <br>
            <br>
            <br>
            <h2 style="color: white;">Tabela de funcionarios registados</h2>
            <br>
            <tr>
             <div class="tabela text-white table-bg" style="position: relative;">
              <?php
                 if ($conexao) {
                    $sql_funcionario = "SELECT * FROM funcionarios WHERE Nim = '$nim1'"; 
                    $resultFuncionario = mysqli_query($conexao, "SELECT * FROM funcionarios WHERE admin = 0");
                 if ($resultFuncionario->num_rows > 0) {
                     echo "<table border='1' cellpadding='5' cellspacing='2'>";
                     echo "<thead><tr><td>ID</td>
                        <td>Nim</td>
                        <td>Posto</td>
                        <td>Nome</td>
                        <td>Apelido</td>
                        <td>Ações</td></tr></thead>
                        <tbody>";
                while($row_funcionario = $resultFuncionario->fetch_assoc()) {
                     echo "<tr><td>".$row_funcionario["id"]."</td>
                            <td>".$row_funcionario["Nim"]."</td>
                            <td>".$row_funcionario["Posto"]."</td>
                            <td>".$row_funcionario["Nome"]."</td>
                            <td>".$row_funcionario["Apelido"]."</td>
                            <td><a class='edit' href='edit.php?id=$row_funcionario[id]'>
                             <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-brush-fill' viewBox='0 0 16 16'>
                             <path d='M15.825.12a.5.5 0 0 1 .132.584c-1.53 3.43-4.743 8.17-7.095 10.64a6.1 6.1 0 0 1-2.373 1.534c-.018.227-.06.538-.16.868-.201.659-.667 1.479-1.708 1.74a8.1 8.1 0 0 1-3.078.132 4 4 0 0 1-.562-.135 1.4 1.4 0 0 1-.466-.247.7.7 0 0 1-.204-.288.62.62 0 0 1 .004-.443c.095-.245.316-.38.461-.452.394-.197.625-.453.867-.826.095-.144.184-.297.287-.472l.117-.198c.151-.255.326-.54.546-.848.528-.739 1.201-.925 1.746-.896q.19.012.348.048c.062-.172.142-.38.238-.608.261-.619.658-1.419 1.187-2.069 2.176-2.67 6.18-6.206 9.117-8.104a.5.5 0 0 1 .596.04'/>
                             </svg></a> 
                            <a class='delete' href='excluir_utilizador_admin.php?id=$row_funcionario[id]'>
                             <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash3-fill' viewBox='0 0 16 16'>
                            <path d='M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5'/>
                            </svg></a></td></tr>";
                        }
                        echo "</tbody></table>";
                         } else {
                        echo "<p>Nenhum registro encontrado.</p>";
                      }
                    }
             ?>
             
            </div>
            <br>
            <h2 style="color: white;">Tabela dos funcionarios com ferias marcadas</h2>
            <div class="tabela text-white table-bg" >
              <?php
               if ($conexao) {
                $sql_ferias_funcionario = "SELECT * FROM ferias WHERE nim = '$nim1'"; 
                $result_Ferias_Funcionario = mysqli_query($conexao, "SELECT * FROM ferias WHERE nim != '$nim1'");
                 
                if ($result_Ferias_Funcionario->num_rows > 0) {
                     echo "<table border='1' cellpadding='6' cellspacing='2'>";
                     echo "<thead><tr><td>ID</td>
                         <td>Nim</td>
                        <td>Nº Dias</td>
                        <td>Ano Anterior</td>
                        <td>Ano Corrente</td>
                        <td>Data Início</td>
                        <td>Data Apresentação</td>
                        <td>Ações</td></tr></thead>
                        <tbody>";
                while($row_ferias_funcionario = $result_Ferias_Funcionario->fetch_assoc()) {
                     echo "<tr><td>".$row_ferias_funcionario["id"]."</td>
                            <td>".$row_ferias_funcionario["nim"]."</td>
                            <td>".$row_ferias_funcionario["n_dias"]."</td>
                            <td>".$row_ferias_funcionario["ano_anterior"]."</td>
                            <td>".$row_ferias_funcionario["ano_corrente"]."</td>
                            <td>".$row_ferias_funcionario["dt_inicio"]."</td>
                            <td>".$row_ferias_funcionario["dt_apresentacao"]."</td>
                            <td>
                            <a class='delete' href='excluir_utilizador_admin.php?id=$row_ferias_funcionario[id]'>
                            <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash3-fill' viewBox='0 0 16 16'>
                            <path d='M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5'/>
                            </svg></a></td></tr>";
                        }
                        echo "</tbody></table>";
                         } else {
                        echo "<p>Nenhum registro encontrado.</p>";
                      }
                    }
             ?>
             </div>
    </div>
    
</body>
</html>