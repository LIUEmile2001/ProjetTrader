-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 nov. 2020 à 22:05
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bourse`
--

-- --------------------------------------------------------

--
-- Structure de la table `acheter`
--

CREATE TABLE `acheter` (
  `numAction` int(10) NOT NULL,
  `numTrader` int(10) NOT NULL,
  `prixAchat` double NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acheter`
--

INSERT INTO `acheter` (`numAction`, `numTrader`, `prixAchat`, `quantite`) VALUES
(1, 1, 169.15, 159),
(1, 2, 171.89, 894),
(1, 3, 173, 255),
(1, 4, 170.45, 415),
(1, 5, 171.51, 899),
(2, 1, 90, 698),
(2, 2, 105.67, 616),
(2, 3, 98, 214),
(2, 5, 100.34, 294),
(3, 1, 27.12, 262),
(3, 2, 25.56, 844),
(3, 3, 31, 766),
(4, 1, 135.82, 699),
(4, 4, 130.9, 445),
(4, 5, 130.7, 50),
(5, 1, 156.84, 657),
(5, 2, 167, 737),
(5, 3, 155.89, 177),
(5, 4, 157.32, 894),
(5, 5, 165, 458),
(6, 1, 110, 298),
(6, 2, 105.73, 321),
(6, 3, 102.45, 540),
(6, 4, 100.77, 372),
(6, 5, 101.56, 894),
(7, 3, 55, 799),
(7, 4, 50.51, 865),
(7, 5, 52.98, 185),
(8, 4, 45.84, 179),
(8, 5, 51.23, 228),
(9, 1, 166.47, 862),
(9, 2, 175, 562),
(9, 4, 164.27, 569),
(9, 5, 172.12, 796),
(10, 2, 50, 101),
(10, 4, 100.56, 106),
(10, 5, 108.45, 372);

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE `action` (
  `idAction` int(10) NOT NULL,
  `nomAction` varchar(50) NOT NULL,
  `coursReel` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `action`
--

INSERT INTO `action` (`idAction`, `nomAction`, `coursReel`) VALUES
(1, 'Apple', 170.07),
(2, 'Microsoft', 100.05),
(3, 'Twitter', 31),
(4, 'IBM', 132.5),
(5, 'Facebook', 158.21),
(6, 'SAP', 110),
(7, 'Intel', 56.22),
(8, 'Sony', 47.66),
(9, 'VMWare', 171.34),
(10, 'Texas Instruments', 103.78);

-- --------------------------------------------------------

--
-- Structure de la table `trader`
--

CREATE TABLE `trader` (
  `idTrader` int(10) NOT NULL,
  `nomTrader` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trader`
--

INSERT INTO `trader` (`idTrader`, `nomTrader`) VALUES
(1, 'Milo'),
(2, 'Clara'),
(3, 'Enzo'),
(4, 'Noa'),
(5, 'Lilou');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acheter`
--
ALTER TABLE `acheter`
  ADD PRIMARY KEY (`numAction`,`numTrader`),
  ADD KEY `numTrader` (`numTrader`);

--
-- Index pour la table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`idAction`);

--
-- Index pour la table `trader`
--
ALTER TABLE `trader`
  ADD PRIMARY KEY (`idTrader`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acheter`
--
ALTER TABLE `acheter`
  ADD CONSTRAINT `acheter_ibfk_1` FOREIGN KEY (`numAction`) REFERENCES `action` (`idAction`),
  ADD CONSTRAINT `acheter_ibfk_2` FOREIGN KEY (`numTrader`) REFERENCES `trader` (`idTrader`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
