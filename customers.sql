-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 09:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer details`
--

CREATE TABLE `customer details` (
  `CustName` char(50) NOT NULL,
  `CustId` int(40) NOT NULL,
  `CustAddress` varchar(40) NOT NULL,
  `CustTel` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer details`
--

INSERT INTO `customer details` (`CustName`, `CustId`, `CustAddress`, `CustTel`) VALUES
('Ben Kimani', 1, '6456 Nbi', 735764532),
('Linner Serem', 2, '6342 Nyeri', 721345690),
('Roy Hopkins', 3, '8935 Ksm', 720674532),
('Harriet Slim Patel', 4, '5463 Msa', 733564321),
('Ahmed Yusuf', 5, '8345 Kco', 5243765);

-- --------------------------------------------------------

--
-- Table structure for table `supply details`
--

CREATE TABLE `supply details` (
  `CustId` int(11) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `ItemNo` int(40) NOT NULL,
  `SupplyDate` date NOT NULL,
  `ItemQty` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supply details`
--

INSERT INTO `supply details` (`CustId`, `ItemName`, `ItemNo`, `SupplyDate`, `ItemQty`) VALUES
(1, 'Fridges', 10, '0000-00-00', 50),
(2, 'Laptops', 12, '0000-00-00', 80),
(3, 'Televisions', 15, '0000-00-00', 150),
(4, 'Gas Cookers', 17, '0000-00-00', 200),
(5, 'Radios', 19, '0000-00-00', 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer details`
--
ALTER TABLE `customer details`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `supply details`
--
ALTER TABLE `supply details`
  ADD PRIMARY KEY (`CustId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer details`
--
ALTER TABLE `customer details`
  ADD CONSTRAINT `customer details_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `supply details` (`CustId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
