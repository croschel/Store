<?php   require_once("cabecalho.php");
        require_once("class/Produto.php");
        require_once("class/Categoria.php");
        require_once("class/CategoriaDao.php");
        require_once("logica-usuario.php");

        //Instancia do Objeto Dao da Categoria
        $categoriaDao = new CategoriaDao($conexao);

        verificarUsuario();
        $categorias = $categoriaDao->listarCategorias();
    
    ?>
    
    <h1>Inserir Produto</h1>
    
        <form action="adiciona-produto.php" method = "post">
            <table class="table">
                <tbody> 
                   
                <?php 
                
                $categoria = new Categoria();
                $categoria->setId(1);
    
                $produto = new Produto("","","",$categoria,null);
                 
                include("produto-formulario-base.php")?>

                    <tr>
                    <td><input type="submit" value="Cadastrar" class="btn btn-primary"/></td>
                    </tr>
                </tbody>

            </table>
        </form>
    

    <?php include("rodape.php")?>