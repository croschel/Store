<?php 

    function listaProdutos($conexao){
        $produtos = array();
        $query = "select p.* , c.nome as categoria_nome from produtos as p join categorias as c on p.categoria_id = c.id";
        $resultado = mysqli_query($conexao,$query);

        while($produto_array = mysqli_fetch_assoc($resultado)){
            
            $categoria = new Categoria();
            $categoria->nome = $produto_array['categoria_nome'];

            $produto = new Produto();
            $produto->id = $produto_array['id'];
            $produto->nome = $produto_array['nome'];
            $produto->preco = $produto_array['preco'];
            $produto->descricao = $produto_array['descricao'];
            $produto->categoria = $categoria;
            $produto->usado = $produto_array['usado'];

            array_push($produtos,$produto);
        }
        return $produtos;
    }

    function buscaProduto($conexao,$id){
        $query = "select * from produtos where id = {$id}";
        $resultado = mysqli_query($conexao,$query);
        $produto_buscado = mysqli_fetch_assoc($resultado);
        
        $categoria = new Categoria();
            $categoria->id = $produto_buscado['categoria_id'];
        
        $produto = new Produto();
            $produto->id = $produto_buscado['id'];
            $produto->nome = $produto_buscado['nome'];
            $produto->preco = $produto_buscado['preco'];
            $produto->descricao = $produto_buscado['descricao'];
            $produto->categoria = $categoria;
            $produto->usado = $produto_buscado['usado'];

        return $produto;
    }

    function insereProduto($conexao,Produto $produto){
        $nome = mysqli_escape_string($conexao,$produto->nome);
        $query = "insert into produtos(nome,preco,descricao,categoria_id,usado) 
                values('{$produto->nome}',{$produto->preco},'{$produto->descricao}',
                {$produto->categoria->id}, {$produto->usado})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }

    function alteraProduto($conexao,Produto $produto){

        $query = "update produtos set nome = '{$produto->nome}', preco = {$produto->preco}, 
            descricao = '{$produto->descricao}', categoria_id = {$produto->categoria->id}, 
            usado = {$produto->usado} where id = {$produto->id}";
        $resultado = mysqli_query($conexao,$query);
        return $resultado;
    }

    function removerProduto($conexao,$id){
        $query = "delete from produtos where id= {$id}";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>