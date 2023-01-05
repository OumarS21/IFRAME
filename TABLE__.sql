-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 05 Janvier 2023 à 10:31
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_communes`
--

CREATE TABLE IF NOT EXISTS `table_communes` (
  `code_commune` int(11) NOT NULL,
  `Nom_commune` varchar(21) NOT NULL,
  `population_2010` int(11) NOT NULL,
  `population_1999` int(11) NOT NULL,
  `Surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `num_departement` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_communes`
--

INSERT INTO `table_communes` (`code_commune`, `Nom_commune`, `population_2010`, `population_1999`, `Surface`, `longitude`, `latitude`, `num_departement`) VALUES
(75056, 'Paris', 2, 2, 105, 2, 49, 75),
(92048, 'Meudon', 45058, 43663, 10, 2, 49, 92);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table_communes`
--
ALTER TABLE `table_communes`
  ADD CONSTRAINT `table_communes_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `table_departement` (`num_departements`) ON DELETE CASCADE ON UPDATE CASCADE;
