<?php   include("conecta.php");
        include("banco-usuario.php");
        include("logica-usuario.php");

   $usuario = buscarUsuario($conexao,$_POST['email'],$_POST['senha']);

   
   if($usuario == null){
        $_SESSION["danger"] = "Usuário ou Senha Inválido";
        header("location: index.php");

       }else{
          logaUsuario($usuario['email']);
          $_SESSION["success"] = "Usuário Logado com sucesso";
            header("location: index.php");
       }
       die();

       ?>
   