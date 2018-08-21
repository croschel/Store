<?php 

    function listaProdutos($conexao){
        $produtos = array();
        $query = "select p.* , c.nome as categoria_nome from produtos as p join categorias as c on p.categoria_id = c.id";
        $resultado = mysqli_query($conexao,$query);

        while($produto_array = mysqli_fetch_assoc($resultado)){
            
            $categoria = new Categoria();
            $categoria->setNome($produto_array['categoria_nome']);

            $nome = $produto_array['nome'];
            $preco = $produto_array['preco'];
            $descricao = $produto_array['descricao'];
            $categoria = $categoria;
            $usado = $produto_array['usado'];

            $produto = new Produto($nome,$preco,$descricao,$categoria,$usado);
            $produto->setId($produto_array['id']);

            array_push($produtos,$produto);
        }
        return $produtos;
    }

    function buscaProduto($conexao,$id){
        $query = "select * from produtos where id = {$id}";
        $resultado = mysqli_query($conexao,$query);
        $produto_buscado = mysqli_fetch_assoc($resultado);
        
        $categoria = new Categoria();
        $categoria->setId($produto_buscado['categoria_id']);
        
            $nome = $produto_buscado['nome'];
            $preco = $produto_buscado['preco'];
            $descricao = $produto_buscado['descricao'];
            $usado = $produto_buscado['usado'];

            $produto = new Produto($nome,$preco,$descricao,$categoria,$usado);
            $produto->setId($produto_buscado['id']);

        return $produto;
    }

    function insereProduto($conexao,Produto $produto){
        $nome = mysqli_escape_string($conexao,$produto->getNome());
        $query = "insert into produtos(nome,preco,descricao,categoria_id,usado) 
                values('{$produto->getNome()}',{$produto->getPreco()},'{$produto->getDescricao()}',
                {$produto->getCategoria()->getId()}, {$produto->isUsado()})";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }

    function alteraProduto($conexao,Produto $produto){

        $query = "update produtos set nome = '{$produto->getNome()}', preco = {$produto->getPreco()}, 
            descricao = '{$produto->getDescricao()}', categoria_id = {$produto->getCategoria()->getId()}, 
            usado = {$produto->isUsado()} where id = {$produto->getId()}";
        $resultado = mysqli_query($conexao,$query);
        return $resultado;
    }

    function removerProduto($conexao,$id){
        $query = "delete from produtos where id= {$id}";
        $resultadoQuery = mysqli_query($conexao,$query);
        return $resultadoQuery;
    }
?>