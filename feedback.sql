-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2025 at 04:57 PM
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
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feed_back`
--

CREATE TABLE `feed_back` (
  `id` int(11) NOT NULL,
  `initials` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `c1_overall_points` int(11) DEFAULT NULL CHECK (`c1_overall_points` between 1 and 10),
  `c2_abcd_language` char(1) DEFAULT NULL CHECK (`c2_abcd_language` in ('A','B','C','D')),
  `c3_class_control` char(1) DEFAULT NULL CHECK (`c3_class_control` in ('A','B','C','D')),
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed_back`
--

INSERT INTO `feed_back` (`id`, `initials`, `name`, `subject`, `c1_overall_points`, `c2_abcd_language`, `c3_class_control`, `submitted_at`) VALUES
(1, 'JAS', 'Jinal Zala', 'DS', NULL, NULL, NULL, '2025-07-21 14:32:25'),
(2, 'ARP', 'Ankur Patel', 'JAVA', NULL, NULL, NULL, '2025-07-21 14:32:25'),
(3, 'KGB', 'Kamaldeep Bhatia', 'FEE', NULL, NULL, NULL, '2025-07-21 14:32:25'),
(4, 'RMP', 'Anuj Bhat', 'MATHS', NULL, NULL, NULL, '2025-07-21 14:32:25'),
(5, 'KPP', 'Kishan Pala', 'DBMS', NULL, NULL, NULL, '2025-07-21 14:32:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
