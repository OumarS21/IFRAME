-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 09:54
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `TP_BD`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL,
  `Det_reference` int(11) NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`num_categorie`, `nom_categorie`, `Det_reference`, `cat_remise`) VALUES
(19, 'Iphone', 19, 0),
(20, 'Mercedes', 21, 10);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Client_id` int(11) NOT NULL,
  `Client_civilite` varchar(255) NOT NULL,
  `Client_nom` varchar(255) NOT NULL,
  `Client_prenom` varchar(255) NOT NULL,
  `Client_dep` int(11) NOT NULL,
  `Client_ville` varchar(255) NOT NULL,
  `client_num` int(11) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`Client_id`, `Client_civilite`, `Client_nom`, `Client_prenom`, `Client_dep`, `Client_ville`, `client_num`, `date_naissance`) VALUES
(1954, 'Monsieur', 'Pitt', 'Brad', 75, 'Paris', 6655, '1965-03-23'),
(1968, 'Women', 'Jean', 'Women', 77, 'Meaux', 6656, '1974-06-17');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_num` int(11) NOT NULL,
  `Com_client` varchar(255) NOT NULL,
  `Com_date` date NOT NULL,
  `Com_montant` int(11) NOT NULL,
  `Client_id` int(11) NOT NULL,
  `Produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`Com_num`),
  KEY `Client_id` (`Client_id`,`Produit_ref`),
  KEY `Produit_ref` (`Produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`Com_num`, `Com_client`, `Com_date`, `Com_montant`, `Client_id`, `Produit_ref`) VALUES
(112233, '154', '2016-08-19', 1400, 1954, 154),
(332211, '155', '2019-12-12', 50000, 1968, 155);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `Produit_ref` int(11) NOT NULL,
  `Produit_nom` varchar(255) NOT NULL,
  `Produit_prix` int(11) NOT NULL,
  `Produit_poids` int(11) NOT NULL,
  `Produit_vues` int(11) NOT NULL,
  `Produit_stock` varchar(255) NOT NULL,
  `Produit_code` int(11) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`Produit_ref`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`Produit_ref`, `Produit_nom`, `Produit_prix`, `Produit_poids`, `Produit_vues`, `Produit_stock`, `Produit_code`, `num_categorie`) VALUES
(154, 'Iphone 14', 1400, 6, 19, '15000', 154, 19),
(155, 'AMG CLASS A', 50000, 1, 1500, '1000', 155, 20);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`Produit_ref`) REFERENCES `produits` (`Produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES `clients` (`Client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categorie` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
