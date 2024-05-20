-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 12:57 PM
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
(1, 'Bitva u Labe', 'Skalné a bažinaté prostředí, silný déšť.', 'Ústí nad Labem', 1);

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
(1, 'Armádní Generál', 32767, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073189976768532/Armadni_General.png?ex=663df502&is=663ca382&hm=91889420dee1f9cbf073cb8a765a771b05dd9432cb470cb98c8d64d36b11ffbb&'),
(2, 'Generálporučík', 150, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073189696012288/Generalporucik.png?ex=663df502&is=663ca382&hm=776d70ae3e13388ece411afc0b15ccaab134a5f1e0cc50564bc95d66e04129b2&'),
(3, 'Generálmajor', 130, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073189330980904/Generalmajor.png?ex=663df502&is=663ca382&hm=876d06f9862c8006f99038b05c14a8ecbb21bf541ace370784e4fb8e61710651&'),
(4, 'Brigádní Generál', 110, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073189074993152/Brigadni_General.png?ex=663df502&is=663ca382&hm=08b727774d0fd5fd57b36157801f3a529cb422af5e1ef6ea1264ea649a4ba2ac&'),
(5, 'Plukovník', 100, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073188806819871/Plukovnik.png?ex=663df502&is=663ca382&hm=951d14d99e6b69316c91d3dde5e6a81d098d9b9b8e2b866cb51d6f541cec3156&'),
(6, 'Podplukovník', 95, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073188555034635/Podplukovnik.png?ex=663df502&is=663ca382&hm=0f2587f272558eca4f7a0f75509c6382dbbd6839532300c0ece3103fa1245707&'),
(7, 'Major', 90, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073188282531850/Major.png?ex=663df502&is=663ca382&hm=6e774ffd2e11a327a950dd324c69b7909f1f1673ebf8e2a44b5e20f6d522d98c&'),
(8, 'Kapitán', 80, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073076307070996/Kapitan.png?ex=663df4e7&is=663ca367&hm=68bbb7ad7b74ff83b83f001baf6534b10815eda81732ec77c8cd166cf10fa657&'),
(9, 'Nadporučík', 75, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073076067991603/Nadporucik.png?ex=663df4e7&is=663ca367&hm=bf80e9991eb6f8bcd173a22d949aee564ce697f2c20fc413a269757143b40e01&'),
(10, 'Poručík', 70, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073075862343700/Porucik.png?ex=663df4e7&is=663ca367&hm=726ba42a6972781670dbaf1678945ff9f39d0de548341b563aa8135a4e1313d0&'),
(11, 'Podporučík', 65, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073075602427984/Podporucik.png?ex=663df4e7&is=663ca367&hm=10517a89ce0ea9898a4dc76ba32ce624db21f60318a659ddcb578fdfffe80491&'),
(12, 'Štábní Praporčík', 55, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073075350765628/Stabni_Praporcik.png?ex=663df4e7&is=663ca367&hm=fd5a9235a3bee6217e9bea3ad123c06b77df5f09d99da922e54d5f3670ae2f01&'),
(13, 'Nadpraporčík', 50, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073075098980463/Nadpraporcik.png?ex=663df4e7&is=663ca367&hm=a61a186acde6b71a57c192025ea3147d92344db587321391532f8aa4d203cae2&'),
(14, 'Praporčík', 45, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073074872619058/Praporcik.png?ex=663df4e7&is=663ca367&hm=d47cea738c2c052bebd5f4494a7267df27b846020c0ef673f2c0a3aa8206f832&'),
(15, 'Podpraporčík', 40, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238073074595790858/Podpraporcik.png?ex=663df4e7&is=663ca367&hm=cb63b515957e4539998fde0a0aa0fe40f99e7bf6f90a9e5e3ae95fc24eb6d85e&'),
(16, 'Štábní Rotmistr', 30, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072989698752542/Stabni_Rotmistr.png?ex=663df4d3&is=663ca353&hm=2923a0b6a51b713d34442196bcccd8db321b989e2cf4ac6e78ee9c462e54f476&'),
(17, 'Nadrotmistr', 25, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072989455613992/Nadrotmistr.png?ex=663df4d2&is=663ca352&hm=46d19f656884a814d235994f90a1a494978b60570ea712fdb1ae74adc261d1f6&'),
(18, 'Rotmistr', 20, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072989170536508/Rotmistr.png?ex=663df4d2&is=663ca352&hm=e1b598531f3e8caee4aa62038da11c01175c5e05ddd7482acf3c4e90ffefab63&'),
(19, 'Rotný', 15, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072988859891782/Rotny.png?ex=663df4d2&is=663ca352&hm=f4e7e2b1f294253b6153adee888c85880805efb025bd41722e9e5f974bf6d1f1&'),
(20, 'Četař', 10, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072988507701348/Cetar.png?ex=663df4d2&is=663ca352&hm=6c2a9212b8eaea964bdceb7f97d33a7f6f5f461ce0e9b10bfd484e7ef3852efe&'),
(21, 'Desátník', 5, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072988021297263/Desatnik.png?ex=663df4d2&is=663ca352&hm=e19835142d69e310ca28bb6cd4a7115a830e6daa448c4f50271a75942cd4bd95&'),
(22, 'Svobodník', 1, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072983646371900/Svobodnik.png?ex=663df4d1&is=663ca351&hm=8f33319cbbadd41213b8f33486c96f8bd6eb645b2fbe5834ae99cf23e007a926&'),
(23, 'Vojín', 0, 'https://cdn.discordapp.com/attachments/1233002654431580181/1238072983315152967/Vojin.png?ex=663df4d1&is=663ca351&hm=adb50a26a62c6415ac59c8d2ed7ccb5c1dbd9321e145b8f3ac034d042d8c06b9&');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nazev` varchar(64) NOT NULL,
  `battles_won` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `nazev`, `battles_won`) VALUES
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
  ADD UNIQUE KEY `nazev` (`nazev`),
  ADD KEY `fk_winner` (`fk_winner`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
