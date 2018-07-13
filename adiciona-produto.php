<?php include("cabecalho.php");
      include("conecta.php");
      include("banco-produto.php");
        
    //variaveis
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    //variaveis

    if(insereProduto($conexao,$nome,$preco)){ //mysqli é o novo pacote de gerência de DB dentro do php?>

    <p class="text-success">Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi adicionado com sucessso! </p>
    
    <?php 
    }else{
        $msg = mysqli_error($conexao);    
    ?>
    <p class="alert-danger">O produto<?= $nome?> não foi adicionado <? $msg ?></p> 

    <?php 
    }
    

     include("rodape.php")?>