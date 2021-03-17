<?php
function renduControleur($twig,$db){   
    $form = array();    

    $utilisateur = new Article($db);    
    $liste = $utilisateur->select();
            

    echo $twig->render('rendu.html.twig', array('form'=>$form,'liste'=>$liste));
    }
?>