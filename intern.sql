-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2022 at 09:51 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `intern`
--

-- --------------------------------------------------------

--
-- Table structure for table `private`
--

CREATE TABLE IF NOT EXISTS `private` (
  `id` int(11) NOT NULL,
  `ps` varchar(25) DEFAULT NULL,
  `ct` varchar(100) DEFAULT NULL,
  `complaint` varchar(500) DEFAULT NULL,
  `cl` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `station` varchar(50) DEFAULT NULL,
  `chat` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `private`
--

INSERT INTO `private` (`id`, `ps`, `ct`, `complaint`, `cl`, `time`, `status`, `station`, `chat`) VALUES
(1, '1234', 'Missing cases', 'I miss my scooter near Temple', 'Gandhipuram', '2022-08-26 10:14:43', 'Complaint Transfered', 'RC Station', 'S: When you lost your Scooter?'),
(2, '9876', 'murder', 'I saw a Murder near my Shop', 'Saibaba colony', '2022-08-26 10:11:46', 'Complaint Transfered', 'R2 Station', 'S: When did you see the Murder?\r\nU: Around 4 PM. '),
(3, 'pass', 'suicide', 'Neighbor Boy Commits Suicide Yesterday', 'Ukkadam', '2022-08-30 09:14:42', 'Complaint Transfered', 'R2 Station', 'S:When you seen? \r\nU: Morning 6 Am.');

-- --------------------------------------------------------

--
-- Table structure for table `public`
--

CREATE TABLE IF NOT EXISTS `public` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usn` varchar(25) DEFAULT NULL,
  `mob_no` decimal(10,0) DEFAULT NULL,
  `complaint` varchar(500) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public`
--

INSERT INTO `public` (`date`, `usn`, `mob_no`, `complaint`, `loc`) VALUES
('2022-08-30 09:09:42', 'swetha@gmail.com', '8097654321', 'Heavy Traffic', 'Gandhipuram');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Station_name` varchar(100) DEFAULT NULL,
  `Station_ID` varchar(25) DEFAULT NULL,
  `Pincode` decimal(10,0) DEFAULT NULL,
  `Telephone_No` decimal(10,0) DEFAULT NULL,
  `Contact_No` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`Email`, `Password`, `Address`, `Station_name`, `Station_ID`, `Pincode`, `Telephone_No`, `Contact_No`) VALUES
('prabha@gmail.com', '1234', 'South Street', 'RC Station', 'RC 121', '641011', '144237', '9087654321'),
('priya@gmail.com', '4567', 'West Street', 'R2 Station', 'R2 121', '642101', '144678', '8097654321'),
('priya@gmail.com', '3456', 'South Street', 'RC Station', 'RC 121', '678555', '236493', '9745018787'),
('prabha@gmail.com', '9876', 'West Street', 'R2 Station', 'R2 121', '678555', '236493', '9745018787'),
('Keerthana@gmail.com', '8888', 'South Street', 'R2 Station', 'RC 121', '678555', '236493', '9745018787');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Phone_No` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `Password`, `Address`, `Email`, `Phone_No`) VALUES
('Swetha', '1234', 'Chennai', 'swetha@gmail.com', '9087654321'),
('Prabha', '1234', 'CBE', 'prabha@gmail.com', '9745018787'),
('Prabha', '1234', 'CBE', 'prabha@gmail.com', '9745018787'),
('Prabha', '1234', 'CBE', 'prabha@gmail.com', '9745018787'),
('Swetha', '1234', 'CBE', 'swetha@gmail.com', '9745018787'),
('swetha@gmail.com', '1234', 'CBE', 'swetha@gmail.com', '9745018787'),
('swetha@gmail.com', '1234', 'CBE', 'swetha@gmail.com', '9745018787');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
