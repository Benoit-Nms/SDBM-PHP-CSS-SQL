-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 18 jan. 2022 à 20:24
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdbm`
--

-- --------------------------------------------------------

--
-- Structure de la table `biere`
--

DROP TABLE IF EXISTS `biere`;
CREATE TABLE IF NOT EXISTS `biere` (
  `ID_Biere` int(4) NOT NULL AUTO_INCREMENT,
  `Nom_Biere` varchar(80) DEFAULT NULL,
  `Description_Biere` varchar(100) DEFAULT NULL,
  `Type_Biere` enum('Bière de garde','Bière d’abbaye','Lager','Pale Ale','India Pale Ale','Triple','Stout','Saison','Sour','Vieillie en fût','Quadrupel','Lambic','Lambic-Fruit') DEFAULT NULL,
  `Couleur_Biere` enum('Blanche','Blonde','Ambrée','Brune','Noire') DEFAULT NULL,
  `Prix_Unite_Biere` decimal(5,2) DEFAULT NULL,
  `ID__Marque` varchar(50) NOT NULL,
  `ID_Continent` int(4) NOT NULL,
  PRIMARY KEY (`ID_Biere`),
  KEY `ID_Marque` (`ID__Marque`) USING BTREE,
  KEY `ID__Continent` (`ID_Continent`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `biere`
--

INSERT INTO `biere` (`ID_Biere`, `Nom_Biere`, `Description_Biere`, `Type_Biere`, `Couleur_Biere`, `Prix_Unite_Biere`, `ID__Marque`, `ID_Continent`) VALUES
(1, 'KWAK', 'Robe ambrée aux reflets cuivrés avec une tête blanche et moelleuse.', 'Pale Ale', 'Ambrée', '2.10', '3', 1),
(2, 'Cuvée des Trolls', 'Une bière artisanale aux notes fruitées d\'orange et de miel. Une référence en bière belge !', 'Pale Ale', 'Blonde', '1.70', '4', 1),
(3, 'PUNK IPA', 'Retrouvez toutes les saveurs fruitées de la Punk IPA en canette !', 'India Pale Ale', 'Blonde', '2.80', '1', 1),
(4, 'CH\'TI TRIPLE', 'Une bière blonde du Nord aux saveurs épicées avec une fine amertume !', 'Bière de garde', 'Blonde', '2.50', '5', 1),
(6, 'GOOSE ISLAND IPA', 'Une IPA accompagnée de la célèbre oie de la brasserie américaine Goose Island ! ', 'India Pale Ale', 'Blonde', '2.30', '6', 2),
(7, 'TRIPEL KARMELIET', 'Arômes fruités d\'agrumes et notes épicées.', 'Triple', 'Blonde', '2.10', '7', 1),
(9, 'LINDEMANS LA PÊCHERESSE', 'Une bière belge au goût de pêche, en cocktail ou dans des flutes pour ces dames !', 'Lambic-Fruit', 'Blonde', '1.90', '2', 1),
(10, 'BARBAR AU MIEL', 'Les saveurs et les charmes du miel pour une bière bien particulière, la Barbar !', 'Pale Ale', 'Blonde', '2.90', '9', 1),
(13, 'CHIMAY TRIPLE', 'Venez redécouvrir la plus célèbre des triples trappistes!', 'Triple', 'Blonde', '2.10', '10', 1),
(14, 'DELIRIUM TREMENS', 'Médaille d\'or lors du World Beer Championship, une excellente bière blonde aux 3 levures !', 'Pale Ale', 'Blonde', '2.80', '11', 1),
(17, 'SAINT BERNARDUS ABT 12', 'Une bière belge dite \"d\'abbaye\" souvent comparée à la plus rare des bières trappistes ! Un must !', 'Quadrupel', 'Brune', '2.80', '12', 1),
(22, 'CAMDEN PALE ALE', 'Une bière qui dévoile des saveurs fleuries et légères accompagnées d\'une amertume désaltérante. ', 'Pale Ale', 'Blonde', '1.75', '13', 1),
(23, 'LA CHOUFFE', 'La bière belge du lutin au bonnet rouge !', 'Pale Ale', 'Blonde', '2.10', '14', 1),
(24, 'GUINNESS FOREIGN EXTRA STOUT', 'Une bière brassée à Dublin pour l\'Afrique.', 'Stout', 'Noire', '3.10', '15', 1),
(25, 'WESTMALLE TRIPLE', 'ne des rares bières Trappistes Belges ! Une bière d\'une exceptionnelle compléxité gustative !', 'Triple', 'Blonde', '2.30', '16', 1),
(26, 'CORSENDONK ROUSSE', 'Une bière belge artisanale à la robe ambrée et aux aromes de fruits et de caramel !', 'Pale Ale', 'Ambrée', '2.60', '17', 1),
(32, 'STRAFFE HENDRIK TRIPLE', 'Seule Triple de Bruges venant du centre ville !', 'Triple', 'Blonde', '2.80', '18', 1),
(33, 'LA CORNE DU BOIS DES PENDUS TRIPLE', 'Une Bière blonde belge très puissante et parfumée ! ', 'Triple', 'Blonde', '3.00', '19', 1),
(34, 'GOUDEN CAROLUS CLASSIC', 'Découvrez une bière de renommée mondiale élue Meilleur bière brune aux World Beer Awards en 2012 !', 'Pale Ale', 'Brune', '2.50', '20', 1),
(38, 'LINDEMANS FARO', 'Une bière belge fruitée, désaltérante et douce.', 'Lambic', 'Ambrée', '1.66', '2', 1),
(42, 'MAREDSOUS TRIPLE 10', 'La Maredsous Triple, une bière brassée selon une tradition religieuse.', 'Triple', 'Blonde', '2.70', '22', 1),
(43, 'BREWDOG', 'ghj gy', 'Lambic', 'Blonde', '3.56', '1', 1),
(45, 'Test', 'ceci est un test', 'Triple', 'Brune', '2.10', '12', 6),
(46, 'Test', 'fdgdfg fdgfdg fdgfd g', 'Triple', 'Blonde', '2.10', '8', 5),
(47, 'BENOIT', 'TEST TEST TEST', 'India Pale Ale', 'Brune', '3.56', '3', 2);

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

DROP TABLE IF EXISTS `continent`;
CREATE TABLE IF NOT EXISTS `continent` (
  `ID_Continent` int(4) NOT NULL AUTO_INCREMENT,
  `Nom_Continent` enum('EUROPE','AMERIQUE DU NORD','AMERIQUE DU SUD','ASIE','AFRIQUE','OCEANIE','') DEFAULT NULL,
  PRIMARY KEY (`ID_Continent`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `continent`
--

INSERT INTO `continent` (`ID_Continent`, `Nom_Continent`) VALUES
(1, 'EUROPE'),
(2, 'AMERIQUE DU NORD'),
(3, 'AMERIQUE DU SUD'),
(4, 'ASIE'),
(5, 'AFRIQUE'),
(6, 'OCEANIE');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `ID__Marque` int(4) NOT NULL AUTO_INCREMENT,
  `Nom_Marque` varchar(50) DEFAULT NULL,
  `Nom_Fabricant` varchar(50) DEFAULT NULL,
  `Nom_Pays` enum('Allemagne','Grande-Bretagne','Pologne','Espagne','Pays-Bas	','République-Tchèque	','Belgique','Roumanie','France','Italie','Turquie','Autriche','Irlande','Portugal','Hongrie','Danemark','Bulgarie','Suède','Finlande','Grèce','Croatie','Suisse','Lituanie','Slovaquie','Norvège','Slovénie','Lettonie','Estonie','Chypre','Luxembourg','Malte','USA','Colombie','Mexique','Argentine','Brésil','Canada','Australie','Chine','Japon','Russie','Vietnam','Ecosse') DEFAULT NULL,
  PRIMARY KEY (`ID__Marque`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`ID__Marque`, `Nom_Marque`, `Nom_Fabricant`, `Nom_Pays`) VALUES
(1, 'BREWDOG', 'BREWDOG', 'Ecosse'),
(2, 'LINDEMANS', 'FAMILLE LINDEMANS', 'Belgique'),
(3, 'KWAK', 'BOSTEELS', 'Belgique'),
(4, 'Cuvée des Trolls', 'DUBUISSON', 'Belgique'),
(5, 'CH\'TI ', 'CASTELAIN', 'France'),
(6, 'GOOSE ISLAND', 'GOOSE ISLAND BEER COMPANY', 'USA'),
(7, 'TRIPEL KARMELIET', 'BOSTEELS', 'Belgique'),
(8, 'BARBAR', 'LEFEBVRE', 'Belgique'),
(9, 'CHIMAY', 'ABBAYE NOTRE DAME DE SCOURMONT', 'Belgique'),
(11, 'DELIRIUM', 'HUYGHE', 'Belgique'),
(12, 'SAINT BERNARDUS', 'BROUWERIJ ST BERNARD', 'Belgique'),
(13, 'CAMDEN', 'CAMDEN TOWN BREWERY', 'Grande-Bretagne'),
(14, 'LA CHOUFFE', 'ACHOUFFE', 'Belgique'),
(15, 'GUINNESS', 'ST JAMES', 'Irlande'),
(16, 'WESTMALLE', 'WESTMALLE', 'Belgique'),
(17, 'CORSENDONK', 'BRASSERIE DU BOCQ', 'Belgique'),
(18, 'STRAFFE HENDRIK', 'BRASSERIE DE HALVE MAAN', 'Belgique'),
(19, 'CORNE DU BOIS DES PENDUS', 'BRASSERIE DES LEGENDES', 'Belgique'),
(20, 'GOUDEN CAROLUS', 'BROUWERIJ HET ANKER', 'Belgique'),
(22, 'MAREDSOUS', 'DUVEL', 'Belgique');

-- --------------------------------------------------------

--
-- Structure de la table `payer`
--

DROP TABLE IF EXISTS `payer`;
CREATE TABLE IF NOT EXISTS `payer` (
  `ID_Biere` int(4) NOT NULL AUTO_INCREMENT,
  `Numero_Ticket` int(11) NOT NULL,
  `Qte_Biere` int(11) NOT NULL,
  PRIMARY KEY (`ID_Biere`,`Numero_Ticket`),
  KEY `Numero_Ticket` (`Numero_Ticket`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `payer`
--

INSERT INTO `payer` (`ID_Biere`, `Numero_Ticket`, `Qte_Biere`) VALUES
(9, 1, 2),
(23, 2, 1),
(4, 3, 1),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `Numero_Ticket` int(4) NOT NULL AUTO_INCREMENT,
  `Horodatage_Ticket` datetime NOT NULL,
  `Article_Ticket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Numero_Ticket`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`Numero_Ticket`, `Horodatage_Ticket`, `Article_Ticket`) VALUES
(1, '2021-07-18 09:44:04', 'LINDEMANS PECHERESSE'),
(2, '2021-07-18 09:44:04', 'LA CHOUFFE '),
(3, '2021-07-18 09:44:54', 'CH\'TI TRIPLE'),
(4, '2021-07-19 09:44:54', 'PUNK IPA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
