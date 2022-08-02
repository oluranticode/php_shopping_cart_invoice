-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 11:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `reference`, `pmode`, `products`, `amount_paid`) VALUES
(22, 'Temitope', 'dami@gmail.com', '67890', 'ytryuhjk', '', 'Net Banking', '', '0'),
(23, 'Beverly Schneider', 'gucipyf@mailinator.com', '+1 (639) 235-7644', 'Molestiae ea dolores', '', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(24, 'Leonard Orr', 'bunysadyhy@mailinator.com', '+1 (585) 858-4781', 'Deleniti dicta dolor', '', 'Net Banking', 'Huawei 10 Pro(1)', '75000'),
(25, 'Tatyana Foreman', 'gyhyc@mailinator.com', '+1 (689) 497-3995', 'In sint sequi qui et', '', 'Net Banking', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(26, 'Tanisha Nunez', 'nyzimogiga@mailinator.com', '+1 (147) 634-4634', 'Aut voluptatem Nam e', '', 'Net Banking', 'Huawei 10 Pro(1)', '75000'),
(27, 'Tanisha Nunez', 'nyzimogiga@mailinator.com', '+1 (147) 634-4634', 'Aut voluptatem Nam e', '', 'Net Banking', 'Huawei 10 Pro(1)', '75000'),
(28, 'Tanisha Nunez', 'nyzimogiga@mailinator.com', '+1 (147) 634-4634', 'Aut voluptatem Nam e', '', 'Net Banking', 'Huawei 10 Pro(1)', '75000'),
(37, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(38, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(39, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(40, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(41, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(42, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(43, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(44, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(45, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(46, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(47, 'Uriah Valentine', 'ruzuki@mailinator.com', '+1 (123) 793-6354', 'Sunt incidunt ipsam', '', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(48, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(49, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(50, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(51, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(52, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(53, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(54, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(55, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(56, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(57, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(58, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(59, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(60, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(61, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(62, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(63, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(64, 'Maris Blackburn', 'vywovoso@mailinator.com', '+1 (522) 883-8229', 'Reprehenderit at co', '', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(65, 'Ivy Fuentes', 'numu@mailinator.com', '+1 (306) 912-2834', 'Sed culpa magni vol', '', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(66, 'Quin Tate', 'nixawe@mailinator.com', '+1 (178) 863-8686', 'Minim irure et corru', ' TD943391528', 'Cash On Delivry', 'LG v30(1), MI Note 5 Pro(1), Nokia 7 Plus(1), One Plus 6(1)', '140000'),
(67, 'Quin Tate', 'nixawe@mailinator.com', '+1 (178) 863-8686', 'Minim irure et corru', ' TD943391528', 'Cash On Delivry', 'LG v30(1), MI Note 5 Pro(1), Nokia 7 Plus(1), One Plus 6(1)', '140000'),
(68, 'Randall Guthrie', 'nuzamizah@mailinator.com', '+1 (299) 227-1903', 'Cum possimus enim n', ' TD970636591', 'Cash On Delivry', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(69, 'Randall Guthrie', 'nuzamizah@mailinator.com', '+1 (299) 227-1903', 'Cum possimus enim n', ' TD970636591', 'Cash On Delivry', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(70, 'Adara Kent', 'bifizewatu@mailinator.com', '+1 (945) 961-2354', 'In sit exercitation ', ' TD908823253', 'Net Banking', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1)', '230000'),
(71, 'Adara Kent', 'bifizewatu@mailinator.com', '+1 (945) 961-2354', 'In sit exercitation ', ' TD908823253', 'Net Banking', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1)', '230000'),
(72, 'Lacy Calderon', 'kynob@mailinator.com', '+1 (495) 579-4736', 'Dolor beatae optio ', ' TD896410832', 'Cash On Delivry', 'Huawei 10 Pro(1), One Plus 6(1), LG v30(1)', '175000'),
(73, 'Lacy Calderon', 'kynob@mailinator.com', '+1 (495) 579-4736', 'Dolor beatae optio ', ' TD896410832', 'Cash On Delivry', 'Huawei 10 Pro(1), One Plus 6(1), LG v30(1)', '175000'),
(74, 'Indigo Mcfarland', 'cucipexuk@mailinator.com', '+1 (632) 696-8562', 'Ut fuga Exercitatio', ' TD508256338', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(75, 'Indigo Mcfarland', 'cucipexuk@mailinator.com', '+1 (632) 696-8562', 'Ut fuga Exercitatio', ' TD508256338', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(76, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(77, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(78, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(79, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(80, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(81, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(82, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(83, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(84, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(85, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(86, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(87, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(88, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(89, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(90, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(91, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(92, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(93, 'Ciaran Mcfadden', 'boda@mailinator.com', '+1 (675) 699-7515', 'Nisi et est ullamco ', ' TD622527298', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '245000'),
(94, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(95, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(96, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(97, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(98, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(99, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(100, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(101, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(102, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(103, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(104, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(105, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(106, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(107, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(108, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(109, 'Fatima Sandoval', 'gobex@mailinator.com', '+1 (634) 521-7045', 'Consectetur officia ', ' TD59677354', 'Debit/Credit Card', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(110, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(111, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(112, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(113, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(114, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(115, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(116, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(117, 'Remedios Austin', 'byzujof@mailinator.com', '+1 (157) 783-3021', 'Nobis non consequat', ' TD325601082', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(118, 'Lysandra Reese', 'zolovajyj@mailinator.com', '+1 (501) 194-3037', 'Quam amet a atque q', ' TD971220394', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(119, 'Kylynn Grimes', 'wejis@mailinator.com', '+1 (141) 561-7955', 'Et enim laudantium ', ' TD995111475', 'Cash On Delivry', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(120, 'Kylynn Grimes', 'wejis@mailinator.com', '+1 (141) 561-7955', 'Et enim laudantium ', ' TD995111475', 'Cash On Delivry', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(121, 'Julian Burns', 'cagyqowo@mailinator.com', '+1 (311) 499-8437', 'Quaerat culpa perfer', ' TD396873076', 'Cash On Delivry', 'Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '155000'),
(122, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(123, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(124, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(125, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(126, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(127, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(128, 'Mari Rivas', 'jidone@mailinator.com', '+1 (149) 271-9085', 'Nostrud voluptas odi', ' TD921125909', 'Net Banking', 'LG v30(1), Huawei 10 Pro(1)', '140000'),
(129, 'Colton Perez', 'cudobu@mailinator.com', '+1 (552) 771-3313', 'Id similique quis f', ' TD582896442', 'Debit/Credit Card', 'Huawei 10 Pro(1), Apple iPhone X(1)', '165000'),
(130, 'Colton Perez', 'cudobu@mailinator.com', '+1 (552) 771-3313', 'Id similique quis f', ' TD582896442', 'Debit/Credit Card', 'Huawei 10 Pro(1), Apple iPhone X(1)', '165000'),
(131, 'Colton Perez', 'cudobu@mailinator.com', '+1 (552) 771-3313', 'Id similique quis f', ' TD582896442', 'Debit/Credit Card', 'Huawei 10 Pro(1), Apple iPhone X(1)', '165000'),
(132, 'Colton Perez', 'cudobu@mailinator.com', '+1 (552) 771-3313', 'Id similique quis f', ' TD582896442', 'Debit/Credit Card', 'Huawei 10 Pro(1), Apple iPhone X(1)', '165000'),
(133, 'Mari Kelly', 'wajodaq@mailinator.com', '+1 (834) 788-7938', 'Laborum Ad dicta do', ' TD435001932', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '155000'),
(134, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(135, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(136, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(137, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(138, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(139, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(140, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(141, 'Xena Carpenter', 'kicyri@mailinator.com', '+1 (854) 931-7809', 'Veniam debitis accu', ' TD553173285', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000'),
(142, 'Wylie Farley', 'taxipove@mailinator.com', '+1 (707) 121-3929', 'Quia amet laudantiu', ' TD767676216', 'Debit/Credit Card', 'Huawei 10 Pro(1), LG v30(1), MI Note 5 Pro(1)', '155000'),
(143, 'Oren Buchanan', 'dopyzibo@mailinator.com', '+1 (877) 816-8687', 'Eligendi velit rem m', ' TD244251618', 'Cash On Delivry', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(144, 'Oren Buchanan', 'dopyzibo@mailinator.com', '+1 (877) 816-8687', 'Eligendi velit rem m', ' TD244251618', 'Cash On Delivry', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(145, 'Oren Buchanan', 'dopyzibo@mailinator.com', '+1 (877) 816-8687', 'Eligendi velit rem m', ' TD244251618', 'Cash On Delivry', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(146, 'Oren Buchanan', 'dopyzibo@mailinator.com', '+1 (877) 816-8687', 'Eligendi velit rem m', ' TD244251618', 'Cash On Delivry', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(147, 'Oren Buchanan', 'dopyzibo@mailinator.com', '+1 (877) 816-8687', 'Eligendi velit rem m', ' TD244251618', 'Cash On Delivry', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(148, 'Harding Fox', 'racinax@mailinator.com', '+1 (156) 572-7226', 'Architecto officia n', ' TD847610910', 'Debit/Credit Card', 'Apple iPhone X(1), Huawei 10 Pro(1)', '165000'),
(149, 'Maile Battle', 'kohabymilu@mailinator.com', '+1 (352) 245-8297', 'Consequatur Debitis', ' TD73723872', 'Cash On Delivry', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(150, 'Maile Battle', 'kohabymilu@mailinator.com', '+1 (352) 245-8297', 'Consequatur Debitis', ' TD73723872', 'Cash On Delivry', 'Huawei 10 Pro(1), LG v30(1)', '140000'),
(151, 'Gloria Wilkerson', 'nysekaxon@mailinator.com', '+1 (568) 303-9295', 'A eos quos ipsam fa', ' TD782028862', 'Net Banking', 'LG v30(1), MI Note 5 Pro(1)', '80000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Apple iPhone X', '90000', 1, 'image/iphone_x.jpg', 'p1000'),
(2, 'Huawei 10 Pro', '75000', 1, 'image/huawei_mate10_pro.jpg', 'p1001'),
(3, 'LG v30', '65000', 1, 'image/lg_v30.jpg', 'p1002'),
(4, 'MI Note 5 Pro', '15000', 1, 'image/mi_note_5_pro.jpg', 'p1003'),
(5, 'Nokia 7 Plus', '25000', 1, 'image/nokia_7_plus.jpg', 'p1004'),
(6, 'One Plus 6', '35000', 1, 'image/one_plus_6.jpg', 'p1005'),
(7, 'Zenfone Max Pro', '15000', 1, 'image/zenfone_m1.jpg', 'p1006'),
(9, 'Samsung A50', '25000', 1, 'image/samsung_a50.jpg', 'p1007');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
