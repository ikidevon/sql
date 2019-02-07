-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 07 Février 2019 à 09:33
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `HP_FAN`
--

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `idFILM` int(11) NOT NULL,
  `nomFilm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Film`
--

INSERT INTO `Film` (`idFILM`, `nomFilm`) VALUES
(1, 'L\'ecole des sorciers'),
(2, 'La chambres des secrets'),
(3, 'Le prisonnier d\'azkaban'),
(4, 'La coupe de feu'),
(5, 'L\'ordre du phenix'),
(6, 'Le prince de sang-mele'),
(7, 'Les reliques de la mort.1'),
(8, 'Les reliques de la mort.2'),
(9, 'Coder et deployer un sort(hors-série)');

-- --------------------------------------------------------

--
-- Structure de la table `Maison`
--

CREATE TABLE `Maison` (
  `idMaison` int(11) NOT NULL,
  `nomMaison` varchar(50) NOT NULL,
  `Fondateur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Maison`
--

INSERT INTO `Maison` (`idMaison`, `nomMaison`, `Fondateur`) VALUES
(1, 'Griffon d\'or', 'Godric Gryffondor'),
(2, 'Serdaigle', 'Rowena Serdaigle,Filius Flitwick'),
(3, 'PoufSouffle', 'Helga Poufsouffle,Pomona Chourave'),
(4, 'Serpantard', 'Salazar Serpantard,H.Slughorne,S.Rogue');

-- --------------------------------------------------------

--
-- Structure de la table `Personnage`
--

CREATE TABLE `Personnage` (
  `idPersonnage` int(11) NOT NULL,
  `NomPerso` varchar(30) NOT NULL,
  `prenomPerso` varchar(30) NOT NULL,
  `agePerso` int(2) NOT NULL,
  `1eFilmPerso` varchar(255) NOT NULL,
  `MaisonPerso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Personnage`
--

INSERT INTO `Personnage` (`idPersonnage`, `NomPerso`, `prenomPerso`, `agePerso`, `1eFilmPerso`, `MaisonPerso`) VALUES
(1, 'McGonagall', 'Minerva', 100, 'L\'ecole des sorciers', 'Griffon d\'or'),
(2, 'Lovegood', 'Luna', 37, 'l\'Ordre du phenix', 'Serdaigle'),
(3, 'Malfoy', 'Drago', 38, 'L\'Ecole des sorciers', 'Serpantard'),
(4, 'Wilmet', 'Remy', 22, 'Coder déployer un sort', 'Simplon(PouffSouffle)'),
(5, 'Basire', 'Karine', 35, 'Coder et deployer un sort', 'Simplon(Griffon d\'or)'),
(6, 'N....', 'Nepheline', 26, 'Coder et deployer un sort.1', 'Simplon(Griffon d\'or,Ministere de la magie'),
(7, 'G....', 'Yohan', 23, 'Coder deployer un sort.2', 'Simplon(Serdaigle)'),
(8, 'Decroos', 'Ysabel', 20, 'Coder deployer un sort.2', 'Simplon(Serdaigle)'),
(9, 'Ikki', 'Devon', 30, 'Coder et deployer un sort.2', 'Simplon(Serpentard)');

-- --------------------------------------------------------

--
-- Structure de la table `Sorts`
--

CREATE TABLE `Sorts` (
  `Sorts` varchar(50) NOT NULL,
  `Effet du sort` varchar(200) NOT NULL,
  `Interdit (impardonnable)` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Sorts`
--

INSERT INTO `Sorts` (`Sorts`, `Effet du sort`, `Interdit (impardonnable)`) VALUES
('Dissensium', 'Ouvrir un passage secret', 'non'),
('Accio', 'Attirer quelque chose', 'non'),
('Allohomora', 'Ouvrir une porte verouillée', 'non'),
('Destructum', 'detruire quelque chose', 'non'),
('Collaporta', 'Sceller une porte', 'non'),
('Expelliarmus', 'Renvoyer quel que chose ou Faire ejecter une ou plusieures baguettes magiques', 'non'),
('Endoloris', 'Faire très mal', 'oui');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`idFILM`);

--
-- Index pour la table `Maison`
--
ALTER TABLE `Maison`
  ADD PRIMARY KEY (`idMaison`);

--
-- Index pour la table `Personnage`
--
ALTER TABLE `Personnage`
  ADD PRIMARY KEY (`idPersonnage`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `idFILM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Maison`
--
ALTER TABLE `Maison`
  MODIFY `idMaison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `Personnage`
--
ALTER TABLE `Personnage`
  MODIFY `idPersonnage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
