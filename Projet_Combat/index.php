<?php

include __DIR__.'/config/autoload.php';

session_start(); // On appelle session_start() APRÈS avoir enregistré l'autoload.

if (isset($_GET['deconnexion']))
{
  session_destroy();
  header('Location: /Projet_Combat/index.php');
  exit();
}

    require_once(__DIR__."/config/pdo.php");

   
    include __DIR__.'/include/header.php'; 
    include __DIR__.'/combat.php';
?>

<?php

    if (isset($_GET['message'])){
    echo '<div style="padding: 17px; width: 35vw; margin-left: 30vw;
    margin-top: 10vw; background-color: rgb(189, 190, 255); border-radius: 20px; text-align: center; color: white;">'.$_GET['message'].'</div>'; }
    
?>

<?php include __DIR__.'/include/footer.php';?>
