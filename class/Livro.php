<?php 

class Livro extends Produto{

    private $isbn;
    
    //getters and setters
    public function getIsbn()
    {
        return $this->isbn;
    }

    public function setIsbn($isbn)
    {
        $this->isbn = $isbn;

        return $this;
    }

    //Functions
    public function calculaImposto(){
        return $this->getPreco() * 0.065; 
    }

}