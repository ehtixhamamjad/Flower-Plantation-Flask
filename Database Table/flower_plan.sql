-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 05:00 PM
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
-- Table structure for table `flower_plan`
--

CREATE TABLE `flower_plan` (
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `flower_name` varchar(255) DEFAULT NULL,
  `season` varchar(255) DEFAULT NULL,
  `flower_varieties` text DEFAULT NULL,
  `budget_allocation` varchar(254) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flower_plan`
--

INSERT INTO `flower_plan` (`plan_id`, `user_id`, `flower_name`, `season`, `flower_varieties`, `budget_allocation`, `start_date`, `end_date`, `location`, `notes`) VALUES
(9, 1, 'aa', 'Autumn', 'klj', '786', '2024-03-21', '2024-03-29', 'Multan', '686'),
(10, 1, 'ee', 'Spring', 'hh', '23', '2024-03-06', '2024-03-14', 'Lahore', 'rr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flower_plan`
--
ALTER TABLE `flower_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flower_plan`
--
ALTER TABLE `flower_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
