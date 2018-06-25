<?php include("cabecalho.php")?>
    <?php 
    $nome = $_GET["nome"];
    $preco = $_GET["preco"];
    ?>
    <p>Produto <?php echo $nome; ?> com preço igual à <?php echo $preco;?> foi adicionado com sucessso! </p>
    
<?php include("rodape.php")?>