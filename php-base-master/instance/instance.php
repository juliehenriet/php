<?php

//connexion bcadd
try{
$db = new PDO ('mysql:host=localhost;dbname=pizzastore', 'root', '');
}catch(Exeption $e){
  header ('Location : https://www.google.fr/search?q='.$e->getMessage());
}

//permet de vérifier que la connexion a la base fonctionne


$query = $db->query('SELECT * FROM pizza');

//
//
// //récupérer une pizzastore
// // $pizza = $query->fetch();
// //
// //
// // $pizzas =$query->fetchAll();



//parcourir toutes les pizza avec l fetch all et avec le fetch (juste le nom dazns une balise h1)

$pizzas = $query->fetchAll();

foreach ($pizzas as $pizza) {
echo'<h1>'.$pizza['name'].'</h1>';
}

$query = $db->query('SELECT * FROM pizza');

while($pizza = $query ->fetch()){
  echo  $pizza ['name'];
}
 ?>
