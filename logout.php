<?php   include("conecta.php");
        include("banco-usuario.php");
        include("logica-usuario.php");

        logout();
        $_SESSION["success"] = "Logout realizado com sucesso";
        header("location: index.php");
        die();