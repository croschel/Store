<?php   require_once("conecta.php");
        require_once("banco-usuario.php");
        require_once("logica-usuario.php");

        logout();
        $_SESSION["success"] = "Logout realizado com sucesso";
        header("location: index.php");
        die();