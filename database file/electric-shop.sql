-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 05:52 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electric-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `sid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` enum('active','purchased') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`sid`, `pid`, `uid`, `product`, `price`, `quantity`, `status`) VALUES
(261, 30, 26, 'Geforce keyboard', 2000, 2, 'active'),
(262, 32, 31, 'HP inteli11', 150000, 2, 'active'),
(264, 34, 24, 'Lokai', 15000, 2, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pwd` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_role` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_email`, `customer_pwd`, `customer_phone`, `customer_address`, `customer_role`) VALUES
(9, 'bhabishya', 'bhabishyaghimire88@gmail.com', 'samaj123', '9817604185', 'jambudada,jorpati', 'admin'),
(20, 'binit bista', 'binitbist707@gmail.com', 'kitsune', '9813458210', 'baneswor ,kathmandu', 'normal'),
(23, 'test', 'test@gmail.com', 'test', '9817265432', 'birgunj', 'normal'),
(26, 'admin', 'admin@gmail.com', 'admin', '9817604185', 'baneswor ,kathmandu', 'admin'),
(31, 'user', 'user@gmail.com', '2345', '9817604345', 'Lalbandi,Sarlahi', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `name`, `email`, `subject`, `message`) VALUES
(6, 'bhabishyaghimire', 'bhabishyaghimire88@gmail.com', 'Request', 'I like to request you to bring iphone 14 pro max sooner');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_catag` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(50) NOT NULL,
  `product_img` text NOT NULL,
  `product_left` int(100) NOT NULL,
  `product_author` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_catag`, `product_title`, `product_price`, `product_desc`, `product_date`, `product_img`, `product_left`, `product_author`) VALUES
(19, 'mouse', 'Logitech MX Master 4', 5000, 'Logitech MX Master 4 with ergonomic design, 4000dpi, and advanced customization options.', '1, Jan, 2024', 'dgw10.jpg', 60, 'Kamal'),
(21, 'laptop', 'Asus ROG Zephyrus G15', 150000, 'Asus ROG Zephyrus G15 with AMD Ryzen 9, 16GB RAM, 1TB SSD, and RTX 3080.', '5, Jan, 2024', 'asusx550c.jpg', 80, 'Kamal'),
(22, 'laptop', 'Acer Predator Helios 300', 120000, 'Acer Predator Helios 300 with Intel i7, 16GB RAM, 512GB SSD, and RTX 3060.', '10, Jan, 2024', 'laptop1.jpg', 70, 'Kamal'),
(23, 'mouse', 'Razer DeathAdder V3', 4000, 'Razer DeathAdder V3 with 20000dpi, ergonomic design, and RGB lighting.', '15, Jan, 2024', 'mouse2.jpg', 90, 'Kamal'),
(24, 'keyboard', 'Corsair K95 RGB Platinum', 10000, 'Corsair K95 RGB Platinum with mechanical switches, RGB lighting, and macro keys.', '20, Jan, 2024', 'keyboard1.jpg', 50, 'Kamal'),
(25, 'laptop', 'Lenovo Legion 7i', 180000, 'Lenovo Legion 7i with Intel i9, 32GB RAM, 1TB SSD, and RTX 3080.', '25, Jan, 2024', 'laptop2.jpg', 40, 'Kamal'),
(26, 'mouse', 'SteelSeries Rival 600', 6000, 'SteelSeries Rival 600 with dual sensor system, 12000dpi, and customizable weight.', '30, Jan, 2024', 'mouse4.jpg', 75, 'Kamal'),
(27, 'keyboard', 'Razer BlackWidow V4', 8000, 'Razer BlackWidow V4 with mechanical switches, RGB lighting, and programmable keys.', '5, Feb, 2024', 'keyboard2.jpg', 65, 'Kamal'),
(28, 'laptop', 'Dell XPS 17 2024', 200000, 'Dell XPS 17 2024 with Intel i9, 32GB RAM, 1TB SSD, and 4K display.', '10, Feb, 2024', 'laptop3.jpg', 55, 'Kamal'),
(29, 'mouse', 'Microsoft Surface Mouse', 3000, 'Microsoft Surface Mouse with ergonomic design, Bluetooth connectivity, and precision tracking.', '15, Feb, 2024', 'mouse3.jpg', 85, 'Kamal'),
(30, 'keyboard', 'Logitech G915 TKL', 12000, 'Logitech G915 TKL with low-profile mechanical switches, RGB lighting, and wireless connectivity.', '20, Feb, 2024', 'keyboard3.jpg', 45, 'Kamal'),
(31, 'laptop', 'HP Spectre x360 2024', 160000, 'HP Spectre x360 2024 with Intel i7, 16GB RAM, 1TB SSD, and 4K OLED display.', '25, Feb, 2024', 'laptop5.jpg', 70, 'Kamal'),
(32, 'laptop', 'Apple MacBook Air M3', 140000, 'Apple MacBook Air 2024 with M3 chip, 16GB RAM, 512GB SSD, and Retina display.', '1, Mar, 2024', 'laptop6.png', 90, 'Kamal'),
(33, 'mouse', 'Logitech G Pro X Superlight', 7000, 'Logitech G Pro X Superlight with 25000dpi, lightweight design, and wireless connectivity.', '5, Mar, 2024', 'mouse5.jpg', 50, 'Kamal'),
(34, 'keyboard', 'HyperX Alloy Elite 2', 9000, 'HyperX Alloy Elite 2 with mechanical switches, RGB lighting, and media controls.', '10, Mar, 2024', 'keyboard4a.jpg', 60, 'Kamal'),
(35, 'mobile', 'iPhone 16 Pro Max', 180000, 'Apple iPhone 16 Pro Max with A18 Bionic chip, 8GB RAM, 1TB storage, and advanced camera system.', '15, Mar, 2024', 'mobile4.jpg', 100, 'Kamal');


--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `damage_type` varchar(40) NOT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `advance_amt` int(20) NOT NULL,
  `due` int(20) DEFAULT NULL,
  `status` enum('repaired','pending') NOT NULL DEFAULT 'pending',
  `booked_date` varchar(25) NOT NULL,
  `return_date` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `servicestatus`
--

CREATE TABLE `servicestatus` (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `pid` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `website_name` varchar(60) NOT NULL,
  `website_logo` varchar(50) NOT NULL,
  `website_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`website_name`, `website_logo`, `website_footer`) VALUES
('TechStore', 'logo2023.png', '© TechStore 2024 <br> All right reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `soldproducts`
--

CREATE TABLE `soldproducts` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `date` varchar(60) DEFAULT NULL,
  `status` enum('pending','delivered') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicestatus`
--
ALTER TABLE `servicestatus`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `soldproducts`
--
ALTER TABLE `soldproducts`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `repair`
--
ALTER TABLE `repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `servicestatus`
--
ALTER TABLE `servicestatus`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `soldproducts`
--
ALTER TABLE `soldproducts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
