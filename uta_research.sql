-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 06:45 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uta_research`
--

-- --------------------------------------------------------

--
-- Table structure for table `grants`
--

CREATE TABLE `grants` (
  `grant_id` int(10) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `faculty_name` varchar(20) NOT NULL,
  `amount_granted` float NOT NULL,
  `organization` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grants`
--

INSERT INTO `grants` (`grant_id`, `project_name`, `faculty_name`, `amount_granted`, `organization`) VALUES
(201, '501', '5', 10000, 'Microsoft'),
(202, '502', '6', 50000, 'Lockheed Martin');

-- --------------------------------------------------------

--
-- Table structure for table `research_labs`
--

CREATE TABLE `research_labs` (
  `lab_id` int(10) NOT NULL,
  `lab_name` varchar(30) NOT NULL,
  `director` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_labs`
--

INSERT INTO `research_labs` (`lab_id`, `lab_name`, `director`, `email`, `website`, `phone_no`, `address`) VALUES
(101, 'UTARI Lab', 'Mickey McCabe', 'mmcabe@uta.edu', 'www.uta.edu/utari/', '817-272-5900', 'UTA Blvd Texas,76118'),
(102, 'DBX Lab', 'Gautam Das', 'gdas@cse.uta.edu', 'http:dbxlab.uta.edu/', '8172727595', 'ERB 640, Texas 76013');

-- --------------------------------------------------------

--
-- Table structure for table `research_projects`
--

CREATE TABLE `research_projects` (
  `proj_id` int(10) NOT NULL,
  `proj_name` varchar(100) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `faculty_name` varchar(20) NOT NULL,
  `uta_id` varchar(20) NOT NULL,
  `technology` varchar(30) NOT NULL,
  `area_of_research` varchar(50) NOT NULL,
  `lab_name` varchar(60) NOT NULL,
  `grants` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_projects`
--

INSERT INTO `research_projects` (`proj_id`, `proj_name`, `stud_name`, `faculty_name`, `uta_id`, `technology`, `area_of_research`, `lab_name`, `grants`) VALUES
(501, 'Application of Machine Learning in Sleep Apnea Diagnosis', 'Sanjana ', 'Gautam Das', '3', 'Python, Kmeans Clustering', 'Machine Learning', '102', '10000$'),
(502, 'Autonomous navigation and path planning', 'Shwetha', 'Aditya ', '4', 'Unmanned Vehicle Systems', 'Automation & Intelligent Systems', '101', '50000$');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `role_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_description`) VALUES
(1, 'admin', 'Admin maintaining research'),
(2, 'Student', 'Student\'s seeking research'),
(3, 'Faculty', 'Faculty doing research');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `mav_email` varchar(20) NOT NULL,
  `uta_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `mobile_no`, `mav_email`, `uta_id`, `password`, `user_role`) VALUES
(1, 'Priyanka', 'Gowda', '623456908', 'priyanka@mavsuta.edu', '1001578962', 'password', 'Admin'),
(2, 'Elizabeth', 'Diaz', '5678901234', 'mattew@mavs.uta.edu', '1001895637', 'password', 'Faculty'),
(3, 'Sanjana', '475558963', '1234567890', 'sanajan@mavs.uta', '100181145678', 'password', 'Student'),
(4, 'Shwetha', 'Suresha', '6825568250', 'shwetha@mavs.uta.edu', '1001578930', 'password1', 'Student'),
(5, 'Gautam', 'Das', '8172727595', 'gdas@cse.uta.edu', '5555555555', 'password5', 'Faculty'),
(6, 'Aditya', 'N Das', '8956745212', 'aditya.das@uta.edu', '6666666666', 'password6', 'Faculty'),
(10, 'Priyanka', 'Chikkanna Ram Murthy', '8172722011', 'kanthipriya11@gmail.', '652651', '123456', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`grant_id`);

--
-- Indexes for table `research_labs`
--
ALTER TABLE `research_labs`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `research_projects`
--
ALTER TABLE `research_projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
