    <?php include("cabecalho.php")?>

    <?php 
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    ?>
    
    <?php 
    $query = "insert into produtos(nome,preco) values('{$nome}',{$preco})";
    $conexao = mysqli_connect('localhost','root','','loja');

    if(mysqli_query($conexao, $query)){ //mysqli é o novo pacote de gerencia dentro do php?>

    <p class="alert-success">Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi adicionado com sucessso! </p>
    
    <?php 
    }else{?>
    
    <p class="alert-danger">O produto<? = $nome?> não foi adicionado</p>

    <?php 
    }
    ?>

    <?php include("rodape.php")?>