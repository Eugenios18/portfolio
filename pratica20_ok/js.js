function validar(){
    // telemóvel
    var tel = document.formulario.telefone.value;
    var idad = document.formulario.idade.value;
    var mail = document.formulario.email.value;
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;


    
    if(isNaN(tel)){
        alert("O número de telemóvel inserido não está correto");
        return false;
    }else if(tel.length!=9){
        alert("O número de Telemóvel deverá conter 9 digitos.");
        return false;
    }else if(!tel.startsWith(9)){
        alert("Telemóvel não começa com 9.");
        return false;
    }else if( isNaN(idad)){
        alert("Idade não é um número.");
        return false;
    }else if(idad<18){
        alert("O preenchimeto desde formulario requer que se tenha 18 anos ou mais.");
        return false;
    }else if(!re.test(String(mail).toLowerCase())){
        alert("E-mail inválido");
        return false;
    }else{
        alert("Obrigado pelo preenchimento do formulário. Todos os campos foram preenchidos corretamente.");
        return true;
    }
        
}