<?php
//inclusion des fichiers sqlsrv_configue
require_once(__DIR__.'/../config/config.php');

 require_once(__DIR__.'/../config/database.php');

 ?>

<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="../asset/style/style.css" >

    <title>
      <?php
      if(empty ($currentPageTitle )){
      echo  $siteName. '- notre pizzeria en ligne';
      }
else{
    echo $currentPageTitle. '-'.$siteName;
}
?>
      </title>


    <!-- Custom styles for this template -->

  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark ">
      <a class="navbar-brand" href="#index.php"> <?php echo  $siteName; ?></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-pizzaStore" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item <?php echo ($currentPageUrl ==='index')? 'active' : ''; ?>">
            <a class="nav-link" href="index.php">accueil </a>
          </li>
          <li class="nav-item<?php echo ($currentPageUrl ==='pizza_list')? 'active' : ''; ?>">
            <a class="nav-link" href="pizza_list.php">liste des pizzas</a>
          </li>
        </ul>
      </div>
    </nav>
