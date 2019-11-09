-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2019 at 08:03 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Eid` int(11) NOT NULL AUTO_INCREMENT,
  `Ename` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'employee',
  PRIMARY KEY (`Eid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Eid`, `Ename`, `Phone`, `Password`, `Email`, `usertype`) VALUES
(1, 'Pavitra', 7022809831, 'pavitra', 'pavitranayak832@gmail.com', 'employee'),
(2, 'Keerthan M', 9535864852, 'keerthan', 'keerthan4598@gmail.com', 'Admin'),
(3, 'Pavan', 702280831, 'pavan1234', 'pavan@gmail.com', 'employee'),
(4, 'poojashree', 5456565656, '1234567890', 'pooja@gmail.com', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `Pid` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(60) NOT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'Requirement Analysis',
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `ProjectHead` varchar(60) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Technologies` varchar(100) NOT NULL,
  `Ename` varchar(100) NOT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`Pid`, `Pname`, `Status`, `StartDate`, `EndDate`, `ProjectHead`, `Cname`, `Technologies`, `Ename`) VALUES
(2, 'Pavan', 'software Engineer', '2019-11-29', '2019-11-30', 'jhk', 'jh', 'jhkj', 'pavan'),
(1, 'hgj', 'sdc', '2019-11-21', '2019-11-30', 'gh', 'kjhjk', 'jkhjh', 'pavan'),
(5, 'Image Processing', 'Requirement Analysis', '2019-11-28', '2019-12-07', 'pavitra', 'pavan', 'Neural Network', 'Pavitra'),
(6, 'djfk', 'Requirement Analysis', '2019-11-22', '2019-11-30', 'uhj', 'khh', 'jkg', 'iui'),
(7, 'ksfhv', 'Requirement Analysis', '2019-11-19', '2019-11-30', 'hj', 'kj', 'jh', 'pavitra'),
(8, 'kjad', 'Requirement Analysis', '2019-11-26', '2019-11-30', 'SDJM', 'KN', 'KNM', 'pavitra');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `Resource_type` varchar(100) NOT NULL,
  `Resource_name` varchar(60) NOT NULL,
  `Total_Qty` bigint(30) NOT NULL,
  `Qty_Avai` bigint(30) NOT NULL,
  `Qty_Alloc` bigint(30) NOT NULL,
  `Pid` int(11) NOT NULL,
  KEY `Pid` (`Pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
