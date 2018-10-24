
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="/pizzastore/asset/style/style.css">

    <title>pizza store</title>


    <!-- Custom styles for this template -->

  </head>

  <body>
    <?php

    $page = basename( $_SERVER['REQUEST_URI'],'.php');

     ?>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark ">
      <a class="navbar-brand" href="#index.php">PizzaStore</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-pizzaStore" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item <?php echo ($page ==='index')? 'active' : ''; ?>">
            <a class="nav-link" href="index.php">accueuil </a>
          </li>
          <li class="nav-item<?php echo ($page ==='pizza_list')? 'active' : ''; ?>">
            <a class="nav-link" href="pizza_list.php">liste des pizza</a>
          </li>
        </ul>
      </div>
    </nav>
