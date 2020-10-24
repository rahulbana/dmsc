-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 08:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandid`, `name`, `status`, `created`) VALUES
(1, 'Apple', 1, '2020-09-13 07:25:00'),
(2, 'Samsung', 1, '2020-09-13 07:25:06'),
(3, 'Oneplus', 1, '2020-09-13 07:25:15'),
(4, 'Oppo', 1, '2020-09-13 07:25:21'),
(5, 'Vivo', 1, '2020-09-13 07:25:27'),
(6, 'Realme', 1, '2020-09-13 07:25:33'),
(7, 'Intex', 1, '2020-09-13 07:25:40'),
(8, 'Reebok', 1, '2020-09-13 07:29:36'),
(9, 'Levis', 1, '2020-09-13 07:29:46'),
(10, 'Pantaloons', 1, '2020-09-13 07:30:08'),
(11, 'Peter England', 1, '2020-09-13 07:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `parentid` int(11) DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`parentid`, `categoryid`, `name`, `status`, `created`) VALUES
(NULL, 2, 'Electronics', 1, '2020-09-13 06:58:41'),
(NULL, 3, 'Clothing', 1, '2020-09-13 06:59:38'),
(NULL, 4, 'Shoes', 1, '2020-09-13 07:00:02'),
(2, 5, 'Mobile', 1, '2020-09-13 07:00:42'),
(2, 6, 'Laptop', 1, '2020-09-13 07:00:53'),
(3, 7, 'Kids', 1, '2020-09-13 07:01:52'),
(3, 8, 'Mens', 1, '2020-09-13 07:01:52'),
(3, 9, 'Femals', 1, '2020-09-13 07:02:13'),
(4, 10, 'Casual', 1, '2020-09-13 07:02:41'),
(4, 11, 'Sports', 1, '2020-09-13 07:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currencyid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currencyid`, `name`, `status`, `created`) VALUES
(1, 'INR', 1, '2020-09-13 14:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isprimary` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brandid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `unittype` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `currencyid` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `name`, `brandid`, `categoryid`, `unittype`, `price`, `currencyid`, `status`, `created`) VALUES
(1, 'Mac Book Air', 1, 1, 3, '145000', 1, 1, '2020-09-13 14:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unitid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `disply_name` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unitid`, `name`, `disply_name`, `status`, `created`) VALUES
(1, 'Kilogram', 'Kg', 1, '2020-09-13 07:23:28'),
(2, 'Inches', 'inch', 1, '2020-09-13 07:23:42'),
(3, 'Meter', 'mtr', 1, '2020-09-13 07:23:51'),
(4, 'Pieces', 'pcs', 1, '2020-09-13 07:24:04'),
(5, 'Centimeter', 'cms', 1, '2020-09-13 07:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(16) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `Name`, `status`, `created`, `usertype`) VALUES
(1, 'amansingh', '12345678', NULL, 1, '2020-09-13 07:17:07', 1),
(2, 'testuser1', '12345678', NULL, 1, '2020-10-23 09:34:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertypeid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeid`, `name`, `status`, `created`) VALUES
(1, 'default', 1, '2020-09-13 07:16:00'),
(2, 'Admin', 1, '2020-09-13 07:16:14'),
(3, 'SuperAdmin', 1, '2020-09-13 07:16:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandid`),
  ADD UNIQUE KEY `brands_name_unq` (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currencyid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unitid`),
  ADD UNIQUE KEY `unis_name_unq` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `users_username_unq` (`username`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertypeid`),
  ADD UNIQUE KEY `usertype_name_unq` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currencyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
