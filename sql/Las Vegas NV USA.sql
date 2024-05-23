-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 06:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shiv`
--

-- --------------------------------------------------------

--
-- Table structure for table `new place 1`
--

CREATE TABLE `new place 1` (
  `SHOP NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `LATITUDE AND LONGITUDE` varchar(100) NOT NULL,
  `VEG` varchar(100) NOT NULL,
  `NON VEG` varchar(100) NOT NULL,
  `VEGAN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new place 1`
--

INSERT INTO `new place 1` (`SHOP NAME`, `ADDRESS`, `LATITUDE AND LONGITUDE`, `VEG`, `NON VEG`, `VEGAN`) VALUES
('Family Food Mart', '1102 E Fremont St, Las Vegas, NV 89101, United States', '36.166860 and -115.135050', 'YES', 'YES', 'YES'),
('fresh and less market', '1061 W Owens Ave, Las Vegas, NV 89106, United States', '36.186640 and -115.155390', 'YES ', 'YES', 'YES'),
('Cabana Food Market', ' 3965 E Owens Ave Ste 110, Las Vegas, NV 89110, United States', '36.187930 and -115.090210', 'YES', 'YES', 'YES'),
('NoButcher', '3565 S Rainbow Blvd Suite 110, Las Vegas, NV 89103, United States', '36.123830 and -115.243120', 'YES', 'NO', 'YES'),
('Veganos Kitchen', ' 3149 N Rancho Dr C, Las Vegas, NV 89130, United States', '36.216570  and -115.213370', 'YES', 'NO', 'YES'),
('Rani\'s World Foods', '4505 W Sahara Ave, Las Vegas, NV 89102, United States', '36.143930 and  -115.202320', 'YES', 'NO', 'YES'),
('Sprouts Farmers Market', '10000 W Sahara Ave #180, Las Vegas, NV 89117, United States', '36.145690 and  -115.312990', 'YES', 'NO', 'YES'),
('Las Vegas Wholesale Food Market', '3904 Vanessa Dr, Las Vegas, NV 89103, United States', '36.125300 and -115.192380', 'YES', 'YES', 'YES'),
('Buy Low Market', '1061 W Owens Ave, Las Vegas, NV 89106, United States', '36.186642 and -115.155388', 'YES', 'YES', 'YES');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
