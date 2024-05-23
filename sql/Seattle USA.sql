-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 07:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodfilter`
--

-- --------------------------------------------------------

--
-- Table structure for table `jhkks`
--

CREATE TABLE `jhkks` (
  `SHOP NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `LATITUDE AND LONGITUDE` varchar(100) NOT NULL,
  `VEG` varchar(100) NOT NULL,
  `NON VEG` varchar(100) NOT NULL,
  `VEGAN` varchar(100) NOT NULL,
  `City` text NOT NULL,
  `Country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jhkks`
--

INSERT INTO `jhkks` (`SHOP NAME`, `ADDRESS`, `LATITUDE AND LONGITUDE`, `VEG`, `NON VEG`, `VEGAN`, `City`, `Country`) VALUES
('GROCERY OUTLET', '1126 MARTIN LUTHAR KING Jr way, Seattle', '47.612470 and -122.295540', 'YES', 'YES', 'YES', '', ''),
('QFC   GROCERY STORE', '500 MERCER St Seattle', '47.625010 and -122.346870', 'YES', 'YES', 'YES', '', ''),
('METROPOLITIAN MARKET QUEEN ANNE (UPTOWN)', '100 MERCER st , Seattle', '47.624840 and -122.354410', 'YES', 'YES', 'YES', '', ''),
('WHOLE FOODS MARKET', 'seattle,WA', '47.603230 AND -122.330276', 'YES', 'YES', 'YES', '', ''),
('Manzo Brothers Produce ', 'Seattle , WA', '47.603230 and -122.330276', 'YES', 'NO', 'YES', '', ''),
('PIKE GROCERY', '1011 PIKE st Seattle', '47.613010 and -122.329240', 'YES', 'YES', 'YES', '', ''),
('Market Fresh Fruits', '1916 Pike Place Suite #12-350, Seattle, WA 98101,', '47.610070 and -122.342210', 'YES', 'NO', 'YES', '', ''),
('H MART DOWNTOWN SEATTLE', '1601 2ND  AVE', '40.776140 and -73.953350', 'YES', 'YES', 'YES', '', ''),
('Corner Produce', '1500 Pike Pl, Seattle, WA 98101, United States', '47.608870 and -122.340570', 'YES', 'NO', 'YES', '', ''),
('Choice Produce', '1514 Pike Pl # 4, Seattle, WA 98101, United States', '47.609100 and -122.340850', 'YES', 'NO', 'YES', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
