-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 10:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lions_blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `donate_tbl`
--

CREATE TABLE `donate_tbl` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate_tbl`
--

INSERT INTO `donate_tbl` (`id`, `name`, `age`, `gender`, `phone`, `email`, `blood_group`) VALUES
(1, 'gowthami', '22', 'female', '887321887', 'gowthamireddy245@gmail.com', 'amarokSocity'),
(2, 'gowthami', '22', 'female', '887321887', 'gowthamireddy245@gmail.com', 'amarokSocity'),
(3, 'gowthami', '22', 'female', '887321887', 'gowthamireddy245@gmail.com', 'amarokSocity');

-- --------------------------------------------------------

--
-- Table structure for table `oraganise_camp`
--

CREATE TABLE `oraganise_camp` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `organise` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `e_donars` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oraganise_camp`
--

INSERT INTO `oraganise_camp` (`id`, `name`, `organise`, `phone`, `email`, `location`, `e_donars`) VALUES
(1, 'gowthami9', 'test', '43252353', 'hinduharika@gmail.com', 'nellore', '5');

-- --------------------------------------------------------

--
-- Table structure for table `platelet`
--

CREATE TABLE `platelet` (
  `id` int(11) NOT NULL,
  `donor_name` varchar(250) NOT NULL,
  `patient_name` varchar(250) NOT NULL,
  `host_name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platelet`
--

INSERT INTO `platelet` (`id`, `donor_name`, `patient_name`, `host_name`, `phone`, `email`, `blood_group`) VALUES
(1, 'test', 'test', 'sample', '43252353', 'hinduharika@gmail.com', 'Blood Group B-');

-- --------------------------------------------------------

--
-- Table structure for table `want_blood_tbl`
--

CREATE TABLE `want_blood_tbl` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(250) NOT NULL,
  `h_n_name` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `component` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `want_blood_tbl`
--

INSERT INTO `want_blood_tbl` (`id`, `patient_name`, `h_n_name`, `age`, `gender`, `phone`, `email`, `blood_group`, `component`) VALUES
(1, 'test', 'test', '22', 'female', '43252353', 'hinduharika@gmail.com', 'Blood Group AB-', 'Component PRBC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donate_tbl`
--
ALTER TABLE `donate_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oraganise_camp`
--
ALTER TABLE `oraganise_camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platelet`
--
ALTER TABLE `platelet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `want_blood_tbl`
--
ALTER TABLE `want_blood_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donate_tbl`
--
ALTER TABLE `donate_tbl`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oraganise_camp`
--
ALTER TABLE `oraganise_camp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `platelet`
--
ALTER TABLE `platelet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `want_blood_tbl`
--
ALTER TABLE `want_blood_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
