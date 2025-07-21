-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2025 at 04:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `binarybrains`
--

CREATE TABLE `binarybrains` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `winner_enrollment_no` varchar(20) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binarybrains`
--

INSERT INTO `binarybrains` (`event_id`, `event_name`, `winner_enrollment_no`, `points`) VALUES
(1, 'Treasure Hunt', '24002171310090', 30),
(2, 'Active Coding', '24002171310003', 25),
(3, 'Battles of Ground VO', '24002171710016', 20);

-- --------------------------------------------------------

--
-- Table structure for table `lfa`
--

CREATE TABLE `lfa` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `winner_enrollment_no` varchar(20) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lfa`
--

INSERT INTO `lfa` (`event_id`, `event_name`, `winner_enrollment_no`, `points`) VALUES
(1, 'Hackathon', '24002171410007', 35),
(2, 'Seavenger Hunt', '24002171310014', 25),
(3, 'Scramble Words', '24002171310090', 20);

-- --------------------------------------------------------

--
-- Table structure for table `ljsc`
--

CREATE TABLE `ljsc` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `winner_enrollment_no` varchar(20) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ljsc`
--

INSERT INTO `ljsc` (`event_id`, `event_name`, `winner_enrollment_no`, `points`) VALUES
(1, 'Lumina Dance', '24002171310014', 15),
(2, 'Lumina Music', '24002171310003', 30),
(3, 'Lumina Drama', '24002171410007', 25),
(4, 'Lumina Mr & Ms LJ', '24002171310090', 40),
(5, 'Lumina Carpadium - Cricket', '24002171710016', 30),
(6, 'Lumina Carpadium - Chess', '24002171310003', 20);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `enrollment_no` varchar(20) NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `points_earned` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `enrollment_no`, `event_name`, `community`, `points_earned`) VALUES
(1, '24002171310090', 'Treasure Hunt', 'binarybrains', 30),
(2, '24002171310003', 'Active Coding', 'binarybrains', 25),
(3, '24002171710016', 'Battles of Ground VO', 'binarybrains', 20),
(4, '24002171410007', 'Hackathon', 'lfa', 35),
(5, '24002171310014', 'Seavenger Hunt', 'lfa', 25),
(6, '24002171310090', 'Scramble Words', 'lfa', 20),
(7, '24002171310014', 'Lumina Dance', 'ljsc', 15),
(8, '24002171310003', 'Lumina Music', 'ljsc', 30),
(9, '24002171410007', 'Lumina Drama', 'ljsc', 25),
(10, '24002171310090', 'Lumina Mr & Ms LJ', 'ljsc', 40),
(11, '24002171710016', 'Lumina Carpadium - Cricket', 'ljsc', 30),
(12, '24002171310003', 'Lumina Carpadium - Chess', 'ljsc', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `enrollment_no` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('student') DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`enrollment_no`, `name`, `role`) VALUES
('24002171310003', 'Anjali Dubey', 'student'),
('24002171310014', 'Buch Manin JwalantBhai', 'student'),
('24002171310090', 'Yuvraj Parmar', 'student'),
('24002171410007', 'Bhavsar Daksh NarendraBhai', 'student'),
('24002171710016', 'Munshi Sibtainhaidar ZahirAhmad', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binarybrains`
--
ALTER TABLE `binarybrains`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `winner_enrollment_no` (`winner_enrollment_no`);

--
-- Indexes for table `lfa`
--
ALTER TABLE `lfa`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `winner_enrollment_no` (`winner_enrollment_no`);

--
-- Indexes for table `ljsc`
--
ALTER TABLE `ljsc`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `winner_enrollment_no` (`winner_enrollment_no`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollment_no` (`enrollment_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binarybrains`
--
ALTER TABLE `binarybrains`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lfa`
--
ALTER TABLE `lfa`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ljsc`
--
ALTER TABLE `ljsc`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binarybrains`
--
ALTER TABLE `binarybrains`
  ADD CONSTRAINT `binarybrains_ibfk_1` FOREIGN KEY (`winner_enrollment_no`) REFERENCES `users` (`enrollment_no`);

--
-- Constraints for table `lfa`
--
ALTER TABLE `lfa`
  ADD CONSTRAINT `lfa_ibfk_1` FOREIGN KEY (`winner_enrollment_no`) REFERENCES `users` (`enrollment_no`);

--
-- Constraints for table `ljsc`
--
ALTER TABLE `ljsc`
  ADD CONSTRAINT `ljsc_ibfk_1` FOREIGN KEY (`winner_enrollment_no`) REFERENCES `users` (`enrollment_no`);

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`enrollment_no`) REFERENCES `users` (`enrollment_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
