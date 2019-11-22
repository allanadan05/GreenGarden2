-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 05:32 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `carttbl`
--

CREATE TABLE `carttbl` (
  `cartid` int(10) NOT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  `cart` date NOT NULL,
  `expireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commenttbl`
--

CREATE TABLE `commenttbl` (
  `commentid` int(10) NOT NULL,
  `customerID` int(10) DEFAULT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `cusComment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktbl`
--

CREATE TABLE `feedbacktbl` (
  `feedbackid` int(10) NOT NULL,
  `userID` int(10) DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guesstbl`
--

CREATE TABLE `guesstbl` (
  `guessID` int(10) NOT NULL,
  `customername` text,
  `emial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messagingtbl`
--

CREATE TABLE `messagingtbl` (
  `messageID` int(10) DEFAULT NULL,
  `customername` text,
  `customerID` int(10) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsfeedtbl`
--

CREATE TABLE `newsfeedtbl` (
  `newfeedID` int(10) NOT NULL,
  `news` text,
  `newsDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

CREATE TABLE `producttbl` (
  `productid` int(10) NOT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasetbl`
--

CREATE TABLE `purchasetbl` (
  `purchaseid` int(10) NOT NULL,
  `cartID` int(10) DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recoverytbl`
--

CREATE TABLE `recoverytbl` (
  `RECOVERryid` int(10) NOT NULL,
  `RECOVERyEmail` varchar(50) DEFAULT NULL,
  `customername` text,
  `customerID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `userid` int(10) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `userpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`userid`, `Fname`, `Lname`, `Mname`, `userpass`, `email`) VALUES
(1, 'John Riel', 'Taladtad', 'Abad', 'japok123', 'japok@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wishlisttbl`
--

CREATE TABLE `wishlisttbl` (
  `wishid` int(10) NOT NULL,
  `userID` int(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `whishes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carttbl`
--
ALTER TABLE `carttbl`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `commenttbl`
--
ALTER TABLE `commenttbl`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `feedbacktbl`
--
ALTER TABLE `feedbacktbl`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `guesstbl`
--
ALTER TABLE `guesstbl`
  ADD PRIMARY KEY (`guessID`);

--
-- Indexes for table `newsfeedtbl`
--
ALTER TABLE `newsfeedtbl`
  ADD PRIMARY KEY (`newfeedID`);

--
-- Indexes for table `producttbl`
--
ALTER TABLE `producttbl`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchasetbl`
--
ALTER TABLE `purchasetbl`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `recoverytbl`
--
ALTER TABLE `recoverytbl`
  ADD PRIMARY KEY (`RECOVERryid`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `wishlisttbl`
--
ALTER TABLE `wishlisttbl`
  ADD PRIMARY KEY (`wishid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commenttbl`
--
ALTER TABLE `commenttbl`
  MODIFY `commentid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchasetbl`
--
ALTER TABLE `purchasetbl`
  MODIFY `purchaseid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
