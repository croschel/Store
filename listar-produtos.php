<?php   require_once("cabecalho.php");
        require_once("banco-produto.php");
        require_once("logica-usuario.php");
        require_once("class/Produto.php");
        require_once("class/Categoria.php");

        verificarUsuario();
        falhaDeAcesso();
?>
    <table class="table table-striped table-bordered tabela-dinamica">
        <thead class="titulo-tabela">
            <tr>
            <th>Nome</th>
            <th>Preco</th>
            <th>Preco Desc</th>
            <th>Descrição</th>
            <th>Categoria</th>
            </tr>
        </thead>
        <?php

        $produtos = listaProdutos($conexao);
        foreach($produtos as $produto):?>
        <tbody>
            <tr>
                <td><?= $produto->getNome()?></td>
                <td><?= $produto->getPreco()?></td>
                <td><?= $produto->precoComDesconto(0.2)?></td>
                <td><?= substr($produto->getDescricao(),0,40)?></td>
                <td><?= $produto->getCategoria()->getNome()?></td>
                <td>
                <a class="btn btn-primary" href="produto-altera-formulario.php?id=<?=$produto->getId()?>">alterar</a>
                </td>
                <form action="remove-produto.php" method="post">

                <input type="hidden" name="id" value="<?=$produto->getId()?>"/>
                <td><button class="btn btn-danger">remover</button></td>
                
                </form>
                
            </tr>
        </tbody>
        
        <?php    
        endforeach;
        ?>
    </table>
<?php   include("rodape.php");?>
