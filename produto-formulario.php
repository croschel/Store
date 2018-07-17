<?php   include("cabecalho.php");
        include("conecta.php");
        include("banco-categoria.php");
        
        $categorias = listarCategorias($conexao);
        ?>
    
    <h1>Inserir Produto</h1>
    
        <form action="adiciona-produto.php" method = "post">
            <table>
                <tr>
                <td><label for="nome">Nome</label></td>
                <td><input type="text" name="nome" class="form-control"/></td>
                </tr>

                <tr>
                <td><label for="preco">Preço</label></td>
                <td><input type="number" name="preco" class="form-control"/></td>
                </tr>

                 <tr>
                <td><label for="descricao">Descrição</label></td>
                <td><textarea name="descricao" class="form-control"></textarea></td>
                </tr>

                <tr>
                <td><label for="categoria_id">Descrição</label></td>
                <td>
                <?php foreach($categorias as $categoria) :?>
                <input type="radio" name="categoria_id" value="<?=$categoria['id'];?>"><?=$categoria['nome'];?></br>
                <?php endforeach;?>
                </td>
                </tr>

                <tr>
                <td><input type="submit" value="Cadastrar" class="btn btn-primary"/></td>
                </tr>


            </table>
        </form>
    

    <?php include("rodape.php")?>