<?php include("cabecalho.php")?>

    <h1>Inserir Produto</h1>
    
        <form action="adiciona-produto.php">
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
                <td><input type="submit" value="Cadastrar" class="btn btn-primary"/></td>
                </tr>
            </table>
        </form>
    

    <?php include("rodape.php")?>