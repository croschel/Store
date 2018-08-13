<?php
    require_once("cabecalho.php");?>

    <h1>Fale Conosco</h1>

    <form action="envia-contato.php">
    
        <table class="table">
        <tbody>
        
            <tr>
            <td>
            <label for="nome">Nome</label>
            <input type="text" class="form-control" name="nome">
            </td>
            </tr>
            
            <tr>
            <td>
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control">
            </td>
            </tr>
            
            <tr>
            <td>
            <label for="descricao">Mensagem</label>
            <textarea name="descricao" cols="30" rows="10" class="form-control"></textarea>
            </td>
            </tr>

            <tr>
            <td>
            <button type="submit" class="btn btn-primary">Enviar</button>
            </td>
            </tr>

        </tbody>
        </table>
    
    </form>
    
<?php  require_once("rodape.php");?>