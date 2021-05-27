-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 06:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `series` varchar(25) NOT NULL,
  `price` int(25) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `series`, `price`, `description`) VALUES
(1, 'Samsung Galaxy S21', 'S21', 'Series S', 1000, '6.2 inch touchscreen display with a resolution of 1080x2400 pixels. Powered by Samsung Exynos 2100. Comes with 8GB of RAM. 4000mAh battery. Supports wireless charging and fast charging.'),
(2, 'Samsung Galaxy S21 Ultra', 'S21 Ultra', 'Series S', 1200, '6.8 inch touchscreen display with a resolution of 1440x3200 pixels. Powered by Samsung Exynos 2100. Comes with 12 or 16GB of RAM. 5000mAh battery. Supports wireless charging, and fast charging.'),
(3, 'Samsung Galaxy S20', 'S20', 'Series S', 893, '6.2 inch touchscreen display with a resolution of 1440x3200 pixels. Powered by Samsung Exynos 990. Comes with 8GB of RAM. 4000mAh battery. Supports wireless charging, and fast charging.'),
(4, 'Samsung Galaxy S10 Plus', 'S10 Plus', 'Series S', 849, '6.4 inch touchscreen display with a resolution of 1440x3040 pixels. Powered by Samsung Exynos 9820. Comes with 8 or 12GB of RAM. 4100mAh battery. Supports wireless charging, and fast charging.'),
(5, 'Samsung Galaxy A72', 'A72', 'Series A', 444, '6.7 inch touchscreen display with a resolution of 1080x2400 pixels. Powered by Snapdragon 720G. Comes with 6 or 8GB of RAM. 5000mAh battery. Supports wireless charging, and fast charging.'),
(6, 'Samsung Galaxy A52', 'A52', 'Series A', 499, '6.5 inch touchscreen display with a resolution of 1080x2400 pixels. Powered by Snapdragon 750G. Comes with 6 or 8GB of RAM. 4500mAh battery. Supports wireless charging, and fast charging.'),
(7, 'Samsung Galaxy A21s', 'A21s', 'Series A', 182, '6.5 inch touchscreen display with a resolution of 720x1600 pixels. Powered by Samsung Exynos 850. Comes with 2 or 6GB of RAM. 5000mAh battery. Supports wireless charging, and fast charging.'),
(8, 'Samsung Galaxy A51', 'A51', 'Series A', 278, '6.5 inch touchscreen display with a resolution of 1080x2400 pixels. Powered by Samsung Exynos 9611. Comes with 4 or 8GB of RAM. 4000mAh battery. Supports wireless charging, and fast charging.'),
(9, 'Samsung Galaxy M51', 'M51', 'Series M', 518, '6.7 inch touchscreen display with a resolution of 1080x2400 pixels. Powered by Snapdragon 730G. Comes with 6 or 8GB of RAM. 7000mAh battery. Supports wireless charging, and fast charging.'),
(10, 'Samsung Galaxy M31', 'M31', 'Series M', 349, '6.4 inch touchscreen display with a resolution of 1080x2340 pixels. Powered by Samsung Exynos 9611. Comes with 6 or 8GB of RAM. 6000mAh battery. Supports wireless charging, and fast charging.'),
(11, 'Samsung Galaxy M21', 'M21', 'Series M', 277, '6.4 inch touchscreen display with a resolution of 1080x2340 pixels. Powered by Samsung Exynos 9611. Comes with 4 or 6GB of RAM. 6000mAh battery. Supports wireless charging, and fast charging.'),
(12, 'Samsung Galaxy M20', 'M20', 'Series M', 316, '6.3 inch touchscreen display with a resolution of 1080x2340 pixels. Powered by Samsung Exynos 7904. Comes with 3 or 4GB of RAM. 5000mAh battery. Supports wireless charging, and fast charging.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
