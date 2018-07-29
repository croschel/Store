<?php   include("conecta.php");
        include("banco-usuario.php");
        include("logica-usuario.php");

   $usuario = buscarUsuario($conexao,$_POST['email'],$_POST['senha']);

   
   if($usuario == null){
       header("location: index.php?logado=0");

       }else{
          logaUsuario($usuario['email']);
           header("location: index.php?logado=1");
       }
       die();

       ?>
   