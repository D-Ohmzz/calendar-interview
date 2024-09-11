-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2024 at 12:29 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int NOT NULL,
  `eventTitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventLabel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventStartDate` date NOT NULL,
  `eventEndDate` date NOT NULL,
  `allDaySwitch` tinyint DEFAULT '0',
  `eventURL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventGuests` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventLocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eventTitle`, `eventLabel`, `eventStartDate`, `eventEndDate`, `allDaySwitch`, `eventURL`, `eventGuests`, `eventLocation`, `eventDescription`) VALUES
(9, 'Birthday Party', 'Family', '2024-08-05', '2024-08-08', 0, 'www.eventbrite.com', 'Jane Foster', 'Nairobi', 'My birthday party'),
(10, 'Birthday Party', 'Family', '2024-08-05', '2024-08-08', 0, NULL, NULL, NULL, NULL),
(11, 'Party', 'Family', '2024-08-05', '2024-08-08', 1, 'www.eventbrite.com', '', '', ''),
(13, 'greatt', 'Personal', '2024-07-28', '2024-08-06', 0, '', NULL, '', ''),
(14, 'jbbhbj', 'Family', '2024-07-29', '2024-08-26', 0, 'jkbvhcvhvbjnk', NULL, '', ''),
(16, 'Wedding', 'ETC', '2024-08-19', '2024-08-19', 1, 'www.eventbrite.com', NULL, 'Nairobi', 'A wedding'),
(18, 'Teeth ', 'Business', '2024-08-14', '2024-08-14', 1, '', NULL, '', 'Teeth removal at the dentist'),
(19, 'Soccer', 'Personal', '2024-08-16', '2024-08-16', 1, '', NULL, 'Turf', 'Play Soccer'),
(20, 'free', 'Business', '2024-08-05', '2024-08-12', 1, '', NULL, '', ''),
(23, 'sw', 'Business', '2024-08-05', '2024-08-13', 0, '', NULL, '', ''),
(24, 'lt', 'Business', '2024-07-29', '2024-08-05', 0, '', NULL, '', ''),
(25, 'dap', 'ETC', '2024-08-19', '2024-08-20', 0, '', NULL, '', ''),
(26, 'L', 'Business', '2024-08-09', '2024-08-09', 0, '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `country`, `date`) VALUES
(1, 'Douglas omega', 'USA', '2024-08-13'),
(2, 'Karl Max', 'Germany', '2024-05-10'),
(3, 'Karl Maxhggff', 'Germany', '2024-05-10'),
(4, '[Karl Maxhggff]', 'Germany', '2024-05-10'),
(5, '(Karl Maxhggff)', 'Germany', '2024-05-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
