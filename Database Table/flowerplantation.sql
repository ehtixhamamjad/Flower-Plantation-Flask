-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 01:22 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_flower`
--

CREATE TABLE `favorite_flower` (
  `flower_id` int(12) NOT NULL,
  `flower_image_name` varchar(250) NOT NULL,
  `flower_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite_flower`
--

INSERT INTO `favorite_flower` (`flower_id`, `flower_image_name`, `flower_name`) VALUES
(31, 'f1.jpeg', 'rose'),
(37, 'f2.jpeg', 'petal');

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

-- --------------------------------------------------------

--
-- Table structure for table `flower_plan`
--

CREATE TABLE `flower_plan` (
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `flower_name` varchar(255) DEFAULT NULL,
  `season` varchar(255) DEFAULT NULL,
  `flower_varieties` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `budget_allocation` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flower_plan`
--

INSERT INTO `flower_plan` (`plan_id`, `user_id`, `flower_name`, `season`, `flower_varieties`, `start_date`, `end_date`, `location`, `notes`, `budget_allocation`) VALUES
(6, 1, 'zain', 'Zain', 'Zain', '2024-03-25', '2024-03-25', 'Zain', 'Zain', 1),
(7, 1, 'zain', 'Zain', 'Zain', '2024-03-25', '2024-03-25', 'Zain', 'Zain', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nursery_owner`
--

CREATE TABLE `nursery_owner` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nursery_owner`
--

INSERT INTO `nursery_owner` (`id`, `name`, `address`, `city`, `zip`, `country`, `phone`, `email`, `password`) VALUES
(1, 'Ehtisham Amjad', 'kuri road near faiza-bad and i-8', 'Islamabad', '44000', 'Pakistan', '03333705027', 'ali', '123'),
(2, 'zain', 'zain', 'Multan', '123', '123', '123', 'zain@Gmailcom', '123'),
(6, 'ali', 'ali', 'Lahore', 'ali', 'ali', '123', 'ali@Gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `area` varchar(100) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `area`, `email`, `password`) VALUES
(19, 'zain', '123', 'Karachi', 'zain@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`flower_id`);

--
-- Indexes for table `flower_plan`
--
ALTER TABLE `flower_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `nursery_owner`
--
ALTER TABLE `nursery_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `flower_plan`
--
ALTER TABLE `flower_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nursery_owner`
--
ALTER TABLE `nursery_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
