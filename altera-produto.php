<?php require_once("cabecalho.php");
      require_once("banco-produto.php");
      require_once("class/Produto.php");
      require_once("class/Categoria.php");

        
   
    //instância do objeto Categoria : realizar o link entre o objeto produto e o categoria
    $categoria = new Categoria();
    $categoria->setId($_POST['categoria_id']);

    //variaveis
    $nome = $_POST["nome"];
    $preco = $_POST["preco"];
    $descricao = $_POST['descricao'];
    
    
    if(array_key_exists('usado',$_POST)){
        $usado = "true";
    }else{
        $usado = "false";
    }
    //variaveis

    //Instância do Objeto produto
    $produto = new Produto($nome,$preco,$descricao,$categoria,$usado);

    if(alteraProduto($conexao,$produto)){ //mysqli é o novo pacote de gerência de DB dentro do php?>

    <p class="text-success">Produto <?php echo $produto->getNome(); ?> com preço igual à <?php echo $produto->getPreco();?> foi alterado com sucessso! </p>
    
    <?php 
    }else{
        $msg = mysqli_error($conexao);    
    ?>
    <p class="alert-danger">O produto <?= $produto->getNome()?> não foi modificado <? $msg ?></p> 

    <?php 
    }
    

     require_once("rodape.php");?>