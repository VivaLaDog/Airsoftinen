-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 01:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `bitvy`
--

CREATE TABLE `bitvy` (
  `id` int(11) NOT NULL,
  `nazev` varchar(80) NOT NULL,
  `description` text DEFAULT NULL,
  `lokace` varchar(60) NOT NULL,
  `fk_winner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bitvy`
--

INSERT INTO `bitvy` (`id`, `nazev`, `description`, `lokace`, `fk_winner`) VALUES
(1, 'Bitva u Labe', 'Skalné a bažinaté prostředí, silný déšť.', 'Ústí nad Labem', 1),
(2, 'Bitva v Teplicích', 'Byl tam Kryštof... To bylo asitak vše', 'Teplice, Ústí nad Labem', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `nazev_ranku` varchar(32) NOT NULL,
  `pocet_bitev_pro_rank` smallint(6) NOT NULL,
  `url_ranku` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `nazev_ranku`, `pocet_bitev_pro_rank`, `url_ranku`) VALUES
(1, 'Armádní Generál', 32767, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Armádní%20Generál.png'),
(2, 'Generálporučík', 150, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Generálporučík.png'),
(3, 'Generálmajor', 130, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Generálmajor.png'),
(4, 'Brigádní Generál', 110, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Brigádní%20Generál.png'),
(5, 'Plukovník', 100, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Plukovník.png'),
(6, 'Podplukovník', 95, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Podplukovník.png'),
(7, 'Major', 90, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Major.png'),
(8, 'Kapitán', 80, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Kapitán.png'),
(9, 'Nadporučík', 75, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Nadporučík.png'),
(10, 'Poručík', 70, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Poručík.png'),
(11, 'Podporučík', 65, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Podporučík.png'),
(12, 'Štábní Praporčík', 55, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Štábní%20Praporčík.png'),
(13, 'Nadpraporčík', 50, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Nadpraporčík.png'),
(14, 'Praporčík', 45, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Praporčík.png'),
(15, 'Podpraporčík', 40, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Podpraporčík.png'),
(16, 'Štábní Rotmistr', 30, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Štábní%20Rotmistr.png'),
(17, 'Nadrotmistr', 25, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Nadrotmistr.png'),
(18, 'Rotmistr', 20, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Rotmistr.png'),
(19, 'Rotný', 15, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Rotný.png'),
(20, 'Četař', 10, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Četař.png'),
(21, 'Desátník', 5, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Desátník.png'),
(22, 'Svobodník', 1, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Svobodník.png'),
(23, 'Vojín', 0, 'https://raw.githubusercontent.com/VivaLaDog/Airsoftinen/main/ACR%20ranks/Vojín.png');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nazev` varchar(64) NOT NULL,
  `url_teamu` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `nazev`, `url_teamu`) VALUES
(1, 'Červení Draci', NULL),
(2, 'Modré Krevety', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vojak`
--

CREATE TABLE `vojak` (
  `fk_team` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `jmeno` varchar(64) NOT NULL,
  `prijmeni` varchar(64) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `heslo` varchar(512) NOT NULL,
  `profilovka` varchar(512) DEFAULT NULL,
  `telefon` int(9) UNSIGNED ZEROFILL DEFAULT NULL,
  `fk_rank` int(11) NOT NULL,
  `fk_zbran` int(11) DEFAULT NULL,
  `fk_hrane_bitvy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vojak`
--

INSERT INTO `vojak` (`fk_team`, `id`, `jmeno`, `prijmeni`, `email`, `heslo`, `profilovka`, `telefon`, `fk_rank`, `fk_zbran`, `fk_hrane_bitvy`) VALUES
(1, 1, 'Honza', 'Jiroušek', 'jirousek@gmail.com', 'admin', NULL, 123456789, 1, 4, 1),
(2, 2, 'Adéla', 'Tůmová', 'ada@seznam.cz', 'admin2', NULL, 987654321, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zbran`
--

CREATE TABLE `zbran` (
  `id` int(11) NOT NULL,
  `nazev_zbrane` varchar(30) NOT NULL,
  `typ_zbrane` varchar(20) NOT NULL,
  `body` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zbran`
--

INSERT INTO `zbran` (`id`, `nazev_zbrane`, `typ_zbrane`, `body`) VALUES
(1, 'Brokovnice', 'Manual', 3),
(2, 'Brokovnice', 'HPA', 5),
(3, 'Pistol', 'Manual', 3),
(4, 'Pistol', 'HPA', 5),
(5, 'Automat. Puška', 'AEG', 10),
(6, 'Automat. Puška', 'HPA', 10),
(7, 'Puška', 'Manual', 5),
(8, 'Automat. SMG', 'AEG', 8),
(9, 'Automat. SMG', 'HPA', 6),
(10, 'Kulomet', 'AEG', 12),
(11, 'Automat. Pistole', 'AEG', 6),
(12, 'Odstřelovací Puška', 'HPA', 10),
(13, 'Odstřelovací Puška', 'Manual', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bitvy`
--
ALTER TABLE `bitvy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_winner` (`fk_winner`),
  ADD KEY `nazev` (`nazev`) USING BTREE;

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nazev` (`nazev`);

--
-- Indexes for table `vojak`
--
ALTER TABLE `vojak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefon` (`telefon`),
  ADD KEY `fk_team` (`fk_team`),
  ADD KEY `fk_rank` (`fk_rank`),
  ADD KEY `fk_zbran` (`fk_zbran`),
  ADD KEY `fk_hrane_bitvy` (`fk_hrane_bitvy`);

--
-- Indexes for table `zbran`
--
ALTER TABLE `zbran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bitvy`
--
ALTER TABLE `bitvy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vojak`
--
ALTER TABLE `vojak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zbran`
--
ALTER TABLE `zbran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bitvy`
--
ALTER TABLE `bitvy`
  ADD CONSTRAINT `bitvy_ibfk_1` FOREIGN KEY (`fk_winner`) REFERENCES `team` (`id`);

--
-- Constraints for table `vojak`
--
ALTER TABLE `vojak`
  ADD CONSTRAINT `vojak_ibfk_1` FOREIGN KEY (`fk_team`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `vojak_ibfk_2` FOREIGN KEY (`fk_rank`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `vojak_ibfk_3` FOREIGN KEY (`fk_zbran`) REFERENCES `zbran` (`id`),
  ADD CONSTRAINT `vojak_ibfk_4` FOREIGN KEY (`fk_hrane_bitvy`) REFERENCES `bitvy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
