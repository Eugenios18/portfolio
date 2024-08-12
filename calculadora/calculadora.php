<!DOCTYPE html>
    <html lang="pt">
    <head>
        <meta charset="UTF-8">
        <title>Calculadora HTML e PHP</title>
        <link href="../pratica27/estilo.css" rel="stylesheet">
    </head>
    
        <body>

            <div class="caixa1">
                <h2>Calculadora HTML e PHP</h2>
                <br>
                <form method="post">
                    <p><u>Primeiro número:</u></p> <input type="number"
                    step="any" name="num1"> <br>
                    
                    <p><u>Segundo número</u></p> <input type="number"
                    step="any" name="num2"> <br>

                    <input type="submit" class="botao" value="+" name="opcao">
                    <input type="submit" class="botao" value="-" name="opcao">
                    <input type="submit" class="botao" value="*" name="opcao">
                    <input type="submit" class="botao" value="/" name="opcao"> 

                    <br>
                </form>
                
                <?php 


            $op = $_POST['opcao'];
            $num1 = $_POST['num1'];
            $num2 = $_POST['num2'];

            switch ($op) { 
                
                case '+': 
                $resul = $num1 + $num2; 
                break; 
            
                case '-': 
                $resul = $num1 - $num2;
                break; 
                
                case '*': 
                $resul = $num1 * $num2;
                break;
                
                case '/': 
                $resul = $num1 / $num2;
                    break;
                } 
                echo "O resultado da operação é: $resul";
            ?>
            </div>

    </body>
 </html>