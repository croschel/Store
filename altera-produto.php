<?php include("cabecalho.php");
      include("conecta.php");
      include("banco-produto.php");
        
    //variaveis
    $id = $_POST["id"];
    $nome = $_POST["nome"];
    $preco = $_POST["preco"];
    $descricao = $_POST['descricao'];
    $categoria_id = $_POST['categoria_id'];
    if(array_key_exists('usado',$_POST)){
        $usado = "true";
    }else{
        $usado = "false";
    }
    //variaveis

    if(alteraProduto($conexao,$id,$nome,$preco,$descricao,$categoria_id,$usado)){ //mysqli é o novo pacote de gerência de DB dentro do php?>

    <p class="text-success">Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi alterado com sucessso! </p>
    
    <?php 
    }else{
        $msg = mysqli_error($conexao);    
    ?>
    <p class="alert-danger">O produto <?= $nome?> não foi modificado <? $msg ?></p> 

    <?php 
    }
    

     include("rodape.php")?>