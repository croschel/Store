<?php

    class Categoria {

        private $id;
        private $nome;
        
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

        public function setNome($nome)
        {
                $this->nome = $nome;

                return $this;
        }
        //End Getters and Setters
    }

?>