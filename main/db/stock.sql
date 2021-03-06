-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 10:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(200) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `mfd_date` varchar(255) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL,
  `selling_price` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `name`, `type`, `quantity`, `expire_date`, `mfd_date`, `unit_price`, `selling_price`, `status`, `regDate`) VALUES
(1, 'samuel', 'sam', '10', '12/12/22', '12/12/12', '1000', '1200', 'stocked', '2018-03-06 05:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `log_id` int(100) NOT NULL,
  `log_type` varchar(100) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_id` int(100) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(1024) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `status` varchar(100) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `user_id` int(100) NOT NULL,
  `user_code` int(100) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lastLogin` varchar(100) NOT NULL,
  `verified` int(2) NOT NULL,
  `isOnline` varchar(50) NOT NULL,
  `isAdmin` int(2) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`user_id`, `user_code`, `names`, `email`, `password`, `phone`, `type`, `user_type`, `status`, `lastLogin`, `verified`, `isOnline`, `isAdmin`, `regDate`) VALUES
(1, 10001, 'Sugira samuel', 'sam@gmail.com', 'samuels', 0, 'ADMIN', 1, 'ACTIVE', '', 1, 'NO', 1, '2018-08-23 10:34:33'),
(2, 0, 'john', 'john@pajo.com', '123456', 789564123, '', 5, 'ACTIVE', '', 0, '', 0, '2018-11-04 14:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `status`, `regDate`) VALUES
(1, 'samuel', 'samuel', 'admin', 'offline\r\n', '2018-03-06 05:00:23'),
(2, 'stock', 'samuel', 'seller', 'offline\r\n', '2018-03-06 05:00:54'),
(3, 'sam@gmail.com', '123456', '', '', '2018-08-23 08:15:04'),
(4, 'sam@gmail.com', '123456', '', '', '2018-08-23 08:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `type_id` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`type_id`, `type`, `description`, `status`, `regDate`) VALUES
(1, 'ADMIN', '', 'ACTIVE', '2018-11-04 13:20:02'),
(2, 'CHIEF', '', 'ACTIVE', '2018-11-04 13:20:02'),
(3, 'PROCUREMENT', '', 'ACTIVE', '2018-11-04 13:20:34'),
(4, 'PRODUCTION MANAGER', '', '4', '2018-11-04 13:20:49'),
(5, 'STOCK MANAGER', '', 'ACTIVE', '2018-11-04 13:21:05'),
(6, 'RECEPTIONIST', '', 'ACTIVE', '2018-11-04 13:21:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `log_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `setting_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
