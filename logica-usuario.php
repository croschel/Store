<?php

function verificarUsuario(){
    if(!isset($_COOKIE['usuario_logado'])){
        header("location: index.php?falhaDeSeguranca=true");
        die();
    }
}

function usuarioEstaLogado(){
    
    return isset($_COOKIE['usuario_logado']);
        
    }

function falhaDeAcesso(){
    if(isset($_GET['falhaDeSeguranca']) && $_GET['falhaDeSeguranca']=="true"){
        ?>
        <p class="alert-danger">Você não tem acesso à essa funcionalidade</p>
        <?php
        }
        
}

function usuarioLogado(){
    return $_COOKIE['usuario_logado'];
}

function logaUsuario($email){
        setcookie("usuario_logado",$email,time() + 20);
}
?>