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

    function insereProduto($conexao,$nome,$preco,$descricao){
        $query = "insert into produtos(nome,preco,descricao) values('{$nome}',{$preco},'{$descricao}')";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }

    function removerProduto($conexao,$id){
        $query = "delete from produtos where id= {$id}";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>