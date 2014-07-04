-- phpMyAdmin SQL Dump
-- version 4.1.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 04 Juillet 2014 à 14:52
-- Version du serveur :  5.6.15
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `confiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'medesko@gmail.com', '$2a$10$J.V9m00NWpcbAkgTVD.q4.5bobrAZp5QLW9ja8SqXZMaLqpsZBRgm', NULL, NULL, NULL, 18, '2014-07-04 13:11:37', '2014-07-04 12:28:21', '127.0.0.1', '127.0.0.1', '2014-07-02 08:44:32', '2014-07-04 13:11:37');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_clients_on_email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `tel`, `email`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Etienne Rouzeaud', '06 52 85 81 48', 'etienne@cifacom.com', '10 Avenue Jacques Cartier Paris', '2014-07-04 12:45:49', '2014-07-04 12:50:55'),
(3, 'Mohamed KEITA mm', '06 52 85 81 48', 'medesko@gmail.com', '12 Avenue Jacques Cartier Bussy Saint Georges', '2014-07-04 12:46:41', '2014-07-04 12:57:38');

-- --------------------------------------------------------

--
-- Structure de la table `compositions`
--

CREATE TABLE IF NOT EXISTS `compositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ingredient` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name_ingredient`, `created_at`, `updated_at`) VALUES
(1, 'Fraise', '2014-07-03 10:37:05', '2014-07-04 10:05:07'),
(3, 'Fraise des bois', '2014-07-03 10:45:32', '2014-07-03 10:45:32'),
(4, 'Orange', '2014-07-03 10:45:59', '2014-07-03 10:45:59'),
(5, 'Framboise', '2014-07-03 10:46:13', '2014-07-03 10:46:13'),
(6, 'Gingembre', '2014-07-03 10:46:40', '2014-07-03 10:46:40'),
(8, 'Cochonm', '2014-07-04 12:15:18', '2014-07-04 12:15:25'),
(9, 'Fraise', '2014-07-04 13:12:12', '2014-07-04 13:12:12');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `margin_product` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `picture_file_name` varchar(255) DEFAULT NULL,
  `picture_content_type` varchar(255) DEFAULT NULL,
  `picture_file_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `margin_product`, `created_at`, `updated_at`, `picture_file_name`, `picture_content_type`, `picture_file_size`) VALUES
(1, 'Rhubarbemmm', '22.98', '33', '2014-07-01 00:00:00', '2014-07-04 12:15:44', 'rhubarbe.jpg', 'image/jpeg', '110534'),
(2, 'Rhubarbe et Fraise', '12.50', '33', '2014-07-01 00:00:00', '2014-07-03 08:47:33', 'rhubarbe-et-fraise.jpg', 'image/jpeg', '99283'),
(3, 'Orange et fleur d''oranger', '8.00', '34', '2014-07-01 00:00:00', '2014-07-03 08:47:33', 'orange-et-fleur-d-oranger.jpg', 'image/jpeg', '97948'),
(4, 'Rhubarbe et gingembre', '7.50', '33', '2014-07-01 00:00:00', '2014-07-03 08:47:34', 'rhubarbe-et-gingembre.jpg', 'image/jpeg', '802592'),
(5, 'Framboise et Violette', '8.00', '33', '2014-07-01 00:00:00', '2014-07-03 08:47:34', 'framboise-violette.jpg', 'image/jpeg', '802592'),
(6, 'Framboise au Champagne', '9.50', '33', '2014-07-01 00:00:00', '2014-07-03 08:47:34', 'framboise-au-champagne.jpg', 'image/jpeg', '109577');

-- --------------------------------------------------------

--
-- Structure de la table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140701104031'),
('20140702083002'),
('20140702084009'),
('20140703080602'),
('20140703094149'),
('20140703095353'),
('20140703095732'),
('20140703101602'),
('20140703102337'),
('20140704084411'),
('20140704102115'),
('20140704102716'),
('20140704105117');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
