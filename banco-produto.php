<?php 

    function listaProdutos($conexao){
        $produtos = array();
        $query = "select p.* , c.nome as categoria_nome from produtos as p join categorias as c on p.categoria_id = c.id";
        $resultado = mysqli_query($conexao,$query);

        while($produto = mysqli_fetch_assoc($resultado)){
            array_push($produtos,$produto);
        }
        return $produtos;
    }
    function buscaProduto($conexao,$id){
        $query = "select * from produtos where id = {$id}";
        $resultado = mysqli_query($conexao,$query);
        return mysqli_fetch_assoc($resultado);
    }

    function insereProduto($conexao,$produto){
        $nome = mysqli_escape_string($conexao,$produto->nome);
        $query = "insert into produtos(nome,preco,descricao,categoria_id,usado) 
                values('{$produto->nome}',{$produto->preco},'{$produto->descricao}',{$produto->categoria_id}, {$produto->usado})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }

    function alteraProduto($conexao,$produto){
        $query = "update produtos set nome = '{$produto->nome}', preco = {$produto->preco}, descricao = '{$produto->descricao}', categoria_id = {$produto->categoria_id}, usado = {$produto->usado} where id = {$produto->id}";
        $resultado = mysqli_query($conexao,$query);
        return $resultado;
    }

    function removerProduto($conexao,$id){
        $query = "delete from produtos where id= {$id}";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>