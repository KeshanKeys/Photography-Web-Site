-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 07:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malcolmphotography`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `name` varchar(10) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`name`, `Description`, `price`) VALUES
('Event', 'Full Event Coverage Including Edit', 2000),
('Portrait', 'Take Exciting Photos Including', 980),
('Wedding ', 'Full Day Coverage Including Edit', 1800),
('Wild-Life', 'Take Exciting Photos Including Edit', 2900);

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` int(50) NOT NULL,
  `Date` date NOT NULL,
  `Event` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(20) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `fname`, `email`, `contact`, `country`) VALUES
(2, 'Keshan', 'Keshankeys@gmail.com', 123456789, ''),
(3, 'Keshan', 'Keshankeys2001@gmail.com', 456123789, '');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `message`) VALUES
(3, 'Keshan', 'Keshankeys2001@gmail.com', 'The Camera man is too nervous when taking photos');

-- --------------------------------------------------------

--
-- Table structure for table `portrait`
--

CREATE TABLE `portrait` (
  `id` int(50) NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `portrait`
--

INSERT INTO `portrait` (`id`, `imagepath`) VALUES
(2, 'pexels-stefan-stefancik-91227.jpg'),
(3, 'stephanie-liverani-Zz5LQe-VSMY-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `specialevents`
--

CREATE TABLE `specialevents` (
  `id` int(50) NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `specialevents`
--

INSERT INTO `specialevents` (`id`, `imagepath`) VALUES
(2, 'jon-tyson-CP68p1fZS8k-unsplash.jpg'),
(3, 'aleksandr-popov-hTv8aaPziOQ-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `id` int(50) NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`id`, `imagepath`) VALUES
(2, 'bekir-temel-TUk7izflda0-unsplash.jpg'),
(3, 'bekir-temel-TUk7izflda0-unsplash.jpg'),
(4, 'leonardo-miranda-dvF6s1H1x68-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `imagepath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wildlife`
--

INSERT INTO `wildlife` (`id`, `name`, `imagepath`) VALUES
(3, 'Tiger', 'pexels-pixabay-46254.jpg'),
(4, 'Elephant', 'pexels-pixabay-70080.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portrait`
--
ALTER TABLE `portrait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialevents`
--
ALTER TABLE `specialevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portrait`
--
ALTER TABLE `portrait`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialevents`
--
ALTER TABLE `specialevents`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
