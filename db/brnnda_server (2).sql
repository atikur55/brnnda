-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2021 at 06:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chabikathi_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'Qp2eLFtxRcDNnwhoUbEgeCsQF18PGLWx4WENOiyIDgnY6pEe0AZpDuVmg9yi', '2018-02-28 23:27:08', '2019-07-26 21:21:32', 'Genius Store'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'Bangla', '1567247534xTuVLrXh.json', '1567247534xTuVLrXh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'dfgdfdsd', 22, 'asd', '2019-08-17 08:23:38', '2019-08-17 08:23:38', 'Ticket', NULL),
(2, 'dfgdfdsd', 22, 'asdasd', '2019-08-17 08:23:48', '2019-08-17 08:23:48', 'Dispute', 'dfgfgfgfd'),
(3, 'Order Confirmation', 13, 'sdf', '2019-08-19 23:17:51', '2019-08-19 23:17:51', 'Dispute', 'adasd423423'),
(4, 'sda', 27, 'asdasd', '2019-10-05 12:49:32', '2019-10-05 12:49:32', NULL, NULL),
(5, 'lol', 27, 'sdfsdf', '2019-10-05 12:50:29', '2019-10-05 12:50:29', NULL, NULL),
(6, 'dfgdfdsdasdsf', 27, 'fdgdfgfdgdfg', '2019-10-05 12:50:59', '2019-10-05 12:50:59', NULL, NULL),
(7, 'dfdfd', 27, 'dfdf', '2019-10-20 04:58:53', '2019-10-20 04:58:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'asd', 22, '2019-08-17 08:23:38', '2019-08-17 08:23:38'),
(2, 2, 'asdasd', 22, '2019-08-17 08:23:48', '2019-08-17 08:23:48'),
(3, 1, 'bv', 22, '2019-08-17 09:21:47', '2019-08-17 09:21:47'),
(4, 2, 'dfg', 22, '2019-08-17 09:21:58', '2019-08-17 09:21:58'),
(5, 3, 'sdf', 13, '2019-08-19 23:17:51', '2019-08-19 23:17:51'),
(6, 4, 'asdasd', NULL, '2019-10-05 12:49:33', '2019-10-05 12:49:33'),
(7, 5, 'sdfsdf', NULL, '2019-10-05 12:50:30', '2019-10-05 12:50:30'),
(8, 6, 'fdgdfgfdgdfg', NULL, '2019-10-05 12:51:00', '2019-10-05 12:51:00'),
(9, 7, 'dfdf', NULL, '2019-10-20 04:58:53', '2019-10-20 04:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `android_token`
--

CREATE TABLE `android_token` (
  `id` int(11) NOT NULL,
  `android_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `android_token`
--

INSERT INTO `android_token` (`id`, `android_token`) VALUES
(1, 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `android_user_check`
--

CREATE TABLE `android_user_check` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `destroyed_at` timestamp NULL DEFAULT current_timestamp(),
  `phone` varchar(255) DEFAULT NULL,
  `last_login_time` varchar(255) NOT NULL,
  `last_logout_time` varchar(255) DEFAULT NULL,
  `logout_count` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `android_user_check`
--

INSERT INTO `android_user_check` (`id`, `user_id`, `token`, `created_at`, `destroyed_at`, `phone`, `last_login_time`, `last_logout_time`, `logout_count`, `email`) VALUES
(1, 35, NULL, '2021-01-26 03:46:39', '2021-01-26 09:39:46', '01937570721', '2021-01-26 10:01:19', '2021-01-26 10:53:19', 1, NULL),
(3, 37, NULL, '2021-01-26 04:22:23', '2021-01-26 10:23:22', '01937570722', '2021-01-26 10:10:38', '2021-01-26 10:51:38', 2, NULL),
(4, 31, 'essential70255874', '2021-01-29 23:40:26', '2021-01-30 05:26:40', '11223344', '2021-02-11 11:41:43', NULL, NULL, NULL),
(5, 111, 'essential69635189', '2021-02-11 04:07:29', '2021-02-11 10:29:07', NULL, '2021-02-11 10:39:37', NULL, NULL, 'adsf@gmail.com'),
(6, 110, 'essential98221112', '2021-02-11 04:54:37', '2021-02-11 10:37:54', NULL, '2021-02-11 10:22:38', NULL, NULL, 'gaziaubi89@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39'),
(34, 19, 'App\\Models\\Category', 'test', 'test', 1, 1, '2021-01-09 12:25:05', '2021-01-09 12:25:05'),
(35, 2, NULL, 'test', 'test', 1, 1, '2021-01-31 05:38:49', '2021-01-31 05:38:49'),
(36, 2, NULL, 'test', 'test', 1, 1, '2021-01-31 05:39:15', '2021-01-31 05:39:15'),
(37, 2, NULL, 'asdf', 'asdf', 0, 0, '2021-01-31 05:39:32', '2021-01-31 05:39:32'),
(38, 18, 'App\\Models\\Childcategory', 'test', 'test', 1, 1, '2021-01-31 05:40:37', '2021-01-31 05:40:37'),
(39, 1, NULL, 'tt', 'tt', 1, 1, '2021-01-31 05:41:36', '2021-01-31 05:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(257, 34, 'adsf', '2021-01-09 12:25:17', '2021-01-09 12:25:17'),
(258, 35, 'adsf', '2021-01-31 05:38:50', '2021-01-31 05:38:50'),
(259, 35, 'adsf', '2021-01-31 05:38:50', '2021-01-31 05:38:50'),
(260, 35, 'adsf', '2021-01-31 05:38:50', '2021-01-31 05:38:50'),
(261, 36, 'test', '2021-01-31 05:39:15', '2021-01-31 05:39:15'),
(262, 36, 'test3', '2021-01-31 05:39:15', '2021-01-31 05:39:15'),
(263, 37, 'fdsaf', '2021-01-31 05:39:32', '2021-01-31 05:39:32'),
(264, 38, 'test', '2021-01-31 05:40:37', '2021-01-31 05:40:37'),
(265, 39, 'tt', '2021-01-31 05:41:36', '2021-01-31 05:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1568889151top2.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1568889146top1.jpg', NULL, 'TopSmall'),
(3, '1568889164bottom1.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 36, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20'),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53'),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 50, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 151, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 36, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 69, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 34, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', 'www.geniusocean.com', 40, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_start` datetime DEFAULT NULL,
  `c_end` datetime DEFAULT NULL,
  `c_image` varchar(255) NOT NULL DEFAULT 'photo.jpg',
  `c_status` int(11) DEFAULT 1,
  `c_fix_start` datetime DEFAULT NULL,
  `c_fix_end` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `c_name`, `c_start`, `c_end`, `c_image`, `c_status`, `c_fix_start`, `c_fix_end`, `created_at`, `updated_at`) VALUES
(11, 'valentine offer', '2021-02-04 13:40:00', '2021-03-11 13:40:00', '11.jpeg', 0, NULL, NULL, '2021-02-14 01:40:47', NULL),
(13, 'February special', '2021-02-02 13:46:00', '2021-02-25 13:46:00', '13.jpeg', 1, NULL, NULL, '2021-02-14 01:46:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign_products`
--

INSERT INTO `campaign_products` (`id`, `campaign_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 207, '2021-02-11 00:52:40', NULL),
(2, 2, 204, '2021-02-11 00:52:40', NULL),
(7, 4, 213, '2021-02-13 23:12:16', NULL),
(9, 4, 211, '2021-02-13 23:12:16', NULL),
(12, 4, 215, '2021-02-13 23:19:49', NULL),
(13, 4, 214, '2021-02-13 23:22:58', NULL),
(14, 4, 213, '2021-02-13 23:22:58', NULL),
(33, 13, 208, '2021-02-14 01:46:48', NULL),
(34, 13, 207, '2021-02-14 01:46:48', NULL),
(35, 13, 206, '2021-02-14 01:46:48', NULL),
(36, 11, 175, '2021-02-14 01:52:45', NULL),
(37, 11, 174, '2021-02-14 01:52:45', NULL),
(38, 11, 210, '2021-02-14 01:52:59', NULL),
(39, 11, 205, '2021-02-14 01:52:59', NULL),
(40, 11, 212, '2021-02-15 00:28:28', NULL),
(41, 11, 211, '2021-02-15 00:28:28', NULL),
(42, 11, 209, '2021-02-15 00:28:28', NULL),
(43, 11, 204, '2021-02-15 00:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(4, 'Electronic', 'electric', 1, '1557807287light.png', 1, '1568709131f6.jpg'),
(5, 'Fashion & Beauty', 'fashion-and-Beauty', 1, '1557807279fashion.png', 1, '1568709123f1.jpg'),
(6, 'Camera & Photo', 'camera-and-photo', 1, '1557807264camera.png', 1, '1568709110f2.jpg'),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 1, '1557377810mobile.png', 1, '1568709597f4.jpg'),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 1, '1557807258sports.png', 1, '1568709577f8.jpg'),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 1, '1557807252furniture.png', 1, '1568709077f7.jpg'),
(10, 'Health & Beauty', 'health-and-beauty', 1, '1557807228trends.png', 1, '1568709067f3.jpg'),
(11, 'Books & Office', 'books-and-office', 1, '1557377917bags.png', 1, '1568709050f8.jpg'),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 1, '1557807214sports.png', 1, '1568709042f9.jpg'),
(13, 'Books', 'books', 1, '1557807208bags.png', 1, '1568709037f10.jpg'),
(15, 'Automobiles & Motorcycles', 'automobiles-and-motorcycles', 1, '1568708648motor.car.png', 1, '1568709031f11.jpg'),
(16, 'Home decoration & Appliance', 'Home-decoration-and-Appliance', 1, '1568708757home.png', 1, '1568709027f12.jpg'),
(17, 'Portable & Personal Electronics', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', 0, NULL),
(18, 'Outdoor, Recreation & Fitness', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', 0, NULL),
(19, 'Surveillance Safety & Security', 'Surveillance-Safety-and-Security', 1, NULL, 0, NULL),
(20, 'Featured Test', 'featuredtest', 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1),
(2, 2, 'LED TV', 'led-tv', 1),
(3, 2, 'Curved TV', 'curved-tv', 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1),
(5, 3, 'Top Freezer', 'top-freezer', 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1),
(9, 4, 'Front Loading', 'front-loading', 1),
(10, 4, 'Top Loading', 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', 'laundry-center', 1),
(13, 5, 'Central Air', 'central-air', 1),
(14, 5, 'Window Air', 'window-air', 1),
(15, 5, 'Portable Air', 'portable-air', 1),
(16, 5, 'Hybrid Air', 'hybrid-air', 1),
(17, 2, 'tv plug', 'tvplug', 1),
(18, 2, 'tvstand', 'tvstand', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(2, 22, 97, 'fdh', '2019-10-14 01:57:28', '2019-10-14 01:57:36'),
(3, 22, 176, 'gdfg', '2019-11-13 21:57:05', '2019-11-13 21:57:05'),
(4, 22, 176, 'jghjg', '2019-11-13 21:59:27', '2019-11-13 21:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 'dfgdfdsdsdf', 22, 13, 'fdfgdfgfdgdfg', '2019-08-17 08:24:14', '2019-08-17 08:24:14'),
(2, 'dfgdfdsd', 22, 13, 'dasd', '2019-08-17 08:59:40', '2019-08-17 08:59:40'),
(3, 'Order Confirmation', 13, 22, 'EE', '2019-08-19 23:17:26', '2019-08-19 23:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 3762, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 392, 0, NULL),
(6, 'browser', 'Windows 7', 416, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 361, 0, NULL),
(11, 'browser', 'Mac OS X', 502, 0, NULL),
(12, 'referral', 'l.facebook.com', 4, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 4, 0, NULL),
(19, 'referral', 'sandbox.sslcommerz.com', 2, 0, NULL),
(20, 'referral', 'm.facebook.com', 1, 0, NULL),
(21, 'referral', 'accounts.google.com', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(2, 'sdsdsasd', 0, 11, NULL, 3, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 0, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26'),
(7, 'test', 1, 50, NULL, 0, 1, '2021-01-27', '2031-01-09'),
(8, '1111', 0, 20, NULL, 0, 1, '2021-01-21', '2021-01-30'),
(9, 'bb', 0, 200, '342', 0, 1, '2020-01-21', '2020-01-22'),
(10, 'ten', 1, 10, '12', 8, 1, '2021-01-25', '2021-02-28'),
(11, '20', 0, 20, '30', 0, 1, '2021-01-31', '2023-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'BDT', '৳', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/MGucWKc.jpg\" width=\"350\"></div></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 31, 13);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(6, 93, '156801646314-min.jpg'),
(7, 93, '156801646315-min.jpg'),
(8, 93, '156801646316-min.jpg'),
(22, 129, '15680254328Ei8T0MB.jpg'),
(23, 129, '1568025432wRmpve8d.jpg'),
(24, 129, '1568025432kkRYzLsF.jpg'),
(25, 129, '1568025432zxQBe6Gk.jpg'),
(26, 128, '1568025537sJbDPnFk.jpg'),
(27, 128, '1568025537NBmHxJOz.jpg'),
(28, 128, '1568025537hxqeFbS8.jpg'),
(29, 128, '1568025538zK3tJpmL.jpg'),
(34, 126, '1568025693kKLReNYO.jpg'),
(35, 126, '1568025694Iv3pkz1q.jpg'),
(36, 126, '1568025694T8HhdLVS.jpg'),
(37, 126, '1568025695vTdg7ndt.jpg'),
(38, 125, '15680257894Waz2tuN.jpg'),
(39, 125, '1568025789vd0P4TBv.jpg'),
(40, 125, '15680257899bih5sGh.jpg'),
(41, 125, '156802578924sLIgzl.jpg'),
(42, 124, '1568025825cC2Pmuit.jpg'),
(43, 124, '1568025825EACzLFld.jpg'),
(44, 124, '1568025825MfCyCqtD.jpg'),
(45, 124, '15680258252yabMeAz.jpg'),
(46, 123, '15680258512fKQla5g.jpg'),
(47, 123, '1568025851pIjl0mWp.jpg'),
(48, 123, '1568025851tQw7JXXG.jpg'),
(49, 123, '1568025851ewjtSDkZ.jpg'),
(50, 96, '1568025891wWAAbOjc.jpg'),
(51, 96, '1568025891fyMNeXRy.jpg'),
(52, 96, '1568025891OdV64Tw1.jpg'),
(53, 96, '1568025891xQF7Zufe.jpg'),
(58, 102, '1568026307THs0VQQU.jpg'),
(59, 102, '1568026307jvCscHth.jpg'),
(60, 102, '1568026307g5xMFdx3.jpg'),
(61, 102, '1568026307Z3at0HEM.jpg'),
(62, 101, '1568026331Y6UMgMcI.jpg'),
(63, 101, '1568026331xZbT4OWG.jpg'),
(64, 101, '1568026331y7eIFJXZ.jpg'),
(65, 101, '1568026331i2wH8RI0.jpg'),
(66, 100, '1568026374xCTjQYZ8.jpg'),
(67, 100, '1568026374DzmvqA9d.jpg'),
(68, 100, '1568026374OEH73u5X.jpg'),
(69, 100, '1568026374vZhqRv8c.jpg'),
(70, 99, '15680264120LdBSU1v.jpg'),
(71, 99, '1568026412eMjsI940.jpg'),
(72, 99, '1568026412GFjvHiZv.jpg'),
(73, 99, '15680264122fwGi20d.jpg'),
(78, 97, '1568026469hSlmBpzE.jpg'),
(79, 97, '15680264697AI8LicQ.jpg'),
(80, 97, '15680264691xyFt5Y6.jpg'),
(81, 97, '1568026469dC3hrMz0.jpg'),
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(104, 105, '1568026861YorsLvUa.jpg'),
(105, 105, '1568026861PikoX1Qb.jpg'),
(106, 105, '1568026861SBJqjw66.jpg'),
(107, 105, '1568026861WYh54Arp.jpg'),
(108, 104, '1568026885rmo0LDoo.jpg'),
(109, 104, '15680268851m939o7O.jpg'),
(110, 104, '1568026885fVXYCGKu.jpg'),
(111, 104, '1568026885GDRL3thY.jpg'),
(112, 103, '1568026903LbVQUxIr.jpg'),
(113, 103, '1568026914IpRVYDV4.jpg'),
(114, 103, '15680269141gKO8x5X.jpg'),
(115, 103, '1568026914Q938xXM2.jpg'),
(116, 93, '1568026950y7ihS4wE.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(172, 130, '1568029084hQT5ZO0j.jpg'),
(173, 130, '1568029084ncGXxQzN.jpg'),
(174, 130, '1568029084b0OonKFy.jpg'),
(175, 130, '15680290857TD4iOWP.jpg'),
(180, 114, '1568029158brS7xQCe.jpg'),
(181, 114, '1568029158QlC0tg5a.jpg'),
(182, 114, '1568029158RrN4AEtQ.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(197, 134, '15693932021.jpg'),
(198, 134, '15693932022.jpg'),
(199, 135, '15698200931.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(219, 160, '1570085654asphalt-auto-automobile-575386.jpg'),
(220, 160, '1570085654asphalt-auto-automobile-831475.jpg'),
(221, 161, '1570086479audi-automobile-car-909907.jpg'),
(222, 162, '1570255905asphalt-auto-automobile-831475.jpg'),
(223, 162, '1570255905audi-automobile-car-909907.jpg'),
(224, 167, '1570874976asphalt-auto-automobile-831475.jpg'),
(225, 167, '1570874976audi-automobile-car-909907.jpg'),
(226, 167, '1570874976automobile-automotive-car-112460.jpg'),
(227, 168, '1570875445automobile-automotive-car-112460.jpg'),
(228, 168, '1570875445automobile-automotive-car-358070.jpg'),
(229, 201, '1611039886difference-between-tangerines-oranges-thumb-732x549.jpg'),
(230, 201, '1611039887orange.jpg'),
(231, 201, '1611039887Orange-Whole-&-Split.jpg'),
(232, 202, '1611041972difference-between-tangerines-oranges-thumb-732x549.jpg'),
(233, 202, '1611041972orange.jpg'),
(234, 202, '1611041972Orange-Whole-&-Split.jpg'),
(235, 203, '1611042220difference-between-tangerines-oranges-thumb-732x549.jpg'),
(236, 203, '1611042220orange.jpg'),
(237, 203, '1611042220Orange-Whole-&-Split.jpg'),
(238, 204, '1611042429difference-between-tangerines-oranges-thumb-732x549.jpg'),
(239, 204, '1611042429orange.jpg'),
(240, 204, '1611042429Orange-Whole-&-Split.jpg'),
(241, 205, '1611042779difference-between-tangerines-oranges-thumb-732x549.jpg'),
(242, 205, '1611042779orange.jpg'),
(243, 205, '1611042779Orange-Whole-&-Split.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_business` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`) VALUES
(1, '1611819398Logo-2.png', '1610173009Logo-2.png', 'CHABIKATHI', 'Info@example.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2019. All Rights Reserved By Essential-infotech', '#b02025', '1610172355299 (3).gif', '1610172354299 (3).gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 0, 0, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'mail.essential-infotech.dev', '465', 'testing@essential-infotech.dev', 'onlyanimoisreal', 'testing@essential-infotech.dev', 'chabi', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 5, 5, 1, 1, 0, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 0, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1567488562subscribe.jpg', '1611819404Logo-2.png', '1567655174profile.jpg', '#666666', 1, 1, 0, 'shaon143-facilitator-1@gmail.com', '1611819401Logo-2.png', 'tls', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'live', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>');

-- --------------------------------------------------------

--
-- Table structure for table `grandchildcategories`
--

CREATE TABLE `grandchildcategories` (
  `id` int(11) NOT NULL,
  `childcategory_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grandchildcategories`
--

INSERT INTO `grandchildcategories` (`id`, `childcategory_id`, `name`, `slug`, `status`) VALUES
(1, 1, 'test', 'test', 1),
(2, 5, 'middle', 'middle', 1),
(3, 18, 'tripod', 'tripod', 1),
(4, 1, 'test', 'food', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1570967282kjZ4U7oI.json'),
(2, 0, 'RTL English', '1571461774YqGWmWmv.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'fdfgdfgfdgdfg', 22, NULL, '2019-08-17 08:24:14', '2019-08-17 08:24:14'),
(2, 2, 'dasd', 22, NULL, '2019-08-17 08:59:40', '2019-08-17 08:59:40'),
(3, 2, 'bv', 22, NULL, '2019-08-17 09:21:24', '2019-08-17 09:21:24'),
(4, 2, 'df', 22, NULL, '2019-08-17 09:21:27', '2019-08-17 09:21:27'),
(5, 2, 'dfg', 22, NULL, '2019-08-17 09:21:29', '2019-08-17 09:21:29'),
(6, 3, 'EE', 13, NULL, '2019-08-19 23:17:26', '2019-08-19 23:17:26'),
(7, 2, 'defgdfghdsfg', 22, NULL, '2019-08-20 23:34:02', '2019-08-20 23:34:02'),
(8, 1, 'te', 22, NULL, '2019-08-21 00:19:46', '2019-08-21 00:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 29, NULL, NULL, NULL, 1, '2021-01-09 12:30:15', '2021-01-09 12:43:30'),
(2, 3, NULL, NULL, NULL, NULL, 1, '2021-01-09 13:50:33', '2021-01-09 13:51:53'),
(3, 4, NULL, NULL, NULL, NULL, 1, '2021-01-09 13:50:57', '2021-01-09 13:51:53'),
(4, NULL, 30, NULL, NULL, NULL, 1, '2021-01-09 16:04:42', '2021-01-17 23:41:31'),
(5, NULL, 31, NULL, NULL, NULL, 1, '2021-01-17 05:20:22', '2021-01-17 23:41:31'),
(6, 5, NULL, NULL, NULL, NULL, 1, '2021-01-17 22:55:16', '2021-01-18 02:06:56'),
(7, 6, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:35:52', '2021-01-18 02:06:56'),
(8, 7, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:36:02', '2021-01-18 02:06:56'),
(9, 8, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:39:16', '2021-01-18 02:06:56'),
(10, 9, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:41:45', '2021-01-18 02:06:56'),
(11, 10, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:44:10', '2021-01-18 02:06:56'),
(12, 11, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:44:13', '2021-01-18 02:06:56'),
(13, 12, NULL, NULL, NULL, NULL, 1, '2021-01-17 23:54:57', '2021-01-18 02:06:56'),
(14, 13, NULL, NULL, NULL, NULL, 1, '2021-01-18 00:35:37', '2021-01-18 02:06:56'),
(15, 14, NULL, NULL, NULL, NULL, 1, '2021-01-18 00:38:48', '2021-01-18 02:06:56'),
(16, 15, NULL, NULL, NULL, NULL, 1, '2021-01-18 00:42:54', '2021-01-18 02:06:57'),
(17, 16, NULL, NULL, NULL, NULL, 1, '2021-01-18 05:20:39', '2021-01-18 05:29:50'),
(18, 17, NULL, NULL, NULL, NULL, 1, '2021-01-18 22:47:35', '2021-01-21 04:20:58'),
(19, 18, NULL, NULL, NULL, NULL, 1, '2021-01-21 04:10:35', '2021-01-21 04:20:58'),
(20, 19, NULL, NULL, NULL, NULL, 1, '2021-01-21 04:11:47', '2021-01-21 04:20:58'),
(21, 20, NULL, NULL, NULL, NULL, 1, '2021-01-21 04:18:59', '2021-01-21 04:20:58'),
(22, 21, NULL, NULL, NULL, NULL, 1, '2021-01-21 04:20:13', '2021-01-21 04:20:58'),
(23, 22, NULL, NULL, NULL, NULL, 1, '2021-01-21 05:28:30', '2021-01-28 03:43:40'),
(24, 23, NULL, NULL, NULL, NULL, 1, '2021-01-23 23:08:52', '2021-01-28 03:43:40'),
(25, 24, NULL, NULL, NULL, NULL, 1, '2021-01-26 05:49:22', '2021-01-28 03:43:40'),
(26, 25, NULL, NULL, NULL, NULL, 1, '2021-01-27 01:29:46', '2021-01-28 03:43:40'),
(27, 26, NULL, NULL, NULL, NULL, 1, '2021-01-27 01:30:12', '2021-01-28 03:43:40'),
(28, 27, NULL, NULL, NULL, NULL, 1, '2021-01-27 01:40:39', '2021-01-28 03:43:40'),
(29, 28, NULL, NULL, NULL, NULL, 1, '2021-01-27 05:10:22', '2021-01-28 03:43:40'),
(30, 29, NULL, NULL, NULL, NULL, 1, '2021-01-27 06:12:09', '2021-01-28 03:43:40'),
(31, 30, NULL, NULL, NULL, NULL, 1, '2021-01-27 06:15:04', '2021-01-28 03:43:40'),
(32, 31, NULL, NULL, NULL, NULL, 1, '2021-01-27 06:20:51', '2021-01-28 03:43:40'),
(33, 32, NULL, NULL, NULL, NULL, 1, '2021-01-27 06:23:20', '2021-01-28 03:43:40'),
(34, 33, NULL, NULL, NULL, NULL, 1, '2021-01-27 07:01:07', '2021-01-28 03:43:41'),
(35, 34, NULL, NULL, NULL, NULL, 1, '2021-01-27 07:02:17', '2021-01-28 03:43:41'),
(36, 35, NULL, NULL, NULL, NULL, 1, '2021-01-27 23:01:54', '2021-01-28 03:43:41'),
(37, 36, NULL, NULL, NULL, NULL, 1, '2021-01-27 23:02:43', '2021-01-28 03:43:41'),
(38, 37, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:18:07', '2021-01-28 03:43:41'),
(39, 38, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:21:19', '2021-01-28 03:43:41'),
(40, 39, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:22:46', '2021-01-28 03:43:41'),
(41, 40, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:23:57', '2021-01-28 03:43:41'),
(42, 41, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:25:07', '2021-01-28 03:43:41'),
(43, 42, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:25:22', '2021-01-28 03:43:41'),
(44, 43, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:25:38', '2021-01-28 03:43:41'),
(45, 44, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:26:09', '2021-01-28 03:43:41'),
(46, 45, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:27:11', '2021-01-28 03:43:41'),
(47, 46, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:27:59', '2021-01-28 03:43:41'),
(48, 47, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:28:31', '2021-01-28 03:43:41'),
(49, 48, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:29:10', '2021-01-28 03:43:41'),
(50, 49, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:30:00', '2021-01-28 03:43:41'),
(51, 50, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:30:15', '2021-01-28 03:43:41'),
(52, 51, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:30:39', '2021-01-28 03:43:41'),
(53, 52, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:30:47', '2021-01-28 03:43:41'),
(54, 53, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:30:59', '2021-01-28 03:43:41'),
(55, 54, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:33:34', '2021-01-28 03:43:41'),
(56, 55, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:33:46', '2021-01-28 03:43:41'),
(57, 56, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:38:33', '2021-01-28 03:43:41'),
(58, 57, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:45:04', '2021-01-28 03:43:42'),
(59, 58, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:47:13', '2021-01-28 03:43:42'),
(60, 59, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:49:45', '2021-01-28 03:43:42'),
(61, 60, NULL, NULL, NULL, NULL, 1, '2021-01-28 00:55:38', '2021-01-28 03:43:42'),
(62, 61, NULL, NULL, NULL, NULL, 1, '2021-01-28 03:39:21', '2021-01-28 03:43:42'),
(63, 62, NULL, NULL, NULL, NULL, 1, '2021-01-28 06:08:56', '2021-01-31 00:08:21'),
(64, 63, NULL, NULL, NULL, NULL, 1, '2021-01-28 06:11:14', '2021-01-31 00:08:21'),
(65, NULL, 40, NULL, NULL, NULL, 1, '2021-01-28 06:40:07', '2021-01-31 00:08:24'),
(66, NULL, 41, NULL, NULL, NULL, 1, '2021-01-30 01:56:34', '2021-01-31 00:08:24'),
(67, NULL, 42, NULL, NULL, NULL, 1, '2021-01-30 02:05:01', '2021-01-31 00:08:25'),
(68, NULL, 43, NULL, NULL, NULL, 1, '2021-01-30 05:00:00', '2021-01-31 00:08:25'),
(69, NULL, 44, NULL, NULL, NULL, 1, '2021-01-30 05:01:36', '2021-01-31 00:08:26'),
(70, NULL, 45, NULL, NULL, NULL, 1, '2021-01-30 05:03:06', '2021-01-31 00:08:26'),
(71, NULL, 46, NULL, NULL, NULL, 1, '2021-01-30 05:06:15', '2021-01-31 00:08:27'),
(72, NULL, 47, NULL, NULL, NULL, 1, '2021-01-30 05:08:00', '2021-01-31 00:08:27'),
(73, NULL, 48, NULL, NULL, NULL, 1, '2021-01-30 05:09:13', '2021-01-31 00:08:28'),
(74, NULL, 49, NULL, NULL, NULL, 1, '2021-01-30 05:10:30', '2021-01-31 00:08:29'),
(75, NULL, 50, NULL, NULL, NULL, 1, '2021-01-30 05:25:25', '2021-01-31 00:08:30'),
(76, NULL, 51, NULL, NULL, NULL, 1, '2021-01-30 05:26:58', '2021-01-31 00:08:31'),
(77, NULL, 52, NULL, NULL, NULL, 1, '2021-01-30 05:30:08', '2021-01-31 00:08:31'),
(78, NULL, 53, NULL, NULL, NULL, 1, '2021-01-30 05:31:14', '2021-01-31 00:08:31'),
(79, NULL, 54, NULL, NULL, NULL, 1, '2021-01-30 05:32:28', '2021-01-31 00:08:32'),
(80, NULL, 55, NULL, NULL, NULL, 1, '2021-01-30 06:01:07', '2021-01-31 00:08:32'),
(81, NULL, 56, NULL, NULL, NULL, 1, '2021-01-30 06:07:11', '2021-01-31 00:08:33'),
(82, NULL, 57, NULL, NULL, NULL, 1, '2021-01-30 06:08:35', '2021-01-31 00:08:33'),
(83, NULL, 58, NULL, NULL, NULL, 1, '2021-01-30 06:10:06', '2021-01-31 00:08:33'),
(84, 64, NULL, NULL, NULL, NULL, 1, '2021-01-30 23:15:30', '2021-01-31 00:08:21'),
(85, 65, NULL, NULL, NULL, NULL, 1, '2021-01-30 23:22:38', '2021-01-31 00:08:21'),
(86, 66, NULL, NULL, NULL, NULL, 1, '2021-01-30 23:25:39', '2021-01-31 00:08:21'),
(87, 67, NULL, NULL, NULL, NULL, 1, '2021-01-30 23:37:19', '2021-01-31 00:08:21'),
(88, 68, NULL, NULL, NULL, NULL, 1, '2021-01-30 23:42:52', '2021-01-31 00:08:21'),
(89, 69, NULL, NULL, NULL, NULL, 1, '2021-01-31 01:33:13', '2021-02-01 02:36:45'),
(90, 70, NULL, NULL, NULL, NULL, 1, '2021-01-31 01:36:12', '2021-02-01 02:36:45'),
(91, 71, NULL, NULL, NULL, NULL, 1, '2021-01-31 01:42:28', '2021-02-01 02:36:45'),
(92, 72, NULL, NULL, NULL, NULL, 1, '2021-01-31 01:56:33', '2021-02-01 02:36:45'),
(93, 73, NULL, NULL, NULL, NULL, 1, '2021-01-31 01:57:29', '2021-02-01 02:36:45'),
(94, 74, NULL, NULL, NULL, NULL, 1, '2021-01-31 02:12:47', '2021-02-01 02:36:45'),
(95, 75, NULL, NULL, NULL, NULL, 1, '2021-01-31 02:15:08', '2021-02-01 02:36:45'),
(96, 76, NULL, NULL, NULL, NULL, 1, '2021-01-31 02:31:12', '2021-02-01 02:36:45'),
(97, 77, NULL, NULL, NULL, NULL, 1, '2021-01-31 02:43:09', '2021-02-01 02:36:45'),
(98, NULL, 59, NULL, NULL, NULL, 1, '2021-01-31 06:50:57', '2021-02-05 23:02:34'),
(99, NULL, 60, NULL, NULL, NULL, 1, '2021-01-31 06:55:46', '2021-02-05 23:02:34'),
(100, NULL, 61, NULL, NULL, NULL, 1, '2021-01-31 06:59:10', '2021-02-05 23:02:34'),
(101, NULL, 62, NULL, NULL, NULL, 1, '2021-01-31 07:04:30', '2021-02-05 23:02:34'),
(102, NULL, 63, NULL, NULL, NULL, 1, '2021-01-31 07:05:40', '2021-02-05 23:02:34'),
(103, NULL, 64, NULL, NULL, NULL, 1, '2021-01-31 07:07:06', '2021-02-05 23:02:34'),
(104, NULL, 65, NULL, NULL, NULL, 1, '2021-01-31 07:09:14', '2021-02-05 23:02:34'),
(105, NULL, 66, NULL, NULL, NULL, 1, '2021-01-31 07:10:02', '2021-02-05 23:02:34'),
(106, NULL, 67, NULL, NULL, NULL, 1, '2021-01-31 07:11:21', '2021-02-05 23:02:34'),
(107, NULL, 68, NULL, NULL, NULL, 1, '2021-01-31 07:17:31', '2021-02-05 23:02:34'),
(108, NULL, 69, NULL, NULL, NULL, 1, '2021-01-31 07:20:47', '2021-02-05 23:02:34'),
(109, NULL, 70, NULL, NULL, NULL, 1, '2021-01-31 07:32:46', '2021-02-05 23:02:34'),
(110, NULL, 71, NULL, NULL, NULL, 1, '2021-01-31 07:33:26', '2021-02-05 23:02:34'),
(111, NULL, 72, NULL, NULL, NULL, 1, '2021-01-31 07:34:24', '2021-02-05 23:02:34'),
(112, NULL, 73, NULL, NULL, NULL, 1, '2021-01-31 22:43:27', '2021-02-05 23:02:34'),
(113, 78, NULL, NULL, NULL, NULL, 1, '2021-02-01 00:21:14', '2021-02-01 02:36:45'),
(114, 79, NULL, NULL, NULL, NULL, 1, '2021-02-01 00:26:38', '2021-02-01 02:36:45'),
(115, 80, NULL, NULL, NULL, NULL, 1, '2021-02-01 00:35:43', '2021-02-01 02:36:45'),
(116, 81, NULL, NULL, NULL, NULL, 1, '2021-02-01 00:58:30', '2021-02-01 02:36:45'),
(117, 82, NULL, NULL, NULL, NULL, 1, '2021-02-01 02:32:06', '2021-02-01 02:36:45'),
(118, 83, NULL, NULL, NULL, NULL, 1, '2021-02-01 02:34:16', '2021-02-01 02:36:45'),
(119, 84, NULL, NULL, NULL, NULL, 1, '2021-02-01 02:39:04', '2021-02-03 05:55:00'),
(120, NULL, 74, NULL, NULL, NULL, 1, '2021-02-01 04:25:31', '2021-02-05 23:02:34'),
(121, NULL, 75, NULL, NULL, NULL, 1, '2021-02-01 04:57:31', '2021-02-05 23:02:34'),
(122, NULL, 76, NULL, NULL, NULL, 1, '2021-02-01 05:04:56', '2021-02-05 23:02:34'),
(123, NULL, 77, NULL, NULL, NULL, 1, '2021-02-01 05:17:18', '2021-02-05 23:02:34'),
(124, NULL, 78, NULL, NULL, NULL, 1, '2021-02-01 05:20:59', '2021-02-05 23:02:34'),
(125, NULL, 79, NULL, NULL, NULL, 1, '2021-02-01 06:04:47', '2021-02-05 23:02:34'),
(126, 89, NULL, NULL, NULL, NULL, 1, '2021-02-02 00:55:15', '2021-02-03 05:55:00'),
(127, 90, NULL, NULL, NULL, NULL, 1, '2021-02-02 00:55:33', '2021-02-03 05:55:00'),
(128, 91, NULL, NULL, NULL, NULL, 1, '2021-02-02 00:57:00', '2021-02-03 05:55:00'),
(129, 92, NULL, NULL, NULL, NULL, 1, '2021-02-02 00:57:27', '2021-02-03 05:55:00'),
(130, 93, NULL, NULL, NULL, NULL, 1, '2021-02-02 00:59:28', '2021-02-03 05:55:00'),
(131, 94, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:01:07', '2021-02-03 05:55:00'),
(132, 95, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:17:08', '2021-02-03 05:55:01'),
(133, 96, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:17:41', '2021-02-03 05:55:01'),
(134, 97, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:19:06', '2021-02-03 05:55:01'),
(135, 98, NULL, NULL, NULL, NULL, 1, '2021-02-02 01:20:09', '2021-02-03 05:55:01'),
(136, NULL, 80, NULL, NULL, NULL, 1, '2021-02-02 03:23:38', '2021-02-05 23:02:34'),
(137, NULL, 81, NULL, NULL, NULL, 1, '2021-02-02 04:07:49', '2021-02-05 23:02:34'),
(138, NULL, 82, NULL, NULL, NULL, 1, '2021-02-02 04:10:55', '2021-02-05 23:02:34'),
(139, NULL, 83, NULL, NULL, NULL, 1, '2021-02-02 04:25:53', '2021-02-05 23:02:34'),
(140, NULL, 84, NULL, NULL, NULL, 1, '2021-02-02 05:59:01', '2021-02-05 23:02:34'),
(141, NULL, 85, NULL, NULL, NULL, 1, '2021-02-02 06:23:34', '2021-02-05 23:02:34'),
(142, NULL, 86, NULL, NULL, NULL, 1, '2021-02-02 23:37:09', '2021-02-05 23:02:34'),
(143, 99, NULL, NULL, NULL, NULL, 1, '2021-02-03 00:21:01', '2021-02-03 05:55:01'),
(144, 100, NULL, NULL, NULL, NULL, 1, '2021-02-03 00:30:24', '2021-02-03 05:55:01'),
(145, 101, NULL, NULL, NULL, NULL, 1, '2021-02-03 00:31:54', '2021-02-03 05:55:01'),
(146, 102, NULL, NULL, NULL, NULL, 1, '2021-02-03 00:39:24', '2021-02-03 05:55:01'),
(147, 103, NULL, NULL, NULL, NULL, 1, '2021-02-03 00:41:57', '2021-02-03 05:55:02'),
(148, 104, NULL, NULL, NULL, NULL, 1, '2021-02-03 01:08:37', '2021-02-03 05:55:02'),
(149, NULL, 87, NULL, NULL, NULL, 1, '2021-02-03 01:13:03', '2021-02-05 23:02:34'),
(150, NULL, 88, NULL, NULL, NULL, 1, '2021-02-03 01:24:44', '2021-02-05 23:02:34'),
(151, NULL, 89, NULL, NULL, NULL, 1, '2021-02-03 01:26:21', '2021-02-05 23:02:34'),
(152, NULL, 90, NULL, NULL, NULL, 1, '2021-02-03 01:28:47', '2021-02-05 23:02:34'),
(153, NULL, 91, NULL, NULL, NULL, 1, '2021-02-03 01:29:13', '2021-02-05 23:02:34'),
(154, NULL, 92, NULL, NULL, NULL, 1, '2021-02-03 01:40:36', '2021-02-05 23:02:34'),
(155, NULL, 93, NULL, NULL, NULL, 1, '2021-02-03 01:43:34', '2021-02-05 23:02:34'),
(156, NULL, 94, NULL, NULL, NULL, 1, '2021-02-03 01:47:01', '2021-02-05 23:02:34'),
(157, NULL, 95, NULL, NULL, NULL, 1, '2021-02-03 01:49:56', '2021-02-05 23:02:34'),
(158, NULL, 96, NULL, NULL, NULL, 1, '2021-02-03 01:50:32', '2021-02-05 23:02:34'),
(159, NULL, 97, NULL, NULL, NULL, 1, '2021-02-03 01:53:17', '2021-02-05 23:02:34'),
(160, NULL, 98, NULL, NULL, NULL, 1, '2021-02-03 01:54:21', '2021-02-05 23:02:34'),
(161, NULL, 99, NULL, NULL, NULL, 1, '2021-02-03 01:55:36', '2021-02-05 23:02:34'),
(162, NULL, 100, NULL, NULL, NULL, 1, '2021-02-03 01:58:00', '2021-02-05 23:02:34'),
(163, NULL, 101, NULL, NULL, NULL, 1, '2021-02-03 01:59:52', '2021-02-05 23:02:34'),
(164, NULL, 102, NULL, NULL, NULL, 1, '2021-02-03 02:01:15', '2021-02-05 23:02:34'),
(165, NULL, 103, NULL, NULL, NULL, 1, '2021-02-03 02:12:21', '2021-02-05 23:02:34'),
(166, NULL, 104, NULL, NULL, NULL, 1, '2021-02-03 05:36:52', '2021-02-05 23:02:34'),
(167, 105, NULL, NULL, NULL, NULL, 1, '2021-02-03 05:43:15', '2021-02-03 05:55:02'),
(168, 106, NULL, NULL, NULL, NULL, 1, '2021-02-03 05:47:58', '2021-02-03 05:55:02'),
(169, 107, NULL, NULL, NULL, NULL, 1, '2021-02-03 05:50:48', '2021-02-03 05:55:02'),
(170, 108, NULL, NULL, NULL, NULL, 1, '2021-02-04 00:17:54', '2021-02-05 23:02:43'),
(171, 109, NULL, NULL, NULL, NULL, 1, '2021-02-04 00:20:11', '2021-02-05 23:02:43'),
(172, 110, NULL, NULL, NULL, NULL, 1, '2021-02-04 00:22:21', '2021-02-05 23:02:43'),
(173, 111, NULL, NULL, NULL, NULL, 1, '2021-02-04 00:24:04', '2021-02-05 23:02:43'),
(174, 112, NULL, NULL, NULL, NULL, 1, '2021-02-04 00:35:30', '2021-02-05 23:02:43'),
(175, 113, NULL, NULL, NULL, NULL, 1, '2021-02-04 01:14:29', '2021-02-05 23:02:43'),
(176, NULL, 105, NULL, NULL, NULL, 1, '2021-02-06 13:28:44', '2021-02-10 22:57:08'),
(177, 114, NULL, NULL, NULL, NULL, 1, '2021-02-06 13:38:43', '2021-02-10 22:57:09'),
(178, NULL, 106, NULL, NULL, NULL, 1, '2021-02-08 06:09:09', '2021-02-10 22:57:08'),
(179, NULL, 107, NULL, NULL, NULL, 1, '2021-02-09 11:55:58', '2021-02-10 22:57:08'),
(180, 115, NULL, NULL, NULL, NULL, 1, '2021-02-09 12:22:10', '2021-02-10 22:57:09'),
(181, 116, NULL, NULL, NULL, NULL, 1, '2021-02-09 12:29:12', '2021-02-10 22:57:09'),
(182, 117, NULL, NULL, NULL, NULL, 1, '2021-02-09 13:29:20', '2021-02-10 22:57:09'),
(183, NULL, 108, NULL, NULL, NULL, 1, '2021-02-10 01:07:31', '2021-02-10 22:57:08'),
(184, NULL, 109, NULL, NULL, NULL, 1, '2021-02-10 01:14:52', '2021-02-10 22:57:08'),
(185, NULL, 110, NULL, NULL, NULL, 1, '2021-02-10 04:22:55', '2021-02-10 22:57:08'),
(186, 118, NULL, NULL, NULL, NULL, 0, '2021-02-10 23:02:59', '2021-02-10 23:02:59'),
(187, NULL, 111, NULL, NULL, NULL, 1, '2021-02-11 04:27:24', '2021-02-23 22:14:14'),
(188, 119, NULL, NULL, NULL, NULL, 0, '2021-02-11 23:16:05', '2021-02-11 23:16:05'),
(189, 120, NULL, NULL, NULL, NULL, 0, '2021-02-22 03:10:55', '2021-02-22 03:10:55'),
(190, 121, NULL, NULL, NULL, NULL, 0, '2021-02-22 05:38:20', '2021-02-22 05:38:20'),
(191, 122, NULL, NULL, NULL, NULL, 0, '2021-02-23 02:32:40', '2021-02-23 02:32:40'),
(192, 123, NULL, NULL, NULL, NULL, 0, '2021-02-23 02:36:13', '2021-02-23 02:36:13'),
(193, 124, NULL, NULL, NULL, NULL, 0, '2021-02-23 02:49:24', '2021-02-23 02:49:24'),
(194, 125, NULL, NULL, NULL, NULL, 0, '2021-02-23 02:51:53', '2021-02-23 02:51:53'),
(195, 126, NULL, NULL, NULL, NULL, 0, '2021-02-23 03:05:16', '2021-02-23 03:05:16'),
(196, 127, NULL, NULL, NULL, NULL, 0, '2021-02-23 03:06:59', '2021-02-23 03:06:59'),
(197, 128, NULL, NULL, NULL, NULL, 0, '2021-02-23 03:46:20', '2021-02-23 03:46:20'),
(198, 129, NULL, NULL, NULL, NULL, 0, '2021-02-23 04:38:22', '2021-02-23 04:38:22'),
(199, 130, NULL, NULL, NULL, NULL, 0, '2021-02-23 04:40:55', '2021-02-23 04:40:55'),
(200, 131, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:38:37', '2021-02-23 05:38:37'),
(201, 132, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:41:25', '2021-02-23 05:41:25'),
(202, 133, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:42:56', '2021-02-23 05:42:56'),
(203, 134, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:43:24', '2021-02-23 05:43:24'),
(204, 135, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:44:01', '2021-02-23 05:44:01'),
(205, 136, NULL, NULL, NULL, NULL, 0, '2021-02-23 05:59:01', '2021-02-23 05:59:01'),
(206, 137, NULL, NULL, NULL, NULL, 0, '2021-02-23 06:00:00', '2021-02-23 06:00:00'),
(207, 138, NULL, NULL, NULL, NULL, 0, '2021-02-23 06:01:47', '2021-02-23 06:01:47'),
(208, 139, NULL, NULL, NULL, NULL, 0, '2021-02-23 22:38:24', '2021-02-23 22:38:24'),
(209, NULL, 112, NULL, NULL, NULL, 1, '2021-02-23 22:39:39', '2021-02-24 00:12:50'),
(210, 140, NULL, NULL, NULL, NULL, 0, '2021-02-23 23:23:34', '2021-02-23 23:23:34'),
(211, 141, NULL, NULL, NULL, NULL, 0, '2021-02-24 00:06:02', '2021-02-24 00:06:02'),
(212, 142, NULL, NULL, NULL, NULL, 0, '2021-02-24 00:09:04', '2021-02-24 00:09:04'),
(213, 143, NULL, NULL, NULL, NULL, 0, '2021-02-24 00:42:55', '2021-02-24 00:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `total_cashback` varchar(255) DEFAULT NULL,
  `ssl_transaction_id` varchar(255) DEFAULT NULL,
  `user_confirmation` int(11) DEFAULT 0 COMMENT '0=no response, 1=success, 2=failed',
  `online_cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(1, 22, 'BZh91AY&SY8Q\0_PXø;Kü¿ÿÿúP<CM1ÌiL\0`\0\0	 õ\rÔÐaFÔ\0$Ô¢¨\04È\0\0\Z\0ÌiL\0`\0\0	@MÍL42LO(ÓÈ\ZzHHfùÐwÅ¹\0((}ûÏf¬ÂJ^¡v~ãTz 8öûéÃÁE4§éícde§fºÌ­Õ>ÿ8±&m7«I\rHÆ«PÖêÊþ°á³¨ò7]øð)Ð¡ ¼Äó>¬æÅ¨ÌfÒAö(;L¡v;JºòÊ2\ZøKrbW³Â\n´éY8pm9ÆE;Ò	4 ZÉÈ\ZcMZ§STÇS»JFÃlû¢¸}UÀm»+%[\n	I0V¥î/¸µÁ%ô$R¥h5*{ÒMlÁöYiÀfCÝÏQ£&d&2â1<´DàÆôHã@åYé tå.Cº[RÕ&ÓÆ¬+PhÒ×X¥:¹Lxx	¼ªè&à9Dµ±]ÉµJ½Ú½ÕÞ\Z)hH²\nR [d l¡Aª)ÉFDR,ÔbÐ\"DDc2ÊSI@Q¸¹½|ºõHLÂ\0±Ö5L4ÑRv\\)7¶íí#K3dsnr0rÇ6ü7w	Ê7Ál¡·Û¾IÎ÷»³	c\\q:S8ú\"N ²Æ>#Ï¼ý´ð:Ê*}g¤ue¥cêbQsn*Ì}§(½b¬ù³b£J ²±ÜjÜgÈïA{²j\rãè}¼Oô¼ÍHsâ¾&¤l\r¡\r dw9Ö^#°b¼¡òÊb9ùGii~ Ñø¡Á©\\^Á¡±^æÐºàæ°õ\ZË5jIC(pf2Cðÿ°d·pW]ÜgrµXLe¥¡iVÂÑ¶¤+mU<	ñ5KËx¤JC²Ä®ì$Uyd<kï¦;\'JÍ7èkaÎLî9rSé2ÐÁØÍ¦DA*OhÂCÓÜ,¸®Àg¢öKMÄÄB\nÔÈêõXK@È¶fÓÖ\\AêÄ$IM¬/­*ô$`ü¡ØÜ¸t/³Y°^@0\'§§ Ð<Æ)#\0] 0Le!àVðÐÅ-)$r|qHPãCH\\8PR^A@Ð+cÉYô\r¨½\r2´N?±.uLýKwv¸ãâj7%fñ~GýòAÅ°°#âem-AÁâ´âm9§l!ö0/HRR¾ñ ä4ªn \\AS£¾r}ÞDtB¤©dc$FIBEÁ(i0hM©\ZËÎ7B)±-EÖYa¡T$ÐÑg#DÝÇUòÃZLÉÕ8Ãpq£¸$\n6¶\Z]¢(L-F\r{£¹ùð-¿Z%55Z\"&n\'ä=ûHên$Wïh Ä¸«f¹·¶a>8¡Sü]ÉáBBáF\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 180, NULL, NULL, 'fFgw1573717404', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2019-11-14 01:43:24', '2021-01-09 14:01:15', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(2, 22, 'BZh91AY&SY6%¡\0ßP\0Xø;Kü¿ÿÿú`=ª,±P\09¦&\0\0\0\0\0	P%\Z\r\r\0z\Zi Ð\0æ\0L\0L\0`\0&RC&i§¢4È!CF 9¦&\0\0\0\0\0	DDÐ#MM¦ £M2M4hÓÔÐ×6è\">æà``$ë:ÓY:§H¢ºµépÔWwï,2JÂ7Räá©hBñº!32Ùü)ªbMçI$Ùj5×q±¸·Ø{Á¾ÿ1ô8á9ù\nù\03 `Ôì3>§ÞubÔØg!!ó*<\r!w<\nÆ¾Âê4\ZóKhH[euÊ.¤88GB¾Ã¼ZMI!¦ÄÐ\ZcMZÒý(ªÍK11L¢Ø	Pb¸/ fIÓdÉiblª«xtÅ¢Â*z!0X®æþdÈa\nÄ$ZÂqJh»PU·wæJIP)PjºÔeVâ	´&MÓ6d\rEÍ,2ò=0¥1%8uÇÒ*¢\\3Ýâpæ$@[ÚÔØJB2EÔ\"¢ìás\"VB\"Á!dt´«¨`ª«ì_TÁA½I&ÒÂ\0]3YIC£»FhA·5JKDL:`&HP´¡E¸ÜõØÝ¬$,\0|ÆY¾Uìt©Z]*^.(êµ¶jcaCe6¦ØÌ9§F$ÍB*:æÆ¦klç5F´BØÖ£	màÓ80§têæ=fóè9K$³å?Íã8¾òÑò3*º¸Êì?¤b³W{½U¥VÅVÝa\0`ÜÿaMç¼PcKPwcùüÙ£e$uÕøT¢xo2MpCàTëY\r|HGxÅSòÒ:úy¡±`Ñö©Úd°1`ÐØ±À0À:®<ÆâíuÉU+¡l2F.Àÿ dñígn<é½\\PeÅåáyfÂñ¶¤WÞ¬|Iò58\r3I28-9=_SÒAÐfáâûªg¾ÝËüÿC[Î²¼èzeS¸Ó¹×tPóØ°fz>^±iÍw<W¨],rC,zgCÏå¸A 3ÀËI*e«dPg&A?p¼6Bþ+ÙÃÛâñN\\ÎíDAP-g!a2ÕDI9+ÉãQWª bÐ0¡*`rÍIY\n¥åØa÷2Ko ²àPÓ-P¼çúÜ°¸i0÷î#S°¹(6;÷Øä{	mÄ{M2¹Q¥¨dv£Ó8lÎU/>ö#+\nTcÈPt\ZV8Aº0ì»~ÞÇÕzÓè·Â²1`f%\"Wi \\	\Zt;æÉ«.0ïKª½%×EQB!xÒdsäàUMàvã6/½4TdÆ&3Æ*w\0©À/Y*P/FMz×Û÷vãÑ.A	QQE$E%?öp Ä¢ÄväFÁöµB5½ÃºX!ÁÁÂAcÿrE8P6%¡', 'Cash On Delivery', 'shipto', 'Azampur', '1', 155, NULL, NULL, '1g811573717871', 'Completed', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2019-11-14 01:51:11', '2021-01-21 04:25:40', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(3, 29, 'BZh91AY&SYøÃú\0CßPXwø?{þ¿ÿÿú`?>@P\n\0\0¢)U$AQ!TTCAÉ&FÓLL0&&	&L&	¦`LM&LLM2100À&L20&db``T&Ñ²ô&¦É©²Sj\0hÚF¨¤Ñ\'¡24hF§CI£M@7J:¥çãO+û?¢bbÛIù0½À#sj¬1?Ã+ð¬¦Ôþû«ñ§ø[&ãyÙWÄÂ¯¿É»4mÃ33,³7Mlañ0Ø¸Ïó5ZX¼VëTx­×+\rn×ÿ±l¹rºåtZ[ªáu^eºÝ¥Ù~~åÑiÞØ·­ã ò·êz½¸Ñ§AÒ¼í\\Bìð/±¤Âó³ÁsZ7,ód1ä]fï9ÿ/\'¥ÃÌx:ýiú\'áýº,Æ;/¥õ1â|~YðvoÜilúÎåñ½Kñ×9>BöZÊÌËÕ{o\\Øø/+3õ\Zà}cÐ=cÐÆ§¥4õ10÷·n@àcÙ~óø¿ë|ÏÅûÞ%Ü>¡ëZ1Ñ¼ùÃaô\rcmÍÓìMÞ·.SF:½ÏpÝlÂ^ô²Éj¤è¼ªã£<9\\îm¥ÂÙbÝ°øÇ¸iïb÷ûLë³M{XèbW Ê	uÔlZµ§ò7FÑuCÒ7oEÛ2¬¦C\nù¦ùÊy&âß0ã|oC¸laÞX3¤¡ªiWàÂv2X¬NòÁ5GÅ¥à·^+gN¸w=\rwF.á¡ieV,]We²ìº7:6]\"Ùbe#hÅ³ÕÁIÍ-)bÁb6Z\\­eôC³Är3¹Ü¼F+½£ê4´°Î¦ÓÁ_Ãñ[p³+¢ïÓö1ÃØ1ÕÑÖ8|î®­§zá^[­ìVë7[­-Uð¼é®GSÐí®iv­Ù«K¾-×eÕp´rõ6\Z0â=cdÝg2bÊVn¹Z[.W¤ï4irøa»ê1vè´·[®Ë³Ôë×Ñ¨ÑÈàn4aÄØÑ¼âtGjÚ´¸«Çøá7ai¶uÓrÌoÞóu\\¶lv7N{ü.¨ÅÂÒárºEUªêYÕ­ÒÊål¹ÅÂár.º4×+gAÄlÓFËe²Ø[®Âà¨°[­ºäZ.+uVÈåE½vGá}i~u\'Ä?J>ÜªÅ±d´´ëeª,~­&S&+\rM\Z¦L&ËKaKbÁpÓÜ¶FbÒ,!,U,1c1(Än´°¥²Ê¦ÚZDÅ,2¬§lç;)Û9í°o	/Æ°¬fe[­­ÕèÁÙt\\E½z+jø8®åÞ±l¶;­ÖëW+åÐï\\\rëëªï,.õÞ±Ó4ºã#²ÓÙr´tXÙrÙ*Ã¢tX[0ÃªçMÍ°ØÉÑcU+z×zì».ËuÒ±Ü»uÕv\\e¾½n¹Z]lg-ÎÆc¹mZn±*üÁ»jö\'ó??ô¯²¾÷\'ózë÷>÷Ù^	ñ?yù_\Zë<·aýh:nWËiÝ{¯ÝÂ]3_5ä®îiòWÌúG<«ÞwÌðï?%bûÜ¼+Ôº/BÂÑ|p±¦L,«tNS¼GªØ­çÜu­ø¬/­ýFui4ÁÅÊýÎ±ì>ãâwñ?AÈñÊØÔî=éïÍÔm^Ty}bà¼V¨¯þ)ÁwUÈÄûÍ)ôÛï¶­¤äp§ÂsòÏ]Zªs<ÕtÎÓçSðµÊtxu:b¸¦0L\\ª¿_9uN¨òÎ¤æxÎÎ®sU5:MÜ}-ÖÕÊ§¹äLO\"ÊÑb{ý4>[SeöV+eñ/zÒÅÕbêº®åºåÙ\\´ké¢Ãf.©ÑÁÅuX°®Å+r;.¨ë_yl0zóÖzëºº-¦-%ü­©[ÍÓc4tÍ§3R\\L>Ãc¯Æ_d´uSFs0ò8Ì¼ð^ºñ£eÑ{²¿[ð_¥d¾Ò0v:¸l|ã·}RÒ7_=y×º¼ËEéhöÆÌùÅt¯¥bþM#uÄûnQä>ydn2y§üúWxå|%e_$÷OçfQUõN£Ð¦Ij\'éQÊ}G×=S ük×oMNÚXwÏ5Àï>³¬ÑÕ=weMÆäß19Î¹íº§DêóÓ8Mç8ß?ô®(û¥Gæ¸>ÇËWeacg±{ëÁ~Wªã8]÷t±âjZ¦á=3ì:>ZÒb¹Z#ö½l¹eó-É\\®im[/u­Æ¿iÒ5]ì+zÑ~Ãîhâ¸ÒîÕd¯uóÝ&ù]7DØÉ¾aÜl³¨Ôã|PldÒ^)^S*~óWÍ=®SºTåZMUuN8¥øÖËÒõÑÊìZÄ»Ø¼Ë2÷ßÒí<Ç­§ÊxU^©ýÙ|Æ&,X±ÅÍl/myôx®Ráb\0¼_$]õò£×Z\\¯å;¦éÓ4¦WÃ%8oMª¶S\rJÕ=&EÀú\r\Z2xôp<ÓöÏ<á=3\'Éá_­UöÆ,UXf|&\ZÈÂbba¦VAh²F,©,Â\rbX²K#Y­ÇäxN¹Ý5\róÈÚGýµÑt¯´¢ÕisFÁÔn55+ÅwÕvlr/	ß2håï²jdãO²rN¹ÕqS\r²bÈ¬;FS)¨è8vÓSyèr8®Èì.£Â±{bâ·WX»ÖJöÑ|².²O\\ð:gÖz\"¾yÛHá#Kª=±inøkuúV/zkù?½\'âÄá]*ïxKµdMVÏ=xVÕ÷G¥Þ¹Gó¬.ëë<+Ýwßî³ÙW±b²ddÄ³SQ«ÿ¹\"(H|aÃý\0', 'Mobile Money', 'shipto', 'Azampur', '8', 1037.5, 'fdsafasdf', NULL, '5eiw1610178633', 'Pending', 'saad@gmail.com', 'saad', 'Andorra', '11112222', 'test', 'sadf', 'fasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2021-01-09 13:50:33', '2021-01-09 14:02:12', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(4, 29, 'BZh91AY&SYøÃú\0CßPXwø?{þ¿ÿÿú`?>@P\n\0\0¢)U$AQ!TTCAÉ&FÓLL0&&	&L&	¦`LM&LLM2100À&L20&db``T&Ñ²ô&¦É©²Sj\0hÚF¨¤Ñ\'¡24hF§CI£M@7J:¥çãO+û?¢bbÛIù0½À#sj¬1?Ã+ð¬¦Ôþû«ñ§ø[&ãyÙWÄÂ¯¿É»4mÃ33,³7Mlañ0Ø¸Ïó5ZX¼VëTx­×+\rn×ÿ±l¹rºåtZ[ªáu^eºÝ¥Ù~~åÑiÞØ·­ã ò·êz½¸Ñ§AÒ¼í\\Bìð/±¤Âó³ÁsZ7,ód1ä]fï9ÿ/\'¥ÃÌx:ýiú\'áýº,Æ;/¥õ1â|~YðvoÜilúÎåñ½Kñ×9>BöZÊÌËÕ{o\\Øø/+3õ\Zà}cÐ=cÐÆ§¥4õ10÷·n@àcÙ~óø¿ë|ÏÅûÞ%Ü>¡ëZ1Ñ¼ùÃaô\rcmÍÓìMÞ·.SF:½ÏpÝlÂ^ô²Éj¤è¼ªã£<9\\îm¥ÂÙbÝ°øÇ¸iïb÷ûLë³M{XèbW Ê	uÔlZµ§ò7FÑuCÒ7oEÛ2¬¦C\nù¦ùÊy&âß0ã|oC¸laÞX3¤¡ªiWàÂv2X¬NòÁ5GÅ¥à·^+gN¸w=\rwF.á¡ieV,]We²ìº7:6]\"Ùbe#hÅ³ÕÁIÍ-)bÁb6Z\\­eôC³Är3¹Ü¼F+½£ê4´°Î¦ÓÁ_Ãñ[p³+¢ïÓö1ÃØ1ÕÑÖ8|î®­§zá^[­ìVë7[­-Uð¼é®GSÐí®iv­Ù«K¾-×eÕp´rõ6\Z0â=cdÝg2bÊVn¹Z[.W¤ï4irøa»ê1vè´·[®Ë³Ôë×Ñ¨ÑÈàn4aÄØÑ¼âtGjÚ´¸«Çøá7ai¶uÓrÌoÞóu\\¶lv7N{ü.¨ÅÂÒárºEUªêYÕ­ÒÊål¹ÅÂár.º4×+gAÄlÓFËe²Ø[®Âà¨°[­ºäZ.+uVÈåE½vGá}i~u\'Ä?J>ÜªÅ±d´´ëeª,~­&S&+\rM\Z¦L&ËKaKbÁpÓÜ¶FbÒ,!,U,1c1(Än´°¥²Ê¦ÚZDÅ,2¬§lç;)Û9í°o	/Æ°¬fe[­­ÕèÁÙt\\E½z+jø8®åÞ±l¶;­ÖëW+åÐï\\\rëëªï,.õÞ±Ó4ºã#²ÓÙr´tXÙrÙ*Ã¢tX[0ÃªçMÍ°ØÉÑcU+z×zì».ËuÒ±Ü»uÕv\\e¾½n¹Z]lg-ÎÆc¹mZn±*üÁ»jö\'ó??ô¯²¾÷\'ózë÷>÷Ù^	ñ?yù_\Zë<·aýh:nWËiÝ{¯ÝÂ]3_5ä®îiòWÌúG<«ÞwÌðï?%bûÜ¼+Ôº/BÂÑ|p±¦L,«tNS¼GªØ­çÜu­ø¬/­ýFui4ÁÅÊýÎ±ì>ãâwñ?AÈñÊØÔî=éïÍÔm^Ty}bà¼V¨¯þ)ÁwUÈÄûÍ)ôÛï¶­¤äp§ÂsòÏ]Zªs<ÕtÎÓçSðµÊtxu:b¸¦0L\\ª¿_9uN¨òÎ¤æxÎÎ®sU5:MÜ}-ÖÕÊ§¹äLO\"ÊÑb{ý4>[SeöV+eñ/zÒÅÕbêº®åºåÙ\\´ké¢Ãf.©ÑÁÅuX°®Å+r;.¨ë_yl0zóÖzëºº-¦-%ü­©[ÍÓc4tÍ§3R\\L>Ãc¯Æ_d´uSFs0ò8Ì¼ð^ºñ£eÑ{²¿[ð_¥d¾Ò0v:¸l|ã·}RÒ7_=y×º¼ËEéhöÆÌùÅt¯¥bþM#uÄûnQä>ydn2y§üúWxå|%e_$÷OçfQUõN£Ð¦Ij\'éQÊ}G×=S ük×oMNÚXwÏ5Àï>³¬ÑÕ=weMÆäß19Î¹íº§DêóÓ8Mç8ß?ô®(û¥Gæ¸>ÇËWeacg±{ëÁ~Wªã8]÷t±âjZ¦á=3ì:>ZÒb¹Z#ö½l¹eó-É\\®im[/u­Æ¿iÒ5]ì+zÑ~Ãîhâ¸ÒîÕd¯uóÝ&ù]7DØÉ¾aÜl³¨Ôã|PldÒ^)^S*~óWÍ=®SºTåZMUuN8¥øÖËÒõÑÊìZÄ»Ø¼Ë2÷ßÒí<Ç­§ÊxU^©ýÙ|Æ&,X±ÅÍl/myôx®Ráb\0¼_$]õò£×Z\\¯å;¦éÓ4¦WÃ%8oMª¶S\rJÕ=&EÀú\r\Z2xôp<ÓöÏ<á=3\'Éá_­UöÆ,UXf|&\ZÈÂbba¦VAh²F,©,Â\rbX²K#Y­ÇäxN¹Ý5\róÈÚGýµÑt¯´¢ÕisFÁÔn55+ÅwÕvlr/	ß2håï²jdãO²rN¹ÕqS\r²bÈ¬;FS)¨è8vÓSyèr8®Èì.£Â±{bâ·WX»ÖJöÑ|².²O\\ð:gÖz\"¾yÛHá#Kª=±inøkuúV/zkù?½\'âÄá]*ïxKµdMVÏ=xVÕ÷G¥Þ¹Gó¬.ëë<+Ýwßî³ÙW±b²ddÄ³SQ«ÿ¹\"(H|aÃý\0', 'Mobile Money', 'shipto', 'Azampur', '8', 1062.5, 'fdsafasdf', NULL, 'XLDA1610178657', 'Pending', 'saad@gmail.com', 'saad', 'Andorra', '11112222', 'test', 'sadf', 'fasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dsaf', NULL, NULL, 'on delivery', '2021-01-09 13:50:57', '2021-01-09 14:01:37', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(5, 31, 'BZh91AY&SYo\\gq\0	}ß@\0ø/ôD¿ÿÿú`	?>%@(Q ¨ ¤¨  \0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D©¦Òb4ÓÔ\0\0\0\ZJRh 2z¦Ò\ZdÓ& Ã\nLàØ)Ø|Õõ^ðÅó_²Ø¿WÑ|oÃ©´ÃfOàÂ~Æí33\ZÖ@±,xfÚcÙËBvv±BÝÀÛ§.gNÍ9xÇg»påË)áÓËcË§C¦Çàîu,kq8kÂú7ÖõÙ\'[eÅeÆÑhí¼ÆdTðÐÞàv>NæÛòæÃÅQ >² A¥ÅñiFZ\Z2Ó¦?Ô´RqeSæõ´Â]+*Á:{==Há2Àÿ-ðR9)*ÎJBØ±\r$#HÒ1±Ót ³	â©Q D#vDÍ àÊie1·\rµ£ÒZ$C$F,#ce§[üH#ß¬EÙÓk»`1ÂÜá·°Á°`,áË³&Åî:, gN\\8piô@Èè»v¶¶¶ûk¡ÄÐÐhl5540h,(2\Z\rÀÜ,)+CÎPÓ<å±ÃN]îÎíÆt2äX¶ï9w(a\nC!¦Ûl;:räCgp`8m:!d-7Æëu©clm»dî¢úOø!c##íÒhR?Z14F1l)ÊÈXØÐÆqHÒ1Ø¡FÂ\"ZÙh¥¡ee²Ù¡¥Úv®Å¥Õ¥\Zf»\"«÷0Å­¶Ðù\\>^]ÎCÊé°ë!ðØôÛnærèzl2	Ó¦¡é¡é½¹ÃÀòìØòîÐéZòïÀNNv°rîçÞ!Ï$\n\rÏg§Á»Ðá»GFç/.Ü!ØpðÓ:ëa]Ú\rñôÊÊzSÐ÷>\'ùûeì:«mQÒ|á¸~7ClyCOØÁðW,C#u¾Òò>;j©í¼·ÐÅÀø-¬·ÚÆÏ¸öÏîGiÊ¼©¥à|+ám5æ§rw.F[mæËS±bï¯ÜÒ^,ZÝ.ëªÔ¯5ê7QÂè.J¾¶ãÏWAâtX2¬°;]©Âà6Z\'#¬ÝrºNUom06C#Àn0|ÃþBSXA·Áô4ÇLtùKOÁ¶0«,²ÞÖèÞs_ÔyjÈÁÈ¶vÞ8øl\r#Kî3a/=´é»mnI²ÝwÝÇó{­ZÅ¸Ü7[Hï¹®óû¶4\\í§|Üá`Øe¥ø#ªç¥ö?!ùãLi×ÂX°­)zaé?Àä}÷uÝl;Ä9\nSÜ\\1{<:ré\\Ô,ó\rmG½â¼å.ëÂÝv§Úô´yTÛwÞ¥ºð1`ßi}èØ{.ÖÈîî!Ói°·²·Îä e\rÐÀ`(l.P@l0B\rpÀè.¹-¦þÛé=©Ñèò°;¡àú;¾uzF,\r9põ¾À·àGs#õ28ßä´½7èë9¨Ðì9Ç´Ëÿ,¾§ Òô¬²Å¸Ñ~§UÓmV,Ë¬½àxÇËuÐyNë[¶ïZ4/Õè lÒÛcO=\nBÄ\"·^M\rç;ìº­÷¦Ë×é¸aÃ3ßa¥X2¬¬¬22VJM,	Z§AÎßwÚU¶Úy$ó£t~f¶ûyÉiE¡¥Á6U©©¥¤x]z	÷^hL±ãîwÝ»¬Qä wX±h7FËÍim58Gß:L»å´ÔnEíUýå¾ëX¾ðæqºn£Æ<Ül£lmseÑå¥ç6_Ù;¼Ñ,\Z_Q^{%¡Ôp42>NØû¶Þõë¾ú£úëõÏeL°eLRâîH§\n\rëî ', 'Mobile Money', 'shipto', 'Azampur', '5', 4338560, 'dfgsdfg', NULL, 'Vod11610945716', 'Completed', 'user4@gmail.com', 'user4', 'Anguilla', '132132', 'asdf', 'fsdaf', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dsaf', NULL, NULL, 'on delivery', '2021-01-17 22:55:16', '2021-01-21 04:24:51', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(6, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, '7hzQ1610948152', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:35:52', '2021-01-17 23:35:52', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(7, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, '4Ztf1610948162', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:36:02', '2021-01-17 23:36:02', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(8, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, 'eU8W1610948356', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:39:16', '2021-01-17 23:39:16', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(9, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, 'VQjV1610948505', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:41:45', '2021-01-17 23:41:45', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(10, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, 'GnzG1610948650', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:44:10', '2021-01-17 23:44:10', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(11, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, '5kKx1610948652', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:44:12', '2021-01-17 23:44:12', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(12, 31, 'BZh91AY&SY¤Îí\0X_@\0ø/_öD¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\09L\0\0À\0L\0¤ LFf$z§i¦FiJI+¤Ó\"C÷Cùê\"î?AqóÀþì~×cT^õý#;UUU0^-¬T^%ÆÇÐ¹bFE¢däRVE³©s÷(l.hffr43,d\ZÑFg3	±K\Zú(ÃXÕ9Å6£ vhÝü6l6ºS¡G§QÛíDI;D´nÝ³vÎÑïuìSÑêQg¥ízÖ©Y%$3I¡ë-¤ÖÕq»\n,\\Ô£\'±ª^$=ªI#÷Yh¢r\rP¢*\'#ÁÂa2*>÷ø+±DÊ%¬6¢ÑSUIvìK¤LfÐQrûfa.¢öK(Z(£\",±b¢0X±s\"21Jb(²\nQP¤%B\n%`£	sÖlö.ëÍqÔ£mm!JHÔl`Ä72Xzk4QQ)()båÍK\'cÕ¤CRôdjjddÐ£7¥ÈÊSf$*\"TrÜØÁ\rÊ|k5ijÙa´Q6Ó\"Æ\nÄfdÑ¤^8EhÄeEF±x´e\ZFqtie¡9µ\\£\rÂLÍKÆR`Â\Z4£3#@È&L%\Za(K.\\0fhdd&f¡AäÁ Xe+(¹4&ff\"lLë$óÉ$þëxBI(í´bÁbÑ%+-\n%T-PTT/2Td\\]%ì°µ¨¼]I\"Ð)!1dºbð¢¤]buGI¿#¤\\çi$¤çÑBòf\r832GÓÁÁFÅÆæ¬ÁM\r74¤\rGÃ9í¹°Ü³\"ænm|±k^ú£BvaÅ\'ÆyªJ¤£SÈàÜÜÌÎ87(jn¥Ú·73Ø7âìÅÌKFù¿¥£ëþãá\'l}ñÿé|_õÄÉ?º?Ôtñ^WÑ×£½ó_ã~Èl.QÈòyLI¡có:¢#ÒÄLãúyä0}b±ÿ40KE\Z1ó>è¥ãíC¬ññÄÊ0LÌGdNÁÄQé;Hè0t\nÉÊ*8´*73!@çÆñÎ57ö3ò75&Ñ¹H¢(¨§TMMQsèQÑEÆ±sâõ0^4\'@â7;¸YbTP¹ÚyhQ¡Üx463\nfq1Ej&Ö>ñøGDvÆñ¢~kGb0^*Ñ±sXx¨û£3¤®qQ×lQè2Ã(3<èùT0ÁþY¸¢w1Áß\ZftÃözEã(õ(6\r£d~<yF\"Þ\'Qè\'¸qø\n*þé*¥ªI$}ÆÑæD,CÜ6EGÝÃÁÉë5DGqxîdoYÌ/\n#cC#B1H¼v¢çQÜ³ÄyyÔñjuÄü&gq¤rzø¡HÐ±÷	x± .Q9	ÌÈÝ;LâÑ.LF\"Ä¼^Æ\"æ#±ñF\nâðàeêÍxDb(´r~¯Éê:	Øyè;Èå2Ð´{xñ?¨¹Ì¨Ê(ãcÐ{ßTyãHKGTyÉïQü?ñ¡D¢Å:úäfI(ê£ÒNØ£3íãYå^DøTÄTfZ.,oÄTX¸ Ò<Ñh´QÙhÒ<ç#üÍQGGò÷Àø\"¢¤\n¯Ä¨±¨T**I °¤(¤J¢D±DPÄuÇç9åÈì$ó	?ÔÐÒ9Z,käb1,O)ÓhÞ\'òZ&Ej<#±sF¦°©ñG8TP¡dgÆ÷;F#Rj\Z\'G|FOpµ\Z´ú¼#cx¼>ÂdLcby`±ß>ÑGí@¤Xý\ZEåAhå\ZÅ¢ù52\'÷2>Úy$O²$zýr{	(¤QRK²ø»)Â wh', 'Cash On Delivery', 'shipto', 'Azampur', '5', 23950, NULL, NULL, 'kiZh1610949297', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-17 23:54:57', '2021-01-17 23:54:57', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL),
(13, 31, 'BZh91AY&SY¬)v\0	ìßP\0Xø;Kü¿ÿÿú`\n?>¨B $((\næ\0L\0L\0`\0&Ó\0		\0L\0Ãb`00\0	\0sLL\0&\0&\00\0H\nD§êI¦Ô4\0\rè\0T F@Ðªx4)´ÈÉµ=&ORâF\"FÞþ§ÇAÄü\n)>j+È¤º}p>Éã4ÜÌÀÄ¢õ Ì7rHe° ùÃ¦Õ¶Û)ðå¡<8±Â÷?ÙÈÛn|<;iÊºtùpá\\YO.ßðÐôíÑ²Çg¼ö>.//g ÂÛrg2}ÔÌÍ,þwÏ3{êñtfÛÄ´âMK¹çQn¨\"Èì,y:O­Î¥\'NCwc±Üú³2{¥§°§{Ó©Y7©bÊãV+ª\nC%AFg-bOq¦ÃEómæ>sËcÁeõI#PM2¡2b°¢¤g¡êZ/úÁ=\\¼¹p`z ttÃY÷iô â<(³ÁCkÁ¢	\0ÐÐ#7¶s`#Ù³q$d\0²4À\r²ÛËeÓD>cB`åNÈ¦Ø©KJiF0åtßÒ{¦L>>B%¼¨ðòápãé5%{6åFÛmËû4Ðd(:`>øÛn\\hô(ÛìQÈ4À²íÃ°{Ãd\"Ûl6ð5,,i00,QrÆ&Fã°¤\n2½ÂðO\ZaPÙE±Ë.]<6\Z6<!\"Àá·íËÀ9CRvéÂSm6;räCO\0ÀpÚv\rCÈZMDÀÓaé¶BrÇÙ\'%0IR 1ªPÃiBùE¡cM!Â©eaÏÜi	\0diÜVÈ0E¤H´%¥©eTÜq/ ÓâEWÌñùB8h=îÖ:r:ptÚ`:zcïl:amºuÓíèÀ@^Ý´Ø=ºiàypØòé Ó-òÝfHÐ\Z`õttèÎÙDoOO.oCGgonºCLNl+u¼¾ìw¹åè2bu³>BêÓ¼Ú=\ZYK}Lg7C#iâ§±<ÓQyQ±\r?Sí#!Æ$ ´ýAìo Á\Zèæû)?ëIBÍ¦,¦0¹FGQð>Gõó?æÙ7ÃÓ ÷IîBç*7¦Â¦)ºQÌs>+\'Dl*O¡h\nFYIÍ8¦ó¹a8fÓqªl&Ùi\'Þh:ä\nÄÔk*IRYÊø¹ªjMâ7\'Úâ%æòÒ2xµ¥JNþ,,1üAß÷c¶;~ÐáÙÊFÍ:88l`Ä±Ø|FÈúG!¨Ð\n5!ròåXÊ^l-¤£¼¹<u)b¶n*j;&&É¾a6¢óDá9Ïî}{õ³d>ç|äaçiÇ:Mr¦SK%;eËä¼ÈÈq\'¥aRóÔÙÙ`§èô)!ûRÕY×D=F(©%cþNYç-ÆQÍ09óYAñ|ak/§n]«ÿÃ°-üäÍÂv¥B§4ê5Msy?RË;²F3¢w\ZÚ&Ód¡´¹æCÁÈÃ9VOrüJ1pÀÀ²\\½¦V(00%ÊJ5bbX»@ÑØ,MPñ9òmÉ;Û9äâTe1&gtþÏ44Í\n\"¤i|´îçôã:¤,n:¤x?)Sîv/;c\0ÐYcûËÛ¤d_@{>z\nvÂ¥¦SaÊsL&rÑ)úQF2Ò^.-5j(´,r¢dt,TÝc#ªk¹×2Ò§L©ÛïTJ(ª÷Ê-\nT%$TÉAR¤¨\"Ò¢(P©07\Zçc1oàzÌ&S#b-!,ZfÉ00--ÓqÜÖ:ç	RÄÆ*TÒ~pòôÛ³= Ðt[Ï-1;&i&q°©Â&&8åCÂõC)ÆÎê4ÍsiÛ{KÈcaí^iTKL\\\'S¦sHñp\\a&´*tÊÇ¤±PñiÃ÷)1äzglñ~=>ÕRT¡RLRñw$S	\nÂa\0', 'Cash On Delivery', 'shipto', 'Azampur', '4', 4060, NULL, NULL, 'AExL1610951736', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-18 00:35:36', '2021-01-18 00:35:36', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '160', NULL, 0, NULL, NULL),
(14, 31, 'BZh91AY&SYÁÉÃO\0\nú_P\0Xø?¿ü¿ÿÿú`Ä(H\0@\n(\0ª%(¨æÄÐa2dÉÁ4Ó#\0CÌ	 ÂdÉ#	i¦F&\0AÉ&FÓLL0&&	&L&	¦I\Z@dÕ=©2cPM\r42=&$@@L4j`F¦mOD6£O(z#Ô¸©ýßÅµ½ÁÌ¶{÷g3ü¬·tHMMïºë\'îý£jë¦Å×v7ÊK,T©D²(TÿcþéFÖ\"åÂFÃb]:°44K^£äQ\Zl-ªË>A`9|4à§³m.îÐ[¡öÁàpÙ³§aìÃwg\r¨ÆÞî\\¡Ãm´ðìû\ZåÙ¢/F!ê=ãÎCr³×k)f:J,»fÕÒÜSYôjfj§~m0okÊq;ÖOmWq³YBýUOý§s½H¥¬T²Ë=·±Îñt9\Z	ª¥%\n	JB$õ¤rãÔ$Y$O²qÒîmàâR¢ë,õ)ÉG./C­­ïèö±bé<»Òñdà{SN·9Ê¼ºæ%Ý&)F_sZèÞôÍðb±7ª(=Þ\ZC¹m´é;üØ2(Éaqä´Ç Ò´%9xh·!lTçbK¤ú)3TàÅ±xÅ[%¦jÉRÐÐ´pàìÇ³Ì\n!rB\Z_IaL â>d9\0!diÓA.NrQädà3k¢4rA§pFw\"éF(ÆPÁ¤¼Êa0Wdäæsms·.ÍµtÑIÎTYÙ8ªÙªH%¥äß\Z±¹Fãà.ÈF	?»ÛqánæÌ£Ød:<N#çN¶d£lx\05§N^ÖÙ»g¨;.ÜbÖðÎÒ¥JÂ¥NM¥ÅLLh\\±¡q°¹i&l¤ãÎpdÎç£wPkrx0Åcn]6èîéÝÀhØwBÛîã³nàÚBË³§(D)Ã\0åÓ³miÜ\\!`hl2Ë!²\ZtÌZÂÚ¾j±>ñpÆ*FGÚ¥¸JÙ4ÐRÀ0Ú@dÈähcê4G,q£b`¢¨dB¥¨#B\nqH\Z¤\Z`iøÝð\Zô Ú\nú\'x ¯Ø SF\\¥Âg9r.6³KårÑ³·.¦Ì@:vh:Ó§­<-¸]\r1- ÁO-ôL\Zw\r4X°ÁZ£¦nHNyÃAm¼<:téärÁÝäÜàåîCµ¶bÉZK`¥(yÔÝý.+¾óì.`§Iì0u1|gøbÑûlÜIÝig¼¤öã<Vâa\'ÅfÎh±ë¾@\0?òòbvwê`ûHÛ°©E*BÃ)9¶o¼é{^B\r\Z\'¥FÓþe3pÏú,ö}Vo~1E%$øÕ¾G)7LÌ\'ØTM_ùÃüX,ÒwCÓÊ|$øLL!sµ9(è9G±ÚðÐ?5O4q*K=ÔÂ\'½Î¼]+Ä¤ï6Dç(fo9Ífù´Y&úúfy¤JÃi£ÙK©BÒJêt#Y¨¼ÄÉào8Íò7º¦Âm/5^XÒ]©ÀÁ):9adZTõS9iNÌvw}×.ÇÁD4Fä+ÈÜ6d Ñ*T¨ÉæÔîOØæ)°Øc>ÙixQ¹#òåXÙ8Nâ7zNUf&°ÕFL1Xl*pÆØXtù8{	4ûQþ¼\"ä>²¹sË5nRyç¡Û<ç)FéS9²O,¹Èÿ02<Òæ¦£¬ì.T´ÿÏbçPþ	ó=EJH:U:f§%%XJ:ÓT©%cÆuÙ¡üîöªGÈë.}òæ710L$ÆT8MYÒIGÐÌÉÔ1^W<#aÚºTJJ:\'q¬ÊqÓé)ex,²Gèe:çÜÎv4¼PÔÄûXÍDÆT8OúÔÚEåæha0(^oTh^vc9çûÁ7Ã3Éyë(ÂóëNÅÖldYs(\\ÑÀ@Ã`zð-|ÇABÿ`ò nÐ¸±2`~­¡ò7;îV$üPeüâ>±{¥ÝÒ°ä?[ø_D2*h~EHÖwMï$¼ôÏÅÄó¤Xâ{Ow0}Èï)ô^zÊJ(jRjpVùÊç(©Pé`þtéÌfôC°©æ;\rçí©K¡ôABÍÐ[cò²Ò!À¹¢¢jyK*uXÔóÌçÛ<fsTõ³æPùÀ0$ú¬+,@TYRBiQ(ETMÎXuËÉ1¹Dw¡÷ÌôyÖjoKIró¡9*è,)¤=ÇÆ¸·Ûc@ÛêSdÖ^FÃF³Y%TF®r%ÆfËÎ©i`i\r	üÜ{Ö°ì\Zt{1ää~qº-/Ãþ¥;Í³tây¡M¼è{YHi\r$=ëÎïiä;L$~¦Å§tì<!\Z1(ÍØ³qÉNJIyS	PX½V\nÀr°¤)öèvp§ÿº~Qø;ªkæ.¡[èìlRJ%¥\nºéø¹\"(H`äá§', 'Cash On Delivery', 'shipto', 'Azampur', '7', 3277.6, NULL, NULL, '5ONw1610951928', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-18 00:38:48', '2021-01-18 00:38:48', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '130', NULL, 0, NULL, NULL),
(15, 31, 'BZh91AY&SYå|ðü\0ß@\0ø+ô¿ïÿú`ß}\0TD\0\0\0 Ðh\0\0\0\0Ðh@4\0\0\0\0h4 \Z\0\0\0\04\Z\0Ð\r\0$Ôõ	¤ÙM<ÔhÂ\0\0m@© B&(ôÅ4b¦¦dÔdØHú£ÿPúsôÀ~Cì}¬érnÆÐ>¬Wæè©4ýXÙl8µÖ)Ñ¤èÑ0æú¨à»f[%:6ifFô¦Xa8e6~«6Rs\\Äïo:8u)ì<4hìu~·Suv¼%¼$(õÞ¾ß³ï{\\½¡9¤¡÷(ZHlø->Ê)Y¥N\n&êDLR%)²TR*MÜ7eDú©0¢ÍÙKªJL¤ªRí0Ù\\ÊÔ¨¢aDÁ)e,©ZYvWe,ð].)1BR¥\nL¬Âì=2SÃ+ÆXÊ%(a×UÙS©(je¦[SM.T.©¥ôË0ÒüÏè[0©I²êlÞTâZPÓ©ÉÉ¦8lÓwÃ¥³BÝ(6\\plÒv,ºa³-\nnÓuæ¦YEM×oMn2K&4ÂRYu×i³,MÅ.l,faYMM2u\rÆç0»¸~TÛ	D\0F0\\iX|¢PB¢!h¸.¹rÅ)Ià¤ªZ³JD¼¤BPºÒ*\nTK¬BË-,î®î×qwe¤ N½¶Gç*Qv7a·\r2iÜÙsu;×9.»Mrhæ¼å6ËNg5m,ÜáÎ\ZXÒX§*ØÓF\\çJaºSv&\\8pÓS¹7rrgæaÂÓNl·S!÷î{]¯[NeßG;ÝAÕrjt³­§äz2]MÓOÅGTeI)&,üNÇY	5?iðv°ÿRçý,è¦[2``9ÞçÅùüë´åMÃGÁ<¹\ruÜ%2w<IÚÁÚQäsÞZ%ÜJ=ÎHx(:MN\'I»Éd~ÍO±¥7N\'%%\"#µÛ&íÒìOIÒvM:9º..â]eM&N&åçðY-%õ]îx¬¦Êlðy0ÙÂíJQu()JlM4üy]Î¶á:Á³bÌ§Ic¡u1éláC61æa¨eÞCi±lh7ïÐýeEÇÁ¦SÕØ²y<çGáMÉcÍyi¨p9»È6aGX;Ç°8½ìETó\\Ð(CÖ\Z	§Ôo³yö´©Ï	÷NRÓÞê//TtpÙdÇgÐ66úC!ç3p\\æ^\'Ig|/¤æÓÊQI²ÏR^UÛ[fQeåÎå.ñfTÊn//fÖ.ba,ayL*seÑ¤ÒO|JZè{¥ï:§¹ï\'W9Â¢¦Ìç«÷{\'\r)*n|¥\'ÁÞ³Õù;\'¡\Zyý?ëÒÑÖa\Z\Z{Êse&ÒÏT÷JiÊ{§å¡GÎ­ÊK\n5kcCAØÁ0ïi¦iÃææüöÏe<ÔËãÍ*T(*U|Õ,¤HAVAF,£\"díu½\rå	ræás@÷¹0ì\n)£JØL(xju¯¤àBÒeJnyÎ®lÝ¼T)Ö-(¢É©Êr»Åff&é¸Øç)åÌ&¡ÉIñ&ÎÂ£ÁöÎÝg¢d|ÄÊe>K¸LÐ£cÉg¡¥`Òi7iØá¦àÁqâÀ¹â§Pèò{{_` Â!DAÿrE8På|ðü', 'Cash On Delivery', 'shipto', 'Azampur', '13', 10500, NULL, NULL, 'XFCj1610952174', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-18 00:42:54', '2021-01-18 00:42:54', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '420', NULL, 0, NULL, NULL),
(16, 31, 'BZh91AY&SYº3j\0\nb_P\0Xø?[ü¿ÿÿú`\n_RP$* \0\0P`\00\0L`À0\0L\0L&	0`\0&L\0&Â0Ì\0&\0	a\0D L\Z\0\0\0)$44ÔÂöiO\n<£À OSaMâÇÞáØÐôª\ZOôØ1ô1ìÅ²ý÷>Kø¹ìr7Ì6ÉûNçèqÛ31¾ØÑûl:X-6\nzÜ4\'[sct)êvgN1ëtå§nrö7n4ðéõ4<ºu¥áqÐw§Ñ$µäz Òçq4gr¸?»ü9¹ïhkGèï¾ws½ü]¬»nåÐÙé¾c_0ªaî\'°SGÈù³ä}Àôavï!£äô6=¦áó¿ây-.¼<ß»¸2´eÿ,Ú÷´«Õ,FC¨>³ÔÐb&N­6(±\r6lÆÀ<CnCÌ;N/±ñi·Ssssvu°G»¥Ø².gCWòSi]c+Y,±»·¹¸vËCu:ÂÃJù\r´94l¡ \r(R1³s¥¾ê¶ÙÐèÝr9FÌ.µ°dËSo\rMËÃìFäbüÃÒ`1\r´å³ÃéÀ°aê=d[&Âx ®Þ.ÒjÇ`2;\r`ÝÛfÎ®åÐrhhÈP@0øÙÃ§f\\Peí\n\rxP`À4ÀÝ6líð<§¬]piËkkÈÃ¬Ñ¡£¬Ün4aÄØÑ¼âp6KFúëa³qbvð°A¸íÙ)¦íºrvåÛ`É¡Úp,\r¶w8vºÝ9nRÙ¦ÀÝË§2ì\rÛ!w@Ðà.ÌÒrÜ8Caó£èP|©ê{Ý!«)eËF¨ÝmZSÒ-c\Zh(b1Ø)ÂÆËKÓdfZ£É6Õ\Z1a-Z«	Dµaî;nå«³T\\ä®¼¯ÜÀÈJlÑÜÝsn\\[k¦ÉpáÛæÇsÍ¹åÁÑä.\0èé è0Zv<7l<9hË\r\nxMhL°éG.ÂæI\r·¼<<9r¼Ø;y::=ðï\r9pFæ	n³,\Zaë>_÷CðwúúNG½Äæ~UW½ýjúÔúùm~¯iÁz{÷?ÓötÆûÂ?(û¯Yf/j~Æb 1#ÆÕðwÙ7õÝöëäbñ?3N»-î6øØöô~gïú£Èë¯,n5zOº¾ëyº6;ÓÈºÌ·®Û;®åø¦u]©´¾ÓÞÒ¸]/ºÜW¦ùÍÈ}§#¸ó.ÂîµWù¸ººÌ¹C¡Õ`Ê²ÀêèNw1ßp>´ò.Û±Ûl[\\Í­Xpø:JÿJ¦>ðA³âú\Zc¦:|_e»®\r9\rÀþ¨ä8cäeVôtºG3ç[~ó#ØÚØÍm®ÓRs0ú1ò?àÑÍhÎÃ1K/m¼ë»í×bmp¼où¿¹å<æóûqôÞVèã{NÛÀéeÆóM,=¶ÆÆãé-®\'Úzo¬ÐÜeµðGeóGÅ0þ{,Iÿxï¹2ÅaZ¥õ¹c*ÃÚ}¥Ô÷\\SÜ0óÛ9óFeÚ[Vë+²éq·ÜjÜaýCkÿ!å¨ýØ±bËÏx.ò«üÚ4{XÒïMí>´z,­[uÌ[¬ÛaÍr·Õ«ciÙÍ¯yøåÆÆÚ¸èÂÜmZ2ÚÃÊm]¢Þ7Éë\r´\\ãøyû:áæ½hë½uK+6òä{oÐÚ÷G;#OÈÉs¿;Ëjöß»´ð8Q£¸ðÁûYÄÜÚõ²2Ë±²ûÎËÜë¸Ë}î.·®]FÈÃ¼ÕÆì;Ï=ºåjX}¹S¡ûUµlºt0Ôi{ÒhÑGÆê½÷Íq½¶^6[ßd>#Û¤4fjÃT`Ê²²°Ê¬2£K,fU\Z²L&en<CÆãz-U¾ÞòÉàân¸ÜNµjF®Iµ[Æ­Gôð®ÛAö]x8v<¶tmÚÅ¶´bÅ¡ÀètÚôZ·±¸7ãrf^Þn¥Õd|úÈq»/Âô<NwUØ{!¼¿Ôoñö6¹Çµox¯ªó»e?Ônë­2ËÆÉ4w\r­Ñø·_}W²£ø¡WÔ{á²Á¬©ÿâîH§\nRæm@', 'Cash On Delivery', 'shipto', 'Azampur', '3', 460.85, NULL, NULL, 'QyP31610968839', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'sdsdsasd', '90.95', 'pending', '2021-01-18 05:20:39', '2021-01-18 05:20:39', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '30', NULL, 0, NULL, NULL),
(17, 31, 'BZh91AY&SY$v«\0,_P\0Xø?¿ü¿ÿÿú`_=r\0±\0\0\0dsbh02dÈÂ`i!J@*\0\0\0\0\0\0\0Ð0&&	&L&	¦Ð&õ0\0i3PÂÀ&L20&db``\n\"i¡4Ó&&\Z§åM©¦$~õ<ÔÒiê$d¹ÿoÍù¸¹:\\ÖÃàÿ-cä~«-çw79=*)u×Oòø¸>.+®r\\Ó0	( b1	B 3 Áþ\Z6qea»í;2Ñ³*^§ì¤mºÍss¢ÅU¸±X0<ÿTiÄ0§%\nG\rÞZÏ¦QÊ ¦±I.[ëu7ù´xå§{^Î·µìèå³Z>/±^;ÅH¥¬¢¥Y÷;_s­ëv:\\&ê¥\nB ¡R$>¤ë°bIÔ|,÷WK¨õ©eYeÔëQ×Ôúf÷¿Õíeô:û¸Ôæ§k¨ÃÁ{®`Éw[vL¥\Z{»YIáºÒ8/\"oÂÑ[5MÞ)JKÈÊK)iFªF\ZÚ-¾ºáuPÖv¨Ü¼YuCCeÑ^ýëxÓæÝu.ú§Ô¥7ÔÝ\\kÞ¦qUI[|^p¦ÆMÔ¥Rªb(Pª*h¶®1|.Ë±ÒÝÚàÑÁ«-öTSF:mU!uFáRKg@¥jïw$À0ÊCe)Fªß{âê[G¢bS9¿f5ÃYvWiyUØÅ¹¶YºËu²ÂÊlºÌ¶h¹Éuµi9å1vÙËm)mÅ¥oç]\nÛM®Õ´ÆßZÓ:×LJ½îcMsÓb^cRÌ±Y^k4Ò°Þffû{$OýÂÐ\"ÀPzrÒ> c\Z¢(ZUØgbÅÁÙDQb, +$K^ Y \nQ¸\'S.k_äLÉ$¢©~»NzçFgK«bUqñâDwRSµÜa ä¥ÄºªÜ³±iY¡Ñ©\":ÞjHiIHBö\nPª4¡qæ©GÌ1\rAÄîM`ç5åhö1\'\Zeû5~5f{lâþòLëYýTöçÖ·6$ðüÖpé>ÀÓñUÃòp¿	Ð~4òÌÔ¥*K\r0×ÕöºhÑõ©»øTÒ¿~OÈýßEõRÇgàZü¡×4+Ï©Q5~OÅ÷©ôûh³óË­è~ðËî÷ZóG\\>ç{Ò<¯/koÉ^©Ô©gòÿ#àò/VzövêÑ´<\Z¹<ùN%,«ýjõGo8¶aÆRER[Èm±ÝK©¯(w8Ü¿ö^Íg&î§{©ÒÂ´õ×Ø¥ûµµkZíãlÝ¢®³vÊ[±³J£eUM]¦ï;÷sS?Ùû­yNe{ªÎ&:W¡O­ÒÊ¬Ëyºëj)=LáN\nÞ³L¸ö_ ¼4ðò¬ýuOÆqjõTïô<éÊ´ÞYãwIÿË0Ñé¢¥÷nw<Ô]VÿOµ<çUO{å>°=;:â\nÜÙQOCÕß£Üô³çNØz¦*ç­ÅvÚ¹13QÑÃ|íSæÔÑi»Îëp<Ëª)NÎöúuDÛçK*>&|<^õ(ÖØzc,j1S£øln(ÿeõÂøª¥çzìö}Kð?VX¦¬,¼øÅðèº2ë8)ffÍ.£YY§søfv´Y4u©¬*RÉ&Ù«ªpy	æV{Ç¡6ñ1ÅKJ`ÛI)ÁìþõÍ4T§öo÷òußÙÍèh9¾³Î]óRÞ÷z5ÏåTPÙMGFDÊT©äaø}³ÉW®w+^nçO\'ønb/÷ÐpS\\,åíf&k2À°!ùªQGÖ¨¾aømì^Ïp³cHùJb0a(a(I%ªJ)%T»©Áéãaæ¼g®O÷M5-÷ÝÉh_Àb4ekO«9=]õdÍVïC÷fûÈ¥Õ\nnéº\\Õ÷[&MÝNÞ·jÐÚ:+ûãåIi:Òølx¸qæõNù<¹5Ä·Dðuf!ú7[¿¹ã\r1\"æÌè¦®åNjsRõ³®àÆVçGÑS>ö+¦L`P±/¼\"lZÅÜN$	ªÀÀ', 'Cash On Delivery', 'shipto', 'Azampur', '4', 555.2, NULL, NULL, 'keq31611031653', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-18 22:47:34', '2021-01-18 22:47:34', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(18, 31, 'BZh91AY&SY¥HìÉ\0ßP\0Xø?ÿü¿ÿÿú`¡@\0	\0ªJAQT¨@#0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`baH&¦§¤Þ ÔÔ~Ù&§©£C#ÐÔh=Éå¤\'êjoIêHôêCÁ=(Òè@Ügú¾ÑÍÕØí[\rÑ«ó]û/ø¬¶¨ó¹j]uÅöháôr]tágUÞgà²Ñb¢)IH²*~£¶P~m93-$ÞL]X88·7±´ö+³-çEÄiïceÒ\\p.ºå¬­SfWS	g7è£s8jÐÖtlÕfQ«.¬0²ÊÍÚ¿ºÇ\rJZk4yò¨ºò¥mN¥F=rqØ¼µ,í7wÕmOfË6ô2úoãlï~n÷ØîîèÞ i!ây:ØóäCh¢±ÞûGÁåvº¶&ê\nQBJ\n©ÿRGRè|P-NÓôP³êø>ÓÎzWÍÙâ<g©EMXûyTy|Öâ÷ìûWe<SÞèÃø²vÏÉ« ûSe<Ë©Ý2§±fY4K;ÙJ\r_3³;(è©Éà´G´¤Êè^HstZLåÒÚ0²y^ÚQI§óYIKHYRsv)Üº¢Ö¥RYÎLFU:¼û.8yVYNjOòÃÄ²ÆeDÝ9i*90æË¢öw7aK·YJQÉ»:*G*)Ù-9©>j,JR¤]e4]9)ÃFrQJ)LJ6uÉB]e¥\nM.Ý|)ñev8sr48aÉ«EÑ¢Ôè®ÙQk)Á»âò4i7pæù3ÕÍÌ©)Cl9°Ã8jÑ÷­Ø÷Îl8L,²¡ºp»¼k0¥;h¼ÚTSîÑ²ØV¸ÊitÍÂåÆFM8´ÐÓ¹½¹¦:4Þèpl;í5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑX¦FòõµCX}*Â¸°Ò;âPÀ\n)¢!f)S¼\\¹Ó%Rñ1ieH¥IJTJ*(¥JBP¥Åº ¥D¢©L	Û;½]¥Ým$4~2ÕKµY*0É\'cEçng\r,îe,0³V¼90^Q\'&NEG%U×\\Ý£EÓ+Ý«vc*\Zª1[Ó-Õ\\¸Âî\ZL²áÃF¸0£fÎNcTÁ«6/¸YÂé\0£ ¤þ,}¼ö,|ýÎæÁqî(Öâ}¾i\'J4~çâÃfgÎÎèÉ÷]wÙ(ú²17þNÙÎRN2üôl\Z5°°èt]Ñ;!³þyÓ*IJRÃF\Z°¶¯¾BhÐþ\nÏù4WÍÑé>åæx{Ò$`Qpð¢ÚÍÀ|íCÄý^çÒñGåN¤úÆÍÏµ=¥íÃgîTóºÊ4;îy×=dò<Ïê§°íbQ»önC´ì8Ë$iÈb`¡ÈvÄÀ;LÝnÔÈ¡8!àbíS\rÑÎlÃRÈ¥Hæ½;Þi8p\rfÏtìóWb<Î¸lºÓTlûÜÕÝïS¼ÌÁHóÉûþ2½\rVSU5lö°×yu¥K­uÍÛ)m°w¸)C¤Á7pOau?´íâq4x?eJÂöÅNG.<­ò1ûòòQ{ÿ¦ãIg&âÊÄ©ÊS2¦g7zî]\Z=/4£ä}gîj9ÝFAÜm7KÌpà!¤(!ç,æå¸;Hldä9¿Q¸¡¹î 3 þCí;W¤Ðð¡\0\nÕàRSÛ>KIüÞæ^ØTò#ß5Ysá9ËÍÚºF#*£v[#§í54fsL¿øÜ³©â$þ`¤¢§èÚ¼MÔÿªYJU*Iò2ô=Úí=Å&Ë2Áï&æ-\nN£\rå+ZQï]¬L1(_Õ/9Ë²ñ?rü{YèÌKSaÎòë8RÓ\'Af,/#­ð/N0Á¡0s#»È\\ÑKC2LWjpóOë<ÊÀùÎÄaì&Íï¡¤$n\r\nCyÜ|£=ÎèÝçtw.÷º»\'ªj³ø]õ)gÊyå>¯Sà¥\nË¬o:¿Ã£TÊzäÌ\rE4Áä/;ºÞDsp1:FVo+¤¸9¿W!xùÔG)SVKÇ&L§ÅVB49a¦	ÌÓL5Óç1:ÎDüWâ1zé()$bb@B¢«P¢(ÈxçÒPbÂ^f.À}.Ç#&ó ²\'ÉBòîRp0&eOkÐw^u×àõÎNG#fíâTº¦îÉyIEÓYÅÞeqºn6%:Oæ³Ó\rfÄ:)ÍDÂ}£õ¤¹º+ðlzçNÉîG )<O15MBÎié¦^y~Su,õÃL!g	ÃFª<Ë:ªv¨ºT³¯9ÌfY-<ºTeò½4OÈYIQïè:Ä!	E±`ÿÅÜN$)R;2@', 'Cash On Delivery', 'shipto', 'Azampur', '2', -268.8, NULL, NULL, 'i6ow1611223834', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', '537.6', 'pending', '2021-01-21 04:10:35', '2021-01-21 04:10:35', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(19, 31, 'BZh91AY&SY|_x\0ßP\0Xø?ÿü¿ÿÿú`¡@\0	(\"*@UB¡\0`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LI B§êÉ6SQìTñ2§¤Ñ zOShIê\Zz@© 	¢h!JxSO\Z§<¡úØ4£ÔºP7Ýýàæìuv­êÕú.þÐÿ-ª$<¯Z]uÅøháðr]tágbï3ñYIh±QJ¤¤YE?aÛ(?Fo&V\'-ÍìmÁåËÊâL4ø1²è.5.ºå¬­SvWVÎoÕFåÚ²k:5h³(Ùc&ì²³v¯ÝÎ\Z´¼Ñæ>¦Y%)KJzÕ,æåÚ¼µ,î7~ïÚ½méeðßÌÙå~÷«»»¡ ËC¥Çs¼àA!T0aF)ýïèó>wÈív6&ê\nQBJ\n©þE¤eÐúÐ-NÓõP³âùßqàzÐëä<¥ÔX¤ÊËæ£Ì£Íå}OSß³í]Tð]Ok£­¬üÚºµ6SÁÜºw>VYdÐ].hïde({u{Î¹ÙGENO¢>b*#¡y!ÍÑi-M4ee,ó=;5\n(¤ÓÎ÷¬ÅDM¥¤,ÉE©9:©Üº¢ÙRÈ©,Ãg&ªv<6\\q0ùYNjO\"òÃÈ²ÆeR7NE¢ZJ¥90æË¢öw7aK·YJQÉ»tT9Ru9©4õ©Yg\rWJä³ÌRRò]Ñy(K¬²¡I«UÛ.ÂS+´rláÍÈÐá&³EÑ¢Ôè®ÙQk1b¾£Y»^ßc±2¤¥\rv[3­Ý^ÃCyÍ,(n¥Ü.Âï*Í)S³6w.ÕyÏaR%O¿VëaXrb-1,ÍÓQqbã1§CM\r>öæäÙ¦÷\'Ã´±f­#c&qæ#+lé³[,Z[E0²SvWe«AM6^jla5]­4e¨Êa,jÑ¤¥YqYd60ºa¨±f]5M\Z+0Þ7¨6ªCâ»!r©!)¡n,40 BhB!yfbªw0RRRU-öYR)ERR¡J)ER(¢@BÍR5H´@BÀ:¡ÑÔ³·²òCI!\'øÅ.ÊÉ­6e¡£«UçnfÍ,îe,0³V¼90^Q\'&NEG%U×\\Ý£EÓ+Ý«fc*\Z©-LnÙ}UË.á¤Ë-´i)Ã\n6läáf5Lj³M¦2VrÎ7-\nOäïÅ·}ï±èlÂ®\'yÒàº``xã\"÷×F¼\0¸>ãò±c±êÌbtþ\'ÝÀ¤e>½X[XX?Ôè»¢uÏøQàRLªR¨\Z0Õµ}Nù	£CèTÞÌ£G½Ñë>õñ+>÷öTT¢ÊSÈü/ÑÓDç3/:X\'î÷=ð?Ö\r:Sê4n{S´½¸m<NåOd£C¹ÇçÊO3Ìòlüù¦%Öä;N³±rA\ZØæÃ\rY@fún×A¨ÒÈ¡5CÈÅçKMÑÎlÃRÈ¥Hæ½;Þy8p-fÏdë;æ®¨óº..â]²ëMQ³ðr;Ww½Nó3#ÂOO®Qw¡ªÊj¦­¶\Zï.´³Iu®¹»e-³v÷e(pR&îióSûÎÙN\'GøYt©Ì3.¼«MÝL:Ë¤ç*}3±Yº~ïsóNöâÊÄ©ÊS2¦g7zî]\Z=/;Gñbi6ãI½Òfãè,9Îã¢9)ë^wáffÚ¢íæéÝ<^å<H<YÖ0ñNµæ2xE\njñ)H©ëç¥¤ûÆ^Ô©æG¶k>IsÝ9ËÍÚ»#IÑÉ»-Sø39¦_ünYÃÔòWCÆ0RQSÊôNm^Fê\nÿÕ,¥*$û½zÝ§¢X¤ÙfX=¤ÜÒe°aIÑða¼¥pKJ=«µ%óR;ó»/#ç_ðk30Ybóñ*bì9ÞPñ]g\nZ^9`bÂò;_\"ôã\ZYEÎ%´3$Áùµv§<ü§XùÕ|ÄÙéÙJZ*`Ù¤q=ÏÃÚ4RTÿyº7x:;{]³Õ5NÙô]ñ)gÙ<%>/SÜ¥\nË¬o;Ë£TÍDÞºÀÒSLçwS±n\'0ÑÈÑ­äy0s~ÎBéï¢9J²^92e>¦a¼hsaCÌîi¦iÌýf\'QÌbyp?ü0H?4¤H14	Y\0Z °bgSÞh(9a/5Êc#Ë7nÞtDû/.å\'ÒfYdõ½uçdõ¼T´§Ë98]·Rê\nºËÊJ.ÌN.ó¬Ì{ÍÓq³ýé>åk4N!ÑNj&í\'íH´ÍÔQ_cå9:Ïb=áIä}LÄÕ59§¦vxL£ó¬ñ|åBÏU6yÖt;TíQu0¨-/f+^sÌ²Zx|¨ËìäË\'æ,¡GÐ~Ã:N¤dHAB2ÅÿrE8P|_x', 'Cash On Delivery', 'shipto', 'Azampur', '6', 788.8, NULL, NULL, 'suFU1611223907', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', NULL, 'pending', '2021-01-21 04:11:47', '2021-01-21 04:11:47', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(20, 31, 'BZh91AY&SYKu\0_P\0Xø?ÿü¿ÿÿú`¡@\0P%\0P)æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD	O)ê=¨4iC&£&@4*H A4Ð\0¢~ÉêôMé#Â2.\rÇÜþ¡ôsuv;VÃGójüW~Çâ}ë-ª$<ÇµE.ºâÉú4pú9.ºp³ªï;ö¬¤´X¨¥JRR,¢Å\nävÊÅ£g&e¤É¿V&¶-Íìm¥æÛÎæ¸Í=,lºK®¹gk+EÔÝØJs~J7.Õ´§F­e2êÃ	»,ªÍÚ¿Ó8[RËËÍSõ|ebR±Ñ±ØTcÚ©g7.Õå©gq»ý?5µ=»,ÛÒËé¿³Èü_µçv;²Òg h!Öw8\ZÜwO	PÁa\Z)gíxÞ§ñw»][u(¡@¥I\nJT±E)#©t>¤D´ü,üßÄð=OÍóvx!ª,±ûyTy|Ôâ÷ëö.Ë*x.§½ÑÔÉÕÛø6ubn§Äºx¶YdÐ].há¡ïÕó;3²rw¯ì)4Q/$9º-%°é¦¬¥W¡W²Riæ|Öb¢D¦ÒÒd¢ÁTw.D¨¥u©dTa³*^.8w¬²Õ)5Êx%2£EHãTä^%¤ªSøaYthê½\')w)J9¸r§UCÉÛ*sSJ%)R.²Î\Z®RpQJ^Q«²Z/%	uB)4j»f_êem9¹\ZhäÞl°²3mNªä¿\ntYÃáòw´k8kÉÕö:0æT¡®Îl0Î\Z´%»\'¼¦óî\',(n¥Ü.ÂîåôY³¹u¦¡uH2Õw\rØZbY¦1b%Æ-9ÚhiãonifÍ7¸¸6\'YybÍZG5.ÆLãÌFVÙÓf¶X´¶ad¦ì®ËV4l¼ÔÙ0Â*j»ZhËQÂY0Õ£	IK.²ã\r\Z²É4l(atÃQc3\nÌºj4V&éÊúÎù!Þ~yi$R¥©\Z(¡n,40 BhEBòÌ¹s%)u%RÑ/eH@a	\0@JYMBòÖÊ)D)R¦íÞ®Òî¶\ZI	>ùHê¥Ú¬¦Ì´4bv5^V&ì·YÜîdË,Ñ¯LIÉ¢ÓQÉG&ÝÈáÎ\Zµ]2¹N\Z®ÄRªü5_Erß·i2Ëví\ZJrpaFÍ,Æ©\rVimÉ\\/5ÅP³Ø´ãè.»êõÝwçöÏ¹Ú³¾jú?TÒNhüÏ½ÌÏ\'Ð?søÝwì^í_ÿíâG¯Ø´Wg^îEK Û¾Ráüº\'d6ÒÊeR¥D°Ñ¬-«äñÈM\Z­SyýåMóteùNBþe)0(5p¢ÚDÉÀ{-íö#ðz ûZ?\Zt§|lÑày½¹/<åOYFr=ÏÏY<¯+Èe³ú©ì;eEï1èù<±£ºQïyZ´l%\0k°S°äìº\rFD	ªF/]%7G9³j]JK\"#ôñ¼Òpá<ífÏtì9«±gEÅÜK¶]iª6\'#µwêxÌÌ	>*}R½\rVSU5lö°×yu¥K­uÍÛ)m°xÜM¡ÁJR`¸M§°ºtíâq4yß¢Ë¥NauåZnì0ìIÎTÿÕYº§ÁÉy§¸¤Ã2±*ráL©Íã]ÒK£G¥æ~/ÒTtw¾çG®tng½ð]6{§©âTíSG\"Å=«ÎãïY¤÷¨¤»yºwO;à±¹£ÐÈë~SEwÎ²ÂÁB¼å)=³àô´½îeéO*=óYß.|\'9y»WQÄeRtrnËdbTý&¦Îiÿpõ<DÍÐóÆ\nJ*yÍ«ÄÝA_ú¥¥R¤Y¡ì×iè)6Yy74lRt}o)\\ÒzíbaBüÔ©yÎ]ñ_ù5N¬Ä±yö1vï(y×YÂoÆ°¼ËÔ^ÀÁ¡0r#¹áE-É0~\r]©ÃÍ?¬ó+ç;°=1:Ã6i\"Oé0÷¦?´Ý¼Ë½î®Éê§lýg¡~e,úç§æõ0>\nP¡¼ºÆó«ýº5FT&âä`ìÂ98ÃFÓFc\'jr`æÿ.Bÿ:å*jÉxäÉù3*ÉRÉ¸ºHÞz¥¥¥;í7Ö¯Ö÷55ÈnÉRýÆ1e\"S% `Å\"DQQ TUj\0´A`ÅÎ§;¸h(éa/2l\'GnnÝ¼è,õ¨^]ÊN¤Ì²ÉízëÎ³Úó©i)N\\äátr6nÞ%K¨*nì]5]æY÷¦ãgîS¤ýë=0ÖhC¢ÔL\'ØOóH´ÍÔQ_kc×8rvOr=áIâ|ªjsOL,í2ðGá7YçwÏ\\4ÂyØN\Z5TÙæYÐíSµEÔÂ ´½¬-yÎc2Éiç:,?¨Ëë©4OÀYBç¾pB\"bÁÿrE8PKu', 'Cash On Delivery', 'shipto', 'Azampur', '9', 964.16, NULL, NULL, 'KG7c1611224339', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', '241.04', 'pending', '2021-01-21 04:18:59', '2021-01-21 04:18:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(21, 31, 'BZh91AY&SYËns\0,_P\0Xø?¿ü¿ÿÿú`_=z\0\0¬\0\0 #AÉ&FÓLL0&&	&L&	¦¢1©¦@Ó&ÄÓ FL4ÑMJH4\0\04\Z\0\0\0 AÉ&FÓLLRAMi¦MTý)åLPý&úM=Rä7?«ô~NnRØ~òÖ?sû¬·¢	ÜÜæõ(¥×\\Y?Ëàáðr]tág5Íê(IEJ¡#ðøhÙÉì;´òe£fT½OÙHÛuæáF a@àÂLèJs6$áÖbxXx#¡G&ÚsÆ&ùÍ·×ãg\Z¬íy©«u)gF*cÓK98ê]n¶ÿ´ïkäì{Þ{5£äó{Uèz*E-d¥,²Ï­ÚúÝcÈésl¨R)\nTJTù\nRw®>E\'Yû(Yï<Ï.YìRÊ0²Ë©Ø£³­ó<íïÜË/1é}Îru)Úê0ð^ë2]ÖìdÊQ§½Ïµ­#äMø´cÍSw\nRñ$²¤RÊZEQª¡F¶%¯®¸§]\rgjËÉÂë.¤Ö¥56]-}ñÅ>-RîÉºêRNeq+Þ©aUI{[nWSc&êR©MU1J¨U4i}q,Ë±Í»¡ÃFì8ÕQL­B­¢¤9ZóÙ«g©¾²£}÷Æ:1«Jø8sm6RTj­÷¾.¥¦åh¤ûtÒØÖÙ¶afo1j¾:¬Ýe>XYMYÍ9®¶­\'VYcaöÒÙLZVø¾uÐ­´Úí[0#°rxÉ	¢LFHª 4¡Ü§\0`5æ5,Ëæ³M+\ræfiO«É\"|gð^ªêJjÉD&P1QL,_E2À°°´1´E\"È*ª_KH^¡TDU+uº¹õ-~w3$~ªs¥û-4c,áÕ¥Ýyq£vg,±5×X]PrÒÎJåNJäÞ÷oï3uo&(µ4¦ù·,m}´g;m¦qÃÛfõ}\'&5¶Ì1Å×OZêÿÁgÏãßÁí\\Âfkr¦_³WêÃVgºÎOú`÷ÚÏ½Ov}u1\'è³cé\r?%\\?7ât&ß<Ó5&iJÃL5Åµ}N´\Z4}\nnþU4¯µÏ?»à²?Égàûâ±äüK_;&¢eyó*&¯Íù>³û(¶9ÏDºÞã?±.ïv)Íß4vCëw½CÌóv¶üÕëj|ÿöÄ}ï*ñug­Oon­ÛCÊ¡«ÊßäRÉÎ¿Ö¯\\rVóf©u(´U%¼¦ÛÙhõ9ºÚósËð¾ËÙ¬æÝÖïuºXRvÊúT¿v¶­k]¼q­´UÖnÙKy4ª6UTÑ5Únô?R8gú?¯)Ð¯uYÇIäèSèt²«2Þn¦;\ZO[8SoY¦\\¼è/\r<<Ë?¿ð©ðrxÎM^ºþªëMå7tü³\rª*_vçsÏEÕoôúÐuÔû¼ú\0õlìR,(WseE=/_~{ÔÏ¡;aë<ËÇ%Ûjæ`ÄÍGGçhÂ¦»LÍÞdÎº¢òw·Ó®&ß\ZYT¡ð3áâô÷©F¶ÃÖcQËctÑGû/¨Æ/ÉPç/;×gÉó/ÁöµeÎjÂËÏÀ¦/EÔy×YÂflÒê5w?gkEGbÉÁJY3$Áû5uÎwá<êÁö:¦=)·éJZSÚINßådÓEJFñ¿7eý½OKDYÔúAwÅK}õ>+=QCe6t|\ZLÔ:T©åaøýSË©«Ù;¯S¹Æ\'ü71v áMr^t³¹¬ÊZn,\0º2[4(Îª-06õoòÛâ`y #JE\0)$µIE$ªu¸z¹XyïìÅ=óMg}÷sZ\'ÁE×äp1\Z2µ§]Þ¾ú²f«w¥Æ÷Í÷KªÝÓu¹«/Ýlm65ÿu:rÞ«Chè®\'Ý?z­½)_Ç]O\\ïÂ§õ³&³Xèn³ÎÄ?Vëw÷<a¦$\\ÙÕÜ³Ô§R¬T,½¬-weiiÞr´|3ö>|º\"yB6ÄnìÂ())ÂÉþ.äp¡!2Üæ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 126.58, NULL, NULL, '5mlS1611224413', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'eqwe', '12.22', 'pending', '2021-01-21 04:20:13', '2021-01-21 04:20:13', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(22, 31, 'BZh91AY&SYµPþ\0,_P\0Xø?¿ü¿ÿÿú`_=Æ\01°\0(+@ØæÄÐa2dÉÁ4Ó#\0C\0M5\0Ðh4\0\r4hAÉ&FÓLLMIH\0\0\0\0\0\0\0\0AÉ&FÓLLRD$i\"4É<¦F4CÒi§¨z4Ô¹#F§ù~oÍ¹ÁÌâ¶½û³ú¬·l¥©Áà¢]qdýÞöÏ{rë¦Ë8.f\'IBJ(BP	à|)c¥I:VÞ¢Æ\n\\ÆG/PAÈ1¦×zm:±D4§×ðÆH½]6åìô[dÊÍSæüÎiqÎÔbæFsrÛ£×aÍM¸®·&¿Mø²êgÏÉõ½øhÎ£Ð®ÇcµH¥¬¢¥Yët=nwäs84MT)J*AB¥*H|Å)I:×Q\"ÄðP³ØyÜÎEÔ²,³Ò§:~O¡ÔÖ÷ú>¶,^c½íl}iÅNb÷\\ÀÄ»Q±Ã¡NÍV²ò&»Z0ÂØÕ5vP¥)/K*E,¥¤U©gh²ZùçÆ¨fã],la&åÖ]I¤©¡ªÉh«íê|Z.¥Ú,¥)æQ3V²½Tµ³ÚóZhbj¥*ÍS¢UB¨©+ç,ÅÎÞÕÁ³&¬f¨¦+bÞ«d©\rÖ¼Ý4fÑ³Ô×9EQ®ºáü3e_gE)Aq³iVFùaK	1Åk<ÜzyÊ.Ó´¸æGïHã r 6=Ë-´Q3f,Ãàb]6f*öÅ±Ì)1x»Z®¥:ÚS\'^¨VÀ0L)¸9Dµ®­f*0Çy!s/ÐB°FTAñeÕÁBÒ¨¦@,\\´E\"È°\"	kº,ÀP(ÜrqáÅkð¼Iú)Âç´É,pqÊîX¶É£óê&\\½ôÖH­ÔmXÔmLÄ¬Â¨6%K2ï­±±UZÃ\ZhKÁ-I»àtÙ>gÀ;½j æã;dtK²RÕ9BK¸\\Ô÷$¤<nç¤c»Cía\'gæ³nicê¿\\?&×ÚoM?\Zy¦5&4¥Iað¶oS=*jù*e_c?½d~ÏÏ½÷E)cÉî-~çMóçÐ¨¿\'âõ©óþòYÂvË­Þ÷Ov,%Ýnu8:æNxzÝoæyº\Z~Jñ,ú»ûUâêÇÙ#¢C7¯	¸¥¼crµ0n¥Ô¢ÑTòhtâÉààäÏ:[®_eô^Ìç®N·\'3\'Aç¯©KôçjÎ³Ó»ìÕ®³V[ÈÑQ¢ª¦IWköqSfÌìµå7£î«6æ0æ^Mêz\\ÌUf-fªaÎÌRx±ÁM­cL[¼Þ^vy~¿²§½¹Ý73xÔëïv8Óe¬³ºîcÿ,ÁÂÕ©Òê¢ê·ðõ\'iÊ§µð<4sÅ)+¥¢¢ï¼ÇÔèÉæ\\ó·.Ó7	FýµÇHÁO3&.«µÏ$Øê]QJy:ÚåÊ&\ZYT¡ï1ìîwõ©FvÁâ°ÌaSÉ¡ªd£ù/ÃÔd.\nÞî q(±\\È\\`ÄÄî£©u)f3FWQ¬iÒù1Lêg&Æ\n²c$ÀÿlÜ¦Î§ß:íqw¦Ã7)iL\r2=&yJü\ZÆ½|÷ôqw²E^´»â¥½®µ>+MQCE4où·å1©;äâR¥O+»Õ<±8³yçJ³âé4¿Êd%i@h1z[¥QÂR5&d.J¤ÕÚ²ÎY«Ã?W^Zð©öOôR/\ZTdc#	C±@KTRJ©w&Ï\rÖWyäîOdË9Ü×]\\ïQu÷#&+Zvr³Ç®¬Õjïm­á±£]dRê5s]E.fÁµúmI¡óS{í[²3diëe#ûgÂ¤äÖ¯vsmÜ^3®FÊW­Ìâ[|ìr:Côj·_Kºa\"ærS7JÍÇ8CK ràÐ:à\r]áyí@P\rcÜ¾Ä\"lZ¹\"(HZ¨\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 69.4, NULL, NULL, 'JYlb1611228510', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'eqwe', NULL, 'pending', '2021-01-21 05:28:30', '2021-01-21 05:28:30', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(23, 31, 'BZh91AY&SYzðÛ\0­ßP\0ø+ô¿ïÿúPÝd\ZÅ\0B\0\0\0\r\0\0\0\0	Bi5@\0\r@\0\0\0)(Ñ\ri4ÐC@4\0\0\0@\0\0\0D@©êb`$õ\Z3H\Zd4Á©¦ S`w_¸öÑ:>¯¯Ca¨¨Ékà1ñÙÒH>$$Ëû*ÀiBÍâØöRå&¦U[EÝ/Zµçá¦U¡­%Í0`ÔÝñ$Ác\\+uÍ¼\nð\0Î ¤v)À\Z@qÏÈºÅÚ2bíØm^\Zô,Ýk9ç!]¯lÀ!®XX¢«T`@PB+JÐE@m¬×ð+Qý²Äf5	m!°jñiÄ4&1DÊ¢c)	¦(\n­ZÒ§âXRÄjÌÛR	\Z¹Üg¬Ê eÉ ©rÄ	 PUgC²ËO7½m¡%ÜE&±Y\n££#Ì:*5)@xÔ*0¶eV¡J:®­j*ªþ\"ñH_ãùi\nÓ0«b¬Ã$§G\rM!<3XÊJ0i!@	EÄpÜ&ÜQÚ¨î`$#­ ßLÐ­\r¶C<Þù7à¥/|îiBDÄ±b\ZÅÞá¬-ÔwaHRòÔE1{Ú S,RÙdòÍzøb	ë²g5N!:þ\\å³<-Ë\ZãqÒoAEÉ\'¡MQVª0m+^9	\nSÕ¶ãæA£½O3÷=þãÌÍnRG#½{*QI¼7S³¸\ru*q[¿qÒ7°4,dhc Îó±Å#6\r\rPí1M\rKi¤`eW´ì32¼ûüFOwwwáÊÊÅTÅQ·qZÊçÔùÌÊ31I281;K!EÎñè3´y>6m¦6åÀø| ðkC>µPt\n7.yæqaAÂ=Bìæ¼CÈl±$u¹Åb!ÀÁOÌ[äÜx ðØJ£YäÖè ÏBMá:¡t8Þ%ëÚÚ9t=¼0¼x\nH¸ÖU$ì\\Iá´±J¥$Ä(J²Ä­KñÍn}îÓ3CL½C_±>+\r3°k/=±ÕaÈªPjr þ§2;ÆeH=yÕ*5 sFhí´ÝNØC;ÚY¬)2Ìd(:+Æqfþî=ï5Çtñ+¦1 f$bCi\0¡\\Zt66qWr\\ÅUäbè¹¡#(¡B!rÖÃ¿«x:MÌa4ÎÅc39á(a`.¶*P,Úüû°¾£=¼Ìg¡ÕqJ.¸¢8÷æd+o¹¢\róiïjÄjè9¼ö¼¼ÈÐPä?ñw$S	¯\r¸ ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '2Lek1611464932', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-23 23:08:52', '2021-01-23 23:08:52', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(24, 31, 'BZh91AY&SY<äð\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU (@@*ª`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LI	¨E<£ÔÞ£SCG¢(õ0m! Ð*Hh aO\Z*~§¡=CzmOÊl©úK\Zö~y¶·¸k`ÈüÙçÑxøºË`z¡©°âw(¥×\\Y>Þm®Öo]ÖÚ*JT¥eJJÿ ø²jlbY#B`ÎLÌJ/QûF¯KYµä$Ë` ÷	ËpðlÙ°Óàá¥±Ü6eÐ§³þX;\ZréNÎp®\\½ÍÛ¡»\r;ºoø¶\nCÎ?§£îR®ÄÄ¥)dß4(aÛ(³soËQc4ÁóYvêXÕÄÄóiÏ59ÏÌêsÉ½²Rm)üãÕj%ûÇjKY)¤¥K,³ÖæzÝK½©\r%)(*B(!ª?a{%É>ñ\"É$ã>BÊ|ÏÚu\'cæ{.Dæ;J,²E\'Bwàìk½ø½«Y2QÖÀ§{Öb8çÿ,Í¼ÓRNÁÀìc1LXâéà`?¬Óìü±¸#Éè(Ò°¡²Ùé¤4aèÑ§\r1 ó¼;NíJRâéII©Ò÷,ÃcP2\"Í©iÌÒÑC¬£º&°E< Ò°JnìôÜ:&Xz&Á\rrÍ«,¦Òà],NELx#åÀR1»³§pkb¥ÚÖRÙµªnQuPrG}J\0`h7zl,8rA\r-¸ÅØî\Z[!Ò`1\r;·núx;ç.ÆB¢!è½lØ<W³gàýåÏ8e \'GÈìöH$`:ÙìÝ»lGFZ=¥»ÃáãØ¹ÃÀ\\(¡Àx#gÌ.Øó;`è7n83hKJG¿)ª[	XMs©SÌK2¼0´©¼Âjj,m,XXþ&5,bj2.8Æl¤Ý(ºæ¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrÖÆÊSÙ\'Lé¢:aT¨`h)Bí û¢Ð\"F\nb1Ø)ÂÈ`,6BÉv°$HEaD!¡z\ZÀQ)xØ*i$`#¸w½=ãAÕ(8U÷é#Hy náÈå¸x:lL.NZxpàp]»FpòÜlPåËAÈÄ9`òäò;¶l;¹rÙ6îè!u»Ëæ`;\Zf7»gw!îî\\8x°vv94pÙÆÈ`nìÒd_QZåÌJT,íY?ÛÌ\\»ðíºïÀñ>ö/ÎSÍ÷I¾\'ÉâØ~ìZ2ë88&±ï¼»ñ)ÝçÿúîsÞ\\Vnû]Ãx¢çâ:ÊÉ8å< ìý0ÄL0`BBÌÁÂ[7âè ÉzÔh~ÅOÍºc?áïY\'Ñü¬ð?º¢K(§$ÿ%¥÷Há2Ùy÷7úÃ°ïñÈ±ºOD.Zz	.u§Fò£$á#½Ô¸ìw<æLMSü*vÇRn]áæcûì`cÎr¢jdIÑ?Âs?±¡Êu\'#rU%IÂ§ÖfxI74i©l¥Ô¡i%J\r¥èç:Ñ®k3Sì8S9Å#©º\\ËÍKËÁ¨üÍw+±Ê%$ëG©ë)/=6é»­ÆÅ\rX°îlB¶\r½ðs¶åJ&Ô©R¡&Øk>Ä¹GèrÖk2ÑixQµ#òåXÒp0Äm(õØªÌM!üi±s.v°(ØT×*c)¶sËÍÈ¼§dë,ùO¡Rn:Ù¹Ý74OÐñ<¥áªx§$£TÊl%d¹ÀýÖbdxÊ*\Z\\ò,0*^}^Ô;N¡ù\"´óQÉQ%¡S3­)RJ;	é÷{é\'£GÙ3:ö`°nèîãuÃéåÝÃ²·>fLM£õ\Z5½NHGÁ¸ë$X0<Ï¼>Spþ°¢	)ë1Úy;çé,40k21	¨oIElBÅÌÐÂ`P¾åHâæÒìg,ò_Yú310èf`Y/?ÁF6Ü¢zY­KÃS)råLe\'ÕÉdg­&E,Ldn8kuæt«{(0Èj¤7ÄØ¥¤£TÊIMgÿFÂL\n?SI&ªnp{õ¤Xã>ãÐ|ÒÓ¨§Íê`O	RCBåC|þ^MóT2Û\'!7¬ZT:¿]S\'#7|,u§¨Ù0³øk0xÒò4à,¼\\	ê0Hh.GQ4=E:,hwLçÛ;æsTíRª{¤|QUïZBED D\"F+ ªHZTE\nU%Î3YÙ6Ky&\"\'ÈçHxîîáÐ´¨2`³±\ZÆLKKC¹èÍçtë,Éð?\0rðÙNCcwu`X7;ÒÁBã3]çL´Å;Æ¤4&©øè=>(è2ôÇ±¸úÄ?­3III_	¨ì5ÍïÑZ¡ÈûØÈgä-6ÃÓÓÅÔc#äh´ëK²ã	c¬Älg5(ÑÔ³yÁN\nKÊ1Ô^\\«`¾§ é¥=¡±\'Å¶H|!âüÒ¼§Û)*PFLX²ñw$S	ÎO\0', 'Cash On Delivery', 'shipto', 'Azampur', '5', 738.8, NULL, NULL, 'Lx511611661761', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-26 05:49:22', '2021-01-26 05:49:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(25, 31, 'BZh91AY&SYlW\0\nÔ_PXø?þ¿ÿÿú`\n>$B ¥\0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFDhHza\0h\0\0Ñ¦*\"	 Ó\ny&M&ÙOPõ=M¡M©êj)´SsÞÕþè²]©øUü/Ëõ_¿i¸ÔØ`Óñ0N{ð\rZI6\nÐ XNMÇölÙ°Óü8hN·Ý\nz;³§ÖåÃMÐÔíèÝº8pÓÃ§ÐÐòt0h49\0÷ø|QUÀGÑáÑz®î\0éóîÒê,/Âë½OSWè»îKå¹£ºóñ¥SèUèÉû/È¿eö¯RéXXG2êt,¯#+WÔ¿&\rKjûW=±À4>1°¶{á/A½è@S¥µæÐ|6åêiÓEÛ1­u­bæ_kîo|Zµj×«V­qHò°ãXzÕe.Ðºp¨1¬¹»·µ¸t#:<nl4q¢í	 64)HÆî<GÙ±ØÑæ4R6\0`ÙL\r¼6CnÇiÀ0i`!²Q!¶vø/PÜró¥Æí×cH7+§nîxÏPräc±Ý°HÀní³fÍØ}1§#c¦Î[½¤Áî\Z@³Í>£CcfÍÝ#&FNÃSS&\rÆMãi \0°R8^6n¬ï^X0pÜ!·lÝÛc§.Ûh]¸°4ÙÔráÐ8BèRtåºSfw.8Ë°`7lÝC»0MÑ¶ÛjqFÈÙ}ÑûÑygØV¢ÄXÁÐÒÛ!BóE¡ÓALF0ÁN0(hl0ö!#BW1¥Ò1¢\ZhE¦ Æ\0`G´;£Ø4õÒÂ\' §[g¹²·G-Ã±Ód¸písÜÜlÙÛ§\\mÆÁnZcæÁæå§ðÝ°ðåËd0ØcÃ¡¸ÝåY´Ó¦áÍáááËäò°vó9#ÉÆÐÀÝÛNFÚ±0áhm´bÀË{\'zý½§Þ}[È{Þzñ}mçÁÆ{¾§Ë7¨è/»n³ðwº\r±ÝæîØø¿tçüqö½é³tGTo½Ö|l±&Ëm·YºÈe5?Éö]v·êax/yËÅºÖ2zOqøâw+¢43uºõÛ\rcC©:Wbå°^@æ¹µm]sÅp{Í%÷¯©m¹L.ÛÔ®»Ð².Ò·çQÂå.{5Ó¾®Cù8v*Åã/ðºÓ=\'!âÜz=\Z`a#û\0öÖñcä6{ße¦:c§½ö¼!´29ÁóYÈ8cäX±b6#Â8Ña{NÊp6¬FÐÒÐÆMÖ18£Ct~èY8Lr:\\,^6ÃòZÜ©¥¶î»÷~¦+¥yV«ï^ué´oì8ì[n+ÆÐÐÔôãpä<×òY\Z´¾¤rÝñöò¯¦xÛÎÙa+4·¯¦L\'¢óÛM.Òæ,KSÈ|çAáz°YnÅæòtáÒ·ðX9Kâ[Ë£òy£æX°±u]§mÐºCÙedaMnÛæ=»L¬\römÎág`6bmØ\r8V¤6iy­\r¾552´4Í»&SHÒÉKA¥r-¦K`Ù\'Î\Z²_kçQø²u_29nº¹%ÁºØ[ÏÜiyãÚÄ`þ§\\W¶ê³xßí6ÑíGÅbüNãìh^,ÓE¢þ-ç{¶ÖøÝbOK¤¹yr_<au·ÜçYæµ·Ù#îÂ86Y­#BÍÃ1é1-Çi&/.MÇÍs}÷Útøû,~$0 A|´PIL\nDEbÅD¡Æ*06$ÀÀÅhtë³VË¦NÔl}ºÜr#4Y3oM*ÔÔÍù;#Cð»,Y\rî9Mv±GtZ0h ågÔiÁàZaÅE¾r»%°Ôoð/$Ýs¬/eÜo¸\\5c6èìm]f·û1y®£ÞÑOó-FÊãX±vX\')ÀÉßk³[ëG¦ëwÔw¿qEéX°1`³`%\'þ.äp¡ Ø®/', 'Cash On Delivery', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'w2hZ1611732586', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:29:46', '2021-01-27 01:29:46', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(26, 31, 'BZh91AY&SYgú\n\0ê_P\0Xø?ÿü¿ÿÿú`\r?Â(IU¤\0(¡EPRH(¡Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	10 @P=£jcHÐz2§¨ÓM\0TÈ#I&)è53SÔÂzõ!§ÙL14\'èüO$ònpr9VÁø3>Ïñð?UÀíN¦ÓÞ¢]qdù²jòm]tÕgÝmÉïYIab¤¥JQ)Qd¤©Oú9J&ÆÖ%4&	ÓæÈÌÀÄ¢õ©Dv4ÔÚòe°P{Bå¸y6lØiòpÒØÎ1ºôýÌÆÎ:cÛ§-8Ch1ËàÝº¸pÓ»§ïhxt0(49:ú}d%!\nÝÄ`õ0(èçÈ±j,qM\'ì|f6,lô1<sÍ÷;à7\\åÎn\r²qOã»Tõî;êE-d¤R,²Î×;Øézw+b\Z(JR@ ©¢0\"¨ÿà Â\nîK}BEIÊ|E,ù£Úu\'¥ò=Ç\'2s+,ÍIÐ££õ»Z^ü=«,(ë`SÅÁì1³þ,ÍÀ¦Å:W)³ÒÊd12fL	ÌÈp0ÙúÇ\0lEà#ÉðêXØÙAéí¤0aì£-ÚcAçH\\ð=YJJLÞw¹f\Z°`Ás¨H³jZD³4¤´EPÞå(æ.¨¨À0iX%7v{nËl°\Z´våSqICsKeC96#\' t4	HÆÍÎÜ<¶£V\n]ªÊRVJÔRND£jú4À4ÒnöÙXpv<a¸ÅØð\Z[!Ò`1\r;·nüÁÆMÍG#ÁsFB¢!ì¶\"é°apÓÎyÃ.<Ã éé ëg¦íÛ´}E¼CâãÑs¸QH(ª^k/0s¬Ì\'$»¸Ñ¸4ÀÓf®Ë¼>\rFl*TÂ^a667,,n10,Q°¹caqÈ\\´3e&ùEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0±}õßOÀOxt@Q\r(]²lZ$HÓALF0[8XÀü@Xl7#f!#@VdC4S/KP`A!0-10Dc7ò·Äh;¥\n Ð°³æiÀÙÃËpñtØ<°97ió8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00âØ(Ó5½Û;¹8wwrä!ÃÀÝ³±É£Î6Cwf®HYs&;Oöò.úû®»åï=GÔÀÅïYç6<ÈÊN>/Siú±hÊ{¬ä< kî¼»ì)Ýç­ôïsï6Ý[¥þ×qçà(¹öÞ²¥ÃïNYyËbl£ñ¡\"a[nÖÖé É{h~OÁ¾c?é÷,æþxÝQE%S~E¥÷Èã2éyõ7ùié<\"|2,oÑ§¾O|ÄÂ:Ó£Qqàê\\zC¡Ñ9Ódÿ\nÑÊT×xùÄþÇÖç}¬bYÏ1Iã:fÆD3ë,\'ACû\Zc¨å÷ÆABù£ÿ]È¯aÐ:\r1u(ZIRqz:´k533cè91äÔß.KÍKÍËÁ°ü\r£±î	îãô	ò±ý!Ï¥ÓLtÇNÉá0èY,È¹k®6)mî{Ý\rÆ²¥rT©PÉ\r³t5>¹GâsÔÔÊv>kKÂÉ*Æâ^#qG°àÅVbiØúM«t47¸@ä#Ã0ÀtùÛ=e2ü/ ³ã>eI¼é?F÷|ÞÑ?Ôzåá²x®iG,©ÛJ>sú¬ÄÈõJ*\Z\'\\õ/?wµã¨}è£ã\'°QOØ=Ä`°`ÐzX;ÏÙ2>çØNAGD¢ft<MÅÃwG7®o.î¸@üApÆ~ãAf®×4#ÞÞu¤¤£z\rÓ9ÌÐ¨ÿÒQER?¡ôNãÖðGad¡¤´ÉñCS# J	÷°4VÔ,Qâ¼Í&ïTH^n.Æy§­}OÅ7Ã3Éyþ³s«ÒX£Cc-áýØÉÎIÅFq\Z¤À¨¥àÍË\r]Gå<êÀã\'z\'jòBÃg*Ãõ¿Ø.üeÉùI4S{¼ñiESù»ä´öE>NÖñ(4.Y48Oáëp!¨é9ÁbÒ¡ÒÅùì8¼!c¨´Ù8FÙn³SÖ¤M¤\r8/&|ÆÃ0)\rÀ°\'¬TMÒÅ64;æsé9æ;ªé¸X @é`R+,@%DVATA)(ET9MOLÛ,<òòLgÄ=,áØi4ÒZH{TKQ¨ÂIihw½q¹Àïr¥*TÕ=&Ù¬¼¦ÆI%TFH¹Bã3[Ï<´Å<¤4&Éö)¼÷-;ÐdíDãó÷ÄJ_1»\r{æÃÒk6ÎCÂDMUgÔÆC8g!iº-9L]F2>&N¹ÒyÞg%³µØ£GRÎ8©/*a*Åì^\\«A|!OaÛJ}A°_ÁÒÃâ,¡SðJõÏ¦\nRT¡RiB®¼ñw$S	p_  ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, '5DlJ1611732612', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:30:12', '2021-01-27 01:30:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(27, 31, 'BZh91AY&SY*ëÿ±\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0HD$Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"I©²?zèPÉÔ=L#ILSbõ¦ÔÓ#G¦hFÔºHì~%~tHKHö	ôç¸;NMnÜïw!m?Ròn`ü×]rÏ%¤âÉK8?Ea£3Fk0Ú¹0ÂlÉÍ?UÍ\n-4LÎ£ÃÖ¥`ÄÁÅªs);YËIÐê4~¯ÙgAGûv=øw·¹88îxKx\0Që#ÉÓæzNÌûÐQDäuº;<K3É¨£ÌÈ;Y=Æc%IÄ©ö*#µ(ÛÖQ£6õ0²:ÎÃYÚq4}o5ÞÃ1RDêTMéPh`°s9¡¹*(¤¤TjæÄâ¦jÉF¡t±-*`£EI¢jZIi*.ÃfMËìjÔÔ²ô¡rR#UjÙtÙ©YA¤÷¥UB)3Yªí^EçMå\"Ñ¡h5Q\Z´e<ì2*hhÑRR\Z.ºìø63L¥©dÍ52N!J*\\ØYfg`ÞD,³#Ö\ZzÜ8im´äæìlw¶ÐÐd,ÀNma5a)«°Ñ¦¬Ú¯45L0.Ò²h2L%\r°)eÖ\\aFLQC¦\ZL+)tÑ3fÄÙ2Lióë\'ZDJQ¤aABà±¥aÛÑRÚ2HFÂAC!jâ) ÁE*DEB©N§7BîVH>R ä»EÒ¨ÕFLNl×16l§S©ë³g¹½¸¼©#{5¦òõÙ¬ÞlÂæÌÙ®.Sf(f¤º4,Íe17¶lÙ9¹¸Â[Ù772Õ20ÕfeàÐ·apDxw­ë|gìs½äAµöÄ?£égóÆ|]îS4îìÃþ¿&áÎkÙ)öÉgæ¾õ©d¤¢Eqðúæ=¬Hf`iü_cØöü^DÜ6ÑÐõ§Y·ï\rXdÄNNGÜfv%FçÆ^óú,LÜeS¯Y`é=æ³ëG5û³á)ªMÓzJ¼~l6NÆsÙ9N©ÂÍeÖTÉ&gæl9.R>©?=²»+)¢;L6MS9ÍMGÍ÷7M¡¸¥)2&æäÚ|K}Ó¤ôMÎÀ¶Ëe9wk;ncÜ`§hS9ða¡£\'ç0s-\'KýëxzÖ{WL=S¾oS7RÅ¥åæ\'´]¤Ñ8NçÖY1)w8¼Þ(úG¸I<NøQ*BÈh{TòÇ©»¼qð0ð|NÖ£m0DÔÐÌÈÌL1ÿÛuK¿¨æòv§J)ÖïºR?u%I0ïxOcÉÈ}RÅ&«.=DÄ»PºãRTÑ,¼»k.îe*d¦4ÝÓ\0Ãce0²;NPØÐBø¶ÑÜÀ>®¢î8©Î&ESFCYâüeÞI³5%O¾l¢Ïäå;¦q-9Îââ´ïZãÁJË>ÙÅäàÑ2RNcÂå)Gd³GÙ=5ZTF96\ZhÆ©f÷ÚiúsxcÂfuâCÒhÆ	ùP2Q\ZR$HÄHÄZ$ H(ÑdKw:<MNÈÞ/I2OLÕ£IÀAif²]Y>ôçy¾x;Ô´ØôÎMË´jÖ*C|åQdÎn®íYñ¦É°Ôá)ß¦XoR{ÒhæQðzf­ÎÉ\'x´L&Í¾aÛ0ý%;sâ¼äwL£yJwªN3t´¤ÕøJ0ó\'µàô|CÊ0QP}ÜN$\nºÿì@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 210, NULL, NULL, 'dN7E1611733239', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:40:39', '2021-01-27 01:40:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(28, 31, 'BZh91AY&SY¾£	\0_P\0Xø;Kü¿ÿÿú`¿}\n\0**QTJ9¦&\0\0\0\0\0	4ÄÀ``\0\00æ\0L\0L\0`\0&Ó\0		\0L\0ÁDHÊySc!©& dñ\Z)ä& T@QhÓIèDÉµ4hL4Òè@Üþoò¥?%ZBXÕäR¼JâpYÅ»@þØ®ï£Áy\rRò]Êë®³óei:2Éô²Î÷ä£s\r5jtjÑfÎ¬0³2³v¯ø³4áªôX¼¼Ñàõ|³N\Z:8J¶]_¡»[Ø§ÝCænõ>®ÝÌ5pÎ2û¹XoAç\n|Í§æi>·Ôõ)IÕÙG¥gç½÷´4{ÝVQO­å¥*4Xè¨óTG)%¤g+LÑ\\èºÛSU×RÏSÅö½>§Ö²ü­îR$âT\Z²°¥««²òu©¥E*R*NÌ·4ZYªJg+ÐåihT&Åi*Ùì¸gGÀåÃz©rR#påuåuæì¤Í*QðZ(MVY\nP¤­TÑv­ÝÎö\Z0¡hÕhX=/laeÜ5eRRv®»+}­Û>E6 Ø¤Y³fTì§¡¤áàÃ\ráeH2ÙuÛ²~Ì±Ûe¦¥&»)rÆcChiÉ»vâÙ§3aØÙ¤YÙ¤wÓ{F3ªi7e)»°Ñ ¦í¯56L0®Ö2Ôe0L5hÂ]Òì0²ã\r\Z²É4l(atÃQc3\nÌºj4bnL¾È~rCÚT6Bê¤ *¢¨[YZ#ð´X¥²ÒÊ(bY*0Kl(d,\réRÂ ÁBËD,©\n\"RRv]º»t´ÜI\'á*UÑu°u¦í4be¢æ&íÔô.ô)³,Õ¯\r²Ä¨9j´ä£´Y±»´Y¢¬ºÍÖjÊË,*3Rûµ_UX¦X®Ý»uÚNQ³\\8gdÁË3YhËFEâs¯Éì6=ç;ävÞðS¬õ£¥Ô?ÎF%x\\NSÒá­Ä=ÆE#ú(ô©2¡J)DÑªÎ²ÒbxOÔ\\ó`vì\Z4Ä¸Ó¤7?7¹òñÖ7xÏ|KÏL2:<ì©)âN®§øjø)ì:JÆZJò7f$<*ÁÖ}§Iá8wõú´äwJl\'*JE*G\'sû©àõIËõ¶éÚxMlØ¢8	ï3°ãæPÒÑ\'¹e5SW±ïa®åM&©cUÛ·<\\MÔ¤pR`8MçÄº|ë=3¡I³bÌ§ÆÎÇ¥³ú¡Np¦q1ÖÃ\"Ìaslf6õbk=¥Ã´å=ë¦ÙÞò©£ÐX§µyy1>qv³Tî·æPÝ°xaä?a£Õé!W àv¡¤,ÐÝE(T÷OËIwï*x16>ç;Nó6K4v>­cðluDü^3Ì¨¢)ÃGg¢ºË$ÃÉç=®óÊX¤ÕeÏq1.Ô.¤î\\Ô5e^]Êm.ñfTÊl//f¶`l6)êl2ÐïRÌ-\rÓ¬¡÷NQÕì\'/q\n²:¼Çssr1 Ç9ØÀ2;MeÇ©äs#N©Ù±OÒyO¥w¤Ò]sá;Ü´F(ªNÉK<ÒÍ]ÓÂzXn´*:â91À¤°XhË&44¦{)ÅÚh=æã Ò\0|1Ö)Ð0b\"F Æ*PA!@,£\"K>Ç\'i ã(L\rbò>y³V³¸Y¥ItbbYdýÞG[ÎcÍä¥¡Üù\'GµlÚ*CÒ-(¢É¤âqwÌÏiºn6;¥<¡ÀR¾±q5ò9æÞ&Ð)ÆÚ:àÚæ<Øn8ÚWÈÚXn¾.ñu<ÕÓ¬æZRpÂIFãø¾/yôQéê>e\'þ.äp¡!}G*', 'Cash On Delivery', 'shipto', 'Azampur', '4', 1540, NULL, NULL, 'lxJf1611745822', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 05:10:22', '2021-01-27 05:10:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '132', NULL, 0, NULL, NULL),
(29, 31, 'BZh91AY&SYèUÇ¢\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U¤\0(ET*D(¨æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD L§©M4ÓG©\Z!£Òz&F\n h&¦¦jzS¤4ò2âF\"Fýâ-­î\'\ZØ2?gÀ¹ó^>î²ØhDél8Ê)u×O&·bë¦µ×u6§½e%)D¤YE¥?ÆP|561,¡0NÌç&Ff%¨ýÊ#­¦³kÈIÁAìáàÙ³a§ÁÃKb;8lÆèSÙö°w:péN´á\r Ç/svènáÃNîÁ¡áÐÀ Ðä<Äúë­J¦)K&éªN$¡l¢Í­k¢ÇÒ\'Éfi»RÆ¯+Å§4Ôîs>3¦qÎG&öÉI´§õMªxì;ªE-d¤R,²Ï[ët<G{R\Z(JQARD`EQÿàAmKz$ø(Yò<aÒí8¹ó),2YdþÊNï±Ø×{ñ{;Ù2Qå`S½½ë1\'ýYy5¦¥:)Âb£µÅ1bdK¦NV$Å(ìçµ8±\Z&ò¦ÇRÄÒQ0D^Êg¦Á¢·i=v÷ve7íY¶0¡e	lKHfªeÑ5,	ßSwg¦áÑ°(ý3`Æ¶r®Ú²Êm)(cBéiiPä\\¡ç%\n\Z ¸Ð%#7;8wKÙÁ£.Ñe)I±£YSrêIÄÁY#fMÞ!Ë\rØ9\"Â7»ÃKd !bQ!±³gp»wÒ,dàØàìr9º2¥ÉDà-±x ¯fÉÂpzO0eÈG£ÔvÏdF­ÍÛ¸»£-QnðýÜ{8ià.Y¥Z¥æ¹y»dô`Þ\\Å59Á¦\0>»5v]á÷Nü\Z´2´©¼ÂhÐ±¸±acqbEËÆl¤Ý(»\'¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0©|ê??Aè£!\Z\ZP»d(>È´H¦`¶\np±åÃa¸Ä!1	\Z\"°\"¢¡zZÀQ)hÙ1$`#¸w½=ãAÕ(8UöéÌ\r9·÷MÃÃvÛ´i×-ÆÁ\\´C.IO#»fÃ»-Ãaîs¦rÃÁFÏlðä0áááËïvÎÇ&8Ù\rÝr6¹TV¹s&;VOøñ.û;n»åï<S½gÔñ}fRo¤Éñx6»§¶Î#Æ	÷=×}¥#Ù¡ô¯þÝÎc1ÛËèÂ-Ðÿ¸so\\ûCgQRá÷§¼ãðÁô!\"a[o-ítdÉ=j4?b§àÝ1ÁîY\'Íý,ï?Ê¢K(§$ýKîÂe\r³óÔTLÞ\'ê}ÇaçðÈ±ºO,.Zy|ù.u\'&ò£$á#Îé\\v;s&&©ùªvÇRn]ßâcò>Ç3î`cÎró¢jdIÑ>ÂÂs?#Cé6NFäªJ,O¤Ìïn*iÓSÙK©BÒJKÑÎu#\\Ö:&f§ â9Lçér^k/5/,g£ð65Ü®Ç*b`©SÖR^yfrÒ¦ltìü-Ýn6(hÈX*Åsb°n¹ïs¶åJ&Ô©R¡&Øk=	rÄä)¬Öe:ß5¥áFÔKËcIÀÂp/´£Öob«14ò}FÅÌ¹ÛáxcÏ³ÐS)Ù:>3æTönwMÍñ<L¼5NóÌäqÊMd£Ñ.p?uæÕ=%KÏ£ØiÂT>ôPö¯È(§ÂìD`°`Ð{£	$£¸ïs#Üó±dâsÈôLÎçxì\rÝÀÜn¸b<»¸vVáñ\rF3è4ky{qÔ0J÷³§Èn~L(B\n}Þ{OKÏ8²ÉCIiÞ³# Jù÷°4VÄ,QÞ¼Í&îT(^m.ÆrÏJúÏÅ7C3ÉyùaymÊ\'uÔ±52(ÎG8ãåñ in!bc$Àø3qÃ[¤ý\'XÚqAîCT÷Ä;ä,ÎUû_´.üHeÉÔÒI¤é%ç|Þâ<Æi8Ï¬òß$¥§°é)òy¾T¢PÐ¹dÐß?§¥¾jR¢;dä&õJCëªsÄàdfóÂÇIiªp:MÛ?³â¤B=&Ã0)\rÀ°¢hy*tXÐîÏªyæsTíR£ëSÚ, Iô°)BD D\"F+ ªH ÄH$[p©å <íÃâ­\\Ë8uM&äÅåæÄkI21--çN7ÓªT°c%JÓ°Ù5ËÈØji4QuIhâ).305Þy%¦)ç&Ð§Ú¦ãÖSèGA8G¦=-Çèð¾&ìJJ÷ÍGa®lG,Mj#ÔÆC8g!i¶q-8Ì]&2>&N©ÐyÏKF#c9©FÎ\npR^TÂT%¨¼¹VÁ|!OAÓJ}A¨_Å¶H|E!àü½3ê(T¡¦,Y?1w$S	\\z ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'QxIt1611749529', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:12:09', '2021-01-27 06:12:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(30, 31, 'BZh91AY&SYèUÇ¢\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U¤\0(ET*D(¨æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD L§©M4ÓG©\Z!£Òz&F\n h&¦¦jzS¤4ò2âF\"Fýâ-­î\'\ZØ2?gÀ¹ó^>î²ØhDél8Ê)u×O&·bë¦µ×u6§½e%)D¤YE¥?ÆP|561,¡0NÌç&Ff%¨ýÊ#­¦³kÈIÁAìáàÙ³a§ÁÃKb;8lÆèSÙö°w:péN´á\r Ç/svènáÃNîÁ¡áÐÀ Ðä<Äúë­J¦)K&éªN$¡l¢Í­k¢ÇÒ\'Éfi»RÆ¯+Å§4Ôîs>3¦qÎG&öÉI´§õMªxì;ªE-d¤R,²Ï[ët<G{R\Z(JQARD`EQÿàAmKz$ø(Yò<aÒí8¹ó),2YdþÊNï±Ø×{ñ{;Ù2Qå`S½½ë1\'ýYy5¦¥:)Âb£µÅ1bdK¦NV$Å(ìçµ8±\Z&ò¦ÇRÄÒQ0D^Êg¦Á¢·i=v÷ve7íY¶0¡e	lKHfªeÑ5,	ßSwg¦áÑ°(ý3`Æ¶r®Ú²Êm)(cBéiiPä\\¡ç%\n\Z ¸Ð%#7;8wKÙÁ£.Ñe)I±£YSrêIÄÁY#fMÞ!Ë\rØ9\"Â7»ÃKd !bQ!±³gp»wÒ,dàØàìr9º2¥ÉDà-±x ¯fÉÂpzO0eÈG£ÔvÏdF­ÍÛ¸»£-QnðýÜ{8ià.Y¥Z¥æ¹y»dô`Þ\\Å59Á¦\0>»5v]á÷Nü\Z´2´©¼ÂhÐ±¸±acqbEËÆl¤Ý(»\'¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0©|ê??Aè£!\Z\ZP»d(>È´H¦`¶\np±åÃa¸Ä!1	\Z\"°\"¢¡zZÀQ)hÙ1$`#¸w½=ãAÕ(8UöéÌ\r9·÷MÃÃvÛ´i×-ÆÁ\\´C.IO#»fÃ»-Ãaîs¦rÃÁFÏlðä0áááËïvÎÇ&8Ù\rÝr6¹TV¹s&;VOøñ.û;n»åï<S½gÔñ}fRo¤Éñx6»§¶Î#Æ	÷=×}¥#Ù¡ô¯þÝÎc1ÛËèÂ-Ðÿ¸so\\ûCgQRá÷§¼ãðÁô!\"a[o-ítdÉ=j4?b§àÝ1ÁîY\'Íý,ï?Ê¢K(§$ýKîÂe\r³óÔTLÞ\'ê}ÇaçðÈ±ºO,.Zy|ù.u\'&ò£$á#Îé\\v;s&&©ùªvÇRn]ßâcò>Ç3î`cÎró¢jdIÑ>ÂÂs?#Cé6NFäªJ,O¤Ìïn*iÓSÙK©BÒJKÑÎu#\\Ö:&f§ â9Lçér^k/5/,g£ð65Ü®Ç*b`©SÖR^yfrÒ¦ltìü-Ýn6(hÈX*Åsb°n¹ïs¶åJ&Ô©R¡&Øk=	rÄä)¬Öe:ß5¥áFÔKËcIÀÂp/´£Öob«14ò}FÅÌ¹ÛáxcÏ³ÐS)Ù:>3æTönwMÍñ<L¼5NóÌäqÊMd£Ñ.p?uæÕ=%KÏ£ØiÂT>ôPö¯È(§ÂìD`°`Ð{£	$£¸ïs#Üó±dâsÈôLÎçxì\rÝÀÜn¸b<»¸vVáñ\rF3è4ky{qÔ0J÷³§Èn~L(B\n}Þ{OKÏ8²ÉCIiÞ³# Jù÷°4VÄ,QÞ¼Í&îT(^m.ÆrÏJúÏÅ7C3ÉyùaymÊ\'uÔ±52(ÎG8ãåñ in!bc$Àø3qÃ[¤ý\'XÚqAîCT÷Ä;ä,ÎUû_´.üHeÉÔÒI¤é%ç|Þâ<Æi8Ï¬òß$¥§°é)òy¾T¢PÐ¹dÐß?§¥¾jR¢;dä&õJCëªsÄàdfóÂÇIiªp:MÛ?³â¤B=&Ã0)\rÀ°¢hy*tXÐîÏªyæsTíR£ëSÚ, Iô°)BD D\"F+ ªH ÄH$[p©å <íÃâ­\\Ë8uM&äÅåæÄkI21--çN7ÓªT°c%JÓ°Ù5ËÈØji4QuIhâ).305Þy%¦)ç&Ð§Ú¦ãÖSèGA8G¦=-Çèð¾&ìJJ÷ÍGa®lG,Mj#ÔÆC8g!i¶q-8Ì]&2>&N©ÐyÏKF#c9©FÎ\npR^TÂT%¨¼¹VÁ|!OAÓJ}A¨_Å¶H|E!àü½3ê(T¡¦,Y?1w$S	\\z ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'BaAN1611749703', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:15:03', '2021-01-27 06:15:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(31, 31, 'BZh91AY&SY;8x\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU¤\0*(QT¡R\n(s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"HM$ô2\Zz#ÔL \Z£M4RD@&&L§¦¡Ôõ0¦ÔSe2\\HÄHÐ«ò<Éµ½Èà¶Åð.|×û,¶d\"t¶åºë\'Í[É±uÓZÍëºSÞ²ÂÅIJ¢R,¢ÉIRôp(>HÐ\'Ffs#3Ô~ÅÖÓYµä$Ë` ÷	Ëpó6lØió8ilGg\rÝ\nz~ÖãgN1íÓ!´åðnÝ\rÜ8iÝÓ÷4<:\Z OÕÖ¥]JRÉ¾i\'¡t¢ÍÍ¼W-ETÒ~çÉfiÝ©cWcÉ§DÔâç|gTá9\\»Û%&ÒÎ=V©â_´íw)µJJT²Ë>Ç3ìt<^wö¤4P£\0¤\"À\"£ÿ,Ú$õI\'â,¡gÈñ?¡ÒÈúNTæ.¤²PÅeìRs¨çæzÝw¾ÿjç&J:ðo`{G	ÿfÞMi©NÊ`âzXÌS&D¸ºdó1ü¦|pÄ_\0\'ÂP/ãXØÙAéí¤0aì£-ÚcAèP\\ðvã3..¼ïrÌ5°`Ás(H³RZD³4¤´EPÜàQÊ]X\"À0iX%7v{nËl¸×,Ú²Êm)(aY.\'*ËMu(ÁIb	ÀR1³s§m¨òhÁK´YJRlhÖTÜ¤ºr%0FïÎPØ1i¤Ýí²ËG\0`NH0Øbèð\Z[!Ò`1\r6vK·}ÆNMG#ÁsFB¢!ì¶\"é³Âp~sÐràäìöOI[=7nâî´}%¼CããÑsábjQ5ª^kK¹k¢Ì[ÌG)sci$£.Í]y}&Á£6C*a/06(Ô\\±¨È¸Ü\\´3e&éEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0µ~àO¼O|t@Q\r(]²tZ$HÓALF0[8XÀü\0Xl7#f!#@VdC4S/KP`A!0-10Dc7óÛâ4ÒPOpAØYòiÀÙÃËpñtØ<Ø´ù8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00´7v\n4Îx»g!Ü¹pð7`ììrhá³ÀÝÙ§#k×.dÂR¡gjÉþÞBåÞ¾Û®ù{ÏQõ°1{ÖyÍO\'Ôe&úL©°ý´e=ÖrPL¹÷Þ]önsÅôîsß6á[¡þ×qæÞ(¹öÎ¢¥ÃðNó9I©þÂB(Pni»Z?[ &IìQ¡úe?éÿ§Þ²OùYëàDó¿È)·jy9C§gØ&o#ô>ãÒwÄødXÝ\'¢-;|ù.u\'&ò£$ã#½Ò¸ô;s&&©ùªvÇ¤Ü»ÃÈÆ\'ö=ngÜÀÆ)ó¢jdIÑ=eç(cCÌt¾s±`P¾Qÿ®Ö¯aÐ:\r1u(ZIRiz9Î¤kÇDÌÔúCÌg9$t·KóYy©yc85°p,{ÇÄ{Ã¸Á}\"|¬HA³êtÓ1ÓªwÌ&z%ÖK2.Zë¦J[Q¡ûÞ÷;i®T¢mJ*!²m³èK~G)Mf³)Öù­/\n6¤b^\\«\ZN&x¥Ã{Y¤?sé6.eÎÐPÜ0ápÃÓèlö%Ëñ>Ïù&ã ý[ÓsDüQã/\rSÀìrÊ8JMd£è8²ÌLT¢¡y¡ âuOÃ¥çðö¡ÚqÁ|dö\n)ñ», tVãÂuÌ½ÞÆuQÏ#èÏipÝÑà\rÆë!ÛË»en>ðÐdÀÚ1ÀÐY­Øå{Û¡TsOA¶g9Z_úRÊ(ªRGô1Úx»çÖY(i-2`<Ödc4	Pß?Ø<¡À¡}ÊÉÍ¥ØÏ4ñ_Yù310èf`Y/?2ìÜêÁõ(àØË`¦8aç?2s&EdqQF´±1`|¸C[¤ÿÎ¬	î9 Âw!ªv!à$)`\\6r¬8þ¡wÖ\\¡¤IÓ78ËÏ	½Èv¤Xà}G .ù%-=§IO±<%J%\rM\róùx·ÍPÊTGl¤Þ±iPèbý5NxLÝð±ÒZjNdÂ6ÏÝ¬Â%Çõ©aNËÉÀÃáHàXäC°±b§Eéúg|Îy¥NÕ*§ºCí$ú¡\0Å\"\"	C#U$JbE\nU%Î³Ó6K<¼Æ#­dË8uM&äÕåæÄkI21--ç¢N77ÓªT°c%JÓÒlåäl54I(º¤4rEÊ\Zï<òÓï&Ð§Ú¦ãÜ´ëGA8G¶=[ìî¾Fì5ïI®l|ÕWÖÆC8g!i¶q-8ºLd|MS ó½0ÏKF#c9©FÎ*qR^TÂT%Ø¼¹Vø\nBÃ¶úB.h¿+¥ÄYB§âã>)IRJ%¥\nºñÿÅÜN$Î%Þ\0', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'clkT1611750051', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:20:51', '2021-01-27 06:20:51', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(32, 31, 'BZh91AY&SY;8x\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU¤\0*(QT¡R\n(s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"HM$ô2\Zz#ÔL \Z£M4RD@&&L§¦¡Ôõ0¦ÔSe2\\HÄHÐ«ò<Éµ½Èà¶Åð.|×û,¶d\"t¶åºë\'Í[É±uÓZÍëºSÞ²ÂÅIJ¢R,¢ÉIRôp(>HÐ\'Ffs#3Ô~ÅÖÓYµä$Ë` ÷	Ëpó6lØió8ilGg\rÝ\nz~ÖãgN1íÓ!´åðnÝ\rÜ8iÝÓ÷4<:\Z OÕÖ¥]JRÉ¾i\'¡t¢ÍÍ¼W-ETÒ~çÉfiÝ©cWcÉ§DÔâç|gTá9\\»Û%&ÒÎ=V©â_´íw)µJJT²Ë>Ç3ìt<^wö¤4P£\0¤\"À\"£ÿ,Ú$õI\'â,¡gÈñ?¡ÒÈúNTæ.¤²PÅeìRs¨çæzÝw¾ÿjç&J:ðo`{G	ÿfÞMi©NÊ`âzXÌS&D¸ºdó1ü¦|pÄ_\0\'ÂP/ãXØÙAéí¤0aì£-ÚcAèP\\ðvã3..¼ïrÌ5°`Ás(H³RZD³4¤´EPÜàQÊ]X\"À0iX%7v{nËl¸×,Ú²Êm)(aY.\'*ËMu(ÁIb	ÀR1³s§m¨òhÁK´YJRlhÖTÜ¤ºr%0FïÎPØ1i¤Ýí²ËG\0`NH0Øbèð\Z[!Ò`1\r6vK·}ÆNMG#ÁsFB¢!ì¶\"é³Âp~sÐràäìöOI[=7nâî´}%¼CããÑsábjQ5ª^kK¹k¢Ì[ÌG)sci$£.Í]y}&Á£6C*a/06(Ô\\±¨È¸Ü\\´3e&éEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0µ~àO¼O|t@Q\r(]²tZ$HÓALF0[8XÀü\0Xl7#f!#@VdC4S/KP`A!0-10Dc7óÛâ4ÒPOpAØYòiÀÙÃËpñtØ<Ø´ù8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00´7v\n4Îx»g!Ü¹pð7`ììrhá³ÀÝÙ§#k×.dÂR¡gjÉþÞBåÞ¾Û®ù{ÏQõ°1{ÖyÍO\'Ôe&úL©°ý´e=ÖrPL¹÷Þ]önsÅôîsß6á[¡þ×qæÞ(¹öÎ¢¥ÃðNó9I©þÂB(Pni»Z?[ &IìQ¡úe?éÿ§Þ²OùYëàDó¿È)·jy9C§gØ&o#ô>ãÒwÄødXÝ\'¢-;|ù.u\'&ò£$ã#½Ò¸ô;s&&©ùªvÇ¤Ü»ÃÈÆ\'ö=ngÜÀÆ)ó¢jdIÑ=eç(cCÌt¾s±`P¾Qÿ®Ö¯aÐ:\r1u(ZIRiz9Î¤kÇDÌÔúCÌg9$t·KóYy©yc85°p,{ÇÄ{Ã¸Á}\"|¬HA³êtÓ1ÓªwÌ&z%ÖK2.Zë¦J[Q¡ûÞ÷;i®T¢mJ*!²m³èK~G)Mf³)Öù­/\n6¤b^\\«\ZN&x¥Ã{Y¤?sé6.eÎÐPÜ0ápÃÓèlö%Ëñ>Ïù&ã ý[ÓsDüQã/\rSÀìrÊ8JMd£è8²ÌLT¢¡y¡ âuOÃ¥çðö¡ÚqÁ|dö\n)ñ», tVãÂuÌ½ÞÆuQÏ#èÏipÝÑà\rÆë!ÛË»en>ðÐdÀÚ1ÀÐY­Øå{Û¡TsOA¶g9Z_úRÊ(ªRGô1Úx»çÖY(i-2`<Ödc4	Pß?Ø<¡À¡}ÊÉÍ¥ØÏ4ñ_Yù310èf`Y/?2ìÜêÁõ(àØË`¦8aç?2s&EdqQF´±1`|¸C[¤ÿÎ¬	î9 Âw!ªv!à$)`\\6r¬8þ¡wÖ\\¡¤IÓ78ËÏ	½Èv¤Xà}G .ù%-=§IO±<%J%\rM\róùx·ÍPÊTGl¤Þ±iPèbý5NxLÝð±ÒZjNdÂ6ÏÝ¬Â%Çõ©aNËÉÀÃáHàXäC°±b§Eéúg|Îy¥NÕ*§ºCí$ú¡\0Å\"\"	C#U$JbE\nU%Î³Ó6K<¼Æ#­dË8uM&äÕåæÄkI21--ç¢N77ÓªT°c%JÓÒlåäl54I(º¤4rEÊ\Zï<òÓï&Ð§Ú¦ãÜ´ëGA8G¶=[ìî¾Fì5ïI®l|ÕWÖÆC8g!i¶q-8ºLd|MS ó½0ÏKF#c9©FÎ*qR^TÂT%Ø¼¹Vø\nBÃ¶úB.h¿+¥ÄYB§âã>)IRJ%¥\nºñÿÅÜN$Î%Þ\0', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, '9sQh1611750200', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:23:20', '2021-01-27 06:23:20', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(33, 31, 'BZh91AY&SYìl³\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U\n$(\n\0PP(R¢£0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`ba@BjOHÓ Ó 24\03Q4\n i0&ÓSF©ú§èOPÚIµ?)²§éK\Z÷~§Å>-­î\'\ZØ2?FgÈ¹õ^>Gð²ØÒØq;ÔRë®,VMobë¦µ×u6§Áe%)D¤YE¥?àã(>LHÐ\'>fs#3Ô×¥k7y	2Ø(=ÂtÜ=6l4ú8ilG\r]\n|?K³9tÇ·np®\\¾MÛ¡ÃÃO­¡åÐÀ Ðä=±ü¾«uÙVbbR²oIÆ0ïY¹·å¨±ÈOäú,Í;õ,jìb|ZsÍNgÈåuN9ÈäÞÙ)6þ±êµO\"ýÇs½H¥¬RR¥Yø¹_äèq·µ!¢¥%HED!Gí ¯¹\'à$Y$gÌYBÏ¡äÑÒ¯¡ê8¹ºÉCOÅIÌ£ø;\Zï}þÕÏLu0)âÞÀõ9ÿ«3o&´Ô§Kå+µÁ1bdK¦O3bOC9îN,F¥I¼©±Ò±\'tLTØÙAðöÒÖ^Ë\ZpÓ\Zl=Ð¹äwbÌ¸ºRRfè{a­(CRDY©-\"YRZ\"¨oqrDÖ`OH4¬»{nËrl!a®YµeÚp²Xc¥ÒÄäYi®¥(rlGÄ^ð4	HÆî8{q{¸4b¥Ú,¥)63k7).¤IFÄpFïÊRX1i áí²ÓG `N0Øbèò\Z[!Ò`1\r¦;K·~0Ác\'FÎOCä¹Ó£!@ÑÈHvNBÛ\"$ñ/1Öõ0Ç¥ÛÆÓlÛ:Ûá»wte£æ-æød8ÎZy6ylÝ±ë(æ1°¸dvzÁ³i$Ým]x}Ã	`ÀQCJKÌ&¦¢ÆÒÅÄÄÀ±F¢åMFEÆâå¤±)7J.ÁÅîXn&\nÙå·T45iðá³NAÜ»l\Z¡vâÀÓgQË@á¡H]ÓèE!Ml\rÜºpàC.ÁÝ²t\rìÀY\r!,¸ia¥=tHNú£FJ)¤¥¶Bcì@D\Zh)Æ`§°,6BÍÚBFÀ!bèj21D `Z\"6b`ÆnèooÐwJA=;agÔÒp8pärÜ0å°z`9rrÓêpàp]»FrôÜlPéËAÐÄ:`ôäô<6l<9rÙ6ðè6apÀtÀ/J;\n4Î¹»g!Þ¹rò7`íÙÑ£Î6îÚÅðU®\\É¥BÎåý¾\"åßu×}>¤ûØ¾:\rOÔe&úL7¥°þ´e=Öq&±ï¼»ò)ÝçÿøïrNìfnwû]Ãx¢çä:Í8åßD= vÿv¼B(Ppg0Íù9È2dµ\Z¹FSônÏø{ÖIõK<Oî¨¢Ê)É?Éi}Ò8L¡¶b^}åDÍñ?cØv>Y7IçËNÃá\'ÂbaIÁGI¼¨É8Hðt®;CÍ9STÿ\nÑÆTxüLbcïr½bYÏ1Iã9æ¦Dóð,\'1Cû\Zc¤Ù9©(²N>Ó3ÆI¸©¤MLe.¥I*Pm/G1ÔsXçóÎ)-Òä¼Ö^j^XÎ\rGèlk¼Î×10JIÔ)SÖR^yæré¾ûw\\\r\Z2\n±aàÙ\nØp`=ï´×*Q6¥JÙ6ÃYèK~§!Mf³)Öú­/\n6¤b^\\«\ZNx¥³{Y¤?î6.eÌÐR`bV\nåLe16Îiy¹íE9õ*MÇ9û·;ææúÊ^\Z§ØäqÊMd£Ñ.p?EBóCAÀêEKÏ³ÚqÂT?4QóÖ#Âj9\"RJ$°*fu%*IGyã:æG½àÆuQÍ#Ñ39ËÀÁÃ£È×C·§Õ¸@ú16gØh,ÖìrB>\rÇPÁ)`Àõ¾èxtûG\'ýaDSäÏ<î<ë,40(k21	¨oIElBÅ+ÌÐÂ`P¾åHâæÒìgy/¬ýYCt30,à£ÌnQ<ë¬Ö¥a©¹Fr¦2ìÆNTÈ²L\n3Ö¢&2L75ºOó:=ÇNò\0=¥pÛaÈ|/ù¿*~ÆM\'LÜá/<f÷Øfcõp»è´ö%>Æñ(4.Y47Ïéäß5C)QÒrzÅ¥CöÕ9¢p23xBÇIiªp:MÛ?³Ûz\Zp^.øÌ#a Ré*&abÅN{\Zó9÷O	óJÊUOt¢R\n*½òHP©±`DBA(b$b²\n¤\"Ò¢(P©.qÎÙ²XtKÉ1\":ÐõÌ³Y¤ÒhnIi!íQ.^lF±#ÒÐïyäásyß:¥K2SGðO-è6pð¬RX ¤¸ÌÀ×yÑ-1Obi\r	ª~Hv)O¼ rl|[È!õÅix4ðÓ\\Ù8<ñ5ª½pÎBÓl:âZqºLd|ÍSèvÃ<a,uæ¥\Z:Vo8)ÁIyS	h-EåÊ°xà)\n{ÚSæ¸ZO)lù(CÒý¼§Ý)*P±dÿâîH§\n­`', 'Cash On Delivery', 'shipto', 'Azampur', '4', 608.8, NULL, NULL, 'iXbI1611752467', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'tsgh', 'gfdg', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 07:01:07', '2021-01-27 07:01:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(34, 31, 'BZh91AY&SYê>\0\nÕßPXø?þ¿ÿÿú`\n>$B \0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFMMÒ©04Ò\0\ZJd4hh5OI!äÔ0ÓDijzmà]½~+õY/£#*|*þçÿéoÚn564Äø\'Eð\rZI6\n¼ XNÇòlÙ°Óú8hN®1º÷>gN«\r7CPc·½»t8pá§OêÐôt0h49óûá\\n¸õvÄ<	æÃ§Ò~§îÒê,/á½o[Wê¼-Ñs\\ëÑÛyÌ÷R©üzE2~ËÌ¹Wì¼Ë½u,,#uºVW«¹j_æ¥µzEÐà\Zl-äáþÃqpEïÿù!N3ËAñDÛ¹§MlÆ¬¼+±h¼k{[|ÓäÕ«V¼Zµj×	N+oZ¬¥Óu.¥ÖµKÄÁE`-ÞÍÃÀXè`ò<¡èr6\ZD¸ÁÑÐ\Z¤cfç¸\rÆ#EbØ1e06ðÙàr£q|c)¥ÀbiÛgo¼9zÇ/pÅ.7h.»\ZA¸A];p¸3Ðaò;mÛîÛ6lÝÊr9´­8rÝìUI\"ö8¡Ð1$8lÙÓê1pÀD16lÝØ`ä2ddí552`ÜhdØn6â\nBÃÍÕÝë!·GmÛ7väéË¶Á¡Ún,\r6u¸tºÝ9nFÙ¦ÀÝË§2ì\rÛ!w@Ðà.Ìtm¶Ú²6_d~ô^õ§]¨10B44¡vÈP¤´1\Zh)Æ\0X)ÂÆ\r\räÄ$hR\næ4¡zP¡!BM´ÄÀ0ùÀ;ß§­(<(\"~!:¶{6C0váÈå¸x:l±ìön6líÓ®-ÆÁ\\´.Zy¶¹lxt7°±1áÐÓtÜ9xxxrä:=ì¼èãh`ní§#mXÃp´6Ú1`e½Ì¿oyí=osÀ~ózó½çäâ}Ê_SçÖtôâ·YüWI¶</&ÇÉñq.£ï·ÓÚ¾7LuÆûï°¼±²Ä,,,I¶Ýfì!ÔüeÙkÃ¹~&.6-Ö±¼ûÏú|O!ÂºcC7aí¯m°Ö4:Ó©q1l\\ÖÀ÷:÷­«²r®ÄÒ_Ù},£mÌavÝ¥v^¥tëyÐu.bè³Wñm<µr·ÉÀã`b¬X%þWbpð¨ä<áÞ/{ÞÐ4ì,ÓÈxÀ`X`¿ÈOµ  Ùò}¦é\'ÛnðÐÈ\\`äv;Ò³ pÆÐ±bÄlGr¢Â÷\'àmX¡¥¡­.s2r=fèýGß\Zu!}ÇÜúÞ¢YËì>¸~oè{ª7ò>èú!wÜ¯®±ËÚÊÂóÚ\Z\Zå¥¸Ü9OüÖF¦-/¥×=è|ëè¢{yÛ,#fõôIÎz¯E´Òí.rÁàµ<¤ä2z.RÐÒµ±\\nëeº­L3CÒùòè¨üÞ(ó,XXºîÓ¶é]Aî²²0¦·mæ=O=Î]¦Vû6èAp³°1­Ø\r8Vä6ix­\r¾552´4Í»&SHÒÉKI¥r­¦K`Ù\'¤41d¾·ÿÎ³%ò9¤ë¼Èæ»*å+ëao<÷Üiz#ÚÄ`ûNJ¹/}×fóßí6Ñ íGÉbøCØÐ»¬X-¦EýNkÐ÷9­­ñºÄî¢çz%Ìazc°Í¾è;­¾Ì±fÀÁ²Íi\Zn®óÜv2bðäÜy®_êûn;iÀÜ/Ã@À¤HV,X@J,b©c3bL	VIÀî¸ÝjÙuIÚÜo·[Tf&mé¥Z³7:48×ÅÙ±r/!ÎôlèÛµ<zÐA@d:K>³NâÔ[Hä-óÅãÃQ¾\\lGq|ñ&ë¡a{¯!¾árÒxË4k\ZÆmÑãm]·ú1x®³ðh§ä¼KQ²¸¬X¼v\"ÉÌp2b7ÚÇ´ÂÖúßv<µWî#Õê»á,X,Ø	IÿÅÜN$ º¤@', 'Cash On Delivery', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'j6Hk1611752537', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 07:02:17', '2021-01-27 07:02:17', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(35, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'qYeB1611810114', 'Pending', 'sad@fsda.com', 'user4', 'Bangladesh', '546546546546', 'sad', 'fsdaf', '1230', 'cvZXC', 'Bangladesh', NULL, '3q4324', NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 23:01:54', '2021-01-27 23:01:54', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601245427ad66', 0, NULL, NULL),
(36, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '9yxq1611810163', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 23:02:43', '2021-01-27 23:02:43', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60124573092f1', 0, NULL, NULL),
(37, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'aZs71611814686', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '32432', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:18:06', '2021-01-28 00:18:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012571eceb7a', 0, NULL, NULL),
(38, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'koTN1611814878', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:21:18', '2021-01-28 00:21:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601257dedc728', 0, NULL, NULL),
(39, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '32Ys1611814965', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:22:45', '2021-01-28 00:22:45', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258359f8f9', 0, NULL, NULL),
(40, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'xtwq1611815037', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:23:57', '2021-01-28 00:23:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012587ce78d5', 0, NULL, NULL),
(41, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '4xWJ1611815106', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:07', '2021-01-28 00:25:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258c2966ac', 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(42, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'EeQ11611815122', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:22', '2021-01-28 00:25:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258d237ee0', 0, NULL, NULL),
(43, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'JWPW1611815138', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:38', '2021-01-28 00:25:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258e1f2ceb', 0, NULL, NULL),
(44, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'gIqX1611815169', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:26:09', '2021-01-28 00:26:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012590155dd2', 0, NULL, NULL),
(45, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'zO0M1611815231', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:27:11', '2021-01-28 00:27:11', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012593f59d8a', 0, NULL, NULL),
(46, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'fiDV1611815279', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:27:59', '2021-01-28 00:27:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012596f204fd', 0, NULL, NULL),
(47, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'ycbO1611815311', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:28:31', '2021-01-28 00:28:31', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012598f5a48b', 0, NULL, NULL),
(48, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'h2451611815350', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:29:10', '2021-01-28 00:29:10', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259b63e9d5', 0, NULL, NULL),
(49, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'LhN11611815400', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:00', '2021-01-28 00:30:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259e832a78', 0, NULL, NULL),
(50, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'ayFk1611815415', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:15', '2021-01-28 00:30:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259f7684be', 0, NULL, NULL),
(51, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '0y4e1611815439', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:39', '2021-01-28 00:30:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a0fa7577', 0, NULL, NULL),
(52, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'JZWM1611815447', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:47', '2021-01-28 00:30:47', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a17bee1e', 0, NULL, NULL),
(53, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'HWWA1611815459', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:59', '2021-01-28 00:30:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a22eb3ec', 0, NULL, NULL),
(54, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '0KCK1611815614', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:33:34', '2021-01-28 00:33:34', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125abe74b04', 0, NULL, NULL),
(55, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'EKWR1611815626', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:33:46', '2021-01-28 00:33:46', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125acaacc40', 0, NULL, NULL),
(56, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'Csrn1611815913', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-01-28 00:38:33', '2021-01-28 04:29:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125be98c11a', 0, NULL, NULL),
(57, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 499.4, NULL, NULL, 'Bp9f1611816304', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'Dhaka', '32432', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'declined', '2021-01-28 00:45:04', '2021-01-28 05:17:43', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125d706da17', 0, NULL, NULL),
(58, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 579.4, NULL, NULL, 'VT6v1611816433', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'on delivery', '2021-01-28 00:47:13', '2021-01-30 22:58:25', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125df1ba13d', 0, NULL, NULL),
(59, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 329.7, NULL, NULL, 'rEFB1611816584', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'on delivery', '2021-01-28 00:49:44', '2021-01-28 05:01:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125e88cec51', 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(60, 31, 'BZh91AY&SY\'HoJ\0_P\0Xø;ËþD¿ÿÿú`ß}\n\0(¤	PPG4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$2hMSÚSôÙCÒzQ£OSiÞRBF\"I¦z&iOHô#Ôz@Écù?)ù¬x$%Éy ï!ÂÇxYÅ»@ø±^í¿+Èf¼´øÊîÿK®ºÏÑÒrdÉJ`¼¥¯ÍFÆxhÌäÑÌ#6®l02d³fÕcv(±yy½é÷L192rm8s-6k-\Z:\Z¿ÛÜÙ®,Sð¿{ÜÝàèð·k\r\ry~t\"«¡0SÀç6\'½õ½*RstQèYì\\§øddñrZ}e=ì_S,éÇjòÑëTG)%ÔJ-$9¸ZiEqë^®ºbïKÔêäÏë{Ö_ 	6YÜÝ¢¤l©H©,ÃiÍÉS£E7Äµ#¥¢h£%\n©¢jX©S°l³uüÞpá®íÏr£.JR¤v,³±çbË¶dìRLåE¢Õe¥\nMVh»Wkì(Z4Z!F#RÓÒý3fá«%IJEÚ®ºìßÅ»W­OCi¬¥ÊE6aÑOB3ÚÂ\"T»E×jÌ³þ¯Ý«2\rò!bÆFlv4ÐÓví1Å³N.ÉèÇm1Z1QÙSfa1M¶^hja4]¥3dÐdK&\Z3a.Õt»,¸É£VLAC¦\ZL+)tÑ3fÄÙ2Lô<\ráóCt.ªBB#\n([RERZYP¥Ë2TÊYEGz©b^ÐÅ$¼J%(¥%!(]h!J)D)E:NnÝ¹ZHn$ã*UÉu0U5dÁ5ÌM)Ü»¹MXa£MÙ¸hÄ©\Z-8(áGÖjlÂæÌÖf£%Y³v¬Ù,²h¨µgMÚ­ª¬SNnÙ²ìç\rÌ(ÕÁ»v5LhQnZ#Òy{kúãÌë249>ðS°ûQÀëx×¤È®óæmt;ùHmz[Øûsê:&¯£%&J¢LÌJ>õïkØn.l`{æ\r\Zb\\iâ§Þüôu\'Ù£{Ú¦\rÆÏ\"î\rL0O;*JzÍÌø4}ªx¥Gã-µCÙG£^åû\ZÎS¾nì«#þ3hìÕÎTÇÞ§{Ó\'Á¬ó\'|ÍÑÑaf²ë*dßc¸©r[à²ZK)ôÊ.êóYMÑâö°Ób¦s\r±¢í¦óe)¥&íÓiñ!ÞíyÝ9fÅN%&ÒÇÎÙÄxN¦lcÆÃ2F³qsbØÐs¯äý%GsÒÁý_Bé²vºÎÍÜX§±yu»Ö\\G[Ê~E\rØXô°üõ\rgÎR¡$ók<aB¤,ÒÙE(TóµÃ9wQÚTïbwÏÙ6×`¼¼aQÃv#§Î^p}æ§4OÅêEEïu³twCæ²ÅI0êòÇiÖX¤ÑeÏ2b] ]IØ¹¡*hÉ^]Âk.õ22íÚ6£\Z`l6)ílBØd$öÈ¼¥¡²s>Ssxz7EMFÓÉð{vJ?¡»ú;y?9á3iÎtGÈ§ë:Ï©w¤Î]søN×Ñ#áëåINùfnç¹¤¤ &lp),\Z3Í\rKÅÞÓL>êqyÍGYÐbtç!ØÆ!é¤Jd¢4¤H4)¢\n¡%¤J¨«Îyâá¼¡08Åæër11uB4d¶î%O©ÎóòuRÐÉóRÊnyNnjÙ´TdçQdÎo7»ÁfSÌÀÊl\rNÉOe0Ã\'ÔO#G2¹å5nìÔxDÂa,Ñ<af¹Ödý%:+âr¦ !b#NÇKLµ¡ø<>IÝô>)IJhâîH§\né\ré@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 235, NULL, NULL, 'wERD1611816938', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'completed', '2021-01-28 00:55:38', '2021-01-28 05:17:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125fea51f62', 0, NULL, NULL),
(61, 31, 'BZh91AY&SY hÃ\0£ß@\0Pø+ô¿ÿÿúPîÆ©¬±h AÆ@\0@\0\0\0\0J&&ª4È\0\0\0\0\0	5\nMSO&¡µ4Ó@ÐÐ\0z\0Àh\0\0h\0\0\0\0		¢4\nx	¤É©ê4h\r¢ièÔHHþÍ %ô©ñ}èçCêzzIs\r¶q!ØåqÃíTîÊ\rØj¦\"ã2\ZTJ±HBl\Znéx^~(e2©ÑbæÊbbj8ú,kî ÀÁ7Þ $A¨¹¸¡ÔKD»ZMÍ!wITb(6Ë ÓCÀ³¢«\0ªeFK\r\nAÓ3LÄÁ\r\0TUmyPP`ÓÚÁ©Ô£±ChñQv]Ã[(¡ÀPË»¼¢ÉTÒfU¥)B°HÔUÌ×èXÄR¹$.XøBUPiªÂ©á3m{^I,â)-+Xt¢<ÕÑRÌYqj(;\nÊ®J:¬­jªªöKæ½ap\"ÀPÕ\0üBµAL\\£\"U,j8!ÁPaFC(À6=·«Y9ÂBºµ4	âfz\Zä9g«\Z ÆÉ¶\')0Ã¡0ô±wbõ¡u½ËTf[ÕìËjÊ×d:ö/\"Ô¼\nóAéÌqÎ\n%ìû5w7#¼~g;ñ³< Íj¢&Íkq\0 Ãôx·ç<§à£k®J8gYñýS%±I5çRMÁ´Ð:ûÕ¨©½h\Zùâ3ÜÀÒXÄÒ_Êö±Áë.d&ÀÖ¸l¡ÐÌÖ[<à\"äÃ*³1.3þïù»´êëÃ5äØ`¤ÐWRZËø>ÆfÓ\"£LÈRLÎÄgRLÌzFk/M)¤&Ü=Çóõ\Zõ$îk3Gmj\";Ü¸s8°Â;Å5àv=`µÎHc<1Ø÷÷ØbÝ&ãÞ\\¿@I*e0® ÏbOpN¤/#¡Äöò/mìÍ SC¯-$X	kEBÕG4)¡q\'FUb¨PIÀÃ¸©EH´Pª^ñHàY-£¹¥mè-Ñ\Zfßr{,l4ËÖ=±õfg©A¨àðýN$u\Zm øeT¨ÖÜrF\'5´xh6©²×äÅ eaLC!AÔi`o lA¿oWFÏÐùà{ \"ú #\"0(H²H²$,í¿·¡]©rWÀ¾ÀÒB¸J(P\\uAtâà*ÝÎfxÎîFFj2ÆFS¾*Pº¸`´*P,òKðÃ\rC?_Sît2Ó¨ì¹%EE®HJ~Ëy\00q7Á¢\r\r}L*½WÌñîBÈè~`Ø¡rE8P hÃ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 295, NULL, NULL, 'dzga1611826761', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'completed', '2021-01-28 03:39:21', '2021-01-28 05:17:16', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60128649a7e10', 0, NULL, NULL),
(62, 31, 'BZh91AY&SYè{ôé\0Ã_P\0Xø?ëý¿ÿÿú`\n_\0ÐD¨	P* !Ì	 ÂdÉ#	i¦F&\0AÉ&FÓLL0&&	&L&	¦`LM&LLM2100MÒe2ÐÒQêxPòPõ1¨ÓM4õ\0*H Å\Zjl\ZjÔzjOÞ§©ø°M8úûßøru]wò~+¿ÃäÊ®ñCÜ¤»\rî5S¹bÊ,´±RË)K?$qG÷nÙNÆbëÈ¥©_¬6léy´ÄÌ©z>R¤Þ¼¦Øªh¼´ùJî*z]uÙZ]G6Wa)ØüTn]ZÛM®ÈÒË£&ì²³v¬{W85b7bbjæïóbaÍ¼èoi³YhºÉÅÔÝÍù²ß-góõ;ÞOê×sìQ»éÆ¹¾_tòyµZSTu{òúß6ÕAJ)¥D%\"\"DQJHàº=9Ý¤Sóy¾§æýoG­JNï>Þýíú{SÚºõÚ?C.Õ?û;\rÏÖ¥¥,´µð¥yÃ#ã§ÚcvÒ=ÇâR\'ÒÒ¨r\Z\\nQËzÕuÔô]Úòaw¢þØ²õR¢)£û%©]¥Ðê©H©4a»£*Z¾ÕÆ8UÂr^-4eR,%¤ªSy\\YÆ¦ëîÞÉ½ò§díY%)R9,³UÎS_RË*%47ZmK	ºË!J¬ÂíbÓe2â¡ºíiª­³2\nºÓ/nò}é>¥Ë´muIJ2ÅaûîËÔÕ_ÅØÝM&m.Ñ`ÝH»fv©ªË0ÖTS\r]«ï#×!bÅÍM9´ÐÓ¡»Lt6i»¡Å°äÙ (ºi°£ID`]ÈÄ¸ÆÌ®Ëf¢´l¼ÔÙ0Â*j»ZhËQÂY0Õ£	IK.²ã\r\Z²É4l(atÃQc3\nÌºj4¦S+;óT>`þÐá8(º©!\n¤hªåZBSDB4b\rË(ªU4ÂÉT¹1iJ©AÄ0!0S\"RRöa$ë:8:õ.éi!¤$ü%#¢Ë©£JnÑF\'V«Îà¦ë½J]v82âàÄ¢8µZq*TqiÆíÎ®pj³UYu6h¦VMTàÙUn4¶ìÍÜ84i8¸Q³gÙ0aªÍë-Ùhà¼ÅÕRYä³î3,XÝ÷Qçàö¸Ãkî;äzCûN.Ã¿f[NêÔfWÀô·wk2/ì\\:2áar?yõ¹0£7n£¸eI\nQH\r	FFp(6\\_k²¸¡|Ïø£À<Bfùqý¦¤<SêCË@x¶u§Ù£ïNòîgxÍL	cÀÎ­O¨³ëû&!û²ÉG½Ñ÷¢ÁÒR?Ý´ç=s¢ÈçOYïGd¦èå.ä¤²Y©ûÞÉ7nÍgé=sG2w9..ÞS®TÕ?£Úø½Ïa¡G¹ÒYOö]àÕe5SVÏ&\ZîT»IKÚ4lØÚeJFÅ)EÉ³dÖ|K©ÿSöNB§]±fS¼ÍÒÇ¡³ ¦âs	61Íd.Bî£|±¼¶qµö&&ñÂrÌsàô]2÷Î÷ENJhõ)þÔÌÑè A±¡Èu¼9Cáö°æÑÖ¥BIæÚ{¡B¤,w¶R	èói?7/Ð©ÜOÖ}Rç¤å/7jæ11Tv8·e²1)?újhÌä|ÍÏ\'®$ür¢ê±ÜñZ»^µHú)e>JZIö<SÑÔò)6Ysë&%ÚÔ×6%OÐÙ¤K±)\'4´Þ]¥ÓtÄÄ±t½kyCÚºÊL-(ºÃ</ÄºkZÄ^µ,ÂÁG$§tí\\|çD]äMñ9Cu¢Óf7õy§J>ùCwôqìzØz0é;æ¡iÖ{Qó0]öÎéùL=êJR¼ºÇêÞ\'&¨ÊÔrxËJL<çl9Ì70ÚÑ­Úñ~ø©ÊKë3L*8ÊMt¤o<%¥¥;m7M^c#Ïv©ðÁ\"$düÐ0b\"F\"FTD¢(È>KÊfPE¹¾.àqÎÍZÎCEÅR%Òí¤ñeFIeèð:Þr\'zJSã8¸.N&ÍÛÏZaAS¬´¤£àºm9NWw¬Òu038§±ÎSÂM¡ÉÔ°aöÒÒzÛ¨¢µ>ç7âäç>ðBÑ.a(,à³ö\Z=SB~2ïdûßÚ8e:²höªwº:¨]Kª%¥KÝS¾%#g2ù±.vÒ\\Òä%Qè7ÏyºN¤dHAB2ÅÿrE8Pè{ôé', 'Cash On Delivery', 'shipto', 'Azampur', '5', 708, NULL, NULL, 'b3aZ1611835736', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'ghj', '47654', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 06:08:56', '2021-01-28 06:08:56', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012a9575287f', 0, NULL, NULL),
(63, 31, 'BZh91AY&SYÁ©=\0,_P\0Xø?¿ü¿ÿÿú`_=Æ\0Ó@­cAÉ&FÓLLS@Q=Qè\0&OSA¦cA¤`æÄÐa2dÉÁ4Ó#\0C\0RR@\0\0\0\0\0\0\0\0æÄÐa2dÉÁ4Ó#\0C\0TÉ4Äh	4Ó$òMôiêRäI\Zåù?&Öç;zØ=ÏÙ|OÑe» m\rÏºë\'ìø5|W]5Y¹s0À:\nQ@Äb(HÄöÜ@>%7(p4IÔ¾J,ÉB!703¡ÌTsÛ½Â Y¢³ïòFÅa-éßËj©õw6ÀçHï£!Î+èÚÜ×zëpiòdðÅ&}_[ÑÍ»c:>n¯B»Îõ\"²RYg\'KÖâóºíÍ¢)B¥H(T¥I¥)\'%ÇÔH±$à|E,öNÖÞwQË=*t(èâô;\ZÞþ­YàöË5>´Þ§Sy÷\\ÀÄ»£/cwKº-#UäM5´a±ªhí¡JR^$TYKHª3R2(ÎÑdµógÆ(g:Th\\Ê­X,ÁPÌØ²Z++´­iòl\\/\nìÁFö;£(Ij«·Ö«a¢ªS5L\"U\n¢¦L¯`³3GCVM5ÍQLVÅÌ«d©\r¶¼Û­ÑDXd	µ©)Ák$6cËdBH0-j&;YÑ,iC2?·8É¨iu1<hqÁÏD#$QÈ2ÁmÂ&`rqæÐù.ËSÌ2Ó##u¦v\\²gÅP×A0ÓrTCa®ÔjjB<<Ãs·Ð!,Ðå¥|@Æ5E0P´£ýÇÅ³£\"\"ÄY@VA-ÿ©Ì\0PÀ÷oZû¯\"c$~jn¥øÚdÃ87åw[Y³þ5E.co$	ÞÜÜ[£qnj Õj\Z ZØFÖûëQvUg7b7Üg&[nN$´7pAþ ïvhû;¤éwIfÝs=¤)¹\\Üô34Üþr×ä¶övþK5ç> ËðUÃñk}g2lü)Õ1©1¥*K°g³zdÉéSGî©}Øü_ú¾k=Ïº)Kò×Ý3)Í1^z7âü³ô>q?ÞK7Néu¼ùïÅ»¦N0õ¹<GS«¥³ñWà©gÓýØGÜó/V<ú:sdeÛf¦ÒMÕüfòªÒml`ÛK©E¢©-æ6l:ñdñnpgºm·/ªû³9¹£¤ó×Ô¥úóµgYììÎÑbÍüKH2$ÆÆ[G`ú\njÕÞýV¼§21^ê³^suäæSÒçb«1i4S,Å\'ÕZV4Å·¢üÅáoRÏÓõTø6»æÖo*¼­ôÝYi,ï»ÿË0dñ¢¥ôhu»(º­ü=IÜp©í|g¤1JE\nëlTSÁåË\'±âÇ¹:aå2u.yÛWlÍ¸ÀÂcQÍ®ìù32bé1;dª)NM2ágÊU(|{{ÞA¸6BÀÿ2\Z\ZÄ©dBûU\rÒóìz=ê}Ø°¦l^{a|×QØºÍT³±Ôg+\Zu¿v3¥ÉÉ©¥,É0?Û7	«±îÀö·Ì<gxçªZSfRSWÑû°óÌ²T§ÞÒ4å¹ÆÿF÷$Y½é;¾J[Úä§Éséª(lScææÊcRxI¼¥Jfªy¢ofóÎµgÀêKt~&XþeØF(!ºQÊS\rJ4¥RhîYg]¬Ñã«Ë/5xÔû\'ú)I@\"ñ%AF100©$µIE$ªpjñÛaÙxÇéìg;Úi£rÑ>\n.¾ÓQdÅkNÞnyr«&5Z<\Zéxjli¤]P¦{¨¥ÌØ5¿]±0lÿÏµnØÍ²9«U#ûgÆ¤àÒ¯~Ã½®Ýï)ÊFªg­Ìâ[vÅ¸!ù´[[¾a\"æÆ9)­fÓyBÀä9*GbhvvëîÇØM_±Þ£Ä\nª{Ö×PRR\rOáw$S	\0,\ZÐ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 218.8, NULL, NULL, '24ZF1611835873', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-01-28 06:11:13', '2021-01-30 22:58:05', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012a9e1c649a', 0, NULL, NULL),
(64, 31, 'BZh91AY&SY{ýÔ\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0H$Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"\"Hñ)êiú¡èM4Ðõ\0=M=M=#@$ @$Ó5\'1Li¤õ4ÈÑé¤Úµ.ÃûE©aß%Ò=â{Ã÷ñ£GWXÜcòî·!Ú~¥äÜÁú.ºå&KIÅ%0p~ª62ÃFgÖaµraÙ%4~ËZh¯Ò¥`ÄÁÅªs);ËIÐì4~ÏÝgAGûv½o[þ÷\'bý^2Þ zô Z|ò>ÓÚyÊ(3¡cµcÄ¸ø©ÈûNK&¢¤È;>Ã1¤âT÷*#¹(ÛÖQ£6õ0²<ÇiÜq3{_jËîa©\"v*!ÂR&ô¨52,ÎgBèoJ))\'F\Zº19)¥¦&ãrQÞ]-$ÁFDÔ´ÒU*]ÌÎll±©e\réKJK©\Z¬³VË¦ÍLºR}IE¢Ñe¥\nLh»GÀ¹yH´hZ\rTFYFO%ñ;K\Z4T¡®»%=íÌÓ)EjE°Ãe\'BÆ¥HÙ¡emy!e:îi¡§¹ÃêÛN]]-´4Mä0$«B0°ÕØhÌSVmW\Z¦EMiLÙ4&ÉØJ²ë.0Í£&DÍ¨¡Ó\r¦ºh:\ZwG\'¬|U°÷/\"@HDaABà±¥aáÑRÚ2=«T¤`0 @¨Q!bR¥:NnÝ¹ZHm\"$øÊíJ£V19³\\ÄÙ²Æ®Íæöâò¤ìÖÊÔof³y³3fºd¹M0¡êlÐ³5hÄÞÙ³flææã\n5odÜÜËTÈÃUàØ·BáóÁî|çÜu½çèQ«ºÔùÙý\'!íØÑo«Í;ûpÿ¯Í¸söÊ}Ç­gæ¿Éd¤¢E\Z\\?ê9<X~lä504üÏâ÷¾ÇÊìÚ;äî2àmä¼C{Q\0í\'\'#ï3;£sá/qõ,LÜe6$;I`é=Æ³óMÎ#ÈþÏpÕ&é½IH¥HÞ?ºM\'k9ê§dÍÉÉaf²ë*d3ô6Ê)?=»Þ+)¢;ÞL6MS9ÍMGÉ÷·M¡¸¥)2&æäÚ|}ó¤ó»:ì\r¶[)Ô³ÈÐ»ý\rºzBÁLêcÉÄ;L½\'Y©lÐæy_iîbq<æyôÅÓLâë7©±bJòóØ.Òh\'{ì,»ÚN/÷\n>qõ\'IÖJ²\ZZJSÔô³uB<<3¹§´éÛL7\Z5ææô»ù\Zhrx¢gY¹¡Ù#øX²T¯	êy9D±IªËI1.Ô.¤â¸Ô4d/.àË»ÙJ&£\r·F´À0ØÙL,Ó¤4hEó)l)\rÃÁñxÁÞu²4d5/Ê]ä3RTü&ÈÙøº,ñ~nS¾gÓï\'þ)ûÎ³ì\\x)C9rçÝ8¼\Z&JIÌpxC|£Å(íhã;gªB®³6lÆµjüM4Ã:¼Íç¤ù\rNÒÈ}(x`UÓ%¡`Å\"DDE BX1FD·³ÌÞv&N#:$ú&­\ZN²K5èÄÄ²ÉóuNwçªRDäÜ»F­b¤7ÎQiELæéºîåOÊl\rNaÂk\rêO¬|é&e÷Ñ5npI:DÂa,Ñ:ÂÌ;¦¬§{Í>É>\'yÊ7§UAiÆn°ùFÒ{>ñGÑè>tdHAB2ÿrE8P{ýÔ', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'WVU31612070130', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:15:30', '2021-01-30 23:15:30', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60163cf248dca', 0, NULL, NULL),
(65, 31, 'BZh91AY&SY\"èN\0\nÕßPXø?þ¿ÿÿú`\n>¤B¡R\0(	\0G4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFÑ\0\Z`AÁ2`$RO6¡d\0\r\0\0i JhÐ#LâP0C\0Fêzmà]Ø¿û,h£#*~5Õú~ëõ·í7\Z\Zb~f	Ñ~!«I!ÁAù	Ñ¸þÍ6\Z\r	ÞpáÐ§©ó°x:p=ç.\Zn Ço¤Ýº8pÓÃ§ÐÐôt0h49úù=(ª¸Ü#qï;C¬bÎìÑÓç=òÒê,/ÆóÝ«ö]×5Ñq¹×£¶ï3ðR©ä«ÄS\'ð½KÚ¼RÂÂ9×[¥eyZ»Ö¥ú0ïj[WÇ{WM¤jàY^Õ¢´0]¶ËæZ«cÐ±|Lê¡N×ä·/SN.Ùt]Ð´]Ë{Öù§¹«V­yZµj×ÆÓa+b.E±e.¥ÔºÖòX1¬¾ÝÛÚÜ:ÈåN`tAÂ.0tA2Æ)Ù¹Ã£nc±¢F#¶So\ráØáFÃùF\r,4SJ1Ä0Ó¦Î åê^F)q»AuØÒ\rÂ\néÛÃû|¤|¦\Z6íFwm6nÃÌr9´­8rÝì öhÐèÀ¶léôÍ¸`\"Ë6µ·9;MML7\Z6!`;á`¤(p¼0lÝX\rÞöX0pÜ!·lÝÛc§.Ûh]¸°4ÙÔráÐ8BèRtåºSfw.8Ë°`7lÝC»º6ÛmNHÙ/?/<ö§]pE\r(]²)Ö-`Æ\nb1\np±CCa÷1	\Z¹(^(`ÁEÓB-10c= çºn9¢ä¢OÔÂm.«HÛ½ÃËpëtÙ.;cÚö·6vé×Gã`.ZFË-<\rÛ\\¶C\r<:ØXðèiËM:n¼<<9rvÞNHôq´07vÓµÉ	-À(ÙAáGÒ8{ó{Öo^cyù9OµKå{ó|gI^UºÏäõ:M±éôzv=ÏÍÊ]GÜÿn^ãÖ¾K7LuÆß¹áCDÃDË¦\0 Pyì»-oÜÂï_ËÅºÖ2yqø¯æzNÓ\Z»¦¾a¬hu§Rå1l\\l9îuö-«²s®ÀÒ_BùYFÛÝtZÙzÖEÒy-çAÖp¸[JÿnCÂ¯PGh\0ä±v\'%È<ÖÓá9Î£mÏsÙ,ÛÍ,Ø6Bdaà±aúÂ~|¡Ïsâiéî|mÞÚÇ`ùÏ¨è1ÁpX±b6#Â9Éh°¾Ã¤ó\r«44´1u¥ÎfNCÆhnÙ|K\'\"É&³°æ¼Ö·ÒÛznÓýß¹ê^uªúò´oÚrØ¶ÝVV¡¡©äZ[Ãô_ÑdjbÒùQÆõG°°¼^úù(§¼î³Kzù$Áàzïi¥Ü\\åÍjyä2xÜÅ¡¥kb¹nëeº­LóCi{ytT~D|.»¸ámºWP}VVFÖî¾Öð¹Ë¸ÊÀßfÐ¼Q©¥¼ZX6½7[*Í¡£ÔÂÏs6ÂáC`µ: ÜÒ4²bÒÁÒi\\ËiØ6Ið,µÂ?ó¬É{2uß8ÝsKu°·ÚixÇ%µÁõr_e×fð¿G9Üm£\'AÜrÅùØÐ»ìX-¦Eý7êq¶·Æëy:ã.&Ã]m÷AØz-möeùð\rkHÐ³pà`Ìeyã¸É#Aây}çÆéöøü(þ@@ütPIL\nDEbÅD¡ÇK	``Lb´:N}ËvY«eÕ\'r6Gy¾Ýn9,·¦jjfÌ{Ý±Ñ¡ÊwÝ¶,ÈÅzN{¥¹¾ßX¥ÊsÖL,,§eaÞZaÉ¾s»e°Ôo-ï/~$Ýt,/ªôî1ß\'ifcXÍº;eWa­þ^¬ûÚ)ù/BÔl®Um²q81ícé0µ¾dy]UG©üõúï(a¤ÿÅÜN$º&', 'Online Payment', 'shipto', 'Azampur', '3', 275, NULL, NULL, 'gsBa1612070558', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'DSFADS', NULL, NULL, 'pending', '2021-01-30 23:22:38', '2021-01-30 23:22:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60163e9e74ad1', 0, NULL, NULL),
(66, 31, 'BZh91AY&SY N¾\0´ß@\0ø;ô¿ïÿúPÝ\0µØ4è%MQA¡ÓLÑé1\0LM5(\r\0\0\0\0\0\0$¡ÓF\0Ð\Z\r\Z\0\0\0\r\0\0\0\0	ÑM¤ÐÆ¢e=e1\Ziêh2b@RÀ¦ÒsÃJ=l|ÞÖ5!× Ä|~D]ÖH=HIÎaÿÝBÊ(1mì¥\r0h^,á\\h»¥DZ§âÆS*Ô<ÈèÜW\rM¾Eö<N®+8q)Ä@69D.q\'C½àHm:ÁYx¿2¤Y\r	\ZEØ¨\r41e,P±h´\"¤\"ëj_ =¡`ö\06ÅFXRF\"SÚÁ©M.P%4i*½åI`Ø©I­Mã(\"©¢Öµ32aKe«3jØ©MÞÂ¦¯¶á@AB¹$.Xò$jYIM.±tZfÅîW¦$Â;¤´­âBÒÈówFdvv¼Ä	|²<`d½Ü¤cGö6A	\0U!éM2¨¨6h¹6Ê,D¸2RE\"ÀbP\\RFlv0ë(\0â(¦XÌðCæÙª\\ÌfÀïbg;IQix44KFF)&-`xe.T³T³\"ËÌUa®eêaÊ§Î¨&2°ÄÑLÃAh Ypæ¥\nü0e/I,Òê­ïf¨«U6¯\Z\n\rÔùøB\rè Ô:Ïqî=?sìh¸)#æ¼êQIÖF©¯° oÞ[Ø>kp×È§AkAX\Z352ÀgúØÙ%6\r\rÈ=]ÓS¤¶ºÀFDÃ*µ0d3ñ  !þC\'³hwwãÚóW(ÅâHUEU¡1£ìú4MC\"E3#)ÜBXâIt\\ï@ÍãÃî©§\ntÛaóú\rAà×fÆ}NÚ¨6CÀ&åÃ¹Ä¬c¯¼íUá¼n¤ 3|ÎÓÕä.p=FDÚ¨Öx½nüuêÌì>%ë¼?é¹qÂÑÚ)\"ÀKZXT-TDì\'®£*²T(A$ÅàaBTÀåÉZB©w\nGÂÞ0ø\Z-ü§R3CL½CPÁ·Ø§jÎãLÁî\ZÏßÂ6ÔâU(57ÔñÈeH=¦Õ*5ÐÐÃ#eÒ;ft)¾ÃØÑ2F3\ná¥s¬ç-<9Û¹ó~°> Æ&üÙ	,c¬\"AVAZ	6¢N3m8Â+Á.bªñ2½ÎFA(¡B!rÖÃ·«y±72É4ÍÊ2ÆfsÙ(d²­Å(FmzÒû°¾£<¼Íi¸õ.A	QQFK#ÖyÊýÇ·\0a\n§Áª6ñ(À_(ë.Ö1å9ÎdÉA¨ñw$S	\nëé', 'Online Payment', 'shipto', 'Azampur', '1', 380, NULL, NULL, '5OW61612070739', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:25:39', '2021-01-30 23:25:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '66', '60163f5362d4f', 0, NULL, NULL),
(67, 31, 'BZh91AY&SYÝQp\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0HD(Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"Iê2?M)êz©Ó@õ£ÔÓÔ=CFRB5\ZhSÔÚzõ4ÈÑé£.ÃûE\"Ã¾$K%¤{Ä÷íâýÎ\\:1¸Ö+å;ÜÜ´ü%KÉ¹ô]uË>l&JÂYÁòQ±v,Ù,Â4jäÃ	³&K6hú2\\ÜÐ¢ÒéÖxzê©Ì¤îg-\'QÖhú?eBøí{ß©Ñ½ÉÁÄØ¿{Â[ÀY(3Ðp>gØzO1EØê,v¬zK#É¨£ÈÈ;=Æc%IÄ©ö*#¹(ÛÖÑ}3oY£%±ØvÌÎã£ëy,¾l0Ã$NS­doJS\"ÁÈäuCzTQIH©:jêbrVjÉFt²Lh©4MKI-%Ra³&åö6k5,¤©MéBä¥*F«,Õ²é³S$.jQh¡4Yd)B%.ÑâTà\\É¿yd^5-Ê#FÌ£&<YNÓ2Ó\ZÑRR¢ë.ÉO{c4È¢5\"Ì°æ£yÊÆiÔXÖ©¥ÌY¼äSlÐhpc«M\r=Î4Ç-´èåÜØêÛCA¢l@³A<(ÂjÂSVa£1MYµ^hja4]¥3dÐdK&\Z3a(RË¬¸Ã66¢L42VRé¢fÍ²d<ç$;O¤1)DR4.\ZV(!QME-£D  °ud)[¡JF0AQJ;©¥\Z *Sªsusur´Ý\"$øÊíM(Õ36\'66S­ÖÁuÙ³ÜÞÜ^T½ÓyCzìÖo6asfl×L)³C3R^³BìÖY£{fÍ³(Õ½ss-S#\rVg¥1¡!©nK\Z#Ì<¹ôqÔ÷xzÌ¼dCê6YÈylh·Áçr§NÜ?ëónæ½²qíYÅ9¦oÁGrd¤)(¢fÑgdA¥Ãù>³Åñ±Q±\Z~Wñ{ßkØêFÚ:Þäî4p6ò^Ùä Brr>ó3¸á*7>ðû©bfã(ó¹±!Üõ©öÎs²nqÖGîÎx#¦©7MêJE*FñøÒlÙ;YÏdå:ænNK5YS$¡°æT¹HóÉü)í]Þô¬¦hïx°Ù5Læ\n3557ÞÝ6Râ¤Èið.Q÷Î©æÁ:mÊrYåh^~vÜz¦Å¥q;%7)êe8;XqìÞIú¾£¬ó=ç¬ö®z§I½LÝkzÑvDá;ßYdÄ¥ÞDâðO´QüÇ¸I<ZN¢TÐ÷$©ã=S9wAÄSÈÃÉó¼\Z{N-´ÁcS&DÃ{nÉwð5Ñ>.äð)E;&æn£®Gî±d©&ØñrybU¢b]¨]IÅq©*hÉ^]Á5w²2MS\ZnÓ\0Ãce0²<[NÜÐ\ZùÔ¶âÀ?×axÁØêT\"©£!¬ô¿)wlÍISð#gâêYé~nS¾gÓï\'þ)ûNë\\x)C9rçÝ8¼\\\Z&TU#àðùG¥(íhã;g¥!éêÇBÆÀ£]XÐÐv°L¿M0é§/3cÔy¤9úðÁ>ª¦J#BÁDA	\Z °boW±ÖP\"ö ów2ôB4o[\Z(}çbs¼ß<´ØôNMË´jÖ*C|åQdÎn®îYôSdØjpé¦XoR{üÒ4s(÷½Vç	â ´L&Í¤,ÃºaòïvOòOÞa2å)ÑPZq¥¥&¬\'¾Q=¯0¸QôúOa¢ ÿÅÜN$7Te\\\0', 'Online Payment', 'shipto', 'Azampur', '6', 470, NULL, NULL, 'cm5S1612071438', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:37:18', '2021-01-30 23:37:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016420ece489', 0, NULL, NULL),
(68, 31, 'BZh91AY&SY\\®[2\0ßP\0Xø?[ü¿ïÿú`=¾\0,@\09M0	À\0L\0\0*iIè¨\Z\0\0\0Ðh\0æ4À&C\00L\0\0¦\04\024@\09M0	À\0L\0\0\" DÈ&\ZMSÔÓÒÔ§°H\\	Àê;ÄObé\0((}ýÏL¨Å%BFw:¥ABÌzª©<´Ö¥]iÿ7©­«Eñ¶YV±ý Îã º±ÁAË-F¸ØÚn/è=A®ÿýyiÃÂ½@ïÐ úÍ©ï<Î#¶Fòt Tiä¼Í²°¡P:ëí,#AqM¹ÁN¹Å©\rç¡ÄÐ·´ò È\073MÊi´ÜHLi¡u1º£³\"ã33L¢÷¡*¸Âá\09Êád]\\ÄÂ@mñÄ¬`ª	M{Ó!0M l\Z¤ZmÞhI\\ÆW!c|UW¨¢¡bÖ`ØM¦f¬¹UA\n´E+E Ê-¤bLÌÛyM\\ÍwÈB¹$.XÜI\n\n­!£K1X¢x¤ÒöbKT y»µnTP©{Q4DÌ-zÔVÀ0¤ª\\ ©GRUÕ­C%U_%õH\\ peI´Àp¡E¥\0ãe\nÕÁIiEÈ¥XCY@2¨!L$PCcÞn{w¬$,$\0~ãA¬ð:T­÷Y1±0ªïkØQWy.Þw!uH¨Ã :IR*Mç:±xw-aÁ¬®6qX²)-c/I÷4M¡ÍòNÀüÍåÑÄØUnû©Ð·Ì~óÆ6-U¿6u*´ªÓ­xÞ  (}fúzä|Ælw¢´üÏð~ÿC°ÍoRG#â¾(¤êÁÔÕ6í>EKA¬Ï¡(÷¡¶£;wPG/Y\0o=Æ\rÇQ¡ºö±Ü³60hl[ær²6=fÓm»`#Ã*àÈ7´>ïò<ûáÝß2XV(2Æ¡ò32l3j¢Ï5ô$gÈÞu\Zfbdp^vC<.½iDQCÍøÔÓ5	·NÃøþF¸eêzÊU<M{\rÜ gPün\\49û\n}â×¹|AæÎÄ11çLð=~6\'°5uPê=FD:¨ÖÌï[¢?ÜÖº\r3*î7Ò9ô=G~¡Ø@Ã!à*%­d0&^¨\'EyTeV\nI1xP09fòV\nRñÞ0ûßÚ-Q\Zeê;¾ä÷¬¬4Ï2ý7Çv§\"©A´ä/°ÿñÌíl*y|\r;Í.ªÒÚÎäÎ¢-¡Ôq§Có`f2°¥HFyÒ¹ÈÎÝÎð}?`cº n¤AFA%	$¦DjMægM¡à`ªº½Í#(¡B!s[`ÌéÍÀªÁÚkÜÆHÌÕ@Æ@XÌÎzâ§pP\n,AóEJ±¯jü0/¸gÇ´ÆzésJ.¹¢9ø>£èH±Ì Uf7ØÐA©X¢ø§½È_`~ÿ\"j¹\"(H.W-\0', 'Online Payment', 'shipto', 'Azampur', '1', 140, NULL, NULL, 'jmff1612071772', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'DSFADS', 'ten', '10', 'pending', '2021-01-30 23:42:52', '2021-01-30 23:42:52', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016435c788a6', 0, NULL, NULL),
(69, 31, 'BZh91AY&SY\\I0.\0\n×_PXø?þ¿ÿÿú`\n> @HA $¢BsFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"PQ\'´£Ð d\Z4Â\ZJH¦Oôjµl(yMÍLIé¤Úªn)ÄSw_É~+/Õh½\r)ð«ü/Ïû/ÒåÄè78mò0×À3Y$.Ô(Q7l?ËV­Fµ»A9Û·ad(ó>ÆÃVùp<î\\4l­Ý=¦ÍÙ¸]£³ÜÐwr0hHüòHfËc-.»¢;VGÀÒw.õÑ~¯ÙýÛ]åáz¯¡ô7~«Æë»®Ëµs[=¯L^j½Â?eò®µû/µy¯BÅí^zÒõ4·y-ËócÉ¹q]Ø»­£vå¥ö-±ë¸_RÝ\\]«/µu¡MCÃ@¬KäÃÃFíµcJlz£¬yÇÄxÍ¾òÅæ,X±h¤zëY%ºÒ]ë½zÉs°bX\'&ÎMà!ÇtÅºårÝiN&-ì9¥(lÜËwvöØti,4 <\r\nPÆ\0ic§f¨lèn£Q}£±V\Z(ÑF0Ã5tøG8ØpóÃfeÐÑÁréºÝõ!k½c\Z0HÀlé«V­~¸AÃ@ÅhÝÃgÁ¸ô Æ\0*á«W/Q$BcV·I£CGØnnhÃ ØÑÀè8Q±¨Òá]6-­êÂÞìãbÃt4Ýé³VÎ¸tÔ2:BÍ®cîAºBYËÈDaF­\Zg[·Ã `6jA¸Y\n¡0á°lÐ»äCúPzÆ\'Kqd¬±jjí£Jeúeie-Z5d²ÀØÕÂ±Ë®Ôf[)eé\ZX±de#|¶¶JÕee²Ã.ó¸í»®ÍQtÑ\'èb×¢Ú;°ìÝÀá°]ÃT°lìÇÉ°Õ«§.wxl5 pá p0<8hð;6j;8pÕµìäl6`8b#6r5pÑ£ÁÃ³³³»¸Ù§swo¤.6tÑÁ#[µ5#\0¡¢Ýw>ñô¾÷¨üg%í}nGôuö¥õ>:¾¼¿Ó©e§ î;:û.{ÏIÀ<ÎzÎ>0~B(ió°{]`ÁrÑøA¹ø]áocüL-:¬º-ãGüÏú~GÈs®øØÕà}Õ÷\\\rãcÒÔeÁvX^ í»Wò\\Wë2¹¿i²þ-#Øbñ»­Êð½ëBï<×#¸ôîÂîµWø¸-]f\\¤æuX2¬°:þtÝ#Õq>s´ônÛ¶ÑjämjÃWõ]%Ü°Ùb¼SáeæbÚõß3F9c­ï6vCH`,0p:ì?pÙqbÝÝ\rÒ5>`è£ÅdaÍ[£¢Úí5\'IÒltGê¾£¥hÎÃI;/mÀë½Uq*áì~ õ¾ÐÈzÃ÷~V¨Yï=ì:¬¸ÞK¶ØØÜó-® u»üÖæ[_ÅËYb÷>5ü(§¶äxËj%ü$ÃÚ{ïuÄÚñ.ÒÃ¶Ø;aá\rày¨UlÅáÝËw*Ø!ñ6:×î\\º£ózãæYbËÓxî7zôßihbÞ7Ì{ÞÛ´¼M,­[¹\\µÙl\\EÂ­[]qÈÚõÜ8G(ÜÜÒØÛWF-Í£kF[XwWZâh¸|á±ìsþzMîvIé¾dv^uÃ[ ï¿ Uð!³!Ê+³æ}6¯mù»O\Z;~ë/Èù­±yYaq6[/õ;/sïv\\\\£¢É<Þí{¥Øbùã«Üx»{©d}¸f-VÑ±jçÌÃQ¥ædºFõP2×é{Î_ë> A|(fjÃR`Ê²²°Ä0ÊM,VYT³jÉ0`±Þs<®«ÂÕ\\/D(áG+¢è:Ñª-\Z¹&ÕnnjÔ|^ÈîØê<¯eF;`vÚ¹4ébÚZ4ÌçµájàyâàtÇIrf^Ép7¥Õdy#ãt]Ëß|+ÖyIì-Q¼o\Zº#Ù-[¼\rïêeë½\'àÙOè½kqÂºY{,GaÌÑÊÞ>ã÷Ô;ÁòÔ|¯î#ßï¼áY`Q?ñw$S	Äà', 'Online Payment', 'shipto', 'Azampur', '4', 340, NULL, NULL, 'dztN1612078393', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:33:13', '2021-01-31 01:33:13', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60165d38c4ece', 0, NULL, NULL),
(70, 31, 'BZh91AY&SYû{ü\0¦_@\0ø+KôD¿ïÿúPy½ZÆ\0B0\Z\0\0\Z\0\0\0\0Q14E4=@\0Ð\0\0I©4ÈG¤\Z¨hÒd\r\0\0\r\0\0\0\0\" <ÑLb\ZêLHÀ$í\'ðøí:ìî;;0j,Èfñ!Ö:7â`5þ*; ã¾Dx½¹³B¤¦¥¦Bc3º^\"LªbÃXÀÓqLLMæÞFÄ\\w¥5°$AsªÚ\'9&2T¬mÁ£Ù¥àº!0¢CÒ2II¨dë\Z0Õ¯QÀe<Ð²¡PKÍé{*e\"!4RUV1	Q°Ux¼Âf#Ðô>è_	Z 	¥ÉJM¢µÍ¢Y/Å¥«qÈ%{K(@ËARå	!*¨2ª½S¼Í¸X³YÄRZV±!èã ³WEJ30=f VÀRU.T£©*êÖ¡ª¯_âBï\\`E ,U\0õ2QLbUÃ£ò±j	!t@¤(AGØøvðT×E!à(¦f¡­¡ÈZ¬^ë3XÂLX1ÐÆ´±wbõ¡U»+Q½^Y^.^÷j`:º]¥1h9gÂIëÖsgXÄ\".s¢äJgAÃQò¦\Z¨B¤J×Cß¾C>nôPjjúÉêd¸©#cæ¾u(¤ìFc©»¡¨86Z\r}JrÏuv°717bB>¶9£!à±2`Ó`oÜ8Ðâho-¦0Ê­Lr=}FOf°îïÛµ/©-£nâµÏSÐÜr2*4Ì$ÈàÂs!,Fu$º.wAéS>4Ð&Ûv×ÔZ×¡¦ÛÔ$X¦åÃ«	xNkî?³ì½É&Ð®Èc=ØLêxøXì°ñ0 ðÌ$F²Æõº(3È´\'zC`cãÌ½xÙ@§Nã¿a-E$X	k;\nªrZÛÚb$ºRLa\n¦,âJÐ° *KÀR8Kr =M.ÓTfzw©9¬l4ÌÖ?.1ß¸æU(7Ô~2;ÆeH>FyU*5 tGòbw®C¾g#²a>-¬)1Ìd(<ÍH å\\éî]6¼¯²Ì\"/JTdcF	IS\"	\"Ì	ÍÅæ¨gÄpª¾¹¡#\0P¡¹ï ëÍÀU¼ãv3sHÈÜ c ,de:ÅJ,ë1ì#&¿½_xÏÇ¡ZVÁ	QQEÖÈIöÝ @O¼f\"of41 jô_ñ/¤ÝÏ	ý¡S¼]ÉáBCíïò', 'Online Payment', 'shipto', 'Azampur', '2', 295, NULL, NULL, 'Ow3R1612078572', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:36:12', '2021-01-31 01:36:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '44', '60165deca8f1a', 0, NULL, NULL),
(71, 31, 'BZh91AY&SYZÝÖ(\0\nd_P\0Xø?[üD¿ÿÿú`\n_>ª¨\n *@9¦&4À#\0\0\0ÀæÓ0\0\0\0L#b`#LÂ0\0\00i0#À\0\0Â0) ¢\'ª\r©§©£M\0ÐÐCOP\0¥$Bh&h§\r)êy\ZM£ScSaNÇÞ~F~ÆPÒ¦Á_~Ì[/×wî¾W=sDõí?0ÕI!Áê\'&áû´ÓAg£ÂtpáÛcÍõ°w\ZtÃ§£§-¡´áìnÝ\rÜ8lîéðl<:Å\rÂã êÏÃçL!Úð>!ÈÐë<ü?Ëü:ø45£óy¯ó±Èô9u»\Z»-.fÏÖkÖ*|ÄöhýÏQÖ~ç¬úÏ1îxÍÆY°ú£NCö¶1#w¸>£0rEèè\\ùÒ}´b	Ce×xvMìêc8ÛÛ·µlyNãÞv_[ìi\\.^\"ñRÂ½hbÁ­²Ì4Èv§Éä7K¬ea*Á:¸z±.¤rÀ³ çscdvn²§C-ì®Õ\Z7prpð×Cnnm\rÒÄhà`îAÀc\0,Ë07rÒîìA¡z\r\Z,ÙF0:iÓïO `(ÓÀA±¡ýÊ2ÂÈ9\"ãÃÍÊ|ÅÚ;Î`Ñ\r:i¦0ôÃ#Ì]ÅlåÓwh<.¸ÑÈ²Á0Úãmmq¼îcs#~6[[\\nÍ\Z\Z>ææ9\Z8&Ã´ØÔ´p®¦7,\'L° ÜvnvnÓwNAÎ]\rÈ]¸°4Ó¨åÃ pÐ¹JGN[¡lÐ7réÃ»»H]Ð6Ù¤4\\·\rÐÂ~¾w§òe,±hÕÛVGöaHÙ°YÆ#AgÙl´Ëuç²3-Q2õF[èÔe#kBµbY`a,°ËÆv+µjìÕ9+2R¾D\0\Zlun¹³áÚé ëäîÆ:°)§cN¹98pÃ¦ÁÀÀ8`ðäÅ;î\ZÝ64ÅÂPGv\Z.ØL°\n!36li¨ØÓAÃFîîí9O!»g$äãd07vlåÁ-Üc[Ù\r0öñøïGø½çþºOµÐtUð:¾Æw3¯ÕévW£¿wû|#´ù9÷Eï¼M¬¯r±ýí/\np²80²ÊÃÆåjî!¤ÜüÏ²î·¿¤øuYr·ãØsõ<ÛMxãcWy÷WÝp7*yQÙx4<ÁÛv¯Àä¼ó°Êêci}§½¥q¼F/Mã·+Ï{Æ}§AÚw7avÚ«ý\\O]]f]é:¬,±Cñ;ÓÌw\\O9â<Åx­®kV!Äýcµa²ÅèÆV_9kÏw¶c¦:|o¼ÝÖë!qØ6Àô;,WJË,®éºcú­>óÆyÈÃ¥[£µâ5\'3y±Ê?è4sZ3°ÃÊeÓeí¸wu½Ø\\oMà~×ù2¼Ý}Ç¸ùí£{Úv^UÉ4°öÛ=£#kÈu{ê472ÚúÑÙz£àr5ô©\\í¹b°­Ræ}UVÓþ¯uÄÚôhÃºÜî>c£ÝuÆÕ½ÕtÜ®*·0ùCkþÛQú<¨Áaò\'/:ý6»ä{ÃÌy^Áè4°tZ¶änmtk#²Øt§\nÙ §>7Æn\Z\n\r!H`ÜÒØÛWF-Í£kF[Xy\r«±q\Z.0le¢éIå4_ìëõ#®ï«ªYXr¸Aë¿#kª9ÜYt?©ç~7Õì¾/àq£GiçðcàÁò÷Æ	 ¡ôGÊst!Ú]oT¿\'Y£Ùy]óö÷;RÊ|0:8Z­«dÕÓÒa¨Ò÷.G£F^]UÕ}7®å{¬½V_\\>ÁKá¤4fjÃT`Ê²²°È0É\ZX¬²%	«$ÁfVÇé=WUßj®OB8G¨è¹\\µjF®Ú­ÍÍZåá]»{ÜÆÂácÇÈ&;,Qà;F,ZN§k¾ÕÀö\rÃÎ9Dë2ðqÑ.«#ëç!ÊíX¿òôMÖ{!àZ£xÞ5r	jÝÞo/=å?íñn§èxÞÃ±2ËÓd;N³FG;xûÌ[ß{ïeGÿú>ßÅ°µ`ÍOÿrE8PZÝÖ(', 'Online Payment', 'shipto', 'Azampur', '3', 555, NULL, NULL, 'jH4N1612078947', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:42:28', '2021-01-31 01:42:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60165f63c2f7c', 0, NULL, NULL),
(72, 31, 'BZh91AY&SY2Wø}\0\nP\0\0Xø?_þ¿ÿÿú`\nß)\0HJ@\0  `20110LÓL`20110LÓL`20110LÓL`20110LÓLJ\0d¨õ6§¤42C@\0\0\0¥$B\0\Z\0#)©ìA=&MÅ8tëúüþæ?SKL?wöi~¯Íê$rN.\nÆÆ8æbØü÷¥ú];Æç\r²uNçârÛ31ÂØÐè*\'\r£V­@£Í»A9·nÆÈQìfÆ®[7\rÚ6C0c§£fÈm»vÜ¿ÃAáËª6CÔï7t\\;Ì#ÁixVG;%°ê;9®gÉû?ws§Cmòï½Ïswêz¹Ý­]Áhê7z/a¯`ªaî\'Ì)£äzÎÃäzÏâ0Âì=îöw±í7=o+KÊö¿äÝÖé\'Öxí/­Ú4ipKâpqqaâcL­,¹=oç6+ÔYÕ.Ç±ª.ïeL°»Ð<Èd:Aò4Û¥»víðGs(·n÷6QÒ².cÕì]giÜlPÊÃUâlíñ6\rÃBÀÀÑt:7:,Ðj@Ð\Z(QÝ±ïil\rv4\"=¨HÀ\r²\r¼5CAt\Z_cxÔ0ÆJ4Q!·|áÌ*A%ØQ\níáºÝð,÷n22HÀjå«V­ØzN®G\'#APÙDÒ!v+g\rc@È dzÑ¸µ`¡îµvú§¡ò9µok{é0ØÑ¡£ÜÜÑ#cGÄØu\Z-+©ÍeÉÏN@ÐÝÂÃf­89pé¨dt-\\Ç\rÜt,³\rBZ5Î·n!@ÀlÕ9p³.C(aÃ`ÚCõÊÅ?dñ0ÞC,¥#\rÕÚ)ç¡YjÑ«%CP£u\n\r£0z±	\Z(Exâ5&ú£F,22«IZ±,±&[ZE«¼iÙv­]z¡ØÈ/èBsjÐêÙqNk¡«Ý±êÔêÀÙfÎrpmÈX\"ÉË@ä0LL0fnÐlá¡-Úväl0³A0À*B;shpÑ e¸rvíÓÌ*@ÓÈÁÂpßq³¦±rC¡K20\nô/ ÷3íxðöÇÁÈè4è>ò¯äÿº¿ÓÞr_AÍw¶ü^gä¸x÷Çäèês÷ôèUâC/¥Þ¥ØÈ$bÀãrµxÈi7>ó©ñ}7ã}¦/Iö4ë²ç·ÓÿOð~_ç:+º65yO²¾Ë¼lxÓÂºL¸.»xv]{.õÉy\'YÒû¥õCý¶.WiÑxn^[æ4«¸úÎsÀxÎ´º-UûÜO!ê«¬Ë\'U*Ë¨}Ç:.ßq>s´î8Ý¶îË×1½«0à~9§àl°Ãeü44²÷¶¸ÞÓF9cÆù[ÞH5j9HPr:9\'Éý_»¤é²Åq2Ë+QÓtÇAô­?©á;ÎÈÃ[£µÚj9þ£ö>£hÎ³ù[cÜÙæ%\\>G×Õ? uàó/°ù}´p½§eæ]V\\nëK=¶ÆÏymr<®cv\Z¾Øp2Þø£²õGÖ0ÿµôÝ\'¶æ=ÂÂµÆ1\\ëã&1ï¾{µè.ÒÃ¾Üï=Á°÷JNÀj[1y<>ù§ä\nØÜÜm¼5ÍÅ,½Oêz«ñ3?{KKÞõ^ÃÞù¯zM9­MçFæ×2[YÅÌ9\\*Õ±µÕÆ×àaÂ9£ssKcm\\´ay\rã{F[Øx£­cÀp¥î\r´]Îw_Q×ëÔ«ÉWL²°åp-cÙs{Û÷&FqûÎ/\r«Ùcñvc\Z;O(/ØóF×¥XMÚu^·UÊ,£Òð:Þu[Æ/«Öxsgmz\"ÂÚ-V¢QãDÒõ.GÑ£/Gé½¢åzì¼ö_\0ø2_VÑ«\rQ*ÊÊÃ ÃÒÀË),ÈM1&Q[ óÝ7}ª¸^\Z^Tp9Àæ¹Z:TZ5s&ÕnnjÒñÞ½µCä{ØÐ[¬c±ð\r\\tÙK¤ì­±hq:®ûWèz8:#wAsÎ³/4¹yuYB¿<£àX¿¥è9®¬õÃÌZ©¼o\Z¹GZ·y\rïÐËËwe;×zÆ7î7óaþXìeç²MÇë4dt:7û\\o{ïUGÒÿb=þóùC1e,-X3SÿÅÜN$þ@', 'Online Payment', 'Select', 'Azampur', '3', 429, NULL, NULL, 'Xr7o1612079793', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 01:56:33', '2021-01-31 01:56:33', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601662b18c312', 0, NULL, NULL),
(73, 31, 'BZh91AY&SY4@n\0\n×_PXø?þ¿ÿÿú`\n>$B \0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFDÐ(zh\0\0Ñ¦*\"	Ó!Õ=!cPÀÑ0M©êj)´St^å÷,,/Ñd»ESï«ø_ê¿+~Óq©°Á¦\'¼Á:/¼5i$0Ø(?@a97Ù³fÃOðá¡:8pÆèSÔù<\r8\\4Ý\rAÞ¶íÐáÃ>v¡A¡È÷Å$d¸Ü#qèíÁx8\n´{Oó»K¨°¾ûË{^Ö¯Ñyî[¢æ¹×£ºð3ßJ¦òUëÉû/Jå_²ùò]Kç]näejïZâÃ½©m_:è³\ZCä`ø8~!¸¸\"õ|i|§JkÍ ù\"mËÔÓ¦¶cZ/*ìZ.ÕÎ¾gÎß4ø5jÕ¯­ZµÅ#ÊÂSÄ[Ö«)u.Ö´KÅAE`ÍÝ½­Ã¬Xè`òHAºãa¤Jn4: cBlÜáÃÉ·³c±¢Ìh¤lÀ\r²xlÇ\n?#q¤>K\rÒ`1´í³·Ü½ã¨b´] Ü ®¸\\?¹fïð\Zl;\Z6íFwm6nÃè9{H9:h1Zré»pÁÀ÷ YËfÎDÑ!±³fîÃ!#\'q©©ãC&Ãq´Ðð°R8^6n¬ïL°`á\r¸B;nÙ»· ÇN]¶\rÐ»q`i³¨åÃ pÐ¤.éËt\"0¦Í6î]8p!`ÀnÙºv`,£m¶Ôä²ùã÷¢òÏ:ì-D±¡¥¶B#åC1¦`,`PÐØ`>BF ®cJ¥\n0bD 4ÐLA#Àhv[Ø4ô¥O(ANæÈfÜ9·ÇMáÃ¶=Ïsq³gnry·9¹h9cÃvÃÃ-Ãaãv!f<:\ZrÓN7.CÈnÁÛÌäd\'Cwm9jÆÃ¡¶Ñ-ìû{ ö¾û^&õàù[ÏÁÄúÔ¿«ãÚtöâ·YüI¶<þo>ÇÁïq.£ì~n=Æ/©|në÷Ùaz#e6XXXmºÍØC)©ö-Ùk~¦zû\\l[­c\'öyù{Ï9ÂºcC7aôWÑl5´ê\\L[5ò=Î½Ëjì¦+î4ø_Ñm¹.ë¢Ô®ËØ².Åo:³Ì]jþ-§¢®Sù8lUÄ¿ÚìNKy-§¬ç:·=Ïd³o4³`Ù&Õû\0öÔòcâ6|]¦:c§Áö¼!´29ÁóYÈ8cäX±b6#Â9zÑa{Êp6¬FÐÒÐÆMÖ99ÓCt~ã\ZtáL}Ôú\rÞYËêÝ§ç~¦+©yV«ü/Rñ´oí8Ø¶ÝVV¡¡©âZ[Ãó_ÍdjbÒþæ½ò©ñ¯x[Îéa+4·¯L²õ[M.âç,KSÈzÎC\'ªå-\r+[Æán¶[ªÔÁñ48/o.ÅæJÅ®î8[nÔM5»¯Iìx\\åÜe`o³h^¤;³èØ@Ói°YêCfØ`ÙãSS+CLÛ²`µ4,´°tW*Úd¶\rzÃCKæpüë2_N»Òk²®Yb°n¶óÂúÍ/Tr[XQÉW%îºìÞâç;´dè;ðX½çùZ}´Ñh¿¹ÍzKÚß¬Iâê.wª\\Æ®0»Ûî°óZÛìËóá,Ö¡fáÀÁÊñ1-Çq&/.MÇ¦æûï°éöØúì~$0 A|PIL\nDEbÅD¡Æ*06$ÀÀÅhtûÙf­TÈÙæûu¸åFh²fÞU©©1ñvÇF¾í±d6F,\\Îs¼:6íb0ëZ0h ågÒiÁÞZaÉ¾r»e°ÔoÞ_IºèX_Mç7Ü.S¾NÒÍ\ZÆ±tvË6®Ã[þ¼×Yö´Sð^e¨Ù\\V,]¶\"ÉÌp2b7ÚÇÐakTxÝEG¡ûö{/a6RâîH§\n\rÐ@', 'Online Payment', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'IODR1612079849', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 01:57:29', '2021-01-31 01:57:29', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601662e8e6819', 0, NULL, NULL),
(74, 31, 'BZh91AY&SY[s\0G_P\0Xø+ö¿ïÿú`ÿ\0\0@ôÐ\0\0\r\0À0\0\0\0\0\0`\0\0	\0\0\00\0L\0À\0\0\0\"¤\0\0\0\0\0\0\0\0Ú©êM¨\04h\0\0h\0\0\0©!hF	¢zPdÉ´MCG©t6úýÊ?ö?2çÐÿ\'º!2OÜÊIþ\n),}.}OÙÆóI©z9ÊrÚ©å§)Ròlâ³\"ê,äÉi8²d¦Îj62ÃFgÖaµraÙ%4¥Ú4RX¼Ìë;8¹2ÎgQ£7ýr5:osÔðq8´jq`¿k¾[½IG(N%SÔí(¢yey³Àí3;ó~*â5=NBç©að>?ÃDXí-àJbÒCÒô`ÝK®à§ÐÈñ9}ï´HÙJTIØ©ê¤¡¡dèQ&iQI*NNnnlFJr}Kn0gQ5lYIæ|7©R¡hZJ¥MlØÜÌÉæX5&ÅTÌ]³uÓuÛ¨.QP¤)B%]ês.}¦ªhb-ÑuãUÃ¡L*JPÍë®ÑGQEäÈ ÉH²ì\\¿3(aR%L2]vRT´¤¶ºì.f1Ã!ä#ã>Cã$2P\r`Á¾i¡«	K.»6Å5fÕy¡ªaTÑvÍAa,hÍ¤²ë®0Í£&DÍ¨¡Ó\r¦²M6lM$ÉÚNù!ÐÿRu1,±b,*%)&KI)ó¨±JRËK*¨¼³(¥K2ÁaÚ¤ªZ´hRRYQ©$¥¥JuÎ§_S¬»¤Èê¨ó#©ÍXU2`ÉÖÍsvêv;.»6{¸·/*GkNpf³³3XÍL)³Bê0f¤²4,ÍeF\'Í3LæíÌ(Õf2Õ8j³fE0Ñi\n×ÒIÒ}Ó5ç«9±\0ºÐ*Xgy ¸e\nõ&«bÍ!÷,àÓWjb2RL¢Ed¼NéÖC±Ñë(üçàYÍMKO9ý§ètä|&\n>2°F(×[IÈ!JxòrT_#Àº:<\nx>E<Î£ç-uJ<Ýæj3ñPvÏCiÎwNCf«£÷i9DqÝ\'ªH¥H£ñ?S¾MÛ§Iå:§lÍÔÁÍEÅÚÌ,©Lãc¨©r³èY-%øÊ.Íè²)£Ø÷°Ñ³9ÍMMfjQ5)J\\µM\'Ì÷ÎSc¤©RTÜ^U¦«¸Ë$ÚTûåæð5-+©Õ)²,§[2]ØíGü\ZgîR{Ù\'3u¬QGÅâÄ¼Êz¶L=¦òÉiÕ.øé¤¦ÖòOöTü©j	=ígHQR>Õîi?FáÖ*x2Ù÷Íç©yIÈ^^0¨âÝ£&Üe->Ó	v­Ú(§GÕÕ\'ÙbÊaâ÷Ï{í)4YsàLK´©8®4%M\"ÎlL8¦ÒîÖr¦I²bbX¼½ÚPÄº]iKªk/ÊÓ4tJZ£¢å9$èï\'&Þ>Æ©ÀÚy>Ó4Ý¢§ç5G÷èy,só(çxÿ¥?ôðy¥Oä`ü\'7Âæsw<á±Æd.dvË5r³¹cuád*Ê­.¡git±é)\ZÎùiiNÛMgîv4z)ä¦oã$þIR¡D4Þa¨CCCMi  !TK)%%HQ×2Nõ¢Od|ÈjÑiÄ²K5èÄÄ²ÉÞí7ojRSeÚ5k\"o9E¥Y3ÍîîY÷fC9stÁ¸Ørï	´8©>$ý©\Z:Ê?Õ»÷$ïÂa,Ñ;ág¶.ûJw»%§RÜwQÊ7§µQ-9Må¥&¬ÓøÊ3àìx¢~éßï)IJcÿ¹\"(H-¹Ì\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 300, NULL, NULL, 'OjWg1612080767', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'dsaf', 'ten', NULL, 'pending', '2021-01-31 02:12:47', '2021-01-31 02:12:47', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(75, 31, 'BZh91AY&SY°E\0ßP\0Xø;Kü¿ÿÿú`=÷@ 2Å@Lcb`00\0	\0$ ÑPÔÐ#M\0BhhÑ Ðæ\0L\0L\0`\0&	4ªM\0\0¨À\0&ÍL\0iÀÀ\0&\0`)L51¨Ò§²C!§é4Êz4Ó\0Ha	Àé?¢\'C`(è{üÏ×.P¨ÉkÐb6ý»¬zÊÊfHúUÃv¥Zîv1%/SvÕxEñ½¦µy¿éÌÜaË«$iu°×e\rçQ¨ö~=Èå»L³0vzúÐGx$Aó93Ìò:Æ1loÄ¸ø\nf°¼e@å_yj5\ZñCäq	~p]§\\âÔ¬äjWÞyKBé ©$ ØÔÞHA¦4ÐÅµ1­Y±qFI[ÉP+ñ×4L,IÀfaaßE8*µ2r!`Õbó~Èhr^*.Æf0Á°LÍÿÁeQ4E­LoUÔAq6$É´ÍÙQG3KÁrH*\\±!ÔI\n\n¬4CFc(±DñI¥ìÄ0©A2ówjÜ*¨¡Rö¢i1!K^µ°)**QÔukPÜª«ä¾iúQ$Hl\nRT\0ãe´¬%0Å)L\ZìZ ÈÀ`¡\nÀRE(úïmäë		\0 ÖxJÃ*VûJ¡2ÛûðR¶uÕÐÁ¦5gÑ1Bmj*Ði¹0Y\Zn=ï¦fÖ3Ææ0 ¾\nA(1Àvm=çÄïG1r¥ÎG1Üü¦åñèhUuò.\ZÞ?3¤d´VüÁU¥VÅk¾Á\0á9Ë²? `sMxNpOöúÁêRG#à¿\ZRqc©«°6ØüË^#Ìb¦c9íAcÌÁ©Ôe kúØîFÂY°hlYæuíÁÙcØlp-¶ÐaJÇÈÜÆHÅÌ?í=½ðîïÛáMË\nÅXÁÁvÃmH±sÿ3ÐØâdXi\nIÁyÐ·ö]|Ï\rÄQCÉøTÓ5	·>Gíô\Zàv?#¡ã*¼ÌÝ¸@Ï	$¡ârá¡Ûî (9þâ×½y>ëÜKÐÄÄBäÐñõØa¨3\'°ÜAëÐ$F³Êõº(3îIOØ0Ð¿SïfVê8ïûÏ\rCÄAP-i!q2õDI9¬Ê£*°¨PIÀÂ©Ë7³,@T*¬R8å¼aö3K¨YñFPÉÔ0qtãSa\"Q;{ÏÅõ7dØvì?©Ì÷í$ø\ZçeFÁÜw¦q\"úNºbü¬)RC!AÐi\\ü¦¦Q;ó¶âxáÞÂQjYdcFID\nVDE©:V|¡à1Uc¹ ¡`%(D/¹Ío3¿U7¸î6Ênc	¤fl c ,dÍ<OS \n¤0·ò\"¤¦^ÜÀ_xÏóÜc-sJ.¹¢(r)û·\0|NDC}­\Z\ZÅÀe<íîBþü\" Ùö.äp¡!`', 'Online Payment', 'shipto', 'Azampur', '1', 210, '23432432', NULL, 'gKdv1612080908', 'Completed', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'completed', '2021-01-31 02:15:08', '2021-01-31 02:24:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016670c26b70', 0, NULL, NULL),
(76, 31, 'BZh91AY&SYZ¿Hë\0µß@\0ø;ô¿ïÿúP<b;¨\rVJ\Z§©ì¨õ\"m ÉèÓMP ©¢z2h\0\0Ð4\0D(\r\Z=@h\0\0\0\0\0\0\0\0\0\0Ñ\r£QMi¨P4)µ )`S]EÌ?g`ÂG¥s.[åÅâ©Ô(Ãä5¬¸ÇP£ú»/âX8R1Üu2=ÉÂ¥¡c!32Ù¾¶\'VÊ9Ù³Á·qL35õ.TßS¼éÛ\"£Bz\0f§0H	w¨í\0ÀD»çSNPã½ù Bé\ZI\ZES¯beJÀY (B!¶T<b¼Eñ,AÄ4Á6°jQ9NÄÂI¤áPU!ÝæNaHT*ª#FGQJzþG(Å¢¥á]Êà)¡4A\nXãYC qå)Çb-3h¹wÅP.k.YK{Z	HFHºrHxp¹+\0¡`Ä²:ZUA æQÁù ÈH«ÀT<é¢FU¹¢ô¼¢ÄFJH¤X¤Aj¨¤ÂHÍc®2µ.²¢1$Á0sS¤Êñs.õfÜ7llÛ¦Ás4Å,°¹b,U3MH·ÜÎpôkD)3´ÙmÉs¶±N|Dò9ËI\rÅÇ±!5ÄÏ(±:\\J×UüY(Õ\r¥[FÁ3qÛºQêAe!HXD»ÐÈ©JI½^âe)`V@gø ÷ó5¸kö!)l®s£2¦FeðB=ªju&\r\rÌ? 1ê©Öfp+prPÊ,Ì¡è@@Cî.:Ã³¶s¶*`¡6+\r¼\n÷X=Ïc3¤È Ó2Hp^[K;ÉEöÞ<>Ê:\'´%^\\O¯¨Ô­qÔËw\\Ô\ZÈLí	X°r8°ãÀ[y.£æ|ÃbIuÜÑb!rÀ §èÕÝNû!SY¹´ SüHé	fÌâ|4-MáðÎ\0O3]0¬uãP©º\nÇÒvÇíH¤¦qÚàa2JP93y%°¨ (K°RxÃ P­C&\'pRäM¥>q?\n£\\Í\n%fðö¹ÈFe<QÞÐæ5\\\\D÷ÂâÒÀÊBÆC!AØ4¬uAÂ ±Ëgo:ö>oÀ@cüÙI,c¬\"AVAZ	6¢G#]B)Ð1Qwµ¤  2dBå_\'FîjnÄ¬^é¤dnP122¡2êáe°z\"Â¨É¯¾Ì-Ï§©¹rJjj.¹\"<¡Ì§Øzè@!Pþ\'Í¢\rÆ\Z¼×ÀÉì<?Säî<||PÈ\r@ÿ¹\"(H-_¤u', 'Online Payment', 'shipto', 'Azampur', '1', 1480, NULL, NULL, '1n8D1612081872', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 02:31:12', '2021-01-31 02:31:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '154', '60166ad073183', 0, NULL, NULL),
(77, 31, 'BZh91AY&SY\Z½÷)\0ßP\0Xø;Kü¿ÿÿú`=÷@ 2Å@è¦\Z¦§\Z26£F¨Ó20@Ða%	 ÑP\0h\0\0\0\0\09¦&\0\0\0\0\0	M*@\0&j0\0	3S\0b`00\0	\0$D\nbdOMM©ê4§¦Ê@&¤ÔôOS\0Ha	Àé?¢\'C`(è{üÏã.P¨ÉkÌb5ýÈ»¬yÊÊfHþjÁ2jèÙ^ÊA*ÌË¤ÙÐ­³Ò\'6ü1z1uc°ö)$K­F½ 68úPgïÙì>G-ÚeÑé+éB\0gQ\"ÌÐùGyÚ1SaH;ÉP©âoïx~âÕo\ZòCäq	là»N¹Å©\'iÈÞWÞxKBé ©$ ÔÞlHàÓ\ZhbÖßEVj\\aeÄ¨Jvr\'yAÂaUÌÖ$XS	¹°j±y¿S5¡BÙ°BA|QRWSS2÷`ØMæfÿ¸²¨Æ\"Ö¦c6UÀâlIi²¢f>\n2äT¹bC$(*²dÑ\r\ZY¢ÅÅ&°<[\\Â¥ËÍÝ«pª¢KÚ¦DÄ-zÔVÀ0¤ª\\ ©GRUÕ­Crª¯ù¤.+ùÆQ$Hl\nRT\0ãe´¬%0Å)L\ZìZ ÈÀ`¡\nÀRE(ø=v\'|$,$\0|F|öJÃ*VÖB!sóÜ©KâäÅÀ¡1FÁ\")I$ä,TqÔ(©%Fj¹¥Üu-÷{#V±\'/\"2ÝG1ÐhæñReNÐCxþmÃ@ñÁxó4*»y\r\nì?#¬d´VüÙØªÒ«LbR­ u¯ê)Îv\najèÆC¨î<¼ìÉpRG#à¾úRqÃ1ÔÞÃ´\ru?BÇ% ×ò©ÎzÐG£©\0jy7´\rð¥ôh<%Å~hnÜÃS°¶ºÀF	U+#pl2F.aÿ´d÷tw~ïU7,+cÛ\rµ\"ÆÏöHÏ3Sa¦d)&GçBÜ3ÚIuó<7=ã8\"!0±Ì¸Q­#×ÀD\rqR2íPø\n$¡àrá¡Ýî (9û¿¢ñ}¹	.·9¡=É3©áë±<Ãx3\'°ÜAëÐ$F³Êõº(3ìIOÔ0!%Ðl|y[Ø/´\nsèz·2¢¡7ZÒBâeêsX\'FUaP¡	SlJÌ±Pª^±Hà[Ã©[zEdz©>¥ºÃLüÈÝùðf§qd ØîÔCï$:6$àoÎÊ-C3½èÄèq;iCñ`d2°¥HFYQ¥sðRvF,îÎNÛãx\"N[	E©dAFA%, (IYI¤àdzså¯b\\ÅUþ^æP¡¾Ç5´9¸S{ó\\¦æ0Ffª2ËËM¦l2É.ª,8ù@¾Ã?óhuKBTTQuÍCOø>î$ñ9Y\r÷4hn k_ñ·½ûð\nJgØ»)ÂÕï¹H', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'gsQy1612082589', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'DSFADS', 'ten', NULL, 'pending', '2021-01-31 02:43:09', '2021-01-31 02:43:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60166d9d784de', 0, NULL, NULL),
(78, 31, 'BZh91AY&SY@¼M\0_@\0ø+KôD¿ïÿú`ß}D¤**H\r\0\0\r\0\0\0\0 \0 \0\0\0\0`4\0\04\0\0\0\0\0\0\0\0\0$ÓSL©æ¤OSOQ²2Hiµ4\n £ÈL$M¨~¨\ZyOIH@í¢>Ç´(¡ô?ÉsóÀaäyYàäÝ |¯ðçRiù1²è~«,§&ÃU,³\nQN/¢Í0ÕFiNM¬Ñ\Z²æÃ	»,¬ÝªïÙsVªN+Íç	Âv\\£sV{¼WaMÖKeÒ[¢I$êi³gÃãUÏ5TòÙ%$X´¶kÌÑÆ0ÂÏ²¤F)JCÔ¤&ª±G@ÿ$Pà1 nq4É.©È¢ÅB/dÁxZJ¥K²ÃGâ©d¨Ð¥H¥hÃ°ê£ñTBR¥\nMY]«\rY~Êe)Gkµ»Y!«eáºR¡u×]v\Z%)eÙfaJ*eÅ`Ú×(Èï«¤vi¡¦îNM1Ãf¹¹¶4-ÒK `¸ÃU×h÷4»f&EMmMj2LÕ£	Ie×\\a£VY&.j,faYMSFMÓ&çâ/ô¨}áÍl¢B\0B#-)X|bPÂ(¦\"Y£$aí#r¢Å0Pê¤ªZ²Ih1I, Á,R!D@Q!nèoÈæ©PÔU*©DOË,.­Ú0hÌÝ¢æ&íîk®æaMZðjq^fG«N\',,ØÝÍÚ,n¦FëjecEYM1¥íkSU§·n»IÁÀÂ)ºên¾£«6dC#NyCö>~sÐþO¸³Íí?DGí×\'ÏG¹n3yýÖþrÇ£Bêpj£ÙcÜ Ü æ`£Ð Òäý_iÌÈò`~¯Ð(ÔEÆÏSó:ÇàúÞ>nÉé4u>)â]ÈlýËê\rX\\9 îsÃ¨6b|\ZFÎ6$:(9Í&óÙ¸à±>­\'8°à:<H0aä¸0;;»<ÍK¬©äo6QÜ}Ë%¤²r½î)ª¾¬5nÒ`ÑcI(¥00ú¾¡âÜ Ç6lYð,jÐº1ö6pÖÍóa¡²î¦æFËc3«á?GÖTXòRtxO£¬ÝM]©cÅyiæ°¤Ã\r¦©á:©/)g¡9¼ð;¼|T\Z$6ó¾Tü\n%O9êôi.ñäèÄé=fòÓÑÈ^^0§5NN-Z·FeOWë1;Óg¢÷ÆjËºOÝO|\'¤õxJ)4YêKË4©8´&&e¼»wËº°èÝ5K¦f%ÙÂöË¥Öº§t¼s4aÊOÊZSÄ{åÎsOyñ\'\'RqR$p\\aæØÔt3 Ç{Ø:åNsÂf%§dê>¥>Ó¾}×y¥\ZKSw2¤æ>Mt~nsÍ:JpvN«2xÀ91¹IbÁF1¡ í`zÚiª=§¤è0~;{=ãhH1H#c(  £DE,îñzÍN¹ÐÄOÊlÕ¬äy.òêo%ÑyeÁÛiÆMêZL©MÍºí[6á9Å¥Y4\'º,ÌÄÙ6\Ze:Ã3	¤8)>aéI«°£ÙÍþÞ3²y§x´L&ÍÓ¾u}å;Ý\'ý/$²{0ö~K:v\ny:´ÁÐÈ~Ìï;D|Åîç¼Ba¢ ÿÅÜN$/D', 'Online Payment', 'shipto', 'Azampur', '2', 295, NULL, NULL, '72yB1612160474', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:21:14', '2021-02-01 00:21:14', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '70', '60179dda89714', 0, NULL, NULL),
(79, 31, 'BZh91AY&SY]ÎÆ\0ß@\0ø+KôD¿ïÿú`ß}\nD¨©%Q$ @\0@\0\0\0\0Àh\0\0h\0\0\0\0\r\0\0\r\0\0\0\0 \0 \0\0\0\0\"HSM	SÃMOSSÓ\n\Z4l mM¤$ò<$ÓÒªêiå=% YÕ	4}OHQCæççþÔõ³¥»6õb¿»¢¤.Y§êÆËþÖYN-\'HÃc\nQNoá²6èÝ²Í\r©M:°ÂpË*³Ì?UÎM)9®b{NnGGS.Sð;º?GÍ)ëpó]8Y-inÉ$º¦íÝ<$¹cÄ{4()P«K/ÂïkL.ÙgÕR#¥!¢¤&ÊTà¤¢7JEI\'ÊbeS¡Kõ²`¼-%R¥Ùa§à¦d(Ñ)JK,ËL2Äî£ðQÒ¡)HR&í.Ýëåú©¥z§&f\"¦ÍÜfJt±T¥(a×]ÄÂ²Ë\np³(¥D2Âìü²³e÷ÒÆYe¦¢¦òÒÉN·iMpäèl9¶h\\%x@Ù¦Ë®Ó£BnÓv&ÆéSuÛÓL¶L&lÓ	Ie×\\a¦Ì²M70ºa°±f]6M4»àp|EþUàÜ¶Q!\0!Å¬;þ@ÒD!í6Bá\0ê ÈR¡ZF*A)E\"^(0ª(7¹öy¶\rb©*Dú1¸¹ÁpÓ4¼öfrp¥Ûb«ØÂì)³nMkÌÈæÙiÌæ±Í¬Ý¹Ã+6XÙL.ØÒÅÔ\\Ù»Lo{ZÔÝiÍ8]©ÉÈÂ©Âêp¾ÃË+Ì\Zr¸D?SÛÍðyÞ÷Ä³hy#÷\'\'ã§­nsýÖþrÅ¢êrl£ÑcÖ à è2(æPinýÄÜ\\õ`~øk!´ÀÙë}Áù½¯Uwbt\r:ßDô0ÜlþÒ\ZØ`6Î w@uÆ\'Í¤lå(òubC²¬Ôâu¸\'Ñ©äL4n¢Ev®FC¼»½Øít\rÍåÖTÊt8¨öbÉi,§¾QwµÙe6SgÜîÃg\rL\ZXÔÂM¥2#!É÷³ÌóºêÍ2%m-È;Y±æì0ë76-wÝ?GÒTX÷);<§ÍÍÞp¦ÏRXó^Zb{Öa¼Ù<§u%å,ø«É?yàý£ïE< ªq3zÐ(C¼Ôñy¥Þr=ÎÌNÓã8AyxÂU:9·s23yÍÞ±¹¨Gv#:þÊ{d{	ñyJ)4³âKË4RshS(¥åÜÆ]Ýg	´ÄÂ]31,vpÌÎ´¤f].´¥Õ=ñÔÔñRÌ)\rcÚC@x¼ÃÐØu­HÈÀ\Z^»cXæh ÇHy0s<ÍåÎ³Êf%§î>>³Æ}{ÊJRKéÑÃI3ES¨ûÚ~èv~n³Þ¥9<\'iÝsqH@ôícÅö1¡ äÁ2{\ZiM9<\rgAÎd|p!âä1AÉæF11	\0\n4A`ÄYÎ÷SØk::O2e>SvÍ§CÜºË©ÄFeåO\'ªÓ¼T´Rs«Û7o!ÊuJ(²jr®ì³3tÜlsïÌ&¡ÉIø¤øPÙàQèêüs£Â{ÓÄZ&	g	ã;Ë¾Ò.ÓþY=z>K:Á8\nvºÚ`æ\\~ìò9û>ÈBa¢ ÿÅÜN$s±@', 'Online Payment', 'shipto', 'Azampur', '2', 1585, NULL, NULL, 'rL9b1612160798', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:26:38', '2021-02-01 00:26:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '250', '60179f1e11672', 0, NULL, NULL),
(80, 31, 'BZh91AY&SY (ß7\0_@\0ø+KôD¿ïÿú`ß}\nD¨©UT@\0@\0\0\0\0Àh\0\0h\0\0\0\0\r\0\0\r\0\0\0\0 \0 \0\0\0\0\"HM	ÓSShi\Z4mP*HBÑ<i¨i¡êê¦ Yìª?3ç\n(}Oè\\þØô<Ï;9Û¸1´þÜÕ!rÍ?66\\ð²Êwai;Æ0¥ìú¨äÎQ¦å;¸mf¶a9eYËl?&ptÚêNË·3³£»ÁS©ê=ßÝÉ¶òr÷®Â¬ËÎ[Í$z Zpáöü$¹cºå4X)AJ\\æY{î{\ZavÖ~j$b¤4RjTä¤E$p.S*ÊX¤L¤ªT»,4ýJfÂ*6JR¤RË4Û\r0ö¨üBR¥\nM²»l6¾_JQäòrÜÄCt§bNYït´¥(e×]§xRRYw¶Wt³H¥D4Âì´ÊÍ­&%%ï¥a¦b§ÒÉi¹ví1Å³N.fÃfÁ(2À!Sk®ÓÉ¡K¸iÃg	SÜSL¶2LÛL%%]qeiÀ¡Ó\rVeÓi¦Ö/ÕPî\ráu ·(¥aòC¢/\ZB.Ñ)°D¢ò!z¤`¤bR!L@QèP¢0ÚämÖl\r¦ºT4¤ªQäÆÂærÓ´¼õætåK·¯[°¦Ûé³²ó2;6´ìvXìÆ®àåÎ[XÒ´]³KQÂâöµ©ÂÓ³\\¹]©Ó£\np§+©Êû6³vÉÃAN7ò}=ï±ë|igÌô?tGÒñÓÉnÓüýÒ3äÑu:mGÍcÉR`Asu(4·ìl.y°?ìi!¬Àlð~ø¼ö.¤ì4p|ÈÁ¸ÙÜ¾ ÒÃ\0Öm7´Øjb|ZFÆsÃjSâpät±?ÛSÜ¥Ç\'A\"º×Ú]Úêu¹F¢£u2Îg\n=gý,Ê|e{k)µ6û^6å©K\ZR¢¦ÇÅüáêzÝ:³bÌ§9cKBäÇg1LÔÇcq0tKÆcyê|Ï»¸¸âýM&÷\"f¼Ê\rËÜG¼fwÔq\0Öz\'¬V@÷ATædðBP¡@@cÍèwî7w={Í@Y²\\QF9¤ÄÈLô>Þs@0äv®&Zúìa÷>ùò{¥Yò%å©;4L9`$,ØÐ<ËíÆÃvqË38^ÒtºÒTõËÇR,2/­K0¤4 ;\ZÚõ`v¨Þ$TÛ#ðÉwdå¥%NÙ)9~×Ï¹âqpFnð>áÃÁý9Bf¹ÔdìÒSÀý\r>ó}\'Å<å:z§ôaö,O(¶8,e©\rF	Å¦z©Åí4YÞC´µÜ1AÉï#BADA\0	\Z °b,gk¡âi7&X¼À|\\æ&. î, Y±Â`Ù¢²§i8{T´RùáÊí¸q!ÔñQdÔêuwÌÌN³´§¤30JOÅ\'ßCoQGÍáô{çNïTø§´Z&ãFCÁ\n7¶?L8°YZsàxéí\"ët´ÁÈ¸ú0.yÐGò(û= Â!DAÿ¹\"(Ho', 'Online Payment', 'shipto', 'Azampur', '2', 2015, NULL, NULL, 'oW9J1612161342', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:35:42', '2021-02-01 00:35:42', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '320', '6017a13eb3c12', 0, NULL, NULL),
(81, 31, 'BZh91AY&SYºü%Õ\0«ß@\0ø+ô¿ïÿúP<Ël@B\0\0\0 Ðh¡¢hCj\0É¦\0Ó@\0I¤\"¨Èd4\rS@À\0\0\0\r4@$H	04\n	´ÑM4<$L\0°PDY¡öÉø8pÐÜd¡ÄíÖ8ÇÌ|<¢±Ä\Zì~&igßìæs¦1ÔËjª5kñRmiÛtIËFæYÀÀÐãqZeÄOq=È@Á\"HÕjs!@` ×¬\"~_ ÒAÎH»HÖ8pLgq²É¬Ä		\Zg:¹P*8Î¹×<¤zIr&Ð6\rZ´í$B`¹N_\nk	NXàÄ»U²`hp1IbÈaÉTLÕDdH±Qf\ZÔÐjÇ.í,qufK2Ó#9ÅXSKHïÎÐ	ÅÕ\r¦(Í©£µÙ³\'«¯2ðQû¿õÄHgëXÁjáÐ±dk	,¤&p	¡FÇà^óÐÙ$+ÒB!#øÍ\'Ihî¬ÌQ¬#iÕ\nïl£opnoó5(Ö ÓÐi ² ÃéZ{}kWmÌ\ZF±¹WFkhcvz£é  £È{Yÿ?9Cã]À¼!üÎ$ï«<`ÑjÒ­£!3Ð÷i?¸Ï#þ ÅÛBGû?Sêj}¤z-ÊDr<	©yèiÄ\r9,F¿bã5Êb7°2*^d]xaó©ª0Êó\r6kÉ\nå\\JExm=}Kwuyïã;_ReH*M±TmØV²±êzL\n\r3HÒÄ¯ØdXæ<lïZøO xï>þcPuk§àÇ{¶Å9Lí\0ÔÉÜX58°ã¸³Õ|Ê÷ \0]lqCAï¸bgS¿jÔ]\rÓ7ËÈ;d$¦ófXÝkÑAÿÎ<ºv¥©´?,Üùõ;j1c°¤E@XÔS*Ê!ÈÂ/0!2i$½*TÅ	æpTP\n%ÜRÌ6#5µt\\e¨=Ib¯¨Ó.<F¯ùøGLÎECyÐä{ê4Û*AÔÊó\Z £Ì=ÅNàdu[Ç~fóô3Å¥ÊB¿ î4¬r v0m7÷<<9­÷±D2^èÂA,ÌHÄi\0¥KN!ÆrÇ\"RÔT_ëXÈé$;ÂH¡\"!k²BîNÜs3¾V.¹4ÔdL%Â(L¹\\X(L*\ZýìÂÚúf}fhv\\×$G^ÃåÀó$ÔÐfo|;Çweÿ£§ð!ÑÑÒ °ö¹\"(H]~ê', 'Online Payment', 'shipto', 'Azampur', '2', 1155, NULL, NULL, 'Mupn1612162710', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-01 00:58:30', '2021-02-01 01:36:44', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6017a69604f03', 0, NULL, NULL),
(82, 31, 'BZh91AY&SY<V-\0èßP\0ø+«ü¿ÿÿú`}\0B RE*AÌ`À\0&\0`\0s\00\0	\0\0À&\0L\0`\0&\00	\0\0\0	\0MQäÓM É¦ÔÑ@4\0h\Zh$@(ÄÈ4iê2d4i²Ad\r@ûS¹$ª?gß\n(üTúlû{{Ü«àú9ÜE´þR¥äàú,³+9²´s¬a)ÉõQ¹+UÚ´Y¥)³£&ì²³v«¿Úç­hãs¿Îp\\Ü\'B¦­¥§S½ÍÉ»\\XÑ{¿CÍÝ®%WMÙã-ê@=,õ T§­ÙÉôSìrsvYë]â¹ö°ï9¾RÃÞùcçOìZb#ÁbÒCø>+IóËµ«¹£\n~ËáâèÉê!PuqZ^¥ÔMT·\'Uâ9¥\nEI«MÄÊ¦e®¨n¼´:(¥$ÂjX©SVÌ7b²NR\\¬²¤SEjÁ«)æ£u6ª3)yE¢¥!J4]³¶[´{Ú8¨j¦RCÑMXo»D²övhÒUÔ(à°ËF]êhø¹8·6ÝH»vì7TlÖTIS\r]«+Þ|Õ-(ã\Z\n0`Ðdk#N\ZmÃæÛNNnéÆ^Yf.^¥N:£V0»­.Ù£f&¥la6]µ2ËQÂat¦­JK®¥×hÕI£aC¦\ZVeÓTÑ£¦S/8jÐü¯J \"0ª+¤JBÒD!\0¶ÊT0\nð2(FARÐ)*D¥$)kK;MÝº:-$8¢E¨IGV]«%nÑFfí³87Ríp¯C0Õ¯§æqj´âqXâÓ7lnÊæíVj£%ÔÝ«fK2²j¤¼ß-ÕV½,l¼·\ZMÜ)²n¾£«7¬·e¡¤·Â!×íxùµÜÌ9o¬Üu\0=°ùù©ûözVç1/Æ_§ï=ÍK©¹¢zÇa&J ÑªÎrÒb~ÓàæÃé(ê}F¢æCoø>\'SÆýmìwm£ÂúSø³0òwe2tQàN®ÚÐñ9Jé-2[£ÁÒy¶çiÁÈsX«IíG)M	ÅIBðr?|Á¬÷N³Ó4uuXY´ºÊMæÊ<_õd´Så(»Ôö,¦ªjõ=¬5Ü©¤Ã*h¹Mj²±JQlÙ4ád?·k¥Ðc¤l¶SfóB÷Xùeæ©æ©±i\\¥N²©ëfqvaÊK´x;§æý%GqèQÍî\\ö}1w½dÃÙ>NÏ)ÑM]å+=¬LOIñ\\¤Ë.tôOcÉs°ßjs(§ÍäBad?se)H©ðÅ¤»ÈsT÷»ÓÎp1yxÂ9¹6qjÝ>/ÊjÌènpDÿOTöS¹å7hôÉÿË$ÃÉîo)E&:dÄ»PºíISU2^]Å6x°Ù¤¼º]11,x6feq`\rÂÈím5­ä/3´8§°ôË¶tÈã\"¢¦¬§µúË¸¦í6>éI»ù»,ö¿gIå4#NÇ´âqÇÿn ÂsyK\rÎÃSReC´|U4{¡âç<Òï7»¬ñL\nBèkcIe\Zµ1¡ æ`¼4Ã½No)¨á6Ä<d:Qù`2zHÐb\"F*F*PA!D,\"[ÀéxG¡26ÆCÐ÷ÌÝáä,@¶ÈwVÄÉ¶[N2lõ)i2RSuÚ¶m§8´¢&áwzÌÏi3tÜlrõC3	´8©>ÂyÒ5u(ûßWgæöN.n³ÌyDÂa,àP³Æ]úÊy<\'è¼2ÇÚdtÔ$!ã\"òæØ:LµÖ=Ì#ýyùÎdHAB2þ.äp¡ x*¬Z', 'Cash On Delivery', 'shipto', 'Azampur', '2', 985, NULL, NULL, 'H5eU1612168326', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 02:32:06', '2021-02-01 02:32:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '220', NULL, 0, NULL, NULL),
(83, 31, 'BZh91AY&SYEè(\0	ÓßP\0ø+»ü¿ÿÿú`	ÿ>*T PA $(\0(4ÄÀ``\0\00æ\0L\0L\0`\0&Ó\0		\0L\0Ãb`00\0	\0\"S@HJ6¢dÐô&&ô0&\nRD4dÈ4\n~©° ô!©¡NOìÓªªýü±bÿÆ±ªÙöçø_¥últ6ÉýÌ\'wæ5RHa °{	GOàÓf>6ÉvcÝÿ¬\r8Óc#§Ã·M¡¨Â1ÃäÝºpá³ÇM?CÓ§D^ÆËs{½çtNG]Óv,¹îGjïºÝMÜFX(¢óèntyðôìÁÙ³c»\0áGx5ì¥SÉZ{E0Çµèu?V>·S­èiè{[¼[6ÿ=mÑhv>Ùòá}û_cVåx@@BÃeÊÙ\ruj:}%Û±ý\n»ÁÖáJmeÄÈZ±.Ç&°ØÓR\Z!]Ï\"|ÀtÝîmÃ	>aÇHHÓ(DCÚ#Ñ6hÖRË¤åotÛã©Ã0rÇBà,ÙÓ`»ä#óíÁ?ÈØôAõaÛ°l°Q!Ó¶¼0ôäÉüËéî@v¤/¦;në\0FõA³Ì¹]\".X\\9nÓNÉë;rlBiãÆï¿Ôò2úKÌ ]ÛM<pYùïÍjÞÞæ¸;hê4hhØÜÜÐ@ÐPX0\Zà(,sCQ¤ ÝÓt#í7{¹4íË¶á¡BíÅ¶Ç.ÊB:rÝÆî]8p!`ÀnÒt\rv`)\r!-Â(âBÏÈíEéà½[«*eËZ£{i¥2ÛóÕl2ÉV,X¸S«eYn°µáj3-*2ôF©V­%jßLÈµ`bXeÜq»z®Õ«¯T]0\ZæÔ~fL\'ZC¬¹p9ptÐ{x1¦µ	=\rÚ.é±®fâ6ÃÙ°ösNÇ\Z:lba,QgªN\n\nl\'Wéá²Õk$4ìötôÝ2ÃvØ\\â\\ã})Øpí³Â`6ð¹6Æ·³,/Ûï<N÷ ó]fç9ÅÐgÁø¤ËúÕÿ¯¤â¾7©®Ó{n³n£/µ{îsLx¹aõ¶4pÄ00ÅLºløi7?ãuÛß©Ò}ãNV\\÷clx«î~\'ýö?ª½1±«Ø}Õ÷\\\rãc½=KÙaëÛ±|ÜËÂu_©|X7¹½·e¹^»íh]½ÐuÇMÔ]vûÜÇ]F]é9X2Yb?Qø;Ó¦é»÷§¤æ»nÛE« ÚÕ\nv®\'AÀÿfV_IkÙyZ±Ó>§ánèâG!ú2@Ñq\0£mÁb\\CÐÈ{£D?@ò0èæYt£ckc4sÛ]F¤âaôñô0èZ3¨Ã¸ËÀåw[ÝIµÍ{.óõ¿s+Ôzu¸/cÌÃößgÂÔoy\'äô^Ó¶Ë¢õÖûssäæ>VÆGÄzO;­¡¹×Ö.ë²>åèúÙeS2}ø øÝºX0­Rû,°Åaô+ås^EØÃâï¸çÀé,·À4·cäÀð÷vö4ñ\\ö°p¸5_Sü¼ozÈÅ}är¼Ünôþ¯[OûcJs^ëà|o3kW¤ø¡p§@4Ä<4!L0¬h)îÆ×»æâç77£¹¥åq¸7»ìe_áÚ2ÞÃ¼Ú»N¢à8IõÆZ.¸úY¢ävSÕ=Èê¼È2°ç¸Aå×(ãs20è_Æü®ëWÑ.ÃÚsQ£´ö¼ô\'þÛ^ó#,°sæËÞvÜw=,§t|s=ÒðuøÙïx]7iàxÛÝ¶¥çupµ[[\r\\¹j4¾Kò4hËÕ£÷\\¯Mè¹ïÝ\'ü2X«ÏªÁeea0Ê­,VYI«$Á3+c¸é<.W®Õ\\/D(áQÑsÜçPò¶¢ØÚËmWcV£ÂíÑÉ:/eF;|<<iÑ·k¡<--c¤éÚïµp<ÍÎâ]¨ËÙ.ã¢\\¬°ü=Ú±}·êî~#×vúx¨Þ7]1ã-^×îeãzÏòØ¯Ãïp¾¦,¼ì«G¹Úu7þ[ß1õOGî#åò>¨f,°e«jø»)Â/A@', 'Cash On Delivery', 'shipto', 'Azampur', '3', 1585, NULL, NULL, '3o3W1612168456', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-01 02:34:16', '2021-02-01 03:06:10', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '286', NULL, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(84, 31, 'BZh91AY&SY?Æ\0ßP\0Xø?ÿü¿ÿÿú`¡@\0P @(¤@!Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	10$M&#ô£FÒhzA 44ÈhmMêIMM\Z\0jQ½ÞÕ<¦ÒG¦SÔ](Éø>GÉÉÔèë[\rÕ«ô]ô^?CóYl=1!Þât{Rë®,Fë§K¼ÎGâ²Ñb¢)IH²)û¹Aú4lâÌ´y0y504dpnoch,W½µËq&BÍ=,l»eÇZë®YÖÊÑu6eu0r~ª73­\ZÊslÕfQ«GS&ì²³v«¿uÎ\rJZk5wÞÌ1)JXæØèTcÖ©g7µå©ga»÷|ÖÔõì³n¾[øÛ;_£ýî8ç36ÈlßÍN].B¨`Â0,³ìv½.ç­ÔØ¨)IBJ\n©ÿáE)#t=è\'CõP³æð}§yé|ßOã)EYcìQÜ£»Æ÷½-ï~¯µvYS½u=Îl>¶Nüµsjl§{±u0ìzfeAt¹£µ¡îÕñ:geÕ8ÇzÑ²*Hæ^HrsZLåw³)gsÎÃ©ë¡Ey_ KHYRrtS±t9¥E+ª¥RYÇ#*Ný&ES¥&\r©âbYu\'u¨ÑDàKD´J°äËöv7aK·YJQÅ»Õ$é*qS\n|TX¥H¥ÖnæÂqsqM$ä¢RlêÉB]e¥\nMlÃvY{Ù]£©´àæâ]¡Á­VQ«E©Ô®ì¨%±?¹£w\'Á§\'\"¤¥rapÕ£ï[£Úho9F\'	B7Rî°»Ä±Ï\nY³±v¡eH>í-a»LK3tÅÁbãÍ44ñ··4Ç+fÜ®FÃºÙ¢ÍZG%.ÆLãÌFVÙÏf¶X´¶ad¦ì®ËVlÑ³SdÃ©²í©£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑX¦S*Sày$úIÝLA)HR¢QABÜXi1(`@ÑEåTí.`¤¥4ÂÉT¼LZY	À@	 À¥)f,BêRR¥0\'\\ÝÉÔtuõ^Hkó]£EÒ©»-\r´^uæphÝgc,aµàâÁyDZ-8TqiVq7]svL®Sv«1PÑQÒ¬¶ªã¾nÒeíÚ4ààaFÍ\\cTÁ«6/¸/4ÂªK=kGþ>Bë¾¿U×|ÿá.aø¬òM_\'úM$çFÕ¼üØlÌøÙÎ|ù¾ë®û%\'Ãv¯ÿíâG£Ô´WgWg¥Ïxmä¸¹Íw4é\rô£½2¤T¥)Q,4a«j÷»d&õTÞySE|\\Ù:Bý\n90(4ÁE³wÛ:Éç|á¬6#øÈÓ;£fûÊ¦fó¼ìTïuJ4;íw®zÜîxÌ¶Ê³®TYáýæ!ø=ï\ZìE%hì{ÍZHw=ël¡ø7É8ºÜåTT²:èþ\ZÏr9ÊnSfºE*G%éÚòÉÁÁ<ÍfÏlé;f®ò¹®.á.Ùu¦¨Ù÷¸k»^iß\'Ô§×(»ÎÕe5SVÏc\rwZY¤º×\\Ý²Ù»kÙJ\nRÝÁ6²ê~S®Sá4yEJ2ëÊ´ÝÐÃ¤ºNR§òLªÌÍÓ÷x8¯4ín)0Ì¬Je8)39;WsèÑèye«é*9¼ÉÍêÛÙîx.=³Òñ*u©£bÅçaù¬ÌÒ{R]¼Ý;\'â(nacüqÀ}¤ò¢¯	Ð\n°P¦¯1JEOdðz\ZOèö²ôNä{¦³É.xNRóv®¡ÄeN§\'ÑSé75i9¦ààYÉés$þ®£Í)(©ãyç&®Öê\nÿÕ,¥*$øyÞ¹ìuybe`÷sIÁ\'7ÉòÀ{kJä¤u%ç)v^\'Ô¿ïk30ÓYbóÒäüKÍ2ÑÊGuT´ÊnÑyF²TòÏáî4# æBæ)Õ¸5c}æwÊÀøÎÃØM\'T*Z*`Ù¤pSå0ðM\Z)*iº7w¹»x:\'ªjsÐyÑwÌ¥	ß)ózX\nP¡¼ºÆîé°Î`7]+Êi¼^sñ;Èâä08RÎùfÎÉß8°r~Î!xøÔGSVKÇL§½VJMÅÐú¥#yév©Ú|Â`vpIZëÁ\"¤dö `Å\"DQQ HªÈÑdK=w3¤Û(Ùa/1Iè\'Ù4Õ=víç1ê]à¡9IÄa\ZÌK,Ç ñ^t^e-#%)ÀõN.£³vñ*]ASwIyIEÓYÂï*ÌÇ´ÀÌÝ7?çôYè³DájrQ0hý©%¤ìn¢ü[©ÁÅÒ{Qç\'\'ïf&©¨YÉ=³¬Ë¾eæn³ÌòOT4ÂyN\r\Zªlò¬æu©Ö¢êaPZ^ÌV¼å1d´óÖt¨Ëà\rEæà°(æ¨âFDD(,X?âîH§\nøÐ± ', 'Online Payment', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'nFtS1612168744', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 02:39:04', '2021-02-01 02:39:04', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6017be28a7fdb', 0, NULL, NULL),
(85, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'Hbk71612248676', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:51:16', '2021-02-02 00:51:16', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', 'we343234q333223432we3', 0, NULL, NULL),
(86, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'AZnl1612248717', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:51:57', '2021-02-02 00:51:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', 'we34323434q333223432we3', 0, NULL, NULL),
(87, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'tBqT1612248754', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:52:34', '2021-02-02 00:52:34', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34543543', 0, NULL, NULL),
(88, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ZDPP1612248895', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:54:55', '2021-02-02 00:54:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34532443543', 0, NULL, NULL),
(89, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, '4n6s1612248915', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:55:15', '2021-02-02 00:55:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '3443532443543', 0, NULL, NULL),
(90, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ZTtu1612248933', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:55:33', '2021-02-02 00:55:33', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344323532443543', 0, NULL, NULL),
(91, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'uYyY1612249019', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:57:00', '2021-02-02 00:57:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433532443543', 0, NULL, NULL),
(92, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'B6Aa1612249046', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:57:27', '2021-02-02 00:57:27', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433453532443543', 0, NULL, NULL),
(93, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'igSp1612249168', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:59:28', '2021-02-02 00:59:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433443553532443543', 0, NULL, NULL),
(94, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ja3e1612249267', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:01:07', '2021-02-02 01:01:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34432544533443553532443543', 0, NULL, NULL),
(95, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'SiW31612250228', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:17:08', '2021-02-02 01:17:08', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34432544435533443553532443543', 0, NULL, NULL),
(96, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'JWzW1612250261', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:17:41', '2021-02-02 01:17:41', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34435432544435533443553532443543', 0, NULL, NULL),
(97, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'FTRP1612250346', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:19:06', '2021-02-02 01:19:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '3443543254443553354443553532443543', 0, NULL, NULL),
(98, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'MGmc1612250409', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-02 01:20:09', '2021-02-02 01:20:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344354353532443543', 0, NULL, NULL),
(99, 31, 'BZh91AY&SYIMâ\0\n_@\0Xÿý;;õ¿ÿÿú`=ð\0\0j(SFQM4M¢§©â§©¶¤Ð©£Ô=A ÐÓ sLLiF\0\0\0&Í10¦a\0\0\0F\0\0@\0Ð\0\Z4\0sLLiF\0\0\0&U23E==DÉÚ@ÚÔô¢m#ÎD2\0ü*XëLL¶>7¾>FÆqTÆöúßi|æ÷â²ùÌ¬ÔàK¶bë¾LÇLY*(ÎUTkím³6k})ÖÝÇ¯ýK²Ý¯áØár)ô¼ÎN\\¶ªÕùúvmã}3ÉkSïµ.¶õîl÷ûºyC\'Bz:$êòëÏÍÏá\ZC¹}ÉLZxË\"b\nPkT\nJe¿ïT]xD|%\"ò$SDÀ²RIdI*$ÆdÌ.eHÏoRÌ×)S	J£*µ´U\ZVkfÌ¢Rå§yÓLJb)$­}-Lq³Ôdâ¥BbFRªË}/Ó\nmAiBjRJZYôýÕJöâõ;Z²ÏqµÛ<ï\r\rµê²ÒehÍ,,³±«Y5Ú\"nÑ&3]%ì)²ÅØ4dÉybZ)Ìk\Z±åS4ÓáfKûD{¢#z;å2#UÐ	ùb­	F!F3MÑ¿ª¢&Ã;B*%À²ai	G(a.\\7ÄFq!)ÙW¥j&8Ú2º/(DòÍ6Ze)FJ¥­$êÖ%Ã%8é¢ÓØ²éLÂbQJR¨Sª>y¯?é·ß¿Zôô^ÒQÙ±L\n\ZuÒ³\\ívò¶ÊÂ\0¬q!ÌâOk&d¨ÂQWa.¢¹Úÿïc#j\"5)p¢àb0P¤Õsý·rcy¨nÀaÏ~E.Î\Z7ärhü»Î·Q¡ÍÂy?ãªXqëS¯Âª«pw%ñìÑ½ÉCÑfÔøj·:JÉ#|,nnô\'¹;3rqêê\\»kCýhÜRíâáglºéRú±u\'Jkµ4fÎ:·Í²I)DêZËMh³Ößch[8fñóËUö]Éº\"Édô;_?|åÎªòºË9ÿ¾,ýÒàÕäô.úañÅóè¤£+·îxø%iQg´ëpo»Þéü>äJQ3FÞ1)²·©2ït²ü½z×ØÞZëÃf%± ^CÞ°pèú8à|EIP­\ZÃ{ÉÓùK7B¬Â,ðSðNH÷RûûÖgM1_jë»ÆåÉw7³ÅBdèíä×V,&2´u4>XÍ9!ªO=<Ï±Ð±ÅÞ7A19²<\Zú^gé74J|w#sRbûÂ¼°\ZtqMoØÁÀ\'4N·Ö^ÎÿßO·×<yv¼<âë·îµGÂÓ¡H»¦Îvúh×ÕTÓµ½ëdëyß|òLÄ  (\"/Hd@LÄìc¯ÈÙÙËÎº3gíó&§<\ZzË!kÂ[BÐZÔ§dí;Õ8¨Duðj³6f3	\r£T)·¡»&/«Ta*ØHQDÍüáÄn?¢Ñ8KÆ\"oaYg8²Û»éñ7wü´)øÝý\'ìáWWíºòðlÍüIØô£o\'Õö=¨öÉ3)©Kÿ¹\"(H$¦ñ\0', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'Gn7y1612333260', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:21:00', '2021-02-03 00:21:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4dsdfsfdsagfdsgdfgsdf5r', 0, NULL, NULL),
(100, 31, 'BZh91AY&SYµQB\0	ôß@\0Xÿý;;õ¿ÿÿú`\nþú\0\nU$DPB¥\ni0#À\0\0Â09¦&4À#\0\0\0ÀæÓ0\0\0\0L#b`#LÂ0\0\00I!\r4\Z2©í#ôc\"h0zM¤H&©à55<§òdh1=C×a\0½AüEy@Ô|Tñ|HþÄ¸~çÞT}¦0cð0äÉ÷\"ÁAþS¥½Á lW&XÂ¤³0iJRåhÁL?ÉÏöáÚ§s¹Ñx¥,ÃI%Tt.RdêÓ+27Jpw0ÂteÑ¥®»l?âç-­.»áï|Xy¹ïàôyã#¿ÊÂø\'æ¬§áíèñ]½<ë®ú`³°²&ÞÉìHDö»P*yÇÈ£½ìyü[÷2àzÈ\\QO¡;$HjªORebÊM(Uê¿.(Ä}E\"QPQ\Z*Ê%ÒCe¦4¥)M:2ÁM*pp²PÛÉIIªuS¤LT*)-)FL0Û-Ó\n6²ÃY²Ã)IÁ))*Hºaðá§ÜÛ¸èÛ¼¤ø9(T¢)(JJ%]8VY)sÐS¸¦TÑbÕRBÎÕ×iãÞÆLKI(RFK0ÂÊ]£³Fa2\Zi¦B$©­*e\Z`´¼@k^FÏô½§½¦æöæçMK§t¼ç{Gö^Ë1²\\m)8K¥ÓIÚGDÒ^\\Ñ6N	S	³.8M¦)ÂéIÂi¹dºY.M#S)&%)tÊ]´¹:\ZJÌKJY¤ÄÒ]2¿dê=2©$|¤\n(EHADXÊK,RR ¥L¨¤ý¥NâÌÊxd,79¹)b@YbÑ®´¥HN%°Ðé6b\rZÕ\r\n#®Ô ðcÇ¤Ùà±£CKI£L^,rÒæ%bXåsË©§£ª4ás*0»|¬0ub^*Xê£kÎåK2]±Õc\nt:.±j4¹fZ,ê»Y4Òí¨ÁË<áµ88l³rçFN©²YËË«£&,åK°²r©q¦®ºÅÓkQÃ+M58S¸ñÈç=O¡Ðt>óÎþ¥é¤1zrø@ØÞb²x¿CÚ_¹8<ç\'%ÒÖS½IIK(ó&M)J4P¥iF£j< f×f~Ïæ7ç8à?6HA{ÆÈ¼iâüÌÇ±ê~6~î£!å#´o~ÀXN=C0MÉ8;%2Nôàû¢x\'\'¬íçÖû&!ä£IÝ<\'Åe²£áxÁ\r®Úâ9± MCÀBç2ÉûÝæuOr\"©BÊ<ÄÔX\'pGxæz]×0ìg)rÀÜNeä}®ÙÖwyÞs¼î~FS,òÊK´ÒÊp¦Ü=KÍíuÊec0è§á6ÜOû;§s2))\ntfÅNq°ö69Ì²c­Ä.q\Z\rc\r*áç~ÉæÌz^p(¡nòÜ6ÞjÆ¹à5]íOAsæÒf¦&ç¹,Ra;\'Tú\'f\r	`îuEÁè1Úá°¶*Xéx¡\"Pp9[Ú=´.*õk¡§¨rÍÁrj¢930º/cÚ?&çxÜ8zOYâ`8=NµzÂàC\'.Ô÷\'¾m=rM¥ò^Y4Óè,Ñ14e\'Ò²bv\'õSj:5->&	æ55:%¤ìMÍexZRóÎï:M&ÒIQxy$±?ÓSeM©[Ø4±òæÊÇhðl ðÖD¨TÚd}Ü ùÌ§jS%8KÒ<0ÀÀúÓcÅâB%Ï3Þ@zÂÕâýË!!Ì\0ëv.ÖfðOÍOÔü¾FCÉ<éã<K&¡ælôÃÌ4ïÅ¦ñ¤lXF4!´ìÔfÅìi§}âô54¼=O¬cbÎò4!\"DFQiTd\ZmÞò¸;ÅÒ<æÃ nÌ9ãh= èxç;ÖÆÂ¶l\\Pâ­ÂÙ³CCÍN3äB¶ñ¡ Áá;S¢]8mB¥(ÌíJ(Lè:å,³S¢tM²ÓÌ&¡Õ)¨oqÂZv¿Öù½±;É=HzÓé/Øi4ÒéÚõÂéwWªYö0x÷âYZqpøÈM©¥Ä¤,ñ9M£ó<§ÉîC«Ú~Iã>/8 Â+UâîH§\nª0H@', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'bIHJ1612333823', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:30:24', '2021-02-03 00:30:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsfgdsfsd', 0, NULL, NULL),
(101, 31, 'BZh91AY&SYz,m\0	îß@\0Xÿý;;õ¿ÿÿú`\nÞú\0\n\n(H)JÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F4ÄÀF`\0\0aB©å2m\ZS&i4õÚjz T Ú=©é §êM©éD\r\Z4`FGÂÂzéà28èq\"§Ø~D0ð©RaõFø>óLqÄY °P`âÞàÆÐ>¬W&XÂ¤³Ü4¥)r%\Z0dÓôd³ðnìS±ÕÂñJ]K%8tQÁtÊ\'FYµ)¹Õ\\4µ×lÃò\\å²Òë½ÿ3àÃÄËÚþ/©ÛéaJ{Îó¾sVSsïóáÕvÚx.»â³ÊRx¹6{§´O7bOÖ>r×¹Ü§ÞïzßC-ÑäùÅawUDrò#ÍFÊØebJRÍ,X¤Ò^«óYaAñ)ÂÑP6(wHJ)\n(Ê¥2á»4©¹ºÉ²ÃÉLÒMS¢r¤LT*)-)FL0ÝÅôÂË,7¥©JMÉIIREÔÙËíe:²í)=å\rÊRQ%%	ID¡ËÍÕ,¹âS©Fªu]v^7]ê\\dÁd´$i4³,¥Ú=\Z3	 ÓM0äÌ,¢¨5¥L°ÃL(¤½ò./<L\Z{Úhiíoni\ros¸6N²ó¶Fâö^Ë1±J.6JMÒétÒv&%ÑÂi/.h&rTÁºle¾é²a2L.¦KK¥éqÒ7e2RiIºY2L¦Ébpje+Ra,l³I¤ºe0ýÑC=	Nå\0\0a!!Q%>Ì­IE%.´YPRË&TR~òÄ¥0J:ìS½ITÄM¬d²ÊIÂ¤]I,AQ2°%BT!XE·#^p°ué$:C¶ö\'Ù*SgsI±Þ±£CKI£L^,rÒæ%bXåsuË©§kGE7iºæTavÜ¬0tb^*Xè£eç\ZåK2]±Ñc\nppºÆMirÌ´YÑw,³i¥Û(ÁË<á²¶,Ú\\á,69ef[Î]2hÒÎT»\'*\Z`ºë¬]6XºØ9Zh¹QÕG¹â¥§öÈ÷¾×9ë¹÷¦Ðó#ñx~X¢½ÉÌü×½SÌQüàJp~ÒªJJYGdØX±JQ¢(%RwÈOËÉ6ö{Ó&^	¤û¤`x	xÓ½þÌÇæó¿;>n£$6ÏúÜîCÞ8-ÂãW8dÃ$íMÏµäNôî&Äõ£´úÚbÔi:ÎòÉÞö,²RiömêJCÓ8]®ÈxF5áàhÒâ=$\n!\0¢*zÁ 1^0°pyï¦l©ÕÜ¥;Âs/#ü7Cc¤ýE#ä;N¯ÐÊ`QeIvYMÔÙ»Éy¶Ë®S+Ø¥7&é²m\'Ê>OµÒÞ00B:³bÌ§8ØzÌ¥cfÎe3½¬ð°¸Î áb¡axñ­û¿GfcÚBóqEwEÃa±=sü»fë(ìJ]æ%ÏÅ¤úÚN N#Ìò0hKh>¡Ô9´:NÀ}+Èü¢ õ.ô DJí!ê{¬pvÃ½^¢Ãs­ìt4ó@Ù¸.MA\0¢G!ÄLéÑ²NÌ©ïO÷1=Iåé~Ê=ÉAÀv¯P@ô!Ä®¡é·ÜÀÓæ%åH]=¥&&L¤þ&\'DöOYu6QÃRÓàa0SS¡QäÚk+ÂÒùiÄÒi-)4CXgZè`ææR·°iè&ÌþsÒ.N©äGI¡SdÈö¸)Ø-ã¨CÎAç`¸á°``}Ï­Þï0Ðs±ï@z½ó,:B\nJRJÙ;cI3Ew§þSàò~ZÆ·y^P¡Ô;<Ãpì\ZBwéi¼i\0¡Ñ\Zët´&­´´õYiÄðx)Õ)ÃNTÉôO¥*T(bÎò4!\"DFQiTd\ZlÞëpxÅÄv»	6M¤Âp<¦Sto?aîK¢Ù±J¶öÍ\rFÊqS8B¤¸ÊYÃ¾v\'	tÝ²7I#ÙQ,5\'3Äé²ÍLNØt¨fa5H|Hóên¡GÔÍàxÜu¼ÜDÈ0,6Fä,619\Z?Váö?2ÊÐøÄ@óZhÖù·0BPÒ9ô`C¸éÄèøQí{NáAVªÿÅÜN$§K@', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'oaxR1612333911', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:31:54', '2021-02-03 00:31:54', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsfgfasddsfsd', 0, NULL, NULL),
(102, 31, 'BZh91AY&SYóø\"\0\n8_@\0Xÿý;;õ¿ÿÿú`>\0*¡J¡4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$i¨ÊÐÔÓhj\'6\"44zSG©§¨$M§£F¦LMAÐi4Éö](:ñßGäÕGêsàTó2(Â?2ÇâaÌÉø¢ÍTêopchÃÍ0©,Ç67R(á¹elYF[4RÍy»c,?&S£­¥â»\r&,Jrp£tÊ\'\r2³#jn²l0rik®ÙÅse¥×{~wÐÃÀËì}ó¬ÈìùRÓ¸ÄîêÊn~?7\'Zí´ï]wÔ³E¤ðs6yOQ\'ÌèSæòÇµOÅÜñ}l·¼XQôºÖ:¢HZeIé0²\nRÌ¬PÒ¤Uê­ú®¸ÁCê)Â4T\rÂ¤TÒC¦J,¥)L97`Â¦77Y(\\±.)Ip¦ÅI4,©£&nËbúaFË,MéfÅêRrRRTu6aòø2ÑÖnÓ°¤÷¢J))$¤¤JJ%\r)Ésu]Í<\nu4hµT³­uÚaxÜ»Î¸ÉÉi%\nI¦aK´uhÌ ÓM0÷85¨*\nl©¦lÁh¼¡E%ïK0Ã/ÍiöKJ\Zt··4ÇÍ7¸¸66ÎZ46-E¬³¢ãd¤Ý.M\'DÐ¤º9&v&\rºe2J7M·¦é²`e0])7M0,K%Òã	¤nÊe0¤Ò72L¦Ébr52©06Jl»dÌÙ.L?áyDWµ @EHAÅ>ì­IE%.´YPRK&TR}%J`)Ü¤ª^I«&T¦K$ÝHÌIR0¤¨¦uE\n\"	*Â,,ê6bQ`âÖ¨jËÚD}Ò¥7v´Ë\Z4,Òòe(Ó&W\\Ä¬K×7\\ºv4p¦í7\\Ê.ÛÃKÁL-,p£eç-sRÌa,p±.ärabæÊ4¹c-p»,Å\ZivÊ0sg)¹»bÍ¥ÎLslØäÊÎmÜ§7²h³K¹©N.4Áu×Xºl±un£¦ÅEu¬y<SÌYÏÞâr?3µüÓ ÒôúC[x{ð;ê9ú=Os?,§¬Qý	ÞË¥9ANÅ%%,£¼dØX±E(ÑH¥d£\nQ²é	ÞÙy&ÓõäÉz`>L|ÆÒf`6w¾F\'Åé|lý^3\r£sþa9Þt; ¸B<ÊîuJd¹ø=îNÒlO¤¨ì>×øm\ZN¹ÜY;¥RÊRÍ>ý¤:P]/µÈsc@Cì°dÐ÷D2\'±EIÁBÊ;ÉaÂq<\nsÐâít±ã6Á¸&ÀQÇÌQò¾S°ë~ÆS\\§É)0Ù²ÊiM½Í¶]rXÌä¤¢lPCq¡xæñ»\\ÆGH6lYâ6mÉcfÎ4½¬ØëaÎ^Q{¨h63P°À¼w#âMºJzVY&=xK¥ÓÓ>çDÙ£Ï=%yÀ¹ñi?ÓSiìKXN©Âz§¥)/),òw\'Dê`úOcÜ÷\"üb ðNô EJì1àûÚ8;BáÞ¯Ãs±÷:ZzG0lÜ)eN¤á§\rrC2§¹>pÜ9ûÎóè`oyN#ä^ÑO	&SØÙ¤ôÊ)4{IydÑN%4LM\"Iõ,pâaL(äÔ´÷L\'Èjjp`z©6Êð´¤=§{°å4KJM%FeáÚo%ðjlÐ/·°icÔ­P|]¢ÀØ´ôÄP©²dz§±<ÇÆe:!Ân¤©Ìù¥$á<RÌtRÆÏÑý³ÊyH;_\0õÀ ù»ß©aÈ @!h`|óµ9º4¢»÷SÞñ~ÎOsÛ#O\'lå (xÔÙÞ7¨i)áMãHØ°LhCÚ0àÐ^¶wQNÞ\\r52.5¼;ñB\n<Ð!!DU¦\"HEhb¡Üìowí6>TÂ&Ï{äIê\'!ã2£yæ<érVÀÞÙ¡¡Ìû)Ô¦ nBË¥HÜ<gDäMÛ#xT9ÎiEÉRsK,ÔÄäaÄ¤óÃ3	¨pÖëë7P£íNüû_êN´í<GÔ^#¨Òi¥Ó£Å\rG­ üØ<ã¹ñ,­È¸~s ¢-4l|ÍMÌ£Ø=Ðí:ÄuAÿ\n=h Â+Mþ.äp¡!çñD', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'pHB61612334363', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:39:23', '2021-02-03 00:39:23', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsdfsasfgfasddsfsd', 0, NULL, NULL),
(103, 31, 'BZh91AY&SY%X\rÉ\0\n8_@\0Xÿý;;õ¿ÿÿú`>\0RDAIJÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F4ÄÀF`\0\0aA\'¤ÉµO2Sò)å4\Z4ÈÑ2 T!DÓ\"y\Zj6LÐGÂè@èæè~ø?4ûT~Çö?¤Ãü¡Fú>&ÄY¢âø§6÷6ñbº2Æ%èÆàÀRåÛQÌ£bÌ2Ù¢hÿfí°üÚeN¶Rì40²Y)Ã¦T9´ÊÌ©ºÊu°ÂpËºí~«-.»çùC9)Øø<ýçYÙÜÂùÎÓ¶r«)¹ñõðë]¶ë®÷¬ÁgQe)<îFÏTô\"zÝ*zÇ¸£±êyø»^/©ãÁî}Âîµ¨Ò#Ø¤ÙRz,³+%4©z«~Ë®0b÷EBaI\Z*ÅÑR*BéE!S%R¦7`ÃM*nn²P¹b\\S4Tæ¤Ü©&Å\"¡bÒdÃ\rÙl_L(Ùeô³bÃu)HÜ$]Ma|¿S¬ÝaFÊ{J(T¢JJD¤¢Pä§«ÚÃE0|;\n64ZªHYØºí0¼p»ÁqÒJ&L0Âhé£2&RM4ÃYD)PTÖ2Ã\r0Z/(QIÊ¥eèÌ´øK44ò··4ÇcfÝ\r³8¶`¢öYQq²RnK¦¢hR]&v&\rºe2J7M·¦é²`e0])7M0,K%Òã	¤nÊe0¤Ò72L¦Ébpje+Ra,lÙvÉ²]49!Í#DWÉ @EHAÅ~V$¢Z,¨)F%*)>Ä¥0J8)ÍNÕ%SM¬R\rÌIR0¤¨XE¨QHAVa«¡®%¹ÕÐeí\"I>ùR¼&ÇjÆ4¼J4ÉâÇ\r.bV%K®]M;\Z9©»M×2£¶ä°ÁÍx)¥j6^q®JYì%kRîX¹².XËE×re£M.ÙFLòÃe77lY´¹Ã&¶8eg&í¦×dÑfrS,.4Áu×Xºl±un£ÓEâ¢ºÖ7d)ë?¹õ;§Þy?azdqù 9ÛÏ«NÕº§ÿKÚÏSØ(û	Þ¥8>JJYGxÉ°±bQ¢J&ÉF£e²½²òM§í=©.ôÒ|e\'¤¤©öqvÃ©¤¼õOwÛ=sð¼ýç[¤;öGñÖÆ©çnuJd¹ù<	ÚBlO¤¨ì=§¹¹\r``<Ï@Pô(¶*RîN¹Ý9\'Rv%è.rOÇ@(@ÐoXGhàîv=.#Î<Æ¤!¨Ü\rÃ`(¼Ý\rsÊQæyÃ­üL\n6YrÒ\r,¦Ù»Áy¶Ë®S+)(qØÁÄq^ üÞg¥É¼``y³bÌ§`Øx6%8©`ÚÑ;ÂòÜÆQÑê~É¨îÙô©¡ecÙº]=ïtM>Iè(è»ÊrçêÒ¦&ÓåKXN©Ìî{F\r4%ÄåÔ|ØB ²>È¨<G7z\"¥ø ÀHñ|¼pzBáÞ¯Ãs«àò4÷Þ`Ät(YK*u\'4nÛ$áÊÓñnvÃÚ}çô\0Þ0 úNç#`õ/æC­[Ç÷¸kGx6hpºs,Ñ14e\'½dÄÃz\'0£¥§¸Âa;MNf	Gu&ÓY^Îw»&IiI¤¨Ì¼<òXSb¦É:I3)-±=Y=Û;óäëO9È\n&G¥ÄùSÊ~³)Ñc°¹æ=Ð¤(1>G°ÕÞï<ç(Néý|Å\'ý©û®(RÚP|ÓÈ\ZÑ]©ÿ÷<_ÃµóÈÑ¼ÕôçpPò¡³¼n@ÒS×MãHØ°&lhC¼,Å¡9\r4í¢ÓÞõ0ó.ìJraÍL\\ø%J$*RÏY\Z\"D#(´ÄB ²T!\0[Ý¢äÏ#ÌCdÙîw$ôã2£yå=IaBÍ9+`olÐÐètS\0ÚZK¥HÜ<gDá.¶Fð©$r\"Ò%&¤å<ç<¥jbp&Ã¤ù!Ô9¥!õ${:ÍÔ(û£÷}ÏÕêIÖIà÷ê4Béqå;°ØÌú\Zs°v¿ÊÐûKð# ;Q\n\"ÓF¯ÌÍ¹vCl¤<9HÂä!0ÓAÿ¹\"(H¬ä', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'bjFe1612334516', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:41:57', '2021-02-03 00:41:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsffdsfsdfsdafasdffsdfsasfgfasddsfsd', 0, NULL, NULL),
(104, 86, 'BZh91AY&SYg4ól\0_P\0Xø?[ü¿ÿÿú`ß}\0\0HB\nP(¡	s\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&À`\00\0L`À$DÉM©ä¦ySÊ~Á©ê¡f¨dzM¤&©èi¦M4¦MLm)£%Ð2@ØSüQó,<Ñ\"Y-#ñÀ;þaÈÕv6ÜÅv+H\\³Oå*^MØ?E×\\³ÉÒrdÉL%_5a£3Fk0Úºa6dÉfÍ}7hQi¢hv¿+&MSIÜÎZN³°ÑôÅÅÑí{_©èpu8¹Ùá-àQì#ÅÓÈï8GØx\n(Gk¬±ÑcÒ\\~jf2>RÉ¨£ÄÈ;=æc%IÈ©öEDw% Ø´æà´Ê¸,Ñ±Út2;Fo­ðY}Øa*v*I&éPh`°s9eÐÝ*(¤¤Tl5sbrS5KM\nMÍÒ\'Yt±-*`£EI¢jZIi*.ÃfM×65jjYCP¹)JMVjÙÙ©JOQh¡4Yd)BÌhÃG¨¼â`É¹D´hZ\rTF­FKÏSË\Z\Z4T¡v®»%>MÓ)EjE3aÍG2¬±¤)R%K,dsÙk±bæ¦9´ÐÓÚààÓ4ÝÉÅ°îlÐÐ]5,`$a5a)«°Ñ¥Ú³jÄÐÕ0Â*j»ZfÉ É0L4fÂP¥Yqm2&mE.h,e0¬¥ÓDÍdÉ2}iå$:I;TbH¢!a¥aÊ%!\n)¢!¥.)C!ep¥JF0ABQ!aF\\Í»m6R¡¢(¼ÍvMJ£fLÌØ3\\ÄÙªÆ®Íî\rËÊ83Zp(pQÁÎÌ.lÍéå6h`ÂjK©³BÌÖY£fÍ³·0£WMÛ²Õ20Õfeðªn¼ÍzRYS¼òûçÛ=¤ÿOdÔë2s}È¨ûQévÙdWqÀØâ;þì¼Ðæ½%>ÓÚ³sLßzäÉI2RQDÍ¢ÎÙ	i1?´÷»XyJ=á(YÁMK<_cðyw<hÙ£Êö§iw³Î»[2Bu:¸Ìî8Êß¼>\'óX¹J=lHw=e®|Mg9Û7rÖ\'ìÎzQÆSTÎ\nJE*GøÒlÙ:3ÉÕ;&n§RÂÍeÖTÉ&gèl9.R=~ê{¥y)¢<ÏS\rTÎ`£3SQäûÍ¡¹JRdMÛ¦Óò.Qü;_#£AÙ±fSccBæÇÔÙÈ|äZlZW)S¶Su<YN.9Ivn÷|ßIQØ}Fë=Ë¦3Ï8)±båæ\'¸]¤Ñ8Ï3ë,»àNOJ|EÄu¯\'¡BX±âù£Ç\0ä*v±;g®m-<\\Eåã\nrTâàÕTbTõ¿É0ýÆÃtOÍæOS£Ñ7fì;d~ËJaèxOkÅÔ;åMV\\zÉv¡u\'%Æ¤©£$YywÖ]À»¡ÁÁ Þj.ßÔÁ.ØlSÜÙ9¸Ü_2aHh;Õñ¸éYäE\"G\"àjxÇPæbA±ÌLÏi´£Þlx8£OÞÔ!þ<ÂÀ~ g.\\ð§s^px%%9NêaªÐ¤øQ72Z.o¼©a ê`;Úiêrz\rg¤é2:tüä1~tLF11	\"\n4A`ÅÎ×G¡ÁÜ²2v$ó$ï´i8½tShØK¶h¡ûxí³âs8¥.0aÐì4.Ñ«X©ª-(¢ÉÞowrÌ§Àe6M§O<2MaÁIïÅ$ÑÌ£äï·q¤qhL%\'aÝ0ùÈo9ÞâÊò\ráÝ5!Àó:4ÁÔ`?³°AÒ#à(ùüç¡a¢ ÿÅÜN$Í<Û\0', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'nz9S1612336116', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '0151569148066', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-03 01:08:37', '2021-02-03 01:08:37', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601a4bf468f77', 0, NULL, NULL),
(105, 104, 'BZh91AY&SY²âT\0{ßP\0Xø?ÛþD¿ÿÿú`¿Ð\0\0Rª\0E\nD©PUÀ&d`bba0!¦&À&d`bba0!¦&À&d`bba0!¦&À&d`bba0!¦&	ªHBjjyÉíOTÏTh=C\0zOSL¤DÓ@L`¦§¤04Ò<§©±Gï?öh{-#ÿVÉbÄþ¦,-\'öÙ~IøÎ.kuÂÅ¶Wà±Wò|Þwô]xÌÌÆ9ÌÙbü-eß0þói´ØÔü§Aâ8LbÓtÃmM§ÜÄêNç%w®kÒÝNEç[­Çbáp´»9´üæÉÇtç5e4-3Òzï£äÆpp¼W{ã;-:iwNIÌòNóÀî]n\ZF×¦x¿[½{r÷4×Ýt3IÜmÝ2ø,ø*QÐX±_\r/È÷cò<WØ}g¨ÃÄô¼\'©£ç6&Á³ä{Ï<Òê0ûÚáõ\\°Ë|Ö&óVbÙ=¢ÉKT<í4¶ÊáÚå6[¶tbÔÚm2}¦Ç¬ösï<N±ö´Û½»ví÷Zª^iSÏ:Í#Rò8=Ðô\Z+±e0Å`m8cÑ7\\mÊims2;åî¸¶Æa®Y]jêh¹bkÕ5KRdÞn»§¤á¿¹?rk±ÜîrOÖlÒy&,«\'ÉÉÚjvóxï[WqÄæeK#Ö±5L*èÔÔ¦L&U©Òm9ÍçIÕàyÎKsªs5£(¹Îq=§°q~§\'%¹½±Ðèq21-§I´Úm8ûÇAê½\'UÑau¬KS¤ë7vkîzÍÝQ©1q:M¦Ë¬õ¹&Çù\\ãÐê¶]#*ß¬É¦Ó\')Þ±vZZ-.åºÝibæ¶Z\\.kØ½Ke¡hò\\©æa»ëi7qÎaÉuU¬Ýl·\\*X¶]ì[åÐn·\'E²éás¥ÀÜhn¹®Kq²ÝÐÞ¸MMÄç:N\'\n¹Nt²ëaºçKRân³°æ9.KyØ8/ïSÖJô^Ý¼\nÉ¦¥o6öÕ5,XbÒÔÔÄ°Å[M.,\r-ÍÓPÒa6z&ªÌRÈ6ÁªÉe`Ä-`ÕºÁLÔÕS& Å22y×Yßá<Éã<Ú¤vª#û,f1Úq6^Sãé©ºr®éÊm[®³¤ÉÝ6^Sy¼ÓçÝ9.Óu;NsK²`í1;NSS¢uÍ¬å4¹L&Æ§YfcÈâii[ÌW>z[µÖaµÒi¦F&n»M.s¬ë6tîMæ\'I»²Çtît«Þt¬pµ78f;¦Ëy¶L«L\\9ùÿºûÅ÷½+ù>+Ìu>×Eø¿k½Kì~õ¯J¾îó¤×àÿÁé\\×Ãß»ü¿÷;Ç©}ævø,ð\\ò[LM]\'Ú²^Ip°q2,VVCæ´{TZ\r×Ì¿ÒzæóÁb|Oè±Zv¹­Æ§u?û\'ùã<g½i¥ûgßO¾p·«eéBvY8O4ù4b0õÆx§ð9Ï½d÷We;ßÚO¸ûZG)â±>Ên©î°ÐK÷{ªö©w­CØ¹O%;f.ë<Ë\"Évãø=KØ§bõNâ¼ëÐ¹O<óÍS¢Újbâ§#úGbÙ1>eüÖA©ö¬M§¶|f¦Ns\'9î)¼çu\\çUIÌÙu:Íü«Ü¼¼ËÂdÄ¼É+¤;pö§ß-«+ëÜôÎ³°dë\r¦ËiÖËöMvL©´çWæ}&TÒÏÖ²wLªp»ç²o<iÊ|\'¥~Sü,§ê7OÞ{O¦mVóä¼\'µv9O*i0ùMÈÝ}$Ús\\Ë½{\'ì4[¬OµWùªö/Ü­¢úL<è½Òb1SRRêdbÂbù×Ñ;NKií\'Åè¯Bù.«Kã;É²ÚÌ|í:NS¤[¬_)ú-×o?ê; ~/bø&+\'¦{tå<A?òhÒÂ7éð_©ñaïZL.SaòUºÚtixMEX¹Î\"ÔÙm]£¤Ùx.&NA¼Þj^Ñq8ÜÛK\"ámVÓK&ÓÚ	É\Z\'Å¡-M#º¯%ü}O%û¡æ^ä:Éâu;\'¾¾ÙºòW;NÉôÌ+ªú¡i{ëð»çä\ZóÏSÙ,^¹á?­²÷¦X²®Kcdø/	ó»ç:\\L©âN÷Í&²Ñð«JÔç<¥z¦ó¬Ô\'×:Ì-ÊÚ4ºõ45/)Í{O-.kß;OÙ>iÎ|fO|ÊõCñ¦L+ûhMLÍ,FSÉ5,\nY\rL¡3)ËÎ»¾v¹¥8^¯p<gEÍs²¼VÉ-Ó\'PÚ.ËSU~työ]åÖ{fMô2jdîOxÎÓiÑÖu¦Rw¯\Zibbh¹.åÝ´öMNÎ7Zº¥w¬é8[I;L«êIúd¹ÏÄû§û>¬í<Ê§¼\rÆãK ñKK{úOñ®bñ^µý[ýÏy¹qNÁæSiá2V<í:­ÇÏ2[®é^¥þ§ïU^ÂÓõO®,Á&#S4þ.äp¡!eÅ¨', 'Online Payment', 'shipto', 'Azampur', '7', 5190, NULL, NULL, '8Usx1612352595', 'Pending', 'shaun@ed.com', 'shaun', 'Bangladesh', '01775391091', 'sfcs', 'sdf', 'sfs', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'fs', 'ten', '10', 'pending', '2021-02-03 05:43:15', '2021-02-03 05:43:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '506', '601a8c5319490', 0, NULL, NULL),
(106, 104, 'BZh91AY&SYÊ}3\0¼_@\0ø+öD¿ïÿúP½l#bîÎtä!(õ\Zb=FF\0Ð\0\0Ð(&@Ðh4Ð@4\0\"Jy&z&i Sj2\r\0\0\0\0\0\0\0\"A1õ2cB \04Ñ4ýR\nkQ{ø|F6uÙÚoßf#.=dë¸­QÖBÂÍ_{©Û#6¸:ÔÐ÷\'\rKBQ	©Õ¿áÍ®ÅFåÃÓqK5:y;êz\ZH¥à¯\"|\0Ðæ\nQ¤Ðk/¤çNp\r#°¥èãÅ,²t)G¦¢)Þ\"äµ¨R(RFAX¦øCÊ~FwX¶\'h¶\'x$OADÁ6°nyÞ2ÎÒ¡Wn[O9fr]Þx5ï!JÝÂI\"2L;ÌÁøú)#ÜÆáâ`cbHRÇÊ9GN2ÌåMZ.ò¨õZÌHÇÅ©°d¨G0t	¼¬!Ò,ºóÈÒáÇ@ö(øÐØH]P©¢IÈ]É£	\n qÆJH¤X¤At!QI´ÍÅûµ;û©$txÆk*ÈßJY«¤\ZÅäs½¬ÝË{csv7¦ÃPæ©YatÄY%(ªjn\rÜÖ±èÛbÍÍ¶H\"ÚäÉÙ,N¿IÐvcC{ÿ/Øé6:i3à`ä|Iþú;z+}ìðE\Z Á´«nÌQ6¦£ÐÂy¨ÁÁhÚsàLB$â¹N§«MÆpÖ(\\F~âs<$v·ÎÌG&¥L\Z¸bþTèÊæ46/¸>ð½ÃN¦¦âºë%¢Ô¹a¡Ä(ý®f[[í÷¢õFc¨²UD±[¸­esý=æ§LÀ¤JCÒî!+ö2FGôÞ;¿\Zï*íÄýÿ¡¨=\ZãÐÇÎº¨:HLô	ddXHqí.Ðv=FÒIu±Éb!ª¸ÁO,TÂß#yäXÇ0%7£3Å«dLgbg\0Ðº~ÆTÜ¼	óèuØc\nÇ¤E@YÔS+DDar%Æ(¬¦L¨Rr¢ rfâKB¢ Q/!Hp,-Ã¢ÝÌYðÓ2 8$mÄáQGÍ\"¤ÄÉFOD`â {áFe:â&ôhac¢Ü:àÜo|!æÆR¤Eð2#K#¢³ôçsN7 Ä!\'ª\"Æ0Â)Dd¨° ²5gÔy89i1­\\ÅEì-FY $IÜ$\">ø3là;s©®%b÷M#3US%Ê(L²°d³È¡0ª0×¹.Ì2Ôg×Ð¶4<Á	MMFKdG´ØaíÀB°âÑfD\rVky´CÊp!³fÄd	 JâîH§\nO¦b ', 'Online Payment', 'shipto', 'Azampur', '1', 1880, NULL, NULL, 'Wrk51612352878', 'Paid', 'shaun@ed.com', 'shaun', 'Bangladesh', '01775391091', 'sfcs', 'h', 'h', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-02-03 05:47:58', '2021-02-03 05:47:58', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '198', '601a8d6e36a90', 0, NULL, NULL),
(107, 104, 'BZh91AY&SYYÊ\0$_P\0Xø;Kü¿ÿÿú`=ð2Ä\n9¦&\0\0\0\0\0	SS)é¡I\rÐ\r4ÐÐ\0æ\0L\0L\0`\0&	5%M@2\04\0Ðæ\0L\0L\0`\0&	& ÓDòL*=¡óI õ,C8:Ü ¾@\n\nÆÿÂÅÊ-yF¿©u!PúLÉjÀiR®3óf$Þ¦¬QÃZQcZÆ7ÞL®2«Ñl²ÐkªÄ¦Òÿqêýw{¡êÇ<¶r+ÈHÄvDg3Ìñ;Îµ6àAØH|ÊF¼\r%w<\na×nòöj5qqLA	nÈ.Ó®Èµ!ÁÀê8ï<%tÐTjhm$FÓ\ZhbÖiEVj\\aeÒT%AÁ\0YPcl¾Ô6IªÕlQ³¦¿Òd&\näBÁ¨¬ÞèfI\\(W! µè©+¡À©{°l&ó3ÈÄ²¨Æ\"Ö¦ÑFUn ¸dÚfì¨£¥Æ`AÀ¡B\\\n,Hn$VL!1ºPjUOSP\\¦ô§kU*^ÔM2&$)kÖ¢¶\0Â©p¥IWVµUU{×Bà¾Á½\0Hl\neZP6P­QL\\QE6´ ÈÀÉ\nH°CcÜbôÔÛ¤$,A\0|ÆY®ú,ëb`Ä»A[ûð;ÌçY@Ú\Zi\ZhÄ9mX¹ Î±rÓk^\rc3Z3¦/j¹#wÎ¿qÈs³äyË> qéÆaáxò3*º¸ÊíÒ2Y«~ÞªÒ«Lbµãh¡ñ;¶Óê3ò>C6;ÑAØ|Oú|ÿcù2[Äø/÷RN¼Ø:0ê]OcÌkö!#6å­zº§¡¸Ë0Ò÷±ÚÇY46-ò:CÕcÚjo-®°0Ê¥cèbFHÅÈ?·ø¿\\;»ðø£\rM$\n.Pg\Z©®t#æjp2,4Ì$Èà¼æBXü	.¼ÎâH7\'Î¦{é M¹q>¿a­ç¨¡ñ:Ò©ÌÓ±Û|ç$;n\\3:ýä?´õ¯\0g¢÷%Òç$11ç½&t;½\'háCí1,qn¡o#vªiäÿoèp·1±õv[yÀ^@0)ÙÌé v0¼H{BnµÄËÕ$ìX×QX* ãJÒ`h©*`rÍÄ¬Ë\n¥íÜ0þÒÝÚ-BÈM2õð\r3ô1F?ÑÏÈÔäY(6bþ÷96ÂÄs4ÙeF¡°íFC=i¾gªB!*B2Èd(:\r+H Ý\\ìÙîí·GØûÑäbñJ¤AFA%	$ÚqÙ³\"»Òä*¯qîf.Ù@I/T!ztòp*¦ñ;Mr`FÃUc#)ã9\0©Ä0Y*P0FÆ¿èÀ¾ÑiYä]rDPâSê>¾ó8Y\rõ´fb@Ö_å&¸L0\nJA©þ.äp¡ 6³8', 'Cash On Delivery', 'shipto', 'Azampur', '1', 135, NULL, NULL, 'TvYz1612353048', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01775391091', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'pending', '2021-02-03 05:50:48', '2021-02-03 05:50:48', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(108, 102, 'BZh91AY&SYoÕ¬\0$_P\0Xø;Kü¿ÿÿú`=ð©L± iÀÀ\0&\0`ÔÊzhTCÐF £L9¦&\0\0\0\0\0	MIS@Ð \r\04 9¦&\0\0\0\0\0	DDÐ$ôÉ<£S£C!LÒh=KÀÎ£ÀD÷(/ñCÁüßqbFK^¯Ä:ÉÉh}&dµ`4©WEø³mSK«E¯ÖXV±§úÊÆãÖ¤Lìµ\Zó\\@l6û`3ã»Ò}gEåüò\0gApHÄë3<OÄî7bÔØ3y\"CæT*wBîw}¥Õh5øKbH[2Í:åRÎ£¡^ã¼XMI!¦ÂDh\r1¦-i~Uf¥¦Ql%BT®ÈêmÁÓ&,HeV¬Cbs3!0V\"6\rEfÔ·C2Jâ1ATìJ@÷	¾Aò yw{ô%¶Å¦i°fÁ[H,&Ä7LÛØ²RPj9°(@ËARÅÄÒHPUdÉ¢\"\Z¡CÅäÔÔ)¢E=)ÚáUE\nº¦DÄ.µj+¯K(êJ²ºê*ªûWBÞ¾Á¹\0Hl\neZP6P­QL\\QE6´ ÈÀÉ\nH°CcÚ`ôÔÙ¤$,\0|ÆY®ê+Øëq0b] Å-íèæs¬ mM4M´bÄË¶Î,\\JgX¹iµ¯±LÉ­ÌSAµ\\ÂÂ8Î¯qÌtçÌó6.|A£Ê;LÃºòÑàfUup,Ø>ó¤b³W~¬ÜªÒ«LbºÑ°@@P÷»)õù;QAÈ÷¹óùáÚ¤¹~U(¤ÞSF@k©ð.8,Æ¾D#¼b¦C8ëAn©Þ^hm1Ì4}î;ïK&\r\r øAæ¸ôµÖ/&T®>°d\\CþÉëóÃ³¿$a©¤QAEÒ\nLãU5Ï â>¦¦óá¦b)&G§2ÀgàIeâv`@ô´x¾u3ÝMnãÀúý·b¼èvÊ§3N&NíÐ3Pí	±`Ìëõû§w<¬I.8¡=i3¡Ûè¸! 3}\rç¤À±âÜ¡n£sU4Äñÿ7B?Ë\rÒp·1±õr1»q¼^P@0)ËÓ@ä@ÂÑ!è	°Ör-TD¼ºª½P¡êVEISm%f\\@T*¤R8+hÃý3Ko`²ê\"i¨^sýè°¸i©0÷í~§ä ØuýÜâwÛ$æiÊ-C#±ó¦o\"ÙÎª_}ÌFV©Ç è4¬p lAc^®Ëº>OÚ\0c|P´\"b2É(H° 41&ÔLNYpWr\\EUê/µÅÙ(	%àD/#Û&f\\\n©¼Ã\\fÅ÷¦ª¸ÄÆxENa@*`°ÖcâÑ^ÅäÀ¶Á§a~9âYqDPàSê>½äó8Xõ´f`@Õô^áå&¸L0\nJA©þ.äp¡ Þ«X', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'l0hT1612419471', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:17:52', '2021-02-04 00:17:52', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b917eea258', 0, NULL, NULL),
(109, 102, 'BZh91AY&SYÎ¬o\0ßPXø?þ¿ïÿú`ß|(P(!Í12dÑÁ14À&i&&	¦0`ÀsLL4a0LM0	C`FbdÉ£	biL#0Ôz£i¤e0Ñêm\0\0õ	êh4\n Ôiôb´ Çª@ÍpçqùQûÑ\"Y,¯ÀOð7õÌàØèáË½ñKÉm;ØÚê`>XQÔd¥â2d¹üØË\rZ3YfÕÌÃ	³&K6h»ÍssBM&Qåâ¥`Ä©Tç);YKIÐt?wÎGæë{~Çss{±}òÞ¤\"<-<ÎGÌúO#¤¢Ìu:]é.KQï9Kµ=åÑrc\'´Àq*#Ð$ÍËO\Z7³oY¢Ì.¥®ueÓ°â{^æ¥þ,0ÃÖHjI¾T\Zè:èjRR*N\Z·vØF´eÔ5@¶b95T¦¤©Rínlffj¡¾YarR\",Ñ«	«S ÷ÊbR}RE	JB)5f»V\Z¼Lçn&%F¥ ÁDhÕdýU/Øe,hY£EIJfºë°¦ÆS¥0Éæ(Äè,g\nTRÌY°ì\Zá,³aÈÇ¦\Zc£m9tv6;hh2$0$\\=|ÔQjÉ)«°Õ¥Ú3jÄÐÕ0Â*j»ZfÉ É0L4fÂR,ºë3hÉ3j(atÃAc)e.&lØ&IÜòHuÙ:T`J!((\\4¬7Ä HQME-£)ÐPX@3ÊPÈZ¸¥JF0AQJFa¹á7m8Ãq¶\rQEÞÁx×dÑª6dÌÍ³5ÌM©Òé`ºíf77°^T½ÓyCzìÖo6asfl×L)³C3R]Mf²ÍÛ6lÍÜÜaF­)³\Z&ó\rVf_\n¦åækÒUOIçð\\ýSÂf}ïk9ú6CåO²qVã5»\\fIÕèø¿6Ã}ÏÕ·á)ð=9¡5~\n;%$ÉRfÑg\\´íu°ózOï(Y½MKOØûÿ¸êÚ9é2àmì/ ud8:ÉÌæ>gaÂTn~2ðúÏÅbfã(äçbC±óì5óªnqëâÎzÂST¦õ%\"#xûÎÉ6llçÍ9§LÍÌæXY¬ºÊ$ÌÿFÃ©rÊOÉOd¢î×zÊh¦×­Éªg0Q©¨ýßktÙJR\"nnM§è\\£á7<®®ÀA¶Ëe:mh^?nÔ>rÓbÒ¸ÊRðe8:ØqìÞtÿo9QÒzaâ{L<\'tÞ¦n<ÁvDá;^ÒÉK½Äâõ\'Ò(ñ|£èDÁ¬å\n%HY\rO¡%O	äñg.ä9N¶\'\\ù¦ÒÓÅÀ^^0§N\ríYµF%OòSàl7\"v§yJ)Ôå6dè:d|,$Ã¾y<G)bU$Ä»PºãRTÑ,¼»k.íeGpá æ8¹ÁtÁ2ØÙL,#iÄ\Z#yÔ¶AÖ¹ÙhùÚ/[¼]¤á\"¢¦³ÁüK¼SfjJlÙ?«©gå2iÍ;ñ)ùÎRÃ½JOys×8<c6©¢y:8J<RV\r¯+Ì`ì¬rRXØk«%Ç¤i;¥¥¥=OS{ù;Ú<TïSÝxÆ	ÑH4ÉDhX1H#\0ch ! £DQ-Üë=mîÅ¥\'\"d¹«F;×Ayu6èÊ^YdîN{MóWjR§Ë´jÖ*CtãQdÎn®ô,ÊwSdØjpíS	¬7©;ÇÊhç(þSVç	Þ´Z&	fÛ;%ß)N×TþËÉ?#´ÂeS¹PZq¥¥&¬Kêæ;¢=Óì(óódHAB2ÿrE8PÎ¬o', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'uScw1612419609', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:20:09', '2021-02-04 00:20:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b920677e48', 0, NULL, NULL),
(110, 102, 'BZh91AY&SYV«¼ó\0ßPXø?þ¿ïÿú`ß|\0HB@ *@4ÄÉFÄÓ\00F`9¦&L0&&À!0#Í12dÑÁ14À&i&&	¦0`À\"DQ¨Æ\0\04\0Ô\Z\0\n @IéÄ´z¡é©Ð7iø?bÃ¶$K%øû\r¼¡ô75:Ü9cp6±^äë¹Óµ®êYe¦J]ã&H`hæra£3Fk0Ú¹0ÂlÉÍ.ò\\ÜÐ¢ÓI¡Òtú¬0qjÅ\'[)i9ÎGîòYÐ(øº~Çcs{±}yo:GèGiÀò>³ÎtQ9.rÅyË£¹qì=Ç%íEqt\\¡ÖÉì0Jó%I&¥¤&å§ÕFömë4YÔµÎ¨ºò³í{ù0ÃoY\"u*I&Ò ÔÈ´9ÎtCT¨¢Rt0ÕÎÄä¦jÐ¦ãrQèòÒLh©4MKI-%R¥Û0ÜØÌÌÙC|²Âä¥*E4Y£VV¦Hú¥JO²Qh¡)HR&¬×jÃWÎq24p(d1£VQõ_¬ÊXÐ³F0Ñu×aM¦%K)a	È£±)R%K,³QÎ5áD,³QÂÇu¦G\Zc­¶ºÝMÆÚ\Z¦éÌ	7R2MY%5av\Z³»FmX\Z¦EMWkLÙ4&ÉØJE]qm2&mE.h,e0¬¥ÓDÍdÉ2{þIÛ\'B)DB#\n\n+\r±(!SDBKhÊB4ñ2®)RÀ`R¡D@Q!lwMç\0l7éPÑ]¬»&%Q³&flM®blÕNC×k4i¹½ò¤ìÖÊÔof³y³3fºd¹M0¡êlÐ³5hÄÞÙ³flææã\n5lÉMÑ7j³2øU7/3^ªyÏ/|ûgìé3ñ{YÏÑ´ü¢:}Óû7­Øã2N7Éñl9OÁú¶ü¥=ç­g$çM_ÔÉI2T¢¤´YÕ!-&\'Ê{]L<¥sûÊoSFÓÂ{_{·äôÝ`ÛGÈ\\\r¼åácñ¨yÖp¼>ÓóX¸Ê;ÌHu¾ÁÏ=f³tÍÎ#b|Ï¡%5IºoRR)R7ÄëfÉÔÎzg)Ñ3rrXY¬ºÊ$ÌÿFÃ©rÝ\'ÁO\\¢îÇzÊh¦Ç¡Éªg0Q©¨ýß{tÙJR\"nnM§è\\£ß9Þ\'GPAÛe²eíºÇºÛ¬yCé-6-+©Ó)¹OS©.ÍçvÏöòÁ÷\'­tÃÂqvÍêfèX£Áyyëi4N±í,»ÜN/¡>±GçÄI<\ZÎèQ*BÈj{Tð§9wpä*u1:§¦m-<\\åã\nqTàÞÕTbTô¾saü\räNÄï)E:]ÓfNs¢G½bÉRL;óÔðqÒÅ&«.<Iv¡u\'Æ¤©£$YywÖ]ØÉGppá ã7¹ÁtÁ2ØÙL,qÄÎXd$ôÈ¼¥¡õ·§ÍÕ,?É\'S¼]á\"¢¦³ÁüK¼SfjJ|Ù?«¥gîD´å;Iò)ñÒÃ½JO¨¹è¹ÅTÑI=Nqá£ÌÑ¬ßx3<¤ ø :1ÉIc`Q¦l=R¤íóZi>÷òw´x©Þ§ºÅH4ÉDhX1H#\0ch ! £DQ-ØèúÝk#\'BNâd«F;×Ayu6èÊ^YdíNkMóWbRÓeÚ5k!ºqJ(²g7M×ye;Æ)²l58JvC)ÖÔãçI4sGtÕ¹Âw¤ìÂY¢vBÎ¹wÎS±Ó?²òOØa2Å)Ú¨-8ÍÒÒV#|ÑÆuzäQìöNÒ2$ Â!DAÿrE8PV«¼ó', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'L7ZJ1612419738', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:22:18', '2021-02-04 00:22:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b928629326', 0, NULL, NULL),
(111, 102, 'BZh91AY&SYC\0#_P\0Xø?[ü¿ïÿú`=¾©,°¥ `Ld0\0À\0\0JjdÐHhP\r¨M4dPæ4À&C\00L\0\0I*h\04\0i4\0@\ZÓ\0\0Á0\0\0\"&Ä5\'¤ôÈÔÐÈimF,\n\\3¨ð!r`@((Æbø>÷Äéº1Øç)eW(tpÒw)ÕXêUÑF_Û0&Õ3º±DZý)EkZ|äÆÃ ²±µA«c]W\Z\ZËy@gï³¡ýxe¢òþ%x\03´G0Hæo2>g¬ð7bÐÜl g\"@ïG+<\n×^òáK©1ä$,ñq©\rÒ¡Ôd]Þz\'Á¡) ±Rhhk$EàÓ\Zhb×KõÐÌw2,3ÅjPUI* Ë,(OÓ´e8	!©kÃ^åPJkÖ	m`Õ«6¥»L+Å\nÅ.!^­Wm¤L H]ÞQb­hV!Z\\&Ä5»aM\\ÍuÀaB±$,\\Hk$V¤<0Õ(D5ááâÒ	ï7ÅÚ d]î¦¶\n´5\Z-0É;¸DÚµ\Zn!Ú,*QÔeuÔ0UUï_4µyÖP\0m!°4EbJ¢¢H6h¸ÈQE\Z±EB1%¨¢\nlØö<ô5ç	\0@! Òk¶ö:É0b] ÅÖÍ;Ìé6fDFf1beÚ®,XJgX±I¥-qLhB/1lzHðhä7)ÕÀæ?&ÓÂIä*XøW¨ÈyîM9nÏðç.\Z÷ÝL¶¶ÚÕLªÓ®´l>§e<Æo?1\Z¨ ä~Gè|¾±IÏ%ì©E&àÚjLØu¦´¸Þ²\ZÄýGï Wf3ºßÜ@óY¸Ç0×ú\\v#!Þ&¦\r\rP{áÕqÜhm.ÓH¼eR¸þXÉ¹Õýã\'l;;péLêâ.//3Úb`Øb6ÕE+àHÏi°ë1.\Zf\"dpZt!,z,¼Îò\nX¢Ñn©«5Ïéý	¶²óÊíøÛ`g¢I(}á6,<H\n}bÏ±y>ËÀI.8¡<gC»Ñq<C0fêMæ\nµÐµ£Vo7boâA¬#`4ao]cÝÄÂ»\r¢óN=qÓ0ä@Âøô\nÞµâeªrWÂ£*¯T(A¾ú¤ÀÑRTÀåIY\n¥÷\nGÅm}LÛÌZºÅeª¿Rz,.\Zg¸Á{öGng©A¡¼_AÿÇaSÀ°Ë´ÊÊ­-1Ø¸²7TÛ~FV©Ç è4¬o lAc¯O;º>oÔ1Æ¢J,±\"ÑDB@J\ZLjM\'=[áÚUs/µÎPKÀ%$\\V¸5ðp*¦ï9á6/½4LÔdÆ&3×;TÁ`¬Á(£S]ëìÀ¶±\\ñÈíKBTTQeÁ¼°øn>ñ8\n¬Fø´fb@Õô^C)Æ87Æ_¿A¨ñw$S	0è`', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'wH2r1612419843', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:24:03', '2021-02-04 00:24:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b92f296ce3', 0, NULL, NULL),
(112, 102, 'BZh91AY&SYÞt¾}\0ßP\0Xø?ÿü¿ÿÿú`¡@\0P\0P\n)s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"IFÕDÈÓLSM\Z4Ð4@h$@DÓF	LôIáM¦#ôeOQt n?\'àø\'GWbØhþ_ïñùåe°ôÄÕìQK®¸²|Ú8>.+®t]ær?©JJEX¢¥¨ìFÎ,ËI7cæö6ÐÅwsë9®$À³OC.¹s±u×,ìehº2ºK9?EÃVº©Nm¬Ê5hèÃ	»,¬ÝªïÙsRÍ]ç¿øK0Ä¥)cc©Qb¥Ü{¥¦ïÙò[SÙ²Í½¾;÷¶xßù<ÇdÓ§#X®C¯rdjso»çB¨`Â0Ë,þNç©Þúº(© ¡IJþR9Cé@´I: ²\'ÐûOÒù?¯ñ5)4YcêQþ7Áéo{ôûe<SÜæÃédë?ÓW1ö&Êx;WS×©fY4K;Jí_q×;(æ©Åà´G¬¤Ê9Ö9eÎöae,ïyØtzèQE&WÜ³Sii2Q`ªNNªv®ÓTRºT²*K2Ý#*.8L<,§%JL)âbXxXÊN	Ä´KIT©³L¹¯gkv»u¥[¸)ÍQ:Ê*aO¹EJT]fîl\'K)Å4QJbQ³2Ñy(K¬²¡IªíXlË/+´slàäâhpaÅ«EhÑjsrâÆêaf#ïâïe»ëc£RR,90Ã8jÑ÷­Õí49Np&Y\nPÝK¸.Âï\ZÏªS¦T³3wv­áeH?Â°àÃ¼Ì»KôBâÍÆc3N\Zt7·4Ç3fÜÎ\rÓ¤¼±f­#c&qæ#+lã³[,Z[E0²SvWe«AK¶hÙ©²aTÙvÔÑ£)²a«F]eÆ\Z5ehØPÂé¢ÆftÕ4h¬MÓ))õI!ä>rwÓJRDaABÜXi(`@Ñ!JåTî.`¤¥4ÂÉTº7SDR$B#@!$)	B¥±ª\nTIJ!JÀw\'C«³¥ä°?Ì¤uRí\Z.MÙhhÄÝ¢ó³3Fë;YdË,Õ¯Ê$âÑiÄ¨â£J³ºë´hºerµeÊU©»+h®;áví&YnÙ£INlÙÅÁf5Lj³bø+óL*¤³Ö´ãâ.»éõ]wËñxÇ¼£mÄù.£;Ð\\f/yhÉùæ±cÉÄà-ö6wx¤²ÆpÏmä¸ÁÍw4ë\rò£Á2¤FFÀ¸Ä¸¬N#eAÀÀ5ÎüàNS\"ó©æ(ÙÖQÌ{HD!°sÈM.¡½³ÂÄq>/ÁãëGñNIÞ4ôÏëÕ¼ð;U<%\Z¨ö¼=Dïw¼f[?²³²TYïÿ©~Æ»IZ;eç{VïÁÝ(~\rçlòN.Ç9U,Ê?v³Ür£Ù%.¥%JÉzw<²ppO3Y³Û:Îé«ª<®k¸K¶]iª6}î\'bîç¥Üf`¤xIô)ôÊ.óµYMTÕ³ØÃ]åÖi.µ×7l¥¶nÁÜá6R¤Á7pM§¬ºìá8MgÍeÒ§ Ìºò­7u0ë.©ügFUfféû=î+Í;L3+§N\neLÎNåÜäº4zYgèùÊo#òsz§6ç÷{õÓg¶z^%NÅ4q,SØ¼í?ÊÌÍ\'¹E%Û¹ÇK¸p70±þ<Àï(Ã©8WÂm<P¡R\nÕæ)H©ì÷¡¤û^Ö^Ô©ÞtÖy%Ï|å/7jè1©ÕQÑÉÁ£tbTâùÍÍZNi£÷8rz\\É?£¡æTñ¼óWsuêRJ}f^w®{X¤ÙfX=ÄÜÒe°aIÍña¼¥p%¥åÚÄÃù)ó»/è_÷µNi¬Ä±yér~%æhÍå#ÎºÎ*Ze7h¼£YLªygîÊm\r	°Gu¹\nBõnHðxOí<÷N¨ÃØM\'IT´TÁ³Iá>ÆaïM\Z)*yº7x9»W{ÝgªjÐyÑwÈ¥\\ðù=,z(glPg{YÞAwHÓh¼øjvvÍ\Z½©g³glðX9?W¼}ÕÆTÕñÅ)ðf&U¥qt>HÝï´Ó\rºs¾Qá16HoÉJô`R2zÐ0b\"F(Æ(ÐDD$UdhÁ2%Ó¬ï\ZåÜ]v¤ôêj»vóõ.õ¨baNRqF³Ë\'±è<WgKHÉJp=SèâlÝ¼JPTÝÖ^RQtÖbp»Ê³1í037MÆÏ÷SûVz!¬Ñ8CL\'Ø?ZIi;[¨¢¿ÇªpquÔyÉÁIâ|ªjrOD,ì2ðGú¬ó<Õ\r0fFª<«9v(ºT³¯9LfY-<Ç5ób^rÂ^hé(øÎq&¤dHAB2Åþ.äp¡!¼é|ú', 'Online Payment', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'n0d51612420528', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:35:29', '2021-02-04 00:35:29', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b959dc5e8c', 0, NULL, NULL),
(113, 102, 'BZh91AY&SY^8ÓÁ\0#_P\0Xø?[ü¿ïÿú`=ð\0tË¢k `Ld0\0À\0\0Jje=L*iíHzQ õ¨Ð\0Pæ4À&C\00L\0\0IH\0 Ñé\r\0\04 9M0	À\0L\0\0\" MM4$Ù4¦©å=A¡èÒÔzKK ¦`u!îPlâé(Tdµô¿\".ë$A¡þ¦d­`7Ô«¢ã4&õ7Ú±D_RJÖ4¼úÉêç#Ü¤Mn¶\Zí±Àâ_Ô|/¸ÿg=5Îã:ê$\0Ï!\0Ôèj}OèvbØì83© yøWz¶¾ej1/bb·æ´ëµ!ÁÄäT=¥¼ÏyäÄhAÐ\\©668Å1h\r1¦.5Ó\rfFn7&Qd	PeÆ!ÎÎ	¶\'x¾(±¨%5ðLÁ6°jõÒþ&¤ÈÅ\nä ÀÄ_UØP±k0l&Ó3f\\ª ÆZ\"¢ÔeÄbLÌÛ©«¯@Aø(@ËARå Á®Ê\rXeXxÆA=f°bU¢EgÕ¸UQB¥íDÑ2µëQ[\0Â©p¥IWVµ\rU}Ëê¹/PäÊ\0\r¤6¦¹c@Lq¢ITTIÆ¬X@ÖR,B1, JF$Ø!±ñ4{ö8o   Ðm5åE,$-.ÐZ«fÈær¾C\ZóBâ¢óK-2íØB	LêØS/kZdË\"X-hÅ®Ei#Á8ÛOÏø5;ä#¨ä¼åÃÉRiÎ\\Á¹ºÏPÌ`¸©vÑ§5j´ªÓ­xâ  (~ÇßÆ£9Ôaçz(:ÐþçÓæw\\TÌø¯J);¸u7°ö¶ÇÈ±Íj5üCñ VÞ3¯\nçí \'¡©ÍAºäèc1U\"è	\rpê;ak<Ócm¶ªV?C@à2F.¡öÉéãîý<©¢Â±A0`=OFÃ#mTYÊÐù3äq;L\ZfE$Èà¼ìBZó$ºõ<e5Kv|ñ <÷¶oØaÚ âo:]£q¦ÒêvPFç¤Ìîy	ø\r§CzÎ!WâúARK»ÙEÃ@!¬\ZË7f;BÑÞ³V FþD\ZrP¹¯±öw\ZWÈ^°@0)Ýà{O-áÔ\"Cî	ÀÖù	ª\"IÕ`UBñR´\Z*J³+yb¡T¿¤p,®C±ª\\»Å»´YL½CØ%¥ý§ãÆ<w\n¥Ç1~ÃÿÇB½°©ï$ð5ñ5º«K`ïFFx&vmNÃÙNPï`deaJäd(<Îdr.uÝ÷÷ÛÉ÷¿4~`Æ<t-T)`EaV2\"\rPÒ`ÄRq2wîç¯$»UÞb÷5| $ J*I»7èàUMàêoÒnc	¤dÞ c ,dÌöÅO\0 4Z£è#s^åû°/ÀgÇ©êx¥Ð!**(ºèæOî>Ì?3¡@ªÈßsAó$\rbâBæ!Ã¸@BÛp£ H5Sþ.äp¡ ¼q§', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'ojPN1612422868', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 01:14:28', '2021-02-04 01:14:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b9ebeaeed0', 0, NULL, NULL),
(114, 105, 'BZh91AY&SYz\"HÍ\0®ßP\0Xø?ÿü¿ÿÿú`¿ \0\0\n\nB@\n H#0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`baH$\'êGm!OSF\0dÐCC@© h\'£@\Z)½\'ªy5<£zð§¤ºP7á÷¾GÉÍÔëv-ìÕú.þÐü[<Hw¸:Þ¥ºë\'ðÑÉòpºéÉgRï#ø,¤±,T©JJE,±bJÙ(?F3-$Þ7LM8·7±´f+½±²Û4Í<Ìm;YNÆf\Z©³õQ¹5k©Ñ³UF­L0²ÊÍÚ®ý95)i¬ÕÜx¾yf¥,tluØ£>K:8ì_C©iaÚpýºÛÓêraËÎÕòãÄäñ?N¯õö»»ºrs\\è§úu6ú\'Õ=OZKY))R,²ÎnÇû;ç×Sbn ¥%\n*H(RR¤Cý\n)IEÐú-NÃõP³÷zß9ä;ß»âëð1ìQbE.£¹GwÌ÷¼íï~¯±vYS½u=>¦N¹ùµtbl§{µu0ízfc*4K<,ÉCÙ«âuìÑ:+zÑ*Hè^HstZLåY]e,îyXtzhQE*\ZÏ¶H)\"KHY$©IÃ©NÅãzR¤sJWJEIf[²ÄeSÀïÙqÊ`ñ,²Õ)0åe(ÊºQÁI-%R§l:4³µ»\n]ËrRpá:+*G\\¨æ¦Tø¨±*©ºÎN¦Ôá3&ê)E)yF®rÑy(K¬²¡IªíXlË/¥Ú:6rsphraÃV(ÒhtsáÕÂÌFp³ÒîjáÍ«àÆîn\n9áÍa÷6ë}sØr:N%8h®&Y\nPä¥Ü.Âîå¬)f&ÏíBÊ*}º6[Z©Ó2í.²]Í¥¦\ZronifÍ7¹ÛfL%.ÖgAfË3*h»g¶²Å¥´S%5evZ´»f&EMmMj2K&\Z´a))eÖ\\a£VY&.j,faYMSFÄÝ2RÅ$<Gñ%à¤)Q)ÜP·)Ñ(aSDB4_©á.`¤¥4ÂÉTº´²¡J*¢(ª¢U)	B¥BÊRR¥.\'dÝÙÑÖv:­$5\"~RÖ¥ÙjºU7e¡£vÎÌÎM¬íe,0³V¼0^P\Z-8*8QÃJ³u×7hÑtÊnÕy2¡¢Öµº¦ÕªºÍ2Ý»F(Ù»&ìY80ÕfÅðW\"ÎH\'àúbÇU<`¸ä(Òâù>y¤(Ñú·\r:O0GÛuß\\¤ønÕì_ÿ	¤y½E|Ë:»x*\\÷Þ)KûtN¸ÙÿJ,w¦T*¥*%µam÷BhÐú7ÞTÑ_F_¬ûTIÔQí>HÀ¢Ð|Bd&wë7¶|,Gäò¾Pç¤z0iÉ;£f÷8ËÛó¼íTïuJ4;Qëw®z	Üî|Æ[?=\'d¨³Ûýæ!÷½ïv\"´vÊ=æ­$;õÃ(}íçlñNªRdvQüµÄtÝæÌ9©u),¥Hs^99\'¬ÙësÃ5u£Æè¸»»eÖ£gÜàì]áyÞ3#¾=Ê}R¼­VSU5lõ0×yu+Iuî¹»e-³vÙJRÝÉ6êÙ)Êr<áeÒ§0Ìºò­7uuË¤ç*}3©Yº~ÏkæâÊÄ©Ä§%2¦g7wI.ñºÑÐ\ZO©©ÈØS¾pÆ·|ÐG±M)ê^vÌÍ\'±E%ÛÍÓ¶yÕ\rÌ,0<ë~SÆ ºÌÎ !`¡O\"6Qê×¤þ¯[/0ë*w#Ù5)sÛ9ËÍÚº#:ÕNnM£§ânjÒtMÉÈ³ÎèIýG0QEGÌòÎm^ê\nÿå,¥*$øy^êvYbe`ösIÁ\'GÉòÈ{kJæ¤u%ç9v^¹~GÜÖfa:&³ÅçÍøe£7*ë8RÓ)»Eå\ZÊeSÇ?c¸ÒY\ZO¦©9CZ`üÚ»S¾~3½XÖ=DÙçuHáKEL4NSÜùL=©£E%Où£w{£µwµÔë¨ZvO1åEß¹K>¾S÷yØOj¥\råÖ7vÎ£#¼ê\\àdSLÂóÜG;­,ïlíóoòäb>4Ä©«%ãL§½VJMÅÐ÷JFóÏ--(ÓNÃÞ18f\'dõ/8Æ!ì¥Jd¢4¤H1DB¢«P¢(È{Ë¨Ú(\rÒÂ^íIæ\'×4Õ<ÓvíçAè]à¡9ÉÀÂ5Y=O1à¼ë<ZFJSè9.\r·Rê\nºåå%Mf\'+¼k3³3tÜlþtÕg\ZÍ:)ÍDÂ}üÒKIÚÝEø6=\\õ£ÊNJOÞÌMSP³y¡ga|Ê?9ºÏ#Å=ÓYäa94j©³Æ³¡Ø§b©Ai{1XZóÆeÓÈtX}²£/ùÙsDüÅ=ÏÅ+ç}R\n¢X°ÅÜN$3@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'H9ph1612597123', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01775391092', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'declined', '2021-02-06 13:38:43', '2021-02-11 05:35:41', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(115, 102, 'BZh91AY&SYqÔ{-\0._P\0Xø;Kü¿ÿÿú`]÷@*c(\r$.9¦&\0\0\0\0\0	PMTÑ´£@êhÐP\0æ\0L\0L\0`\0&ÈõÔ@Ð\0\0\0iÀÀ\0&\0`2&@\rO)õ3(h	£ORÀRð)hsÄ!ìPk*Þg¹ñ¾-yF¿q«$C%eòZ@iBÖºÈ÷\'KB¬Bfe³oøskbÒÍÇrI3²ÖXÓb$a°Ú_ì=hÈ=ÛûN¬µÔÕ\"@ôä	}\ræÐñ<\rÃµm âH|\nOHSâvÃ}eJAöKbHH[5Af]fÎõðÆ%dÐThfk$F`Ó\ZhbÒÒ¬ÚXbÈÉ2a* Å2ãï2ÃÑ©4@¼_\Zcr¨%5ù&B`¬D l\ZÍ©nfdÈQ[á#zwÎ¹&Z¨=»¾9ÍUÀÁ¢0ÂFmU¸ÂlIÍ²P8¨ò®óL01ÄA\nXãYCã#R%PÚÔRSPñt\nø¬Af E0øZ	HFHºTQ\"®dJÀ(C¤X1$,Pe%\'ÌäO¸8\0ªl¹B\nL\0þ\r@Û!¡±J©²\n, jFJ)B1$,Y$&\"Ù	¡mU_\"!çt&Y¢ Í:A.íÐ;Õm­\0Õ1¡CJjFaÌÕ:J\nQ×*ZÓ5Á¬ç5FÛ¦3FaD[`x6rå8tÎsyî;Ë, óÎ;ÃÂå£ÈÌªèàX3+°~\'8ÉgîÈ7*´ªÓ°´l=vÊ|Æ~§´PcKpr¼ú|Ù²q£Ù=I¾HG9q¡ÔÑ@\ZõÓÌkÞB<F*j×®:y³Ä¹¡´Ë0ÒöÀâÇt²50mÔÓ¡ctàs55ëªX#Ø2F.µÿ?Àdõz!ÙÛ«1W\nÀ¹p¹fÂãmH¯ucÞHÏ#Y¼ÈÀi\nIÁiÌ±øY}âH6\'Ê¦{© N|ÔkqÒPöÎéTäiÖjxn¤pMgWâ@Psê\r CùàvòËàLÂÛ1î_,¸4o¡¼í1 ôæJ£Ñê¾Evù4\n}ÃÉâu.Ccèì2Ãq¼^p@0)ÙÈç v0´HzEBlµËU$êW\'ª£*®¨PêVEISm%f`@T*h¤p,ÑÜÍ-¼E« Y	¦Z¡sðO5ò0é-Kz±V×¸¾´h\ZÃøOã!cµ Kär4Õ£KXj8£!Íä[3yÑKÂ<!C+\nTeÈPs\ZV8A¶ ±Ù«¿ßcâO:*°\"Æ0B(QDB@Z#aÍ5óµi/h­ÃUÞ^Ö3@I/T!ylõ¸SxMyMÝ4FµðTÅbY­(F¦½KÍm?n%òÌæXBTTQeÖ¡À§Ì}[Èàp$(²êh Ì´¢9O1¬½°Ø!ò2P%=¹\"(H8ê=', 'Cash On Delivery', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'WffJ1612851730', 'Pending', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', '3', 'ciyy', '444', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-02-09 12:22:10', '2021-02-11 05:35:36', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(116, 102, 'BZh91AY&SYÉJ×,\0_P\0Xø?[ü¿ÿÿú`ÿ}\0\n\0¥B`\00\0L`À0\0L\0L&	0`\0&L\0&Â0Ì\0&\0	a\0D&(ÉÉé\Z`LÔ=C@$ @IzSF6§¤òAµ.ÃùE2Ã¾HÉiÁ;Ã»`k3æqnàÆÐ;X®ÑØÖ2L4üeKÆçê²Ê}ZN,4VÎ²ÑÅ£5L¨¦®L02d³f¿eÍÍ\n-4M¯Ú¥`ÄÁÅªu\ZNæË\'3¡«öµaEÑÚö½¯ôdô¸9³fâän2Üòò@(öë@´ú§#èz¬¢ÈææXè±â\\|Ìd{ÎK%ÚâêÌã	¡Ä¯µQÉH6-$:Ö}ë¢0²;ÓwÞ§Ú­Ë¬º¶jX¨ÉPh\\°pÎgCoJ))\'F9°d©ÊhPÞoJ!a¥n1\"â03VB4nc<Í,¤ß)R¡rP¥H¦«M[0Ù©JO½(´P,²¡IfK´a£ÌìL·KÊÔ¼(6e<×Äí,hhÑRRÚ.ºìÔø63L¥©dÍ5IÌ£$èXÒ©¥Ù®»Gcæ&R,ÈX±¡M44í·nÓ[4àâæl;¥ÆQÁFf)Y$¤nÑE&¬%3av\Z3»VmX\Z¦EMWkLÙ4&ÉØJ²ë.0Í£&DÍ¨¡Ó\r¦ºh³bl&GHìT7ò¶Ta!ëBÜ±JÃ\\JBSDBK4`42îY*Å¢1KÈTJ(¢]Q*\nTJ!Jç6säê9¹ZHoIòRì0£fLÌØ4\\ÄÙª.»6{ÛÊ½ÓyCzìÖo6asfl×LSfÌ3QzVË\Z)Ë4bolÙ³6ssq\Z¶flÅy5ª_\n¦åÜÅ¡ê\rÖñÓyì8ÜáÐbè~H9þ§ð¿cE¾/)wöaÿ_å¸uM{%>óØ³u3E;%$ÉIE6:ä%¤»Öô¥Í(|X\ZHb\\ió½oÑ×Úð9.iygtü#ðe0rt7ÊdqPì\'\'#ñ3;£sôÜ£ÐêbC¹ë,çÜk:§\\Üâ:\'üg=Há)ªMÓz©\rãò;£fÉØÎyÎS¤ÍÉÉaf²ë*d3õ6EKD~ê{ew¼VSE4w¼læ\n355GâÝ6Râ¤Èiñ.QøÎs¶nÈ6,Êq,m4.<íG`s:ÆTëÜ§)ÁØÃfô¼\'ÍûJiàzÏjéâðÔÍÑb5åæ\'´]¤Ñ8N÷ò,»ÞN/R}Â¬{É¤ð¤,¹\ZÊ(òcÍ»Àq:Øs×6nòñ8ªpojÍª1*zßYÅ0ýÆÃr\'ÉÞ%(§cÑ73t:äÅ%I0ô<g±æä=2Å&«.=dÄ»PºãRTÑ,¼»k.ðe*d·h7Ìæ-LÃbXãdðfIO²Eå-\rÉÒPÿÓNQ7»IºEEM\rgóy¦ÌÔ?¬Ù?\'5Nãiàs#NÛ¾ð!úx¢Ãæ!\0fÁAã8¼\Z&JIÔ8=Pß(ñJ;%8ÎÉÚ¹¤ uArcIa°e\Z\Z&	¾ÓL7)ÅÔi9¢(kÁ=4LF10 ÂX1FD³âru\ZO!BdèÀ\'¦jÑ¤àOJè/.¦Ò]KË,W¡9Þp<´ØôÎMË´jÖ*C|åQdÎn®îYñ¦É°Ôá)á¦XoR{Öhê(ø=3Vç	äÀZ&	fá0î|å;Ýsâ¼äwL£yJx*N3t´¤ÕøJ.uÊp÷<*2$ Â!DAÈ»)ÂJV¹`', 'Online Payment', 'shipto', 'Azampur', '3', 460, NULL, NULL, 'A7jp1612852152', 'Pending', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', '3', 'ggg', '555', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'processing', '2021-02-09 12:29:12', '2021-02-11 05:35:29', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60222b9d97bc2', 0, NULL, NULL),
(117, 102, 'BZh91AY&SYë(x\0¸ßP\0Xø?ÿþÞ¿ÿÿú`\rÄ\n\0  (IEPP¥*%*8ÉM014` Ñ¦\08ÉM014` Ñ¦\08ÉM014` Ñ¦\08ÉM014` Ñ¦\0$¢j4©èÉ<Ô\ZQ£@\0hiêP*H2LÓ&Èâ =A¤ÒâF\"Fø¿Ûä|Më`Éø3w®ù¯çê²Ø:É¡¬âv¨¥×\\Y>l&µ×MK7.élÞ²Ä±R)RE,±bJWð7ì\ZØ¥×\nRiR¤²s]ã¹Eê?P×æã¾¤lØ(?¸@²v|ivÜ.ìÆÅÐ³Óö0t6píðvrÓ7¾-Û¡§\ZtìÙ÷¶¢PX^fæ;:ü²ìXâYeÎ)¡¨ÚÞ\\Ü±ÉE6ë_2©ÆÁÁ5Ïåý81±¾Î³Òô¶²mìføî×Ï69Ú[}5kjðÞ­~ISÍLTÙ.Tÿ¦9nÓÆîR)k%\nT¥K,³cÒåyZÜÒ¡)P¡B¤\"(À\"£ð ¯`±¤z$yû(Yý;³¤èOÆßà9LX¤²ËÊ9sr¾¦÷âûbÅK:T§sk¡Å,ý¶±4)Òàº8;ÌiL¨È].dð1Ìh°òföY4³YFå­5ºV$íE&JbD6P{=4:ËUíìXó£ì¡Eª9Ö{­ª Ü¨%Ê)ÃJ4l(HE#xøxySr8!	Q¥`áÓ»uÃ¹òh°\Z<¦ÐX±b0F)àS@à¢à pFR1ÃÙ»ÓQç0x\ZÙ)v£ZêR­8§¥GÌD_9#ô(#4=Û½<:½È½0bhòil,SJ1Ä4Yá»§#ÍÎOÈp\\åØÉJQ.C¹Ù§\Z\"£v­ßIè:è¹ÑøMÏq®0HÁzÓíÛ7~£~çcÐCÚsÅ£¦ÉÐ\\¢cìFÏM9CÞä(àÃ£ã.lh\Z`	ôeÓWoQáÍfÇÀÇ<\rçd3f6lÝÁÈPt5(Ð\\± È¸à\\±(Øìl¹ØJ6£)»|4C%Í¾QCMd\ZB;8láËcgN]ÛÃºn,\rÛ;Ç.ÂB»³èXÜ².Ý¦ÀáÙÝÃ»»d.ì\rìÀY\rË\\4Ã\nzÑÓ!:cûEÐ*T%JB§!i¶h0úéhÄ4ÄlácÌ.441FÌBFc È#mKPG1¢Q#1¦(ÆbFà=ÃOOÓÕ(9úÂ	$ðh³çu´4åÀå¸iÙ°wÀpäÓOsÛ´líÃp.Í#.d§qÓvÃ§-bá4lEÃE	\rKÍ;Òo°©jiÝÀrØÃ§M8x°wtàtÞänìÓ»70+T¹\nª¤YÜ²~oºïWm×|ýÇ¹Ü³ÍñwI·zÆnö£ô`ÒÆ}Ön>\"L[Ûywîú·SDò/ù¿§)x»VçY¿Áám,xØ¿=A¯¬©püàÂTÔÿF\r­L1À!(¸6Kdõ:2d\ZOiS)_{lÆo?|ßrÏkÜ¨¢ÊS|KíÂe\ròzJþðûØÿ\"wäXÛ\'T.Zué=Ó\\èN\n:\rÅFIÂGs¡çÁRS°9Ó2i½iã2¤³Ïñ0ïnr®Â(VS¤òNi\"NiêXNBÞÒqåîtÈ(^ðó°{Uè#¤{æ\rR¥J$Ø½6¹åtFÉ°uM&§qÀä3$jn%æ¢óBòÆq4=ÍgÜ10JNÐ°´ZTô/:¦rÒ;1ÙÝùÛ»jFÅÈX¶.\\lnB·(ÑpøAÈpÆÈÆ1p!ÃÊ°Sñ8Öj2OÒð£bF%åÊ±¦qMåâ6}&æ*³L?­s.C@A¸`%Â!á³ñ¶zÊÊuÎÏÞ|Êkù6»&Öù</,¼4OÖão2ä²S¶\\»OÕuéEBóI¤p:gaRóÿ>¤;¡ÈûE±~Q>wAñ#´\0Ê®´òMs#Øñ±qrÈîÅÏ!°X4ìxqºáÁìðåÒ·¿ð4²6§ÄÔY±ÖÛûÛÁ))(rN£dÎx\ZU!_9K)J¥$}f3ªv³yÔY(h°;Òdc4	¨mJÔ;¡À¡}º±sÊ¾£ÚÌÄÂad¼ë\'¸°gLX\"¾Å Â\Z2Ø lÇ9Ïí©²L5ÄjIQK&{7jtùÐ¬	ì8¢a;PÑ:â7µ-%\Z&RN2Íg~F3ÉæJ\Z_¢js^y\'yâ3H±¼ðhØ÷)÷È÷1wÚ@cBë&tÿfq1NÚ±iPåbøy¦\',Nk¼p³ ´Ñ8¹lQKÓy8/&\0}Ã0)\ZEÈòIÖX±SÆ¶g<ÓÇ3	S±J©ëIÞ(¢}¶«J-¬X°\"¡41F1J©j\"-*\"ª®o5)®XsË«ÉÔ!øì¨4éÐt\'Ûl¨{\rÂì{	ÈW`¸SH{Ry¬#Ëò±¡p|ÓGÖ[)Ø4pð¬R\r-ñr%Æf«ÎiwM0ÒMëSiìZuÄÌÈj¶TØ¤\'¬?Ü@¥ò4Á?k¸zÃÄ>â>¤x\"g¡pÎBÓd:âZo1}N£)æ¥§Tç;au0\ZÙLÔht,ÜpS³±Ô^\\«`¾§Ò4§Ô*Lg<ÓñdÛ$?ae}W}2EH`2Uü]ÉáBBs¬¡à', 'Cash On Delivery', 'shipto', 'Azampur', '3', 548.8, NULL, NULL, 'LUQL1612855760', 'Pending', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', '3', 'ciyy', '444', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-02-09 13:29:20', '2021-02-09 13:29:20', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', NULL, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(118, 110, 'BZh91AY&SYÔD2\0\nßP\0Xø?[ü¿ÿÿú`\n}D\0¤* \nI(sLLiF\0\0\0&Í10¦a\0\0\0F4ÄÀF`\0\0aÓ\Z`F\0\0	`\"SBe5LmM\0\Z\0\Z\Zz\0¤FLSòQ¦Òy¥=Oò&ÂÅ:GÜ?ôÐôª\ZOà Aô#ÞA¡ý®êwA ¸` mäa;ÇlÌÆûcGÈÃdÙÊÃôi¦Ï[Âu¸pÆí1ê{Ø;\Zxp=n\\6nc§±»t6áÃgo\r9}mÇ£§Q9¡¸\\v ñùû¤ë2ð.¤æw.7Sö~î§Nö´ÛÏ{Þö?CÅÇÌËÍu®gõõª©¸ÑM©äs?Sâ}GYÞïw\Zhí6ÃóiÄp?±Ùit=Æðô7¾£uÁcÊë2ö°¯L°§JÕmÕhß«³FÎ6Ö¬´wóÒy©ñi·&æææì¤w2 êX,ËóaºÓHì;Ór\\ÆV²¬NÛ}Êí·p°ÕÄÆæ9æu,8G3e¡n1pbtª5,¶·9[ÞZô=GBÐQd;ÆpÆ(G£`èòÝyvA¡±e\"ÁfÊ1Á0ÓO\rÓ¸:Â@%Y°¤F1»·`î*¾@à.\Z00HÀiÓM4åÔr9ÞhÁp²­[îë¹iõÞhècÆl0M4íòMÂ!|±¦èælr4hhô\rÆ:MÎ°ó\ZõÖÃfâÄçÂÃã¦èGMÞ¸läÓ§.hÀhl7u¸x]!w-ÐBÍ6h¹xpàC.Ý¤.ð\rv`)Ëá´0ZÚ¹x0Ü#,¥#-\Z£uµhQõE²lØ,Äc ³\r£eãdfZ£.*ÔµFXde#*ÆXÕ¶m`²Á2ÂYaiÎìë»®½QruàUÿ\0$\'»¨¸·\ZKÝ9,ônx\ZnÝÓ®N]ÂòÃÆË-Û´;rØË\r;x.ØL°\n!¼\r9lØá¸ríÛ·.C£ÐnÁÓG&G:Cw-¸%¹½ålku`ÓYýß·Þh÷¾çyõ¿´é>.ø ð}/÷µô©ýù¾O\'iÁxú7?æä;OÍÓé2ûÏu¶²»cãbõ/ÆÉÂÈàÂË+G¢ÕàCI¸ü©x[¯ØÅë?É§Uth÷ù#Ää±±«Ò}ö[ÍÑ±çNåÔe½y¬áÖº×ü¢s2¹>FÒúÏ¡¥p^cÙn+Ñ{ÛwYÒvçUÖ]«Hþ.®¯1D9ìVXCüéºGÀì:Îã×uÚ-]Ö¬7Ãú#±a²ÅâÿM\r&¬¾×ÝlÇ<=¯»ÆÖ\rr\ZöËÔ}îgU+Ë,®(çs£ò[}çô£¤n6¶3GEµÜh\\>ceû9±Ò´gY Ëô·ïMºó&××v÷2»ÐÞ¾ÓÞ|-£}î:ïÏ4°üûq¸Þ{Kk ègø¶¿²:ïd}iû>¦X¥þ2Ýt4±XV©|]&V0°÷ßp6¼¬aßn;Ïê¾õAKw­²õ<ºré[ï\rÇn¿Ðéª>OT{X±wÞG+ÜyÕÿÖ,Suå{ú]cÈÒÁÑjØq:¦!ÖÐ\ZÃlÐSÔ+4Âáaítà1v¬­æÑµ£-¬;«Ì¸\Z-ã|Ô65jÂåÆòsuó#ªðG \0è<Ï¤)îCnH\rDvþ/m«Ù}.³Ôp£GaãzùY~çñmode\'ceë<×±Îã-öC°¹¾`ê0õÆæ®7ï<-×E©e>87Ú­«dÕË£KÚd¸F»´q<®«á|×ÛeåeôÃêd¾:£3V\Z£UHÒÀË\"YF¬	[§#Êê½ªßwIêFøò:Í^VÔ4ÇbR¸\n6Cþ=¥ðÐuß+ ac¶F\r:X£Èv-Èåµèµo=cpo:c¤º\'3/T·Dº¬ ?ÞCØ±}·Ñr¹ÈzTnÑ«z¥«sÐn¿S/Mç?&Ê~g¤Ü7ßi^6I£¥Öu­ñö·_|/]GØþ|>ÏÅ°µ`ÍOÿrE8PÔD2', 'Cash On Delivery', 'shipto', 'Azampur', '3', 640, NULL, NULL, 'oGgW1613019779', 'Completed', 'gaziaubi89@gmail.com', 'admin', 'Bangladesh', '+8806666665', 'utfu, ufgu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-10 23:02:59', '2021-02-10 23:57:48', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '30', NULL, 1, NULL, NULL),
(119, 102, 'BZh91AY&SY¾áo\0)ßP\0Xø;Kü¿ÿÿú`]÷@),±H£@$!Í10\0\0\0À\0L2¦$=@=C@4ÄÀ``\0\00B\0#ÒzM\Z\0£ ÐÓ\0		\0L\0Á\"\"h¦å\Zl\ZhÓÈF¦¦°Sx=gÈç0;â|Ó åü;î,P¨ÉkÀb5ùgY ð!¤Ìõ­åÔ5º]Èõsohb±ÓlÞöÍ<þ ÖAz¼ÜrRI&vZtÜ@l6ûh3å·Cètá98â\0g!ÀÌò=§qÐ1S`Íä	¡S¼Òp3¼¨5öTa ×´b\\`BBÙi×(ºàÞt\r\n÷äÄ²h*I546#@i41kKô¢«5,{ÔFI[IP+xPÆ¹Nêôf Øñ~X^U¦½é+«3j[%q\ZPU;É0£k÷N©\"åÝëZâÑ]M6ªÜAa6$ÉºfØ¨$jjækxÌ  ÜP¡,IKI!AULjPlC,EEí (ÃD>Þí\rfdÈ³ÙÂ&¯q§\0¢ÅÊ:¬®º\nª½ËÉ!o_PÜÊ\0\r¤6ÇÕ£\\³YIC£¶0Ð»5JKDL$Z`H6$Ø!±í3zjlÖ@#A¬×uèW`Ý.Ðg[à¨­m¡Ä\r´ØÀdm6ØÌ9k¸³DS:ÍZ Û9ÌÉ­lkQ*Ø\r9#vNaè8§Àæ(©c÷zÏ8í3ûËGUÑÀ°fW`ý§8Åf§Öç¹JfÈCV-¸`,st}zhÆÊ¡¬vsÞ|þ\'ìÐng-ÀâÞÎróa\\Ñ@\ZãÌkÀ{*ã­túHÃÜ`jn2Ð5 _kB4ébfÁ¡±d¤0À8\\l57k¬^L2©\\}`É¸õs~»*UÃ¹l4\"L`I3ûÕFxÌK¤È%ò;I0 zÚ<_*î¦7qà{>£[ÀævÊ§#N&NíÐ3Pí	±`Ìê?§zÞ#üñª»7OC	nk\r¼;ñ\rèo=FÂITÒy_uè ÏWC@§Ü0P¾gRä63£¬ÆíÆñyÁ\0À§_#Ö@ÂÑ!é	°Ör-TD¼ªª½P¡êVEISm%f\\@T*¨RD1b¶>æimì]ÄM2ÕÎ_y¬.\Zgê`>c©Ä¹(6|E÷Øë;É\n¶IÈÓ+\ZZG`±èLÞE³7¾ûØ¬)R#!AÌiXàAØÇ^^¾\rÍýæO¨D>|\nÈÅY\\!¤BrX!iÐì3©ÞÄ×ÚKª½eå¬f.É@I/\0T!yklqpSx¸ÍïM##UqðTÁ`¬ÇÅ(£&½Ím?NÂüs9¥Ä!**(²â¡À§ô>­äâp$(±êhaÕ7\'¥©õ«x¸è6íâF ±ÿ¹\"(H_p7', 'Cash On Delivery', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'EaYm1613106965', 'Pending', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-11 23:16:05', '2021-02-11 23:16:05', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL, 0, NULL, NULL),
(120, 102, 'BZh91AY&SY:±ê\0¶_@\0ø+ô¿ïÿúP¼ÕlZ\044\0\0\0\Z\r\0hI4¦©£! \0\0@\0Rj\nM¨hÔÑÓe4Ä\0\0\0\04\Z\0Ð\r\0  @OFDODÄ\0e ó\'q?gØqØ`Ýgèß¿¥	nÍ¼nóveA²Ìí¸û1»i¸5£­yEß4ÊÝSïQsø£c. Lô\'¸×åh=6 ´Ìùæà	XØ;\Z=Çs¸	0S!!J°U§H 2­	$>\"àI1M5½l£>cH0H(B!C\"§¸ìw	$\\lHéZkzÜxâ!13¼þeÉET«aP3ÌÌÅ8dLÌ¹Ø(PÂLª¢Q#CÉC(ë`ãI#hÊ4Yæ t©9ºZ¤Ú¦­<F^I£ÈÈÆºÐRêur<DÙª¡^ÂKQJîMªUÝKêº§y0B,`b¨±j`³´Á\\C¨$\n\'\0`6$Ø!±ð4oq¿HHX KsÜc¯7El¹.N{\',n9aY°âVËsgqoæ\rÛÔãmÈ4SÄ»Zï5g.D±7¹ÅÁ8ä9«¤ó8LÄù¡/gñ0=ÕxÀjwUø3BÇ-M É®U°PYâm<×¼O©àQÂéjñ>íùc8)Ðù/	©èi~`n7<c_¡	HX×IäÀí¸±¸ÃÈ}jtFC¸`dÁ¡±a¼/pãCB¦â¹ç% f`\\g#ÔÜd¹xC³·=gl*LgÜ©6ÅQ·qZÊå±¡ÄÄ Ó1Hp^Y	$&Ë1ÇëC.Ì$ë¯3Ëþ\Zô$wk]ÔÏ¡·iLò	\\±¨3bKÌZl½ç±ï\0m\0»Üè1Þ®0gsÏÊ¤ºçr<Dó7ö-(3Ý2g0[\Zññè^¼Cúg \'×c·A+\"MeQL­%èKZ¢Åé¢7ÓËEÔ8È²8ÐÇdÌXáAIy	ÈK5Äa·ÜÞ¤,¼e¨5ûî°¨Ó.|°×vÐêuªR7èQý¤Li¶PØÉcD¦ÖaÔW6\\\\Nï0ôhÄe!JJ0Äd(<Fdp,tËÏ­|_Wû>à¼éPAD$Z\0m!CImLâdvÏ¤\"ØT_qZÆ$ð	\"·2õp1;\Za+ºi(È\nTÄÆzÅI,Ë!ôE	Q^z°¶áMãÜ5Jjj,µDxõ¼z¸ðh\"ä\rr½°Ì¹Î_t\'ô mÛòPRR\rOø»)ÂÕP(', 'Cash On Delivery', 'shipto', 'Azampur', '1', 480, NULL, NULL, 'SSKf1613985055', 'Pending', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-22 03:10:55', '2021-02-22 03:10:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '40', NULL, 0, NULL, NULL),
(121, 102, 'BZh91AY&SYÌ«\0y_PXø;oþ¿ÿÿú`\r?>\0	J@\0QA@ªTª9¦&L0&&À!0#Í12dÑÁ14À&i&&	¦0`ÀsLL4a0LM0	C`F5IMSôÑ=¨ÈÔÄhbddz@RMÐb4¤õ=4ÓDôÒ\r7 äAÜ<×î?¡ó´ü[%ñ1~mc1²M×öOê»¶&ól?)õïÂsÛ3333,_Å°l»¦õ6MO	ÄÐxN\'y\'|üæ\'YÊÉ¼äç9§é9MMÉÆLçÞoWY»0Ôë9Í§)¼ý\'.IÓ¤Õíl­îG õ_OÖÌÎÕÈóNËÎºÎ¼Çsû¿»Ðòx.×6Skcø¹Og±§ÅùçKÎÉç±±óÏz×ÓR£>²\r/Ðäv?Cï>¤ÃÀñ0ô½-n÷Sw{ú¿\'Ôè8>ÓÊilûF¦É±çpû\\üç6ÎOØÓG á«àÒOm,l¤o:M.y]9ôïu-.L:Ìm65±óFÇ[Úx{õºëvíÛâªx¬¤ídNfæ(Û&<Í\rdÇÏ9äoM²cò,¦²,S¼ò®&/3kü]çzÃ7fUàqj¡cÁvMRÕ515;MÝóÒpö8ýlxç÷>Í¢óY7nÐn²`²dÄ²v§|Þ8ýí]kiê±u±oÌÊ\\Ø¯Kö°Ø²ÖbÊX9-Ë²Ýv[}7Å^7;Ôs9b­íVæOûu¶ìcyNL¢ÞjvÓÇö}î8_Y£½õ:Í:¹«&yÊmÝ2o975>/;Ìs¸ut[Z&2jt&õÕ³Øô·;Ìî§Òlw#& ÊÍçtÔãzë4õº4åÚÿf°ß³ûÓN§Y}-íÖ[®K´Éß55MMæóy©Újq9ÎSjtMUÂua³pÊÞíÊaÂé8«\'IcÉÄå57&M§9Ît®iÐn·\'E²éás¥ÀÜhn¹ÎSz²ÔÚjlMç$ç8*äºRÊ[­ë-KºÎ&Ãä¹-çpàp¾b{D¯)éÚ²·dÈ5¢µ4Ô­æÑ¢2]5L£&Z&LËSpÙ6¦°oV^É¤fM©elÈYAX2ÅµY,¬U±V2c&óILÒÒ&bÅÎ¼\'OóOR;¨/6<yi(¾ÅÌcm8æËÊqðîç	În¼§9µnºÎ³\'i²ît]\'µÒtî×iÁºÉ9Li©¥Õ0v]§)©Ñ:ÍæÉÖr\\¦GKcS¬Û³Èbå4­¦cf°ç³ÃÍ1´ë8[Îs¬ë9NKºw&ó¤èîuvv­ç.ê·MçY¥5Ûí9Ù³e¦ó0¼:6_ûý÷¯Áðu_ÉúCês_Ôì½/ãE|ÏÁþ6%èWÖkòy/[ïöxº:ûý_·±dýéðu´ÈôUÝ?Ä÷\'4ý³Tç2®k	IÄÔû:`á~+îO\\Þeüæ±ZwÖ.kq©ü§á?)ú}÷höÓKÂzSöÎõl½äNÂtx§#zëÁe?ÔyÝNõóÏ4ÝSÕ>÷Ï2øWô.ÓÀ^)j¥ÊyïºQÖvYLSK¬ì?êéÜ^¹ÍyEä¹Oã4MNi©¹Øê<ÉdÄö/è´Z\rL´õÏtÔÉÎdç=sèÎwXÅÉnAòu]&LKªdÉº®³­]4ØÃú)äg)`ÉÖMÓ59­i¨iì[.udý¬ÙuM,ðX¼ë\'tÉôN|òÏ\0Údå>yó/þë)äz^£ø¿cê>Ùµ\\§½syç¹xÌçªL=óe²Ý}¤Út\\×´±yÖäh·Y6ÏÔ«Æ{êûØÿä²eQûñÖ	_lî_LTÔ§ê]ÆF,&/µ|§Âr[Oq<Ãªn¼ÅuZ_ÞMÔÞxMS¾v\'ôsbábùMÖëÀ·ú:è[Ø½é&2dy2zg¹vç ô÷M\Z>,h\'Ñ>¥õÏ0ö­&9©°ûn¶ÄÚe^aÍV.uÂ[MaÒl½µøÜ¦§!Ü=+álÓÛ;Oc¢çÊo¥áÞ­æM¦/mO2sZ\'Å1m1h_%ã½å¥è_TòQå[C½{í&Nk]\'}³eðåÊÁ¤úfÜ½µäZ^úøï¶ñÏz{« m=²óTõKã<ó­²â`Å#ØÚ¯zð?å¦;æÎt¹XÉ|^rx=éw¬>ª°õ-NÅzÍ7&¤Ê_.Të2p´[+b´ºõ45/~a\\çÔÔÅìêseë/y×5èX½Ó\'Úûàü	bÌü&-JÄÁaadÅU$jY,I3 52 Ì§­Âô.õô®õà´§Ù*÷!Àþ³¤\\×9âôÍ¤-¦N¡´\\-¦ªÿtz6]åÖ{fMEÄbbuO¡xÎé´æèºõ§µ2Y-SÊuw^§%ïº®ât®õÛ\'rèeÞÿØ×Y/©yçEÕv<)h7.cÁ--ïá7_Åë¢?óú8µø¸l½Ï52{#S×óSï\\¢d¸_ÞWô=¯|{ô)|~5ò2adÄie3GÿrE8PÌ«', 'Online Payment', 'shipto', 'Azampur', '8', 4510, NULL, NULL, 'JNga1613993900', 'Paid', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'utfu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-22 05:38:20', '2021-02-22 05:38:20', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '950', '603397202f3e8', 0, NULL, NULL),
(122, 102, 'BZh91AY&SY9à³Y\0._P\0Xø?[ü¿ïÿú`]ð\0\0\0 `Ld0\0À\0\0æ4À&C\00L\0\0`Ld0\0À\0\0I©I¨z\0\0\0@\ZÓ\0\0Á0\0\0\"&&ÈOMOTõªzjM#mIêoT°$-	¨ð=Ê\rb\0PP0Æbø?lX¹B£%¯°ÄmúwY ûÎû>õÖ¥]lýÙ7©­«Eñ¶YV±æÔô©ASíRI&Ë­£^Ëåý¼õßÞÃ§-è`áÔW¨;vDrÆÜò:#µ8Ô@¨¬+<JÑ_°b]	0BB×83jöµ!Á¼àT:\r¼æB\0Þ0Ah?5ÄÜn7# i41o¦[ème¨.0¸`!C\"r¦y°Ì\Z&lNñ|QcPJkÉ2ÚÁª^oKö¶®cJðBEãU¢âP©kRf\\ª ÆZ\"¢Ø2iØ&³6ÞA#SW3]Ã2 ú(@ËARå\rÄ ªÑD4l³E\'^[.aRf\'Õ¸UQB¥íDÑ2±zÔVÀ0¤ª\\ ©GRUÕ­C%U_÷H\\ pe\0P\Z*ë%\0âeEj`¤²QlR,i±h!!R$DF0\"DoQ\nH¡úç÷êB\\Hö\Z\rf¼(°Ç[¡ºÒ¨eÃÒ¾zfHÅV-\"4f©&V´ªÈò¹B,Ô¼®E¢/CL²ÊÖ3Ì£1C,©u¡LE¡$\\Ï¿ä~ç´±ï*\\ý¯ÈÐ>-VïÁõ0|äwÆUo6q.|âí+´Æ,V8\nÀáOAÐaôPu#üo¡ÔfÔÈø¯J)8AÔ×\0m6eÎ¨ÖÐyàXÚ3«}tûÈ¿ädo=CyüXíF£À46,´È3Ì=78Û¶0L2 XýpÉºÃù~\'l;»òî¦K\nÅXÁô<ÌÌÆÚ¨³Íd}Iæo=e¤¤gÀéú=Fqo¾¦Îjí×Ìòþ¸Âí?)Tï5æhíÂwÉ%È&åÃaÈüÈ\niä-{Äê¼@»411çLî=Ýö\'jãCqí2 öì	%SX[4Å°öú5\nzAJìÇwéûqÝ¨u0ÄHwà	kY	ª\"IØ°O*ªÂùT©&\\³¹jÌ\r%LYÄ´±Pª^àlÂ[_òn¢E§H³L½CwòOzÊÃLù#.ñÛ©Ìçd¤ÜO!~ÿd\n$®Ãgi²ê­-¡Ö,Æv&q\"Û\'E8B\ZñbÌeaJFypÒ¹ÒAçVþ»w>·ðGêIÇD-%H#D@(H°@Ø%\r&Iµ&ó3¯NEx%ÌU]fÜØ.¹@I/ T!s[ ÐÇ\'	U1:rÂi¨È\nØÌÎÈ±Ø¦k0ÂØ>H©@Â65à½XÜ3ãÔc=h¢¢®H}GËô$ÔäP*³æÐA©5.¶s	o0íBc0aPRR\rOñw$S	5', 'Online Payment', 'shipto', 'Azampur', '2', 510, NULL, NULL, 'Xlhc1614069160', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 02:32:40', '2021-02-23 02:32:40', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6034bd9934114', 0, NULL, NULL),
(123, 102, 'BZh91AY&SY6\0/_P\0Xø;Kü¿ÿÿú`]ð\0¨\0AÓ\0		\0L\0Á*556 \0\0h\04\0\04ÄÀ``\0\00I©I¨z\0i\0\0h@sLL\0&\0&\00\0	 Si)á¢z?I©å=\'©êXÁÒxåÁ\0((d1ü¾,\\¡Q×Ämý»¬yÎÒfHûVZtQ³êÌ½MmX¢/´¢Êµ¯6§ü©ASíRI&Ë­£]Ö 7ËýÇ¼ûoõC[3ÐÁÃ¡^ ØG$Aõ,h}OäqÅ©´gÌ¨Tø\ZÂò|\nÝ_yj5\ZøKbH[´^ºE©\' äjWÈøKBé ©$Újn$F Ó\ZhbÛLkEVm.0ÌÍ2q*\0 Å`Á\0BF(e\\ç##¢va 6ÄñÊ¸*\"S_Í2r!`ÕfoKõ6W1¥ªN1U^§KØ`ØDÞõ­)ýL*`Y¢-jn¸eVòÖI¼Î2PHÔÕÌ×! ÜP¡.IK$7B«FMÑÊ,Q<Rô¬XâØ¡s\n18v­Âª/j&±zÔVÀ0¤ª\\ ©GRUÕ­C%U_zú¤.+ì@´¢ ^²P6TV¨¦\nK%Å(¢È³dÊJÀ/Q\nH¡\"úè\Z7êB\\Hh5ð¢ÃlZëIGÃÒ¾zfHÅV-\"4f©&V´ªÈò¹B,Ô¼®Cèa0Âûã1ds S5 `çÇÎÚÌÆ¼i(i´F~KÄ°Ç\0ÔâK%*A¡°®áüÑØ­ýÀ¹þ\"í+´Æ,V7\nÙÔY¤Ø,mb°Hn9p=	êxJ¦uJRq©® =\0m6\"ç%¨×øT6çº;½$Ûqñ26M5\r¤ïcÅ\Z\0fl`ÐØ²Ð>GpgwÜÜ`à[nØÁ0ÊcèdHÅÐ?óöÿwwïëL±íÚc\nç#>fÓa¦f)&Gça\0dü.Ôõd@õ¼y¾µ6p¦¡.Üùï°×¸¡ú\\ªu5æhíÂuJ°\ryí (9§¸Zø¯ gå{@¶hbb!ÏjLìzý6\'jãCqê2 õl	%SX[4Å°õ~J\Z?fûë¨ØÏGC;p8ó:µ/P-l¸z¢$	ï¨Ê¬/Ò¥I2ïÎå«04X09gV¥\nRõdØ¸<?à8È´îbi¨`íò\'Ò²°Ó?S$eË|uó6JMäóàs¡äHU°±$®¦ºYQ¥´4<ÏÎ$_aÄôS¼³XR¥c!AØi\\äAøçM=ìú?z<Á_$¡i*DÄB\"BE¡¤Á6¤ÞftÓ\"¼æ*¯a÷6ÂPKÈ%$_¢ß&Ã.nªc2<\r¹ÍÌa4\rª2¶33§(±Ô(LÖa°|ÑRlkÜ¿,îúxÏaØa	QQE×4EE?ØûøÌäHQf7ÞÐA°È¯EÖÎ-ä&-¸LP\nJA©þ.äp¡ l4', 'Online Payment', 'shipto', 'Azampur', '2', 646, NULL, NULL, '3xl51614069373', 'Paid', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 02:36:13', '2021-02-23 02:36:13', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '6034be6d9e2f6', 0, NULL, NULL),
(124, 102, 'BZh91AY&SYwÛ\0ßP\0Xø?[ü¿ÿÿú`ÿ}\0\0(B\nHPPæ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&ÀI\"i=)ÈQ¦&Ô2=M=CCFRBSÓI¢mª4õ ÑèM¢1.ÃúqEaß%Ò;ï·pm2äpnoch¬WxØáiË4ü¥KÉ»âºë|Ù-\'&LÂYÅù(ØË\r3YfÕÍfLlÑvl?6FíJ-5L³ÏêR°b`äÕ:Ìå¤ê:ÍôYØ(ÿnÇ¹îÃÖàæâäl_ÔòòH\n><Ð->fgæxó´¢Èët,v,}Çà¦c#ØsY5z©ì1¥IÈ©üUÜbÒC£Ó\Z³]fl,¥Ã´Èî9½ïEÝb¡\'Zç8% ÔÈ²Qt8%E©®¦\'53T´Ð¤ÜÝ(Âp.h©4MKI-RÔ©v2n¾Æ(Ô²¥J%)R)ªÍ[0*jdù%EB)2]v4yK7)%e-©x5QY«(ÉäÊv4*JP²íavj|¦RÔ2fÃ£9c¡FiÔXÞm*D©«®ÙØ´¼¤¾J]vLXâÓCO½¹¹¦86i½ÁÈØt6hh/\\T]R8f¢&¬%5a£f)v¬Ú±45L0®Ö²h2L%\r°)eÖ\\a£&DÍ¨¡Ó\r¦ºh³bl&Oz|äh~|r£	)([\r+\r±(aQME,ÑzB4	Bµ*R0 A(¥£B0Îîã¡Ôçi!´OÂT×dÑª5dÌÍÑæ&ÍTëu°hÃ\r\ZnàÜ¼¢d©ZjPà£5\r\\Ù5Ó%ÊlÐÁÔSf¬³F\'Í3g7naF®·eªdaªÌËáTÝg!hA¢:C»©÷<§IÀì9\\¡¬ÁÜ{ÂÏ®s\Z-òx9ÌÓ¿·üûÛ^ÙO´÷,ä7ÅGq¡÷,ÑI4RQDÕÎÙ¥¹ëuqÜÀÒÄ0.\Zy·c·µò¸®q³GðNöá³¾º3ÃtÊP¤æs>&qÊTp|¥áöbÄÌç(õºî}%Í×>ÓiÕ=Sê,OúÎy#¦¡¼â¤¤R¤là?Áß&íÓÔÒtÎ¹ÂÍeÖTÈ3?aÐ©rã\'ì§×(»½ä²)£½ìa²jÌfjj>oy²7)JL»tÚ}åÄ§;äqrâ\re87\0ÜHôKÍ3ë/6-+©Ù)ºl§kR]LÞ/	èüåGYê0|iõ.yÎO	ÁLÝky¯/1>¡vDã;ÏydÄ¥ØzPû@àÅWÎexÐÅ\nÀ5\'²}/6rïÈTìbtÙ´´ö¸ËÆ.\rYµF%Ok÷Øl7DüéäR;^¹»7YÙ#þ¬Y*I­å=Ï71ã,Rj²ãÚLKµ©9.5%M\"ËË¸¦²ïR¦Iª|YL¥Í\rÚLò^Ò°Ø¦#¾Ù7#@^7Ì°fÅ;%¡úÎÚ¹8;¼2\ZÏ7Ý.ö¦ÌÔ?¼Ù;K=½Îzç­¤KÎ©w?R¤õÏEÆJPÎ\\ºyNOcDÉI:/¢G	GQÛ,ÑÊvÏS\rV=(7	F8±¡ ä`<M4ÃE8:LÇ¤Ô`rÒCÔÑÙ@´ÉDhX1H##h ! £DQ,çqt¼Ð/7ÔÑ¤âOÐ^]M¤º2Y?w­:¯8Í\nZ&IE3uÚ5k!ÂsJ(²dÎo7Ã¹fsÈ`2¦ãS§2MaÅIöÞhèQðxÍ[¸Ï`xDÂa,Ñ<!fÓÊS½Ù>KÉ?¼Âe\nSÁPZrËJOSfIðdôsPx£ÍÌs£\"B\"Añw$S	qý°', 'Online Payment', 'shipto', 'Azampur', '4', 1640, NULL, NULL, 'RRRG1614070164', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 02:49:24', '2021-02-23 02:49:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '640', '6034c18129dba', 0, NULL, NULL),
(125, 102, 'BZh91AY&SY½£Z&\0ßP\0Xø?[ü¿ÿÿú`ÿ}\0\0(B\nH\nB#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0$¨ô§¤ð¦G¤ih\ZSOPõ\r\0T@ÄOBjjy¤ÔõªF#iÔºP7ô~E~ÅHKHì¼>»i½Á¹½ w1^c¤/,ÓùÊèºë|ÙZN²¬%ß²ÌáZ´:5h³ËgVMÙefíWhÃ÷dá±E¦É¸ø{ªFÉØRx´´î5~ïì³¼QüÝïàþ§­ÉÕÍÐÜ¿©é-è}d{->f#æ}çÄð(¢t;õ¨¸ýTÐdûÎ«&Âyõ2û1C*¡Søª#Å)å¤cÓj4ÛVjÊÊXï<\'CIñ}ë/Ã0ÅBNåD9ÊäÆK!Øv¥ÐäRR*NÖ;XU¢¥¦¥\'	Ft´(ÕRjZ,¥©Rì7eÃ8Ònn´Áe\')J.JR¤Se7a7le¥\'ØZ(MVY\nP¤Êëµa«Ðæ\\ËX¦e¶/Ê#6f2ô_3À±¡«R¤¥.Õh§âÞM2\r2ÑbÂ§ic´,©¦\Z®»gzÒòùRë¯7ØâÓCOµ¹¹¦86i½ÁÈØt6hh3Ô]R9h¢&Ì%6a«¬ÐRí6bjla6]µ4e¨Êa,jÑ¡K.²ã\r\rYd60ºa¨±f]5M\Z17L¦_r|äP~WKåFSBÜXiXmCBhB)fÒFÃ\0¿¡²·P\r# Á!BP(0#îc=;×[I\rà~² ê»-XJ£fZ\Z1;\Z.bnÙNçs¬0Õ¯NÊ&U#ËMrh³»´hºerµ0aCE%é[µ.Ñe±97nÝ£IÃ\n6reÃvLl³J¥ðªbYÈZh°Ýð})Öjv®ðz÷µé},û\'QñÜÕoÍæë4O/?Ãôp;&ÞðYÑ;GÉG©ù,ÕI5RQDÙ\n\r-ÏcÔ\ZÌ\raÚÀ(ÊCá§ìv;{#ç4q=iÖ^Ü6t®ÊÂðÌoêu>F§ÒTr~rðüµbhuzÝ¬Hx¾²ÁîwOÀÞvÏTäê;Kû´é)°q9©)©¹þ<¤áÂzÎÉ´î:º¬,Ú]eLô7KdéO²QwÑe5SWÚÃtÙ4(ÐØØ|ß\'u(pR\'yú(ùNÙêM\nJòëÊ´ÕwY`Þ)élà0Üg|)éaB÷Àj.3-ÑìyÏ÷Ç¨Áøóø.{§Gä¦å=ËËÌOà.Öjç÷LJ]ÄRGÒ>ÔOkiç\n%HY\rOµ%OlúÞæï1ÐTïbvO|ÞZ{ÜÅåãG7&Í#§½ôô7\"~¯$ô)E\\á£¸ïýÖ,$ÃÖô¹Ô{%M\\{ÉvÁu\'EÆÄ©«(²òîi´»ÍS)²|7y¸k4ÊöLÅ0±-24ãx¼ËiiÓ¾Púævääñ\'**jÈÚ{»Þ´RTÿÙº7x»V{_£¬õÏ[X²ï2ÚzçÅq(i.]=\'GµÍªeI;7Õ#£Ñ(ðjé<\'©ËCãaXÞRXl%âÆ`ñ4Ó\ràë2ÈCY¤6`ª¦J#BÁD©«A	\Z °bg;¬Êp%æ|`Þ>É±«YÌÅÐ^]Mäº3/,²}´í¼ç7y©hJ(ÜöN®jÙ´T)Ö-(¢ÉÆ+4Âp69ÊyÃ3	´9©>Ù>$ÕØQø½gsÚbÑ0K5O8YÃöòwÏÍy\'êyLÇ\"óT\'ÒÔÝüe|IÎq÷<ÜÇ:2$ Â!DAÿrE8P½£Z&', 'Online Payment', 'shipto', 'Azampur', '5', 1470, NULL, NULL, 'fYys1614070313', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 02:51:53', '2021-02-23 02:51:53', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '440', '6034c21794c07', 0, NULL, NULL),
(126, 102, 'BZh91AY&SYÀí\0_P\0Xø?ÿü¿ÿÿú`\rÄ(*RT\0 \0(\0©U\"`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LHÒhRj6\ZÔhÍF2\rG¨\r¤&DÉ 	¦A¥z©½SõOÒPõOÒl©úâF\"Fù¾É>MÍîU°dÛ3ê\\û¯Sè²ØXDìm8<Ê)u×O»&¯jë¦«7®ínOÊK%*RH²%(ÿc ú²lmbY#B`YÎlÌJ/Qô(æâBM6X@±:pãm¶4ûZ[#·!lp=ßk·CááÓNUÛ§ËråËO/\rºpÿ§#ÙØÀ Øät§kÅJ³¥lPÃÂQföÞUËQci?sì³4ðØ±³¹òiÑ69©ìvÎYÌæÞÛ)7ÿ×d·¨òx2KY)¤¥K,³½ÒõºÞ.ÇÄ4TDBHE@aGì)$Þ$ü$û(Yö9ÏiØï±î8s\'AæRY(d²ÉìRu(êé~nö·¿jææLv°)éo`zÌG+ÿVfÞMSb+ÁÄïc1LXâé1J\'¡÷\'q¡±Ro*mv,Iá$$\0<\r¨=ß\r14i²8iÈ`ÞðÛ¤Ñe0%%&­îYl01CËîx\ZQ£c:D²§)G1tMÂ¤¢¸ÒZIR-0LæõL¥vVÂ\ZË7,²JCºZIÊ²É£U#Qµ,E£L\ZmÁÝËáº=\'&YÉD!£°GÁÈ§¡`tG$~R%\0F16ÓËáÂ0ìDè°^#Kh@BÊiF0;råøEÙ765nmLV\r³6E¤YQ£\"<Úè1Éz ®ZmÊååcó> à:;aÜ<>\0FÍ»{¹rÌaàÓGÎ¾óÎdÝ)ªYI©e*Q5T¼Ö^at,r0M&³6´¡iÛóa{?pÉa£Vipòl(;=&6,bl2.8\nZ\r/29Æ	¶xÛÅ\r\rh\ZB<¹xpé§@ÆÝºvà8¡ÀÛnã§/\0å!HaáÓ\"¦Úl:¹Ó°`8m<CÃ2iÓ0¡2ÂÅ÷Ô}?àó\0!£!\Z\ZPÃhP~¸´¤H¦`¶XÀ÷@±±ÂFØFXAF(]\r@`AF(a\Zuh±0Dd¢¦r§\nÓÒ\">!É!n_Khnrètà=L.M´ú_KÉ·.[6ï³Ó°b§M4LÛ]:m¶1åà!ÃÓ\0Á¡ÙØQÃ1ÎytròòéÐC³ØpÁÛ³£³nvGÚt7Bµ2`¥\"Ïý>Båß×}¾\'ù01|Vu\'ñ2}&OÙâÚ}´e=Öp>PLäþ~#Û¡õ/þ^gAðçÁøaê¥Üz7.~·´©p÷§,¼å0vÿ&ßêiá0`BBÛ¦S	mäë É{h|ÊJ©ðoÏö{ÖI÷Å\'õTQIeæÜ´¿$3(nQ3|Ïí<DO®EDy!rÓ¼ýdýf&¹ÚTvÊC±¶`;Ã¥Ò	¤þÊÄ©7®ñùÄø·KÚÀÆ)t×62$ë²ÂxN¢ÃâjtCtçoJ¤©,ñ3=2MåMÜl`Ý)u(ZIRY¸Â£È³hë\r¦§9á#±É.KÍKÍË°øG*îwÎ%$íGªTö~óÃLxcÃ·ñ¸xäl¡£AaVXèØ¥¶\Z{õt·\ZÊMÉR¥C$6ÍÐÔô%Ê?ðæ)©©î}Ö1/.U\'	Ä¸¤£Öob«14OÜþÖ]-&%`Q´©¬©¦&éÓ/9y2ó´³Ý>åIÈu7#Í9\Z\'Àñ=RðÙ=\'Í(å2bÉG¢\\â}bdxÊ*\Z\'jz\n3ÚÆT=è£ö×$<óC%$¢K	B¦gjR¤yLîÑèc;ÀQÓ#Ñ39qsIy0L$Æpùºk2I0(Û>ælAü\rEW$#âÞv¤¤©:\'Ý3í\n¯þ²*üÌgx§qÅÓ&Ò¦F3A0\róÞÀÒQ[P±G¥yL\näT¼Ü]ç¥õ>ÌL!Éë6Móá7ÌËå3cr¤Ë¬Ü¥a«)råLeá¡ÐPº¶@á°M«õfæ®ÓûNÅ`O4÷¤c.Éß¼¢°0t¬;­þáCNîi$ÒvNGyã7¸lH¹Ä¼òÁì´ö¥>ÎöÙ*Q(h\\´4<¿aë<»CLDü+öòPS÷VßR9xfóÂÇai²q;\r³Ý?v¦?ë	 ÃµèÊåÊ9fR!ÈâTM)bÅN«\ZiþÏ3ò§OÊ§´\n	)J¬X° 	11Z©PA-*\"ªç)©ß6Ë¹y&3Gr¹pî4M&\"Nùy!íQ007#hÂIihyÒs\\àm²¥¤1aø§³jt9yVR\'¡,P¤¸Êfbkë\'`ÃRl¢¹iÝ3!¬Mò¦å$Á??zÒqi))+ã6æ³làyÈòDÕPæ~Ld3r¡ÝÓÅØc#ö4ZvÎ£­ßñ±Úb6³hìY¼â§%äpÄ\Z£Xwd)\n}òÚ8EÓìÖäð¨{@¢\0Â~Ñ·ó H1F) %ü]ÉáBCµþ`', 'Online Payment', 'shipto', 'Azampur', '4', 1478.8, NULL, NULL, 'waEj1614071116', 'Paid', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'utfu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 03:05:16', '2021-02-23 03:05:16', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '440', '6034c512ab012', 0, NULL, NULL),
(127, 102, 'BZh91AY&SYÈþ\0ßP Xø?ÿü¿ÿÿú`\rÄ(*P	HP\0¡AA@T*P2dÉÄÀ	È£ÀÀq&LF&\0L&@\rF\02b10dÁ2\0hÂ00dÉ&	F!D )4Æz£Ô4ÓM #!êCI	£@4dbóSSò\' ÔÑúy=§¤À°ßð<É½Èàå[Ï½¨ø>KÇÄýV[¦<í§#Ô¢]qdù3ly6®ºlY½wcr|RXX©)RJEY(©Gî9\n6¶ÖE4&§Qªræj0dQzÔ¢=\r6×-Ø,\'!pîÙ³a§»ÄvpÙÐ§³þX;:r=:rÓvrø7nî4îé³ïûp<;\n\rBu¾*Ì)JY8¦¹8Ò;¥omä\\µ8&ø?·ZÆ¾ÆGNy­Êç|N÷\\ä®]í²qOë*êñ<ý§k¹H¥¬RR¥Yét?³Ìðu88ÚÐÑR$\"*B(ª?ü1I&ô¹\'Ò$Y$ØYBÏäæ=ÇRz_Éö|©Îw),3YdþÊN=©él½øýËn&¦¥lw¸Ø=C¿ý®Öä&ÔÑO;rs¬¦I#2\\]3t2&IDïjjrd5ªN2¦×bNxÀp@¡²Ùé¤0aè£-ÚcAîÝÛt,¦GSìYL0ÃD<l ±ÐÒ\ZæøÂ´ìXÊ\r+´8xuÌÕ5J,ë­\n\\mq,²E%!à\ZW¹E\rÈ<N\0äh4Ù¹ÙÃÓj<Ë±¹D!sDNìc8#ë\"Pc#fÞ¡Ë\0Àa°ÅÑà4¶B)¥Àb\Z4üøpîåËñ:79:;Gç.)DL2!àvk¾äAä¸i³Ã»Óî±Ñò§  ïgg³½Ýi÷/¼ï3nØa¤Ø`²È(/6KÌEÝ%ÜE&·dÁ©¡-(E]¦ì»Ãè?.HZcÁ«!cvÍÞ\rE\Z,Q¬¹c#YqÆ\\´53|¢ì2L±ÓÉmg[: ¡¡¬»HGw¹iÈ1³³fá¡Ù·Í£ÂB»§-ÐB4Ø¹8p!``7lÝC»0CHeË.¡0Å>^é:ä\'T]*0!R¤JK\ZP»d(>È´¤H¦`¶\np±ía°Ý#f!¦ÀVdB¡¨0 ÈÅÂ0#MìÙ1$`#¸pìøÇÄiê\0¢{tÂÎ&Èm8r9n.[\\7plÓäù8pá±³·-ÆÁ\00ÅNZh6,\\GvÍw.[!ÃÝ.·`9`!Ì8v\n4ËïvÎîCÝÜ¹pð7`ììrhá³ÀÝÙ´Í/Q[%ÌØRgrÉú<Ë½·]üüê`ÉðYæ5¼Ié3~ÏÓõdÑûlã< =¯}åßYH÷hj+ÿû¹Îj¼Ø|Øt¿EÜ9÷.}a·¬©pû»gºÐ;?kÒ:æÓ¦\"iÎL·kcöè dÈü\rÃîåüæS÷>å|ÒÏòTQIeåè´¿8nQQ5?3Èö§®\'Ç2Ç<ð¹ié>|&F!s­8(ê7§	·SlÀôC¡9Ó3Iù*vÇ¤Þ»ÃÈÊ\'â{kQH­IÎRwÏ4ÖÌÍ=í%âl9Ï9ºs7¥RTIËIóù&ò¦n5°Ý)u(ZIRdÜbÎ³hóMfCaÌjr:Rä¼Ø^k^XÔF³ï6EÜÏC20 OÈlûîc¦:v}MÝn6(hÈ¹k®5©mf½ðt7%J&ä©R¡fèl=irÀå)°Øg;%¥áFäËcIÀÄà\\MÒQì7²U\ZB§ð}Öú\Z\nL¢<1Ãgñ¶zÊG/è\n=oÞzÉÄîMï<xkç¡Ë(ä3bÉG®\\à~23<%Í\r­<K/>l§µÓ¨{ÑGÕûII$TÐåI(ÂP©¨ëJTã¾vLÏîõ²ãtHõÍG)s¼Ü\\Òjo&ëÅ¤<Ï]Õ¸@åûÃpÑè¿1°Y¹èqB?ó¬a*JJyÍÓTæhTEÉK(¢©Iã)ç§Õ8ÂÉCIi½\rfSA1*ç½IEmBÅëÍHb`¡~%Hãæâì§4ñ_a÷µ?ÄÖd]7Ì§lß5²èÅ+é,QØàË`¦8hê>l¤èLË$ÌæQª#b*Q¢ÒÊ&RLí©Ë\r³òJÁ;§Ørº\Zç¦#xmRÒQ\\ÎIMüÌOg3T(ÿ&M\'Tâp{í=ZEÎç ì?¥§´ë)ü=,\\©D¡¡rÐÐß?§|×åDvÉÊMëOó®tDÊp(ÔõBÇQi®p:³º~íèØ(ò4à,¼\\#ú#a(´4#À¨Å64;¦©ôOS§ñ1ü$}j D~D($¦(@\"±bÀ$\nPÄHÅj\n¥A¦\"@ 	\"Ø;æòÐëepù\"zD?[!é\rÇwpè_6ÊµDÁSr6I5--çd·8Í¯¡(a`Áà|ÃÊr»«Ä(ÑÇ(R\\g51<ÒÓ4õFÈl&¹õ©Ä}NÈÆÈåMÊ-Çæõi|Ø0gðv0áåñP\'¾¦ÅCô²Õ\rR¡ÙÓÉÔe#âh´ë\'é¬¡,u\r­SZK7à©/*bP/f+\\Üc\"Ð´ãÍòò=åIÿÔ3\'ø(CÁ÷$ø_Ò Æ¦,»)ÂGð ', 'Online Payment', 'shipto', 'Azampur', '2', 778.8, NULL, NULL, 'FXWK1614071219', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 03:06:59', '2021-02-23 03:06:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6034c5a41fa8f', 0, NULL, NULL),
(128, 102, 'BZh91AY&SY¿¹B=\0\nßP\0Xø?[ü¿ÿÿú`\n ¢T((¥ G0\0L\0L&	0`\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0\"H&P)1¤\0È\0Ð@\0*H£@Fb*~äé¨zM§ iO)¥ÄDCö?áEBÃ¡$GÝp¥\'À¥>K§ÇÕ>SUÍ&%¨ó(ïêªË<Ê.³|Û6lõpÐ\\8cv1èþÌW.\Znc§³vèm»4íá³ï¤Å3fwLAÈq®å+ctÍ7¥&a¬àOGÙÁ­«î|Î÷z3¥ÕM³4Ô]ÆuëJ;üSA¬úÃ¬âQDÚr·9V)Ö\\k|Vd12Fét¸£ÈÄ= /a°Gä(Æ,4¤á5ËÔd×ºË©¼¼©c¼ÄÊsL/%ÖÁ\"&J5¥Bi1,)I6ªaRÍçM¤ e»¹¸v#<91ÈÊãJ9; Ò-0i³sM]\n\Z\"Æ!b01ÓA§m×nöGDPÀÅù!K\rÒ`16vÝÛôèmì ZØYGd»NÜ.t¾@È\\8.0\ZlðÝ»g,9L¦#N·Nã©G	íkLÉRQÕ/4a3ìL·CcíÜ<Â@  (0(È¹c#Aq°¹h1bé¡882ÇZnléË¦áÀé·:\\<.!w-ÐB4Ø¹8Ë `7lÞ¡À]!ÂrÜ6Ãìé!8ÇØª0©R%JA\Z\nP»e¡Hú¢Òi ¦#,`PÒBãb4¡°V/J`@bEaFÖl(Ù1$`#î¯>!§­(;D^Q_PEde6pØïp¶§.-ÃÄðÙ.tÇ½±ÞÀÑ§:äðst®X6\rÛ¶¹hË\r\nvàà20ÃBYXmÐ\\áÓpæðíÛ!Éä7`éäs2sy¹Ú»iË70HsllFÕÖ;NÃü·öj>QâÒf~òI9^/êóó8#~fo7KyÌÉ:yñ~±ÈoÆùÇß{b÷!ÒÁòø41%JCLÆZsYóÅ8Ì\'¡IØ~å\"Ír¦SXï=çÀùy£4!rÓ öÉíBç*9YSÛ4Ë!¹7\'ù2NxÚTÞeâx+$ÐÅ\'ªpsÎòÂvÎCû1®n\'²y ìm*i#3d¡RJ\Z¦±ï:ÌsLæÑ7MÒÄ´Ò^ZQ\Z¨oJ.Oü°²-*zÊKÎÙ,Ç<>GÛnñµ¸ÁÈh4ð}g ÛRf*T¡Î\Z\\£ýc3BT(Í*ÆRóqa5IGæ\\Ê=YsRX­¥¥LåNÙ²qM¨¼©¢uNÊ}âæ1OiÜxKÃ	Ún£d©¢rÅÙræ/22:J7OÃ¥æÉ\r³²ª(þÑR\0÷0XJ>AvÚwMçI69fó¼ÔXï	qe»Õ¥èótåÒ·óúÃ¨Ð6%Cñ<ícÁõß\0äåïX_é  ÷©dgTütÞ:Ë%\r2Òã½:³ìØ\r@áÂ´Ø,õCAgÁÀ@Â\ZCÒà0¾\'Êh8Ëz\nC	b¥åÅäÞ&#T¢åKI6Ã¢vOÁÀit5Î3\n¦$ÒwOà¼ï©¡P£KÞTMS¢pÓøn:©ÎçH~§ØõÅæ*JËÃ°Û.ílDÑ*\räØë\re£iÚq9¦L´Jì Ì£i/%âZgE¡dí*&GAbÅN[S\\îs)Û*uJP|EX@å`R+,@%1DdU\nb$\0/;ÖuÍ¢ZIåéCu\ZQÈÚ/²`³ep\niøó/} íðcHX0v>Èvy6x4éb0ì¶)),1ÌðÓAØ0Lá4ÆÂ§ª&&LM¡âÕAÞéÖiÍi$´ÂC¦%¦s	ô*tNSÍtÐ`=­Ü£­¹:åDXàm,T:fÉ=Å&3õIúNÙ!÷?ô B`Ó\0ø»)ÂýÊè', 'Online Payment', 'shipto', 'Azampur', '3', 640, NULL, NULL, 'P1Wn1614073580', 'Paid', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 03:46:20', '2021-02-23 03:46:20', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6034cedd62b28', 0, NULL, NULL),
(129, 102, 'BZh91AY&SYÖ«\0\ro_P\0Xø;Kþ¿ÿÿú`ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0s\0`!\0&\0\00	¦2\0	`\0\0s\0`!\0&\0\00	¦2\0	`\0\0s\0`!\0&\0\0RAFh1FL0M2]$L¤¸ÿ­÷©Oöý.§Ú»ü®~oøòÂf\"IZ*.?<\'ê?CãhÄf*/IÒ*»¤kzªª¦KÅ£¤T^%Î:,¹EfKDædÉL(QÈê(ni(Á£SQÌØÐ±2jt0`(±¹©sCcAÀØÄ¤q\\b14;éë1¨TØÖ-\'¬j~î§Fî)Âicrë«ïÔõ½µÿ>ux6pu¬ruçª-êJ=¤zÒD´q~]n¦¢ì¾§ÒyÊ(÷YØQçl»Ï\'­¢ëwÅ«©ÉþiÞZu729}Ç;lÙv,£¼ïZeÍo¤RE!0-$&å£ÆM:(¹gØØÁÑwDõf¯â¥,½$G\Z*¤GÎ¢Neã*ÆÜ±b:Ôfv»Z1QJà(¡a2Ttj§ìhºïÁÌç(ÙÉDèÄ²Iw¡ÞÑbê9P¤Å´,P±ÈÃ¡s/S<GCIÉÊÃÎ¢vÊQX±QK£¨»iÀÒ?l²F²å¤ÿª1\n	¢[,h`àÀó8µ)DÕH¹F²Û®72f)â÷1s°³f¥0JE0\\Øäà»ºS-f«E\n¢ÅÍO[)\Z:ØwÌã5<ì8I(¨Is&YÉkUKË1%îQræK\"ÑÆ-E£XÌb-\ZÅâÑÒ4£^-$XÌ8¨¾$Tt)CVÆIEµRdÐ±¢æÆÆ#Q±0a\nQ¡PÉ0K¦	D¥.4\Z2&ÁAäÁ¨Xf0¹5&#rd<d\\NäýàìR±,²IRE°.-QùT,QEE%âÆaJ®. ¿yi%Qr)/(E¡(µe\n*ID&,E,Z´T\n*HQuÇ3QÎÒI8 «ÈzâTªSMK§ií£©©äj]1Ê7.p(ØØÉcn§#cRM\n\'Å£qIÄ¡ÄÐ±°ÜÁq¹¡dÐ¤ÉbåÍ\rMYCRjTÍ+sceRQ±ânnnhGÁCcg\\N&¼	rÑÁYK2Ø¼Z`R:.´{·®>Èù>M£ñ|ñÅ»XÞ:>ù$ÑØû\'õçÔvrq?uÿãØëk:¼.ì&½ñGÜ=Ç\"å¢j}Å@Ô}e©DÔ ¢c%sÍôGSü>Øh~ÑCí~1H³¡Fæ	h÷Gáê??Ê?ôpî%âÇ¦>È}ûiM	óÄîâQÀ±íxØ;ç÷QêNØ¨~Qh>.ÕëGq£cH¤ùîocuÇ:aÈp\\OàÖ;aQG9ÆÅ¢¢8×Sí~NG$zã¶8G|huu¸\\Ú0X¨ÐL¿Vë=¢âj)dZ%>¨¡sCØX£ROAî0k7JF\r\ròoRFâ)0&æäÚ5Sß#wlThR%G//hÔ¹Ê,\ráQôEãRQû¾d¼n-Î*:âFcØ`çå\Z¾>ýcwrÏ3Ôú[Áw¼¹2yGµØxÉÔQ©æSÖ^-x\\Ú=-¢Z£®,>ti`Éñ¬öû\"Ô}EüÔDªUI>cxöAD¨þÔ|N\n(*>xúq¬\\ò¡Qç1ôÆñô¯ñx`èZ&ÇìÔÜFhúÆc(ÁüO{Á=¢¤¢¥v(î<c©ÚîR¢~å>-dõè÷Ié\nF¥§Ì&\"æ ¹Dæ\\j%F¦H±ÖÄ`æMâç¤TdüÅÇÀâzFº´PeF±`´Qr£^GAMbÞÑ\Z}QF\"HtIÞ§|PyÌvÞ\\Nf¢p¨Tx¶Mñé?Áí\'U£SðGbXö|QêQ¬%ã®.zPþEÄxÇæRE#äÁzã¨ºR2RN §7(å,dwEqÝcÐPùQ&ñQÐºê(,pô¸Å¢ä°öEÑèE¢ÛFÑâr=§¨Ôöx}í_O**Iý­\"-V*,%\"¤*\nTT°¤(¡Q\"X¢JEDJ¨z\ZGli£àXÄ\"dDdØ5-	ä\\ñrâ\\ÅâÅý=C¶ñÊDdP¡¸òæ­¡RCt¢#&Â8`ô4cØ&waÄ7â5#x9OÖ©Ö(}Çlp9Ç´O\0´I`5\'0óÉö=lZ$óbº?»\'ÖÂÑésBÅ¤GTrEÎqläjOí5>Dú\"\'þDæç$¢EI,R*ÉÿÅÜN$5ªÃã@', 'Online Payment', 'shipto', 'Azampur', '5', 1150, NULL, NULL, 'uo1c1614076702', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 04:38:22', '2021-02-23 04:38:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '240', '6034db0b655bc', 0, 'BZh91AY&SY\'± \0_P\0Xø;Kþ¿ÿÿú`	\0\0Ð\0\0\0\0PÌiL\0`\0\0À&È`\0&	\0ÌiL\0`\0\0À&È`\0&	\0\0Ú&\0`#=!Âi¦ ThF&@§&©éµM=¥<¢LÚ¥Ð2@ØÛñ}§êú®]Oð»ò\\ýß³Ó\'ûe$ÿ%),~÷ÕÆóI©z9Êvó^©òÓ©y7aÉuQg6KIÉ%a,âêQ±£3Fk0¹°ÂlÉÍ.ÍòÈÝ«Z,^^du¾©&³¨©£9hê:\Z?ÓGF¸±K}:=O[ö÷«½ÍÍ³;^2Þ2G¬J§Õ£©ÔÃê»\'Åð<åOk¡ÖQçj»ÅäÍO:ÇsÐÝú8¨ó-9>&Aãî>Z&j<ÅO;ä´G¦p-$;Ü4gæÞÚ²]Oªï¨èhûß%)eêBp¥TðRCyPhdY;TNÇbë¡ªTQRRv0ÕÑ%NMõ²YÀá(Í;\'«3T¥¬Ö7©HàX)jTÝ&Ì±³³lÅ\'9R.L,²¤qYÁwífæf&r&²ÅâÂË!J.»&\Z½Ç2æMÔ©.S9mW]«&Q¯9Õ¡LÊ,»F]«û·]ÖÅ4( ÑH²ì0»%\n^m:×k\nTS\r]¬©iIl)uS$t9hD8ÄÒÈÈ\"±Ð±pQ|IRpÍJ14jÉ)f\Z0ÉfbjÍ«CTÃ©ªíi&$ÂY0Ñ	IK.²ãÍ2&mE.h,e0VRé¢fÍ²d<Ðï§ñ\'Z²ÄZ*%-d]-$§éQd¥)e¥\nP¼³(ª,](eçY*&,)/J(¤¤%\"]i!J)D)R\'\'Juí$7\"=õÒRN¦°ÕTlÍ6\'FkµS±ØÁ£4i»rò¡pf³³3Y)³C,²f¤µ+fÙ¬±£fÍÍÛQ«íÛ²Õ20ÑfµÌ2n¼¶\nK*y>¾ÉøO¶}tÝ«9¬ÿÉû>oíºu\'÷Ý³ø_õaÒg;¼.êLüÒ3Ú³sM5ÆÑcE$ÑEMY,ö;d%äÊwN§âølßYGÍôTÓ)Hs	ôl7î?áa\\%«j¼£L§t§)LÎ¦ëÇ:Î·ÏÁO#²T~Ðü]KµS9CÜ°w;g\'­ÆtÓ ân¹?ÓIÖzÑÕ)¸r¨R)R7r]OðüÏ	8¸§iÙ7y£¥..ÖaeLÃ\'îÙgzÇYRåéd´Sã(»7­e4SG{ÚÃMÌfjjÍ¤jR\\µM\'ù.§öæÎÉS5)ISr^]yV.ã,EOº^hþä¼Ø´®R§IMÔô²]l9Iu3w¼óï2£­²g3óYí]0òÝñÅLÝkSÉyiíi;Ê}åÏâ]3Ã\'ÈOJ~	O´}Ãò¤=§(TõScâ§¶{Þ¦ï!Ô*w1:çºm=ËÊ8ËÆÖ.\rYµG)iî}¦S$Ãþ\rÑ?éàÂQÚñ³u»©>Ë*IÙ=®Iá,Rh²éývu\'Æ©£$YÍÚ]ÜÎTÉ6OÉÊ\\ÝÜàÒgöåÒëJ]S¼g({Y¦i=òRJZG!Ú§l¡âþ§Xy\'&ÞEENö¦cÓÔÿÙ­7h¤©ùÍQÞpS¬³Ò³âê3Å¤KÎïB?¢îxÏÙ))JLçÉ	êN-OK¨SÓ\rã2,dvË5r³ÌÃu¡CåHÚTÉhºêR,ßÐá-.=r¬ïì´Öx¸½Ï&Z*føïC%¡Ä0è	ÂaL0KRAT,¤\"UF\'Iñpw,i=É=ó#SE§äºË©´FRòË\'ÙèNfÎõ-$¢Íºí\Zµ8NqiELÍæøyÖg=ORdLåÜdå)á\r&hrR|!üTM\n>o«w)êh0K4OYtaüÊw»%¤cÌRLFéJw*IiÆm-);ZµlÑ>ùFö½ñ\"{=Ú))P²¬ø»)Â=Á\0', 'BZh91AY&SYÊÉÃã\0©ß@\0ø+ô¿ïÿú`ÿ}\0AUB¤¨$\0\0\0\0Ðh@4\0\0\0\0h4 \Z\0\0\0\04\Z\0Ð\r\0\0\0\Z\r\0hD)èÊd¦I¡¨Ì =2IiPÈb	Ôdj@²®=ú(zÜ¹ù`?Àó<íÔàâÆày1_»ÉRÓäÆÖÇ/öºÊw2´Ì4¬,QN¯Eµ)¬«sm,Â2áÙ&T³´Ãþ2tmµ\'UÌN÷¡ÜìaÌæz{³«aäó\\Û%»=ÒÞàz¦ÛSÑwË¬ú>K¾QREI´´ð¢X±)u$Ì¨GBÂ¥**©%E\"¤»l6ÁOüÖp¤2¢ÊZ8mï|[t1ÉJ%)R)µrÃ\'ê§à¨?E3%)\nP¤Ëk¶Ão³l¤ÅB0ÓLG\n&d¥0Ã.Ê×T(U0ÃöK¼5*D£M.ÁK3Y-j©yf&e%î¥×eÚTæSCNN\r1É¶\\FÇSmPkÄxe)Ã)2áf.ÛM±86a6»tÓ.S	dÃJK.ºã\r2É4Ø¡ÓÌ+2éÂi¦\')ËïIé$?3ôyJ\nR0ÙE+ÄJÑKhÁ${Kp\"Ð`ÀKF(AÙJX](ÑFîÃÁÎm¥C0ÙÍJ¢pcØisl«4Ìö4¹Ñµ;×:6m[o£gUæÓJ«-9:¬uifÎX\\å¥)rÑK(»4®T¾ÕFØ\\¹rá©ÑÐÂº6èèÏ)ÔÃ§LÃ¦°RvTüü§Ö|Ù	yÕâ¨ì=¨ú:y7Í¯@ârÖ<G¬àüN)I6ÊÎÒÒb~¯¼9íõ}d`4ö?Wø|¾ïåÍ^q¹gücñfa/<$ï:ÊdìÛÚOQê4{V\'á¤lØ\n$\0âmrsvºÌÃ©b~ÍOuØæuRR)R9zäÛiÞÌí5=SNçrÂÍË¬©Üs6QàâÉi,§ÂQwÜ²)ÃÚ÷°áËSS\nQ4RÙ8p´í;çIsÛ-ê,Ñ \risnCäË*zå9SÉÕìaÝ%ÔÓÞöÏþÊñ`ø î8?ca½ÐG@Ðq-§¸59=GAØQg¼ø³ðAY\0ç\n*BÈ}SOú>mK¼äx/=é7->¢òñrÑÕÑ·£(Ì©õbb{Q>ãÆ)Rõ©Þòiß\'£æ³Û$Ëî}óàòRigÄh.¤îhe^]Õ<¥Þ,ÊM§Ùs£ÞÜãLS\0ÄNL,[i´2hGe!m¦Áê`OËÎQ`èv#¹äý¥ßå¥%MÊRrñ{|§ój\r¼Íz?ç{FCÅÐô!£I2¤ì<äs>äïÓ¬ï=Bö fÇË\Z5æÆµdõ´ÓrwÇ#´gÉæ1AÉàF1F1B	 4A`Å°Åéy^&ÃyBbuÀG½ÔFNÐ÷ [d5­m<NtfÞjZQFÏ¾vr»Ûé;E¥Y2Ôé:aâ³SäpuòfP4 üõ´ x]Fg+Üà)£!Üm¬7-+Ä³ìwï4o\"íti¸ÐÄ}û¢>¢Çâ÷B\"A¡w$S	¬>0'),
(130, 102, 'BZh91AY&SY5ê¼x\0_P\0Xø?ÿü¿ÿÿú`_Ò\0\0\0¨(\0@\0J¢ª\n0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`ba5J	¢ôêz \r\0h4@4 $ñ2JxFÔÄÊ6C4OIØRþOÜü^\'ÐÖîÚæ}æÇ÷m>óù´ÖçÆD÷;o¡6lØiwÏâîÙ²ìÓÉ³Þð½¦-\rLe,M0ÒÃ,?°ô,½Ã£»llL1ØÄÙ>mÎ¤êÖsMæMpýfC²éçN{fYfg%Ö/æ±læ´Úlµ<g)ªlÉÒrLÞhÄÉá?¬ÄêNNsw5ÂÑn§%ÉwVËaÑm7X±©ÖsÎ&óÿ\'$ã´é4ÈîØn·\\ÕògÏöæ3NG%Óeç;×¡0oÖbÓËXhÇ¥:Ïü?=.g&f·\'ÁÁü]úÎ¯¡ì{>óÚ÷ÞU¯Íá1<Loîÿ:Ï|×Ô³ä¾OÆÄÆ´±XÅ´ÓOÎùî}O{ÒótUÕXÊ°bF2©0a1)þF&1SÁlWæ Ðú0iø£ýrùßúÏ?Rö,i~/ko±ùß]¶òÿFÇÔáÃ{sSêy¹ý§³ÕíWÞáàõEÙÚØÇ~Oiô8.ËqºæüNÂú/¹zºðêÅ¯IÏ-}2apÂ\\jGñxólÇ9´ÚdÑî=fï\'ÓÌé°ÙbÅÑï}Í7äÝ»vùT»û\Z$Ñ<vÉ³ªÅ¥aov¶ñj¶É\' ÃÔnÄ²gµ¦óÒn¼ÄÅ§Ã:Øvv³g½äÙ³f&,|]*ò9-UzÚi8`èbx²É4V©©©´Ýç9NÓ}¦\\ÝÕ¦1v;Y<Ø6d<ìc£\'vN2}Í\Z¬LM¦§iã7§õ´î8sfO£MF2p²;·ZÒÅVÍMJdÂe]¦óyÞmÉr¿kõn:6ux¼àÝÞspj\ZepÊàÅCÐò¶ð9vlÕ\'(¹MMæôå]ß¥ÅË9ócÁàÇõ?ÙàiãuVL\'mçY¿ìòM´çÇ79»«iù½ýgÚkÎêuñ[8mtÇwàÙ¤0\rim9Mç\'*ÝÑîlìÃA£Âæîö®èÔÄ¸fÓ£ð>Os­Ñö1ÛÉ3ÍËÁnÛj»êdîå7§²Òô--Ýibè¶Z\\EÂØº­¤ÑÍÅ;XlÝÉ9o»eºrk£ÑÒsÑ¤Ò×o5VN³ÜL§KjXµ\\×Úq.ce´Y9­W<\\ë[eÂä¶«-ÓSbo8Nsä«ÐMæÕn¸¥¤·,Þj8%NqºÆ>é=ôr{ØnÉ2kEjhÔ­æÔÒÓMS(É¾5Y6Z&LFëS3Ì6Mz²¬dãy©¬MdØ¬­j¦15­UUbhÄÃ\nÌXE,±ee®ª-5Z(É1a&LY7¡xOIç<µHàTñå¢Eýc1¦Î&ç¦oNXu§uèMNK\'\'I©Únzf.K¤å9M\'NÓÞr[¬S»ÍM.©Þaw;òÖóªvM´é4q2¦§eÉÎ®q£ å0·ßWMuÃnÓ±§YùëvlÔÕÚp·§iÚq8Xí;&ó¤èìÇwGy´ã­\\yÖjc9\ZÜw-Æc%âÙõ6ÍüÆÏÕù6lü>Åùÿ¥Èáùx®¯äýóÅÃû>×þN®/ö÷¶zWò|­ûw?ZÅ{{\'ÔÛþÞjæø±}ÞOðÞkÜþm¿ÌbþÏÜä y|M÷§®zÍæSÚÓþ¦\'ÐÓþ¦£Ê¹L0Æ2«C¤áÄÞk£ý_ó¨¹¹§çbì¿ËÌå?ñ»HþïòÓóÉ&V]õ÷V^âu9Ûy«ä^YúO¦¼î\'Òw*v\rfÙBò-æÃZ÷§¥Ü<W	éÔ÷;ÍÇÈ^×µ=ÁÖÃ\'ã¯JÊy6}ö¹I÷¥í}ÍÎSÑìX~)ÑÂ§â¤Ð|ËCø±|õ¼b²SÕþ\'5ùbòY:àº7xLlÆ¢Évø|ÇÀ;Îåø§EÕè]­sr÷<fÄÚv[N¦2ºÀî=\r·ÅëNKtÄ÷Y¢Ðjdý+iðæ¦Ns\'9Ò}3yÍÕ¶iiÂÙk6N®k¡ÔÜ»ô=¯ÞdÁx&LNwv_60þÔ±Ùv\\OúÚUÁKi²Í.³Òo=+a<)ó¯\'&iÉu«\'à}vëk¨Å¸ä³uºÉÚdå1ÉxOlÚxÒÉÄùOzÓõÏýYOØùäûo¦ówOÜ}gÙ6«¬úÉì½S\'½4~Y²õÑ§%ÂúæVÓªê¾qØ´a¡´Åªýí×Íz2¼ÓÅX²üqQ_Tì½rb1SB`Éð:±&/Ê¾Éñ/ÚúÜ§Äæ×s^µ±ö/²ë9¼¸Þ§Ô¼§í8bÝbï>õÔæáxüÃOÉãAõ<Ý22bÉöOxNsÖêe,ÿÙ0Ã?cM÷OúWÚü³Ô>+IÖjpÜ}j».S¨Ì«Î~Öç[î«K­´æVóuoKÑV×ÙÊ{\'ÚÛú»½ÎrèüI¼Ö]å»À»ËØ¹ÖÓ£\'6í<XÒâ®ÎseK\')à¿Ã>dáiN±ÄÉiK%n6¯ÒâïÕÙ?]Rð¯Ú½r*é><îÆ©s¤â]©ï¯,Ù{Ãå`ÉÎ¿)t]k¸ôÍ§Ù>gÐ¾ñPÙzÓâ|âÝø&5>åðXü\rçC*ÉU±ªº¯)³ü¾ÇñyÎµ:XÈ}ë\'SFRÞüú=4ÝuL®/Òºæêk¼Þ¼\'àìo&Áû²GuämNöêÜ¯Ý7Y¹AÒ­j{³\né>KKK\'»Kªúg9öÏÉ9Ï\\Éôf_°:dÂ¾½Òfh²h¦)bÅV%dÊ5F°S(abÊ~&ëÒ»¯¢x-*õVªnº»!âràvNº.ºÚÜÂn·<¸Þ.ku©ª¾Æ={/4ï>&©rLNÉø×yÚm.çGYÖ[2F.¯8Ùabl\\Nkí¼÷MNä%Ú®Äé?S+ö5>2s\\i<¦O#uþÊ?«Òë113þ\'Cñ®Ó¼ó<4zÃµ`ê¾pàp¦¶;Ñyç\'¹rö]Zùó/ÄùG>U\Z=ç\"ù<\'WÁ÷¶^âÙê=¬{X¦MæA¥¶æíl½~KUjõÏQêC÷¬§ýQöÎODì4ÂØýë>ÚüÑfY1©¢ÍWÿÅÜN$\rz¯\0', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '7', 3691.6, NULL, NULL, 'dTv21614076855', 'Paid', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'utfu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 04:40:55', '2021-02-23 04:40:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '888', '6034dba01cb91', 0, 'BZh91AY&SYíõ©¼\0ßP@Xø?ÿü¿ÿÿú`\rÄ()P	PP\0¡EPP\n¢#2b10dÁ2\0hÂ00dÉ&	F!ã&LL\00L\Z02dÄb`Éd\0Ñ``$T§ª~¨õ£ChA¨\r\0T	£@	2¤ÛJ{I©új¥\r=Ê¥026àüO4óor89VÁø3>%Ïññ?eÀïNÖÓêQK®¸²|Ù6<ÛW]6,Þ»ÐÜÊK%*RH²%(þ!AñdÑµdItæg9r301(½GìQÍv×-Þ,\'!pñlÙ°Óâá¥±6eÐ§§ü0w84éÐövtÓråîÝº¸pÓ»¦Î[¿éÀðì0(6N;{ªf)K\'ÒN4¡¢Íí¼¢ÇÖÃä³4âÑcNÖ\'^i£Òç|Nw\\ä®]í²qOç\Zêñ;;Î÷KY)¤¥K,³ët>·SÅÖàãhª!ARD`EQÿÀAI7¥É?¨dp?qe>G1öiÞùqÇÊä¤¡Ë\'Ö¤èQÑÎúÍo}ÿjçO±5J{liçrÿµÚ9	µ5S±Ì¹Mqsì¦I&dÀ`º¢zÚO¹91\Z*N2¦æåKs,\0;\rÍ!åìQ§\r1 è;LÞJJLÝOì³\r0aR!Î¤³jXMj]¢RY\"êZ÷ ää°\'\ZV0lááÝ¸vVr:ëR[e]Ä²Êq1\0°Ò¾E7 à òE9¡ JZ`ÓfçgwìzÌ±¹D!G{lE;±Hâ>â%\0F16iÝìÝXpä°.ãKd !bQ!£MÛ»8>ÐÉc\'FÇG#à¹Ë£!JQ$Lv:~tà=W-6p¸NOit rtw?IÕº\nz	övzpáíF0îi£ï_õoÅ47%6MwY¥j¥æó	wBÉ}f)«ÀÍ©-(E;6{ÝáøOgEä6Ù\r©Û7x68510,Q¡rÆ&Eî\nZ\r^ì08½Ë\rÄÁ[ìê²Bí!Ü:nå§ ÆÎÎ]d.ÜX6v\\:]\nBî·B)\nlÓ`nätáÀ]Ý²t\rìÀY\r!,¸nÃùû¤ëqtt¨ÀB¥H)\n,¡vÈP}ñiH#M1Álád¶Ãt\"nÓPj6¬ È#/CP`A!aFÙ³TL#ÀÀ|C§Â>OjPpï!Ù>¦Èm8r9n[ìÀpäÝ§Éòp87pá±»¿/MÆÁ\00ÅNh6,\\YäxpØxté²l1áÐlapÀtÀ/½pîlÍ¸»g!\\7x°vv94pÙÆÈ`nìÚeJÁTVÉs&\nR,ô¬éæ.]íôÝwËó<©óYÖhóS)7ÒdýÞM§ìÅ«)÷YÆyÁ0=Ï}åßaHûu3Ñòô¹ÌÇ6£·Ký.áÏ¼Qsì\r½KÞ>-<Ùþ,1Ðÿ1LHXi2e0ÑîudÉ>µ\Z¦Rª~-óüzÉ>oågýÕRYE9gþâÂe\rÓóê*&oæ{×ãc°¹iÞ~~\\ìN\n:ÍåFIÂG­ÖÛ0áÐèNtÈÖ~ªÀ©7®ñøÄük¡î`cÍ9ÊOdê2$êÒÂxNÃò6çiºs7¥RTIËIôÉ&ò¦¤n4`Ý)u(ZIRdÜaGIÚ³hê\Z¹\r1ãÖâ%æÂóEåÈÐü\r£w3¹Ì%ëãcò?¦écw[\Z2.Zë¦­¶¦ÞüÝ\rÆÉR¹*T¨dÙºZ\\£ñ9Jl6OCæ´¼(Üyr¬k8NÄÝ%Ó{Y¬*ÃúXt5G!á§î6{	e#Ñõçì½ÍÄôÎ&©ø\'¼4Ã¹Ë(ä2bÉG®\\à~Ë12<eÍMG±<\nF3ÜÂT=è£êýä¤GªnHÁ`-\0À# õ\"°?\0~\'ÍÉÿ[è\'£¢G®fr=âæ³6ñ¸Ýpø4w§.êÜ rý¸hÈv)ôÎ(GäÞv¤¤©9çiºg9_ý)eU)#í1³Àòz§è,50Ä6ÍDÂT7Ï{YEmBÅÅæha0(_R8áy¸»Í<Ø~ÌL!ÅÒhb]7Ìgß4\reÑWÌ±GD(0[\r1ÆQÖ}ÉÐIÌ£8©FE¥Ldí÷jÀýB1CIß¼6©i(ÀÒe$¦ÃÊ|\'2*~¦²Mg\\âp3{ð;¦8Ç 0|ã°§ÉÞÀJJ\Z-\rMóùy7Í!¨	9I½bÒ¡ÒÅúé:\"c8fõBÇYi¤àufºèÙò4à,¼\\#í0¢ÐÔ\\¢jw,Té±©éÏö:~Ó¾BGÜ§÷Gè¤BJ`R+,@¥DV ªTJb$\0-Ä8Gø+Ôæ!ùé0ÜwwÂú6T÷(J´a$ÌÀ´´=/D·8Ç/­(a`Áà}Êr»«Ê(ÕÇ(R\\e316a:¥¦Iê\0Àp\0ìþrÜSæ pv=[Ì?æ(ÒúØ0gív@áåð`\'ÄCÈöPÒ\ZP§¤<Ñ§Ä0|!>&«NÉÒu;á0;FÖsE\ZºÖo8)ÁR^TÂP/f×7bZsy¾^G¼©2bO)H|E!âûÆ|oÈ Æ¦,ü]ÉáBC·Ö¦ð', 'BZh91AY&SYò(¾\0§ß@\0ø+ô¿ïÿú`ÿ}\nE\0*T¥\"F\Z\Z\0\0@\0\0\0hh\0\0\r\0\0\0\0a¡ \0\04\0\0\0\0\0Ð\0\0\0$SMMªiªoO@DAê=CM¨Ñ²IHÐÑ2zM©§zÒz#R<ÐõGê|dQCê¢çÓôCÒÎ·ìmæÅ~NªÀ³OÍÃü]e;2´iS§ÕGpÙ£³fa\ZnîÃ	Ã	)g\rièÉËvêN1<[NNÎæN#Àò~Í)wì\\ÝÝÞ©oP¦íßù0-Ì4MbÁJ\nT:J]×((¹M*÷\"7(b­µ)HlíØlÄÊ§E´¸&KBÑe-Ji\\2ÊM¢R\"Yeëeú©÷¨|>\r¢)HR&ÓÜ¯,?dVe¤[·b7Q³É´¡¦ÒgfXYâ´Ã2Pªi¦dÙÒí¡H6iv0Ùgu¾\r6éK+7JM®§0ÓÏ*y¥¥ÍÜ\Zcf¸º¶Ít ÎãqÁË*e²Ì\n]»fìMÓ\"¦ë·¦l2K&4ÂRYu×hÙI¦âL630¬Ë¦É¦9\rÆç½ªÐ?Õ,¢B\0C#DISñ²ÑB²Ë­,¨R£ÌEÒ±I«YxbÓ\n\"ñ(YDXAu¢T\"RR¥<ó»ÏO1çxZHr	ß6D~2¥a¥ÍVí0iæiylMÛ©â¹âÜÓ,·oËs¥æé¥GK-8:Y:_WnpÊç\r4¦V)ÄÊ°ØÒÆu¾N[3Â´³eÛ8pÙ©Ë\n7nåÊÌnn²8aÒÓX);ª~~Ùðs3îÚ9\"wû>S£+ÙÌü{|§÷=ÍË©Ònø¨ñ6>k&ÊM¤²³Éç3Õñ\rÆöÀó}BÈb`4ñ|ßéú¾Ïb½Ãyg²|£äÌÂ^z$ñ:ÉÝ»ÒOÀÑävIh\'2\'v$=\nsÂm9#¢Äý´u)¸ât¤¤R¤póI»tñfwNÎË7YS#±ÄÜ£Ð~åÒYO¶Qw¡êYMÙéy0ÙÃSR¦ÄÓI´þgí;ÏÌÉIÀlØ³)ÖXØÐIMFÄ836=¬2!¡wa´ÀÍlCQ¼ûÞ§«qæ`È;Îg{ØCQ´h8iÁæ\\]àGAÌ(±ÐÎàgÀ!8T@N@!â9=©©±¢;_|ÞZ{ÝËÆ·iº1*{ßÄõ&xy0Ühâ\\Ú¿áünVçÌöJ)4³í%å©;4LM2/.é=rï\'Ñ©i¤á>-LË½nMæÚbÒÈbà8ÂÄ}í´1hÅñRh´õJ×ÊyÇ©rtö6do:Í£¨aú0r;Í¥©îy<LQ³µ± ¡«Á£\0@»CÉÌØ~æf\"iOíÌ÷\'¢SNÓÑ=,<V\'ÆÌ¦å%\rv1¡ èÁ1w´Ó\rÔâð6N&\'BH~HCDhH1U*D©R)¤\n¢%Q7=ÎÇÞP7 7ÁÖ&/ÜKlC%°lÑCÀÛNÅÖhBÐÊ7=³»Û7o!ÌïQdËSÎK518NÇR¸fa5OÞÏì¹vÈyDÂa,Ù7¡G½±ÿ0ÞniX?±cÌô)ÐØ\rÐSîv4ÁÞl.?fÏ øÄ}ÁøR)*Çð.äp¡!ä\"Q|'),
(131, 102, 'BZh91AY&SYµËåÍ\0¬ßP\0Xø?ÿü¿ÿÿú`¿¡@\0PE \nB¢\0`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LI$©6¨ÛPb4ÐM4yM<A4Ù¤Ñ¡$ðOSjSÒ~¤<&j.\rÇ÷³â|\\Ý]Õ°Ñø5~«¾KÇê~k-ª$;ÜÇÌ¢]qdù4pø¹.ºp³ªïCø¬¤´X¨¥JRR,¢Å(ÿ¶P~­93-$ÞLlÜ\\¸1´¶+ûéÔè¹&%zØÙv»W]rÎÖV©³+©³öQ¹5k5:6j³(Õ£«&ì²³v«´aû²pØ¥¦Ó/)þf¥,tlvö*YÕËµyjYÜnýßÂÚÍmàËã¿³Èý_i¬ýóÜ56vëÎ7FÇaá ª0T²Ë>×ö¼Ïäó»º¥%\n*H(P¥HùR9Cë@´I;OØYBÏáâ}Çyê¥Ùâ<ÔX¤ÊËj*/õ½N/~¿ÑvYS½u=®>¶NÉú5tjl§{¹u0îzÙfeAt¹£ÆÈÊPöêøÙGENNõ¢=&TÐ¼æè´Ë¥´ae,ò½,:½%)5ó¾1A&o/Ô»B!T)Üº¢Ö¥RYíØªuwì¸âaæYe9ªRa<KË#Ä²ÆeDÝ9h²¥NL9²è½ÍØRíÖRrnáNÙ*9)>\n,JR¤Rë7tbNJpQJ^Q«¬´^Jë,(RjÕ2eõ4]££gnF95h°²ÑRå¹1º¢r]ÉÃéyYpäè÷¯1ÃT¡Îì9²ËlÑýVì|æóN&Y\nPÝK¸]ÞE)S\no.ÌÝÜ»Vð²¤J~ÖÂ°ár´aa½¹bæFM;M44ó87iòÓ3i¤ºu,Õ¤tRìdÎ0¼Äem6keKh¦JnËV\Z,ÐRí6bjla6]µ4e¨Êa,jÑ¤¥Yq¬²M\n]0ÔXÌÂ³.¦ºe2¥=çHyZ.ÂB#\n\nå!×²ÒÊ*f)SÆ.\\ÂRBÜ¡²7¦¤ H0F¥¢©HJ¥(³!uAJ)D)R¶s:Þ·\ZD?9Hê¥Ú4]*2ÐÑØÑyÛÃFë;dËfY]³n/)RZlTrQÉ¥YÈÝuÍÚ4]2¹MÚ¶f2¡ª£znÙmUË.á¤Ë-[´i)Ã\n6läáf5Lj³bø+æUIcaIò:±cÅ¿Cäl:\n7Ü£Åw Ñû7\r:O07ßußd¤÷îÕî_þÞ)¤xzÖò,ëÝÈ©sê\r¼Òõ:.èÙýwÙfªIª¥)Ja³Cåh9NòyHézXâH{áõ}¥÷;J=§90(7OpQmÁ3q·Ï#Èé×>aÚÓÅýÍ/Bt7:Çr§{¬£C¹×{¬Wò\Z7~J{lJ8º¡ÎrÅ¤n°<fùùÊP	ÞhsSºð;fgq\"PÀì2|hë)¹9ÍsRêRY©9±O#¾NNIàÚníOÕØ;¢âî%Û.´Ô?#µwàñ)ò}\n}½-VSU5lùk¼ºÒÍ%Öºæí¶ÍØ<n&ÊPà¥)0MÜ&ÓØ]Oú²N&Cä²éSf]yV»;%ÃTúgVUfféOÝîrbiãn)0Ì¬J¥8S*fsx×tè¦Yï|¥GGýÝ¹Ñ¹ù=¯ré³ç§SµMùÇæ³3IíQIvóqÍÖBì,vÀìÈ?ÀÃêd\0>vóÅ\n!`¡M^4÷<\ZO¹íeà;\nT{f³Å.{§9y»WQÄeØ´\\Ü4nJ)¹«IÑ4ñÁg7©Ððu=#Ó9µxÛ¨+ÿT²ªTÞeé{\'Ìí=2Å&Ë2Áí&æ-\nN\rå+ZQí]¬L1(_Õ/9Ë²ñ>ø?«Yèis«3ÖêÔ¼×F¬ÞR=+¬æ¥¦SÊ5Ê§}ì0MàÅ¡1{¤rRÂ`QDCp~^$áß?âw«ØøNÒerlõI:Èä¥¢¦\rH§è|fäÑ¢§å7Fî÷Grïs«²{\'©°^wK½G0þ\nYïOáë`l¥\nË¬Î¯òèÕ2¤¹;E`ïîGyØdxo´\\6Ï±¨Ä/\nå*jÉxäÉõ3*ÉRHâ`_M0ß§Ká29Ý!²Hú×æ1EHÉì#@ÁDA!U¢(ÕEçlâzÜuÑrO}MSÂnnÞtµÑ=êS¬Ä²Éó<çdäô)h(£×98]·Rê\n»%å%M\ZÌÎ0ó¬Ò>s3àlþjtrÏk4N!ÕNj&úñI-\'suWâØõÎç\'¤)<O©¦¡g4ð¦]ó(ý&ë=4õÃL!g¡á£UMuÕ;T]L*KÙÂ×æ3,^ªãï\Z=ãù2èúQâ?Ág\"2$ Â!DbÁùrE8PµËåÍ', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '2ZIl1614080317', 'Paid', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'utfu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:38:37', '2021-02-23 05:38:37', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6034e92a3e194', 0, 'BZh91AY&SYíõ©¼\0ßP@Xø?ÿü¿ÿÿú`\rÄ()P	PP\0¡EPP\n¢#2b10dÁ2\0hÂ00dÉ&	F!ã&LL\00L\Z02dÄb`Éd\0Ñ``$T§ª~¨õ£ChA¨\r\0T	£@	2¤ÛJ{I©új¥\r=Ê¥026àüO4óor89VÁø3>%Ïññ?eÀïNÖÓêQK®¸²|Ù6<ÛW]6,Þ»ÐÜÊK%*RH²%(þ!AñdÑµdItæg9r301(½GìQÍv×-Þ,\'!pñlÙ°Óâá¥±6eÐ§§ü0w84éÐövtÓråîÝº¸pÓ»¦Î[¿éÀðì0(6N;{ªf)K\'ÒN4¡¢Íí¼¢ÇÖÃä³4âÑcNÖ\'^i£Òç|Nw\\ä®]í²qOç\Zêñ;;Î÷KY)¤¥K,³ët>·SÅÖàãhª!ARD`EQÿÀAI7¥É?¨dp?qe>G1öiÞùqÇÊä¤¡Ë\'Ö¤èQÑÎúÍo}ÿjçO±5J{liçrÿµÚ9	µ5S±Ì¹Mqsì¦I&dÀ`º¢zÚO¹91\Z*N2¦æåKs,\0;\rÍ!åìQ§\r1 è;LÞJJLÝOì³\r0aR!Î¤³jXMj]¢RY\"êZ÷ ää°\'\ZV0lááÝ¸vVr:ëR[e]Ä²Êq1\0°Ò¾E7 à òE9¡ JZ`ÓfçgwìzÌ±¹D!G{lE;±Hâ>â%\0F16iÝìÝXpä°.ãKd !bQ!£MÛ»8>ÐÉc\'FÇG#à¹Ë£!JQ$Lv:~tà=W-6p¸NOit rtw?IÕº\nz	övzpáíF0îi£ï_õoÅ47%6MwY¥j¥æó	wBÉ}f)«ÀÍ©-(E;6{ÝáøOgEä6Ù\r©Û7x68510,Q¡rÆ&Eî\nZ\r^ì08½Ë\rÄÁ[ìê²Bí!Ü:nå§ ÆÎÎ]d.ÜX6v\\:]\nBî·B)\nlÓ`nätáÀ]Ý²t\rìÀY\r!,¸nÃùû¤ëqtt¨ÀB¥H)\n,¡vÈP}ñiH#M1Álád¶Ãt\"nÓPj6¬ È#/CP`A!aFÙ³TL#ÀÀ|C§Â>OjPpï!Ù>¦Èm8r9n[ìÀpäÝ§Éòp87pá±»¿/MÆÁ\00ÅNh6,\\YäxpØxté²l1áÐlapÀtÀ/½pîlÍ¸»g!\\7x°vv94pÙÆÈ`nìÚeJÁTVÉs&\nR,ô¬éæ.]íôÝwËó<©óYÖhóS)7ÒdýÞM§ìÅ«)÷YÆyÁ0=Ï}åßaHûu3Ñòô¹ÌÇ6£·Ký.áÏ¼Qsì\r½KÞ>-<Ùþ,1Ðÿ1LHXi2e0ÑîudÉ>µ\Z¦Rª~-óüzÉ>oågýÕRYE9gþâÂe\rÓóê*&oæ{×ãc°¹iÞ~~\\ìN\n:ÍåFIÂG­ÖÛ0áÐèNtÈÖ~ªÀ©7®ñøÄük¡î`cÍ9ÊOdê2$êÒÂxNÃò6çiºs7¥RTIËIôÉ&ò¦¤n4`Ý)u(ZIRdÜaGIÚ³hê\Z¹\r1ãÖâ%æÂóEåÈÐü\r£w3¹Ì%ëãcò?¦écw[\Z2.Zë¦­¶¦ÞüÝ\rÆÉR¹*T¨dÙºZ\\£ñ9Jl6OCæ´¼(Üyr¬k8NÄÝ%Ó{Y¬*ÃúXt5G!á§î6{	e#Ñõçì½ÍÄôÎ&©ø\'¼4Ã¹Ë(ä2bÉG®\\à~Ë12<eÍMG±<\nF3ÜÂT=è£êýä¤GªnHÁ`-\0À# õ\"°?\0~\'ÍÉÿ[è\'£¢G®fr=âæ³6ñ¸Ýpø4w§.êÜ rý¸hÈv)ôÎ(GäÞv¤¤©9çiºg9_ý)eU)#í1³Àòz§è,50Ä6ÍDÂT7Ï{YEmBÅÅæha0(_R8áy¸»Í<Ø~ÌL!ÅÒhb]7Ìgß4\reÑWÌ±GD(0[\r1ÆQÖ}ÉÐIÌ£8©FE¥Ldí÷jÀýB1CIß¼6©i(ÀÒe$¦ÃÊ|\'2*~¦²Mg\\âp3{ð;¦8Ç 0|ã°§ÉÞÀJJ\Z-\rMóùy7Í!¨	9I½bÒ¡ÒÅúé:\"c8fõBÇYi¤àufºèÙò4à,¼\\#í0¢ÐÔ\\¢jw,Té±©éÏö:~Ó¾BGÜ§÷Gè¤BJ`R+,@¥DV ªTJb$\0-Ä8Gø+Ôæ!ùé0ÜwwÂú6T÷(J´a$ÌÀ´´=/D·8Ç/­(a`Áà}Êr»«Ê(ÕÇ(R\\e316a:¥¦Iê\0Àp\0ìþrÜSæ pv=[Ì?æ(ÒúØ0gív@áåð`\'ÄCÈöPÒ\ZP§¤<Ñ§Ä0|!>&«NÉÒu;á0;FÖsE\ZºÖo8)ÁR^TÂP/f×7bZsy¾^G¼©2bO)H|E!âûÆ|oÈ Æ¦,ü]ÉáBC·Ö¦ð', 'BZh91AY&SYò(¾\0§ß@\0ø+ô¿ïÿú`ÿ}\nE\0*T¥\"F\Z\Z\0\0@\0\0\0hh\0\0\r\0\0\0\0a¡ \0\04\0\0\0\0\0Ð\0\0\0$SMMªiªoO@DAê=CM¨Ñ²IHÐÑ2zM©§zÒz#R<ÐõGê|dQCê¢çÓôCÒÎ·ìmæÅ~NªÀ³OÍÃü]e;2´iS§ÕGpÙ£³fa\ZnîÃ	Ã	)g\rièÉËvêN1<[NNÎæN#Àò~Í)wì\\ÝÝÞ©oP¦íßù0-Ì4MbÁJ\nT:J]×((¹M*÷\"7(b­µ)HlíØlÄÊ§E´¸&KBÑe-Ji\\2ÊM¢R\"Yeëeú©÷¨|>\r¢)HR&ÓÜ¯,?dVe¤[·b7Q³É´¡¦ÒgfXYâ´Ã2Pªi¦dÙÒí¡H6iv0Ùgu¾\r6éK+7JM®§0ÓÏ*y¥¥ÍÜ\Zcf¸º¶Ít ÎãqÁË*e²Ì\n]»fìMÓ\"¦ë·¦l2K&4ÂRYu×hÙI¦âL630¬Ë¦É¦9\rÆç½ªÐ?Õ,¢B\0C#DISñ²ÑB²Ë­,¨R£ÌEÒ±I«YxbÓ\n\"ñ(YDXAu¢T\"RR¥<ó»ÏO1çxZHr	ß6D~2¥a¥ÍVí0iæiylMÛ©â¹âÜÓ,·oËs¥æé¥GK-8:Y:_WnpÊç\r4¦V)ÄÊ°ØÒÆu¾N[3Â´³eÛ8pÙ©Ë\n7nåÊÌnn²8aÒÓX);ª~~Ùðs3îÚ9\"wû>S£+ÙÌü{|§÷=ÍË©Ònø¨ñ6>k&ÊM¤²³Éç3Õñ\rÆöÀó}BÈb`4ñ|ßéú¾Ïb½Ãyg²|£äÌÂ^z$ñ:ÉÝ»ÒOÀÑävIh\'2\'v$=\nsÂm9#¢Äý´u)¸ât¤¤R¤póI»tñfwNÎË7YS#±ÄÜ£Ð~åÒYO¶Qw¡êYMÙéy0ÙÃSR¦ÄÓI´þgí;ÏÌÉIÀlØ³)ÖXØÐIMFÄ836=¬2!¡wa´ÀÍlCQ¼ûÞ§«qæ`È;Îg{ØCQ´h8iÁæ\\]àGAÌ(±ÐÎàgÀ!8T@N@!â9=©©±¢;_|ÞZ{ÝËÆ·iº1*{ßÄõ&xy0Ühâ\\Ú¿áünVçÌöJ)4³í%å©;4LM2/.é=rï\'Ñ©i¤á>-LË½nMæÚbÒÈbà8ÂÄ}í´1hÅñRh´õJ×ÊyÇ©rtö6do:Í£¨aú0r;Í¥©îy<LQ³µ± ¡«Á£\0@»CÉÌØ~æf\"iOíÌ÷\'¢SNÓÑ=,<V\'ÆÌ¦å%\rv1¡ èÁ1w´Ó\rÔâð6N&\'BH~HCDhH1U*D©R)¤\n¢%Q7=ÎÇÞP7 7ÁÖ&/ÜKlC%°lÑCÀÛNÅÖhBÐÊ7=³»Û7o!ÌïQdËSÎK518NÇR¸fa5OÞÏì¹vÈyDÂa,Ù7¡G½±ÿ0ÞniX?±cÌô)ÐØ\rÐSîv4ÁÞl.?fÏ øÄ}ÁøR)*Çð.äp¡!ä\"Q|'),
(132, 102, 'BZh91AY&SYÐ,`Z\0/_P\0Xø;Kü¿ÿÿú`]÷Z\Z¨m@Q Ó\0		\0L\0Á(\"¦¨d\0\0hh\0sLL\0&\0&\00\0¨ÊzFÔ\0É h\Z\r\0Ð\Z\rÍ10\0\0\0À\0L\"&Â¦Iä&h¦<F\\\"\r#Å)fP¾¡AÞ÷(Tdµâ1\Z|³¬xÆÊfHúUIXFès©¡îN*/:1	©Õ½GâM°RÕMÈ6\\³\Zê¸ÐÔ·Ôz>\Z÷#¯t¯.µ°+À Ky$BÍæg;°f7r$<K/9^°gpuõTax×°b\\`BB×di×d]Hpo:e}g± ,\n@ÍI4Æ´¥ùÑUbbE©*\0 Åp^@£d\ZFLCtTUq³PÂP%5íLÁX@Ø5YRÜÌ+ÒÕ6)=³¨A%Ð ªõ÷é4RH¢sD]u5zÔå´ñ6$É´Íì¨¢»Æ\nhaA)cIe1ÆF%6QáCzQHL\\j|¬ÌHÇÅ©°d¨EEÙÂ(¹+B\"Â\nu%Y]uU}kæ·¯ ne\0ÒÂ\0?&¡6âhlR ªl	L:Ún\0i\r&&14	¡C@Ø`Ç´Í½\rsxÐfóÂY¢ éS¤\ZÅáÂ»Û}IQ7f0PÝMé·5j©Ò\\]Y(R£®¬jf¸7ÖµTm±\nfæÛF$mÁ³80§`çös#aÆ±ZÇ7õ1-1ÝYO5ªãgmaj½Sö#»õfâÇïiY¦1_XÚ  (~Ç ÛWº]nô^*0»/O&v­¾ÉUªðÜlLïêCCÞXà³\Zñ!ÑC8ëA}ÄÓSÚ`ho6f\Z/­Çð12`ÐØ°Øó¬1Ä;,j^n.ÓH¼e@¸ù£$bäóôÏ4;;vs¦\nõqAåÆÚ_z±âHÏ#CypÓ1#Ó\0`è$²3¼Í£Åó©êfîãÀõ}·eqÐïNf|MíÐ3Pï	±ajûB¤Ü«\Z{±ôr¿u\"XügC¿ºâx`Íô5<æ|ITÎ[/ºôPgîPÌ)ö/Ø¹êäcvãx¾ð@0)ËÓ0ä@ÂÑ!Ü*`%¬¤,\"(3º`ü))êG5Éµ.Â¡C¤ÀåY\n¥Þ\r8K%¸aÛö5|gX±LµBó§¼åÃL÷#c¡Èåd¤ÚO}õ9[%s3Ùr£K@ØvdÍä[#yÕKáÁÊÂ(q\nJÇ6Ä9lôöÝÑò~´x½%pÈII¦Á1@ÄÚ6	CImI´Äå³\"»â*¯Iyk¶PKÀ%$_sÛ&F\\%TÆ`vc6/½42·Ó\\s\nS^²T ^õ/»Úý;KñÈè¨¨¢Ë\"Ðû7À¢Äo± #º°ªü¯\Z8°Â3bÅÅ&QI&þ.äp¡! XÀ´', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'nLzH1614080485', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:41:25', '2021-02-23 05:41:25', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6034e9d2e9009', 0, 'BZh91AY&SYíõ©¼\0ßP@Xø?ÿü¿ÿÿú`\rÄ()P	PP\0¡EPP\n¢#2b10dÁ2\0hÂ00dÉ&	F!ã&LL\00L\Z02dÄb`Éd\0Ñ``$T§ª~¨õ£ChA¨\r\0T	£@	2¤ÛJ{I©új¥\r=Ê¥026àüO4óor89VÁø3>%Ïññ?eÀïNÖÓêQK®¸²|Ù6<ÛW]6,Þ»ÐÜÊK%*RH²%(þ!AñdÑµdItæg9r301(½GìQÍv×-Þ,\'!pñlÙ°Óâá¥±6eÐ§§ü0w84éÐövtÓråîÝº¸pÓ»¦Î[¿éÀðì0(6N;{ªf)K\'ÒN4¡¢Íí¼¢ÇÖÃä³4âÑcNÖ\'^i£Òç|Nw\\ä®]í²qOç\Zêñ;;Î÷KY)¤¥K,³ët>·SÅÖàãhª!ARD`EQÿÀAI7¥É?¨dp?qe>G1öiÞùqÇÊä¤¡Ë\'Ö¤èQÑÎúÍo}ÿjçO±5J{liçrÿµÚ9	µ5S±Ì¹Mqsì¦I&dÀ`º¢zÚO¹91\Z*N2¦æåKs,\0;\rÍ!åìQ§\r1 è;LÞJJLÝOì³\r0aR!Î¤³jXMj]¢RY\"êZ÷ ää°\'\ZV0lááÝ¸vVr:ëR[e]Ä²Êq1\0°Ò¾E7 à òE9¡ JZ`ÓfçgwìzÌ±¹D!G{lE;±Hâ>â%\0F16iÝìÝXpä°.ãKd !bQ!£MÛ»8>ÐÉc\'FÇG#à¹Ë£!JQ$Lv:~tà=W-6p¸NOit rtw?IÕº\nz	övzpáíF0îi£ï_õoÅ47%6MwY¥j¥æó	wBÉ}f)«ÀÍ©-(E;6{ÝáøOgEä6Ù\r©Û7x68510,Q¡rÆ&Eî\nZ\r^ì08½Ë\rÄÁ[ìê²Bí!Ü:nå§ ÆÎÎ]d.ÜX6v\\:]\nBî·B)\nlÓ`nätáÀ]Ý²t\rìÀY\r!,¸nÃùû¤ëqtt¨ÀB¥H)\n,¡vÈP}ñiH#M1Álád¶Ãt\"nÓPj6¬ È#/CP`A!aFÙ³TL#ÀÀ|C§Â>OjPpï!Ù>¦Èm8r9n[ìÀpäÝ§Éòp87pá±»¿/MÆÁ\00ÅNh6,\\YäxpØxté²l1áÐlapÀtÀ/½pîlÍ¸»g!\\7x°vv94pÙÆÈ`nìÚeJÁTVÉs&\nR,ô¬éæ.]íôÝwËó<©óYÖhóS)7ÒdýÞM§ìÅ«)÷YÆyÁ0=Ï}åßaHûu3Ñòô¹ÌÇ6£·Ký.áÏ¼Qsì\r½KÞ>-<Ùþ,1Ðÿ1LHXi2e0ÑîudÉ>µ\Z¦Rª~-óüzÉ>oågýÕRYE9gþâÂe\rÓóê*&oæ{×ãc°¹iÞ~~\\ìN\n:ÍåFIÂG­ÖÛ0áÐèNtÈÖ~ªÀ©7®ñøÄük¡î`cÍ9ÊOdê2$êÒÂxNÃò6çiºs7¥RTIËIôÉ&ò¦¤n4`Ý)u(ZIRdÜaGIÚ³hê\Z¹\r1ãÖâ%æÂóEåÈÐü\r£w3¹Ì%ëãcò?¦écw[\Z2.Zë¦­¶¦ÞüÝ\rÆÉR¹*T¨dÙºZ\\£ñ9Jl6OCæ´¼(Üyr¬k8NÄÝ%Ó{Y¬*ÃúXt5G!á§î6{	e#Ñõçì½ÍÄôÎ&©ø\'¼4Ã¹Ë(ä2bÉG®\\à~Ë12<eÍMG±<\nF3ÜÂT=è£êýä¤GªnHÁ`-\0À# õ\"°?\0~\'ÍÉÿ[è\'£¢G®fr=âæ³6ñ¸Ýpø4w§.êÜ rý¸hÈv)ôÎ(GäÞv¤¤©9çiºg9_ý)eU)#í1³Àòz§è,50Ä6ÍDÂT7Ï{YEmBÅÅæha0(_R8áy¸»Í<Ø~ÌL!ÅÒhb]7Ìgß4\reÑWÌ±GD(0[\r1ÆQÖ}ÉÐIÌ£8©FE¥Ldí÷jÀýB1CIß¼6©i(ÀÒe$¦ÃÊ|\'2*~¦²Mg\\âp3{ð;¦8Ç 0|ã°§ÉÞÀJJ\Z-\rMóùy7Í!¨	9I½bÒ¡ÒÅúé:\"c8fõBÇYi¤àufºèÙò4à,¼\\#í0¢ÐÔ\\¢jw,Té±©éÏö:~Ó¾BGÜ§÷Gè¤BJ`R+,@¥DV ªTJb$\0-Ä8Gø+Ôæ!ùé0ÜwwÂú6T÷(J´a$ÌÀ´´=/D·8Ç/­(a`Áà}Êr»«Ê(ÕÇ(R\\e316a:¥¦Iê\0Àp\0ìþrÜSæ pv=[Ì?æ(ÒúØ0gív@áåð`\'ÄCÈöPÒ\ZP§¤<Ñ§Ä0|!>&«NÉÒu;á0;FÖsE\ZºÖo8)ÁR^TÂP/f×7bZsy¾^G¼©2bO)H|E!âûÆ|oÈ Æ¦,ü]ÉáBC·Ö¦ð', 'BZh91AY&SYò(¾\0§ß@\0ø+ô¿ïÿú`ÿ}\nE\0*T¥\"F\Z\Z\0\0@\0\0\0hh\0\0\r\0\0\0\0a¡ \0\04\0\0\0\0\0Ð\0\0\0$SMMªiªoO@DAê=CM¨Ñ²IHÐÑ2zM©§zÒz#R<ÐõGê|dQCê¢çÓôCÒÎ·ìmæÅ~NªÀ³OÍÃü]e;2´iS§ÕGpÙ£³fa\ZnîÃ	Ã	)g\rièÉËvêN1<[NNÎæN#Àò~Í)wì\\ÝÝÞ©oP¦íßù0-Ì4MbÁJ\nT:J]×((¹M*÷\"7(b­µ)HlíØlÄÊ§E´¸&KBÑe-Ji\\2ÊM¢R\"Yeëeú©÷¨|>\r¢)HR&ÓÜ¯,?dVe¤[·b7Q³É´¡¦ÒgfXYâ´Ã2Pªi¦dÙÒí¡H6iv0Ùgu¾\r6éK+7JM®§0ÓÏ*y¥¥ÍÜ\Zcf¸º¶Ít ÎãqÁË*e²Ì\n]»fìMÓ\"¦ë·¦l2K&4ÂRYu×hÙI¦âL630¬Ë¦É¦9\rÆç½ªÐ?Õ,¢B\0C#DISñ²ÑB²Ë­,¨R£ÌEÒ±I«YxbÓ\n\"ñ(YDXAu¢T\"RR¥<ó»ÏO1çxZHr	ß6D~2¥a¥ÍVí0iæiylMÛ©â¹âÜÓ,·oËs¥æé¥GK-8:Y:_WnpÊç\r4¦V)ÄÊ°ØÒÆu¾N[3Â´³eÛ8pÙ©Ë\n7nåÊÌnn²8aÒÓX);ª~~Ùðs3îÚ9\"wû>S£+ÙÌü{|§÷=ÍË©Ònø¨ñ6>k&ÊM¤²³Éç3Õñ\rÆöÀó}BÈb`4ñ|ßéú¾Ïb½Ãyg²|£äÌÂ^z$ñ:ÉÝ»ÒOÀÑävIh\'2\'v$=\nsÂm9#¢Äý´u)¸ât¤¤R¤póI»tñfwNÎË7YS#±ÄÜ£Ð~åÒYO¶Qw¡êYMÙéy0ÙÃSR¦ÄÓI´þgí;ÏÌÉIÀlØ³)ÖXØÐIMFÄ836=¬2!¡wa´ÀÍlCQ¼ûÞ§«qæ`È;Îg{ØCQ´h8iÁæ\\]àGAÌ(±ÐÎàgÀ!8T@N@!â9=©©±¢;_|ÞZ{ÝËÆ·iº1*{ßÄõ&xy0Ühâ\\Ú¿áünVçÌöJ)4³í%å©;4LM2/.é=rï\'Ñ©i¤á>-LË½nMæÚbÒÈbà8ÂÄ}í´1hÅñRh´õJ×ÊyÇ©rtö6do:Í£¨aú0r;Í¥©îy<LQ³µ± ¡«Á£\0@»CÉÌØ~æf\"iOíÌ÷\'¢SNÓÑ=,<V\'ÆÌ¦å%\rv1¡ èÁ1w´Ó\rÔâð6N&\'BH~HCDhH1U*D©R)¤\n¢%Q7=ÎÇÞP7 7ÁÖ&/ÜKlC%°lÑCÀÛNÅÖhBÐÊ7=³»Û7o!ÌïQdËSÎK518NÇR¸fa5OÞÏì¹vÈyDÂa,Ù7¡G½±ÿ0ÞniX?±cÌô)ÐØ\rÐSîv4ÁÞl.?fÏ øÄ}ÁøR)*Çð.äp¡!ä\"Q|');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`, `user_confirmation`, `online_cart`, `cash_cart`) VALUES
(133, 102, 'BZh91AY&SY¤N»\0/_P\0Xø;Kü¿ÿÿú`]ª,c) ª\rsLL\0&\0&\00\0 D¦êSF\0È\0\Z\0Ó\0		\0L\0Á&¥)ê \0Ñ¦@\0ê\0ÐÓ\0		\0L\0Á\"\"hL\ZFI¦G¢¦M=!é=F¥!hHgIà\"{$\0  <a»àú] GTù\n!Çð.1òpÔWwï,¤n.2>$ÝRÐ/!32ÙÃÔ~$ÕAz©°ïRI&VZFºn 5\ZËzX3é¯Ú&ì2ÇAy³^\0 ÈGX$Aæ\\h<Ï´cf8R¡SÀÎ0gP:kð.¨Ã1¯nLA	V,Ó®ºàÚtÊó<%dÐTi35#0i41i¥ùÑUK11L¢ÔJ(1\\#(×gO%¥¡²*ª¶×LÙ(ü!0V\"6\rVfÔ·\"Jâ4 uQc¢ÝÊO1Õ (*=D>9ÌJ`Y¢-jj¨eV²	±&MÓ6Ô ©wÐÃ2SIdbSJ< ¨mJ)	pq Wº¸0ZD¥½­NR1P3³Q*ÁB\"ÁJ:¬®º\nª¿æ¶¯°le\0Ò¥@Ê²P\rÌ¨­QLJ-QE\rv-\0È2$DF0#K(L$P}tM+õ!3I\0.wÂZ4TémwïÆ¶Ðâ*&ÌÅ)µ6ÆaÌÕ:KB*:çS6 Û9ÍQ­¥ìkQia¬x4å)ÊtúÏAùO¡ÜX©cæî=c´È9ÞZ<®Å\"ºàrVJïÑ8³JÍ1úÆ±Cõ=ÇR>Â´PceÄ#£Ø{ÏÄý¢8ÜtôÉ	&ÐØhLïèI¤ù7,Æ¼GÅC!õPGOa\0rÔx\ZM¦ÃIô¸ëFc¼LQ3°{N¸kAÃ!fò¸øØ\ZÇe$\n>¦CQÅ?«á~¶\\.8sFRÒ¢ËË6µ\"¾õcÈSI´Ä¸iIÁiÈ0L÷Y?3´ÍcÅñ©Êfîß¸÷ý¶%ÈíN&{Íí3Pí	±`Èöä4÷>µÌê»Àæô11ÇzLävö\\NðÌ¶£Ú`AíÈ$LÙ8¶º´ S½þ ÜüO¡Á9QN·)ªÞm¬\npârÌ80´Hv\nØ	k)¦%qöKJZtI#á¬.Â¡C©Ë6³. *K´$pK`Ã«îjlGH±LµBóÈÅÃLø#\rÚã¤àp²Rk\'x¾ãô8É\n¶Jâg¢åFÐuiH¶FÓ¢Â6#+\nT¢1Äd(9\r+ ×Xá£»ªîOø#ÈÅáP-%H#D@(H°¡%41&ÔÌN\Z7B+±-âªî/-c!uJIx¢¤ÔàµÉ÷	U1FfÅ÷¦ Ò c +q7EÇ 1Xë!ïEJèÉ¯zõ`[PÏÏ¨¿@oJ,·¢(n)ýÙ´>¦âB¿cAF\rtaUøo!1îBd±cPRR\rOñw$S	\nHë°', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, '33FW1614080576', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:42:56', '2021-02-23 05:42:56', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6034ea30e1f1f', 0, 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ', 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ'),
(134, 102, 'BZh91AY&SYY£õ\0¶_@\0ø+ô¿ïÿúP<Ö#CM1\0\0\0\Z\r\0hH	\"(z@hÐ\04õ \"èÂ`hÑ\0c\0\0\0\04\Z\0Ð\r\0!2FMôÓS´Å S\0¦Èà>§8ÄQÛâwwdh3,dµíÐxêH=£$$çÃî¸ê1Ô}¿vs­aÝ«FõßT¹wÔåzYÖö×i(ÝS-Dï/5àXºÕ¡feÀ  Maàu;ª2ºÁµ§H ¤YÈNBÓ%4¨ä$?=èÍÒá!R\nPÈ¥Ó®³¡Ô*Ã`6Äõ\ZÝnzSÚÁ©ÉÊÏaIKB&î1X6UUîÖHhº«.H,RÄ»Wh¡¬¢Æ¦\\Í÷Ù\Z(¢h4a!ì$­AËZ´õGnõw£FÕP¹ÛËÐZ¥\nµ\nÃWbÍ\nZ,§d­,Ê8­_Âì¼× ¤F )±.©ÂU´pFIô5RA,b J/¡¯[Î¾t »*og¹Y\'ðÊ2G[~2u³w{ß[;Iµv8v¶FÎTÈ1ÜM3µemnç9¬:è¦oG9[]ÜrÇZLë<fê¾yás¼°þCó4¡\'ewÉ0ªÕF\r¥jFBg©Ø×?ègÌübë5æ}ßì~L\0Ú¤G#ÑzP¼7«pY¬¸â²\ZûÌõLFöMeL\reø$Öã1ó\r\rýkê\ZeÙe% d^XfóÜÔd·ñW^Î·ÜLg±6,{´¶hþÎóÄè±¦t)&Gç±\0^ÜHªl© ò°w¾t1Û<Nìøÿ¯\"GV³Ðý¹:íPtÎð4 a!Ä»VÄø<FÐ\r.¶9!D ñV3©Û¾â\\ÅºFÃ±bØ)å-ðVôPgÉw¡hf{»k·öÍàONCd|0	k¶\n´DÒõåc-m}vY\'<ºÑ04a*`rÏxÞaai|ÂrD%Ü0ÓØØä,x4ÊÐ,gìKª¾á¦Xô\Z¿=±ÓQÌçrR6ä£üÈÓl¡¡ÂM¬¬h¶ì\r¦éì3É¥ÊB_ÈPw\r* ÛTånww>oø<}Ád\"¿QYLÒ4\r&Iµ3qÓ.PoKAQ~Zé $IÞE	M°bæác,t5_*Úiê2ðèê¼£\n8¸\Z]êE#¼÷a]c>Ã#¨fÔÔUfâKÜyï î2ÂoD k}¨¾SÌñèÜååû#AC,?îH§\n3~ ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 280, NULL, NULL, 'EukH1614080604', 'Pending', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'utfu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:43:24', '2021-02-23 05:43:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '20', NULL, 0, NULL, NULL),
(135, 102, 'BZh91AY&SY£Ó(æ\0\"ßP\0Xø;Kü¿ÿÿú`ÿ\0\0@\0\0\0\0\0sLL\0&\0&\00\0iÀÀ\0&\0aÍ10\0\0\0À\0L9¦&\0\0\0\0\0	j§¤A \0\0\0\0\0\0\0©!h#&2§å6<©t6?ÃóREù°þWJ?E+è¢çÏØÿ¯5J£å*IÕúM/TÉyiò/%Û©ú®ºë92ZNL+(§ÑFÆXVÎM¬Â2jæÃ	³%,Ù¢ìØ~ìÚµ£ÌLLÝ¿lÃ\'6ó¨©«Ihàë4¦íqcEîÿÌÃþ;³áN\rWèññ\nzæiôfàú<s±JNNjtYOÍß&fOÓî)ðd={ß~u*jÂÑÈ¢KnM(®®µéë©gk¹ÉÜø,½	F² Í*bææêa¤¨¥JEIÜØ2Têh§ÁJppÝqbZC5HÕ7,KEµ*nÃ&¬±6Y³ã²èå(YJ%)R)²Í°nÙùSU)FÒ¤´P,²¡I¢ë¶a³ð{ØfÝD²Ël¼»fÏñfÏÚ»½FXJ,»6hÃWì´5P]B©f:9ÅÎpv®Ú©¦\Z®»f&Â]Ñâ@Ã!ÃããG@E\"D#Be\0¡¥ñ%GÔ£V²hÍL¬À¥Ú³jÄÐÕ0Â*j»ZfÉ É0L4fÂRRË¬¸Ã3FLQC¦\ZL+)tÑ3fÄÙ2Lz?i!Ø~ðéLA)HR¢RË$Âå¤ùÔXR²ÒÊ(^YUKéCÐ¤ªX±¼J%(¥BQu¢^Áe­\"YD)Rs®G[¤âG*9B©V]íMY°fÄêf¹³U:.è¦­Y2j×v\rXÔ8,´Ø£ÖjlÂæÌÖf£%Y³Ve2Y4T^©¼Õ}bµbjÙ³flæíÌ(Õ»-\Z­6ÉL2p^azRr]iæý¼ç÷çàÖ~|ÕÖ~i#­ï}nû\'4å³U¾NS£9èîjsôø·ÔrLßÓCóXÑI¢(¥VK:HKIþçÚu°úJ?ËòpSCèbÁ°Þsâ|!5S32}\'ä¤295Xí\'3ù4;R£å-zG©CÖ°zSâÚsæXüÎy£¦¤ÞqRR)R6p?ÛÑ&íÓ½¤êÎ775Ë¬©3~­¢¥Ê<_õd´Sí]ÞóYMÑÞô°Ób¦sµjk4R©JQrjÕ4\"ê|ç9Ù77%å×i¢î2Á´Tû%æOÙí^lZW)S®Su=,§F¤º¼ÓÞýåGGkÐÈÿOSÚºaéÞ3»ô¯/1=¢í&À©ÎX÷,»y9=)ðJ}g¹JAUG­¬ñ\n²æª)B§®}c9wäTìbuOlÚZ{\\EåãKG¬Ú£§µúÌNIôlnú;ç¤¥*R×Ý£²U~*ZIÉê·3ÊX¤ÑeÏa1.Ð.¤ä¹¡*hÉ^]Å5x22MSü²K<»ÚÍ3bÒJi0ZRê²ñÌÒXd$û!J^RÒ9\'l¡æþ§Y;W\'y7QSFCYë~RïblÍISWú6wºÖzßòM\"^uË¼ýþ\'û×d¤¥)3]=3îÑÌpyHÞSÍ)Ù,ÑÆvNÖ\Z­\n}#yS%¢åÅï*Y,z¥#IÝ--)ÒÓIâàõ¼=Jx©ðÿ©RREJ¯¥IR***T%J±H¥$QÊIIR%Tw1:NÉÅÞ²2v$ð&IöÍF\'!äºË©´FRòË\'Õät¼ã<T´(ØóÛ®Ñ«X©ZQE&sy¾ë3)ºn58ÊxÃ)ÖTt­HÑÔQø¼æ­Üg¬Ñ0K4OYtÃõïvKI>nåÓû²~\nNBÊy*%§Tã-);ÜY\'á(Éñ÷©ùHïsßª)IJcÿÅÜN$(ôÊ9', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 810, NULL, NULL, 'cGED1614080641', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:44:01', '2021-02-23 05:44:01', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '400', '6034ea71ea1d9', 0, 'BZh91AY&SY²q\0/_P\0Xø;Kü¿ÿÿú`]ð©1d¢ÐG4ÄÀ``\0\00JhSÐJMM\'¤h\Z\0&Í10\0\0\0À\0LjR 2\0\r\Zd\0\0 \rÍ10\0\0\0À\0L\"&DÄ¦Iµ\Z¦È¡=!é4~©`HZÁÒxåÉ\0((d.ø?{àX¡Q×Äkó\"Î²Aæ2C\"ñ3$}k¥jè£?FbMªibµõ¥5¬ciÂÕL®2ªÏ$ge¨×^Óqo°÷>{½ÇðqÇ<¶7ó+Ì:öDÃÐäx1hj3y2CèT*y\ZBñy®¾ó\n4\ZøKbHH[^ÆY§]!ÁÀê8ñ<%dÐTjhm$FÓ\ZhhÖÒ¬Ô°Ã#$Ê-¤¨r\0ÐÆ¹N&%ÕÑ±4@\r±;Åñ¢ÆåPJkâ	±°j³6¥»É+ÒÕ=Èf½ôm7D¡@ñS1n5hZMF`·\\M2m3v@ÓÊÈã89¡b;9£e,&5¤\"ZòÊóiÑè^¯%´ÈÌ¼Ýá[U*[\n&Àµj,.)**QÔe1UUñ^ëÔoe\0Ô¥@Ê²P\rÌ¨­QLJ¶)ED5Ø´ ÈÀ,¢0B\n:eõÑ4¯ÔÍ$\0¸`i5ßE,½p)Cn¨cw¿}R¶[2$b«Èrâ\rQ­>¦&UCiÅ%&Nö\\cFrJ/©ÍÚI³Ü3#i×î?ÑÿÌð,T±ú<Xï3+32««`Ì®ÑüÍaø³ycô4¬Ó¯XÜ  (~gÜpÏPað9ª´³¼ùo¡Úd8ZØt·F©8ó`êix 55>E+A¯2ñ¨f3ÚëöM§ÄÄÔàlÐ5 _lb4ÀÈÍCbÇ`|°Ë ì±´¹¼Ã]`\"äÃ*ÜhWDlðº²¶ÍÓ»Q\"(¹p¹fÂãmH¯ucÌCSÓ2#Ó\0b÷Y?C¼ ÍÃÉ÷TÏ}4	xrâ{þ£[Î²ät;åS¸Ó±á¾wI%ðÎÃï (9§¼Z{3ÃÕ4].rC,}é3¡ßíÀA 3\r§¸ÄÝI*îÛÚÞ®Äñÿ7ÂË\r÷66á!í¦kºp¬\nsî:hÈZ$=¢¡6ZÎBÂeªv+ÙQW_JcÙ+04`J³y+C¡T»Á²G	f·;Ãh$[:Åeª:|ö¬p\Zgäbxîï3SÎÉI¸Bÿö9D[	%w\ZlÁQ¥¨l;EÏbg-Àê¥áÉÊÂ(²\nJÇ7D9ìðíÃ£æüQæbø@IR ÈÆ\"\n, (I\r&Iµ&ã#Î0ïKª¼±»e$¼BQRHês[¤ÌÇªÌNÓ\\¦ÅîFÃU\\©Æ0;TÉdY*P.Ú÷­¶ü;KåÐA	QQE$E%?öp ¡Ä¢É7ØÀ3º±ªÿb[ÈL{,XáSü]ÉáB@J~ÉÄ', 'BZh91AY&SYÞì}\0²ß@\0ø+ô¿ïÿúP<Zî \rA	DSÊ= \0\0Â\0\0(4MBHh4\04h\0!I%=@Ó@\0ÓÒ\Z£MÀ\0\0\0\r4@$HM\0Ó@\Z\r\0zFHÀSé£Ü1Iô4}¶?GF¹±CíÔ8ÇÌ{u$Cmö~UÉqøësbkVrÕÂb³&Ù5<m©µø£|Çn$G3\'´Ó2åh9jAYr\'É$AcäG¹3¸` çÌÚt\nEZI\nãFÆ\"ÀÓC¯;L£;H$(!¡È«T¶±Üwê*ÕíÔ\\	M\ZBvß­ûoö.¤MnÝëÜêÈÁÜ*T+BwzI7 ²Æº´ÈÉ<Êàsr4!9¢H(ÑdC54SjôÁOZ9xÉæN=Ö42Õ¦vfª¼\nt$¬«Y**xKÕ!|ú)NB¤5Ï8f%:pÙ0ÄÓk<&,,.Ø	0 J.éÅ]Ã{/nNr\"&¤ç¬-ÍË#l~y9ðÊ¬ÍðâLkvâ Øâ.0ÙIµÁoP>ÜÂàÓn\\ãb3m¶Õî\'3s}Ö7È²â	,9:ú)ä(Ê4qµIÌÖdL,æ\'X#æRR©L+5ai^ìz§ê3ó?â¦ ¼Rn9p>e\Z2ùBPâ¢4¶Åq%kJm*s[¿±¦sÅÛici!ö©ÑáÅà½ÃÊJìÙ% l0.3î@@Cð2\\yÃ³·-\'l*Le	6*\r»\nµV?ØÌàbPiD¤8/,Îä&ËG°fáàõ¡ùì	:éÈóó\ZâHî×=L´0uÜ ÖD;¬XæÔð-¯Cêz\r6]îh1Ñ\\`Îç%Ð\\$n< óHÈYczÝçÔÈ\'SFÓg©¼>¿©)×±ßQ.<cI»r±tÄI<7A=ê¦ÆôÑDi2å«8Pv&§9[K\n%è\'\"!,×!_¡¼9HYt\"i \\ñô%åaQ¦\\üF°é¾<fu:Õ)taüÍHÓl¡±±R£YQ`v\\\\ï0ü\Z1HR1\nJÇ28D5ËÏZø}_ÁìB+1 f!bi\0m!CImhLàdvÙÒN)j*/¸¸­c3´$ð	\"×|õp1;á+ºi¨È\nTÄÆzEI,Ë!ôE	Q_½Ø[hÏRøì<	MMEd½Ç§\0aþøèb(}\Z ÌÄ®xÑ}HÝÌrùÑþ8r£ACXÿÅÜN$7»C'),
(136, 102, 'BZh91AY&SY]ßÒ\'\0\"ßP\0Xø;Kü¿ÿÿú`ß\0\0@\0\0\0\0\0æ4À&C\00L\0\0`Ld0\0À\0\0æ4À&C\00L\0\0`Ld0\0À\0\0mTô\0\0\0\0\0\0\0\0©!&	 ORyM\ZhÚMò&.Çõ~JSè±ß ºò)Gæ¥}\\ùaõ>m¯5J£ô$éùÍ/TÉyiúJíÔÿk®ºÎL&Jaeâú(ØË\r3YfÕÍf&JY³EÙ°ýYµkGºÝSN,ÛÎMZKG:³ön×-gÇ­ö;ßíá§*qr6_±ã-ã õ£Òiõfàú½ï¹Ø¥\'\'5:ÞeÞäÐÍðtZ{Ê|ü¾æy(è©÷ª#ÁI±i!Öà´d³ó]e,íw<{ß¡#ÖT°°¥%éJ9¹º.4¨¥JEIÑnlFJ\Z(Ý¼¦òÒTÓRÄ´YKR¦¬6dÝ}5jÊK©D¥*E5Y«fÖÌä1(÷JÑH¬²¡Iëµa«ØàäÃ7D²Ïªû©·b2};XpVfT¡vKåªÌLYç~N©¬Þpo. ÙH³vì²fìYÅM\'jÍ¡J*]ªíXl³÷fmÎ-fÒl)uÙ¸JGx8br\"	òv$¨åbjÂSU2dÑ5»VX\Z¦EMWkLÙ4&ÉØJJYufhÉ3j(atÃAc)e.&lØ&Iú#²Hw´;i%)\nTJYd\\´;-¥,´²¡Je©bÒ](x)*%í$Z%åQJ)¢×^Au*D¥¥JuNNªt:í$7#¨UW6®ÑTÕlN×å)ªkºÔÕ«&MZîÑÁ«¡pRpgÂíÙ.nÑf2Yu³hÍLM¬¬Ý«VË­³)Í3g7naF­\\¬Æ©\rjÉL2n¼¶\nK*z¯º~ØóOô÷MNgÅ${ÅÊrOÍù9L§oô|\ZuÊCØâºi«ü(ì4?ÒÆM)E(²Yâì)ñÓ±ÖQø¾2Î*hÀbÁ¸äuÐ|#©Å@>jQÇ&«æs>-ó¨ùËCïPÀã(ðtbCµä°zÝ\'ÞÚsiÁÈs,OÝô#¦¤ÞqRR)R6p?\'l·Nö¤ÖuÌÜÜÖk.²¦DÍõlt*\\£ÎÿË%¤²ÊQw{Ð²)£½éa¦ÅLæ\n3jÔÖh¥#R¢äÕªi=¥ÔùÎsÍ77%å×i¢î2Á´Tò%?gØ¼Ø´®R§T¦êzYN.¶¤º¼ÓÜÿ£­ÚüÙáëy.=SÏ8©ÌX§©yyä.Òi<\nåjÉK°÷ÒrSøÕ*AøÑ${OP©!îl¢*{\'ÚûË¼ãS±Õ<¦ÒÓÉÄ^^0ä´qpjÍª1*y>saÿÑ<ÔR)GcÆnÍÖóC÷Yb¤x½SÖäyåM\\öíêN+¦eåÜYw{æÎZf\'÷g27x84ä½¥#9tºÒTóKÇ39adí)yKHäiCÐügBv.Nâo\"¢¦³Öü¥ÞÄÙ¦¯ÆPÙÜêYê{£¤ôO±/:åÞtÒ¬ñ®ÉIJRg.ºzg\'ÅÅ¢2R:/D§d³G)Ù;Xj´(|)Ê-.,ßyRÉc×)\ZNùiiN»M\'Úô4zÔñSîïJ¤J«*X\"¢¢¥BT¨KRAU,¤\"UEçTÞx¸;FN´É=³Q£IÄx®òêm%Ñ¼²Éü<çUçÙà¥¤dQFÇæÝvZÅHpâÒ,3ÍðîYõMÓq©ÆSÂL&°â¤þdþ)\Z:~«wê\'´L&ÍÂaÝ0úJw¼ÒÒO¹tÃä©ÀR\niÊo-);[²Oí(ÉïkÐÿ\'ûP¥%*RUþ.äp¡ »¿¤N', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 646, NULL, NULL, 'Cbop1614081541', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 05:59:01', '2021-02-23 05:59:01', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '6034edf3b86dd', 0, 'BZh91AY&SY¢5\0/_P\0Xø;Kü¿ÿÿú`]ª,c)@(4Í10\0\0\0À\0L¨=@\0! Ðh\0sLL\0&\0&\00\0§¨F\0\0¨@sLL\0&\0&\00\0¡2i4ôzLz¡!\'îPlñBïéx(ES¤Q/Ô²ã\"\Zêîã}åIXFàêS#Ô8*ø¢3-|GâMX¤ªRI2²Ò5Óq¨Ö[ì=`Ï¾ãènÃ,t8àvDeÆÌñ9F1fi°!ó*<Lásx¦¾Òê3\Z÷KrbHZ´AftEÔÓ ÜfWâA,H&¤#I¨Li¡M/Î¬ÒXae¢TAà¼!F¸3:|--\rP`TE¶¼ÂfÉ@t×d&\nÄBÁªÌÚâdI\\Fª,t@{¹Iïb	+¨3â!ëÉÀ@À½¢/¾jU¬ÂlItÍQ\nï)¡9H aJbJ08l8ÈÄ¦xAPÛ\n)	pqQ-W¼\\ZD¥½®&R+3³`©1`¡`¥IVW]CU_jóH[WÔ62i\nR eY(æTV¨¦\nK%Å(¢È»d\"#%@¦(AGL¾º&ú¤Ð¢ÎAÇH3k»tU­´8¢J³1bÊmØÌ9aÒ\\\\Ñ(aQ×46ª\r³ã´B±­E¤McÁ§080§lêö³ô6#À±RÇÄàzGys¼´y]EuÄå¬ß³6>1fcõbîzHû\ns-B1Ü=ÇÀùüÙ äGyÌ²BI´6\ZS;à:\0Òi>Ë1¯\"î¨d3~ªéí Zq¤ÚhÌ4/µÇb3àbd ¨* ì´èã,Üc¬vR@Áô0\rC$bàóð=]ìíÕÆ+ÕÅ\\^^l/jE}êÇ#>fipÓ1#Ó\0`ê$²~gy&1ÇãS-Ì%Ý¿qìúl:Jóß*L÷Û g$¡ÞbÁÔzÈ\niì}3ÑzÀæô11Ç­&r;ûn\'xfÛCQÜ`AÝI*ÂËE÷^îô(füôu.#c:8Ý°Ú/H áÄåp ahí	°ÖR\"(3²XûäRRÓIÎýQv¦,ØJÌ¸¨U.ðlÂY-¿Á¨\r²-\"ÄM2ÕÎ_{V\r3Þ`7k>FÂÉI¬âüìp9l.$ÄÏEÊ-! ë#;6l§E/>lFV©DcÈPr\ZV7A® ±ÃG]ÜíG1Æ ZJF1PaBJi0bM©54nWb[ÅUà^ZÆBëð	EI\"¡Ák#\rîªc0:Í8ÍïM#A¥@Æ@Vã\Zn!@*b±ÖCÞÑ^ÅèÀ¶¡¯Y~9ÞYoDPÜSûVÒ\0ù\n,Fú20 k£\n¯ÌKy	r @Å\"j¹\"(HÑN', 'BZh91AY&SYÕ×J\0²ß@\0ø+ô¿ïÿúP½ºº@%.a$ §Tôõ6©èõFH\ZL(BPz&ÓA¦M\"§¨Ú \r(\0©é=@ÃC@\0\0h\0\0\0\"I¦IièhÐÔÔ¡H\nP)¸æ?ÃÞ0Ìú9Yø:º°v2CäA8Ix(äCgß:3AÑfèQvïSAîMÕ-^y\"HIVÒÞ£õ&¹945k,¸¸;¿eKNÌH-¡âÍÈ@Á\"\rN%tù\nQß¾ás|U8GR7!ÈF$5½mÌbï60#@$.¯7	0Y¢°Nâ*¡-K9ÁPª{¶Hq¶,T*ªfÊDR¥äcÀ÷jbsh*i\nï\\\"6 ,q,¡ÃQÒ(¶¤¬Û@+åäbD¦>-M¤#$]B*3»Qs\"V;z.dÃ«¦lrçîQæþ2! ! \'\Z)¨¨8h¶BL0<)HA)F-Ð@$@I	Ü6ÉÛ7m¥-ÀTâBnß8TÉ{ðÉÍpÙÌJTÙÐÃ0ö/(/G.Óq¯B¥(UÈ»ÅZdZÚ]\ZêBöm,jÃ\'	ÌyÏhÆâNHKüÝÅÉµâG`ÜMjC]lîcÐTïuVT6gÍA3ÄôÙúð<H0t±AÄä}¿#È¸êàq\\fIAs\ZfÝ\0ddPÑs¾Ã¥¸Æd#6\\2-pÀâò¡Á¡q{ÅvÀ­CËNÂÜ0L0.*3iþ  !è2[wÃ£¦ì¬¥Ö&Å1·A[j¡Üy\ZÌMDÆ¨R%!ÁY^@&s$Q6PÌxØ;öÙIÛã»ÄkèHèÖYä\\íØ ÎDT(oq a!Ä´WSÌê6ls©ÄBª£s4éi.ÆFÃB¤\Z^$¬Âú«mQ`Í?à²ä,ÌMð)>Ððf YÇ3-bè2Å\"CÁZ¿À åm	_LT¤áÆEPãC²(8L&Xt¶­£ûÍºB¿!jL¤Â§O\"Z+­\ZeNñ´Üúÿ£¦©A¸â7ôéC&f&:Ôæï1D¦Ë êVcSgD·:íd®17Q	íq ÐiPÈb\nßéån7ìAó14Ý\nHcAa¢(i0bM©¦£ùB\'\\E5ë**PÀå$;H\"!qÙá^62¦f»¥BµM\"æÔã8NËË{Ðe`ªÀÚ\"dÃ/^lÈceùC@t¤¤«D>ò<ÆÓ2\0a*&÷´AyR¶ÖkÌdý§^H^@td	 JzÅÜN$5uç'),
(137, 102, 'BZh91AY&SY°Î\0\"ßP\0Xø;Kü¿ÿÿú`ß}\0\0P\0I@¥\0¡0	¦2\0	`\0\0s\0`!\0&\0\00	¦2\0	`\0\0s\0`!\0&\0\0(OÔe54òOTÉèjf£ \ZmG© RB\Z M\r4OIÓOIµ\Zz4M2]D\rÏ¹ø©OÑcÍ ºò)AÞAÈ\nêûhäjÜÃHâïmH¦ËOÊT¼p§æºë¬èÑi:4h¦QNoÑFælÔèÙªÌ#V]Xa7bh¥¶]«Õ¡Ã,ÑÊæ&&®×w¶aÍ£«ØTËihä§Ùû?gâÅ¬øö½¯3ówíÒÝ\r×îxKxH=hô Z|Ú¹>o­õ;¤èê§kÆ»ÐÁòÆÆ¯±Ø´úÊ}O©®;>Dw¢7-$;\\mr¾«¬¥GÞèÓê}k/BGEPjÂÂ¥(êêì]©QJ±®¬FpâS	Éyi*F©Ä´YKR¦XnÑÂû·erÖR]J%)R)nÁ£ÞÝ¬%l©-B)5]vXeìrta«¢YMgÍ~ÄC1\Z9Ojï#G7ÜÌ§\Z%(]¢ún³GSVyß{«3òê©nÝ£F®åÚyo\nTRì®»vïÝýÚ¶ÝNÖfò|)uÚ¹Js2ÈËV¬°Ù£-Í£\"Ireñ%GMT£,%2¦4j³e³,M¦EL®Í5hØhK&5a))eÖ\\a©³FÕC¦\ZL+ItÙ5jÄÝ4MÙÒCÊ~ÐòSJR¨²É0¹i%>VZ))JYieB/,Ò)RÅ¤ºPïRU,KÚH´J\ZÊ,¢\n\"R)E®¼ê\nTJ!JñN;­¤Db¡ò\nªêÃUÛ4*jÁ«±ªó:JeNÕÝªegÎL±*\Z¨rYi¹G%\'&¼®Üá¢ç\rl£EYÁ³E0²j¨½fÎcehºÙi0Ý»v­g(Ë.Nc)\r2T¸¼£5!Ôxì}ÏA¡ú<FGè*l?ÒzÃ·)bw<¼Ú[;´:×QÕ2üwíce&Ê¢L´YàîIñó¹ÎQð|e%ÔÙSó|¿süoS8Ñµ;K0`ÐèÊÇq:OcÌt)h}ªåîÆ$<rÁëvOµ¼ë<s êX»YèGILÍIH¥HÝÈü^I8pfÓ²fvÍ]]Vf]eM	«æÜì*\\£ÎþKIe?¤¢ï3Ð²)³Ìô°Ûr¦³\Z²É²¥&YM§¼º)ÕÐÞð7FÅ@2¤:Ú6~ÏjórÒºJ)Nô´Ý¬:Iu5w¼³éÙQÚò?ÓCðzÞåÓGªuyç55xËõ/.ÕÖ6q|Q#V\n6ôXÁüÏz øQ${ÏP©!ô·QJ=è{ZË¼ã©S¹âé¼´÷9ËÆnLµe=ÏÄèçç|õ¥JQÜð5v¼pýÖX©&Tõºybe=Ä»`ºæÄ©³DYyw$Ì»Ìù5¦éþ\ZÍ%ÎîM¦º/iHÖ].´¥Õ<rñÔÖXh$ú!J^RÒ:\'Pô>°ËÊN$TTÙ Ìõ¿w±7j¤©ÂPÝåxzKòvODðf%çl»ÎüSõÚ))JMe×OLèø¹¶FG`æôHå)éJwK6tÓÈÃ+BÛ^Ãq)@ _{;YäeòÙå0:bÇ9)Z=!¶U%K¤TTT¨J	bJH\" XQJ>V÷ÀÒHÅÄ&ï6Çè/.¦ò]\ZKË,ËÎx¯9Æîõ-#B7<\'W¶e©S¬ZQEF³ÆUÏQ¤á89ÊwÃIÌ9©?©?FÎÂ½á2áÎj%\ZFK(ISKS{!¡w\ZJ\rMÄ8¹Ù`xËË¹¸ì¤æý\n:õ½\"@ÁIñw$S	±Ìà', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 646, NULL, NULL, 'Mk9Q1614081600', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 06:00:00', '2021-02-23 06:00:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '6034ee303db27', 0, 'BZh91AY&SYåt\0/_P\0Xø;Kü¿ÿÿú`]ª,c)(4Í10\0\0\0À\0LÑ*m&Ô\'© \0ÒiÍ10\0\0\0À\0LjR 2\0\r\Zd\0\0 \rÍ10\0\0\0À\0L$&¦ÔdjdÚ(\ZdÓÒF¥!hHgIà\"{$\0  <a»àþoI(D&ìÇ/Ü|ªÎÁáü©Ã¢RÏÚø£DfSË¾S-ª§Öcó£v\"UÎJDÕj\Zé°Öl+öÀgÏgqü®ÆüLô) qØ	z§ÌÚ1#PÌÈ4$BCÈÊ0g@:iâYAC]ÃÜâ¼ «NEÓ ÜdSÄæA&$SABDÔdk$# i4!¹MôKR9lÛ\"[¤p$C`,prj·\Z4[[2aÀI­ïRÚ²!5æ	©°jg^$^4 tQd3]ÓV¬î`¼ÌÅúMl¶hÖzÆkE°¢lI²R« j%DNDhqÁÏA$#$Q\"g)¶a¹es§À(¼\\-¦FEÅ¬VBYÚsdÈxx	Á¡±`a¦¡	ºUVY2åEOê¶¯¨fÉ\r¤(\rJd QZ¢),[¢\"\ZìZdH`FQ\nH¡2úèWêBf\0\\0:\"º¥­\n°bNCI«]]Rfg9ß CRrÄ#?¦\rcÕÖI%BÖGÃ¾dãZÖ0od¢ø7¹¶röDðaç?#ió;Ê*|ç´r1vC£qPÄ¦±ùbõ³ôfeOU¥VÅm#`úã·?ÐQî9ÂÌ³#Ú~Ç¿ø?³aÛhéoEÒ6f¡°\0j5¦å×¡ó¦b3~¹éí :Ï2ãQ´Ã Ô@¾ÖÈvyÂCk÷àÞÃNÎ£¹8=è 0|\rHÞÿWâ\"9ý²³Ï®tÖØ$F,,ÊAbI k¶ÉØ@yÈî0&FÆ pVXÉâESõ9. yØ;ß\nç<NÍûÔk3¤ð8¤§ÀËy³8ÂDU*G1Ê~ñeØ¹=\0q´Þ&\"TðIN]¶Þ6ÌÖwwb$§,p¶ËQ1ÞÄÌp¸/Bþ¥ÀlgFöfm´	éÀãh@Â± íÉT	5##4ÃÁ5ÎS[z¨¢\rsÞLT8Á\nP932K\"ÂD¹d	b³uýÍ`m°éâi ZqøíWX4Ïr.Ý²8z\Z\r*·î?±¡ÌQ°°%ÀËÚZ¬WìLÚEq6¶ù°/HRRD_xÈPq\ZU7A² ©¦ývqz?z¼ J¤©dc	$¦$Ú°¼Ó\rÐfñQw©ºä\'pI$D/cE²F%ÛÜ%DÆ\\u¯KmM#R¥åóÝ`P½^¬G½&£½ëÙ]c?>²Ûñ8¼!)©¨ªÞ¸ô>­¤ô7	«Æú1. k¢ê/ÄKy	r @Å\"j¹\"(HIrº\0', 'BZh91AY&SY}qR\0²ß@\0ø+ô¿ïÿúPÝîçÆ=å\0Ýºog\\$Qý\Z¦õLªF@£@\0$44\0 \0Q@£m@hÄ=É AOR@4õ\0z$H!=\r	§ªjM¨hhÐò\0¤L.üxÄÏF12%³´HlYGhmþîìÐo`ÑÅ\n/Jh{KBÑ	¨IVÕ½GâMæ*pä\ZXÄÏq<y¯ø\\©¿B\nØÏ>H@Á\"ä¹EªÀ7Q¾ù% ¤_\n¦bl3\n!2`MXÕBÊJJ¼c8\"È *Gã<f`E ¨ôõ\"}HFDªµ,é,B©îÚ^	Bª¤(FQJz£öy\n/b&\Z5\nï]q8 ,q,¡ÃQR(¶¤¹¶WËÈ,ÄL|Z	HFHºTgw¢æD¬\nM¥EJEI¶qb¡°Õ®eÈ£ø3A@XT²V¨¦.Q¥zØµA`HTdÅ)I £è7×áß©	·L!$6ÑNsÎA×§2EÅçsÌÞ9J3\Z8`ãÑ¸stÆÖX]¥%)n¢ÉZÕÑ½¦a¥{N¶É6Ã\'WAæ;ci©	=%æ]åÇ©°÷5vo5ÁI«Jôg ¡ê}ÆþÆz¤»MAÔô>GÏÐö1E\":ñ¡5#hd:¯È\ræóp¢ÀkÐQÆSvÁ\nâH|Ã!~ÔèpÀÉCbÃ^á¥\rÅMåsÎ.J@ÌÀ¸Î\'þ@@CØd¸ógnZÎØTÊlTvj¬{cq¡A¦b)à¼² ;,,vc8Ö^Ì$ë¯#Ýê5ò$y5¯c-Lx(;HgJÅ`Î¤$8ÂÏªó>§Ú°Þæ¨c<ÕÆîmåR]¤ÅÈ6È$IO8YczÝ·ÌÈ\'cVÓfSÀ>Ð	õìxôÂ±ÜG\ZuN(H*PgiÜ·ô(bIé¢G7Ç»¨Ó7C\rCiÄ\\à4(2Y*¤Ü¸;|ÊBËQb&jÏ/b[,*4Ë«éû19òJ&R9`ÿä,\ZmU0ÖeT¨ÖðñuÄuÈâr!ö#)\nRQ#!A°Ò±©\ZD;e÷ø×gÙþH?`c@õJb$¡\"ÀeÄ37í®9%w×(Õì1¬mMD$Pºð ¿G£s±»	X½ÓHÄÜ c )Só0XCÕ&FF»ÚÂXÕºx\n±X¡%DCÑÓ\00 Ë¾md\\®7¢ú§¼óñBö\ZõûáSþ.äp¡ úâ¥\0'),
(138, 102, 'BZh91AY&SYôö{\00_P\0Xø?¿ü¿ÿÿú` \0\0QQH*¡PG0&&	&L&	¦`LM&LLM2100À&L20&db``914L2da0M4ÈÄÀÀ\"E4S*~ÞÛTÙOIå\rêª?TÐ\r4ÓÔÐôÔmM4\nM$ñ4hLzSõOjh2jm&Å==SÒz@Écü?àáÍÑØ¶Íú´ÌüV[Ó$cÖ¢]qdý_Ý»û¸]tÝg5Þ.SíYIeT¢YET£ôêPã6®E×JMÛ<0Õ«Íy¬Ã7¹òkkB-§¹­ÏeQÉÑu5dºYE8~62ÃFCV2FÜØa6bd¥4]#v­hâìNç«÷Y´ÕÉetoØS\ZªY£~§SgÈÍ­=Z4Ç^×k¹ï{´é]¶RwþÏºiéKY(¢¥YïyÞ÷sÚïuv5&ÊH¥%\n* ¡B\"°¢ÉqûÐ-N§æ,¡g´ðy8èêd¥aeJª;z¾{ßÏïdÉÞzÞ·âÉÌúµOië®`È»gÌÈÉ(Ïàìïeä6Y#ròCfëI0¦JSg\nRé!zrRS\n¦°¥©JZU!¢RkdZK.É£§ÁFÅä8]bêfE¢ÊZ5[f©òjºj²¦§ER)ª(¥H¥ÖjÝÍõ,ÙÊIÂ¤¥)FÊIH¤)BV¬0Ù\'c5Ù®Ù³¹»6Ì7h¡Jd¨ÉÍnkÛErpÃ÷eÎpáNlßSÎ3J8áÃ),ÙÙ&Ë¼ãäSHáÕ¬ÝÄ²¥\rÔää»µYv¯Â¤J­a«gÖÍ§±eÝfó&WM¬¦aÜå-;%¥ÎÇM1äm§#c©¶ÐÍ5àÀe1«³Vt[U0²Se.ÃFLÖ`RíZ5bhja5]­3dÐdK&\Z3a),ºë34dÈµ0ºa °aÈltÌÉ¨p8! nT=¡àÈPR¢SÜ²L.Z\n- @ÑhÂB;°µÈ`ÂA¡.\" ÂlV¡ Ùe@DXB©L	Ör:½/$3B2¤DRa£\r+Vl²×r3l³µJdjÉíZîÑÃ&%I¤,´Ø®N,ØÝÍÙ¬ÝFK.³v«²¬²h£ã%¬Ñm7µ­»9MÛ³g)Ãs\n5jl¥óN4Y«%1·^_ª>b\'ðvG¼{x;Ûns7¹.È`ö\Z?É¡ìç,ØúLÛEa[\\W¬£~äø°\0×ã)pÿ£\n:CwÞ£Îh}ë\Z)4P¥JTK\rY³am_Sçs¨:\Z:ßs	cÄ`ï}eà{Ê?SôHÀ ñQ|¢|Nc±Ãnö#¡ÚþÏö½üÚyTêhë})é0ä6ô1á`f;QÿY;Ýçq³ïSØvÊ?øõw/+!Û(ö»Ú3ïPy;å³¤ïºNB¢ÈéGÿ4ÄrØq5aÂRÈ¥HÝ~é6l,æYÖhæ;ÅÛËµ]i æÙÕçu:Lw>uÒYOá(»Á¢Êh¦^L4Ú®³9e®¹³U-æk3R©JQ4jOIúÎÉMæó\'Üø,ºTäK¯*ÓwCáÊ*}3£%YÙ)²Ó­&ÉX7ÙLÊpó.å&æ\'úÄí8+°äÂIò¿!´E3l=KÎÃä³9ìQIvÓiâTñmÆG\0ziÎîò@ôETìo<Ð¢¤,)ç6R*{\'µèg?åídòÞlÎ|Òçºq/5hæ1ìÛ#§ÊlhÎw¦g\'\"NÊJT¥Gè3v¿%,ªTð2z^©ëxÊ)4YÎML¦\Zí©±3|iJáHævO3è_óp}fs$èki¹ØÊzÍ3hÊòè]g5)Àë3-£è}ÆãÚ7ëJbX²ÊRLGÌ½í`zßÔd¹5zä$p¥¢¦\rYÈ¦óè¹¹3f¤©«î6x¹»W}YóÏSP¼íz!È¥\\ôÊ|h¤¥)(k)5ß³÷9MÌu¯0ÆG«êw#k¡óCM]gá¹þÇò¤74d^8dÀñ0	 ,C{ÔùZiOa¡Àù¹#÷©øbB2~$hH1H#c(\"\"HªÈ¨ÑdKvºÞ³à(!b`æ¨\'Âg¢yMÍ§3Öº\'ôPÄÂ¤àa\ZLK,m§HÝâ¥¤d¢TÝ²èÜÕ³h. ©³¤¼¤¢éIßÆ&É°Ñõ©Ê}=ÒfÃ¨O°¥\"Òul¢ûSwÉì$ÝIó=ì¢hÑ:y~3e/	åðÓVLß%¦¯:ÎGU:¨]L*%¥ìÅakÎ&2KNoAÍqûJßédèùQúgx Â!Deþ.äp¡!éì÷', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 654.8, NULL, NULL, 'QwK01614081707', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 06:01:47', '2021-02-23 06:01:47', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '6034ee9b71104', 0, 'BZh91AY&SY&¢Zl\0?ßP@Xø?¿ü¿ÿÿú`=Æ¡BË@ªJÇ0``ÑÐÀ&ÄÂS@DÕ?J\Z=C  Ð\0\0h2hÀbLFCC\0#	5%@\0\0\0\0\0\0\0\00``ÑÐÀ&ÄÁRD@L\' $ôSÓ&£CÓ@ÐLÔm¦\ZÎÉø¿ç3Ø>§ðÎ>è²Ý°NM\rïºë\'ðü\Zßbë¦µ3¤¡%F!(B¸üdà¡ÀÑ\'ûh³%ÞAgC¨ òßGz¥;@³D)gãúFÆ\ZÎX·¦3|æ[UO¬EÏäsÒ;ÑfÄ!ÎWØ\"|Ifæ¾eÖàÓâÉÝ.Løñx<vîÔÎ£ÅÕØìv©µT²Ë=n­ä|Îw3{Rh¨R¥\nB ¡E*H|)I:×E\'à,¡gêv6op1RÊ0Yg¡N*8ðx¹5Þü½lXºNç÷k=IÌ§CÁÖ½×01.àâÄÅ(ËØÝÎÅ\'^Zò&íalj:èRI©\"	Dpd°AaÆxÆ%©8PÎt(Ð¸ÖºËª\ZKKRÚ­¦GÉ Èâ·1`Yeñ	Ê4!!K&53ª£Ð9\Z;MhxT&£Ä0x×.&lÑ³ÞCo\0 Þ÷º©´øÄÑ½¤úu¬¤U\Z+fËáu-3t²L(fEV%N=úÎK$Ä5º¦8psE89FK 4@ø-¹ÑDÌNNy´>DK²Ôâmìfó&´ÈÈÌe]`)¥§,â &ÌU\ry\r8(D6\Zî°i1Ò?<ñ¹tJ¨U\nïAñeAj`¡iEÌS.#³£\"\"ÄY@VAk«H^¡TDU+86·¹¯ºò&(õÍ}a°U\'K­³O=h£5Pg;âHRa¸w2.À¸5jµ\rP-9R6Óñ­F¬ªÖ®ÄqÁ(ÎM(¶à>I\'p]<Ê?\'¼YèíÅwÇêx®`§K\'	6SêÍù°fÆzìØû¤ËYíS×nfuþ+5ï?°eö*áöµß\\Ú¾Êt³}vÎ¤Î©,3eËäï:{Â4yÄÖÌvWð~Cyøw¹íRÇì-}Ðã2f+Ï:¢fûkÔ~Ê\'ëÍÇdºÝï®}x°u¸©¹ÊdãSgxétº\Z}ªðU,ô}ì#Úè^.¬\\Tùºsd½+\rMî½óiRÉ¾ÖoÚ­\rL)u(´U&»ô\ZhrÉ{S=Ðò¶\\¾µõ/ffæ+{\'Aæ¯JêÎÕg«·ÜÑbÍý¦KH2$ÆÆ[G¬y6ÖÇÜýÖ¼¦Ôb½Õf½æ×e=\rìUf&hrz\râ*DlZT8íA\nû½2Ï_î©ïlvÍÞ9w:ÜÔÝYi,í»yû,Á¾Ñ¡Ôò¨º­ý0ô§aÂ§±ð¿G¥\"Âu5*)Üðåèx1ìNxLEÏ3bíY·LwÚ7l×>-Ù:¦Çclaå]QJNM2ãWÆU({Ìzû]Ü£;`ðMF,3TÛüµ\Z&J=kæ&Dp&m\rÜA]¾ÙÁD·6úrQe7¯Ù Lz¤rå6ËR=CÎTéd²dçS95ÒÖRc$Àý¼[Û9+»ØàctÕÝ\ré±KJ`jÊJkxÿ,>iJúF·8ßÇàîÍp_¸í0~Ê[ØëSö\\Î¨¡©SSoÉ·)IÝ\'1J9Ø=ÞÏfo4êV®gSfàÐÂ> Ö¦xã=LbcXÊZh.uI£±eV³G~~¹ÝpOD^$¨ ÈÆ\"@Db\nI)eBøÑ¿ 2ïñµ>sµ£M÷ïQ\nÚlFl´ìãfö¾Ui1¥4w5éxk54ÒE.¨#Gdx(ÜøÂM61~æ0Yª7Vµ#úgëBÒpiJW»QÚ×³àr­Só±9Kmqn?&rêvÃ,$ 2UÁàà:è\"¦!ÉR<\'¥¦ÞFÛÇÉS/cÏtOÌYD<_õ+Ïè ¤¤âîH§\nÔKM', 'BZh91AY&SYkr¤7\0¶_@ ø+ô¿ïÿúP«ÉP(\0ÐF@\0@\0\0\0\0I&I&¦jh \0êzRSP\0\06 \0\Z\0\0Àh\0\0h\0\0\0\0	L Éµ2iªzG¡=ODié4ÓhLCG?@	rð÷	GÐsïäãÅË  ÉkÐb>C«ÂH=HIù0ô¤x@ÃnäÆÌÕ8f÷Ä-BÆ²õ©6»e¹È7ØÈÓa&!´ãõ.TÛ¸¶4àaØ¨$aÀåæ6ðÈ°>#wã¨ÕÆU<d#ÀQ¸Lòp×\r;Âlbck[é*gr¨mf·Öý³t\rZB`dýYÎt4%Äê¼²´Å2ÁTôÑ1ÌA\"!UQEbaÞhõ}2<J8\reg3~c=¤\\ÀÀ$BTPl¢µ³00ÎÍæàÉj L[ÛTä%BÂÔ&Xwp32*°`QÁ$4²ª Ò>dº%ûÒ!¶`6ÍYINÎ\ZhÃfäÖ$¤°xeÖd@]c§]C«ÓÅz¨Q7Å9Âl¨*zs]·8YS7{Y¹ËªµAyÆ&XI`ÉÒË©feêô]ÈúÖ³FÛÅÙ¦|­Äg#FØ¡rñ¬ð Ð¡æ¿/ÈÄñ£Ä¹è}ñÎÄ¼üÔXøÂ³V6é¡!CÔö°úø¤\Z;` â|óó>æ@nRGÉyPÁI¼7Ëö´ÚTÕh5èBR,k³Øö26ä/½NÔf;&l\Z=A{ê\nJé¤\\eCã7A¿;;vkÕ1#³\nFfÈªN£úo82ca928/9)É,,r:ãC>¼4	u×°ý=F¿Nöµäg©¯R`wØ±ÀÄ\' ´â¼Éà6ls¹ªÄBq9;êOh·IÔt.AÓ0V\ZBÏ+ÖèÀgOØbÈÕ´Ù»´µ:ÃêÍÀaÇÝÚ1c¤-gQ`V\'%©<?²¤X¯uJe®v+I¢¤©Ë7¶ (Kô!-xÃ¼êÉz!4ËP.wýÉè±¨Ó.{Æ±×®9ý§qÊÉIÖOÿGêr#¦ÙB3O3:¥F¶p±9­ã®fó³¸C=Í,RÊr\nJÆ¤n,rÏõî¯GÉûP|B!ôÆ$ÌÄ,Ba\r Ò41&ÔfGvzÂ)¹.\"¢ñ.+XÐîñ	E	\"¨3ö¸EËÍÝ4222ÃTÀÅbYTPÀ*Úö¥øam£?%òÐæ\Z%ÁE¨þ®ò\0aA|\Z Ì¹[ïEù¿ ãßGöròñF ±ÿ¹\"(H5¹R'),
(139, 102, 'BZh91AY&SYµÐ¾\0ð_@\0Pø;Ëô¿ïÿú`¿>¤% ¥(R(!b`00\0	\0sLL\0&\0&\00\0iÀÀ\0&\0aÍ10\0\0\0À\0L$A2i©êy	¦@¡êhhýSm@T5=\'¨zA£Ôõ=\'©å,tÏrÙ÷rTRÏ©Cú>KÉE¤QCþ=ø4÷½÷LLÊmÕü8ZBòÍ<ØÙldCæX±\rEå¤ïiK0¹E;Ãmí´³Ó\',L©g-®Ó\'g.Äô·.ìîS¼¾\\ÎcÀò>+¸4x:yáÚÉÏÑàññ¥Gg±EI¥*qTþIþ¤ÌÄ<H\ZÞóØEM`Å R¡vV\nyæV}ª4 >åI1,°RGPTÀbA\"_J.0.KÈ¶\"9¢Â	b-\rÁHRQ\nop»l´¾iIe(¥H¦a¦{\\<#²¤qJB)8v]íË§sàÓKØf,1Q&[]©8(á¼-%(i¥ô¦]glÈaHÓM0Û0²*e×e§Í©÷6ÈüC:AÈË^bjHø´ÐÓsssLplÓ{°çlÐ7¥g½p,0ÀÅÇf[YRîpÄÙÂaTáwÓ-¦ÉÚa),ºë4mI§L6,å¥2­K§	¶ØLÊ;èT>Áþ©`RAlQJÂáIÓK4\\¨³ÝKT])*RU-ZH´HÌ@ Fb\n-JÑaDÀìu!Ð\r4¨fUK¢(Ù)à¦\ZXÛ*á¦\r3</5Ã<Ëg\',²åÏ.\r):YiÉÒÉÓ]ÉÙÎÍ¬vS+:YÓ³M¶p¢ö®©¦ÙÝíÒîXtììÛS³±8tì³I\r¬ávZjbDÏÇì¦ygºk<Ëfêó=y:Ç14¹ß÷3 /ö°°ük\nuÏæ£ÐlüM©6P¥$Ì¹ÃL)õ¼²Òn|å=ÊS½ÆP|_0£IFáÜÙë|ôü_S¡N³G¥ñOfóÑ\'Ô£\'zbpôÀð6ò)âwÊÊZ%Çt£ÅàÄ¡AìyeÎ§ré 4¯à&	¦sbâá<ìÎù©á4îNåJ~8YSDú<§bQÉi,§¶Qw¡â²SoKÖÃnZz¹v¢êQ4Ràe8\'Îkw97ÈPÇ@76,Ês4´G­³Â6ÅØèaá/tK+acÔ÷v\'ÄäúÃ°Àëu\ZÎFgô,Þõqõ2rxx´lÂqëaØ>Íð!\n³\'±B Cç{ó±ÉN¡înv½îvóH;ÖçN\ZpJN_Ó3Òsx½$#;OKy±~6«þç±iÁIµ¨h.¤îlf%]:KOü±-4§ðjf\\ìÌõºZk+ÚR\rab;&°ÌÐâø)4Rs\0à~o@=EÐzÉHÀ½L^ÃîØíæbqÉÞl(ë=¦·é0FÎÆÏXÌÿ¥)õK2RRQ©òv]=½øº1ò@À4=c¹cS¹ê.:JB	ðäÆòÅ£>Lhp	ÚÁ1}\r4Ãm8¼LÚCd÷+ïÄ>!LF1F0R	\04A`ÀYÎÇ\'  ÞXKÍ¤²i>ÙÀÛs¸úÛ`U\"a0§2`Â51,²SÖò^u\'/-RÅgcê4ºpåÌ*:RJÒ&ZN°ô¬ÔÄå9:õC3	¨t¤}áó¤ÀÖ<&F;Á¤n£ÞMÍó¥÷VÇØ hò!M;LÉxÿÌÏxw~¦ò\"÷bzÞñAB2ÅÿrE8PµÐ¾', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 731, NULL, NULL, 'Gibu1614141504', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 22:38:24', '2021-02-23 22:38:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '6035d81e22bd1', 0, 'BZh91AY&SYXå\0üß@\0Pø;Ëô¿ïÿú`_\Z\0Y\0\0Ó\0		\0L\0Á*L\0h\0\0\0Ð\0Ó\0		\0L\0Á²H\0@h 4\0\04ÄÀ``\0\00H E= ¦e<Ôõ2dð£bz¤DGÔéHbý`N`Ó úÆÄû1ý2$ùÑóùÁ\"Ã%¯ÄnþÃ´|HiGÒeî´â¸*F=¾¬ÌXÝzMpñ*á¤â¨ËñBÎòÂêiÔc:æxF80XÝ¡| <Í¸q:Æ¸;ÊIy,\r4 \Z`$nò\rúºà\\=i¶/È`!¦BBB+´ù5qö\Z\nM$1¶d4¦,¯lR³EØ1¢GqD\"2-&-y¸lN¢¯VÁ·F3a0M l\ZÆsjÏèUTCVªEÓaUUSh-UT&ÒL©¦ \Z±6uíµò{H  ¢ f	 ±ä´eg`Ä§ßX¡ÎWÊ*¡3)ÉÞØ*P«¤ÔLÈUÌZÂ¾@Â¥V3.C,îJÉcaYZäl¾«ù¤&Ð6h& \"Ï\n(VªTH¥5$©ô½,Xl\"ÜDB I.¨IL`)Ø9ÀÜÞóÑ¬$+~ã7A6¢Ù¡ÆÈd¡h!Ç¥ìåÐ|^s ¼Ë¬ÜB\ZdJ%ef+!\'(edf^Ñböji¥dV#+´èVúûÓào??ÊBýÏ÷Ë½L= O¼rßbËÜÎ(XkÒ²ÊôÍÂÏÀÏ[Õó¿CìA«É¾êNÃÞ|Oùúæ¡Ð¤g¹{¬R¨4:UÈ¥XÍæ=â·\r~¤%&Ã9o¡Lî\rNzA÷¹Í\Z 44`ÐØ³àd677Ù@FC>¸fóSAJ  !úOW(xxëçXÎçQX¸Kb¸ÛÈX²Èä}çQ¡mãÍEDÈàÎv \r;É0$9iñF­c^Ø%üúÏü5Ú¸wµË¸ÛqÈÕã¶O%à¯¡ s;8üâ.ëÈþ@Èc\00}!=GeÉíR=JÁ$ªÝmr¾H¡£?2å ¶`Náts1næÎ?·gx×§ÆIZÛ¢ö$a(ÕBäW)eöØ±&v\\´ö\Z.J³¤¸¹`²^±9\"Ùt9~@R-x ÐM3K#¿ðO¥gq¦d{³ãÂ;·ÎwJOA<ËìGÜæEcsØJï7i©­áÚ4ÃC¹tû\'UtB\ZüØZÊQ!`$HÒÈâA#³¾ÛúZí_c²@Ý2È#HT` \n¤i&Ñ\'C³X2t%ÌW^FF0lvà m\nO0 ¤\\¢!3¢MC>N`¸àgA¡ØkyFFy¤Ö£à`È\\ÔÖºâå¬ÃQñE£VäôÃÆ~´Øî*J0¸¢:ÉGô>=\'æH´3>¶%d@×HbËÌe¿3Ã´è`ýGò­	dXS#icü]ÉáBAb7p', 'BZh91AY&SYDv³*\0²ß@\0ø+ô¿ïÿúP=å4Ë§vá$iOSÔõªcÕ\Z4\Z2\0\r\Z	4~¨Ú4z1ê=L)M*z C \0\Z4Ð\0ÃC@\0\0h\0\0\0\"Hd	èiÕ=@\r\r\Z4L; /@þÏhÄÌØúèûüû3EC/[Lx@AÇ÷Ý)Ã¤Òã\rÏtºyFk¬ÊâU3ñsî£zÓ.`	õZZe\rY2ýå[Ð8Dc8ÅÝ`|F(òrbj5rJ§)ð\'T@î$=.\Zá§xR\rLr3mk}¹@T6³[ë~ùºÌ-!@Ê./ÑYÁID§H\'3\nZcDÁwP¦äÂK\"îç\n°1güZûÌ6zM¸Æ¿0Çâ8àç$8Æ9F@hÒ¤çJYI±\'u Ñ¬ÔiLFë§S)Ä@MT+Ð0L)Àrj!b»J»Òò$/ïLÈ\ZÛ0f¬Ã$§g\r4a³zkRX8ÂeÖd@]£»gz. Tæ\"8µpv­%Éä¸5Ci»AÛFªµ­èæ\r+eË¹ÁË<¿æ\rÛjq·³EÙnJ¹ÙÇF÷¼³{%há£$ãê¹ÇÌzû:lB_Í¬ª¶iên¨nòÒVëcµÊ¦0m*W\r¢AYäzÌ*ýî</s©AÜwÇ¨Èí]µ)áÖk¦ð6	«Æ^x¤1>\ndÀSÈ./Û(¸tK46+v(Vk,6_|P2°¼´ ÍÇø Énán{ñªvØT2²C3`®Öçþu;(dÆÅ@Îj9 S9&&f;Æm¯*Ë»*¼$ìÇyêò\Zï$tkË±-vmPg\"\n)82 a!Ä´ù.§¡Ôm\0ØçC1UæiÒÂ\\E¦4¸$IU|+µRÊ\"¡xÂ«P³1m6aÄ}âÌ\0«,Î\\F0²9°!6).ðF×q_Ç-p½VQû¹ÂêdY\nhcè!|Åxtº­Ãþ&Ðß!]µ	¦N°¡ÓÌÛCâ2ñu>Ì\rx$óùpßqÕ¬r¡~Òë­ Q(²\ZË:±ríd¤1[ÞJf$aLÎïg+4y¿z¨1 öF$ÌÄ,Ba\r ¢$ÚØj9]\"¼ÈU¯qANeç) $IÚEdØ.\nqpØÊíÊQ4S0áVlÜù^É8\\.FîEv%½lÌ[+ÊÁÉTªNÈ?xÓÈGÊ	¾\r\\P­Ô­z¯àuäæròùQ ¡È,âîH§\nÖe@'),
(140, 112, 'BZh91AY&SYeMÅ\00_P\0Xø?¿ü¿ÿÿú`>¨\0\0\0H\n\"\0(\nsbh02dÈÂ`i!æÄÐa2dÉÁ4Ó#\0CÌ	 ÂdÉ#	i¦F&\0AÉ&FÓLL$RzI´#j4Âm5\rAê\Z\Z=@4Ð*H@!4SÈÉ¡2¤Þ)éI²M#Ñ?H¥Ð2@ØþÉù8stv-ü?ÃHýûYoTÇ7±E.ºâÉþwâáuÓuKÍQD\Z(\"B0\Z Q0? ì þÌÚ¸e^E)7n\\ôa«Wuæ³\rìm[ØÈÖ$/,Ó­ÆC¸X¢Å-SVK©S÷Q±\Z4´Y4fæÃ	³%,Ù¢ìØ|ÙµkGbw½6©ÉeÝöÆªfßåº>nÆ©ëÑ¬Çm­¿NuÓvÊNÿÙà÷Í=SÔóR)k%T²Ë<ðw¾«±©6RE)(P)Q\n©ý¤KÞhu?Ae>G¡âã£©Ú¥ae;wv½ï÷¿§âÉÐzÜß\\ù°ä}ISå×\\Áwk¹QÖé¤ÕàÒ#Ô0²FÉ\r­&ù,³%©MÞª¥%âIzä¢0©\naK%)%j±)²Èl²-%aYE;hi>/BË)¹»)l,aRMSrÈ´YKR¦ë8aª®S\rRÚNªCU3ÙgÉe%)R)¸`ÍML%Nõ8TR£eä¡)HR&­Xa³á7ÚÑv÷k794P¥2TdìU³TäÝw6QÉµ)ºí×rZ}N2%(qÃì1¬Õó0lèÖ5¤)CE¬Ù³Seç6®æ°ÍR%O·VaXlÃ)KÌ¥ºbÊavZKN%¥ÓyÄ´©¬¼´Êk3N%åã³&F1vÕÏVt[U0²SeÚ2S&k0)v¬Ú±45L0®Ö²h2L%\r°]uÆ2dLÚ]0ÐXÊaYK¦5bl&JSêòCæ~°¼¥*%>arÐSó¨²(¢)¢!6h½!Ð,[!b	jplR ÂEj¡JK¯tÔ¨B):ÎGC±×¥ähG:DGç*RË.Íl«6ÙNÆkÎ¹MÙ¶YÚÃ%25dÉv­whá¤ÍRNZlW\n8Ù©³3Y]fÍ³¬¨Ò·Ém\Z­Çà­YÌ7nÍ¦íÌ(Õ»fêcDàÃU2S+åñJ¤æ÷­C¤\n4ð^Xýò<®à¼GCråæ³aê.4e>Vr#Áö]gÝ(ìÍô­Öaà¨òürêXýá§ß)pü0£5}ê=&Þ±¢E\nT¥D°Õ6ÕüÒ\0ñí=lp$:\r¢óîüÊøvj=À(¶Q38Ë{gât¿>ÁØ¼\Zr©à4pºQ{pÙïb9Í¦Nw°¼Ù÷©í;eEúòw¯+!Û(÷<\Z3ðPy¼%³¤ðºNB¢ÈéGÿ4ÔrØq5aÂRÈ¥HÝ~ù6l,æYÖhæKÅÛËµ]i æÙÕéu:Lw¾ÒYOô]èh²)£W\r6«¬ÎU\\Ùªîk4R©JQ4jOQúÎÉMæó\'ó~«.9RëÊ´ÝÐÃ¤¸r	Ñ¬ÊlÙiÖl¬JÊl¦Je8w.å%ÑLÞO	gÔýeGÐü\\sSÚ¤ñzçª§E3l<×õYö(¤»i´ñ*xË£ü\\i6È>`ü:EÝSÈî\"°P§¤ÙJP©íç9õ½Ìr<îÏ¢\\÷Î%æ­Æ#¢ÒspÝdbTáúMÏÌáæäIÁâ¹IJ¨îyM»C_WÉe¤ÐÍæöOkÊQI¢Ì=ÄÔÊa aIÍþZ9GÖ»HbP¿\nGD¼õK²}ûkIÂsO¹¬Ê\\èÊzÝMLMtjÎòhÂÎJSä1,ÀØayïYzwCÁÝ#¹,²¡àÑÜ¼§Ý<Uì}³¨ÉrjöI:HáKEL\Z³Mçî½3f¤©«ùJ<Ý«¿s²{g­ ^uzÏ1Ì¥ë<¥>k´RR5ÎOcöe1	Â»`F0w~yÍ·wØjë=3÷÷lbýªCySFEãLâÊ&JÈ©dØ]¤m<å¥¥=6OkCIÆbnâ>=ChH1H#c(\"\"HªÈ¨ÑdMòç3ÛxÎXKÍÁxùLôO9°Ù´è{DüT10§)8FË\'ºÓ¤nòRÒ2QFÇ²nÙtnjÙ´JPTÙÒ^RQtÍ¤Êo¥fq²l4}rÅgª\ZLÓXsSu	üIý©«eWójzæîé$ÝIô>,¢hÊu=3üæË<^çðÓÍ³6¦ÏSÉwC¹Nå©D´½¬-yÎc)d´ìzÅÇí*3}Á±êQå?C4<Âeü]ÉáBAa7', 'Both Online Payment and Cash On Delivery', 'shipto', 'Azampur', '2', 518.8, NULL, NULL, '3R2B1614144214', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '5', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-23 23:23:34', '2021-02-23 23:23:34', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6035e2b932cdc', 0, 'BZh91AY&SYIä\0<ßP\0Xø?¿ü¿ÿÿú`=AÖ-PÐ\0IÀ&L20&db``\Za4 ÈÑÐ4Ð44Á\r\0\ZiÀ&L20&db``¨¡ô ÐÐ4h\0\r\0M0&&	&L&	¦¨	¤ÄôI©èjzSj©zB~R?@¥HÈ§ø~OÉ¹ÁÅÉK>Ñ|ÏüQOÜÔàõ$UTQ£âÙñnUTl£¦é¬á0C108 ÁÁÄèþØhÜºUØë»\rJ³$¡¦ª3zªù%SnT¥ÔåzES¥ÕE7ìµW97ç¼4ÇZ5½é®k}.ÛEl°Ù)Q¿R·ªTpmÉU:ýy]óæ÷=øhÌ»³Øîðx<R©DJI(£½Úû]o[ÐäâÑ\Z¦	L!J ½S!õ\nÌù$Qï;\rÜ]G4¨Ê(ö¥Ö¯ØèÚµéî]wqäû¢r9%ÚäYÍZªX¹WSåÑ&=î¢;õPF»Rµ/2Õß\"RT²¤*ª20IB¥slÞ).©Ä*¢©\"ISJ5¶Òú4U*´Q)KHà2\"}é\nÎ69Z¨Ù\r!´DQèH\ZB1kf÷ººÚºÛ0ÕfÙL%7L]½4Âb\rÛVÑ»IKVª7)clLm¶×½­£ô,jàÒ4JP2u­ª#C´¢%ü±Zm(²Ö-IµmÉ\Z¨¡GÖºÊ%¢ª.ÑN\n©#×ZÕYm4Ä¢àF44X7gA ðD æäË 	ÂÙÅ¢b­KaÝÐÕd¢ëMÕÆ1:\r§K¦# £ÆþÃ\"4o8CF\\	}\'	3c$ ËKFà2hf,Í`h\"¥¤\"s«,&BdÊl#©½ÅÊ¼+ °!®@Ú¹ÂAX2\r1YEL\'\Zê¡Cªwª*óÝJ4NénNæµ«[ëX½S®ËE¤ÄM\ZNfÌ]Ù\nP!q26J.%F\ri?Ãû?Õ}>©RÉv°úÝ+¾L¿ÊÌ¯ê7?¬DX÷ÒûKÝZïümÆ(}aÅ5èÚ»FôiøËµáLÌFe) ÓZ>×40úÒÕú¦13÷¸ßæø¨æýÔzÏRD`:!í¡Ïu:Ý&]òG`÷ÓÀ`ýá,(àxETõ?ün´UÞæHÃçFïPív»\ZÿTùÇ4Åßî´>ÅaTÝÍ/«·,!Û#ÇµA£µ·ÞLQeûeç\réÔÜÑféU))	m^Ã]NeÅ£©z[ªWetV\ZºSÉGaë±*÷fÎ6Í\Z°¨Õ¢TëhÄÉ¢fcÎ«Áù¹%³eÿæ¥b[ÐºµMq-ÅQ¾%íq]4]¬Nª-Í(ó^Élfò»w]wqßÚ£øþisÆ72óéäïr	Æ±G\\OþQf©&+«S¹éITÓö[ìGÕ1÷>qíV®p¡A\"{&òyôÃÞó_ÁyÆj¶åZeÀ±h¿\ZCí±¬,ï£S,;Fç|Dn=*¦ëè×á\Z}%DÊGÄ¿Ë¢Rfy£BëdZcêÐÕIüUÈµ+¹0pÇz«õûØþL®´pªãxñã¬ã+Õ0èªéQxÙ¤ÌMåé~«Çk\n#BYØ)¢Qx±òe×:>Ñ6<¾çQz£O(8£rTXÓÙìýVú£LKùµ½89×ÙÉæòÊu+äx}§ÜïKÈlP@l²kä5êtË¼¼ÐÃAìàw!äË×ÉÓ¹ºÑèÿmKCï´\rÍÊÆåïåáÄ©\ZðLF¯wR^¬ýxôOb|¯Ô\"¯<a f!Á#M\0+`§\'8å^\0êfçâ|c1âÕ®®UaZw¡¤xs£nHÊZ¼kX64k¬BULÕÆ©%S]µ»©ÍcS?ð÷Þ§|2Á¤8NÉBÈûãç\"Me)ü4<[näó:D6LzjñÂ)¾;áN£Ò´åª;0bÑ\n/²îQ¸ä$«6(­)VË\\Ã^èkÊr«Æoé6Ñú;ÛýÔh(q/ü]ÉáBB\\]\'', 'BZh91AY&SYÉAþ\0²ß@\0ø+ô¿ïÿúP<T,cºÓ ÐBQòODÈ\0\01\0\0\0J\rIA¡4\0\0Ñ \0)(zM4=\0A 0\0\0\0A \r\0Ð	@4§©¦@§êhL7_ñ>#xv£ðw÷èk59.ÝC|Ç·RAÔ9!&¾ÓÊ 9\"Ý@ãñÖæÅ®¡1öm&§bm~(ÞríÄÝcVdð05f\\­.d|8D>du	Dª$.ýàØÓ¤R*ÒHð0Æ+E¦)^v£;H$(!¡È«U¢kÀwq¢­Zýñ\ZDÓÚÁ©ÚV÷ÒþB%ZÔ¢Ã`îI)¹$aÜÒI½\Z\\frêfÓ\"D;$ó+Í@AÌAF$2IÔÐjÏvJzÄ yÍå2Éæg/u¦M±i¢fAY¡¯ à¤§`Ý	+*Öf\nÒõH_5ÿ\nBh(\nCLÀ.ÙÄ«0É)ÑÃSF0zæ±.ÅeÕBÐ%¤Ý¯A½»>trNÒ#4òhsVKE£µrÈÖ_NlªÎw2ÖíÄA£8¸É¥&®zõ¡.9¤U¬¶QÆ÷¼Y½ÌìÞÖ[f5C® Ã°9×ÐyNGPDüÊÈ=`H@dâÐ`xÕ>u&\"5±\"Uai^ä÷\'ê3âä;MA¡ñ7¸À°x¥)qQ\ZZ$¸­°&&qZ¿±¦s½×YcY!óS2Ã&\r\r\r{ê5Õª.J@Ô`\\fóØÜd·ñgn\ZNØTÊlTvj¬G3qA¦b)à¼² ;,,t¡çC-³ÔuÓãè5¼Ù®<Ì´0uØ ç\"	V,qs a!æc¹Âì?ÆÂ(âÖ{R!1\r²v<w©.BÝ#aà¹DõBËÖèÏ¤Î<º\Z67r-M¡öý7NNÜÆ0¬w\ZH°%Û¦\"Iáº	ç¡Êl·¦$×>ø-YÀÂ±58ÀÖX Q/p³\\>¦Ðá!eÈX¦Zs¿ÔFsà5-±ß3¡Ò©HØKyÐæDÆe]L¼U*5tU¸uÈÜoØC?6#)\nRQ#!AÜiXâAèÇ<¼t¯wÑú ýÁM®¨ÄYL!¤(i0bM­	º¹B)½.b¢÷¬fuD$Pºm ¿7£s©±{¦¥LLg¤TÀ,²$PU5è³kòè_GpÐ!)©¨²ÑÄ°ôÞ@?Ò_!ED5Ç\Z/°Ê|n$ //249ü]ÉáBC%úp'),
(141, 31, 'BZh91AY&SY\r\0µß@\0ø+ô¿ïÿúP»<Æê\0ËNv0J)ê&§© M\0\0\0$ÓÔ\r\r\r\r\0\Zz\0¥4©´hÐ4\r\0 \0\0\0\0\0h4 \Z\"DÈF4E5\0\ZS)§`ûìõAö:M¹ôúlp4PÄ2ìGÐkiÎÁ\rrwÝ?\np0ÌJmþìh1G§¤c<Ó+UO¬EÏmg,·N5001È²òó¦%¥,H+0Ç2y¤9D9ªØka*¤ÁA	}áåd¨ýÆ\0qåGp	qð:æ%H611ÈÍµ­Ý¼D@T6³[ë}vÈñé¤(\'\\[qkeÆ¬Ö´` dÁ335-¹%UJl¡;\01SV9(y cÐ8àçQ$1(Ád*Njbb8NÁ£70eLÆZëJT)Ä@Mªä&à¢ZXWriR®¾Éí  Û0¦q*Ì2JvpÓG{L©¬Ie$uBÐ¥1Ë]s±Ë<S¤æd¹.N{i£Ìí£x-[-ÝÍ¹¼¾ML\Z·4Ô\ZN`§-Ýµ|>`½kY³mËQnV44ìä.]gQÝ<Ã¢	ùp3C)b1tA;XáST¥S\\*µQi[dd  &{ÿC=Oø^%ÄÇSq´Àrcá\\.#<¥)qQ¼Iq,SÄàPê±\ZýHJEã5Êb9°:p*^p.¼0 ^Ô5F´.0`Ó`]Ä-´9XdPàS`\"ÒPËàÌúü}!ÑåÏIÖê(ABmn¢­UOü÷29\r2ñH²À.LîHªl©°ñÄw=l0ò!\'M9~ÃPn×MOÎ¼THgx¦NÒ¡© ÂCxZ¯¸ú¯D°½¦c=-¹ã½	j.Æs<Ä1	SÊ8[[`Ï2g@è] Æg©[9Õ=·;ê1ß¤P=·±IlR\ZÙxðÉÈ!Bë¢5àÛÔ8È²8ÐÇ1bp ¤¼ÄäD%ì¾sR:4ÊØü\ZDQHHæµö#_Bû}ÃM²-Ìn0¢V5y;# ñ7\\ÇvG3¤øB\Zø1d2ÈR¯\nJ§R3*mÉÙæêx®ýèCàWª1 f!bi\0¥cªsòwq+]¥é2cÉ!´ w]înêá1]*ÚEæJ2ÊÏ¤Pr¸*°°Q5ø%ÝxõÈþ\rñàw¡	MMEËª#B_Aõè{ò\'ê2ñ7´rS	çãÝÿ¿¬óô#ý<Þo:49ü]ÉáBB4R', 'Online Payment', 'shipto', 'Azampur', '1', 295, NULL, NULL, 'BnQI1614146762', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-24 00:06:02', '2021-02-24 00:06:02', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '40', '6035ecb98e68f', 0, 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ', 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ'),
(142, 31, 'BZh91AY&SY½xSª\0_P\0Xø?[ü¿ÿÿú`ÿ}\0\0(B\nHPU!9dÀa0L!#\0À2`0&À`\00\0L`À0\0L\0L&	0`H\nmOÔ&\ZL£LS5\r TÄ5=	©M=G¨4zi6ÄºHê}å~E|HKHëøþ°ËÁ¹½ w1]&·H^Y§å*^MØ?×\\³èÉi92d¦Î/ÉFÆXhÌäÑÌ#6®l02d³f³aù²7jQiªduÏZ&©Ð¤îg-\'QÖhüß¢ÎÁGüv=cþw7#bþg·@Që#ÉÓèfp>¼ô¥NG[¡c±cÒ\\|ÔÌd{Îk&¢yy>Ó1¤äTþqQÉH6-$:8-2£Fn4ae,v¦GqÈÍî{Ö_vajIºT\Z,C¡Ô]\rÒ¢JEIÔÃWF\'%3T´Ð¤ÜÝ(ÂuKA&©i%¢ÊZ.ÃfM×ØÙ©©e\'	J.JR¤SU¶a6jdÒÚZ(MY\nP¤ÉuÚ0Ñâi83nRKÎ[bðl¢0³fQÅÒÍ\Z%(Yv0»E>\rDÖi,Pj¤Y£V¨èQu4*D©vk®ÑØ´¼¤¾J]vMe9Úhi÷·74ÇÍ7¸9-\ZÓAEØE#j(ÂjÂSV\Z0ÉfbjÍ«CTÃ©ªíi&$ÂY0Ñ	B]eÆ2dLÚ]0ÐXÊaYK¦6&ÉdûSé$;OÍw*0Â¸°Ò°ÙÑRÍ¤#AAa_¼PÈY[©RÀ`!E(DE@B.Ñ<§S¤ÐI>r æ»&%Q«&flN×16j§[­FhÓwåå%Hà²ÓR¬àlÂæÌÙ®.Sf(f¤º4,Íe186lÙ9»s\n5pdÝ»-S#\rVf_\n¦ëÌ¡ê·ÜòFë¬årAíD9Ï\Z=³÷lh·Éàç3NþÜ?óðn:M{e>ãØ³tLßÆÞ³E$ÑIEVK;d\Z[Ç¤7K í`h!pÓÈö:ÝÏq4o½IÔ^Ü6wl40¼6¥º\'3ñ4;R£å/¸û&g9GÔÄsÖX<sî6SÍ89¢ÄýYÏrÔ7TTù;äÝºyNY×3ssXY¬ºÊgâl:.R=~ê{ew¼VSE4w¾¦&©ÁFf¦£èø·)Cr¤È·M§à\\ ëq|Îw AplØ³)À±¥ ÉvÓD§ÐöÊTìÝO&Sµ).¦oCÂ{¨ë<Æê>µÓ)Éá8)­b%åæ\'Ö.ÒhgyöLJ]¸ít\n¯àB(C\0è<sÖòg.ðNÆ\'IêKOS¼¼aÉhâàÕTbTõ?É0ýÆÃtO½<JQGkÏ7fë;$~«JaçxÏcÉÌz%MV\\zv¡u\'%Æ¤©£$YywÖ]àÊTÉ5O)¹³Á»IKÚR26ÂÄw&ÈÐâó, Y1Å;%Köµrpwy4d5GÑ±èÆB{Âf7J8ÎóKÂð#gÏ~Å?IçåÆJPÎ\\ºxÎO©Å¢d¤¦G	GQÛ,ÑÊvÏ3\rV\'ºå%ÂQ;\Z\ZF	¾ÓL6éÁÔh=GÈCQ6`Ê¦J#BÁD©«A	\Z °bg;¨Ðo%æØ¼\0Þ:M\ZN$ô.òêm%Ñ¼²Éü<éÕyÆlðRÑ2J(ØôNm×hÕ¬T	Î-(¢É9¼ßåÏÊnN2Êa5\'Ø?I£¡GÁè·qPxDÂa,Ñ<!fÓÊS½Ù>KÉ>gyÊ8§ ´å7fÌá(Éî\'ÖqÿncÒ0QPÅÜN$/^ê', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'AyMA1614146944', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-24 00:09:04', '2021-02-24 00:09:04', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6035ed5322aa9', 0, 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ', 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ'),
(143, 31, 'BZh91AY&SY$òö\0/_P\0Xø;Kü¿ÿÿú`]÷@ª#4h*AÓ\0		\0L\0Á$\"§¤Õ=M \0L264ÄÀ``\0\00I©HhÐ4h\r\04¨@sLL\0&\0&\00\0¡1jy&a iOI¦M©`H]	ðÆd=Ê\0  <a·àþ/¸±B£%¯1ÓäEdÌd4>2GÚ®´SJ~N¦4F(åºyF3ÖZª}b.~m/U6I$ÊËA®\rfÂßqì|¶zÏ¡¿±Ô^mâWsÖ	}KGÔò<\rÃ³4´!ó*:Ìáx<JÓ^òê3\ZòôÄµêÍ:ê©\rÇA¼Ì¯âA,H&¤#C3Y\"3ÓC¿:*³BÃLS(µ \nWä	Ø|ÉªÚ4hÊÊ7LÙ|êV¼ËE ¢jS!0V\"6\rVfÔ·#\"Jâ4 uOÎiWIÎIF,`fz\rXV1fµ©¬f±[,&Ä7LÙ5Ñ89ýHã r@uÈ9Kf\"PÈÞØbVe6gO`ÑÌ2¦DÆc-u¥)Ôâå2aáà&ÌU\nò\npQ-D,+¹4©Wu$.uóH\0Ì 5*Ë%\0ÚÊÕÁId¢ìR,l1hA\"\"1\"YD\n`)\"oLÔ½R8ÑËÂVXj²äæ¸Rk-ÃÆ6ßb0·w20nÆöû5w\n m`X-6°=»âMõ­]lKÜÛiÊpù\"M ²Æ:¯Yç?#qò;,|AÇ¤vå£ÌÈªèÞX2+¬~G8Åd®ý´±ñ4¬Ó¯¬l?SØ_¹ì\'YÞ!FrQî2ùM\0¿,+u].I7ÓPêg|@\Z\ZÆõ×÷T2Ã]tö=g¸ÀÐÜjÌ4 _{´f;ÀÄÉCbÃP|ÇõXÖ^m.ÓH¼e@¸ÿÍ0Ä.ü·b8ö°ØãÓ:YVHÅ2l/jE}êÇ#>fãá¦b)&G§\"\0Á3ØIdþ§i&1åS-´Ì%ÝÃyßö\ZÚt=ç3¶U9ð5;¶ÀÎRIC´&Å#Ô{H\niÞ,ú×3Ñ{@ç11Çµ&s;{.\'fÝCYë0 õäJ¦n¹7Íå1ÝýrþA²üq]#0Çc Úøéyó$-¡6ZÊCc7Y#RÊôÑD\Zã¶¨qd)Ë6³. *K´$pKhÃ«ý5ºE«¤X¦Z¡yÏàObÂá¦{ÌýËÌÐâq²Rl\'¿ÑýÎ\'!VÂâI\\õ\\¨ÒÐ5BÄgZfâ-¸è¥ðâÀÄeaJF81¥cy\"uwu]Íñ~ó1y@IR ÈÆ\"\n, (IM&Iµ&Ã­ðíKª»ËXÈ]R^(©$Bô8­daÁÂULfQ¦3bûÓHÔh c +q7ÅÇ  1Xë!ðEJèÉ®õèÀ¶±Q~9ÀàYpDPÞSù«q\0|Íä#~¦\ZèÂ«ñï11aÊ8xqB())§ø»)Â\'¯°', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'ruKp1614148975', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-24 00:42:55', '2021-02-24 00:42:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6035f55e93105', 0, 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ', 'BZh91AY&SY»ùSJ\0\0\0@\0 \0!]ÅÜN$.þTÒ');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pending', 'You have successfully placed your order.', '2019-10-09 22:28:22', '2019-10-09 22:28:22'),
(2, 2, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:13:21', '2019-10-10 00:13:21'),
(3, 3, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:14:54', '2019-10-10 00:14:54'),
(4, 4, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:26:24', '2019-10-10 00:26:24'),
(5, 5, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:27:37', '2019-10-10 00:27:37'),
(6, 6, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:36:05', '2019-10-10 00:36:05'),
(7, 7, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:37:46', '2019-10-10 00:37:46'),
(8, 8, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:42:27', '2019-10-10 00:42:27'),
(9, 9, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:52:55', '2019-10-10 00:52:55'),
(10, 10, 'Pending', 'You have successfully placed your order.', '2019-10-10 01:45:51', '2019-10-10 01:45:51'),
(11, 11, 'Pending', 'You have successfully placed your order.', '2019-10-10 01:49:36', '2019-10-10 01:49:36'),
(12, 12, 'Completed', 'Your order has completed successfully.', '2019-10-12 00:57:48', '2019-10-12 00:57:48'),
(13, 13, 'Pending', 'You have successfully placed your order.', '2019-10-12 12:38:32', '2019-10-12 12:38:32'),
(14, 14, 'Pending', 'You have successfully placed your order.', '2019-10-13 04:31:52', '2019-10-13 04:31:52'),
(15, 15, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:08:46', '2019-10-13 05:08:46'),
(16, 16, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:12:20', '2019-10-13 05:12:20'),
(17, 17, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:14:18', '2019-10-13 05:14:18'),
(18, 18, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:16:01', '2019-10-13 05:16:01'),
(19, 19, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:37:27', '2019-10-13 05:37:27'),
(20, 20, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:39:14', '2019-10-13 05:39:14'),
(21, 21, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:17:39', '2019-10-13 06:17:39'),
(22, 22, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:19:20', '2019-10-13 06:19:20'),
(23, 23, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:21:27', '2019-10-13 06:21:27'),
(24, 24, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:24:57', '2019-10-13 06:24:57'),
(25, 25, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:38:00', '2019-10-13 06:38:00'),
(26, 26, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:44:26', '2019-10-13 06:44:26'),
(27, 27, 'Pending', 'You have successfully placed your order.', '2019-10-14 02:08:07', '2019-10-14 02:08:07'),
(28, 28, 'Pending', 'You have successfully placed your order.', '2019-10-14 02:11:15', '2019-10-14 02:11:15'),
(29, 1, 'Pending', 'You have successfully placed your order.', '2019-11-14 01:43:24', '2019-11-14 01:43:24'),
(30, 2, 'Pending', 'You have successfully placed your order.', '2019-11-14 01:51:11', '2019-11-14 01:51:11'),
(31, 3, 'Pending', 'You have successfully placed your order.', '2021-01-09 13:50:33', '2021-01-09 13:50:33'),
(32, 4, 'Pending', 'You have successfully placed your order.', '2021-01-09 13:50:57', '2021-01-09 13:50:57'),
(33, 5, 'Pending', 'You have successfully placed your order.', '2021-01-17 22:55:16', '2021-01-17 22:55:16'),
(34, 6, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:35:52', '2021-01-17 23:35:52'),
(35, 7, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:36:02', '2021-01-17 23:36:02'),
(36, 8, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:39:16', '2021-01-17 23:39:16'),
(37, 9, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:41:45', '2021-01-17 23:41:45'),
(38, 10, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:44:10', '2021-01-17 23:44:10'),
(39, 11, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:44:12', '2021-01-17 23:44:12'),
(40, 12, 'Pending', 'You have successfully placed your order.', '2021-01-17 23:54:57', '2021-01-17 23:54:57'),
(41, 13, 'Pending', 'You have successfully placed your order.', '2021-01-18 00:35:37', '2021-01-18 00:35:37'),
(42, 14, 'Pending', 'You have successfully placed your order.', '2021-01-18 00:38:48', '2021-01-18 00:38:48'),
(43, 15, 'Pending', 'You have successfully placed your order.', '2021-01-18 00:42:54', '2021-01-18 00:42:54'),
(44, 16, 'Pending', 'You have successfully placed your order.', '2021-01-18 05:20:39', '2021-01-18 05:20:39'),
(45, 17, 'Pending', 'You have successfully placed your order.', '2021-01-18 22:47:35', '2021-01-18 22:47:35'),
(46, 18, 'Pending', 'You have successfully placed your order.', '2021-01-21 04:10:35', '2021-01-21 04:10:35'),
(47, 19, 'Pending', 'You have successfully placed your order.', '2021-01-21 04:11:47', '2021-01-21 04:11:47'),
(48, 20, 'Pending', 'You have successfully placed your order.', '2021-01-21 04:18:59', '2021-01-21 04:18:59'),
(49, 21, 'Pending', 'You have successfully placed your order.', '2021-01-21 04:20:13', '2021-01-21 04:20:13'),
(50, 2, 'Processing', 'dsaf', '2021-01-21 04:24:41', '2021-01-21 04:24:41'),
(51, 22, 'Pending', 'You have successfully placed your order.', '2021-01-21 05:28:30', '2021-01-21 05:28:30'),
(52, 23, 'Pending', 'You have successfully placed your order.', '2021-01-23 23:08:52', '2021-01-23 23:08:52'),
(53, 24, 'Pending', 'You have successfully placed your order.', '2021-01-26 05:49:22', '2021-01-26 05:49:22'),
(54, 25, 'Pending', 'You have successfully placed your order.', '2021-01-27 01:29:46', '2021-01-27 01:29:46'),
(55, 26, 'Pending', 'You have successfully placed your order.', '2021-01-27 01:30:12', '2021-01-27 01:30:12'),
(56, 27, 'Pending', 'You have successfully placed your order.', '2021-01-27 01:40:39', '2021-01-27 01:40:39'),
(57, 28, 'Pending', 'You have successfully placed your order.', '2021-01-27 05:10:22', '2021-01-27 05:10:22'),
(58, 29, 'Pending', 'You have successfully placed your order.', '2021-01-27 06:12:09', '2021-01-27 06:12:09'),
(59, 30, 'Pending', 'You have successfully placed your order.', '2021-01-27 06:15:03', '2021-01-27 06:15:03'),
(60, 31, 'Pending', 'You have successfully placed your order.', '2021-01-27 06:20:51', '2021-01-27 06:20:51'),
(61, 32, 'Pending', 'You have successfully placed your order.', '2021-01-27 06:23:20', '2021-01-27 06:23:20'),
(62, 33, 'Pending', 'You have successfully placed your order.', '2021-01-27 07:01:07', '2021-01-27 07:01:07'),
(63, 34, 'Pending', 'You have successfully placed your order.', '2021-01-27 07:02:17', '2021-01-27 07:02:17'),
(64, 35, 'Pending', 'You have successfully placed your order.', '2021-01-27 23:01:54', '2021-01-27 23:01:54'),
(65, 36, 'Pending', 'You have successfully placed your order.', '2021-01-27 23:02:43', '2021-01-27 23:02:43'),
(66, 37, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:18:06', '2021-01-28 00:18:06'),
(67, 38, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:21:19', '2021-01-28 00:21:19'),
(68, 39, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:22:46', '2021-01-28 00:22:46'),
(69, 40, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:23:57', '2021-01-28 00:23:57'),
(70, 41, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:25:07', '2021-01-28 00:25:07'),
(71, 42, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:25:22', '2021-01-28 00:25:22'),
(72, 43, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:25:38', '2021-01-28 00:25:38'),
(73, 44, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:26:09', '2021-01-28 00:26:09'),
(74, 45, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:27:11', '2021-01-28 00:27:11'),
(75, 46, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:27:59', '2021-01-28 00:27:59'),
(76, 47, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:28:31', '2021-01-28 00:28:31'),
(77, 48, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:29:10', '2021-01-28 00:29:10'),
(78, 49, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:30:00', '2021-01-28 00:30:00'),
(79, 50, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:30:15', '2021-01-28 00:30:15'),
(80, 51, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:30:39', '2021-01-28 00:30:39'),
(81, 52, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:30:47', '2021-01-28 00:30:47'),
(82, 53, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:30:59', '2021-01-28 00:30:59'),
(83, 54, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:33:34', '2021-01-28 00:33:34'),
(84, 55, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:33:46', '2021-01-28 00:33:46'),
(85, 56, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:38:33', '2021-01-28 00:38:33'),
(86, 57, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:45:04', '2021-01-28 00:45:04'),
(87, 58, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:47:13', '2021-01-28 00:47:13'),
(88, 59, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:49:44', '2021-01-28 00:49:44'),
(89, 60, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:55:38', '2021-01-28 00:55:38'),
(90, 61, 'Pending', 'You have successfully placed your order.', '2021-01-28 03:39:21', '2021-01-28 03:39:21'),
(91, 62, 'Pending', 'You have successfully placed your order.', '2021-01-28 06:08:56', '2021-01-28 06:08:56'),
(92, 63, 'Pending', 'You have successfully placed your order.', '2021-01-28 06:11:14', '2021-01-28 06:11:14'),
(93, 64, 'Pending', 'You have successfully placed your order.', '2021-01-30 23:15:30', '2021-01-30 23:15:30'),
(94, 65, 'Pending', 'You have successfully placed your order.', '2021-01-30 23:22:38', '2021-01-30 23:22:38'),
(95, 66, 'Pending', 'You have successfully placed your order.', '2021-01-30 23:25:39', '2021-01-30 23:25:39'),
(96, 67, 'Pending', 'You have successfully placed your order.', '2021-01-30 23:37:19', '2021-01-30 23:37:19'),
(97, 68, 'Pending', 'You have successfully placed your order.', '2021-01-30 23:42:52', '2021-01-30 23:42:52'),
(98, 69, 'Pending', 'You have successfully placed your order.', '2021-01-31 01:33:13', '2021-01-31 01:33:13'),
(99, 70, 'Pending', 'You have successfully placed your order.', '2021-01-31 01:36:12', '2021-01-31 01:36:12'),
(100, 71, 'Pending', 'You have successfully placed your order.', '2021-01-31 01:42:28', '2021-01-31 01:42:28'),
(101, 72, 'Pending', 'You have successfully placed your order.', '2021-01-31 01:56:33', '2021-01-31 01:56:33'),
(102, 73, 'Pending', 'You have successfully placed your order.', '2021-01-31 01:57:29', '2021-01-31 01:57:29'),
(103, 74, 'Pending', 'You have successfully placed your order.', '2021-01-31 02:12:47', '2021-01-31 02:12:47'),
(104, 75, 'Pending', 'You have successfully placed your order.', '2021-01-31 02:15:08', '2021-01-31 02:15:08'),
(105, 76, 'Pending', 'You have successfully placed your order.', '2021-01-31 02:31:12', '2021-01-31 02:31:12'),
(106, 77, 'Pending', 'You have successfully placed your order.', '2021-01-31 02:43:09', '2021-01-31 02:43:09'),
(107, 78, 'Pending', 'You have successfully placed your order.', '2021-02-01 00:21:14', '2021-02-01 00:21:14'),
(108, 79, 'Pending', 'You have successfully placed your order.', '2021-02-01 00:26:38', '2021-02-01 00:26:38'),
(109, 80, 'Pending', 'You have successfully placed your order.', '2021-02-01 00:35:42', '2021-02-01 00:35:42'),
(110, 81, 'Pending', 'You have successfully placed your order.', '2021-02-01 00:58:30', '2021-02-01 00:58:30'),
(111, 82, 'Pending', 'You have successfully placed your order.', '2021-02-01 02:32:06', '2021-02-01 02:32:06'),
(112, 83, 'Pending', 'You have successfully placed your order.', '2021-02-01 02:34:16', '2021-02-01 02:34:16'),
(113, 84, 'Pending', 'You have successfully placed your order.', '2021-02-01 02:39:04', '2021-02-01 02:39:04'),
(114, 88, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:54:55', '2021-02-02 00:54:55'),
(115, 89, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:55:15', '2021-02-02 00:55:15'),
(116, 90, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:55:33', '2021-02-02 00:55:33'),
(117, 91, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:57:00', '2021-02-02 00:57:00'),
(118, 92, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:57:27', '2021-02-02 00:57:27'),
(119, 93, 'Pending', 'You have successfully placed your order.', '2021-02-02 00:59:28', '2021-02-02 00:59:28'),
(120, 94, 'Pending', 'You have successfully placed your order.', '2021-02-02 01:01:07', '2021-02-02 01:01:07'),
(121, 95, 'Pending', 'You have successfully placed your order.', '2021-02-02 01:17:08', '2021-02-02 01:17:08'),
(122, 96, 'Pending', 'You have successfully placed your order.', '2021-02-02 01:17:41', '2021-02-02 01:17:41'),
(123, 97, 'Pending', 'You have successfully placed your order.', '2021-02-02 01:19:06', '2021-02-02 01:19:06'),
(124, 98, 'Pending', 'You have successfully placed your order.', '2021-02-02 01:20:09', '2021-02-02 01:20:09'),
(125, 99, 'Pending', 'You have successfully placed your order.', '2021-02-03 00:21:01', '2021-02-03 00:21:01'),
(126, 100, 'Pending', 'You have successfully placed your order.', '2021-02-03 00:30:24', '2021-02-03 00:30:24'),
(127, 101, 'Pending', 'You have successfully placed your order.', '2021-02-03 00:31:54', '2021-02-03 00:31:54'),
(128, 102, 'Pending', 'You have successfully placed your order.', '2021-02-03 00:39:23', '2021-02-03 00:39:23'),
(129, 103, 'Pending', 'You have successfully placed your order.', '2021-02-03 00:41:57', '2021-02-03 00:41:57'),
(130, 104, 'Pending', 'You have successfully placed your order.', '2021-02-03 01:08:37', '2021-02-03 01:08:37'),
(131, 105, 'Pending', 'You have successfully placed your order.', '2021-02-03 05:43:15', '2021-02-03 05:43:15'),
(132, 106, 'Pending', 'You have successfully placed your order.', '2021-02-03 05:47:58', '2021-02-03 05:47:58'),
(133, 107, 'Pending', 'You have successfully placed your order.', '2021-02-03 05:50:48', '2021-02-03 05:50:48'),
(134, 108, 'Pending', 'You have successfully placed your order.', '2021-02-04 00:17:53', '2021-02-04 00:17:53'),
(135, 109, 'Pending', 'You have successfully placed your order.', '2021-02-04 00:20:10', '2021-02-04 00:20:10'),
(136, 110, 'Pending', 'You have successfully placed your order.', '2021-02-04 00:22:20', '2021-02-04 00:22:20'),
(137, 111, 'Pending', 'You have successfully placed your order.', '2021-02-04 00:24:03', '2021-02-04 00:24:03'),
(138, 112, 'Pending', 'You have successfully placed your order.', '2021-02-04 00:35:29', '2021-02-04 00:35:29'),
(139, 113, 'Pending', 'You have successfully placed your order.', '2021-02-04 01:14:28', '2021-02-04 01:14:28'),
(140, 114, 'Pending', 'You have successfully placed your order.', '2021-02-06 13:38:43', '2021-02-06 13:38:43'),
(141, 115, 'Pending', 'You have successfully placed your order.', '2021-02-09 12:22:10', '2021-02-09 12:22:10'),
(142, 116, 'Pending', 'You have successfully placed your order.', '2021-02-09 12:29:12', '2021-02-09 12:29:12'),
(143, 117, 'Pending', 'You have successfully placed your order.', '2021-02-09 13:29:20', '2021-02-09 13:29:20'),
(144, 118, 'Pending', 'You have successfully placed your order.', '2021-02-10 23:02:59', '2021-02-10 23:02:59'),
(145, 118, 'Completed', 'Final', '2021-02-10 23:09:59', '2021-02-10 23:09:59'),
(146, 119, 'Pending', 'You have successfully placed your order.', '2021-02-11 23:16:05', '2021-02-11 23:16:05'),
(147, 120, 'Pending', 'You have successfully placed your order.', '2021-02-22 03:10:55', '2021-02-22 03:10:55'),
(148, 121, 'Pending', 'You have successfully placed your order.', '2021-02-22 05:38:20', '2021-02-22 05:38:20'),
(149, 122, 'Pending', 'You have successfully placed your order.', '2021-02-23 02:32:40', '2021-02-23 02:32:40'),
(150, 123, 'Pending', 'You have successfully placed your order.', '2021-02-23 02:36:13', '2021-02-23 02:36:13'),
(151, 124, 'Pending', 'You have successfully placed your order.', '2021-02-23 02:49:24', '2021-02-23 02:49:24'),
(152, 125, 'Pending', 'You have successfully placed your order.', '2021-02-23 02:51:53', '2021-02-23 02:51:53'),
(153, 126, 'Pending', 'You have successfully placed your order.', '2021-02-23 03:05:16', '2021-02-23 03:05:16'),
(154, 127, 'Pending', 'You have successfully placed your order.', '2021-02-23 03:06:59', '2021-02-23 03:06:59'),
(155, 128, 'Pending', 'You have successfully placed your order.', '2021-02-23 03:46:20', '2021-02-23 03:46:20'),
(156, 129, 'Pending', 'You have successfully placed your order.', '2021-02-23 04:38:22', '2021-02-23 04:38:22'),
(157, 130, 'Pending', 'You have successfully placed your order.', '2021-02-23 04:40:55', '2021-02-23 04:40:55'),
(158, 131, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:38:37', '2021-02-23 05:38:37'),
(159, 132, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:41:25', '2021-02-23 05:41:25'),
(160, 133, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:42:56', '2021-02-23 05:42:56'),
(161, 134, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:43:24', '2021-02-23 05:43:24'),
(162, 135, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:44:01', '2021-02-23 05:44:01'),
(163, 136, 'Pending', 'You have successfully placed your order.', '2021-02-23 05:59:01', '2021-02-23 05:59:01'),
(164, 137, 'Pending', 'You have successfully placed your order.', '2021-02-23 06:00:00', '2021-02-23 06:00:00'),
(165, 138, 'Pending', 'You have successfully placed your order.', '2021-02-23 06:01:47', '2021-02-23 06:01:47'),
(166, 139, 'Pending', 'You have successfully placed your order.', '2021-02-23 22:38:24', '2021-02-23 22:38:24'),
(167, 140, 'Pending', 'You have successfully placed your order.', '2021-02-23 23:23:34', '2021-02-23 23:23:34'),
(168, 141, 'Pending', 'You have successfully placed your order.', '2021-02-24 00:06:02', '2021-02-24 00:06:02'),
(169, 142, 'Pending', 'You have successfully placed your order.', '2021-02-24 00:09:04', '2021-02-24 00:09:04'),
(170, 143, 'Pending', 'You have successfully placed your order.', '2021-02-24 00:42:55', '2021-02-24 00:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'test@chabikathi.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', 'Dhaka Bangladesh', '00 000 000 000', '00 000 000 000', 'test@chabikathi.com', 'https://chabikathi.com/', 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 0, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(11, '1612349346Optimized-SSL-Commerz-Pay-With-logo-All-Size-RI.png', '#');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via your Mobile Money.', 'Mobile Money', '<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>', 0),
(47, 'ssl commerz payment', 'Online Payment', '<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `cashback` varchar(255) DEFAULT NULL,
  `product_payment_method` int(11) NOT NULL DEFAULT 1 COMMENT '1 for online. 2 for cash on',
  `commission` float DEFAULT NULL,
  `campaign_status` int(11) DEFAULT 0,
  `cashback_percent` int(11) DEFAULT 0,
  `campaign_id` int(11) DEFAULT 0,
  `admin_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `cashback`, `product_payment_method`, `commission`, `campaign_status`, `cashback_percent`, `campaign_id`, `admin_status`) VALUES
(93, NULL, 'normal', NULL, 0, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-94l93dsn', '15680269303GYKjODW.png', '1568026930poclhyxJ.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 39, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 07:07:43', '2021-02-24 01:20:16', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 58, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 07:36:06', '2021-02-14 23:32:54', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(96, 'pr601jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 96', 'top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b', '1568025872cCRVsp2k.png', '1568025872thPsuRSJ.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 13, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 08:00:05', '2021-02-24 01:20:17', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(97, 'pr602jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 97', 'physical-product-title-title-will-be-here-97-pr602jsv', '1568026462TxRJ07FG.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,M,L', '2147483596,2147483597,2147483597', '20,30,40', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 72, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-02-24 01:20:19', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(99, 'pr604jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-hjm99shr', '15680264040zpMCpmS.png', '1568026404Hm4kTmnP.jpg', NULL, 'S', '2147483641', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 17, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-02-24 01:20:20', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(100, 'pr605jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 100', 'physical-product-title-title-will-be-here-100-qqz100nzi', '1568026368qU5AILZo.png', '1568026368CzWwfWLG.jpg', NULL, 'S', '55555555555555541', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 10, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 11:59:33', '2021-02-24 01:20:22', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(101, 'pr606jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 101', 'physical-product-title-title-will-be-here-101-8e1101lbq', '1568026326RDSwScJe.png', '1568026326vMlslLz4.jpg', NULL, 'S', '2147483606', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 24, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-02-24 01:20:23', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(102, 'pr607jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-pr607jsv', '1568026301A6SNpEFR.png', '1568026301VLkmQEpb.jpg', NULL, 'S', '2147483573', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 27, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-02-24 00:42:55', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(103, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-laj1033wf', '1568026899SLhVRzQv.png', '15680268999fypNo3k.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-03 01:16:24', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(104, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 104', 'digital-product-title-will-be-here-by-name-104-ffv1047iv', '1568026881R8KnUyJv.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 7, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2021-01-19 00:23:26', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(105, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 105', 'digital-product-title-will-be-here-by-name-105-xpt105lfz', '1568026853LMtcb9he.png', '1568026853ZnMf5AkF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-07 22:40:15', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(106, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 106', 'digital-product-title-will-be-here-by-name-106-iq4106dr3', '1568026820NnXjzL5e.png', '1568026820j7QX4FZs.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2021-02-07 22:57:24', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-12 22:27:40', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2021-01-09 12:30:38', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `cashback`, `product_payment_method`, `commission`, `campaign_status`, `cashback_percent`, `campaign_id`, `admin_status`) VALUES
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, '2019-09-09 12:25:20', '2019-09-19 02:39:08', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-sct112k8z', '1568029203HHnZu8em.png', '1568029203eAzBjS8a.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 1, 1, '2019-09-09 12:25:20', '2021-01-09 16:04:18', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(114, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9', '1568029152hgFzyOZv.png', '1568029152PVeSE2Ct.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, '2019-09-09 12:25:20', '2019-10-01 23:34:27', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:15:17', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:30', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:03', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:13:36', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 12:36:06', '2019-09-09 10:53:33', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:12:23', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:11:57', 1, '09/08/2021', NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(123, 'pr608jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-0af12392v', '1568025845ksCVo0hg.png', '1568025845bvB0Q0RE.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 7, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-12 04:26:54', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(124, 'pr609jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 124', 'top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x', '1568025818Iu033mHq.png', '1568025818tm9YHIHp.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 11, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2021-01-17 06:09:56', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(125, 'pr610jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 125', 'top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto', '1568025774B3MU5tJK.png', '1568025774ZsBKNuio.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-01 21:57:30', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `cashback`, `product_payment_method`, `commission`, `campaign_status`, `cashback_percent`, `campaign_id`, `admin_status`) VALUES
(126, 'pr611jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 1', 'top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft', '1568025683HenL6lSt.png', '1568025683ZYvDAf0q.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 10, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2019-09-09 13:00:05', '2019-10-01 21:57:22', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(128, 'pr613jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz', '1568025531RbQwgMZ5.png', '1568025531ckSl3TVR.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 1, '2019-09-09 13:00:05', '2021-02-07 02:26:23', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(129, 'pr614jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 101', 'top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico', '1568025423UQNFrvNh.png', '15680254230iXcasMb.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2021-01-28 06:10:41', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(130, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 130', 'license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx', '1568029076fUcMe2QP.png', '1568029076jgoAP4SR.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '998', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 1, '2019-09-09 12:25:20', '2021-01-31 01:56:33', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(134, 'OO42939gas', 'normal', NULL, 13, 4, 2, 1, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 36, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 00:33:22', '2019-10-12 06:20:27', 0, NULL, NULL, NULL, 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 82, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 23:08:12', '2021-01-28 05:30:31', 0, NULL, NULL, NULL, 1, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1570072918kGfglIIV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 21, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 21:21:58', '2019-10-07 23:20:46', 0, NULL, NULL, NULL, 0, 135, NULL, 1, NULL, 0, 0, NULL, 0),
(159, 'zhv5144fRY', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-zhv5144fry', '1570085245XVFR2oBZ.png', '1570085246ZA1btIzg.jpg', NULL, NULL, NULL, NULL, NULL, 300, 346, 'dfh', 34634, 'dfh', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 00:47:25', '2019-10-12 04:54:24', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(160, 'o1L5621DiS', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-o1l5621dis', '1570085654jsXxCLyC.png', '1570085654jeAoOOo6.jpg', NULL, NULL, NULL, NULL, NULL, 346, 346, 'sgasdg', 34, 'dsgds', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 00:54:14', '2019-10-12 04:54:27', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(161, 'D2e6433Yi0', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-d2e6433yi0', '1570086479WEPC1gt0.png', '1570086479kBZE8u1v.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, 'hdfhdf', 0, 'dfjdfj', 1, 24, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 01:07:59', '2019-10-11 23:30:04', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(162, 'tOC5844N0t', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-toc5844n0t', '1570255904FqR6FYd6.png', '1570255905GPr2HimK.jpg', NULL, 'S,Medium,Large', '100,100,100', '2,5,10', '#000000,#962f2f,#1c10a1,#1e9114,#701313', 400, 450, 'sdhds', 449, 'hdsh', 1, 124, 'dsf,hgf', 'Test,test1', '#000000,#d14141', 2, '24', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:11:44', '2021-02-24 01:20:08', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(163, '1ui8665inp', 'normal', NULL, 13, 17, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-1ui8665inp', '1570258694VlEv5IWz.png', '1570258694DNAUV7hA.jpg', NULL, NULL, NULL, NULL, NULL, 300, 464, 'fhjd', 734, 'dfj', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:58:14', '2021-02-24 01:20:06', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(164, 'RXp8737LeV', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737lev', '157025877313GpXaVy.png', '15702587732fKHlv77.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:59:33', '2021-02-24 01:20:04', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(165, 'RXp8737Le', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737le', '15702607258LEdVp5O.png', '1570260725Wze2eRN9.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 0, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 01:00:19', '2021-02-24 01:20:03', 0, NULL, NULL, NULL, 1, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(166, 'U1W3579L5k', 'normal', NULL, 0, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"No warranty\",\"Non-local warranty\"],\"prices\":[\"0\",\"30\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"Infinix\"],\"prices\":[\"20\",\"40\"],\"details_status\":1},\"ram\":{\"values\":[\"3 GB\"],\"prices\":[\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Black\",\"White\",\"Brown\"],\"prices\":[\"0\",\"20\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"21\"],\"prices\":[\"12\",\"20\"],\"details_status\":1}}', 'Zain - Digital Agency and Startupuuuu', 'zain-digital-agency-and-startupuuuu-u1w3579l5k', '15708736755B0OtgVI.png', '1570873675mdibaSBp.jpg', NULL, NULL, NULL, NULL, NULL, 300, 436, 'shsdh', 343, 'sdhds', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 03:47:55', '2021-02-24 01:20:02', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(167, 'kE84874xem', 'normal', NULL, 13, 4, 2, 1, NULL, 'Courses', 'courses-ke84874xem', '1570874976y1X2tWVr.png', '15708749764ioXjDWh.jpg', NULL, NULL, NULL, NULL, NULL, 250, 355, 'asgas', 345, 'agsas', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:09:36', '2021-02-24 01:20:01', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(168, 'tbs53803yh', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"international manufacturer warranty\"],\"prices\":[\"78\",\"45\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Apple\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\",\"3 GB\"],\"prices\":[\"0\",\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Sliver\",\"Brown\"],\"prices\":[\"67\",\"5\"],\"details_status\":1}}', 'Revel - Real Estate Huuu', 'revel-real-estate-huuu-tbs53803yh', '1570875445mpVQBH3x.png', '15708754456n2CU31X.jpg', NULL, NULL, NULL, NULL, NULL, 300, 345, 'dfshdfs', 6346, 'sdgs', 1, 20, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:17:25', '2021-02-24 01:19:59', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(169, 'TRg5938WNy', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny', '1570875978KD9cRleA.jpg', '15708759789N9Hm1QJ.jpg', NULL, NULL, NULL, NULL, 'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:26:18', '2021-02-24 01:19:58', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, NULL, 1, NULL, 0, 0, NULL, 1),
(170, '6Vb6172gWR', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr', '1570876195YsopRMZ0.jpg', '157087619598Nfs52R.jpg', NULL, NULL, NULL, NULL, 'Black,Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:29:55', '2021-02-24 01:19:56', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, NULL, 1, NULL, 0, 0, NULL, 1),
(171, 'zia62030Vj', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj', '1570876207958wem8B.jpg', '1570876207Ri9VVzRq.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:30:07', '2021-02-24 01:19:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, NULL, 1, NULL, 0, 0, NULL, 1),
(173, 'b2Q6258iDf', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-b2q6258idf', '1570876281siGCkmvP.jpg', '1570876281Wt1wdK8O.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:21', '2021-02-24 01:19:53', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, NULL, 1, NULL, 0, 0, NULL, 1),
(174, 'bXf62830R9', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-bxf62830r9', '1570876303dcztUot8.jpg', '15708763046Vwtn82r.jpg', NULL, 'S', '2147483643', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:43', '2021-02-24 01:19:53', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, NULL, 1, NULL, 1, 0, 11, 1),
(175, '9gn6494iUN', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun', '1570876503CUOkgSFD.jpg', '1570876503XgLFnuQi.jpg', NULL, 'S', '55555555555555554', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:35:03', '2021-02-24 01:19:51', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 102, NULL, 1, NULL, 1, 0, 11, 1),
(176, 'no66517sJq', 'normal', NULL, 13, 4, 2, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"10\",\"45\",\"0\",\"46\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Oppo\",\"EStore\",\"Infinix\",\"Apple\"],\"prices\":[\"43\",\"10\",\"15\",\"3\",\"14\"],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\",\"2 GB\",\"3 GB\"],\"prices\":[\"10\",\"20\",\"30\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\",\"Dark Grey\",\"Dark Blue\",\"Brown\"],\"prices\":[\"10\",\"23\",\"30\",\"55\",\"65\",\"75\",\"85\"],\"details_status\":1}}', 'Zain - Digital Agency auu', 'zain-digital-agency-auu-no66517sjq', '1570876547aaQJLAun.png', '1570876547rJBVu8AQ.jpg', NULL, 'Small,Medium,Large,Extra Large', '65,100,100,100', '2,3,4,5', '#000000,#9f2cc7,#5722c7,#30ede2,#bfba39', 56, 4646, 'dsg', 311, 'sdg', 0, 278, NULL, NULL, NULL, 0, '5 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 04:35:47', '2021-02-24 01:25:31', 1, '02/20/2020', '10,20,30,40,50,60', '5,10,15,20,25,30', 0, 0, NULL, 1, NULL, 0, 0, NULL, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `cashback`, `product_payment_method`, `commission`, `campaign_status`, `cashback_percent`, `campaign_id`, `admin_status`) VALUES
(178, 'Tcv6794KXS', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs', '1570876820YXbcdnxW.jpg', '1570876820rpkj3Z6U.jpg', NULL, 'S', '2147483644', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:40:20', '2021-02-24 01:19:09', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, NULL, 1, NULL, 0, 0, NULL, 1),
(179, 'mf56823djs', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-mf56823djs', '1570877127ByWwIJUA.jpg', '1570877128HKed4vMT.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:45:27', '2021-01-09 14:00:27', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, NULL, 1, NULL, 0, 0, NULL, 0),
(180, 'myy7236gFD', 'normal', NULL, 13, 5, 7, NULL, NULL, 'white', 'physical-product-title-title-will-be-here-99u-myy7236gfd', '1570877254IpMreGOE.jpg', '1570877254wBRHJA4w.jpg', NULL, 'S', '2147483640', '20', '#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'clothing,bag', NULL, NULL, 0, '5-7 days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:47:34', '2021-02-24 01:19:04', 0, NULL, NULL, NULL, 0, 99, '50', 1, 50, 0, 0, NULL, 1),
(181, 'TJV7256rgp', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-tjv7256rgp', '1570877275UqISZURU.jpg', '1570877275TFxddEsi.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:47:55', '2021-02-24 01:19:02', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, NULL, 1, NULL, 0, 0, 0, 1),
(182, 'b017277kfm', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-b017277kfm', '1570877286SxUGZME4.jpg', '1570877286o4pUSqMY.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag,js,css,php', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:48:06', '2021-02-24 01:19:01', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, NULL, 1, NULL, 0, 0, 0, 1),
(183, '123343561', 'affiliate', 'https://www.amazon.com/adidas-Girls-Sleeveless-Toddler-Little/dp/B07MTJL7ZT/ref=sr_1_1?keywords=dress&qid=1565068717&s=gateway&sr=8-1', 13, 4, 2, 1, NULL, 'Test CSV Product', 'test-csv-product-123343561', 'https://geniusocean.com/demo/kingcommerce/minimal/assets/images/1553323541minimal%20(16).jpg', '1573702721tylkFYoy.jpg', NULL, 'X,3XL', '22,23', '5,8', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 20, 25, 'This is product Description', 10, 'Test policy', 1, 0, 'CLOTHS,FASHION,WOMEN FASHION,DRESSES,MENSWEAR', NULL, NULL, 0, NULL, 0, '', '', 'https://www.youtube.com/watch?v=7hx4gdlfamo', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 21:38:40', '2019-11-13 21:38:41', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(184, 'WjP47001pZ', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'User', 'user-wjp47001pz', '1573704715Sj0qqtZ6.png', '1573704716SchylgSm.jpg', NULL, NULL, NULL, NULL, NULL, 66, 667, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:11:55', '2019-11-13 22:11:56', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(185, 'XBG4742zhX', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'Usertest', 'usertest-xbg4742zhx', '1573704758YZCDvymD.png', '1573704758412SJWpb.jpg', NULL, NULL, NULL, NULL, NULL, 66, 77, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:12:38', '2019-11-13 22:12:38', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(186, 'XBG4742zhXgfhfg', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'Usertest', 'usertest-xbg4742zhxgfhfg', '15737048788gkL2daH.png', '1573704878kp8AUxsp.jpg', NULL, NULL, NULL, NULL, NULL, 66, 77, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:14:38', '2021-01-17 05:12:40', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(187, '1DK6767ekP', 'normal', NULL, 0, 4, 2, 1, NULL, 'moon', 'moon-1dk6767ekp', '1609916810aHqJA1Ue.png', '1609916810gTqTctBB.jpg', NULL, NULL, NULL, NULL, NULL, 200, 2, '<br>', 19, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-06 01:06:50', '2021-02-24 01:18:59', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 0, 1),
(188, 'xCS4216ehj', 'normal', NULL, 0, 19, NULL, NULL, NULL, 'kjhlkjl', 'kjhlkjl-xcs4216ehj', '1610174315MyR2jqbO.png', '1610174316uDdRO1gY.jpg', NULL, NULL, NULL, NULL, NULL, 780, 5656, '6565416', 654165, '5654', 1, 1, 'knk,klkl,ojlk,465,4654,564', '654', '#654165', 2, NULL, 0, NULL, NULL, '6546', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-09 12:38:35', '2021-01-09 12:41:39', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 0),
(189, 'NW18151R4E', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-nw18151r4e', '161087818470r5u7Hp.png', '16108781842Dl0rr5s.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:09:44', '2021-02-24 01:18:57', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(190, 'NW18151R4Edsaffsadf', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-nw18151r4edsaffsadf', '16108784929eqLNMiG.png', '1610878492gERETiYC.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:14:52', '2021-02-24 01:18:56', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(191, 'NW324324', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-nw324324', '1610878655vIem3CHL.png', '1610878655kIFZhFi0.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:17:35', '2021-02-24 01:18:54', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(192, '4343434343', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-4343434343', '16108787068owoUWHz.png', '1610878706J42wVIxw.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:18:26', '2021-02-24 01:18:53', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(193, '3243432432', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-3243432432', '161087875986Ssv6bl.png', '1610878759Hmcr2t8O.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:19:19', '2021-02-24 01:18:52', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(194, '32434324322', 'normal', NULL, 0, 18, NULL, NULL, NULL, 'apple', 'apple-32434324322', '1610878775NVSGSZgZ.png', '1610878775EpWwEyUT.jpg', NULL, NULL, NULL, NULL, NULL, 200, 222, '<br>', 21, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:19:35', '2021-02-24 01:18:50', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(195, '4HL8779DjS', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'mango', 'mango-4hl8779djs', '1610878814R8zAg6hH.png', '1610878814cmjwgdrv.jpg', NULL, NULL, NULL, NULL, NULL, 850, 900, '<br>', 23422, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:20:14', '2021-02-24 01:18:49', 0, NULL, NULL, NULL, 0, 0, '50', 1, NULL, 0, 0, NULL, 1),
(196, '4HL8773219DjS', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'mango', NULL, '1610878891G8b5P92S.png', NULL, NULL, NULL, NULL, NULL, NULL, 3424, 3232, '<br>', 23423, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:21:31', '2021-02-24 01:18:48', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1),
(197, 'Pif9052UIf23o', 'normal', NULL, 0, 7, NULL, NULL, NULL, 'alu', 'fasdfa-pif9052uif23o', '1610879126zlfil3us.png', '1610879126A3Jy6Slj.jpg', NULL, NULL, NULL, NULL, NULL, 800, 950, '<br>', 324306, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:25:26', '2021-02-24 01:18:46', 0, NULL, NULL, NULL, 0, 0, '30', 1, NULL, 0, 0, NULL, 1),
(198, 'Pif9052UIf22343o', 'normal', NULL, 0, 7, NULL, NULL, NULL, 'banana', 'banana-pif9052uif22343o', '1610879242nld4yfKp.png', '1610879242uzlb115O.jpg', NULL, NULL, NULL, NULL, NULL, 300, 3000, '<br>', 324316, '<br>', 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 04:27:22', '2021-02-24 01:18:46', 0, NULL, NULL, NULL, 0, 0, '20', 1, NULL, 0, 0, NULL, 1),
(199, 'grf1470x1j', 'normal', NULL, 0, 5, 8, NULL, NULL, 'water', 'water-grf1470x1j', '1610881498uLRKDXLc.png', '1610881498xWcW3K8Y.jpg', NULL, NULL, NULL, NULL, NULL, 5000, 5500, '<br>', 323229, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 05:04:58', '2021-02-24 01:18:44', 0, NULL, NULL, NULL, 0, 0, '300', 1, NULL, 0, 0, 0, 1),
(200, 'grf147tfsdf0x1j', 'normal', NULL, 0, 4, NULL, NULL, NULL, 'water2', 'water2-grf147tfsdf0x1j', '1610881869jdNoK64N.png', '16108818699KmTKpr9.jpg', NULL, NULL, NULL, NULL, NULL, 2000, 3000, '<br>', 500, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-17 05:11:09', '2021-02-24 01:18:42', 0, NULL, NULL, NULL, 0, 0, '200', 1, NULL, 0, 0, NULL, 1),
(201, 'd6Z9833bhV', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'orange', 'orange-d6z9833bhv', '1611039884B0xxvMKu.png', '1611039886wATY5Ylt.jpg', NULL, NULL, NULL, NULL, '#992b2b,#e6d6d6', 200, 2323, 'dfg af a fasdf asdf sdaf asdf asdf as', 18, NULL, 1, 29, 'dsafasdf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 01:04:44', '2021-02-24 01:18:41', 0, NULL, NULL, NULL, 0, 0, '22', 1, NULL, 0, 0, 0, 1),
(202, 'd6Z9833bhV324', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'orange', 'orange-d6z9833bhv324', '1611041970GTPXR5Ut.png', '1611041972K4OAgYsB.jpg', NULL, NULL, NULL, NULL, '#992b2b,#e6d6d6', 200, 2323, 'This is orange.<div>fas: sdfa</div><div>fdsaf: sdfsa</div><div>fdsaf: sdafasdf</div>', 18, NULL, 1, 4, 'dsafasdf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 01:39:30', '2021-02-24 01:18:40', 0, NULL, NULL, NULL, 0, 0, '22', 1, NULL, 0, 0, NULL, 1),
(203, 'd6Z9833bhV32234', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'orange3', 'orange3-d6z9833bhv32234', '1611042220pDUDH7Z4.png', '1611042220u6kEtOTF.jpg', NULL, NULL, NULL, NULL, '#992b2b,#e6d6d6', 200, 2323, '<font size=\"4\">This is orange.</font><div>fas: sdfa</div><div>fdsaf: sdfsa</div><div>fdsaf: sdafasdf</div>', 23, NULL, 1, 2, 'dsafasdf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 01:43:40', '2021-02-24 01:18:39', 0, NULL, NULL, NULL, 0, 0, '22', 1, NULL, 0, 0, NULL, 1),
(204, 'd6Z9833bhV322343', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'orange4', 'orange4-d6z9833bhv322343', '1611042428STFXVO6H.png', '1611042428I1SrrYhy.jpg', NULL, NULL, NULL, NULL, '#992b2b,#e6d6d6', 2002, 2323, '<font size=\"4\">This is orange 4.</font><div>fas: sdfa</div><div>fdsaf: sdfsa</div><div>fdsaf: sdafasdf</div>', 23, NULL, 1, 2, 'dsafasdf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 01:47:08', '2021-02-24 01:18:38', 0, NULL, NULL, NULL, 0, 0, '22', 1, NULL, 1, 0, 11, 1),
(205, 'd6Z9833bhV32234323', 'normal', NULL, 0, 10, NULL, NULL, NULL, 'orange5', 'orange5-d6z9833bhv32234323', '1611042779FdY8DGCA.png', '16110427794uolVofI.jpg', NULL, NULL, NULL, NULL, '#992b2b,#e6d6d6', 323, 32231, '<font size=\"4\">This is orange 4.</font><div>fas: sdfa</div><div>fdsaf: sdfsa</div><div>fdsaf: sdafasdf</div>', 23, NULL, 1, 2, 'dsafasdf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, 'Kilogram', 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 01:52:59', '2021-02-24 01:18:37', 0, NULL, NULL, NULL, 0, 0, '22', 1, NULL, 1, 0, 11, 1),
(206, 'p9r9352KvT', 'normal', NULL, 0, 5, NULL, NULL, NULL, 'orange8', 'orange8-p9r9352kvt', '1611049517QFJcnEcM.png', '1611049518SCsAoACH.jpg', NULL, NULL, NULL, NULL, NULL, 4444, 33333, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>fadsf</td>\r\n			<td>fdsafa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>fsdaf</td>\r\n			<td>sadfa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>fadsffds&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n				<li>jhkgh</li>\r\n				<li>hjkgh</li>\r\n			</ul>\r\n			</td>\r\n			<td>asdfas dsfsdfsad fsd sdfsadf sdf ds</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>dasfasd</strong></p>\r\n\r\n<p><strong>dfadsffdsf</strong></p>\r\n\r\n<p><em><strong>sdfadsf</strong></em></p>', 34324, NULL, 1, 2, 'fdsf', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-19 03:45:17', '2021-02-24 01:18:36', 0, NULL, NULL, NULL, 0, 0, '30', 1, NULL, 1, 0, 13, 1),
(207, '3dW4240h7A', 'normal', NULL, 0, 7, 11, NULL, NULL, 'ship', 'ship-3dw4240h7a', '16114647945ZldPnm1.png', '1611464798NpYZtc7x.jpg', NULL, NULL, NULL, NULL, '#000000', 200, 0, NULL, 20, NULL, 1, 4, NULL, NULL, NULL, 0, '2-3', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-23 23:06:34', '2021-02-24 01:18:34', 0, NULL, NULL, NULL, 0, 0, '0', 1, NULL, 1, 0, 13, 1),
(208, 'uzn5254yJF', 'normal', NULL, 31, 4, 2, 2, NULL, 'ship u4', 'ship-u4-uzn5254yjf', '1611465335gczi9Rlr.png', '1611465336CjV3nnBb.jpg', NULL, NULL, NULL, NULL, NULL, 200, 432, 'fadfsdfadf', 4191, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-23 23:15:35', '2021-02-24 01:18:33', 0, NULL, NULL, NULL, 0, 0, '20', 1, 30, 1, 0, 13, 1),
(209, 'fIr4157VWr', 'normal', NULL, 31, 10, NULL, NULL, NULL, 'Mango', 'mango-fir4157vwr', '1612074308uMx0Qppu.png', '1612074312csaEg5hp.jpg', NULL, NULL, NULL, NULL, NULL, 200, 300, '<p>dsafa</p>', 136, NULL, 1, 18, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'asdf', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, 'Kilogram', 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-31 00:25:09', '2021-02-24 01:18:32', 0, NULL, NULL, NULL, 0, 0, '40', 1, 20, 1, 0, 11, 1),
(210, 'i4X55054rb', 'normal', NULL, 31, 4, 2, 1, NULL, 'mango2', 'mango2-i4x55054rb', '1612075537vmHCX183.png', '1612075537gU611ffo.jpg', NULL, NULL, NULL, NULL, NULL, 200, 333, '<p>asdfasdf</p>', 327, NULL, 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-31 00:45:37', '2021-02-24 01:18:31', 0, NULL, NULL, NULL, 0, 0, '30', 1, 30, 1, 0, 11, 1),
(211, 'KJM8223FjE', 'normal', NULL, 0, 4, 2, 1, '{\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\",\"Dark Grey\",\"Dark Blue\",\"Brown\"],\"prices\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"details_status\":1}}', 'white2', 'white2-kjm8223fje', '16121682561MnNl44J.png', '1612168258qg2wjKJ6.jpg', NULL, NULL, NULL, NULL, NULL, 200, 333, NULL, 332, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-01 02:30:56', '2021-02-24 01:18:30', 0, NULL, NULL, NULL, 0, 0, '22', 1, 40, 1, 0, 11, 1),
(212, 'Gta5045GEe', 'normal', NULL, 102, 4, 2, 1, '{\"color_family\":{\"values\":[\"Black\",\"White\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"22\"],\"prices\":[\"0\",\"0\"],\"details_status\":1}}', 't product', 't-product-gta5045gee', '1612425109GNzfbfwH.png', '1612425116UD7hYrPE.jpg', NULL, NULL, NULL, NULL, NULL, 200, 200, '<p>fsaf</p>', 199, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-04 01:51:50', '2021-02-24 01:18:20', 0, NULL, NULL, NULL, 1, 0, NULL, 1, NULL, 1, 0, 11, 1),
(213, 'ySV8270dTN', 'normal', NULL, 0, 12, NULL, NULL, NULL, 'ee', 'ee-ysv8270dtn', '16130186781ho6EokA.png', '1613018678u2D6jxtn.jpg', NULL, NULL, NULL, NULL, NULL, 100, 200, NULL, 3274, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-10 22:44:38', '2021-02-24 01:18:18', 0, NULL, NULL, NULL, 0, 0, '10', 1, 22, 1, 0, NULL, 1),
(214, '9E88731zF6', 'normal', NULL, 0, 12, NULL, NULL, NULL, 'ee2', 'ee2-9e88731zf6', '1613018755NgEyCZ9x.png', '1613018755NCwtOSLk.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-10 22:45:55', '2021-02-24 01:18:17', 0, NULL, NULL, NULL, 0, 0, '30', 1, 0, 1, 0, NULL, 1),
(215, 'vHz9021uDy', 'normal', NULL, 0, 7, NULL, NULL, NULL, 'ee4', 'ee4-vhz9021udy', '1613019048SO2nZ7TS.png', '1613019048VRJADQNU.jpg', NULL, NULL, NULL, NULL, NULL, 400, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-10 22:50:48', '2021-02-24 01:18:15', 0, NULL, NULL, NULL, 0, 0, '10', 1, 0, 1, 0, NULL, 1),
(216, 'p3M9664X8q', 'normal', NULL, 0, 17, NULL, NULL, NULL, 'cash', 'cash-p3m9664x8q', '1613969798a57fW6MW.png', '16139697998OTPWwAk.jpg', NULL, NULL, NULL, NULL, NULL, 436, 2232, NULL, 494, NULL, 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-21 22:56:38', '2021-02-24 01:18:15', 0, NULL, NULL, NULL, 0, 0, '22', 2, 213, 0, 0, 0, 1),
(217, 'pxX4177WMN', 'normal', NULL, 0, 11, NULL, NULL, NULL, 'cash2', 'cash2-pxx4177wmn', '1613984202lCsA4NRf.png', '1613984203JvGvn1Kj.jpg', NULL, NULL, NULL, NULL, NULL, 300, 2000, NULL, 494, NULL, 1, 18, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-22 02:56:42', '2021-02-24 01:18:14', 0, NULL, NULL, NULL, 0, 0, '200', 2, 20, 0, 0, 0, 1),
(218, 'xIQ499900S', 'normal', NULL, 0, 19, NULL, NULL, NULL, 'cash3', 'cash3-xiq499900s', '1613985027fk2fe2N2.png', '1613985027NN7getWu.jpg', NULL, NULL, NULL, NULL, NULL, 200, 300, NULL, 2996, NULL, 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-22 03:10:27', '2021-02-24 01:18:12', 0, NULL, NULL, NULL, 0, 0, '20', 2, 30, 0, 0, 0, 1),
(219, 'eGW1684UQT', 'normal', NULL, 112, 16, NULL, NULL, NULL, 'paid', 'paid-egw1684uqt', '1614141711KjJHfz97.png', '1614141711bZWQ6Umf.jpg', NULL, NULL, NULL, NULL, NULL, 436, 212, NULL, 2312, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-23 22:41:51', '2021-02-24 01:18:09', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 0, 1),
(220, 'jaw1713RBO', 'normal', NULL, 112, 7, 12, NULL, '{\"demo\":{\"values\":[\"demo 1\",\"demo 2\"],\"prices\":[\"0\",\"0\"],\"details_status\":1}}', 'cash', 'cash-jaw1713rbo', '1614141741BjO02uzC.png', '1614141741eNDNoXjg.jpg', NULL, NULL, NULL, NULL, NULL, 436, 232, NULL, 232, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-23 22:42:21', '2021-02-24 01:18:07', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 0, 1),
(221, 'ajA0116Ubg', 'normal', NULL, 31, 16, NULL, NULL, NULL, 'cash5', 'cash5-aja0116ubg', '1614150138EBsS917P.png', '1614150138l2tPhAXF.jpg', NULL, NULL, NULL, NULL, NULL, 436, 2423, '<p>safasdfs</p>', 32432, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 01:02:18', '2021-02-24 01:26:37', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 0, 1),
(222, 'aMD1613fjR', 'normal', NULL, 31, 6, NULL, NULL, NULL, 'cash6', 'cash6-amd1613fjr', '1614151632HnzZZonz.png', '1614151632RfdJ8aAb.jpg', NULL, NULL, NULL, NULL, NULL, 3243, 234234, NULL, 333, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 01:27:12', '2021-02-24 01:29:09', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(453, 97, '2019-10-14'),
(454, 97, '2019-10-14'),
(455, 97, '2019-10-14'),
(456, 97, '2019-10-14'),
(457, 176, '2019-10-15'),
(458, 102, '2019-10-15'),
(459, 102, '2019-10-15'),
(460, 102, '2019-10-15'),
(461, 102, '2019-10-15'),
(462, 102, '2019-10-15'),
(463, 102, '2019-10-15'),
(464, 102, '2019-10-15'),
(465, 102, '2019-10-15'),
(466, 176, '2019-10-17'),
(467, 166, '2019-10-17'),
(468, 166, '2019-10-17'),
(469, 176, '2019-10-19'),
(470, 176, '2019-10-19'),
(471, 176, '2019-10-19'),
(472, 176, '2019-10-19'),
(473, 176, '2019-10-19'),
(474, 176, '2019-10-19'),
(475, 176, '2019-10-19'),
(476, 176, '2019-10-19'),
(477, 101, '2019-10-19'),
(478, 101, '2019-10-19'),
(479, 101, '2019-10-19'),
(480, 176, '2019-11-13'),
(481, 95, '2019-11-14'),
(482, 176, '2019-11-14'),
(483, 176, '2019-11-14'),
(484, 176, '2019-11-14'),
(485, 176, '2019-11-14'),
(486, 176, '2019-11-14'),
(487, 176, '2019-11-14'),
(488, 93, '2019-11-14'),
(489, 93, '2019-11-14'),
(490, 93, '2019-11-14'),
(491, 93, '2019-11-14'),
(492, 96, '2019-11-14'),
(493, 93, '2019-11-14'),
(494, 93, '2019-11-14'),
(495, 93, '2019-11-14'),
(496, 95, '2021-01-07'),
(497, 101, '2021-01-07'),
(498, 106, '2021-01-09'),
(499, 97, '2021-01-09'),
(500, 179, '2021-01-09'),
(501, 179, '2021-01-09'),
(502, 109, '2021-01-09'),
(503, 109, '2021-01-09'),
(504, 188, '2021-01-09'),
(505, 179, '2021-01-09'),
(506, 179, '2021-01-09'),
(507, 102, '2021-01-09'),
(508, 179, '2021-01-09'),
(509, 179, '2021-01-09'),
(510, 112, '2021-01-09'),
(511, 124, '2021-01-09'),
(512, 112, '2021-01-09'),
(513, 112, '2021-01-09'),
(514, 198, '2021-01-17'),
(515, 176, '2021-01-17'),
(516, 198, '2021-01-17'),
(517, 198, '2021-01-17'),
(518, 176, '2021-01-17'),
(519, 198, '2021-01-17'),
(520, 176, '2021-01-17'),
(521, 176, '2021-01-17'),
(522, 198, '2021-01-17'),
(523, 199, '2021-01-17'),
(524, 198, '2021-01-17'),
(525, 198, '2021-01-17'),
(526, 186, '2021-01-17'),
(527, 176, '2021-01-17'),
(528, 176, '2021-01-17'),
(529, 176, '2021-01-17'),
(530, 101, '2021-01-17'),
(531, 101, '2021-01-17'),
(532, 200, '2021-01-17'),
(533, 199, '2021-01-17'),
(534, 200, '2021-01-17'),
(535, 200, '2021-01-17'),
(536, 187, '2021-01-17'),
(537, 187, '2021-01-17'),
(538, 124, '2021-01-17'),
(539, 124, '2021-01-17'),
(540, 124, '2021-01-17'),
(541, 124, '2021-01-17'),
(542, 124, '2021-01-17'),
(543, 124, '2021-01-17'),
(544, 124, '2021-01-17'),
(545, 99, '2021-01-17'),
(546, 97, '2021-01-17'),
(547, 198, '2021-01-18'),
(548, 102, '2021-01-18'),
(549, 101, '2021-01-18'),
(550, 101, '2021-01-18'),
(551, 101, '2021-01-18'),
(552, 101, '2021-01-18'),
(553, 198, '2021-01-18'),
(554, 97, '2021-01-18'),
(555, 101, '2021-01-18'),
(556, 101, '2021-01-18'),
(557, 198, '2021-01-18'),
(558, 197, '2021-01-18'),
(559, 198, '2021-01-18'),
(560, 198, '2021-01-18'),
(561, 198, '2021-01-18'),
(562, 198, '2021-01-18'),
(563, 198, '2021-01-18'),
(564, 199, '2021-01-18'),
(565, 198, '2021-01-18'),
(566, 198, '2021-01-18'),
(567, 198, '2021-01-18'),
(568, 195, '2021-01-18'),
(569, 199, '2021-01-18'),
(570, 199, '2021-01-18'),
(571, 198, '2021-01-18'),
(572, 197, '2021-01-18'),
(573, 198, '2021-01-18'),
(574, 198, '2021-01-18'),
(575, 197, '2021-01-18'),
(576, 176, '2021-01-19'),
(577, 102, '2021-01-19'),
(578, 102, '2021-01-19'),
(579, 102, '2021-01-19'),
(580, 102, '2021-01-19'),
(581, 102, '2021-01-19'),
(582, 100, '2021-01-19'),
(583, 176, '2021-01-19'),
(584, 104, '2021-01-19'),
(585, 201, '2021-01-19'),
(586, 201, '2021-01-19'),
(587, 201, '2021-01-19'),
(588, 202, '2021-01-19'),
(589, 203, '2021-01-19'),
(590, 204, '2021-01-19'),
(591, 205, '2021-01-19'),
(592, 206, '2021-01-19'),
(593, 201, '2021-01-19'),
(594, 201, '2021-01-19'),
(595, 176, '2021-01-19'),
(596, 101, '2021-01-21'),
(597, 101, '2021-01-21'),
(598, 101, '2021-01-21'),
(599, 176, '2021-01-21'),
(600, 176, '2021-01-21'),
(601, 201, '2021-01-21'),
(602, 207, '2021-01-24'),
(603, 207, '2021-01-24'),
(604, 207, '2021-01-24'),
(605, 207, '2021-01-24'),
(606, 201, '2021-01-25'),
(607, 201, '2021-01-25'),
(608, 201, '2021-01-27'),
(609, 201, '2021-01-27'),
(610, 201, '2021-01-27'),
(611, 101, '2021-01-27'),
(612, 201, '2021-01-27'),
(613, 201, '2021-01-27'),
(614, 201, '2021-01-27'),
(615, 201, '2021-01-27'),
(616, 201, '2021-01-27'),
(617, 201, '2021-01-27'),
(618, 101, '2021-01-27'),
(619, 201, '2021-01-28'),
(620, 102, '2021-01-28'),
(621, 97, '2021-01-28'),
(622, 101, '2021-01-28'),
(623, 101, '2021-01-28'),
(624, 101, '2021-01-28'),
(625, 102, '2021-01-28'),
(626, 135, '2021-01-28'),
(627, 135, '2021-01-28'),
(628, 166, '2021-01-28'),
(629, 166, '2021-01-28'),
(630, 187, '2021-01-28'),
(631, 201, '2021-01-28'),
(632, 129, '2021-01-28'),
(633, 129, '2021-01-28'),
(634, 176, '2021-01-30'),
(635, 95, '2021-01-30'),
(636, 106, '2021-01-30'),
(637, 201, '2021-01-31'),
(638, 201, '2021-01-31'),
(639, 209, '2021-01-31'),
(640, 210, '2021-01-31'),
(641, 210, '2021-01-31'),
(642, 130, '2021-01-31'),
(643, 102, '2021-01-31'),
(644, 201, '2021-01-31'),
(645, 176, '2021-01-31'),
(646, 209, '2021-02-01'),
(647, 209, '2021-02-01'),
(648, 209, '2021-02-01'),
(649, 210, '2021-02-01'),
(650, 210, '2021-02-01'),
(651, 209, '2021-02-01'),
(652, 209, '2021-02-01'),
(653, 209, '2021-02-01'),
(654, 209, '2021-02-01'),
(655, 209, '2021-02-01'),
(656, 209, '2021-02-01'),
(657, 210, '2021-02-01'),
(658, 209, '2021-02-01'),
(659, 210, '2021-02-01'),
(660, 209, '2021-02-01'),
(661, 210, '2021-02-01'),
(662, 209, '2021-02-01'),
(663, 210, '2021-02-01'),
(664, 209, '2021-02-01'),
(665, 209, '2021-02-01'),
(666, 210, '2021-02-01'),
(667, 180, '2021-02-01'),
(668, 209, '2021-02-01'),
(669, 180, '2021-02-01'),
(670, 211, '2021-02-01'),
(671, 102, '2021-02-01'),
(672, 211, '2021-02-01'),
(673, 102, '2021-02-01'),
(674, 176, '2021-02-02'),
(675, 176, '2021-02-02'),
(676, 202, '2021-02-03'),
(677, 202, '2021-02-03'),
(678, 102, '2021-02-03'),
(679, 201, '2021-02-04'),
(680, 201, '2021-02-04'),
(681, 202, '2021-02-04'),
(682, 203, '2021-02-04'),
(683, 206, '2021-02-04'),
(684, 204, '2021-02-04'),
(685, 205, '2021-02-04'),
(686, 209, '2021-02-04'),
(687, 102, '2021-02-04'),
(688, 212, '2021-02-04'),
(689, 212, '2021-02-04'),
(690, 176, '2021-02-04'),
(691, 176, '2021-02-04'),
(692, 176, '2021-02-04'),
(693, 176, '2021-02-04'),
(694, 176, '2021-02-04'),
(695, 176, '2021-02-04'),
(696, 201, '2021-02-04'),
(697, 176, '2021-02-04'),
(698, 176, '2021-02-04'),
(699, 201, '2021-02-06'),
(700, 201, '2021-02-06'),
(701, 201, '2021-02-06'),
(702, 128, '2021-02-06'),
(703, 128, '2021-02-06'),
(704, 128, '2021-02-06'),
(705, 106, '2021-02-07'),
(706, 201, '2021-02-09'),
(707, 100, '2021-02-09'),
(708, 176, '2021-02-10'),
(709, 101, '2021-02-10'),
(710, 213, '2021-02-11'),
(711, 214, '2021-02-11'),
(712, 215, '2021-02-11'),
(713, 102, '2021-02-11'),
(714, 95, '2021-02-11'),
(715, 214, '2021-02-11'),
(716, 101, '2021-02-15'),
(717, 95, '2021-02-15'),
(718, 95, '2021-02-15'),
(719, 95, '2021-02-15'),
(720, 95, '2021-02-15'),
(721, 95, '2021-02-15'),
(722, 95, '2021-02-15'),
(723, 95, '2021-02-15'),
(724, 95, '2021-02-15'),
(725, 176, '2021-02-15'),
(726, 101, '2021-02-15'),
(727, 100, '2021-02-22'),
(728, 216, '2021-02-22'),
(729, 216, '2021-02-22'),
(730, 216, '2021-02-22'),
(731, 216, '2021-02-22'),
(732, 216, '2021-02-22'),
(733, 216, '2021-02-22'),
(734, 216, '2021-02-22'),
(735, 216, '2021-02-22'),
(736, 102, '2021-02-22'),
(737, 217, '2021-02-22'),
(738, 216, '2021-02-22'),
(739, 217, '2021-02-22'),
(740, 218, '2021-02-22'),
(741, 218, '2021-02-22'),
(742, 217, '2021-02-22'),
(743, 216, '2021-02-22'),
(744, 216, '2021-02-22'),
(745, 216, '2021-02-22'),
(746, 102, '2021-02-23'),
(747, 217, '2021-02-23'),
(748, 216, '2021-02-23'),
(749, 217, '2021-02-23'),
(750, 216, '2021-02-23'),
(751, 217, '2021-02-23'),
(752, 218, '2021-02-23'),
(753, 217, '2021-02-23'),
(754, 218, '2021-02-23'),
(755, 217, '2021-02-23'),
(756, 217, '2021-02-23'),
(757, 217, '2021-02-23'),
(758, 217, '2021-02-23'),
(759, 217, '2021-02-23'),
(760, 218, '2021-02-23'),
(761, 218, '2021-02-23'),
(762, 217, '2021-02-23'),
(763, 216, '2021-02-23'),
(764, 216, '2021-02-23'),
(765, 217, '2021-02-23'),
(766, 218, '2021-02-23'),
(767, 217, '2021-02-23'),
(768, 217, '2021-02-23'),
(769, 216, '2021-02-23'),
(770, 216, '2021-02-23'),
(771, 216, '2021-02-23'),
(772, 216, '2021-02-23'),
(773, 212, '2021-02-24'),
(774, 216, '2021-02-24'),
(775, 220, '2021-02-24'),
(776, 217, '2021-02-24'),
(777, 217, '2021-02-24'),
(778, 209, '2021-02-24'),
(779, 176, '2021-02-24'),
(780, 176, '2021-02-24'),
(781, 176, '2021-02-24'),
(782, 176, '2021-02-24'),
(783, 176, '2021-02-24'),
(784, 176, '2021-02-24'),
(785, 176, '2021-02-24'),
(786, 176, '2021-02-24'),
(787, 176, '2021-02-24'),
(788, 176, '2021-02-24'),
(789, 176, '2021-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 22, 2, 'gf', '2019-10-14 01:57:32', '2019-10-14 01:57:32'),
(2, 22, 3, 'ghjh', '2019-11-13 21:59:30', '2019-11-13 21:59:30'),
(3, 22, 3, 'ghjhgj', '2019-11-13 21:59:32', '2019-11-13 21:59:32'),
(4, 22, 3, 'ghjghjg', '2019-11-13 21:59:34', '2019-11-13 21:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(20, 'Manager', 'orders , products , categories , bulk_product_upload , product_discussion , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Chabikathi, Chabi kathi');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png'),
(10, 102, 'T sell', 't service', '1612425025Visa_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(6, 0, 'general', '2-3', 80);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInRight', '1564224870012.jpg', 'slide-three', 'https://www.google.com/'),
(9, 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInDown', '1564224753007.jpg', 'slide-one', 'https://www.google.com/'),
(10, 'World Fashion', '24', '#c32d2d', 'slideInUp', 'Get Up to 40% Off', '60', '#bc2727', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#c51d1d', 'slideInLeft', '156422490902.jpg', 'slide-one', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '379093975281-ac58bmemtt519dqmnrgg0oprqfnpp9nd.apps.googleusercontent.com', '0nOGAHNdFtpoVU355-GsDwsN', 'https://localhost/chabikathi/assets/auth/facebook/callback', '379093975281-mh1tpuvsk5auscnie8hjt9hl3ru0kgqe.apps.googleusercontent.com', 'K70D6Pj2Ub8Pc455-aji_odm', 'https://localhost/chabikathi/assets/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 1081313, '114712596217581739813', 'google', '2021-02-10 01:07:31', '2021-02-10 01:07:31'),
(2, 1096546156, '112080192858894166828', 'google', '2021-02-10 01:14:52', '2021-02-10 01:14:52'),
(3, 110, '112869346900753028106', 'google', '2021-02-10 04:22:55', '2021-02-10 04:22:55'),
(4, 111, '24324324', 'google', '2021-02-11 04:27:24', '2021-02-11 04:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `sslorders`
--

CREATE TABLE `sslorders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sslorders`
--

INSERT INTO `sslorders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`, `user_id`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '600d3dfd59580', 'BDT', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, '600d5690ee853', 'BDT', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, '600d56f5e11ab', 'BDT', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, '600d577e97c04', 'BDT', NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, '600d57a0ed580', 'BDT', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, '600d582963e23', 'BDT', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, '600d5f301a971', 'BDT', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, '600e9e7097f09', 'BDT', NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, '600ea4b32435e', 'BDT', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, '600eadc15a0d3', 'BDT', NULL),
(11, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '600eae559c251', 'BDT', NULL),
(12, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '600eae8c93bf0', 'BDT', NULL),
(13, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '600eaf5923c77', 'BDT', NULL),
(14, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '600eb03c6cd00', 'BDT', NULL),
(15, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '600fb33394086', 'BDT', NULL),
(16, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 100, 'Customer Address', 'Pending', '600fb450046a6', 'BDT', NULL),
(17, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 100, 'Customer Address', 'Pending', '600fb489bb3e3', 'BDT', NULL),
(18, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 100, 'Customer Address', 'Processing', '600fb708f0387', 'BDT', NULL),
(19, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60111f53348df', 'BDT', 31),
(20, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60111f6dde922', 'BDT', 31),
(21, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60111f81d28c9', 'BDT', 31),
(22, NULL, NULL, NULL, NULL, NULL, NULL, '60111fb3823f1', 'BDT', NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, '60111fdbf3756', 'BDT', NULL),
(24, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60112090b27bc', 'BDT', 31),
(25, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '601120f057d57', 'BDT', 31),
(26, NULL, NULL, NULL, NULL, NULL, NULL, '6011215bac9c2', 'BDT', NULL),
(27, 'user4', 'user4', '132132', 774.4, 'asdf', 'Pending', '60112b70ca0a4', 'BDT', 31),
(28, NULL, NULL, NULL, NULL, NULL, NULL, '60112bc4ba729', 'BDT', 31),
(29, NULL, NULL, NULL, NULL, NULL, NULL, '60112bebe4161', 'BDT', 31),
(30, NULL, NULL, NULL, NULL, NULL, NULL, '60112c165d532', 'BDT', 31),
(31, NULL, NULL, NULL, NULL, NULL, NULL, '60112c6807f96', 'BDT', 31),
(32, NULL, NULL, NULL, NULL, NULL, NULL, '60112c82a013c', 'BDT', 31),
(33, NULL, NULL, NULL, NULL, NULL, NULL, '60112cba18707', 'BDT', 31),
(34, NULL, NULL, NULL, NULL, NULL, NULL, '60112d0b2c89b', 'BDT', 31),
(35, NULL, NULL, NULL, NULL, NULL, NULL, '60112d70324f3', '1468.80', 31),
(36, NULL, NULL, NULL, NULL, NULL, NULL, '60112d9675f31', '1468.80', 31),
(37, NULL, NULL, NULL, NULL, NULL, NULL, '60112da032bec', '1468.80', 31),
(38, NULL, NULL, NULL, NULL, NULL, NULL, '60112da567e2f', '1468.80', 31),
(39, NULL, NULL, NULL, NULL, NULL, NULL, '60112daaabcac', '1468.80', 31),
(40, NULL, NULL, NULL, NULL, NULL, NULL, '60112daf54348', '1468.80', 31),
(41, NULL, NULL, NULL, NULL, NULL, NULL, '60112db3a4ced', '1468.80', 31),
(42, NULL, NULL, NULL, NULL, NULL, NULL, '60112db86fc3f', '1468.80', 31),
(43, NULL, NULL, NULL, NULL, NULL, NULL, '60112dbbd3a06', '1468.80', 31),
(44, NULL, NULL, NULL, NULL, NULL, NULL, '60112dc516c75', '1468.80', 31),
(45, NULL, NULL, NULL, NULL, NULL, NULL, '60112dc98f1af', '1468.80', 31),
(46, NULL, NULL, NULL, NULL, NULL, NULL, '60112dcdd33c8', '1468.80', 31),
(47, NULL, NULL, NULL, NULL, NULL, NULL, '60112dd1e7dbc', '1468.80', 31),
(48, NULL, NULL, NULL, NULL, NULL, NULL, '60112dd5e87f1', '1468.80', 31),
(49, NULL, NULL, NULL, NULL, NULL, NULL, '60112ddaeab9d', '1468.80', 31),
(50, NULL, NULL, NULL, NULL, NULL, NULL, '60112dde8481a', '1468.80', 31),
(51, NULL, NULL, NULL, NULL, NULL, NULL, '60112de39fb9e', '1468.80', 31),
(52, NULL, NULL, NULL, NULL, NULL, NULL, '60112dea5ce23', '1468.80', 31),
(53, NULL, NULL, NULL, NULL, NULL, NULL, '60112def07db0', '1468.80', 31),
(54, NULL, NULL, NULL, NULL, NULL, NULL, '60112df51d56c', '1468.80', 31),
(55, NULL, NULL, NULL, NULL, NULL, NULL, '60112dfa5d420', '1468.80', 31),
(56, NULL, NULL, NULL, NULL, NULL, NULL, '60112e0082aa9', '1468.80', 31),
(57, NULL, NULL, NULL, NULL, NULL, NULL, '60112e0493da6', '1468.80', 31),
(58, NULL, NULL, NULL, NULL, NULL, NULL, '60112e08c9dd5', 'BDT', 31),
(59, NULL, NULL, NULL, NULL, NULL, NULL, '60112e29a44db', 'BDT', 31),
(60, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60112e4a0d376', 'BDT', 31),
(61, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60112e7187ab6', 'BDT', 31),
(62, 'user4', 'user4', '132132', 1468.8, 'asdf', 'Pending', '60112e97abad1', 'BDT', 31),
(63, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Canceled', '60112ec396fd3', 'BDT', 31),
(64, 'user4', 'user4@gmail.com', '132132', 515, 'asdf', 'Pending', '6011315cd7013', 'BDT', 31),
(65, 'user4', 'user4@gmail.com', '132132', 515, 'asdf', 'Pending', '6011316677a42', 'BDT', 31),
(66, NULL, NULL, NULL, NULL, NULL, NULL, '6011320ed0141', 'BDT', 31),
(67, NULL, NULL, NULL, NULL, NULL, NULL, '60113223a8f82', 'BDT', 31),
(68, NULL, NULL, NULL, NULL, NULL, NULL, '6011322a92337', 'BDT', 31),
(69, NULL, NULL, NULL, NULL, NULL, NULL, '6011323ddf592', 'BDT', 31),
(70, NULL, NULL, NULL, NULL, NULL, NULL, '60113250be0bb', 'BDT', 31),
(71, NULL, NULL, NULL, NULL, NULL, NULL, '601132782e659', 'BDT', 31),
(72, NULL, NULL, NULL, NULL, NULL, NULL, '601132abeb5a4', 'BDT', 31),
(73, NULL, NULL, NULL, NULL, NULL, NULL, '601132bcd5d09', 'BDT', 31),
(74, NULL, NULL, NULL, NULL, NULL, NULL, '601132cf085a6', 'BDT', 31),
(75, NULL, NULL, NULL, NULL, NULL, NULL, '601132f7c7b80', 'BDT', 31),
(76, NULL, NULL, NULL, NULL, NULL, NULL, '6011331557173', 'BDT', 31),
(77, NULL, NULL, NULL, NULL, NULL, NULL, '601133250f6bd', 'BDT', 31),
(78, NULL, NULL, NULL, NULL, NULL, NULL, '6011332e6d641', 'BDT', 31),
(79, NULL, NULL, NULL, NULL, NULL, NULL, '60113355df513', 'BDT', 31),
(80, NULL, NULL, NULL, NULL, NULL, NULL, '60113362d13ce', 'BDT', 31),
(81, NULL, NULL, NULL, NULL, NULL, NULL, '6011337d0fcac', 'BDT', 31),
(82, 'user4', 'user4@gmail.com', '132132', 515, 'asdf', 'Processing', '601133f65eea1', 'BDT', 31),
(83, NULL, NULL, NULL, NULL, NULL, NULL, '60113474e46ce', 'BDT', 31),
(84, NULL, NULL, NULL, NULL, NULL, NULL, '6011353330894', 'BDT', 31),
(85, NULL, NULL, NULL, NULL, NULL, NULL, '601135608eeb1', 'BDT', 31),
(86, NULL, NULL, NULL, NULL, NULL, NULL, '601135ad70e49', 'BDT', 31),
(87, NULL, NULL, NULL, NULL, NULL, NULL, '601135d802d49', 'BDT', 31),
(88, NULL, NULL, NULL, NULL, NULL, NULL, '6011367441d75', 'BDT', 31),
(89, NULL, NULL, NULL, NULL, NULL, NULL, '601136b4b5fac', 'BDT', 31),
(90, NULL, NULL, NULL, NULL, NULL, NULL, '601138ac4a544', 'BDT', 31),
(91, NULL, NULL, NULL, NULL, NULL, NULL, '601138e8922d5', 'BDT', 31),
(92, NULL, NULL, NULL, NULL, NULL, NULL, '60113b0088055', 'BDT', 31),
(93, NULL, NULL, NULL, NULL, NULL, NULL, '60113b323d11b', 'BDT', 31),
(94, NULL, NULL, NULL, NULL, NULL, NULL, '60113b6f45c10', 'BDT', 31),
(95, NULL, NULL, NULL, NULL, NULL, NULL, '60113bf31d006', 'BDT', 31),
(96, NULL, NULL, NULL, NULL, NULL, NULL, '601140e24b81d', 'BDT', 31),
(97, NULL, NULL, NULL, NULL, NULL, NULL, '601141b1d07d6', 'BDT', 31),
(98, 'user4', 'user4@gmail.com', '132132', 1540, 'asdf', 'Failed', '60114230c3547', 'BDT', 31),
(99, 'user4', 'user4@gmail.com', '132132', 1540, 'asdf', 'Failed', '601142629d5a5', 'BDT', 31),
(100, 'user4', 'user4@gmail.com', '132132', 810, 'asdf', 'Failed', '601147e6792da', 'BDT', 31),
(101, 'user4', 'user4@gmail.com', '132132', 1540, 'asdf', 'Failed', '601148a7a8636', 'BDT', 31),
(102, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Failed', '60114a382ccc7', 'BDT', 31),
(103, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Failed', '60114bc4ec279', 'BDT', 31),
(104, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114c539993b', 'BDT', 31),
(105, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Processing', '60114c8c2f6bb', 'BDT', 31),
(106, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114db8bff0a', 'BDT', 31),
(107, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114deca2e4c', 'BDT', 31),
(108, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114e401e3fa', 'BDT', 31),
(109, 'user4', 'user4@gmail.com', '132132', 275, 'asdf', 'Pending', '60114e7e4e295', 'BDT', 31),
(110, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114f07b9183', 'BDT', 31),
(111, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114f41353ac', 'BDT', 31),
(112, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '60114f71a1d03', 'BDT', 31),
(113, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '6011500dae093', 'BDT', 31),
(114, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '601150a396c36', 'BDT', 31),
(115, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115105afd8b', 'BDT', 31),
(116, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '601152b309ba7', 'BDT', 31),
(117, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '601154ae771ec', 'BDT', 31),
(118, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115501f34a2', 'BDT', 31),
(119, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '6011570969b82', 'BDT', 31),
(120, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '601157a567034', 'BDT', 31),
(121, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115830a3de6', 'BDT', 31),
(122, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115899281f5', 'BDT', 31),
(123, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115947d3a3c', 'BDT', 31),
(124, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115aa37500e', 'BDT', 31),
(125, 'user4', 'user4@gmail.com', '132132', 478.8, 'asdf', 'Pending', '60115b38074a3', 'BDT', 31),
(126, 'user4', 'user4@gmail.com', '132132', 470, 'asdf', 'Pending', '6011645956eba', 'BDT', 31),
(127, 'user4', 'user4@gmail.com', '546546546546', 348.8, 'sad', 'Pending', '601245427ad66', 'BDT', 31),
(128, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60124573092f1', 'BDT', 31),
(129, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012571eceb7a', 'BDT', 31),
(130, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601257dedc728', 'BDT', 31),
(131, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601258359f8f9', 'BDT', 31),
(132, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012587ce78d5', 'BDT', 31),
(133, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601258c2966ac', 'BDT', 31),
(134, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601258d237ee0', 'BDT', 31),
(135, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601258e1f2ceb', 'BDT', 31),
(136, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012590155dd2', 'BDT', 31),
(137, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012593f59d8a', 'BDT', 31),
(138, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012596f204fd', 'BDT', 31),
(139, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '6012598f5a48b', 'BDT', 31),
(140, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601259b63e9d5', 'BDT', 31),
(141, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601259e832a78', 'BDT', 31),
(142, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '601259f7684be', 'BDT', 31),
(143, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60125a0fa7577', 'BDT', 31),
(144, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60125a17bee1e', 'BDT', 31),
(145, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60125a22eb3ec', 'BDT', 31),
(146, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60125abe74b04', 'BDT', 31),
(147, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Pending', '60125acaacc40', 'BDT', 31),
(148, 'user4', 'user4@gmail.com', '132132', 348.8, 'asdf', 'Processing', '60125be98c11a', 'BDT', 31),
(149, 'user4', 'user4@gmail.com', '132132', 499.4, 'asdf', 'Processing', '60125d706da17', 'BDT', 31),
(150, 'user4', 'user4@gmail.com', '132132', 579.4, 'asdf', 'Processing', '60125df1ba13d', 'BDT', 31),
(151, 'user4', 'user4@gmail.com', '132132', 329.7, 'asdf', 'Processing', '60125e88cec51', 'BDT', 31),
(152, 'user4', 'user4@gmail.com', '132132', 235, 'asdf', 'Processing', '60125fea51f62', 'BDT', 31),
(153, 'user4', 'user4@gmail.com', '132132', 295, 'asdf', 'Processing', '60128649a7e10', 'BDT', 31),
(154, 'user4', 'user4@gmail.com', '132132', 708, 'asdf', 'Processing', '6012a9575287f', 'BDT', 31),
(155, 'user4', 'user4@gmail.com', '01515691480', 218.8, 'sdfa', 'Pending', '6012a9e1c649a', 'BDT', 31),
(156, 'user4', 'user4@gmail.com', '01515691480', 340, 'sdfa', 'Processing', '60163cf248dca', 'BDT', 31),
(157, 'user4', 'user4@gmail.com', '01515691480', 275, 'sdfa', 'Processing', '60163e9e74ad1', 'BDT', 31),
(158, 'user4', 'user4@gmail.com', '01515691480', 380, 'sdfa', 'Processing', '60163f5362d4f', 'BDT', 31),
(159, 'user4', 'user4@gmail.com', '01515691480', 470, 'sdfa', 'Processing', '6016420ece489', 'BDT', 31),
(160, 'user4', 'user4@gmail.com', '01515691480', 140, 'sdfa', 'Processing', '6016435c788a6', 'BDT', 31),
(161, 'user4', 'user4@gmail.com', '01515691480', 340, 'sdfa', 'Processing', '60165d38c4ece', 'BDT', 31),
(162, 'user4', 'user4@gmail.com', '01515691480', 295, 'sdfa', 'Processing', '60165deca8f1a', 'BDT', 31),
(163, 'user4', 'user4@gmail.com', '01515691480', 555, 'sdfa', 'Processing', '60165f63c2f7c', 'BDT', 31),
(164, 'user4', 'user4@gmail.com', '11223344', 429, 'sdfa', 'Processing', '601662b18c312', 'BDT', 31),
(165, 'user4', 'user4@gmail.com', '11223344', 470, 'sdfa', 'Processing', '601662e8e6819', 'BDT', 31),
(166, 'user4', 'user4@gmail.com', '11223344', 210, 'sdfa', 'Pending', '6016670c26b70', 'BDT', 31),
(167, 'user4', 'user4@gmail.com', '11223344', 1480, 'sdfa', 'Processing', '60166ad073183', 'BDT', 31),
(168, 'user4', 'user4@gmail.com', '11223344', 210, 'sdfa', 'Processing', '60166d9d784de', 'BDT', 31),
(169, 'user4', 'user4@gmail.com', '11223344', 295, 'asdf', 'Processing', '60179dda89714', 'BDT', 31),
(170, 'user4', 'user4@gmail.com', '11223344', 1585, 'asdf', 'Processing', '60179f1e11672', 'BDT', 31),
(171, 'user4', 'user4@gmail.com', '11223344', 2015, 'asdf', 'Processing', '6017a13eb3c12', 'BDT', 31),
(172, 'user4', 'user4@gmail.com', '11223344', 1155, 'asdf', 'Processing', '6017a69604f03', 'BDT', 31),
(173, 'user4', 'user4@gmail.com', '11223344', 348.8, 'asdf', 'Processing', '6017be28a7fdb', 'BDT', 31),
(174, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'weqwe', 'BDT', 31),
(175, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'weqwe3', 'BDT', 31),
(176, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'weq3we3', 'BDT', 31),
(177, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'weq33we3', 'BDT', 31),
(178, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'weq33432we3', 'BDT', 31),
(179, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we34q33432we3', 'BDT', 31),
(180, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we343q33432we3', 'BDT', 31),
(181, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we343234q33432we3', 'BDT', 31),
(182, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we343234q3323432we3', 'BDT', 31),
(183, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we343234q333223432we3', 'BDT', 31),
(184, 'user4', NULL, '11223344', 3223, NULL, 'Pending', 'we34323434q333223432we3', 'BDT', 31),
(185, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34543543', 'BDT', 31),
(186, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34532443543', 'BDT', 31),
(187, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '3443532443543', 'BDT', 31),
(188, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344323532443543', 'BDT', 31),
(189, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344325433532443543', 'BDT', 31),
(190, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344325433453532443543', 'BDT', 31),
(191, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344325433443553532443543', 'BDT', 31),
(192, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34432544533443553532443543', 'BDT', 31),
(193, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34432544435533443553532443543', 'BDT', 31),
(194, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34435432544435533443553532443543', 'BDT', 31),
(195, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '3443543254443553354443553532443543', 'BDT', 31),
(196, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344354353532443543', 'BDT', 31),
(197, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '344443543', 'BDT', 31),
(198, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '34a4443543', 'BDT', 31),
(199, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '43534', 'BDT', 31),
(200, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '435sadf34', 'BDT', 31),
(201, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '435sad423f34', 'BDT', 31),
(202, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '434325sa54d423f34', 'BDT', 31),
(203, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '434325435sa54d423f34', 'BDT', 31),
(204, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '434325435sa54354d423f34', 'BDT', 31),
(205, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '434325435sa54354d424323f34', 'BDT', 31),
(206, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4343254354d424323f34', 'BDT', 31),
(207, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '424323f34', 'BDT', 31),
(208, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fdsa24323f34', 'BDT', 31),
(209, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds345a24323f34', 'BDT', 31),
(210, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds432345a24323f34', 'BDT', 31),
(211, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds23f34', 'BDT', 31),
(212, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds324523f34', 'BDT', 31),
(213, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds3245ewr23f34', 'BDT', 31),
(214, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4fds324sdfgds5ewr23f34', 'BDT', 31),
(215, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5ewr23f34', 'BDT', 31),
(216, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5ewr', 'BDT', 31),
(217, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5fdsgdsewr', 'BDT', 31),
(218, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5fdfdssgdsewr', 'BDT', 31),
(219, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5fdfgsdfdssgdsewr', 'BDT', 31),
(220, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5fdfasdfgsdfdssgdsewr', 'BDT', 31),
(221, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ds5r', 'BDT', 31),
(222, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsgsdf5r', 'BDT', 31),
(223, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsgfdsgdfgsdf5r', 'BDT', 31),
(224, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsfdsagfdsgdfgsdf5r', 'BDT', 31),
(225, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsfdsagfdsgfdsadfgsdf5r', 'BDT', 31),
(226, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsfgsdf5r', 'BDT', 31),
(227, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdfsfgsdsfgsd', 'BDT', 31),
(228, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4dsdffdsasfgsdsfgsd', 'BDT', 31),
(229, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsfsdsfgsd', 'BDT', 31),
(230, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdsfgsd', 'BDT', 31),
(231, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdfsdafsfgsd', 'BDT', 31),
(232, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdfsdafsfgdsfsd', 'BDT', 31),
(233, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdfsdafsfgfasddsfsd', 'BDT', 31),
(234, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdfsdafsdfsasfgfasddsfsd', 'BDT', 31),
(235, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsfsdfsdafasdffsdfsasfgfasddsfsd', 'BDT', 31),
(236, 'user4', NULL, '11223344', 3223, NULL, 'Pending', '4ddsdsffdsfsdfsdafasdffsdfsasfgfasddsfsd', 'BDT', 31),
(237, 'admin', 'manager@example.com66', '0151569148066', 340, 'sdfa', 'Pending', '601a4bf468f77', 'BDT', 86),
(238, 'shaun', 'shaun@ed.com', '01775391091', 5190, 'sfcs', 'Pending', '601a8c5319490', 'BDT', 104),
(239, 'shaun', 'shaun@ed.com', '01775391091', 1880, 'sfcs', 'Processing', '601a8d6e36a90', 'BDT', 104),
(240, 'admin', '3@3.com', '3', 210, '3', 'Pending', '601b8279e0aa2', 'BDT', 102),
(241, 'admin', '3@3.com', '3', 210, 'sdfa', 'Pending', '601b842f4c7aa', 'BDT', 102),
(242, 'admin', '3@3.com', '3', 210, 'sdfa', 'Pending', '601b84bd16df5', 'BDT', 102),
(243, 'admin', '3@3.com', '3', 210, 'sdfa', 'Pending', '601b8503e346b', 'BDT', 102),
(244, 'admin', '3@3.com', '3', 210, 'sdfa', 'Pending', '601b87aa21cfc', 'BDT', 102),
(245, 'admin', '3@3.com', '3', 210, 'sdfa', 'Processing', '601b88a01bd9a', 'BDT', 102),
(246, 'admin', '3@3.com', '3', 210, 'sdfa', 'Processing', '601b90373960b', 'BDT', 102),
(247, 'admin', '3@3.com', '3', 210, 'sdfa', 'Processing', '601b917eea258', 'BDT', 102),
(248, 'admin', '3@3.com', '3', 340, 'sdfa', 'Processing', '601b920677e48', 'BDT', 102),
(249, 'admin', '3@3.com', '3', 340, 'sdfa', 'Processing', '601b928629326', 'BDT', 102),
(250, 'admin', '3@3.com', '3', 210, 'sdfa', 'Processing', '601b92f296ce3', 'BDT', 102),
(251, 'admin', '3@3.com', '3', 348.8, 'sdfa', 'Processing', '601b959dc5e8c', 'BDT', 102),
(252, 'admin', '3@3.com', '3', 210, 'sdfa', 'Processing', '601b9ebeaeed0', 'BDT', 102),
(253, 'shaun', 'shaunn@gmail.com', '01775391092', 348.8, 'sdfa', 'Pending', '601e479620801', 'BDT', 105),
(254, 'admin', 'eitwebdeveloper@gmail.com', '3', 480, 'Road#9,Sector#12,Uttara', 'Pending', '602225049ed59', 'BDT', 102),
(255, 'admin', 'eitwebdeveloper@gmail.com', '3', 460, '3', 'Processing', '60222b9d97bc2', 'BDT', 102),
(256, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '60260f09c8780', 'BDT', 102),
(257, 'admin', 'eitwebdeveloper@gmail.com', '3', 776, 'gsdghfdh, vgubuibuibhui', 'Pending', '60334987ab710', 'BDT', 102),
(258, 'admin', 'eitwebdeveloper@gmail.com', '3', 4510, 'gsdghfdh', 'Pending', '60339513c1e69', 'BDT', 102),
(259, 'admin', 'eitwebdeveloper@gmail.com', '3', 3780, 'gsdghfdh', 'Pending', '6033968a72ca9', 'BDT', 102),
(260, 'admin', 'eitwebdeveloper@gmail.com', '3', 3780, 'utfu', 'Processing', '603397202f3e8', 'BDT', 102),
(261, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '603398a8b636b', 'BDT', 102),
(262, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '603398dc158cd', 'BDT', 102),
(263, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '6033991a1b7f3', 'BDT', 102),
(264, 'admin', 'eitwebdeveloper@gmail.com', '3', 300, 'gsdghfdh', 'Pending', '603486deab32d', 'BDT', 102),
(265, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'utfu', 'Pending', '60348732d0fb0', 'BDT', 102),
(266, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '603488356da2a', 'BDT', 102),
(267, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'utfu', 'Pending', '60348ca0e8b33', 'BDT', 102),
(268, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '60348ebea469a', 'BDT', 102),
(269, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh, vgubuibuibhui', 'Pending', '60348f8b42e18', 'BDT', 102),
(270, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '603492fd2821b', 'BDT', 102),
(271, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh, vgubuibuibhui', 'Pending', '6034ba641fabb', 'BDT', 102),
(272, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'utfu', 'Pending', '6034ba8cb32a7', 'BDT', 102),
(273, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '6034bb1675fcc', 'BDT', 102),
(274, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Pending', '6034bc98de6c8', 'BDT', 102),
(275, 'admin', 'eitwebdeveloper@gmail.com', '3', 300, 'gsdghfdh', 'Processing', '6034bd9934114', 'BDT', 102),
(276, 'admin', 'eitwebdeveloper@gmail.com', '3', 436, 'gsdghfdh', 'Processing', '6034be6d9e2f6', 'BDT', 102),
(277, 'admin', 'eitwebdeveloper@gmail.com', '3', 1300, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034c18129dba', 'BDT', 102),
(278, 'admin', 'eitwebdeveloper@gmail.com', '3', 1000, 'gsdghfdh', 'Processing', '6034c21794c07', 'BDT', 102),
(279, 'admin', 'eitwebdeveloper@gmail.com', '3', 1000, 'gsdghfdh, vgubuibuibhui', 'Pending', '6034c355d663c', 'BDT', 102),
(280, 'admin', 'eitwebdeveloper@gmail.com', '3', 1000, 'utfu', 'Processing', '6034c512ab012', 'BDT', 102),
(281, 'admin', 'eitwebdeveloper@gmail.com', '3', 299.99999999999994, 'gsdghfdh', 'Processing', '6034c5a41fa8f', 'BDT', 102),
(282, 'admin', 'eitwebdeveloper@gmail.com', '3', 300, 'gsdghfdh', 'Pending', '6034c5cb4c4e3', 'BDT', 102),
(283, 'admin', 'eitwebdeveloper@gmail.com', '3', 300, 'gsdghfdh', 'Processing', '6034cedd62b28', 'BDT', 102),
(284, 'admin', 'eitwebdeveloper@gmail.com', '3', 370, 'utfu', 'Pending', '6034d67325677', 'BDT', 102),
(285, 'admin', 'eitwebdeveloper@gmail.com', '3', 370, 'gsdghfdh', 'Pending', '6034d6bbebefc', 'BDT', 102),
(286, 'admin', 'eitwebdeveloper@gmail.com', '3', 370, 'gsdghfdh', 'Pending', '6034d85a76269', 'BDT', 102),
(287, 'admin', 'eitwebdeveloper@gmail.com', '3', 370, 'utfu', 'Pending', '6034da2302685', 'BDT', 102),
(288, 'admin', 'eitwebdeveloper@gmail.com', '3', 370, 'gsdghfdh', 'Processing', '6034db0b655bc', 'BDT', 102),
(289, 'admin', 'eitwebdeveloper@gmail.com', '3', 667.5999999999999, 'utfu', 'Processing', '6034dba01cb91', 'BDT', 102),
(290, 'admin', 'eitwebdeveloper@gmail.com', '3', 348.8, 'utfu', 'Processing', '6034e92a3e194', 'BDT', 102),
(291, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034e9d2e9009', 'BDT', 102),
(292, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034ea30e1f1f', 'BDT', 102),
(293, 'admin', 'eitwebdeveloper@gmail.com', '3', 130, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034ea71ea1d9', 'BDT', 102),
(294, 'admin', 'eitwebdeveloper@gmail.com', '3', 138.8, 'gsdghfdh', 'Pending', '6034ebee56804', 'BDT', 102),
(295, 'admin', 'eitwebdeveloper@gmail.com', '3', 130, 'gsdghfdh', 'Pending', '6034ed6315deb', 'BDT', 102),
(296, 'admin', 'eitwebdeveloper@gmail.com', '3', 130, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034edf3b86dd', 'BDT', 102),
(297, 'admin', 'eitwebdeveloper@gmail.com', '3', 130, 'gsdghfdh, vgubuibuibhui', 'Processing', '6034ee303db27', 'BDT', 102),
(298, 'admin', 'eitwebdeveloper@gmail.com', '3', 138.79999999999995, 'gsdghfdh', 'Processing', '6034ee9b71104', 'BDT', 102),
(299, 'admin', 'eitwebdeveloper@gmail.com', '3', 215, 'gsdghfdh', 'Processing', '6035d81e22bd1', 'BDT', 102),
(300, 'vend', 'vend@gmail.com', '5', 138.8, 'gsdghfdh, vgubuibuibhui', 'Processing', '6035e2b932cdc', 'BDT', 112),
(301, 'user4', 'user4@gmail.com', '11223344', 295, 'asdf', 'Processing', '6035ecb98e68f', 'BDT', 31),
(302, 'user4', 'user4@gmail.com', '11223344', 340, 'asdf', 'Processing', '6035ed5322aa9', 'BDT', 31),
(303, 'user4', 'user4@gmail.com', '11223344', 210, 'asdf', 'Processing', '6035f55e93105', 'BDT', 31),
(304, 'user4', 'user4@gmail.com', '11223344', 218.8, 'asdf', 'Pending', '6035fe9d94f0d', 'BDT', 31);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(2, 4, 'TELEVISION', 'television', 1),
(3, 4, 'REFRIGERATOR', 'refrigerator', 1),
(4, 4, 'WASHING MACHINE', 'washing-machine', 1),
(5, 4, 'AIR CONDITIONERS', 'air-conditioners', 1),
(6, 5, 'ACCESSORIES', 'accessories', 1),
(7, 5, 'BAGS', 'bags', 1),
(8, 5, 'CLOTHINGS', 'clothings', 1),
(9, 5, 'SHOES', 'shoes', 1),
(10, 7, 'APPLE', 'apple', 1),
(11, 7, 'SAMSUNG', 'samsung', 1),
(12, 7, 'LG', 'lg', 1),
(13, 7, 'SONY', 'sony', 1),
(14, 6, 'DSLR', 'dslr', 1),
(15, 6, 'Camera Phone', 'camera-phone', 1),
(16, 6, 'Action Camera', 'animation-camera', 1),
(17, 6, 'Digital Camera', 'digital-camera', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'admin@gmail.com'),
(2, 'vendor@gmail.com'),
(3, 'junnuns@gmail.com'),
(4, 'shaon@gmail.com'),
(5, 'shahoriarshaun1200@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` int(11) DEFAULT NULL,
  `total_commission` float DEFAULT NULL,
  `is_brand` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `wallet`, `phone_verified`, `total_commission`, `is_brand`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Algeria', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'XRcBh8iPSOYwxzJhbnpfED9m1wEVZ3B6jkNGFD34CkLnUStmPIS2A5HEAUlh', '2018-03-07 18:05:44', '2021-02-24 02:15:49', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 5535.1, '2019-11-24', 0, NULL, NULL, 100, 1),
(22, 'User', NULL, '1231', 'Test City', 'United States', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'M3RPNruK7j8iUhrtLSPbKX8jqnZLXRhxQ0JTtE3QE3jKMzhJvfa1sTQ0q1mO', '2019-06-20 12:26:24', '2021-02-24 02:15:50', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 1),
(27, 'Test User', NULL, NULL, NULL, NULL, 'Space Needle 400 Broad St, Seattles', '34534534', NULL, 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2021-02-24 02:15:05', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, 'Test Store', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'ds', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2019-11-24', 0, NULL, NULL, NULL, 1),
(28, 'User', NULL, NULL, NULL, NULL, NULL, '', NULL, 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2021-02-24 02:15:53', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 1),
(29, 'saad', NULL, NULL, NULL, NULL, 'test', '11112222', NULL, 'saad@gmail.com', '$2y$10$ZW0iEbAhSY2R/wZrrJu0cOIbTJDxFmohDNbMNhH5YRQRDcRyzlQ72', NULL, '2021-01-09 12:30:15', '2021-01-09 12:30:15', 0, 0, 'ef256903bc702a8d7184b4921b97b279', 'Yes', 'd5a50e55e9d8d99fa79ee200ffbbcd09', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(30, 'user', NULL, NULL, NULL, NULL, 'sdfa', '1112222', NULL, 'user@user.com', '$2y$10$/4Mqu4cc9oRAi022bfVat.exTDxgS5EPGZdzQrZ1JsVi577PBHP1e', NULL, '2021-01-09 16:04:42', '2021-01-09 16:04:42', 0, 0, 'e915dbba7d721a7c04fb781349567efc', 'Yes', 'f532a1fe6588738e1438ff6bdf567dfe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(31, 'user4', NULL, '1230', 'Dhaka', 'Bangladesh', 'asdf', '11223344', NULL, 'user4@gmail.com', '$2y$10$lZA3/kBhVvhK3Ba9V5kZLOxwyHmNAQCktTEF79SgeyNt5DQBPYEGq', 'LK85AwLqIxJPnxXrUwEgO1EXNngnVB909i4DhLskqUhJE7KnyAT6HEja1LuN', '2021-01-17 05:20:22', '2021-02-24 00:42:55', 0, 0, '42df344e73fee6508751133923b2db3d', 'Yes', '22529c2fc6fb749dd3eed04afc541932', 0, 'u4', 'us4', '11112222', 'dhaka', '11112222', 'test', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 2082, '2021-02-23', 0, '690', 1, 60, 0),
(33, 'user5@gmail.com', NULL, NULL, NULL, NULL, 'Dhaka', '33334444', NULL, NULL, NULL, NULL, '2021-01-26 01:42:34', '2021-01-26 01:42:34', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(34, 'user5@gmail.com', NULL, NULL, NULL, NULL, 'Dhaka', '01937570720', NULL, NULL, NULL, NULL, '2021-01-26 01:52:44', '2021-02-03 01:57:11', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(35, 'user5', NULL, NULL, NULL, NULL, 'Dhaka', '01937570721', NULL, 'user5@gmail.com', '$2y$10$EJPGE9HikGOfuj17b3ye7OqjiinBv2XrSSh7bEuH73Ks27hUncgFO', 'z77Yjt2iwouCfQUMldh9dd0UUiO6DGoTcWPlZzRghTVOAc9AvwyquFSr9KNg', '2021-01-26 01:54:00', '2021-02-03 01:32:58', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(37, 'user6', NULL, NULL, NULL, NULL, 'Dhaka', '01937570722', NULL, 'user6@gmail.com', '$2y$10$iTmW9i7K10oVKiyyatT4WeKq2M7Y58MG7/8UU.Ec/sHhI8y/CuEAO', NULL, '2021-01-26 04:22:06', '2021-01-26 04:22:06', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(40, 'saad', NULL, NULL, NULL, NULL, 'd', '11113333', NULL, 'saad4@gmail.com', '$2y$10$m5ipSkIbDurmZXYD4LjEN.uK67WyF5KST8D98aOfiExw4zGIEYcyK', '3LE9sktfXTh2FwcL7j0gEaYlwqbV3jIiupriDekClFo50ZydZpDIrvFoMuBt', '2021-01-28 06:40:07', '2021-01-28 06:40:07', 0, 0, 'adfc2a8089055231cec23cd9918d937c', 'Yes', '93750e1931b0a9bab4e62aa5c6351efa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(59, 'fasdf', NULL, NULL, NULL, NULL, 'sdfa', '01515691481', NULL, 'manager@example.com', '$2y$10$KWwHQyGwlBxKI4o6fV4MyOTqSsC/q8Mo3xyI1Y6HdtPcmI7N6yk0C', 'iuQyC4X79QHZOQorb4sTp6K8j8RRt5WWcJiKoNq0OV29OEKrEZmr3GUoMWcy', '2021-01-31 06:50:57', '2021-01-31 06:50:57', 0, 0, '2f5f398f0ce59cf17fc173cc54c19a29', 'Yes', '6b126077df9ee38334e21f5344ad609c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(60, 'ss', NULL, NULL, NULL, NULL, 'sdfa', '015156914801', NULL, 'sss@ss.com', '$2y$10$6OSFNl7nVjUCUbFhDtu56eCqYddwie6j54pNbX0SYbGpVWR10yf5S', 'jGXX1FU7iN3N4yn1QHFnJ52YIX8W07WKwC1bE2ysevw32TRlHLUtosATAsQZ', '2021-01-31 06:55:46', '2021-01-31 06:55:46', 0, 0, '969a290c7756e1fa600744d3a4b8d7c8', 'Yes', 'e86df20dbefb1998474582d122c1679d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(62, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01925340940', NULL, 'manager32@example.com', '$2y$10$mWswjnmT4AZ6W0m8EsnIYeHMG.EVr.065TwOgiHDbti6s91M/Rvgy', 'WfhWi4Vmf49A0gUlyeQrZiYI3DzWeWf1vsHEzBj6WTdT2izmYpw4BJPuJHJx', '2021-01-31 07:04:30', '2021-01-31 07:04:30', 0, 0, '9000abdacc1d23bf5636cf29640f6b83', 'Yes', '653625133eb121150ce899a73e50f933', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(69, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '015156914802', NULL, 'manag32432er@example.com', '$2y$10$XviOR6mBZu5W7/MAeUaCm.cnFgEKpCJXv1.oUavfL0FIPll/wL4i2', '7P7D7ulabuvkmdjXMDwlwG2xuf1l89J14x29FRhaHHUnWitOwHkgQdHP6ZZv', '2021-01-31 07:20:47', '2021-01-31 07:20:47', 0, 0, 'f33aaad11fcbbda8979eb72b299c4d0e', 'Yes', '3ca5c3b7633be18f06ed02d7667231c5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(70, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480123', NULL, 'manager5435@example.com', '$2y$10$KMK.lCmZZ87Eaj5MD.KNEOi7AwvbRFSaMwEbiNqSCb1ddfz4aSKwy', 'eAkPnzxxGrfoCIVubMZzQzVbeVIZMFxgwL722EhYo7W6Un96mhWtCwaOzHBv', '2021-01-31 07:32:46', '2021-01-31 07:32:46', 0, 0, '9e757b8aaf5e7af9b4d5a522cd9ba831', 'Yes', '9be08b0c13e77118e42856131a41c533', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(71, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '8801925340940', NULL, 'manager8786@example.com', '$2y$10$Y8rWQ498HVmR9aNsm1UASO.nIIGainU9NbGFedRCEWTLy/sfxeJOK', '8tvh53uWgjn2IQkK50gBBsmYuGb7kFGZWPUvbFxFUEPTeNkMixoMfIxPtE6e', '2021-01-31 07:33:26', '2021-01-31 07:33:26', 0, 0, '439df05cc338d8dda2d1dde9df884a11', 'Yes', 'a14fa0690e31411f3bb6a40cf5996303', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(72, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01715691480', NULL, 'manage8097657345r@example.com', '$2y$10$doKPJbiTEmN2/TvUZPmavutt/mnlANIzdcIJZjetARXARQCC5rE/W', '5fbQSPxf8yqbLO89uhi1wMb4MAF8IK1SSYnPY48mjrjoqOiKFMUyiOwxFWj1', '2021-01-31 07:34:24', '2021-01-31 07:34:24', 0, 0, '0f277a20c335f4b88a325dff82334f8d', 'Yes', '0761ae853f0186e220e329b0ede14317', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(73, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691486', NULL, 'manage22r@example.com', '$2y$10$nyx6zWFljaMbqe/NhHIQYuWyeRlM2m6aBN1Mlou.w1iepIe0BUOU2', 'b2z6erTpi5HvxqYMwl9Q6No8T0D6ldcoxPYh26yPtu8rvJ2Wowd2Uzplrb3U', '2021-01-31 22:43:27', '2021-01-31 22:43:27', 0, 0, '58458458bd8408fcd22aae47c6fa2e02', 'Yes', '72dbc86e35b6c9e60765bb5ac043a2b6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(74, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148012', NULL, 'manager214@example.com', '$2y$10$B7SbmskNyBJCxh2CxiGzEugwHnPp3I/vqJMJqvZ6n5JJx5PYSHJRy', NULL, '2021-02-01 04:25:31', '2021-02-01 04:25:31', 0, 0, '683651cff8704a9ce9f0d4fef3e8d59d', 'Yes', '5bdd7a7888d3bf1c2da7ec86ccf94412', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(75, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148032', NULL, 'manager76345@example.com', '$2y$10$bClGbNomPcoVmkVpN0YaHefY/i6/S3k62DMc7AZrv6EtvvyE44JN2', '7gpqx4oKzLJze9d1yFJCQMRpWV3GHFQbnJISjh5pHz5OEGaXgXHCpRDHGFBh', '2021-02-01 04:57:31', '2021-02-01 05:01:14', 0, 0, '2f0047a4178c2fe2e1a9899fe706b2bf', 'Yes', 'f48dfbbff2a4b514d69ebfb82cb8e261', 0, 'Alu wala', 'alu', '11', 'dhaka', '11112222', 'test', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2121-01-08', 0, NULL, NULL, NULL, 0),
(76, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148032423', NULL, 'man234ger@example.com', '$2y$10$oZu57HyaTcsMOIcn8XtQK.Nzy.OZnNCO0HBxZQx3gWpOMXiTYopFu', '2TUhwH7tf4BeG1v74uT0WiMjSFADhWUH51qf7YqPBzhOspgDlLOLKVaISndD', '2021-02-01 05:04:55', '2021-02-01 05:08:00', 0, 0, '107085e680a57fb8d344336ba63421bb', 'Yes', 'acca021f5a88e619913528741bcd9e79', 0, 'Mango wala', 'mango', '22', 'dhaka', '11112222', 'fsad', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2121-01-08', 0, NULL, NULL, NULL, 0),
(77, 'vendor', NULL, NULL, NULL, NULL, 'sdfa', '01515691480324', NULL, 'manafdsafager@example.com', '$2y$10$sbrRurRmT3paaXjLHMiz4.5/.9XpnLWNayOWXElmD.3RqGVTiQUey', 'jtS2mFnDmMecljOQoaalK6pennDBaLwCaSNTfNV6dbUDqLxAHxcZ2frUqsBd', '2021-02-01 05:17:18', '2021-02-01 05:17:48', 0, 0, 'bc5f29607562f4fa3209d391a57256e6', 'Yes', '5a0e9493022feff9ea9bea9780da8c24', 0, 'murgi wala', 'murgi', '33', 'd', '11112222', 'sdfas', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, 0, '2121-01-08', 0, NULL, NULL, NULL, 0),
(78, 'vendor1', NULL, NULL, NULL, 'Bangladesh', 'sdfa', '0151569148023', NULL, 'vendoer2@example.com', '$2y$10$bNQ6b4cmWzlKhl5O9q.jzerqqISLoBrafD3mg0L0YMpk531fX0CiC', 'zeI2ovm7Z3z5XzkuOwnXGvbjvZlRbDD6gjJ6gv3fSs4EVshY1njkmlnNudvm', '2021-02-01 05:20:59', '2021-02-03 05:58:40', 0, 0, '15f9a21656b03974f32717d46250d61b', 'Yes', '936929a35b9156d4eac7639b451f2eee', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2121-01-08', 0, NULL, NULL, NULL, 0),
(79, 'user5', NULL, NULL, NULL, NULL, 'sdfa', '01515691480', NULL, 'user5@example.com', '$2y$10$wuL90Xf9XyL83/WuI.F0euXZI78fE5IZePtakCcY4a2TmOQhfngMq', 'gEGfqKscmVBNXQZvaz4ALCVvR9gdzZzzuihl0MRIm077GYMqEhxoxmdWmDwN', '2021-02-01 06:04:47', '2021-02-10 05:03:18', 0, 0, 'dcff78a3768b0b16df5859d3f77e1f44', 'Yes', '60b83f2050670947d3e10505d3d34d94', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(80, 'vendor4', NULL, NULL, NULL, NULL, 'sdfa', '01515691482', NULL, 'vendor4@example.com', '$2y$10$52ZPIakFUkv1AX4vHX022Ow6T9VPt2PXuUCr6s6lXnS97cQ52.enq', 'E0viPGSAEt2TetraQr8bYznxISG3qw7J9A5sUd04mbRrVBOIhUeVmJP3JVR4', '2021-02-02 03:23:38', '2021-02-02 03:23:38', 0, 0, 'b7435603f2e70fef58f0838ac52cb974', 'Yes', '5e9c63cafb7e9f1fba8c037e66db12a8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(81, 'admindfghsdfg', NULL, NULL, NULL, NULL, 'sdfa', '015156914801234', NULL, 'managesdafasd@exampfle.com', '$2y$10$gR34pYHdLzJHsei0Q1McW.DrQ55SSFRlcwlYKtqV3QizHy9YOkXom', 'tmkRsgYRHpqqay3g1rdUb1DzOZP6JHAy9gGhfYPWkBrN1XNbyhbA8Ae11puC', '2021-02-02 04:07:48', '2021-02-02 04:07:49', 0, 0, '847a3f90a307a51b54273acc876fcc87', 'Yes', '6ab1b5f6d05a95ac77eb7233986c08c1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(82, 'admin34324', NULL, NULL, NULL, NULL, 'sdfa', '01515691480434', NULL, 'managerffsd@example.com', '$2y$10$PhWE3r7GTPq6ZCRvGvkcSO/bCx./0ok9izX6NCq2.rLY0C2ciAVNS', 'XFMCOSKuTKgWN3atARtSckBZ3xeW0Ec07Qbc7JArJoCZ6NHdcoTCCGnTzmL0', '2021-02-02 04:10:54', '2021-02-02 04:10:55', 0, 0, '2b6aed92295a7b0e424128dd5549bad9', 'Yes', '5b6b135abf7e6ae6620c3c775ae591f6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(83, 'v1', NULL, NULL, NULL, NULL, 'd', '01937570729', NULL, 'v1@v.com', '$2y$10$ifrmWUAD6cTwrBs44OWzm.vw3ugIh99QP21ydfEvZ8lk/m/shoBnG', 'oGpm8BgYIe5Usd1RrYpIukW9sZ05PcFWfPwSkI0Jcu8cchVO7vYeEQ9Xy6aH', '2021-02-02 04:25:53', '2021-02-02 04:25:53', 0, 0, 'c6d4790b6806a7d4a7172ce39caa7428', 'Yes', '595f51bd63c3f63c39371635c3de8d3a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(84, 'atik', NULL, NULL, NULL, NULL, 'd', '01631618174', NULL, 'atik@gmail.com', '$2y$10$4lD8uqnurwoiCSsVNkn7nOsGpNE2MbuuslueJ3.2FKU0/BFej.8kC', 'cesJNOePxEJCcKQamkIJWltvMoLKhuGvdXsOcmcEpIA0n5emySQ15rHHNN3M', '2021-02-02 05:59:00', '2021-02-02 05:59:00', 0, 0, '452441bc1ad9b7571585e81cc1cf680a', 'Yes', '58c37a15f24b940226a46a576b65fe63', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(85, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148043543', NULL, 'managersdfasdf@example.com', '$2y$10$b.ukYIOGIEUJXca8jO7AE.4ucimXMTsl.oyfJRTTPjmVoMNybVAPm', 'GvIQ7uPaX219aXsteGpCO3tRXGVfpHLwLL2SqtSFRPvHZjGrDOWkTBuifVAy', '2021-02-02 06:23:34', '2021-02-02 06:23:34', 0, 0, 'fdb8ac9b3cd91b87934fff85fd81c563', 'Yes', '27d3006e2ab0b8bf4c10e3f69ac8bc84', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(86, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148066', NULL, 'manager@example.com66', '$2y$10$3cvjPfrIa64m7nVphQMYfupE.qP41mdfMNJhk.X5k49wAcIxL1YH2', 'cQIB3rDxRsPYVhr7WU9hEiPbjOXofw1rJco86Fap0owKNcFBGPeGd3lIBJrm', '2021-02-02 23:37:09', '2021-02-03 01:08:36', 0, 0, '579fcfb55581c4d4883b9d21e8326499', 'Yes', 'e590a6b7bfdfb81984c37f4192b7233d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0', NULL, NULL, 0),
(87, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148033', NULL, 'manager@example.com33', '$2y$10$c9x0ZS2mncgtVB.nuJxJ9Ob.uvofhTIAo8Z.iAuzBCwzKYw7N8TKi', '1598Gr5A46y0pb91LZUpGKqkROA1xuhCQR28u4Hp09dJp5hZ8vCtVhIFc2cq', '2021-02-03 01:13:03', '2021-02-03 01:13:03', 0, 0, '82f02cf202198ec2655981ac2dcdc0df', 'Yes', '8eed8064f7f8c685cfe57fbfe44fe16c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(88, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480332', NULL, 'manager332@example.com', '$2y$10$97SWB/oeaJMcLTtg0E9AYe.jNRDGM3QgSGoZAtuDbiLNcmHBpK5iy', 'Q7eiDLnpUNH7ILUTIIs2fjaO2wr3CsEwUaozdTMivA4LIOt1jTlFiqFSeFYS', '2021-02-03 01:24:44', '2021-02-03 01:24:44', 0, 0, '4dc231ac2afe5e82ca596a8a01f88c2c', 'Yes', '1228f359164f0b73f13cecaeea727bdb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(89, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '015156914804564', NULL, 'manager4564@example.com', '$2y$10$3ftfU8.//0WKobVwzz5Tpej/rhq1jamZf35Hxm2S8eXW56uVC4RKm', 'UTRgVAUOwMOz0S2GwGZ3W2vRt3NUt45QORJUcqbqbEEI4GvXLqax9Pbtlkbl', '2021-02-03 01:26:21', '2021-02-03 01:26:21', 0, 0, 'e735369e27f64323a7d5af8883e781c1', 'Yes', '075bf19ff41f6d93ab370cf84fea12c8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(90, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480555', NULL, 'manager555@example.com', '$2y$10$Hzrv1cUefKx9Nuwb1PSoBOTvBLJ8RHenlSwd6/WVz7NpzrDAEmb3O', 'lbegCWzhUmEH1ttLmE61QneuJZQ7fRxRyEObdr3OMGzPwjSV9pqzlC3uWfB5', '2021-02-03 01:28:47', '2021-02-03 01:28:47', 0, 0, '15dd915c1dcd0803de2ebbf39173283f', 'Yes', '86683df23e775717b1e386dab39c7b5c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(91, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480543543', NULL, 'manager43543@example.com', '$2y$10$J.N.JD2E1k.4w5SR94fDju4.vhd9azIyxYEKjWEzYaeXgK9hoPUkS', 'aJl7viiN6fyuMpbv12F2vlk9A0imZ8BNJ3j51WfaFloyn5YPsq4EdXugYyrF', '2021-02-03 01:29:13', '2021-02-03 01:32:27', 0, 0, '56e7c87846fb3dccf5260f4cd2e37623', 'Yes', '91d9c3c5bd647f88209fd60ce971e2c2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(92, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148023432', NULL, 'manager44324@example.com', '$2y$10$xe89oEioTS5ukyBftPQx4edC2NhYuE/Uev7RxGUYRMEcHKCQTVIG.', NULL, '2021-02-03 01:40:35', '2021-02-03 01:40:35', 0, 0, '52e1cab891136166cd28a2e72c11e1e1', 'Yes', '70c3040db3ef7d732478f1cc0cbbf692', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(93, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480888', NULL, 'manager888@example.com', '$2y$10$tt4LlktklciZu3wj3fTz5entHyeXOOtlSjNqlCZFYtxoeM1oEmRea', NULL, '2021-02-03 01:43:34', '2021-02-03 01:43:34', 0, 0, '22e544bbaf6f5be00d17350d7e5db01e', 'Yes', 'c3fc8aa72374d911f82b252459c501ae', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(94, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '015156914805325', NULL, 'manager4324@example.com', '$2y$10$4q3Tx0tatdZ3F/kIXGA3guoifiopZvKMiaG77zNsaRVNyfQV0JobS', NULL, '2021-02-03 01:47:01', '2021-02-03 01:47:01', 0, 0, '8682b2a4928c501ebcdc500327b2f0d5', 'Yes', '307904901767243b2d8bd14883a18459', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(95, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480fas', NULL, 'managerfsda@example.com', '$2y$10$xbDWx3nlxJK4WPzqBpKNsOcPCirqXvtcHHfWj7bc/k/BU36GINbPO', NULL, '2021-02-03 01:49:55', '2021-02-03 01:49:55', 0, 0, '074b6e2821f462c44e89ca21eeb98f36', 'Yes', '51c64ddcba528ea6ea0172a8d9e1ce52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(96, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '01515691480221', NULL, 'manager221@example.com', '$2y$10$JyhVwueyBQJCIkKshGR2SuOcZ3koH3CCJuXE8NH3GQ0LXcRgPbl.m', NULL, '2021-02-03 01:50:31', '2021-02-03 01:50:31', 0, 0, '87bcfa63fd84a5412a13b915fe4b8cc2', 'Yes', 'd63ff99dc4f8629d65b1a0b68e709f94', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(97, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '015156914805454', NULL, 'manager5454@example.com', '$2y$10$KCWBw5FALNiazhDvjAj92OonjUpzCVwWSpwJ2QVcB8gJvg46uWHBK', NULL, '2021-02-03 01:53:16', '2021-02-03 01:53:16', 0, 0, '2409991742357b68ac164ee7f40e5ece', 'Yes', 'ff465f802eb0654bf6fcc35972713a47', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(98, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '0151569148054545', NULL, 'manager54545@example.com', '$2y$10$mq0jomuHKMUW9YiThlcUb.JGcp7LiH1hzYg7nnmYpBy2PukSWaFd6', NULL, '2021-02-03 01:54:21', '2021-02-03 01:55:15', 0, 0, 'c91287a2d84c8acee42469ef80204c84', 'Yes', 'ba00042bae8c3ee39e9f285768c46cd1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(99, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '015156914801211', NULL, 'manager12121@example.com', '$2y$10$w8JnsU/zCnDFXeUMeNk3guG6aiuuAy8wAH3F0Fmk9Wq2mpP.NZV9S', NULL, '2021-02-03 01:55:36', '2021-02-03 01:55:41', 0, 0, 'c82b7a2a6584940421e24d3f98eed947', 'Yes', '47a56cd1e9fb7c21e72f0f279351f4e6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(100, 'admin', NULL, NULL, NULL, NULL, '1', '1', NULL, '1@1.com', '$2y$10$eUUHiBqFO.SUDxUQFU46HO8WaCsaM.0UrhkZRMspbGoBHfMaIS9DC', 'bqzFn2ggdWeI73zZ5JVLnEuFNJ2odalgGKwS3x67VSDr2MFIKNR2gh9Me74q', '2021-02-03 01:58:00', '2021-02-03 01:58:06', 0, 0, '85804afb523c4d02dc56634497dff7da', 'Yes', '223b9234359ca52d572ed0986e873b42', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(101, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '2', NULL, '2@2.com', '$2y$10$4omw51SrYmyUmU5PQpzFLOdsGAROaySQRGQVQkSIzM33YhbFf5JQC', 'gZZsjZ15NsShpTBLR3RHzuwg08cFD0J6iTux8XOGEKCYGmet0Q1ZWKjJXbfg', '2021-02-03 01:59:52', '2021-02-03 02:00:38', 0, 0, '2ca92f0d30d8a0735a4776c56890450b', 'Yes', '36b1517909959c92ab682ff9c04723fd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(102, 'admin', '1612431430Logo-2.png', NULL, NULL, 'Bangladesh', '3', '3', NULL, 'eitwebdeveloper@gmail.com', '$2y$10$Ye3uPalYEySXaNZmdLr4.uU.p2CuyjzxKYnEJpvMkQKEQsY1O64EK', '39WxMsORfAkt5tUeewLmlGcBjgwKjQjjmtScz6qf9VUzufhGVADo8wqnwEZT', '2021-02-03 02:01:15', '2021-02-23 22:38:24', 0, 0, '8d8169bd9dbbd8d495db48df960240e9', 'Yes', '1d6def047b9b15920da3269864ff732f', 0, 't', 't', 't', 't', 't', 't', NULL, '1612425337023db054a4a5690defce0acb2aee6c64 (1).png', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2121-01-11', 0, '5270', 1, NULL, 0),
(103, 'admin', NULL, NULL, NULL, NULL, 'sdfa', '4', NULL, '4@4.com', '$2y$10$sCa.ls1ZrjdlLObQrFfRyeVIfOVrX8vu33Uhj8MpqVr8b4osKiVda', 'nPQFO3J2xNsCG0y0njbfVNJPMHa9xli0Mo0T4USf9LFEKrnu9JYfji4SXhf0', '2021-02-03 02:12:21', '2021-02-03 03:23:37', 0, 0, '799f71d362ca040b75cbb828ff785979', 'Yes', 'a63450a0b6318b5e55d1525b11f0a1c1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(104, 'shaun', NULL, NULL, NULL, NULL, 'sfcs', '01775391091', NULL, 'shaun@ed.com', '$2y$10$70Zw2JD1XR5ltZIjNLvieur8NArxG7mU057Yua.8SZjae3gbK.QUW', 'kh01Qd0YTC5KhGwU4Cxonbc48ker3Vu6HHHsf435zB3ll9yQ3avJfFqvTxod', '2021-02-03 05:36:52', '2021-02-11 05:09:27', 0, 0, '9b0e19962084b9282523819c3808f6e7', 'Yes', '9e6653698fe5505cb8a535f29c3e6d6d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2121-01-10', 0, '704', 1, NULL, 0),
(105, 'shaun', NULL, NULL, NULL, NULL, 'dhaka', '01775391092', NULL, 'shaunn@gmail.com', '$2y$10$8g9xrINz5i6/jyBZQVltT.8hapRZL0oK65Bzk5jpmtk8gLoMYNCjq', 'F7nAGVQM58o24WgcowETMU9LI1QWAJ6CBeY9YT0sEgvPq9B2NV9DHUyPFawJ', '2021-02-06 13:28:44', '2021-02-06 13:38:43', 0, 0, 'b7fbcf3bc8dea788225694d658730f88', 'Yes', '6e27bf055812aae6099ba34e28660df2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0', 1, NULL, 0),
(106, 'Hassan', NULL, NULL, NULL, NULL, 'House-10, Road-16, Sector-03, Uttara', '01670299999', NULL, 'mhtrade99@gmail.com', '$2y$10$4DTWqhlB6n67qdfahBYy2Obf6SsdcqiwVpUcYw6KMvwhL8QWnAzdS', NULL, '2021-02-08 06:09:09', '2021-02-08 06:09:09', 0, 0, '14ce3f99a1770bd89505dc7202e6490e', 'Yes', '8c5bb99a0d39181f60037d08e7158068', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(107, 'Ahmed', NULL, NULL, NULL, NULL, 'Road#9,Sector#12,Uttara', '01866 485400', NULL, 's@s.com', '$2y$10$7mknoeB2mkEpLS1IVPl/R.E.bCj6AkG9R1lxsMHcZG03.2eV.99Ae', NULL, '2021-02-09 11:55:58', '2021-02-09 11:56:15', 0, 0, '554f8f40a23e4c0a042968bb83d4f03a', 'Yes', '4478659408683ecc6a27d717338152d3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, 0),
(110, 'Aubi Gazi', 'https://lh3.googleusercontent.com/-yaGTQw2lEXI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucksTR0rn5cshOk08Dol7tP9LTWSFw/s96-c/photo.jpg', NULL, NULL, NULL, NULL, '+8806666665', NULL, 'gaziaubi89@gmail.com', '$2y$10$r9.DO6FWWc8t.jr3dc2YDOto3mtNP87HtlexJ.t0C2LE8tVVz49.O', 'vQItIkdul8q6X5rs2ipSs6zxQRsBWMY92bFPyJWL2LTWzVPxtXMK1pzzb81Y', '2021-02-10 04:22:55', '2021-02-11 05:02:31', 1, 0, NULL, 'Yes', '1a1ba18361dc38aecc588a3278d79ab1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '30', 1, NULL, 0),
(111, 'test', 'fdasf', NULL, NULL, NULL, NULL, NULL, NULL, 'adsf@gmail.com', NULL, NULL, '2021-02-11 04:27:24', '2021-02-11 04:27:24', 1, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0),
(112, 'vend', NULL, NULL, NULL, NULL, 'Dhaka', '5', NULL, 'vend@gmail.com', '$2y$10$ccQS1NYo2JMxMDCf1OI8he2yLMiRw7XI9GpucCtvzAt6KYsjVOFJ6', 'XBlYFv5fgbOKDEVhyROmgtJTw481IVucDvseN8OUjzf3Ggc08Ctwe8uxeXkU', '2021-02-23 22:39:39', '2021-02-23 23:23:34', 0, 0, '4c0de3bacc0a3bfa2d2fc2a9f441d449', 'Yes', '4a59df4e47df57cdca7023709f30807c', 0, 'vend', 'vend', 'vend', 'vend', '111222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2121-01-31', 0, '200', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_otp`
--

CREATE TABLE `users_otp` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT 'default' COMMENT '1 = reg insert\r\n2= reg update\r\n3 = forget insert\r\n4= forget update\r\n5 = android insert\r\n6 = adnroid update\r\n7= andorid forget insert\r\n8 = andorid forget update\r\n\r\n9 = if otp failed\r\n10 = if otp failed update\r\n',
  `is_verified` varchar(255) NOT NULL DEFAULT 'false',
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_otp`
--

INSERT INTO `users_otp` (`id`, `number`, `code`, `action`, `is_verified`, `expired_at`, `created_at`, `updated_at`, `user_id`) VALUES
(10, '01515691481', '8268', '1', '0', '2021-01-31 06:55:57', NULL, NULL, 59),
(11, '015156914801', '405', '1', '0', '2021-01-31 07:00:46', NULL, NULL, 60),
(12, '8801925340940', '2077', '1', '0', '2021-01-31 07:04:10', NULL, NULL, 61),
(13, '01925340940', '8509', '1', '0', '2021-01-31 07:09:30', NULL, NULL, 62),
(14, '8801925340940', '5644', '1', '0', '2021-01-31 07:10:40', NULL, NULL, 63),
(15, '8801925340940', '7210', '1', '0', '2021-01-31 07:12:07', NULL, NULL, 64),
(16, '8801925340940', '7949', '1', '0', '2021-01-31 07:14:14', NULL, NULL, 65),
(17, '8801925340940', '7234', '1', '0', '2021-01-31 07:15:02', NULL, NULL, 66),
(18, '8801925340940', '3372', '1', '0', '2021-01-31 07:16:21', NULL, NULL, 67),
(19, '8801925340940', '451', '1', '0', '2021-01-31 07:22:31', NULL, NULL, 68),
(20, '015156914802', '6461', '1', '0', '2021-01-31 07:25:47', NULL, NULL, 69),
(21, '01515691480123', '308', '1', '0', '2021-01-31 07:37:46', NULL, NULL, 70),
(22, '8801925340940', '31', '1', '0', '2021-01-31 07:38:26', NULL, NULL, 71),
(23, '01715691480', '1111', '2', '1', '2021-01-31 07:39:24', NULL, NULL, 72),
(24, '01515691486', '1111', '2', '1', '2021-01-31 22:48:27', NULL, NULL, 73),
(25, '0151569148012', '1111', '2', '1', '2021-02-01 04:30:31', NULL, NULL, 74),
(26, '0151569148032', '1111', '2', '1', '2021-02-01 05:02:31', NULL, NULL, 75),
(27, '0151569148032423', '1111', '2', '1', '2021-02-01 05:09:56', NULL, NULL, 76),
(28, '01515691480324', '1111', '2', '1', '2021-02-01 05:22:18', NULL, NULL, 77),
(29, '0151569148023', '1111', '2', '1', '2021-02-01 05:25:59', NULL, NULL, 78),
(30, '01515691480', '1111', '10', '1', '2021-02-01 06:09:47', NULL, NULL, 79),
(31, '01515691480', '1111', '10', '1', '2021-02-01 06:12:24', NULL, NULL, 79),
(32, '01515691480', '1111', '10', '1', '2021-02-01 06:13:00', NULL, NULL, 79),
(33, '01515691480', '1111', '10', '1', '2021-02-01 06:13:51', NULL, NULL, 79),
(34, '01515691480', '1111', '10', '1', '2021-02-01 06:15:34', NULL, NULL, 79),
(35, '01515691480', '1111', '10', '1', '2021-02-01 06:15:56', NULL, NULL, 79),
(36, '01515691480', '1111', '10', '1', '2021-02-01 06:17:42', NULL, NULL, 79),
(37, '01515691480', '1111', '10', '1', '2021-02-01 06:21:50', NULL, NULL, 79),
(38, '01515691480', '1111', '10', '1', '2021-02-01 06:23:29', NULL, NULL, 79),
(39, '01515691480', '1111', '10', '1', '2021-02-01 06:27:18', NULL, NULL, 79),
(40, '01515691480', '1111', '10', '1', '2021-02-01 06:28:54', NULL, NULL, 79),
(41, '01515691480', '1111', '10', '1', '2021-02-01 06:33:06', NULL, NULL, 79),
(42, '01515691480', '1111', '10', '1', '2021-02-01 06:39:28', NULL, NULL, 79),
(43, '01515691480', '1111', '10', '1', '2021-02-01 06:42:07', NULL, NULL, 79),
(44, '01515691480', '1111', '10', '1', '2021-02-01 06:46:24', NULL, NULL, 79),
(45, '01515691480', '1111', '10', '1', '2021-02-01 06:47:06', NULL, NULL, 79),
(46, '01515691480', '1111', '10', '1', '2021-02-01 06:47:21', NULL, NULL, 79),
(47, '01515691480', '1111', '10', '1', '2021-02-01 06:52:26', NULL, NULL, 79),
(48, '01515691480', '1111', '10', '1', '2021-02-01 06:54:21', NULL, NULL, 79),
(49, '01515691480', '1111', '10', '1', '2021-02-01 06:54:34', NULL, NULL, 79),
(50, '01515691480', '1111', '10', '1', '2021-02-01 06:55:09', NULL, NULL, 79),
(51, '01515691480', '1111', '10', '1', '2021-02-01 06:55:48', NULL, NULL, 79),
(52, '01515691480', '1111', '10', '1', '2021-02-01 06:58:30', NULL, NULL, 79),
(53, '01515691480', '1111', '10', '1', '2021-02-01 07:01:05', NULL, NULL, 79),
(54, '01515691480', '1111', '10', '1', '2021-02-01 07:01:13', NULL, NULL, 79),
(55, '01515691480', '1111', '10', '1', '2021-02-01 07:04:08', NULL, NULL, 79),
(56, '01515691480', '1111', '10', '1', '2021-02-01 07:07:49', NULL, NULL, 79),
(57, '01515691480', '1111', '10', '1', '2021-02-01 07:09:11', NULL, NULL, 79),
(58, '01515691480', '1111', '10', '1', '2021-02-01 07:10:44', NULL, NULL, 79),
(59, '01515691480', '1111', '10', '1', '2021-02-01 07:11:39', NULL, NULL, 79),
(60, '01515691480', '1111', '10', '1', '2021-02-01 07:12:17', NULL, NULL, 79),
(61, '01515691480', '1111', '10', '1', '2021-02-01 07:13:37', NULL, NULL, 79),
(62, '01515691480', '1111', '10', '1', '2021-02-01 07:16:27', NULL, NULL, 79),
(63, '01515691480', '1111', '10', '1', '2021-02-01 07:17:49', NULL, NULL, 79),
(64, '01515691480', '1111', '10', '1', '2021-02-01 07:19:48', NULL, NULL, 79),
(65, '01515691480', '1111', '10', '1', '2021-02-01 07:21:50', NULL, NULL, 79),
(66, '01515691480', '1111', '10', '1', '2021-02-01 07:22:33', NULL, NULL, 79),
(67, '01515691480', '1111', '10', '1', '2021-02-02 02:05:38', NULL, NULL, 79),
(68, '01515691480', '1111', '10', '1', '2021-02-02 02:06:39', NULL, NULL, 79),
(69, '01515691480', '1111', '10', '1', '2021-02-02 02:58:50', NULL, NULL, 79),
(70, '01515691480', '1111', '10', '1', '2021-02-02 03:00:13', NULL, NULL, 79),
(71, '01515691480', '1111', '10', '1', '2021-02-02 03:03:00', NULL, NULL, 79),
(72, '01515691480', '1111', '10', '1', '2021-02-02 03:04:35', NULL, NULL, 79),
(73, '01515691480', '1111', '10', '1', '2021-02-02 03:06:08', NULL, NULL, 79),
(74, '01515691480', '1111', '10', '1', '2021-02-02 03:07:11', NULL, NULL, 79),
(75, '01515691480', '1111', '10', '1', '2021-02-02 03:07:55', NULL, NULL, 79),
(76, '01515691480', '1111', '10', '1', '2021-02-02 03:08:38', NULL, NULL, 79),
(77, '01515691480', '1111', '10', '1', '2021-02-02 03:13:16', NULL, NULL, 79),
(78, '01515691480', '1111', '10', '1', '2021-02-02 03:15:30', NULL, NULL, 79),
(79, '01515691480', '1111', '10', '1', '2021-02-02 03:17:18', NULL, NULL, 79),
(80, '01515691482', '1111', '1', '0', '2021-02-02 03:28:39', NULL, NULL, 80),
(81, '015156914801234', '1111', '1', '0', '2021-02-02 04:12:49', NULL, NULL, 81),
(82, '01515691480434', '1111', '1', '0', '2021-02-02 04:15:55', NULL, NULL, 82),
(83, '01937570729', '1111', '1', '0', '2021-02-02 04:30:54', NULL, NULL, 83),
(84, '01937570729', '1111', '1', '0', '2021-02-02 05:12:51', NULL, NULL, 83),
(85, '01937570729', '1111', '1', '0', '2021-02-02 05:13:21', NULL, NULL, 83),
(86, '01937570729', '1111', '1', '0', '2021-02-02 05:13:48', NULL, NULL, 83),
(87, '01515691480', '1111', '10', '1', '2021-02-02 05:39:10', NULL, NULL, 79),
(88, '01515691480', '1111', '10', '1', '2021-02-02 05:39:12', NULL, NULL, 79),
(89, '01515691480', '1111', '10', '1', '2021-02-02 05:39:32', NULL, NULL, 79),
(90, '01515691480', '1111', '10', '1', '2021-02-02 05:40:14', NULL, NULL, 79),
(91, '01515691480', '1111', '10', '1', '2021-02-02 05:44:03', NULL, NULL, 79),
(92, '01515691480', '1111', '10', '1', '2021-02-02 05:46:56', NULL, NULL, 79),
(93, '01515691480', '1111', '10', '1', '2021-02-02 05:47:37', NULL, NULL, 79),
(94, '01515691480', '1111', '10', '1', '2021-02-02 05:52:21', NULL, NULL, 79),
(95, '01515691480', '1111', '10', '1', '2021-02-02 05:57:29', NULL, NULL, 79),
(96, '01515691480', '1111', '10', '1', '2021-02-02 05:57:52', NULL, NULL, 79),
(97, '01515691480', '1111', '10', '1', '2021-02-02 05:58:04', NULL, NULL, 79),
(98, '01515691480', '1111', '10', '1', '2021-02-02 05:58:12', NULL, NULL, 79),
(99, '01631618174', '1111', '1', '0', '2021-02-02 06:04:01', NULL, NULL, 84),
(100, '0151569148043543', '1111', '1', '0', '2021-02-02 06:28:34', NULL, NULL, 85),
(101, '0151569148066', '1111', '1', '0', '2021-02-02 23:42:09', NULL, NULL, 86),
(102, '0151569148033', '1111', '1', '0', '2021-02-03 01:18:03', NULL, NULL, 87),
(103, '01515691480332', '1111', '1', '0', '2021-02-03 01:29:44', NULL, NULL, 88),
(104, '015156914804564', '1111', '1', '0', '2021-02-03 01:31:21', NULL, NULL, 89),
(105, '01515691480555', '1111', '1', '0', '2021-02-03 01:33:47', NULL, NULL, 90),
(106, '01515691480543543', '1111', '1', '0', '2021-02-03 01:34:13', NULL, NULL, 91),
(107, '0151569148023432', '1111', '1', '0', '2021-02-03 01:45:36', NULL, NULL, 92),
(108, '01515691480888', '1111', '1', '0', '2021-02-03 01:48:34', NULL, NULL, 93),
(109, '015156914805325', '1111', '1', '0', '2021-02-03 01:52:01', NULL, NULL, 94),
(110, '01515691480fas', '1111', '1', '0', '2021-02-03 01:54:56', NULL, NULL, 95),
(111, '01515691480221', '1111', '1', '0', '2021-02-03 01:55:32', NULL, NULL, 96),
(112, '015156914805454', '1111', '1', '0', '2021-02-03 01:58:17', NULL, NULL, 97),
(113, '0151569148054545', '1111', '2', '1', '2021-02-03 01:59:21', NULL, NULL, 98),
(114, '015156914801211', '1111', '2', '1', '2021-02-03 02:00:36', NULL, NULL, 99),
(115, '01937570720', '1111', '2', '1', '2021-02-03 02:02:03', NULL, NULL, 34),
(116, '1', '1111', '2', '1', '2021-02-03 02:03:00', NULL, NULL, 100),
(117, '2', '1111', '2', '1', '2021-02-03 02:04:52', NULL, NULL, 101),
(118, '2', '1111', '2', '1', '2021-02-03 02:05:25', NULL, NULL, 101),
(119, '3', '1111', '2', '1', '2021-02-03 02:06:15', NULL, NULL, 102),
(120, '3', '1111', '2', '1', '2021-02-03 02:13:22', NULL, NULL, 102),
(121, '4', '1111', '2', '1', '2021-02-03 02:17:21', NULL, NULL, 103),
(122, '01775391091', '1111', '10', '1', '2021-02-03 05:41:52', NULL, NULL, 104),
(123, '01775391091', '1111', '10', '1', '2021-02-03 05:44:12', NULL, NULL, 104),
(124, '01775391091', '1111', '4', '1', '2021-02-03 05:44:54', NULL, NULL, 104),
(125, '01775391092', '1111', '10', '1', '2021-02-06 13:37:04', NULL, NULL, 105),
(126, '01670299999', '1111', '1', '0', '2021-02-08 06:14:09', NULL, NULL, 106),
(127, '01866 485400', '1111', '2', '1', '2021-02-09 12:00:58', NULL, NULL, 107),
(128, '01515691480', '1111', '10', '1', '2021-02-10 05:07:35', NULL, NULL, 79),
(129, '546', '1111', '9', '0', '2021-02-10 05:44:56', NULL, NULL, 110),
(130, '+8806666665', '1111', '10', '1', '2021-02-10 05:48:58', NULL, NULL, 110),
(131, '+8806666665', '1111', '10', '1', '2021-02-10 05:49:19', NULL, NULL, 110),
(132, '+8806666665', '1111', '10', '1', '2021-02-10 05:49:45', NULL, NULL, 110),
(133, '+8806666665', '1111', '10', '1', '2021-02-10 05:49:52', NULL, NULL, 110),
(134, '01775391091', '1111', '4', '1', '2021-02-11 05:14:11', NULL, NULL, 104),
(135, '5', '1111', '2', '1', '2021-02-23 22:44:39', NULL, NULL, 112);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'fFgw1573717404', 1, '2019-11-14 01:43:24', '2019-11-23 22:30:07'),
(2, 13, '1g811573717871', 1, '2019-11-14 01:51:11', '2019-11-23 22:30:07'),
(3, 13, '5eiw1610178633', 0, '2021-01-09 13:50:33', '2021-01-09 13:50:33'),
(4, 13, 'XLDA1610178657', 0, '2021-01-09 13:50:57', '2021-01-09 13:50:57'),
(5, 13, 'AExL1610951736', 0, '2021-01-18 00:35:37', '2021-01-18 00:35:37'),
(6, 13, '5ONw1610951928', 0, '2021-01-18 00:38:48', '2021-01-18 00:38:48'),
(7, 13, 'QyP31610968839', 0, '2021-01-18 05:20:40', '2021-01-18 05:20:40'),
(8, 13, 'keq31611031653', 0, '2021-01-18 22:47:36', '2021-01-18 22:47:36'),
(9, 13, 'i6ow1611223834', 0, '2021-01-21 04:10:35', '2021-01-21 04:10:35'),
(10, 13, 'suFU1611223907', 0, '2021-01-21 04:11:47', '2021-01-21 04:11:47'),
(11, 13, 'KG7c1611224339', 0, '2021-01-21 04:19:00', '2021-01-21 04:19:00'),
(12, 13, '5mlS1611224413', 0, '2021-01-21 04:20:13', '2021-01-21 04:20:13'),
(13, 13, 'JYlb1611228510', 0, '2021-01-21 05:28:31', '2021-01-21 05:28:31'),
(14, 13, 'Lx511611661761', 0, '2021-01-26 05:49:23', '2021-01-26 05:49:23'),
(15, 13, 'w2hZ1611732586', 0, '2021-01-27 01:29:46', '2021-01-27 01:29:46'),
(16, 13, '5DlJ1611732612', 0, '2021-01-27 01:30:13', '2021-01-27 01:30:13'),
(17, 13, 'dN7E1611733239', 0, '2021-01-27 01:40:39', '2021-01-27 01:40:39'),
(18, 13, 'lxJf1611745822', 0, '2021-01-27 05:10:23', '2021-01-27 05:10:23'),
(19, 13, 'QxIt1611749529', 0, '2021-01-27 06:12:10', '2021-01-27 06:12:10'),
(20, 13, 'BaAN1611749703', 0, '2021-01-27 06:15:04', '2021-01-27 06:15:04'),
(21, 13, 'clkT1611750051', 0, '2021-01-27 06:20:51', '2021-01-27 06:20:51'),
(22, 13, '9sQh1611750200', 0, '2021-01-27 06:23:20', '2021-01-27 06:23:20'),
(23, 13, 'iXbI1611752467', 0, '2021-01-27 07:01:07', '2021-01-27 07:01:07'),
(24, 13, 'j6Hk1611752537', 0, '2021-01-27 07:02:17', '2021-01-27 07:02:17'),
(25, 13, 'qYeB1611810114', 0, '2021-01-27 23:01:54', '2021-01-27 23:01:54'),
(26, 13, '9yxq1611810163', 0, '2021-01-27 23:02:43', '2021-01-27 23:02:43'),
(27, 13, 'aZs71611814686', 0, '2021-01-28 00:18:07', '2021-01-28 00:18:07'),
(28, 13, 'koTN1611814878', 0, '2021-01-28 00:21:19', '2021-01-28 00:21:19'),
(29, 13, '32Ys1611814965', 0, '2021-01-28 00:22:46', '2021-01-28 00:22:46'),
(30, 13, 'xtwq1611815037', 0, '2021-01-28 00:23:57', '2021-01-28 00:23:57'),
(31, 13, '4xWJ1611815106', 0, '2021-01-28 00:25:07', '2021-01-28 00:25:07'),
(32, 13, 'EeQ11611815122', 0, '2021-01-28 00:25:22', '2021-01-28 00:25:22'),
(33, 13, 'JWPW1611815138', 0, '2021-01-28 00:25:38', '2021-01-28 00:25:38'),
(34, 13, 'gIqX1611815169', 0, '2021-01-28 00:26:09', '2021-01-28 00:26:09'),
(35, 13, 'zO0M1611815231', 0, '2021-01-28 00:27:11', '2021-01-28 00:27:11'),
(36, 13, 'fiDV1611815279', 0, '2021-01-28 00:27:59', '2021-01-28 00:27:59'),
(37, 13, 'ycbO1611815311', 0, '2021-01-28 00:28:31', '2021-01-28 00:28:31'),
(38, 13, 'h2451611815350', 0, '2021-01-28 00:29:10', '2021-01-28 00:29:10'),
(39, 13, 'LhN11611815400', 0, '2021-01-28 00:30:00', '2021-01-28 00:30:00'),
(40, 13, 'ayFk1611815415', 0, '2021-01-28 00:30:15', '2021-01-28 00:30:15'),
(41, 13, '0y4e1611815439', 0, '2021-01-28 00:30:40', '2021-01-28 00:30:40'),
(42, 13, 'JZWM1611815447', 0, '2021-01-28 00:30:48', '2021-01-28 00:30:48'),
(43, 13, 'HWWA1611815459', 0, '2021-01-28 00:30:59', '2021-01-28 00:30:59'),
(44, 13, '0KCK1611815614', 0, '2021-01-28 00:33:34', '2021-01-28 00:33:34'),
(45, 13, 'EKWR1611815626', 0, '2021-01-28 00:33:46', '2021-01-28 00:33:46'),
(46, 13, 'Csrn1611815913', 0, '2021-01-28 00:38:33', '2021-01-28 00:38:33'),
(47, 13, 'Bp9f1611816304', 0, '2021-01-28 00:45:04', '2021-01-28 00:45:04'),
(48, 13, 'VT6v1611816433', 0, '2021-01-28 00:47:14', '2021-01-28 00:47:14'),
(49, 13, 'rEFB1611816584', 0, '2021-01-28 00:49:45', '2021-01-28 00:49:45'),
(50, 13, 'wERD1611816938', 0, '2021-01-28 00:55:38', '2021-01-28 00:55:38'),
(51, 31, 'dzga1611826761', 1, '2021-01-28 03:39:21', '2021-01-28 03:41:24'),
(52, 13, 'b3aZ1611835736', 0, '2021-01-28 06:08:57', '2021-01-28 06:08:57'),
(53, 13, '24ZF1611835873', 0, '2021-01-28 06:11:14', '2021-01-28 06:11:14'),
(54, 13, 'WVU31612070130', 0, '2021-01-30 23:15:31', '2021-01-30 23:15:31'),
(55, 13, 'gsBa1612070558', 0, '2021-01-30 23:22:38', '2021-01-30 23:22:38'),
(56, 13, 'cm5S1612071438', 0, '2021-01-30 23:37:19', '2021-01-30 23:37:19'),
(57, 13, 'jmff1612071772', 0, '2021-01-30 23:42:52', '2021-01-30 23:42:52'),
(58, 13, 'dztN1612078393', 0, '2021-01-31 01:33:14', '2021-01-31 01:33:14'),
(59, 31, 'Ow3R1612078572', 1, '2021-01-31 01:36:13', '2021-01-31 01:44:31'),
(60, 13, 'jH4N1612078947', 0, '2021-01-31 01:42:28', '2021-01-31 01:42:28'),
(61, 31, 'jH4N1612078947', 1, '2021-01-31 01:42:28', '2021-01-31 01:44:31'),
(62, 13, 'Xr7o1612079793', 0, '2021-01-31 01:56:34', '2021-01-31 01:56:34'),
(63, 13, 'IODR1612079849', 0, '2021-01-31 01:57:29', '2021-01-31 01:57:29'),
(64, 13, 'OjWg1612080767', 0, '2021-01-31 02:12:48', '2021-01-31 02:12:48'),
(65, 13, 'gKdv1612080908', 0, '2021-01-31 02:15:08', '2021-01-31 02:15:08'),
(66, 13, 'gsQy1612082589', 0, '2021-01-31 02:43:09', '2021-01-31 02:43:09'),
(67, 31, '72yB1612160474', 1, '2021-02-01 00:21:15', '2021-02-01 04:12:32'),
(68, 31, 'rL9b1612160798', 1, '2021-02-01 00:26:38', '2021-02-01 04:12:32'),
(69, 31, 'oW9J1612161342', 1, '2021-02-01 00:35:43', '2021-02-01 04:12:32'),
(70, 31, 'Mupn1612162710', 1, '2021-02-01 00:58:30', '2021-02-01 04:12:32'),
(71, 31, 'H5eU1612168326', 1, '2021-02-01 02:32:07', '2021-02-01 04:12:32'),
(72, 13, 'H5eU1612168326', 0, '2021-02-01 02:32:07', '2021-02-01 02:32:07'),
(73, 31, '3o3W1612168456', 1, '2021-02-01 02:34:16', '2021-02-01 04:12:32'),
(74, 13, '3o3W1612168456', 0, '2021-02-01 02:34:17', '2021-02-01 02:34:17'),
(75, 13, 'nFtS1612168744', 0, '2021-02-01 02:39:05', '2021-02-01 02:39:05'),
(76, 31, 'igSp1612249168', 0, '2021-02-02 00:59:28', '2021-02-02 00:59:28'),
(77, 31, 'ja3e1612249267', 0, '2021-02-02 01:01:08', '2021-02-02 01:01:08'),
(78, 31, 'SiW31612250228', 0, '2021-02-02 01:17:09', '2021-02-02 01:17:09'),
(79, 31, 'JWzW1612250261', 0, '2021-02-02 01:17:42', '2021-02-02 01:17:42'),
(80, 31, 'FTRP1612250346', 0, '2021-02-02 01:19:07', '2021-02-02 01:19:07'),
(81, 31, 'MGmc1612250409', 0, '2021-02-02 01:20:10', '2021-02-02 01:20:10'),
(82, 31, 'Gn7y1612333260', 0, '2021-02-03 00:21:02', '2021-02-03 00:21:02'),
(83, 31, 'bIHJ1612333823', 0, '2021-02-03 00:30:24', '2021-02-03 00:30:24'),
(84, 31, 'oaxR1612333911', 0, '2021-02-03 00:31:55', '2021-02-03 00:31:55'),
(85, 31, 'pHB61612334363', 0, '2021-02-03 00:39:24', '2021-02-03 00:39:24'),
(86, 31, 'bjFe1612334516', 0, '2021-02-03 00:41:57', '2021-02-03 00:41:57'),
(87, 13, 'nz9S1612336116', 0, '2021-02-03 01:08:37', '2021-02-03 01:08:37'),
(88, 13, '8Usx1612352595', 0, '2021-02-03 05:43:16', '2021-02-03 05:43:16'),
(89, 13, 'TvYz1612353048', 0, '2021-02-03 05:50:48', '2021-02-03 05:50:48'),
(90, 13, 'l0hT1612419471', 0, '2021-02-04 00:17:57', '2021-02-04 00:17:57'),
(91, 13, 'uScw1612419609', 0, '2021-02-04 00:20:15', '2021-02-04 00:20:15'),
(92, 13, 'L7ZJ1612419738', 0, '2021-02-04 00:22:25', '2021-02-04 00:22:25'),
(93, 13, 'wH2r1612419843', 0, '2021-02-04 00:24:07', '2021-02-04 00:24:07'),
(94, 13, 'n0d51612420528', 0, '2021-02-04 00:35:35', '2021-02-04 00:35:35'),
(95, 13, 'ojPN1612422868', 0, '2021-02-04 01:14:30', '2021-02-04 01:14:30'),
(96, 13, 'H9ph1612597123', 0, '2021-02-06 13:38:43', '2021-02-06 13:38:43'),
(97, 13, 'WffJ1612851730', 0, '2021-02-09 12:22:10', '2021-02-09 12:22:10'),
(98, 13, 'A7jp1612852152', 0, '2021-02-09 12:29:12', '2021-02-09 12:29:12'),
(99, 13, 'LUQL1612855760', 0, '2021-02-09 13:29:20', '2021-02-09 13:29:20'),
(100, 13, 'oGgW1613019779', 0, '2021-02-10 23:03:00', '2021-02-10 23:03:00'),
(101, 13, 'EaYm1613106965', 0, '2021-02-11 23:16:05', '2021-02-11 23:16:05'),
(102, 13, 'JNga1613993900', 0, '2021-02-22 05:38:20', '2021-02-22 05:38:20'),
(103, 13, 'Xlhc1614069160', 0, '2021-02-23 02:32:40', '2021-02-23 02:32:40'),
(104, 13, '3xl51614069373', 0, '2021-02-23 02:36:13', '2021-02-23 02:36:13'),
(105, 13, 'RRRG1614070164', 0, '2021-02-23 02:49:25', '2021-02-23 02:49:25'),
(106, 13, 'fYys1614070313', 0, '2021-02-23 02:51:53', '2021-02-23 02:51:53'),
(107, 13, 'waEj1614071116', 0, '2021-02-23 03:05:16', '2021-02-23 03:05:16'),
(108, 13, 'FXWK1614071219', 0, '2021-02-23 03:06:59', '2021-02-23 03:06:59'),
(109, 13, 'P1Wn1614073580', 0, '2021-02-23 03:46:20', '2021-02-23 03:46:20'),
(110, 13, 'uo1c1614076702', 0, '2021-02-23 04:38:22', '2021-02-23 04:38:22'),
(111, 13, 'dTv21614076855', 0, '2021-02-23 04:40:55', '2021-02-23 04:40:55'),
(112, 13, '2ZIl1614080317', 0, '2021-02-23 05:38:37', '2021-02-23 05:38:37'),
(113, 13, 'nLzH1614080485', 0, '2021-02-23 05:41:25', '2021-02-23 05:41:25'),
(114, 13, '33FW1614080576', 0, '2021-02-23 05:42:56', '2021-02-23 05:42:56'),
(115, 13, 'cGED1614080641', 0, '2021-02-23 05:44:01', '2021-02-23 05:44:01'),
(116, 13, 'Cbop1614081541', 0, '2021-02-23 05:59:01', '2021-02-23 05:59:01'),
(117, 13, 'Mk9Q1614081600', 0, '2021-02-23 06:00:00', '2021-02-23 06:00:00'),
(118, 13, 'QwK01614081707', 0, '2021-02-23 06:01:47', '2021-02-23 06:01:47'),
(119, 102, 'Gibu1614141504', 0, '2021-02-23 22:38:24', '2021-02-23 22:38:24'),
(120, 13, '3R2B1614144214', 0, '2021-02-23 23:23:34', '2021-02-23 23:23:34'),
(121, 31, 'BnQI1614146762', 0, '2021-02-24 00:06:02', '2021-02-24 00:06:02'),
(122, 13, 'AyMA1614146944', 0, '2021-02-24 00:09:04', '2021-02-24 00:09:04'),
(123, 13, 'ruKp1614148975', 0, '2021-02-24 00:42:55', '2021-02-24 00:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(85, 31, 8, 'Basic', '$', 'USD', 0, 30, 0, '&lt;ol&gt;&lt;li&gt;Lorem ipsum dolor sit amet&lt;br&gt;&lt;/li&gt;&lt;li&gt;Lorem ipsum dolor sit ame&lt;br&gt;&lt;/li&gt;&lt;li&gt;Lorem ipsum dolor sit am&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;', 'Free', NULL, NULL, '2021-01-23 23:12:58', '2021-01-23 23:12:58', 1, NULL),
(86, 75, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-01 04:59:05', '2021-02-01 04:59:05', 1, NULL),
(87, 75, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-01 05:01:14', '2021-02-01 05:01:14', 1, NULL),
(88, 76, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-01 05:08:01', '2021-02-01 05:08:01', 0, NULL),
(89, 77, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-01 05:17:48', '2021-02-01 05:17:48', 1, NULL),
(90, 78, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-01 05:21:27', '2021-02-01 05:21:27', 1, NULL),
(91, 104, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-03 05:53:20', '2021-02-03 05:53:20', 1, NULL),
(92, 102, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-04 01:45:40', '2021-02-04 01:45:40', 1, NULL),
(93, 112, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-23 22:40:18', '2021-02-23 22:40:18', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `vorder_commission` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`, `vorder_commission`) VALUES
(1, 13, 1, 1, 130, 'fFgw1573717404', 'on delivery', NULL),
(2, 13, 2, 1, 130, '1g811573717871', 'on delivery', NULL),
(3, 13, 3, 2, 260, '5eiw1610178633', 'processing', NULL),
(4, 13, 3, 1, 130, '5eiw1610178633', 'processing', NULL),
(5, 13, 3, 2, 260, '5eiw1610178633', 'processing', NULL),
(6, 13, 3, 1, 130, '5eiw1610178633', 'processing', NULL),
(7, 13, 3, 1, 57.5, '5eiw1610178633', 'processing', NULL),
(8, 13, 4, 2, 260, 'XLDA1610178657', 'on delivery', NULL),
(9, 13, 4, 1, 130, 'XLDA1610178657', 'on delivery', NULL),
(10, 13, 4, 2, 260, 'XLDA1610178657', 'on delivery', NULL),
(11, 13, 4, 1, 130, 'XLDA1610178657', 'on delivery', NULL),
(12, 13, 4, 1, 57.5, 'XLDA1610178657', 'on delivery', NULL),
(13, 13, 13, 2, 260, 'AExL1610951736', 'pending', NULL),
(14, 13, 14, 2, 277.6, '5ONw1610951928', 'pending', NULL),
(15, 13, 16, 1, 130, 'QyP31610968839', 'pending', NULL),
(16, 13, 16, 1, 130, 'QyP31610968839', 'pending', NULL),
(17, 13, 17, 4, 555.2, 'keq31611031653', 'pending', NULL),
(18, 13, 18, 1, 130, 'i6ow1611223834', 'pending', NULL),
(19, 13, 18, 1, 138.8, 'i6ow1611223834', 'pending', NULL),
(20, 13, 19, 1, 138.8, 'suFU1611223907', 'pending', NULL),
(21, 13, 19, 5, 650, 'suFU1611223907', 'pending', NULL),
(22, 13, 20, 5, 650, 'KG7c1611224339', 'pending', NULL),
(23, 13, 20, 4, 555.2, 'KG7c1611224339', 'pending', NULL),
(24, 13, 21, 1, 138.8, '5mlS1611224413', 'pending', NULL),
(25, 13, 22, 1, 138.8, 'JYlb1611228510', 'pending', NULL),
(26, 13, 24, 1, 138.8, 'Lx511611661761', 'pending', NULL),
(27, 13, 24, 2, 260, 'Lx511611661761', 'pending', NULL),
(28, 13, 24, 2, 260, 'Lx511611661761', 'pending', NULL),
(29, 13, 25, 1, 130, 'w2hZ1611732586', 'pending', NULL),
(30, 13, 25, 1, 130, 'w2hZ1611732586', 'pending', NULL),
(31, 13, 25, 1, 130, 'w2hZ1611732586', 'pending', NULL),
(32, 13, 26, 1, 138.8, '5DlJ1611732612', 'pending', NULL),
(33, 13, 26, 1, 130, '5DlJ1611732612', 'pending', NULL),
(34, 13, 26, 1, 130, '5DlJ1611732612', 'pending', NULL),
(35, 13, 27, 1, 130, 'dN7E1611733239', 'pending', NULL),
(36, 13, 27, 1, 130, 'dN7E1611733239', 'pending', NULL),
(37, 13, 28, 2, 260, 'lxJf1611745822', 'pending', NULL),
(38, 13, 29, 1, 138.8, 'QxIt1611749529', 'pending', NULL),
(39, 13, 29, 1, 130, 'QxIt1611749529', 'pending', NULL),
(40, 13, 29, 1, 130, 'QxIt1611749529', 'pending', NULL),
(41, 13, 30, 1, 138.8, 'BaAN1611749703', 'pending', NULL),
(42, 13, 30, 1, 130, 'BaAN1611749703', 'pending', NULL),
(43, 13, 30, 1, 130, 'BaAN1611749703', 'pending', NULL),
(44, 13, 31, 1, 138.8, 'clkT1611750051', 'pending', NULL),
(45, 13, 31, 1, 130, 'clkT1611750051', 'pending', NULL),
(46, 13, 31, 1, 130, 'clkT1611750051', 'pending', NULL),
(47, 13, 32, 1, 138.8, '9sQh1611750200', 'pending', NULL),
(48, 13, 32, 1, 130, '9sQh1611750200', 'pending', NULL),
(49, 13, 32, 1, 130, '9sQh1611750200', 'pending', NULL),
(50, 13, 33, 1, 138.8, 'iXbI1611752467', 'pending', NULL),
(51, 13, 33, 2, 260, 'iXbI1611752467', 'pending', NULL),
(52, 13, 33, 1, 130, 'iXbI1611752467', 'pending', NULL),
(53, 13, 34, 1, 130, 'j6Hk1611752537', 'pending', NULL),
(54, 13, 34, 1, 130, 'j6Hk1611752537', 'pending', NULL),
(55, 13, 34, 1, 130, 'j6Hk1611752537', 'pending', NULL),
(56, 13, 35, 1, 138.8, 'qYeB1611810114', 'pending', NULL),
(57, 13, 35, 1, 130, 'qYeB1611810114', 'pending', NULL),
(58, 13, 36, 1, 138.8, '9yxq1611810163', 'pending', NULL),
(59, 13, 36, 1, 130, '9yxq1611810163', 'pending', NULL),
(60, 13, 37, 1, 138.8, 'aZs71611814686', 'pending', NULL),
(61, 13, 37, 1, 130, 'aZs71611814686', 'pending', NULL),
(62, 13, 38, 1, 138.8, 'koTN1611814878', 'pending', NULL),
(63, 13, 38, 1, 130, 'koTN1611814878', 'pending', NULL),
(64, 13, 39, 1, 138.8, '32Ys1611814965', 'pending', NULL),
(65, 13, 39, 1, 130, '32Ys1611814965', 'pending', NULL),
(66, 13, 40, 1, 138.8, 'xtwq1611815037', 'pending', NULL),
(67, 13, 40, 1, 130, 'xtwq1611815037', 'pending', NULL),
(68, 13, 41, 1, 138.8, '4xWJ1611815106', 'pending', NULL),
(69, 13, 41, 1, 130, '4xWJ1611815106', 'pending', NULL),
(70, 13, 42, 1, 138.8, 'EeQ11611815122', 'pending', NULL),
(71, 13, 42, 1, 130, 'EeQ11611815122', 'pending', NULL),
(72, 13, 43, 1, 138.8, 'JWPW1611815138', 'pending', NULL),
(73, 13, 43, 1, 130, 'JWPW1611815138', 'pending', NULL),
(74, 13, 44, 1, 138.8, 'gIqX1611815169', 'pending', NULL),
(75, 13, 44, 1, 130, 'gIqX1611815169', 'pending', NULL),
(76, 13, 45, 1, 138.8, 'zO0M1611815231', 'pending', NULL),
(77, 13, 45, 1, 130, 'zO0M1611815231', 'pending', NULL),
(78, 13, 46, 1, 138.8, 'fiDV1611815279', 'pending', NULL),
(79, 13, 46, 1, 130, 'fiDV1611815279', 'pending', NULL),
(80, 13, 47, 1, 138.8, 'ycbO1611815311', 'pending', NULL),
(81, 13, 47, 1, 130, 'ycbO1611815311', 'pending', NULL),
(82, 13, 48, 1, 138.8, 'h2451611815350', 'pending', NULL),
(83, 13, 48, 1, 130, 'h2451611815350', 'pending', NULL),
(84, 13, 49, 1, 138.8, 'LhN11611815400', 'pending', NULL),
(85, 13, 49, 1, 130, 'LhN11611815400', 'pending', NULL),
(86, 13, 50, 1, 138.8, 'ayFk1611815415', 'pending', NULL),
(87, 13, 50, 1, 130, 'ayFk1611815415', 'pending', NULL),
(88, 13, 51, 1, 138.8, '0y4e1611815439', 'pending', NULL),
(89, 13, 51, 1, 130, '0y4e1611815439', 'pending', NULL),
(90, 13, 52, 1, 138.8, 'JZWM1611815447', 'pending', NULL),
(91, 13, 52, 1, 130, 'JZWM1611815447', 'pending', NULL),
(92, 13, 53, 1, 138.8, 'HWWA1611815459', 'pending', NULL),
(93, 13, 53, 1, 130, 'HWWA1611815459', 'pending', NULL),
(94, 13, 54, 1, 138.8, '0KCK1611815614', 'pending', NULL),
(95, 13, 54, 1, 130, '0KCK1611815614', 'pending', NULL),
(96, 13, 55, 1, 138.8, 'EKWR1611815626', 'pending', NULL),
(97, 13, 55, 1, 130, 'EKWR1611815626', 'pending', NULL),
(98, 13, 56, 1, 138.8, 'Csrn1611815913', 'on delivery', NULL),
(99, 13, 56, 1, 130, 'Csrn1611815913', 'on delivery', NULL),
(100, 13, 57, 1, 138.8, 'Bp9f1611816304', 'declined', NULL),
(101, 13, 57, 1, 130, 'Bp9f1611816304', 'declined', NULL),
(102, 13, 57, 3, 390, 'Bp9f1611816304', 'declined', NULL),
(103, 13, 58, 1, 138.8, 'VT6v1611816433', 'on delivery', NULL),
(104, 13, 58, 1, 130, 'VT6v1611816433', 'on delivery', NULL),
(105, 13, 58, 3, 390, 'VT6v1611816433', 'on delivery', NULL),
(106, 13, 59, 1, 138.8, 'rEFB1611816584', 'on delivery', NULL),
(107, 13, 59, 1, 130, 'rEFB1611816584', 'on delivery', NULL),
(108, 13, 59, 3, 390, 'rEFB1611816584', 'on delivery', NULL),
(109, 13, 60, 1, 130, 'wERD1611816938', 'completed', NULL),
(110, 31, 61, 1, 215, 'dzga1611826761', 'completed', NULL),
(111, 13, 62, 2, 260, 'b3aZ1611835736', 'pending', NULL),
(112, 13, 63, 1, 138.8, '24ZF1611835873', 'on delivery', NULL),
(113, 13, 64, 1, 130, 'WVU31612070130', 'pending', NULL),
(114, 13, 64, 1, 130, 'WVU31612070130', 'pending', NULL),
(115, 13, 65, 1, 130, 'gsBa1612070558', 'pending', NULL),
(116, 13, 65, 1, 130, 'gsBa1612070558', 'pending', NULL),
(117, 13, 65, 1, 130, 'gsBa1612070558', 'pending', NULL),
(118, 13, 67, 1, 130, 'cm5S1612071438', 'pending', NULL),
(119, 13, 67, 5, 650, 'cm5S1612071438', 'pending', NULL),
(120, 13, 68, 1, 130, 'jmff1612071772', 'pending', NULL),
(121, 13, 69, 1, 130, 'dztN1612078393', 'pending', NULL),
(122, 13, 69, 2, 260, 'dztN1612078393', 'pending', NULL),
(123, 13, 69, 1, 130, 'dztN1612078393', 'pending', NULL),
(124, 31, 70, 2, 430, 'Ow3R1612078572', 'pending', NULL),
(125, 13, 71, 1, 130, 'jH4N1612078947', 'pending', NULL),
(126, 13, 71, 1, 130, 'jH4N1612078947', 'pending', NULL),
(127, 31, 71, 1, 215, 'jH4N1612078947', 'pending', NULL),
(128, 13, 72, 1, 130, 'Xr7o1612079793', 'pending', NULL),
(129, 13, 72, 1, 130, 'Xr7o1612079793', 'pending', NULL),
(130, 13, 72, 1, 89, 'Xr7o1612079793', 'pending', NULL),
(131, 13, 73, 1, 130, 'IODR1612079849', 'pending', NULL),
(132, 13, 73, 1, 130, 'IODR1612079849', 'pending', NULL),
(133, 13, 73, 1, 130, 'IODR1612079849', 'pending', NULL),
(134, 13, 74, 1, 110, 'OjWg1612080767', 'pending', NULL),
(135, 13, 74, 1, 110, 'OjWg1612080767', 'pending', NULL),
(136, 13, 75, 1, 130, 'gKdv1612080908', 'completed', NULL),
(137, 13, 77, 1, 130, 'gsQy1612082589', 'pending', NULL),
(138, 31, 78, 1, 215, '72yB1612160474', 'completed', NULL),
(139, 31, 78, 1, 215, '72yB1612160474', 'completed', NULL),
(140, 31, 79, 4, 860, 'rL9b1612160798', 'completed', NULL),
(141, 31, 79, 3, 645, 'rL9b1612160798', 'completed', NULL),
(142, 31, 80, 5, 1075, 'oW9J1612161342', 'pending', NULL),
(143, 31, 80, 4, 860, 'oW9J1612161342', 'pending', NULL),
(144, 31, 81, 5, 1075, 'Mupn1612162710', 'completed', NULL),
(145, 31, 82, 3, 645, 'H5eU1612168326', 'pending', 60),
(146, 13, 82, 2, 260, 'H5eU1612168326', 'pending', 100),
(147, 31, 83, 3, 645, '3o3W1612168456', 'completed', 60),
(148, 13, 83, 2, 260, '3o3W1612168456', 'completed', 100),
(149, 13, 84, 1, 138.8, 'nFtS1612168744', 'pending', 0),
(150, 13, 84, 1, 130, 'nFtS1612168744', 'pending', 0),
(151, 31, 92, 3, 200, 'B6Aa1612249046', 'pending', 90),
(152, 31, 93, 3, 200, 'igSp1612249168', 'pending', 90),
(153, 31, 93, 4, 200, 'igSp1612249168', 'pending', 80),
(154, 31, 94, 3, 200, 'ja3e1612249267', 'pending', 90),
(155, 31, 94, 4, 200, 'ja3e1612249267', 'pending', 80),
(156, 31, 95, 3, 200, 'SiW31612250228', 'pending', 90),
(157, 31, 95, 4, 200, 'SiW31612250228', 'pending', 80),
(158, 31, 96, 3, 200, 'JWzW1612250261', 'pending', 90),
(159, 31, 96, 4, 200, 'JWzW1612250261', 'pending', 80),
(160, 31, 97, 3, 200, 'FTRP1612250346', 'pending', 90),
(161, 31, 97, 4, 200, 'FTRP1612250346', 'pending', 80),
(162, 31, 98, 3, 200, 'MGmc1612250409', 'pending', 90),
(163, 31, 98, 4, 200, 'MGmc1612250409', 'pending', 80),
(164, 31, 99, 3, 200, 'Gn7y1612333260', 'pending', 90),
(165, 31, 99, 4, 200, 'Gn7y1612333260', 'pending', 80),
(166, 31, 100, 3, 200, 'bIHJ1612333823', 'pending', 90),
(167, 31, 100, 4, 200, 'bIHJ1612333823', 'pending', 80),
(168, 31, 101, 3, 200, 'oaxR1612333911', 'pending', 90),
(169, 31, 101, 4, 200, 'oaxR1612333911', 'pending', 80),
(170, 31, 102, 3, 200, 'pHB61612334363', 'pending', 90),
(171, 31, 102, 4, 200, 'pHB61612334363', 'pending', 80),
(172, 31, 103, 3, 200, 'bjFe1612334516', 'pending', 90),
(173, 31, 103, 4, 200, 'bjFe1612334516', 'pending', 80),
(174, 13, 104, 1, 130, 'nz9S1612336116', 'pending', 0),
(175, 13, 104, 1, 130, 'nz9S1612336116', 'pending', 0),
(176, 13, 105, 2, 260, '8Usx1612352595', 'pending', 0),
(177, 13, 105, 2, 260, '8Usx1612352595', 'pending', 0),
(178, 13, 107, 1, 130, 'TvYz1612353048', 'pending', 0),
(179, 13, 108, 1, 130, 'l0hT1612419471', 'pending', 0),
(180, 13, 109, 1, 130, 'uScw1612419609', 'pending', 0),
(181, 13, 109, 1, 130, 'uScw1612419609', 'pending', 0),
(182, 13, 110, 1, 130, 'L7ZJ1612419738', 'pending', 0),
(183, 13, 110, 1, 130, 'L7ZJ1612419738', 'pending', 0),
(184, 13, 111, 1, 130, 'wH2r1612419843', 'pending', 0),
(185, 13, 112, 1, 138.8, 'n0d51612420528', 'pending', 0),
(186, 13, 112, 1, 130, 'n0d51612420528', 'pending', 0),
(187, 13, 113, 1, 130, 'ojPN1612422868', 'pending', 0),
(188, 13, 114, 1, 130, 'H9ph1612597123', 'declined', 0),
(189, 13, 114, 1, 138.8, 'H9ph1612597123', 'declined', 0),
(190, 13, 115, 1, 130, 'WffJ1612851730', 'on delivery', 0),
(191, 13, 116, 1, 130, 'A7jp1612852152', 'processing', 0),
(192, 13, 116, 2, 260, 'A7jp1612852152', 'processing', 0),
(193, 13, 117, 1, 130, 'LUQL1612855760', 'pending', 0),
(194, 13, 117, 1, 138.8, 'LUQL1612855760', 'pending', 0),
(195, 13, 118, 1, 130, 'oGgW1613019779', 'completed', 0),
(196, 13, 118, 1, 130, 'oGgW1613019779', 'completed', 0),
(197, 13, 119, 1, 130, 'EaYm1613106965', 'pending', 0),
(198, 13, 121, 2, 260, 'JNga1613993900', 'pending', 0),
(199, 13, 121, 3, 390, 'JNga1613993900', 'pending', 0),
(200, 13, 122, 1, 130, 'Xlhc1614069160', 'pending', 0),
(201, 13, 123, 1, 130, '3xl51614069373', 'pending', 0),
(202, 13, 124, 1, 130, 'RRRG1614070164', 'pending', 0),
(203, 13, 124, 1, 130, 'RRRG1614070164', 'pending', 0),
(204, 13, 125, 1, 130, 'fYys1614070313', 'pending', 0),
(205, 13, 125, 2, 260, 'fYys1614070313', 'pending', 0),
(206, 13, 126, 1, 130, 'waEj1614071116', 'pending', 0),
(207, 13, 126, 1, 130, 'waEj1614071116', 'pending', 0),
(208, 13, 126, 1, 138.8, 'waEj1614071116', 'pending', 0),
(209, 13, 127, 1, 130, 'FXWK1614071219', 'pending', 0),
(210, 13, 127, 1, 130, 'FXWK1614071219', 'pending', 0),
(211, 13, 127, 1, 138.8, 'FXWK1614071219', 'pending', 0),
(212, 13, 128, 1, 130, 'P1Wn1614073580', 'pending', 0),
(213, 13, 128, 1, 130, 'P1Wn1614073580', 'pending', 0),
(214, 13, 129, 2, 260, 'uo1c1614076702', 'pending', 0),
(215, 13, 129, 1, 110, 'uo1c1614076702', 'pending', 0),
(216, 13, 130, 1, 130, 'dTv21614076855', 'pending', 0),
(217, 13, 130, 2, 260, 'dTv21614076855', 'pending', 0),
(218, 13, 130, 2, 277.6, 'dTv21614076855', 'pending', 0),
(219, 13, 131, 1, 138.8, '2ZIl1614080317', 'pending', 0),
(220, 13, 131, 1, 130, '2ZIl1614080317', 'pending', 0),
(221, 13, 132, 1, 130, 'nLzH1614080485', 'pending', 0),
(222, 13, 133, 1, 130, '33FW1614080576', 'pending', 0),
(223, 13, 135, 1, 130, 'cGED1614080641', 'pending', 0),
(224, 13, 136, 1, 130, 'Cbop1614081541', 'pending', 0),
(225, 13, 137, 1, 130, 'Mk9Q1614081600', 'pending', 0),
(226, 13, 138, 1, 138.8, 'QwK01614081707', 'pending', 0),
(227, 102, 139, 1, 215, 'Gibu1614141504', 'pending', 0),
(228, 13, 140, 1, 138.8, '3R2B1614144214', 'pending', 0),
(229, 31, 141, 1, 215, 'BnQI1614146762', 'pending', 20),
(230, 13, 142, 1, 130, 'AyMA1614146944', 'pending', 0),
(231, 13, 142, 1, 130, 'AyMA1614146944', 'pending', 0),
(232, 13, 143, 1, 130, 'ruKp1614148975', 'pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06'),
(5, 104, NULL, NULL, NULL, 1, 'set eryery', '2021-02-03 05:57:21', '2021-02-03 05:57:21'),
(6, 104, '1612353686google-play-png-logo-3798.png,1612353686023db054a4a5690defce0acb2aee6c64 (1).png', 'Verified', 'easuirfh sadjkfgasjfhsaf', 0, 'fuck', '2021-02-03 06:00:18', '2021-02-03 06:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(1, 22, 176),
(2, 22, 102),
(3, 22, 101),
(4, 22, 97),
(5, 22, 99),
(6, 29, 102);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 31, 'Bank', NULL, 'test', NULL, 'test', 'test', 'test', 'test', 90, 10, '2021-01-31 06:08:10', '2021-01-31 06:08:56', 'completed', 'vendor'),
(2, 31, 'Bank', NULL, 'test', NULL, 'admin', 'sdfa', 'test', '32423', 123, 0, '2021-02-01 09:13:00', '2021-02-01 09:13:26', 'completed', 'vendor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `android_token`
--
ALTER TABLE `android_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `android_user_check`
--
ALTER TABLE `android_user_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grandchildcategories`
--
ALTER TABLE `grandchildcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslorders`
--
ALTER TABLE `sslorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_otp`
--
ALTER TABLE `users_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `android_token`
--
ALTER TABLE `android_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `android_user_check`
--
ALTER TABLE `android_user_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grandchildcategories`
--
ALTER TABLE `grandchildcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sslorders`
--
ALTER TABLE `sslorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
