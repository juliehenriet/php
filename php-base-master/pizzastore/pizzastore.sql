-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 24 oct. 2018 à 14:08
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pizzastore`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `name`, `address`, `zip`, `city`, `phone`, `user_id`) VALUES
(9, 'domicile', '77, avenue Ferdinand de Lesseps', '33170', 'GRADIGNAN', '05.10.85.20.39', 1),
(10, 'maison', '15, rue Beauvau', '95120 ', 'ERMONT', '01.51.27.16.26', 2),
(11, 'domicile', '68, Rue du Palais', '33170', 'GRADIGNAN', '05.10.85.20.39', 3),
(12, 'domicile', '19, rue des Lacs', '78800', 'HOUILLES', '01.09.47.81.88', 4),
(13, 'domicile', '55, Rue de la Pompe', '59700', 'MARCQ-EN-BAROEUL', '03.09.38.68.27', 5);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `ordered_at` datetime DEFAULT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `pizza_name` varchar(45) DEFAULT NULL,
  `pizza_price` decimal(11,2) DEFAULT NULL,
  `pizza_size` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pizza`
--

INSERT INTO `pizza` (`id`, `name`, `price`, `image`) VALUES
(1, 'Reine', '8.00', 'img/pizzas/reine.jpg'),
(2, 'texan', '10.00', 'img/pizzas/4-fromages.jpg'),
(3, '4 fromages', '9.00', 'img/pizzas/4-fromages.jpg'),
(4, 'vegetarienne', '0.00', ''),
(5, 'savoyarde', '13.00', 'img/pizzas/savoyarde.jpg'),
(6, 'bolognaise', '10.00', 'img/pizzas/bolognaise.jpg'),
(7, 'cannibale', '11.00', 'img/pizzas/cannibale.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `pizza_has_size`
--

CREATE TABLE `pizza_has_size` (
  `pizza_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pizza_has_size`
--

INSERT INTO `pizza_has_size` (`pizza_id`, `size_id`) VALUES
(3, 3),
(4, 2),
(5, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `size`
--

INSERT INTO `size` (`id`, `name`, `price`) VALUES
(1, 's', '0.00'),
(2, 'm', '0.99'),
(3, 'l', '1.99'),
(4, 'xl', '2.99');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `firstname`) VALUES
(1, 'riquier', 'zara'),
(2, 'marteau', 'elisabeth'),
(3, 'langley', 'bertrand'),
(4, 'martineau', 'jolie'),
(5, 'bourget', 'clarice');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `fk_address_user1_idx` (`user_id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`,`address_id`),
  ADD KEY `fk_order_address1_idx` (`address_id`);

--
-- Index pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`,`order_id`),
  ADD KEY `fk_order_detail_order1_idx` (`order_id`);

--
-- Index pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pizza_has_size`
--
ALTER TABLE `pizza_has_size`
  ADD PRIMARY KEY (`pizza_id`,`size_id`),
  ADD KEY `fk_pizza_has_size_size1_idx` (`size_id`),
  ADD KEY `fk_pizza_has_size_pizza_idx` (`pizza_id`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_order_detail_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pizza_has_size`
--
ALTER TABLE `pizza_has_size`
  ADD CONSTRAINT `fk_pizza_has_size_pizza` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pizza_has_size_size1` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
