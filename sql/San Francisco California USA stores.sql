-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 06:17 PM
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
-- Table structure for table `new place 2`
--

CREATE TABLE `new place 2` (
  `SHOP NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `LATITUDE AND LONGITUDE` varchar(100) NOT NULL,
  `VEG` varchar(100) NOT NULL,
  `NON VEG` varchar(100) NOT NULL,
  `VEGAN` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE` varchar(100) NOT NULL,
  `COUNTRY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new place 2`
--

INSERT INTO `new place 2` (`SHOP NAME`, `ADDRESS`, `LATITUDE AND LONGITUDE`, `VEG`, `NON VEG`, `VEGAN`, `CITY`, `STATE`, `COUNTRY`) VALUES
('Aphotic', '816 Folsom St, San Francisco, CA 94107', '37.781840 and  -122.401740', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Gyro King', '25 Grove St, San Francisco, CA 94102, United States', '37.778630 and -122.415760', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Boulevard', '1 Mission St, San Francisco, CA 94105, United States', '37.793320 and -122.392760', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALAFORNIA', 'USA'),
('Sotto Mare', '552 Green St, San Francisco, CA 94133, United States', '37.799671 and -122.408287', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Indochine Vegan', '508 Valencia St, San Francisco, CA 94110, United States', '37.764700 and -122.422070', 'YES', 'NO ', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Loving Hut Vegan Restaurant - San Francisco', '524 Irving St, San Francisco, CA 94122, United States', '37.764350 and -122.463610', 'YES', 'NO', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Beach\'N SF', '4300 Judah St, San Francisco, CA 94122, United States', '37.760380 and -122.508060', 'YES', 'NO', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Golden Era', '395 Golden Gate Ave, San Francisco, CA 94102, United States', '37.781420 and -122.417050', 'YES', 'NO', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Trestle Restaurant', '531 Jackson St, San Francisco, CA 94133, United States', '37.796130 and -122.404500', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Foodhall', ' 3100 16th St, San Francisco, CA 94103, United States', '37.764950 and -122.421830', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Valencia Farmers Market', '1299 Valencia St, San Francisco, CA 94110, United States', '37.752110 and  -122.420600', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Downtown Grocery Market', ' 289 Eddy St, San Francisco, CA 94102, United States', '37.784050 and -122.411362', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA'),
('Avenue Fine Food Market', ' 1837 Pacific Ave, San Francisco, CA 94109, United States', '37.794430 and -122.425484', 'YES', 'YES', 'YES', 'SAN FRANCISCO', 'CALIFORNIA', 'USA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
