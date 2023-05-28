-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 05:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_covid19`
--

CREATE TABLE `tb_covid19` (
  `id_covid` int(11) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `totalcases` varchar(30) NOT NULL,
  `totaldeaths` varchar(30) NOT NULL,
  `totalrecovered` varchar(30) NOT NULL,
  `activecases` varchar(30) NOT NULL,
  `totaltests` varchar(30) NOT NULL,
  `population` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_covid19`
--

INSERT INTO `tb_covid19` (`id_covid`, `negara`, `totalcases`, `totaldeaths`, `totalrecovered`, `activecases`, `totaltests`, `population`) VALUES
(1, 'India', '44986461', '531832', '44446514', '8115', '929430169', '1406631776'),
(2, 'Japan', '33803572', '74694', '', '', '100414883', '125584838'),
(3, 'S. Korea', '31548083', '34687', '31198069', '315327', '15804065', '51329899'),
(4, 'Turkey', '17232066', '102174', '', '', '162743369', '85561976'),
(5, 'Vietnam', '11602738', '43203', '10635065', '924470', '85826548', '98953541'),
(6, 'Taiwan', '10239998', '19005', '10220993', '0', '30742304', '23888595'),
(7, 'Iran', '7611224', '146236', '7364870', '100118', '56596583', '86022837'),
(8, 'Indonesia', '6802090', '161674', '6625209', '15207', '114158919', '279134505'),
(9, 'Malaysia', '5088009', '37046', '5029873', '21090', '68352292', '33181072'),
(10, 'Israel', '4824551', '12509', '4798473', '13569', '41373364', '9326000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_covid19`
--
ALTER TABLE `tb_covid19`
  ADD PRIMARY KEY (`id_covid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_covid19`
--
ALTER TABLE `tb_covid19`
  MODIFY `id_covid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
