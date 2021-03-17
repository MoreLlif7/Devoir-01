-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 17 mars 2021 à 10:02
-- Version du serveur :  10.1.41-MariaDB-0+deb9u1
-- Version de PHP : 7.3.10-1+0~20191008.45+debian9~1.gbp365209

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dblogin8077`
--
CREATE DATABASE IF NOT EXISTS `dblogin8077` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblogin8077`;

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `Id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenuArticle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Article`
--

INSERT INTO `Article` (`Id`, `titre`, `contenuArticle`) VALUES
(1, 'rzefrzef', '  zerzer\r\n  '),
(2, 'dzadazdazdaz', 'dazdazdazdazdazdazd\r\n  ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
