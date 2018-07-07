<?php include("cabecalho.php");?>
<?php include("conecta.php");?>

<?php
$query = "select * from produtos";
$resultado = mysqli_query($conexao,$query);

while($produto = mysqli_fetch_assoc($resultado)){
    echo $produto['nome'] . "<br/>";
}
?>


<?php include("rodape.php");?>
