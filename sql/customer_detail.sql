-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 10:27 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer detail`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_det`
--

CREATE TABLE `cust_det` (
  `sno` int(10) NOT NULL COMMENT 'Serial Number',
  `name` varchar(50) NOT NULL COMMENT 'Name of the Customer',
  `Email` varchar(50) NOT NULL COMMENT 'Customer email',
  `Phone No` varchar(12) NOT NULL COMMENT 'Phone Number',
  `Balance` int(20) NOT NULL COMMENT 'Balance in the account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_det`
--

INSERT INTO `cust_det` (`sno`, `name`, `Email`, `Phone No`, `Balance`) VALUES
(1, 'Adhi', 'adhi1211@gmail.com', '9875643210', 5000000),
(2, 'Samantha', 'samsam11@yahoo.com', '6587945632', 569840),
(3, 'Sasi Kumar', 'sasikumar@gmail.com', '7896541230', 87860),
(4, 'Trisha', 'trisha@outlook.com', '6549871230', 7500),
(5, 'Mohammed Ali', 'mohammedali@gmail.com', '7896654123', 5000),
(6, 'Yamini Sri Devi', 'minidevi@yahoo.com', '8745321900', 33000),
(7, 'Uma', 'uma@gmail.com', '7789456123', 35000),
(8, 'Rajesh', 'rajesh@yahoo.com', '8879654132', 50000),
(9, 'Grace', 'graceaunty@gmail.com', '665412397', 500),
(10, 'Thomas Shelby', 'Shelbybusiness@gmail.com', '999999991', 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `trans_his`
--

CREATE TABLE `trans_his` (
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_det`
--
ALTER TABLE `cust_det`
  ADD PRIMARY KEY (`sno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
