#pizza store PDO SQL

-récupérer un backup de la bdd pizzastore
l'intérêt et de pouvoir recréer la structure de la base a tout moment.


Au niveau du php on va créer quelques fichiers/dossier :
-config/database.php -> connexion a la base de données en pdo, sera inclus dans tous les fichiers php
-Index.php -> la page d'accueuil du site
-partials/header.php -> le header du site a inclure dans toutes les pages (bootstrap cdn)
-partials/header.php -> le footer du site a inclure dans toutes les pages
-pizza_list.php -> lister toutes les pizzas de la base de données
-pizza_single.php/ -> la page d'une pizza seule

au niveau du front
-assets/dossier qui contiendra le css javascript et images
