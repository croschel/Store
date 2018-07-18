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

    function insereProduto($conexao,$nome,$preco,$descricao,$categoria_id,$usado){
        $query = "insert into produtos(nome,preco,descricao,categoria_id,usado) values('{$nome}',{$preco},'{$descricao}',{$categoria_id}, {$usado})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }

    function removerProduto($conexao,$id){
        $query = "delete from produtos where id= {$id}";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>