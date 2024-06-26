-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flowerplantation`
--

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `flower_id` int(11) NOT NULL,
  `flower_nursery_id` int(12) NOT NULL,
  `flower_image_name` varchar(250) DEFAULT NULL,
  `flower_name` varchar(255) DEFAULT NULL,
  `flower_information` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `season` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `altitude` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `grow_time` varchar(100) DEFAULT NULL,
  `pesticide` varchar(255) DEFAULT NULL,
  `fertilizer` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `fragrance` varchar(255) DEFAULT NULL,
  `shape` varchar(255) DEFAULT NULL,
  `sunlight` varchar(255) DEFAULT NULL,
  `watering` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flower`
--

INSERT INTO `flower` (`flower_id`, `flower_nursery_id`, `flower_image_name`, `flower_name`, `flower_information`, `color`, `season`, `category`, `altitude`, `height`, `area`, `grow_time`, `pesticide`, `fertilizer`, `disease`, `fragrance`, `shape`, `sunlight`, `watering`) VALUES
(31, 0, 'f1.jpeg', 'rose', 'info', 'red', 'Summer', 'outdoor', 1, 1, 'faisalabad', '2', 'pesticide', 'fertilizer', 'disease', 'fragrance', 'shape', 'sunlight', 'water'),
(33, 0, 'f2.jpeg', 'petal', 'info', 'yellow', 'Autumn', 'outdoor', 1, 1, 'lahore', '2', 'pesticide', 'fert', 'dis', 'frag', 'shape', 'sun', 'water'),
(34, 0, 'f2.jpeg', 'petal', 'info', 'yellow', 'Autumn', 'outdoor', 1, 1, 'lahore', '2', 'pesticide', 'fert', 'dis', 'frag', 'shape', 'sun', 'water'),
(35, 0, 'f2.jpeg', 'petal', 'info', 'yellow', 'Autumn', 'outdoor', 1, 1, 'lahore', '2', 'pesticide', 'fert', 'dis', 'frag', 'shape', 'sun', 'water'),
(36, 0, 'f2.jpeg', 'petal', 'info', 'yellow', 'Autumn', 'outdoor', 1, 1, 'lahore', '2', 'pesticide', 'fert', 'dis', 'frag', 'shape', 'sun', 'water'),
(37, 0, 'f2.jpeg', 'petal', 'info', 'yellow', 'Autumn', 'outdoor', 1, 1, 'islamabad', '2', 'pesticide', 'fert', 'dis', 'frag', 'shape', 'sun', 'water'),
(38, 2, 'f2.jpeg', 'z', 'z', 'z', 'Winter', 'outdoor', 1, 1, 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z'),
(39, 2, 'f2.jpeg', 'z', 'z', 'z', 'Winter', 'outdoor', 1, 1, 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z'),
(40, 2, 'f2.jpeg', 'z', 'z', 'z', 'Winter', 'outdoor', 1, 1, 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z'),
(41, 6, 'f1.jpeg', 'a', 'a', 'a', 'Autumn', 'outdoor', 1, 1, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(45, 19, 'f1.jpeg', 'v', 'vd', 'd', 'Summer', 'outdoor', 3, 4, 'Karachi', 'w', 'd', 'w', 'd', 'd', 'd', 'd', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`flower_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
