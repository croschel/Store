    <?php include("cabecalho.php")?>
    <?php include("conecta.php")?>
    <?php 
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    ?>
    
    <?php 
    function insereProduto($conexao,$nome,$preco){
        $query = "insert into produtos(nome,preco) values('{$nome}',{$preco})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
    

    if(insereProduto($conexao,$nome,$preco)){ //mysqli é o novo pacote de gerência de DB dentro do php?>

    <p class="alert-success">Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi adicionado com sucessso! </p>
    
    <?php 
    }else{
        $msg = mysqli_error($conexao);    
    ?>
    
    <p class="alert-danger">O produto<? = $nome?> não foi adicionado <? $msg ?></p> 

    <?php 
    }
    ?>

    <?php include("rodape.php")?>