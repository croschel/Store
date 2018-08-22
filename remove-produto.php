<?php   require_once("cabecalho.php");
        require_once("logica-usuario.php");

 //Instancia do Objeto Dao do produto
 $produtoDao = new ProdutoDao($conexao);

    $id = $_POST['id'];
    
    $produtoDao->removerProduto($id);
    $_SESSION["success"] = "Produto removido com sucesso";
    header("Location: listar-produtos.php");
    die();
    ?>

<?php include("rodape.php");?>