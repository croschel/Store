<?php   include("cabecalho.php");
        include("conecta.php");
        include("banco-categoria.php");
        include("banco-produto.php");
        
        $id = $_GET['id'];
        $produto = buscaProduto($conexao,$id);
        $categorias = listarCategorias($conexao);
        $usado = $produto['usado'] ? "checked='checked'" : "";
        ?>
    
    <h1>Alterando Produto</h1>
    
        <form action="altera-produto.php" method = "post">
            <table class="table">
                <tbody> 

                    <input type="hidden" name="id" value="<?=$produto['id']?>">

                        <?php include("produto-formulario-base.php");?>

                    <tr>
                    <td><input type="submit" value="Alterar" class="btn btn-primary"/></td>
                    </tr>
                </tbody>

            </table>
        </form>
    

    <?php include("rodape.php")?>