        <?php include("cabecalho.php");
              include("logica-usuario.php");

        if(isset($_GET['logado']) && $_GET['logado']==true){
        ?>
        <p class="alert-success">Login realizado com sucesso</p>
        <?php
        }
        if(isset($_GET['logado']) && $_GET['logado']==false){
        ?>
        <p class="alert-danger">Login ou Senha Inválida</p>
        <?php
        }

        falhaDeAcesso();
        ?>
        

  <h2>Login</h2>
        <?php
        if(usuarioEstaLogado()){
          ?>
          <p class="text-success">Usuario logado com o email <?=usuarioLogado()?></p>
        <?php  
        }else{
        ?>
    <form action="login.php" method="post">
    <table class="table">
    <tr>
    <td><label for="email">Email</label></td>
    <td><input type="email" name="email" class="form-control"></td>
    </tr>
    <tr>
    <td><label for="senha">Senha</label></td>
    <td><input type="password" name="senha" class="form-control"></td>
    </tr>
    <td><button type="submit" class="btn btn-primary">Entrar</button></td>
    </table>
    </form>
    <?php
        }
    ?>

  <?php include("rodape.php")?>