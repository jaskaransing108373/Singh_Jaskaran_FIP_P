-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2020 at 02:31 PM
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
(1, 'Styleframes', 'I created these very awesome styleframes for my homework. I rendered 10 cinema 4d camera shorts from different camera angle and then edited them in adobe photoshop, to create these awesome styleframes. One of the best styleframe is shown here.\r\nIf you want to view the other styleframes, email me from my contact Page.', 'cos1.jpg'),
(2, 'SportsNet Stadium', 'I also created a sportsnet stadium in cinema 4d. I rendered it as a video. the video scenes can be scene in demo reel . \r\nthis stadium also features the amazing video shorts of the football match. ', 'sports.png'),
(3, 'Nick Bumper', 'This nick bumper was fully rendered in cinema 4d. and then I edited it in adobe after effects to add audio and other additions of Dorg van Dango cartoon. ', 'nick.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
