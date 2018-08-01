<?php   include("conecta.php");
        include("banco-usuario.php");
        include("logica-usuario.php");

        logout();
        header("location: index.php?logout=true");
        die();