<?php
// Inclusion de la classe correspondante au paramètre passé.
function chargerClasse($classe)
{
  require_once __DIR__.'/../classes/'.
        $classe . '.php'; 
}

spl_autoload_register('chargerClasse'); 
// Enregistrement de la fonction en autoload pour qu'elle soit appelée dès qu'on instancie une classe non déclarée.