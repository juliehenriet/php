<?php


try{
$db = new PDO ('mysql:host=localhost;dbname=pizzastore', 'root', '');
}catch(Exeption $e){
  header ('Location : https://www.google.fr/search?q='.$e->getMessage());
}

//récupérer pizza id 3
//rfécupérer l'id a partir de l'url
$id = $_GET ['id'];
$query = $db->query('SELECT * FROM pizza WHERE id = '.$id);
$pizza = $query->fetch();
echo $pizza['id'] .' : '.$pizza['name'];


?>
