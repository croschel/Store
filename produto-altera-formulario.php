<?php   require_once("cabecalho.php");
        require_once("banco-categoria.php");
        require_once("banco-produto.php");
        require_once("class/Categoria.php");
        require_once("class/Produto.php");
        
        $id = $_GET['id'];
        $produto = buscaProduto($conexao,$id);
        $categorias = listarCategorias($conexao);
        $usado = $produto->usado ? "checked='checked'" : "";
        ?>
    
    <h1>Alterando Produto</h1>
    
        <form action="altera-produto.php" method = "post">
            <table class="table">
                <tbody> 

                    <input type="hidden" name="id" value="<?=$produto->id?>">

                        <?php include("produto-formulario-base.php");?>

                    <tr>
                    <td><input type="submit" value="Alterar" class="btn btn-primary"/></td>
                    </tr>
                </tbody>

            </table>
        </form>
    

    <?php include("rodape.php")?>