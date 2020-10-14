-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 12:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanasafinaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(80) NOT NULL,
  `category_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'shirtshalwar\r\n'),
(2, 'kurti\r\n\r\n'),
(3, 'fancy'),
(4, 'long shirt'),
(5, 'shirt shalwar dupatta\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_type`) VALUES
(1, 'extrasmall'),
(2, 'small'),
(3, 'medium'),
(4, 'large'),
(5, 'extralarge');

-- --------------------------------------------------------

--
-- Table structure for table `sstable`
--

CREATE TABLE `sstable` (
  `id` int(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `brand` varchar(80) DEFAULT NULL,
  `color` varchar(80) DEFAULT NULL,
  `material` varchar(80) DEFAULT NULL,
  `price` int(80) DEFAULT NULL,
  `type` varchar(80) DEFAULT NULL,
  `size_id` int(80) DEFAULT NULL,
  `category_id` int(80) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `arrival` varchar(200) NOT NULL,
  `sale` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sstable`
--

INSERT INTO `sstable` (`id`, `name`, `code`, `brand`, `color`, `material`, `price`, `type`, `size_id`, `category_id`, `image`, `arrival`, `sale`) VALUES
(1, 'D20a-002', '1235', 'ss', 'white', 'lawn', 2400, '2piece', 6, 1, 'whitess.jpg', 'new ', '2000'),
(2, 'D20a-001', '1234', 'ss', 'yellow', 'lawn', 2400, '2piece', 6, 1, 'yellowss.jpg', 'sale', '2000'),
(3, 'D20a-004', '1236', 'ss', 'blue', 'lawn', 2600, '2piece', 6, 1, 'bluess.jpg', 'new', '2400'),
(4, 'D20a-005', '1237', 'ss', 'offwhite', 'lawn', 2600, '2piece', 6, 1, 'offwhitess.jpg', 'new', '2000'),
(5, 'D20a-006', '1238', 'ss', 'pink', 'lawn', 2400, '2piece', 6, 1, 'pinkss.jpg', 'sale', '1800'),
(6, 'D20a-007', '1239', 'ss', 'black', 'lawn', 2800, '2piece', 6, 1, 'blackss.jpg', 'new', 'no sale'),
(7, 'D20a-010', '1245', 'ss', 'black', 'lawn', 3500, '3piece', 6, 1, 'blackss2.jpg', 'sale', '2800'),
(8, 'D20a-011', '1249', 'ss', 'white', 'lawn', 3500, '3piece', 6, 1, 'whitess2.jpg', 'new', 'no sale'),
(9, 'D20a-012', '2345', 'ss', 'pink', 'lawn', 2600, '2piece', 6, 1, 'pss.jpg', 'sale', '2200'),
(10, 'D20a-013', '2378', 'ss', 'pink', 'lawn', 2600, '2piece', 6, 1, 'p22ss.jpg', 'new', 'no sale'),
(11, 'D20a-014', '2379', 'ss', 'purple', 'lawn', 3600, '3piece', 6, 5, 'purss.jpg', 'new', 'no sale'),
(12, 'D20a-015', '3214', 'ss', 'orange', 'lawn', 4200, '3piece', 6, 5, 'orangess.jpg', 'sale', '3500'),
(13, 'D20a-016', '3212', 'ss', 'orange', 'lawn', 3990, '3piece', 6, 5, 'orange2ss.jpg', 'new', 'no sale'),
(14, 'D20a-017', '3210', 'ss', 'red', 'lawn', 3990, '', 6, 5, 'rss.jpg', 'sale', '3500'),
(15, 'D20a-018', '3211', 'ss', 'yellow', 'lawn', 3990, '3piece', 6, 5, 'y2ss.jpg', 'new', '2800'),
(16, 'D20a-019', '3214', 'ss', 'yellow', 'lawn', 3990, '3piece', 6, 5, 'yss.jpg', 'sale', '3500'),
(17, 'D20a-020', '3217', 'ss', 'purple', 'lawn', 4200, '3piece', 6, 5, 'purpless.jpg', 'sale', '3600');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `sstable`
--
ALTER TABLE `sstable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sstable`
--
ALTER TABLE `sstable`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
