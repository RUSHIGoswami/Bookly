-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 05:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 4, 'Mahek', 'mahek@mahek.com', '0912837456', 'This is test contact us form message.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 1, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'cash on delivery', 'flat no. 1, near 80feet road, Surendranagar, India - 363035', ', Monk who sold his ferrari (1) ', 500, '12-Sep-2022', 'completed'),
(11, 1, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 34, near 80feet road, Surendranagar, India - 363035', ', Monk who sold his ferrari (2) , Never Split the Difference (1) ', 2696, '12-Sep-2022', 'completed'),
(12, 1, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'cash on delivery', 'flat no. 0, near 80feet road, Surendranagar, India - 363035', ', Harry Potter Sorcerers Stone (3) ', 1500, '12-Sep-2022', 'completed'),
(13, 3, 'Jay Vasavada', '1236459870', 'jay@jay.com', 'cash on delivery', 'flat no. 1, Khatra Mahel, Shaitan gali Near Old Samshan Ghat, Mumbai, India - 340006', ', The Subtle Art Of Not Giving a F*ck (1) ', 481, '15-Oct-2022', 'completed'),
(102, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 35, near 80feet road, Surendranagar, India - 363035', ', Hyper focus (1) ', 250, '24-Nov-2022', 'completed'),
(103, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 1, near 80feet road, Surendranagar, India - 363035', ', Harry potters and sorcerers stone (1) ', 700, '24-Nov-2022', 'completed'),
(104, 3, 'Jay Vasavada', '1245789630', 'jay@jay.com', 'paytm', 'flat no. 1, near 80feet road, Surendranagar, India - 363035', ', Shattered (1) , Radical Gardening (1) ', 1100, '24-Nov-2022', 'completed'),
(105, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 1, near 80feet road, Surendranagar, India - 363035', ', How to win friends & Influence people (1) ', 300, '24-Nov-2022', 'completed'),
(106, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 2, near 80feet road, Surendranagar, India - 363035', ', Ikigai (1) ', 300, '24-Nov-2022', 'completed'),
(107, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 54, near 80feet road, Surendranagar, India - 363035', ', Psychology of Money (1) ', 200, '25-Nov-2022', 'completed'),
(108, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 78, near 80feet road, Surendranagar, India - 363035', ', Ikigai (1) , Atomic Habits (1) , Radical Gardening (1) ', 1250, '25-Nov-2022', 'completed'),
(109, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'paytm', 'flat no. 23, near 80feet road, Surendranagar, India - 363035', ', Hyper focus (1) ', 250, '25-Nov-2022', 'completed'),
(110, 3, 'Rushi Goswami', '08140226399', 'goswamirushi39@gmail.com', 'COD', 'flat no. 23, near 80feet road, Surendranagar, India - 363035', ', Ikigai (1) ', 300, '25-Nov-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(9, 'How to win friends & Influence people', 300, 'WhatsApp Image 2022-11-11 at 9.46.13 PM.jpeg'),
(10, 'Hyper focus', 250, 'WhatsApp Image 2022-11-11 at 9.46.18 PM.jpeg'),
(11, 'Harry potters and sorcerers stone', 700, 'WhatsApp Image 2022-11-11 at 9.46.34 PM.jpeg'),
(12, 'The Rudest Book Ever', 250, 'WhatsApp Image 2022-11-11 at 9.48.46 PM.jpeg'),
(13, 'Ikigai', 300, 'WhatsApp Image 2022-11-11 at 9.48.58 PM.jpeg'),
(14, 'Never split the difference', 500, 'WhatsApp Image 2022-11-11 at 9.48.08 PM.jpeg'),
(15, 'Atomic Habits', 400, 'WhatsApp Image 2022-11-11 at 9.47.36 PM.jpeg'),
(16, 'Psychology of Money', 200, 'WhatsApp Image 2022-11-11 at 9.46.50 PM.jpeg'),
(17, 'The Art of War', 350, 'WhatsApp Image 2022-11-11 at 9.46.46 PM.jpeg'),
(18, 'The Subtle Art of Not giving A F*ck', 300, 'WhatsApp Image 2022-11-11 at 9.46.37 PM.jpeg'),
(19, 'Bash & Lucy 2', 400, 'bash_and_lucy-2.jpg'),
(20, 'Be well Bee', 500, 'be_well_bee.jpg'),
(21, 'Boring Girls', 600, 'boring_girls_a_novel.jpg'),
(22, 'Clever Lands', 500, 'clever_lands.jpg'),
(23, 'Darknet', 350, 'darknet.jpg'),
(24, 'Freefall', 600, 'freefall.jpg'),
(25, 'History of Modern Architecture', 500, 'history_of_modern_architecture.jpg'),
(26, 'Holy Ghosts', 1300, 'holy_ghosts.jpg'),
(27, 'Red Queen', 1000, 'red_queen.jpg'),
(28, 'Radical Gardening', 550, 'radical_gardening.jpg'),
(29, 'Shattered', 550, 'shattered.jpg'),
(30, 'The Girl of Ink and Stars', 450, 'the_girl_of_ink_and_stars.jpg'),
(31, 'The Happy Lemon', 550, 'the_happy_lemon.jpg'),
(32, 'The World of Abstract Art', 1050, 'the_world.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `email`, `password`, `user_type`) VALUES
(1, 'Rushi Goswami', 'Rushi Goswami', 'goswamirushi39@gmail.com', 'eb4fcac30a12596187ad6f4aab529ddf', 'user'),
(2, 'rushi', 'Rushi Admin', 'rushi@rushi.com', 'eb4fcac30a12596187ad6f4aab529ddf', 'admin'),
(3, 'jay', 'Jay Vasavada', 'jay@jay.com', 'baba327d241746ee0829e7e88117d4d5', 'user'),
(4, 'Mahek', 'Mahek AJudia', 'mahek@mahek.com', '274d2bb1bc2be6e8208bcaa44b000167', 'user'),
(5, 'Shivanand', 'Shivanand Vishwakarma', 'shiv@nand.com', 'c3c7406d755473657ca02c021a882325', 'admin'),
(6, 'johnDOe', 'John Doe', 'john@doe.com', '527bd5b5d689e2c32ae974c6229ff785', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
