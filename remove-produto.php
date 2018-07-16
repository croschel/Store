<?php   include("cabecalho.php");
        include("conecta.php");
        include("banco-produto.php");

    $id = $_POST['id'];
    
    removerProduto($conexao,$id);
    
    header("Location: listar-produtos.php?removido=true");
    die();
    ?>

<?php include("rodape.php");?>