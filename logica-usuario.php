<?php
session_start();//trabalhar com sessão

function verificarUsuario(){
    if(!usuarioEstaLogado()){
        header("location: index.php?falhaDeSeguranca=true");
        die();
    }
}

function usuarioEstaLogado(){
    
    return isset($_SESSION['usuario_logado']);
        
    }

function falhaDeAcesso(){
    if(isset($_GET['falhaDeSeguranca']) && $_GET['falhaDeSeguranca']=="true"){
        ?>
        <p class="alert-danger">Você não tem acesso à essa funcionalidade</p>
        <?php
        }
        
}

function usuarioLogado(){
    return $_SESSION['usuario_logado'];
}

function logaUsuario($email){
        $_SESSION["usuario_logado"] = $email;
}

function logout(){
    session_destroy();
    session_start();
}
?>