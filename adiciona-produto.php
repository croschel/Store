<?php require_once("cabecalho.php");
      require_once("banco-produto.php");
      require_once("class/Produto.php");

    //Instância do Objeto produto
    $produto = new Produto();

    //variaveis
    $produto->nome = $_POST["nome"];
    $produto->preco = $_POST["preco"];
    $produto->descricao = $_POST['descricao'];
    $produto->categoria_id = $_POST['categoria_id'];
    if(array_key_exists('usado',$_POST)){
        $produto->usado = "true";
    }else{
        $produto->usado = "false";
    }
    //variaveis

    if(insereProduto($conexao,$produto)){ //mysqli é o novo pacote de gerência de DB dentro do php?>

    <p class="text-success">Produto <?php echo $produto->nome; ?> com preço igual à <?php echo $produto->preco;?> foi adicionado com sucessso! </p>
    
    <?php 
    }else{
        $msg = mysqli_error($conexao);    
    ?>
    <p class="alert-danger">O produto <?= $produto->nome?> não foi adicionado <? $msg ?></p> 

    <?php 
    }
    
    require_once("rodape.php")?>