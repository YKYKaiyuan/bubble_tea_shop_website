-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 09:25 PM
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
-- Database: `cpsc304db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicantforfranchising`
--

CREATE TABLE `applicantforfranchising` (
  `A_ID` int(11) NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `PersonalStatement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicantforfranchising`
--

INSERT INTO `applicantforfranchising` (`A_ID`, `Name`, `Phone`, `PersonalStatement`) VALUES
(1, 'Amy Smith', 6040000001, NULL),
(2, 'John Lee', 6040000002, 'Quick learner; Active student leader; National Honors Society officer'),
(3, 'Michael Brown', 6040000003, NULL),
(4, 'Joanna Wilson', 6040000004, 'Known for building and maintaining productive client relationships. Great communication skills.'),
(5, 'Kimberly Kwan', 6040000005, '2019-2020 Boba Tea Company. 2020-2021 Subway.');

-- --------------------------------------------------------

--
-- Table structure for table `bubbleteashop`
--

CREATE TABLE `bubbleteashop` (
  `Location` char(75) NOT NULL,
  `PhoneNumber` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bubbleteashop`
--

INSERT INTO `bubbleteashop` (`Location`, `PhoneNumber`) VALUES
('1369 W Broadway, Vancouver', 7780000000),
('1527 Main Mall, Vancouver', 7780000000),
('3597 Canada Way, Burnaby', 7780000000),
('6198 No. 3 Rd, Richmond', 7780000000),
('7328 Macdonald St, Vancouver', 7780000000);

-- --------------------------------------------------------

--
-- Table structure for table `contain`
--

CREATE TABLE `contain` (
  `R_ID` int(11) NOT NULL,
  `I_Name` char(25) NOT NULL,
  `Quantity` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contain`
--

INSERT INTO `contain` (`R_ID`, `I_Name`, `Quantity`) VALUES
(1, 'Black Tea', '350 g'),
(1, 'Milk', '350 g'),
(3, 'Black Tea', '300 g'),
(3, 'Milk', '400 g'),
(3, 'Ovaltine', '3 tbsp');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_ID` int(11) NOT NULL,
  `Name` char(50) NOT NULL,
  `Birthdate` date DEFAULT NULL,
  `PhoneNumber` bigint(20) NOT NULL,
  `Address` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `Name`, `Birthdate`, `PhoneNumber`, `Address`) VALUES
(1, 'Zhang', '2000-01-01', 7780000001, '122 Walter Hardwick Ave 305 Vancouver BC V5Y 0C9, Vancouver, British Columbia'),
(2, 'Lee', '2000-02-02', 7780000002, '3308 Ash St Vancouver BC V5Z 3E3, Vancouver, British Columbia'),
(3, 'Wong', '2000-03-03', 7780000003, '2485 Broadway W 414 Vancouver BC V6K 2E8, Vancouver, British Columbia'),
(4, 'Zhao', '2000-04-04', 7780000004, '275 28th Ave E Vancouver BC V5V 2M5, Vancouver, British Columbia'),
(5, 'Sun', '2000-05-05', 7780000005, '106 588 45th Ave W Vancouver BC V5Z 4S3, Vancouver, British Columbia');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman`
--

CREATE TABLE `deliveryman` (
  `Location` char(75) NOT NULL,
  `DM_ID` int(11) NOT NULL,
  `Name` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryman`
--

INSERT INTO `deliveryman` (`Location`, `DM_ID`, `Name`) VALUES
('1527 Main Mall, Vancouver', 1, 'Jack Li'),
('1527 Main Mall, Vancouver', 2, 'John Chen'),
('1527 Main Mall, Vancouver', 3, 'Amy Brown'),
('1369 W Broadway, Vancouver', 1, 'John Jones'),
('1369 W Broadway, Vancouver', 2, 'Krystal Brown');

-- --------------------------------------------------------

--
-- Table structure for table `deliverystatus`
--

CREATE TABLE `deliverystatus` (
  `DS_ID` int(11) NOT NULL,
  `CurrentStatus` char(25) DEFAULT NULL,
  `EstimateTime` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverystatus`
--

INSERT INTO `deliverystatus` (`DS_ID`, `CurrentStatus`, `EstimateTime`) VALUES
(1, 'Preparing', '20 min'),
(2, 'Preparing', '20 min'),
(3, 'Preparing', '20 min'),
(4, 'En Route', '13 min'),
(5, 'En Route', '13 min');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `D_Name` char(50) NOT NULL,
  `Type` char(25) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`D_Name`, `Type`, `Price`) VALUES
('Ceylon Milk Tea', 'Milk Tea Series', 4.99),
('Earl Grey Tea', 'Original Taste Tea Series', 3.49),
('Jasmine Green Tea', 'Original Taste Tea Series', 3.49),
('Lemon Black Tea', 'Fruit Tea Series', 4.49),
('Lemon Yakult Tea', 'Fruit Tea Series', 4.49),
('Milk Tea', 'Milk Tea Series', 4.99),
('Old Fashioned Black Tea', 'Original Taste Tea Series', 3.49),
('Oolong Tea', 'Original Taste Tea Series', 3.79),
('Orange Jasmine Green Tea', 'Fruit Tea Series', 4.79),
('Ovaltine Milk Tea', 'Milk Tea Series', 5.49),
('Passion Fruit Green Tea', 'Fruit Tea Series', 4.79),
('Plum Lemon Tea', 'Fruit Tea Series', 4.49),
('Rose Milk Tea', 'Milk Tea Series', 5.49),
('Tie Kuan Yin Milk Tea', 'Milk Tea Series', 5.49),
('White Tea', 'Original Taste Tea Series', 3.79);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_ID` int(11) NOT NULL,
  `Location` char(75) NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `JobTitle` char(25) DEFAULT NULL,
  `Salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_ID`, `Location`, `Name`, `JobTitle`, `Salary`) VALUES
(1, '1527 Main Mall, Vancouver', 'Anna Choi', 'Brista', 15.85),
(2, '1369 W Broadway, Vancouver', 'Summer Yu', 'Manager', 20.83),
(3, '7328 Macdonald St, Vancouver', 'Janice Zhen', 'Cashier', 14.5),
(4, '3597 Canada Way, Burnaby', 'Cathy Blake', 'Brista', 15.85),
(5, '6198 No. 3 Rd, Richmond', 'Jack Smith', 'Brista', 15.85);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `I_Name` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`I_Name`) VALUES
('Black Tea'),
('Honey'),
('Milk'),
('Ovaltine'),
('Rose Syrup');

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE `make` (
  `Location` char(75) NOT NULL,
  `E_ID` int(11) NOT NULL,
  `D_Name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`Location`, `E_ID`, `D_Name`) VALUES
('1527 Main Mall, Vancouver', 1, 'Plum Lemon Tea'),
('1527 Main Mall, Vancouver', 1, 'Rose Milk Tea'),
('3597 Canada Way, Burnaby', 4, 'Ovaltine Milk Tea'),
('6198 No. 3 Rd, Richmond', 5, 'Earl Grey Tea'),
('6198 No. 3 Rd, Richmond', 5, 'Jasmine Green Tea');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` bigint(20) NOT NULL,
  `PhoneNumber` bigint(20) DEFAULT NULL,
  `D_Name` char(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `PhoneNumber`, `D_Name`, `Quantity`, `Date`) VALUES
(615193000, 7780000001, 'Milk Tea', 3, '2000-02-03'),
(615193001, 7780000001, 'Old Fashioned Black Tea', 3, '2000-02-02'),
(615193002, 7780000001, 'Oolong Tea', 2, '2000-02-04'),
(615193003, 7780000002, 'Passion Fruit Green Tea', 1, '2000-02-05'),
(615193004, 7780000003, 'Rose Milk Tea', 5, '2000-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `T_Name` char(25) NOT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`T_Name`, `Price`) VALUES
('Aloe', 0.75),
('Coconut Jelly', 0.5),
('Grass Jelly', 0.5),
('Pearl', 0.75),
('Pudding', 1);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `C_ID` int(11) NOT NULL,
  `DS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`C_ID`, `DS_ID`) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 5),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `Location` char(75) NOT NULL,
  `DM_ID` int(11) NOT NULL,
  `DS_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`Location`, `DM_ID`, `DS_ID`) VALUES
('1369 W Broadway, Vancouver', 4, 4),
('1369 W Broadway, Vancouver', 5, 5),
('1527 Main Mall, Vancouver', 1, 1),
('1527 Main Mall, Vancouver', 2, 2),
('1527 Main Mall, Vancouver', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `userecipe`
--

CREATE TABLE `userecipe` (
  `R_ID` int(11) NOT NULL,
  `D_Name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userecipe`
--

INSERT INTO `userecipe` (`R_ID`, `D_Name`) VALUES
(5, 'Ceylon Milk Tea'),
(1, 'Milk Tea'),
(3, 'Ovaltine Milk Tea'),
(2, 'Rose Milk Tea'),
(4, 'Tie Kuan Yin Milk Tea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicantforfranchising`
--
ALTER TABLE `applicantforfranchising`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `bubbleteashop`
--
ALTER TABLE `bubbleteashop`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`R_ID`,`I_Name`),
  ADD KEY `I_Name` (`I_Name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_ID`),
  ADD UNIQUE KEY `PhoneNumber` (`PhoneNumber`);

