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
-- Database: `nishatlinen`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(80) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'shirtshalwar\r\n'),
(2, 'kurti\r\n'),
(3, 'fancy'),
(4, 'longshirt'),
(5, 'shirt shalwar dupatta');

-- --------------------------------------------------------

--
-- Table structure for table `nishaattable`
--

CREATE TABLE `nishaattable` (
  `id` int(80) NOT NULL,
  `name` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `code` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `brand` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `material` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `price` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `size_id` int(80) DEFAULT NULL,
  `category_id` int(80) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `arrival` varchar(200) NOT NULL,
  `sale` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nishaattable`
--

INSERT INTO `nishaattable` (`id`, `name`, `code`, `brand`, `color`, `material`, `price`, `type`, `size_id`, `category_id`, `image`, `arrival`, `sale`) VALUES
(1, 'SKU 41901275-Black-1Pc\r\n', '123', 'nishatlinen', 'black', 'linen', '1780', '1piece', 5, 1, 'black2.jpg', 'new', 'no sale'),
(2, 'SKU 000493682105', '124', 'nishatlinen', 'pink', 'linen', '3500', '1piece', 6, 5, 'pink-1.jpg\r\n', 'sale', '3150'),
(4, 'SKU 000488142102', '125', 'nishatlinen', 'yellow', 'cambric', '5500', '3piece', 6, 5, 'yellow.jpg\r\n', 'sale', '4400'),
(5, 'SKU 000493672103', '126', 'nihatlinen', 'black', 'lawn', '3350', '3piece', 4, 5, 'black3.jpg', 'new', '3350'),
(6, 'SKU 000488402105', '127', 'nishatlinen', 'purple', 'lawn', '4000', '3piece', 4, 5, 'purple2.jpg\r\n\r\n\r\n\r\n\r\n', 'new', 'no sale'),
(7, 'SKU 000493702108', '128', 'nishatlinen', 'blue', 'lawn', '3350', '2piece', 6, 5, 'blue.jpg', 'new', 'no sale'),
(8, 'SKU 000488322106', '129', 'nishatlinen', 'white', 'lawn', '3350', '3piece', 6, 5, 'whitee.jpg', '', ''),
(9, 'SKU 000493622105', '234', 'nishatlinen', 'white', 'lawn', '3350', '3piece', 6, 5, 'white.jpg', '', ''),
(10, 'SKU 42001092', '235', 'nishatlinen', 'red', 'lawn', '3200', '3piece', 6, 5, 'red.jpg', '', ''),
(11, 'SKU 42001091', '236', 'nishatlinen', 'green', '', '3500', '3piece', 6, 5, 'green2.jpg', '', ''),
(12, 'SKU 000488502103', '238', 'nishaatlinen', 'black', 'casmbric', '3500', '3piece', 6, 5, 'black-3.jpg', '', ''),
(13, 'SKU 000489312105', '238', 'nishatlinen', 'purple', 'cambric', '4990', '3piece', 6, 5, 'purple.jpg', '', ''),
(15, ' SKU 42001127', '345', 'nishatlinen', 'blue', 'lawn', '4990', '3piece', 6, 5, 'blue2.jpg', '', ''),
(16, 'SKU 000488882103\r\n', '346', 'nishatlinen', 'black', 'lawn', '5000', '3piece', 6, 5, '1-.jpg', '', ''),
(17, 'SKU 000493712111', '347', 'nishatlinen', 'grey', 'lawn', '3350', '3piece', 6, 5, 'grey.jpg\r\n', '', ''),
(18, 'SKU 000488512104', '348', 'nishatinen', 'grey', 'lawn', '4450', '3piece', 6, 5, 'grey2.jpg', '', ''),
(19, 'SKU 000488922103', '340', 'nishatlinen', 'pink', 'lawn', '3500', '2piece', 6, 1, 'pink2.jpg', '', ''),
(20, 'SKU 000488202108', '351', 'nishatlinen', 'white', 'lawn', '3200', '2piece', 6, 1, 'white2.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(80) NOT NULL,
  `size_type` varchar(80) CHARACTER SET latin1 DEFAULT NULL
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `nishaattable`
--
ALTER TABLE `nishaattable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nishaattable`
--
ALTER TABLE `nishaattable`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
