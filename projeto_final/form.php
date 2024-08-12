
<!Doctype html>
<html lang="pt">  
<head>  
<meta charset="UTF-8">
<title>Projeto Final</title>  

<link href="estilo.css" rel="stylesheet">
    <link href="jquery-ui.css" rel="stylesheet">
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
      
       
    form {
        text-align: center;
        font-size: 40px;
        color: white;
    }
    input{
        font-size: 20px;
        background-color: darkgray;
    }
    

</style>

    
     <body>
        <div class="caixa0">
            <div class="barNav">
                
                <a class="home" href="www.exercito.pt">Home</a>
                <a class="sair" href="index.php">Sair</a>
            </div>
            
        </div>
        
        <p>
        <div class="caixa1">

        <form method="POST" action="registo.php" name="form">
           <h3>Formulário</h3>
            Nim <input type="text" placeholder="Nim" name="nim">
        <br>
            Posto<input type="text" placeholder="Posto" name="posto">
        <br>
            Nome<input type="text" placeholder="Nome" name="nome">
        <br>
            Apelido<input type="text" placeholder="Apelido" name="apelido">
        <br>
            Data de Nascimento<input type="date" name="dt_nascimento">
        <br>
            Telefone<input type="text" placeholder="Telefone" name="telefone">
        <br>
            E-mail<input type="text" placeholder="E-mail" name="email">
        <br>
            Palavra Passe<input type="password" placeholder="Palavra Passe"name="pwd">
        <br>
            Confirma Palavra Passe<input type="password" placeholder="Confirmar Palavra Passe" name="cpasse">
        <br>
        
        <input type="submit" button="enviar" value="Enviar" style="font-size: 30px">
        </form>
        </div>
        </p>
    </body>
 </html>