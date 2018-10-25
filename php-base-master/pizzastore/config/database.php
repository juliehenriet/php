<?php

try{
$db = new PDO ('mysql:host=localhost;dbname=pizzastore', 'root', '');
}catch(Exeption $e){
  header ('Location : https://www.google.fr/search?q='.$e->getMessage());
}





?>
