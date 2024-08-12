<?php

session_start(); $_SESSION['key_id'] = '';

session_regenerate_id();

$_SESSION['Email'] & $_SESSION['pwd']= '';

header('Location: prefil_funcionarios.php');
?>