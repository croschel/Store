<?php require_once("cabecalho.php");
      require_once("banco-produto.php");
      require_once("class/Produto.php");
      require_once("class/Categoria.php");


    //Instância do Objeto produto
    $produto = new Produto();

    //instância do objeto Categoria : realizar o link entre o objeto produto e o categoria
    $categoria = new Categoria();
    $categoria->id = $_POST['categoria_id'];

    //variaveis
    $produto->nome = $_POST["nome"];
    $produto->preco = $_POST["preco"];
    $produto->descricao = $_POST['descricao'];
    $produto->categoria = $categoria;
    
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