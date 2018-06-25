<?php include("cabecalho.php")?>

    <h1>Inserir Produto</h1>
    <form action="adiciona-produto.php">
        <label for="nome">Nome</label>
        <input type="text" name="nome"/></br>

        <label for="preco">Preço</label>
        <input type="text" name="preco"/></br>

        <input type="submit" value="Cadastrar"/>
    </form>
    
    <?php include("rodape.php")?>