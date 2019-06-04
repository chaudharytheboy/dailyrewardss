-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 07:22 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostingadmin_walmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `review_users` int(11) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `url_1` varchar(255) DEFAULT NULL,
  `url_2` varchar(255) DEFAULT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `img_popular` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `product_price`, `regular_price`, `shipping`, `quantity`, `images`, `review_users`, `reviews`, `url_1`, `url_2`, `ct_dt`, `img_popular`) VALUES
(1, 'Bran New January 2019 Designer Watches For Men and Women - The Perfect Present!', 'For Him and her Choose a Style', '95.99', '0.00', '4.95', 1, 'images/products_image/srvywatch.png', 413, 'images/4-half-star.png', 'https://expressrevenue.com/link.php?affid=4200&campid=2439&screid=2632&subid={affiliate_id}&s2={transaction_id}', '', '2019-05-14 05:58:19', ''),
(2, 'Pro Tactical LED Flashlight', 'The worlds brightest, most powerful &amp; reliable tactical Led Flashlight!', '35.99', '0.00', '4.95', 3, 'images/products_image/srvyflashlight1.png', 614, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=607425&subid1={affiliate_id}&s2={transaction_id}', '', '2019-05-14 05:58:21', ''),
(3, 'Male Enhancement FormulaÂ©', 'Get Bigger, Last Longer, Stay Harder(Limited Time Promotion)', '124.95', '0.00', '4.95', 4, 'images/products_image/4.png', 891, 'images/4-half-star.png', 'http://maxxofficial.ourhealthblog.com/?sub1=192152&sub2=9Zmah5PNenhkPCdbMn5PeRxaRn6&sub3=G11_}', '', '2019-05-14 06:02:38', ''),
(4, 'Anti Aging Moisturizer Â©', 'Look younger and well rested! Its skin-strengthening ingredients and advanced formula work immediately!', '189.97', '0.00', '4.95', 2, 'images/products_image/2.jpg', 514, 'images/5-star.png', 'https://trylucineux.com/?c=df9d737508334b9f90c504caee5885', '', '2019-05-14 06:04:02', ''),
(5, 'Testosterone Booster', 'Increase muscle mass with this all natural testosterone booster!', '109.95', '0.00', '4.95', 2, 'images/products_image/5.png', 813, 'images/4-half-star.png', 'https://www.gethealthspot.com/testozen/?AFID=AFI&SID=5115&click_id=243667371', '', '2019-05-14 06:05:19', ''),
(6, 'Clinically Validated Canabidiol', 'Relieves anxiety, reduces blood sugar levels, promotes bone growth!', '288.99 ', '0.00', '4.95', 2, 'images/products_image/6.jpg', 917, 'images/5-star.png', 'https://www.try-cbd-now.com/v4/?affId=EAF9BB73&c2=2407-2992&c3=G11_-4w1mtif673jn----------&c1=16170131', '', '2019-05-14 06:06:29', ''),
(7, 'Forskolin Keto CompleteÂ©', 'Flush Pounds and Detoxify your Body!', '94.99', '0.00', '4.95', 4, 'images/products_image/3.png', 815, 'images/4-half-star.png', 'https://regalketo.com/success/v2/?AFID=TAN&SID=6719&click_id=243667433', '', '2019-05-21 09:44:09', 'images/popular_image/default-product-img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `ct_dt`) VALUES
(1, 'wmtrus@tcrm.com', 'Admin@3', '2019-04-19 05:20:04');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
