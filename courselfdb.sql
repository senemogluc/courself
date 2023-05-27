-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 10:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courselfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `ID` int(11) NOT NULL,
  `CName` varchar(225) DEFAULT NULL,
  `Price` varchar(225) DEFAULT NULL,
  `numOfStudents` int(11) DEFAULT NULL,
  `lvl` enum('Beginner','Intermediate','High Level') DEFAULT NULL,
  `Duration` varchar(225) DEFAULT NULL,
  `Category` enum('Programming','Finance','Business','Design') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `CName`, `Price`, `numOfStudents`, `lvl`, `Duration`, `Category`) VALUES
(1, 'Building Full-Stack Apps with React and Spring', '15', 24493, 'Intermediate', '01:23:00', 'Programming'),
(2, 'Introduction to Data Structures & Algorithms in Java', '20', 133667, 'Intermediate', '04:56:00', 'Programming'),
(3, 'Sales Skills Mastery - An Immediate Increase In Your Results', '49.99', 7999, 'Beginner', '01:23:00', 'Business'),
(4, 'PHP for Beginners - Become a PHP Master', '0', 43532, 'Beginner', '01:36:00', 'Programming'),
(5, 'UX & Web Design Master Course: Strategy, Design, Development', '49.99', 144805, 'High Level', '18:00:00', 'Design'),
(6, 'The Complete Introduction To Accounting and Finance', '39.99', 12214, 'Beginner', '07:00:00', 'Finance'),
(7, 'Business Analysis: Working with Use Cases', '29.99', 23268, 'Intermediate', '2:00:00', 'Finance'),
(8, 'Option Spreads and Credit Spreads Bundle', '429.99', 8695, 'High Level', '04:30:00', 'Finance'),
(9, 'How to Budget and Forecast for Your Business', '49.99', 1203, 'Beginner', '02:00:00', 'Business'),
(10, 'Customer Service: How to sell more without advertising', '49.99', 6095, 'Beginner', '01:25:00', 'Business'),
(11, 'Become a UX Designer | Learn the Skills & Get the Job', '24.99', 14229, 'Beginner', '05:27:00', 'Design'),
(12, 'Methods of Design Synthesis: Research to Product Innovation', '399.99', 1186, 'High Level', '01:30:00', 'Design');

-- --------------------------------------------------------

--
-- Table structure for table `gives`
--

DROP TABLE IF EXISTS `gives`;
CREATE TABLE `gives` (
  `CourseID` int(11) DEFAULT NULL,
  `InstructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gives`
--

INSERT INTO `gives` (`CourseID`, `InstructorID`) VALUES
(2, 1),
(3, 1),
(1, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
CREATE TABLE `instructors` (
  `ID` int(11) NOT NULL,
  `IName` varchar(225) DEFAULT NULL,
  `RegDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`ID`, `IName`, `RegDate`) VALUES
(1, 'Raghavendra Dixit', '2023-01-04'),
(2, 'Emmanuel Henri', '2023-01-03'),
(3, 'Allen Holub', '2022-11-02'),
(4, 'Manfred Werner', '2022-11-03'),
(5, 'Len Smith', '2022-10-06'),
(6, 'Don Hussey', '2022-09-01'),
(7, 'Hari Swamanathan', '2022-07-27'),
(8, 'Tim Berry', '2022-12-24'),
(9, 'Miles Furnell', '2022-08-10'),
(10, 'Brendan Bolton-Klinger', '2022-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(225) DEFAULT NULL,
  `RegDate` date DEFAULT NULL,
  `Mail` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `FullName`, `RegDate`, `Mail`) VALUES
(1, 'Cagin Senemoglu', '2022-12-01', 'senemogluc@mef.edu.tr'),
(2, 'Selin Ucyildiz', '2022-12-02', 'ucyildizs@mef.edu.tr'),
(3, 'Bilge Kilic', '2022-09-07', 'kilicb@mef.edu.tr'),
(4, 'Selen Tuana Ozhazday', '2022-08-30', 'ozhazdayt@mef.edu.tr'),
(5, 'Enes Yildiz', '2022-08-22', 'yildize@mef.edu.tr');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
CREATE TABLE `takes` (
  `StudentID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `EnrollDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`StudentID`, `CourseID`, `EnrollDate`) VALUES
(1, 1, '2023-01-02'),
(1, 2, '2023-01-02'),
(2, 3, '2023-01-03'),
(1, 11, '2022-10-10'),
(3, 2, '2022-10-12'),
(3, 6, '2022-11-15'),
(4, 12, '2022-09-05'),
(4, 9, '2022-08-15'),
(1, 6, '2022-08-21'),
(1, 8, '2021-02-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gives`
--
ALTER TABLE `gives`
  ADD KEY `InstructorID` (`InstructorID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gives`
--
ALTER TABLE `gives`
  ADD CONSTRAINT `gives_ibfk_1` FOREIGN KEY (`InstructorID`) REFERENCES `instructors` (`ID`),
  ADD CONSTRAINT `gives_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`ID`);

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`ID`),
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
