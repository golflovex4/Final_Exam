-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 06:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_ex`
--

-- --------------------------------------------------------

--
-- Table structure for table `lottery`
--

CREATE TABLE `lottery` (
  `id` int(10) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `Number` varchar(6) NOT NULL,
  `Prize` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lottery`
--

INSERT INTO `lottery` (`id`, `DATE`, `Number`, `Prize`) VALUES
(1, '2022-03-16', '737867', 'รางวัลที่ 1'),
(2, '2022-03-16', '344527', 'รางวัลที่ 3'),
(3, '2022-03-16', '003392', 'รางวัลที่ 3'),
(4, '2022-03-16', '826066', 'รางวัลที่ 3'),
(5, '2022-03-16', '315090', 'รางวัลที่ 3'),
(6, '2022-03-16', '141817', 'รางวัลที่ 3'),
(7, '2022-03-16', '708219', 'รางวัลที่ 3'),
(8, '2022-03-16', '129232', 'รางวัลที่ 3'),
(9, '2022-03-16', '262277', 'รางวัลที่ 3'),
(10, '2022-03-16', '020974', 'รางวัลที่ 3'),
(11, '2022-03-16', '920401', 'รางวัลที่ 3'),
(12, '2022-03-16', '788', 'รางวัลเลขท้าย 3 ตัว'),
(13, '2022-03-16', '989', 'รางวัลเลขท้าย 3 ตัว'),
(14, '2022-04-01', '970618', 'รางวัลที่ 1'),
(15, '2022-04-01', '703812', 'รางวัลที่ 3'),
(16, '2022-04-01', '036686', 'รางวัลที่ 3'),
(17, '2022-04-01', '046457', 'รางวัลที่ 3'),
(18, '2022-04-01', '559912', 'รางวัลที่ 3'),
(19, '2022-04-01', '027001', 'รางวัลที่ 3'),
(20, '2022-04-01', '127728', 'รางวัลที่ 3'),
(21, '2022-04-01', '563497', 'รางวัลที่ 3'),
(22, '2022-04-01', '050015', 'รางวัลที่ 3'),
(23, '2022-04-01', '054035', 'รางวัลที่ 3'),
(24, '2022-04-01', '440807', 'รางวัลที่ 3'),
(25, '2022-04-01', '870', 'รางวัลเลขท้าย 3 ตัว'),
(26, '2022-04-01', '578', 'รางวัลเลขท้าย 3 ตัว'),
(27, '2022-04-16', '395919', 'รางวัลที่ 1'),
(30, '2022-04-16', '642745', 'รางวัลที่ 3'),
(31, '2022-04-16', '158303', 'รางวัลที่ 3'),
(32, '2022-04-16', '768711', 'รางวัลที่ 3'),
(33, '2022-04-16', '644686', 'รางวัลที่ 3'),
(34, '2022-04-16', '103342', 'รางวัลที่ 3'),
(35, '2022-04-16', '953929', 'รางวัลที่ 3'),
(36, '2022-04-16', '757881', 'รางวัลที่ 3'),
(37, '2022-04-16', '358202', 'รางวัลที่ 3'),
(38, '2022-04-16', '720279', 'รางวัลที่ 3'),
(39, '2022-04-16', '542136', 'รางวัลที่ 3'),
(40, '2022-04-16', '413', 'รางวัลเลขท้าย 3 ตัว'),
(41, '2022-04-16', '508', 'รางวัลเลขท้าย 3 ตัว');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
