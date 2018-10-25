<?php
$currentPageTitle = 'nos pizzas';
require_once(__DIR__.'/partials/header.php');

$query = $db->query('SELECT * FROM pizza');

$pizzas = $query->fetchAll();

 ?>

<main class ="container">

   <div class="starter-template">
        <h1>liste des pizzas</h1>


   <?php  foreach ($pizzas as $pizza) {?>

<div class ="col-md-sm">
<div class ="card">
<div class ="card-body">
<h2><?php  echo ' ' .$pizza['name'];  ?></h2>
</div>
</div>
</div>
 <?php   }?>
</div>
   </main>

   <?php  require_once(__DIR__.'/partials/footer.php');  ?>
