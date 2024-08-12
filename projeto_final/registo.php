
<!Doctype html>
<html lang="pt">  
<head>  
<meta charset="UTF-8">
<title>Projeto Final</title>  

<link href="estilo.css" rel="stylesheet">

      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 
      <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script> 
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 

<script language="javascript" type="text/javascript" src="ajax.js"></script>  
</head>
<style>
   body{
          background-image: linear-gradient(to right, #1D1D1D, #3EC522, #ffffff);

        }
       
    .barNav{
        background-color: black;
        padding: 20px;
        font-size: 35px;
        padding-left: 140px;
        text-align: center;
        margin-bottom: 200px;
        padding: 22px 0px 0px 0px;
        width: auto;
        height: 70px;
       }
       
       .sair{
        float: right;
        padding-left: 1400px;
       }
       
       p{
      
      font-size: 300px;
      text-align: center;
      }
</style>
    
     <body>
     <div class="caixa0">
        <div class="barNav">
            
            <a class="home" href="www.exercito.pt">Home</a>
            <a class="sair" href="index.php">Voltar</a>
           
        </div>
        </div>
        
<p>
   <div class="caixa1">
     <?php
     
     include 'abrirCnx.php';

     if($conexao) {

      if(mysqli_select_db($conexao, $dbname) === TRUE) {
         $sql = "INSERT INTO funcionarios (Nim, Posto, Nome, Apelido, Data_de_Nascimento, Telemovel, Email, Palavra_passe, Confirmar_passe_rep, totalDias) 
         VALUES ('".$_POST['nim']."', '".$_POST['posto']."', '".$_POST['nome']."', '".$_POST['apelido']."', '".$_POST['dt_nascimento']."', '".$_POST['telefone']."', '".$_POST['email']."', '".$_POST['pwd']."', '".$_POST['cpasse']."', 22)";

         if ($conexao->query($sql) === TRUE) {
           
            $conexao->close();
         } else {
            echo $conexao->error;
         }
         
      }
 

     }
     
     
     echo '<br>';
        echo ' Olá '.$_POST['nim'].' '.$_POST['posto']. '<br>';
       
        echo ' Nome '.$_POST['nome'].' '. $_POST['apelido']. '<br>';

        echo 'Nasci '.$_POST['dt_nascimento']. '<br>';

        echo ' O meu email '.$_POST['email']. '<br>';

        
        echo 'Registo com succeso';
        


      
     ?>
     </div>
     </p>

     </body>
     </html>