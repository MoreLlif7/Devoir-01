<?php

function getPage($db){    
    $lesPages['accueil'] = "accueilControleur";     
    
    if (isset($_GET['page'])){        
        $page = $_GET['page'];    
    }    
    else{        
        $page = 'accueil';
    }    
    if (isset($lesPages[$page])){        
        $contenu = $lesPages[$page];    
        }    
        else{        
            $contenu = $lesPages['accueil'];    
            }    
        return $contenu;
    }
?>