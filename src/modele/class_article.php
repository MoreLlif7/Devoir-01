<?php

class Article{    

    private $db; 
    private $insert;

    public function __construct($db){        
        $this->db = $db;
        $this->insert = $this->db->prepare("insert into Article(titre, contenuArticle)values (:titre, :contenuArticle)");      
    }
    public function insert($btText, $btArticle){ // Étape 3 
        $r = true;        
        $this->insert->execute(array(':titre'=>$btText, ':contenuArticle'=>$btArticle,));        
        if ($this->insert->errorCode()!=0){            
        print_r($this->insert->errorInfo());              
        $r=false;       
        }        
         return $r;    
        }
          
}
?>