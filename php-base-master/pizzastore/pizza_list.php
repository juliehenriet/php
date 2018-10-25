<?php
  $currentPageTitle = 'nos pizzas';
  require_once(__DIR__.'/partials/header.php');

  $query = $db->query('SELECT * FROM pizza');


  $pizzas = $query->fetchAll();

 ?>

<main class ="container">

   <div class="starter-template">
        <h1>liste des pizzas</h1>
<div class ="row">

   <?php  foreach ($pizzas as $pizza) {?>

     <div class ="col-md-3">
          <div class ="col-md-4">
       <div class ="card-img-top-container">

<img class ="card-img-top card-img-top-zoom-effect" src="asset/<?php echo $pizza['image']; ?>"/>
</div>
         <div class ="card-body" />
<?php echo $pizza['price']; ?>
           <h2><?php  echo ' ' .$pizza['name']; ?></h2>
          <button type="button" class="btn btn-danger">Commandez</button>
         </div>
       </div>
     </div>
 <?php   }?>
</div>
   </main>

   <?php  require_once(__DIR__.'/partials/footer.php');  ?>
