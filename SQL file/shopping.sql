-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '05-04-2023 09:23:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Women', 'Products for women', '2023-04-05 19:32:22', NULL),
(8, 'Men', 'Products for men', '2023-04-05 19:32:44', NULL),
(10, 'Trending', 'All trending products', '2023-04-19 16:19:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 5, '2', 2, '2023-04-05 19:51:56', 'Debit / Credit card', 'in Process'),
(8, 5, '2', 1, '2023-04-05 19:56:27', 'Debit / Credit card', NULL),
(9, 5, '12', 1, '2023-04-05 20:01:07', 'COD', NULL),
(10, 6, '13', 1, '2023-04-05 20:05:25', 'Internet Banking', NULL),
(11, 5, '23', 1, '2023-04-19 16:29:43', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 7, 'in Process', 'ok', '2023-04-05 19:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
   
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:19:22', ''),
(22, 4, 2, 'Women Top', 'Turbo', 90, 100, 'kcm lksmlkamx', 'image 27.png', 'image 33.png', 'Screenshot 2023-02-11 at 6.24 2.png', 4, 'In Stock', '2023-04-19 16:18:36', NULL),
(24, 7, 13, 'Women Shirt', 'Turbo', 190, 200, 'very good cloth', 'image 35.png', 'image 35.png', 'image 35.png', 10, 'In Stock', '2023-04-19 16:31:43', NULL),
(25, 7, 13, 'Women Top', 'Turbo', 90, 100, 'very good top', 'image 38.png', 'image 38.png', 'image 38.png', 12, 'In Stock', '2023-04-19 16:32:41', NULL),
(26, 7, 13, 'Women skinny shirt', 'Niky', 140, 150, 'very good shirt', 'image 42.png', 'image 42.png', 'image 42.png', 11, 'In Stock', '2023-04-19 16:34:41', NULL),
(27, 7, 13, 'Women Stylish Shirt', 'xyz', 125, 130, 'very good shirt', 'image 44.png', 'image 44.png', 'image 44.png', 14, 'In Stock', '2023-04-19 16:35:59', NULL),
(28, 7, 13, 'Women Top', 'Niky', 199, 210, 'very good shirt', 'image 34.png', 'image 34.png', 'image 34.png', 10, 'In Stock', '2023-04-19 16:37:16', NULL),
(29, 7, 13, 'Women Shirt', 'abc', 129, 135, 'very good shirt', 'image 35.png', 'image 35.png', 'image 35.png', 14, 'In Stock', '2023-04-19 16:42:50', NULL),
(30, 7, 13, 'Women Stylish Shirt', 'fsj', 125, 210, 'very good shirt', 'baby-blue-dress@2x.png', 'baby-blue-dress@2x.png', 'baby-blue-dress@2x.png', 12, 'In Stock', '2023-04-19 16:47:27', NULL),
(31, 7, 13, 'Cany Color Dress', 'dfs', 140, 150, 'very good dress', 'candy-color@2x.png', 'candy-color@2x.png', 'candy-color@2x.png', 10, 'In Stock', '2023-04-19 16:48:15', NULL),
(32, 7, 13, 'Women Cloth', 'Niky', 199, 200, 'very good shirt', 'black-dress@2x.png', 'black-dress@2x.png', 'black-dress@2x.png', 10, 'In Stock', '2023-04-19 16:49:04', NULL),
(33, 7, 13, 'Women Stylish Shirt', 'abc', 125, 130, 'very good shirt', 'fall-flower@2x.png', 'fall-flower@2x.png', 'fall-flower@2x.png', 10, 'In Stock', '2023-04-19 16:50:13', NULL),
(34, 7, 13, 'Women Stylish Shirt', 'dfs', 190, 210, 'very good fabric', 'image-3.png', 'image-1.png', 'image-2.png', 12, 'In Stock', '2023-04-19 16:51:13', NULL),
(35, 7, 13, 'Women Top', 'Niky', 140, 150, 'very good shirt', 'image-91.png', 'image-91.png', 'image-91.png', 10, 'In Stock', '2023-04-19 16:52:12', NULL),
(36, 7, 14, 'Women pants', 'Niky', 200, 210, 'very good pant', 'image-92.png', 'image-92.png', 'image-92.png', 14, 'In Stock', '2023-04-19 16:53:46', NULL),
(37, 7, 14, 'Women Shorts ', 'Niky', 140, 150, 'women shorts', 'rectangle-12@2x.png', 'rectangle-12@2x.png', 'rectangle-12@2x.png', 12, 'In Stock', '2023-04-19 16:55:06', NULL),
(38, 7, 14, 'Women Dress', 'Turbo', 140, 150, 'very good', 'image-93.png', 'image-93.png', 'image-93.png', 10, 'Out of Stock', '2023-04-19 16:58:10', NULL),
(39, 8, 16, 'Men Pant', 'Niky', 199, 200, 'pan pant', 'screenshot-2023-02-06-at-11-41-1@2x.png', 'baggy-sweater@2x.png', 'image-29@2x.png', 14, 'In Stock', '2023-04-19 17:00:59', NULL),
(40, 8, 16, 'pan jacket', 'Niky', 290, 300, 'very good jacket<br>', 'image-21@2x.png', 'image-21@2x.png', 'image-21@2x.png', 10, 'In Stock', '2023-04-19 17:02:57', NULL),
(41, 8, 16, 'man gillet', 'Turbo', 299, 300, 'very good<br>', 'u@2x.png', 'u@2x.png', 'u@2x.png', 10, 'In Stock', '2023-04-19 17:04:04', NULL),
(42, 8, 16, 'sada', 'dfs', 140, 210, 'abcbcmn', 'screenshot-2023-02-11-at-6-32-3@2x.png', 'screenshot-2023-02-11-at-6-32-3@2x.png', 'screenshot-2023-02-11-at-6-32-3@2x.png', 14, 'In Stock', '2023-04-19 17:04:49', NULL),
(43, 8, 16, 'kdcm', 'Niky', 220, 234, 'vsd bcd', 'black-hoodie@2x.png', 'black-hoodie@2x.png', 'black-hoodie@2x.png', 10, 'In Stock', '2023-04-19 17:05:29', NULL),
(44, 7, 15, 'Women Top', 'Niky', 199, 200, 'ds vfdc', 'image-95@2x.png', 'image-95@2x.png', 'image-95@2x.png', 12, 'In Stock', '2023-04-19 17:06:48', NULL),
(45, 10, 26, 'Men Pant', 'Turbo', 190, 200, 'very good pant', 'default-output@2x.png', 'default-output@2x.png', 'default-output@2x.png', 14, 'In Stock', '2023-04-19 17:08:04', NULL),
(46, 10, 26, 'dfvfs', 'fcs', 140, 150, 'htgrfed', 'image-85.png', 'image-85.png', 'image-85.png', 10, 'In Stock', '2023-04-19 17:09:00', NULL),
(47, 10, 26, 'fsda', 'fedw', 190, 200, 'dfcsda', 'image-69@2x.png', 'image-69@2x.png', 'image-69@2x.png', 10, 'In Stock', '2023-04-19 17:10:35', NULL),
(48, 10, 26, 'fdsas', 'gefrw', 140, 200, 'hrgtew', 'image-25@2x.png', 'image-25@2x.png', 'image-86.png', 11, 'In Stock', '2023-04-19 17:11:41', NULL),
(49, 10, 26, 'erw', 'abc', 190, 210, 'ntrfe', 'image-67@2x.png', 'image-21@2x.png', 'image-85.png', 12, 'In Stock', '2023-04-19 17:12:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES

(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'Clothing', '2023-04-05 19:33:40', '19-04-2023 09:50:18 PM'),
(14, 7, 'Dresses', '2023-04-05 19:33:49', '19-04-2023 09:50:44 PM'),
(15, 7, 'Activewear', '2023-04-05 19:34:09', '19-04-2023 09:50:58 PM'),
(16, 8, 'Clothing', '2023-04-05 19:34:31', '19-04-2023 09:51:38 PM'),
(18, 8, 'Shoes', '2023-04-05 19:35:54', NULL),
(19, 7, 'Shoes', '2023-04-05 19:36:12', '19-04-2023 09:51:58 PM'),
(20, 8, 'Winter', '2023-04-05 19:36:29', '19-04-2023 09:52:36 PM'),
(21, 9, 'All trending items', '2023-04-05 19:37:02', NULL),
(22, 7, 'Accessories', '2023-04-19 16:21:12', NULL),
(23, 7, 'Winter', '2023-04-19 16:21:29', NULL),
(24, 8, 'Activewear', '2023-04-19 16:22:15', NULL),
(25, 8, 'Accessories', '2023-04-19 16:22:21', NULL),
(26, 10, 'All trending items', '2023-04-19 17:07:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'mirsab@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 19:51:46', '06-04-2023 01:25:42 AM', 1),
(27, 'mirsab@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 19:56:01', '06-04-2023 01:27:28 AM', 1),
(28, 'mirsab@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 20:01:04', '06-04-2023 01:33:35 AM', 1),
(29, 'abcd@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 20:04:17', NULL, 0),
(30, 'abcs@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 20:05:03', NULL, 1),
(31, 'mirsab@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-19 16:29:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'mirsab', 'mirsab@gmail.com', 1234578765, '25d55ad283aa400af464c76d713c07ad', 'abcs', 'new york', 'xyz', 2324, 'united states', 'washington', 'ws', 13233, '2023-04-05 16:04:30', NULL),
(6, 'abcd', 'abcs@gmail.com', 134234, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 20:04:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
