        <?php require_once("cabecalho.php");
              require_once("logica-usuario.php");

            falhaDeAcesso();
            ?>
        

  <h2>Login</h2>
        <?php
        if(usuarioEstaLogado()){
          ?>
          <ul>
          
          <p class="text-success">Usuario logado com o email <?=usuarioLogado()?><a href="logout.php"> Logout</a></p>
          
          </ul>
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

  <?php include("rodape.php");?>