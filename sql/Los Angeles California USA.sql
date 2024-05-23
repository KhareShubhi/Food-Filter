-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 05:52 AM
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
-- Table structure for table `shivzz`
--

CREATE TABLE `shivzz` (
  `SHOP NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `LATITUDE AND LONGITUDE` varchar(100) NOT NULL,
  `VEG` varchar(100) NOT NULL,
  `NON VEG` varchar(100) NOT NULL,
  `VEGAN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shivzz`
--

INSERT INTO `shivzz` (`SHOP NAME`, `ADDRESS`, `LATITUDE AND LONGITUDE`, `VEG`, `NON VEG`, `VEGAN`) VALUES
('True Food Kitchen', '395 Santa Monica Pl Suite 172, Santa Monica, CA 90401, United States', '34.015460 and  -118.493110', 'YES', 'YES', 'YES'),
('Grand Central Market', '317 S Broadway, Los Angeles, CA 90013, United States', '34.050690 and -118.248787', 'YES', 'YES', 'YES'),
('Crossroads Kitchen', '8284 Melrose Ave, Los Angeles, CA 90046, United States', '34.083480 and -118.370100', 'YES', 'NO', 'YES'),
('Rahel Ethiopian Vegan Cuisine', '1047 S Fairfax Ave, Los Angeles, CA 90019, United States', '34.056880 and -118.364690', 'NO', 'NO', 'YES'),
('Araya\'s Vegetarian Place', ' 8101½ Beverly Blvd, Los Angeles, CA 90048, United States', '34.077190 and  -118.384860', 'YES', 'NO', 'YES'),
('Green Leaves Vegan', '1769 Hillhurst Ave, Los Angeles, CA 90027, United States', '34.103360 and  -118.287610', 'YES', 'NO', 'YES'),
('Trimana Fresh Foods Market Broadway', ' 312 W 5th St UNIT 106, Los Angeles, CA 90013, United States', '34.048030 and  -118.251250', 'YES', 'YES', 'YES'),
('Whole Foods Market', '2520 Glendale Blvd, Los Angeles, CA 90039, United States', '34.103670  and -118.259100', 'YES', 'YES', 'YES'),
('6th Street Market', '212 W 6th St, Los Angeles, CA 90014, United States', '34.046120 and -118.251330', 'YES', 'YES', 'YES');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
