-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 15 Décembre 2022 à 09:39
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmp` int(11) NOT NULL,
  `Nom` int(11) NOT NULL,
  `Prenom` int(11) NOT NULL,
  `Sexe` int(11) NOT NULL,
  `Salaire` int(11) NOT NULL,
  `TypeContrat` int(11) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(50) NOT NULL,
  `Date d'embauche` date NOT NULL,
  `Date de naissance` date NOT NULL,
  `Nosrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `Salaire` (`Salaire`),
  KEY `Nosrv` (`Nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmp`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `TypeContrat`, `Fonction`, `Site`, `Date d'embauche`, `Date de naissance`, `Nosrv`) VALUES
(62157, 0, 0, 0, 1650, 0, 'employé commerce', 'Nike.fr', '0000-00-00', '0000-00-00', 10907),
(62159, 0, 0, 0, 1900, 0, 'employé commerce', 'Nike.fr', '0000-00-00', '0000-00-00', 10906);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` int(11) NOT NULL,
  `NoProj` int(11) NOT NULL,
  `NoEmploye` int(11) NOT NULL,
  `NoHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `NoProj` (`NoProj`,`NoEmploye`),
  KEY `NoEmploye` (`NoEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NoProj`, `NoEmploye`, `NoHeures`) VALUES
(151218, 60504, 62157, 35),
(151219, 40506, 62159, 35);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProjet` int(11) NOT NULL,
  `LibelleProjet` text NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProjet`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProjet`, `LibelleProjet`, `NoSrv`) VALUES
(40506, 'design pour création de chaussure', 10907),
(60504, 'création de vetement', 10906);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL,
  `NomSrv` int(20) NOT NULL,
  PRIMARY KEY (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NomSrv`) VALUES
(10906, 0),
(10907, 0);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoEmploye`) REFERENCES `employe` (`NoEmp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_2` FOREIGN KEY (`NoProjet`) REFERENCES `intervenir` (`NoProj`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projet_ibfk_3` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `employe` (`Nosrv`) ON DELETE CASCADE ON UPDATE CASCADE;
