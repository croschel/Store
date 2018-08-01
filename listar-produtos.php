<?php   include("cabecalho.php");
        include("conecta.php");
        include("banco-produto.php");
        include("logica-usuario.php");

        verificarUsuario();
        falhaDeAcesso();
?>
    <table class="table table-striped table-bordered">
        <?php

        if(isset($_SESSION['success'])){?>
        <p class="alert-success"><?=$_SESSION['success']?></p>
        <?php   
        unset($_SESSION['success']);
        }

        $produtos = listaProdutos($conexao);
        foreach($produtos as $produto):?>
            <tr>
                <td><?= $produto['nome']?></td>
                <td><?= $produto['preco']?></td>
                <td><?= substr($produto['descricao'],0,40)?></td>
                <td><?= $produto['categoria_nome']?></td>
                <td>
                <a class="btn btn-primary" href="produto-altera-formulario.php?id=<?=$produto['id']?>">alterar</a>
                </td>
                <form action="remove-produto.php" method="post">

                <input type="hidden" name="id" value="<?=$produto['id']?>"/>
                <td><button class="btn btn-danger">remover</button></td>
                
                </form>
                
            </tr>
        <?php    
        endforeach;
        ?>
    </table>
<?php   include("rodape.php");?>
