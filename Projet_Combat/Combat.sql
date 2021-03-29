-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Mar 29, 2021 at 10:20 AM
-- Server version: 10.5.8-MariaDB-1:10.5.8+maria~focal
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Combat`
--

-- --------------------------------------------------------

--
-- Table structure for table `personnages`
--

CREATE TABLE `personnages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `degats` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `timeEndormi` int(10) UNSIGNED DEFAULT 0,
  `type` enum('magicien','guerrier','archer') NOT NULL,
  `atout` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `degats`, `timeEndormi`, `type`, `atout`) VALUES
(31, 'MaxLarcher', 0, 0, 'archer', 0),
(27, 'BasileLeGuerrier', 0, 0, 'guerrier', 0),
(30, 'Mario', 40, 0, 'guerrier', 0),
(29, 'JulienLarcher', 10, 0, 'archer', 0),
(28, 'JeanLeMage', 30, 0, 'magicien', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
