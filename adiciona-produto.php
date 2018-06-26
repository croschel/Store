<?php include("cabecalho.php")?>
    <?php 
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    ?>
    
    <?php 
    $query = "insert into produtos(nome,preco) values('{$nome}',{$preco})";
    $conexao = mysqli_connect('localhost','root','',loja);
    ?>
    <p>Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi adicionado com sucessso! </p>
    
    
    
<?php include("rodape.php")?>