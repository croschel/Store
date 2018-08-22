<?php 
    require_once("mostra-alerta.php");
    require_once("conecta.php");

    function carregaClasse($nomeDaclasse){
        require_once("class/".$nomeDaclasse.".php");
    }

    spl_autoload_register("carregaClasse");/*função especial do PHP que seta a função de carregar classe para subir classes automaticamente
                                            lembrando que a classe deve ter o mesmo nome do arquivo*/

    error_reporting(E_ALL ^ E_NOTICE);
?>

<html>

<head>
    <title>Minha Loja</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/store.css"/> 
</head>

<body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a href="index.php" class="navbar-brand">Minha Loja</a>
            </div>

            <div>
                <ul class="nav navbar-nav">
                    <li><a href="produto-formulario.php">Adicionar Produto</a></li>
                    <li><a href="listar-produtos.php">Produtos</a></li>
                    <li><a href="contato.php">Contato</a></li>
                </ul>
            </div>
        
        </div><!--Final do Container-->
    
    </div>

    <div class="container">
    
        <div class="principal">

        <?php mostraAlerta('success'); mostraAlerta('danger');?>
        
