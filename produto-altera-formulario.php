<?php   require_once("cabecalho.php");
        require_once("class/ProdutoDao.php");
        require_once("class/CategoriaDao.php");
        require_once("class/Categoria.php");
        require_once("class/Produto.php");
        
        //Instancia do Objeto Dao da Categoria
        $categoriaDao = new CategoriaDao($conexao);

         //Instancia do Objeto Dao do produto
        $produtoDao = new ProdutoDao($conexao);

        $id = $_GET['id'];
        $produto = $produtoDao->buscaProduto($id);
        $categorias = $categoriaDao->listarCategorias();
        $usado = $produto->isUsado() ? "checked='checked'" : "";
        ?>
    
    <h1>Alterando Produto</h1>
    
        <form action="altera-produto.php" method = "post">
            <table class="table">
                <tbody> 

                    <input type="hidden" name="id" value="<?=$produto->getId()?>">

                        <?php include("produto-formulario-base.php");?>

                    <tr>
                    <td><input type="submit" value="Alterar" class="btn btn-primary"/></td>
                    </tr>
                </tbody>

            </table>
        </form>
    

    <?php include("rodape.php")?>