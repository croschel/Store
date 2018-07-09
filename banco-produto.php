<?php 

    function listaProdutos($conexao){
        $produtos = array();
        $query = "select * from produtos";
        $resultado = mysqli_query($conexao,$query);

        while($produto = mysqli_fetch_assoc($resultado)){
            array_push($produtos,$produto);
        }
        return $produtos;
    }

    function insereProduto($conexao,$nome,$preco){
        $query = "insert into produtos(nome,preco) values('{$nome}',{$preco})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>