-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `typroject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uid` int(11) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uid`, `uname`, `upass`) VALUES
(0, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(1, 'anshu', 'e2fc714c4727ee9395f324cd2e7f331f'),
(1, 'anshu', 'e2fc714c4727ee9395f324cd2e7f331f');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `subtotal` varchar(10) DEFAULT NULL,
  `gst` varchar(10) DEFAULT NULL,
  `grandtotal` varchar(10) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `cuname` varchar(30) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `subtotal`, `gst`, `grandtotal`, `billdate`, `cuname`, `ostatus`) VALUES
(1, '806', '145.08', '951.08', '0000-00-00', 'mohan123', 'In Transit'),
(2, '256', '46.08', '302.08', '2022-05-24', 'rohan123', 'In Transit'),
(3, '200', '36', '236', '2022-05-24', 'mohan123', 'Ordered'),
(4, '100', '18', '118', '2022-05-24', 'mohan123', 'Ordered'),
(5, '280', '50.4', '330.4', '2022-05-24', 'mohan123', 'Ordered'),
(6, '150', '27', '177', '2022-05-24', 'mohan123', 'Ordered'),
(7, '256', '46.08', '302.08', '2024-04-01', 'Anaswer', 'In Transit'),
(8, '256', '46.08', '302.08', '2024-04-01', 'Anaswer', 'In Transit'),
(9, '80000', '14400', '94400', '2024-04-01', 'Anaswer', 'In Transit'),
(10, '75000', '13500', '88500', '2024-04-08', 'Anaswer', 'Ordered'),
(11, '20000', '3600', '23600', '2024-04-08', 'gb1510', 'Ordered'),
(12, '35000', '6300', '41300', '2024-04-08', 'VB', 'Ordered'),
(13, '40000', '7200', '47200', '2024-04-08', 'Anaswer', 'Ordered');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cuname` varchar(30) NOT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cmob` varchar(15) DEFAULT NULL,
  `cadd` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `cemail` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuname`, `cpass`, `cname`, `cmob`, `cadd`, `pincode`, `cemail`) VALUES
('Anaswer', 'e2fc714c4727ee9395f324cd2e7f331f', 'Anaswer', '7058972420', 'Pune', '411046', 'Anaswer@gmail.com'),
('gb1510', '827ccb0eea8a706c4c34a16891f84e7b', 'gb', '9865431213', 'Flat no:10,House no:123,Real apartment,Lane no:3,\r\nSukhsagar nagar, Katraj,Pune 46', '411046', 'aditya1@gmail.com'),
('VB', 'c5fe25896e49ddfe996db7508cf00534', 'vansh', '7796580851', 'Katraj', '411043', 'vb1513@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `pprice` varchar(10) DEFAULT NULL,
  `pdesc` text DEFAULT NULL,
  `pqty` int(11) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `pcat` varchar(40) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pprice`, `pdesc`, `pqty`, `pimage`, `pcat`, `uid`) VALUES
(1, 'Siberian Husky', '40000', 'The Siberian Husky is a medium-sized working sled dog breed. The breed belongs \r\nto the Spitz genetic family. It is recognizable by its thickly furred double coat, erect\r\n triangular ears, and distinctive markings, and is smaller than the similar-looking Alaskan \r\n Malamute.\r\nHeight:15 inches\r\nWeight:4 kg\r\nGender:Male\r\nAge:1 Month\r\nPrice:40,000', 8, 'http://localhost/typroj/uploads/1653835063siberian_husky.jpg', 'Dog', 1),
(2, 'Saint Bernard', '35000', 'The Saint Bernard doesn’t want to wear a brandy keg around his neck, but you might be able to train him to bring you a beer. With a heart that’s as kind as his body is big, this lovable giant makes a great family friend and protector. He is sweet, sometimes shy, and often stubborn.\r\nHeight:16 inche\r\nWeight:5 kg\r\nGender:Male\r\nAge:3 Weeks\r\nPrice:35,000', 10, 'http://localhost/typroj/uploads/1653922896saint_bernard.jpg', 'D', 1),
(3, 'German Shepherd', '20000', 'The German shepherd dog is a herding breed known for its courage, loyalty and guarding instincts. This breed makes an excellent guard dog, police dog, military dog, guide dog for the blind and search and rescue dog. For many families, the German shepherd is also a treasured family pet.\r\nHeight:12 inches\r\nWeight:6 kg\r\nGender:Female\r\nAge:1 Month\r\nPrice:20,000rs', 5, 'http://localhost/typroj/uploads/1653491251german_shepherd.jpg', 'Dog', 1),
(4, 'Golden Retriever', '35000', 'The Golden Retriever is a Scottish breed of retriever dog of medium size. It is characterised by a gentle and affectionate nature and a striking golden coat. It is commonly kept as a pet and is among the most frequently registered breeds in several Western countries\r\nHeight:7 inches\r\nWeight:3 kg\r\nGender:Female\r\nAge:2 Weeks\r\nPrice:35,000 rs', 5, 'http://localhost/typroj/uploads/1653923404golden_retriever.jpg', 'Dog', 1),
(5, 'Doberman', '20000', 'Doberman pinschers are considered people-oriented dogs that are affectionate and sweet with people, if socialized and trained properly. They are loyal to their owners and are good with children if raised with them; however, some Dobermans bond only to one person.Height:12 inches\r\n			Weight:4 kg\r\n			Gender:Female\r\n			Age:5 Months\r\n			Price:20,000 rs		', 3, 'http://localhost/typroj/uploads/1653491119doberman.jpg', 'Dog', 1),
(6, 'Shih Tzu', '35000', 'The name “Shih Tzu” means little lion, but there\'s nothing fierce about this dog breed. This pooch is a lover, not a hunter. Bred solely to be companions, Shih Tzus are affectionate, happy, outgoing house dogs who love nothing more than to follow their people from room to room.\r\n			Height:15 inches\r\n			Weight:10 kg\r\n			Gender:Female\r\n			Age:3 Months\r\n			Price:35,000 rs', 12, 'http://localhost/typroj/uploads/Shih%20Tzu.jpg', 'Dog', 1),
(7, 'Chow Chow', '45000', 'The Chow Chow is a spitz-type dog originally from northern China.The Chow Chow is a sturdily built dog, square in profile, with a broad skull and small, triangular, erect ears with rounded tips. The breed is known for a very dense double coat that is either smooth or rough.\r\n			Height:16 inches\r\n			Weight:3.5 kg\r\n			Gender:Male\r\n			Age:3 Months\r\n			Price:45,000 rs', 5, 'http://localhost/typroj/uploads/1653922670chow-chow.jpg', 'Dog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `short_bill`
--

CREATE TABLE `short_bill` (
  `billno` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `short_bill`
--

INSERT INTO `short_bill` (`billno`, `pid`) VALUES
(1, 6),
(1, 5),
(2, 5),
(2, 1),
(2, 1),
(3, 2),
(3, 1),
(4, 1),
(5, 7),
(5, 3),
(5, 2),
(6, 3),
(8, 1),
(8, 2),
(8, 5),
(9, 1),
(9, 1),
(10, 2),
(10, 1),
(11, 5),
(12, 2),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `sid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `pqty` int(11) DEFAULT NULL,
  `sdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

CREATE TABLE `temp_cart` (
  `cuname` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  `cr_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cuname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