--
-- Indexes for table `deliveryman`
--
ALTER TABLE `deliveryman`
  ADD PRIMARY KEY (`Location`,`DM_ID`);

--
-- Indexes for table `deliverystatus`
--
ALTER TABLE `deliverystatus`
  ADD PRIMARY KEY (`DS_ID`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`D_Name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_ID`,`Location`),
  ADD KEY `Location` (`Location`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`I_Name`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`Location`,`E_ID`,`D_Name`),
  ADD KEY `D_Name` (`D_Name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `PhoneNumber` (`PhoneNumber`),
  ADD KEY `D_Name` (`D_Name`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`T_Name`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`C_ID`,`DS_ID`),
  ADD KEY `DS_ID` (`DS_ID`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`Location`,`DM_ID`,`DS_ID`),
  ADD KEY `DM_ID` (`DM_ID`),
  ADD KEY `DS_ID` (`DS_ID`);

--
-- Indexes for table `userecipe`
--
ALTER TABLE `userecipe`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `D_Name` (`D_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicantforfranchising`
--
ALTER TABLE `applicantforfranchising`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveryman`
--
ALTER TABLE `deliveryman`
  MODIFY `DM_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverystatus`
--
ALTER TABLE `deliverystatus`
  MODIFY `DS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userecipe`
--
ALTER TABLE `userecipe`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `userecipe` (`R_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`I_Name`) REFERENCES `ingredient` (`I_Name`) ON DELETE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `bubbleteashop` (`Location`) ON DELETE CASCADE;

--
-- Constraints for table `make`
--
ALTER TABLE `make`
  ADD CONSTRAINT `make_ibfk_1` FOREIGN KEY (`Location`,`E_ID`) REFERENCES `employee` (`Location`, `E_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `make_ibfk_2` FOREIGN KEY (`D_Name`) REFERENCES `drink` (`D_Name`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `customer` (`PhoneNumber`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`D_Name`) REFERENCES `drink` (`D_Name`) ON DELETE CASCADE;

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `track_ibfk_2` FOREIGN KEY (`DS_ID`) REFERENCES `deliverystatus` (`DS_ID`) ON DELETE CASCADE;

--
-- Constraints for table `userecipe`
--
ALTER TABLE `userecipe`
  ADD CONSTRAINT `userecipe_ibfk_1` FOREIGN KEY (`D_Name`) REFERENCES `drink` (`D_Name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
