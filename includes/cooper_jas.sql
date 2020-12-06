-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2020 at 10:12 PM
-- Server version: 5.7.31
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooper_jas`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_cars`
--

DROP TABLE IF EXISTS `mini_cars`;
CREATE TABLE IF NOT EXISTS `mini_cars` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_cars`
--

INSERT INTO `mini_cars` (`id`, `name`, `description`, `image`) VALUES
(1, 'MINI 3 DOOR', 'Mini Cooper is a better looking and sporty type hatchback, the showrooms of mini are the best, here I get the lowest maintenance cost. Overall it\'s performance is the best and its torque, it also gets additional features such as head-up display and many more, it is really the best hatchback ever and also it has a better resale value.', 'mini_3.png'),
(2, 'MINI CLUBMAN', 'The perfect union of style and substance, the new MINI Clubman is undoubtedly the most unique and sophisticated MINI ever created. Every inch is quintessentially urban, constructed with impeccable craftsmanship, clever functionality and unmatched refinement. \r\nOnce you’re behind the wheel, the new MINI Clubman opens more doors to exciting new horizons. ', 'mini_club.png'),
(3, 'MINI COUNTRYMAN', 'Equipped with a ruggedly handsome design, MINI Countryman is the ultimate all-rounder, ready to take you places other vehicles can\'t reach. Whether it\'s a winding coastal road or the bustle of the city, it gives you a driving experience you’ll always look forward to. Enjoy a new-found freedom and flexibility to drive anywhere. And enjoy telling your stories when you return.', 'mini_country.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
