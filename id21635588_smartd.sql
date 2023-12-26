-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2023 at 03:20 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21635588_smartd`
--

-- --------------------------------------------------------

--
-- Table structure for table `mill_performance_approve`
--

CREATE TABLE `mill_performance_approve` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `lorry_numbers` float(7,3) NOT NULL,
  `lorry_capacity` float(7,3) NOT NULL,
  `ph_water` float(7,3) NOT NULL,
  `tds_water` float(7,3) NOT NULL,
  `phospate_water` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mill_performance_approve`
--

INSERT INTO `mill_performance_approve` (`id`, `date_time`, `lorry_numbers`, `lorry_capacity`, `ph_water`, `tds_water`, `phospate_water`) VALUES
(4, '2023-12-14 07:32:54', 90.000, 90.000, 90.000, 90.000, 90.000),
(5, '2023-12-14 07:39:34', 21.000, 21.000, 21.000, 21.000, 21.000),
(6, '2023-12-14 09:13:51', 20.000, 20.000, 20.000, 20.000, 20.000),
(7, '2023-12-15 01:49:12', 3.000, 3.000, 3.000, 3.000, 3.000);

-- --------------------------------------------------------

--
-- Table structure for table `mill_performance_pending`
--

CREATE TABLE `mill_performance_pending` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `lorry_numbers` float(7,3) NOT NULL,
  `lorry_capacity` float(7,3) NOT NULL,
  `ph_water` float(7,3) NOT NULL,
  `tds_water` float(7,3) NOT NULL,
  `phospate_water` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mill_performance_pending`
--

INSERT INTO `mill_performance_pending` (`id`, `date_time`, `lorry_numbers`, `lorry_capacity`, `ph_water`, `tds_water`, `phospate_water`) VALUES
(24, '2023-12-13 08:17:50', 10.000, 10.000, 10.000, 10.000, 10.000),
(27, '2023-12-14 01:54:49', 20.000, 20.000, 20.000, 20.000, 20.000),
(36, '2023-12-15 01:20:23', 55.000, 55.000, 55.000, 55.000, 55.000);

-- --------------------------------------------------------

--
-- Table structure for table `product_quality_approve`
--

CREATE TABLE `product_quality_approve` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sg_claybath` float(7,3) NOT NULL,
  `restan_factory` float(7,3) NOT NULL,
  `minlet_vacuum` float(7,3) NOT NULL,
  `silo_levels` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_quality_approve`
--

INSERT INTO `product_quality_approve` (`id`, `date_time`, `sg_claybath`, `restan_factory`, `minlet_vacuum`, `silo_levels`) VALUES
(2, '2023-12-07 08:32:19', 1.000, 2.000, 5.000, 6.000),
(3, '2023-12-07 08:58:23', 11.000, 22.000, 55.000, 66.000);

-- --------------------------------------------------------

--
-- Table structure for table `product_quality_pending`
--

CREATE TABLE `product_quality_pending` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sg_claybath` float(7,3) NOT NULL,
  `restan_factory` float(7,3) NOT NULL,
  `minlet_vacuum` float(7,3) NOT NULL,
  `silo_levels` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_quality_pending`
--

INSERT INTO `product_quality_pending` (`id`, `date_time`, `sg_claybath`, `restan_factory`, `minlet_vacuum`, `silo_levels`) VALUES
(7, '2023-12-13 09:20:13', 2.000, 2.000, 2.000, 2.000),
(11, '2023-12-14 02:49:11', 4.000, 4.000, 4.000, 4.000);

-- --------------------------------------------------------

--
-- Table structure for table `simulation_approve`
--

CREATE TABLE `simulation_approve` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `tph` float(7,3) NOT NULL,
  `oer` float(7,3) NOT NULL,
  `ker` float(7,3) NOT NULL,
  `ser` float(7,3) NOT NULL,
  `oil_losses` float(7,3) NOT NULL,
  `kernel_losses` float(7,3) NOT NULL,
  `ffa_quality` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simulation_pending`
--

CREATE TABLE `simulation_pending` (
  `id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `tph` float(7,3) NOT NULL,
  `oer` float(7,3) NOT NULL,
  `ker` float(7,3) NOT NULL,
  `ser` float(7,3) NOT NULL,
  `oil_losses` float(7,3) NOT NULL,
  `kernel_losses` float(7,3) NOT NULL,
  `ffa_quality` float(7,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Ahmad Fauzi Firmansyah', 'ahmad.f.firmansyah@sinarmas-agri.com', 'sinarmas', 'Admin'),
(2, 'Admin', 'admin', 'admin', 'Admin'),
(3, 'User', 'user', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mill_performance_approve`
--
ALTER TABLE `mill_performance_approve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mill_performance_pending`
--
ALTER TABLE `mill_performance_pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quality_approve`
--
ALTER TABLE `product_quality_approve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quality_pending`
--
ALTER TABLE `product_quality_pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simulation_approve`
--
ALTER TABLE `simulation_approve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simulation_pending`
--
ALTER TABLE `simulation_pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mill_performance_approve`
--
ALTER TABLE `mill_performance_approve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mill_performance_pending`
--
ALTER TABLE `mill_performance_pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_quality_approve`
--
ALTER TABLE `product_quality_approve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_quality_pending`
--
ALTER TABLE `product_quality_pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `simulation_approve`
--
ALTER TABLE `simulation_approve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simulation_pending`
--
ALTER TABLE `simulation_pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
