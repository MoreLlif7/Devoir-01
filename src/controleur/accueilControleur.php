<?php
function accueilControleur($twig,$db){   
    $form = array(); 

    if (isset($_POST['btInscrire'])){
        $btText = $_POST['btText'];
        $btArticle=$_POST['btArticle'];
        $article = new Article($db);         
        $exec = $article->insert($btText, $btArticle);        
        }      
            

    echo $twig->render('accueil.html.twig', array('form'=>$form));
    }
?>