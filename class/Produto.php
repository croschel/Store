<?php


    class Produto {
        
        //variables
        private $id;
        private $nome;
        private $preco;
        private $descricao;
        private $categoria;
        private $usado;

        //Constructor
        function __construct($nome,$preco,$descricao,Categoria $categoria,$usado){
                $this->nome = $nome;
                $this->preco = $preco;
                $this->descricao = $descricao;
                $this->categoria = $categoria;
                $this->usado = $usado;
                
        }
    
        //Getters and Setters
        public function getId()
        {
                return $this->id;
        }

       
        public function setId($id)
        {
                $this->id = $id;

                return $this;
        }

        public function getNome()
        {
                return $this->nome;
        }

       
        public function getPreco()
        {
                return $this->preco;
        }


        public function getDescricao()
        {
                return $this->descricao;
        }

        public function setCategoria($categoria)
        {
                $this->categoria = $categoria;

                return $this;
        }
        
        public function getCategoria()
        {
                return $this->categoria;
        }

         
        public function isUsado()
        {
                return $this->usado;
        }
 
        public function setUsado($usado)
        {
                $this->usado = $usado;

                return $this;
        }
        //end of Getters and Setters

        //Functions
        public function precoComDesconto($valor){
            if($valor <= 0.5 && $valor > 0){
            $this->preco -= $this->preco * $valor;
            }
            return $this->preco;
        }

        function __toString(){
                return $this->nome.": R$ ".$this->preco;
        }

        public function temIsbn(){
                return $this instanceof Livro;
        }

        //end Functions

    }

    ?>