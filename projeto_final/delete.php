<?php

      include 'abrirCnx.php';
      
      
      if (!empty($_GET['id'])) {


         $id = $_GET['id'];
         echo $id;
         
         
         $sql= "SELECT * FROM ferias WHERE id=$id";
         $result = $conexao->query($sql);

         if($result->num_rows > 0){

                   $sqlDelete = "DELETE FROM ferias WHERE id=$id";
                   $resultDelete = $conexao->query($sqlDelete);
                   
  
      } 
         header('Location: prefil_funcionarios.php');
      }
   

    
     ?>