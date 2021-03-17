<?php

class Article{    

    private $db; 
    private $insert;
    private $select;

    public function __construct($db){        
        $this->db = $db;
        $this->insert = $this->db->prepare("insert into Article(titre, contenuArticle)values (:titre, :contenuArticle)");   
        $this->select = $this -> db -> prepare("select * from Article order by titre" );  
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
          
        public function select(){        
            $this->select->execute();        
            if ($this->select->errorCode()!=0){             
                print_r($this->select->errorInfo());          
            }        
            return $this->select->fetchAll();    
        }
    
}
?>