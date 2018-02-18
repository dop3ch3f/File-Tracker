-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 02:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filetracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(255) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `date_created`) VALUES
(6, 'Accounting', '2017-06-08'),
(7, 'Admin', '2017-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `file_reference` varchar(30) NOT NULL,
  `file_subject` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `action` varchar(30) NOT NULL,
  `dept_from` varchar(30) NOT NULL,
  `dept_to` varchar(30) NOT NULL,
  `user` varchar(45) NOT NULL,
  `start_page` int(255) NOT NULL,
  `stop_page` int(255) NOT NULL,
  `file_remarks` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL,
  `folioout` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `file_reference`, `file_subject`, `date`, `action`, `dept_from`, `dept_to`, `user`, `start_page`, `stop_page`, `file_remarks`, `status`, `folioout`) VALUES
(50, 'asas', 'sasas', '2017-07-12 05:11:06', 'Outgoing/Creation', 'REGISTRY', 'Admin', 'Registry Personell', 1, 1, 'ssasas', 'Active', ''),
(51, 'assascxcx', 'xcxcxc', '2017-07-12 05:11:44', 'Outgoing/Creation', 'REGISTRY', 'Admin', 'Registry Personell', 1, 4, 'gdgfdb', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `incoming`
--

CREATE TABLE `incoming` (
  `id` int(255) NOT NULL,
  `file_reference` varchar(30) NOT NULL,
  `file_subject` varchar(30) NOT NULL,
  `dept_from` varchar(30) NOT NULL,
  `dept_to` varchar(30) NOT NULL,
  `user_from` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `start_page` int(255) NOT NULL,
  `stop_page` int(255) NOT NULL,
  `file_remarks` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incoming`
--

INSERT INTO `incoming` (`id`, `file_reference`, `file_subject`, `dept_from`, `dept_to`, `user_from`, `date`, `start_page`, `stop_page`, `file_remarks`, `status`) VALUES
(16, 'asas', 'sasas', 'REGISTRY', 'Admin', 'Registry Personell', '2017-07-12 05:11:06', 1, 1, 'ssasas', 'Active'),
(17, 'assascxcx', 'xcxcxc', 'REGISTRY', 'Admin', 'Registry Personell', '2017-07-12 05:11:44', 1, 4, 'gdgfdb', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `outgoing`
--

CREATE TABLE `outgoing` (
  `id` int(255) NOT NULL,
  `file_reference` varchar(30) NOT NULL,
  `file_subject` varchar(30) NOT NULL,
  `start_page` int(255) NOT NULL,
  `stop_page` int(255) NOT NULL,
  `file_remarks` varchar(300) NOT NULL,
  `dept_from` varchar(30) NOT NULL,
  `dept_to` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `folioout` varchar(3000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_registered` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `department`, `password`, `date_registered`, `status`) VALUES
(6, '', '', 'Admin', '74be16979710d4c4e7c6647856088456', '2017-06-08', 'Active'),
(7, 'Nnadi Bibian', 'Nnadi.Bibian@gmail.com', 'Admin', '2adc34a87f838bf20f1ad82587eff811', '2017-06-08', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incoming`
--
ALTER TABLE `incoming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoing`
--
ALTER TABLE `outgoing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `incoming`
--
ALTER TABLE `incoming`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `outgoing`
--
ALTER TABLE `outgoing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
