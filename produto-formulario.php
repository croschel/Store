<?php   require_once("cabecalho.php");
        require_once("class/Produto.php");
        require_once("class/Categoria.php");
        require_once("banco-categoria.php");
        require_once("logica-usuario.php");

        verificarUsuario();
        $categorias = listarCategorias($conexao);
    
    ?>
    
    <h1>Inserir Produto</h1>
    
        <form action="adiciona-produto.php" method = "post">
            <table class="table">
                <tbody> 
                   
                <?php 
                
                $categoria = new Categoria();
                $categoria->id = 1;
    
                $produto = new Produto();
                $produto->nome = '';
                $produto->preco = '';
                $produto->descricao = ''; 
                $produto->categoria = $categoria;               
                $usado = null;

                include("produto-formulario-base.php")?>

                    <tr>
                    <td><input type="submit" value="Cadastrar" class="btn btn-primary"/></td>
                    </tr>
                </tbody>

            </table>
        </form>
    

    <?php include("rodape.php")?>