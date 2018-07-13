<?php   include("cabecalho.php");
        include("conecta.php");
        include("banco-produto.php");

    $id = $_GET['id'];
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    
    if (removerProduto($conexao,$id)) {?>
        <p class="alert-success">Produto <?php echo $nome; ?> foi removido com sucessso! </p>
    <?php
    }else{
        $msg = mysqli_error($conexao);
    ?> 
    <p class="alert-danger">O produto<?= $nome?> não foi removido <? $msg ?></p> 

    <?php
    }    

?>

<?php include("rodape.php");?>