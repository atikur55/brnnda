-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2021 at 11:04 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brnndaco_update`
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
(1, 'Admin', 'admin@gmail.com', '016235464654', 0, '1615697124big sticker-01.jpg', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'zsjYfbNCy4PfzYMVkvgcs5NvfE15fiGgxWRM2Z2NzgpiHuCHUSnFx4mdrGHr', '2018-02-28 23:27:08', '2021-03-13 23:15:24', 'test'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 20, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2021-06-15 02:37:46', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 20, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2021-06-05 23:46:41', NULL),
(8, 'Tausif', 'tausifsagar14@gmail.com', '01768166575', 21, '1616913106me1.jpg', '$2y$10$sKJdXcxyXM3yxQucNgQWVOoNVpsMxnqRULVDqJ2P/gjJOeqjkOAh.', 1, NULL, '2021-03-28 01:01:46', '2021-06-05 23:45:29', NULL),
(9, 'aaa', 'aaa@gmail.com', '212', 21, '161933946095a2f648349401.5a66109d55b85.png', '$2y$10$G4vGoseCQVcuFLRpG.pQEOd.66sYoEuZWb9wf9olSEhQ6XwbATDye', 1, NULL, '2021-04-25 03:01:00', '2021-06-05 23:43:15', NULL),
(11, 'jnikuj', 'sawac479787@isecv.com', '05454564456', 20, '1622958369Group 1.png', '$2y$10$s2aX5fTHJvXEBWpzFp0EJe29osCsQq3vXxMK6RM.RoTklctgcjKj2', 1, NULL, '2021-06-05 23:46:09', '2021-06-05 23:46:09', NULL);

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
  `phone` varchar(255) NOT NULL,
  `last_login_time` varchar(255) NOT NULL,
  `last_logout_time` varchar(255) DEFAULT NULL,
  `logout_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `android_user_check`
--

INSERT INTO `android_user_check` (`id`, `user_id`, `token`, `created_at`, `destroyed_at`, `phone`, `last_login_time`, `last_logout_time`, `logout_count`) VALUES
(1, 35, NULL, '2021-01-26 03:46:39', '2021-01-26 09:39:46', '01937570721', '2021-01-26 10:01:19', '2021-01-26 10:53:19', 1),
(3, 37, NULL, '2021-01-26 04:22:23', '2021-01-26 10:23:22', '01937570722', '2021-01-26 10:10:38', '2021-01-26 10:51:38', 2),
(4, 31, 'essential59371679', '2021-01-29 23:40:26', '2021-01-30 05:26:40', '11223344', '2021-02-12 02:40:31', NULL, NULL);

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
(39, 1, NULL, 'tt', 'tt', 1, 1, '2021-01-31 05:41:36', '2021-01-31 05:41:36'),
(40, 22, 'App\\Models\\Category', 'Sale', 'sale', 1, 0, '2021-05-07 01:33:28', '2021-05-07 01:33:28');

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
(265, 39, 'tt', '2021-01-31 05:41:36', '2021-01-31 05:41:36'),
(266, 40, 'sale', '2021-05-07 01:33:28', '2021-05-07 01:33:28');

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
(2, '1616438078slider your style.jpg', NULL, 'TopSmall'),
(3, '1568889164bottom1.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.brnnda.com/item/men-colorful-shirt-br-10001', 'BottomSmall'),
(7, '1616438707special offer.jpg', NULL, 'TopSmall');

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
(12, 9, 'Fashion trends of Leather clothing', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;\r\nline-height:107%\">Leather clothes, which have become trendy in the fall-winter\r\nseason, will look spectacular, shocking, stylish. Well-retaining warmth,\r\nfashionable clothes made of matte, patent and inverted leather are presented in\r\nsuch styles as skirts of simple and asymmetrical cut, leather jackets and\r\nleather jackets, trousers of wide and fitted tailoring. It is impossible not to\r\nmention such fashionable women\'s trends of as leather raincoats and trench\r\ncoats, which are perfect for autumn and spring. Leather items can be worn with\r\nother textures, for example, velvet, knitwear, tweed, etc.<o:p></o:p></span></p></div>', '1617929966leather-clothing1.jpg', 'www.brnnda.com', 25, 1, NULL, NULL, 'leather clothing,leather fashion,fashion', '2018-04-06 22:04:20'),
(20, 9, 'Fashion trends of clothing: denim clothing', '<div align=\"justify\"><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;\r\nline-height:107%\">Undoubtedly, denim clothing in all kinds of styles is\r\nuniversal and practical, representing fashion trends in clothing in the form of\r\ndenim overalls, fashionable wide jeans, skirts and midi-length dresses, stylish\r\nloose denim jackets. Fashion trends &nbsp;will\r\ndelight not only with denim clothes in classic blue, but also diversify the\r\nstyle of fashionistas with other shades, in particular white, gray, burgundy,\r\ngreen, red, yellow tones, harmoniously combined with both autumn-winter and\r\nspring-summer bows. Even if you completely change into denim, your look will be\r\nvery successful and harmonious, taking into account the latest fashion trends .<o:p></o:p></span></p></div>', '1617929394Untitled-1.jpg', 'www.brnnda.com', 19, 1, NULL, NULL, 'fashion,lifestyle,fashion and lifestyle,denim fashion,denim fashion for woman,denim fashion for girls,denim fashion for boys', '2018-08-03 06:03:14'),
(21, 11, 'Fashion trends in clothing', '<div align=\"justify\"><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><b><span style=\"font-size:11.5pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\">Fashion trends in clothing 2021-2022, which we will try to\r\npresent to your attention today, will be something new and unusual for many,\r\nbut for some it will be an understandable phenomenon that does not go beyond\r\nwhat is permissible.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><b><span style=\"font-size:11.5pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\"><br>\r\nEvery year, fashion changes, but the individual perception of style by one\r\nperson or another remains unchanged, which allows you to form unique images,\r\ntaking into account the latest trends and new clothes, but with an individual\r\napproach to details.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><b><span style=\"font-size:11.5pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\"><br>\r\nDesigners offered us fashionable clothing trends 2021-2022 for the\r\nspring-summer and autumn-winter seasons, which often amaze with their\r\nextravagance.I just want to say where to wear it, and what things to combine\r\nwith, because we do not always understand fashion trends the way the fashion creators\r\ntried to show them.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><b><span style=\"font-size:11.5pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\"><br>\r\nWe decided to offer you our view on the most stylish trends and fashion trends\r\nin clothing 2021-2022, which will influence fashion, in particular, new items\r\nand styles of clothing, color palette, features of cut and choice of fabric,\r\netc.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><b><span style=\"font-size:11.5pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\"><br>\r\nIf you want to dress fashionably and stylishly, you should undoubtedly know\r\nwhat fashion trends in clothing 2021-2022 will be at the peak of their\r\nrelevance soon.<o:p></o:p></span></b></p></div>', '1617902354GL-CloseToHome-Lede.jpg', 'www.brnnda.com', 44, 1, NULL, NULL, 'fashion trand,fashion and lifestyle 2021', '2019-01-03 06:03:37'),
(22, 11, 'Casual Pantsuit style', '<div align=\"justify\"><p class=\"MsoNormal\" style=\"line-height:200%\"><font size=\"4\"><em style=\"\"><span style=\"line-height: 200%; font-family: Georgia, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-style: normal;\">Welcome to the new&nbsp;</span></em><em style=\"\"><span style=\"line-height: 200%; font-family: Georgia, serif; font-style: normal;\">Look of the Day<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">, where we comb through every celebrity outfit from the past\r\n24 hours and feature the single most&nbsp;conversation-worthy ensemble. Love\r\nit, leave it, or shop the whole thing below.</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></span></em></font></p><p class=\"MsoNormal\" style=\"line-height:200%\">\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height: 200%;\"><font size=\"4\"><span style=\"line-height: 200%; font-family: Georgia, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Even to those whose\r\npre-pandemic style leaned heavily masochistic (dagger heels, non-stretch denim,\r\njust bras in general) now likely expect their clothing to have more in common\r\nwith the bathrobe-and-slippers-adjacent pieces we\'ve been living in for the\r\npast 12 months. A&nbsp;</span>new class of blazer-pants sets&nbsp;share more in\r\ncommon with 2020s ubiquitous sweatsuits than their overly tailored counterparts\r\nof yore. Stuffy, starched fabrics have made way to plush, breathable\r\nalternatives, and fussy accessories like belts can be eschewed thanks to\r\nstretchy waistbands and a general shift toward looser silhouettes.</font><i><span style=\"font-size:14.0pt;line-height:200%\"><o:p></o:p></span></i></p></div>', '16179017390a6e0c3e90258fab3ed5218decb173d9.jpg', 'www.brnnda.com', 272, 1, NULL, NULL, 'fashion,lifestyle,fashion and lifestyle,pantsuite style,style,woman style', '2019-01-03 06:03:59'),
(23, 11, 'Teenage Boys Summer Fashion', '<div align=\"justify\"><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">There is always a wide range in teenage fashion for all\r\nseasons. That is because teenagers are young and innovative and like to define\r\ntheir own fashion statements instead of following the trends all the time.</span><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0in; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:15.0pt;line-height:150%;\r\nfont-family:&quot;Roboto&quot;,serif;color:black;mso-color-alt:windowtext\">But again\r\nthere are teenagers who want to follow every fashion trend that pops up and\r\nwant to look hip and up to date. That is why it is a bit difficult for people\r\nwho design teenager outfits to make everyone happy.</span><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit;\"><span style=\"font-size:15.0pt;line-height:150%;font-family:\r\n&quot;Roboto&quot;,serif;color:black;mso-color-alt:windowtext\">However, there are some\r\ngeneral trends that are very much in fashion this summer.<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> As it is summer so shorts and t-shirts are hot in\r\ndemand. Sleeveless t-shirts are also a fashion statement. Bright colors look\r\ngood in summer if you are going to the beach or night clubs. Otherwise, in\r\nnormal everyday, light colors like baby pink, sky blue, light green, and gray\r\nare great. Khaki bottoms look good with all light colors as well as White denim\r\nor white chinos. Some guideline to dress up this summer.</span></span><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size: 15pt; font-family: Roboto, serif; color: rgb(58, 58, 58); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\r\n\r\n<h2 style=\"margin: 0in 0in 9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:20.0pt;\r\nline-height:107%;font-family:&quot;Muli&quot;,serif;color:black\">Dress in Summers for\r\nTeenage Boys<o:p></o:p></span></h2>\r\n\r\n<p style=\"margin: 0in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:15.0pt;font-family:&quot;Roboto&quot;,serif;color:#3A3A3A\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0in 58.8pt; text-indent: -0.25in; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:\r\n15.0pt;line-height:150%;font-family:Wingdings;mso-fareast-font-family:Wingdings;\r\nmso-bidi-font-family:Wingdings\">§<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; </span></span><!--[endif]--><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;\r\nmso-color-alt:windowtext\">Wear light materials like cotton, this is will keep\r\nyou off from feeling hot and sweaty all the time.</span><span style=\"font-size:\r\n15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0in 58.8pt; text-indent: -0.25in; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:\r\n15.0pt;line-height:150%;font-family:Wingdings;mso-fareast-font-family:Wingdings;\r\nmso-bidi-font-family:Wingdings\">§<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; </span></span><!--[endif]--><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;\r\nmso-color-alt:windowtext\">Enjoy all your favorite t-shirts as in summer season\r\na plain t-shirt is good enough for going out.</span><span style=\"font-size:\r\n15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0in 58.8pt; text-indent: -0.25in; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:\r\n15.0pt;line-height:150%;font-family:Wingdings;mso-fareast-font-family:Wingdings;\r\nmso-bidi-font-family:Wingdings\">§<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp; </span></span><!--[endif]--><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;\r\nmso-color-alt:windowtext\">Use Accessories that protect you from the sun like\r\npee caps, broad-rimmed hats, and sunglasses.</span><span style=\"font-size:15.0pt;\r\nline-height:150%;font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p>\r\n\r\n<ul style=\"margin-top:0in\" type=\"square\">\r\n <li class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:15.0pt;line-height:150%;\r\n     font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\n     mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-color-alt:windowtext\">Dark\r\n     colors absorb heat and would make you feel hot. If you planning a day\r\n     outdoors, do not wear black or other dark shades, otherwise, you would\r\n     sweat too much. Wear light colors as they do not absorb heat.</span><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; line-height: 150%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:15.0pt;line-height:150%;\r\n     font-family:&quot;Roboto&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\n     mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;mso-color-alt:windowtext\">Summer\r\n     is not a very good season to wear skinny jeans and tight t-shirts. Wear\r\n     something that can help the air pass through.</span><span style=\"font-size:15.0pt;line-height:150%;font-family:&quot;Roboto&quot;,serif;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:20.0pt;line-height:107%;font-family:\r\n&quot;Segoe UI Historic&quot;,sans-serif;color:#050505;background:#F0F2F5\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:20.0pt;line-height:107%;font-family:\r\n&quot;Segoe UI Historic&quot;,sans-serif;color:#050505;background:#F0F2F5\">Teenage Boys</span>&nbsp;<o:p></o:p><span style=\"background-color: rgb(240, 242, 245); color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, sans-serif; font-size: 20pt; text-align: left;\">Summer Party</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">So when you are going to a party at a friend’s place and it\r\nis too hot to wear a blazer or a jacket, then you can get the proper dress up\r\nlook by wearing a waistcoat. A waistcoat with formal pants and any casual\r\nt-shirt can give you party ready look.</span><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:20.0pt;line-height:107%;font-family:\r\n&quot;Segoe UI Historic&quot;,sans-serif;color:#050505;background:#F0F2F5\">Jeans For\r\nTeens in Summer</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Jeans are the boys best friends throughout the year be it\r\nsummer or winter. In summers also you can pair them up with any t-shirt and you\r\nare ready to go out.</span><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:20.0pt;line-height:107%;font-family:\r\n&quot;Segoe UI Historic&quot;,sans-serif;color:#050505;background:#F0F2F5\">Formal Summer\r\nWear With Tie and Rolled Up Shirt</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">If you want to give a bit of formal touch to your attire,\r\nwear a thin tie with a shirt and to cool off, fold the sleeves of shirt neatly.</span><span style=\"font-size: 15pt; line-height: 150%; font-family: Roboto, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p></div>', '1617860720cab7642a2b6cb7441d7a3aaf956dc04c.jpg', 'www.brnnda.com', 10, 1, NULL, NULL, 'fashion,lifestyle,fashion and lifestyle,teenage fashion,teenage style,teenage boys style,teenage fashion style', '2018-08-03 06:03:14'),
(24, 9, 'Cotton saree keep you cool in summer.', '<div align=\"justify\"><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\">If you think of the scorching summer heat and your mind\r\nimmediately jumps to a Cotton Saree. It is not only comfortable but also speaks\r\nthe language of the land. Style it the way you want, this kind of Saree will\r\nminimize your much-needed draping time too.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\">&nbsp;</span></p><p style=\"margin-top:0in;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;\r\nline-height:150%;background:#EFEFEF\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0in;line-height:150%;background:#F0F2F5\"><span style=\"font-size:14.0pt;line-height:150%;font-family:&quot;inherit&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Segoe UI Historic&quot;;\r\ncolor:#050505\">cotton sarees are vibrant and light. They are the perfect party\r\nwear options. You can have fun with and a designer cut for the blouse and wear\r\non your gold choker to complete your look.<o:p></o:p></span></p></div>', '1617858848handloom-cotton-saree-in-magenta-v1-shxa1682_2.jpg', 'www.brnnda.com', 42, 1, NULL, NULL, 'fashion,lifestyle,fashion and lifestyle,lady fashion,woman fashion,girls fashion,sharee,cotton sharee,best cotton sharee', '2019-01-03 06:03:37'),
(25, 11, 'Coronavirus badly impact fashion and lifestyle', '<div align=\"justify\"><p style=\"margin: 0in 0in 12pt; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 14.5pt;\">A year of being in the grips of a global&nbsp;pandemic&nbsp;has\r\nimpacted every aspect of our lives, right down to the way we dress. Being asked\r\nto stay home and abandon life as we knew it in March 2020 changed the contents\r\nof our wardrobes and how we shop in ways we could never have foreseen\r\nbefore&nbsp;Covid&nbsp;took hold.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: start;\"><span style=\"font-size: 14.5pt;\">Who could have\r\nguessed that the humble track pant would become the It buy of 2020? The&nbsp;fashion\r\nindustry&nbsp;itself has changed irrevocably in response to both economic\r\ndownturn and the cancellation of a schedule of lucrative events and shows -\r\nsome labels and high street stalwarts were lost, while other brands had to\r\ndramatically pivot their aesthetic to survive.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: start;\"><span style=\"font-size: 14.5pt;\">As our social\r\nfreedoms are slowly restored with the announcement of the government’s roadmap\r\nout of lockdown, the fashion world is on tenterhooks as to how the industry and\r\nits consumers will respond. Is our 180 on formal wear and a year of fast\r\nfashion backlash just the start of a sartorial revolution? Or will we slide\r\ncomfortably back into old habits as our lives begin to resemble something\r\ncloser to normal once more?<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: start;\"><span style=\"font-size: 14.5pt;\">As Isabella\r\nWest, a former economist and the founder of fashion rental platform&nbsp;Hirestreet,\r\npoints out: “There is still a lot of uncertainty as to what consumer behaviour\r\nwill look like post-pandemic. Even the best trend-forecasters will struggle to\r\naccurately predict what happens next in the wake of such fundamental behavioural\r\nshifts.” Perhaps our best chances of understanding how a post-pandemic future\r\nof fashion may look then, is it to refer to the past.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: start;\"><span style=\"font-size: 14.5pt;\">Designers love\r\nto borrow from bygone eras, and just as the&nbsp;1920s&nbsp;has been&nbsp;referenced\r\nrepeatedly for how our social lives may return to a roaring start in June, it’s\r\nlikely we can learn a lot about style as well from the period that followed the\r\nSpanish Flu of 1918.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 14.5pt;\">Of course, there is the obvious parallel that the 1920s were a\r\nperiod when the world was recovering from a major human catastrophe – the\r\nSpanish flu infected a predicted 500 million globally and saw 50m deaths. But\r\nfurthermore, just like 2020, it was also a time of accelerated social and\r\neconomic change.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 12pt 0in; line-height: 17.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: start;\"><span style=\"font-size: 14.5pt;\">In the UK all\r\nwomen won the right to vote in 1928 (a decade after those under 30 who met\r\ncertain property qualifications had been granted enfranchisement) and had\r\ngained a more active role in the economy after taking on jobs previously\r\nreserved for men during the war. The Wall Street Crash of 1929 marked the\r\nbeginning of the Great Depression, which led to years of economic uncertainty.<o:p></o:p></span></p></div>', '1617857348Heuritech.jpg', 'www.brnnda.com', 50, 1, NULL, NULL, 'Fashion,lifestyle,fashion and lifestyle,covid 19 dress up fashion', '2019-01-03 06:03:59');

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
(7, 'Entrepreneurs', 'entrepreneurs'),
(9, 'Fashion', 'fashion'),
(10, 'Lifestyle', 'lifestyle'),
(11, 'Fashion and Lifestyle', 'fashion-and-lifestyle'),
(12, 'woman fashion', 'woman-fashion'),
(13, 'boys style', 'boys-style'),
(14, 'Kids zone', 'kids-zone'),
(15, 'Kids Fashion', 'kids-fashion'),
(16, 'Men\'s Fashion', 'men\'s-fashion');

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
(7, 'Smart Phone & Table', 'smart-phone-and-table', 0, '1557377810mobile.png', 1, '1568709597f4.jpg'),
(17, 'Portable & Personal Electronics', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', 0, NULL),
(18, 'Outdoor, Recreation & Fitness', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', 1, '1622547675return_pic2.jpg'),
(19, 'Surveillance Safety & Security', 'Surveillance-Safety-and-Security', 1, NULL, 0, NULL),
(21, 'MEN', 'men', 1, '1622546763icon.png', 0, NULL),
(22, 'WOMEN', 'women', 1, '1615522930women-01.png', 0, NULL),
(23, 'JUNIOR', 'junior', 1, '1615523774junior-01-01.png', 0, NULL),
(24, 'SHOES', 'shoes', 1, '1615523850shoes-01.png', 0, NULL),
(25, 'BAGS', 'bags', 1, '1615523612bags-01.png', 0, NULL),
(26, 'HEALTH & BEAUTY', 'beauty', 1, '1615524520beauty-01.png', 1, '1622547630icon.png'),
(27, 'Router', 'router', 1, '1623824248survey.png', 0, NULL);

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
(18, 2, 'tvstand', 'tvstand', 1),
(19, 19, 'Casual Shirts', 'casual-shirts', 1),
(20, 19, 'Formal Shirts', 'formal-shirts', 1),
(21, 19, 'T-shirts', 'tshirts', 1),
(22, 19, 'Polo T-shirt', 'polo', 1),
(23, 19, 'Panjabi', 'panjabi', 1),
(24, 19, 'Kabli set', 'kabli-set', 1),
(25, 19, 'Koty', 'koty', 1),
(26, 20, 'Jeans', 'jeans', 1),
(27, 20, 'Chino', 'chino', 1),
(28, 20, 'Shorts', 'shorts', 1),
(29, 20, 'Pajamas', 'pajamas', 1),
(30, 20, 'formal pants', 'formal-pants', 1),
(31, 21, 'Cap', 'cap', 1),
(32, 21, 'Wallet', 'wallet', 1),
(33, 21, 'Belt', 'belt', 1),
(34, 21, 'Socks', 'socks', 1),
(35, 20, 'Underware', 'underware', 1),
(36, 26, 'Kurti', 'kurti', 1),
(37, 31, 'Shirt', 'junior-boy-shirt', 1),
(39, 26, 'Three piece', 'womwn-three-piece', 1),
(40, 26, 'Tops', 'women-tops', 1),
(41, 26, 'Tunics', 'women-tunics', 1),
(42, 26, 'T-shirt', 'women-tshirt', 1),
(43, 26, 'Polo tshirt', 'women-polo-tshirt', 1),
(44, 27, 'Leggings', 'women-leggings', 1),
(45, 27, 'Palazzo', 'women-palazzo', 1),
(46, 27, 'Pajamas', 'women-pajamas', 1),
(47, 27, 'Pants', 'women-pants', 1),
(48, 27, 'Jeans', 'women-jeans', 1),
(49, 28, 'Scarf', 'women-Scarf', 1),
(50, 28, 'Dupatta', 'women-dupatta', 1),
(51, 28, 'Hijab', 'Women-hijab', 1),
(52, 28, 'Belt', 'women-belt', 1),
(53, 28, 'Socks', 'women-socks', 1),
(54, 26, 'Saree', 'women-saree', 1);

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
(3, 'browser', 'Windows 10', 4924, 0, NULL),
(4, 'browser', 'Linux', 388, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 19804, 0, NULL),
(6, 'browser', 'Windows 7', 483, 0, NULL),
(7, 'referral', 'yandex.ru', 17, 0, NULL),
(8, 'browser', 'Windows 8.1', 555, 0, NULL),
(9, 'referral', 'www.google.com', 46, 0, NULL),
(10, 'browser', 'Android', 693, 0, NULL),
(11, 'browser', 'Mac OS X', 599, 0, NULL),
(12, 'referral', 'l.facebook.com', 5, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 14, 0, NULL),
(15, 'browser', 'Windows 8', 2, 0, NULL),
(16, 'browser', 'iPad', 7, 0, NULL),
(17, 'browser', 'Ubuntu', 21, 0, NULL),
(18, 'browser', 'iPhone', 38, 0, NULL),
(19, 'referral', 'sandbox.sslcommerz.com', 2, 0, NULL),
(20, 'referral', 'l.messenger.com', 1, 0, NULL),
(21, 'referral', 'helpdesk.greengeeks.com', 1, 0, NULL),
(22, 'referral', 'com.google.android.googlequicksearchbox', 1, 0, NULL),
(23, 'browser', 'Windows Vista', 12, 0, NULL),
(24, 'referral', NULL, 60, 0, NULL),
(25, 'referral', 'm.facebook.com', 9, 0, NULL),
(26, 'referral', 'search.yahoo.com', 2, 0, NULL),
(27, 'referral', 'duckduckgo.com', 1, 0, NULL),
(28, 'referral', 'ge.serverslls.com', 1, 0, NULL),
(29, 'referral', 'google.com', 2, 0, NULL),
(30, 'referral', 't.co', 1, 0, NULL),
(31, 'referral', 'www.linkedin.com', 2, 0, NULL),
(32, 'referral', 'l.instagram.com', 5, 0, NULL),
(33, 'referral', 'brnnda.com', 8, 0, NULL),
(34, 'referral', '144.91.114.122', 4, 0, NULL),
(35, 'referral', 'whm.liosys.host', 1, 0, NULL),
(36, 'referral', 'baidu.com', 1, 0, NULL),
(37, 'browser', 'BlackBerry', 1, 0, NULL),
(38, 'referral', '65.2.61.254', 10, 0, NULL),
(39, 'referral', 'www.google.com.hk', 5, 0, NULL),
(40, 'referral', 'com.google.android.gm', 2, 0, NULL),
(41, 'referral', 'accounts.google.com', 4, 0, NULL);

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
(12, 'BR2021', 0, 5, '1', 2, 0, '2021-03-19', '2021-03-31');

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
-- Table structure for table `destricts`
--

CREATE TABLE `destricts` (
  `id` int(10) UNSIGNED NOT NULL,
  `d_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_price` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destricts`
--

INSERT INTO `destricts` (`id`, `d_name`, `shipping_price`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Gopalgonj', 10000, 1, '2021-06-02 04:14:42', '2021-06-02 04:45:56'),
(18, 'Dhaka', 100, 0, '2021-06-02 04:19:23', '2021-06-02 04:19:23'),
(19, 'Dhaka', 349584, 1, '2021-06-02 04:29:31', '2021-06-02 04:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `status`) VALUES
(2, 'Dinajpur', 0),
(3, 'Chottogram', 1);

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
(1, 'I want to pay by cash. What should I do?', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:black\">yes, cash on delivery option is available at\r\nthe&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:black\">moment .<o:p></o:p></span></p>', 1),
(3, 'Is there any delivery charge ?', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n\" arial\",sans-serif;color:black\"=\"\">Yes, the delivery charge is BDT 60 per order in side Dhaka. outside Dhaka delivery charge is BDT 120 per order .&nbsp;<o:p></o:p></span></p>', 1),
(4, 'How Can I pay?', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:black\">You can make full payment through payment\r\ngateway. payment gateway are include bkash, nagad, roket and&nbsp; all bank Debit/Credit Card with visa and master\r\ncard.&nbsp;<o:p></o:p></span></p>', 0),
(5, 'How will I know my coverage area?', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:black\">we will supply all brand&nbsp; product is all over Bangladesh.<o:p></o:p></span></p>', 0),
(6, 'What can I order from Brnnda ?', '<p class=\"MsoNormal\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:#565656\">You can order All kind of lifestyle product\r\nfrom various Brand shop via the Brnnda app and website.</span><o:p></o:p></p>', 0),
(7, 'What is the expected delivery time?', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;color:black\">Inside Dhaka expected&nbsp; delivery time to be completed by less than\r\n2-3 days. Outside Dhaka 5-6 days .&nbsp;<o:p></o:p></span></p>', 0),
(8, 'What is your service hour?', '<span style=\"color: rgb(86, 86, 86); font-family: Manrope, sans-serif; font-size: 17.5px;\">Our service is available 24 hours every day.</span><br>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(244, 236, '1615568562sp715c.jpg'),
(245, 243, '16156093155d021f611ba3377d7b47c42a-large.jpg'),
(246, 244, '1615610066s-maxy-dress-196-black-daevish-original-imafnxw5wwtgjp3q.jpeg'),
(247, 253, '162305181441wIjg5em6L._ML160_-193x300.jpg'),
(248, 286, '1623874020one.jpg'),
(249, 286, '1623874020two.jpg'),
(250, 286, '1623874020three.jpg'),
(251, 288, '1623874260three.jpg'),
(252, 288, '1623874260slider-1.jpg'),
(253, 288, '1623874260Banner-1.jpg'),
(254, 291, '1623874868slider-1.jpg'),
(255, 291, '1623874868Banner-1.jpg'),
(256, 291, '1623874868bg0.jpg'),
(257, 295, '162390320241wIjg5em6L._ML160_-220x154.jpg'),
(258, 295, '162390320241wIjg5em6L._ML160_-193x300.jpg'),
(259, 298, '1623904729add_emp_six.jpg'),
(260, 298, '1623904729addemp.jpg'),
(261, 299, '1624126634three.jpg'),
(262, 299, '1624126634slider-1.jpg'),
(263, 299, '1624126634Banner-1.jpg'),
(264, 300, '1624126933three.jpg'),
(265, 300, '1624126933slider-1.jpg'),
(266, 300, '1624126933Banner-1.jpg'),
(267, 302, '1624165046add_emp_six.jpg'),
(268, 302, '1624165046addemp.jpg'),
(269, 303, '1624165299add_emp_six.jpg'),
(270, 303, '1624165299addemp.jpg'),
(271, 303, '1624165299add_emp_three.jpg');

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
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_min_withdraw_amount` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `vendor_min_withdraw_amount`) VALUES
(1, '1618467961brnnda cmyk logo white-02.png', '1612614935brnnda cmyk logo-06.png', 'BRNNDA', 'Info@example.com', '0123 456789', 'Mobile: +8801886060861           <br>\r\nEmail: support@brnnda.com <br>\r\nLocation : Mirpur-13,Dhaka-1206', 'COPYRIGHT © 2021. All Rights Reserved By BRNNDA BANGLADESH LTD.', '#ee2228', '1610172355299 (3).gif', '1615967880Preloader_7.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 0, 0, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 0, 0, 0, 5, 'smtp.gmail.com', '587', 'colaborationw@gmail.com', 'jhvehqsvebhpxjub', 'colaborationw@gmail.com', 'BRNNDA', 0, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 0, 10, 1, 1, 0, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 0, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1567488562subscribe.jpg', '1615566250Brnnda logo final-03.png', '1567655174profile.jpg', '#666666', 1, 1, 0, 'shaon143-facilitator-1@gmail.com', '1612444607brnnda-cmyk-logo-white-02.png', 'tls', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'live', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><img src=\"https://i.imgur.com/6FqJeBt.jpg\" width=\"457\"><br></h1>', 200);

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

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_06_02_080156_create_destricts_table', 1);

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
(1, NULL, 129, NULL, NULL, NULL, 1, '2021-04-21 00:49:14', '2021-04-25 03:36:14'),
(2, NULL, 130, NULL, NULL, NULL, 1, '2021-04-21 00:57:12', '2021-04-25 03:36:14'),
(3, NULL, 131, NULL, NULL, NULL, 1, '2021-05-12 21:46:11', '2021-05-17 02:23:32'),
(4, NULL, 132, NULL, NULL, NULL, 1, '2021-06-01 03:20:29', '2021-06-05 23:52:22'),
(5, NULL, 133, NULL, NULL, NULL, 1, '2021-06-02 01:19:18', '2021-06-05 23:52:22'),
(6, 156, NULL, NULL, NULL, NULL, 1, '2021-06-02 01:20:58', '2021-06-06 05:52:20'),
(7, 157, NULL, NULL, NULL, NULL, 1, '2021-06-02 05:24:05', '2021-06-06 05:52:21'),
(8, 158, NULL, NULL, NULL, NULL, 1, '2021-06-02 05:26:19', '2021-06-06 05:52:21'),
(9, NULL, 134, NULL, NULL, NULL, 1, '2021-06-06 06:08:35', '2021-06-14 07:16:35'),
(10, NULL, 135, NULL, NULL, NULL, 1, '2021-06-06 22:53:22', '2021-06-14 07:16:35'),
(11, NULL, 139, NULL, NULL, NULL, 1, '2021-06-14 06:37:21', '2021-06-14 07:16:35'),
(12, 159, NULL, NULL, NULL, NULL, 1, '2021-06-15 05:08:43', '2021-06-15 06:31:25'),
(13, 160, NULL, NULL, NULL, NULL, 1, '2021-06-15 05:09:36', '2021-06-15 06:31:25'),
(14, 161, NULL, NULL, NULL, NULL, 1, '2021-06-15 05:35:10', '2021-06-15 06:31:25'),
(15, 162, NULL, NULL, NULL, NULL, 1, '2021-06-15 05:51:34', '2021-06-15 06:31:25'),
(16, 163, NULL, NULL, NULL, NULL, 1, '2021-06-15 05:58:01', '2021-06-15 06:31:25'),
(17, 164, NULL, NULL, NULL, NULL, 1, '2021-06-15 06:04:17', '2021-06-15 06:31:25'),
(18, 165, NULL, NULL, NULL, NULL, 1, '2021-06-15 06:30:24', '2021-06-15 06:31:25'),
(20, 166, NULL, NULL, NULL, NULL, 1, '2021-06-15 23:06:20', '2021-06-16 04:43:00'),
(21, NULL, 144, NULL, NULL, NULL, 1, '2021-06-16 03:24:24', '2021-06-16 03:42:08'),
(22, NULL, 145, NULL, NULL, NULL, 1, '2021-06-16 03:29:41', '2021-06-16 03:42:08'),
(23, NULL, 146, NULL, NULL, NULL, 1, '2021-06-16 03:39:21', '2021-06-16 03:42:08'),
(24, NULL, 147, NULL, NULL, NULL, 1, '2021-06-16 22:32:50', '2021-06-19 23:27:58'),
(25, 167, NULL, NULL, NULL, NULL, 0, '2021-06-17 04:31:09', '2021-06-17 04:31:09'),
(26, 168, NULL, NULL, NULL, NULL, 0, '2021-06-17 04:34:40', '2021-06-17 04:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `ssl_transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(17, 31, 'BZh91AY&SY$v«\0,_P\0Xø?¿ü¿ÿÿú`_=r\0±\0\0\0dsbh02dÈÂ`i!J@*\0\0\0\0\0\0\0Ð0&&	&L&	¦Ð&õ0\0i3PÂÀ&L20&db``\n\"i¡4Ó&&\Z§åM©¦$~õ<ÔÒiê$d¹ÿoÍù¸¹:\\ÖÃàÿ-cä~«-çw79=*)u×Oòø¸>.+®r\\Ó0	( b1	B 3 Áþ\Z6qea»í;2Ñ³*^§ì¤mºÍss¢ÅU¸±X0<ÿTiÄ0§%\nG\rÞZÏ¦QÊ ¦±I.[ëu7ù´xå§{^Î·µìèå³Z>/±^;ÅH¥¬¢¥Y÷;_s­ëv:\\&ê¥\nB ¡R$>¤ë°bIÔ|,÷WK¨õ©eYeÔëQ×Ôúf÷¿Õíeô:û¸Ôæ§k¨ÃÁ{®`Éw[vL¥\Z{»YIáºÒ8/\"oÂÑ[5MÞ)JKÈÊK)iFªF\ZÚ-¾ºáuPÖv¨Ü¼YuCCeÑ^ýëxÓæÝu.ú§Ô¥7ÔÝ\\kÞ¦qUI[|^p¦ÆMÔ¥Rªb(Pª*h¶®1|.Ë±ÒÝÚàÑÁ«-öTSF:mU!uFáRKg@¥jïw$À0ÊCe)Fªß{âê[G¢bS9¿f5ÃYvWiyUØÅ¹¶YºËu²ÂÊlºÌ¶h¹Éuµi9å1vÙËm)mÅ¥oç]\nÛM®Õ´ÆßZÓ:×LJ½îcMsÓb^cRÌ±Y^k4Ò°Þffû{$OýÂÐ\"ÀPzrÒ> c\Z¢(ZUØgbÅÁÙDQb, +$K^ Y \nQ¸\'S.k_äLÉ$¢©~»NzçFgK«bUqñâDwRSµÜa ä¥ÄºªÜ³±iY¡Ñ©\":ÞjHiIHBö\nPª4¡qæ©GÌ1\rAÄîM`ç5åhö1\'\Zeû5~5f{lâþòLëYýTöçÖ·6$ðüÖpé>ÀÓñUÃòp¿	Ð~4òÌÔ¥*K\r0×ÕöºhÑõ©»øTÒ¿~OÈýßEõRÇgàZü¡×4+Ï©Q5~OÅ÷©ôûh³óË­è~ðËî÷ZóG\\>ç{Ò<¯/koÉ^©Ô©gòÿ#àò/VzövêÑ´<\Z¹<ùN%,«ýjõGo8¶aÆRER[Èm±ÝK©¯(w8Ü¿ö^Íg&î§{©ÒÂ´õ×Ø¥ûµµkZíãlÝ¢®³vÊ[±³J£eUM]¦ï;÷sS?Ùû­yNe{ªÎ&:W¡O­ÒÊ¬Ëyºëj)=LáN\nÞ³L¸ö_ ¼4ðò¬ýuOÆqjõTïô<éÊ´ÞYãwIÿË0Ñé¢¥÷nw<Ô]VÿOµ<çUO{å>°=;:â\nÜÙQOCÕß£Üô³çNØz¦*ç­ÅvÚ¹13QÑÃ|íSæÔÑi»Îëp<Ëª)NÎöúuDÛçK*>&|<^õ(ÖØzc,j1S£øln(ÿeõÂøª¥çzìö}Kð?VX¦¬,¼øÅðèº2ë8)ffÍ.£YY§søfv´Y4u©¬*RÉ&Ù«ªpy	æV{Ç¡6ñ1ÅKJ`ÛI)ÁìþõÍ4T§öo÷òußÙÍèh9¾³Î]óRÞ÷z5ÏåTPÙMGFDÊT©äaø}³ÉW®w+^nçO\'ønb/÷ÐpS\\,åíf&k2À°!ùªQGÖ¨¾aømì^Ïp³cHùJb0a(a(I%ªJ)%T»©Áéãaæ¼g®O÷M5-÷ÝÉh_Àb4ekO«9=]õdÍVïC÷fûÈ¥Õ\nnéº\\Õ÷[&MÝNÞ·jÐÚ:+ûãåIi:Òølx¸qæõNù<¹5Ä·Dðuf!ú7[¿¹ã\r1\"æÌè¦®åNjsRõ³®àÆVçGÑS>ö+¦L`P±/¼\"lZÅÜN$	ªÀÀ', 'Cash On Delivery', 'shipto', 'Azampur', '4', 555.2, NULL, NULL, 'keq31611031653', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-01-18 22:47:34', '2021-06-02 00:45:46', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(18, 31, 'BZh91AY&SY¥HìÉ\0ßP\0Xø?ÿü¿ÿÿú`¡@\0	\0ªJAQT¨@#0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`baH&¦§¤Þ ÔÔ~Ù&§©£C#ÐÔh=Éå¤\'êjoIêHôêCÁ=(Òè@Ügú¾ÑÍÕØí[\rÑ«ó]û/ø¬¶¨ó¹j]uÅöháôr]tágUÞgà²Ñb¢)IH²*~£¶P~m93-$ÞL]X88·7±´ö+³-çEÄiïceÒ\\p.ºå¬­SfWS	g7è£s8jÐÖtlÕfQ«.¬0²ÊÍÚ¿ºÇ\rJZk4yò¨ºò¥mN¥F=rqØ¼µ,í7wÕmOfË6ô2úoãlï~n÷ØîîèÞ i!ây:ØóäCh¢±ÞûGÁåvº¶&ê\nQBJ\n©ÿRGRè|P-NÓôP³êø>ÓÎzWÍÙâ<g©EMXûyTy|Öâ÷ìûWe<SÞèÃø²vÏÉ« ûSe<Ë©Ý2§±fY4K;ÙJ\r_3³;(è©Éà´G´¤Êè^HstZLåÒÚ0²y^ÚQI§óYIKHYRsv)Üº¢Ö¥RYÎLFU:¼û.8yVYNjOòÃÄ²ÆeDÝ9i*90æË¢öw7aK·YJQÉ»:*G*)Ù-9©>j,JR¤]e4]9)ÃFrQJ)LJ6uÉB]e¥\nM.Ý|)ñev8sr48aÉ«EÑ¢Ôè®ÙQk)Á»âò4i7pæù3ÕÍÌ©)Cl9°Ã8jÑ÷­Ø÷Îl8L,²¡ºp»¼k0¥;h¼ÚTSîÑ²ØV¸ÊitÍÂåÆFM8´ÐÓ¹½¹¦:4Þèpl;í5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑX¦FòõµCX}*Â¸°Ò;âPÀ\n)¢!f)S¼\\¹Ó%Rñ1ieH¥IJTJ*(¥JBP¥Åº ¥D¢©L	Û;½]¥Ým$4~2ÕKµY*0É\'cEçng\r,îe,0³V¼90^Q\'&NEG%U×\\Ý£EÓ+Ý«vc*\Zª1[Ó-Õ\\¸Âî\ZL²áÃF¸0£fÎNcTÁ«6/¸YÂé\0£ ¤þ,}¼ö,|ýÎæÁqî(Öâ}¾i\'J4~çâÃfgÎÎèÉ÷]wÙ(ú²17þNÙÎRN2üôl\Z5°°èt]Ñ;!³þyÓ*IJRÃF\Z°¶¯¾BhÐþ\nÏù4WÍÑé>åæx{Ò$`Qpð¢ÚÍÀ|íCÄý^çÒñGåN¤úÆÍÏµ=¥íÃgîTóºÊ4;îy×=dò<Ïê§°íbQ»önC´ì8Ë$iÈb`¡ÈvÄÀ;LÝnÔÈ¡8!àbíS\rÑÎlÃRÈ¥Hæ½;Þi8p\rfÏtìóWb<Î¸lºÓTlûÜÕÝïS¼ÌÁHóÉûþ2½\rVSU5lö°×yu¥K­uÍÛ)m°w¸)C¤Á7pOau?´íâq4x?eJÂöÅNG.<­ò1ûòòQ{ÿ¦ãIg&âÊÄ©ÊS2¦g7zî]\Z=/4£ä}gîj9ÝFAÜm7KÌpà!¤(!ç,æå¸;Hldä9¿Q¸¡¹î 3 þCí;W¤Ðð¡\0\nÕàRSÛ>KIüÞæ^ØTò#ß5Ysá9ËÍÚºF#*£v[#§í54fsL¿øÜ³©â$þ`¤¢§èÚ¼MÔÿªYJU*Iò2ô=Úí=Å&Ë2Áï&æ-\nN£\rå+ZQï]¬L1(_Õ/9Ë²ñ?rü{YèÌKSaÎòë8RÓ\'Af,/#­ð/N0Á¡0s#»È\\ÑKC2LWjpóOë<ÊÀùÎÄaì&Íï¡¤$n\r\nCyÜ|£=ÎèÝçtw.÷º»\'ªj³ø]õ)gÊyå>¯Sà¥\nË¬o:¿Ã£TÊzäÌ\rE4Áä/;ºÞDsp1:FVo+¤¸9¿W!xùÔG)SVKÇ&L§ÅVB49a¦	ÌÓL5Óç1:ÎDüWâ1zé()$bb@B¢«P¢(ÈxçÒPbÂ^f.À}.Ç#&ó ²\'ÉBòîRp0&eOkÐw^u×àõÎNG#fíâTº¦îÉyIEÓYÅÞeqºn6%:Oæ³Ó\rfÄ:)ÍDÂ}£õ¤¹º+ðlzçNÉîG )<O15MBÎié¦^y~Su,õÃL!g	ÃFª<Ë:ªv¨ºT³¯9ÌfY-<ºTeò½4OÈYIQïè:Ä!	E±`ÿÅÜN$)R;2@', 'Cash On Delivery', 'shipto', 'Azampur', '2', -268.8, NULL, NULL, 'i6ow1611223834', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', '537.6', 'declined', '2021-01-21 04:10:35', '2021-06-02 01:15:57', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(19, 31, 'BZh91AY&SY|_x\0ßP\0Xø?ÿü¿ÿÿú`¡@\0	(\"*@UB¡\0`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LI B§êÉ6SQìTñ2§¤Ñ zOShIê\Zz@© 	¢h!JxSO\Z§<¡úØ4£ÔºP7Ýýàæìuv­êÕú.þÐÿ-ª$<¯Z]uÅøháðr]tágbï3ñYIh±QJ¤¤YE?aÛ(?Fo&V\'-ÍìmÁåËÊâL4ø1²è.5.ºå¬­SvWVÎoÕFåÚ²k:5h³(Ùc&ì²³v¯ÝÎ\Z´¼Ñæ>¦Y%)KJzÕ,æåÚ¼µ,î7~ïÚ½méeðßÌÙå~÷«»»¡ ËC¥Çs¼àA!T0aF)ýïèó>wÈív6&ê\nQBJ\n©þE¤eÐúÐ-NÓõP³âùßqàzÐëä<¥ÔX¤ÊËæ£Ì£Íå}OSß³í]Tð]Ok£­¬üÚºµ6SÁÜºw>VYdÐ].hïde({u{Î¹ÙGENO¢>b*#¡y!ÍÑi-M4ee,ó=;5\n(¤ÓÎ÷¬ÅDM¥¤,ÉE©9:©Üº¢ÙRÈ©,Ãg&ªv<6\\q0ùYNjO\"òÃÈ²ÆeR7NE¢ZJ¥90æË¢öw7aK·YJQÉ»tT9Ru9©4õ©Yg\rWJä³ÌRRò]Ñy(K¬²¡I«UÛ.ÂS+´rláÍÈÐá&³EÑ¢Ôè®ÙQk1b¾£Y»^ßc±2¤¥\rv[3­Ý^ÃCyÍ,(n¥Ü.Âï*Í)S³6w.ÕyÏaR%O¿VëaXrb-1,ÍÓQqbã1§CM\r>öæäÙ¦÷\'Ã´±f­#c&qæ#+lé³[,Z[E0²SvWe«AM6^jla5]­4e¨Êa,jÑ¤¥YqYd60ºa¨±f]5M\Z+0Þ7¨6ªCâ»!r©!)¡n,40 BhB!yfbªw0RRRU-öYR)ERR¡J)ER(¢@BÍR5H´@BÀ:¡ÑÔ³·²òCI!\'øÅ.ÊÉ­6e¡£«UçnfÍ,îe,0³V¼90^Q\'&NEG%U×\\Ý£EÓ+Ý«fc*\Z©-LnÙ}UË.á¤Ë-´i)Ã\n6läáf5Lj³M¦2VrÎ7-\nOäïÅ·}ï±èlÂ®\'yÒàº``xã\"÷×F¼\0¸>ãò±c±êÌbtþ\'ÝÀ¤e>½X[XX?Ôè»¢uÏøQàRLªR¨\Z0Õµ}Nù	£CèTÞÌ£G½Ñë>õñ+>÷öTT¢ÊSÈü/ÑÓDç3/:X\'î÷=ð?Ö\r:Sê4n{S´½¸m<NåOd£C¹ÇçÊO3Ìòlüù¦%Öä;N³±rA\ZØæÃ\rY@fún×A¨ÒÈ¡5CÈÅçKMÑÎlÃRÈ¥Hæ½;Þy8p-fÏdë;æ®¨óº..â]²ëMQ³ðr;Ww½Nó3#ÂOO®Qw¡ªÊj¦­¶\Zï.´³Iu®¹»e-³v÷e(pR&îióSûÎÙN\'GøYt©Ì3.¼«MÝL:Ë¤ç*}3±Yº~ïsóNöâÊÄ©ÊS2¦g7zî]\Z=/;Gñbi6ãI½Òfãè,9Îã¢9)ë^wáffÚ¢íæéÝ<^å<H<YÖ0ñNµæ2xE\njñ)H©ëç¥¤ûÆ^Ô©æG¶k>IsÝ9ËÍÚ»#IÑÉ»-Sø39¦_ünYÃÔòWCÆ0RQSÊôNm^Fê\nÿÕ,¥*$û½zÝ§¢X¤ÙfX=¤ÜÒe°aIÑða¼¥pKJ=«µ%óR;ó»/#ç_ðk30Ybóñ*bì9ÞPñ]g\nZ^9`bÂò;_\"ôã\ZYEÎ%´3$Áùµv§<ü§XùÕ|ÄÙéÙJZ*`Ù¤q=ÏÃÚ4RTÿyº7x:;{]³Õ5NÙô]ñ)gÙ<%>/SÜ¥\nË¬o;Ë£TÍDÞºÀÒSLçwS±n\'0ÑÈÑ­äy0s~ÎBéï¢9J²^92e>¦a¼hsaCÌîi¦iÌýf\'QÌbyp?ü0H?4¤H14	Y\0Z °bgSÞh(9a/5Êc#Ë7nÞtDû/.å\'ÒfYdõ½uçdõ¼T´§Ë98]·Rê\nºËÊJ.ÌN.ó¬Ì{ÍÓq³ýé>åk4N!ÑNj&í\'íH´ÍÔQ_cå9:Ïb=áIä}LÄÕ59§¦vxL£ó¬ñ|åBÏU6yÖt;TíQu0¨-/f+^sÌ²Zx|¨ËìäË\'æ,¡GÐ~Ã:N¤dHAB2ÅÿrE8P|_x', 'Cash On Delivery', 'shipto', 'Azampur', '6', 788.8, NULL, NULL, 'suFU1611223907', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', NULL, 'pending', '2021-01-21 04:11:47', '2021-01-21 04:11:47', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(20, 31, 'BZh91AY&SYKu\0_P\0Xø?ÿü¿ÿÿú`¡@\0P%\0P)æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD	O)ê=¨4iC&£&@4*H A4Ð\0¢~ÉêôMé#Â2.\rÇÜþ¡ôsuv;VÃGójüW~Çâ}ë-ª$<ÇµE.ºâÉú4pú9.ºp³ªï;ö¬¤´X¨¥JRR,¢Å\nävÊÅ£g&e¤É¿V&¶-Íìm¥æÛÎæ¸Í=,lºK®¹gk+EÔÝØJs~J7.Õ´§F­e2êÃ	»,ªÍÚ¿Ó8[RËËÍSõ|ebR±Ñ±ØTcÚ©g7.Õå©gq»ý?5µ=»,ÛÒËé¿³Èü_µçv;²Òg h!Öw8\ZÜwO	PÁa\Z)gíxÞ§ñw»][u(¡@¥I\nJT±E)#©t>¤D´ü,üßÄð=OÍóvx!ª,±ûyTy|Ôâ÷ëö.Ë*x.§½ÑÔÉÕÛø6ubn§Äºx¶YdÐ].há¡ïÕó;3²rw¯ì)4Q/$9º-%°é¦¬¥W¡W²Riæ|Öb¢D¦ÒÒd¢ÁTw.D¨¥u©dTa³*^.8w¬²Õ)5Êx%2£EHãTä^%¤ªSøaYthê½\')w)J9¸r§UCÉÛ*sSJ%)R.²Î\Z®RpQJ^Q«²Z/%	uB)4j»f_êem9¹\ZhäÞl°²3mNªä¿\ntYÃáòw´k8kÉÕö:0æT¡®Îl0Î\Z´%»\'¼¦óî\',(n¥Ü.ÂîåôY³¹u¦¡uH2Õw\rØZbY¦1b%Æ-9ÚhiãonifÍ7¸¸6\'YybÍZG5.ÆLãÌFVÙÓf¶X´¶ad¦ì®ËV4l¼ÔÙ0Â*j»ZhËQÂY0Õ£	IK.²ã\r\Z²É4l(atÃQc3\nÌºj4V&éÊúÎù!Þ~yi$R¥©\Z(¡n,40 BhEBòÌ¹s%)u%RÑ/eH@a	\0@JYMBòÖÊ)D)R¦íÞ®Òî¶\ZI	>ùHê¥Ú¬¦Ì´4bv5^V&ì·YÜîdË,Ñ¯LIÉ¢ÓQÉG&ÝÈáÎ\Zµ]2¹N\Z®ÄRªü5_Erß·i2Ëví\ZJrpaFÍ,Æ©\rVimÉ\\/5ÅP³Ø´ãè.»êõÝwçöÏ¹Ú³¾jú?TÒNhüÏ½ÌÏ\'Ð?søÝwì^í_ÿíâG¯Ø´Wg^îEK Û¾Ráüº\'d6ÒÊeR¥D°Ñ¬-«äñÈM\Z­SyýåMóteùNBþe)0(5p¢ÚDÉÀ{-íö#ðz ûZ?\Zt§|lÑày½¹/<åOYFr=ÏÏY<¯+Èe³ú©ì;eEï1èù<±£ºQïyZ´l%\0k°S°äìº\rFD	ªF/]%7G9³j]JK\"#ôñ¼Òpá<ífÏtì9«±gEÅÜK¶]iª6\'#µwêxÌÌ	>*}R½\rVSU5lö°×yu¥K­uÍÛ)m°xÜM¡ÁJR`¸M§°ºtíâq4yß¢Ë¥NauåZnì0ìIÎTÿÕYº§ÁÉy§¸¤Ã2±*ráL©Íã]ÒK£G¥æ~/ÒTtw¾çG®tng½ð]6{§©âTíSG\"Å=«ÎãïY¤÷¨¤»yºwO;à±¹£ÐÈë~SEwÎ²ÂÁB¼å)=³àô´½îeéO*=óYß.|\'9y»WQÄeRtrnËdbTý&¦Îiÿpõ<DÍÐóÆ\nJ*yÍ«ÄÝA_ú¥¥R¤Y¡ì×iè)6Yy74lRt}o)\\ÒzíbaBüÔ©yÎ]ñ_ù5N¬Ä±yö1vï(y×YÂoÆ°¼ËÔ^ÀÁ¡0r#¹áE-É0~\r]©ÃÍ?¬ó+ç;°=1:Ã6i\"Oé0÷¦?´Ý¼Ë½î®Éê§lýg¡~e,úç§æõ0>\nP¡¼ºÆó«ýº5FT&âä`ìÂ98ÃFÓFc\'jr`æÿ.Bÿ:å*jÉxäÉù3*ÉRÉ¸ºHÞz¥¥¥;í7Ö¯Ö÷55ÈnÉRýÆ1e\"S% `Å\"DQQ TUj\0´A`ÅÎ§;¸h(éa/2l\'GnnÝ¼è,õ¨^]ÊN¤Ì²ÉízëÎ³Úó©i)N\\äátr6nÞ%K¨*nì]5]æY÷¦ãgîS¤ýë=0ÖhC¢ÔL\'ØOóH´ÍÔQ_kc×8rvOr=áIâ|ªjsOL,í2ðGá7YçwÏ\\4ÂyØN\Z5TÙæYÐíSµEÔÂ ´½¬-yÎc2Éiç:,?¨Ëë©4OÀYBç¾pB\"bÁÿrE8PKu', 'Cash On Delivery', 'shipto', 'Azampur', '9', 964.16, NULL, NULL, 'KG7c1611224339', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1111', '241.04', 'pending', '2021-01-21 04:18:59', '2021-01-21 04:18:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(21, 31, 'BZh91AY&SYËns\0,_P\0Xø?¿ü¿ÿÿú`_=z\0\0¬\0\0 #AÉ&FÓLL0&&	&L&	¦¢1©¦@Ó&ÄÓ FL4ÑMJH4\0\04\Z\0\0\0 AÉ&FÓLLRAMi¦MTý)åLPý&úM=Rä7?«ô~NnRØ~òÖ?sû¬·¢	ÜÜæõ(¥×\\Y?Ëàáðr]tág5Íê(IEJ¡#ðøhÙÉì;´òe£fT½OÙHÛuæáF a@àÂLèJs6$áÖbxXx#¡G&ÚsÆ&ùÍ·×ãg\Z¬íy©«u)gF*cÓK98ê]n¶ÿ´ïkäì{Þ{5£äó{Uèz*E-d¥,²Ï­ÚúÝcÈésl¨R)\nTJTù\nRw®>E\'Yû(Yï<Ï.YìRÊ0²Ë©Ø£³­ó<íïÜË/1é}Îru)Úê0ð^ë2]ÖìdÊQ§½Ïµ­#äMø´cÍSw\nRñ$²¤RÊZEQª¡F¶%¯®¸§]\rgjËÉÂë.¤Ö¥56]-}ñÅ>-RîÉºêRNeq+Þ©aUI{[nWSc&êR©MU1J¨U4i}q,Ë±Í»¡ÃFì8ÕQL­B­¢¤9ZóÙ«g©¾²£}÷Æ:1«Jø8sm6RTj­÷¾.¥¦åh¤ûtÒØÖÙ¶afo1j¾:¬Ýe>XYMYÍ9®¶­\'VYcaöÒÙLZVø¾uÐ­´Úí[0#°rxÉ	¢LFHª 4¡Ü§\0`5æ5,Ëæ³M+\ræfiO«É\"|gð^ªêJjÉD&P1QL,_E2À°°´1´E\"È*ª_KH^¡TDU+uº¹õ-~w3$~ªs¥û-4c,áÕ¥Ýyq£vg,±5×X]PrÒÎJåNJäÞ÷oï3uo&(µ4¦ù·,m}´g;m¦qÃÛfõ}\'&5¶Ì1Å×OZêÿÁgÏãßÁí\\Âfkr¦_³WêÃVgºÎOú`÷ÚÏ½Ov}u1\'è³cé\r?%\\?7ât&ß<Ó5&iJÃL5Åµ}N´\Z4}\nnþU4¯µÏ?»à²?Égàûâ±äüK_;&¢eyó*&¯Íù>³û(¶9ÏDºÞã?±.ïv)Íß4vCëw½CÌóv¶üÕëj|ÿöÄ}ï*ñug­Oon­ÛCÊ¡«ÊßäRÉÎ¿Ö¯\\rVóf©u(´U%¼¦ÛÙhõ9ºÚósËð¾ËÙ¬æÝÖïuºXRvÊúT¿v¶­k]¼q­´UÖnÙKy4ª6UTÑ5Únô?R8gú?¯)Ð¯uYÇIäèSèt²«2Þn¦;\ZO[8SoY¦\\¼è/\r<<Ë?¿ð©ðrxÎM^ºþªëMå7tü³\rª*_vçsÏEÕoôúÐuÔû¼ú\0õlìR,(WseE=/_~{ÔÏ¡;aë<ËÇ%Ûjæ`ÄÍGGçhÂ¦»LÍÞdÎº¢òw·Ó®&ß\ZYT¡ð3áâô÷©F¶ÃÖcQËctÑGû/¨Æ/ÉPç/;×gÉó/ÁöµeÎjÂËÏÀ¦/EÔy×YÂflÒê5w?gkEGbÉÁJY3$Áû5uÎwá<êÁö:¦=)·éJZSÚINßådÓEJFñ¿7eý½OKDYÔúAwÅK}õ>+=QCe6t|\ZLÔ:T©åaøýSË©«Ù;¯S¹Æ\'ü71v áMr^t³¹¬ÊZn,\0º2[4(Îª-06õoòÛâ`y #JE\0)$µIE$ªu¸z¹XyïìÅ=óMg}÷sZ\'ÁE×äp1\Z2µ§]Þ¾ú²f«w¥Æ÷Í÷KªÝÓu¹«/Ýlm65ÿu:rÞ«Chè®\'Ý?z­½)_Ç]O\\ïÂ§õ³&³Xèn³ÎÄ?Vëw÷<a¦$\\ÙÕÜ³Ô§R¬T,½¬-weiiÞr´|3ö>|º\"yB6ÄnìÂ())ÂÉþ.äp¡!2Üæ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 126.58, NULL, NULL, '5mlS1611224413', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'eqwe', '12.22', 'pending', '2021-01-21 04:20:13', '2021-01-21 04:20:13', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(22, 31, 'BZh91AY&SYµPþ\0,_P\0Xø?¿ü¿ÿÿú`_=Æ\01°\0(+@ØæÄÐa2dÉÁ4Ó#\0C\0M5\0Ðh4\0\r4hAÉ&FÓLLMIH\0\0\0\0\0\0\0\0AÉ&FÓLLRD$i\"4É<¦F4CÒi§¨z4Ô¹#F§ù~oÍ¹ÁÌâ¶½û³ú¬·l¥©Áà¢]qdýÞöÏ{rë¦Ë8.f\'IBJ(BP	à|)c¥I:VÞ¢Æ\n\\ÆG/PAÈ1¦×zm:±D4§×ðÆH½]6åìô[dÊÍSæüÎiqÎÔbæFsrÛ£×aÍM¸®·&¿Mø²êgÏÉõ½øhÎ£Ð®ÇcµH¥¬¢¥Yët=nwäs84MT)J*AB¥*H|Å)I:×Q\"ÄðP³ØyÜÎEÔ²,³Ò§:~O¡ÔÖ÷ú>¶,^c½íl}iÅNb÷\\ÀÄ»Q±Ã¡NÍV²ò&»Z0ÂØÕ5vP¥)/K*E,¥¤U©gh²ZùçÆ¨fã],la&åÖ]I¤©¡ªÉh«íê|Z.¥Ú,¥)æQ3V²½Tµ³ÚóZhbj¥*ÍS¢UB¨©+ç,ÅÎÞÕÁ³&¬f¨¦+bÞ«d©\rÖ¼Ý4fÑ³Ô×9EQ®ºáü3e_gE)Aq³iVFùaK	1Åk<ÜzyÊ.Ó´¸æGïHã r 6=Ë-´Q3f,Ãàb]6f*öÅ±Ì)1x»Z®¥:ÚS\'^¨VÀ0L)¸9Dµ®­f*0Çy!s/ÐB°FTAñeÕÁBÒ¨¦@,\\´E\"È°\"	kº,ÀP(ÜrqáÅkð¼Iú)Âç´É,pqÊîX¶É£óê&\\½ôÖH­ÔmXÔmLÄ¬Â¨6%K2ï­±±UZÃ\ZhKÁ-I»àtÙ>gÀ;½j æã;dtK²RÕ9BK¸\\Ô÷$¤<nç¤c»Cía\'gæ³nicê¿\\?&×ÚoM?\Zy¦5&4¥Iað¶oS=*jù*e_c?½d~ÏÏ½÷E)cÉî-~çMóçÐ¨¿\'âõ©óþòYÂvË­Þ÷Ov,%Ýnu8:æNxzÝoæyº\Z~Jñ,ú»ûUâêÇÙ#¢C7¯	¸¥¼crµ0n¥Ô¢ÑTòhtâÉààäÏ:[®_eô^Ìç®N·\'3\'Aç¯©KôçjÎ³Ó»ìÕ®³V[ÈÑQ¢ª¦IWköqSfÌìµå7£î«6æ0æ^Mêz\\ÌUf-fªaÎÌRx±ÁM­cL[¼Þ^vy~¿²§½¹Ý73xÔëïv8Óe¬³ºîcÿ,ÁÂÕ©Òê¢ê·ðõ\'iÊ§µð<4sÅ)+¥¢¢ï¼ÇÔèÉæ\\ó·.Ó7	FýµÇHÁO3&.«µÏ$Øê]QJy:ÚåÊ&\ZYT¡ï1ìîwõ©FvÁâ°ÌaSÉ¡ªd£ù/ÃÔd.\nÞî q(±\\È\\`ÄÄî£©u)f3FWQ¬iÒù1Lêg&Æ\n²c$ÀÿlÜ¦Î§ß:íqw¦Ã7)iL\r2=&yJü\ZÆ½|÷ôqw²E^´»â¥½®µ>+MQCE4où·å1©;äâR¥O+»Õ<±8³yçJ³âé4¿Êd%i@h1z[¥QÂR5&d.J¤ÕÚ²ÎY«Ã?W^Zð©öOôR/\ZTdc#	C±@KTRJ©w&Ï\rÖWyäîOdË9Ü×]\\ïQu÷#&+Zvr³Ç®¬Õjïm­á±£]dRê5s]E.fÁµúmI¡óS{í[²3diëe#ûgÂ¤äÖ¯vsmÜ^3®FÊW­Ìâ[|ìr:Côj·_Kºa\"ærS7JÍÇ8CK ràÐ:à\r]áyí@P\rcÜ¾Ä\"lZ¹\"(HZ¨\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 69.4, NULL, NULL, 'JYlb1611228510', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'eqwe', NULL, 'pending', '2021-01-21 05:28:30', '2021-01-21 05:28:30', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(23, 31, 'BZh91AY&SYzðÛ\0­ßP\0ø+ô¿ïÿúPÝd\ZÅ\0B\0\0\0\r\0\0\0\0	Bi5@\0\r@\0\0\0)(Ñ\ri4ÐC@4\0\0\0@\0\0\0D@©êb`$õ\Z3H\Zd4Á©¦ S`w_¸öÑ:>¯¯Ca¨¨Ékà1ñÙÒH>$$Ëû*ÀiBÍâØöRå&¦U[EÝ/Zµçá¦U¡­%Í0`ÔÝñ$Ác\\+uÍ¼\nð\0Î ¤v)À\Z@qÏÈºÅÚ2bíØm^\Zô,Ýk9ç!]¯lÀ!®XX¢«T`@PB+JÐE@m¬×ð+Qý²Äf5	m!°jñiÄ4&1DÊ¢c)	¦(\n­ZÒ§âXRÄjÌÛR	\Z¹Üg¬Ê eÉ ©rÄ	 PUgC²ËO7½m¡%ÜE&±Y\n££#Ì:*5)@xÔ*0¶eV¡J:®­j*ªþ\"ñH_ãùi\nÓ0«b¬Ã$§G\rM!<3XÊJ0i!@	EÄpÜ&ÜQÚ¨î`$#­ ßLÐ­\r¶C<Þù7à¥/|îiBDÄ±b\ZÅÞá¬-ÔwaHRòÔE1{Ú S,RÙdòÍzøb	ë²g5N!:þ\\å³<-Ë\ZãqÒoAEÉ\'¡MQVª0m+^9	\nSÕ¶ãæA£½O3÷=þãÌÍnRG#½{*QI¼7S³¸\ru*q[¿qÒ7°4,dhc Îó±Å#6\r\rPí1M\rKi¤`eW´ì32¼ûüFOwwwáÊÊÅTÅQ·qZÊçÔùÌÊ31I281;K!EÎñè3´y>6m¦6åÀø| ðkC>µPt\n7.yæqaAÂ=Bìæ¼CÈl±$u¹Åb!ÀÁOÌ[äÜx ðØJ£YäÖè ÏBMá:¡t8Þ%ëÚÚ9t=¼0¼x\nH¸ÖU$ì\\Iá´±J¥$Ä(J²Ä­KñÍn}îÓ3CL½C_±>+\r3°k/=±ÕaÈªPjr þ§2;ÆeH=yÕ*5 sFhí´ÝNØC;ÚY¬)2Ìd(:+Æqfþî=ï5Çtñ+¦1 f$bCi\0¡\\Zt66qWr\\ÅUäbè¹¡#(¡B!rÖÃ¿«x:MÌa4ÎÅc39á(a`.¶*P,Úüû°¾£=¼Ìg¡ÕqJ.¸¢8÷æd+o¹¢\róiïjÄjè9¼ö¼¼ÈÐPä?ñw$S	¯\r¸ ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '2Lek1611464932', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-23 23:08:52', '2021-01-23 23:08:52', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0, '0', NULL),
(24, 31, 'BZh91AY&SY<äð\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU (@@*ª`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡L`Á1\0À&	£!¡LI	¨E<£ÔÞ£SCG¢(õ0m! Ð*Hh aO\Z*~§¡=CzmOÊl©úK\Zö~y¶·¸k`ÈüÙçÑxøºË`z¡©°âw(¥×\\Y>Þm®Öo]ÖÚ*JT¥eJJÿ ø²jlbY#B`ÎLÌJ/QûF¯KYµä$Ë` ÷	ËpðlÙ°Óàá¥±Ü6eÐ§³þX;\ZréNÎp®\\½ÍÛ¡»\r;ºoø¶\nCÎ?§£îR®ÄÄ¥)dß4(aÛ(³soËQc4ÁóYvêXÕÄÄóiÏ59ÏÌêsÉ½²Rm)üãÕj%ûÇjKY)¤¥K,³ÖæzÝK½©\r%)(*B(!ª?a{%É>ñ\"É$ã>BÊ|ÏÚu\'cæ{.Dæ;J,²E\'Bwàìk½ø½«Y2QÖÀ§{Öb8çÿ,Í¼ÓRNÁÀìc1LXâéà`?¬Óìü±¸#Éè(Ò°¡²Ùé¤4aèÑ§\r1 ó¼;NíJRâéII©Ò÷,ÃcP2\"Í©iÌÒÑC¬£º&°E< Ò°JnìôÜ:&Xz&Á\rrÍ«,¦Òà],NELx#åÀR1»³§pkb¥ÚÖRÙµªnQuPrG}J\0`h7zl,8rA\r-¸ÅØî\Z[!Ò`1\r;·núx;ç.ÆB¢!è½lØ<W³gàýåÏ8e \'GÈìöH$`:ÙìÝ»lGFZ=¥»ÃáãØ¹ÃÀ\\(¡Àx#gÌ.Øó;`è7n83hKJG¿)ª[	XMs©SÌK2¼0´©¼Âjj,m,XXþ&5,bj2.8Æl¤Ý(ºæ¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrÖÆÊSÙ\'Lé¢:aT¨`h)Bí û¢Ð\"F\nb1Ø)ÂÈ`,6BÉv°$HEaD!¡z\ZÀQ)xØ*i$`#¸w½=ãAÕ(8U÷é#Hy náÈå¸x:lL.NZxpàp]»FpòÜlPåËAÈÄ9`òäò;¶l;¹rÙ6îè!u»Ëæ`;\Zf7»gw!îî\\8x°vv94pÙÆÈ`nìÒd_QZåÌJT,íY?ÛÌ\\»ðíºïÀñ>ö/ÎSÍ÷I¾\'ÉâØ~ìZ2ë88&±ï¼»ñ)ÝçÿúîsÞ\\Vnû]Ãx¢çâ:ÊÉ8å< ìý0ÄL0`BBÌÁÂ[7âè ÉzÔh~ÅOÍºc?áïY\'Ñü¬ð?º¢K(§$ÿ%¥÷Há2Ùy÷7úÃ°ïñÈ±ºOD.Zz	.u§Fò£$á#½Ô¸ìw<æLMSü*vÇRn]áæcûì`cÎr¢jdIÑ?Âs?±¡Êu\'#rU%IÂ§ÖfxI74i©l¥Ô¡i%J\r¥èç:Ñ®k3Sì8S9Å#©º\\ËÍKËÁ¨üÍw+±Ê%$ëG©ë)/=6é»­ÆÅ\rX°îlB¶\r½ðs¶åJ&Ô©R¡&Øk>Ä¹GèrÖk2ÑixQµ#òåXÒp0Äm(õØªÌM!üi±s.v°(ØT×*c)¶sËÍÈ¼§dë,ùO¡Rn:Ù¹Ý74OÐñ<¥áªx§$£TÊl%d¹ÀýÖbdxÊ*\Z\\ò,0*^}^Ô;N¡ù\"´óQÉQ%¡S3­)RJ;	é÷{é\'£GÙ3:ö`°nèîãuÃéåÝÃ²·>fLM£õ\Z5½NHGÁ¸ë$X0<Ï¼>Spþ°¢	)ë1Úy;çé,40k21	¨oIElBÅÌÐÂ`P¾åHâæÒìg,ò_Yú310èf`Y/?ÁF6Ü¢zY­KÃS)råLe\'ÕÉdg­&E,Ldn8kuæt«{(0Èj¤7ÄØ¥¤£TÊIMgÿFÂL\n?SI&ªnp{õ¤Xã>ãÐ|ÒÓ¨§Íê`O	RCBåC|þ^MóT2Û\'!7¬ZT:¿]S\'#7|,u§¨Ù0³øk0xÒò4à,¼\\	ê0Hh.GQ4=E:,hwLçÛ;æsTíRª{¤|QUïZBED D\"F+ ªHZTE\nU%Î3YÙ6Ky&\"\'ÈçHxîîáÐ´¨2`³±\ZÆLKKC¹èÍçtë,Éð?\0rðÙNCcwu`X7;ÒÁBã3]çL´Å;Æ¤4&©øè=>(è2ôÇ±¸úÄ?­3III_	¨ì5ÍïÑZ¡ÈûØÈgä-6ÃÓÓÅÔc#äh´ëK²ã	c¬Älg5(ÑÔ³yÁN\nKÊ1Ô^\\«`¾§ é¥=¡±\'Å¶H|!âüÒ¼§Û)*PFLX²ñw$S	ÎO\0', 'Cash On Delivery', 'shipto', 'Azampur', '5', 738.8, NULL, NULL, 'Lx511611661761', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-26 05:49:22', '2021-01-26 05:49:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(25, 31, 'BZh91AY&SYlW\0\nÔ_PXø?þ¿ÿÿú`\n>$B ¥\0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFDhHza\0h\0\0Ñ¦*\"	 Ó\ny&M&ÙOPõ=M¡M©êj)´SsÞÕþè²]©øUü/Ëõ_¿i¸ÔØ`Óñ0N{ð\rZI6\nÐ XNMÇölÙ°Óü8hN·Ý\nz;³§ÖåÃMÐÔíèÝº8pÓÃ§ÐÐòt0h49\0÷ø|QUÀGÑáÑz®î\0éóîÒê,/Âë½OSWè»îKå¹£ºóñ¥SèUèÉû/È¿eö¯RéXXG2êt,¯#+WÔ¿&\rKjûW=±À4>1°¶{á/A½è@S¥µæÐ|6åêiÓEÛ1­u­bæ_kîo|Zµj×«V­qHò°ãXzÕe.Ðºp¨1¬¹»·µ¸t#:<nl4q¢í	 64)HÆî<GÙ±ØÑæ4R6\0`ÙL\r¼6CnÇiÀ0i`!²Q!¶vø/PÜró¥Æí×cH7+§nîxÏPräc±Ý°HÀní³fÍØ}1§#c¦Î[½¤Áî\Z@³Í>£CcfÍÝ#&FNÃSS&\rÆMãi \0°R8^6n¬ï^X0pÜ!·lÝÛc§.Ûh]¸°4ÙÔráÐ8BèRtåºSfw.8Ë°`7lÝC»0MÑ¶ÛjqFÈÙ}ÑûÑygØV¢ÄXÁÐÒÛ!BóE¡ÓALF0ÁN0(hl0ö!#BW1¥Ò1¢\ZhE¦ Æ\0`G´;£Ø4õÒÂ\' §[g¹²·G-Ã±Ód¸písÜÜlÙÛ§\\mÆÁnZcæÁæå§ðÝ°ðåËd0ØcÃ¡¸ÝåY´Ó¦áÍáááËäò°vó9#ÉÆÐÀÝÛNFÚ±0áhm´bÀË{\'zý½§Þ}[È{Þzñ}mçÁÆ{¾§Ë7¨è/»n³ðwº\r±ÝæîØø¿tçüqö½é³tGTo½Ö|l±&Ëm·YºÈe5?Éö]v·êax/yËÅºÖ2zOqøâw+¢43uºõÛ\rcC©:Wbå°^@æ¹µm]sÅp{Í%÷¯©m¹L.ÛÔ®»Ð².Ò·çQÂå.{5Ó¾®Cù8v*Åã/ðºÓ=\'!âÜz=\Z`a#û\0öÖñcä6{ße¦:c§½ö¼!´29ÁóYÈ8cäX±b6#Â8Ña{NÊp6¬FÐÒÐÆMÖ18£Ct~èY8Lr:\\,^6ÃòZÜ©¥¶î»÷~¦+¥yV«ï^ué´oì8ì[n+ÆÐÐÔôãpä<×òY\Z´¾¤rÝñöò¯¦xÛÎÙa+4·¯¦L\'¢óÛM.Òæ,KSÈ|çAáz°YnÅæòtáÒ·ðX9Kâ[Ë£òy£æX°±u]§mÐºCÙedaMnÛæ=»L¬\römÎág`6bmØ\r8V¤6iy­\r¾552´4Í»&SHÒÉKA¥r-¦K`Ù\'Î\Z²_kçQø²u_29nº¹%ÁºØ[ÏÜiyãÚÄ`þ§\\W¶ê³xßí6ÑíGÅbüNãìh^,ÓE¢þ-ç{¶ÖøÝbOK¤¹yr_<au·ÜçYæµ·Ù#îÂ86Y­#BÍÃ1é1-Çi&/.MÇÍs}÷Útøû,~$0 A|´PIL\nDEbÅD¡Æ*06$ÀÀÅhtë³VË¦NÔl}ºÜr#4Y3oM*ÔÔÍù;#Cð»,Y\rî9Mv±GtZ0h ågÔiÁàZaÅE¾r»%°Ôoð/$Ýs¬/eÜo¸\\5c6èìm]f·û1y®£ÞÑOó-FÊãX±vX\')ÀÉßk³[ëG¦ëwÔw¿qEéX°1`³`%\'þ.äp¡ Ø®/', 'Cash On Delivery', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'w2hZ1611732586', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:29:46', '2021-01-27 01:29:46', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(26, 31, 'BZh91AY&SYgú\n\0ê_P\0Xø?ÿü¿ÿÿú`\r?Â(IU¤\0(¡EPRH(¡Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	10 @P=£jcHÐz2§¨ÓM\0TÈ#I&)è53SÔÂzõ!§ÙL14\'èüO$ònpr9VÁø3>Ïñð?UÀíN¦ÓÞ¢]qdù²jòm]tÕgÝmÉïYIab¤¥JQ)Qd¤©Oú9J&ÆÖ%4&	ÓæÈÌÀÄ¢õ©Dv4ÔÚòe°P{Bå¸y6lØiòpÒØÎ1ºôýÌÆÎ:cÛ§-8Ch1ËàÝº¸pÓ»§ïhxt0(49:ú}d%!\nÝÄ`õ0(èçÈ±j,qM\'ì|f6,lô1<sÍ÷;à7\\åÎn\r²qOã»Tõî;êE-d¤R,²Î×;Øézw+b\Z(JR@ ©¢0\"¨ÿà Â\nîK}BEIÊ|E,ù£Úu\'¥ò=Ç\'2s+,ÍIÐ££õ»Z^ü=«,(ë`SÅÁì1³þ,ÍÀ¦Å:W)³ÒÊd12fL	ÌÈp0ÙúÇ\0lEà#ÉðêXØÙAéí¤0aì£-ÚcAçH\\ð=YJJLÞw¹f\Z°`Ás¨H³jZD³4¤´EPÞå(æ.¨¨À0iX%7v{nËl°\Z´våSqICsKeC96#\' t4	HÆÍÎÜ<¶£V\n]ªÊRVJÔRND£jú4À4ÒnöÙXpv<a¸ÅØð\Z[!Ò`1\r;·nüÁÆMÍG#ÁsFB¢!ì¶\"é°apÓÎyÃ.<Ã éé ëg¦íÛ´}E¼CâãÑs¸QH(ª^k/0s¬Ì\'$»¸Ñ¸4ÀÓf®Ë¼>\rFl*TÂ^a667,,n10,Q°¹caqÈ\\´3e&ùEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0±}õßOÀOxt@Q\r(]²lZ$HÓALF0[8XÀü@Xl7#f!#@VdC4S/KP`A!0-10Dc7ò·Äh;¥\n Ð°³æiÀÙÃËpñtØ<°97ió8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00âØ(Ó5½Û;¹8wwrä!ÃÀÝ³±É£Î6Cwf®HYs&;Oöò.úû®»åï=GÔÀÅïYç6<ÈÊN>/Siú±hÊ{¬ä< kî¼»ì)Ýç­ôïsï6Ý[¥þ×qçà(¹öÞ²¥ÃïNYyËbl£ñ¡\"a[nÖÖé É{h~OÁ¾c?é÷,æþxÝQE%S~E¥÷Èã2éyõ7ùié<\"|2,oÑ§¾O|ÄÂ:Ó£Qqàê\\zC¡Ñ9Ódÿ\nÑÊT×xùÄþÇÖç}¬bYÏ1Iã:fÆD3ë,\'ACû\Zc¨å÷ÆABù£ÿ]È¯aÐ:\r1u(ZIRqz:´k533cè91äÔß.KÍKÍËÁ°ü\r£±î	îãô	ò±ý!Ï¥ÓLtÇNÉá0èY,È¹k®6)mî{Ý\rÆ²¥rT©PÉ\r³t5>¹GâsÔÔÊv>kKÂÉ*Æâ^#qG°àÅVbiØúM«t47¸@ä#Ã0ÀtùÛ=e2ü/ ³ã>eI¼é?F÷|ÞÑ?Ôzåá²x®iG,©ÛJ>sú¬ÄÈõJ*\Z\'\\õ/?wµã¨}è£ã\'°QOØ=Ä`°`ÐzX;ÏÙ2>çØNAGD¢ft<MÅÃwG7®o.î¸@üApÆ~ãAf®×4#ÞÞu¤¤£z\rÓ9ÌÐ¨ÿÒQER?¡ôNãÖðGad¡¤´ÉñCS# J	÷°4VÔ,Qâ¼Í&ïTH^n.Æy§­}OÅ7Ã3Éyþ³s«ÒX£Cc-áýØÉÎIÅFq\Z¤À¨¥àÍË\r]Gå<êÀã\'z\'jòBÃg*Ãõ¿Ø.üeÉùI4S{¼ñiESù»ä´öE>NÖñ(4.Y48Oáëp!¨é9ÁbÒ¡ÒÅùì8¼!c¨´Ù8FÙn³SÖ¤M¤\r8/&|ÆÃ0)\rÀ°\'¬TMÒÅ64;æsé9æ;ªé¸X @é`R+,@%DVATA)(ET9MOLÛ,<òòLgÄ=,áØi4ÒZH{TKQ¨ÂIihw½q¹Àïr¥*TÕ=&Ù¬¼¦ÆI%TFH¹Bã3[Ï<´Å<¤4&Éö)¼÷-;ÐdíDãó÷ÄJ_1»\r{æÃÒk6ÎCÂDMUgÔÆC8g!iº-9L]F2>&N¹ÒyÞg%³µØ£GRÎ8©/*a*Åì^\\«A|!OaÛJ}A°_ÁÒÃâ,¡SðJõÏ¦\nRT¡RiB®¼ñw$S	p_  ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, '5DlJ1611732612', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:30:12', '2021-01-27 01:30:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(27, 31, 'BZh91AY&SY*ëÿ±\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0HD$Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"I©²?zèPÉÔ=L#ILSbõ¦ÔÓ#G¦hFÔºHì~%~tHKHö	ôç¸;NMnÜïw!m?Ròn`ü×]rÏ%¤âÉK8?Ea£3Fk0Ú¹0ÂlÉÍ?UÍ\n-4LÎ£ÃÖ¥`ÄÁÅªs);YËIÐê4~¯ÙgAGûv=øw·¹88îxKx\0Që#ÉÓæzNÌûÐQDäuº;<K3É¨£ÌÈ;Y=Æc%IÄ©ö*#µ(ÛÖQ£6õ0²:ÎÃYÚq4}o5ÞÃ1RDêTMéPh`°s9¡¹*(¤¤TjæÄâ¦jÉF¡t±-*`£EI¢jZIi*.ÃfMËìjÔÔ²ô¡rR#UjÙtÙ©YA¤÷¥UB)3Yªí^EçMå\"Ñ¡h5Q\Z´e<ì2*hhÑRR\Z.ºìø63L¥©dÍ52N!J*\\ØYfg`ÞD,³#Ö\ZzÜ8im´äæìlw¶ÐÐd,ÀNma5a)«°Ñ¦¬Ú¯45L0.Ò²h2L%\r°)eÖ\\aFLQC¦\ZL+)tÑ3fÄÙ2Lióë\'ZDJQ¤aABà±¥aÛÑRÚ2HFÂAC!jâ) ÁE*DEB©N§7BîVH>R ä»EÒ¨ÕFLNl×16l§S©ë³g¹½¸¼©#{5¦òõÙ¬ÞlÂæÌÙ®.Sf(f¤º4,Íe17¶lÙ9¹¸Â[Ù772Õ20ÕfeàÐ·apDxw­ë|gìs½äAµöÄ?£égóÆ|]îS4îìÃþ¿&áÎkÙ)öÉgæ¾õ©d¤¢Eqðúæ=¬Hf`iü_cØöü^DÜ6ÑÐõ§Y·ï\rXdÄNNGÜfv%FçÆ^óú,LÜeS¯Y`é=æ³ëG5û³á)ªMÓzJ¼~l6NÆsÙ9N©ÂÍeÖTÉ&gæl9.R>©?=²»+)¢;L6MS9ÍMGÍ÷7M¡¸¥)2&æäÚ|K}Ó¤ôMÎÀ¶Ëe9wk;ncÜ`§hS9ða¡£\'ç0s-\'KýëxzÖ{WL=S¾oS7RÅ¥åæ\'´]¤Ñ8NçÖY1)w8¼Þ(úG¸I<NøQ*BÈh{TòÇ©»¼qð0ð|NÖ£m0DÔÐÌÈÌL1ÿÛuK¿¨æòv§J)ÖïºR?u%I0ïxOcÉÈ}RÅ&«.=DÄ»PºãRTÑ,¼»k.îe*d¦4ÝÓ\0Ãce0²;NPØÐBø¶ÑÜÀ>®¢î8©Î&ESFCYâüeÞI³5%O¾l¢Ïäå;¦q-9Îââ´ïZãÁJË>ÙÅäàÑ2RNcÂå)Gd³GÙ=5ZTF96\ZhÆ©f÷ÚiúsxcÂfuâCÒhÆ	ùP2Q\ZR$HÄHÄZ$ H(ÑdKw:<MNÈÞ/I2OLÕ£IÀAif²]Y>ôçy¾x;Ô´ØôÎMË´jÖ*C|åQdÎn®íYñ¦É°Ôá)ß¦XoR{ÒhæQðzf­ÎÉ\'x´L&Í¾aÛ0ý%;sâ¼äwL£yJwªN3t´¤ÕøJ0ó\'µàô|CÊ0QP}ÜN$\nºÿì@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 210, NULL, NULL, 'dN7E1611733239', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 01:40:39', '2021-01-27 01:40:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(28, 31, 'BZh91AY&SY¾£	\0_P\0Xø;Kü¿ÿÿú`¿}\n\0**QTJ9¦&\0\0\0\0\0	4ÄÀ``\0\00æ\0L\0L\0`\0&Ó\0		\0L\0ÁDHÊySc!©& dñ\Z)ä& T@QhÓIèDÉµ4hL4Òè@Üþoò¥?%ZBXÕäR¼JâpYÅ»@þØ®ï£Áy\rRò]Êë®³óei:2Éô²Î÷ä£s\r5jtjÑfÎ¬0³2³v¯ø³4áªôX¼¼Ñàõ|³N\Z:8J¶]_¡»[Ø§ÝCænõ>®ÝÌ5pÎ2û¹XoAç\n|Í§æi>·Ôõ)IÕÙG¥gç½÷´4{ÝVQO­å¥*4Xè¨óTG)%¤g+LÑ\\èºÛSU×RÏSÅö½>§Ö²ü­îR$âT\Z²°¥««²òu©¥E*R*NÌ·4ZYªJg+ÐåihT&Åi*Ùì¸gGÀåÃz©rR#påuåuæì¤Í*QðZ(MVY\nP¤­TÑv­ÝÎö\Z0¡hÕhX=/laeÜ5eRRv®»+}­Û>E6 Ø¤Y³fTì§¡¤áàÃ\ráeH2ÙuÛ²~Ì±Ûe¦¥&»)rÆcChiÉ»vâÙ§3aØÙ¤YÙ¤wÓ{F3ªi7e)»°Ñ ¦í¯56L0®Ö2Ôe0L5hÂ]Òì0²ã\r\Z²É4l(atÃQc3\nÌºj4bnL¾È~rCÚT6Bê¤ *¢¨[YZ#ð´X¥²ÒÊ(bY*0Kl(d,\réRÂ ÁBËD,©\n\"RRv]º»t´ÜI\'á*UÑu°u¦í4be¢æ&íÔô.ô)³,Õ¯\r²Ä¨9j´ä£´Y±»´Y¢¬ºÍÖjÊË,*3Rûµ_UX¦X®Ý»uÚNQ³\\8gdÁË3YhËFEâs¯Éì6=ç;ävÞðS¬õ£¥Ô?ÎF%x\\NSÒá­Ä=ÆE#ú(ô©2¡J)DÑªÎ²ÒbxOÔ\\ó`vì\Z4Ä¸Ó¤7?7¹òñÖ7xÏ|KÏL2:<ì©)âN®§øjø)ì:JÆZJò7f$<*ÁÖ}§Iá8wõú´äwJl\'*JE*G\'sû©àõIËõ¶éÚxMlØ¢8	ï3°ãæPÒÑ\'¹e5SW±ïa®åM&©cUÛ·<\\MÔ¤pR`8MçÄº|ë=3¡I³bÌ§ÆÎÇ¥³ú¡Np¦q1ÖÃ\"Ìaslf6õbk=¥Ã´å=ë¦ÙÞò©£ÐX§µyy1>qv³Tî·æPÝ°xaä?a£Õé!W àv¡¤,ÐÝE(T÷OËIwï*x16>ç;Nó6K4v>­cðluDü^3Ì¨¢)ÃGg¢ºË$ÃÉç=®óÊX¤ÕeÏq1.Ô.¤î\\Ô5e^]Êm.ñfTÊl//f¶`l6)êl2ÐïRÌ-\rÓ¬¡÷NQÕì\'/q\n²:¼Çssr1 Ç9ØÀ2;MeÇ©äs#N©Ù±OÒyO¥w¤Ò]sá;Ü´F(ªNÉK<ÒÍ]ÓÂzXn´*:â91À¤°XhË&44¦{)ÅÚh=æã Ò\0|1Ö)Ð0b\"F Æ*PA!@,£\"K>Ç\'i ã(L\rbò>y³V³¸Y¥ItbbYdýÞG[ÎcÍä¥¡Üù\'GµlÚ*CÒ-(¢É¤âqwÌÏiºn6;¥<¡ÀR¾±q5ò9æÞ&Ð)ÆÚ:àÚæ<Øn8ÚWÈÚXn¾.ñu<ÕÓ¬æZRpÂIFãø¾/yôQéê>e\'þ.äp¡!}G*', 'Cash On Delivery', 'shipto', 'Azampur', '4', 1540, NULL, NULL, 'lxJf1611745822', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 05:10:22', '2021-01-27 05:10:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '132', NULL),
(29, 31, 'BZh91AY&SYèUÇ¢\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U¤\0(ET*D(¨æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD L§©M4ÓG©\Z!£Òz&F\n h&¦¦jzS¤4ò2âF\"Fýâ-­î\'\ZØ2?gÀ¹ó^>î²ØhDél8Ê)u×O&·bë¦µ×u6§½e%)D¤YE¥?ÆP|561,¡0NÌç&Ff%¨ýÊ#­¦³kÈIÁAìáàÙ³a§ÁÃKb;8lÆèSÙö°w:péN´á\r Ç/svènáÃNîÁ¡áÐÀ Ðä<Äúë­J¦)K&éªN$¡l¢Í­k¢ÇÒ\'Éfi»RÆ¯+Å§4Ôîs>3¦qÎG&öÉI´§õMªxì;ªE-d¤R,²Ï[ët<G{R\Z(JQARD`EQÿàAmKz$ø(Yò<aÒí8¹ó),2YdþÊNï±Ø×{ñ{;Ù2Qå`S½½ë1\'ýYy5¦¥:)Âb£µÅ1bdK¦NV$Å(ìçµ8±\Z&ò¦ÇRÄÒQ0D^Êg¦Á¢·i=v÷ve7íY¶0¡e	lKHfªeÑ5,	ßSwg¦áÑ°(ý3`Æ¶r®Ú²Êm)(cBéiiPä\\¡ç%\n\Z ¸Ð%#7;8wKÙÁ£.Ñe)I±£YSrêIÄÁY#fMÞ!Ë\rØ9\"Â7»ÃKd !bQ!±³gp»wÒ,dàØàìr9º2¥ÉDà-±x ¯fÉÂpzO0eÈG£ÔvÏdF­ÍÛ¸»£-QnðýÜ{8ià.Y¥Z¥æ¹y»dô`Þ\\Å59Á¦\0>»5v]á÷Nü\Z´2´©¼ÂhÐ±¸±acqbEËÆl¤Ý(»\'¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0©|ê??Aè£!\Z\ZP»d(>È´H¦`¶\np±åÃa¸Ä!1	\Z\"°\"¢¡zZÀQ)hÙ1$`#¸w½=ãAÕ(8UöéÌ\r9·÷MÃÃvÛ´i×-ÆÁ\\´C.IO#»fÃ»-Ãaîs¦rÃÁFÏlðä0áááËïvÎÇ&8Ù\rÝr6¹TV¹s&;VOøñ.û;n»åï<S½gÔñ}fRo¤Éñx6»§¶Î#Æ	÷=×}¥#Ù¡ô¯þÝÎc1ÛËèÂ-Ðÿ¸so\\ûCgQRá÷§¼ãðÁô!\"a[o-ítdÉ=j4?b§àÝ1ÁîY\'Íý,ï?Ê¢K(§$ýKîÂe\r³óÔTLÞ\'ê}ÇaçðÈ±ºO,.Zy|ù.u\'&ò£$á#Îé\\v;s&&©ùªvÇRn]ßâcò>Ç3î`cÎró¢jdIÑ>ÂÂs?#Cé6NFäªJ,O¤Ìïn*iÓSÙK©BÒJKÑÎu#\\Ö:&f§ â9Lçér^k/5/,g£ð65Ü®Ç*b`©SÖR^yfrÒ¦ltìü-Ýn6(hÈX*Åsb°n¹ïs¶åJ&Ô©R¡&Øk=	rÄä)¬Öe:ß5¥áFÔKËcIÀÂp/´£Öob«14ò}FÅÌ¹ÛáxcÏ³ÐS)Ù:>3æTönwMÍñ<L¼5NóÌäqÊMd£Ñ.p?uæÕ=%KÏ£ØiÂT>ôPö¯È(§ÂìD`°`Ð{£	$£¸ïs#Üó±dâsÈôLÎçxì\rÝÀÜn¸b<»¸vVáñ\rF3è4ky{qÔ0J÷³§Èn~L(B\n}Þ{OKÏ8²ÉCIiÞ³# Jù÷°4VÄ,QÞ¼Í&îT(^m.ÆrÏJúÏÅ7C3ÉyùaymÊ\'uÔ±52(ÎG8ãåñ in!bc$Àø3qÃ[¤ý\'XÚqAîCT÷Ä;ä,ÎUû_´.üHeÉÔÒI¤é%ç|Þâ<Æi8Ï¬òß$¥§°é)òy¾T¢PÐ¹dÐß?§¥¾jR¢;dä&õJCëªsÄàdfóÂÇIiªp:MÛ?³â¤B=&Ã0)\rÀ°¢hy*tXÐîÏªyæsTíR£ëSÚ, Iô°)BD D\"F+ ªH ÄH$[p©å <íÃâ­\\Ë8uM&äÅåæÄkI21--çN7ÓªT°c%JÓ°Ù5ËÈØji4QuIhâ).305Þy%¦)ç&Ð§Ú¦ãÖSèGA8G¦=-Çèð¾&ìJJ÷ÍGa®lG,Mj#ÔÆC8g!i¶q-8Ì]&2>&N©ÐyÏKF#c9©FÎ\npR^TÂT%¨¼¹VÁ|!OAÓJ}A¨_Å¶H|E!àü½3ê(T¡¦,Y?1w$S	\\z ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'QxIt1611749529', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:12:09', '2021-01-27 06:12:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(30, 31, 'BZh91AY&SYèUÇ¢\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U¤\0(ET*D(¨æ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD L§©M4ÓG©\Z!£Òz&F\n h&¦¦jzS¤4ò2âF\"Fýâ-­î\'\ZØ2?gÀ¹ó^>î²ØhDél8Ê)u×O&·bë¦µ×u6§½e%)D¤YE¥?ÆP|561,¡0NÌç&Ff%¨ýÊ#­¦³kÈIÁAìáàÙ³a§ÁÃKb;8lÆèSÙö°w:péN´á\r Ç/svènáÃNîÁ¡áÐÀ Ðä<Äúë­J¦)K&éªN$¡l¢Í­k¢ÇÒ\'Éfi»RÆ¯+Å§4Ôîs>3¦qÎG&öÉI´§õMªxì;ªE-d¤R,²Ï[ët<G{R\Z(JQARD`EQÿàAmKz$ø(Yò<aÒí8¹ó),2YdþÊNï±Ø×{ñ{;Ù2Qå`S½½ë1\'ýYy5¦¥:)Âb£µÅ1bdK¦NV$Å(ìçµ8±\Z&ò¦ÇRÄÒQ0D^Êg¦Á¢·i=v÷ve7íY¶0¡e	lKHfªeÑ5,	ßSwg¦áÑ°(ý3`Æ¶r®Ú²Êm)(cBéiiPä\\¡ç%\n\Z ¸Ð%#7;8wKÙÁ£.Ñe)I±£YSrêIÄÁY#fMÞ!Ë\rØ9\"Â7»ÃKd !bQ!±³gp»wÒ,dàØàìr9º2¥ÉDà-±x ¯fÉÂpzO0eÈG£ÔvÏdF­ÍÛ¸»£-QnðýÜ{8ià.Y¥Z¥æ¹y»dô`Þ\\Å59Á¦\0>»5v]á÷Nü\Z´2´©¼ÂhÐ±¸±acqbEËÆl¤Ý(»\'¹a¸+c»gT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0©|ê??Aè£!\Z\ZP»d(>È´H¦`¶\np±åÃa¸Ä!1	\Z\"°\"¢¡zZÀQ)hÙ1$`#¸w½=ãAÕ(8UöéÌ\r9·÷MÃÃvÛ´i×-ÆÁ\\´C.IO#»fÃ»-Ãaîs¦rÃÁFÏlðä0áááËïvÎÇ&8Ù\rÝr6¹TV¹s&;VOøñ.û;n»åï<S½gÔñ}fRo¤Éñx6»§¶Î#Æ	÷=×}¥#Ù¡ô¯þÝÎc1ÛËèÂ-Ðÿ¸so\\ûCgQRá÷§¼ãðÁô!\"a[o-ítdÉ=j4?b§àÝ1ÁîY\'Íý,ï?Ê¢K(§$ýKîÂe\r³óÔTLÞ\'ê}ÇaçðÈ±ºO,.Zy|ù.u\'&ò£$á#Îé\\v;s&&©ùªvÇRn]ßâcò>Ç3î`cÎró¢jdIÑ>ÂÂs?#Cé6NFäªJ,O¤Ìïn*iÓSÙK©BÒJKÑÎu#\\Ö:&f§ â9Lçér^k/5/,g£ð65Ü®Ç*b`©SÖR^yfrÒ¦ltìü-Ýn6(hÈX*Åsb°n¹ïs¶åJ&Ô©R¡&Øk=	rÄä)¬Öe:ß5¥áFÔKËcIÀÂp/´£Öob«14ò}FÅÌ¹ÛáxcÏ³ÐS)Ù:>3æTönwMÍñ<L¼5NóÌäqÊMd£Ñ.p?uæÕ=%KÏ£ØiÂT>ôPö¯È(§ÂìD`°`Ð{£	$£¸ïs#Üó±dâsÈôLÎçxì\rÝÀÜn¸b<»¸vVáñ\rF3è4ky{qÔ0J÷³§Èn~L(B\n}Þ{OKÏ8²ÉCIiÞ³# Jù÷°4VÄ,QÞ¼Í&îT(^m.ÆrÏJúÏÅ7C3ÉyùaymÊ\'uÔ±52(ÎG8ãåñ in!bc$Àø3qÃ[¤ý\'XÚqAîCT÷Ä;ä,ÎUû_´.üHeÉÔÒI¤é%ç|Þâ<Æi8Ï¬òß$¥§°é)òy¾T¢PÐ¹dÐß?§¥¾jR¢;dä&õJCëªsÄàdfóÂÇIiªp:MÛ?³â¤B=&Ã0)\rÀ°¢hy*tXÐîÏªyæsTíR£ëSÚ, Iô°)BD D\"F+ ªH ÄH$[p©å <íÃâ­\\Ë8uM&äÅåæÄkI21--çN7ÓªT°c%JÓ°Ù5ËÈØji4QuIhâ).305Þy%¦)ç&Ð§Ú¦ãÖSèGA8G¦=-Çèð¾&ìJJ÷ÍGa®lG,Mj#ÔÆC8g!i¶q-8Ì]&2>&N©ÐyÏKF#c9©FÎ\npR^TÂT%¨¼¹VÁ|!OAÓJ}A¨_Å¶H|E!àü½3ê(T¡¦,Y?1w$S	\\z ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'BaAN1611749703', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:15:03', '2021-01-27 06:15:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(31, 31, 'BZh91AY&SY;8x\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU¤\0*(QT¡R\n(s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"HM$ô2\Zz#ÔL \Z£M4RD@&&L§¦¡Ôõ0¦ÔSe2\\HÄHÐ«ò<Éµ½Èà¶Åð.|×û,¶d\"t¶åºë\'Í[É±uÓZÍëºSÞ²ÂÅIJ¢R,¢ÉIRôp(>HÐ\'Ffs#3Ô~ÅÖÓYµä$Ë` ÷	Ëpó6lØió8ilGg\rÝ\nz~ÖãgN1íÓ!´åðnÝ\rÜ8iÝÓ÷4<:\Z OÕÖ¥]JRÉ¾i\'¡t¢ÍÍ¼W-ETÒ~çÉfiÝ©cWcÉ§DÔâç|gTá9\\»Û%&ÒÎ=V©â_´íw)µJJT²Ë>Ç3ìt<^wö¤4P£\0¤\"À\"£ÿ,Ú$õI\'â,¡gÈñ?¡ÒÈúNTæ.¤²PÅeìRs¨çæzÝw¾ÿjç&J:ðo`{G	ÿfÞMi©NÊ`âzXÌS&D¸ºdó1ü¦|pÄ_\0\'ÂP/ãXØÙAéí¤0aì£-ÚcAèP\\ðvã3..¼ïrÌ5°`Ás(H³RZD³4¤´EPÜàQÊ]X\"À0iX%7v{nËl¸×,Ú²Êm)(aY.\'*ËMu(ÁIb	ÀR1³s§m¨òhÁK´YJRlhÖTÜ¤ºr%0FïÎPØ1i¤Ýí²ËG\0`NH0Øbèð\Z[!Ò`1\r6vK·}ÆNMG#ÁsFB¢!ì¶\"é³Âp~sÐràäìöOI[=7nâî´}%¼CããÑsábjQ5ª^kK¹k¢Ì[ÌG)sci$£.Í]y}&Á£6C*a/06(Ô\\±¨È¸Ü\\´3e&éEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0µ~àO¼O|t@Q\r(]²tZ$HÓALF0[8XÀü\0Xl7#f!#@VdC4S/KP`A!0-10Dc7óÛâ4ÒPOpAØYòiÀÙÃËpñtØ<Ø´ù8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00´7v\n4Îx»g!Ü¹pð7`ììrhá³ÀÝÙ§#k×.dÂR¡gjÉþÞBåÞ¾Û®ù{ÏQõ°1{ÖyÍO\'Ôe&úL©°ý´e=ÖrPL¹÷Þ]önsÅôîsß6á[¡þ×qæÞ(¹öÎ¢¥ÃðNó9I©þÂB(Pni»Z?[ &IìQ¡úe?éÿ§Þ²OùYëàDó¿È)·jy9C§gØ&o#ô>ãÒwÄødXÝ\'¢-;|ù.u\'&ò£$ã#½Ò¸ô;s&&©ùªvÇ¤Ü»ÃÈÆ\'ö=ngÜÀÆ)ó¢jdIÑ=eç(cCÌt¾s±`P¾Qÿ®Ö¯aÐ:\r1u(ZIRiz9Î¤kÇDÌÔúCÌg9$t·KóYy©yc85°p,{ÇÄ{Ã¸Á}\"|¬HA³êtÓ1ÓªwÌ&z%ÖK2.Zë¦J[Q¡ûÞ÷;i®T¢mJ*!²m³èK~G)Mf³)Öù­/\n6¤b^\\«\ZN&x¥Ã{Y¤?sé6.eÎÐPÜ0ápÃÓèlö%Ëñ>Ïù&ã ý[ÓsDüQã/\rSÀìrÊ8JMd£è8²ÌLT¢¡y¡ âuOÃ¥çðö¡ÚqÁ|dö\n)ñ», tVãÂuÌ½ÞÆuQÏ#èÏipÝÑà\rÆë!ÛË»en>ðÐdÀÚ1ÀÐY­Øå{Û¡TsOA¶g9Z_úRÊ(ªRGô1Úx»çÖY(i-2`<Ödc4	Pß?Ø<¡À¡}ÊÉÍ¥ØÏ4ñ_Yù310èf`Y/?2ìÜêÁõ(àØË`¦8aç?2s&EdqQF´±1`|¸C[¤ÿÎ¬	î9 Âw!ªv!à$)`\\6r¬8þ¡wÖ\\¡¤IÓ78ËÏ	½Èv¤Xà}G .ù%-=§IO±<%J%\rM\róùx·ÍPÊTGl¤Þ±iPèbý5NxLÝð±ÒZjNdÂ6ÏÝ¬Â%Çõ©aNËÉÀÃáHàXäC°±b§Eéúg|Îy¥NÕ*§ºCí$ú¡\0Å\"\"	C#U$JbE\nU%Î³Ó6K<¼Æ#­dË8uM&äÕåæÄkI21--ç¢N77ÓªT°c%JÓÒlåäl54I(º¤4rEÊ\Zï<òÓï&Ð§Ú¦ãÜ´ëGA8G¶=[ìî¾Fì5ïI®l|ÕWÖÆC8g!i¶q-8ºLd|MS ó½0ÏKF#c9©FÎ*qR^TÂT%Ø¼¹Vø\nBÃ¶úB.h¿+¥ÄYB§âã>)IRJ%¥\nºñÿÅÜN$Î%Þ\0', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, 'clkT1611750051', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:20:51', '2021-01-27 06:20:51', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(32, 31, 'BZh91AY&SY;8x\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä(IU¤\0*(QT¡R\n(s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"HM$ô2\Zz#ÔL \Z£M4RD@&&L§¦¡Ôõ0¦ÔSe2\\HÄHÐ«ò<Éµ½Èà¶Åð.|×û,¶d\"t¶åºë\'Í[É±uÓZÍëºSÞ²ÂÅIJ¢R,¢ÉIRôp(>HÐ\'Ffs#3Ô~ÅÖÓYµä$Ë` ÷	Ëpó6lØió8ilGg\rÝ\nz~ÖãgN1íÓ!´åðnÝ\rÜ8iÝÓ÷4<:\Z OÕÖ¥]JRÉ¾i\'¡t¢ÍÍ¼W-ETÒ~çÉfiÝ©cWcÉ§DÔâç|gTá9\\»Û%&ÒÎ=V©â_´íw)µJJT²Ë>Ç3ìt<^wö¤4P£\0¤\"À\"£ÿ,Ú$õI\'â,¡gÈñ?¡ÒÈúNTæ.¤²PÅeìRs¨çæzÝw¾ÿjç&J:ðo`{G	ÿfÞMi©NÊ`âzXÌS&D¸ºdó1ü¦|pÄ_\0\'ÂP/ãXØÙAéí¤0aì£-ÚcAèP\\ðvã3..¼ïrÌ5°`Ás(H³RZD³4¤´EPÜàQÊ]X\"À0iX%7v{nËl¸×,Ú²Êm)(aY.\'*ËMu(ÁIb	ÀR1³s§m¨òhÁK´YJRlhÖTÜ¤ºr%0FïÎPØ1i¤Ýí²ËG\0`NH0Øbèð\Z[!Ò`1\r6vK·}ÆNMG#ÁsFB¢!ì¶\"é³Âp~sÐràäìöOI[=7nâî´}%¼CããÑsábjQ5ª^kK¹k¢Ì[ÌG)sci$£.Í]y}&Á£6C*a/06(Ô\\±¨È¸Ü\\´3e&éEØ1LpÁa¸+cÃgT45iîá³NAÎ]d.ÜX\Zlê9pè!t)ºrÝ¤)³M»NeØ\rÛ!w@Ðà.ÌÒrËèa0µ~àO¼O|t@Q\r(]²tZ$HÓALF0[8XÀü\0Xl7#f!#@VdC4S/KP`A!0-10Dc7óÛâ4ÒPOpAØYòiÀÙÃËpñtØ<Ø´ù8p8.Ý£N¸yn6¨rå äb°yrJyÛ6Ü¹lwt\\00´7v\n4Îx»g!Ü¹pð7`ììrhá³ÀÝÙ§#k×.dÂR¡gjÉþÞBåÞ¾Û®ù{ÏQõ°1{ÖyÍO\'Ôe&úL©°ý´e=ÖrPL¹÷Þ]önsÅôîsß6á[¡þ×qæÞ(¹öÎ¢¥ÃðNó9I©þÂB(Pni»Z?[ &IìQ¡úe?éÿ§Þ²OùYëàDó¿È)·jy9C§gØ&o#ô>ãÒwÄødXÝ\'¢-;|ù.u\'&ò£$ã#½Ò¸ô;s&&©ùªvÇ¤Ü»ÃÈÆ\'ö=ngÜÀÆ)ó¢jdIÑ=eç(cCÌt¾s±`P¾Qÿ®Ö¯aÐ:\r1u(ZIRiz9Î¤kÇDÌÔúCÌg9$t·KóYy©yc85°p,{ÇÄ{Ã¸Á}\"|¬HA³êtÓ1ÓªwÌ&z%ÖK2.Zë¦J[Q¡ûÞ÷;i®T¢mJ*!²m³èK~G)Mf³)Öù­/\n6¤b^\\«\ZN&x¥Ã{Y¤?sé6.eÎÐPÜ0ápÃÓèlö%Ëñ>Ïù&ã ý[ÓsDüQã/\rSÀìrÊ8JMd£è8²ÌLT¢¡y¡ âuOÃ¥çðö¡ÚqÁ|dö\n)ñ», tVãÂuÌ½ÞÆuQÏ#èÏipÝÑà\rÆë!ÛË»en>ðÐdÀÚ1ÀÐY­Øå{Û¡TsOA¶g9Z_úRÊ(ªRGô1Úx»çÖY(i-2`<Ödc4	Pß?Ø<¡À¡}ÊÉÍ¥ØÏ4ñ_Yù310èf`Y/?2ìÜêÁõ(àØË`¦8aç?2s&EdqQF´±1`|¸C[¤ÿÎ¬	î9 Âw!ªv!à$)`\\6r¬8þ¡wÖ\\¡¤IÓ78ËÏ	½Èv¤Xà}G .ù%-=§IO±<%J%\rM\róùx·ÍPÊTGl¤Þ±iPèbý5NxLÝð±ÒZjNdÂ6ÏÝ¬Â%Çõ©aNËÉÀÃáHàXäC°±b§Eéúg|Îy¥NÕ*§ºCí$ú¡\0Å\"\"	C#U$JbE\nU%Î³Ó6K<¼Æ#­dË8uM&äÕåæÄkI21--ç¢N77ÓªT°c%JÓÒlåäl54I(º¤4rEÊ\Zï<òÓï&Ð§Ú¦ãÜ´ëGA8G¶=[ìî¾Fì5ïI®l|ÕWÖÆC8g!i¶q-8ºLd|MS ó½0ÏKF#c9©FÎ*qR^TÂT%Ø¼¹Vø\nBÃ¶úB.h¿+¥ÄYB§âã>)IRJ%¥\nºñÿÅÜN$Î%Þ\0', 'Cash On Delivery', 'shipto', 'Azampur', '3', 478.8, NULL, NULL, '9sQh1611750200', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 06:23:20', '2021-01-27 06:23:20', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(33, 31, 'BZh91AY&SYìl³\0ê_P\0Xø?ÿü¿ÿÿú`\r?Ä()U\n$(\n\0PP(R¢£0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`bc0L@0	hÈh`ba@BjOHÓ Ó 24\03Q4\n i0&ÓSF©ú§èOPÚIµ?)²§éK\Z÷~§Å>-­î\'\ZØ2?FgÈ¹õ^>Gð²ØÒØq;ÔRë®,VMobë¦µ×u6§Áe%)D¤YE¥?àã(>LHÐ\'>fs#3Ô×¥k7y	2Ø(=ÂtÜ=6l4ú8ilG\r]\n|?K³9tÇ·np®\\¾MÛ¡ÃÃO­¡åÐÀ Ðä=±ü¾«uÙVbbR²oIÆ0ïY¹·å¨±ÈOäú,Í;õ,jìb|ZsÍNgÈåuN9ÈäÞÙ)6þ±êµO\"ýÇs½H¥¬RR¥Yø¹_äèq·µ!¢¥%HED!Gí ¯¹\'à$Y$gÌYBÏ¡äÑÒ¯¡ê8¹ºÉCOÅIÌ£ø;\Zï}þÕÏLu0)âÞÀõ9ÿ«3o&´Ô§Kå+µÁ1bdK¦O3bOC9îN,F¥I¼©±Ò±\'tLTØÙAðöÒÖ^Ë\ZpÓ\Zl=Ð¹äwbÌ¸ºRRfè{a­(CRDY©-\"YRZ\"¨oqrDÖ`OH4¬»{nËrl!a®YµeÚp²Xc¥ÒÄäYi®¥(rlGÄ^ð4	HÆî8{q{¸4b¥Ú,¥)63k7).¤IFÄpFïÊRX1i áí²ÓG `N0Øbèò\Z[!Ò`1\r¦;K·~0Ác\'FÎOCä¹Ó£!@ÑÈHvNBÛ\"$ñ/1Öõ0Ç¥ÛÆÓlÛ:Ûá»wte£æ-æød8ÎZy6ylÝ±ë(æ1°¸dvzÁ³i$Ým]x}Ã	`ÀQCJKÌ&¦¢ÆÒÅÄÄÀ±F¢åMFEÆâå¤±)7J.ÁÅîXn&\nÙå·T45iðá³NAÜ»l\Z¡vâÀÓgQË@á¡H]ÓèE!Ml\rÜºpàC.ÁÝ²t\rìÀY\r!,¸ia¥=tHNú£FJ)¤¥¶Bcì@D\Zh)Æ`§°,6BÍÚBFÀ!bèj21D `Z\"6b`ÆnèooÐwJA=;agÔÒp8pärÜ0å°z`9rrÓêpàp]»FrôÜlPéËAÐÄ:`ôäô<6l<9rÙ6ðè6apÀtÀ/J;\n4Î¹»g!Þ¹rò7`íÙÑ£Î6îÚÅðU®\\É¥BÎåý¾\"åßu×}>¤ûØ¾:\rOÔe&úL7¥°þ´e=Öq&±ï¼»ò)ÝçÿøïrNìfnwû]Ãx¢çä:Í8åßD= vÿv¼B(Ppg0Íù9È2dµ\Z¹FSônÏø{ÖIõK<Oî¨¢Ê)É?Éi}Ò8L¡¶b^}åDÍñ?cØv>Y7IçËNÃá\'ÂbaIÁGI¼¨É8Hðt®;CÍ9STÿ\nÑÆTxüLbcïr½bYÏ1Iã9æ¦Dóð,\'1Cû\Zc¤Ù9©(²N>Ó3ÆI¸©¤MLe.¥I*Pm/G1ÔsXçóÎ)-Òä¼Ö^j^XÎ\rGèlk¼Î×10JIÔ)SÖR^yæré¾ûw\\\r\Z2\n±aàÙ\nØp`=ï´×*Q6¥JÙ6ÃYèK~§!Mf³)Öú­/\n6¤b^\\«\ZNx¥³{Y¤?î6.eÌÐR`bV\nåLe16Îiy¹íE9õ*MÇ9û·;ææúÊ^\Z§ØäqÊMd£Ñ.p?EBóCAÀêEKÏ³ÚqÂT?4QóÖ#Âj9\"RJ$°*fu%*IGyã:æG½àÆuQÍ#Ñ39ËÀÁÃ£È×C·§Õ¸@ú16gØh,ÖìrB>\rÇPÁ)`Àõ¾èxtûG\'ýaDSäÏ<î<ë,40(k21	¨oIElBÅ+ÌÐÂ`P¾åHâæÒìgy/¬ýYCt30,à£ÌnQ<ë¬Ö¥a©¹Fr¦2ìÆNTÈ²L\n3Ö¢&2L75ºOó:=ÇNò\0=¥pÛaÈ|/ù¿*~ÆM\'LÜá/<f÷Øfcõp»è´ö%>Æñ(4.Y47Ïéäß5C)QÒrzÅ¥CöÕ9¢p23xBÇIiªp:MÛ?³Ûz\Zp^.øÌ#a Ré*&abÅN{\Zó9÷O	óJÊUOt¢R\n*½òHP©±`DBA(b$b²\n¤\"Ò¢(P©.qÎÙ²XtKÉ1\":ÐõÌ³Y¤ÒhnIi!íQ.^lF±#ÒÐïyäásyß:¥K2SGðO-è6pð¬RX ¤¸ÌÀ×yÑ-1Obi\r	ª~Hv)O¼ rl|[È!õÅix4ðÓ\\Ù8<ñ5ª½pÎBÓl:âZqºLd|ÍSèvÃ<a,uæ¥\Z:Vo8)ÁIyS	h-EåÊ°xà)\n{ÚSæ¸ZO)lù(CÒý¼§Ý)*P±dÿâîH§\n­`', 'Cash On Delivery', 'shipto', 'Azampur', '4', 608.8, NULL, NULL, 'iXbI1611752467', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'tsgh', 'gfdg', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 07:01:07', '2021-01-27 07:01:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(34, 31, 'BZh91AY&SYê>\0\nÕßPXø?þ¿ÿÿú`\n>$B \0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFMMÒ©04Ò\0\ZJd4hh5OI!äÔ0ÓDijzmà]½~+õY/£#*|*þçÿéoÚn564Äø\'Eð\rZI6\n¼ XNÇòlÙ°Óú8hN®1º÷>gN«\r7CPc·½»t8pá§OêÐôt0h49óûá\\n¸õvÄ<	æÃ§Ò~§îÒê,/á½o[Wê¼-Ñs\\ëÑÛyÌ÷R©üzE2~ËÌ¹Wì¼Ë½u,,#uºVW«¹j_æ¥µzEÐà\Zl-äáþÃqpEïÿù!N3ËAñDÛ¹§MlÆ¬¼+±h¼k{[|ÓäÕ«V¼Zµj×	N+oZ¬¥Óu.¥ÖµKÄÁE`-ÞÍÃÀXè`ò<¡èr6\ZD¸ÁÑÐ\Z¤cfç¸\rÆ#EbØ1e06ðÙàr£q|c)¥ÀbiÛgo¼9zÇ/pÅ.7h.»\ZA¸A];p¸3Ðaò;mÛîÛ6lÝÊr9´­8rÝìUI\"ö8¡Ð1$8lÙÓê1pÀD16lÝØ`ä2ddí552`ÜhdØn6â\nBÃÍÕÝë!·GmÛ7väéË¶Á¡Ún,\r6u¸tºÝ9nFÙ¦ÀÝË§2ì\rÛ!w@Ðà.Ìtm¶Ú²6_d~ô^õ§]¨10B44¡vÈP¤´1\Zh)Æ\0X)ÂÆ\r\räÄ$hR\næ4¡zP¡!BM´ÄÀ0ùÀ;ß§­(<(\"~!:¶{6C0váÈå¸x:l±ìön6líÓ®-ÆÁ\\´.Zy¶¹lxt7°±1áÐÓtÜ9xxxrä:=ì¼èãh`ní§#mXÃp´6Ú1`e½Ì¿oyí=osÀ~ózó½çäâ}Ê_SçÖtôâ·YüWI¶</&ÇÉñq.£ï·ÓÚ¾7LuÆûï°¼±²Ä,,,I¶Ýfì!ÔüeÙkÃ¹~&.6-Ö±¼ûÏú|O!ÂºcC7aí¯m°Ö4:Ó©q1l\\ÖÀ÷:÷­«²r®ÄÒ_Ù},£mÌavÝ¥v^¥tëyÐu.bè³Wñm<µr·ÉÀã`b¬X%þWbpð¨ä<áÞ/{ÞÐ4ì,ÓÈxÀ`X`¿ÈOµ  Ùò}¦é\'ÛnðÐÈ\\`äv;Ò³ pÆÐ±bÄlGr¢Â÷\'àmX¡¥¡­.s2r=fèýGß\Zu!}ÇÜúÞ¢YËì>¸~oè{ª7ò>èú!wÜ¯®±ËÚÊÂóÚ\Z\Zå¥¸Ü9OüÖF¦-/¥×=è|ëè¢{yÛ,#fõôIÎz¯E´Òí.rÁàµ<¤ä2z.RÐÒµ±\\nëeº­L3CÒùòè¨üÞ(ó,XXºîÓ¶é]Aî²²0¦·mæ=O=Î]¦Vû6èAp³°1­Ø\r8Vä6ix­\r¾552´4Í»&SHÒÉKI¥r­¦K`Ù\'¤41d¾·ÿÎ³%ò9¤ë¼Èæ»*å+ëao<÷Üiz#ÚÄ`ûNJ¹/}×fóßí6Ñ íGÉbøCØÐ»¬X-¦EýNkÐ÷9­­ñºÄî¢çz%Ìazc°Í¾è;­¾Ì±fÀÁ²Íi\Zn®óÜv2bðäÜy®_êûn;iÀÜ/Ã@À¤HV,X@J,b©c3bL	VIÀî¸ÝjÙuIÚÜo·[Tf&mé¥Z³7:48×ÅÙ±r/!ÎôlèÛµ<zÐA@d:K>³NâÔ[Hä-óÅãÃQ¾\\lGq|ñ&ë¡a{¯!¾árÒxË4k\ZÆmÑãm]·ú1x®³ðh§ä¼KQ²¸¬X¼v\"ÉÌp2b7ÚÇ´ÂÖúßv<µWî#Õê»á,X,Ø	IÿÅÜN$ º¤@', 'Cash On Delivery', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'j6Hk1611752537', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 07:02:17', '2021-01-27 07:02:17', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(35, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'qYeB1611810114', 'Pending', 'sad@fsda.com', 'user4', 'Bangladesh', '546546546546', 'sad', 'fsdaf', '1230', 'cvZXC', 'Bangladesh', NULL, '3q4324', NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 23:01:54', '2021-01-27 23:01:54', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601245427ad66'),
(36, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '9yxq1611810163', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-27 23:02:43', '2021-01-27 23:02:43', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60124573092f1');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(37, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'aZs71611814686', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '32432', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:18:06', '2021-01-28 00:18:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012571eceb7a'),
(38, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'koTN1611814878', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:21:18', '2021-01-28 00:21:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601257dedc728'),
(39, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '32Ys1611814965', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:22:45', '2021-01-28 00:22:45', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258359f8f9'),
(40, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'xtwq1611815037', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:23:57', '2021-01-28 00:23:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012587ce78d5'),
(41, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '4xWJ1611815106', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:07', '2021-01-28 00:25:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258c2966ac'),
(42, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'EeQ11611815122', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:22', '2021-01-28 00:25:22', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258d237ee0'),
(43, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'JWPW1611815138', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:25:38', '2021-01-28 00:25:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601258e1f2ceb'),
(44, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'gIqX1611815169', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:26:09', '2021-01-28 00:26:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012590155dd2'),
(45, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'zO0M1611815231', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:27:11', '2021-01-28 00:27:11', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012593f59d8a'),
(46, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'fiDV1611815279', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:27:59', '2021-01-28 00:27:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012596f204fd'),
(47, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'ycbO1611815311', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:28:31', '2021-01-28 00:28:31', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012598f5a48b'),
(48, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'h2451611815350', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:29:10', '2021-01-28 00:29:10', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259b63e9d5'),
(49, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'LhN11611815400', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:00', '2021-01-28 00:30:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259e832a78'),
(50, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'ayFk1611815415', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:15', '2021-01-28 00:30:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601259f7684be'),
(51, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '0y4e1611815439', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:39', '2021-01-28 00:30:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a0fa7577'),
(52, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'JZWM1611815447', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:47', '2021-01-28 00:30:47', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a17bee1e'),
(53, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'HWWA1611815459', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:30:59', '2021-01-28 00:30:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125a22eb3ec'),
(54, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, '0KCK1611815614', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:33:34', '2021-01-28 00:33:34', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125abe74b04'),
(55, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'EKWR1611815626', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:33:46', '2021-01-28 00:33:46', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125acaacc40');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(56, 31, 'BZh91AY&SY¬´N\0ßP\0Xø?ÿü¿ÿÿú`¡@\0\nP\"*@UT¤Eæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁæ\0`2\ZÁD¢4B§ú¤ý©6SSzóSIêz ÃQêF£\'¤\n&$Ó	©¦SÔôªyÊ©	´£ÔºP7Ýýâæìuv­êÕú.ý×Ðü[THx9^Åºë\'îÑÃâäºéÂÎÅÞ.gà²Ñb¢)IH²)þl ý\Z6rfZI¼<úVpnocX¬Wv.7X«GµWQqÚºëv²´]M]L%ßªÌá«F²5YjÑØÃ	»,¬Ý«öXá©KMf1ü]yJRÇ6§aQZ¥u^Zv¿gÉmO^Ë6ô²øïålï~±àêîÏ#IQ¯$C÷yÊA!JF¡Ec½ö<Ï{Îív6&ê\nQBJ\n©þ¤eÐúÐ-NÓõP³ä÷½çê|_!å5QbE?ÉGGÊú§¿gô]Tð]Os£­¶~m]ôMðw.¦ÏfY4K;ÙJí_®vQÑSÎ´G¬¤Êè^HstZLåÒÚ0²y]\n(¤ÓÐø,Å$M¥¤,ÉEvJZ£ªË¡Ø®µ,Ì7sb2©Õá²ãeè©Iè¼²oO\"ë.¦Th¢pD´J_k:/gsv»u¥¸S¢¤eNJaO©YfîS&dä¢RjìÉB]e¥\nM®ÙS+´tláÍÈÐá&­SFS¢¸_eD9¬Ä`ÝüÙfÜ9¾Ö;ÜÊ7Ã3­zÝU¬öjo9´i-8]d)Cu.ávyV:aK15w.Ñ´,©§Ý£e°¬7aifn².00héhÐhùÛÛ1Å«F÷ÍG&­5iÔ»3/1[gMÙbÒÚ)²»-Z\nlÑ²óSdÃ©ªíi£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑXãyzCj¡´>²*ÂÅat´üª,QK-,¨R¡yfb;ÅË))M0²U/R Â!\nYLQª\nTIJ!JÀ³«£©goeäBOÊR;»+%Sf2ÄêÑyÛÃG;dË,Õ¯LIÉ¢ÓQÉG&g#u×7hÑtÊå7j»J\Z*/\\SËj®\\aw\r&Ypá£INNFlÙÉÂÌj0ÕfÅðM%[\\H´9J\'Àì¥OÇ}J?sÁ¨\\{\\Ã¡²åÇq¡í.1/}t2{\0Ð~*u0}:³²nÞQ\'CÁ C¤¬.êt]Ñ:Ãgü(ðL©&U)JTK\rjÂÚ¾§|Ñ¡ôªo?æQ£àèËõrÄù?sû**Qe)ä~%èé¢szîõ½Añª?+4rOÕ¡ä}©í/nÏ¹SÁÙ(ÐîGµà¹óÌó<¦[?=a­CðÜ°é8Ê$c69°À²Ã¤ {\rn×Q¬É#A5Ã¼Áç)MÑÎlÃRÈ¥Hæ½;Þ8p-fÏlë;æ®¨ô:..â]²ëMQ³ïr;Ww½Nó3#ÂOz\\¢ïKUÕM[=5Þ]ifë]svÊ[fìî&ÊPà¥)0MÜ&ÓÖ]Oï;e8M/ÝeÒ§0Ìºò­7u0ë.©üçc*³3týCóNöâÊÄ©ÊS2¦g7zî]\Z>cÄÐî>L§òdor4YÎp*8Ïâ#¬E{Çä³3IîQIvótî/¡dÃ\nçPÌëw\'Jó¼H@\"\njñ)H©ìCæi?Ñíeó¥O2=ÓYç>Î^nÕØ1ªNMÙlJ¼ÔÑÍ2ÿãrÎ§úº1W¦sjò7PWþ©e)T©\'Úeézç±ÚzeMeÜMÍ&[ÊW´£Ü»XbP¿5#±/9Ë²ò=ëð}íff¢k1,^~L];Ê+¬áK7%°0ay¯yzq	g28¥RÐÌæÕÚ=ñ`|\'TaëMÈøÔBÊCKÀìn9ÆÅ2¼Ý¼Ë½ÎÇYê§lúOJ.ù³í\'©ô)BòëÎÇðèÕ2¤×02(Ñ°¼ëó;Í±Ì49\Z¼£7øpbDr5d¼rdÊ}LÄÊ²T²n.¾R7©iiO=¦óØÕô½­^²GÔ¿\"FOÌ1F1F!U¡dJºÝ.óQ@<ED¼Ì]Àõ6Àw:·>ÕË¹IÀÂ4Y=IÝyÙ=-#%)ÁóÎNG#fíâTº¦î²ò¦³½3Ó3tÜ1=2}E\rÈ`Øt¡°Ü?äîn¢ü<áÉÖ{Qé\'\nO#êf&©¨YÍ>hYÚeá2În³Åç<4Âx°4j©³Ð³¡Ú§j©Ai{1XZóÆeÓÄè°û¥F_hþL¹¢~bÊD|§¼gAæFDD(A*ø»)Âd\r¢p', 'Cash On Delivery', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'Csrn1611815913', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-01-28 00:38:33', '2021-01-28 04:29:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60125be98c11a'),
(57, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 499.4, NULL, NULL, 'Bp9f1611816304', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'Dhaka', '32432', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'completed', '2021-01-28 00:45:04', '2021-06-02 00:28:04', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125d706da17'),
(58, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 579.4, NULL, NULL, 'VT6v1611816433', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'on delivery', '2021-01-28 00:47:13', '2021-01-30 22:58:25', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125df1ba13d'),
(59, 31, 'BZh91AY&SY)+Z¿\0ÚßPXø?ÿþÞ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ÈÈdÁ\rL¦¦L\09¦FC&hÂ`4hÄ\r2d`\0!Í220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0@©!	FM\r¡\'¢ÒÑè§´G©©3IbtOÉýÏz{Ü.n¥°Ìû¡sø^?Cà²Ø<¢MçCÐ¢]qdþ¶{Û×]6YÉwkå*©JE\"Ê,©EJWÄtÅèÍ¹½^\"5)H°ì»DÐê¼i¢¢ô¨OÏÉµorªRGÂ*/îË.9Ôjd\\©LÑbÎ\'êPÔ`ÐÌÎQÈÐÌ±n¢Î	©cSCö2¸ØÐ½%ñyØoèñU*ì¢-Ni8:E[aÃUâÔXæ5?gÅû¾V­ù¬ÛÖ7ù÷\rÞVNÆçiíùÕä^»ÆM§]\nT§óÔ[Ùèç¥H¥¬JRR¥YÐæð;ï[±ÒènU(Q$¥A\nJT?Bà\nRO$KI$é>\"ÊÈzÏ\nyÁã}gOy;æå%,Å\'bÎûåy[^ýJæLYâQNç\r1é|3VdÿÔÕN×Rå0ê<ìfK¦n¶I2EÔÒ}iÓ®jTj£ ¼´oxz\"T3Pd¤IÀâZGôÏ]M\n\\¹Fåðx)u\nJJx}M,a$GJîÒ7%%JIKTN2ñxJÕ\n*Ô\"¢XÁ©ÈÀÈ¨äñî.6v¬²JJ âZXÔwY.Q2ª6Fña-`àXâ_ÌwÌ:ÛÙ©wÙ8.¥)988Ê:U\'µC¼¤TÉhèQ±RX(¨,o9Kq1o9ªT)BbPÜêäPK¬XMËjQ©QÍÜ[Ó4ÙóFeYMÓEJhU:ÚlcU@ÑB82Gêó;Wq{Y·LÇ\'CÎähå5UBÛp0XËÏ¹nÄ¥õ!f®Õ8N­%§Áu(PpQssÝ&ì:K3»æÙ\Z­$±Q£ûfj[`ÞlÊlaçe¿{¬hÚ×&w(¹sMñhã\"Ñ´eEFè¼Z2Ñ]¢ñh4ri22f3ÆKâLÕ}7¬XY-¢%\Z233\n7Æq0a\nQ dLÄÁ¡]¹t`Ábá¡¸ÈÈLÍÉ@°Ê0VQrhLÌÊÄjLJ}Q;dv§×$ëQ\"AEIZ,&¢ÒIE>IP¢Å¢ÅAEâÆP©QÔ3dÈXXT`¢UT(UX¨JPQBE°YbÒAr¤$J-b`Nè8Ç7I¤JäYrîeÑºLÌf#q¡xéÊ7¶,s0È¤ÈÁÑ¡¦ÆmæI¤¼Ð´o\rå\ræj«¦LË3)],jY¡L¤¢Ë$Ì¤ZURÕ±¸³B¬­û\\¹±d]±±s8¦óaã{U6KÐ4,nkY¨ÉT­Æ&%*ªE½KÉþñrïoë¿t{\"æå£ÞîäåÍdô·?Vøø>ÛÙÏëgL~P­÷\\»âöÅöìn>EþÝàwÔ¼Wg>ÿÈZ?ËÐÍû)Üú¢(À{YÖÁHìp?ÑCÒ\"(¥(Ã3\rÑô<q1óª5º(Ìÿ&G8÷,Ãú¬ûÁQQBÊ)Ô~%ñ\'98L¢ò}Q4~QïÓõ?âÑÆ¤¼XòGß¼Ê0KÇsTxSRf9Òð¾\\%b;|fjóÜ±èN¨¨Yì÷Æ üNúæ\"YQCÒv\Z3v9`uÅi¬uG7.)T!ÓGý4IbHáp)u)\"à^.²÷\';Mcgts¸ÐæMÍ¢æåËFn>óxæ»­åu£ëYb(\\í4,Q¡FãÐ`ÓZ¤ºÉfqrÚ¬ÃíÊ[qf¦yào)\râ)	±¼G\\£óqMñ´fv¿âÅÉQÀ(¹x«F§A¦.IÂ*=É¬Ê5\'ðzëÆ}mE&(¬EFø£be²ç&gðÅ¹ÿ\"¡Äì?ÓÍ8µã=EÉ¸ôGÔTtfoyËÅÜÊ~k­ÇqEæ±ª9ÇôF\"õóæ9N·ÔK·ïÅ¸Ú:à ¨BÖÅ%(¥G¢=G8ú]Ì tÂzfà¨áMb#¼ÔÈÜF\"£þÆl£2?¨³gÔ?«Ú0*E\n³Ç\r¦¥	_à¥QT¨ÚdxÏ<zÛÅ53ÀÁDâ~L\ZÊ+a-zW40b(_È\"ì£Ö¾ÇÚÒ24Eç÷*1së6RÑ73/i(È¨ìòÊc8Yã£BM¤1´)&¥þÛÉîpx£Ý<JÈ>ÈæF@Y#¦\nZ7ÈuoYùFG¨¨\Z¾ø¤6;NN²ç¨ètÇ4$´tÇ°ê\"ï¥¦;bÖ¢QE$¡¬\\°Ö9Ëör3n\r\nåwIÞ¢Òàfü>iàÞ½d±Û7èíæþ[é>ÚI7ÅFEá½È;(TX¤|A¬y¢Ñh£ÅhÖ;ôâD©U>´?DTT$**¾Ò¢ÂR*B¡P¨¢%EHK\n¢ ª$ªIÅR*\"UB¯1´z\rå¹É<}=	ãMMcXô¨/7ÄØ`ã(±bz]£ãÇ¢Òºohào.N­ ¨ºJ]2^).#µÏ	c)=#jMCqõ)Æ>Å$\ZFhÚ%OY\'ïAi9µ(P¯ÀÜy£cyÑÄxÒl¢u>fPD	äÇIÚíÉúFË§<ðÏ\0±ÚaÙ*7<+9Ôæ¢\\£DÙÂ×¢Ä´í8Iý¢¡Ð!ÚüÚ98?Øº#ÖüR¿¡ì¥IE\"X¤U®¤ÿñw$S	µ«ð', 'Cash On Delivery', 'shipto', 'Azampur', '6', 329.7, NULL, NULL, 'rEFB1611816584', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'on delivery', '2021-01-28 00:49:44', '2021-01-28 05:01:59', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125e88cec51'),
(60, 31, 'BZh91AY&SY\'HoJ\0_P\0Xø;ËþD¿ÿÿú`ß}\n\0(¤	PPG4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$2hMSÚSôÙCÒzQ£OSiÞRBF\"I¦z&iOHô#Ôz@Écù?)ù¬x$%Éy ï!ÂÇxYÅ»@ø±^í¿+Èf¼´øÊîÿK®ºÏÑÒrdÉJ`¼¥¯ÍFÆxhÌäÑÌ#6®l02d³fÕcv(±yy½é÷L192rm8s-6k-\Z:\Z¿ÛÜÙ®,Sð¿{ÜÝàèð·k\r\ry~t\"«¡0SÀç6\'½õ½*RstQèYì\\§øddñrZ}e=ì_S,éÇjòÑëTG)%ÔJ-$9¸ZiEqë^®ºbïKÔêäÏë{Ö_ 	6YÜÝ¢¤l©H©,ÃiÍÉS£E7Äµ#¥¢h£%\n©¢jX©S°l³uüÞpá®íÏr£.JR¤v,³±çbË¶dìRLåE¢Õe¥\nMVh»Wkì(Z4Z!F#RÓÒý3fá«%IJEÚ®ºìßÅ»W­OCi¬¥ÊE6aÑOB3ÚÂ\"T»E×jÌ³þ¯Ý«2\rò!bÆFlv4ÐÓví1Å³N.ÉèÇm1Z1QÙSfa1M¶^hja4]¥3dÐdK&\Z3a.Õt»,¸É£VLAC¦\ZL+)tÑ3fÄÙ2Lô<\ráóCt.ªBB#\n([RERZYP¥Ë2TÊYEGz©b^ÐÅ$¼J%(¥%!(]h!J)D)E:NnÝ¹ZHn$ã*UÉu0U5dÁ5ÌM)Ü»¹MXa£MÙ¸hÄ©\Z-8(áGÖjlÂæÌÖf£%Y³v¬Ù,²h¨µgMÚ­ª¬SNnÙ²ìç\rÌ(ÕÁ»v5LhQnZ#Òy{kúãÌë249>ðS°ûQÀëx×¤È®óæmt;ùHmz[Øûsê:&¯£%&J¢LÌJ>õïkØn.l`{æ\r\Zb\\iâ§Þüôu\'Ù£{Ú¦\rÆÏ\"î\rL0O;*JzÍÌø4}ªx¥Gã-µCÙG£^åû\ZÎS¾nì«#þ3hìÕÎTÇÞ§{Ó\'Á¬ó\'|ÍÑÑaf²ë*dßc¸©r[à²ZK)ôÊ.êóYMÑâö°Ób¦s\r±¢í¦óe)¥&íÓiñ!ÞíyÝ9fÅN%&ÒÇÎÙÄxN¦lcÆÃ2F³qsbØÐs¯äý%GsÒÁý_Bé²vºÎÍÜX§±yu»Ö\\G[Ê~E\rØXô°üõ\rgÎR¡$ók<aB¤,ÒÙE(TóµÃ9wQÚTïbwÏÙ6×`¼¼aQÃv#§Î^p}æ§4OÅêEEïu³twCæ²ÅI0êòÇiÖX¤ÑeÏ2b] ]IØ¹¡*hÉ^]Âk.õ22íÚ6£\Z`l6)ílBØd$öÈ¼¥¡²s>Ssxz7EMFÓÉð{vJ?¡»ú;y?9á3iÎtGÈ§ë:Ï©w¤Î]søN×Ñ#áëåINùfnç¹¤¤ &lp),\Z3Í\rKÅÞÓL>êqyÍGYÐbtç!ØÆ!é¤Jd¢4¤H4)¢\n¡%¤J¨«Îyâá¼¡08Åæër11uB4d¶î%O©ÎóòuRÐÉóRÊnyNnjÙ´TdçQdÎo7»ÁfSÌÀÊl\rNÉOe0Ã\'ÔO#G2¹å5nìÔxDÂa,Ñ<af¹Ödý%:+âr¦ !b#NÇKLµ¡ø<>IÝô>)IJhâîH§\né\ré@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 235, NULL, NULL, 'wERD1611816938', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'fsdaf', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'completed', '2021-01-28 00:55:38', '2021-01-28 05:17:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60125fea51f62'),
(61, 31, 'BZh91AY&SY hÃ\0£ß@\0Pø+ô¿ÿÿúPîÆ©¬±h AÆ@\0@\0\0\0\0J&&ª4È\0\0\0\0\0	5\nMSO&¡µ4Ó@ÐÐ\0z\0Àh\0\0h\0\0\0\0		¢4\nx	¤É©ê4h\r¢ièÔHHþÍ %ô©ñ}èçCêzzIs\r¶q!ØåqÃíTîÊ\rØj¦\"ã2\ZTJ±HBl\Znéx^~(e2©ÑbæÊbbj8ú,kî ÀÁ7Þ $A¨¹¸¡ÔKD»ZMÍ!wITb(6Ë ÓCÀ³¢«\0ªeFK\r\nAÓ3LÄÁ\r\0TUmyPP`ÓÚÁ©Ô£±ChñQv]Ã[(¡ÀPË»¼¢ÉTÒfU¥)B°HÔUÌ×èXÄR¹$.XøBUPiªÂ©á3m{^I,â)-+Xt¢<ÕÑRÌYqj(;\nÊ®J:¬­jªªöKæ½ap\"ÀPÕ\0üBµAL\\£\"U,j8!ÁPaFC(À6=·«Y9ÂBºµ4	âfz\Zä9g«\Z ÆÉ¶\')0Ã¡0ô±wbõ¡u½ËTf[ÕìËjÊ×d:ö/\"Ô¼\nóAéÌqÎ\n%ìû5w7#¼~g;ñ³< Íj¢&Íkq\0 Ãôx·ç<§à£k®J8gYñýS%±I5çRMÁ´Ð:ûÕ¨©½h\Zùâ3ÜÀÒXÄÒ_Êö±Áë.d&ÀÖ¸l¡ÐÌÖ[<à\"äÃ*³1.3þïù»´êëÃ5äØ`¤ÐWRZËø>ÆfÓ\"£LÈRLÎÄgRLÌzFk/M)¤&Ü=Çóõ\Zõ$îk3Gmj\";Ü¸s8°Â;Å5àv=`µÎHc<1Ø÷÷ØbÝ&ãÞ\\¿@I*e0® ÏbOpN¤/#¡Äöò/mìÍ SC¯-$X	kEBÕG4)¡q\'FUb¨PIÀÃ¸©EH´Pª^ñHàY-£¹¥mè-Ñ\Zfßr{,l4ËÖ=±õfg©A¨àðýN$u\Zm øeT¨ÖÜrF\'5´xh6©²×äÅ eaLC!AÔi`o lA¿oWFÏÐùà{ \"ú #\"0(H²H²$,í¿·¡]©rWÀ¾ÀÒB¸J(P\\uAtâà*ÝÎfxÎîFFj2ÆFS¾*Pº¸`´*P,òKðÃ\rC?_Sît2Ó¨ì¹%EE®HJ~Ëy\00q7Á¢\r\r}L*½WÌñîBÈè~`Ø¡rE8P hÃ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 295, NULL, NULL, 'dzga1611826761', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'sadf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'completed', '2021-01-28 03:39:21', '2021-01-28 05:17:16', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60128649a7e10'),
(62, 31, 'BZh91AY&SYè{ôé\0Ã_P\0Xø?ëý¿ÿÿú`\n_\0ÐD¨	P* !Ì	 ÂdÉ#	i¦F&\0AÉ&FÓLL0&&	&L&	¦`LM&LLM2100MÒe2ÐÒQêxPòPõ1¨ÓM4õ\0*H Å\Zjl\ZjÔzjOÞ§©ø°M8úûßøru]wò~+¿ÃäÊ®ñCÜ¤»\rî5S¹bÊ,´±RË)K?$qG÷nÙNÆbëÈ¥©_¬6léy´ÄÌ©z>R¤Þ¼¦Øªh¼´ùJî*z]uÙZ]G6Wa)ØüTn]ZÛM®ÈÒË£&ì²³v¬{W85b7bbjæïóbaÍ¼èoi³YhºÉÅÔÝÍù²ß-góõ;ÞOê×sìQ»éÆ¹¾_tòyµZSTu{òúß6ÕAJ)¥D%\"\"DQJHàº=9Ý¤Sóy¾§æýoG­JNï>Þýíú{SÚºõÚ?C.Õ?û;\rÏÖ¥¥,´µð¥yÃ#ã§ÚcvÒ=ÇâR\'ÒÒ¨r\Z\\nQËzÕuÔô]Úòaw¢þØ²õR¢)£û%©]¥Ðê©H©4a»£*Z¾ÕÆ8UÂr^-4eR,%¤ªSy\\YÆ¦ëîÞÉ½ò§díY%)R9,³UÎS_RË*%47ZmK	ºË!J¬ÂíbÓe2â¡ºíiª­³2\nºÓ/nò}é>¥Ë´muIJ2ÅaûîËÔÕ_ÅØÝM&m.Ñ`ÝH»fv©ªË0ÖTS\r]«ï#×!bÅÍM9´ÐÓ¡»Lt6i»¡Å°äÙ (ºi°£ID`]ÈÄ¸ÆÌ®Ëf¢´l¼ÔÙ0Â*j»ZhËQÂY0Õ£	IK.²ã\r\Z²É4l(atÃQc3\nÌºj4¦S+;óT>`þÐá8(º©!\n¤hªåZBSDB4b\rË(ªU4ÂÉT¹1iJ©AÄ0!0S\"RRöa$ë:8:õ.éi!¤$ü%#¢Ë©£JnÑF\'V«Îà¦ë½J]v82âàÄ¢8µZq*TqiÆíÎ®pj³UYu6h¦VMTàÙUn4¶ìÍÜ84i8¸Q³gÙ0aªÍë-Ùhà¼ÅÕRYä³î3,XÝ÷Qçàö¸Ãkî;äzCûN.Ã¿f[NêÔfWÀô·wk2/ì\\:2áar?yõ¹0£7n£¸eI\nQH\r	FFp(6\\_k²¸¡|Ïø£À<Bfùqý¦¤<SêCË@x¶u§Ù£ïNòîgxÍL	cÀÎ­O¨³ëû&!û²ÉG½Ñ÷¢ÁÒR?Ý´ç=s¢ÈçOYïGd¦èå.ä¤²Y©ûÞÉ7nÍgé=sG2w9..ÞS®TÕ?£Úø½Ïa¡G¹ÒYOö]àÕe5SVÏ&\ZîT»IKÚ4lØÚeJFÅ)EÉ³dÖ|K©ÿSöNB§]±fS¼ÍÒÇ¡³ ¦âs	61Íd.Bî£|±¼¶qµö&&ñÂrÌsàô]2÷Î÷ENJhõ)þÔÌÑè A±¡Èu¼9Cáö°æÑÖ¥BIæÚ{¡B¤,w¶R	èói?7/Ð©ÜOÖ}Rç¤å/7jæ11Tv8·e²1)?újhÌä|ÍÏ\'®$ür¢ê±ÜñZ»^µHú)e>JZIö<SÑÔò)6Ysë&%ÚÔ×6%OÐÙ¤K±)\'4´Þ]¥ÓtÄÄ±t½kyCÚºÊL-(ºÃ</ÄºkZÄ^µ,ÂÁG$§tí\\|çD]äMñ9Cu¢Óf7õy§J>ùCwôqìzØz0é;æ¡iÖ{Qó0]öÎéùL=êJR¼ºÇêÞ\'&¨ÊÔrxËJL<çl9Ì70ÚÑ­Úñ~ø©ÊKë3L*8ÊMt¤o<%¥¥;m7M^c#Ïv©ðÁ\"$düÐ0b\"F\"FTD¢(È>KÊfPE¹¾.àqÎÍZÎCEÅR%Òí¤ñeFIeèð:Þr\'zJSã8¸.N&ÍÛÏZaAS¬´¤£àºm9NWw¬Òu038§±ÎSÂM¡ÉÔ°aöÒÒzÛ¨¢µ>ç7âäç>ðBÑ.a(,à³ö\Z=SB~2ïdûßÚ8e:²höªwº:¨]Kª%¥KÝS¾%#g2ù±.vÒ\\Òä%Qè7ÏyºN¤dHAB2ÅÿrE8Pè{ôé', 'Cash On Delivery', 'shipto', 'Azampur', '5', 708, NULL, NULL, 'b3aZ1611835736', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '132132', 'asdf', 'ghj', '47654', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 06:08:56', '2021-01-28 06:08:56', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012a9575287f'),
(63, 31, 'BZh91AY&SYÁ©=\0,_P\0Xø?¿ü¿ÿÿú`_=Æ\0Ó@­cAÉ&FÓLLS@Q=Qè\0&OSA¦cA¤`æÄÐa2dÉÁ4Ó#\0C\0RR@\0\0\0\0\0\0\0\0æÄÐa2dÉÁ4Ó#\0C\0TÉ4Äh	4Ó$òMôiêRäI\Zåù?&Öç;zØ=ÏÙ|OÑe» m\rÏºë\'ìø5|W]5Y¹s0À:\nQ@Äb(HÄöÜ@>%7(p4IÔ¾J,ÉB!703¡ÌTsÛ½Â Y¢³ïòFÅa-éßËj©õw6ÀçHï£!Î+èÚÜ×zëpiòdðÅ&}_[ÑÍ»c:>n¯B»Îõ\"²RYg\'KÖâóºíÍ¢)B¥H(T¥I¥)\'%ÇÔH±$à|E,öNÖÞwQË=*t(èâô;\ZÞþ­YàöË5>´Þ§Sy÷\\ÀÄ»£/cwKº-#UäM5´a±ªhí¡JR^$TYKHª3R2(ÎÑdµógÆ(g:Th\\Ê­X,ÁPÌØ²Z++´­iòl\\/\nìÁFö;£(Ij«·Ö«a¢ªS5L\"U\n¢¦L¯`³3GCVM5ÍQLVÅÌ«d©\r¶¼Û­ÑDXd	µ©)Ák$6cËdBH0-j&;YÑ,iC2?·8É¨iu1<hqÁÏD#$QÈ2ÁmÂ&`rqæÐù.ËSÌ2Ó##u¦v\\²gÅP×A0ÓrTCa®ÔjjB<<Ãs·Ð!,Ðå¥|@Æ5E0P´£ýÇÅ³£\"\"ÄY@VA-ÿ©Ì\0PÀ÷oZû¯\"c$~jn¥øÚdÃ87åw[Y³þ5E.co$	ÞÜÜ[£qnj Õj\Z ZØFÖûëQvUg7b7Üg&[nN$´7pAþ ïvhû;¤éwIfÝs=¤)¹\\Üô34Üþr×ä¶övþK5ç> ËðUÃñk}g2lü)Õ1©1¥*K°g³zdÉéSGî©}Øü_ú¾k=Ïº)Kò×Ý3)Í1^z7âü³ô>q?ÞK7Néu¼ùïÅ»¦N0õ¹<GS«¥³ñWà©gÓýØGÜó/V<ú:sdeÛf¦ÒMÕüfòªÒml`ÛK©E¢©-æ6l:ñdñnpgºm·/ªû³9¹£¤ó×Ô¥úóµgYììÎÑbÍüKH2$ÆÆ[G`ú\njÕÞýV¼§21^ê³^suäæSÒçb«1i4S,Å\'ÕZV4Å·¢üÅáoRÏÓõTø6»æÖo*¼­ôÝYi,ï»ÿË0dñ¢¥ôhu»(º­ü=IÜp©í|g¤1JE\nëlTSÁåË\'±âÇ¹:aå2u.yÛWlÍ¸ÀÂcQÍ®ìù32bé1;dª)NM2ágÊU(|{{ÞA¸6BÀÿ2\Z\ZÄ©dBûU\rÒóìz=ê}Ø°¦l^{a|×QØºÍT³±Ôg+\Zu¿v3¥ÉÉ©¥,É0?Û7	«±îÀö·Ì<gxçªZSfRSWÑû°óÌ²T§ÞÒ4å¹ÆÿF÷$Y½é;¾J[Úä§Éséª(lScææÊcRxI¼¥Jfªy¢ofóÎµgÀêKt~&XþeØF(!ºQÊS\rJ4¥RhîYg]¬Ñã«Ë/5xÔû\'ú)I@\"ñ%AF100©$µIE$ªpjñÛaÙxÇéìg;Úi£rÑ>\n.¾ÓQdÅkNÞnyr«&5Z<\Zéxjli¤]P¦{¨¥ÌØ5¿]±0lÿÏµnØÍ²9«U#ûgÆ¤àÒ¯~Ã½®Ýï)ÊFªg­Ìâ[vÅ¸!ù´[[¾a\"æÆ9)­fÓyBÀä9*GbhvvëîÇØM_±Þ£Ä\nª{Ö×PRR\rOáw$S	\0,\ZÐ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 218.8, NULL, NULL, '24ZF1611835873', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-01-28 06:11:13', '2021-01-30 22:58:05', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6012a9e1c649a'),
(64, 31, 'BZh91AY&SY{ýÔ\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0H$Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"\"Hñ)êiú¡èM4Ðõ\0=M=M=#@$ @$Ó5\'1Li¤õ4ÈÑé¤Úµ.ÃûE©aß%Ò=â{Ã÷ñ£GWXÜcòî·!Ú~¥äÜÁú.ºå&KIÅ%0p~ª62ÃFgÖaµraÙ%4~ËZh¯Ò¥`ÄÁÅªs);ËIÐì4~ÏÝgAGûv½o[þ÷\'bý^2Þ zô Z|ò>ÓÚyÊ(3¡cµcÄ¸ø©ÈûNK&¢¤È;>Ã1¤âT÷*#¹(ÛÖQ£6õ0²<ÇiÜq3{_jËîa©\"v*!ÂR&ô¨52,ÎgBèoJ))\'F\Zº19)¥¦&ãrQÞ]-$ÁFDÔ´ÒU*]ÌÎll±©e\réKJK©\Z¬³VË¦ÍLºR}IE¢Ñe¥\nLh»GÀ¹yH´hZ\rTFYFO%ñ;K\Z4T¡®»%=íÌÓ)EjE°Ãe\'BÆ¥HÙ¡emy!e:îi¡§¹ÃêÛN]]-´4Mä0$«B0°ÕØhÌSVmW\Z¦EMiLÙ4&ÉØJ²ë.0Í£&DÍ¨¡Ó\r¦ºh:\ZwG\'¬|U°÷/\"@HDaABà±¥aáÑRÚ2=«T¤`0 @¨Q!bR¥:NnÝ¹ZHm\"$øÊíJ£V19³\\ÄÙ²Æ®Íæöâò¤ìÖÊÔof³y³3fºd¹M0¡êlÐ³5hÄÞÙ³flææã\n5odÜÜËTÈÃUàØ·BáóÁî|çÜu½çèQ«ºÔùÙý\'!íØÑo«Í;ûpÿ¯Í¸söÊ}Ç­gæ¿Éd¤¢E\Z\\?ê9<X~lä504üÏâ÷¾ÇÊìÚ;äî2àmä¼C{Q\0í\'\'#ï3;£sá/qõ,LÜe6$;I`é=Æ³óMÎ#ÈþÏpÕ&é½IH¥HÞ?ºM\'k9ê§dÍÉÉaf²ë*d3ô6Ê)?=»Þ+)¢;ÞL6MS9ÍMGÉ÷·M¡¸¥)2&æäÚ|}ó¤ó»:ì\r¶[)Ô³ÈÐ»ý\rºzBÁLêcÉÄ;L½\'Y©lÐæy_iîbq<æyôÅÓLâë7©±bJòóØ.Òh\'{ì,»ÚN/÷\n>qõ\'IÖJ²\ZZJSÔô³uB<<3¹§´éÛL7\Z5ææô»ù\Zhrx¢gY¹¡Ù#øX²T¯	êy9D±IªËI1.Ô.¤â¸Ô4d/.àË»ÙJ&£\r·F´À0ØÙL,Ó¤4hEó)l)\rÃÁñxÁÞu²4d5/Ê]ä3RTü&ÈÙøº,ñ~nS¾gÓï\'þ)ûÎ³ì\\x)C9rçÝ8¼\Z&JIÌpxC|£Å(íhã;gªB®³6lÆµjüM4Ã:¼Íç¤ù\rNÒÈ}(x`UÓ%¡`Å\"DDE BX1FD·³ÌÞv&N#:$ú&­\ZN²K5èÄÄ²ÉóuNwçªRDäÜ»F­b¤7ÎQiELæéºîåOÊl\rNaÂk\rêO¬|é&e÷Ñ5npI:DÂa,Ñ:ÂÌ;¦¬§{Í>É>\'yÊ7§UAiÆn°ùFÒ{>ñGÑè>tdHAB2ÿrE8P{ýÔ', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'WVU31612070130', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:15:30', '2021-01-30 23:15:30', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60163cf248dca'),
(65, 31, 'BZh91AY&SY\"èN\0\nÕßPXø?þ¿ÿÿú`\n>¤B¡R\0(	\0G4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFÑ\0\Z`AÁ2`$RO6¡d\0\r\0\0i JhÐ#LâP0C\0Fêzmà]Ø¿û,h£#*~5Õú~ëõ·í7\Z\Zb~f	Ñ~!«I!ÁAù	Ñ¸þÍ6\Z\r	ÞpáÐ§©ó°x:p=ç.\Zn Ço¤Ýº8pÓÃ§ÐÐôt0h49úù=(ª¸Ü#qï;C¬bÎìÑÓç=òÒê,/ÆóÝ«ö]×5Ñq¹×£¶ï3ðR©ä«ÄS\'ð½KÚ¼RÂÂ9×[¥eyZ»Ö¥ú0ïj[WÇ{WM¤jàY^Õ¢´0]¶ËæZ«cÐ±|Lê¡N×ä·/SN.Ùt]Ð´]Ë{Öù§¹«V­yZµj×ÆÓa+b.E±e.¥ÔºÖòX1¬¾ÝÛÚÜ:ÈåN`tAÂ.0tA2Æ)Ù¹Ã£nc±¢F#¶So\ráØáFÃùF\r,4SJ1Ä0Ó¦Î åê^F)q»AuØÒ\rÂ\néÛÃû|¤|¦\Z6íFwm6nÃÌr9´­8rÝì öhÐèÀ¶léôÍ¸`\"Ë6µ·9;MML7\Z6!`;á`¤(p¼0lÝX\rÞöX0pÜ!·lÝÛc§.Ûh]¸°4ÙÔráÐ8BèRtåºSfw.8Ë°`7lÝC»º6ÛmNHÙ/?/<ö§]pE\r(]²)Ö-`Æ\nb1\np±CCa÷1	\Z¹(^(`ÁEÓB-10c= çºn9¢ä¢OÔÂm.«HÛ½ÃËpëtÙ.;cÚö·6vé×Gã`.ZFË-<\rÛ\\¶C\r<:ØXðèiËM:n¼<<9rvÞNHôq´07vÓµÉ	-À(ÙAáGÒ8{ó{Öo^cyù9OµKå{ó|gI^UºÏäõ:M±éôzv=ÏÍÊ]GÜÿn^ãÖ¾K7LuÆß¹áCDÃDË¦\0 Pyì»-oÜÂï_ËÅºÖ2yqø¯æzNÓ\Z»¦¾a¬hu§Rå1l\\l9îuö-«²s®ÀÒ_BùYFÛÝtZÙzÖEÒy-çAÖp¸[JÿnCÂ¯PGh\0ä±v\'%È<ÖÓá9Î£mÏsÙ,ÛÍ,Ø6Bdaà±aúÂ~|¡Ïsâiéî|mÞÚÇ`ùÏ¨è1ÁpX±b6#Â9Éh°¾Ã¤ó\r«44´1u¥ÎfNCÆhnÙ|K\'\"É&³°æ¼Ö·ÒÛznÓýß¹ê^uªúò´oÚrØ¶ÝVV¡¡©äZ[Ãô_ÑdjbÒùQÆõG°°¼^úù(§¼î³Kzù$Áàzïi¥Ü\\åÍjyä2xÜÅ¡¥kb¹nëeº­LóCi{ytT~D|.»¸ámºWP}VVFÖî¾Öð¹Ë¸ÊÀßfÐ¼Q©¥¼ZX6½7[*Í¡£ÔÂÏs6ÂáC`µ: ÜÒ4²bÒÁÒi\\ËiØ6Ið,µÂ?ó¬É{2uß8ÝsKu°·ÚixÇ%µÁõr_e×fð¿G9Üm£\'AÜrÅùØÐ»ìX-¦Eý7êq¶·Æëy:ã.&Ã]m÷AØz-möeùð\rkHÐ³pà`Ìeyã¸É#Aây}çÆéöøü(þ@@ütPIL\nDEbÅD¡ÇK	``Lb´:N}ËvY«eÕ\'r6Gy¾Ýn9,·¦jjfÌ{Ý±Ñ¡ÊwÝ¶,ÈÅzN{¥¹¾ßX¥ÊsÖL,,§eaÞZaÉ¾s»e°Ôo-ï/~$Ýt,/ªôî1ß\'ifcXÍº;eWa­þ^¬ûÚ)ù/BÔl®Um²q81ícé0µ¾dy]UG©üõúï(a¤ÿÅÜN$º&', 'Online Payment', 'shipto', 'Azampur', '3', 275, NULL, NULL, 'gsBa1612070558', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'DSFADS', NULL, NULL, 'pending', '2021-01-30 23:22:38', '2021-01-30 23:22:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60163e9e74ad1'),
(66, 31, 'BZh91AY&SY N¾\0´ß@\0ø;ô¿ïÿúPÝ\0µØ4è%MQA¡ÓLÑé1\0LM5(\r\0\0\0\0\0\0$¡ÓF\0Ð\Z\r\Z\0\0\0\r\0\0\0\0	ÑM¤ÐÆ¢e=e1\Ziêh2b@RÀ¦ÒsÃJ=l|ÞÖ5!× Ä|~D]ÖH=HIÎaÿÝBÊ(1mì¥\r0h^,á\\h»¥DZ§âÆS*Ô<ÈèÜW\rM¾Eö<N®+8q)Ä@69D.q\'C½àHm:ÁYx¿2¤Y\r	\ZEØ¨\r41e,P±h´\"¤\"ëj_ =¡`ö\06ÅFXRF\"SÚÁ©M.P%4i*½åI`Ø©I­Mã(\"©¢Öµ32aKe«3jØ©MÞÂ¦¯¶á@AB¹$.Xò$jYIM.±tZfÅîW¦$Â;¤´­âBÒÈówFdvv¼Ä	|²<`d½Ü¤cGö6A	\0U!éM2¨¨6h¹6Ê,D¸2RE\"ÀbP\\RFlv0ë(\0â(¦XÌðCæÙª\\ÌfÀïbg;IQix44KFF)&-`xe.T³T³\"ËÌUa®eêaÊ§Î¨&2°ÄÑLÃAh Ypæ¥\nü0e/I,Òê­ïf¨«U6¯\Z\n\rÔùøB\rè Ô:Ïqî=?sìh¸)#æ¼êQIÖF©¯° oÞ[Ø>kp×È§AkAX\Z352ÀgúØÙ%6\r\rÈ=]ÓS¤¶ºÀFDÃ*µ0d3ñ  !þC\'³hwwãÚóW(ÅâHUEU¡1£ìú4MC\"E3#)ÜBXâIt\\ï@ÍãÃî©§\ntÛaóú\rAà×fÆ}NÚ¨6CÀ&åÃ¹Ä¬c¯¼íUá¼n¤ 3|ÎÓÕä.p=FDÚ¨Öx½nüuêÌì>%ë¼?é¹qÂÑÚ)\"ÀKZXT-TDì\'®£*²T(A$ÅàaBTÀåÉZB©w\nGÂÞ0ø\Z-ü§R3CL½CPÁ·Ø§jÎãLÁî\ZÏßÂ6ÔâU(57ÔñÈeH=¦Õ*5ÐÐÃ#eÒ;ft)¾ÃØÑ2F3\ná¥s¬ç-<9Û¹ó~°> Æ&üÙ	,c¬\"AVAZ	6¢N3m8Â+Á.bªñ2½ÎFA(¡B!rÖÃ·«y±72É4ÍÊ2ÆfsÙ(d²­Å(FmzÒû°¾£<¼Íi¸õ.A	QQFK#ÖyÊýÇ·\0a\n§Áª6ñ(À_(ë.Ö1å9ÎdÉA¨ñw$S	\nëé', 'Online Payment', 'shipto', 'Azampur', '1', 380, NULL, NULL, '5OW61612070739', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:25:39', '2021-01-30 23:25:39', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '66', '60163f5362d4f'),
(67, 31, 'BZh91AY&SYÝQp\0}_P\0Xø?[ü¿ÿÿú`¿}\0\0HD(Q\"#\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\"Iê2?M)êz©Ó@õ£ÔÓÔ=CFRB5\ZhSÔÚzõ4ÈÑé£.ÃûE\"Ã¾$K%¤{Ä÷íâýÎ\\:1¸Ö+å;ÜÜ´ü%KÉ¹ô]uË>l&JÂYÁòQ±v,Ù,Â4jäÃ	³&K6hú2\\ÜÐ¢ÒéÖxzê©Ì¤îg-\'QÖhú?eBøí{ß©Ñ½ÉÁÄØ¿{Â[ÀY(3Ðp>gØzO1EØê,v¬zK#É¨£ÈÈ;=Æc%IÄ©ö*#¹(ÛÖÑ}3oY£%±ØvÌÎã£ëy,¾l0Ã$NS­doJS\"ÁÈäuCzTQIH©:jêbrVjÉFt²Lh©4MKI-%Ra³&åö6k5,¤©MéBä¥*F«,Õ²é³S$.jQh¡4Yd)B%.ÑâTà\\É¿yd^5-Ê#FÌ£&<YNÓ2Ó\ZÑRR¢ë.ÉO{c4È¢5\"Ì°æ£yÊÆiÔXÖ©¥ÌY¼äSlÐhpc«M\r=Î4Ç-´èåÜØêÛCA¢l@³A<(ÂjÂSVa£1MYµ^hja4]¥3dÐdK&\Z3a(RË¬¸Ã66¢L42VRé¢fÍ²d<ç$;O¤1)DR4.\ZV(!QME-£D  °ud)[¡JF0AQJ;©¥\Z *Sªsusur´Ý\"$øÊíM(Õ36\'66S­ÖÁuÙ³ÜÞÜ^T½ÓyCzìÖo6asfl×L)³C3R^³BìÖY£{fÍ³(Õ½ss-S#\rVg¥1¡!©nK\Z#Ì<¹ôqÔ÷xzÌ¼dCê6YÈylh·Áçr§NÜ?ëónæ½²qíYÅ9¦oÁGrd¤)(¢fÑgdA¥Ãù>³Åñ±Q±\Z~Wñ{ßkØêFÚ:Þäî4p6ò^Ùä Brr>ó3¸á*7>ðû©bfã(ó¹±!Üõ©öÎs²nqÖGîÎx#¦©7MêJE*FñøÒlÙ;YÏdå:ænNK5YS$¡°æT¹HóÉü)í]Þô¬¦hïx°Ù5Læ\n3557ÞÝ6Râ¤Èið.Q÷Î©æÁ:mÊrYåh^~vÜz¦Å¥q;%7)êe8;XqìÞIú¾£¬ó=ç¬ö®z§I½LÝkzÑvDá;ßYdÄ¥ÞDâðO´QüÇ¸I<ZN¢TÐ÷$©ã=S9wAÄSÈÃÉó¼\Z{N-´ÁcS&DÃ{nÉwð5Ñ>.äð)E;&æn£®Gî±d©&ØñrybU¢b]¨]IÅq©*hÉ^]Á5w²2MS\ZnÓ\0Ãce0²<[NÜÐ\ZùÔ¶âÀ?×axÁØêT\"©£!¬ô¿)wlÍISð#gâêYé~nS¾gÓï\'þ)ûNë\\x)C9rçÝ8¼\\\Z&TU#àðùG¥(íhã;g¥!éêÇBÆÀ£]XÐÐv°L¿M0é§/3cÔy¤9úðÁ>ª¦J#BÁDA	\Z °boW±ÖP\"ö ów2ôB4o[\Z(}çbs¼ß<´ØôNMË´jÖ*C|åQdÎn®îYôSdØjpé¦XoR{üÒ4s(÷½Vç	â ´L&Í¤,ÃºaòïvOòOÞa2å)ÑPZq¥¥&¬\'¾Q=¯0¸QôúOa¢ ÿÅÜN$7Te\\\0', 'Online Payment', 'shipto', 'Azampur', '6', 470, NULL, NULL, 'cm5S1612071438', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', NULL, NULL, 'pending', '2021-01-30 23:37:18', '2021-01-30 23:37:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016420ece489'),
(68, 31, 'BZh91AY&SY\\®[2\0ßP\0Xø?[ü¿ïÿú`=¾\0,@\09M0	À\0L\0\0*iIè¨\Z\0\0\0Ðh\0æ4À&C\00L\0\0¦\04\024@\09M0	À\0L\0\0\" DÈ&\ZMSÔÓÒÔ§°H\\	Àê;ÄObé\0((}ýÏL¨Å%BFw:¥ABÌzª©<´Ö¥]iÿ7©­«Eñ¶YV±ý Îã º±ÁAË-F¸ØÚn/è=A®ÿýyiÃÂ½@ïÐ úÍ©ï<Î#¶Fòt Tiä¼Í²°¡P:ëí,#AqM¹ÁN¹Å©\rç¡ÄÐ·´ò È\073MÊi´ÜHLi¡u1º£³\"ã33L¢÷¡*¸Âá\09Êád]\\ÄÂ@mñÄ¬`ª	M{Ó!0M l\Z¤ZmÞhI\\ÆW!c|UW¨¢¡bÖ`ØM¦f¬¹UA\n´E+E Ê-¤bLÌÛyM\\ÍwÈB¹$.XÜI\n\n­!£K1X¢x¤ÒöbKT y»µnTP©{Q4DÌ-zÔVÀ0¤ª\\ ©GRUÕ­C%U_%õH\\ peI´Àp¡E¥\0ãe\nÕÁIiEÈ¥XCY@2¨!L$PCcÞn{w¬$,$\0~ãA¬ð:T­÷Y1±0ªïkØQWy.Þw!uH¨Ã :IR*Mç:±xw-aÁ¬®6qX²)-c/I÷4M¡ÍòNÀüÍåÑÄØUnû©Ð·Ì~óÆ6-U¿6u*´ªÓ­xÞ  (}fúzä|Ælw¢´üÏð~ÿC°ÍoRG#â¾(¤êÁÔÕ6í>EKA¬Ï¡(÷¡¶£;wPG/Y\0o=Æ\rÇQ¡ºö±Ü³60hl[ær²6=fÓm»`#Ã*àÈ7´>ïò<ûáÝß2XV(2Æ¡ò32l3j¢Ï5ô$gÈÞu\Zfbdp^vC<.½iDQCÍøÔÓ5	·NÃøþF¸eêzÊU<M{\rÜ gPün\\49û\n}â×¹|AæÎÄ11çLð=~6\'°5uPê=FD:¨ÖÌï[¢?ÜÖº\r3*î7Ò9ô=G~¡Ø@Ã!à*%­d0&^¨\'EyTeV\nI1xP09fòV\nRñÞ0ûßÚ-Q\Zeê;¾ä÷¬¬4Ï2ý7Çv§\"©A´ä/°ÿñÌíl*y|\r;Í.ªÒÚÎäÎ¢-¡Ôq§Có`f2°¥HFyÒ¹ÈÎÝÎð}?`cº n¤AFA%	$¦DjMægM¡à`ªº½Í#(¡B!s[`ÌéÍÀªÁÚkÜÆHÌÕ@Æ@XÌÎzâ§pP\n,AóEJ±¯jü0/¸gÇ´ÆzésJ.¹¢9ø>£èH±Ì Uf7ØÐA©X¢ø§½È_`~ÿ\"j¹\"(H.W-\0', 'Online Payment', 'shipto', 'Azampur', '1', 140, NULL, NULL, 'jmff1612071772', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'DSFADS', 'ten', '10', 'pending', '2021-01-30 23:42:52', '2021-01-30 23:42:52', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016435c788a6'),
(69, 31, 'BZh91AY&SY\\I0.\0\n×_PXø?þ¿ÿÿú`\n> @HA $¢BsFLL\0LFi#ÉFÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&\"PQ\'´£Ð d\Z4Â\ZJH¦Oôjµl(yMÍLIé¤Úªn)ÄSw_É~+/Õh½\r)ð«ü/Ïû/ÒåÄè78mò0×À3Y$.Ô(Q7l?ËV­Fµ»A9Û·ad(ó>ÆÃVùp<î\\4l­Ý=¦ÍÙ¸]£³ÜÐwr0hHüòHfËc-.»¢;VGÀÒw.õÑ~¯ÙýÛ]åáz¯¡ô7~«Æë»®Ëµs[=¯L^j½Â?eò®µû/µy¯BÅí^zÒõ4·y-ËócÉ¹q]Ø»­£vå¥ö-±ë¸_RÝ\\]«/µu¡MCÃ@¬KäÃÃFíµcJlz£¬yÇÄxÍ¾òÅæ,X±h¤zëY%ºÒ]ë½zÉs°bX\'&ÎMà!ÇtÅºårÝiN&-ì9¥(lÜËwvöØti,4 <\r\nPÆ\0ic§f¨lèn£Q}£±V\Z(ÑF0Ã5tøG8ØpóÃfeÐÑÁréºÝõ!k½c\Z0HÀlé«V­~¸AÃ@ÅhÝÃgÁ¸ô Æ\0*á«W/Q$BcV·I£CGØnnhÃ ØÑÀè8Q±¨Òá]6-­êÂÞìãbÃt4Ýé³VÎ¸tÔ2:BÍ®cîAºBYËÈDaF­\Zg[·Ã `6jA¸Y\n¡0á°lÐ»äCúPzÆ\'Kqd¬±jjí£Jeúeie-Z5d²ÀØÕÂ±Ë®Ôf[)eé\ZX±de#|¶¶JÕee²Ã.ó¸í»®ÍQtÑ\'èb×¢Ú;°ìÝÀá°]ÃT°lìÇÉ°Õ«§.wxl5 pá p0<8hð;6j;8pÕµìäl6`8b#6r5pÑ£ÁÃ³³³»¸Ù§swo¤.6tÑÁ#[µ5#\0¡¢Ýw>ñô¾÷¨üg%í}nGôuö¥õ>:¾¼¿Ó©e§ î;:û.{ÏIÀ<ÎzÎ>0~B(ió°{]`ÁrÑøA¹ø]áocüL-:¬º-ãGüÏú~GÈs®øØÕà}Õ÷\\\rãcÒÔeÁvX^ í»Wò\\Wë2¹¿i²þ-#Øbñ»­Êð½ëBï<×#¸ôîÂîµWø¸-]f\\¤æuX2¬°:þtÝ#Õq>s´ônÛ¶ÑjämjÃWõ]%Ü°Ùb¼SáeæbÚõß3F9c­ï6vCH`,0p:ì?pÙqbÝÝ\rÒ5>`è£ÅdaÍ[£¢Úí5\'IÒltGê¾£¥hÎÃI;/mÀë½Uq*áì~ õ¾ÐÈzÃ÷~V¨Yï=ì:¬¸ÞK¶ØØÜó-® u»üÖæ[_ÅËYb÷>5ü(§¶äxËj%ü$ÃÚ{ïuÄÚñ.ÒÃ¶Ø;aá\rày¨UlÅáÝËw*Ø!ñ6:×î\\º£ózãæYbËÓxî7zôßihbÞ7Ì{ÞÛ´¼M,­[¹\\µÙl\\EÂ­[]qÈÚõÜ8G(ÜÜÒØÛWF-Í£kF[XwWZâh¸|á±ìsþzMîvIé¾dv^uÃ[ ï¿ Uð!³!Ê+³æ}6¯mù»O\Z;~ë/Èù­±yYaq6[/õ;/sïv\\\\£¢É<Þí{¥Øbùã«Üx»{©d}¸f-VÑ±jçÌÃQ¥ædºFõP2×é{Î_ë> A|(fjÃR`Ê²²°Ä0ÊM,VYT³jÉ0`±Þs<®«ÂÕ\\/D(áG+¢è:Ñª-\Z¹&ÕnnjÔ|^ÈîØê<¯eF;`vÚ¹4ébÚZ4ÌçµájàyâàtÇIrf^Ép7¥Õdy#ãt]Ëß|+ÖyIì-Q¼o\Zº#Ù-[¼\rïêeë½\'àÙOè½kqÂºY{,GaÌÑÊÞ>ã÷Ô;ÁòÔ|¯î#ßï¼áY`Q?ñw$S	Äà', 'Online Payment', 'shipto', 'Azampur', '4', 340, NULL, NULL, 'dztN1612078393', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:33:13', '2021-01-31 01:33:13', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60165d38c4ece'),
(70, 31, 'BZh91AY&SYû{ü\0¦_@\0ø+KôD¿ïÿúPy½ZÆ\0B0\Z\0\0\Z\0\0\0\0Q14E4=@\0Ð\0\0I©4ÈG¤\Z¨hÒd\r\0\0\r\0\0\0\0\" <ÑLb\ZêLHÀ$í\'ðøí:ìî;;0j,Èfñ!Ö:7â`5þ*; ã¾Dx½¹³B¤¦¥¦Bc3º^\"LªbÃXÀÓqLLMæÞFÄ\\w¥5°$AsªÚ\'9&2T¬mÁ£Ù¥àº!0¢CÒ2II¨dë\Z0Õ¯QÀe<Ð²¡PKÍé{*e\"!4RUV1	Q°Ux¼Âf#Ðô>è_	Z 	¥ÉJM¢µÍ¢Y/Å¥«qÈ%{K(@ËARå	!*¨2ª½S¼Í¸X³YÄRZV±!èã ³WEJ30=f VÀRU.T£©*êÖ¡ª¯_âBï\\`E ,U\0õ2QLbUÃ£ò±j	!t@¤(AGØøvðT×E!à(¦f¡­¡ÈZ¬^ë3XÂLX1ÐÆ´±wbõ¡U»+Q½^Y^.^÷j`:º]¥1h9gÂIëÖsgXÄ\".s¢äJgAÃQò¦\Z¨B¤J×Cß¾C>nôPjjúÉêd¸©#cæ¾u(¤ìFc©»¡¨86Z\r}JrÏuv°717bB>¶9£!à±2`Ó`oÜ8Ðâho-¦0Ê­Lr=}FOf°îïÛµ/©-£nâµÏSÐÜr2*4Ì$ÈàÂs!,Fu$º.wAéS>4Ð&Ûv×ÔZ×¡¦ÛÔ$X¦åÃ«	xNkî?³ì½É&Ð®Èc=ØLêxøXì°ñ0 ðÌ$F²Æõº(3È´\'zC`cãÌ½xÙ@§Nã¿a-E$X	k;\nªrZÛÚb$ºRLa\n¦,âJÐ° *KÀR8Kr =M.ÓTfzw©9¬l4ÌÖ?.1ß¸æU(7Ô~2;ÆeH>FyU*5 tGòbw®C¾g#²a>-¬)1Ìd(<ÍH å\\éî]6¼¯²Ì\"/JTdcF	IS\"	\"Ì	ÍÅæ¨gÄpª¾¹¡#\0P¡¹ï ëÍÀU¼ãv3sHÈÜ c ,de:ÅJ,ë1ì#&¿½_xÏÇ¡ZVÁ	QQEÖÈIöÝ @O¼f\"of41 jô_ñ/¤ÝÏ	ý¡S¼]ÉáBCíïò', 'Online Payment', 'shipto', 'Azampur', '2', 295, NULL, NULL, 'Ow3R1612078572', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:36:12', '2021-01-31 01:36:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '44', '60165deca8f1a'),
(71, 31, 'BZh91AY&SYZÝÖ(\0\nd_P\0Xø?[üD¿ÿÿú`\n_>ª¨\n *@9¦&4À#\0\0\0ÀæÓ0\0\0\0L#b`#LÂ0\0\00i0#À\0\0Â0) ¢\'ª\r©§©£M\0ÐÐCOP\0¥$Bh&h§\r)êy\ZM£ScSaNÇÞ~F~ÆPÒ¦Á_~Ì[/×wî¾W=sDõí?0ÕI!Áê\'&áû´ÓAg£ÂtpáÛcÍõ°w\ZtÃ§£§-¡´áìnÝ\rÜ8lîéðl<:Å\rÂã êÏÃçL!Úð>!ÈÐë<ü?Ëü:ø45£óy¯ó±Èô9u»\Z»-.fÏÖkÖ*|ÄöhýÏQÖ~ç¬úÏ1îxÍÆY°ú£NCö¶1#w¸>£0rEèè\\ùÒ}´b	Ce×xvMìêc8ÛÛ·µlyNãÞv_[ìi\\.^\"ñRÂ½hbÁ­²Ì4Èv§Éä7K¬ea*Á:¸z±.¤rÀ³ çscdvn²§C-ì®Õ\Z7prpð×Cnnm\rÒÄhà`îAÀc\0,Ë07rÒîìA¡z\r\Z,ÙF0:iÓïO `(ÓÀA±¡ýÊ2ÂÈ9\"ãÃÍÊ|ÅÚ;Î`Ñ\r:i¦0ôÃ#Ì]ÅlåÓwh<.¸ÑÈ²Á0Úãmmq¼îcs#~6[[\\nÍ\Z\Z>ææ9\Z8&Ã´ØÔ´p®¦7,\'L° ÜvnvnÓwNAÎ]\rÈ]¸°4Ó¨åÃ pÐ¹JGN[¡lÐ7réÃ»»H]Ð6Ù¤4\\·\rÐÂ~¾w§òe,±hÕÛVGöaHÙ°YÆ#AgÙl´Ëuç²3-Q2õF[èÔe#kBµbY`a,°ËÆv+µjìÕ9+2R¾D\0\Zlun¹³áÚé ëäîÆ:°)§cN¹98pÃ¦ÁÀÀ8`ðäÅ;î\ZÝ64ÅÂPGv\Z.ØL°\n!36li¨ØÓAÃFîîí9O!»g$äãd07vlåÁ-Üc[Ù\r0öñøïGø½çþºOµÐtUð:¾Æw3¯ÕévW£¿wû|#´ù9÷Eï¼M¬¯r±ýí/\np²80²ÊÃÆåjî!¤ÜüÏ²î·¿¤øuYr·ãØsõ<ÛMxãcWy÷WÝp7*yQÙx4<ÁÛv¯Àä¼ó°Êêci}§½¥q¼F/Mã·+Ï{Æ}§AÚw7avÚ«ý\\O]]f]é:¬,±Cñ;ÓÌw\\O9â<Åx­®kV!Äýcµa²ÅèÆV_9kÏw¶c¦:|o¼ÝÖë!qØ6Àô;,WJË,®éºcú­>óÆyÈÃ¥[£µâ5\'3y±Ê?è4sZ3°ÃÊeÓeí¸wu½Ø\\oMà~×ù2¼Ý}Ç¸ùí£{Úv^UÉ4°öÛ=£#kÈu{ê472ÚúÑÙz£àr5ô©\\í¹b°­Ræ}UVÓþ¯uÄÚôhÃºÜî>c£ÝuÆÕ½ÕtÜ®*·0ùCkþÛQú<¨Áaò\'/:ý6»ä{ÃÌy^Áè4°tZ¶änmtk#²Øt§\nÙ §>7Æn\Z\n\r!H`ÜÒØÛWF-Í£kF[Xy\r«±q\Z.0le¢éIå4_ìëõ#®ï«ªYXr¸Aë¿#kª9ÜYt?©ç~7Õì¾/àq£GiçðcàÁò÷Æ	 ¡ôGÊst!Ú]oT¿\'Y£Ùy]óö÷;RÊ|0:8Z­«dÕÓÒa¨Ò÷.G£F^]UÕ}7®å{¬½V_\\>ÁKá¤4fjÃT`Ê²²°È0É\ZX¬²%	«$ÁfVÇé=WUßj®OB8G¨è¹\\µjF®Ú­ÍÍZåá]»{ÜÆÂácÇÈ&;,Qà;F,ZN§k¾ÕÀö\rÃÎ9Dë2ðqÑ.«#ëç!ÊíX¿òôMÖ{!àZ£xÞ5r	jÝÞo/=å?íñn§èxÞÃ±2ËÓd;N³FG;xûÌ[ß{ïeGÿú>ßÅ°µ`ÍOÿrE8PZÝÖ(', 'Online Payment', 'shipto', 'Azampur', '3', 555, NULL, NULL, 'jH4N1612078947', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'admin', 'Bangladesh', NULL, '01515691480', 'sdfa', 'fsdaf', 'fasdf', 'dsaf', 'ten', NULL, 'pending', '2021-01-31 01:42:28', '2021-01-31 01:42:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '22', '60165f63c2f7c'),
(72, 31, 'BZh91AY&SY2Wø}\0\nP\0\0Xø?_þ¿ÿÿú`\nß)\0HJ@\0  `20110LÓL`20110LÓL`20110LÓL`20110LÓLJ\0d¨õ6§¤42C@\0\0\0¥$B\0\Z\0#)©ìA=&MÅ8tëúüþæ?SKL?wöi~¯Íê$rN.\nÆÆ8æbØü÷¥ú];Æç\r²uNçârÛ31ÂØÐè*\'\r£V­@£Í»A9·nÆÈQìfÆ®[7\rÚ6C0c§£fÈm»vÜ¿ÃAáËª6CÔï7t\\;Ì#ÁixVG;%°ê;9®gÉû?ws§Cmòï½Ïswêz¹Ý­]Áhê7z/a¯`ªaî\'Ì)£äzÎÃäzÏâ0Âì=îöw±í7=o+KÊö¿äÝÖé\'Öxí/­Ú4ipKâpqqaâcL­,¹=oç6+ÔYÕ.Ç±ª.ïeL°»Ð<Èd:Aò4Û¥»víðGs(·n÷6QÒ².cÕì]giÜlPÊÃUâlíñ6\rÃBÀÀÑt:7:,Ðj@Ð\Z(QÝ±ïil\rv4\"=¨HÀ\r²\r¼5CAt\Z_cxÔ0ÆJ4Q!·|áÌ*A%ØQ\níáºÝð,÷n22HÀjå«V­ØzN®G\'#APÙDÒ!v+g\rc@È dzÑ¸µ`¡îµvú§¡ò9µok{é0ØÑ¡£ÜÜÑ#cGÄØu\Z-+©ÍeÉÏN@ÐÝÂÃf­89pé¨dt-\\Ç\rÜt,³\rBZ5Î·n!@ÀlÕ9p³.C(aÃ`ÚCõÊÅ?dñ0ÞC,¥#\rÕÚ)ç¡YjÑ«%CP£u\n\r£0z±	\Z(Exâ5&ú£F,22«IZ±,±&[ZE«¼iÙv­]z¡ØÈ/èBsjÐêÙqNk¡«Ý±êÔêÀÙfÎrpmÈX\"ÉË@ä0LL0fnÐlá¡-Úväl0³A0À*B;shpÑ e¸rvíÓÌ*@ÓÈÁÂpßq³¦±rC¡K20\nô/ ÷3íxðöÇÁÈè4è>ò¯äÿº¿ÓÞr_AÍw¶ü^gä¸x÷Çäèês÷ôèUâC/¥Þ¥ØÈ$bÀãrµxÈi7>ó©ñ}7ã}¦/Iö4ë²ç·ÓÿOð~_ç:+º65yO²¾Ë¼lxÓÂºL¸.»xv]{.õÉy\'YÒû¥õCý¶.WiÑxn^[æ4«¸úÎsÀxÎ´º-UûÜO!ê«¬Ë\'U*Ë¨}Ç:.ßq>s´î8Ý¶îË×1½«0à~9§àl°Ãeü44²÷¶¸ÞÓF9cÆù[ÞH5j9HPr:9\'Éý_»¤é²Åq2Ë+QÓtÇAô­?©á;ÎÈÃ[£µÚj9þ£ö>£hÎ³ù[cÜÙæ%\\>G×Õ? uàó/°ù}´p½§eæ]V\\nëK=¶ÆÏymr<®cv\Z¾Øp2Þø£²õGÖ0ÿµôÝ\'¶æ=ÂÂµÆ1\\ëã&1ï¾{µè.ÒÃ¾Üï=Á°÷JNÀj[1y<>ù§ä\nØÜÜm¼5ÍÅ,½Oêz«ñ3?{KKÞõ^ÃÞù¯zM9­MçFæ×2[YÅÌ9\\*Õ±µÕÆ×àaÂ9£ssKcm\\´ay\rã{F[Øx£­cÀp¥î\r´]Îw_Q×ëÔ«ÉWL²°åp-cÙs{Û÷&FqûÎ/\r«Ùcñvc\Z;O(/ØóF×¥XMÚu^·UÊ,£Òð:Þu[Æ/«Öxsgmz\"ÂÚ-V¢QãDÒõ.GÑ£/Gé½¢åzì¼ö_\0ø2_VÑ«\rQ*ÊÊÃ ÃÒÀË),ÈM1&Q[ óÝ7}ª¸^\Z^Tp9Àæ¹Z:TZ5s&ÕnnjÒñÞ½µCä{ØÐ[¬c±ð\r\\tÙK¤ì­±hq:®ûWèz8:#wAsÎ³/4¹yuYB¿<£àX¿¥è9®¬õÃÌZ©¼o\Z¹GZ·y\rïÐËËwe;×zÆ7î7óaþXìeç²MÇë4dt:7û\\o{ïUGÒÿb=þóùC1e,-X3SÿÅÜN$þ@', 'Online Payment', 'Select', 'Azampur', '3', 429, NULL, NULL, 'Xr7o1612079793', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 01:56:33', '2021-01-31 01:56:33', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601662b18c312'),
(73, 31, 'BZh91AY&SY4@n\0\n×_PXø?þ¿ÿÿú`\n>$B \0AÑ\0\Z`AÁ2`4dÄÀÄ`Fb0LaÍ101¦&sFLL\0LFi#ÉFDÐ(zh\0\0Ñ¦*\"	Ó!Õ=!cPÀÑ0M©êj)´St^å÷,,/Ñd»ESï«ø_ê¿+~Óq©°Á¦\'¼Á:/¼5i$0Ø(?@a97Ù³fÃOðá¡:8pÆèSÔù<\r8\\4Ý\rAÞ¶íÐáÃ>v¡A¡È÷Å$d¸Ü#qèíÁx8\n´{Oó»K¨°¾ûË{^Ö¯Ñyî[¢æ¹×£ºð3ßJ¦òUëÉû/Jå_²ùò]Kç]näejïZâÃ½©m_:è³\ZCä`ø8~!¸¸\"õ|i|§JkÍ ù\"mËÔÓ¦¶cZ/*ìZ.ÕÎ¾gÎß4ø5jÕ¯­ZµÅ#ÊÂSÄ[Ö«)u.Ö´KÅAE`ÍÝ½­Ã¬Xè`òHAºãa¤Jn4: cBlÜáÃÉ·³c±¢Ìh¤lÀ\r²xlÇ\n?#q¤>K\rÒ`1´í³·Ü½ã¨b´] Ü ®¸\\?¹fïð\Zl;\Z6íFwm6nÃè9{H9:h1Zré»pÁÀ÷ YËfÎDÑ!±³fîÃ!#\'q©©ãC&Ãq´Ðð°R8^6n¬ïL°`á\r¸B;nÙ»· ÇN]¶\rÐ»q`i³¨åÃ pÐ¤.éËt\"0¦Í6î]8p!`ÀnÙºv`,£m¶Ôä²ùã÷¢òÏ:ì-D±¡¥¶B#åC1¦`,`PÐØ`>BF ®cJ¥\n0bD 4ÐLA#Àhv[Ø4ô¥O(ANæÈfÜ9·ÇMáÃ¶=Ïsq³gnry·9¹h9cÃvÃÃ-Ãaãv!f<:\ZrÓN7.CÈnÁÛÌäd\'Cwm9jÆÃ¡¶Ñ-ìû{ ö¾û^&õàù[ÏÁÄúÔ¿«ãÚtöâ·YüI¶<þo>ÇÁïq.£ì~n=Æ/©|në÷Ùaz#e6XXXmºÍØC)©ö-Ùk~¦zû\\l[­c\'öyù{Ï9ÂºcC7aôWÑl5´ê\\L[5ò=Î½Ëjì¦+î4ø_Ñm¹.ë¢Ô®ËØ².Åo:³Ì]jþ-§¢®Sù8lUÄ¿ÚìNKy-§¬ç:·=Ïd³o4³`Ù&Õû\0öÔòcâ6|]¦:c§Áö¼!´29ÁóYÈ8cäX±b6#Â9zÑa{Êp6¬FÐÒÐÆMÖ99ÓCt~ã\ZtáL}Ôú\rÞYËêÝ§ç~¦+©yV«ü/Rñ´oí8Ø¶ÝVV¡¡©âZ[Ãó_ÍdjbÒþæ½ò©ñ¯x[Îéa+4·¯L²õ[M.âç,KSÈzÎC\'ªå-\r+[Æán¶[ªÔÁñ48/o.ÅæJÅ®î8[nÔM5»¯Iìx\\åÜe`o³h^¤;³èØ@Ói°YêCfØ`ÙãSS+CLÛ²`µ4,´°tW*Úd¶\rzÃCKæpüë2_N»Òk²®Yb°n¶óÂúÍ/Tr[XQÉW%îºìÞâç;´dè;ðX½çùZ}´Ñh¿¹ÍzKÚß¬Iâê.wª\\Æ®0»Ûî°óZÛìËóá,Ö¡fáÀÁÊñ1-Çq&/.MÇ¦æûï°éöØúì~$0 A|PIL\nDEbÅD¡Æ*06$ÀÀÅhtûÙf­TÈÙæûu¸åFh²fÞU©©1ñvÇF¾í±d6F,\\Îs¼:6íb0ëZ0h ågÒiÁÞZaÉ¾r»e°ÔoÞ_IºèX_Mç7Ü.S¾NÒÍ\ZÆ±tvË6®Ã[þ¼×Yö´Sð^e¨Ù\\V,]¶\"ÉÌp2b7ÚÇÐakTxÝEG¡ûö{/a6RâîH§\n\rÐ@', 'Online Payment', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'IODR1612079849', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 01:57:29', '2021-01-31 01:57:29', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601662e8e6819'),
(74, 31, 'BZh91AY&SY[s\0G_P\0Xø+ö¿ïÿú`ÿ\0\0@ôÐ\0\0\r\0À0\0\0\0\0\0`\0\0	\0\0\00\0L\0À\0\0\0\"¤\0\0\0\0\0\0\0\0Ú©êM¨\04h\0\0h\0\0\0©!hF	¢zPdÉ´MCG©t6úýÊ?ö?2çÐÿ\'º!2OÜÊIþ\n),}.}OÙÆóI©z9ÊrÚ©å§)Ròlâ³\"ê,äÉi8²d¦Îj62ÃFgÖaµraÙ%4¥Ú4RX¼Ìë;8¹2ÎgQ£7ýr5:osÔðq8´jq`¿k¾[½IG(N%SÔí(¢yey³Àí3;ó~*â5=NBç©að>?ÃDXí-àJbÒCÒô`ÝK®à§ÐÈñ9}ï´HÙJTIØ©ê¤¡¡dèQ&iQI*NNnnlFJr}Kn0gQ5lYIæ|7©R¡hZJ¥MlØÜÌÉæX5&ÅTÌ]³uÓuÛ¨.QP¤)B%]ês.}¦ªhb-ÑuãUÃ¡L*JPÍë®ÑGQEäÈ ÉH²ì\\¿3(aR%L2]vRT´¤¶ºì.f1Ã!ä#ã>Cã$2P\r`Á¾i¡«	K.»6Å5fÕy¡ªaTÑvÍAa,hÍ¤²ë®0Í£&DÍ¨¡Ó\r¦²M6lM$ÉÚNù!ÐÿRu1,±b,*%)&KI)ó¨±JRËK*¨¼³(¥K2ÁaÚ¤ªZ´hRRYQ©$¥¥JuÎ§_S¬»¤Èê¨ó#©ÍXU2`ÉÖÍsvêv;.»6{¸·/*GkNpf³³3XÍL)³Bê0f¤²4,ÍeF\'Í3LæíÌ(Õf2Õ8j³fE0Ñi\n×ÒIÒ}Ó5ç«9±\0ºÐ*Xgy ¸e\nõ&«bÍ!÷,àÓWjb2RL¢Ed¼NéÖC±Ñë(üçàYÍMKO9ý§ètä|&\n>2°F(×[IÈ!JxòrT_#Àº:<\nx>E<Î£ç-uJ<Ýæj3ñPvÏCiÎwNCf«£÷i9DqÝ\'ªH¥H£ñ?S¾MÛ§Iå:§lÍÔÁÍEÅÚÌ,©Lãc¨©r³èY-%øÊ.Íè²)£Ø÷°Ñ³9ÍMMfjQ5)J\\µM\'Ì÷ÎSc¤©RTÜ^U¦«¸Ë$ÚTûåæð5-+©Õ)²,§[2]ØíGü\ZgîR{Ù\'3u¬QGÅâÄ¼Êz¶L=¦òÉiÕ.øé¤¦ÖòOöTü©j	=ígHQR>Õîi?FáÖ*x2Ù÷Íç©yIÈ^^0¨âÝ£&Üe->Ó	v­Ú(§GÕÕ\'ÙbÊaâ÷Ï{í)4YsàLK´©8®4%M\"ÎlL8¦ÒîÖr¦I²bbX¼½ÚPÄº]iKªk/ÊÓ4tJZ£¢å9$èï\'&Þ>Æ©ÀÚy>Ó4Ý¢§ç5G÷èy,só(çxÿ¥?ôðy¥Oä`ü\'7Âæsw<á±Æd.dvË5r³¹cuád*Ê­.¡git±é)\ZÎùiiNÛMgîv4z)ä¦oã$þIR¡D4Þa¨CCCMi  !TK)%%HQ×2Nõ¢Od|ÈjÑiÄ²K5èÄÄ²ÉÞí7ojRSeÚ5k\"o9E¥Y3ÍîîY÷fC9stÁ¸Ørï	´8©>$ý©\Z:Ê?Õ»÷$ïÂa,Ñ;ág¶.ûJw»%§RÜwQÊ7§µQ-9Må¥&¬ÓøÊ3àìx¢~éßï)IJcÿ¹\"(H-¹Ì\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 300, NULL, NULL, 'OjWg1612080767', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'dsaf', 'ten', NULL, 'pending', '2021-01-31 02:12:47', '2021-01-31 02:12:47', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(75, 31, 'BZh91AY&SY°E\0ßP\0Xø;Kü¿ÿÿú`=÷@ 2Å@Lcb`00\0	\0$ ÑPÔÐ#M\0BhhÑ Ðæ\0L\0L\0`\0&	4ªM\0\0¨À\0&ÍL\0iÀÀ\0&\0`)L51¨Ò§²C!§é4Êz4Ó\0Ha	Àé?¢\'C`(è{üÏ×.P¨ÉkÐb6ý»¬zÊÊfHúUÃv¥Zîv1%/SvÕxEñ½¦µy¿éÌÜaË«$iu°×e\rçQ¨ö~=Èå»L³0vzúÐGx$Aó93Ìò:Æ1loÄ¸ø\nf°¼e@å_yj5\ZñCäq	~p]§\\âÔ¬äjWÞyKBé ©$ ØÔÞHA¦4ÐÅµ1­Y±qFI[ÉP+ñ×4L,IÀfaaßE8*µ2r!`Õbó~Èhr^*.Æf0Á°LÍÿÁeQ4E­LoUÔAq6$É´ÍÙQG3KÁrH*\\±!ÔI\n\n¬4CFc(±DñI¥ìÄ0©A2ówjÜ*¨¡Rö¢i1!K^µ°)**QÔukPÜª«ä¾iúQ$Hl\nRT\0ãe´¬%0Å)L\ZìZ ÈÀ`¡\nÀRE(úïmäë		\0 ÖxJÃ*VûJ¡2ÛûðR¶uÕÐÁ¦5gÑ1Bmj*Ði¹0Y\Zn=ï¦fÖ3Ææ0 ¾\nA(1Àvm=çÄïG1r¥ÎG1Üü¦åñèhUuò.\ZÞ?3¤d´VüÁU¥VÅk¾Á\0á9Ë²? `sMxNpOöúÁêRG#à¿\ZRqc©«°6ØüË^#Ìb¦c9íAcÌÁ©Ôe kúØîFÂY°hlYæuíÁÙcØlp-¶ÐaJÇÈÜÆHÅÌ?í=½ðîïÛáMË\nÅXÁÁvÃmH±sÿ3ÐØâdXi\nIÁyÐ·ö]|Ï\rÄQCÉøTÓ5	·>Gíô\Zàv?#¡ã*¼ÌÝ¸@Ï	$¡ârá¡Ûî (9þâ×½y>ëÜKÐÄÄBäÐñõØa¨3\'°ÜAëÐ$F³Êõº(3îIOØ0Ð¿SïfVê8ïûÏ\rCÄAP-i!q2õDI9¬Ê£*°¨PIÀÂ©Ë7³,@T*¬R8å¼aö3K¨YñFPÉÔ0qtãSa\"Q;{ÏÅõ7dØvì?©Ì÷í$ø\ZçeFÁÜw¦q\"úNºbü¬)RC!AÐi\\ü¦¦Q;ó¶âxáÞÂQjYdcFID\nVDE©:V|¡à1Uc¹ ¡`%(D/¹Ío3¿U7¸î6Ênc	¤fl c ,dÍ<OS \n¤0·ò\"¤¦^ÜÀ_xÏóÜc-sJ.¹¢(r)û·\0|NDC}­\Z\ZÅÀe<íîBþü\" Ùö.äp¡!`', 'Online Payment', 'shipto', 'Azampur', '1', 210, '23432432', NULL, 'gKdv1612080908', 'Completed', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'completed', '2021-01-31 02:15:08', '2021-01-31 02:24:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6016670c26b70'),
(76, 31, 'BZh91AY&SYZ¿Hë\0µß@\0ø;ô¿ïÿúP<b;¨\rVJ\Z§©ì¨õ\"m ÉèÓMP ©¢z2h\0\0Ð4\0D(\r\Z=@h\0\0\0\0\0\0\0\0\0\0Ñ\r£QMi¨P4)µ )`S]EÌ?g`ÂG¥s.[åÅâ©Ô(Ãä5¬¸ÇP£ú»/âX8R1Üu2=ÉÂ¥¡c!32Ù¾¶\'VÊ9Ù³Á·qL35õ.TßS¼éÛ\"£Bz\0f§0H	w¨í\0ÀD»çSNPã½ù Bé\ZI\ZES¯beJÀY (B!¶T<b¼Eñ,AÄ4Á6°jQ9NÄÂI¤áPU!ÝæNaHT*ª#FGQJzþG(Å¢¥á]Êà)¡4A\nXãYC qå)Çb-3h¹wÅP.k.YK{Z	HFHºrHxp¹+\0¡`Ä²:ZUA æQÁù ÈH«ÀT<é¢FU¹¢ô¼¢ÄFJH¤X¤Aj¨¤ÂHÍc®2µ.²¢1$Á0sS¤Êñs.õfÜ7llÛ¦Ás4Å,°¹b,U3MH·ÜÎpôkD)3´ÙmÉs¶±N|Dò9ËI\rÅÇ±!5ÄÏ(±:\\J×UüY(Õ\r¥[FÁ3qÛºQêAe!HXD»ÐÈ©JI½^âe)`V@gø ÷ó5¸kö!)l®s£2¦FeðB=ªju&\r\rÌ? 1ê©Öfp+prPÊ,Ì¡è@@Cî.:Ã³¶s¶*`¡6+\r¼\n÷X=Ïc3¤È Ó2Hp^[K;ÉEöÞ<>Ê:\'´%^\\O¯¨Ô­qÔËw\\Ô\ZÈLí	X°r8°ãÀ[y.£æ|ÃbIuÜÑb!rÀ §èÕÝNû!SY¹´ SüHé	fÌâ|4-MáðÎ\0O3]0¬uãP©º\nÇÒvÇíH¤¦qÚàa2JP93y%°¨ (K°RxÃ P­C&\'pRäM¥>q?\n£\\Í\n%fðö¹ÈFe<QÞÐæ5\\\\D÷ÂâÒÀÊBÆC!AØ4¬uAÂ ±Ëgo:ö>oÀ@cüÙI,c¬\"AVAZ	6¢G#]B)Ð1Qwµ¤  2dBå_\'FîjnÄ¬^é¤dnP122¡2êáe°z\"Â¨É¯¾Ì-Ï§©¹rJjj.¹\"<¡Ì§Øzè@!Pþ\'Í¢\rÆ\Z¼×ÀÉì<?Säî<||PÈ\r@ÿ¹\"(H-_¤u', 'Online Payment', 'shipto', 'Azampur', '1', 1480, NULL, NULL, '1n8D1612081872', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-01-31 02:31:12', '2021-01-31 02:31:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '154', '60166ad073183'),
(77, 31, 'BZh91AY&SY\Z½÷)\0ßP\0Xø;Kü¿ÿÿú`=÷@ 2Å@è¦\Z¦§\Z26£F¨Ó20@Ða%	 ÑP\0h\0\0\0\0\09¦&\0\0\0\0\0	M*@\0&j0\0	3S\0b`00\0	\0$D\nbdOMM©ê4§¦Ê@&¤ÔôOS\0Ha	Àé?¢\'C`(è{üÏã.P¨ÉkÌb5ýÈ»¬yÊÊfHþjÁ2jèÙ^ÊA*ÌË¤ÙÐ­³Ò\'6ü1z1uc°ö)$K­F½ 68úPgïÙì>G-ÚeÑé+éB\0gQ\"ÌÐùGyÚ1SaH;ÉP©âoïx~âÕo\ZòCäq	là»N¹Å©\'iÈÞWÞxKBé ©$ ÔÞlHàÓ\ZhbÖßEVj\\aeÄ¨Jvr\'yAÂaUÌÖ$XS	¹°j±y¿S5¡BÙ°BA|QRWSS2÷`ØMæfÿ¸²¨Æ\"Ö¦c6UÀâlIi²¢f>\n2äT¹bC$(*²dÑ\r\ZY¢ÅÅ&°<[\\Â¥ËÍÝ«pª¢KÚ¦DÄ-zÔVÀ0¤ª\\ ©GRUÕ­Crª¯ù¤.+ùÆQ$Hl\nRT\0ãe´¬%0Å)L\ZìZ ÈÀ`¡\nÀRE(ø=v\'|$,$\0|F|öJÃ*VÖB!sóÜ©KâäÅÀ¡1FÁ\")I$ä,TqÔ(©%Fj¹¥Üu-÷{#V±\'/\"2ÝG1ÐhæñReNÐCxþmÃ@ñÁxó4*»y\r\nì?#¬d´VüÙØªÒ«LbR­ u¯ê)Îv\najèÆC¨î<¼ìÉpRG#à¾úRqÃ1ÔÞÃ´\ru?BÇ% ×ò©ÎzÐG£©\0jy7´\rð¥ôh<%Å~hnÜÃS°¶ºÀF	U+#pl2F.aÿ´d÷tw~ïU7,+cÛ\rµ\"ÆÏöHÏ3Sa¦d)&GçBÜ3ÚIuó<7=ã8\"!0±Ì¸Q­#×ÀD\rqR2íPø\n$¡àrá¡Ýî (9û¿¢ñ}¹	.·9¡=É3©áë±<Ãx3\'°ÜAëÐ$F³Êõº(3ìIOÔ0!%Ðl|y[Ø/´\nsèz·2¢¡7ZÒBâeêsX\'FUaP¡	SlJÌ±Pª^±Hà[Ã©[zEdz©>¥ºÃLüÈÝùðf§qd ØîÔCï$:6$àoÎÊ-C3½èÄèq;iCñ`d2°¥HFYQ¥sðRvF,îÎNÛãx\"N[	E©dAFA%, (IYI¤àdzså¯b\\ÅUþ^æP¡¾Ç5´9¸S{ó\\¦æ0Ffª2ËËM¦l2É.ª,8ù@¾Ã?óhuKBTTQuÍCOø>î$ñ9Y\r÷4hn k_ñ·½ûð\nJgØ»)ÂÕï¹H', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'gsQy1612082589', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '11223344', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'DSFADS', 'ten', NULL, 'pending', '2021-01-31 02:43:09', '2021-01-31 02:43:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '60166d9d784de'),
(78, 31, 'BZh91AY&SY@¼M\0_@\0ø+KôD¿ïÿú`ß}D¤**H\r\0\0\r\0\0\0\0 \0 \0\0\0\0`4\0\04\0\0\0\0\0\0\0\0\0$ÓSL©æ¤OSOQ²2Hiµ4\n £ÈL$M¨~¨\ZyOIH@í¢>Ç´(¡ô?ÉsóÀaäyYàäÝ |¯ðçRiù1²è~«,§&ÃU,³\nQN/¢Í0ÕFiNM¬Ñ\Z²æÃ	»,¬ÝªïÙsVªN+Íç	Âv\\£sV{¼WaMÖKeÒ[¢I$êi³gÃãUÏ5TòÙ%$X´¶kÌÑÆ0ÂÏ²¤F)JCÔ¤&ª±G@ÿ$Pà1 nq4É.©È¢ÅB/dÁxZJ¥K²ÃGâ©d¨Ð¥H¥hÃ°ê£ñTBR¥\nMY]«\rY~Êe)Gkµ»Y!«eáºR¡u×]v\Z%)eÙfaJ*eÅ`Ú×(Èï«¤vi¡¦îNM1Ãf¹¹¶4-ÒK `¸ÃU×h÷4»f&EMmMj2LÕ£	Ie×\\a£VY&.j,faYMSFMÓ&çâ/ô¨}áÍl¢B\0B#-)X|bPÂ(¦\"Y£$aí#r¢Å0Pê¤ªZ²Ih1I, Á,R!D@Q!nèoÈæ©PÔU*©DOË,.­Ú0hÌÝ¢æ&íîk®æaMZðjq^fG«N\',,ØÝÍÚ,n¦FëjecEYM1¥íkSU§·n»IÁÀÂ)ºên¾£«6dC#NyCö>~sÐþO¸³Íí?DGí×\'ÏG¹n3yýÖþrÇ£Bêpj£ÙcÜ Ü æ`£Ð Òäý_iÌÈò`~¯Ð(ÔEÆÏSó:ÇàúÞ>nÉé4u>)â]ÈlýËê\rX\\9 îsÃ¨6b|\ZFÎ6$:(9Í&óÙ¸à±>­\'8°à:<H0aä¸0;;»<ÍK¬©äo6QÜ}Ë%¤²r½î)ª¾¬5nÒ`ÑcI(¥00ú¾¡âÜ Ç6lYð,jÐº1ö6pÖÍóa¡²î¦æFËc3«á?GÖTXòRtxO£¬ÝM]©cÅyiæ°¤Ã\r¦©á:©/)g¡9¼ð;¼|T\Z$6ó¾Tü\n%O9êôi.ñäèÄé=fòÓÑÈ^^0§5NN-Z·FeOWë1;Óg¢÷ÆjËºOÝO|\'¤õxJ)4YêKË4©8´&&e¼»wËº°èÝ5K¦f%ÙÂöË¥Öº§t¼s4aÊOÊZSÄ{åÎsOyñ\'\'RqR$p\\aæØÔt3 Ç{Ø:åNsÂf%§dê>¥>Ó¾}×y¥\ZKSw2¤æ>Mt~nsÍ:JpvN«2xÀ91¹IbÁF1¡ í`zÚiª=§¤è0~;{=ãhH1H#c(  £DE,îñzÍN¹ÐÄOÊlÕ¬äy.òêo%ÑyeÁÛiÆMêZL©MÍºí[6á9Å¥Y4\'º,ÌÄÙ6\Ze:Ã3	¤8)>aéI«°£ÙÍþÞ3²y§x´L&ÍÓ¾u}å;Ý\'ý/$²{0ö~K:v\ny:´ÁÐÈ~Ìï;D|Åîç¼Ba¢ ÿÅÜN$/D', 'Online Payment', 'shipto', 'Azampur', '2', 295, NULL, NULL, '72yB1612160474', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:21:14', '2021-02-01 00:21:14', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '70', '60179dda89714');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(79, 31, 'BZh91AY&SY]ÎÆ\0ß@\0ø+KôD¿ïÿú`ß}\nD¨©%Q$ @\0@\0\0\0\0Àh\0\0h\0\0\0\0\r\0\0\r\0\0\0\0 \0 \0\0\0\0\"HSM	SÃMOSSÓ\n\Z4l mM¤$ò<$ÓÒªêiå=% YÕ	4}OHQCæççþÔõ³¥»6õb¿»¢¤.Y§êÆËþÖYN-\'HÃc\nQNoá²6èÝ²Í\r©M:°ÂpË*³Ì?UÎM)9®b{NnGGS.Sð;º?GÍ)ëpó]8Y-inÉ$º¦íÝ<$¹cÄ{4()P«K/ÂïkL.ÙgÕR#¥!¢¤&ÊTà¤¢7JEI\'ÊbeS¡Kõ²`¼-%R¥Ùa§à¦d(Ñ)JK,ËL2Äî£ðQÒ¡)HR&í.Ýëåú©¥z§&f\"¦ÍÜfJt±T¥(a×]ÄÂ²Ë\np³(¥D2Âìü²³e÷ÒÆYe¦¢¦òÒÉN·iMpäèl9¶h\\%x@Ù¦Ë®Ó£BnÓv&ÆéSuÛÓL¶L&lÓ	Ie×\\a¦Ì²M70ºa°±f]6M4»àp|EþUàÜ¶Q!\0!Å¬;þ@ÒD!í6Bá\0ê ÈR¡ZF*A)E\"^(0ª(7¹öy¶\rb©*Dú1¸¹ÁpÓ4¼öfrp¥Ûb«ØÂì)³nMkÌÈæÙiÌæ±Í¬Ý¹Ã+6XÙL.ØÒÅÔ\\Ù»Lo{ZÔÝiÍ8]©ÉÈÂ©Âêp¾ÃË+Ì\Zr¸D?SÛÍðyÞ÷Ä³hy#÷\'\'ã§­nsýÖþrÅ¢êrl£ÑcÖ à è2(æPinýÄÜ\\õ`~øk!´ÀÙë}Áù½¯Uwbt\r:ßDô0ÜlþÒ\ZØ`6Î w@uÆ\'Í¤lå(òubC²¬Ôâu¸\'Ñ©äL4n¢Ev®FC¼»½Øít\rÍåÖTÊt8¨öbÉi,§¾QwµÙe6SgÜîÃg\rL\ZXÔÂM¥2#!É÷³ÌóºêÍ2%m-È;Y±æì0ë76-wÝ?GÒTX÷);<§ÍÍÞp¦ÏRXó^Zb{Öa¼Ù<§u%å,ø«É?yàý£ïE< ªq3zÐ(C¼Ôñy¥Þr=ÎÌNÓã8AyxÂU:9·s23yÍÞ±¹¨Gv#:þÊ{d{	ñyJ)4³âKË4RshS(¥åÜÆ]Ýg	´ÄÂ]31,vpÌÎ´¤f].´¥Õ=ñÔÔñRÌ)\rcÚC@x¼ÃÐØu­HÈÀ\Z^»cXæh ÇHy0s<ÍåÎ³Êf%§î>>³Æ}{ÊJRKéÑÃI3ES¨ûÚ~èv~n³Þ¥9<\'iÝsqH@ôícÅö1¡ äÁ2{\ZiM9<\rgAÎd|p!âä1AÉæF11	\0\n4A`ÄYÎ÷SØk::O2e>SvÍ§CÜºË©ÄFeåO\'ªÓ¼T´Rs«Û7o!ÊuJ(²jr®ì³3tÜlsïÌ&¡ÉIø¤øPÙàQèêüs£Â{ÓÄZ&	g	ã;Ë¾Ò.ÓþY=z>K:Á8\nvºÚ`æ\\~ìò9û>ÈBa¢ ÿÅÜN$s±@', 'Online Payment', 'shipto', 'Azampur', '2', 1585, NULL, NULL, 'rL9b1612160798', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:26:38', '2021-02-01 00:26:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '250', '60179f1e11672'),
(80, 31, 'BZh91AY&SY (ß7\0_@\0ø+KôD¿ïÿú`ß}\nD¨©UT@\0@\0\0\0\0Àh\0\0h\0\0\0\0\r\0\0\r\0\0\0\0 \0 \0\0\0\0\"HM	ÓSShi\Z4mP*HBÑ<i¨i¡êê¦ Yìª?3ç\n(}Oè\\þØô<Ï;9Û¸1´þÜÕ!rÍ?66\\ð²Êwai;Æ0¥ìú¨äÎQ¦å;¸mf¶a9eYËl?&ptÚêNË·3³£»ÁS©ê=ßÝÉ¶òr÷®Â¬ËÎ[Í$z Zpáöü$¹cºå4X)AJ\\æY{î{\ZavÖ~j$b¤4RjTä¤E$p.S*ÊX¤L¤ªT»,4ýJfÂ*6JR¤RË4Û\r0ö¨üBR¥\nM²»l6¾_JQäòrÜÄCt§bNYït´¥(e×]§xRRYw¶Wt³H¥D4Âì´ÊÍ­&%%ï¥a¦b§ÒÉi¹ví1Å³N.fÃfÁ(2À!Sk®ÓÉ¡K¸iÃg	SÜSL¶2LÛL%%]qeiÀ¡Ó\rVeÓi¦Ö/ÕPî\ráu ·(¥aòC¢/\ZB.Ñ)°D¢ò!z¤`¤bR!L@QèP¢0ÚämÖl\r¦ºT4¤ªQäÆÂærÓ´¼õætåK·¯[°¦Ûé³²ó2;6´ìvXìÆ®àåÎ[XÒ´]³KQÂâöµ©ÂÓ³\\¹]©Ó£\np§+©Êû6³vÉÃAN7ò}=ï±ë|igÌô?tGÒñÓÉnÓüýÒ3äÑu:mGÍcÉR`Asu(4·ìl.y°?ìi!¬Àlð~ø¼ö.¤ì4p|ÈÁ¸ÙÜ¾ ÒÃ\0Öm7´Øjb|ZFÆsÃjSâpät±?ÛSÜ¥Ç\'A\"º×Ú]Úêu¹F¢£u2Îg\n=gý,Ê|e{k)µ6û^6å©K\ZR¢¦ÇÅüáêzÝ:³bÌ§9cKBäÇg1LÔÇcq0tKÆcyê|Ï»¸¸âýM&÷\"f¼Ê\rËÜG¼fwÔq\0Öz\'¬V@÷ATædðBP¡@@cÍèwî7w={Í@Y²\\QF9¤ÄÈLô>Þs@0äv®&Zúìa÷>ùò{¥Yò%å©;4L9`$,ØÐ<ËíÆÃvqË38^ÒtºÒTõËÇR,2/­K0¤4 ;\ZÚõ`v¨Þ$TÛ#ðÉwdå¥%NÙ)9~×Ï¹âqpFnð>áÃÁý9Bf¹ÔdìÒSÀý\r>ó}\'Å<å:z§ôaö,O(¶8,e©\rF	Å¦z©Åí4YÞC´µÜ1AÉï#BADA\0	\Z °b,gk¡âi7&X¼À|\\æ&. î, Y±Â`Ù¢²§i8{T´RùáÊí¸q!ÔñQdÔêuwÌÌN³´§¤30JOÅ\'ßCoQGÍáô{çNïTø§´Z&ãFCÁ\n7¶?L8°YZsàxéí\"ët´ÁÈ¸ú0.yÐGò(û= Â!DAÿ¹\"(Ho', 'Online Payment', 'shipto', 'Azampur', '2', 2015, NULL, NULL, 'oW9J1612161342', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 00:35:42', '2021-02-01 00:35:42', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '320', '6017a13eb3c12'),
(81, 31, 'BZh91AY&SYºü%Õ\0«ß@\0ø+ô¿ïÿúP<Ël@B\0\0\0 Ðh¡¢hCj\0É¦\0Ó@\0I¤\"¨Èd4\rS@À\0\0\0\r4@$H	04\n	´ÑM4<$L\0°PDY¡öÉø8pÐÜd¡ÄíÖ8ÇÌ|<¢±Ä\Zì~&igßìæs¦1ÔËjª5kñRmiÛtIËFæYÀÀÐãqZeÄOq=È@Á\"HÕjs!@` ×¬\"~_ ÒAÎH»HÖ8pLgq²É¬Ä		\Zg:¹P*8Î¹×<¤zIr&Ð6\rZ´í$B`¹N_\nk	NXàÄ»U²`hp1IbÈaÉTLÕDdH±Qf\ZÔÐjÇ.í,qufK2Ó#9ÅXSKHïÎÐ	ÅÕ\r¦(Í©£µÙ³\'«¯2ðQû¿õÄHgëXÁjáÐ±dk	,¤&p	¡FÇà^óÐÙ$+ÒB!#øÍ\'Ihî¬ÌQ¬#iÕ\nïl£opnoó5(Ö ÓÐi ² ÃéZ{}kWmÌ\ZF±¹WFkhcvz£é  £È{Yÿ?9Cã]À¼!üÎ$ï«<`ÑjÒ­£!3Ð÷i?¸Ï#þ ÅÛBGû?Sêj}¤z-ÊDr<	©yèiÄ\r9,F¿bã5Êb7°2*^d]xaó©ª0Êó\r6kÉ\nå\\JExm=}Kwuyïã;_ReH*M±TmØV²±êzL\n\r3HÒÄ¯ØdXæ<lïZøO xï>þcPuk§àÇ{¶Å9Lí\0ÔÉÜX58°ã¸³Õ|Ê÷ \0]lqCAï¸bgS¿jÔ]\rÓ7ËÈ;d$¦ófXÝkÑAÿÎ<ºv¥©´?,Üùõ;j1c°¤E@XÔS*Ê!ÈÂ/0!2i$½*TÅ	æpTP\n%ÜRÌ6#5µt\\e¨=Ib¯¨Ó.<F¯ùøGLÎECyÐä{ê4Û*AÔÊó\Z £Ì=ÅNàdu[Ç~fóô3Å¥ÊB¿ î4¬r v0m7÷<<9­÷±D2^èÂA,ÌHÄi\0¥KN!ÆrÇ\"RÔT_ëXÈé$;ÂH¡\"!k²BîNÜs3¾V.¹4ÔdL%Â(L¹\\X(L*\ZýìÂÚúf}fhv\\×$G^ÃåÀó$ÔÐfo|;Çweÿ£§ð!ÑÑÒ °ö¹\"(H]~ê', 'Online Payment', 'shipto', 'Azampur', '2', 1155, NULL, NULL, 'Mupn1612162710', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-01 00:58:30', '2021-02-01 01:36:44', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '200', '6017a69604f03'),
(82, 31, 'BZh91AY&SY<V-\0èßP\0ø+«ü¿ÿÿú`}\0B RE*AÌ`À\0&\0`\0s\00\0	\0\0À&\0L\0`\0&\00	\0\0\0	\0MQäÓM É¦ÔÑ@4\0h\Zh$@(ÄÈ4iê2d4i²Ad\r@ûS¹$ª?gß\n(üTúlû{{Ü«àú9ÜE´þR¥äàú,³+9²´s¬a)ÉõQ¹+UÚ´Y¥)³£&ì²³v«¿Úç­hãs¿Îp\\Ü\'B¦­¥§S½ÍÉ»\\XÑ{¿CÍÝ®%WMÙã-ê@=,õ T§­ÙÉôSìrsvYë]â¹ö°ï9¾RÃÞùcçOìZb#ÁbÒCø>+IóËµ«¹£\n~ËáâèÉê!PuqZ^¥ÔMT·\'Uâ9¥\nEI«MÄÊ¦e®¨n¼´:(¥$ÂjX©SVÌ7b²NR\\¬²¤SEjÁ«)æ£u6ª3)yE¢¥!J4]³¶[´{Ú8¨j¦RCÑMXo»D²övhÒUÔ(à°ËF]êhø¹8·6ÝH»vì7TlÖTIS\r]«+Þ|Õ-(ã\Z\n0`Ðdk#N\ZmÃæÛNNnéÆ^Yf.^¥N:£V0»­.Ù£f&¥la6]µ2ËQÂat¦­JK®¥×hÕI£aC¦\ZVeÓTÑ£¦S/8jÐü¯J \"0ª+¤JBÒD!\0¶ÊT0\nð2(FARÐ)*D¥$)kK;MÝº:-$8¢E¨IGV]«%nÑFfí³87Ríp¯C0Õ¯§æqj´âqXâÓ7lnÊæíVj£%ÔÝ«fK2²j¤¼ß-ÕV½,l¼·\ZMÜ)²n¾£«7¬·e¡¤·Â!×íxùµÜÌ9o¬Üu\0=°ùù©ûözVç1/Æ_§ï=ÍK©¹¢zÇa&J ÑªÎrÒb~ÓàæÃé(ê}F¢æCoø>\'SÆýmìwm£ÂúSø³0òwe2tQàN®ÚÐñ9Jé-2[£ÁÒy¶çiÁÈsX«IíG)M	ÅIBðr?|Á¬÷N³Ó4uuXY´ºÊMæÊ<_õd´Så(»Ôö,¦ªjõ=¬5Ü©¤Ã*h¹Mj²±JQlÙ4ád?·k¥Ðc¤l¶SfóB÷Xùeæ©æ©±i\\¥N²©ëfqvaÊK´x;§æý%GqèQÍî\\ö}1w½dÃÙ>NÏ)ÑM]å+=¬LOIñ\\¤Ë.tôOcÉs°ßjs(§ÍäBad?se)H©ðÅ¤»ÈsT÷»ÓÎp1yxÂ9¹6qjÝ>/ÊjÌènpDÿOTöS¹å7hôÉÿË$ÃÉîo)E&:dÄ»PºíISU2^]Å6x°Ù¤¼º]11,x6feq`\rÂÈím5­ä/3´8§°ôË¶tÈã\"¢¦¬§µúË¸¦í6>éI»ù»,ö¿gIå4#NÇ´âqÇÿn ÂsyK\rÎÃSReC´|U4{¡âç<Òï7»¬ñL\nBèkcIe\Zµ1¡ æ`¼4Ã½No)¨á6Ä<d:Qù`2zHÐb\"F*F*PA!D,\"[ÀéxG¡26ÆCÐ÷ÌÝáä,@¶ÈwVÄÉ¶[N2lõ)i2RSuÚ¶m§8´¢&áwzÌÏi3tÜlrõC3	´8©>ÂyÒ5u(ûßWgæöN.n³ÌyDÂa,àP³Æ]úÊy<\'è¼2ÇÚdtÔ$!ã\"òæØ:LµÖ=Ì#ýyùÎdHAB2þ.äp¡ x*¬Z', 'Cash On Delivery', 'shipto', 'Azampur', '2', 985, NULL, NULL, 'H5eU1612168326', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 02:32:06', '2021-02-01 02:32:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '220', NULL),
(83, 31, 'BZh91AY&SYEè(\0	ÓßP\0ø+»ü¿ÿÿú`	ÿ>*T PA $(\0(4ÄÀ``\0\00æ\0L\0L\0`\0&Ó\0		\0L\0Ãb`00\0	\0\"S@HJ6¢dÐô&&ô0&\nRD4dÈ4\n~©° ô!©¡NOìÓªªýü±bÿÆ±ªÙöçø_¥últ6ÉýÌ\'wæ5RHa °{	GOàÓf>6ÉvcÝÿ¬\r8Óc#§Ã·M¡¨Â1ÃäÝºpá³ÇM?CÓ§D^ÆËs{½çtNG]Óv,¹îGjïºÝMÜFX(¢óèntyðôìÁÙ³c»\0áGx5ì¥SÉZ{E0Çµèu?V>·S­èiè{[¼[6ÿ=mÑhv>Ùòá}û_cVåx@@BÃeÊÙ\ruj:}%Û±ý\n»ÁÖáJmeÄÈZ±.Ç&°ØÓR\Z!]Ï\"|ÀtÝîmÃ	>aÇHHÓ(DCÚ#Ñ6hÖRË¤åotÛã©Ã0rÇBà,ÙÓ`»ä#óíÁ?ÈØôAõaÛ°l°Q!Ó¶¼0ôäÉüËéî@v¤/¦;në\0FõA³Ì¹]\".X\\9nÓNÉë;rlBiãÆï¿Ôò2úKÌ ]ÛM<pYùïÍjÞÞæ¸;hê4hhØÜÜÐ@ÐPX0\Zà(,sCQ¤ ÝÓt#í7{¹4íË¶á¡BíÅ¶Ç.ÊB:rÝÆî]8p!`ÀnÒt\rv`)\r!-Â(âBÏÈíEéà½[«*eËZ£{i¥2ÛóÕl2ÉV,X¸S«eYn°µáj3-*2ôF©V­%jßLÈµ`bXeÜq»z®Õ«¯T]0\ZæÔ~fL\'ZC¬¹p9ptÐ{x1¦µ	=\rÚ.é±®fâ6ÃÙ°ösNÇ\Z:lba,QgªN\n\nl\'Wéá²Õk$4ìötôÝ2ÃvØ\\â\\ã})Øpí³Â`6ð¹6Æ·³,/Ûï<N÷ ó]fç9ÅÐgÁø¤ËúÕÿ¯¤â¾7©®Ó{n³n£/µ{îsLx¹aõ¶4pÄ00ÅLºløi7?ãuÛß©Ò}ãNV\\÷clx«î~\'ýö?ª½1±«Ø}Õ÷\\\rãc½=KÙaëÛ±|ÜËÂu_©|X7¹½·e¹^»íh]½ÐuÇMÔ]vûÜÇ]F]é9X2Yb?Qø;Ó¦é»÷§¤æ»nÛE« ÚÕ\nv®\'AÀÿfV_IkÙyZ±Ó>§ánèâG!ú2@Ñq\0£mÁb\\CÐÈ{£D?@ò0èæYt£ckc4sÛ]F¤âaôñô0èZ3¨Ã¸ËÀåw[ÝIµÍ{.óõ¿s+Ôzu¸/cÌÃößgÂÔoy\'äô^Ó¶Ë¢õÖûssäæ>VÆGÄzO;­¡¹×Ö.ë²>åèúÙeS2}ø øÝºX0­Rû,°Åaô+ås^EØÃâï¸çÀé,·À4·cäÀð÷vö4ñ\\ö°p¸5_Sü¼ozÈÅ}är¼Ünôþ¯[OûcJs^ëà|o3kW¤ø¡p§@4Ä<4!L0¬h)îÆ×»æâç77£¹¥åq¸7»ìe_áÚ2ÞÃ¼Ú»N¢à8IõÆZ.¸úY¢ävSÕ=Èê¼È2°ç¸Aå×(ãs20è_Æü®ëWÑ.ÃÚsQ£´ö¼ô\'þÛ^ó#,°sæËÞvÜw=,§t|s=ÒðuøÙïx]7iàxÛÝ¶¥çupµ[[\r\\¹j4¾Kò4hËÕ£÷\\¯Mè¹ïÝ\'ü2X«ÏªÁeea0Ê­,VYI«$Á3+c¸é<.W®Õ\\/D(áQÑsÜçPò¶¢ØÚËmWcV£ÂíÑÉ:/eF;|<<iÑ·k¡<--c¤éÚïµp<ÍÎâ]¨ËÙ.ã¢\\¬°ü=Ú±}·êî~#×vúx¨Þ7]1ã-^×îeãzÏòØ¯Ãïp¾¦,¼ì«G¹Úu7þ[ß1õOGî#åò>¨f,°e«jø»)Â/A@', 'Cash On Delivery', 'shipto', 'Azampur', '3', 1585, NULL, NULL, '3o3W1612168456', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-01 02:34:16', '2021-02-01 03:06:10', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '286', NULL),
(84, 31, 'BZh91AY&SY?Æ\0ßP\0Xø?ÿü¿ÿÿú`¡@\0P @(¤@!Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	11Ì& Á4d40	10$M&#ô£FÒhzA 44ÈhmMêIMM\Z\0jQ½ÞÕ<¦ÒG¦SÔ](Éø>GÉÉÔèë[\rÕ«ô]ô^?CóYl=1!Þât{Rë®,Fë§K¼ÎGâ²Ñb¢)IH²)û¹Aú4lâÌ´y0y504dpnoch,W½µËq&BÍ=,l»eÇZë®YÖÊÑu6eu0r~ª73­\ZÊslÕfQ«GS&ì²³v«¿uÎ\rJZk5wÞÌ1)JXæØèTcÖ©g7µå©ga»÷|ÖÔõì³n¾[øÛ;_£ýî8ç36ÈlßÍN].B¨`Â0,³ìv½.ç­ÔØ¨)IBJ\n©ÿáE)#t=è\'CõP³æð}§yé|ßOã)EYcìQÜ£»Æ÷½-ï~¯µvYS½u=Îl>¶Nüµsjl§{±u0ìzfeAt¹£µ¡îÕñ:geÕ8ÇzÑ²*Hæ^HrsZLåw³)gsÎÃ©ë¡Ey_ KHYRrtS±t9¥E+ª¥RYÇ#*Ný&ES¥&\r©âbYu\'u¨ÑDàKD´J°äËöv7aK·YJQÅ»Õ$é*qS\n|TX¥H¥ÖnæÂqsqM$ä¢RlêÉB]e¥\nMlÃvY{Ù]£©´àæâ]¡Á­VQ«E©Ô®ì¨%±?¹£w\'Á§\'\"¤¥rapÕ£ï[£Úho9F\'	B7Rî°»Ä±Ï\nY³±v¡eH>í-a»LK3tÅÁbãÍ44ñ··4Ç+fÜ®FÃºÙ¢ÍZG%.ÆLãÌFVÙÏf¶X´¶ad¦ì®ËVlÑ³SdÃ©²í©£-FS	dÃV%%,ºË4jË$Ñ°¡Ó\rEÌ+2éªhÑX¦S*Sày$úIÝLA)HR¢QABÜXi1(`@ÑEåTí.`¤¥4ÂÉT¼LZY	À@	 À¥)f,BêRR¥0\'\\ÝÉÔtuõ^Hkó]£EÒ©»-\r´^uæphÝgc,aµàâÁyDZ-8TqiVq7]svL®Sv«1PÑQÒ¬¶ªã¾nÒeíÚ4ààaFÍ\\cTÁ«6/¸/4ÂªK=kGþ>Bë¾¿U×|ÿá.aø¬òM_\'úM$çFÕ¼üØlÌøÙÎ|ù¾ë®û%\'Ãv¯ÿíâG£Ô´WgWg¥Ïxmä¸¹Íw4é\rô£½2¤T¥)Q,4a«j÷»d&õTÞySE|\\Ù:Bý\n90(4ÁE³wÛ:Éç|á¬6#øÈÓ;£fûÊ¦fó¼ìTïuJ4;íw®zÜîxÌ¶Ê³®TYáýæ!ø=ï\ZìE%hì{ÍZHw=ël¡ø7É8ºÜåTT²:èþ\ZÏr9ÊnSfºE*G%éÚòÉÁÁ<ÍfÏlé;f®ò¹®.á.Ùu¦¨Ù÷¸k»^iß\'Ô§×(»ÎÕe5SVÏc\rwZY¤º×\\Ý²Ù»kÙJ\nRÝÁ6²ê~S®Sá4yEJ2ëÊ´ÝÐÃ¤ºNR§òLªÌÍÓ÷x8¯4ín)0Ì¬Je8)39;WsèÑèye«é*9¼ÉÍêÛÙîx.=³Òñ*u©£bÅçaù¬ÌÒ{R]¼Ý;\'â(nacüqÀ}¤ò¢¯	Ð\n°P¦¯1JEOdðz\ZOèö²ôNä{¦³É.xNRóv®¡ÄeN§\'ÑSé75i9¦ààYÉés$þ®£Í)(©ãyç&®Öê\nÿÕ,¥*$øyÞ¹ìuybe`÷sIÁ\'7ÉòÀ{kJä¤u%ç)v^\'Ô¿ïk30ÓYbóÒäüKÍ2ÑÊGuT´ÊnÑyF²TòÏáî4# æBæ)Õ¸5c}æwÊÀøÎÃØM\'T*Z*`Ù¤pSå0ðM\Z)*iº7w¹»x:\'ªjsÐyÑwÌ¥	ß)ózX\nP¡¼ºÆîé°Î`7]+Êi¼^sñ;Èâä08RÎùfÎÉß8°r~Î!xøÔGSVKÇL§½VJMÅÐú¥#yév©Ú|Â`vpIZëÁ\"¤dö `Å\"DQQ HªÈÑdK=w3¤Û(Ùa/1Iè\'Ù4Õ=víç1ê]à¡9IÄa\ZÌK,Ç ñ^t^e-#%)ÀõN.£³vñ*]ASwIyIEÓYÂï*ÌÇ´ÀÌÝ7?çôYè³DájrQ0hý©%¤ìn¢ü[©ÁÅÒ{Qç\'\'ïf&©¨YÉ=³¬Ë¾eæn³ÌòOT4ÂyN\r\Zªlò¬æu©Ö¢êaPZ^ÌV¼å1d´óÖt¨Ëà\rEæà°(æ¨âFDD(,X?âîH§\nøÐ± ', 'Online Payment', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'nFtS1612168744', 'Paid', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-01 02:39:04', '2021-02-01 02:39:04', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6017be28a7fdb'),
(85, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'Hbk71612248676', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:51:16', '2021-02-02 00:51:16', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', 'we343234q333223432we3'),
(86, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'AZnl1612248717', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:51:57', '2021-02-02 00:51:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', 'we34323434q333223432we3'),
(87, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'tBqT1612248754', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:52:34', '2021-02-02 00:52:34', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34543543'),
(88, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ZDPP1612248895', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:54:55', '2021-02-02 00:54:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34532443543'),
(89, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, '4n6s1612248915', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:55:15', '2021-02-02 00:55:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '3443532443543'),
(90, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ZTtu1612248933', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:55:33', '2021-02-02 00:55:33', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344323532443543'),
(91, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'uYyY1612249019', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:57:00', '2021-02-02 00:57:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433532443543'),
(92, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'B6Aa1612249046', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:57:27', '2021-02-02 00:57:27', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433453532443543'),
(93, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'igSp1612249168', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 00:59:28', '2021-02-02 00:59:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344325433443553532443543'),
(94, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'ja3e1612249267', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:01:07', '2021-02-02 01:01:07', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34432544533443553532443543'),
(95, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'SiW31612250228', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:17:08', '2021-02-02 01:17:08', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34432544435533443553532443543'),
(96, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'JWzW1612250261', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:17:41', '2021-02-02 01:17:41', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '34435432544435533443553532443543'),
(97, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'FTRP1612250346', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', NULL, NULL, 'pending', '2021-02-02 01:19:06', '2021-02-02 01:19:06', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '3443543254443553354443553532443543'),
(98, 31, 'android data', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'MGmc1612250409', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-02 01:20:09', '2021-02-02 01:20:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '344354353532443543'),
(99, 31, 'BZh91AY&SYIMâ\0\n_@\0Xÿý;;õ¿ÿÿú`=ð\0\0j(SFQM4M¢§©â§©¶¤Ð©£Ô=A ÐÓ sLLiF\0\0\0&Í10¦a\0\0\0F\0\0@\0Ð\0\Z4\0sLLiF\0\0\0&U23E==DÉÚ@ÚÔô¢m#ÎD2\0ü*XëLL¶>7¾>FÆqTÆöúßi|æ÷â²ùÌ¬ÔàK¶bë¾LÇLY*(ÎUTkím³6k})ÖÝÇ¯ýK²Ý¯áØár)ô¼ÎN\\¶ªÕùúvmã}3ÉkSïµ.¶õîl÷ûºyC\'Bz:$êòëÏÍÏá\ZC¹}ÉLZxË\"b\nPkT\nJe¿ïT]xD|%\"ò$SDÀ²RIdI*$ÆdÌ.eHÏoRÌ×)S	J£*µ´U\ZVkfÌ¢Rå§yÓLJb)$­}-Lq³Ôdâ¥BbFRªË}/Ó\nmAiBjRJZYôýÕJöâõ;Z²ÏqµÛ<ï\r\rµê²ÒehÍ,,³±«Y5Ú\"nÑ&3]%ì)²ÅØ4dÉybZ)Ìk\Z±åS4ÓáfKûD{¢#z;å2#UÐ	ùb­	F!F3MÑ¿ª¢&Ã;B*%À²ai	G(a.\\7ÄFq!)ÙW¥j&8Ú2º/(DòÍ6Ze)FJ¥­$êÖ%Ã%8é¢ÓØ²éLÂbQJR¨Sª>y¯?é·ß¿Zôô^ÒQÙ±L\n\ZuÒ³\\ívò¶ÊÂ\0¬q!ÌâOk&d¨ÂQWa.¢¹Úÿïc#j\"5)p¢àb0P¤Õsý·rcy¨nÀaÏ~E.Î\Z7ärhü»Î·Q¡ÍÂy?ãªXqëS¯Âª«pw%ñìÑ½ÉCÑfÔøj·:JÉ#|,nnô\'¹;3rqêê\\»kCýhÜRíâáglºéRú±u\'Jkµ4fÎ:·Í²I)DêZËMh³Ößch[8fñóËUö]Éº\"Édô;_?|åÎªòºË9ÿ¾,ýÒàÕäô.úañÅóè¤£+·îxø%iQg´ëpo»Þéü>äJQ3FÞ1)²·©2ït²ü½z×ØÞZëÃf%± ^CÞ°pèú8à|EIP­\ZÃ{ÉÓùK7B¬Â,ðSðNH÷RûûÖgM1_jë»ÆåÉw7³ÅBdèíä×V,&2´u4>XÍ9!ªO=<Ï±Ð±ÅÞ7A19²<\Zú^gé74J|w#sRbûÂ¼°\ZtqMoØÁÀ\'4N·Ö^ÎÿßO·×<yv¼<âë·îµGÂÓ¡H»¦Îvúh×ÕTÓµ½ëdëyß|òLÄ  (\"/Hd@LÄìc¯ÈÙÙËÎº3gíó&§<\ZzË!kÂ[BÐZÔ§dí;Õ8¨Duðj³6f3	\r£T)·¡»&/«Ta*ØHQDÍüáÄn?¢Ñ8KÆ\"oaYg8²Û»éñ7wü´)øÝý\'ìáWWíºòðlÍüIØô£o\'Õö=¨öÉ3)©Kÿ¹\"(H$¦ñ\0', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'Gn7y1612333260', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:21:00', '2021-02-03 00:21:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4dsdfsfdsagfdsgdfgsdf5r'),
(100, 31, 'BZh91AY&SYµQB\0	ôß@\0Xÿý;;õ¿ÿÿú`\nþú\0\nU$DPB¥\ni0#À\0\0Â09¦&4À#\0\0\0ÀæÓ0\0\0\0L#b`#LÂ0\0\00I!\r4\Z2©í#ôc\"h0zM¤H&©à55<§òdh1=C×a\0½AüEy@Ô|Tñ|HþÄ¸~çÞT}¦0cð0äÉ÷\"ÁAþS¥½Á lW&XÂ¤³0iJRåhÁL?ÉÏöáÚ§s¹Ñx¥,ÃI%Tt.RdêÓ+27Jpw0ÂteÑ¥®»l?âç-­.»áï|Xy¹ïàôyã#¿ÊÂø\'æ¬§áíèñ]½<ë®ú`³°²&ÞÉìHDö»P*yÇÈ£½ìyü[÷2àzÈ\\QO¡;$HjªORebÊM(Uê¿.(Ä}E\"QPQ\Z*Ê%ÒCe¦4¥)M:2ÁM*pp²PÛÉIIªuS¤LT*)-)FL0Û-Ó\n6²ÃY²Ã)IÁ))*Hºaðá§ÜÛ¸èÛ¼¤ø9(T¢)(JJ%]8VY)sÐS¸¦TÑbÕRBÎÕ×iãÞÆLKI(RFK0ÂÊ]£³Fa2\Zi¦B$©­*e\Z`´¼@k^FÏô½§½¦æöæçMK§t¼ç{Gö^Ë1²\\m)8K¥ÓIÚGDÒ^\\Ñ6N	S	³.8M¦)ÂéIÂi¹dºY.M#S)&%)tÊ]´¹:\ZJÌKJY¤ÄÒ]2¿dê=2©$|¤\n(EHADXÊK,RR ¥L¨¤ý¥NâÌÊxd,79¹)b@YbÑ®´¥HN%°Ðé6b\rZÕ\r\n#®Ô ðcÇ¤Ùà±£CKI£L^,rÒæ%bXåsË©§£ª4ás*0»|¬0ub^*Xê£kÎåK2]±Õc\nt:.±j4¹fZ,ê»Y4Òí¨ÁË<áµ88l³rçFN©²YËË«£&,åK°²r©q¦®ºÅÓkQÃ+M58S¸ñÈç=O¡Ðt>óÎþ¥é¤1zrø@ØÞb²x¿CÚ_¹8<ç\'%ÒÖS½IIK(ó&M)J4P¥iF£j< f×f~Ïæ7ç8à?6HA{ÆÈ¼iâüÌÇ±ê~6~î£!å#´o~ÀXN=C0MÉ8;%2Nôàû¢x\'\'¬íçÖû&!ä£IÝ<\'Åe²£áxÁ\r®Úâ9± MCÀBç2ÉûÝæuOr\"©BÊ<ÄÔX\'pGxæz]×0ìg)rÀÜNeä}®ÙÖwyÞs¼î~FS,òÊK´ÒÊp¦Ü=KÍíuÊec0è§á6ÜOû;§s2))\ntfÅNq°ö69Ì²c­Ä.q\Z\rc\r*áç~ÉæÌz^p(¡nòÜ6ÞjÆ¹à5]íOAsæÒf¦&ç¹,Ra;\'Tú\'f\r	`îuEÁè1Úá°¶*Xéx¡\"Pp9[Ú=´.*õk¡§¨rÍÁrj¢930º/cÚ?&çxÜ8zOYâ`8=NµzÂàC\'.Ô÷\'¾m=rM¥ò^Y4Óè,Ñ14e\'Ò²bv\'õSj:5->&	æ55:%¤ìMÍexZRóÎï:M&ÒIQxy$±?ÓSeM©[Ø4±òæÊÇhðl ðÖD¨TÚd}Ü ùÌ§jS%8KÒ<0ÀÀúÓcÅâB%Ï3Þ@zÂÕâýË!!Ì\0ëv.ÖfðOÍOÔü¾FCÉ<éã<K&¡ælôÃÌ4ïÅ¦ñ¤lXF4!´ìÔfÅìi§}âô54¼=O¬cbÎò4!\"DFQiTd\ZmÞò¸;ÅÒ<æÃ nÌ9ãh= èxç;ÖÆÂ¶l\\Pâ­ÂÙ³CCÍN3äB¶ñ¡ Áá;S¢]8mB¥(ÌíJ(Lè:å,³S¢tM²ÓÌ&¡Õ)¨oqÂZv¿Öù½±;É=HzÓé/Øi4ÒéÚõÂéwWªYö0x÷âYZqpøÈM©¥Ä¤,ñ9M£ó<§ÉîC«Ú~Iã>/8 Â+UâîH§\nª0H@', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'bIHJ1612333823', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:30:24', '2021-02-03 00:30:24', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsfgdsfsd'),
(101, 31, 'BZh91AY&SYz,m\0	îß@\0Xÿý;;õ¿ÿÿú`\nÞú\0\n\n(H)JÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F4ÄÀF`\0\0aB©å2m\ZS&i4õÚjz T Ú=©é §êM©éD\r\Z4`FGÂÂzéà28èq\"§Ø~D0ð©RaõFø>óLqÄY °P`âÞàÆÐ>¬W&XÂ¤³Ü4¥)r%\Z0dÓôd³ðnìS±ÕÂñJ]K%8tQÁtÊ\'FYµ)¹Õ\\4µ×lÃò\\å²Òë½ÿ3àÃÄËÚþ/©ÛéaJ{Îó¾sVSsïóáÕvÚx.»â³ÊRx¹6{§´O7bOÖ>r×¹Ü§ÞïzßC-ÑäùÅawUDrò#ÍFÊØebJRÍ,X¤Ò^«óYaAñ)ÂÑP6(wHJ)\n(Ê¥2á»4©¹ºÉ²ÃÉLÒMS¢r¤LT*)-)FL0ÝÅôÂË,7¥©JMÉIIREÔÙËíe:²í)=å\rÊRQ%%	ID¡ËÍÕ,¹âS©Fªu]v^7]ê\\dÁd´$i4³,¥Ú=\Z3	 ÓM0äÌ,¢¨5¥L°ÃL(¤½ò./<L\Z{Úhiíoni\ros¸6N²ó¶Fâö^Ë1±J.6JMÒétÒv&%ÑÂi/.h&rTÁºle¾é²a2L.¦KK¥éqÒ7e2RiIºY2L¦Ébpje+Ra,l³I¤ºe0ýÑC=	Nå\0\0a!!Q%>Ì­IE%.´YPRË&TR~òÄ¥0J:ìS½ITÄM¬d²ÊIÂ¤]I,AQ2°%BT!XE·#^p°ué$:C¶ö\'Ù*SgsI±Þ±£CKI£L^,rÒæ%bXåsuË©§kGE7iºæTavÜ¬0tb^*Xè£eç\ZåK2]±Ñc\nppºÆMirÌ´YÑw,³i¥Û(ÁË<á²¶,Ú\\á,69ef[Î]2hÒÎT»\'*\Z`ºë¬]6XºØ9Zh¹QÕG¹â¥§öÈ÷¾×9ë¹÷¦Ðó#ñx~X¢½ÉÌü×½SÌQüàJp~ÒªJJYGdØX±JQ¢(%RwÈOËÉ6ö{Ó&^	¤û¤`x	xÓ½þÌÇæó¿;>n£$6ÏúÜîCÞ8-ÂãW8dÃ$íMÏµäNôî&Äõ£´úÚbÔi:ÎòÉÞö,²RiömêJCÓ8]®ÈxF5áàhÒâ=$\n!\0¢*zÁ 1^0°pyï¦l©ÕÜ¥;Âs/#ü7Cc¤ýE#ä;N¯ÐÊ`QeIvYMÔÙ»Éy¶Ë®S+Ø¥7&é²m\'Ê>OµÒÞ00B:³bÌ§8ØzÌ¥cfÎe3½¬ð°¸Î áb¡axñ­û¿GfcÚBóqEwEÃa±=sü»fë(ìJ]æ%ÏÅ¤úÚN N#Ìò0hKh>¡Ô9´:NÀ}+Èü¢ õ.ô DJí!ê{¬pvÃ½^¢Ãs­ìt4ó@Ù¸.MA\0¢G!ÄLéÑ²NÌ©ïO÷1=Iåé~Ê=ÉAÀv¯P@ô!Ä®¡é·ÜÀÓæ%åH]=¥&&L¤þ&\'DöOYu6QÃRÓàa0SS¡QäÚk+ÂÒùiÄÒi-)4CXgZè`ææR·°iè&ÌþsÒ.N©äGI¡SdÈö¸)Ø-ã¨CÎAç`¸á°``}Ï­Þï0Ðs±ï@z½ó,:B\nJRJÙ;cI3Ew§þSàò~ZÆ·y^P¡Ô;<Ãpì\ZBwéi¼i\0¡Ñ\Zët´&­´´õYiÄðx)Õ)ÃNTÉôO¥*T(bÎò4!\"DFQiTd\ZlÞëpxÅÄv»	6M¤Âp<¦Sto?aîK¢Ù±J¶öÍ\rFÊqS8B¤¸ÊYÃ¾v\'	tÝ²7I#ÙQ,5\'3Äé²ÍLNØt¨fa5H|Hóên¡GÔÍàxÜu¼ÜDÈ0,6Fä,619\Z?Váö?2ÊÐøÄ@óZhÖù·0BPÒ9ô`C¸éÄèøQí{NáAVªÿÅÜN$§K@', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'oaxR1612333911', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:31:54', '2021-02-03 00:31:54', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsfgfasddsfsd'),
(102, 31, 'BZh91AY&SYóø\"\0\n8_@\0Xÿý;;õ¿ÿÿú`>\0*¡J¡4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$i¨ÊÐÔÓhj\'6\"44zSG©§¨$M§£F¦LMAÐi4Éö](:ñßGäÕGêsàTó2(Â?2ÇâaÌÉø¢ÍTêopchÃÍ0©,Ç67R(á¹elYF[4RÍy»c,?&S£­¥â»\r&,Jrp£tÊ\'\r2³#jn²l0rik®ÙÅse¥×{~wÐÃÀËì}ó¬ÈìùRÓ¸ÄîêÊn~?7\'Zí´ï]wÔ³E¤ðs6yOQ\'ÌèSæòÇµOÅÜñ}l·¼XQôºÖ:¢HZeIé0²\nRÌ¬PÒ¤Uê­ú®¸ÁCê)Â4T\rÂ¤TÒC¦J,¥)L97`Â¦77Y(\\±.)Ip¦ÅI4,©£&nËbúaFË,MéfÅêRrRRTu6aòø2ÑÖnÓ°¤÷¢J))$¤¤JJ%\r)Ésu]Í<\nu4hµT³­uÚaxÜ»Î¸ÉÉi%\nI¦aK´uhÌ ÓM0÷85¨*\nl©¦lÁh¼¡E%ïK0Ã/ÍiöKJ\Zt··4ÇÍ7¸¸66ÎZ46-E¬³¢ãd¤Ý.M\'DÐ¤º9&v&\rºe2J7M·¦é²`e0])7M0,K%Òã	¤nÊe0¤Ò72L¦Ébr52©06Jl»dÌÙ.L?áyDWµ @EHAÅ>ì­IE%.´YPRK&TR}%J`)Ü¤ª^I«&T¦K$ÝHÌIR0¤¨¦uE\n\"	*Â,,ê6bQ`âÖ¨jËÚD}Ò¥7v´Ë\Z4,Òòe(Ó&W\\Ä¬K×7\\ºv4p¦í7\\Ê.ÛÃKÁL-,p£eç-sRÌa,p±.ärabæÊ4¹c-p»,Å\ZivÊ0sg)¹»bÍ¥ÎLslØäÊÎmÜ§7²h³K¹©N.4Áu×Xºl±un£¦ÅEu¬y<SÌYÏÞâr?3µüÓ ÒôúC[x{ð;ê9ú=Os?,§¬Qý	ÞË¥9ANÅ%%,£¼dØX±E(ÑH¥d£\nQ²é	ÞÙy&ÓõäÉz`>L|ÆÒf`6w¾F\'Åé|lý^3\r£sþa9Þt; ¸B<ÊîuJd¹ø=îNÒlO¤¨ì>×øm\ZN¹ÜY;¥RÊRÍ>ý¤:P]/µÈsc@Cì°dÐ÷D2\'±EIÁBÊ;ÉaÂq<\nsÐâít±ã6Á¸&ÀQÇÌQò¾S°ë~ÆS\\§É)0Ù²ÊiM½Í¶]rXÌä¤¢lPCq¡xæñ»\\ÆGH6lYâ6mÉcfÎ4½¬ØëaÎ^Q{¨h63P°À¼w#âMºJzVY&=xK¥ÓÓ>çDÙ£Ï=%yÀ¹ñi?ÓSiìKXN©Âz§¥)/),òw\'Dê`úOcÜ÷\"üb ðNô EJì1àûÚ8;BáÞ¯Ãs±÷:ZzG0lÜ)eN¤á§\rrC2§¹>pÜ9ûÎóè`oyN#ä^ÑO	&SØÙ¤ôÊ)4{IydÑN%4LM\"Iõ,pâaL(äÔ´÷L\'Èjjp`z©6Êð´¤=§{°å4KJM%FeáÚo%ðjlÐ/·°icÔ­P|]¢ÀØ´ôÄP©²dz§±<ÇÆe:!Ân¤©Ìù¥$á<RÌtRÆÏÑý³ÊyH;_\0õÀ ù»ß©aÈ @!h`|óµ9º4¢»÷SÞñ~ÎOsÛ#O\'lå (xÔÙÞ7¨i)áMãHØ°LhCÚ0àÐ^¶wQNÞ\\r52.5¼;ñB\n<Ð!!DU¦\"HEhb¡Üìowí6>TÂ&Ï{äIê\'!ã2£yæ<érVÀÞÙ¡¡Ìû)Ô¦ nBË¥HÜ<gDäMÛ#xT9ÎiEÉRsK,ÔÄäaÄ¤óÃ3	¨pÖëë7P£íNüû_êN´í<GÔ^#¨Òi¥Ó£Å\rG­ üØ<ã¹ñ,­È¸~s ¢-4l|ÍMÌ£Ø=Ðí:ÄuAÿ\n=h Â+Mþ.äp¡!çñD', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'pHB61612334363', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:39:23', '2021-02-03 00:39:23', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsfsdfsdafsdfsasfgfasddsfsd'),
(103, 31, 'BZh91AY&SY%X\rÉ\0\n8_@\0Xÿý;;õ¿ÿÿú`>\0RDAIJÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F4ÄÀF`\0\0aA\'¤ÉµO2Sò)å4\Z4ÈÑ2 T!DÓ\"y\Zj6LÐGÂè@èæè~ø?4ûT~Çö?¤Ãü¡Fú>&ÄY¢âø§6÷6ñbº2Æ%èÆàÀRåÛQÌ£bÌ2Ù¢hÿfí°üÚeN¶Rì40²Y)Ã¦T9´ÊÌ©ºÊu°ÂpËºí~«-.»çùC9)Øø<ýçYÙÜÂùÎÓ¶r«)¹ñõðë]¶ë®÷¬ÁgQe)<îFÏTô\"zÝ*zÇ¸£±êyø»^/©ãÁî}Âîµ¨Ò#Ø¤ÙRz,³+%4©z«~Ë®0b÷EBaI\Z*ÅÑR*BéE!S%R¦7`ÃM*nn²P¹b\\S4Tæ¤Ü©&Å\"¡bÒdÃ\rÙl_L(Ùeô³bÃu)HÜ$]Ma|¿S¬ÝaFÊ{J(T¢JJD¤¢Pä§«ÚÃE0|;\n64ZªHYØºí0¼p»ÁqÒJ&L0Âhé£2&RM4ÃYD)PTÖ2Ã\r0Z/(QIÊ¥eèÌ´øK44ò··4ÇcfÝ\r³8¶`¢öYQq²RnK¦¢hR]&v&\rºe2J7M·¦é²`e0])7M0,K%Òã	¤nÊe0¤Ò72L¦Ébpje+Ra,lÙvÉ²]49!Í#DWÉ @EHAÅ~V$¢Z,¨)F%*)>Ä¥0J8)ÍNÕ%SM¬R\rÌIR0¤¨XE¨QHAVa«¡®%¹ÕÐeí\"I>ùR¼&ÇjÆ4¼J4ÉâÇ\r.bV%K®]M;\Z9©»M×2£¶ä°ÁÍx)¥j6^q®JYì%kRîX¹².XËE×re£M.ÙFLòÃe77lY´¹Ã&¶8eg&í¦×dÑfrS,.4Áu×Xºl±un£ÓEâ¢ºÖ7d)ë?¹õ;§Þy?azdqù 9ÛÏ«NÕº§ÿKÚÏSØ(û	Þ¥8>JJYGxÉ°±bQ¢J&ÉF£e²½²òM§í=©.ôÒ|e\'¤¤©öqvÃ©¤¼õOwÛ=sð¼ýç[¤;öGñÖÆ©çnuJd¹ù<	ÚBlO¤¨ì=§¹¹\r``<Ï@Pô(¶*RîN¹Ý9\'Rv%è.rOÇ@(@ÐoXGhàîv=.#Î<Æ¤!¨Ü\rÃ`(¼Ý\rsÊQæyÃ­üL\n6YrÒ\r,¦Ù»Áy¶Ë®S+)(qØÁÄq^ üÞg¥É¼``y³bÌ§`Øx6%8©`ÚÑ;ÂòÜÆQÑê~É¨îÙô©¡ecÙº]=ïtM>Iè(è»ÊrçêÒ¦&ÓåKXN©Ìî{F\r4%ÄåÔ|ØB ²>È¨<G7z\"¥ø ÀHñ|¼pzBáÞ¯Ãs«àò4÷Þ`Ät(YK*u\'4nÛ$áÊÓñnvÃÚ}çô\0Þ0 úNç#`õ/æC­[Ç÷¸kGx6hpºs,Ñ14e\'½dÄÃz\'0£¥§¸Âa;MNf	Gu&ÓY^Îw»&IiI¤¨Ì¼<òXSb¦É:I3)-±=Y=Û;óäëO9È\n&G¥ÄùSÊ~³)Ñc°¹æ=Ð¤(1>G°ÕÞï<ç(Néý|Å\'ý©û®(RÚP|ÓÈ\ZÑ]©ÿ÷<_ÃµóÈÑ¼ÕôçpPò¡³¼n@ÒS×MãHØ°&lhC¼,Å¡9\r4í¢ÓÞõ0ó.ìJraÍL\\ø%J$*RÏY\Z\"D#(´ÄB ²T!\0[Ý¢äÏ#ÌCdÙîw$ôã2£yå=IaBÍ9+`olÐÐètS\0ÚZK¥HÜ<gDá.¶Fð©$r\"Ò%&¤å<ç<¥jbp&Ã¤ù!Ô9¥!õ${:ÍÔ(û£÷}ÏÕêIÖIà÷ê4Béqå;°ØÌú\Zs°v¿ÊÐûKð# ;Q\n\"ÓF¯ÌÍ¹vCl¤<9HÂä!0ÓAÿ¹\"(H¬ä', 'Online Payment', 'shipto', NULL, '7', 3223, NULL, NULL, 'bjFe1612334516', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', NULL, 'Uttara', '1230', 'saad', 'Bangladesh', 'saad@gmail.com', '01515691480', 'dhaka', 'dhaka', '1230', 'test note', 'ten', '10', 'pending', '2021-02-03 00:41:57', '2021-02-03 00:41:57', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '50', '4ddsdsffdsfsdfsdafasdffsdfsasfgfasddsfsd'),
(104, 86, 'BZh91AY&SYg4ól\0_P\0Xø?[ü¿ÿÿú`ß}\0\0HB\nP(¡	s\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&À`\00\0L`À$DÉM©ä¦ySÊ~Á©ê¡f¨dzM¤&©èi¦M4¦MLm)£%Ð2@ØSüQó,<Ñ\"Y-#ñÀ;þaÈÕv6ÜÅv+H\\³Oå*^MØ?E×\\³ÉÒrdÉL%_5a£3Fk0Úºa6dÉfÍ}7hQi¢hv¿+&MSIÜÎZN³°ÑôÅÅÑí{_©èpu8¹Ùá-àQì#ÅÓÈï8GØx\n(Gk¬±ÑcÒ\\~jf2>RÉ¨£ÄÈ;=æc%IÈ©öEDw% Ø´æà´Ê¸,Ñ±Út2;Fo­ðY}Øa*v*I&éPh`°s9eÐÝ*(¤¤Tl5sbrS5KM\nMÍÒ\'Yt±-*`£EI¢jZIi*.ÃfM×65jjYCP¹)JMVjÙÙ©JOQh¡4Yd)BÌhÃG¨¼â`É¹D´hZ\rTF­FKÏSË\Z\Z4T¡v®»%>MÓ)EjE3aÍG2¬±¤)R%K,dsÙk±bæ¦9´ÐÓÚààÓ4ÝÉÅ°îlÐÐ]5,`$a5a)«°Ñ¥Ú³jÄÐÕ0Â*j»ZfÉ É0L4fÂP¥Yqm2&mE.h,e0¬¥ÓDÍdÉ2}iå$:I;TbH¢!a¥aÊ%!\n)¢!¥.)C!ep¥JF0ABQ!aF\\Í»m6R¡¢(¼ÍvMJ£fLÌØ3\\ÄÙªÆ®Íî\rËÊ83Zp(pQÁÎÌ.lÍéå6h`ÂjK©³BÌÖY£fÍ³·0£WMÛ²Õ20Õfeðªn¼ÍzRYS¼òûçÛ=¤ÿOdÔë2s}È¨ûQévÙdWqÀØâ;þì¼Ðæ½%>ÓÚ³sLßzäÉI2RQDÍ¢ÎÙ	i1?´÷»XyJ=á(YÁMK<_cðyw<hÙ£Êö§iw³Î»[2Bu:¸Ìî8Êß¼>\'óX¹J=lHw=e®|Mg9Û7rÖ\'ìÎzQÆSTÎ\nJE*GøÒlÙ:3ÉÕ;&n§RÂÍeÖTÉ&gèl9.R=~ê{¥y)¢<ÏS\rTÎ`£3SQäûÍ¡¹JRdMÛ¦Óò.Qü;_#£AÙ±fSccBæÇÔÙÈ|äZlZW)S¶Su<YN.9Ivn÷|ßIQØ}Fë=Ë¦3Ï8)±båæ\'¸]¤Ñ8Ï3ë,»àNOJ|EÄu¯\'¡BX±âù£Ç\0ä*v±;g®m-<\\Eåã\nrTâàÕTbTõ¿É0ýÆÃtOÍæOS£Ñ7fì;d~ËJaèxOkÅÔ;åMV\\zÉv¡u\'%Æ¤©£$YywÖ]À»¡ÁÁ Þj.ßÔÁ.ØlSÜÙ9¸Ü_2aHh;Õñ¸éYäE\"G\"àjxÇPæbA±ÌLÏi´£Þlx8£OÞÔ!þ<ÂÀ~ g.\\ð§s^px%%9NêaªÐ¤øQ72Z.o¼©a ê`;Úiêrz\rg¤é2:tüä1~tLF11	\"\n4A`ÅÎ×G¡ÁÜ²2v$ó$ï´i8½tShØK¶h¡ûxí³âs8¥.0aÐì4.Ñ«X©ª-(¢ÉÞowrÌ§Àe6M§O<2MaÁIïÅ$ÑÌ£äï·q¤qhL%\'aÝ0ùÈo9ÞâÊò\ráÝ5!Àó:4ÁÔ`?³°AÒ#à(ùüç¡a¢ ÿÅÜN$Í<Û\0', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'nz9S1612336116', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '0151569148066', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-03 01:08:37', '2021-02-03 01:08:37', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601a4bf468f77'),
(105, 104, 'BZh91AY&SY²âT\0{ßP\0Xø?ÛþD¿ÿÿú`¿Ð\0\0Rª\0E\nD©PUÀ&d`bba0!¦&À&d`bba0!¦&À&d`bba0!¦&À&d`bba0!¦&	ªHBjjyÉíOTÏTh=C\0zOSL¤DÓ@L`¦§¤04Ò<§©±Gï?öh{-#ÿVÉbÄþ¦,-\'öÙ~IøÎ.kuÂÅ¶Wà±Wò|Þwô]xÌÌÆ9ÌÙbü-eß0þói´ØÔü§Aâ8LbÓtÃmM§ÜÄêNç%w®kÒÝNEç[­Çbáp´»9´üæÉÇtç5e4-3Òzï£äÆpp¼W{ã;-:iwNIÌòNóÀî]n\ZF×¦x¿[½{r÷4×Ýt3IÜmÝ2ø,ø*QÐX±_\r/È÷cò<WØ}g¨ÃÄô¼\'©£ç6&Á³ä{Ï<Òê0ûÚáõ\\°Ë|Ö&óVbÙ=¢ÉKT<í4¶ÊáÚå6[¶tbÔÚm2}¦Ç¬ösï<N±ö´Û½»ví÷Zª^iSÏ:Í#Rò8=Ðô\Z+±e0Å`m8cÑ7\\mÊims2;åî¸¶Æa®Y]jêh¹bkÕ5KRdÞn»§¤á¿¹?rk±ÜîrOÖlÒy&,«\'ÉÉÚjvóxï[WqÄæeK#Ö±5L*èÔÔ¦L&U©Òm9ÍçIÕàyÎKsªs5£(¹Îq=§°q~§\'%¹½±Ðèq21-§I´Úm8ûÇAê½\'UÑau¬KS¤ë7vkîzÍÝQ©1q:M¦Ë¬õ¹&Çù\\ãÐê¶]#*ß¬É¦Ó\')Þ±vZZ-.åºÝibæ¶Z\\.kØ½Ke¡hò\\©æa»ëi7qÎaÉuU¬Ýl·\\*X¶]ì[åÐn·\'E²éás¥ÀÜhn¹®Kq²ÝÐÞ¸MMÄç:N\'\n¹Nt²ëaºçKRân³°æ9.KyØ8/ïSÖJô^Ý¼\nÉ¦¥o6öÕ5,XbÒÔÔÄ°Å[M.,\r-ÍÓPÒa6z&ªÌRÈ6ÁªÉe`Ä-`ÕºÁLÔÕS& Å22y×Yßá<Éã<Ú¤vª#û,f1Úq6^Sãé©ºr®éÊm[®³¤ÉÝ6^Sy¼ÓçÝ9.Óu;NsK²`í1;NSS¢uÍ¬å4¹L&Æ§YfcÈâii[ÌW>z[µÖaµÒi¦F&n»M.s¬ë6tîMæ\'I»²Çtît«Þt¬pµ78f;¦Ëy¶L«L\\9ùÿºûÅ÷½+ù>+Ìu>×Eø¿k½Kì~õ¯J¾îó¤×àÿÁé\\×Ãß»ü¿÷;Ç©}ævø,ð\\ò[LM]\'Ú²^Ip°q2,VVCæ´{TZ\r×Ì¿ÒzæóÁb|Oè±Zv¹­Æ§u?û\'ùã<g½i¥ûgßO¾p·«eéBvY8O4ù4b0õÆx§ð9Ï½d÷We;ßÚO¸ûZG)â±>Ên©î°ÐK÷{ªö©w­CØ¹O%;f.ë<Ë\"Évãø=KØ§bõNâ¼ëÐ¹O<óÍS¢Újbâ§#úGbÙ1>eüÖA©ö¬M§¶|f¦Ns\'9î)¼çu\\çUIÌÙu:Íü«Ü¼¼ËÂdÄ¼É+¤;pö§ß-«+ëÜôÎ³°dë\r¦ËiÖËöMvL©´çWæ}&TÒÏÖ²wLªp»ç²o<iÊ|\'¥~Sü,§ê7OÞ{O¦mVóä¼\'µv9O*i0ùMÈÝ}$Ús\\Ë½{\'ì4[¬OµWùªö/Ü­¢úL<è½Òb1SRRêdbÂbù×Ñ;NKií\'Åè¯Bù.«Kã;É²ÚÌ|í:NS¤[¬_)ú-×o?ê; ~/bø&+\'¦{tå<A?òhÒÂ7éð_©ñaïZL.SaòUºÚtixMEX¹Î\"ÔÙm]£¤Ùx.&NA¼Þj^Ñq8ÜÛK\"ámVÓK&ÓÚ	É\Z\'Å¡-M#º¯%ü}O%û¡æ^ä:Éâu;\'¾¾ÙºòW;NÉôÌ+ªú¡i{ëð»çä\ZóÏSÙ,^¹á?­²÷¦X²®Kcdø/	ó»ç:\\L©âN÷Í&²Ñð«JÔç<¥z¦ó¬Ô\'×:Ì-ÊÚ4ºõ45/)Í{O-.kß;OÙ>iÎ|fO|ÊõCñ¦L+ûhMLÍ,FSÉ5,\nY\rL¡3)ËÎ»¾v¹¥8^¯p<gEÍs²¼VÉ-Ó\'PÚ.ËSU~työ]åÖ{fMô2jdîOxÎÓiÑÖu¦Rw¯\Zibbh¹.åÝ´öMNÎ7Zº¥w¬é8[I;L«êIúd¹ÏÄû§û>¬í<Ê§¼\rÆãK ñKK{úOñ®bñ^µý[ýÏy¹qNÁæSiá2V<í:­ÇÏ2[®é^¥þ§ïU^ÂÓõO®,Á&#S4þ.äp¡!eÅ¨', 'Online Payment', 'shipto', 'Azampur', '7', 5190, NULL, NULL, '8Usx1612352595', 'Pending', 'shaun@ed.com', 'shaun', 'Bangladesh', '01775391091', 'sfcs', 'sdf', 'sfs', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, 'fs', 'ten', '10', 'pending', '2021-02-03 05:43:15', '2021-02-03 05:43:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '506', '601a8c5319490'),
(106, 104, 'BZh91AY&SYÊ}3\0¼_@\0ø+öD¿ïÿúP½l#bîÎtä!(õ\Zb=FF\0Ð\0\0Ð(&@Ðh4Ð@4\0\"Jy&z&i Sj2\r\0\0\0\0\0\0\0\"A1õ2cB \04Ñ4ýR\nkQ{ø|F6uÙÚoßf#.=dë¸­QÖBÂÍ_{©Û#6¸:ÔÐ÷\'\rKBQ	©Õ¿áÍ®ÅFåÃÓqK5:y;êz\ZH¥à¯\"|\0Ðæ\nQ¤Ðk/¤çNp\r#°¥èãÅ,²t)G¦¢)Þ\"äµ¨R(RFAX¦øCÊ~FwX¶\'h¶\'x$OADÁ6°nyÞ2ÎÒ¡Wn[O9fr]Þx5ï!JÝÂI\"2L;ÌÁøú)#ÜÆáâ`cbHRÇÊ9GN2ÌåMZ.ò¨õZÌHÇÅ©°d¨G0t	¼¬!Ò,ºóÈÒáÇ@ö(øÐØH]P©¢IÈ]É£	\n qÆJH¤X¤At!QI´ÍÅûµ;û©$txÆk*ÈßJY«¤\ZÅäs½¬ÝË{csv7¦ÃPæ©YatÄY%(ªjn\rÜÖ±èÛbÍÍ¶H\"ÚäÉÙ,N¿IÐvcC{ÿ/Øé6:i3à`ä|Iþú;z+}ìðE\Z Á´«nÌQ6¦£ÐÂy¨ÁÁhÚsàLB$â¹N§«MÆpÖ(\\F~âs<$v·ÎÌG&¥L\Z¸bþTèÊæ46/¸>ð½ÃN¦¦âºë%¢Ô¹a¡Ä(ý®f[[í÷¢õFc¨²UD±[¸­esý=æ§LÀ¤JCÒî!+ö2FGôÞ;¿\Zï*íÄýÿ¡¨=\ZãÐÇÎº¨:HLô	ddXHqí.Ðv=FÒIu±Éb!ª¸ÁO,TÂß#yäXÇ0%7£3Å«dLgbg\0Ðº~ÆTÜ¼	óèuØc\nÇ¤E@YÔS+DDar%Æ(¬¦L¨Rr¢ rfâKB¢ Q/!Hp,-Ã¢ÝÌYðÓ2 8$mÄáQGÍ\"¤ÄÉFOD`â {áFe:â&ôhac¢Ü:àÜo|!æÆR¤Eð2#K#¢³ôçsN7 Ä!\'ª\"Æ0Â)Dd¨° ²5gÔy89i1­\\ÅEì-FY $IÜ$\">ø3là;s©®%b÷M#3US%Ê(L²°d³È¡0ª0×¹.Ì2Ôg×Ð¶4<Á	MMFKdG´ØaíÀB°âÑfD\rVky´CÊp!³fÄd	 JâîH§\nO¦b ', 'Online Payment', 'shipto', 'Azampur', '1', 1880, NULL, NULL, 'Wrk51612352878', 'Paid', 'shaun@ed.com', 'shaun', 'Bangladesh', '01775391091', 'sfcs', 'h', 'h', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', NULL, 'pending', '2021-02-03 05:47:58', '2021-02-03 05:47:58', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '198', '601a8d6e36a90'),
(107, 104, 'BZh91AY&SYYÊ\0$_P\0Xø;Kü¿ÿÿú`=ð2Ä\n9¦&\0\0\0\0\0	SS)é¡I\rÐ\r4ÐÐ\0æ\0L\0L\0`\0&	5%M@2\04\0Ðæ\0L\0L\0`\0&	& ÓDòL*=¡óI õ,C8:Ü ¾@\n\nÆÿÂÅÊ-yF¿©u!PúLÉjÀiR®3óf$Þ¦¬QÃZQcZÆ7ÞL®2«Ñl²ÐkªÄ¦Òÿqêýw{¡êÇ<¶r+ÈHÄvDg3Ìñ;Îµ6àAØH|ÊF¼\r%w<\na×nòöj5qqLA	nÈ.Ó®Èµ!ÁÀê8ï<%tÐTjhm$FÓ\ZhbÖiEVj\\aeÒT%AÁ\0YPcl¾Ô6IªÕlQ³¦¿Òd&\näBÁ¨¬ÞèfI\\(W! µè©+¡À©{°l&ó3ÈÄ²¨Æ\"Ö¦ÑFUn ¸dÚfì¨£¥Æ`AÀ¡B\\\n,Hn$VL!1ºPjUOSP\\¦ô§kU*^ÔM2&$)kÖ¢¶\0Â©p¥IWVµUU{×Bà¾Á½\0Hl\neZP6P­QL\\QE6´ ÈÀÉ\nH°CcÜbôÔÛ¤$,A\0|ÆY®ú,ëb`Ä»A[ûð;ÌçY@Ú\Zi\ZhÄ9mX¹ Î±rÓk^\rc3Z3¦/j¹#wÎ¿qÈs³äyË> qéÆaáxò3*º¸ÊíÒ2Y«~ÞªÒ«Lbµãh¡ñ;¶Óê3ò>C6;ÑAØ|Oú|ÿcù2[Äø/÷RN¼Ø:0ê]OcÌkö!#6å­zº§¡¸Ë0Ò÷±ÚÇY46-ò:CÕcÚjo-®°0Ê¥cèbFHÅÈ?·ø¿\\;»ðø£\rM$\n.Pg\Z©®t#æjp2,4Ì$Èà¼æBXü	.¼ÎâH7\'Î¦{é M¹q>¿a­ç¨¡ñ:Ò©ÌÓ±Û|ç$;n\\3:ýä?´õ¯\0g¢÷%Òç$11ç½&t;½\'háCí1,qn¡o#vªiäÿoèp·1±õv[yÀ^@0)ÙÌé v0¼H{BnµÄËÕ$ìX×QX* ãJÒ`h©*`rÍÄ¬Ë\n¥íÜ0þÒÝÚ-BÈM2õð\r3ô1F?ÑÏÈÔäY(6bþ÷96ÂÄs4ÙeF¡°íFC=i¾gªB!*B2Èd(:\r+H Ý\\ìÙîí·GØûÑäbñJ¤AFA%	$ÚqÙ³\"»Òä*¯qîf.Ù@I/T!ztòp*¦ñ;Mr`FÃUc#)ã9\0©Ä0Y*P0FÆ¿èÀ¾ÑiYä]rDPâSê>¾ó8Y\rõ´fb@Ö_å&¸L0\nJA©þ.äp¡ 6³8', 'Cash On Delivery', 'shipto', 'Azampur', '1', 135, NULL, NULL, 'TvYz1612353048', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '01775391091', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'ten', '10', 'pending', '2021-02-03 05:50:48', '2021-02-03 05:50:48', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(108, 102, 'BZh91AY&SYoÕ¬\0$_P\0Xø;Kü¿ÿÿú`=ð©L± iÀÀ\0&\0`ÔÊzhTCÐF £L9¦&\0\0\0\0\0	MIS@Ð \r\04 9¦&\0\0\0\0\0	DDÐ$ôÉ<£S£C!LÒh=KÀÎ£ÀD÷(/ñCÁüßqbFK^¯Ä:ÉÉh}&dµ`4©WEø³mSK«E¯ÖXV±§úÊÆãÖ¤Lìµ\Zó\\@l6û`3ã»Ò}gEåüò\0gApHÄë3<OÄî7bÔØ3y\"CæT*wBîw}¥Õh5øKbH[2Í:åRÎ£¡^ã¼XMI!¦ÂDh\r1¦-i~Uf¥¦Ql%BT®ÈêmÁÓ&,HeV¬Cbs3!0V\"6\rEfÔ·C2Jâ1ATìJ@÷	¾Aò yw{ô%¶Å¦i°fÁ[H,&Ä7LÛØ²RPj9°(@ËARÅÄÒHPUdÉ¢\"\Z¡CÅäÔÔ)¢E=)ÚáUE\nº¦DÄ.µj+¯K(êJ²ºê*ªûWBÞ¾Á¹\0Hl\neZP6P­QL\\QE6´ ÈÀÉ\nH°CcÚ`ôÔÙ¤$,\0|ÆY®ê+Øëq0b] Å-íèæs¬ mM4M´bÄË¶Î,\\JgX¹iµ¯±LÉ­ÌSAµ\\ÂÂ8Î¯qÌtçÌó6.|A£Ê;LÃºòÑàfUup,Ø>ó¤b³W~¬ÜªÒ«LbºÑ°@@P÷»)õù;QAÈ÷¹óùáÚ¤¹~U(¤ÞSF@k©ð.8,Æ¾D#¼b¦C8ëAn©Þ^hm1Ì4}î;ïK&\r\r øAæ¸ôµÖ/&T®>°d\\CþÉëóÃ³¿$a©¤QAEÒ\nLãU5Ï â>¦¦óá¦b)&G§2ÀgàIeâv`@ô´x¾u3ÝMnãÀúý·b¼èvÊ§3N&NíÐ3Pí	±`Ìëõû§w<¬I.8¡=i3¡Ûè¸! 3}\rç¤À±âÜ¡n£sU4Äñÿ7B?Ë\rÒp·1±õr1»q¼^P@0)ËÓ@ä@ÂÑ!è	°Ör-TD¼ºª½P¡êVEISm%f\\@T*¤R8+hÃý3Ko`²ê\"i¨^sýè°¸i©0÷í~§ä ØuýÜâwÛ$æiÊ-C#±ó¦o\"ÙÎª_}ÌFV©Ç è4¬p lAc^®Ëº>OÚ\0c|P´\"b2É(H° 41&ÔLNYpWr\\EUê/µÅÙ(	%àD/#Û&f\\\n©¼Ã\\fÅ÷¦ª¸ÄÆxENa@*`°ÖcâÑ^ÅäÀ¶Á§a~9âYqDPàSê>½äó8Xõ´f`@Õô^áå&¸L0\nJA©þ.äp¡ Þ«X', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'l0hT1612419471', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:17:52', '2021-02-04 00:17:52', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b917eea258'),
(109, 102, 'BZh91AY&SYÎ¬o\0ßPXø?þ¿ïÿú`ß|(P(!Í12dÑÁ14À&i&&	¦0`ÀsLL4a0LM0	C`FbdÉ£	biL#0Ôz£i¤e0Ñêm\0\0õ	êh4\n Ôiôb´ Çª@ÍpçqùQûÑ\"Y,¯ÀOð7õÌàØèáË½ñKÉm;ØÚê`>XQÔd¥â2d¹üØË\rZ3YfÕÌÃ	³&K6h»ÍssBM&Qåâ¥`Ä©Tç);YKIÐt?wÎGæë{~Çss{±}òÞ¤\"<-<ÎGÌúO#¤¢Ìu:]é.KQï9Kµ=åÑrc\'´Àq*#Ð$ÍËO\Z7³oY¢Ì.¥®ueÓ°â{^æ¥þ,0ÃÖHjI¾T\Zè:èjRR*N\Z·vØF´eÔ5@¶b95T¦¤©Rínlffj¡¾YarR\",Ñ«	«S ÷ÊbR}RE	JB)5f»V\Z¼Lçn&%F¥ ÁDhÕdýU/Øe,hY£EIJfºë°¦ÆS¥0Éæ(Äè,g\nTRÌY°ì\Zá,³aÈÇ¦\Zc£m9tv6;hh2$0$\\=|ÔQjÉ)«°Õ¥Ú3jÄÐÕ0Â*j»ZfÉ É0L4fÂR,ºë3hÉ3j(atÃAc)e.&lØ&IÜòHuÙ:T`J!((\\4¬7Ä HQME-£)ÐPX@3ÊPÈZ¸¥JF0AQJFa¹á7m8Ãq¶\rQEÞÁx×dÑª6dÌÍ³5ÌM©Òé`ºíf77°^T½ÓyCzìÖo6asfl×L)³C3R]Mf²ÍÛ6lÍÜÜaF­)³\Z&ó\rVf_\n¦åækÒUOIçð\\ýSÂf}ïk9ú6CåO²qVã5»\\fIÕèø¿6Ã}ÏÕ·á)ð=9¡5~\n;%$ÉRfÑg\\´íu°ózOï(Y½MKOØûÿ¸êÚ9é2àmì/ ud8:ÉÌæ>gaÂTn~2ðúÏÅbfã(äçbC±óì5óªnqëâÎzÂST¦õ%\"#xûÎÉ6llçÍ9§LÍÌæXY¬ºÊ$ÌÿFÃ©rÊOÉOd¢î×zÊh¦×­Éªg0Q©¨ýßktÙJR\"nnM§è\\£á7<®®ÀA¶Ëe:mh^?nÔ>rÓbÒ¸ÊRðe8:ØqìÞtÿo9QÒzaâ{L<\'tÞ¦n<ÁvDá;^ÒÉK½Äâõ\'Ò(ñ|£èDÁ¬å\n%HY\rO¡%O	äñg.ä9N¶\'\\ù¦ÒÓÅÀ^^0§N\ríYµF%OòSàl7\"v§yJ)Ôå6dè:d|,$Ã¾y<G)bU$Ä»PºãRTÑ,¼»k.íeGpá æ8¹ÁtÁ2ØÙL,#iÄ\Z#yÔ¶AÖ¹ÙhùÚ/[¼]¤á\"¢¦³ÁüK¼SfjJlÙ?«©gå2iÍ;ñ)ùÎRÃ½JOys×8<c6©¢y:8J<RV\r¯+Ì`ì¬rRXØk«%Ç¤i;¥¥¥=OS{ù;Ú<TïSÝxÆ	ÑH4ÉDhX1H#\0ch ! £DQ-Üë=mîÅ¥\'\"d¹«F;×Ayu6èÊ^YdîN{MóWjR§Ë´jÖ*CtãQdÎn®ô,ÊwSdØjpíS	¬7©;ÇÊhç(þSVç	Þ´Z&	fÛ;%ß)N×TþËÉ?#´ÂeS¹PZq¥¥&¬Kêæ;¢=Óì(óódHAB2ÿrE8PÎ¬o', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'uScw1612419609', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:20:09', '2021-02-04 00:20:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b920677e48'),
(110, 102, 'BZh91AY&SYV«¼ó\0ßPXø?þ¿ïÿú`ß|\0HB@ *@4ÄÉFÄÓ\00F`9¦&L0&&À!0#Í12dÑÁ14À&i&&	¦0`À\"DQ¨Æ\0\04\0Ô\Z\0\n @IéÄ´z¡é©Ð7iø?bÃ¶$K%øû\r¼¡ô75:Ü9cp6±^äë¹Óµ®êYe¦J]ã&H`hæra£3Fk0Ú¹0ÂlÉÍ.ò\\ÜÐ¢ÓI¡Òtú¬0qjÅ\'[)i9ÎGîòYÐ(øº~Çcs{±}yo:GèGiÀò>³ÎtQ9.rÅyË£¹qì=Ç%íEqt\\¡ÖÉì0Jó%I&¥¤&å§ÕFömë4YÔµÎ¨ºò³í{ù0ÃoY\"u*I&Ò ÔÈ´9ÎtCT¨¢Rt0ÕÎÄä¦jÐ¦ãrQèòÒLh©4MKI-%R¥Û0ÜØÌÌÙC|²Âä¥*E4Y£VV¦Hú¥JO²Qh¡)HR&¬×jÃWÎq24p(d1£VQõ_¬ÊXÐ³F0Ñu×aM¦%K)a	È£±)R%K,³QÎ5áD,³QÂÇu¦G\Zc­¶ºÝMÆÚ\Z¦éÌ	7R2MY%5av\Z³»FmX\Z¦EMWkLÙ4&ÉØJE]qm2&mE.h,e0¬¥ÓDÍdÉ2{þIÛ\'B)DB#\n\n+\r±(!SDBKhÊB4ñ2®)RÀ`R¡D@Q!lwMç\0l7éPÑ]¬»&%Q³&flM®blÕNC×k4i¹½ò¤ìÖÊÔof³y³3fºd¹M0¡êlÐ³5hÄÞÙ³flææã\n5lÉMÑ7j³2øU7/3^ªyÏ/|ûgìé3ñ{YÏÑ´ü¢:}Óû7­Øã2N7Éñl9OÁú¶ü¥=ç­g$çM_ÔÉI2T¢¤´YÕ!-&\'Ê{]L<¥sûÊoSFÓÂ{_{·äôÝ`ÛGÈ\\\r¼åácñ¨yÖp¼>ÓóX¸Ê;ÌHu¾ÁÏ=f³tÍÎ#b|Ï¡%5IºoRR)R7ÄëfÉÔÎzg)Ñ3rrXY¬ºÊ$ÌÿFÃ©rÝ\'ÁO\\¢îÇzÊh¦Ç¡Éªg0Q©¨ýß{tÙJR\"nnM§è\\£ß9Þ\'GPAÛe²eíºÇºÛ¬yCé-6-+©Ó)¹OS©.ÍçvÏöòÁ÷\'­tÃÂqvÍêfèX£Áyyëi4N±í,»ÜN/¡>±GçÄI<\ZÎèQ*BÈj{Tð§9wpä*u1:§¦m-<\\åã\nqTàÞÕTbTô¾saü\räNÄï)E:]ÓfNs¢G½bÉRL;óÔðqÒÅ&«.<Iv¡u\'Æ¤©£$YywÖ]ØÉGppá ã7¹ÁtÁ2ØÙL,qÄÎXd$ôÈ¼¥¡õ·§ÍÕ,?É\'S¼]á\"¢¦³ÁüK¼SfjJ|Ù?«¥gîD´å;Iò)ñÒÃ½JO¨¹è¹ÅTÑI=Nqá£ÌÑ¬ßx3<¤ ø :1ÉIc`Q¦l=R¤íóZi>÷òw´x©Þ§ºÅH4ÉDhX1H#\0ch ! £DQ-ØèúÝk#\'BNâd«F;×Ayu6èÊ^YdíNkMóWbRÓeÚ5k!ºqJ(²g7M×ye;Æ)²l58JvC)ÖÔãçI4sGtÕ¹Âw¤ìÂY¢vBÎ¹wÎS±Ó?²òOØa2Å)Ú¨-8ÍÒÒV#|ÑÆuzäQìöNÒ2$ Â!DAÿrE8PV«¼ó', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'L7ZJ1612419738', 'Pending', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:22:18', '2021-02-04 00:22:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b928629326'),
(111, 102, 'BZh91AY&SYC\0#_P\0Xø?[ü¿ïÿú`=¾©,°¥ `Ld0\0À\0\0JjdÐHhP\r¨M4dPæ4À&C\00L\0\0I*h\04\0i4\0@\ZÓ\0\0Á0\0\0\"&Ä5\'¤ôÈÔÐÈimF,\n\\3¨ð!r`@((Æbø>÷Äéº1Øç)eW(tpÒw)ÕXêUÑF_Û0&Õ3º±DZý)EkZ|äÆÃ ²±µA«c]W\Z\ZËy@gï³¡ýxe¢òþ%x\03´G0Hæo2>g¬ð7bÐÜl g\"@ïG+<\n×^òáK©1ä$,ñq©\rÒ¡Ôd]Þz\'Á¡) ±Rhhk$EàÓ\Zhb×KõÐÌw2,3ÅjPUI* Ë,(OÓ´e8	!©kÃ^åPJkÖ	m`Õ«6¥»L+Å\nÅ.!^­Wm¤L H]ÞQb­hV!Z\\&Ä5»aM\\ÍuÀaB±$,\\Hk$V¤<0Õ(D5ááâÒ	ï7ÅÚ d]î¦¶\n´5\Z-0É;¸DÚµ\Zn!Ú,*QÔeuÔ0UUï_4µyÖP\0m!°4EbJ¢¢H6h¸ÈQE\Z±EB1%¨¢\nlØö<ô5ç	\0@! Òk¶ö:É0b] ÅÖÍ;Ìé6fDFf1beÚ®,XJgX±I¥-qLhB/1lzHðhä7)ÕÀæ?&ÓÂIä*XøW¨ÈyîM9nÏðç.\Z÷ÝL¶¶ÚÕLªÓ®´l>§e<Æo?1\Z¨ ä~Gè|¾±IÏ%ì©E&àÚjLØu¦´¸Þ²\ZÄýGï Wf3ºßÜ@óY¸Ç0×ú\\v#!Þ&¦\r\rP{áÕqÜhm.ÓH¼eR¸þXÉ¹Õýã\'l;;péLêâ.//3Úb`Øb6ÕE+àHÏi°ë1.\Zf\"dpZt!,z,¼Îò\nX¢Ñn©«5Ïéý	¶²óÊíøÛ`g¢I(}á6,<H\n}bÏ±y>ËÀI.8¡<gC»Ñq<C0fêMæ\nµÐµ£Vo7boâA¬#`4ao]cÝÄÂ»\r¢óN=qÓ0ä@Âøô\nÞµâeªrWÂ£*¯T(A¾ú¤ÀÑRTÀåIY\n¥÷\nGÅm}LÛÌZºÅeª¿Rz,.\Zg¸Á{öGng©A¡¼_AÿÇaSÀ°Ë´ÊÊ­-1Ø¸²7TÛ~FV©Ç è4¬o lAc¯O;º>oÔ1Æ¢J,±\"ÑDB@J\ZLjM\'=[áÚUs/µÎPKÀ%$\\V¸5ðp*¦ï9á6/½4LÔdÆ&3×;TÁ`¬Á(£S]ëìÀ¶±\\ñÈíKBTTQeÁ¼°øn>ñ8\n¬Fø´fb@Õô^C)Æ87Æ_¿A¨ñw$S	0è`', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'wH2r1612419843', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:24:03', '2021-02-04 00:24:03', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b92f296ce3'),
(112, 102, 'BZh91AY&SYÞt¾}\0ßP\0Xø?ÿü¿ÿÿú`¡@\0P\0P\n)s\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`Ls\0F	0M\r`L\"IFÕDÈÓLSM\Z4Ð4@h$@DÓF	LôIáM¦#ôeOQt n?\'àø\'GWbØhþ_ïñùåe°ôÄÕìQK®¸²|Ú8>.+®t]ær?©JJEX¢¥¨ìFÎ,ËI7cæö6ÐÅwsë9®$À³OC.¹s±u×,ìehº2ºK9?EÃVº©Nm¬Ê5hèÃ	»,¬ÝªïÙsRÍ]ç¿øK0Ä¥)cc©Qb¥Ü{¥¦ïÙò[SÙ²Í½¾;÷¶xßù<ÇdÓ§#X®C¯rdjso»çB¨`Â0Ë,þNç©Þúº(© ¡IJþR9Cé@´I: ²\'ÐûOÒù?¯ñ5)4YcêQþ7Áéo{ôûe<SÜæÃédë?ÓW1ö&Êx;WS×©fY4K;Jí_q×;(æ©Åà´G¬¤Ê9Ö9eÎöae,ïyØtzèQE&WÜ³Sii2Q`ªNNªv®ÓTRºT²*K2Ý#*.8L<,§%JL)âbXxXÊN	Ä´KIT©³L¹¯gkv»u¥[¸)ÍQ:Ê*aO¹EJT]fîl\'K)Å4QJbQ³2Ñy(K¬²¡IªíXlË/+´slàäâhpaÅ«EhÑjsrâÆêaf#ïâïe»ëc£RR,90Ã8jÑ÷­Õí49Np&Y\nPÝK¸.Âï\ZÏªS¦T³3wv­áeH?Â°àÃ¼Ì»KôBâÍÆc3N\Zt7·4Ç3fÜÎ\rÓ¤¼±f­#c&qæ#+lã³[,Z[E0²SvWe«AK¶hÙ©²aTÙvÔÑ£)²a«F]eÆ\Z5ehØPÂé¢ÆftÕ4h¬MÓ))õI!ä>rwÓJRDaABÜXi(`@Ñ!JåTî.`¤¥4ÂÉTº7SDR$B#@!$)	B¥±ª\nTIJ!JÀw\'C«³¥ä°?Ì¤uRí\Z.MÙhhÄÝ¢ó³3Fë;YdË,Õ¯Ê$âÑiÄ¨â£J³ºë´hºerµeÊU©»+h®;áví&YnÙ£INlÙÅÁf5Lj³bø+óL*¤³Ö´ãâ.»éõ]wËñxÇ¼£mÄù.£;Ð\\f/yhÉùæ±cÉÄà-ö6wx¤²ÆpÏmä¸ÁÍw4ë\rò£Á2¤FFÀ¸Ä¸¬N#eAÀÀ5ÎüàNS\"ó©æ(ÙÖQÌ{HD!°sÈM.¡½³ÂÄq>/ÁãëGñNIÞ4ôÏëÕ¼ð;U<%\Z¨ö¼=Dïw¼f[?²³²TYïÿ©~Æ»IZ;eç{VïÁÝ(~\rçlòN.Ç9U,Ê?v³Ür£Ù%.¥%JÉzw<²ppO3Y³Û:Îé«ª<®k¸K¶]iª6}î\'bîç¥Üf`¤xIô)ôÊ.óµYMTÕ³ØÃ]åÖi.µ×7l¥¶nÁÜá6R¤Á7pM§¬ºìá8MgÍeÒ§ Ìºò­7u0ë.©ügFUfféû=î+Í;L3+§N\neLÎNåÜäº4zYgèùÊo#òsz§6ç÷{õÓg¶z^%NÅ4q,SØ¼í?ÊÌÍ\'¹E%Û¹ÇK¸p70±þ<Àï(Ã©8WÂm<P¡R\nÕæ)H©ì÷¡¤û^Ö^Ô©ÞtÖy%Ï|å/7jè1©ÕQÑÉÁ£tbTâùÍÍZNi£÷8rz\\É?£¡æTñ¼óWsuêRJ}f^w®{X¤ÙfX=ÄÜÒe°aIÍña¼¥p%¥åÚÄÃù)ó»/è_÷µNi¬Ä±yér~%æhÍå#ÎºÎ*Ze7h¼£YLªygîÊm\r	°Gu¹\nBõnHðxOí<÷N¨ÃØM\'IT´TÁ³Iá>ÆaïM\Z)*yº7x9»W{ÝgªjÐyÑwÈ¥\\ðù=,z(glPg{YÞAwHÓh¼øjvvÍ\Z½©g³glðX9?W¼}ÕÆTÕñÅ)ðf&U¥qt>HÝï´Ó\rºs¾Qá16HoÉJô`R2zÐ0b\"F(Æ(ÐDD$UdhÁ2%Ó¬ï\ZåÜ]v¤ôêj»vóõ.õ¨baNRqF³Ë\'±è<WgKHÉJp=SèâlÝ¼JPTÝÖ^RQtÖbp»Ê³1í037MÆÏ÷SûVz!¬Ñ8CL\'Ø?ZIi;[¨¢¿ÇªpquÔyÉÁIâ|ªjrOD,ì2ðGú¬ó<Õ\r0fFª<«9v(ºT³¯9LfY-<Ç5ób^rÂ^hé(øÎq&¤dHAB2Åþ.äp¡!¼é|ú', 'Online Payment', 'shipto', 'Azampur', '2', 348.8, NULL, NULL, 'n0d51612420528', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 00:35:29', '2021-02-04 00:35:29', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b959dc5e8c'),
(113, 102, 'BZh91AY&SY^8ÓÁ\0#_P\0Xø?[ü¿ïÿú`=ð\0tË¢k `Ld0\0À\0\0Jje=L*iíHzQ õ¨Ð\0Pæ4À&C\00L\0\0IH\0 Ñé\r\0\04 9M0	À\0L\0\0\" MM4$Ù4¦©å=A¡èÒÔzKK ¦`u!îPlâé(Tdµô¿\".ë$A¡þ¦d­`7Ô«¢ã4&õ7Ú±D_RJÖ4¼úÉêç#Ü¤Mn¶\Zí±Àâ_Ô|/¸ÿg=5Îã:ê$\0Ï!\0Ôèj}OèvbØì83© yøWz¶¾ej1/bb·æ´ëµ!ÁÄäT=¥¼ÏyäÄhAÐ\\©668Å1h\r1¦.5Ó\rfFn7&Qd	PeÆ!ÎÎ	¶\'x¾(±¨%5ðLÁ6°jõÒþ&¤ÈÅ\nä ÀÄ_UØP±k0l&Ó3f\\ª ÆZ\"¢ÔeÄbLÌÛ©«¯@Aø(@ËARå Á®Ê\rXeXxÆA=f°bU¢EgÕ¸UQB¥íDÑ2µëQ[\0Â©p¥IWVµ\rU}Ëê¹/PäÊ\0\r¤6¦¹c@Lq¢ITTIÆ¬X@ÖR,B1, JF$Ø!±ñ4{ö8o   Ðm5åE,$-.ÐZ«fÈær¾C\ZóBâ¢óK-2íØB	LêØS/kZdË\"X-hÅ®Ei#Á8ÛOÏø5;ä#¨ä¼åÃÉRiÎ\\Á¹ºÏPÌ`¸©vÑ§5j´ªÓ­xâ  (~ÇßÆ£9Ôaçz(:ÐþçÓæw\\TÌø¯J);¸u7°ö¶ÇÈ±Íj5üCñ VÞ3¯\nçí \'¡©ÍAºäèc1U\"è	\rpê;ak<Ócm¶ªV?C@à2F.¡öÉéãîý<©¢Â±A0`=OFÃ#mTYÊÐù3äq;L\ZfE$Èà¼ìBZó$ºõ<e5Kv|ñ <÷¶oØaÚ âo:]£q¦ÒêvPFç¤Ìîy	ø\r§CzÎ!WâúARK»ÙEÃ@!¬\ZË7f;BÑÞ³V FþD\ZrP¹¯±öw\ZWÈ^°@0)Ýà{O-áÔ\"Cî	ÀÖù	ª\"IÕ`UBñR´\Z*J³+yb¡T¿¤p,®C±ª\\»Å»´YL½CØ%¥ý§ãÆ<w\n¥Ç1~ÃÿÇB½°©ï$ð5ñ5º«K`ïFFx&vmNÃÙNPï`deaJäd(<Îdr.uÝ÷÷ÛÉ÷¿4~`Æ<t-T)`EaV2\"\rPÒ`ÄRq2wîç¯$»UÞb÷5| $ J*I»7èàUMàêoÒnc	¤dÞ c ,dÌöÅO\0 4Z£è#s^åû°/ÀgÇ©êx¥Ð!**(ºèæOî>Ì?3¡@ªÈßsAó$\rbâBæ!Ã¸@BÛp£ H5Sþ.äp¡ ¼q§', 'Online Payment', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'ojPN1612422868', 'Paid', 'manager@example.com', 'admin', 'Bangladesh', '3', 'sdfa', 'fsdaf', 'fasdf', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-04 01:14:28', '2021-02-04 01:14:28', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '601b9ebeaeed0');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(114, 102, 'BZh91AY&SY*±¦\0D_P\0Xwø?ÿü¿ÿÿú`_ \0\0\0PP\0\0G2i¦# `F&\Z4À\02i¦# `F&\Z4À\02i¦# `F&\Z4À\02i¦# `F&\Z4À\0%Q´Bhõ?TÚ© ÑA¡¦bI@e4ÂM4Oj54oPFLi¤ô@Õø?ñûV?µÜïyÃGÍþ[?ºÌ/Øþ-wÓ$«à¢]qdÿ-?×Nv®òt¹e%*JT¢YET£ïÒû4låºò)MÔâCbÂòóV­í¬k©ßàqTÒ­é*^Nu]uË:2´]M]L%¿ºÌá«Y©Ñ³UF­0²ÊÍÚ®ÿ5kG7byßG¦ÎfÊRÎÖýJ1ª¥9^ZÆíßáÞÙÅ<·Y¾=n<à¦}ýmÝ¹²Gúp÷Í|gÉIb-d¥,²ÏÌõ?3Ì÷8uv¶&ê\nRP¤¨%*D?Ð¢Ñqõº>´D¸þ¢Ê}§¥äìîyQ]Ogµëo{ü|Ë²Êz^K,Ãèeñeéó>OÅ»äî?:zö=.ºæzL¥\Z}®îÃµ»TÚ,²G%äVávT§m\nRÒûYu$&U!L©,\'rÈ½\'\nè§)IÒÈ´aÑ#*ª\ZÏJK¤êºÅÔr¨¦åi*7pÃ?ë©wÔ¥,ØðR)Â¡EJT]únÝÑåéYÉ¤RÂÉº£2P¤)BUÚ°ÙXYÞ\r°âj¡JeÑNÅ[ED9YÓ\n©Ð§®ÝÃ£äÝÚt³VÊ]E:eg\rZ+ð0NêÞo)DRÊpávRÍM^f°Ê¡*hÑ×Z42¥ÌË´ºg7YvTË.ç¹h¼æZY-;æÒ¦òòÓ3y¤ºu\Z´Ì©ÃlíÙZ]Ñd¦ì.ËVj³FËMM\"¦Ë¶¦µL%\rZ0]uÆ\Z5ehØPÂé¢ÆftÕ4h¬MÓ))ö	!øå ¥D§Åd]-?E)e¥´,¤Ä³1Jqræ\nJRY*%hÐBD`H$ ÈAÑe.²ò]AJJR\nT¦îº;N®îÛÉ\rd\"Õ ç*SªÌ4a£nÑFfíænÑuì;ÔË,Õ¯\r²Ä¡9j´ä©Ê©XÙºë´Yº®Sv­2²]Fµ¦Íªú«2¾í&YnÝ£IG(Ù²íÖcC\rVlÊÊ¸^_U\'¹Qüö.»ìú.»ðùÏ¹\'¢høLIÒ¿«YüØjÌùw.é?z#FéºÏ§ÛrýÓ2{?Îzî©së\r|¥ÃäråÙûzFTP¥JTK\rjÂÚ¾·|Ñ¡õ*n÷1¸FBÓöñüwECàr$a@5r	Ðb#sc¼Äo9Â!ÌMÍ4ÀjÐÙySµ°jæ¤s\Zl(c8>¡ç0ÙóSÜwJ>¯Û1Z¿SÁÊµwJ>;Vu¡¬ë<&î®eTTû×GuiïGINÒnÃ¢RÈ¥H·¦M\'©£é³¾jìGNWq.Ùu¦¨ñ~§«<O1§Åd´Sì]ìj²©«g,5Þ®Õv²ëasvT¶[7eàân¥#£á²m=§á;¥8L¿[ÉeÒ§@Ìºò­8u0ë.¤©õÎÖUffé÷¾Wx7fV%Ne8S*ftx2-D¸Àò8:Æ\'ÐÒ3ºEá¶AóN¢§j7,Sé^vzÌÍ\'½H¤»yú\\\'ÌkXTî8AÙ\rR´ý&ãWlÆë¥*BÁB=)=Óâòi?B{Ì½£¸©êGÂy6¹ã;%ç\r[:ÆcE;]±Ñ«fTåþ\'Ù¤ê?+;ÎÒNÃÆ.RQSÎò´aàl ¯ÁK)J¥I>ÓGÐ÷Ï«ÆYI²ÆX}DÜÒe°aIÚüXo)\\ÒíbaBý©yÒ]ù_4r}ËM&QÚLKÑív¾Ã]\Z³yHò]gbN÷-Xm)¢§²~,Ç¨ÒXM5IÄ1(¥¡&Wpò9â¬ºuFòlúd²9RÑSÍ$Sõ¿Ô4RTÙû%\rÞ·c½wÔ§Yî§Yäx¾ò}Ó×)÷®üJRÓÚ±¼èÿNÆ¨Êí¸T©Içaû~ÉçÝ4j÷¥©fÎéê°yßÝÁ\\ÿHæTÕñË&Só³*ÉRÉ¸¨óÆàÑ£\r8Üæ#Ú1\ZÄ3É591!=äh$¤H1²*² ´ °bWRq=®V¥ÑzO\"´ÓTò·o;ÕÑ?&é\'#ÖbYdñ;í;c­KC/÷RÊp{g.G(ÝÃ. ©»¬¼¤¢é¬ÄâïRÌÇÁ3tÜlý\nvNÕ0ÖhC±N&î\'ö¤ZNöê(¯ØØú\']g¹Âp¤ó>ÆbjÆw¹)ºÏcÓ>ol5Êx²5l¨ÝËÖ»°ïS½BêaQ-/f+¯Ù3¤²Zz\'UÇë\Z>OÈËµäö?Âóø3Ð!0P*T?âîH§\nV\"ÔÀ', 'Cash On Delivery', 'shipto', 'Azampur', '2', 276.3, NULL, NULL, 'cngK1612588429', 'Pending', 'eitwebdeveloper@gmail.com', 'md shahoriar shaun', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-05 23:13:49', '2021-02-05 23:13:49', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(115, 102, 'BZh91AY&SY]tª\01ßP\0Xø?¿ü¿ÿÿú`=rh°Ð1\0P\0`LM&LLM2100	M	(ÔÐb=ÐÐ\ri¡ú`LM&LLM2100TQCh¤4\Z\0#@d\ZCAÉ&FÓLLTAzLSÊmGD=&$y4Ô©¹ÌÿoÑú5mnoRÏsøcû(§dêfmw¤UTQÃàÑðjª¨ÑFÕMfÑî0C108 ÁÁÆäû°dÕuk:°æ»K¥YPË5Þ?u;è~­;@³D)gèþQ².Ú§Ó\\¦[zÓîãXçp÷Ä!ÎìØÓzªpgó`Ùv&<x=/&Í¹1ìËÈéëu»©DJI(£Ðèz^6Í¬D¦ !	Pä\"Y<BDp>Bz[]ÎR¢J(£Ìx<¯:×Ëé]wIÜõÅ\ZoK¡¼³­ZªX¹WË¢L=M½¢:óP:¨ìjÂhÑ4lpäUÁ)ìÂM\nÄÎ&jì8Ï7©m#²³k¸8áÀK49` ÁÆvnxG3!¶ä kÙ}g$2¾%¶\rÄ!!&2L	j\"¦õ©QwÆnf¬ÓÂStÝ±4Á1´¬t6aÁä7l Þ÷3Ó6RæpÈG#!Å½Ä!Úp¡¥Èúêdur9#SÔXæÇù\r8 sF@r {)º´hIÃRK²ÜÆ®FVIf4ÈÈÈÅZ°ÓK;MÔ²g½hjÀA0Ó`æZ!­ªm6\'mnmûÒÚp¸áÍ.\r-02dÐLYÀÑ,E1KH0EVT3!@	2àÏfæûm¬B0ú¥ºUÃcðafxUÂí0gN7ºëZqÓ[*\ZáF©ÖZ§Sqõ¸m@·D´ ¤J6ïÑYFµT#	FaµÝÛá$ñ\râ~§æ^9ùÏ\"¥é`ò-¬®ø±~«1^=4jÿcÕJ=©zoãSzÑ¢7E¼0üPüÚWHØ¿)tÅæ\"òÄPaf6¦/;d³}SOàÛà¢GÙG¹í¥CÞR»`ãFÈº±åL#æüö>Ð\n6ÇdUNç¾=÷Z*äâ×(ÁÆC¼tºz~ið	>ïò´=®uaTß^NX!Ñ##×;=±©*#l¿^Õ9Æ¬k*¥%!2sdu]½µÁØ:Ô®ä­ÆÖnN\rË%~ô£»n­^uÍ¹²0CöÌ) Á$Ô5äfì}ÒÑ¢ÿè¥b[ºµM\Zn-¹XyMg¥n,D£Á{%¢sÊíy«°¬uô¨ý¾WljÅá1Ë¹Öß-³qGm[ü¢ÌòLW6gSÅ%SOåçGaÂcÖùGß%(PH¦I»°zëö#¢ÁÒ©ãj«,[KÎé6ë¦ÂÉkófbÁÐa\Z»\"#SÄªa)srgF_9Q2ð/×ÚîäÒÏd]lE¦6}Y£Ñ\\E¬]SØ¬uª¿7]ÁëFØÅeÍâ¬/õL9*£T¨¼fÂ©1¼¼OªñÒÁD`æK&%D^\",|X¸ÆOtrM[|[½wA¹\Z¥H°/Õo$ab_8gËk|»Ýì£{´ì*ù¥O[_5OºdY6}0ÌGtFòSë=þxçobñÇRqÞêihçýÙ²Ð4KËÝé^y¼J¨}ÉÍØ¢ªQ¿?ó¹>\"¯Ta f$Á#M\0+`§\'@Ônlà¾a~1¨õFÇk<ómwÖðIe§a¨´1YJGg\Z74å4Eæsw4Î°hdÏ8ª%uRJ¦+4¯U.YdcýRØö)×XCdè,d|¤R#9J}ù­5ÞðQ\rïBñÆ0l¸SâZÕº°ahLÁ,]J57¥½*Í¦\n+E¦ÊU¢×R)\ZÃg	ÈN1»¤ÚG!Þ8ÆÝï£AC,âîH§\n®Õ@', 'Online Payment', 'shipto', 'Azampur', '1', 218.8, NULL, NULL, 'qIfH1612589635', 'Paid', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-05 23:33:55', '2021-02-05 23:33:55', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '6095620210206050333'),
(116, 102, 'BZh91AY&SYÇ·U\0$_P\0Xø;Kü¿ÿÿú`=ð©L±9¦&\0\0\0\0\0	SS)é¡TC ÐÐdha2@iÀÀ\0&\0`RTÐ4\0È @\r\0hiÀÀ\0&\0`4	=2O)(é3I£ORÁ!p$3¨ð=Êä\0  <aÇðWÜX¡Q×ÄkügY ñ!Ìô¬*è£?&`MªiubµúÒ\nÖ0´ÿrcaYXÜzÔI£^\rÒßQì»OÃñÈ¼¿^B@è#Ò	yfgàwÆ1jl¼!ñ*<\r!w<\nÂ¾âê4\ZûÆ%Á1$-Afr©\rçQÀÐ¯yàA,H&¤SCa\"4ÓC´¿J*³RÃLS(¶¡*Wäu6ËàÁMLi$2«V!±FÌÉ¸+¢³j[¡%q ªv% {ÃGÝ Éy@<»½ùLæ»HÓµ©´fÑ[,&Ä7LÛ%M\\Ío(@ËARÅÄÒHPUdÉ¢\"\Z¡CÅäÔÔ)¢E=)ÚáUE\nº¦DÄ.µj+¯K(êJ²ºê*ªûBÞ¾¹\0Hl\neZP6P­QL\\QE6´ ÈÀÉ\nH°CcÚ`ôÔÙ¤$,\0|FY®ê+Øëq0b] Å-ÍÈæs¬ mM4M´bÄË¶Î,\\JgX¹iµ¯±LÉ­ÌSAµ\\ÂÂ8¿Äö¦éò8:ÃÎ;Ã¾òÑâfUup,Ø?¤b³W~ÜªÒ«LbºÑ°@@P÷Û)óù;QAÈ÷±ñþOôÅmRGñ_J)7ã!ÔÑP\Zê|1¯äxTÈgh#ÑÐ5<Í\r¦9/­Çb3ébdÁ¡±d¨0À=¦¦âíuÉU+l#ÿ¬dõúaÙßÃä54\"J((ºABIj¦¹Ô8³SypÓ1#Ó	`3ÖIeäw`@ô´x¾u3ÝMnãÀùý·¼èwJ§3N&NíÐ3Pî	±`ÌëöýÂÓÒ»ÁkÚ$KPÄÄBÔÐîõ\\OÐ¾ó´ÀÕI*Fg÷^íó(hûôu®ccêäcvãx¼à`S3¦È¢CÔ*`%¬ä,&Z¨\'%y=uUz¡BÔ­&¦,ÚJÌ¸¨U.ÑHàX­£±[{P±LµBóêOEÃLý¿lsñ58%Ã¬_aýN\'y!Í°¸Nf\\¨ÒÔ2;ÏJfò-¼ê¥ðÞÀÄeaJq\nJÇ6Ä9eìì»£äýÈñ1xA%IR ÈÆ# \n	CImI´ÄåEw%ÄU^ÂûXÌ]^(©$Bó9-²faÅÀªÀì5Æl_zi\Z¨ÈLgTæ¦\0½f>(©@½5÷/6¶üûñÌè¨¨¢Ë\"1õï À¢Äo­ 3¯¢üFSvá20Â())§ø»)Â=º¬\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'rAfq1612589691', 'Pending', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '3', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-05 23:34:51', '2021-02-05 23:34:51', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(117, 102, 'BZh91AY&SY?õ§\0$_P\0Xø;Kü¿ÿÿú`?\0j\0b`00\0	\0%52MdÈ hhÓCAiÀÀ\0&\0aÍ10\0\0\0À\0L9¦&\0\0\0\0\0	DDÐ0Êd&Ê¦)yLÒiýRA\" ~§ð1d\0@@4~/±ý_qbFK^#§Ì:ÉÉh}&dµ`3­h^lÀTÎêÅný)EkZ¹1°È,¬m;I]w\ZÍ¾ãÖùíí>ü2ÇQy\"¼ÐG¨ ó8gÞnÅ¡¬fâDP©àg¼àT\rõ÷Ta×hÄ·¦ À¯TrÂÕQÖp4+ÞxKARHA¬ÐØHÁ¦4ÐÑ®çB¬Ð°ÃÊ-¨JÁy\0BA²ø0U1¦LÖ$2«lE	Ù7Á2b!`ÔVmKzÌ+ÅS±)ï\rÍã;ÆÆºîîõÌdØBSuÔØ3`Ê­¤bL¦m&*J\rR®f·ÀÊ e ©bâCa$(*µ1áÆe¨ePñyõ5ÊhOJk`ª¢K]DÓ\"bBZµ×\nJ¥\nu%Y]uU}ëÍ!n_`ÚÊ\0\r¤6AIPòjÜA\r\rTUA#¶	0Æ4Ð&Q! lI°CcØ`óÐ×$,A\0y\r]´PÊÚIv·w`wÎ²8µ64 Ò56Ñs.Û8±rA(mkÁ¬c&rB+FsÐEíFÆ\\¸áañð=1¼|Ï9sbÇîöÜd÷\"«¯`È®±ø#»öfÕVZcÖbÄök§Ôgê|jv¢ñ?sËù?+b7ð©E&àÚjLØu¦È¸Þ²\ZþHGú©¨g(#¯¡\0hxrà_{Äd;ÒÄÔÁ¡±jÔ`w¦Òí4ÉU+¡k#ÿÏØ2xz¬®¯Áá54\"J((ºABIj¦¹Ò8ÏCqpÓ1#Ó	`3ØIeæw`@ó°x¾u2ÛLÂnã¼úý¶eÐîNf|MNí°3Pî	±`Èáî (9ý©w=¸I.8¡=É3¡Ýë¸!3u\rÇi¯ UlËU÷^íô(füôp\\ÆÇÕÈÆí¦ázA\0À§.gLÃD¬T&ÀKYHXLµQN¥y<*2ªõBï©ZL\r%LY°qPª]¢À±[$¶vWP±LµBóý\'¢Âá¦~ÆÃã²9øKYÀ_ýÎ\'y!Í°¸Nfz®Tih\ZÄb3Ô¸dn:©|!í,FV©Ç è4¬o dAc¯oeÝ\'ïG1Â n	0i4Ó\ZC\ZJ&Ð°J\ZLjM\'-[áÚU{Kíc!vJIx¢¤Ðä¶Iªo°Ó±}é¤j4P1Îø©Ì(LzÈ|QRz55ú/FµÿøätKBTTQeÅCyO¨øn #y!Eß\Z¾ý§x½_AÝÝìBl0p¿ø»)Âiÿ­8', 'Online Payment', 'shipto', 'Azampur', '3', 470, NULL, NULL, 'VnIb1612589779', 'Paid', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '3', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-05 23:36:19', '2021-02-05 23:36:19', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '3559020210206051535'),
(118, 31, 'BZh91AY&SY·\"\0¦ß@\0ø+ü¿ïÿúPy½×Nî-\0;hB%4¦Õ?BiFj6ÐÐ\Z2\r	¦IF	¦M4õ\Zha!	)ê\0\0ôj\0\r\0\0\r\0\0\0\0\"DÂ§¤õõ 4Äzjz $uÀK¿g¸LaÄúp³îttQÈY)®õÑ((ß¦£åÈ¶iÜÑ[[À÷±½6hB«ÑµyýÁ¥M9ÜLL÷¹pÞibÅ\rÒ ÂÛ¡>:D\Z~ÏI´3ô£¦¦PäD\"M °Å@i¶¡i¬1B\"Ño<Ð\r±0É½2Ä4Á6°k*²ò±PA§ykL°l%UUÁÑwwæLIÊ­0RÝUì3¨B<åAC\r9ÇÈÆl²-Ýç2\nõ5ÊH§¥\\,yTgw´ÞdKÐ(C¤P1¼4Qkm¶Ö,ð¥Ò¸¯È¨BlC`6R\0þmA·!\ZT¡i²^P²|d¥ED6¡\nH,ÇÄÍîâpß	\nèHHýÆ3|ç#)ì°²âÁÙk¼ß2iÌ«±£Lk-0æe­\\ÑDÉu&Þ.TØÖsZ!JLMaÉwÌç6u ÿ^ä\\÷ÑÜÐù\"w¸ÚÄJ¿pF\r`0m*T¯AcÔrÝm¤=Çè£\\Õf1í>Ó°ð1w7¡æ¼ð&¤sFCÀÜt~óªÈkâBR¸Í3lÊ3-pÆéCDb;ÌX46-áZ	æfòç%À3.Xg#þ  !ì2\\úÃ«¯M\'[È `I±`6ê*QTõ=\rÇ#¦b)à´²!+ØTTì<ÆpÞ¸qa*iÐùPl×]O3-ºðPvÏ\0¦$8ñíWìy\r I#j!D òV3cÇÂµ)Ä)ç,mK\"c<~dÎ;¡v4>]ÅpøÙÀÃ·y¶£R<\"(ÎL;ÍjO½¡·VYîøeÔ\Z0¥PtÎÑKÑõâ7yAü.³|ãÆ\Z¯¾Ä¼è4ËÕüøÆßy©D àwú?CR6$/)è6czÚ;C`fäNlLöòRCÙÓÔZÍØë!MH¸åeTj8lêÏá=hv Ä!\'\\(`EHE!¢\"¬5Fãq¿=%ù/½{V¦fÒ@H¸I\"ndîp¡Y3¼á®cÂ38(È\nËHÀupªÈy£a ¢1kÞ«	îùê[ÍBSSQU¢\"ÇR~£Ó\00,ö1>­n.Q,ÿ[¬å>\0rF@j§þ.äp¡ \roD', 'Online Payment', 'shipto', 'Azampur', '1', 302, NULL, NULL, '7YUq1612693142', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-07 04:19:02', '2021-02-07 04:19:02', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '222', '6998920210207100218'),
(119, 31, 'BZh91AY&SYô¹\0¬_@\0ø+õ¿ïÿúPm·¸qÐ]$iª~*oR=OÔ£Ñ\0\0OQJ\0Iª! \0\0MI¤MQ\Z\ZhòÀh\0\0h\0\0\0\0	@¦i3@MLÒ\r\Zh$`Hp$o\0\"Èï¥ÃÏ£^»2&Ò$>££x(é·]SÅtVjÝ»êST°Å±G%ÓJ|±	©Õ½~ ã1SnAtÉ¨>D9Ã¸âØT}A\0h;Ô]®IêBBíÚ\r\ZuaY¹¤¸äqµ(¢hH]Öe¹à02!eB ÞoK=Hhk:^c%Ä#\n×8ÖõÁ) eÅÜÊ6\ncû0BØg9½FfñG\ZUê+ScA)cIe£(Ææ.]Þ¸ WÊÈ,ÄL|Z	HFHºÝÂ&®¨KÀPHÀ£%¹17M4³ii>ò¹?AH(DP­QLbQqJ*ï µx¨$º R6lz¿\rÝ±@ÖóÍ´ºNiÑPW4Nq6àáÞï6æ»cfØÝ6\Z5LRÈiË&JQ\\ÕE%Á½kWG¦k\rF&ÉÆÔÃ\'W ñ bZ£ÐÎ®òÆG¼Aû%ã{-*ÕF\r¥uÌ@@P÷¶Söè}H2v¢yð?çò=LVHÔø¯J)<Cqêx\0mÚ\\j³\ZùÌbú<EX\n$PnØ¢cD$M`lX4¡¡°»<à\"òaÌÆn=}FOvvß­-IlUv×+§Ôð7\Zf\"dp_9:Y91GåS-)MÚï>ØÔZáÈÇÔÔÁÛjìIêu©%ÇpLC¡É1ÎkÌû/4håcÄB;Æ&yû\\O1nqÜ¼¶A$ªg,oºôPgä¡¼)3PcÝÄµt³7N\\ÎF0º:H¸	k+Bê¢$V¤ð¨Ê«Õ\no¾¥i04T09f¬Ë\nRì)\nÆ+A©iÈYïBi¨^tü,Ò¥;RíuP¼N3Ñ²/ÉG,\rÙÚÙbP8Ñ3J¨ÑÌTÐû:ÚY¬)d2H ñ,tËÏ­ÝG× #ÚDÄaC´m!CImI¡×-aÜAU{Ëíc3ÊPKÀ%$\\¶Á_ÅÀdC09Íæ*ÂFF*2Æ&3Â*PÁ`YTT \\Zø%ìÂÞ?.Eøæu\rB¢¢/¡°â-Jûò\r(	ñfBoD\n­Ïøî8ya?Á~þ\nJA©Ø.äp¡!és\n', 'Online Payment', 'shipto', 'Azampur', '1', 380, NULL, NULL, 'TFu11612693246', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-07 04:20:46', '2021-02-07 04:20:46', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '4508420210207103120'),
(120, 31, 'BZh91AY&SYj¾\0¬_@\0ø+õ¿ïÿúP¼bÈ@§AxJ$Qê4i¡é\0\0\0 54Éé55COHÐÈÈÐÓC@4Èjz\0¤\01B\0Æ@\0@\0\0\0\0HDÉ4h£i£M¢!!A!ÝN¢£êYÃÁÑÑg`ÃB[8	°ìrÊ8	a»¦©âÊ,Ûkí!¢<Ã\nÒ@¿4¢:.­RVPÂüÌÍvÈÈ6®6dA[N8\0â	\\êGSÄè%t/^°oiÕ4\\iH@¬\r14_*èUcB\nf³fzØ«[3fãS¤dÈcAu{smÌÂÆB®îóöYa­kvD¤Ë\\#QWb¶£4 ¥\n2äT¹bCa$%U°ËÙ9¶v8¶(\\Â¥ÌN«pª¢KÚj&d)[^Öð)**QÔkPÉUW¢_$µ|ÂD&È(ê<ì¡Z¢,¹Y\n*!ßHµo`DD\n²$Ø!±î5{6a!f.ÆñÎÆ*/¢A`o!\nÉÕ\"var«½ÄYE@yLXÎ¢D(\Z@¡¡äì-Fyf2Á0´+(eKÁ%ò÷fãÄä¬}£ÔÒ¯Í¼Qù.KÏ¼Vª0m+\\D3Ëm?§ÌGz(8ãñ>?ØÍnRG#Þ½õ(¤í\ræ©°î8ÙØXäµ\Zøæ3ÊàÀØXÈØc ÎÿXæÇÈÍM´/pÝCq©´¶ºÀF	T5203yõ  !ô=¼aÝß*_),%±TmÜV²¹ì|Íó2£LÌRLN%ÎEËÂÂ)®Y©íR l^Fª]­A å©`$ö:TÇPÌÃÀîa#Å·½zeèm ^79¡D ôÀÄÏ¯ïù7LyhJ¦°´ÏÂ(3¯öPàÉ¼ä{ù®àû3xîï<9ahè)\"ÀKZXT-TDäO\ZªÂ¡B©ZL\r%LY¸©b¡T¼#\\Ín{\ZîákÀZ	¦^¡ôNh¨¥S@¨í.#ö	F¢0²FÅøJ1ãM²¤/Lê\Zù½C3¢à<jp8Ó|!«F+\neFZÒ¹ÈØç-éxßlpD_zQdcFÒI´\r&Iµ&ã3¦¡Þª¾ó¹©ã(	%äD.îÈ4sp\Z¡æÌçY*ÂFj2æfsÆ*PÉdZ*P,Ú÷%õa}?>ãêtA	QQE×îm9¢_¨ùð Ü1@Ok4|Z î·\'üLøpà¿$\"j~.äp¡!0Õ}0', 'Online Payment', 'shipto', 'Azampur', '2', 680, NULL, NULL, 'LFen1612693337', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-07 04:22:17', '2021-02-07 04:22:17', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '7473020210207100322'),
(121, 31, 'BZh91AY&SYù1\0¬_@\0ø+õ¿ïÿúPmó,î;UÖLn»Md§èÔdAzFÈ	ITõCL@\0\0Ð\0I©	ªjzCêSÄCM`4\0\04\0\0\0\0LPÊfh4\0\0 	\0ñp;ÆÏÎ\'©ééAYYbCê:7±GX\r]O-è9ne½	õà¸L<àr¹B§t¼ånZ?j«	¶åÑ£ì°ìÉX¦`ýóÌÎp+pm$ÒD&â¤&ýôs1ÂbÚ2@à2ÈX .¥MgæÌ\'¡ÊA¾/¥à%Hh+\Z_MF\'`ÉxcAÅ³|Ø0Ú÷B`l\"fqjþMUdS(PÄ«LªØ5#QNfµ¡,X$0p0¨E70L&5¨§$¤w5b3!tTyC¬Ì&\0ì:%aeu%øH\\kö!6!°ª=L¡Z¢,´¢ñJ*çHµ!* À/D\n@RFÁ\r×uæÁ!MX4ñÂ5Pe!ÈåÉdsUíÍ3Lê\r±@nTÙµ7E»\nF2eÈÁ·5INEÝÌ\ZÐø*è·¤Ù[É:ýí\"zÐDü¾rNêx.hyÉôÊtÜx8MPÁ´²¹O±Ï||uòTTÎ´ïýI¬Uo;×}Ryq èâ8ÀrrÖ£^âÆitDfÀ¸¨q\\pµFë	`Ó`qîlm58ÌµÖ0L2SaÂ[£ÇN\\ø¶_:¬h,¤À®I¦\'ðí8Æe\r31I281:ÁDEÎê3ÉòRYm\n*Ùãê5sZù	ñ6z°\\åudvæf\'8Ì\\}¸ÿ.äh×sb!v&u½Ð-Òn;LvhJ°VNº«DF}¤LÂ2Bå6Z\Z©Ä>áÐtóau\nHÈ	kLc*DI9­äóPÊXV,AË*ÓE¦,ÚJÔÈ ¤»#\\Ímx\ZÞ×Z	¦^O;ª\ZegXÔ»$eFÛ\ny{¡\r£M²idéJ-o.Tp&nY»LÍqÊgSKX©kJÕ¬Jo2l(£¢¨É·_Ní7»_T D_bQdcF$!)ec¼n×²¡y6Òb÷5:å$½(¢HÃ\rî@Êg|ãMEÚeQ\rE0`PFr9ia)±ïE^¼X_g·õ:xBVVQuâ^h­>ãÓ2#£,zÚ ^HÌÞ¿´ã¶ú8pã ¤¤\Zñw$S		', 'Online Payment', 'shipto', 'Azampur', '1', 380, NULL, NULL, 'Iprp1612693427', 'paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-07 04:23:47', '2021-02-07 04:24:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '2487420210207103223'),
(122, 31, 'BZh91AY&SYCz¹¿\0¬_@\0ø+õ¿ïÿúPm¼lÅ¢ºk§@J\"M6£FÐ\0\0\Z4\ZHMQ\04h\0\04\0DÊ§é@É ÓÔ44\0@\0@\0\0\0\0H4!ªy G¨£5\0Ð\0ØO|6¢Ó³Åó´x¸Dj¨§!H/õma6N³BºÕ¦ºl96ôÇ,ÊÕSë8ÎYn	9ìXË2xãZð ¥ÇÓ> 9D6#cÀî%T/ÛA£N¤®i ¨Ò$³8¬0ÌÒS#!8È$t:cÆ:EÉMOW7¢Ød¥0&Lb£¬ÈÑR®GÁ\",ý\"U6PTÄ*ÐÉÂOM\\ps$8Æ£¤\'7V1MÅFo2`ÊµÖ§S2x	«ÅØ±`Srj!e]É¥J¼	u$.²üLÂ(	6@´¨bI±¨CpHA£p¶(@Ò\ZÅ8D`ÇÀÉç¸ßº%½¤$|Æ3|îW%óØ×\nN3cîN\"1,ÜxsfÜÝ¾ML\Z·-¨5³%Ñ ×-I®8ãkXÎ²jr¶V\\S ±uzèÖ¬÷#Îò¦\'ÚKä?#½I;^ÊÁ(Õ\r¥J\0a3Çf~b4#,«8fS ë4÷¼pR#SÑzPð\rGC3¡È\rûËVC_	JÃ9ç1Xà÷ÑaÞ`Ó`n\nÔ8Làdn.Ë(¼2xÍa³MÖª«4ë|Ä\"á%R)H©êÆf\r2Â)å	`3¹\"¨©ÔXE\"Ë-B½§¡¿Ó¥£	/JV¤rÕ1\r=Nô$\\l±`ìta!Å»ªó=×I´xTæ1ÎñÞ7ê-$hl^AãHP±µ÷^Ûú&q	àÔÔôæVÝ>NÜÆ0º;D\\ÆáLº²Ôj)eI#ÑS2(41ÌBä,p ¢^\"àU,¸=LAeÄX¦VyÚ³#Ô*;[mÁ`}Ø{á Ì¦ÙBcQ)µýT}×ßÄå=!4(,\"ç;ì!Ã1ELÃ²§\r¹sÓÙüP|ÁMôd	I¦ÐÐ@Àm$HPÒ`ÄR8;ã¬\"%ØT¼¦qèÚE;®ï]Í{á°ºÔÎÒ¼ÃHHÄ²©bÒå&`°\n¬Gª(L.Eø¥ìÂ¹üzÛ#¸jÔÔU~Æã&µ)ì>|H8Pø37É¢\rÆ\rVkÜdþãË²° Ûo$&Á±Cê.äp¡ õs~', 'Cash On Delivery', 'shipto', 'Azampur', '2', 680, NULL, NULL, 'tvOT1612693760', 'Completed', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-07 04:29:20', '2021-02-07 04:31:13', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(123, 31, 'BZh91AY&SYÖ)#\0\nßP\0Xø;KüT¿ÿÿú`\n_¤BB\nAs\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&À`\00\0L`À$hDÒj¦h\Z\0\0\0¤Ñ¡1¦Ñ4¢M6&4Ô¦¥ÄD\'îø©OºÇAÄþË¤¢æQ÷µJéõÀòO´Ós3Ô}\n#æezª¦2å¡EÑv©Oyy±¹g«»!vcÑý;`z¹pÓ6t÷7nî4îìÙËý¿ËåÝÜÐ°Ü.ðx©í7.Nâ;<½ä©¦fXlnL§ÿ5±±ë¾<Ó½±ÅÓõ8¦¡¥w<ë-ÖS¹E&öÇÁÐçRkÈå]ÌÁÖ¹ïv¿\'t´ð)ÞÄoÇõhhÐ±¹SÖöb³¦p ¡CJªôihèZ@§,}ÅÏ]½ÁÆÉàõ¬½U)Q9P6®,TmË¢eRÒR¥!HÊc;cqÃ¼ØÁÃàM¤§\rxH`\Z\0¡!éµÍÚxméx8.i£0\0#$\"Çvwéú#ì}B%0i`!¢Q!N[:né÷1Ø¹±Ô¤Ï«Q»ËËÃØî,±Z7Ë§<8pñ¶Xüææ4ið,@Ø­:trpQÁ¾¡±c@Æ*F(@»¦Íº4B÷¬¶nÙË\"Åf&3.XÄÌÐ\\d,FZèDã)\rÝ7B:nÙ»³cgN]7\rH]¸°4ÙÔráØ!t.YìåºSfw»;4Q°Ý³d0è\ZÙ²g\rDÀÓaôÁå!9ãú&å0@#cMPÄK´)Æ-ÆZb1X)ÂÂ)°Ä(¸Ð>³¡©h\r(^(Q¬ ÓB1R6 (Æ{Ã«Ú=´ îªµ$Wñ!­Ü6#´4åÀåìà#³`ß\Ziò6¼Fl]ÙÜ9\\ËË\'6w6\rhðìÀP] 2Á´\Z¹inà6xxxrä9y°4ÂN\Z8o¥08vm4éh*c45KÂUJ}Ö8<¾´÷9Àú3vºÙÍgåx?6@ÿzÙÎþ­Æ¿3is.r§úOLØ^Tm9OâX|QÃÀ@cCævt\0@¢1>\'LåOàù,Ù*e8ØÂçiâþ_3¸ñ¹ø6IË\'¶OlÄÂ9ÑÌÊ¦ÒQæ³q§ÉuGR|KDö©M\'\\ãtOBÂqÝí\'¸Öõ¹¡éÈyÕêÒ!ÑDck>NtiGh;\r§)¢meiyiF2\ZM\'\ZQr¨ÿ\"Ò§èRYò¾ËLvc³âùÛ»¤ld d¡¥JÒ¥J¡ÎTºciÊj4%BH\\¼¹V2Di(ô¹<^u)b¸9\n¥NdÝ0H¼Ñ:gïIÈç`ñØóËÃ	Àïm6óTÎsId§l¹sÑ,T0a4§TÖ°À©yêCláOÉú*Tª=õ$é¾%\"-\"zURJ;DóÍæòm(ísÌNs¼ÔXóÎ\"\\ºÝîiz½<;«î¾¸wwû!öu\'jRRTü<Ó®e9äüË,RFóóiÖY(e-.w¡y\ræHQ¦2J/5Ã2óª`Í ¹t,ÂáCâéÀbí¨\"¸!f6hÜ^M Xb=r¥ª7\'¸âÝld5IFSfvOà¼Ù\r3B¡Fg¼©\ZgÂrKNÉõm:M8Î©ô:Oñìa;\nJ2.¹;\r³SdÊeDãéoZ2pÒÚyÐSËØ<CÊÝÝ¤b?,¨@Ãi/Iy«QE¡dî*&fòÅÖ38MrL§,©¾TÆxDzÅA\'ÊÀ HV,B EZ2\n1IáÞ³àÒ¸|Q!ï ÃeÁf;gL!p¦ÿ];ì\0áò± p{äir>`èòÙÑ»¸\ZQèJKF«ÎiØ`15CQ3N¨âkOTu$ÊmJOtãy8\Z¦É´îÞKHa	i¦âZ`é0r§Lç=¤}]Lµ¢tOÙRÆÔ*pC±P×0îRa?d~³ºHb£Ð\n`4À%\'þ.äp¡ +¬RF', 'Online Payment', 'shipto', 'Azampur', '3', 786, NULL, NULL, 'SvxG1612875100', 'Paid', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-09 06:51:40', '2021-02-09 06:51:40', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '97309', '1554820210209122651'),
(124, 31, 'BZh91AY&SYª¢Â©\0­_@\0ø+KôT¿ïÿúP<ÌèÐPu	R2hÓ4ÄÄ4dhÐ0&&	 !5DÓÕ64Ñéd`!JiSj\r\0\0\0 i \0\0\0Ð\0\0\0\0\"2d\r\0¨ô2\0\r@¦@g´b>$sì}t}Î^]1»ý\rm09Ü1¼!Û9¤¹aßøÆ¬YÍyEgej©õ¿ÿçFõ¦\\ÐI·V²wÃR¥¦ÍDÐÕ¼ô \0B9÷©0]HHZûÂ&Ì¬îÑÀÞ ÆxsµÅ£yJB&\rL­¶Õ¾Ü\n\"Ök}o¤Ñ$&ÌT/5ÔVINVs+<~`îæc¤EUK\'dbf\"lrPÔñÇi²\r89¢c$QÈ:TÕ,RlD_\r¼É*dLf2×X\nRN.S\'«ÆsB¬KQ*îM*Uø%Þ¼È_NÂYd¦³\0¹\'\n³7L16#r;[,²ºÁ¡hªq×Lêqâ\0W$ä\"8õ¾Ç*Ér_E\rp<£/ÊNQlñfàÐ·6mÍÃäÔÁ«sMN6°E±Xâq£|qÆlÞÉc.kS²päÃ¼cÃø;NG øã°¢ä\0{¿#ÎÇC3^ø¨IÞ«èÌcVKð¥Tµ±SýÆ|ÏôI¨83ÁóÑq\ZPq\"$LÈa¨XÄ¸lØË\"K¯©	JñuLFæ£õ(^k.¼0Ö#Õ0hlY(Ììbl-Ç©(eÄ¸¨ÍÇ±¸Énã´.hXI±PÌØÚÁô?ãäpPÉ@Îf6:Zì2ECñ°w=,0Êx­á¸éð\Z£[ô/ú6(9HgPJ	;VÈ÷<\r6$8!D ðª0gC·[Ih,äfv*A×\0%<aa}mª&3·Ä¸\'rõÈl~ÆÝ\nÛ{³håÌé ÆÇQH@XZ).ðG¬ª¥$tæqD(qÉXv½3\"ÔÅrÅxe,\n=IuWZ4ÊW|²%A¬àaý$s\ZmÌ/±)µp\rqÉf:`fmPm²¤	]xÈPt\ZU7AASL|r·7£³âèbhßÜÈ	fH )VrX![S2/9Sl\"ÌÒÐV/\"´¡ÎH	wªÂÉ×gC\ru³æ[²àóâ2kAC¤lñ\'aÃÔôI¥ ÂØÝh¢BÑÃj_V\njòäVüN¨âÔÂ(¸¢8ö\r¤\0Â2Q7¹¢\n5I¯qó<rBõûøCACXÿÅÜN$*¨°ª@', 'Cash On Delivery', 'shipto', 'Azampur', '1', 324, NULL, NULL, 'PS0u1612935191', 'Pending', 'user4@gmail.com', 'admin', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-09 23:33:11', '2021-02-09 23:33:11', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '64846', NULL),
(125, 31, 'BZh91AY&SYHý\"\03\ZßP\0Xÿÿ¿ÿÿþ¿ÿÿú`\0\0\0\0#è\0\0\n \0\0\0 \0@ ¥PP(U\0@pÓLÈi¦FL \Zh	£L\0@Ðá¦!ÓL@4ÐF0\0¡ÃM0C!¦0i &2`A*¦z \Z4\0h\0\0\0\0\0\0©L	dE6M&§zPhzz<SM\Ziê2= )I&Ð\ZSÄÑ3HÔÚ¦¢½)§ Ôõ6¦ÅK¥àþ­äÄz´{XÝ÷ß{äz[½®ÎsùÝ_ïcýâÓç¼^£ÀÇâbÆÍ\r/æûÝß{Á³eÝ§³÷;È¥a1U¦¢ÑXÄÆ$c2°ÆVÆ#F,cÃ?à½þÎ®;¸LVÁ²>ab[ÿÑcñXÊ/ Ò­ÓÁû(Ýi£dh4ÇÉ²x¦éÊbmÿTÄ^I´s¶fffffffcdÄòLMÑÞ2Îñ¨îq\Z#£×´o\ZµåÄlÈÌcÚ2¶Þ6í£hñ±ì£§H×1Ó#Æ:ÇHÔrGLcÊ7év#Ôv´sqü£;ÆvLlÌf3ðæb°c4Ó_\r÷ÅÆü¡ÃNæ:»´iXíÙ¸urt:nÍ1é´ýï.ïÞþNSÉÏwpôs§¹ø£F±#ØÓcKO7/Káã¯£Árñròð:§!¸uO{ùX\0ÀÜ9ä7\rÑô£ÑGVçF6nå4Óe\r>ÆÓ1¦´Ñ­4Ö\ZÓMiò<Ýy/M»fïSM4·näyGDÐò{\Zr±Ñ\ZtcLe]ÃÜÝ Óiuy>×â÷¾/ó6wîé ÓÑÐØ6b=oaÏc>G õ¿kÚù«ÖËßN]ñ{^ç÷=¨ø½NèôlÙëráòGå<^÷ðRè^qÛèú<:û;ÕæÕÕ\Zq>µ~\'ØcVË\Za«1¦Z2ôv=®í;¼_ð}-Ý^LF¨Z,¥c($1PÑd¦2ò¶©h£ë?Ô±¦OùÞOSÔ{Ó\riðcØÃÔüÏýd;êc£ër÷ÆÂC#P¢*),mßêùùBb%±±ü<QLt2	B6}L8}fÉÁØÓ4Æc1èÜªÝÑta£wÛ¸i§\r4á¿cøßÑôNzôé6hõ?Áâ¿Óè\ZÚZÜGBî.E¤V.µ²+ÅâÄ&z6sJ»FFÑÆ×j¦ÑÑ9Kípy³K@åfûÛècM4ÃÃF<*/¦oz§kÏA651ª&e2ÓR\rfdi\ZvjmpßYyMÍ&§Þ¡¾&jÆíØÝ\r¦M9\rTÓ&ÔÌnÈà¡0+LrÚdqéÇ´nF#»EÙ¿eÑÑûtábpÓylünÙ§ó4¸Æ\Zp4Æ1cÆ1cÉ¦ìÃXd\r&Ì±»ÍÃx×Þchðo4[ªÄje9m5NÖÌ«E±2NÓj1S$iKKPÒj3]#7a¶yFGHçëºÛ¿åÚ{^Ww.ÌtwnÿÍ¿k³6ìcòWÎÓ´ð~ÂlÙÆ±©Õ³hÅÚ2=OÜÊxL#%nÅ4ÉYe,y6|¨ÛÎ#×XÈÖsù?ÖnðåÌñlõ78cM;ÀyÍFÏû=Ìû_àô][[3ÑYë5,mõÌSÉ0d¬1Jãc%s«jð\'êºÌutpêáîlèÇÜÅèý-¼Þ\'Gºj<ÛÏµ6°sM+¬÷¹?ÚþÇ\r«;ZQ:=Lm\Z\\qÙ÷Ú¶¶c²®VícSÎn\'tdáÍ¼é=\'óUË«FHÆRÊXRÇxÚ5Îv#Æçn9ãý-íÊËV7_ó^÷Íf»/S­ÜX»\'r\\,Ä0ºÛhÔxÆñºv¿ÖËiînå»_¶/-çS´î«xÄ&RÊSfC]£´j6Mãü.¨Úmc;M»ÍÛFX±:§-©2ìvcÍí­oF£dâ;Ýß3M&ÉæMIâ¦é¤Äì&ì¦Äè\'G*U»[\rÜ­Íi ÄÄâá¦ÌcÀÓªÜhn¼\\¶pØÝ§<Ú6qV²ÁfÔ	fMÕn®\nÖ¡7&DÚdrlM9mrlÊÍ\Zm+ro+emlM+BfNÌUfMÊánÅ4&dÈRµ&ò·&¤àM»rdÊÜ°\r¥+¬4&äàN-V,É²¸+\nÒVÐÊÙZ9Zud­É´·&DÐ´Óð´hü«úGÒ3\0üã(f9¢A¦&Q2 ÄìióìMHuh´£R5æj4¡:¦£­1=ÑÛ£6fÕWHÑ¶RÚÈæ1O££}G\':z6Q¦GÑª^¦Fìbi¹¶rÚ<Y££#LaFG/F££»)yGnÒNcj¥5¡ZÒw#ªyGLkÊ<)W0IáÏ§NÜvê¤§òLÁÖ4ÓÂ4.c°bÀÚ:FÅwG1áFµcÂ5«0XG1²7LÝ;÷ïá×Ã·nþÒ2WHÃQºÆ.pðÞ\Z,s´cNcdjÆf31É´sÚ6#pí\Zn)M(j1)Þ0ÆUu·f:ìï+¼aã[ðg}\'5G-ñtl£ÆÄdwhÀâ4áÔÆÛHÄfüï×·~ì¯ºF1áM#¼pÆän1c¬i¤vñ ÙÖ:¦ªxF-Ã	¼q#´l;äleÊMã#Do#¤lãxë;j¸ÜkÂ8F$Ørµ×õ>gÞ?Òø\\]¥µ=Ë=¯ÁÅZV¶,¬?åî©Ê­+k\nÃÆø?ë;µÎíÍ~×ýGð¦ëw\'¥ÚÊèlö_Çy}ûÕíV÷s¾{ì½7²ð>]ÿGÔUú/Æ÷¿Ñò¿gäOçDý|t<·Üå½û+ñk|oºý	}vr¼·¡^Þx^»/æì÷_#ÐÄñYÞb÷¾»ò_;Ì÷ºä;ÐÙîW¥ª¾«ìz®-«ô¹îKêµt¿âüo±þ\"øû#~Â4KðÒõÑÄ}gYï\ZFHÑ4Áí#tt#Hj#ÉLc¸l^ú]ir¥»j21)þÆOëI9iKébx\'½0å|Ñ~§&=)t¥ðOª>öÔ¿b2£÷_SVÏû£HØíKf¥?z¤öºGïLcÆc1Ìf<ÎSwÐ_ðµ?ÄüèOüúÑ6M*|ô¶OèFÒ¾´úä}Ôº+L1cÃÆBb~^Æ\'Å^¤Ér¥ìAíð¾-¡:<Që~{ð^÷Ô\'Üñ|)|zRûÛµKñSÞGÁ?öÈýÏïnn|çF©|Uö£#RÅ¤vs)|±)ó§Å¢ø¼ØN´½É0ÈÀÆ,cjø².óBlÕ.ÅêÞïK1¤´L¯ò3,F£$iùñ6SÅ\ZiÇGÁÂà*^Iô#ú¤ã-.ÉrË¿-ÉÔ+¦ê;×tDâcj^ßj6Õi;MÊØó{ßKÚôGµ7GÀ>!Â:# pMÑÔuFñÈÈÔ|©Ûc¬m\ZÖ;GÏÊÿ«£Â5]Ú®©jjö·FÌG^.ÎÍ_+týwzjòFbÚ\')8ØÙuË,¼XGëÔüÅ.!1<ÅtMÙ3IãK½/ìjoUy²cÔá³»ÙÉîbÆ0l®Qù]SÁ28#Rá;Òù#h°1Mª1Rúi~ÓúÕôKkkÇ{.{Ð¼ÕÚ®²ç¹0/ÃKìO¡õOéËÖîðGD÷FF£Ò>xý\rãÓM6\\#Ð÷µ¬­û­É¢âW¼÷ÆÊÞ\\Òð±¨Mé|³ó>T÷§ÔöFõÛ&Ô°^«Ip&Dÿu¬®¸û&,¤û®ÈýþiY)f)}ùT.tùdb2RÒS)~$<20dLò\'æ¥ôRå>Ûç|¨æØª?1Êy&ÓíNé²u¥Ñä¥¹y®QÌWá+Â\\äå\'!5K4ÂïKîNÓ¡Ê{ÉÌ®ï¡ãR¿®ü÷ç~ª[½Gá\'B1ÿHÙy¿ÍóGÒù¿Cá#ò#þQíiòXøßSp?iÞÙKó¿2iÞÖ\'j18Rêá8¥Ñ)½/Z5K#ü]¹L}­¥:PoKtÂöGÉÊ¯e.ÑÉøwÊÑÙàÈÅYÊÞún2Ê[JÝpÙ\\e¬ºeg´¯99µ¶Õ[4dÊGâlÓ³Æö£féÒáv¥ºdðe.ieÔ$|¨å4+í{Ø\'Z«È§	M#LSZii{ÞëÖN{vKÝ|¤üò½rÜ¡¼§ên¥áKñõ©^LjF&îÔº	õF)ôÒóGþ_­.¥àâ½/¢WÑ°yGº5¹üêq{SìOÄÂ4S9x~_<ÖQ7´½2±dO]>¤Çû¿ÎÞdb221cS_¡ç²Í/\rÖO¶é±î¾÷u^$;F)å?[ò¯_>´ÓMFs{¯Ý}¶éÉdz9kª{_2røÒúÓëF©u¥ðMÂò¼écyéfJ3à)pp·©y½nÒú^3ªt¥:&&¡;Âõ#ùKùQ¸}©µW}¤ÒdVÉ>ÈÞ;GXý1áÇxÈàðiÀä¶lÝÑWþî&&*À¦&Q¶14ÂL£$±2 bb¨4T`)M\nLDÆ$m/ª\\ó8Së¿UÖOîÕRâL®êë\'¢å¥|²ø®VääzWlÒ:¬DÒ+yÁ[ÒÊe.ºj©eôGÍ²y¥áÈÒ¯ÁÏ«7Èi£OttrèÙ³NÍß#À£z]¡`©Ï+µÞ¸DòK¤!]+¢ôô(æ4²ÅÃ)c®x½Un¦)lNÈè\'Î>cQÔp[§z]ét¥ý¬y\'±õ¶¥©bê	¼þçT¬¥âÉSû(_ñ£ÚN±b>èºãý_ÂùSÊªWµ>/,#Øô{Úú»Rñ¥ã\nñda½/Xâ3û/\'Õ#^3ÚÓú?ºòK?Äº®í\'dµ¼oMùl¯ÍVÔõÞEÂ&ôº.Bqµ¹n[þ8DÖ_=öÝOÇnø3I·ã#QÒi¦?º|©Â}·Õm	âêÄ|ê_srzFRÄÂ;G.¨ýQû«³à÷(èÈO¥»ýKJyþ?\\?í%ÈÄZM©ÿñw$S	Ò ', 'Online Payment', 'shipto', NULL, '12', 978.2, NULL, NULL, '6w5a1613106404', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'default city', '1111', NULL, 'Bangladesh', 'user4@gmail.com', NULL, NULL, NULL, NULL, 'no note', 'kopakopakopa', '40.0', 'pending', '2021-02-12 11:06:44', '2021-02-12 11:06:44', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '65578', 'CBK1613106402153'),
(126, 31, 'BZh91AY&SYH÷\07_@\0Pø?kýt¿ÿÿú`?=­5·J\n¨]¶ªa¤£L¡Â2¤ÐÈ4\09¦&4À#\0\0\0ÀæÓ0\0\0\0L#A¢\'¡4Âz\Z\0@= ÓÔI¢zPQå4\Zdh4A \0Ð\0*HML$Ôõ\ZbOIè&£@h\rA©é¨,H¹#.²H}ÍñQý&\n]>KâÑù²ÃYfWYÊÍÚ2¥ê~\nGÅWÍXò6Ú¯/^´ázs8bÖ½J¿Xn-i\\ùfÚF¹ìÆ&Úim¹_?O,¸ÚÌ-õ;T§Õ9ö0¼»Ð³Øôy·su`íRí]wàÂÇR?snkÒäß1«©g½c]]ìÎ½®ç&¹:Ë³¢läéëxÈ<Mm¾÷´dæ£ì¦TG»Iö²òBïIzöRoS9´Í2Ü`Õf&ÑP\ZH	r!	 DRE&í-­ÌFîL\rÁ`ÃAE!(D\rI0¤`h%¦ª´Öb\r¨@2XaqÎ­40YtÆ#03^ùÏ¸ô.Ä_ÁõÀMvò]ÛRRÆäéZB\0ª«Þsòt9\nèÀ\ZVWk¦FðB1Hg6µáªBÄFÕ¥¯vÕg5,Ý£)ªë4jÊç$0Y,PI!¨.ÁTÕ²ÃN¸Í°rËS-5r-Û¬\ZhÆc-77lÝË¥Ù,ËfYº\Z:6sM%òË-ùEÄjiÁL¸yT¯)ñòT*\0HÈ¬é,*¢\"k1Au½fDdº3ÊE)B)	ÎAÍ±b*\nH¢¨¬<Õ]]7ÖDÙ/QýÕ\'LY.Ía`Ç=ÅfÅÉsn­QÆ\Zdãm)vYuõÞæatTé/ÅN(ã\r[^Í´3vYÁ[ax¦f¶\r9h»0aµ6ÚÍufoÒí¸ÅÍë&)V1uIx/tX¿Ô±ÍÚÇwÜøyÉéãBP_`æ\\râI¬\rX&@j|\'Õ:5ôRË,ÆÊ¢©9Í\\\r!¬8ÝÖõ8cªiQýy¥GË|üÃÚûßéïÜáþOL»æ^=o\\}Ó%;Ç¥ÍZ\'Dý*=Cðyç5O\\èGÊ{K-Ààq(;¸°£ù\'ô57M\'adsxÂîÉ7q(¯Ê¡J7Rz7»Tî{\Z½S¤é,®[úK3$ó7yÔízúÐÃ]_3éÎ·µr­vðhÚÓfU(Ñ½JMT®I¤ÌÔñO£µ»IGÊÒÐ¦éËªÍ¥ç»±y8)u.ä}ep!ÎN8¬<lÃxaÎù_1ë&=oû<ÕºúiâÃFcIv	y³gu;Ê`X6=cÌïl}ï°õødTïwñJhöôRO[Ê}s/;Ô-.èò5(äì6.]&ögÈêåuBä9?As¨.îGÁë;Àéí7hôyu½ô{@ÍCØ³,ìS272ZlznlÿÝ§aHjj?i¡yqkÁÐÎ,D:911,©S¹xêä²hÊÂ¢Ã£T³Ú?õzÉ#µáX°SâÔwç¬ÃêCgR0òagÎÃEBc¸ì:¹ÄñzÇÒGó;JwB(^óß/Ìö2Ã[w è)ÑÞXénñi#ìMÅimayEæÑº¼ð}KIÃÁe¶³õó{÷Ç\nýO¼¥%JöÒÄ¢R ,\"Q\0Ad( $!po5§²zÂ8ñ¦Ç*½Mæ²¦XZZxu³nú±r.ìö²)Ñ!Mq]º°8a½ö7²RÆ¬;Üôµ-N\'(æ©á\Z0f8`íÆ` æxÌºÝ§m^¸ìå.¦¢ó|OT^w®ÿ*óµöËáMÓ¹V«QgFË:KC-f_J£9{½Q?Bßoº%@J)ÿÅÜN$ÆÒ=À', 'Online Payment', 'shipto', NULL, '5', 680, NULL, NULL, 'p5KG1613106820', 'Pending', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'default city', '1111', NULL, 'Bangladesh', 'user4@gmail.com', NULL, NULL, NULL, NULL, 'no note', 'ten', '10.0', 'pending', '2021-02-12 11:13:40', '2021-02-12 11:13:40', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '162115', 'CBK1613106819828'),
(127, 102, 'BZh91AY&SYÅ©m\0Ö_@\0Pø/þD¿ÿÿú`ß@H\0¥\nR¢G0\0L\0À\0\0\0\0&\0`\0\0\0Ì\0\00\0\0\0\0æ\0	\0\0\0\0\0\"@HôÓM4ÐD2\0Aêb¤B #R<§¢yHy!&M3QåÒY#hDøj«î~~OÍKi>9¬ÿM>\rqÙ­·ûÃ-ÅOzÑX­°·E39ü.ë®léõ|úÓèÛ{R©î­]-ji¿ÇÒÆÍ4l,wÈ8ø7gÔÙâùëSFë<Tî^_;³M=í-\'Å«ÅgIÔ£ù,ä¨ÛèZû½KñeÁuZpwy¶óHq<®ÏÙ¤Î±Ioâd¢Òq©ÛµÆ5~ªÜÁEÉúz¡RHÊn\\6Tª²Ú¤R¬©-rÌÕ>tÏ-j¨(QFJQ{¶­õ~÷ÒÙCì)Æk,Àh@Ù XHFqiµq´Ð ²Jâõq°(7 ÉRÅJ%5c8Û$©IUç6àY¤ª¥BkÕ-E*6cUëu8-e¿,­MØ[MÛ0},.MH-¥¦a¬²áÕ¸C)£wJµj0\\ËÙ¸jjÑ«õdÉBZµe³\rÚ8Ã+«-\\Bå¸U¡£60Ý³Ú¾*?Óè(D\0D¦.Â¿*®åbâêRËjU*a)üe=Tè«¬Â¤P¤ßc\"è UÙ½W|ß¾Dâu¢#òQKÆ\rS\'ªøR©µ2Ûµ°¥íWiÂY§«NêjÕ´Æü°eÏ,D0¤éµ\':U9ÑÏîårÉ¶±µË&²Úr«¦·Ã\rôç.4ãÆÙÝNx[6áÆÎ5¨æ³8oxZµËfÊáö¼ÞSÜö¿ãOû¤½|[«äûw¯{¹û:7|5ø«ÚSñOtÓNZü)J[ÀËråÕ)²©>·-H±\0±´÷=M_ð¸ØæI¹ÍÈýOyªzÙ>A)Üw\'ÞÜ(U\n|ãætV¸¾w¦Éã:*w?F#ïSS£²ç{ÉuvÑ<%#³wGfÓ«¡VsgjjQÊº\Z¬Dh@úÙ\r\räsg±ÁÞÞue¥ÎK¦¤\\]êvx:º?6­#ÀozFcã\\i-\rÈ¸Ý»ù´Üo5,ÀCA¨É2E²ì(Î%<ØMãvÏbú)Þ¬×çlÊtF%6^ÃÐÞÃØò65;Å:D8%±B§0eÉí8°CFOÜìdò?çÅ!DæäìH \Z#âÎ{sÖUíJ&ÒÅ)DØêåºå\nt}N3OG£âò2©^Ç/©Æx}tóy\rç£âaèAAä2Kq%ÜQK¥±ï9ÄEÝ¤¹sR£7cö¡ó:¸55-SRG{ÓMÚNEçà|êðI¯h	O7Ô{Ê¾Ä5pC¼ÕäÁ¾ òê9ÎÃ\nTâgö´ú?óØ¹ÅJªU6ZOGtüÝvU;Ï84=OYÖQÃ´W{DÊÔÍdZ:rRáæÃÖ§­Éô±\'7­kx]¹¸oîã·*öVZÒyJJ¥Jû)d¢¤T¨¥R¤jªDUD¨QBUI§f§5ÃÅ¢w¯!³í2áÁ¸æÊeTlÊåÏ.Öæqú*Ì³\rLEHâ=nSÄÙÂ8\r%Âru¥%79<õt½rã§ihç(\\*;(Aî{º»Nõxú}TÐÃeQó9ù*zçF<û-É<wQo³\nÎ3hýÔk³Ûö=\"~¤=¾ßtJ¢©.£ÿ¹\"(HbÔ6', 'Cash On Delivery', 'shipto', 'Azampur', '1', 322, NULL, NULL, 'kN3B1613125380', 'Pending', 'eitwebdeveloper@gmail.com', 'admin', 'Bangladesh', '3', '3', 'fhg', '6464', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-12 16:23:00', '2021-02-12 16:23:00', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(128, 31, 'BZh91AY&SYÊZw\0Ä_@\0ø+öD¿ïÿúP¹¼Æ¢6 Ð42Àh\0\0h\0\0\0\0	CB=@@\0\0Ð\0I©§¥2&£@\'¤\0`4\0\04\0\0\0\0Ð#I\nz§©éÔjHPHw¤o\'ìøÞt:îv8ÌëBfö,ucaû´ðÞújòÝÎ4,QÅÔKÏ)ÕTk\nÿ7Ö¸D}ÍÎ[\n¸»\"dM$\\[©23äDªG2ét)¢ \\z½HÅ´` ßßã%5D	Î J:C ÄçN\r¶Ý»IÌ!ÎÉFBåIPmÁ}²QFÙµjú¸¡-AÚå\\Úf6uu4î_\"	\0î5ªX¢/{Þo60ddY±kgBªt«aÎ  É$9QÄaÍMHps{l[=%|X:ÍæLiÊËÝ`)¥¡§,í	 «Æ04ä%4ä %rb^c76ürI¾BvËnB)`^¨¥,j¥0YiX42ÂlZB2Éj RAI ±ædÞÃnPª)4!QÊsº,gV´s£m:G4¯$cl¢mî\rÍàÞc&¥\Z¸4ôãê¹S¹*\rõ­a¬Ûb\\Î¬ÔÃnN#4<í,nYå;Ç3 EÖ¿Ïê4yÑÔ´âfdüìt©\'Þ¬j(Õ\r¥ù[U-¢Áãº~ã>©.Ù¨5=Ðýþ§bõ\ZEíBjGpn0x68,¿b1¸gf#¹ai[Ùÿ¬8¢ñÕ°mèm+PÎ3ifY@EIC(î?¥Jx·:ãå¾¶r\\LR`WDÍÓ±ðdn/(4ËÅ\"R%pÎQiÈxÚ;´0Îx+8ï=ÿÑ¨:5ÃRþ]\ZÐ\"@¥C	:ßò@Øs´à1ÁÎg^Ð[¤n: éH0°¾¶U×È¼\'r#Æ·h[LÃå¼zadt°	5eÍÚf)²ÒIc4T¨(9ÖpX@P(QHp+ÖcÆ(ÏQa¼W¦[@©Ï±.ëSï\Z»Ó8ç`dhX!ð>ÆsÛÌo¢Sk Õ9-Ã²óqöÂæÒ¼e!JA^2¦ò3-4ÃÃ\\ù^g>`¾´¢ ÈÆ\"H%EÈH²ç|ÜxõËPÇ-EEäVÛLNr@H¸%V%]°`hà(Ú©È¾éZV¡B/2P1ÚÜHÀÂ\\bÂeêðµb@F¡ ±0óþÑnÁ¼ßüèÔ!**UjÐaë¼FáI¾ À©VÍ|¡åÍ° ññòBlSþ.äp¡!5´î', 'Cash On Delivery', 'shipto', 'Azampur', '-1', 185, NULL, NULL, 'S6VY1613299983', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-14 16:53:03', '2021-02-14 16:56:14', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(129, 31, 'BZh91AY&SY´2\0Ãß@\0ø+öD¿ïÿúP¾îÆj#bäë@¦	M)4É¦iô\02\0hS R ÑA \Z2\Zd4MI¢TýQ=@hÑê\0¦ \0 \0\0\0\0$DFM¥3d!54ÓMLm5$@$pI%õÜ÷>§ÀåCì|þrX¡0Î!óW@7K ä½¹·bäÞ¥¡c!32Ù·®ïÔÎU7r]Jàa¡BÒ`_¸=yuèa\'\rì¸$Aí#èä(!!x?R4l¸¾DÄ`(\Z_ØÒ/-ÂªælCQDE\Z*J¥ï¢ì;	5Úö°<Âb!*¢@Ù^¦%T­Æ [Q)æ!í1]ÝÏ±¹D¶E+8Æ¸Q;\nn0ÀÆ aKbK(pö2$¤¸ ¦©.eÞ· WÅb0)ÂÔØJB2EÔ\"£;¸DÍ]ØPHÀ0Æ\n%tf\\Î¬Þfg2ñ÷xÈE  ,ªù2T¦1+1F`C¤d2bRE(êhßaÃHHV@´!ÒikªO\nNpl«¹ÁÞ°5ífTÆ1¨l3LeeEËK¤Æ {5æÒ¶!LfÃ&¶Ä0å	Ùñ9ÎCè¡Oòüòì^r5>Å<ï:ØæAÁj£Òýï²\0áyÑm;Ç)X Î\\l<ÏS#VÓiµ¶DLrrDÊ\Z\0ª¢%@Øv \"åzÀÅ/úã1Ø§Ö\rjt38i¤XeQ¡a£ðPT§LvûìíÃ»{nè±2Z\"»ZgÜÐâbTiIÁiÈ°Ôô^s\"3\nutJ+\"M-:\rß¢g5&²ã%5*ÍêP§PÊÇs	w=áè@Øt¼îCAâgC¿­Äì.2q;ËuÈ$Láe®²(3¿È¡ÚÁÈc\\v/®¡èÎ S~gM0º:H¸	k+Bê¢$W\"{ª2ªÊ;mR´\Z*J³RVeÄB©wGÅj0ó3F».Ñb&}BÅøjiä&F3°M?mo|)i&g*4ñ`Z=ãc¨Ã¡5Jh¢Ç5Äwbq5§C=,FVÈFQ¥yÚA±æÙxïwWßsÆ¼#ÎDÄI m$BPÒ`ÄT519ßÊ^)n*¯\"×Þftð	³~dlà*Ú±ÌÇ	¼µ¤$bh c¼Ð Iò¬Bõ\"¤ÈÉ°_û{¹Çähx#pªªeº#b|Ç¿i\00#,}Ì È±WÑz§´òèæ=~¿$&Á²R\rOø»)Â¥¡', 'Cash On Delivery', 'shipto', 'Azampur', '0', 185, NULL, NULL, 'Qnxe1613301548', 'Completed', 'user4@gmail.com', 'user4', 'Bangladesh', '11223344', 'asdf', 'Dhaka', '1230', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-02-14 17:19:08', '2021-02-14 17:22:13', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(130, 107, 'BZh91AY&SYAíÏ\0_P\0Xø?[ü¿ÿÿú`ÿ}\0\0(D\nP  C\0&L\0&Â0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0$ê54bdyF\ZA Ðõ¨Ñ T@ÄOM\"jz¤Â¦OQáOLM4ºP7i÷QúQ\"Y-#¬Nðìýiµ»@û±]Ã[{HbY§ð/\'ë®YþZN²¦ÎoÑFæpÕ¡Ñ«EFXa7eµ]£ü¿fNMÊ-7MÎóçõR°b`êÙ;JO&Òwæ¯Ùû¬ð~WÌýk«¡¹cÒ[Ñ (ùHõ@´ýOqÌýOøÂ\'S½ÚXðXô.?54>ªÉ°£é2,¿äÐeRt*UDx¥ Ü´ìrZfZ9,Õ±Þx<NéY~a*w*¨50X9ÎÃ°í0G$¨¢Rv°ÝÚÄê¦úåÎiFSt´*MrÒKIT©v2ä¾æí)9ÊT¡rR\",Ù»	»c(])>´¢ÑBj²ÈR%]«\r^§2æ\\Å3-©x6QY³1ªùÂÆ­U%(Yv¬0»E>ÖæEEhÃ±Rve;\ZÂ¥Ú.»W¼Ä¤Æ]väs4ÐÓ¼ààÓ¶iÅ»°î¶hh1Lê.Â)h¢&Ì%6av\Z´»f&EMmMj2K&\Z´a(RË¬¸Ã,´jÕ©0ØPÂéÂÆftÙ4hÄÝ2|õö»ÄAHDaABàXiXwD !E%E,ÑB4<Â) Á\n¥,´Ê\"RR¥;gGm;×[I\rà~r ê»-XJ£fZ\Z;ÑsvÊw;.»E4áÉÁyRG&Vrh³»´hºerµ0aCE%ÔÝ©f,ÕÉ»ví\ZNQ³.3²dÃeÂ©Âó!hA¢:gÉö¼gQ¾ý7h:¹_¢!ÎxQóÎ£ã¹ªßÍÖh^ÉÀìxJ}GÌ³¢v&¹GeI2¤¢÷µlxHKIÖê7Ì\r\ró`g!s§ëu½ÝÌ»RòÏ)öGØÌÂ^wÉÜrÉÐPð\'WSî4<Nr£á/¨ú&k±ÊX;gÔm;\'|áÐv,OòÒ|ç)²NJJE*G!ýÏ7n\r\'Í:Îé£«ªÂÍ¥ÖTÊ\Zþn;\n)Ù?Ò<¢ï\'¢Êj¦¯\'½é²i0Q¡±°ý_sº8)JL	¼üK}Ó¶{\'A9³bÌ¦åÆÊÇ³qØÁNQi]%NùNõfsx0é%Ú=Ï9þ´¨î=´øÑtÃÖtyÎJhîX£Õyyý×n9ÞPPàÂÇH>#Hû\0à«é/<áD©!©ô$©ï+Õ¤»Ìt;Øóá7®bòñE£fSàúæ\'DÃý\rÇÉ=\nQO¶pÑÜwÈýÖ,$ÃÚô3ÕÔ{¥M\\|	vÁu\'EÆÄ©«(²òîi´»ÍS)²bbXòlÌÎ´¤f].´¥Õ;¥ã¡¤°Êe\'Ë\"ò	Ý(ÏÂq\"¢¦¬§½÷Ë½SvJ÷7FïìíYï~.³ÎiÓ²yø)ûO9ñ\\z)CIrãÒt{ÜÚ¦T°s|å(ôJ<%ºO	ìa²Ð¤øÑ82´].K8âT²XõK¼-4Ãvº\r³Ò\\â! &¤;F0O]Ó% 1H##h ! £DQ0|gAs¤eÜÌOtÙ«YÌåÐ^]Mä»e\r&%OåíNÛÎs¥\'ºrp»VÍ¤ÉiS¬ZQEYÄâïÂp69ÊyÃ3	´9(}ù¤º}tÙÃ÷¡æ-	f©ç0ñ~Nùø/$ü#	SJyªN®ÛL¦ÔÀÀéÒ#Þ(òr¨Èeü]ÉáBA´3<', 'Online Payment', 'shipto', 'Azampur', '2', 340, NULL, NULL, 'uwG41614754406', 'Paid', 'vv1@gmail.com', 'admin', 'Bangladesh', '123123', 'utfu, ufgu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-03 00:53:26', '2021-03-03 00:53:26', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', '5686220210303065152'),
(131, 118, 'BZh91AY&SY*sÇ\0¸_@\0Pø+ô¿ÿÿúP¹¼²¢l@ ÞÝÀ\0\0\0h\0\0\0\0I¢ \0\0\0\0\Z&¡%G¨ÈhÐi\04=M4Ð\0mIF\0z \0@\0H\r\r=Aê5 ÓAé<J		£	~Ïq£yg×¹ÓÓg\\ÃB[:ñÙË(èÃvk·Tlàã7v5m.bÎl[Ê3|ó+UO¬Eô~¨ãZeÍÌæ^cU¥f£Ü°¬ÕYpa¸ä \ràFGüKÏÀø%zLJd$/$ÓÈá±¡2XZÌ­0¸ ¢¡Poq­m \0©¬Û5£D.!*ïY«¡ÍÅTR­\r`ÌU3D	jz²L\"kWz=4XËÓyØNÁEa`Ê0Yå t©9ªX¤Ø½Ø4fó&©1Ë]`)Ju8¹L\"j¯À§ Á0§ åÔ1VV1f*ê¥öH]¥ù%A@XT½+U)ËdSÉeàÜeq µ`FIÀ\r6lx·«HT@GÄae¹/§C\\)5å(kÝA°8·88s|5n[VÆÜ.Ì1Û¹µ8Þµ8Ù,gf÷9\\Õ\r<9ìöCÄÌäfm&V~¨KÝö.>;Ø~&tUüÙ*j¡ixÙE,Fg\\§÷Øô ÁÙ5ó±äg©rÖ¤Gè´¨l/F!ChdVnX\ry®¿ÍYiKBèâ³z.isÅY`k¡^@E	C*F¥f{ù{¡ØìÛ¾v[\"³,aXÌÙ0²G#eØ ä%hÍ	\"Ã¸xÔ;_\ZõÏ\0{öoA¨4kwíÅy(8Èf+¹ä,8.ºèm$Á¥\rèc:«FÐçÊ²\\EÎe9^$§+î£\nèçâLÜµ±¡Äóî)^À÷f`O¿C+bìeÅK¤<µÙ#³C²¤Î¾h¯ÉS\"ÈPãC\\æ	\nKÂ(ÅÂØ0õ1FÎñ_¸W	ú\ZÈ$[ö(=IuXX4ËO¨ÕÞ[c¦³¼RR2;ÿS¼cM²¢õ%6¯\rCÖ:î5\'ª×f+U\nRÄ¹IAÐiPÚA¸<x×Ññu|Ðy$`#jQdc	æI3UuE>.hÌ§Âð¡ß4;V°°µ\\¼Ê¡Ù½FMh(t$ã8`Ù¸ì=ih,W$TL$¢æ$½O\\J]¢7%50ôG¼°øm ³Èpt/>\rd\\@Õ³^ã\'ò)¢¨ ë×Á	°lPÁ¸þ.äp¡ T\"ç', 'Cash On Delivery', 'shipto', 'Azampur', '1', 300, NULL, NULL, 'QKi61615181080', 'Pending', 'new1@gmail.com', 'new user 1', 'Bangladesh', '01720981471', 'd', 'd', '1233', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-07 23:24:40', '2021-03-07 23:24:40', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(132, 118, 'BZh91AY&SY¾òÍ¬\0«_@@Pø+_ö¿ÿÿú`}B¤)(HTAÌ`À\0&\0`\0s\00\0	\0\0À&\0L\0`\0&\00	\0\0\0	\0\"G©£Q5ÔõQú§¤ÚÑ\ZIJd\Zd)¦SÊ4Ó Ð6§¤Ó%Ð0çù½0Hý¾E~*>v©Áð¸ñ>6pÝÉ {Ø¯ðê©i÷Êë®³«+IwVV`¥)Ëæ£¥0Ù£«fV`n¥6ya8feg\riú?6N\\8Ru\\Äõ0æy]2âjvSý´;].l²[«×-ÜÞiÇÁô}Í1ö2ð|å%	ÒCâüJ^Yz¢¹6AÊÂ*`b@lRì.XÁw\";b^\"ÈBa¡hZJ¥0èÓ-IºrR\"Y¦ì\Za&;ÔáF¢¥!J¬Óeaºë))IÕihÚeÓVlÙeIJ\Zi×fYmûôÓí¹»|8jo\r7¦VlÂÊtTÎ\\-¨)Q*mÏ_8t^Z¸²ÌLÊKî¦.`Í\ZhiÉ»vëlÓ­ÔØpÙ¢LÅr6e)²ë´êÐ¥Û´Ý±ºaTÝvôÓ-S	dÃfJK.ºã²ÓfÍâL730¬ÊlÂnÙ³SÂeàò\'ÒÂbº%!VT)QyfÂåÖÂËT±E(õª	\nBô)HÀ Åh¥­J4U\nF\Z:áÎÎjT3PébD~2¥a¥ÍvÓÌ2Ì¦|Î)è\\Âë´¦º4r¼é$å¥§\'+ÍY¹Ã4±¥2èÂÎnª0ÑuÓ£6WCf[8pÙ©Ë¡º8tSL7YÑ£.V`¤ÿ¯ÁióþSÐ÷½fQë0û_¬<ÁêÈ7+Éy.¦é³÷(íFT(R|7K·(?qeÔõ?yÌ\\ø0<0£B\ZË<_\'Øû¿wýsNf/í2n6zmah;µ=gTihs(ïv1!êPs:ÞgÀ3(©ì6c	§:ò0`z×GÔhhPa±Dr@ânQÜ~¥ÒYO)EÞ§zÊl¦Îç\r.ÔåEjaJ&RfyÿÍØðsr1Ì6,ÊpXÚÐ»ý­jl{eu;e8SØÌåça:Év·ª|IQcÅÑÕtîxN®éÑMÝ©¥Î×2óÉ´ò}ªL¹§²w©:±,º{Úö\'Þ~ÑïùQ-Dù½ÎÊTø©J<g½íj]éÜ¼îSyiö9:­º7Q¦èÄ©ïxÌNôÃOµìYQE<ÏKÛ8lôIû)éaâòç¢K>Â^Y º¦QeåÝÂ]àÌ©Ý11,zÛ³3ôeÊF¥ÒëJ]RL¼y¥!|³\nChð`GA8`;N°sRfò;i6½ÇÑ±éÆ²v3ô:J}o<ú¦yÙ=æSÝ>©gIJQaå:¹e&l7)çÓ¤óÏCÕ¡BxÀ3cIbÀQ¡6­6\Zæ	¥¦o§a¸ï8ÎâHdr@ñÄ c<HÐ0b\"F*F\"PA!Y\Z °b,w{ÀÖu&GÊ~Ê|g\rÞØ{XAyu9wD[vç è»$)ar ìKÑÂíÜ7%¤:NÈ´¢ºo9ÝÞ³3¢te;!¹¨r¡ò#õ¦{Ù7tu(ïÀ³aëqÔÜÿv-+¬¨ä]ï4z;ÝÍ0v«æh´ó|<ÀBa¢ ÿÅÜN$/¼³k\0', 'Cash On Delivery', 'shipto', 'Azampur', '4', 957.8, NULL, NULL, 'cOGh1615181141', 'Pending', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '01720981471', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-07 23:25:41', '2021-03-07 23:25:41', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, '0', NULL),
(133, 118, 'BZh91AY&SY¬Ë\0/_P\0Xø;Kü¿ÿÿú`_dxÕlb6M\Z1sLL\0&\0&\00\0¦¦H¤Ñé\r\0\0\0@ÐÍ10\0\0\0À\0L$¥?QPhÐõ4bh\04\04ÄÀ``\0\00*M\nx§è\"©¦5©êTZD1=¯Rû(p@P þ¡ø|ü_K£$!Óscâc*\\ÁÌ!Ãh>®îcp	%Ccî:83|q\r©k/_¿ÌèJ1[\\âªªÓ|t&7Ü¡­±Ý;	|vv>®ç\r¼ò%Ö2!G7½ÜÜ£S¡-ª9*}½m4¢^µ£}¿ªëRm#ÒAx!Ø)GN\n/eJ;Glê{¦ã.¤¢ÑP61KãRÊnÂ0`éÍØ8ÃBäÌØ`êY¥Àl(0®\rNÏ£Eµ±»&0Hex½CjÉ`vS\n`7*#XÚø_Äp1ÌDÅ«Ìw-=Ã¦A&iA¨Ï¨ÑM\"D¬²ÃB\ZÅÔ¢ã\"È°¶Vµóh±c5­¸%nX±D¯UE«×*kUH¢[t<0ÚkW Oupd¶öªrÐØhÍC&F3YÎFí$#µµT\Ziiî·;0Üø e\0ÒY \'\\hU5A³F,XÜR,B1!PD$@I	©¶MÆiG` dCkÏkB+£\"§h5kéVÛì8·7FõÍCªv²A)3­dÅc}kUFÛÜÛh¶3\r¡Ã:ç?´ókâõ/Z½ð!êyÓµÝú|Ù­Û×­èO¬ßY¼.^¨v\\bãA÷_cmD\nOaË®bçJ3ì9=ïéòy2qU8=±ìµdU´ØÐZI7\rZã4ÇÉHw¥hK«ôu¨5;Ø4µ²ÌÓD}îriÂ$L£AàÜcè¹ÚÔØ»VªÁZJØ.}X	TCuú¼³^Ôi­¨YafRLã]¶NaÄ|Î3Ø¡26Çq`ËñfÅ/J«ãÅÚ£¥-iÊyÚÏeJÝÇ{íþ&6=÷S¶±g6-vÊ%Îª¬v½yæ¡-å¾!þy}ÎòAR9ÎÞ»âi%¶Æ×cyV,ÓHÏFaìïXÒYäbeú8G4Êwt²»cj<è¡\"În­\'J/¥N´X­â³Ô½¾ØRªèË\"%­ Vä|	ttn\"¥±ªh£ZO&pkä&%}¦~\nõF7&%û±?Æºsù58®£¡ÁIÿ\\]ÊæKTæÓ¢è²b5\Z¡_KjæÚÝfIÏ\0Ì4Ù°Öy¦ä[EkT\\ãàòwòß8æ>dù ôP´IP  EaV2\"ÔXY\rLÎ;ñT-ÙÅÇ©÷³G*Àª³\\$¹b7Lk«6\\f¶&c\'&«{Thj%*²e]ôµÌ°ZÊ20ÓÆ¬0?Hó~¤½Üeª%\",\n_aKÖ}SÃjæÞ©fÔ´&xLid¢c#ØÈôò~999Q$\Z)ÿ¹\"(HVeÆM', 'Cash On Delivery', 'shipto', 'Azampur', '1', 210, NULL, NULL, 'jIOg1615187238', 'Pending', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '01720981471', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-08 01:07:18', '2021-03-08 01:07:18', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(134, 118, 'BZh91AY&SYG¨J\0ºß@\0ø+Kõ$¿ÿÿúPàã7uÀ\0È!$¦\0\0@ÐÐ\0\0$èEGª\0\0\0\0\r4\0)IªzAä@hÐÐ\0h\0\0\0\0\0\0\0\0HDjlL@\Z@h`		ÀK°½ÇÇ8NçN&Âæ GÈ1Clúç1Äà8tÈ\"9~ÐlGXht[s¼×ïó\'.÷<557o)!Üx{Ì;ºZæîE9!\0s.~æÄ°ó;]&\nHSçZuegÍñ Ã#FFi£3P«A*6NJÖÕöúÆ\0m¡Ú-^&Ð6\rVf´¬¨H\"­©!\r¶ó>BÃÊH]ÛÁBQ	AÝL«ËUÎofB\\\n,HdªJ«Õ;ÌÛuÎ«L³I±A¬ê*l%5îç æjîÄô)è1C1F\"­+¶mJª\\éêô)hJÙò*ÌrJtsTÔÐÑ6væ±ded4Á¡hÝ[ÎØ£ÀïHöfúZNyµwØvCJ4»¾5 kh55[FÒLÚ:è=<L±IoNE¶q[ÝÑÇ àÕÛÒàzÀÍ»ÁÚu®b$<	~hÉÆg´ÒYTtcD`xæ¶úãzk:Rûöð:n05=§gØqÒaA¥Â ,÷	Ê¢q£RÔòâ°U\'òW~ò§¨×´§#9mA¦ÅÈiÿ¬rFÂ2hÁ¡±oÜ;¨yËm´`eQ±8\"aêãîþ©|É`©-£nâµÏï7\r\n~\Z$pfv!-v$º.uáãËéS^Ø&Üø·ú5f¹t4äaÛz¤PìráÌâÂG±mÍz5è m\0ºÜâ1Ñ``Î§o+Ì\\$àv0Aå¨I*B×L[ ÎßICÀ)/qÔæÛkäxt3P|Ùäq¾Rvè1£Ö)\"ÀKZØT-TD¢ñ\'FUaP¡,T­&¦,àJØ±Pª^bÀ´]ã²;ú^\"ÐM2õ¾$úÖl4ÌpÖ~þøí¸æU(7à?ÌæGQ¦ÙR©®Jl(ÁÑwÚç\nwB}\Z¬)è2CJçYÓ½×òqõ9.;_:ÁÈEzc	fH )VrX!iPï4:_\"¼ñWÐb÷6:ÊIy	Ã\"t\Zy¸¡¬\r+71©	\ZdÍ\r\'T¡ºÔ|RdhÃÜ}I|cxÏgC:î;#BTTºæOùøà2ÂoD\Z jô_1úÏN¨_\0AçãåF ±ÿ¹\"(H#T%\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 280, NULL, NULL, 'vGk31615190851', 'Completed', 'eitweeveloper@gmail.com', 'new user 1', 'Bangladesh', '01720981471', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-08 02:07:31', '2021-03-08 02:20:35', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(135, 118, 'BZh91AY&SYÍ±¨\0®ß@\0ø+Kõ$¿ÿÿú`ÿ}\n Q%Bª*¥B0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0B&#ÀhdL¦¦6SÊiåÊISMf\"OHiµP4S2)È¡#æ©ñEø?ÖÔ>ÇÚÎ¦îÚþªBå|ØÙt0~K®§s+IÝ0ÒÌ)N_5kfæÍ,ÀÍ)»«\'L©g\riõkôhåÃ\nNåÌOSÉÕÞaÄâ;O££cNÏGï{%½H·}|sq¿ÌA`¥ÂÃ°§(VE-0ÂeD~Ò¦ªpQ8T)DÙI¡ræ¢îê !÷\"4È¦RBÒT¥.èlËv~JÆ,~\n¡¹)J)L,Ãv1#¹Q/%)\nP¤Ó´ÃO,°TJ¡i¦ùM(ÊR4Ó,0»/Á±ðfCJFÍ0³óYRR¢T¾Ya´Ë&ë/gÞ²_iSRK©uÛ.³¾YÖÓCNmÛ´Ç6Í8rrl:6h\\%9MJlºí:´)ví7beMÓ,¢¦ëµM2Øe0L6i¤²ë®0Ë-6lØn(atÃqfY©dÉ°êÌËºÑ}PÿâÀº\n¡\n\"0(¥açÄ!ÍK1iBÊ^ÀK#`\0¨6,SRRR¥<\'W;ûIíi$Gù(ìËK²ñèÙgR.brË0t])·FÇ+ÍDå¥§\'+´³s8icJeÐ§F6VæÍu3ÒlÆ×µ×´áÃf§.nÙwjsQN¼³9Ü úñ=~¯ÍýNGó|¹>J¼<ôÁÊ[[fRÞ;Ãy²gõQÙRd¡JIòlÝ.ï¸|ã¹èÀñÐ£eÆ¯äôy¾Î´ðKË<§Æ>,Ì%çªOLGì\'gcG¬îùht{Xûf§¬ÝÀè±>­NôtÝNJE*GÞí&íÓÁöÎ³´Ó«ªÂÍåÖTÊ:MÊ=GPÒÑ\rì1D3!Ês34,dÂË©DÉJSbi¤Úsé:ÏÒd¤úìíË2\r­öÎhfLø1ááOk3é.ÓÉ×\'âý%Gû\\÷©<3ÐGâ4%nõc71ÚólÂÀx\r£Úéñ>p¨\nO:\"v\0ç¬ÞdØÚ§gëu4ï6fñrÑË£v£§½ü&\'­0áó{8acét38×Üã\\;Î{ÉyfêNZ&&EtO9w28Cví1¨Ã¦	ÃbXeÜjXe2îyKC¢|2ÃõQâ÷¹ì\'2**lÈÞ~Çë.÷§\r)*n|¥Øâ(Þ|®§ðyÀöx»Z:!eºrèÊL);¤7ÔðÓ¤ð,;¾­\nK5±¡ ÜÁ3y\Zi\r9¼æÃ´ÚfuÚCÉ¼c¼),bb\0$hÁ2%Þ[Ðfs\"ÂiêIèM\'ï7m:åÐ^]N$»u\rLK,Ndáæ¥¤Ñù6]IÐ÷NZ]»d´3¾-(§À¥ÓyÌæï5 ØîôfPåCþ>|i»±GÉöÎºÏ¹ÑhL6OHYwÃé)ær4¬\Z80)§c©ã,Ðê0>ìáÜk:DáG·µîD((?ñw$S	Û\n', 'Cash On Delivery', 'shipto', 'Azampur', '5', 610, NULL, NULL, 'QEEE1615193694', 'Completed', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '01720981471', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-08 02:54:54', '2021-03-08 02:56:27', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(136, 118, 'BZh91AY&SY¦5Ò\0±_@\0ø+ö¤¿ÿÿú`ÿ}	\"T¥%!B¤ æ\0\0\0\0\0\0\0\0æ\0\0\0\0\0\0\0\0æ\0\0\0\0\0\0\0\0æ\0\0\0\0\0\0\0\0DhF¤ü¢~Sz§£( M=#OÕ=@© i\0ªf©êhÐ=FQêz,Õ	T}Ïá\"Sæ\\ýp øv98cp>WÜçRÓðck´ú,ÉuÙZNl2¦ÉÃê£viÍZÛ5YjÑÐÃ	»,¬ÝªíwÙíÔ×1;\\NIóy:£õnju¾[éxËx{-5=5Þ£»xUDØ, ¥Bý×<È¹¼DPï;B\r]¡Ø2(/Fì6L1)L¨S*?2SE\nT&KBÒU*a\Z1¥Õe.X²d¥I)eK°Ragä¦Y ¥!Jh»F~L.SW²ÊT)kM[2ÆURY3%(YavW^B0Ã>ÌÂêJP¥D©W]4)¶\rà=v´ÐÓLtm§m­´.\\\ZY¹ ¥Û4l¦¬Ê6K±%,´´ÙvÔÑ£)²a«FË®¸Ã,´jÕ©0ØPÂéÂÆftÙ4hÄÝ2pzä¨yö¶¢BAÂetJBRÑKhÉ!öÅÌ¹B©h^Òb((AT-@¢+£B0Þô:éÔuºm$9VD|åJ:Xh¹³*Ñ£¦/;397j³®Õòjp¼ÌÑQÁÂÇ\r3vÆì®nÕcU27\\ÔË&*ò«f4¦«N·nÕ¤ääaFÍÙSv5N6Y£!JsÈ\"_Þï}sädæþ<]CìÊ¹Mgæí|_6|¦O{bêp¿5hÊ%\nROÑ«d»gT¼O¼ü]>Ñàn!¡ÓÚþOêûÿ£ªphì|SÄÃÞvÉØq) w¥Òdð8\'õkÈ§ñ\\ÕÑ(òu±!¢ªi9Î©³Ð°~fo!5a°M®¤$\"CAô>·®tÍÜÖm.²¦QÌÞlQÞÒÉi,§¬¢î×¹e5SWsÉ­×42êPà!hfc£Ð?×sÁÕÀA Ûe²MµsnhÙÖÇèa´i¨ÞÃhðwIþiQcÑIÞ÷OÝM]I`ä[NO0,Øè=¯\r°£Úã´|Í=á\n)ÌØö!(P´v<ç«àÒ]å#µyÛ=fÒZ|ËÆÖ4lJ¯ÄïL7Dèy\"v=ÓfÉ>*vÉ0òyÏG¢Eò^Y ]IÃBbhÊ,¼»xË¼2&&%öÌÌä]0L60,,öÓ¬3húØ¼¥¡É:å¼æ·8w²6ï»Ñ7h¤©±ò¿ZÏ7DñiÓ<ú)ö2Ï2£2ÃÎpõ}ÜÚ¤ÑIÒ<áðq=éÝ)«¢wNö«BíC8),°(ÛÔÆ¹hö4ÓU:?QÃðz5z©è¦_=¥B©Uì©bPÅ\"DQ@ Â\n²4A`Å\'{«ÌÐâP8È\'a£YÌó]åÔÞK¶PÒbYd÷:­8wÙ¢ÊNGáÉvÍÛÉÒN´¢&³åwÌÌMÓq©Ä§30C°ÊM]\'ÙÉÎ{Ñâ-	Q ö!GÎ8Ìµhlà~f Ñ$BÎ­0zLxÄz\n=ýï Â!DAÿ¹\"(HS\Zé\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 625, NULL, NULL, 'E8Sr1615195364', 'Completed', 'new1@gmail.com', 'admin', 'Bangladesh', '01720981471', 'utfu, ufgu', 'ugu', 'gug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-08 03:22:44', '2021-03-08 03:23:30', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(137, 118, 'BZh91AY&SY×|:º\09ßP\0Xø?¿ü¿ÿÿú`=@\0\n\0©À&L20&db``914L2da0M4ÈÄÀÀsbh02dÈÂ`i!B¢A¥hª=5=\ZFjz0M¨Äô@sbh02dÈÂ`i!* #OBdM4ÈzÍiF§©R!r!¡ú=Ïsf÷,ö?¦PýÏÙE;`G[C{½$ªª¢þWæÙUQªêÇlüàÀLL0A0{@þÈñmPh³¯7aéVcÞ3ÑFWª¯zU5ãJ]N7¤U9Ý[Díÿe¢·Ë(É»<©xcíhÒ÷¦W¾m¢µl¨ß)[Ë*85èUNM>;®Ç6]<·vüÙIòkçy;Ï*P(I1Ez\'©Òóº\\£DL!$JüD/1ô\nÈýÅ(ú·cnÌYEºRtò|îÆµ¯£Öºî³Á-àSg5j©bå\\]Dú[ºDsÑ@xQ×M1²Nmî\0Áèà¥¤JT4Ä2$Î¢)\\ð²òã#(êI¡XUQTÄ0f¢)	á¤ë}¯Ga©¡50DFÇ¸O	\rä}Dä\nÎ7v´uá°5\"(Äè4í3e{ÙEÛ74}Xh³\\	MÓnM0mkchÑVm>¹Ä&ºç­ï+[&\'àhpb>s¼J\rÅ®¹Ó$m8G2ÒÊ×­qUQjÅ©6­¸0£5(ô®²fª³aSrªdÄpºëZ«-vx3JÔÒÕ¾X&¹ã;2g²%s_\"ñh¤[,Z&)ZÔµï²ÉÌÕfQu¦êÆqMEâòGOyG±÷DhJða\r2àKøÍ8.\rð&Å´Ó\rdb%¦)b©4Êd&BdÊl#¡¹ÁÆ»ë ª[å\\r¬d¾ãtâ©³K³§.W]kQe®×U06½\'im¥6kjµÆµÕ:ì´ZLLm3z_V[<óÆÛU¥m&¸Êì¶µUé?Gä(ù»n«áìy,h¥w½õYñê£gã>QýÒõ_Ì§¢;=Ê5á=!jj{Zë¶^8¼Ä^RÃ,ØMéÔäµ|SµÂÿ»òQåòQìJT:½¥+¾QÝV=	dü{Ö~ÇÊïÂñÛS½÷Çßu¢®nIos9!ësQÞ<oâèLQóÿ¥¡ìu+\n¦ý	yüY0GRFMîM7ÆÄ¨òÿÙ<!²tÌÖm*¥%!2uæuÝ{{¡ø:ÛT®ªæ­C{GC¡Ád£Äy§èJ½yRr³î¶ThÂj£FiS¥&i#,ãGkùqKV«û_ÊnBêÕ4kÀ·b7%ó¸..Ò4JÜ	GöKTé7Ût×qX1ÙãQû)sgtlÉá1ÏÊìqùÆGu\\áEwÉ1]\Zo$M?Ó¨yÃ»?aëzT£yÞHÀ)¼^W<>§zý¨ñAáxÕ<ÍgybÑ~ýµÆ²[fL<F#gktDlyL%.m1Êñ*&R?2ýÏ/4¤Êx#2ëd-1»âÌÑIô«µ+²`ßÅWéùÔûY.´oQXíÝì*Åð½Sj¨Ù*/\Z1TDÞ^GÅxñ°¢0éK(K&%D^\",{Ù9F®odsM­ÆïF~X8#d©±\"%«æø­ça1/òÒ\ZsÞå_½(âî;J¾)SësKà©è$f6ïv\"ò¾äâh~=Oy\rÇÊòîCá£ÇØj\Z*ýÒ\Z¥ÊÇîz×^o¤h*®§9.0jtnêñmãtNÏ¹ëB+Ë%B$pHÓ@\nâY%3t5wåAä¬/Ê#¹Tc(îi¦îúÂ?4ZwL,¥#·\Zó\"ó1£Ê×JÁ©MÂ&	háT©Ík×Ki\Z}n}ÊvC&áºuLBÈû£÷H-%)öæw5ÛÂâ\Z¦:¥â2Ý§AäZÕ¢úÝÐbÑ\n¯j3u¨Øâ«6(­)VË]H¤s7R$Åþ·¢íèõ<g´o\'J48ÉÿrE8P×|:º', 'Cash On Delivery', 'shipto', 'Azampur', '1', 342, NULL, NULL, 'BRBt161520129300136', 'Pending', 'eitwebdeveloper@gmail.com', 'gsdgd', 'Bangladesh', '01720981471', 'gsdghfdh', 'dadad', '3535rgte', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-08 05:01:33', '2021-03-08 05:01:33', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(138, 118, 'BZh91AY&SY9¬W\0»_@\0ø+ö¿ÿÿúP¼ÁØº\n\ZÓ®L%Ó!È4\0\0\0(jjPÈhh\0\0\0\0	5	\"F@\0È\04Ó4\0\0\0\0\0 A4dO\"b\0é= î\'I?ÀIÊYøÃ¨çç³y¶s	QÙË(æÃ¢´]pê\r9)7öS).W-jú	-õûüÉ¼ÅNNA×Ùòwn¥ÅNÉle©=P6,~¤wì%T.ä$/.çIU¡$ÆÌa¼e\râMÀÄ¶oÍÓ0GLÐÌé! Â¡PolÛ\n,i,(¡ Ê½f¬Á0¡*!5«ÖkËÖ!Ig[·fY PÌÌËÕAaX,{fª%*<¬±O ÃA\nXãYC2$£)rnõÊ_U¥,M#Àiôµ6u¨Îî3Wv$h!Ò4IæÛaÁ55Å\'<èAd\"bÀº VP­T)ËdR,dâHµÔTA2¤ly7¼á$+Ð%F	#ôÌ§Y\ZR¥A]içWsÞ´5ñfÜ6¥)³lnFCLbÈdT£Úê£NºcwtqÁ\njÈ´Ù\Zjc¡>¾Âsá=h\"Î\\zQÜXõ3%ê9*IÞ­ö3$QªKíµÊQÃÙ6ú\ni3!WF\rg\rÇÂÊH±ó_:R8#¡r~òÄkò!\'Í²L`À¿Ú#ÜÌ46.ks:åwnC(ÅåÃ8ù°ÉqÖ¹m;_\"¡BMnÂ­Ucþ240(4Ì\"RK¼gbEcÄXE#õ¡Â	\Zvk¢sð*0©RZ\nÈ&W£F$A3°JâÁÌÕBËô=×Ø:ØÕb!¸`Î§~Õ%ÌZHÐî\\AÛ%=Ð±ÂêÜïèLä½#¡¨1é±utvq|ú;aXê)P$Ö5ÊÑ\"X-èIM$1ÙÔÂ¡#£°®§0éÈ¡D»\nC`³{AcÈX	¦Zqáì5R>è¨¥0¨ýr2ÇZ&\"ú\'H¨ªÊ&8Q)µ¸9¢ã¢ÌuÀÌÒ|!\r|X°HREøQ¥cÄ6ÇËz¾n D_bQdc$F\r¤i\n\ZLjffKk¦s¡«³Òè¸¥\n fNßYvÊS*ptáôflê£\n(ÁgÐÒAkì\n£¾-Ï^Øn;#`¦¦e²#R_AëÄ÷$´¯~\rn/ gY¿Sü&½Ç\'¬ qñòB())§ü]ÉáB@æ±\\x', 'Cash On Delivery', 'shipto', 'Azampur', '1', 425, NULL, NULL, 'BR161520135800137', 'Pending', 'eitweeveloper@gmail.com', 'new user 1', 'Bangladesh', '01720981471', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-08 05:02:38', '2021-03-08 05:02:38', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(139, 118, 'BZh91AY&SYs#;\0»_@\0ø+ö¿ÿÿúPîÌ\Z\r\0hVL`4\0\04\0\0\0\0 F)F£Cj\Z4Â0LM4h$Ô)M¤4i¡OH\ZdÓ!£@Àh\0\0h\0\0\0\0	FO\"dÓbOQµ4fSÔ`\0¸¾Âö<ÄÆcÐõþ¾².&hÏ`õYG°KÏuiuÛ´¸k]êUÑbnl4!ôD%ZÍR÷òñ±ª¥MAëÑÒwã^eÅMßÙle¡=5,$vôªLi	»t\"yÒUhI1 ït2ÆBNAlë9:Á<£ ÈhaP¨7Æq4PÀÐÊ½Í³lÂ0¨X\nÝ½Íî2Äû) pï<æ¨³AC33/l²Ìãt7/Ô©R\ZÊïm\n}FRG±%Ç\n,©6QÙ³7|vð\rõÇIÉ¢u/_OÈlÉS9ã#*îÃ7xçIs:\n4ÇKN8Ã²lßÙ	îÈY¤°.¨ÖÊª0YrQEP~Ô 2É@¤$PCcÌÉ½¦ì¡!^*0Ië#}*VïX[¹¶Æi]Í®÷ÀÓ4åÒSFÔ6\n*ìRØ*ä±*=øuÃ\Zª©¹¦ ªM½°åÄîû3Ô|F çAÍyLw<LÉxG*w«|Ù(Õ\r¥çk²=íÓõæxlv¬ò?SÓè{,ÔÔò^T&¤uóÐÈ8·iC­b5ô!\Z\'Ír`À¾õ5F¹0hl[Öæs6JìÙQËuñ ÉuiÎÜ5¯P¡&ÅA·aVªÇ±ø27\Zf)¥	^3¡\"È±Ø=7÷Æ9Ï`Jºp×ý\Z]|OÝ·(9Hg@Å£	;à|.ô!±$s±¢ÄBõpÁÎÞ%Ä[äo;K:b$§²8][1¾Î;Ð²9\ZýK«¼>Ôøò;5Â±ÌR\" I¬j)¢\"D°Zú4ML0£ÃÖC\r.]\r§Ê\\í8(4(AHp,ccb3ä,x4ËP.:ýsWÔi1«ü3ÌJ%Ó@ûðjG`Ól¡Øc[.9,Ç\\ÍóÝkäÅÊB/Àd(9+ Î ±®=ÜkÍñtü~`¿zQdc$F\r¤i\n\ZLjff+i¦ô¸ÀºdØntÇZÂÈß¼Æ½ÊÁÆ]2n5ÁTÑéFQLkXSê\n£$½Ø[!<°ØtF¡	ML\"ËTF½Ç§QðH	o¯}ml/ sàu³þÍãøîï4\"jâîH§\nÎdg`', 'Cash On Delivery', 'shipto', 'Azampur', '1', 425, NULL, NULL, 'BR1615201465p100138', 'Pending', 'eitweeveloper@gmail.com', 'admin', 'Bangladesh', '01720981471', 'gsdghfdh, vgubuibuibhui', 'dadad', '3535', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-08 05:04:25', '2021-03-08 05:04:25', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(140, 126, 'BZh91AY&SYý% e\0»_@\0Pø+oô¿ïÿúP»=¢lv AvJA@ÓC@¡ \ZHÐ\Z\0	@Q$m@\Z4\0\0i¦¦Ô h\0a\0\0Ñ¦Ð`\0\0\0\0\0\0\0\"A\Zd	å \0\Zx¥\n{¡ÛzGø`ÂIÎY½àèè³D(ê\"tK1Ò(áM#¶ü§Tßì¦tpºhBuÉ2Ùo_¿Ìæ*prfüJèfRÅ\rÇ*\r(AH1àOIFÄ=Åù\'å}`6R&QÍ¬ÖrÎ\"\n1ápFMý¶Ö\ZÂ!ÊJH^f³Ò:!Á`$.·mØ¹!0#­^ÕùáÂGª RÍÜ£©(¤4¨<ÄCÎBu¬ÜMbÈ°Ö]êS2]æñ\r(ä ,q,¡Ãq%ÚP¹E·zÚ_¼F$@câÔØJB2EÔ\"£;¸DÍ]Ø¡ bHY4PbJOe©G¥ýÈ$`!tP%N;´¸8ÖVY^ähª¤ÅA)iNÀlI°Ccì3oCvp¬® @¢h§8ÊåA\\´-:A¶âïZ\Zö³w$\réÍØÞFCLRÍatiGMMnoµæ¨ÛbÒf=¦ä[j6aÊuL4qè¨J\'åHB<ËEU~gZvUògj(Õ\r¥÷]zb©óÝ9Å\ZÏbÈUI¨³´ç1ô\"F¼=@j0´LGC0à8¬F¿2kÄbà*XÈ¾ÁÖ¤\Z£Þ0i°4ï\rÓ9\ZË(¼2ÀÈÀ°ÎÓÄÐd·ñs»³ºÒ*Hf(Øª6ïîWÆðõ7J¦b)à´³!,s$\\áæ3´v|¨c¾y«»ûýF çèB×¼ÇRÎíÊ¤ùPï	^^XHqà,¹/bãÄ÷^)!°Hécd1+:|/)°·ÈÐê`AáH±ÂúÞëò&q	Ù¼Øør.§`yúoó:rÂ±à)P$ÖUÊÑ\"ø^ù}íÓ³wvÑ¬¶º-º%Ã·\"¤uÁv=ÙÜ,x¦d(\"yÏØEjy$2­çàvË¦\"©A¸Ù}GÿÔî# Ól©ÐËý2ªTk@æêdq5¦øCF#)\nRÃ ê4®6 |AqßËz¾nD1 c~L0Â¥dUF¢ÀÈr×Ûd\'\'xIO1«³Ìè¸¥\n&D.[ Ä-³£jÇq¥q}áB03P1óë&`°\rõá&\n£b^ì/Ðg§qlp:#`¦¦rÙ©/qí¼G`Í\n2,@Õó^\'â|3?£P!ÉÉÊ Ô	Oü]ÉáBCô', 'Online Payment', 'shipto', 'Azampur', '2', 4150, NULL, NULL, 'BR1615657235Eg00139', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur,dhaka', '1206', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 12:10:35', '2021-03-13 12:23:12', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, '6801820210313170937'),
(141, 126, 'BZh91AY&SYÙ®\0_P\0Xø+üD¿ÿÿúPþîîpîè­ ªz¦!äÒb4h\0\04\0\0\0J4¦è\0\0d\Z\r\0M©SG¢i£ÔÐ\0©ê2\0`Ld0\0À\0\0*HÁ#M$ýM¡5FÔÞ¨=M¢Cz¦K1$h}ï¹ô$óO±=ÿ1f_íøgYÄâ³qbâX8:k«ï\r.aº2pt©ñ&ê1|1	Î¿5F8$bF¤\"¬2JKbÞ%T²)äI|[·vÍ«s±ÚääõfwÎ.ÑKoèÁ0¯ÅÌsâ´ëëfu+\ZcZ²íwú¤MV0RW,&»m\ZÕ,£:EÄÂ¤qc\';ùÆC #ÆWÈ.-\"ÀPf/kß	b\"²b÷ÈÐ0\\£:ABÙe{Û>¢Ä,^¡bÿ¨È²&!ÞlÜ9\0©®ô¥q01¢SIHã$1bÁhC¢åÞñ@¯¸0ZD¥½­NRT\"£;¸DÍcæ\nt«$ÒÒª¤¤ñ§\Z )ø\ray	I$ê;BµP¦J1¢	5´%4DF# À¢0B\nhÑxNÎ!5|EÜó¾RÉ¢º-0é\\¶ß÷|PØÛTÆ1ªk3f©Òvk*C\n:XÔÍ5¶sTkbº3´ÑÙ r§ØJc\"1ÆÎÅ¡(Ö_øáyÔx|X±aõVï,×­¦*vÌjb¢ª>Ëÿ×$2~ÍºïÔ\' öhçyFÃÚ|\rûáÁ8¥Øz§§åÎæÊÅÄ÷½Ã·µ¤ÝSì}ËÇÉÕf\\TëËt¡Éw&{lqSÛ¬l­#VÔTªÅÌÏ3ÝÑØäËÍ{SâÑ þ¾-ÇËNn}ÎõúÅ\Z« £0+3%ò÷èâîjÅR¥×º¾õÙ´Çu¤º¹vqdGÄ!IYÑè`76¤g?\"5ÄÚ8\\F¤®1a!µpå,ñºÌófx:Qu[ÙOàg«öH|âCé¨§Óáþôçw7£5\r¯0ÞÓms£,ã=?y=\'©\\üåææ~ÖYÞ1ëäóðR­ðK­½MòL\nqô£òÈ¤¥¡uîIEAIZÊ½;²XÄÆNÄº¬ÎJ>-ãmÞE%JgÑåÿóä©LÚ*iòåo.d³±ô¢½:Õ¬um®1FçÂ4uÊá³¹ÏZáu1´½ËiØl²òÎaQÆQGQ¨ÙØðreÌò:òN|y*IDAÆ\"\0%$Z¤¢UFNmÝúihÇSÕ7cË.½j_J80ZÓðxó»¯Z±ø²½Mmö¾u1ZFîRÊRÇ­oálX4&Êë°2hú£õ¤áÅO¯É»½#Àõ/&3ÙÎ±nþªéÞ°¢ÝÊfU{ªK7f²¦ÍXá1æ:9a?Anß\"jÅÜN$6GÇk', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1080, NULL, NULL, 'BR1615658583RM00140', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur,dhaka', '1206', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 12:33:03', '2021-03-13 12:36:49', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(142, 126, 'BZh91AY&SY2±4\0·_@\0Pø/ö¿ïÿúPÞîÌÐ4	Q\0\0\0\0\0\0\0\0hA\"@\04\0\0d@	5	4e\Zhô¡¡é¨\0F À\0\0\0\0\0\0\0HBdÑ\0M	¡Õ=M3H2iúMGCÐó7\0Ø]J	=>ÎÌAÃ×ë³\r	lõ	ÁáË(õ	aÓ÷­]`2êRÉº!ìPMiwµå£ïCofYA#mÌôR¡¤ìÐAAðî%µx$9CAcyÔ§h`\\ÇH^D£Á$çô°bDóÏ94#\"Yp¸5¬ÅDð`+0eq\\o5³D;\r´xE Ëâòfï«<`©|V)´0t\n¬Ì½Qab$¶E(»»2æÌ(eãw¯8PQÔÃ\nehÙÁaâYRjQÓT&õf$j\"E!!SRÃÈ,`¤#À<<ÌÈC@(Ð\n¸d¤\"èèûRÙ? ²H1`]PèÊªÁeÊ2)E2yµ\"\"ÈÀD\n@RGºRò«îïm$+KC HôcD©¹Ø¤jÔ\\ËÙ¢b(ÔÆàÄÑË]ÉêZPZY§Q­@CPÉzV1Â÷¨`\n{LA«]ÂË  ¾ýñ6Ä<Àf±aÏ{2¿Q¼u!®«äÆMÆd¿l*£Hpê{µËûò:A¨Î+DçÌù_¡ò2ZÔÑt%ÀÖ\\iL6¢E\rÊã/àt£ùHFÆ2ÊØ1qu¡ó8\"ãYa2f!Z©ÌÍ%3ÉÁêC±4i31,\'öú¿º»çÏég µ&v*Q`}ÁcXÄØfLb(\"r±qÒ°Ç2Èl4fã2ú¥E7í?¸Ëhz>§¾ùñ.ÔÖ¬HîÀÀ;3úà3ä½ç²ñ#º§0Â¨ÀÇqáßB8d£÷&SÉÕñ*x|JÍ¡;!o\\aµñ0 öcXãÈvð`wæ(C+ÐR)4<ÞFùMUHæêì(Ry(CC82e\r§¼\\í6Ph5\' (P®¾°pêhFFÎÏx°.&8ó½Hæ­AbengCD ÒjÀßñØ?pÉ 9^IaÜv£Ø6\r²Öèeña\\aÆ\'\n Ø:s¼d°79­ÜÀì¾Î>G½×Ì#éJ\"b!BÀÈH³)ÔïßuCZÒâ)¯y\\029BkUuÇKph4³¡Þué{9ä4QÔQFQÛ(Dp©#Üó$YX7VC:&H&F,½X+ÇòcÎhàê¸!÷ùÓØÄa@u7a!ÍÇVKPÄ¿CÇ\'Ú@öL\"jâîH§\nFV&', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1015, NULL, NULL, 'BR1615660667gi00141', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur,dhaka', '1206', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 13:07:47', '2021-03-13 13:09:23', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(143, 126, 'BZh91AY&SY.R¦\0Ìß@\0Pø+Ïôô¿ïÿúPÏ*\Z2I\"h¦&MÓ0Éh#Ó\0		\0L\0Á&¤ÔÒ¡ \Zª\0zC \Zd\0sLL\0&\0&\00\0LM4ÈÒSô§ê¦ ÐSÔ6ÔÊ8	Óq¬ï\"ù!Ò6fI!¶0P¨Ékæ1ßäºÉÌdH©1¶°hUÑBÙÿoSm«EñºY­c7{þ5É²	:-\r¶[m\\Üo1¸r3ì0ZåJr+È$Ay`ÉÀê¬	d\Z=bT%ÝBñxò9 Q\nD5×]nhËFJ@Í]3zQp£u\"R7Zfóa°äC1D\"ÀPTÖh©e?Pz¨ÆÄnõ6_G`P¬éwpBØUÝÜ\"ÈbêPBts4°Ì@A¡B¹$.Xø@TPÀÌY<LßKfÌ*PLÄáÚ·\nª(T½¨\nV¶½î*`RU0T£©+\nÖ¡Unàÿiè¿ðHØ@<l¡Z©L\\R0$í2ªdH0#&*@¤$D(#y¸î7ÎéHYB@AÛ6ÝUr¶-ÝQÚN4Ë8LÙÛK\ZÉ¢[A¨ÍY­#i&mUÀóvJÎÚoC]3XÓBÆ¹ºÔ¥ãÐÒK/§ÈäzØTÜPö/ö ¢&ÇqIa½J =ºÔ¹X²¢eQh8_\nw\nçÇ>c>Gï>¤mxª©øBçöüÏÔÕHÊªÌüåRN!ÀÔu6x·9-F¿2ÔÚï`m.hm1 k÷±4h<#&\ZlàÆ}3a¸¶ÍaFÃ&.!ö}OwwïçK¨2¬!°¨ÛW½Î¦OSêwæÂ£LØ)&G´²3±%ÑsÌ{p_Zñ¦Àxø\ZêZTNäû¤ÝE²\rjquãÄô«@y$qä-Ý©÷^ çsÄBU<ÏNÖ\' ¸IÀô0AÛPU6B×L~åðö(r\njà¼ÇÇÄ¿RÜE÷aÞzù}0´v`%­UÉe\njºJªÂ¡BXäXµh aQ«TË8¶ *KÐR8«ÃÜÚB×ÀV4!Aa¿R{-,5ø\Z2´üxGmÇB©A¸æQû$aRÈØ5²*Ñr ÎgU¼vÐÞp§t!þæ+´%R\Zj2\'ÒÉÈHÏWÏ¶|NÎ¦SSÐN0D_RQdcÂEÈHÚ±¼©ÇðKÄU_¹´ë(	%ä\',Pa\rxïPÏ7ð-\rhu5Òpg!R57(È\ZO|T¡æö´rÑ«d}±¸gá÷2CÙ©è	QP#¢+cáÛ|£¸$ Ço¢å`ç7(ëÅÖçÂpxá?vîE% Ôÿ¹\"(H)S\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1015, NULL, NULL, 'BR1615696706nX00142', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur', '1206', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 23:08:26', '2021-03-13 23:11:54', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(144, 126, 'BZh91AY&SYguä\0ó_P\0Xø+OöD¿ÿÿúPþÈ@8\n\r9M0	À\0L\0\0\"B%6\Z\Z\r§¢=M\Zi¦©¨ÚI©)\0z\0\0\0\0=@\0Ó\0\0Á0\0\0$#\"hh¢iOÒÔÐÓÔõG¨,Lp$y|NIBó¨Ï §özz\\d¢ÆK^ÁêýÈË¹ öþ]G}Às¢Ý(äÏt9ââuU-®ãlÎ<?»8ØdnV5K¬l(m-°u&Aå·QÀ¡¿\rXê(uÀÏBý ÐXDæ@äTÚfn(.ªÆ\0È	ÞÇA-¤·§8Dï¤¼.-2ha¤¸a!X/ PÕt­Æa#°dfË\Z`ò4BiV¢X\r±8º¾F¤Á6°k79¬É#6Ô67%6[$vÂ*ª¦û$E4\\«®i%¤ÚLÅÌãM¹àgh¢H,ÉCrHV.	±URÌÒy­ðuQéU	;¼ªP´IzÎQ3!¼ë82+Ð0¹Waì¥Q²µè¹®õ(I±@Xª½+U)ÒJ*Â0±hFAb,HSIQÂ\\¹mÕ!2 @/.µÑÖÖÁÇ:ìßg2uÌáã|I¸8¨ÑµI¶6{\räØa©zfb19¢¸Ûm«ûÍpo½iVcE-àÁ\"éè<Çó	Ð£?9ËcÒÿi¶ß#cÞwÜ>ÃË^ë_{<jÚ±h=9Ò¡göø« Ï9ï äóJYÚ~è~þg±ÍHõð¡5#xn1\ra°ìfÂïxø¬¾$%,Fi®b1`d\\`dVÁÖãD`:¢Æ\Zl\r÷¨gCè26eT2È±Qx|QßÆîþÍ&ËíqPÂÆÚÈ¯\'ìxÎ³rÆ»8#Ñ#-=D%!I¢ó ò´v|ècõ®ãØz~£]é±!d¥Úe¡»jÌé2EðJ3F#ÀYs^\'Í{Iw^rCAàª0gq×Ä´r3: ú1	SÕ*Âê¢c:ûÉÂvBâp\\Çó7ò-~àø3xçÛ ÆGAHXÜ)Q\"X.$¸ùalAñíeÓ%²U#¦xÉ\\Ë (K¨¤8+1±©ó<eô\n=Iw+\\4Ê«ym\ZJ\rg\0ÿGÿHÖÂ3cF,sYìLÍÓÛ~,R¤maNÂ3*i«éåwGªâg¼\'HP´DÄB\"Ú\0lICI\0mPÌÄÝZÂ)Z\nÀ­ùLs@HÀ%f\"`Ôâà&¬r0´ªZÁB05¨ÈÌ%Â(L²°^±´PzTjaâ¶òæa«YÜEëDG_!éØ@#hÊ£lf%I\r_5ó?¿µØuëÞØ))§ø»)Â<Ã¯ ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 605, NULL, NULL, 'BR1615698506T700143', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur', '1206', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 23:38:26', '2021-03-13 23:40:50', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(145, 126, 'BZh91AY&SY\'<Ã\0Ø_P\0Xÿý+_öÄ¿ÿÿú`_\0\0PDi&&	¦0`ÀsLL4a0LM0	C`FbdÉ£	biL#0¡O2§¤ôôÕ6¦Ô	¡ 2&ôMi&&	¦0`À$Bi¦S5)Lji§¨¢ziµLzH¹#D%;ü<H>)ÿ+Óâù?%,Á{)ù°ýa´²Ìÿ{¸nÒ©ýÿì¶6µÔè¦S¢aÉuß¯/ùbßãÜ³J¬-RÅ+s³ðÚõb6ß·g6ãkë«üåÏ,ºïÜús|§»ºÝí;~jz6læäºÌww¼ÙxûÜ®éÑÕ.èþN·W¹¿µ!%?b|ä)Öwkw7ÔyzßÁÖûÜ&Û::\\Á<\\ñô¾ß¹÷aû°ñtIR¤J6¦(éRLmeÕ:ê4`ç:Ø\'Es*IÐ£% äp±hn©bÊ)\\ù^ìÔÍµ±nï)}Öªh¢Ü¨´YE·ÂÊÇ¦æCKKJ\'%µ}³¶,phIR¢T¤©¶o¶6ºåª©r¥RFÅÖÅ5vf°±LiB¥Kç9ÍõûÖ\\1%¬ãô>³Iz¥BÍï®×Bì(¥F)«^úæ§E,áSeÖe³K×Ze:9c*85»[Ë¸*b^^q8*^8a²o10Óy³;Öói3ÓK³7j]iyiysSf¦¥¦ûLi²5¹F¥æ¦K\'\r\n3+GË­6Úe´ÔÌÃ¾}Ò\'þU	0ÅT,è*¢\r\ni1´!	â\"Atd¡¢©*IG5Ihï¥J6¸¹uâ/I@ª+±®É·dÂ?\ZuâY«2Ëº¦i¥¬¶§n[WaÙ°âùÇiÝÍ±N8^o½Ì¶Âðºé«¹îÂÔç=[w,Y§*mZÃVWXaª6¢üZ3¾ëål°ç\\©Å8ÆêsÝÙ³bVeÜî«¯6Ã±9]u(òSÞSë~ípõ>Ö£èt)¼Z}A\r\nþ\"âì³Ai¬÷³Ñ40suå{ÝQjxlRÕSJ*¡øÍæRêª;Pv,4ù>¹ú*J|µÝR£|Ë>÷£ù¿«ùò~®qÝ.ù7~EBP/3 è1ì.5sy¤lyNBÓqïTð~KÇµú¿ÚíçÉi§±ikdòâÙÚño:ÝEYæè]Éi¼)IIÂ¢Ô=cà¹Êry)ç6~×ÖÓ®~oÍÛ02öo$îtzðv:×=6óRúÕ«zÛ<Sn4²ËZ¥UTÙ356>dù:LÊ*T?Îi.­Ë©ÄÄè´)Ü»ie6ió­Ô§j±^Ü¹Ë»¥tEå5<§Ëú*x8SMÚK¿ªùç6&\'óL¼^juJ¿lõ®ø594Ãg¡/:Ý\'²QuKH»éNÙ×.ï9@øYÃ:BHð©iÓµà-.êz7Yç9¥ÝfJµ§9Êo(jMá=\'ÚÃÔbq.ÇÅãeR¾³ÃÍÏð>e>ÿ©g°j{§ciØ¥\ZôK­4ÎJÒa¨Ì_òy1_ÅM)ûNQ>öÍØJyÎv³Eä¥IN¦ÌL±.©OZñØÊÉÔ,:ç©GµòwE½1wÌ%¢ÄW f7Ý³À®R0°ømu0¹ßÓôl¢Å1æØðÖ`Y8FIèì\'V£5Ç¤pì¦Ó¢ï\\Äî½¬EþÊG56÷IiÏ°n²ðô\\ôT<ÖYêµ=ÝqôúS\\«æ¬4õmOËìÄB¶(¨P0\")DDRA¢ Òf/[C3¾O4ÌúÍ§xÝØöÌH]zÜ*¨Ù¥§}Øª«0>-LEHä=®s¼äâ9¥¡9»%©ëT¹³sØéki9ÌÚ:*vÆX?ÁâÞ:åß­\'sTSá;Ü§IÖùäGÚ¼Ú%åçZy/ø6~m1<çëéNG±kZ¢Êu9®¨e´Ìµæú?£Ýÿ\"GÑôÄª$\Z)ÿ¹\"(HÍa', 'Cash On Delivery', 'shipto', 'Azampur', '1', 605, NULL, NULL, 'BR1615699210lX00144', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'gh', '7y87', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 23:50:10', '2021-03-13 23:51:19', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(146, 126, 'BZh91AY&SY2È3c\0L_PXÿý/ÿýä¿ÿÿú`	?A@\n\0\0\0$pÓLFL0	¦bd4ÈÐÐ4Ó#Ói`\r244\r4ÈÄa4ÀC\0a&&CL\r\0JOTõ(\r\0È\0\Z\0\0\0\04Ó#Ói`\r244RBhDÐ¦&h¨ðQä)úFÑ25$sãÜ:Ïèv>Ó¥÷)ú\'Øÿ	wîÊï¸»û©Nå×~½%Ø)ïÍK0^Ê{avecÝvÍYRõ?5#ÏÉlkk©ÅOÝ¢]MßåL°àºï+Gßs#ËÕCn9j´s.&Õ£+k·N0Ù[ç6Æ·Ï/~;©exÏ+Úæs:Ï³MÝlºÝMýtÝ«fN\n~|\\îßSË/µÎÓØ×ÄDô	\"Îk¡ÖO¹\'ÎøÓcá=¯ÔÕ)ö.Ñó­Îo:]iK¸°±J:1íh1wÀñ|®	1*D¨IÓMp,ÎØÃõØ©$s$úJ4(\ZJFî½Ü*iF98¾æIRKµZcëZª(¨¹TàZ-T¥ZÎp¿{Å2aSv&%¡nÎáGC\r©I¤*%JJ°Û]/¦Ü\Z4û95^¨ÔªÑb70¶ÛÝÕc-¼¡Rlç¾º¯ï(ÑD©IVfqÈ¦\nKÔK)-*ÓKßp.æ)¢TÓ5{ç*n²Å0ÂÊjºÍ\Z²¹Åu¦\Zol[.;SU×mMÊ1//17/\ZÌÍðÕ6Je´Õ¦Õ«i´ÐÌÒZbi3u¥å¥åÌL³3-6ÖjlQy±dÝ²bY¼×Y£Y¤Ãºy$Oyï%áBÖ\nªF-I)\r°¬Ã	I\"`MaÉBi\"Md8E,\0dÓB¹ÒBØRPSi­vÍ{dN)!?\'L¼Õ4rÌÒ³]¦,¶nÃG\r7ÎtÕm\\\ZnÓEÕßDÑÇÉu\"Í©¸êÂ×YÆÎ9¶Íqf[ëi3eppÃ:\ZÑ}í4Ûeô[FtháMé¾6SËÑ½1MëH»Õuæ¸cf\'®¥C±Îõ?é£À}\'äfçëö¹=CÊù_Sò~/3ó³¡£ös?WÎÐç,é~!,ü\'ó0ûM_vÝKyýõÿVÏðò:³ü½ïýu<b¾¢rx\'Â>óvk§(24UÎnLuU=Å,ðAdºzÒw?ºaæ×BÓóTù?GÞÃ®TrÒYäjØÜíSó~\'ÍOôèÙwú/xûæK1\nySøSµÎ¬ÂnÕà;\'Rjxä©Ð÷ÕæS3©hñW%«BwÊF­\\ÎÓRÒvªsM^x]Åiô¸I8¹¥\"*¢u\'bÏ$Õ<íÝM§Dàé3	Åxµ5j|Þ.gZ#¥¢çzS¾Ú©|æÕ­kÛÝ,×|RÌ>õ­(Êª¦Éîm7=éó©ü:ÝSYG//RÎtË*ÎRó½ÔðbNÊYìhÄe7lõ­Ì§:±^®Ë³Gl®HÄ¦&g{âþ<ë§©êóÒæ¯ûx5Su9¥_®v®ÒS¡ÉfN¥	Ìæ?±ÞîaÐ´¼ó2ðNÉÓ0L>GÂ*IT3wdRh)èhhòLôÍR|î÷sgs3Ð-.ëz]Ï+¥¢u¥×u4ZJµ§Tæ&dÚS×=¬;ÌN§õ?`ªWYÌîô8îËy«ïSÖéYï§o¹àÖz\nQobyËF&ÈÒu-+dÃhÒ_|n÷àíkR,øÛÎiõ²Ë	OÏ5gK²TT±1,©Gòv.ÔýÂe«Ö³2}L¹Æ«L#¦zv?wdØð\'Lô*)´ÐËwÃ;CHø¡Æl©NøTgàòLyéù¿åÔðzsWîô\'Ê©ý^ZéÂU\Z¬àtÏS1¥GÀ<®88S¹Ü´Þs²Ã¾iÁx·ÓHõ0³3òió)hY=j<U&ïymfÏW(øýtÏ\nñ¬´]:D=À¾ÈcRAcI\" J!\n+Y13pxÉ¼óKCI×\'Y¤ðm5¹Û:Þy¤K)4iSqwU0´´øSu:¹ðÁÄó,µªÅÊ2¢ÀyÜg	y»hÜhâèRÆZ;\\s-k°á8\ZÇNÑàmçº¡½ù§{yÆrxÉ<Çy32òóÍ»Xöªy§ê]ëR\\Ù¤ìJnâyµªK.qYPÑ´Ò?ñFX\rþtè7··áÏø»)ÂA', 'Cash On Delivery', 'shipto', 'Azampur', '1', 905, NULL, NULL, 'BR1615699558Uu00145', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'tty', '1207', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-13 23:55:58', '2021-03-14 00:03:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(147, 126, 'BZh91AY&SYîUU\0¯_@\0Pÿý+oô¿ÿÿú`ø Tó0URFlQLs\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&ÀSSÚ£õMPÑê4yG¤\0d\0\r\Zi @DÚhÊxC@h\Z\rQ¦M¤B&§¡¨ô§a=@\0=ChH)Ì}Þ0<b®ñî(P >gì¡òRÙOÁoðËïi³kS_uº8l¦*u#û+^îSþ4SN·ÉÛgá¾íxuÁéUËÁËv¨ÒªkV¶¾vÕå¥*EðàµkY_	Û?mLãi5t<Æs9¤ÈL4aâêÙÓ³|5z²¿+æYÿC^r	=	áùOCU<¹ùÜ|O´úÊS¹%ÉBTIù©õÑx\\+VÂ§}G°Éh\nR¤¥\'EI7)(NéÍµSTnQÐ Â´¨Yqqj.ÚÆØßÜóiÁÇÉø®9+*ª\Z.Q;/Xë«fu¥Æed¡¤*%JJ²Ûmc[c®Và©¢«#m[ç,j]\ZhÁRÂÙÛX¶«l¹e&¥&Uc<|Ù*T*Æ±©-E­rðÍç9åNYoS,­MØ[MÛ0y0µ« ¸XÍv0nÃFlÛ¹[3nAw\Z-\Z1nWÁ»@«FMQ&mÌL6Ko7Fx(ÌÄÌà´å³R¬dbÞíK¶lY±µzT¼ Bb±v(©¹i+åRÒªVq1Pªj*Ô¥2)^Ê]ÜQJ7T\\Âº)\'EÚÈº\"¨EzUxNÝ¤NáBwjpÞÛ;êË¶úmMekÛ¹ÒÝ2ç\ZÎËÙãlS;¶fº`Ó®X*u¦Øu¶Ë§\\ºêøo[Ûå{j:/-©Nq6ãÊÓ»9tÝtéxi­Í3NkS¸Vå-Y-²{û\n}Ôô?[íy7}/2F2Ã1ªx JãDd2*2|¥E¾b+(À;ÅL¼i®¦2°Ò$@ÛT.£2\"@*w/Gy¸³úLÎÂaVG1ñ:ÎÌOñ43;i°ØÁ\"§ùÊÒw¬xOÙ=¹S½ýX3«ÁqíWëDïRÑmÝ^\'s©V³e½§EÎ$ºJJ9Tº\'³ËÔ§ÙèáàÞv¥¥Ë8TºjIÑ;:<õ<îÏ­£)K¿rÛk®+~=yß6aE:(X¬06\"#£w\0ï u³\nBSªa*ÜÌNË¡OFÆí:û)âªG¦WIB#0`³Àñ¤2ÏPIÔí2µ=¡Ñj¬z·SÖ¶[M-³è&\'.O7¶Q2fy;ï\Z9Ì>D\0<&µJ%Äúdè¡Osªùù\'ÓÚ.aÞ÷º-ïö®çYÒq6eIïS/XQÅæ³p@A{,ðâoqØLÔÝ¯)´Ì¹d	79&,4,Y3\'Øóf¦ú[NgÅ³gFR<ë7m®¦baPîpÔÌµOQ©o[1àåi¦êm\'aKÉG£ñ|ÒO(ÂwOj6N)qk8X¶å\nÔR\ZéËÃ iMo+H6³1ölN²i\rúü\Z¸k9a\ncM6H.2§ ñYkçLM³Y\'`9Ê\Z¼Lªj\\ÂK:©púX>\n¢Öò»p÷÷GÛðÛ¦î¬¶mñó)IPR¢¿E,T¢JTE¨R\"ª$]B\0bÆÆå»©xW`Õô7ng7LHa1S\nª6erçº§/j¥U5.*G#çtÌNÇIp¥©IfÏ«ØîÚ]îË¬ê{GÙRãLÉ}KáÀcS°ÅÊä9Ö¤ÕÃi±11<âçµü©ç<(¹ã0©o7)ìbî¢Ý­PÙ¼Ô~Å\Zï|;>óÒ\'â@¶Þ$&Á±Cü]ÉáBC¹UT', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2115, NULL, NULL, 'BR1615701974Tw00146', 'Pending', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'dhaka', '1216', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-14 00:36:14', '2021-06-02 00:53:56', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(148, 126, 'BZh91AY&SY²ãE \0Ó_P\0Xø+ü¿ïÿúPÉáÄnESU£¶éÂEM\r©èh\0M\0hÐh	MOSÔ= h@ê\0ÐR¢&C&#LF@æ\0	\0\0\0\0\0DF¦&Èbd~\0Ðê3MHD\"°÷1K`¶Âc<Æ5\\JMzäÑE¼#ò:!~±dÇñp¨·J_»8\'VvËF·æª\\]Ç\ZõVuÇ\rA.¼3ÖÍ~\rk67X³^oVüoÃ»WvÂ]ÈàD(³FáÖ£S¨ÂDóhñ\rH<GNRbnÕé;«0b¾!\ZRD*ôPÍ!c\"gwÝËÍ$Q0Iruu\Z<L¸¼¬¥Þ0/	´\rSsJ±åX5ÐÊIN¦2K\rUUMÙÞcb1¢3*J4I34È\Zs4»|äzJ($ÍHw@­IÖlcÄ÷3­`9ÞnZ.ÄÍÕ<½ªP«YI¨«¼Ö´*Ø0©U°ÊvJÚÌ£jüÂý(þßàh¡&Ñ%ø*ÌrJt8ihÃ\r1nÍbDHK(I2éÁ¡hÈmWñíbÀ½ÖGÆwVIá|FwØòUÙ¸ð£ÂgO\\áÚNutuY8©8È1ÞÆÌed3\Z£®xã0ç¾Ny­®ÜqdÝ¦¬_ÁèÚà½Uï\"=çÑg}§âÉ]#ç8fEÞTèfI©KTêQÀ  6YFÁÂã\n3IÞzyåbDKFÖÞÔuvÆiÕHbÙ%¿UÈuÈ²ÌZbeD|ìß1e$ÄÈØhÐu\\æÍ­ló¡L¤¯lX%¹ôP¡IïJ6ã¨q)d&I±LmÖ*ªU´±ØÒ²bZQUj1®µ\"2KÁVhsN¤··Eü4niËq¯èk!iÄÕÙÝËî{èÎª.xä»âÈäã%É§²_R1çoxóD&Pt%(R8Á$¼_++Üº·>|=«´.¹ß¨ÂC\\#|~d+¤/ïS»EûO|Tnñæïà§*¥f3±QYEv^rjÆZÚ¢=Ùu04Y1Z&²Úý×F¦òESDiÉ>PÛÄWñðdäÿHçUÒ4ÊÑªõYû¦BIQ­¼ù§Ù½NI^¡É§+â.Ìác©6ÉÔÛvÊB^sWê+\\S+*+ª¹¦#b6ÒVÏÃ¹O	Áihrt±)DÁÍ0K3±)*Ð,\ZLjfùImwAµ,¢å*QÏBUã&ÊR;·Q¡¥jLdäÓpcY	Ê2G\'3ç(áp\Z]ÚE5!¦Nòa­/Ë¹Nøo/V\"ø¼¦ß\nkWÝ=»|Ú(ìQ©.diæ=~{Á>?R49ü]ÉáBBË', 'Cash On Delivery', 'shipto', 'Azampur', '1', 530, NULL, NULL, 'BR1616127102nL00147', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mirpur', '44959', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 22:41:42', '2021-03-18 22:43:40', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(149, 126, 'BZh91AY&SYÁÝ¥\0øßP\0Xø+?üD¿ÿÿúPþmÙÚ\0tOQ=#54É \0\0@Ó \0\nj¦\0L\0\0i¦L$ÔTýQ L@\0\0\0z9dÀa0L!#\0	SÄÓ)Ó	£F¦Aé¨H¨$b3èoIÞ/AácÃÂÅÊ-|#_îEÝdä2C/æ*LUÕB®c´\\fC£û³»¥ÊÇûúã ßÐ6<#ãå¢GEGÉå%­ÑÔ+âÃ$AÜfuÔ{ÍX}åÃ#A2O@ÂiÞhxëM¯×¦/Íà ì!!ãÞÁ6Ûm¬Àè±R_-#R¡PuÖùÛd*:V3y²sÄ1A¼f^qæn!b¤\no8-LÍ545Â\nÝãZÜ!bÃM4»L2PÄÊÖfmÍ\n\Z­ÜÍì3B1(P$¥Ë\ZB¡P¡JÑi{aTðUj\rf)&`F)hÜDHNHLðÄdª;ÄÌj\0Àe& 8cp¥EÂÉÉô¥!?pbB(F ,U\0üBÆªS&%¢\n0áJ\Zj# À¢0\0UJ$)}z\'ýD,D >Cªk²«:Ø·UGi6TË2l¡)9HÂ XAJÊ.-IèÐLî!RXc+¸c,§m$0\ZÉFÉ\n;Äf 1Ä$ÏÌë\Z?=d­¹øÚwàKÍ_ófåVª0më|§Æ\0dBaÔ4@®ÂÍ##ÈäÆ,Í²SEµI=ËÝRM°Ìu5­eMë1¯Àe1ÃJÜÀ±cCC(Èx#&\r6°½Ãª3CYm5©	Äe¨ÈÄbØO ÉÛæw}ÛèËãbAQ¶jâ¯ì]`yÔÖn3+qÂfb¡281K!	.æ!ë°y>V,i¶ºoo1óñ\ZÛ#?ÄÉß­AÛ$A8{	yÅ«àçü»À·ÄBõÁÎAÓ§äp1-Ú-òo6g¨$Mpµe°Eyý%\ráLR\\PØöñ/^°Ìð`]Þ#Z9H°ÖU$æ¼çì2ËBñ©ZL\r%LY´¨±ý%Ü)*\"Ín}\rHÛÈZpbi¨`súÑca¦`{±öìÇad¤ê8ú?Í°©ÚiúÙhÖÚ¶ÙMÔë?[!2C!@t\ZW7A² ¹Ù£º>ÇVzð1{*I@ ÈÆ\"H	I$¡¤Á6¤ë29_|\"»â*¯´Â÷49JÑ\n<qarBî;6I¨3âàVfÖG#<§B¤$fu(ÈO©C]f>¤T wFl=(òbÃXÏo#õÄ!**]qDTàSÈ|7¢@2÷´ ÄØ¡Üÿ	}£ô9yy¡Sþ.äp¡!»\'J', 'Cash On Delivery', 'shipto', 'Azampur', '1', 905, NULL, NULL, 'BR1616127533vj00148', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'iyhyf', 'jhugyg', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 22:48:53', '2021-03-18 22:50:30', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(150, 126, 'BZh91AY&SY½ ì\0íßP\0Xø+OöD¿ÿÿúPûÝØ:rÆ\0Aªf£G=M\0 F \0J&B©¡êi d\0ÚC Ój&jI\Z\0\0\0\0\r4\0\0æ4À&C\00L\0\0¦¢b0LFF5406°HdÂA:ÄiIìNÂ}^÷<üï(Tdµñ,ë$qRcçX\r(Bº[´§êÆ¼Ót/]·tÄE±vì\ZÀ¥èTÊXIXy¢¸e¥64QZb5R)H6q+Ä:$@ÌÃ`uä\\ê6æ@ÎòAo1§óùË	u&ó©HE/Yó¼È@F_Ã!\\,B!Êô­Yà4HÌmeFÆXB¨©P@mÄR´®£Lh­Yµ-%Ya¦×¬\\¥ä±zR\nu×Rké h¬ªÓäv\nZM¤Ì+3{k(Tj¶s6ÐfdP¡,IK\Z,&ñØyJZfV©§.R;¥5,ÅÂÒÉCWT³3Ä^®ò\\I PÂV*QÔÃ\nUUê_$±|ÂPb°-T+U)Ò¢Ug1jFA$bX¦AI £`\\Ã7HL\"&C(\'¹Ë ÎØÍ+9LeÔØÑ«\Z{QcHÀ«qPFZRö´µîkÄÉ¥hÎ^Ç½¨g2Ä&ïyë;§¨ß7x0þ»MatQþ?crí<·rìSbB¥F\r öÛ:ÄOÍÕOÏÐújv¢Þs?SÜ>Óêf¶©#Þ½u(¤ÞÇSXl:ÀÙ°ÃÒ>A¯	Nc8ë Ø\Z\ZÜ2xàqFCÅ2`Ó`la!¶§q¡°ÃM #aFÌF-áö}ã\'vvëãFZøAHl*6Õ\\qâhm2*5ë ÌT)#Ä¦¢äEÐgPîùÔÏm5áÃ¬þ½ã]eÆPgÀc;¥O3W\'ÅÛBJá8#	#Ê-9/Äû¯0\0t±Åb!b0gC»ñÙ6Æ$LÂITÕ<±a( ÎïACxRè\\ÅÈls\"öÜ¦oó;xatÖx\nDI9.ðð0 Á]* ì½JÑÆTBdtfâVH\nRïÚ0ú·³ìBi¨btñ\'È¯Ó1=CWöuGM%RYØðþµ°©ÌÏêg*Ñ rEÎkhðÌÚn§T!þLVÈEõd è4±:È ÛbqÕååGÉî¾<PÂ¤(ZJ\"b!Ú\0l\0$ÚÀÜj7ÞðîKª¼æ6ÜÎÚ $MØX¡¹mP_ V\Z¹ÌÊó{HHÈÖ c ,de<\"¥«cÖø1F¦}¯°gi­gr8%E@.(ýÇ¬GPÌAtØPF9a×Oá.ã7¶!>Âææì\"j¹\"(H^Ð@v\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 605, NULL, NULL, 'BR1616127988W600149', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'jijsdhx', 'dfs', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 22:56:28', '2021-03-18 22:59:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(151, 126, 'BZh91AY&SYºgó\0´_@\0Pø/ö¿ÿÿúP=¬#d4Ó\0\0\0\0\0\0\0\0H&jz4@\Zh\Zz£@!J*PÐh)ê\0CÔÐ\0À\0\0\0\0\0\0\0D Qêj¦Ôõ\Zd6L4;G(Ð?³Ø1\".4>ºs	8(±×ÄzÇ¤Àdÿ²cºà;¨·J^ÆlYÝqÚ©nî7©Ïoõg[Û]ÒLå³i;ËÍÇgÜ±Cuä¨eÐ4 Á#å4ä0ñÔX¦(ïßM¬k¦øP8â*\r15f­iÌC\ZC\n!WWâX\0Û¸¼egØ]64¹¦	´\rZÉºÔ°a\0ìlH&jÉ\nÁ°ª©¿\nmT&Ð6*fj$hs5¡i(¢h4a!Øµí\Z´õ3°ñQ£T&q<<½ªP«YI¨«¼ÙÇ\nö*Ul ²¶³(Òµ~T»Òò½À	±HiÏ8Uä´èá«FhKË5ÐRA\\È\n(»&Êë£Æ\nô¤ç\"6kÓ¾ðÊ3ÉcÉToß\'|Î<çf¨utuY©7c¹ôF2VôNF¨ë{ßsÉLâî´â2Ç\\Á&¬g¤özO ñ<§ ü>Oèñ>C><Ï±Ì¼~®¤\nß&oEÍ\\0m/\ZÙKø7	#áÂ{ÆxluCêPñ>d¶å½HÏáq5#p1ÆÀäÝ¥Ç5×ÐzÆ}K±¦Ûs`m(bm-eò¡¢0yxV¡ÂgS#iL²\\ËäyýC%Ç8uuå¤ë¼(eØ¬mèYGí;ç%3I28-,HJñIEMGÍÃ½éqùä§NGÛð5Rf­sÐÇ¥\ZHf¡*Îl$Y´y9!ë?ÎáJ<<G2D&!¹ã f§^êÐ\\dq: ëHP±ÂÔ²&3^òg0è_ÑÔl|{Sz3íÔîÐc\nGQIµÖ\n¨Ö\"hÀOÐa.UAØóó\\ÀÑ©Ë=âWÂÂÒäR8+ÃÔlFÎÑcÌX	¦Và±Ýù%Õ_A¦Xý¯øïî!´Ì¢Pn:ü¨Ól¸í1²\rc±o07\'ºÏ{KB/Àd(5\ZU9A¾ ©>Í)«ÑÝÞÄÄÐôFÌÄJa\r*Ò\ZLjfó²½!pKA\\½¥«S#¶H	w¬ÂÈ¦è1óp6¯;/KX,NÊ2G\'3æ(ÚØit?}PQ0÷%æÂ»|t-F¨é÷\ZàM**^³Dt%æ<ùâ2Âo£D j³^\'Þnð#ü6íÜAcÿrE8Pºgó', 'Cash On Delivery', 'shipto', 'Azampur', '1', 430, NULL, NULL, 'BR1616128504Lc00150', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'mkhujgyh', 'juhyug', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 23:05:04', '2021-03-18 23:08:15', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(152, 126, 'BZh91AY&SY?àà¦\0±_@\0Pø;ý¿ÿÿúP=ªÚ\"Ø\rs\0À\0L\0\0\0\0M!P~¨h4\Z£i4\0¢TzCG¨\Z\Z<SÔh\0z\r`\0\0	\0\0\0DA4$Ó&ÐH£M\rÔj()SÛzø{ù0}²~\r_w,ES Q¨´°ãéi¶\r d×mRÐ/±láë÷×&¹Ê¦ÎPãCCwq¸®ÎébÆüÈ-s^E9!\0l	)Õ;ÇÈÇèòÍñ,iTwï¥Ì3ð¤`00L+Ö÷¢«Æ¤(SKàÓKÐ\0ÍÎÍhJ`J`@Ø5ZM)U7\r\n¹õ	P*¨LÌCÖ\n	T*ª22,ãÌ)gBb)ç2d¢bL8dq%Ì£\\CÆ\n÷WH·µ©ÀJB2F*QÜ\"f±	\n$$Ø1D­Pe%\'¸Ò\'ëÈ`!@#I%­#d)L]q¤R,R ÅÅ»`²HMgµÇTx]q8\n)ÙrfÔZ»R-:A]ÜÝÞ´£W4ZcSV5¦³0æiYqsx)GLàzlA®s£MRõ4Ò- 5È±£P#°å76<såæ49erp ³ÂsíÐrduÕ/Mè«U6ã|ï>\'Ó¾c=À_yò\'PxÓÜyþfF:ÅÚ¥ÄÐu7 ;»-¿Rç­q`jXÁ©8ÆÇ4f<6\r6p^á¾©Ü[]`#\"aF¦p=~¡Ç;»ømKâKIlUw¬®z#qÀÌ¨Ó3#)Ð°3±%Ñs¨õ¼x}*ißML¾ÞÀjÍrèiÜr0ï*AC°MË3	ycÚt»$;§&¢¤ \r¢<Gð	½fF8¤t5ÒêÐN?9t)*Q±ðæenðþYÀ\ntêxóÂÑØR\\&àSÌÌ®cº\"I²æP¦ÐªÉP¡q¬ÀÑbTÀåI[Ë\n¥ó\nGÑq|Èáâ-6bi¨dy{Iõ,XihÖ=}ñå¸èU(;Þ?ÌÃM²¤cNFJ­nÁÕp´8ißó>Æ-\nd#=BÈi\\Ø1ÎºëÖÝW_­äÐ @Â¥ È©6¡¤Á6¨w7Ú^	tWÔe{2I/90±B!tßnhj¦xd!#3r¹ò0°ZdT Y°úÒôa}Ã=}³Ôì¾#RUB2\\Ñè>~dèSÌÄÞÍn3 n¬½$3ÌnåGúmÛ¹A°%âîH§\nüÀ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 730, NULL, NULL, 'BR1616129039TL00151', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'dhaka', '1216', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 23:13:59', '2021-03-18 23:15:10', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(153, 126, 'BZh91AY&SY2±4\0·_@\0Pø/ö¿ïÿúPÞîÌÐ4	Q\0\0\0\0\0\0\0\0hA\"@\04\0\0d@	5	4e\Zhô¡¡é¨\0F À\0\0\0\0\0\0\0HBdÑ\0M	¡Õ=M3H2iúMGCÐó7\0Ø]J	=>ÎÌAÃ×ë³\r	lõ	ÁáË(õ	aÓ÷­]`2êRÉº!ìPMiwµå£ïCofYA#mÌôR¡¤ìÐAAðî%µx$9CAcyÔ§h`\\ÇH^D£Á$çô°bDóÏ94#\"Yp¸5¬ÅDð`+0eq\\o5³D;\r´xE Ëâòfï«<`©|V)´0t\n¬Ì½Qab$¶E(»»2æÌ(eãw¯8PQÔÃ\nehÙÁaâYRjQÓT&õf$j\"E!!SRÃÈ,`¤#À<<ÌÈC@(Ð\n¸d¤\"èèûRÙ? ²H1`]PèÊªÁeÊ2)E2yµ\"\"ÈÀD\n@RGºRò«îïm$+KC HôcD©¹Ø¤jÔ\\ËÙ¢b(ÔÆàÄÑË]ÉêZPZY§Q­@CPÉzV1Â÷¨`\n{LA«]ÂË  ¾ýñ6Ä<Àf±aÏ{2¿Q¼u!®«äÆMÆd¿l*£Hpê{µËûò:A¨Î+DçÌù_¡ò2ZÔÑt%ÀÖ\\iL6¢E\rÊã/àt£ùHFÆ2ÊØ1qu¡ó8\"ãYa2f!Z©ÌÍ%3ÉÁêC±4i31,\'öú¿º»çÏég µ&v*Q`}ÁcXÄØfLb(\"r±qÒ°Ç2Èl4fã2ú¥E7í?¸Ëhz>§¾ùñ.ÔÖ¬HîÀÀ;3úà3ä½ç²ñ#º§0Â¨ÀÇqáßB8d£÷&SÉÕñ*x|JÍ¡;!o\\aµñ0 öcXãÈvð`wæ(C+ÐR)4<ÞFùMUHæêì(Ry(CC82e\r§¼\\í6Ph5\' (P®¾°pêhFFÎÏx°.&8ó½Hæ­AbengCD ÒjÀßñØ?pÉ 9^IaÜv£Ø6\r²Öèeña\\aÆ\'\n Ø:s¼d°79­ÜÀì¾Î>G½×Ì#éJ\"b!BÀÈH³)ÔïßuCZÒâ)¯y\\029BkUuÇKph4³¡Þué{9ä4QÔQFQÛ(Dp©#Üó$YX7VC:&H&F,½X+ÇòcÎhàê¸!÷ùÓØÄa@u7a!ÍÇVKPÄ¿CÇ\'Ú@öL\"jâîH§\nFV&', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1015, NULL, NULL, 'BR1616129343DU00152', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'dhaka', '1216', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-18 23:19:03', '2021-03-18 23:20:31', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(154, 126, 'BZh91AY&SY&¯X	\0øßP\0Xø+?üD¿ÿÿúPþÍ¸ÙÚµÛa*¡¤6¦\0\0¦@\0	 !\nFÓ(Ñ¢a©êhiI\'©êPh0\0\0ÈÀs\0ÉÂ`C\0F\0\"&éS(Äõ=F=A£Ôô4Ñ PHÀ=¸I&/x¾c>ÎÇ1ºFÉï\rP9Ò1·öôCýiÃ±%4§á£#v.QòL­U>±×ÕFúsÅÌn,py\ZJ%UB	È\"#}fB¢ÖèêD\nñ\0ÎÌ ï2:n=æÓQ¨Ð>âàÀÄÔ&IëPa>£°ó,%¢hW¼<!O¡¨ ô$x5APhcbbÓM4ÈÀêK¡d0&zê1`3,,óÊÿì¨B!Ö&ÔµÂSÚÁ«µ7³J`ÓpK1kC(Ä03ÝÌÆ¨`fEUNê)CY\'vI¸ì2h±É$1(Ád¤ TT®1cÆi6b\'8^dÁ2&3j.ð©:¹L\"j¯À§ Á0§ åÔBÊ»Js¯ÅBrÏðbB(F ,Zøe6ÊÁIL¢¦n%\ZØ22b+õPe$*;ÚöÞÝX@~ã×J«ØëbÛ*;I¥Lps&7|mx-{ssw7É©W¨Uµè0ÊYg¸|I¾ÚÕØÆÛÆhÖ§Ü½NÐXØÂñÇÌd¤§¡Gè±I\0b3ó0¸õ¶äbSÈ~\'}ä¼ß:ÕZ¨Á´¥×©[\0dR1k\ZWa\ræ¡äÛ\nFâ3lÃRÚ¤r÷T¢@ÐÈu5`57,¾##¡$G3e83 ÙÅ×gB6(ÑX]pl¡Új5Õg!8²314nKäÍuÍÏ»ÞÉ3Ó`¢SP¨jX{,pÿNCÜ¬éÅ$@Îj8-t$¹ÎCÖ3AâùX±«ms	ºÝ§ÌjÓ-ü¼.î¥9  ±	¼¼8HãÔ,ø-áÞË¼\09ÞoCAÞ°3´ä:~&óÜÅºMÆDfJ¦¸Yã}¯Ez½\rÁL[ÖÁ±íà]^ Èó@*¸ò9ðÂÑÚ)\"À\\X¤ºCÁ®éÐO=ZÒG9õEL@ÑRTÀåIY>DÉw\nJH²]c6ò­âÈM2êçoúOEyà5Ó3¬âY)6ÃüÌà@v¶ 9¿3+\"­\ZÃ09­£¶FÓ®Pö01XS!b2A¥q¸\r\"9}|­Ññugµ@Æ/AE©@AD\n$Y$Q%\r&µ\'QÊíÐèUzËî¸Ôr-£\nxàÂâBî8é&a°Ë6±;fûFMh(tÎTã8`ØÚ:4´Yb*P;b>WëãÈÃ,Îà.\\7úYí$	Ðf ÞæfyN¡2Þ8<Pð¿¿Á ¤¨6u¹\"(HW¬', 'Cash On Delivery', 'shipto', 'Azampur', '1', 863.75, NULL, NULL, 'BR1616131885YN00153', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'Dhaka', '1216', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'BR2021', '41.25', 'completed', '2021-03-19 00:01:25', '2021-03-19 00:04:09', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(155, 126, 'BZh91AY&SYÍWô~\0¿_@\0Pø+Ûþ¿ÿÿúPÙ¼ÁfÕ\0G0	¦2\0	`\0\04LT\0\0\0\0\0\0\0$ÕJ=)ê\r\0j\0 ié4\0s\0`!\0&\0\0DDÐOL§¦S$ÆHÄh4h=M©ê`$($=çÈæ:àI÷\'ìä\"!Îr7ÑÀo×\'	ElAÑ¬9DÈk°æÎcnPÆ¥bÇ±	2¬¤\"rUJ­P÷òÃ\rTe\nY\Zj,RóBMg\Z*kÈë´¦Ô À%MÅäå9¾Ò±IèBBØ*Ó|S\ZWc	,InÔBH[áá©i\"0Ébj®¤±¤ku|eÀµ*`\"ÀPf¦Ò´ÔlV@ºÒ§dl1UUôÂî¨òK&dJ-ÎiDf(suvfA¡*P$¥a$%UØ1\">IyQITI7hJÄ°êFVD@â È¡,`ÁMºeÌ¶O´ß9ÉH1`gäT\r¾Ù2¡ÕMA#Kk pá\r## ÀÁ\nH¡G¨hÞ£^¨HW J$ÆiJÉ²·P»ÑQÜ¢¤óPf¢9½ÜaÁ=,0öJÁÍ (î ÂXéµ¡F/U/p¦&Â©`°)h¾£¦0Ip¾¾YÚl>Çiô7./>(KÍøÕ{Ì±OûÎxòWø3b*ÕF\r¥ðµêu\nGvýÆ|Àñ G}TÃàXý~gC%#.T#yï]*QIÔS@Ú­EMË!¯È§äA¿JÚÀÐ±¡~+\'ñ¸ÞGz01`Ó`kX=;EÙçª30/ÔÄ>c\'«ÓÎÛwÒØIpTÅQ·a]üEëÈ÷\ZÍ¦eF¤1¦ÐÈ±Ø=C6×S.ªfwIôþ æÖî³ÅîíJ¹ ¡Ì&ÇqÆp!¢Óî<×h	´wÐÆ\"w,ì:s¸\"Û\'QÐ¼A$ªg,oºô^ éì*n\nb÷Å1zÌ-Ô/6\ZÀ§.gN#]¡I-eÞK\\r\\IáQX+Jo¥JÒ`heIQl%h\\@T *¸T°aâfäydf&§òO©epÓ/>ñ¬8mÎ%RQÀ?ÁøHì\Zm ;±ªTk0ëEç%èØe5Â\Z÷1b2°¦B0Äd/NJóq\"Îòãw7Åä\\ÃSÍ#Ð\"b!À²H²$48§s^Î!{$í«ÖT/´\Z¥$¼oaqCÚ@K]{ Ì1âà*ÚÄäeØ¾ð©	\ZdLg|T¡À,²äT }K#&Ô¾Ì<5øÈrzâ,¸¢7ä>2@dõÀMïhQ¡#T5æ2ç¯±ÈnÝâPRaþ.äp¡!¯èü', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1961, NULL, NULL, 'BR16161340194600154', 'Completed', 'salmamaliha116@gmail.com', 'SALMA MALIHA', 'Bangladesh', '01773657736', 'VILL: SHARABARIA,JONAIL', 'dhaka', '1216', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, 'BR2021', '99', 'completed', '2021-03-19 00:36:59', '2021-06-02 00:44:37', NULL, NULL, '৳', 1, 80, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(156, 133, 'BZh91AY&SY:6Ü&\0­_@\0Pÿý/öÄ¿ÿÿú`?\r>¤UDP0	¦2\0	`\0\05&4Ò4h\0\Zi \0bÀ&È`\0&	\0ÌiL\0`\0\0M\'Odi=54ô\'¨\"L52hz¦ÔÉ@\Z4õ4Y#_r}ÉýïO ?ø6iGò~L¿ºÊ~LáOòÓñlËkS_êÜ¸l¦*#ÁXÚð§e2ø7Y8uSvZaàïùq9cÆìñÎ\\4Ç+2ªëV¬¯}Ä\r7`Í(ALÓ(_Ã%,ÖAÃ÷FP±0¸,ôzXoÝÝØ§ óÖêôJû/¤¶¸÷6öÀå$[é{ÏS£Áó=/öºûßAO{ì[À]Ë\0b/®¸©DfT]Ñ EÁI\'¤£ÑÊà©DáhçpÍMR|²\nE\Z4b1R]±µ2¹cí$g!AÀL¹´µ´³Ap|\rÆa¡2H,b1\ZÊÕ¶xð©ÉLTGví®8½¦¨Ø£fÅË0\ZböµqAjÁµZôX/\r¤*³8Æ°Äèej0µÌê±ð¦ËYnÌ²µ7am7lÁû\\na\r1`mØæÕ«­È#TÔáÎÆCfÃ¹ÎfäØ.Ù£g7jfU³VÍBîFN\Z9dä%³jÙÌ(:fÍ\rNY72pÝê_ZÌ>D$¤aB(¡E-VÏÞ4J%\"5hÂF:yâITd M¤1Re¨T\n\"íd]\\Ø.å§VÓ¿ÊDxÔ>¥Ýõ:8¶Ç£}SÐ»o¦Û6Ó+Æq¥ºåÓ\ZÎËÙÏF°Í5³ÏCN¹b0¨eÆ[e×WºÛ:¾fÛ:S|/m©YtÑymLN.kfú^uÙ§Jt§LðçjÝ)t­L:áXbox²Z\ZC vë|z¼õÃü9Ï¸ûËÓÜDú»k«ºaöÚq}çWÞþ­Ó-zUæSï=ÎYàr¼HsÌ	#±Í¸Ôásì~öÏöGÀ8éRÁ¼+TÕC¬÷\'ÃYâr&æ§úNS¡;Ü!OPô»+IàÔXñMÓÊvTð~¶$Ììñ\\|jñ]h©Høº¾\'³©V®5u+¡­ÀÐ 0Ú$\r\rä7¸:ÌÍ¦NÇcA£Vº»GÐ¡\rÏ[»³ôhÊRïæSmuÅoÇwéÉ£).I28rú\rC¸Ø1CA©Zn&\'UÉÐ§ÊÃxÝ³ä_e<UöiÖ|Lªr	VyÞcáò#ÌäX}ãÄíjÝé668!­Üó.Ø¡s¬\Z¹AÅR4~£è.Aåy\ZÐ>D@AS±ÔqH@h§Ñ\'E\n|Ï9óÍg°\\Ã»ÍÂÞsªa¡¦§ew:Îf¦Òq©ç>ÃOQ©ÒÁ:Boè3Ã¸:yC½/Y`0ñ!;¥	WYF`la.´jWGÀ´ÞFÊ|íç3ënÙÕ§²v¸o¶dZ¡¥;¸jjZ¦e=LG¦)´U-bÂ}CÔ³Øø=2N^¸Êw\Z7N©)qkn\ZÇiñ,ö¡£`èTº=9ÙÞ}¸ï<çê5©sò8¤Ôóud\reEî7;0¶ðôÉ¡µàp(æì*qlïh}T´¦¦$Æ\\éÊÔÁæ©8{PßJc·bS·\ZNS=h{Âb#= 0\"#B\0HHR!\0È¸6:\'¢w/»ê3rr6-T*V:©$(Ñã¶±ÔpTª³¥ÅHè=®gIÃxài-ÊT¥GD¥*%»ËRÍÜ\ZzÝu.öeÌäòGeK2hmeëô£ÁÒ<\'£Èë:Õà¢ªj0à\Zµx¥|û\'­ø0÷©0ÃÉ´©jêÕÝÔ[ÅÕhÌÛ¦âöÝhû@Ì°!ÝÝéF@iQÿÅÜN$·	', 'Cash On Delivery', 'shipto', 'Azampur', '1', 995, NULL, NULL, 'BR1622618458bM00155', 'Completed', 'sawac47943@isecv.com', 'gdfgbd fdffdf', 'Bangladesh', '01715486265', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-06-02 01:20:58', '2021-06-02 01:23:16', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(157, 133, 'BZh91AY&SYö}8g\0²_@\0Pÿý+oô¿ÿÿú`ø¯¡*\0´aU«\ZËfÄ±Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0%?DýTñ@Ó#iå¤=M\0@Ðz¤M&¦¨ôOHô¨ÓÑ=Fe=@©B)êd§¦#(ô\0\0õ!¡ R`¦#âñÞ*øBÀÿ\nÒÊ}_[M¹µ5õ[³ÔÅOð¤ucw=\nÇ\r¦TäÂ|6û<s¶°Çyf3¥WO%ºpÕUMjÖÒøÓ¾õyi\rð×Z8Ö²µçm_Jc:fPáØ\\ö\ZFÓA0Ù7©Ý·o9eñÖçþvWÔ³.>½Ò	=à¥\ZO!m,j!Â{O9Á¸:pa°ÌÔ-,»¡º\\RÌ(¸ÈAxP©Ê<ÊNå#²¢pR:*Q)\'jvë8j¥ÑÙÉeVË..-IvÖÇ¹§.~O¹qÑYURhv\\¶ÔJ³Ê´ÊF(4HFfV¹Æuù[¦½®¸ÎXÔ_+6Ù¥ÎmÞ]2Rpc\\q¾J|´©PT¨SzÆ7Ij-ko9Ï\nvZËy²ÊÔá´á¶[Lác+°Av\Z3fÝÉ°C6ä·q©âÑ Ácåq´\n´dÑÁµfÉÁ¶æåÎx#<fbfrZtÛR¶Q{µ.Ù±dê^Õô<H\"\0&(}ä¬(¢U©r3v¾UR¶Ös&jSRÍÒ)T¦¥)±JöTZîâT*ICKRo,¢*TWÓUå<z$N¤#ÊÉL»êrâÛ=\\j5Û7¶ôÊñ]inÙugkÛÕlS<6ÍvÁ§|±T2ïMáÞÛ^]ôï»å¬ÚÝrã+Þ©\\:Ñ½8¦Þ&ðãKÓûwváÚµÓ¿M2Õ»S4íZvÂ°Äã,ójÌím©GÁOÈSê§¼ýÊõ¸}/êà÷:Ï©ðT{IwÆ`Úñø\nØr)¼ÂÁèl\\ÏY±²Ô8Ã´h\n(8$]\rFdDH\0Tó;]ÍÔóêLÔÂaVG¨ýóÃþ4&ÆgM33NæÁ\"A¸\r¦*=\0ào[¬l<$=ÄÑÈÖ¸ö«Éu¢zG®Z-Ã»ÉÌô;hï6·²ì¹Ì§iE*Ôª\',êtóSÕ6÷¹y8\'irÎU.vOÏ%<Þ·¥áøÚ2»ø)îëã<uØQNÊ+\rÀhÝÀ<Çhæ³qf§tÃUº\'böG\r¾uøSÔªG*;J\ZDnóÃèC!æûO¨É©ì}ËUcÏ>e²ÜÒÛ}ÄéÑî{eFQÖêwáÌd=M¯Ä¢\\O¦NÊø9;©ø\'ß½MÏh¹¥b]cqy{°UOm³¥Át¡y2óxQÅÌ  ùYéd§àLàÞ§¬Áê ³/PÌa&ê$Å«&dô¹CRYgÚX±  ÁrÕÈ(¤ÈW¡ËS2Õ<ÍK|ÌÇ¥¦)¹<ªX\ZÝÄ3ÌÚ®äéxaÐ,Ij½Ãy{té¢-G}ÿÑÞ9S²\'aãds#¼Ä¦Äc! ¡yÍaÑe¬;CÖ\'N``ê(fÕÜÉ!íÝMKIs·u.KÅRr÷­o]ÛIå2ÖeÆù ÄD0 `E#$¥D  !ll,s[¼!W¥s\Z¾ÓíÍG¾bC	9UQ¶W.{¼íÝ:{U*¬Á©qR:;´êbrâ9\ZKìñ-JK6ø¹;½Fåß»Îç´s.4È¨M,ø¯¤³=Îf.NìWuSÍ7IâOÐ¸zYÈäbÆ.ê-áÒÕ\r¸Ú£^ÇÃë=ñ>á²æF@j§þ.äp¡!ìúpÎ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2095, NULL, NULL, 'BR1622633045DZ00156', 'Pending', 'webdesigner@essental-infotech.com', 'gdfgbd fdffdf', 'Bangladesh', '01715486265', 'dg', 'Gopalgonj', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-02 05:24:05', '2021-06-02 05:24:05', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(158, 133, 'BZh91AY&SY¼ý[\0²_@\0Pÿý+oô¿ÿÿú` B!T\" 9dÀa0L!#\0À2`0&À`\00\0L`À0\0L\0L&	0`L¦ôR\0ÐÐÐdhR$&M4L%<Iè¤e)§µORÉ$làýÍ):ÒIôO³&J?³êÉòRÙ\'ÕoöÉôfÑ¬µ©ëm´S?ÒóV4¼)Ì§Ù¹¢d¦¦ÑòqÑõã5Ñòá,udFçpsEÀ`näÉÕfæ!ÖÝË§{¹Î±Õo¼=(ïùsÌîL:\\\Z6âÃVO,ð®ðd½òÌ½Lû¤w-«Þö\rÊu¿ñoøçî)Rî	*J¢O>^%3¶8Ôv=ê#Utp(*Fâ¼©I)&ÔÛ}³Ír¨Ù©eVjYeÅÅ©.Ùé{¼ÍÍZükådª¡äK,ÌÇ\\RS4,000à»¬Uã$ÐCaA ÎLFª[;2p03U%I9£rÅ¶\rYÍì{daa3XÆ`dIo¯,²Ü¦ËYnL¦æÍ¹£S	[d4;4ÁÎiÃOB: ÝÓ½í40dÝÑ{ÆÎiÓ\\2áÀS.YvÓ¡+`§\r;æKc!LºÓf¹2%ô(ÿ!í \0À¡óH$J=ÈÃV0¸ªK3¤R©Lå)X§%öTawqE*8¨¹%\rê¤ÖÈ»YDU¨­õ\\§?iÚÉJ8·cRd;up	Vg&l¢qìâë$äí¦LAZ2TrÀYÅLAIhâÎ3;RI¾Æ¨ÜÁÊÃ6j\Zßv*É³Ù(ß&ðovrØ²x*\râÜaXbnÉ¶¬¦ÖÑJ<÷ýiÞ\'àênyOÌÑ÷<g¼àüU1ÿO¨õGÎt({9áeÖ¯iOÍ=Óf%|\\ói.ÆmÅ­USEèìØàí ?ÃÐ÷}¤?a³Þ`æÂmlCï=gë¹þ£û\'Sªz²:¡Ì¬ÓºÇ)É4NÉÌ©Îý)ÁÉqÚ®K¬ÉÎ:¥¢ÛÎg­&vB.k$ÞÚQFõZDä7Íî:fö®MÓã-.Yª¥Ó9&ÉÅ³§;ÜÌÉ)wà¦4ÒëZÝ¯^[·á£\n)²Ô¤ÑUZ¦StÔóO@þîN§P§ÃU·ÌN+bì7FæJø©Ò¬«»7	èdªæF%4§[çû*ZwÏs²z&nÇ©²ÕXèÜ§ZÙ4­£ÔLMíçs¶QKzÓæiìy\'ÝIUªI{¶)D¸É6P§S3×5t´¢æïËxÎ)L§:»&ÓY¤Ã%\'ö²uMñ>×yE+¯Ò×IÒw©ü~ÏÀÓâ|fÏ,ù¹2XÈÑµ;§¨lÊeÝô2r(`êðèÍð¦S°Ø¶!èÉðÃrFÍey¥S©G{ÍèuFv£DÙ%.-s3Wäóe<¡´Ü©ù&Ì)jiéKz%xÿ×üt»Þ·si:ßwª~ÊÕO7æÊ*/Êt|ÇÁ¸{¡åMÎðõgGVÞó*§ï¡ÁLåÉ$¹·.Æ%I«½ku]µxþ1^Zm^>ÿ)*\nTWåK%\"¥E(j%Tª	  !rt2|K§¾Êö¯Q·ÒlênqwÌHa1SxÃUU\Z2\\¹ÝÑn	½Ú\"Cl¤)¸NNî&ÀXÊ#µ),ÑäÔàìsi.÷2pÑ¬qT¸ÍÒ9¥ñïG&ú)ñùÂlðv,HÕ¤ÐÑsµº§têX¢çLÂ¥»Ó±ºqoZ¡£tÎ>*3çyq}ød<¼½*¤º*çÿrE8P¼ý[', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2095, NULL, NULL, 'BR16226331793z00157', 'Pending', 'webdesigner@essental-infotech.com', 'gdfgbd fdffdf', 'Bangladesh', '01715486265', 'dg', 'Dhaka', '12', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-02 05:26:19', '2021-06-02 05:26:19', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(159, 139, NULL, 'Cash On Delivery', 'shipto', 'Azampur', '9', 10665, NULL, NULL, 'BR1623753523vh00158', 'Pending', 'arifonoy05@gmail.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 05:08:43', '2021-06-15 05:08:43', NULL, NULL, '৳', 1, 120, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(160, 139, NULL, 'Cash On Delivery', 'shipto', 'Azampur', '2', 4075, NULL, NULL, 'BR1623753576Uu00159', 'Pending', 'webdesigner@essental-infotech.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 05:09:36', '2021-06-15 05:09:36', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(161, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A249%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A93%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A5%3A%22stock%22%3Bi%3A94%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1800%3Bs%3A5%3A%22stock%22%3Bi%3A94%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7Di%3A245%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A8%3Bs%3A5%3A%22price%22%3Bd%3A2035%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A245%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A29%3A%22cotton-three-piece-xoz31900fg%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Cotton+Three+Piece%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615653467qLHIl2zL.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A2035%3Bs%3A5%3A%22stock%22%3Bi%3A9%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A245%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A29%3A%22cotton-three-piece-xoz31900fg%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Cotton+Three+Piece%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615653467qLHIl2zL.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1850%3Bs%3A5%3A%22stock%22%3Bi%3A9%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A2%3Bs%3A10%3A%22totalPrice%22%3Bd%3A4015%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '2', 4075, NULL, NULL, 'BR1623755110Ck00160', 'Pending', 'webdesigner@essental-infotech.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 05:35:10', '2021-06-15 05:35:10', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(162, 139, 'O:15:\"App\\Models\\Cart\":29:{s:5:\"items\";a:1:{s:10:\"252s000000\";a:13:{s:3:\"qty\";i:1;s:8:\"size_key\";i:0;s:8:\"size_qty\";s:1:\"3\";s:10:\"size_price\";s:1:\"0\";s:4:\"size\";s:1:\"s\";s:5:\"color\";s:6:\"000000\";s:5:\"stock\";N;s:5:\"price\";d:525;s:4:\"item\";O:18:\"App\\Models\\Product\":26:{s:11:\"\0*\0fillable\";a:56:{i:0;s:7:\"user_id\";i:1;s:11:\"category_id\";i:2;s:12:\"product_type\";i:3;s:14:\"affiliate_link\";i:4;s:3:\"sku\";i:5;s:14:\"subcategory_id\";i:6;s:16:\"childcategory_id\";i:7;s:10:\"attributes\";i:8;s:4:\"name\";i:9;s:5:\"photo\";i:10;s:4:\"size\";i:11;s:8:\"size_qty\";i:12;s:10:\"size_price\";i:13;s:5:\"color\";i:14;s:7:\"details\";i:15;s:5:\"price\";i:16;s:14:\"previous_price\";i:17;s:5:\"stock\";i:18;s:6:\"policy\";i:19;s:6:\"status\";i:20;s:5:\"views\";i:21;s:4:\"tags\";i:22;s:8:\"featured\";i:23;s:4:\"best\";i:24;s:3:\"top\";i:25;s:3:\"hot\";i:26;s:6:\"latest\";i:27;s:3:\"big\";i:28;s:8:\"trending\";i:29;s:4:\"sale\";i:30;s:8:\"features\";i:31;s:6:\"colors\";i:32;s:17:\"product_condition\";i:33;s:4:\"ship\";i:34;s:8:\"meta_tag\";i:35;s:16:\"meta_description\";i:36;s:7:\"youtube\";i:37;s:4:\"type\";i:38;s:4:\"file\";i:39;s:7:\"license\";i:40;s:11:\"license_qty\";i:41;s:4:\"link\";i:42;s:8:\"platform\";i:43;s:6:\"region\";i:44;s:12:\"licence_type\";i:45;s:7:\"measure\";i:46;s:13:\"discount_date\";i:47;s:11:\"is_discount\";i:48;s:14:\"whole_sell_qty\";i:49;s:19:\"whole_sell_discount\";i:50;s:10:\"catalog_id\";i:51;s:4:\"slug\";i:52;s:8:\"cashback\";i:53;s:10:\"commission\";i:54;s:11:\"product_tax\";i:55;s:18:\"product_tax_status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:20:{s:2:\"id\";i:252;s:7:\"user_id\";i:127;s:4:\"slug\";s:21:\"men-tshirt-anb8250ejk\";s:4:\"name\";s:10:\"men tshirt\";s:5:\"photo\";s:22:\"1615698403dHqUXK1g.png\";s:4:\"size\";s:5:\"s,m,L\";s:8:\"size_qty\";s:6:\"3,10,9\";s:10:\"size_price\";s:5:\"0,0,0\";s:5:\"color\";s:31:\"#000000,#ffffff,#ff0000,#1276bf\";s:5:\"price\";d:525;s:5:\"stock\";N;s:4:\"type\";s:8:\"Physical\";s:4:\"file\";N;s:4:\"link\";N;s:7:\"license\";N;s:11:\"license_qty\";N;s:7:\"measure\";N;s:14:\"whole_sell_qty\";N;s:19:\"whole_sell_discount\";N;s:10:\"attributes\";N;}s:11:\"\0*\0original\";a:20:{s:2:\"id\";i:252;s:7:\"user_id\";i:127;s:4:\"slug\";s:21:\"men-tshirt-anb8250ejk\";s:4:\"name\";s:10:\"men tshirt\";s:5:\"photo\";s:22:\"1615698403dHqUXK1g.png\";s:4:\"size\";s:5:\"s,m,L\";s:8:\"size_qty\";s:6:\"3,10,9\";s:10:\"size_price\";s:5:\"0,0,0\";s:5:\"color\";s:31:\"#000000,#ffffff,#ff0000,#1276bf\";s:5:\"price\";d:500;s:5:\"stock\";N;s:4:\"type\";s:8:\"Physical\";s:4:\"file\";N;s:4:\"link\";N;s:7:\"license\";N;s:11:\"license_qty\";N;s:7:\"measure\";N;s:14:\"whole_sell_qty\";N;s:19:\"whole_sell_discount\";N;s:10:\"attributes\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:7:\"license\";s:0:\"\";s:2:\"dp\";s:1:\"0\";s:4:\"keys\";s:0:\"\";s:6:\"values\";s:0:\"\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:525;s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 585, NULL, NULL, 'BR1623756094jj00161', 'Pending', 'sawac47943@isecv.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 05:51:34', '2021-06-15 05:51:34', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(163, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A249%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A92%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A5%3A%22stock%22%3Bi%3A93%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1800%3Bs%3A5%3A%22stock%22%3Bi%3A93%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A1%3Bs%3A10%3A%22totalPrice%22%3Bd%3A1980%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2040, NULL, NULL, 'BR1623756481i200162', 'Pending', 'sawac47943@isecv.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 05:58:01', '2021-06-15 05:58:01', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(164, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A245%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A7%3Bs%3A5%3A%22price%22%3Bd%3A2035%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A245%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A29%3A%22cotton-three-piece-xoz31900fg%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Cotton+Three+Piece%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615653467qLHIl2zL.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A2035%3Bs%3A5%3A%22stock%22%3Bi%3A8%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A245%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A29%3A%22cotton-three-piece-xoz31900fg%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Cotton+Three+Piece%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615653467qLHIl2zL.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1850%3Bs%3A5%3A%22stock%22%3Bi%3A8%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7Ds%3A10%3A%22243s000000%22%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A1%3A%229%22%3Bs%3A10%3A%22size_price%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22size%22%3Bs%3A1%3A%22s%22%3Bs%3A5%3A%22color%22%3Bs%3A6%3A%22000000%22%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1000%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A243%3Bs%3A7%3A%22user_id%22%3Bi%3A122%3Bs%3A4%3A%22slug%22%3Bs%3A27%3A%22men-colorful-shirt-br-10001%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Men+Colorful+Shirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615609314syb6tJj8.png%22%3Bs%3A4%3A%22size%22%3Bs%3A12%3A%22s%2CM%2CL%2CXL%2CXXL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A13%3A%229%2C10%2C10%2C10%2C10%22%3Bs%3A10%3A%22size_price%22%3Bs%3A9%3A%220%2C0%2C0%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23fa0606%2C%230695fc%2C%2320d19c%22%3Bs%3A5%3A%22price%22%3Bd%3A1000%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A243%3Bs%3A7%3A%22user_id%22%3Bi%3A122%3Bs%3A4%3A%22slug%22%3Bs%3A27%3A%22men-colorful-shirt-br-10001%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Men+Colorful+Shirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615609314syb6tJj8.png%22%3Bs%3A4%3A%22size%22%3Bs%3A12%3A%22s%2CM%2CL%2CXL%2CXXL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A13%3A%229%2C10%2C10%2C10%2C10%22%3Bs%3A10%3A%22size_price%22%3Bs%3A9%3A%220%2C0%2C0%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23fa0606%2C%230695fc%2C%2320d19c%22%3Bs%3A5%3A%22price%22%3Bd%3A1000%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A2%3Bs%3A10%3A%22totalPrice%22%3Bd%3A3035%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '2', 3095, NULL, NULL, 'BR1623756857ST00163', 'Pending', 'tariqmolla8@gmail.com', 'arif', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 06:04:17', '2021-06-15 06:04:17', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(165, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bs%3A10%3A%22243s000000%22%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A3%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A1%3A%228%22%3Bs%3A10%3A%22size_price%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22size%22%3Bs%3A1%3A%22s%22%3Bs%3A5%3A%22color%22%3Bs%3A6%3A%22000000%22%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A3000%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A243%3Bs%3A7%3A%22user_id%22%3Bi%3A122%3Bs%3A4%3A%22slug%22%3Bs%3A27%3A%22men-colorful-shirt-br-10001%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Men+Colorful+Shirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615609314syb6tJj8.png%22%3Bs%3A4%3A%22size%22%3Bs%3A12%3A%22s%2CM%2CL%2CXL%2CXXL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A13%3A%228%2C10%2C10%2C10%2C10%22%3Bs%3A10%3A%22size_price%22%3Bs%3A9%3A%220%2C0%2C0%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23fa0606%2C%230695fc%2C%2320d19c%22%3Bs%3A5%3A%22price%22%3Bd%3A1000%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A243%3Bs%3A7%3A%22user_id%22%3Bi%3A122%3Bs%3A4%3A%22slug%22%3Bs%3A27%3A%22men-colorful-shirt-br-10001%22%3Bs%3A4%3A%22name%22%3Bs%3A18%3A%22Men+Colorful+Shirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615609314syb6tJj8.png%22%3Bs%3A4%3A%22size%22%3Bs%3A12%3A%22s%2CM%2CL%2CXL%2CXXL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A13%3A%228%2C10%2C10%2C10%2C10%22%3Bs%3A10%3A%22size_price%22%3Bs%3A9%3A%220%2C0%2C0%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23fa0606%2C%230695fc%2C%2320d19c%22%3Bs%3A5%3A%22price%22%3Bd%3A1000%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A3%3Bs%3A10%3A%22totalPrice%22%3Bd%3A3000%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '3', 3060, NULL, NULL, 'BR1623758424N400164', 'Pending', 'sawac47943@isecv.com', 'gdfgbd fdffdf', 'Bangladesh', 'arif@gmail.com', 'dg, g', 'Dhaka', '423', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 06:30:24', '2021-06-15 06:30:24', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(166, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bs%3A10%3A%22252s000000%22%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A2%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A1%3A%222%22%3Bs%3A10%3A%22size_price%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22size%22%3Bs%3A1%3A%22s%22%3Bs%3A5%3A%22color%22%3Bs%3A6%3A%22000000%22%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1050%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A252%3Bs%3A7%3A%22user_id%22%3Bi%3A127%3Bs%3A4%3A%22slug%22%3Bs%3A21%3A%22men-tshirt-anb8250ejk%22%3Bs%3A4%3A%22name%22%3Bs%3A10%3A%22men+tshirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615698403dHqUXK1g.png%22%3Bs%3A4%3A%22size%22%3Bs%3A5%3A%22s%2Cm%2CL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A6%3A%222%2C10%2C9%22%3Bs%3A10%3A%22size_price%22%3Bs%3A5%3A%220%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23ffffff%2C%23ff0000%2C%231276bf%22%3Bs%3A5%3A%22price%22%3Bd%3A525%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A252%3Bs%3A7%3A%22user_id%22%3Bi%3A127%3Bs%3A4%3A%22slug%22%3Bs%3A21%3A%22men-tshirt-anb8250ejk%22%3Bs%3A4%3A%22name%22%3Bs%3A10%3A%22men+tshirt%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615698403dHqUXK1g.png%22%3Bs%3A4%3A%22size%22%3Bs%3A5%3A%22s%2Cm%2CL%22%3Bs%3A8%3A%22size_qty%22%3Bs%3A6%3A%222%2C10%2C9%22%3Bs%3A10%3A%22size_price%22%3Bs%3A5%3A%220%2C0%2C0%22%3Bs%3A5%3A%22color%22%3Bs%3A31%3A%22%23000000%2C%23ffffff%2C%23ff0000%2C%231276bf%22%3Bs%3A5%3A%22price%22%3Bd%3A500%3Bs%3A5%3A%22stock%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A1%3Bs%3A10%3A%22totalPrice%22%3Bd%3A1050%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1170, NULL, NULL, 'BR1623818180DN00165', 'Pending', 'arif@gmail.com', 'arif', 'Bangladesh', 'arif@gmail.com', 'sdfsf34543', 'MNU', '1234', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-15 23:06:20', '2021-06-15 23:06:20', NULL, NULL, '৳', 1, 120, 0, 0, 0, NULL, 0, 0, NULL, NULL),
(167, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A249%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A91%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A64%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A3%3A%22sku%22%3Bs%3A10%3A%223tS5010Jgy%22%3Bs%3A12%3A%22product_type%22%3Bs%3A6%3A%22normal%22%3Bs%3A14%3A%22affiliate_link%22%3BN%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A11%3A%22category_id%22%3Bi%3A22%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A27%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A48%3Bs%3A10%3A%22attributes%22%3BN%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A9%3A%22thumbnail%22%3Bs%3A22%3A%221615655136s7V2gx0p.jpg%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A14%3A%22previous_price%22%3Bd%3A1950%3Bs%3A7%3A%22details%22%3Bs%3A98%3A%22%3Ch1%3EWomen%26%2339%3Bs+Stylish+Casual+Jeans+Wide+Leg+Denim+Pants+Elastic+Lady+Jeans%3C%2Fh1%3E%0D%0A%0D%0A%3Cp%3E%26nbsp%3B%3C%2Fp%3E%22%3Bs%3A5%3A%22stock%22%3Bi%3A92%3Bs%3A6%3A%22policy%22%3BN%3Bs%3A6%3A%22status%22%3Bi%3A1%3Bs%3A5%3A%22views%22%3Bi%3A13%3Bs%3A4%3A%22tags%22%3Bs%3A40%3A%22Denim+Pants%2CWomen%27s+Stylish+Casual+Jeans%22%3Bs%3A8%3A%22features%22%3BN%3Bs%3A6%3A%22colors%22%3BN%3Bs%3A17%3A%22product_condition%22%3Bi%3A0%3Bs%3A4%3A%22ship%22%3Bs%3A45%3A%22Inside+Dhaka+2-3+DAYS%2C+outside+Dhaka+4-5+days%22%3Bs%3A7%3A%22is_meta%22%3Bi%3A0%3Bs%3A8%3A%22meta_tag%22%3BN%3Bs%3A16%3A%22meta_description%22%3BN%3Bs%3A7%3A%22youtube%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A8%3A%22platform%22%3BN%3Bs%3A6%3A%22region%22%3BN%3Bs%3A12%3A%22licence_type%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A8%3A%22featured%22%3Bi%3A1%3Bs%3A4%3A%22best%22%3Bi%3A1%3Bs%3A3%3A%22top%22%3Bi%3A1%3Bs%3A3%3A%22hot%22%3Bi%3A0%3Bs%3A6%3A%22latest%22%3Bi%3A0%3Bs%3A3%3A%22big%22%3Bi%3A0%3Bs%3A8%3A%22trending%22%3Bi%3A1%3Bs%3A4%3A%22sale%22%3Bi%3A0%3Bs%3A10%3A%22created_at%22%3Bs%3A19%3A%222021-03-13+17%3A05%3A36%22%3Bs%3A10%3A%22updated_at%22%3Bs%3A19%3A%222021-06-17+05%3A53%3A34%22%3Bs%3A11%3A%22is_discount%22%3Bi%3A0%3Bs%3A13%3A%22discount_date%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22is_catalog%22%3Bi%3A1%3Bs%3A10%3A%22catalog_id%22%3Bi%3A0%3Bs%3A8%3A%22cashback%22%3BN%3Bs%3A22%3A%22product_payment_method%22%3Bi%3A1%3Bs%3A10%3A%22commission%22%3Bd%3A12%3Bs%3A11%3A%22product_tax%22%3Bd%3A10%3Bs%3A18%3A%22product_tax_status%22%3Bi%3A1%3Bs%3A6%3A%22galval%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A64%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A3%3A%22sku%22%3Bs%3A10%3A%223tS5010Jgy%22%3Bs%3A12%3A%22product_type%22%3Bs%3A6%3A%22normal%22%3Bs%3A14%3A%22affiliate_link%22%3BN%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A11%3A%22category_id%22%3Bi%3A22%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A27%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A48%3Bs%3A10%3A%22attributes%22%3BN%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A9%3A%22thumbnail%22%3Bs%3A22%3A%221615655136s7V2gx0p.jpg%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1800%3Bs%3A14%3A%22previous_price%22%3Bd%3A1950%3Bs%3A7%3A%22details%22%3Bs%3A98%3A%22%3Ch1%3EWomen%26%2339%3Bs+Stylish+Casual+Jeans+Wide+Leg+Denim+Pants+Elastic+Lady+Jeans%3C%2Fh1%3E%0D%0A%0D%0A%3Cp%3E%26nbsp%3B%3C%2Fp%3E%22%3Bs%3A5%3A%22stock%22%3Bi%3A92%3Bs%3A6%3A%22policy%22%3BN%3Bs%3A6%3A%22status%22%3Bi%3A1%3Bs%3A5%3A%22views%22%3Bi%3A13%3Bs%3A4%3A%22tags%22%3Bs%3A40%3A%22Denim+Pants%2CWomen%27s+Stylish+Casual+Jeans%22%3Bs%3A8%3A%22features%22%3BN%3Bs%3A6%3A%22colors%22%3BN%3Bs%3A17%3A%22product_condition%22%3Bi%3A0%3Bs%3A4%3A%22ship%22%3Bs%3A45%3A%22Inside+Dhaka+2-3+DAYS%2C+outside+Dhaka+4-5+days%22%3Bs%3A7%3A%22is_meta%22%3Bi%3A0%3Bs%3A8%3A%22meta_tag%22%3BN%3Bs%3A16%3A%22meta_description%22%3BN%3Bs%3A7%3A%22youtube%22%3BN%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A8%3A%22platform%22%3BN%3Bs%3A6%3A%22region%22%3BN%3Bs%3A12%3A%22licence_type%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A8%3A%22featured%22%3Bi%3A1%3Bs%3A4%3A%22best%22%3Bi%3A1%3Bs%3A3%3A%22top%22%3Bi%3A1%3Bs%3A3%3A%22hot%22%3Bi%3A0%3Bs%3A6%3A%22latest%22%3Bi%3A0%3Bs%3A3%3A%22big%22%3Bi%3A0%3Bs%3A8%3A%22trending%22%3Bi%3A1%3Bs%3A4%3A%22sale%22%3Bi%3A0%3Bs%3A10%3A%22created_at%22%3Bs%3A19%3A%222021-03-13+17%3A05%3A36%22%3Bs%3A10%3A%22updated_at%22%3Bs%3A19%3A%222021-06-17+05%3A53%3A34%22%3Bs%3A11%3A%22is_discount%22%3Bi%3A0%3Bs%3A13%3A%22discount_date%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22is_catalog%22%3Bi%3A1%3Bs%3A10%3A%22catalog_id%22%3Bi%3A0%3Bs%3A8%3A%22cashback%22%3BN%3Bs%3A22%3A%22product_payment_method%22%3Bi%3A1%3Bs%3A10%3A%22commission%22%3Bd%3A12%3Bs%3A11%3A%22product_tax%22%3Bd%3A10%3Bs%3A18%3A%22product_tax_status%22%3Bi%3A1%3Bs%3A6%3A%22galval%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A1%3Bs%3A10%3A%22totalPrice%22%3Bd%3A1980%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2040, NULL, NULL, 'BR1623924069m000166', 'Pending', 'arif@gmail.com', 'arif', 'Bangladesh', 'arif@gmail.com', 'sdfsf34543', 'MNU', '1234', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-17 04:31:09', '2021-06-17 04:31:09', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `total_cashback`, `ssl_transaction_id`) VALUES
(168, 139, 'O%3A15%3A%22App%5CModels%5CCart%22%3A29%3A%7Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A249%3Ba%3A13%3A%7Bs%3A3%3A%22qty%22%3Bi%3A1%3Bs%3A8%3A%22size_key%22%3Bi%3A0%3Bs%3A8%3A%22size_qty%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22size_price%22%3Bs%3A0%3A%22%22%3Bs%3A4%3A%22size%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22color%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22stock%22%3Bi%3A90%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A4%3A%22item%22%3BO%3A18%3A%22App%5CModels%5CProduct%22%3A26%3A%7Bs%3A11%3A%22%00%2A%00fillable%22%3Ba%3A56%3A%7Bi%3A0%3Bs%3A7%3A%22user_id%22%3Bi%3A1%3Bs%3A11%3A%22category_id%22%3Bi%3A2%3Bs%3A12%3A%22product_type%22%3Bi%3A3%3Bs%3A14%3A%22affiliate_link%22%3Bi%3A4%3Bs%3A3%3A%22sku%22%3Bi%3A5%3Bs%3A14%3A%22subcategory_id%22%3Bi%3A6%3Bs%3A16%3A%22childcategory_id%22%3Bi%3A7%3Bs%3A10%3A%22attributes%22%3Bi%3A8%3Bs%3A4%3A%22name%22%3Bi%3A9%3Bs%3A5%3A%22photo%22%3Bi%3A10%3Bs%3A4%3A%22size%22%3Bi%3A11%3Bs%3A8%3A%22size_qty%22%3Bi%3A12%3Bs%3A10%3A%22size_price%22%3Bi%3A13%3Bs%3A5%3A%22color%22%3Bi%3A14%3Bs%3A7%3A%22details%22%3Bi%3A15%3Bs%3A5%3A%22price%22%3Bi%3A16%3Bs%3A14%3A%22previous_price%22%3Bi%3A17%3Bs%3A5%3A%22stock%22%3Bi%3A18%3Bs%3A6%3A%22policy%22%3Bi%3A19%3Bs%3A6%3A%22status%22%3Bi%3A20%3Bs%3A5%3A%22views%22%3Bi%3A21%3Bs%3A4%3A%22tags%22%3Bi%3A22%3Bs%3A8%3A%22featured%22%3Bi%3A23%3Bs%3A4%3A%22best%22%3Bi%3A24%3Bs%3A3%3A%22top%22%3Bi%3A25%3Bs%3A3%3A%22hot%22%3Bi%3A26%3Bs%3A6%3A%22latest%22%3Bi%3A27%3Bs%3A3%3A%22big%22%3Bi%3A28%3Bs%3A8%3A%22trending%22%3Bi%3A29%3Bs%3A4%3A%22sale%22%3Bi%3A30%3Bs%3A8%3A%22features%22%3Bi%3A31%3Bs%3A6%3A%22colors%22%3Bi%3A32%3Bs%3A17%3A%22product_condition%22%3Bi%3A33%3Bs%3A4%3A%22ship%22%3Bi%3A34%3Bs%3A8%3A%22meta_tag%22%3Bi%3A35%3Bs%3A16%3A%22meta_description%22%3Bi%3A36%3Bs%3A7%3A%22youtube%22%3Bi%3A37%3Bs%3A4%3A%22type%22%3Bi%3A38%3Bs%3A4%3A%22file%22%3Bi%3A39%3Bs%3A7%3A%22license%22%3Bi%3A40%3Bs%3A11%3A%22license_qty%22%3Bi%3A41%3Bs%3A4%3A%22link%22%3Bi%3A42%3Bs%3A8%3A%22platform%22%3Bi%3A43%3Bs%3A6%3A%22region%22%3Bi%3A44%3Bs%3A12%3A%22licence_type%22%3Bi%3A45%3Bs%3A7%3A%22measure%22%3Bi%3A46%3Bs%3A13%3A%22discount_date%22%3Bi%3A47%3Bs%3A11%3A%22is_discount%22%3Bi%3A48%3Bs%3A14%3A%22whole_sell_qty%22%3Bi%3A49%3Bs%3A19%3A%22whole_sell_discount%22%3Bi%3A50%3Bs%3A10%3A%22catalog_id%22%3Bi%3A51%3Bs%3A4%3A%22slug%22%3Bi%3A52%3Bs%3A8%3A%22cashback%22%3Bi%3A53%3Bs%3A10%3A%22commission%22%3Bi%3A54%3Bs%3A11%3A%22product_tax%22%3Bi%3A55%3Bs%3A18%3A%22product_tax_status%22%3B%7Ds%3A13%3A%22%00%2A%00connection%22%3Bs%3A5%3A%22mysql%22%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A1%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1980%3Bs%3A5%3A%22stock%22%3Bi%3A91%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A20%3A%7Bs%3A2%3A%22id%22%3Bi%3A249%3Bs%3A7%3A%22user_id%22%3Bi%3A124%3Bs%3A4%3A%22slug%22%3Bs%3A38%3A%22womens-stylish-casual-jeans-3ts5010jgy%22%3Bs%3A4%3A%22name%22%3Bs%3A28%3A%22Women%27s+Stylish+Casual+Jeans%22%3Bs%3A5%3A%22photo%22%3Bs%3A22%3A%221615655136iH6RGUwF.png%22%3Bs%3A4%3A%22size%22%3BN%3Bs%3A8%3A%22size_qty%22%3BN%3Bs%3A10%3A%22size_price%22%3BN%3Bs%3A5%3A%22color%22%3BN%3Bs%3A5%3A%22price%22%3Bd%3A1800%3Bs%3A5%3A%22stock%22%3Bi%3A91%3Bs%3A4%3A%22type%22%3Bs%3A8%3A%22Physical%22%3Bs%3A4%3A%22file%22%3BN%3Bs%3A4%3A%22link%22%3BN%3Bs%3A7%3A%22license%22%3BN%3Bs%3A11%3A%22license_qty%22%3BN%3Bs%3A7%3A%22measure%22%3BN%3Bs%3A14%3A%22whole_sell_qty%22%3BN%3Bs%3A19%3A%22whole_sell_discount%22%3BN%3Bs%3A10%3A%22attributes%22%3BN%3B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7Ds%3A7%3A%22license%22%3Bs%3A0%3A%22%22%3Bs%3A2%3A%22dp%22%3Bs%3A1%3A%220%22%3Bs%3A4%3A%22keys%22%3Bs%3A0%3A%22%22%3Bs%3A6%3A%22values%22%3Bs%3A0%3A%22%22%3B%7D%7Ds%3A8%3A%22totalQty%22%3Bi%3A1%3Bs%3A10%3A%22totalPrice%22%3Bd%3A1980%3Bs%3A13%3A%22%00%2A%00connection%22%3BN%3Bs%3A8%3A%22%00%2A%00table%22%3BN%3Bs%3A13%3A%22%00%2A%00primaryKey%22%3Bs%3A2%3A%22id%22%3Bs%3A10%3A%22%00%2A%00keyType%22%3Bs%3A3%3A%22int%22%3Bs%3A12%3A%22incrementing%22%3Bb%3A1%3Bs%3A7%3A%22%00%2A%00with%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00withCount%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00perPage%22%3Bi%3A15%3Bs%3A6%3A%22exists%22%3Bb%3A0%3Bs%3A18%3A%22wasRecentlyCreated%22%3Bb%3A0%3Bs%3A13%3A%22%00%2A%00attributes%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00original%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00changes%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00casts%22%3Ba%3A0%3A%7B%7Ds%3A8%3A%22%00%2A%00dates%22%3Ba%3A0%3A%7B%7Ds%3A13%3A%22%00%2A%00dateFormat%22%3BN%3Bs%3A10%3A%22%00%2A%00appends%22%3Ba%3A0%3A%7B%7Ds%3A19%3A%22%00%2A%00dispatchesEvents%22%3Ba%3A0%3A%7B%7Ds%3A14%3A%22%00%2A%00observables%22%3Ba%3A0%3A%7B%7Ds%3A12%3A%22%00%2A%00relations%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00touches%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22timestamps%22%3Bb%3A1%3Bs%3A9%3A%22%00%2A%00hidden%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00visible%22%3Ba%3A0%3A%7B%7Ds%3A11%3A%22%00%2A%00fillable%22%3Ba%3A0%3A%7B%7Ds%3A10%3A%22%00%2A%00guarded%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A1%3A%22%2A%22%3B%7D%7D', 'Cash On Delivery', 'shipto', 'Azampur', '1', 2040, NULL, NULL, 'BR1623924280Iy00167', 'Pending', 'arif@gmail.com', 'arif', 'Bangladesh', 'arif@gmail.com', 'sdfsf34543', 'MNU', '1234', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-17 04:34:40', '2021-06-17 04:34:40', NULL, NULL, '৳', 1, 60, 0, 0, 0, NULL, 0, 0, NULL, NULL);

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
(140, 114, 'Pending', 'You have successfully placed your order.', '2021-02-05 23:13:49', '2021-02-05 23:13:49'),
(141, 115, 'Pending', 'You have successfully placed your order.', '2021-02-05 23:33:55', '2021-02-05 23:33:55'),
(142, 116, 'Pending', 'You have successfully placed your order.', '2021-02-05 23:34:51', '2021-02-05 23:34:51'),
(143, 117, 'Pending', 'You have successfully placed your order.', '2021-02-05 23:36:19', '2021-02-05 23:36:19'),
(144, 118, 'Pending', 'You have successfully placed your order.', '2021-02-07 04:19:02', '2021-02-07 04:19:02'),
(145, 119, 'Pending', 'You have successfully placed your order.', '2021-02-07 04:20:46', '2021-02-07 04:20:46'),
(146, 120, 'Pending', 'You have successfully placed your order.', '2021-02-07 04:22:17', '2021-02-07 04:22:17'),
(147, 121, 'Pending', 'You have successfully placed your order.', '2021-02-07 04:23:47', '2021-02-07 04:23:47'),
(148, 122, 'Pending', 'You have successfully placed your order.', '2021-02-07 04:29:20', '2021-02-07 04:29:20'),
(149, 123, 'Pending', 'You have successfully placed your order.', '2021-02-09 06:51:40', '2021-02-09 06:51:40'),
(150, 124, 'Pending', 'You have successfully placed your order.', '2021-02-09 23:33:11', '2021-02-09 23:33:11'),
(151, 125, 'Pending', 'You have successfully placed your order.', '2021-02-12 11:06:44', '2021-02-12 11:06:44'),
(152, 126, 'Pending', 'You have successfully placed your order.', '2021-02-12 11:13:40', '2021-02-12 11:13:40'),
(153, 127, 'Pending', 'You have successfully placed your order.', '2021-02-12 16:23:00', '2021-02-12 16:23:00'),
(154, 128, 'Pending', 'You have successfully placed your order.', '2021-02-14 16:53:03', '2021-02-14 16:53:03'),
(155, 129, 'Pending', 'You have successfully placed your order.', '2021-02-14 17:19:08', '2021-02-14 17:19:08'),
(156, 130, 'Pending', 'You have successfully placed your order.', '2021-03-03 00:53:26', '2021-03-03 00:53:26'),
(157, 131, 'Pending', 'You have successfully placed your order.', '2021-03-07 23:24:40', '2021-03-07 23:24:40'),
(158, 132, 'Pending', 'You have successfully placed your order.', '2021-03-07 23:25:41', '2021-03-07 23:25:41'),
(159, 133, 'Pending', 'You have successfully placed your order.', '2021-03-08 01:07:18', '2021-03-08 01:07:18'),
(160, 134, 'Pending', 'You have successfully placed your order.', '2021-03-08 02:07:31', '2021-03-08 02:07:31'),
(161, 135, 'Pending', 'You have successfully placed your order.', '2021-03-08 02:54:54', '2021-03-08 02:54:54'),
(162, 136, 'Pending', 'You have successfully placed your order.', '2021-03-08 03:22:44', '2021-03-08 03:22:44'),
(163, 137, 'Pending', 'You have successfully placed your order.', '2021-03-08 05:01:33', '2021-03-08 05:01:33'),
(164, 138, 'Pending', 'You have successfully placed your order.', '2021-03-08 05:02:38', '2021-03-08 05:02:38'),
(165, 139, 'Pending', 'You have successfully placed your order.', '2021-03-08 05:04:25', '2021-03-08 05:04:25'),
(166, 140, 'Pending', 'You have successfully placed your order.', '2021-03-13 12:10:35', '2021-03-13 12:10:35'),
(167, 141, 'Pending', 'You have successfully placed your order.', '2021-03-13 12:33:05', '2021-03-13 12:33:05'),
(168, 142, 'Pending', 'You have successfully placed your order.', '2021-03-13 13:07:47', '2021-03-13 13:07:47'),
(169, 143, 'Pending', 'You have successfully placed your order.', '2021-03-13 23:08:26', '2021-03-13 23:08:26'),
(170, 144, 'Pending', 'You have successfully placed your order.', '2021-03-13 23:38:26', '2021-03-13 23:38:26'),
(171, 145, 'Pending', 'You have successfully placed your order.', '2021-03-13 23:50:11', '2021-03-13 23:50:11'),
(172, 146, 'Pending', 'You have successfully placed your order.', '2021-03-13 23:55:58', '2021-03-13 23:55:58'),
(173, 147, 'Pending', 'You have successfully placed your order.', '2021-03-14 00:36:14', '2021-03-14 00:36:14'),
(174, 148, 'Pending', 'You have successfully placed your order.', '2021-03-18 22:41:42', '2021-03-18 22:41:42'),
(175, 149, 'Pending', 'You have successfully placed your order.', '2021-03-18 22:48:53', '2021-03-18 22:48:53'),
(176, 150, 'Pending', 'You have successfully placed your order.', '2021-03-18 22:56:28', '2021-03-18 22:56:28'),
(177, 151, 'Pending', 'You have successfully placed your order.', '2021-03-18 23:05:04', '2021-03-18 23:05:04'),
(178, 152, 'Pending', 'You have successfully placed your order.', '2021-03-18 23:13:59', '2021-03-18 23:13:59'),
(179, 153, 'Pending', 'You have successfully placed your order.', '2021-03-18 23:19:03', '2021-03-18 23:19:03'),
(180, 154, 'Pending', 'You have successfully placed your order.', '2021-03-19 00:01:25', '2021-03-19 00:01:25'),
(181, 155, 'Pending', 'You have successfully placed your order.', '2021-03-19 00:36:59', '2021-03-19 00:36:59'),
(182, 7, 'Completed', 'dw', '2021-06-01 23:28:46', '2021-06-01 23:28:46'),
(183, 156, 'Pending', 'You have successfully placed your order.', '2021-06-02 01:20:58', '2021-06-02 01:20:58'),
(184, 157, 'Pending', 'You have successfully placed your order.', '2021-06-02 05:24:05', '2021-06-02 05:24:05'),
(185, 158, 'Pending', 'You have successfully placed your order.', '2021-06-02 05:26:19', '2021-06-02 05:26:19'),
(186, 159, 'Pending', 'You have successfully placed your order.', '2021-06-15 05:08:43', '2021-06-15 05:08:43'),
(187, 160, 'Pending', 'You have successfully placed your order.', '2021-06-15 05:09:36', '2021-06-15 05:09:36'),
(188, 161, 'Pending', 'You have successfully placed your order.', '2021-06-15 05:35:10', '2021-06-15 05:35:10'),
(189, 162, 'Pending', 'You have successfully placed your order.', '2021-06-15 05:51:34', '2021-06-15 05:51:34'),
(190, 163, 'Pending', 'You have successfully placed your order.', '2021-06-15 05:58:01', '2021-06-15 05:58:01'),
(191, 164, 'Pending', 'You have successfully placed your order.', '2021-06-15 06:04:17', '2021-06-15 06:04:17'),
(192, 165, 'Pending', 'You have successfully placed your order.', '2021-06-15 06:30:24', '2021-06-15 06:30:24'),
(193, 166, 'Pending', 'You have successfully placed your order.', '2021-06-15 23:06:20', '2021-06-15 23:06:20'),
(194, 167, 'Pending', 'You have successfully placed your order.', '2021-06-17 04:31:09', '2021-06-17 04:31:09'),
(195, 168, 'Pending', 'You have successfully placed your order.', '2021-06-17 04:34:40', '2021-06-17 04:34:40');

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
(1, 0, 'Default Packaging', 'Default packaging by store', 0);

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
(1, 'About Us', 'about us', '<div><p class=\"aboutus\" style=\"margin: 0in 0in 0.0001pt; line-height: 22.5pt; text-align: justify; background: rgb(246, 246, 246);\"><span calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:=\"\" minor-latin\"=\"\">BRNNDA is the first ever lifestyle and fashion related online shop in Bangladesh where all the reputed and authentic brands are available.<span style=\"color: rgb(119, 119, 119);\">&nbsp;</span>BRNNDA&nbsp;</span><span calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">offering completely hassle-free shopping experience through secure and trusted gateways</span><span calibri\",sans-serif;mso-ascii-theme-font:minor-latin;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"=\"\">.&nbsp;</span><span calibri\",sans-serif;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">We offer you trendy and reliable shopping with all your favorite brands and more. Now shopping is easier, faster and always joyous. We help you make the right choice here.<o:p></o:p></span></p><p class=\"aboutus\" style=\"margin: 0in 0in 0.0001pt; line-height: 22.5pt; text-align: justify; background: rgb(246, 246, 246);\"><span calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">BRNNDA was launched in September 2020. Our main moto is serve the original and branded product to the people.&nbsp; Only the famous brand in BD can join our site as a seller.&nbsp;<o:p></o:p></span></p><p class=\"aboutus\" style=\"margin: 0in 0in 0.0001pt; line-height: 22.5pt; text-align: justify; background: rgb(246, 246, 246);\"><span calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">Now people can buy their favorite brands product from all over the Bangladesh.</span><span verdana\",sans-serif;mso-bidi-font-family:arial;color:#777777\"=\"\" style=\"font-size: 11pt;\">&nbsp;</span><span calibri\",sans-serif;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">We constantly update with lot of new products, services and special offers. We provide on-time delivery of products and quick resolution of any concerns.</span><span arial\",sans-serif;color:#777777\"=\"\" style=\"font-size: 10.5pt;\"><o:p></o:p></span></p><p class=\"aboutus\" style=\"margin: 0in 0in 0.0001pt; line-height: 22.5pt; text-align: justify; background: rgb(246, 246, 246);\"><span calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\" style=\"font-size: 11pt;\">Get the best products with the best online shopping experience every time. You will enjoy online shopping here!</span><span calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:=\"\" minor-latin\"=\"\" style=\"font-size: 10.5pt;\"><o:p></o:p></span></p></div><p><br></p>', 'about us,brnnda about us,brnnda.com about us,brnda about us', NULL, 0, 1),
(2, 'Privacy  Policy', 'privacy Policy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><p class=\"MsoNormal\"><b>Introduction<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We value the trust you place in us. That\'s why we insist\r\nupon the highest standards for secure transactions and customer information\r\nprivacy. Please read the following statement to learn about our information\r\ngathering and dissemination practices.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Note: Our privacy policy is subject to change at any time\r\nwithout notice. To make sure you are aware of any changes, please review this\r\npolicy periodically.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">By visiting this Website or mobile application you agree to\r\nbe bound by the terms and conditions of this Privacy Policy. If you do not\r\nagree please do not use or access our Website.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">By mere use of the Website, you expressly consent to our use\r\nand disclosure of your personal information in accordance with this Privacy\r\nPolicy. This Privacy Policy is incorporated into and subject to the Terms of\r\nUse.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Collection of\r\nPersonally Identifiable Information and other Information<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">When you use our Website, we collect and store your personal\r\ninformation which is provided by you from time to time. Our primary goal in\r\ndoing so is to provide you a safe, efficient, smooth and customized experience.\r\nThis allows us to provide services and features that most likely meet your\r\nneeds, and to customize our Website to make your experience safer and easier.\r\nMore importantly, while doing so we collect personal information from you that\r\nwe consider necessary for achieving this purpose.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">In general, you can browse the Website without telling us who\r\nyou are or revealing any personal information about yourself. Once you give us\r\nyour personal information, you are not anonymous to us. Where possible, we\r\nindicate which fields are required and which fields are optional. You always\r\nhave the option to not provide information by choosing not to use a particular\r\nservice or feature on the Website. We may automatically track certain\r\ninformation about you based upon your behavior on our Website. We use this\r\ninformation to do internal research on our users\' demographics, interests, and behavior\r\nto better understand, protect and serve our users. This information is compiled\r\nand analyzed on an aggregated basis. This information may include the URL that\r\nyou just came from (whether this URL is on our Website or not), which URL you\r\nnext go to (whether this URL is on our Website or not), your computer browser\r\ninformation, and your IP address. We use data collection devices such as\r\n\"cookies\" on certain pages of the Website to help analyses our web\r\npage flow, measure promotional effectiveness, and promote trust and safety.\r\n\"Cookies\" are small files placed on your hard drive that assist us in\r\nproviding our services. We offer certain features that are only available\r\nthrough the use of a \"cookie\". We also use cookies to allow you to\r\nenter your password less frequently during a session. Cookies can also help us\r\nprovide information that is targeted to your interests. Most cookies are\r\n\"session cookies,\" meaning that they are automatically deleted at the\r\nend of a session. You are always free to decline our cookies if your browser\r\npermits, although in that case you may not be able to use certain features on\r\nthe Website and you may be required to re-enter your password more frequently\r\nduring a session.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Additionally, you may encounter \"cookies\" or other\r\nsimilar devices on certain pages of the Website that are placed by third\r\nparties. We do not control the use of cookies by third parties.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">If you choose to buy on the Website, we collect information\r\nabout your buying behavior.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">If you transact with us, we collect some additional\r\ninformation, such as a billing address, a credit / debit card number and a\r\ncredit / debit card expiration date and/ or other payment instrument details\r\nand tracking information from cheques or money orders.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">If you choose to post messages on our message boards, chat\r\nrooms or other message areas or leave feedback, we will collect that\r\ninformation you provide to us. We retain this information as necessary to\r\nresolve disputes, provide customer support and troubleshoot problems as\r\npermitted by law.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">If you send us personal correspondence, such as emails or\r\nletters, or if other users or third parties send us correspondence about your\r\nactivities or postings on the Website, we may collect such information into a\r\nfile specific to you.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We collect personally identifiable information (email\r\naddress, name, phone number, credit card / debit card / other payment\r\ninstrument details, etc.) from you when you set up a free account with us.\r\nWhile you can browse some sections of our Website without being a registered\r\nmember, certain activities (such as placing an order) do require registration.\r\nWe do use your contact information to send you offers based on your previous\r\norders and your interests.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Use of Demographic /\r\nProfile Data / Your Information:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We use personal information to provide the services you\r\nrequest. To the extent we use your personal information to market to you, we\r\nwill provide you the ability to opt-out of such uses. We use your personal\r\ninformation to resolve disputes; troubleshoot problems; help promote a safe\r\nservice; collect money; measure consumer interest in our products and services,\r\ninform you about online and offline offers, products, services, and updates;\r\ncustomize your experience; detect and protect us against error, fraud and other\r\ncriminal activity; enforce our terms and conditions; and as otherwise described\r\nto you at the time of collection.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">With your consent, we will have access to your SMS, contacts\r\nin your directory, location and device information. We may share this data with\r\nour affiliates. In the event that consent to this such use of data is withdrawn\r\nin the future, we will stop collection of such data but continue to store the\r\ndata and use it for internal purposes to further improve our services.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">In our efforts to continually improve our product and\r\nservice offerings, we collect and analyse demographic and profile data about\r\nour users\' activity on our Website.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We identify and use your IP address to help diagnose\r\nproblems with our server, and to administer our Website. Your IP address is\r\nalso used to help identify you and to gather broad demographic information.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We will occasionally ask you to complete optional online\r\nsurveys. These surveys may ask you for contact information and demographic\r\ninformation (like pin code, age, or income level). We use this data to tailor\r\nyour experience at our Website, providing you with content that we think you\r\nmight be interested in and to display content according to your preferences.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Sharing of personal\r\ninformation<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We may share personal information with our other corporate\r\nentities and affiliates. These entities and affiliates may market to you as a\r\nresult of such sharing unless you explicitly opt-out.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We may disclose personal information to third parties. This\r\ndisclosure may be required for us to provide you access to our Services, to\r\ncomply with our legal obligations, to enforce our User Agreement, to facilitate\r\nour marketing and advertising activities, or to prevent, detect, mitigate, and\r\ninvestigate fraudulent or illegal activities related to our Services. We do not\r\ndisclose your personal information to third parties for their marketing and\r\nadvertising purposes without your explicit consent.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We may disclose personal information if required to do so by\r\nlaw or in the good faith belief that such disclosure is reasonably necessary to\r\nrespond to subpoenas, court orders, or other legal process. We may disclose\r\npersonal information to law enforcement offices, third party rights owners, or\r\nothers in the good faith belief that such disclosure is reasonably necessary\r\nto: enforce our Terms or Privacy Policy; respond to claims that an\r\nadvertisement, posting or other content violates the rights of a third party;\r\nor protect the rights, property or personal safety of our users or the general\r\npublic.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">We and our affiliates will share / sell some or all of your\r\npersonal information with another business entity should we (or our assets)\r\nplan to merge with, or be acquired by that business entity, or re-organization,\r\namalgamation, restructuring of business. Should such a transaction occur that\r\nother business entity (or the new combined entity) will be required to follow\r\nthis privacy policy with respect to your personal information.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Links to Other Sites<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Our Website links to other websites that may collect\r\npersonally identifiable information about you. BRNNDA is not responsible for\r\nthe privacy practices or the content of those linked websites.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Security Precautions<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Our Website has stringent security measures in place to\r\nprotect the loss, misuse, and alteration of the information under our control.\r\nWhenever you change or access your account information, we offer the use of a\r\nsecure server. Once your information is in our possession we adhere to strict\r\nsecurity guidelines, protecting it against unauthorized access.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Choice/Opt-Out<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We provide all users with the opportunity to opt-out of\r\nreceiving non-essential (promotional, marketing-related) communications from us\r\non behalf of our partners, and from us in general, after setting up an account.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">If you want to remove your contact information from all www.brnnda.com\r\nlists and newsletters, please visit unsubscribe.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Advertisements on\r\nwww.brnnda.com<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We use third-party advertising companies to serve ads when\r\nyou visit our Website. These companies may use information (not including your\r\nname, address, email address, or telephone number) about your visits to this\r\nand other websites in order to provide advertisements about goods and services\r\nof interest to you.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Your Consent<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">By using the Website and/ or by providing your information,\r\nyou consent to the collection and use of the information you disclose on the\r\nWebsite in accordance with this Privacy Policy, including but not limited to\r\nYour consent for sharing your information as per this privacy policy.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">If we decide to change our privacy policy, we will post\r\nthose changes on this page so that you are always aware of what information we\r\ncollect, how we use it, and under what circumstances we disclose it.<o:p></o:p></p></h2><h2><br></h2></div>', 'brnnda,brnnda.com,privacy policy,brnnda privacy policy,brnnda .com privacy policy', NULL, 0, 1);
INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(3, 'Terms & Condition', 'terms&condition', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"text-align: center;\"><font face=\"helvetica\"><font size=\"6\" style=\"\">TERMS OF USE</font><br></font></h2><div><p class=\"termofuse\" style=\"margin:0in;margin-bottom:.0001pt;text-align:justify;\r\nline-height:22.5pt;background:#F6F6F6\"><font face=\"helvetica\"><span style=\"font-size:11.0pt;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\">Welcome to BRNNDA. The domain\r\nname&nbsp;</span><a href=\"http://www.brnnda.com/\"><span style=\"font-size:11.0pt;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin;color:windowtext\"=\"\">www.brnnda.com</span></a><span style=\"font-size:11.0pt;font-family:\" calibri\",sans-serif;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin\"=\"\">&nbsp;is\r\nowned by BRNNDA BANGLADESH LIMITED, whose registered office is at H-03,B-D,R-6,Kafrul,Dhaka-1206\r\nYour use of this e-commerce portal and services and tools are governed by the\r\nfollowing terms and conditions (Terms of Use) as applicable to the website.\r\nWhen you visit the website, you are subject to the policies that are applicable\r\nhere.<o:p></o:p></span></font></p>\r\n\r\n<p class=\"termofuse\" style=\"margin:0in;margin-bottom:.0001pt;text-align:justify;\r\nline-height:22.5pt;background:#F6F6F6\"><span style=\"font-size:11.0pt;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\"><font face=\"helvetica\">For the purpose of these Terms of\r\nUse, wherever the context so requires ‘You’ or ‘User’ or ‘Visitor’ will mean\r\nany natural or legal person who has agreed to become a member of the site by\r\nsigning up. BRNNDA allows user to surf the website or making purchases without\r\nregistering on the website. The term “we”, “us”, “our” will\r\nmean&nbsp;brnnda.com.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\"><o:p><font face=\"helvetica\">&nbsp;</font></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><font face=\"helvetica\">&nbsp;When You use any of\r\nthe services provided by Us through the Platform, including but not limited to,\r\n(e.g. Product Reviews, Seller Reviews), You will be subject to the rules,\r\nguidelines, policies, terms, and conditions applicable to such service, and\r\nthey shall be deemed to be incorporated into this Terms of Use and shall be\r\nconsidered as part and parcel of this Terms of Use. We reserve the right, at Our\r\nsole discretion, to change, modify, add or remove portions of these Terms of\r\nUse, at any time without any prior written notice to You. You shall ensure to\r\nreview these Terms of Use periodically for updates/changes. Your continued use\r\nof the Platform following the posting of changes will mean that You accept and\r\nagree to the revisions. As long as You comply with these Terms of Use, We grant\r\nYou a personal, non-exclusive, non-transferable, limited privilege to enter and\r\nuse the Platform. By impliedly or expressly accepting these Terms of Use, You\r\nalso accept and agree to be bound by BRNNDA Policies including but not limited\r\nto Privacy Policy as amended from time to time.<o:p></o:p></font></p><p class=\"MsoNormal\"><font face=\"helvetica\"><br></font></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\"><font face=\"helvetica\">1. User Account, Password, and\r\nSecurity:<o:p></o:p></font></span></b></p><p class=\"MsoNormal\"><font face=\"helvetica\">If You use the Platform, You shall be responsible for\r\nmaintaining the confidentiality of your Display Name and Password and You shall\r\nbe responsible for all activities that occur under your Display Name and\r\nPassword. You agree that if You provide any information that is untrue,\r\ninaccurate, not current or incomplete, We shall have the right to indefinitely\r\nsuspend or terminate or block access of your membership on the Platform.<o:p></o:p></font></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><font face=\"helvetica\">You agree to immediately notify BRNDA of any unauthorized\r\nuse / breach of your password or account and ensure that you exit from your\r\naccount at the end of each session.<o:p></o:p></font></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">2. Services Offered:<o:p></o:p></span></b></p><p class=\"MsoNormal\">BRNNDA provides a number of Internet-based services through\r\nthe Platform. One such Service enables Users to purchase original merchandise\r\nsuch as clothing, footwear and accessories from various fashion and lifestyle\r\nbrands (collectively, \"Products\"). The Products can be purchased\r\nthrough the Platform through various methods of payments offered. The\r\nsale/purchase of Products shall be additionally governed by specific policies\r\nof sale, like cancellation policy, exchange policy, return policy, etc. It is\r\nclarified that at the time of creating a return request, users are required to\r\nconfirm (via a check box click) that the product being returned is unused and\r\nhas the original tags intact. If the product returned by the user is used,\r\ndamaged or if the original tags are missing, the user’s return request shall be\r\ndeclined, and the said product shall be re-shipped back to the customer. In the\r\nevent that the return request is declined, the user shall not be eligible for a\r\nrefund, and BRNDA assumes no liability in this regard. Further, in the event\r\nthat the user fails to accept the receipt of the said re-shipped product, the\r\nuser shall continue to be not eligible for a refund, and BRNDA assumes no\r\nliability with respect to the return or refund for the said re-shipped product.\r\nIn addition, these Terms of Use may be further supplemented by Product specific\r\nconditions, which may be displayed with that Product<o:p></o:p></p><p class=\"MsoNormal\">BRNNDA &nbsp;does not\r\nwarrant that Product description or other content on the Platform is accurate,\r\ncomplete, reliable, current, or error-free and assumes no liability in this\r\nregard.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">3. User Conduct and Rules on the\r\nPlatform:<o:p></o:p></span></b></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\"><br></span></b></p><p class=\"MsoNormal\"><b>You agree, undertake\r\nand confirm that Your use of the Platform shall be strictly governed by the\r\nfollowing binding principles:<o:p></o:p></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->You shall not host, display, upload, modify,\r\npublish, transmit, update or share any information which:<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->belongs to another person and to which You do\r\nnot have any right to<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->is grossly harmful, harassing, blasphemous,\r\ndefamatory, obscene, pornographic, pedophilic , libelous , invasive of\r\nanother\'s privacy, hateful, or racially, ethnically objectionable, disparaging,\r\nrelating or encouraging money laundering or gambling, or otherwise unlawful in\r\nany manner whatever<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->&nbsp;is\r\nmisleading in any way<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->involves the transmission of \"junk\r\nmail\", \"chain letters\", or unsolicited mass mailing or\r\n\"spamming\"<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->promotes illegal activities or conduct that is\r\nabusive, threatening, obscene, defamatory or libelous.<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->infringes upon or violates any third party\'s\r\nrights including, but not limited to, intellectual property rights, rights of\r\nprivacy (including without limitation unauthorized disclosure of a person\'s\r\nname, email address, physical address or phone number) or rights of publicity<o:p></o:p></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:45.75pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->contains restricted or password-only access\r\npages, or hidden pages or images (those not linked to or from another\r\naccessible page)<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->provides instructional information about illegal\r\nactivities such as making or buying illegal weapons, violating someone\'s\r\nprivacy, or providing or creating computer viruses<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->contains video, photographs, or images of\r\nanother person (with a minor or an adult).<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->tries to gain unauthorized access or exceeds the\r\nscope of authorized access to the Platform or to profiles, blogs, communities,\r\naccount information, bulletins, friend request, or other areas of the Platform\r\nor solicits passwords or personal identifying information for commercial or\r\nunlawful purposes from other users<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->interferes with another USER\'s use and enjoyment\r\nof the Platform or any other individual\'s User and enjoyment of similar\r\nservices<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->infringes any patent, trademark, copyright or\r\nother proprietary rights or third party\'s trade secrets or rights of publicity\r\nor privacy or shall not be fraudulent or involve the sale of counterfeit or\r\nstolen products<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->violates any law for the time being in force<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->threatens the unity, integrity, defense,\r\nsecurity or sovereignty of India, friendly relations with foreign states, or\r\npublic order or causes incitement to the commission of any cognizable offence\r\nor prevents investigation of any offence or is insulting any other nation<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->shall not be false, inaccurate or misleading<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraph\" style=\"margin-left:45.75pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->shall not create liability for Us or cause Us to\r\nlose (in whole or in part) the services of Our internet service provider\r\n(\"ISPs\") or other suppliers<o:p></o:p></p></div><p><br></p><p class=\"MsoNormal\"><b>A User may be\r\nconsidered fraudulent or loss to business due to fraudulent activity if any of\r\nthe following scenarios are met:<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><!--[endif]-->Users doesn\'t reply to the payment verification\r\nmail sent&nbsp; by BRNNDA<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>Users fails to produce adequate documents during\r\nthe payment details verification<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Misuse of another User\'s phone/email<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Users uses invalid address, email and phone no.<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Overuse of a voucher code<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Use of a special voucher not tagged to the email\r\nID used.<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Users returns the wrong product<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Users refuses to pay for an order<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Users involved in the snatch and run of any\r\norder<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Miscellaneous activities conducted with the sole\r\nintention to cause loss to business/revenue to BRNNDA.<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->User with a very high return rate<o:p></o:p></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Repeated request for monetary compensation for\r\nfake/used order<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>BRNDA may cancel any\r\norder that classify as \'Bulk Orders\'/\'Fraud orders\' under certain criteria at\r\nany stage of the product delivery. An order can be classified as \'Bulk\r\nOrder\'/\'Fraud Order\' if it meets with the below mentioned criteria, and any\r\nadditional criteria as defined by BRNDA:<o:p></o:p></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Products ordered are not for self-consumption\r\nbut for commercial resale<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Multiple orders placed for same product at the\r\nsame address, depending on the product category.<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Bulk quantity of the same product ordered<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Invalid address given in order details<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Any malpractice used to place the order<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Any promotional voucher used for placing the\r\n\'Bulk Order\' may not be refunded<o:p></o:p></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Any order paced using a technological\r\nglitch/loophole.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You shall not use the\r\nPlatform for any unlawful and fraudulent purposes, which may cause annoyance\r\nand inconvenience and abuses any policy and rules of the company and interrupt\r\nor causes to interrupt, damages the use by other Users of BRNNDA.<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><b>You shall not use any\r\nfalse e-mail address, impersonates any person or entity, or otherwise misleads\r\nBRNDA by sharing multiple address and phone numbers or transacting with\r\nmalafide intentions.<o:p></o:p></b></p><p class=\"MsoNormal\"><b>We on certain landing\r\npage even allow our Users to experience free exchange of ideas and observations\r\nregarding interest in the field of fashion, including ‘viewing user generated\r\ncontent’ and/or ‘videos’ and ‘posting comments’. By accessing, viewing and/or\r\nposting any user generated content to any specific dedicated page on the\r\nPlatform, you accept and consent to the practices described in these ‘Terms of\r\nService’ and ‘Privacy Policies’, as well as any other terms of prescribed by\r\nthe BRNNDA on the Platform. You agree and undertake that when accessing,\r\nviewing and/or posting any user generated content on these pages You will not\r\nimitate, abuse, harass, any Customer/User or violate and exploit, any of these\r\n‘Terms of Service’ of the Platform.<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You shall not use any\r\n\"deep-link\", \"page-scrape\", \"robot\",\r\n\"spider\" or other automatic device, program, algorithm or\r\nmethodology, or any similar or equivalent manual process, to access, acquire,\r\ncopy or monitor any portion of the Platform or any Content, or in any way\r\nreproduce or circumvent the navigational structure or presentation of the\r\nPlatform or any Content, to obtain or attempt to obtain any materials,\r\ndocuments or information through any means not purposely made available through\r\nthe Platform. We reserve Our right to bar any such activity.<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You shall not attempt\r\nto gain unauthorized access to any portion or feature of the Platform, or any\r\nother systems or networks connected to the Platform or to any server, computer,\r\nnetwork, or to any of the services offered on or through the Platform, by hacking,\r\npassword \"mining\" or any other illegitimate means.<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You may not pretend\r\nthat You are, or that You represent, someone else, or impersonate any other\r\nindividual or entity<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You shall at all\r\ntimes ensure full compliance with the applicable provisions of the Information\r\nTechnology Act, 2000 and rules thereunder as applicable and as amended from\r\ntime to time and also all applicable Domestic laws, rules and regulations\r\n(including the provisions of any applicable Exchange Control Laws or\r\nRegulations in Force) and International Laws, Foreign Exchange Laws, Statutes,\r\nOrdinances and Regulations (including, but not limited to Sales Tax/VAT, Income\r\nTax, Octroi, Service Tax, Central Excise, Custom Duty, Local Levies) regarding\r\nYour use of Our service and Your listing, purchase, solicitation of offers to\r\npurchase, and sale of products or services. You shall not engage in any\r\ntransaction in an item or service, which is prohibited by the provisions of any\r\napplicable law including exchange control laws or regulations for the time\r\nbeing in force.<o:p></o:p></b></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><h6><b><span style=\"font-size:11.0pt;\r\nline-height:107%;font-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;=\"\" mso-fareast-font-family:calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">From\r\ntime to time, You shall be responsible for providing information relating to\r\nthe products or services proposed to be sold by You. In this connection, You\r\nundertake that all such information shall be accurate in all respects. You\r\nshall not exaggerate or over emphasize the attributes of such products or\r\nservices so as to mislead other Users in any manner</span></b><span style=\"font-size:11.0pt;line-height:107%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">.</span></h6><p class=\"MsoNormal\"><span style=\"font-size:11.0pt;line-height:107%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\"><br></span></p><p class=\"MsoNormal\"><b>You shall not engage\r\nin advertising to, or solicitation of, other Users of the Platform to buy or\r\nsell any products or services, including, but not limited to, products or\r\nservices related to that being displayed on the Platform or related to us.<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>The Content posted\r\ndoes not necessarily reflect BRNNDA views. In no event shall BRNNDA assume or\r\nhave any responsibility or liability for any Content posted or for any claims,\r\ndamages or losses resulting from use of Content and/or appearance of Content on\r\nthe Platform. You hereby represent and warrant that You have all necessary\r\nrights in and to all Content which You provide and all information it contains\r\nand that such Content shall not infringe any proprietary or other rights of\r\nthird parties or contain any libelous , tortious, or otherwise unlawful\r\ninformation.</b><o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><span style=\"font-size:11.0pt;line-height:107%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\">BRNNDA hereby disclaims any guarantees of exactness as to\r\nthe finish, appearance, size, color etc., of the final Product as ordered by\r\nthe User. BRNNDA Return &amp; Exchange Policy offers you the option to return\r\nor exchange items purchased on BRNNDA within the return/exchange period (Please\r\nread the Product Detail Page to see the number of days up to which a product\r\ncan be returned/exchanged, post-delivery). In case of return of the purchased\r\nitem, please refer to the \"Return Policy\" on our BRNNDA.<o:p></o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">5. Contents Posted on Platform:<o:p></o:p></span></b></p><p class=\"MsoNormal\">All text, graphics, user interfaces, visual interfaces,\r\nphotographs, trademarks, logos, sounds, music and artwork (collectively,\r\n\"Content\"), is a third party user generated content and BRNNDA has no\r\ncontrol over such third party user generated content as BRNNDA is merely an\r\nintermediary for the purposes of this Terms of Use. Such Content will become\r\nOur property and You grant Us the worldwide, perpetual and transferable rights\r\nin such Content. We shall be entitled to, consistent with Our Privacy Policy as\r\nadopted in accordance with applicable law, use the Content or any of its\r\nelements for any type of use forever, including but not limited to promotional\r\nand advertising purposes and in any media whether now known or hereafter\r\ndevised, including the creation of derivative works that may include the\r\nContent You provide.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>You may use\r\ninformation on the products and services purposely made available on the\r\nPlatform for downloading, provided that You<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->do not remove any proprietary notice language in\r\nall copies of such documents,<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->use such information only for your personal,\r\nnon-commercial informational purpose and do not copy or post such information\r\non any networked computer or broadcast it in any media,<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->make no modifications to any such information,\r\nand<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoListParagraph\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->do not make any additional representations or\r\nwarranties relating to such documents.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">6. Disclaimer of Warranties and\r\nLiability:<o:p></o:p></span></b></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\"><br></span></b></p><p class=\"MsoNormal\">All the materials and products (including but not limited to\r\nsoftware) and services, included on or otherwise made available to You through\r\nPlatform are provided on \"as is\" and \"as available\" basis\r\nwithout any representation or warranties, express or implied except otherwise\r\nspecified in writing. Without prejudice to the forgoing paragraph, BRNNDA does\r\nnot warrant that: Platform will be constantly available, or available at all or\r\nThe information on Platform is complete, true, accurate or non-misleading.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">All the Products sold on Platform are governed by different\r\nstate laws and if Seller is unable to deliver such Products due to implications\r\nof different state laws, Seller will return or will give credit for the amount\r\n(if any) received in advance by Seller from the sale of such Product that could\r\nnot be delivered to You. You will be required to enter a valid phone number\r\nwhile placing an order on the Platform. By registering Your phone number with\r\nus, You consent to be contacted by Us via phone calls and/or SMS notifications,\r\nin case of any order or shipment or delivery related updates. We will not use\r\nyour personal information to initiate any promotional phone calls or SMS.<o:p></o:p></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">7.OFFER<o:p></o:p></span></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:14.0pt;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">8.</span></b><b><span style=\"font-size:14.0pt;mso-fareast-font-family:\r\n\" times=\"\" new=\"\" roman\";mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">\r\nBRNNDA\'s Shipping Policy?<o:p></o:p></span></b></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" whitney\",serif\"=\"\">We strive\r\nto deliver products purchased from BRNNDA in excellent condition and in the\r\nfastest time possible. For all the subsequent Orders of tk. 2000/- or more, we\r\nwill deliver the order to your doorstep free of cost. A platform handling fee\r\nof tk.80 in Dhaka and tk 120/- all over Bangladesh will be applicable to the\r\norders under tk.2000/-.<o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" whitney\",serif\"=\"\">&nbsp;If the order is cancelled, lost or un -\r\ndelivered to your preferred location, we will refund the complete order amount\r\nincluding any platform handling fee, if paid online.2. If you return an order\r\ndelivered to you, platform handling fee will not be refunded. However if you\r\nself - ship your returns, we will reimburse self - shipment charges based on\r\nBRNNDA \'s Returns Policy. For accounts whose return behavior violates our fair\r\nusage policy, platform handling fee will be non - refundable irrespective of\r\norder value. (More details on FAQ page)<o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" whitney\",serif\"=\"\">*Order\r\nvalue is calculated after applying discounts / VAT&nbsp; or any other applicable charges<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.5pt;font-family:\" whitney\",serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:#444546\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.5pt;font-family:\" whitney\",serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:#444546\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:12.0pt;font-family:\" whitney\",serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\"\"=\"\">Fair Usage Policy?<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Whitney, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">We always strive hard to provide the best experience to our customers.\r\nHowever, we have noticed that few accounts abuse our liberal returns policy.\r\nThese accounts typically return most of the items bought or choose to not\r\naccept our shipments. Hence, our regular customers are deprived of the\r\nopportunity to buy these items. To protect the rights of our customers, we\r\nreserve the right to collect platform handling fee of tk. 120 for all orders and\r\ndisable cash on delivery option for accounts which have high percentage of\r\nreturns and shipments not accepted by value of orders placed.<o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Whitney, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 14pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">9.</span></b><b><span style=\"font-size:14.0pt;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Cancellations\r\nand Modifications<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></span></b></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You can now cancel an order when it is in\r\npacked/shipped status, as long as the cancel option is available on\r\nApp/Website/M-site. This includes items purchased on sale also. Any amount paid\r\nwill be credited into the same payment mode using which the payment was made.</span><span style=\"font-family:\" whitney\",serif\"=\"\"> (More details on FAQ page)</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Whitney, serif; color: rgb(41, 48, 63); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p><h2 style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 14pt; font-family: Calibri, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><font color=\"#000000\">10.</font></b></span><span style=\"font-size:14.0pt;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-latin\"=\"\"><b><font color=\"#000000\"> Returns and Exchange</font></b><o:p></o:p></span></h2><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\r\n\" times=\"\" new=\"\" roman\";mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">BRNNDA\'s\r\nreturns and exchange policy gives you an option to return or exchange items\r\npurchased on BRNNDA for any reason within the specified return/exchange period\r\n(check product details page for the same). We only ask that you don\'t use the\r\nproduct and preserve its original condition, tags, and packaging. You are\r\nwelcome to try on a product but please take adequate measure to preserve its\r\ncondition.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:\" whitney\",serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" color:#29303f\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";mso-bidi-font-family:=\"\" calibri;mso-bidi-theme-font:minor-latin\"=\"\">The following EXCEPTIONS and RULES\r\napply to this Policy:<o:p></o:p></span></b></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ol start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">For return\r\n     or exchange you have to contact our support system within one day after\r\n     you received the delivery.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">Swarovski,\r\n     Precious Jewelry, Cosmetics, Rayban Sunglasses, Socks, Deodorants,\r\n     Perfumes, Briefs, Shapewear Bottoms, any Lingerie Set that includes a\r\n     Brief, Swimwear, Mittens, Wrist-Bands&nbsp;cannot be exchanged or returned.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">Some\r\n     products like fine jewellery, watches and selected products which are\r\n     susceptible to damage can only be returned/exchanged for a limited number\r\n     of days. Certain products like sherwanis can only be exchanged not\r\n     returned. <o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">Due to the\r\n     intimate nature, we handle returns for certain Innerwear, Sleepwear and\r\n     Lingerie items differently. Only self-ship return is allowed for such\r\n     items, hence pickup facility will not be available.Also, these items\r\n     cannot be exchanged.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">All items to\r\n     be returned or exchanged must be unused and in their original condition\r\n     with all original tags and packaging intact (for e.g. shoes must be packed\r\n     in the original shoe box).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">Under\r\n     Exchange Policy, only size exchanges are allowed. Items can be exchanged\r\n     for a similar size or a different size. Exchanges are allowed only if your\r\n     address is serviceable for an exchange by our Logistics team.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">In case you\r\n     have purchased an item which has a free gift/offer associated with it and\r\n     you wish to return the main item, then you will have to return the free\r\n     product as well<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:calibri;mso-bidi-theme-font:minor-latin\"=\"\">BRNNDA will\r\n     not be liable for the products returned by mistake. In circumstances where\r\n     an extra or a different product is returned by mistake, BRNNDA would not\r\n     be accountable for misplacement or replacement of the product and is not\r\n     responsible for its delivery back to the User.<o:p></o:p></span></li>\r\n</ol></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">11. Selling:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\">As a registered seller, you are allowed to list item(s) for\r\nsale on the Platform in accordance with the Policies which are incorporated by\r\nway of reference in this Terms of Use. You must be legally able to sell the\r\nitem(s) you list for sale on the Platform. You must ensure that the listed\r\nitems do not infringe upon the intellectual property, trade secret or other\r\nproprietary rights or rights of publicity or privacy rights of third parties.\r\nListings may only include text descriptions, graphics and pictures that\r\ndescribe your item for sale. All listed items must be listed in an appropriate category\r\non the Platform. All listed items must be kept in stock for successful\r\nfulfilment of sales. The listing description of the item must not be misleading\r\nand must describe actual condition of the product.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">&nbsp;If the item\r\ndescription does not match the actual condition of the item, you agree to\r\nrefund any amounts that you may have received from the Buyer. You agree not to\r\nlist a single product in multiple quantities across various categories on the\r\nPlatform. BRNNDA reserves the right to delete such multiple listings of the\r\nsame product listed by you in various categories.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Being a\r\nseller/vendor:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>1.Trade License<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>2. Vat Reg (If want\r\nto add&nbsp; vat )<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>3.Sign an agreement\r\nwith us.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">&nbsp;</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">&nbsp;</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">12. E-Platform for Communication:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\">You agree, understand and acknowledge that BRNNDA is an\r\nonline platform that enables you to purchase products listed on the Platform at\r\nthe price indicated therein at any time. You further agree and acknowledge that\r\nBRNNDA is only a facilitator and is not and cannot be a party to or control in\r\nany manner any transactions on BRNNDA.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:14.0pt;line-height:107%\">13. Trademark, Copyright and\r\nRestriction:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\">Platform is controlled and operated by BRNNDA and products\r\nare sold by respective Sellers. All material on Platform, including images,\r\nillustrations, audio clips, and video clips, are protected by copyrights,\r\ntrademarks, and other intellectual property rights. Material on BRNNDA is\r\nsolely for Your personal, non-commercial use. You must not copy, reproduce,\r\nrepublish, upload, post, transmit or distribute such material in any way,\r\nincluding by email or other electronic means and whether directly or indirectly\r\nand You must not assist any other person to do so. Without the prior written\r\nconsent of the owner, modification of the materials, use of the materials on\r\nany other BRNNDA or networked computer environment or use of the materials for\r\nany purpose other than personal, non-commercial use is a violation of the\r\ncopyrights, trademarks and other proprietary rights, and is prohibited. Any use\r\nfor which You receive any remuneration, whether in money or otherwise, is a\r\ncommercial use for the purposes of this clause. It is expressly clarified that\r\nYou will retain ownership and shall solely be responsible for any content that\r\nYou provide or upload when using any Service, including any text, data, information,\r\nimages, photographs, music, sound, video or any other material which you may\r\nupload, transmit or store when making use of Our various Service. However, We\r\nreserve the right to use/reproduce any content uploaded by You and You agree to\r\ngrant royalty free, irrevocably, unconditionally, perpetually and worldwide\r\nright to Us to use the content for reasonable business purpose.<o:p></o:p></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><br></p></h2></div>', 'brnnda.com,terms&condition,brnnda.com terms and condition,brnnda terms,brnnda terms of use,brnnda.com policy', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

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
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'support@brnnda.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', 'Dhaka Bangladesh', '01886060861', NULL, 'support@brnnda.com', NULL, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 0, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1);

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
(21, '1616434867logo-1.png', NULL),
(22, '1616434876logo-2.png', NULL),
(23, '1616434884logo-3.png', NULL),
(24, '1616434892logo-4.png', NULL),
(25, '1616434902logo-5.png', NULL),
(26, '1616434910logo-6.png', NULL);

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
(47, 'Aamarpay payment', 'Online Payment', '<br>', 1);

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
(6, 'Uttara'),
(7, 'Mirpur-1'),
(8, 'Mirpur-2'),
(9, 'Mirpur-10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` varchar(255) DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `offer_percentage` varchar(191) DEFAULT NULL,
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
  `type` enum('Physical','Digital','License') DEFAULT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `discount_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `cashback` varchar(255) DEFAULT NULL,
  `product_payment_method` int(11) NOT NULL DEFAULT 1 COMMENT '1 for online. 2 for cash on',
  `commission` float DEFAULT NULL,
  `product_tax` float DEFAULT NULL,
  `product_tax_status` int(11) DEFAULT 0,
  `galval` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `offer_percentage`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `cashback`, `product_payment_method`, `commission`, `product_tax`, `product_tax_status`, `galval`) VALUES
(232, 'af160479Kc', 'normal', NULL, 123, 24, 19, 19, NULL, 'Blue Check Casual Shirt', 'blue-check-casual-shirt-af160479kc', '16155664941k3vUlyT.png', '16155664959liZ7V5t.jpg', NULL, 'S,M,L,XL', '10,10,10,10', '0,0,0,0', '#1345c7,#000000,#e8290f', 650, 0, '50', '<p><strong>Spades Casual Men Shirts</strong></p>\r\n\r\n<p>Main Fabric: Fine-Cotton</p>\r\n\r\n<p>Colour: Blue with Maroon Finishing inner neck</p>\r\n\r\n<p>Style: Streched Check Print</p>', NULL, NULL, 1, 14, 'casual shirt,casual men shirt', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 10:58:14', '2021-06-01 06:15:59', 0, NULL, NULL, NULL, 1, 0, NULL, 1, 12, 0, NULL, NULL),
(233, 'SOE6636zpS', 'normal', NULL, 123, 21, 19, 19, NULL, 'MENS CASUAL SHIRT', 'mens-casual-shirt-soe6636zps', '1615567139BXJHA9K2.png', '1615567139lAVMHxyY.jpg', NULL, 'S,M,L,XL', '10,10,10,10', '0,0,0,0', '#000000,#e00e0e,#2615e0,#11eb5a', 1050, 1200, '50', '<p><strong><em>Licc Jeans</em>&nbsp;Brand</strong></p>\r\n\r\n<p>Men&rsquo;s chambray material Slim Fit</p>\r\n\r\n<p>design long sleeve casual shirt</p>\r\n\r\n<p>collection&nbsp;<em>Fashion Bug Sri Lanka</em>&nbsp;</p>\r\n\r\n<p>Clothing Store Find a wide selection of styles.</p>', NULL, NULL, 1, 12, 'Licc Jeans', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2021-03-12 11:08:59', '2021-05-23 13:25:13', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 0, NULL, NULL),
(234, '9kT7144fm7', 'normal', NULL, 123, 21, 19, 20, NULL, 'Black Full Sleeves Formal Shirt', 'black-full-sleeves-formal-shirt-9kt7144fm7', '1615567670xmyvTYOQ.png', '1615567670vpN45Njl.jpg', NULL, 'S,M,L', '10,10,10', '0,0,0', '#000000,#ec1818,#170af1,#ddea1c', 1500, 0, '25', '<p><strong>Black Full Sleeves Formal Shirt</strong></p>\r\n\r\n<p>A well fitted formal shirt always makes you look sharp.</p>\r\n\r\n<p>Make an impression in this black solid Super Slim Fit shirt</p>', NULL, NULL, 1, 12, 'Black Full Sleeves Formal Shirt,Full Sleeves Formal Shirt', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2021-03-12 11:17:50', '2021-06-18 02:25:47', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 23, 0, NULL, NULL),
(235, 'vEV76824la', 'normal', NULL, 123, 21, 19, 21, NULL, 'Mens Black T-Shirt', 'mens-black-t-shirt-vev76824la', '1615568111RRhMfXvQ.png', '1615568112BjTIbbsY.jpg', NULL, 'S,M', '14,10', '0,0', NULL, 750, 850, '25', '<p><strong>Mens Black T-Shirt&nbsp;</strong></p>\r\n\r\n<p>T-Shirt is 100% cotton</p>\r\n\r\n<p>&nbsp;black in colour.</p>\r\n\r\n<p>It has a crew neck and short sleeves.&nbsp;</p>\r\n\r\n<p>printed on the front in white.</p>\r\n\r\n<p><br />\r\n&bull; Black<br />\r\n&bull; 100% Cotton<br />\r\n&bull; Crew Neck<br />\r\n&bull; Short Sleeves<br />\r\n&nbsp;</p>', NULL, NULL, 1, 11, 'Mens Black T-Shirt,Black T-Shirt', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 11:25:11', '2021-06-20 11:35:52', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 123, 0, NULL, NULL),
(236, 'l9O8121e9D', 'normal', NULL, 123, 21, 19, 23, NULL, 'Festive  Cotton Print Panjabi', 'festive-cotton-print-panjabi-l9o8121e9d', '1615568562cjAVy6sI.png', '1615568562VtCXmWMe.jpg', NULL, NULL, NULL, NULL, '#000000,#f40707,#e5cb17,#320ca5', 2250, 0, '25', '<h2>QUICK OVERVIEW</h2>\r\n\r\n<h2><br />\r\n● Product Type: Panjabi<br />\r\n● Gender: Men<br />\r\n● Fabric: Premium Oxford Cotton<br />\r\n● Color: As Given Picture<br />\r\n● Type: Semi Long Punjabi<br />\r\n● Style: Casual<br />\r\n● Placket With Wooden Button<br />\r\n● Made with &nbsp;in Bangladesh</h2>', NULL, NULL, 1, 8, 'Cotton Print Panjabi', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2021-03-12 11:32:42', '2021-05-23 23:42:52', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 23, 0, NULL, NULL),
(237, 'tFL8770IYS', 'normal', NULL, 123, 21, 19, 24, NULL, 'Kabli Panjabi - Light Blue', 'kabli-panjabi-light-blue-tfl8770iys', '1615568971j6e44JnZ.png', '1615568971mz3Zl2e7.jpg', NULL, NULL, NULL, NULL, NULL, 2500, 0, '25', '<p><strong>Product Description:</strong></p>\r\n\r\n<ul>\r\n	<li>Product Type: Kabli Panjabi</li>\r\n	<li>100% Good Quality</li>\r\n	<li>Fabrics : Linen</li>\r\n	<li>Kabli Panjabi &amp; Pajama</li>\r\n	<li>Color :Light Blue</li>\r\n	<li>Gender: Men</li>\r\n	<li>Fashionable and comfortable for summer</li>\r\n	<li>Size Available : 38=S, 40=M, 42=L, 44=XL, 46=XXL</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Size : 38 - Chest : 39/40 , Length : 38&nbsp;</p>\r\n\r\n<p>Size : 40 - Chest : 41/42 , Length : 40&nbsp;</p>\r\n\r\n<p>Size : 42 - Chest : 43/44 , Length : 42&nbsp;</p>\r\n\r\n<p>Size : 44 - Chest : 45/46 , Length : 44&nbsp;</p>\r\n\r\n<p>Size : 46 - Chest : 47/48 , Length : 46</p>', NULL, NULL, 1, 20, 'Kabli Panjabi - Light Blue,KableWala', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 11:39:31', '2021-05-26 10:42:32', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 132, 0, NULL, NULL),
(238, 'dnG8976rEJ', 'normal', NULL, 123, 21, 20, 26, NULL, 'Navy Blue Denim Jeans Pant for Men', 'navy-blue-denim-jeans-pant-for-men-dng8976rej', '1615569408kshm7lHg.png', '1615569408qSo385qf.jpg', NULL, NULL, NULL, NULL, NULL, 1350, 0, '40', '<p>Jeans Pant - The Most Trendy Fashionwear,</p>\r\n\r\n<p>Jeans Pant is a trendy garment for the young generation.</p>\r\n\r\n<p>Men &nbsp;look very gorgeous in colorful Jeans</p>', NULL, NULL, 1, 12, 'Navy Blue Denim Jeans Pant for Men,Denim', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, '2021-03-12 11:46:48', '2021-06-20 00:12:39', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 123, 0, NULL, NULL),
(239, 'REi9412Dhu', 'normal', NULL, 123, 21, 20, 27, NULL, 'Grey Lightweight Stretch Chino', 'grey-lightweight-stretch-chino-rei9412dhu', '1615569858RXPcUwVI.png', '1615569860c5fvR8wK.jpg', NULL, NULL, NULL, NULL, NULL, 750, 0, '40', '<p>Product description&nbsp;</p>\r\n\r\n<p>Wear these in your home office or out and about. These chino pants are versatile enough to be your go-to pants for every occasion.</p>\r\n\r\n<p>Product Features</p>\r\n\r\n<ul>\r\n	<li>Lightweight fabric</li>\r\n	<li>Multiple colors</li>\r\n	<li>Low rise and tapered legs</li>\r\n	<li>Slight stretch for comfort</li>\r\n</ul>\r\n\r\n<p>Meterials &amp; care&nbsp;</p>\r\n\r\n<p>Made with a 97% Cotton / 3% Elastane premium fabric and designed to wear casually. Machine wash cold with like colors, hang dry or tumble dry low.</p>', NULL, NULL, 1, 22, 'Grey Lightweight Stretch Chino', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 11:54:18', '2021-06-20 09:23:16', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 123, 0, NULL, NULL),
(240, '2IA9885M1D', 'normal', NULL, 123, 21, 20, 30, NULL, 'Mens Cotton Formal Pant', 'mens-cotton-formal-pant-2ia9885m1d', '1615570150UX0d8J4H.png', '1615570150f49B9lWe.jpg', NULL, NULL, NULL, NULL, NULL, 1300, 0, '40', '<p>Product Descripption</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Fit</td>\r\n			<td>Slim Fit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Waist Size</td>\r\n			<td>28, 30, 32, 34, 36, 38</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Occasion</td>\r\n			<td>Office Wear</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Plain</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wash Care</td>\r\n			<td>Hand Wash</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 1, 26, 'Mens Cotton Formal Pant', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-12 11:59:10', '2021-06-15 06:34:04', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 0, NULL, NULL),
(241, 'Lmf01555Uf', 'normal', NULL, 123, 21, 21, 31, NULL, 'PUMA Cap', 'puma-cap-lmf01555uf', '1615570493j2UcDMi7.png', '1615570494xQFYQIVe.jpg', NULL, NULL, NULL, NULL, NULL, 350, 420, NULL, '<p>PRODUCT STORY This cap celebrates not only PUMA&#39;s impressive sports heritage, but the power of sports to bring people together.</p>', NULL, NULL, 1, 15, 'cap,puma cap', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2021-03-12 12:04:53', '2021-06-14 19:19:07', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 0, NULL, NULL),
(242, 'ufQ05134mj', 'normal', NULL, 123, 21, 21, 32, NULL, 'Slim Wallet', 'slim-wallet-ufq05134mj', '16155707606FBwriVS.png', '1615570760E6PpCZKR.jpg', NULL, NULL, NULL, NULL, NULL, 650, 750, NULL, '<p>The Best Slim Wallet for 2021</p>', NULL, NULL, 1, 12, 'The Best Slim Wallet', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2021-03-12 12:09:20', '2021-06-15 12:51:42', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 344, 0, NULL, NULL),
(243, 'br-10001', 'normal', NULL, 122, 21, 19, 19, NULL, 'Men Colorful Shirt', 'men-colorful-shirt-br-10001', '1615609314syb6tJj8.png', '1615609315IG8jkxHy.jpg', NULL, 's,M,L,XL,XXL', '5,10,10,10,10', '0,0,0,0,0', '#000000,#fa0606,#0695fc,#20d19c', 1000, 1200, NULL, '<p>A&nbsp;<strong>product description</strong>&nbsp;is the marketing copy used to&nbsp;<strong>describe</strong>&nbsp;a&nbsp;<strong>product&#39;s</strong>&nbsp;value proposition to potential customers. A compelling&nbsp;<strong>product description</strong>&nbsp;provides customers with&nbsp;<strong>details</strong>&nbsp;around features, problems it solves and other benefits to help generate a sale.</p>', NULL, NULL, 1, 48, 'men shirts,colorful shirts,men casual shirts', NULL, NULL, 0, 'in Dhaka 2-3 Days ,outside dhaka 4-5 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 0, 0, 1, '2021-03-12 22:51:54', '2021-06-19 07:14:28', 1, '27/4/24', NULL, NULL, 1, 0, NULL, 1, 344, 0, NULL, NULL),
(244, 'br-100002', 'normal', NULL, 122, 22, 26, 36, NULL, 'Black kurti', 'black-kurti-br-100002', '1615610066EFQfuTxK.png', '1615610066ZtwE1qpN.jpg', NULL, 's,M,L,XL', '10,10,10,10', '0,0,0,0', '#000000,#10068a,#f70b0b,#e3a328,#fcf6f6', 800, 0, NULL, '<p>A&nbsp;<strong>product description</strong>&nbsp;is the marketing copy used to&nbsp;<strong>describe</strong>&nbsp;a&nbsp;<strong>product&#39;s</strong>&nbsp;value proposition to potential customers. A compelling&nbsp;<strong>product description</strong>&nbsp;provides customers with&nbsp;<strong>details</strong>&nbsp;around features, problems it solves and other benefits to help generate a sale.</p>', NULL, NULL, 1, 10, 'women kurti,kurti,women clothing', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2021-03-12 23:04:26', '2021-06-16 07:07:00', 0, NULL, NULL, NULL, 1, 0, NULL, 1, 12, 0, NULL, NULL),
(245, 'xOZ31900fg', 'normal', NULL, 124, 22, 26, 39, NULL, 'Cotton Three Piece', 'cotton-three-piece-xoz31900fg', '1615653467qLHIl2zL.png', '1615653467lNZR82z7.jpg', NULL, NULL, NULL, NULL, NULL, 1850, 2250, NULL, '<p>,Indisn Cotton Three Piece</p>', 7, NULL, 1, 23, 'Indisn Cotton Three Piece', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 0, 1, 0, '2021-03-13 11:07:47', '2021-06-18 05:04:52', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 10, 1, NULL),
(246, 'kft4252XmN', 'normal', NULL, 124, 22, 26, 40, NULL, 'Cotton Casual Wear Girls Tops', 'cotton-casual-wear-girls-tops-kft4252xmn', '16156543505HffXYZu.png', '1615654351daF7Ecqd.jpg', NULL, 'xL', '9', '0', NULL, 850, 900, NULL, '<p>Cotton Casual Wear Girls Tops, Size: XL</p>', NULL, NULL, 1, 17, 'Cotton Casual Wear Girls Tops, Size: XL', NULL, NULL, 0, '2-3 DAYS', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2021-03-13 11:22:30', '2021-06-18 05:04:48', 1, '03/18/2021', NULL, NULL, 1, 0, NULL, 1, 12, 10, 1, NULL),
(247, '1fs4356gUG', 'normal', NULL, 124, 22, 26, 42, NULL, 'Girls T-Shirts', 'girls-t-shirts-1fs4356gug', '1615654714bOwl39nf.png', '1615654714hj2LdRtA.jpg', NULL, NULL, NULL, NULL, '#000000,#ec0e0e,#1010e7,#f4e70f', 450, 0, NULL, '<p>T Shirts For Girls: Buy Girls T Shirts</p>', NULL, NULL, 1, 24, 'T Shirts For Girls', NULL, NULL, 0, 'Inside Dhaka 2-3 DAYS, outside Dhaka 4-5 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 1, 0, 0, '2021-03-13 11:28:34', '2021-06-18 05:04:58', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 45, NULL, NULL),
(248, '37F4815wmN', 'normal', NULL, 124, 22, 27, 45, NULL, 'Off White Cotton Printed Palazzo', 'off-white-cotton-printed-palazzo-37f4815wmn', '1615654893TuawrDUw.png', '1615654893X805xUDp.jpg', NULL, NULL, NULL, NULL, NULL, 850, 0, NULL, '<p>Off White Cotton Printed Palazzo</p>', NULL, NULL, 1, 16, 'Off White Cotton Printed Palazzo', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, '2021-03-13 11:31:33', '2021-06-19 23:06:37', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 10, 1, NULL),
(249, '3tS5010Jgy', 'normal', NULL, 124, 22, 27, 48, NULL, 'Women\'s Stylish Casual Jeans', 'womens-stylish-casual-jeans-3ts5010jgy', '1615655136iH6RGUwF.png', '1615655136s7V2gx0p.jpg', NULL, NULL, NULL, NULL, NULL, 1800, 1950, NULL, '<h1>Women&#39;s Stylish Casual Jeans Wide Leg Denim Pants Elastic Lady Jeans</h1>\r\n\r\n<p>&nbsp;</p>', 90, NULL, 1, 14, 'Denim Pants,Women\'s Stylish Casual Jeans', NULL, NULL, 0, 'Inside Dhaka 2-3 DAYS, outside Dhaka 4-5 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 0, '2021-03-13 11:35:36', '2021-06-18 17:36:10', 0, NULL, NULL, NULL, 1, 0, NULL, 1, 12, 10, 1, NULL),
(250, 'n625349VtN', 'normal', NULL, 124, 22, 28, 51, NULL, 'HIJAB\'S MUSLIM MODEST WOMEN\'S', 'hijabs-muslim-modest-womens-n625349vtn', '1615655578tVmyZwf8.png', '1615655578Q5b9D2Cp.jpg', NULL, NULL, NULL, NULL, NULL, 750, 850, NULL, '<p>HIJAB&#39;S MUSLIM MODEST WOMEN&#39;S FRILLED STYLISH KHIMAR/SCARF/HIJAB</p>', 15, NULL, 1, 13, 'HIJAB\'S MUSLIM MODEST', NULL, NULL, 0, 'Inside Dhaka 2-3 DAYS, outside Dhaka 4-5 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2021-03-13 11:42:58', '2021-06-19 21:35:10', 0, NULL, NULL, NULL, 0, 0, NULL, 1, 12, 10, NULL, NULL),
(251, 'TSj7645FVl', 'normal', NULL, 124, 22, 27, 47, NULL, 'Ladies Night Pant', 'ladies-night-pant-tsj7645fvl', '1615698285lvJIIq2C.png', '1615698286eQWVCIcs.jpg', NULL, 'S,M,L,XL', '7,20,100,10', '0,0,0,0', '#000000,#efec11,#ea0909', 750, 850, NULL, '<p>We are highly acknowledged organization engaged in presenting remarkable range of Ladies Night Pant.<br />\r\nFeatures:<br />\r\n- Elegant colors<br />\r\n- Light weight<br />\r\n- Skin friendly</p>', NULL, NULL, 1, 24, 'Ladies Night Pant,PANT,NIGHT PANT', NULL, NULL, 0, 'Inside Dhaka 2-3 DAYS, outside Dhaka 4-5 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, '2021-03-13 23:34:45', '2021-06-21 00:47:28', 0, NULL, NULL, NULL, 1, 0, NULL, 1, 12, 10, 1, NULL),
(252, 'aNb8250EJK', 'normal', NULL, 127, 21, 19, 21, NULL, 'men tshirt', 'men-tshirt-anb8250ejk', '1615698403dHqUXK1g.png', '1615698403zcOtWzlC.jpg', NULL, 's,m,L', '0,10,9', '0,0,0', '#000000,#ffffff,#ff0000,#1276bf', 500, 600, NULL, '<p>dfrgtfgbjkdfbhvdjbvvbbverf</p>', NULL, NULL, 1, 25, 'tshirt,men tshirt', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-03-13 23:36:43', '2021-06-20 00:46:59', 1, '04/27/2021', NULL, NULL, 1, 0, NULL, 1, 12, 5, 1, NULL),
(253, 'sSt1746gPv', 'normal', NULL, 122, 21, 20, 26, NULL, 'gdfgbd fdffdf', 'gdfgbd-fdffdf-sst1746gpv', '16230518146CNrbY5K.png', '1623051814YW7JwwJu.jpg', NULL, NULL, NULL, NULL, NULL, 5454, 78863, NULL, '<p>7541</p>', 12, NULL, 1, 1, '475247725', NULL, NULL, 0, NULL, 0, NULL, NULL, ']\'', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-07 01:43:34', '2021-06-15 18:54:01', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 12, 1, NULL),
(254, 'Sip4874qz4', 'normal', NULL, 145, 22, 28, NULL, NULL, 'bobblehead', NULL, '16238349497iUhk0hN.png', NULL, NULL, NULL, NULL, NULL, NULL, 230, 15, NULL, '<p>,knlakfn sdnf ljkasn ffpba af</p>', 20, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 03:45:49', '2021-06-16 03:45:49', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 10, 1, NULL),
(255, '8a17824qE5', 'normal', NULL, 145, 22, NULL, NULL, NULL, 'et sets erfse fe', NULL, '1623837833zctcxben.png', NULL, NULL, NULL, NULL, NULL, NULL, 2123, 0, NULL, '<p>sdnesbeawr</p>', 12, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 04:33:53', '2021-06-16 04:33:53', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 12, 1, NULL),
(256, 'ELS9716cXu', 'normal', NULL, 0, 21, 19, 20, NULL, 'arif', NULL, '1623839769tnCNABci.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 280, NULL, '<p>dsgfgjh</p>', 60, NULL, 1, 0, NULL, 'shirt', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:06:09', '2021-06-16 05:06:09', 0, NULL, NULL, NULL, 0, 0, '20', 1, 10, 15, 1, NULL),
(257, 'Vhi9995uTh', 'normal', NULL, 0, 21, 19, 20, NULL, 'Milan Formal Shirt', NULL, '16238400534kH2VC6d.png', NULL, NULL, NULL, NULL, NULL, NULL, 500, 560, NULL, NULL, 20, NULL, 1, 0, NULL, 'shirt', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:10:53', '2021-06-16 05:10:53', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 15, 1, NULL),
(258, 'DDB1033BzO', 'normal', NULL, 0, 21, 19, 20, NULL, 'grameen check', NULL, '1623841105UYemAnBN.png', NULL, NULL, NULL, NULL, NULL, NULL, 500, 560, NULL, '<p>dfghj,k</p>', 20, NULL, 1, 0, 'sdfgds', 'dfg', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:28:25', '2021-06-16 05:28:25', 0, NULL, NULL, NULL, 0, 0, '20', 1, 10, 10, 1, NULL),
(259, 'L8e1450czg', 'normal', NULL, 0, 21, 19, 20, NULL, 'abcd', NULL, '1623841517B64WpDdi.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 260, NULL, '<p>sfgk</p>', NULL, NULL, 1, 0, 'ewew', 'dsfds', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:35:17', '2021-06-16 05:35:17', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(260, '1jm1865RpR', 'normal', NULL, 0, 21, 19, 20, NULL, 'ab', NULL, '16238419858BD3fHC2.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 260, NULL, '<p>fgjgj</p>', 10, NULL, 1, 0, 'trytr', 'frth', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:43:05', '2021-06-16 05:43:05', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(261, 'AHZ2083koE', 'normal', NULL, 145, 23, NULL, NULL, NULL, 'kbak jbfa  asdf sdf', NULL, '1623842111EKc0b1J0.png', NULL, NULL, NULL, NULL, NULL, NULL, 420, 450, NULL, '<p>sabdtb vbsea</p>', 12, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:45:11', '2021-06-16 05:45:11', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 12, 1, NULL),
(262, '4922386yOg', 'normal', NULL, 0, 21, 19, 20, NULL, 'dsfsf', NULL, '1623842476ppmMuOC7.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 260, NULL, '<p>hjkgkgk</p>', 10, NULL, 1, 0, 'hrh', 'gfh', '#000000', 0, NULL, 0, NULL, NULL, 'asdf', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 05:51:16', '2021-06-16 05:51:16', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(263, 'J7s4795aZw', 'normal', NULL, 0, 21, 19, 19, NULL, 'hhhhh', NULL, '1623844863gxWvjx0j.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 260, NULL, '<p>rtrhjyk</p>', 10, NULL, 1, 0, NULL, 'dsg', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 06:31:03', '2021-06-16 06:31:03', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(264, 'pRN5809ODS', 'normal', NULL, 0, 21, 19, 19, NULL, 'arifur', NULL, '1623845886ZgC10AOt.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 20, NULL, '<p>dfjgvb</p>', NULL, NULL, 1, 0, 'hjfjh', 'dsfsd', '#000000', 0, NULL, 0, NULL, NULL, 'hgjj', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 06:48:06', '2021-06-16 06:48:06', 0, NULL, NULL, NULL, 0, 0, '2000', 1, 10, 10, 1, NULL),
(265, 'afx91810Pj', 'normal', NULL, 0, 21, 19, 20, NULL, 'juk', NULL, '1623849254P9RpLCnS.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 260, NULL, '<p>ghjhjghj</p>', 10, NULL, 1, 0, NULL, 'fghf', '#8a6262', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 07:44:14', '2021-06-16 07:44:14', 0, NULL, NULL, NULL, 0, 0, '20', 1, 10, 10, 1, NULL),
(266, 'wqJ9616zsI', 'normal', NULL, 0, 21, 19, 20, NULL, 'qwe', NULL, '16238497190LZ5GaaX.png', NULL, NULL, NULL, NULL, NULL, NULL, 230, 250, NULL, '<p>,jhklhkjhk</p>', 10, NULL, 1, 0, NULL, 'fgvdg', '#503838', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 07:51:59', '2021-06-16 07:51:59', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(267, 'Op70347HJf', 'normal', NULL, 0, 21, 19, 20, NULL, 'ab12', NULL, '16238504925fetGVYX.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 220, NULL, '<p>abjhsdfds</p>', 10, NULL, 1, 0, NULL, 'dsfcdsf', '#781e1e', 0, NULL, 0, NULL, NULL, 'dcdsf', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 08:04:52', '2021-06-16 08:04:52', 0, NULL, NULL, NULL, 0, 0, '20', 1, 10, 10, 1, NULL),
(268, '5N70763Xg1', 'normal', NULL, 0, 21, 19, 20, NULL, 'pl', NULL, '16238508228BLJ7RKe.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 220, NULL, '<p>ghkjkj</p>', 10, NULL, 1, 0, NULL, 'tytyjh', '#5e2929', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 08:10:22', '2021-06-16 08:10:22', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(269, 'iDQ1336tmW', 'normal', NULL, 0, 21, 19, 19, NULL, 'yu', NULL, '1623851406TZBddAC9.png', NULL, NULL, NULL, NULL, NULL, NULL, 500, 550, NULL, '<p>trhtrhrtr</p>', 10, NULL, 1, 0, NULL, 'fdhtfrgh', '#ad7676', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 08:20:06', '2021-06-16 08:20:06', 0, NULL, NULL, NULL, 0, 0, '10', 1, 10, 10, 1, NULL),
(270, 'DI76733y2H', 'normal', NULL, 0, 21, 19, 20, NULL, 'alex man', NULL, '1623866776svvl260O.png', NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, NULL, '<p>dfds</p>', 20, NULL, 1, 0, 'sdf', 'dsfds', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:36:16', '2021-06-16 12:36:16', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(271, 'KVe7053Z9h', 'normal', NULL, 0, 21, 19, 19, NULL, 'alexxx man', NULL, '16238671343JT957v7.png', NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, NULL, '<p>dfdsfsf</p>', 20, NULL, 1, 0, 'dsf', 'd', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:42:14', '2021-06-16 12:42:14', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(272, 'dEi7275bVu', 'normal', NULL, 0, 21, 19, 19, NULL, 'alex mand', NULL, '1623867326lmHr27ro.png', NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, NULL, '<p>safsd</p>', 20, NULL, 1, 0, 'sf', 'sf', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:45:26', '2021-06-16 12:45:26', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(273, 'VUc7572L3L', 'normal', NULL, 0, 21, 19, 20, NULL, 'aaaa', NULL, '1623867620bFFv6xIQ.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>dsfds</p>', 20, NULL, 1, 0, 'csd', 'dsds', '#a38787', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:50:20', '2021-06-16 12:50:20', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(274, '62G7721pLX', 'normal', NULL, 0, 21, 19, 20, NULL, 'abcdpo', 'abcdpo-62g7721plx', '1623867777CxpBAMFq.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>csdcs</p>', 20, NULL, 1, 1, 'sadsa', 'scsa', '#614e4e', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:52:57', '2021-06-19 08:45:50', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(275, '2cD7969aKl', 'normal', NULL, 0, 21, 19, 20, NULL, 'skype', 'skype-2cd7969akl', '1623868023peurMG80.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>fhgff</p>', 20, NULL, 1, 1, 'dsv', 'fdvdf', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 12:57:03', '2021-06-19 10:49:04', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(276, 'A8m8210Eno', 'normal', NULL, 0, 21, 19, 20, NULL, 'cc', 'cc-a8m8210eno', '16238682591Xl2giYS.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>vdfvd</p>', 20, NULL, 1, 1, 'xcv', 'v', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:00:59', '2021-06-19 09:27:05', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(277, 'iSF8560NG2', 'normal', NULL, 0, 21, 19, 20, NULL, 'www', 'www-isf8560ng2', '16238686054flLec51.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>dfgdfg</p>', 20, NULL, 1, 1, 'sdc', 'dfv', '#591e1e', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:06:45', '2021-06-19 13:58:05', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(278, 'ysM8981yox', 'normal', NULL, 0, 21, 19, 20, NULL, 'asas', 'asas-ysm8981yox', '1623869020vPTUihMV.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>sfedf</p>', 20, NULL, 1, 1, 'dsf', 'd', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:13:40', '2021-06-19 09:05:14', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(279, 'fzs0283MlV', 'normal', NULL, 0, 21, 19, 21, NULL, 'yyy', 'yyy-fzs0283mlv', '1623870330O2WfHoy2.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>we</p>', 20, NULL, 1, 1, 'sa', 'sd', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:35:30', '2021-06-19 14:18:56', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(280, 'KkR0507SGH', 'normal', NULL, 0, 21, 19, 20, NULL, 'zzz', 'zzz-kkr0507sgh', '1623870553U4Rewj5T.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>efwf</p>', 20, NULL, 1, 1, 's', 's', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:39:13', '2021-06-19 14:39:36', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(281, 'NXv1089u6J', 'normal', NULL, 0, 21, 19, 23, NULL, 'dddddd', 'dddddd-nxv1089u6j', '1623871141ycTHTLfp.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>sdfsd</p>', 20, NULL, 1, 1, 'sdf', 'ds', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:49:01', '2021-06-19 09:49:23', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(282, 'q8k1316RE9', 'normal', NULL, 0, 21, 19, 20, NULL, 'eeeee', 'eeeee-q8k1316re9', '1623871358Of8dAgZb.png', '14.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>regreg</p>', 20, NULL, 1, 1, 'sdv', 'd', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 13:52:38', '2021-06-19 10:11:16', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(283, 'ri53134lU9', 'normal', NULL, 0, 21, 19, 19, NULL, 'rrr', 'rrr-ri53134lu9', '1623873191dXdIkLEl.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>sdfsdvsd</p>', 20, NULL, 1, 1, 'sdsd', 'sd', '#ad7676', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:23:11', '2021-06-19 10:30:21', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(284, 'v5432316Zy', 'normal', NULL, 0, 21, 19, 20, NULL, 'ssss', 'ssss-v5432316zy', '1623873283zqXHdD28.png', '11.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>dssdsd</p>', 20, NULL, 1, 1, 'ewte', 'sddssv', '#bd8f8f', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:24:43', '2021-06-19 11:06:52', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(285, 'ZKQ3331XqI', 'normal', NULL, 0, 21, 19, 22, NULL, 'ttttt', 'ttttt-zkq3331xqi', '16238733985o6s2NVJ.png', '3268046.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>dgdgd</p>', 20, NULL, 1, 1, 'ytuy', 'ewte', '#5e5151', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:26:38', '2021-06-16 14:41:32', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(286, 'SGU39580pY', 'normal', NULL, 0, 21, 19, 22, NULL, 'final', 'final-sgu39580py', '1623874020ElsAIZJO.png', '2249477.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>sdfdsgv</p>', 20, NULL, 1, 1, 'jfdsg', 'ewtyui', '#362f2f', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:37:00', '2021-06-20 00:09:45', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(287, 'ryy4108zWf', 'normal', NULL, 0, 21, 19, 22, NULL, 'llghjkghg', 'llghjkghg-ryy4108zwf', '1623874158u2uuBXWt.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>dsgdsgs</p>', 20, NULL, 1, 0, 'jtrerth', 'sdsddsgs', '#a16565', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:39:18', '2021-06-16 14:39:18', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(288, 'dA642051bt', 'normal', NULL, 0, 21, 19, 22, NULL, 'Formal Shirt', 'formal-shirt-da642051bt', '1623874260L7NMwLxG.png', '1060074.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>sdgegeg</p>', 20, NULL, 1, 1, 'rgerbe', 'ywrh', '#cf9292', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:41:00', '2021-06-18 18:18:14', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(289, 'eIw4472Z3K', 'normal', NULL, 0, 21, 19, 19, NULL, 'jgnfgn', 'jgnfgn-eiw4472z3k', '1623874508WpUkdvVz.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>dssd</p>', 20, NULL, 1, 0, 'dbdfb', 'ewtqerg', '#b39f9f', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:45:08', '2021-06-16 14:45:08', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(290, 'ohB46221Wf', 'normal', NULL, 0, 21, 19, 21, NULL, 'dfgdhdh', 'dfgdhdh-ohb46221wf', '1623874667onQEAboU.png', NULL, NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>gededg</p>', 20, NULL, 1, 0, 'dsggbeg', 'gegegewg', '#e0d5d5', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:47:47', '2021-06-16 14:47:47', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(291, '3Y04814XbC', 'normal', NULL, 0, 21, 19, 22, NULL, 'dffdg', 'dffdg-3y04814xbc', '1623874868kQ3mug0h.png', '8885194.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, NULL, '<p>fewfgweg</p>', 20, NULL, 1, 0, 'egerer', 'ewgewgeg', '#807676', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 14:51:08', '2021-06-16 14:51:08', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(292, 'eIU2785K4S', 'normal', NULL, 145, 23, NULL, NULL, NULL, 'Bobblehead 5756', NULL, '1623902843BgSXFvva.png', NULL, NULL, NULL, NULL, NULL, NULL, 4560, 0, NULL, '<p>gc gc g vch&nbsp;</p>', NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 22:37:23', '2021-06-16 22:37:23', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 53, 1, NULL),
(293, 'WUV2873Jt7', 'normal', NULL, 145, 23, 29, NULL, NULL, 'Bobblehead 5756', NULL, '16239029648LK9BBCR.png', NULL, NULL, NULL, NULL, NULL, NULL, 5444, 0, NULL, '<p>rdyndrtyxd r5dty&nbsp;</p>', 10, NULL, 1, 0, 'qweaw', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 22:39:24', '2021-06-16 22:39:24', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 53, NULL, NULL),
(294, 'u8o3019mwd', 'normal', NULL, 145, 21, 19, 19, NULL, 'gdfgbd fdffdf', NULL, '1623903076ALkQKfRd.png', NULL, NULL, NULL, NULL, NULL, NULL, 222, 240, NULL, '<p>dgyhftyhtgfh</p>', 12, NULL, 1, 0, 'fdhfghd', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 22:41:16', '2021-06-16 22:41:16', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 12, 1, NULL),
(295, 'yFq3140fue', 'normal', NULL, 0, 21, 19, 21, NULL, 'gdfgbd fdffdf', 'gdfgbd-fdffdf-yfq3140fue', '1623903202LQOo4g15.png', '745987.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>truytrutr</p>', 10, NULL, 1, 0, 'trty', 'hfdh', '#a88b8b', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 22:43:22', '2021-06-16 22:43:22', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, NULL, NULL),
(296, 'Vnf3244pXF', 'normal', NULL, 145, 21, 19, 20, NULL, 'gdfgbd fdffdf', NULL, '16239033470xwNXWV0.png', NULL, NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>gbfghfd</p>', 10, NULL, 1, 0, 'jgfj', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 22:45:47', '2021-06-16 22:45:47', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 10, NULL, NULL),
(297, 'Woj4354i8S', 'normal', NULL, 145, 21, 19, 21, NULL, 'mmm', 'mmm-woj4354i8s', '1623904385OTeuzukX.png', '1309013.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>regeerg</p>', 10, NULL, 1, 0, 'dsgfvds', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 23:03:05', '2021-06-16 23:03:05', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 10, NULL, NULL),
(298, 'fpI4681rj0', 'normal', NULL, 145, 21, 20, 28, NULL, 'uuuu', 'uuuu-fpi4681rj0', '1623904729S3eyPh0h.png', '8238269.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>regreger</p>', 10, NULL, 1, 0, 'piooi', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-16 23:08:49', '2021-06-16 23:08:49', 0, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 10, NULL, NULL),
(299, 'KTz6587rKw', 'normal', NULL, 0, 21, 19, 19, NULL, 'ttttttttt', 'ttttttttt-ktz6587rkw', '1624126634tyyhGaKD.png', '7527337.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>efgewfgfgw</p>', 20, NULL, 1, 0, 'etre', 'wefwef', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 12:47:14', '2021-06-19 12:47:14', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(300, 'aRK6882gAi', 'normal', NULL, 0, 21, 19, 20, NULL, 'cvfgfgrfg', 'cvfgfgrfg-ark6882gai', '16241269333ljykiMU.png', '3056510.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, NULL, '<p>fdbfrb</p>', 20, NULL, 1, 3, 'dfbe', 'fbebe', '#d1c4c4', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 12:52:13', '2021-06-19 23:14:18', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(301, 'ZTq4677Bfm', 'normal', NULL, 0, 21, 19, 20, NULL, 'wuwuwu', 'wuwuwu-ztq4677bfm', '1624164749TcC71KY0.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>trjuhtyjty</p>', 20, NULL, 1, 0, 'trhrt', 'hrftr', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 23:22:29', '2021-06-19 23:22:29', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(302, 'QEg4997USo', 'normal', NULL, 0, 21, 19, 19, NULL, 'wewewe', 'wewewe-qeg4997uso', '1624165046NH5YEr7h.png', '8984279.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>dfbfdbhdfb</p>', 10, NULL, 1, 1, 'rthtrhtr', 'bfdbdfbtr', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 23:27:26', '2021-06-19 23:29:24', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, 1, NULL),
(303, '0W35245GcK', 'normal', NULL, 0, 21, 19, 20, NULL, 'rerere', 'rerere-0w35245gck', '1624165299ewA3vRzd.png', '5887604.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>rtfghrfthrt</p>', 20, NULL, 1, 0, 'rthyr4tw', 'rthrthrth', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 23:31:39', '2021-06-19 23:31:39', 0, NULL, NULL, NULL, 0, 0, '0', 1, 20, 10, 1, NULL),
(304, 'L6u5637fdv', 'normal', NULL, 0, 21, 19, 20, NULL, 'thth', 'thth-l6u5637fdv', '1624165685fvgnHFAc.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>gergerge</p>', 20, NULL, 1, 0, 'ergg', 'erger', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 23:38:05', '2021-06-19 23:38:05', 0, NULL, NULL, NULL, 0, 0, '0', 1, 10, 10, NULL, NULL),
(305, '3Uq6192jjh', 'normal', NULL, 0, 21, 19, 20, NULL, 'rerevrev', 'rerevrev-3uq6192jjh', '1624166236pr6mBSbe.png', NULL, NULL, NULL, NULL, NULL, NULL, 250, 0, NULL, '<p>fthrtghrtgh</p>', 20, NULL, 1, 2, 'gregr', 'ger', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2021-06-19 23:47:16', '2021-06-20 07:18:30', 0, NULL, NULL, NULL, 0, 0, '0', 1, 20, 10, NULL, NULL);

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
(1064, 241, '2021-03-12'),
(1065, 240, '2021-03-12'),
(1066, 235, '2021-03-12'),
(1067, 239, '2021-03-12'),
(1068, 238, '2021-03-12'),
(1069, 233, '2021-03-12'),
(1070, 232, '2021-03-12'),
(1071, 237, '2021-03-12'),
(1072, 236, '2021-03-12'),
(1073, 234, '2021-03-12'),
(1074, 242, '2021-03-12'),
(1075, 241, '2021-03-12'),
(1076, 237, '2021-03-13'),
(1077, 237, '2021-03-13'),
(1078, 240, '2021-03-13'),
(1079, 232, '2021-03-13'),
(1080, 234, '2021-03-13'),
(1081, 236, '2021-03-13'),
(1082, 243, '2021-03-13'),
(1083, 233, '2021-03-13'),
(1084, 244, '2021-03-13'),
(1085, 243, '2021-03-13'),
(1086, 238, '2021-03-13'),
(1087, 243, '2021-03-13'),
(1088, 243, '2021-03-13'),
(1089, 243, '2021-03-13'),
(1090, 244, '2021-03-13'),
(1091, 240, '2021-03-13'),
(1092, 243, '2021-03-13'),
(1093, 250, '2021-03-13'),
(1094, 245, '2021-03-13'),
(1095, 241, '2021-03-13'),
(1096, 233, '2021-03-14'),
(1097, 240, '2021-03-14'),
(1098, 237, '2021-03-14'),
(1099, 245, '2021-03-14'),
(1100, 246, '2021-03-14'),
(1101, 246, '2021-03-14'),
(1102, 247, '2021-03-14'),
(1103, 248, '2021-03-14'),
(1104, 249, '2021-03-14'),
(1105, 247, '2021-03-14'),
(1106, 246, '2021-03-14'),
(1107, 247, '2021-03-14'),
(1108, 246, '2021-03-14'),
(1109, 240, '2021-03-14'),
(1110, 251, '2021-03-14'),
(1111, 252, '2021-03-14'),
(1112, 252, '2021-03-14'),
(1113, 251, '2021-03-14'),
(1114, 245, '2021-03-14'),
(1115, 240, '2021-03-14'),
(1116, 245, '2021-03-14'),
(1117, 245, '2021-03-14'),
(1118, 248, '2021-03-14'),
(1119, 248, '2021-03-14'),
(1120, 246, '2021-03-14'),
(1121, 243, '2021-03-14'),
(1122, 243, '2021-03-14'),
(1123, 240, '2021-03-15'),
(1124, 251, '2021-03-15'),
(1125, 247, '2021-03-15'),
(1126, 239, '2021-03-16'),
(1127, 244, '2021-03-16'),
(1128, 243, '2021-03-16'),
(1129, 239, '2021-03-16'),
(1131, 247, '2021-03-17'),
(1134, 243, '2021-03-19'),
(1135, 251, '2021-03-19'),
(1136, 247, '2021-03-19'),
(1137, 251, '2021-03-19'),
(1138, 252, '2021-03-19'),
(1139, 241, '2021-03-19'),
(1140, 242, '2021-03-19'),
(1141, 248, '2021-03-19'),
(1142, 248, '2021-03-19'),
(1143, 241, '2021-03-19'),
(1144, 232, '2021-03-19'),
(1145, 251, '2021-03-19'),
(1146, 250, '2021-03-19'),
(1147, 251, '2021-03-19'),
(1148, 251, '2021-03-19'),
(1149, 250, '2021-03-19'),
(1150, 249, '2021-03-19'),
(1151, 249, '2021-03-19'),
(1152, 243, '2021-03-21'),
(1153, 239, '2021-03-21'),
(1154, 243, '2021-03-21'),
(1155, 243, '2021-03-21'),
(1156, 240, '2021-03-21'),
(1157, 243, '2021-03-22'),
(1158, 239, '2021-03-23'),
(1159, 232, '2021-03-23'),
(1160, 233, '2021-03-23'),
(1161, 243, '2021-03-23'),
(1162, 243, '2021-03-23'),
(1163, 251, '2021-03-23'),
(1166, 234, '2021-03-24'),
(1167, 236, '2021-03-24'),
(1168, 235, '2021-03-24'),
(1169, 233, '2021-03-24'),
(1170, 232, '2021-03-24'),
(1171, 239, '2021-03-24'),
(1172, 237, '2021-03-24'),
(1173, 243, '2021-03-24'),
(1174, 240, '2021-03-24'),
(1175, 241, '2021-03-24'),
(1176, 242, '2021-03-24'),
(1179, 238, '2021-03-24'),
(1181, 246, '2021-03-24'),
(1183, 247, '2021-03-24'),
(1184, 251, '2021-03-24'),
(1187, 247, '2021-03-24'),
(1188, 244, '2021-03-24'),
(1189, 245, '2021-03-24'),
(1190, 250, '2021-03-24'),
(1191, 252, '2021-03-24'),
(1192, 248, '2021-03-24'),
(1193, 249, '2021-03-24'),
(1194, 243, '2021-03-25'),
(1219, 237, '2021-03-29'),
(1223, 237, '2021-03-29'),
(1224, 237, '2021-03-29'),
(1225, 237, '2021-03-29'),
(1226, 240, '2021-03-29'),
(1237, 240, '2021-03-31'),
(1238, 242, '2021-03-31'),
(1239, 251, '2021-03-31'),
(1240, 247, '2021-03-31'),
(1241, 247, '2021-03-31'),
(1242, 247, '2021-03-31'),
(1243, 247, '2021-03-31'),
(1245, 243, '2021-04-01'),
(1246, 238, '2021-04-01'),
(1247, 241, '2021-04-01'),
(1248, 243, '2021-04-04'),
(1249, 241, '2021-04-05'),
(1250, 243, '2021-04-05'),
(1251, 251, '2021-04-07'),
(1252, 246, '2021-04-07'),
(1253, 251, '2021-04-10'),
(1254, 234, '2021-04-13'),
(1255, 236, '2021-04-13'),
(1256, 235, '2021-04-13'),
(1257, 233, '2021-04-13'),
(1258, 242, '2021-04-13'),
(1259, 232, '2021-04-13'),
(1260, 240, '2021-04-13'),
(1261, 238, '2021-04-13'),
(1262, 247, '2021-04-13'),
(1263, 251, '2021-04-13'),
(1264, 244, '2021-04-13'),
(1265, 245, '2021-04-13'),
(1266, 250, '2021-04-13'),
(1267, 241, '2021-04-13'),
(1268, 242, '2021-04-13'),
(1269, 248, '2021-04-13'),
(1270, 239, '2021-04-13'),
(1271, 249, '2021-04-13'),
(1272, 237, '2021-04-13'),
(1273, 246, '2021-04-14'),
(1274, 252, '2021-04-14'),
(1275, 243, '2021-04-14'),
(1276, 252, '2021-04-14'),
(1277, 243, '2021-04-14'),
(1278, 243, '2021-04-18'),
(1279, 251, '2021-04-21'),
(1280, 245, '2021-04-21'),
(1281, 240, '2021-04-21'),
(1282, 244, '2021-04-23'),
(1283, 242, '2021-04-23'),
(1284, 233, '2021-04-23'),
(1285, 232, '2021-04-23'),
(1286, 234, '2021-04-23'),
(1287, 237, '2021-04-23'),
(1288, 246, '2021-04-23'),
(1289, 239, '2021-04-23'),
(1290, 245, '2021-04-23'),
(1291, 248, '2021-04-23'),
(1292, 235, '2021-04-23'),
(1293, 241, '2021-04-23'),
(1294, 252, '2021-04-23'),
(1295, 251, '2021-04-23'),
(1296, 236, '2021-04-23'),
(1297, 240, '2021-04-23'),
(1298, 249, '2021-04-23'),
(1299, 247, '2021-04-23'),
(1300, 238, '2021-04-23'),
(1301, 250, '2021-04-23'),
(1302, 243, '2021-04-23'),
(1303, 242, '2021-04-23'),
(1304, 237, '2021-04-23'),
(1305, 241, '2021-04-23'),
(1306, 248, '2021-04-23'),
(1307, 243, '2021-04-23'),
(1308, 240, '2021-04-23'),
(1309, 252, '2021-04-23'),
(1310, 232, '2021-04-23'),
(1311, 251, '2021-04-23'),
(1312, 236, '2021-04-23'),
(1313, 245, '2021-04-23'),
(1314, 247, '2021-04-23'),
(1315, 233, '2021-04-23'),
(1316, 239, '2021-04-23'),
(1317, 234, '2021-04-23'),
(1318, 235, '2021-04-23'),
(1319, 250, '2021-04-23'),
(1320, 244, '2021-04-23'),
(1321, 246, '2021-04-23'),
(1322, 238, '2021-04-23'),
(1323, 249, '2021-04-23'),
(1324, 239, '2021-04-23'),
(1325, 232, '2021-04-24'),
(1326, 237, '2021-04-25'),
(1327, 240, '2021-04-25'),
(1328, 252, '2021-04-25'),
(1329, 252, '2021-04-25'),
(1330, 232, '2021-04-25'),
(1331, 243, '2021-04-25'),
(1332, 243, '2021-04-25'),
(1333, 243, '2021-04-25'),
(1334, 237, '2021-04-25'),
(1335, 252, '2021-04-25'),
(1336, 243, '2021-04-25'),
(1337, 243, '2021-04-25'),
(1338, 240, '2021-04-25'),
(1339, 252, '2021-04-25'),
(1340, 240, '2021-04-26'),
(1341, 252, '2021-04-26'),
(1342, 243, '2021-04-26'),
(1343, 247, '2021-04-27'),
(1344, 246, '2021-04-28'),
(1345, 251, '2021-04-28'),
(1346, 237, '2021-04-29'),
(1347, 240, '2021-04-29'),
(1348, 240, '2021-04-29'),
(1349, 243, '2021-05-02'),
(1350, 252, '2021-05-02'),
(1351, 234, '2021-05-03'),
(1352, 233, '2021-05-03'),
(1353, 232, '2021-05-03'),
(1354, 239, '2021-05-03'),
(1355, 237, '2021-05-03'),
(1356, 236, '2021-05-03'),
(1357, 247, '2021-05-04'),
(1358, 245, '2021-05-04'),
(1359, 251, '2021-05-04'),
(1360, 246, '2021-05-04'),
(1361, 240, '2021-05-04'),
(1362, 250, '2021-05-04'),
(1363, 238, '2021-05-04'),
(1364, 241, '2021-05-04'),
(1365, 242, '2021-05-04'),
(1366, 235, '2021-05-04'),
(1367, 248, '2021-05-04'),
(1368, 243, '2021-05-04'),
(1369, 252, '2021-05-04'),
(1370, 239, '2021-05-05'),
(1371, 239, '2021-05-05'),
(1372, 239, '2021-05-05'),
(1373, 239, '2021-05-05'),
(1374, 239, '2021-05-05'),
(1375, 249, '2021-05-05'),
(1376, 239, '2021-05-05'),
(1377, 247, '2021-05-06'),
(1378, 243, '2021-05-06'),
(1379, 252, '2021-05-06'),
(1380, 239, '2021-05-06'),
(1381, 245, '2021-05-07'),
(1382, 243, '2021-05-07'),
(1383, 243, '2021-05-07'),
(1384, 243, '2021-05-07'),
(1385, 252, '2021-05-07'),
(1386, 240, '2021-05-07'),
(1387, 244, '2021-05-07'),
(1388, 243, '2021-05-08'),
(1389, 237, '2021-05-11'),
(1390, 234, '2021-05-12'),
(1391, 233, '2021-05-13'),
(1392, 235, '2021-05-14'),
(1393, 251, '2021-05-14'),
(1394, 247, '2021-05-15'),
(1395, 239, '2021-05-15'),
(1396, 232, '2021-05-15'),
(1397, 234, '2021-05-15'),
(1398, 238, '2021-05-15'),
(1399, 240, '2021-05-15'),
(1400, 235, '2021-05-15'),
(1401, 233, '2021-05-15'),
(1402, 251, '2021-05-16'),
(1403, 246, '2021-05-16'),
(1404, 247, '2021-05-17'),
(1405, 250, '2021-05-17'),
(1406, 243, '2021-05-22'),
(1407, 243, '2021-05-23'),
(1408, 234, '2021-05-23'),
(1409, 233, '2021-05-23'),
(1410, 232, '2021-05-24'),
(1411, 239, '2021-05-24'),
(1412, 238, '2021-05-24'),
(1413, 237, '2021-05-24'),
(1414, 236, '2021-05-24'),
(1415, 246, '2021-05-24'),
(1416, 245, '2021-05-24'),
(1417, 251, '2021-05-24'),
(1418, 250, '2021-05-24'),
(1419, 240, '2021-05-24'),
(1420, 235, '2021-05-24'),
(1421, 247, '2021-05-24'),
(1422, 248, '2021-05-24'),
(1423, 243, '2021-05-25'),
(1424, 243, '2021-05-25'),
(1425, 241, '2021-05-25'),
(1426, 243, '2021-05-25'),
(1427, 242, '2021-05-25'),
(1428, 252, '2021-05-25'),
(1429, 249, '2021-05-25'),
(1430, 237, '2021-05-25'),
(1431, 245, '2021-05-25'),
(1432, 241, '2021-05-26'),
(1433, 237, '2021-05-26'),
(1434, 242, '2021-05-26'),
(1435, 240, '2021-05-26'),
(1436, 239, '2021-05-27'),
(1437, 232, '2021-05-27'),
(1438, 244, '2021-05-27'),
(1439, 234, '2021-05-28'),
(1440, 243, '2021-05-31'),
(1441, 243, '2021-05-31'),
(1442, 252, '2021-05-31'),
(1443, 235, '2021-05-31'),
(1444, 246, '2021-05-31'),
(1445, 248, '2021-06-01'),
(1446, 248, '2021-06-02'),
(1447, 245, '2021-06-02'),
(1448, 245, '2021-06-02'),
(1449, 245, '2021-06-06'),
(1450, 252, '2021-06-06'),
(1451, 245, '2021-06-07'),
(1452, 250, '2021-06-07'),
(1453, 245, '2021-06-07'),
(1454, 235, '2021-06-07'),
(1455, 252, '2021-06-12'),
(1456, 245, '2021-06-14'),
(1457, 249, '2021-06-14'),
(1458, 241, '2021-06-15'),
(1459, 243, '2021-06-15'),
(1460, 252, '2021-06-15'),
(1461, 240, '2021-06-15'),
(1462, 242, '2021-06-15'),
(1463, 249, '2021-06-15'),
(1464, 253, '2021-06-16'),
(1465, 252, '2021-06-16'),
(1466, 244, '2021-06-16'),
(1467, 285, '2021-06-16'),
(1468, 249, '2021-06-16'),
(1469, 247, '2021-06-17'),
(1470, 249, '2021-06-17'),
(1471, 245, '2021-06-17'),
(1472, 245, '2021-06-17'),
(1473, 247, '2021-06-17'),
(1474, 234, '2021-06-18'),
(1475, 246, '2021-06-18'),
(1476, 238, '2021-06-18'),
(1477, 246, '2021-06-18'),
(1478, 245, '2021-06-18'),
(1479, 247, '2021-06-18'),
(1480, 250, '2021-06-18'),
(1481, 251, '2021-06-18'),
(1482, 248, '2021-06-18'),
(1483, 248, '2021-06-18'),
(1484, 249, '2021-06-18'),
(1485, 288, '2021-06-18'),
(1486, 243, '2021-06-19'),
(1487, 274, '2021-06-19'),
(1488, 278, '2021-06-19'),
(1489, 276, '2021-06-19'),
(1490, 281, '2021-06-19'),
(1491, 282, '2021-06-19'),
(1492, 283, '2021-06-19'),
(1493, 275, '2021-06-19'),
(1494, 284, '2021-06-19'),
(1495, 252, '2021-06-19'),
(1496, 277, '2021-06-19'),
(1497, 279, '2021-06-19'),
(1498, 280, '2021-06-19'),
(1499, 250, '2021-06-20'),
(1500, 248, '2021-06-20'),
(1501, 300, '2021-06-20'),
(1502, 300, '2021-06-20'),
(1503, 300, '2021-06-20'),
(1504, 302, '2021-06-20'),
(1505, 286, '2021-06-20'),
(1506, 238, '2021-06-20'),
(1507, 305, '2021-06-20'),
(1508, 252, '2021-06-20'),
(1509, 305, '2021-06-20'),
(1510, 239, '2021-06-20'),
(1511, 251, '2021-06-21');

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

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`) VALUES
(2, 126, 251, 'nice product and fast delivery', 4, '2021-03-19 05:25:40');

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
(20, 'Manager', 'orders , products , categories , bulk_product_upload , product_discussion , subscribers'),
(21, 'reviwer', 'product_discussion');

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
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'www.brnnda.com\r\nBrnnda the lifestyle e commerce market place');

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
(2, 0, 'FAST SHIPPING', 'Shipping  with in (3-6) Days', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
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
(6, 0, 'Inside Dhaka', '2-3', 60),
(7, 0, 'Outside Dhaka', '5-7 days', 120);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
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
  `link` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `offer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `category_id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`, `slug`, `offer`) VALUES
(8, 'MEN', 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInRight', '1564224870012.jpg', 'slide-three', 'https://www.google.com/', 'ewrferf', 50),
(9, 'SHOES', 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInDown', '1564224753007.jpg', 'slide-one', 'https://www.google.com/', 'wrew4rf', 40),
(10, 'SHOES', 'World Fashion', '24', '#c32d2d', 'slideInUp', 'Get Up to 40% Off', '60', '#bc2727', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#c51d1d', 'slideInLeft', '156422490902.jpg', 'slide-one', 'https://www.google.com/', 'wrewd', 25),
(12, '17', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '16155615711.jpg', 'slide-two', 'https://brnnda.com/', 'w4eew', NULL),
(13, '19', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1615561699Untitled-1-01.jpg', 'slide-one', 'eer', 'ewarfe', NULL),
(19, '18', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '16164389054.jpg', 'slide-three', 'brnnda', 'weraf', NULL);

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
(1, 'https://www.facebook.com/brnndaofficial', 'https://plus.google.com/', 'https://twitter.com/Brnnda_official', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 0, 1, 0, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/royalcommerce/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/marketplace/auth/google/callback');

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
(253, 'admin', 'eitwebdeveloper@gmail.com', '3', 218.8, 'gsdghfdh, vgubuibuibhui', 'Pending', '601e292876606', 'BDT', 102),
(254, 'admin', 'eitwebdeveloper@gmail.com', '3', 218.8, 'gsdghfdh', 'Pending', '601e29a115bc7', 'BDT', 102),
(255, 'admin', 'eitwebdeveloper@gmail.com', '3', 218.8, 'gsdghfdh', 'Processing', '6095620210206050333', 'BDT', 102),
(256, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '4707120210206051934', 'BDT', 102),
(257, 'admin', 'eitwebdeveloper@gmail.com', '3', 470, 'gsdghfdh, vgubuibuibhui', 'Processing', '3559020210206051535', 'BDT', 102),
(258, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '2801320210206054038', 'BDT', 102),
(259, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '2452920210206050539', 'BDT', 102),
(260, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '1268920210206054542', 'BDT', 102),
(261, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '2876020210206050243', 'BDT', 102),
(262, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '8956520210206055843', 'BDT', 102),
(263, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '3690620210206052644', 'BDT', 102),
(264, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh', 'Pending', '8036120210206055144', 'BDT', 102),
(265, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '6167520210206053247', 'BDT', 102),
(266, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '1194420210206053948', 'BDT', 102),
(267, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'utfu, ufgu', 'Pending', '1410320210206051549', 'BDT', 102),
(268, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'utfu, ufgu', 'Pending', '7884320210206052949', 'BDT', 102),
(269, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '8899520210206055350', 'BDT', 102),
(270, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'utfu, ufgu', 'Pending', '5607220210206051756', 'BDT', 102),
(271, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '2152320210206054058', 'BDT', 102),
(272, 'admin', 'eitwebdeveloper@gmail.com', '3', 210, 'gsdghfdh, vgubuibuibhui', 'Pending', '1015320210206055958', 'BDT', 102),
(273, 'user4', 'user4@gmail.com', '11223344', 302, 'asdf', 'Pending', '3518520210207104517', 'BDT', 31),
(274, 'user4', 'user4@gmail.com', '11223344', 302, 'asdf', 'Processing', '6998920210207100218', 'BDT', 31),
(275, 'user4', 'user4@gmail.com', '11223344', 380, 'asdf', 'Processing', '4508420210207103120', 'BDT', 31),
(276, 'user4', 'user4@gmail.com', '11223344', 680, 'asdf', 'Processing', '7473020210207100322', 'BDT', 31),
(277, 'user4', 'user4@gmail.com', '11223344', 380, 'asdf', 'Processing', '2487420210207103223', 'BDT', 31),
(278, 'user4', 'user4@gmail.com', '11223344', 786, 'asdf', 'Processing', '1554820210209122651', 'BDT', 31),
(279, 'user4', NULL, '11223344', 978.2, 'asdf', 'Pending', 'CBK1613106402153', 'BDT', 31),
(280, 'user4', NULL, '11223344', 680, 'asdf', 'Pending', 'CBK1613106819828', 'BDT', 31),
(281, 'vv1', 'vv1@gmail.com', '123123', 340, 'utfu, ufgu', 'Processing', '5686220210303065152', 'BDT', 107),
(282, 'SALMA MALIHA', 'salmamaliha116@gmail.com', '01773657736', 4150, 'VILL: SHARABARIA,JONAIL', 'Processing', '6801820210313170937', 'BDT', 126),
(283, 'SALMA MALIHA', 'salmamaliha116@gmail.com', '01773657736', 2060, 'VILL: SHARABARIA,JONAIL', 'Pending', '2941720210313173356', 'BDT', 126),
(284, 'SALMA MALIHA', 'salmamaliha116@gmail.com', '01773657736', 905, 'VILL: SHARABARIA,JONAIL', 'Pending', '9310620210314052323', 'BDT', 126),
(285, 'ttt', NULL, '01770631855', 1110, '15 shahid minar road, kallyanpur ,', 'Pending', '2001820210513033916', 'BDT', 131),
(286, 'ttt', NULL, '01770631855', 1110, '15 shahid minar road, kallyanpur ,', 'Pending', '9677420210513033229', 'BDT', 131),
(287, 'arif', NULL, 'arif@gmail.com', 3120, 'dg, g', 'Pending', '6645120210615115858', 'BDT', 139);

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
(17, 6, 'Digital Camera', 'digital-camera', 1),
(18, 21, 'SUMMER COLLECTION', 'men-summer-collection', 0),
(19, 21, 'TOP (SECTION)', 'men-top', 1),
(20, 21, 'BOTTOM', 'men-bottom', 1),
(21, 21, 'Accessories', 'men-accessories', 1),
(22, 21, 'WINTER COLLECTION', 'winter-collection', 0),
(23, 22, 'SUMMER COLLECTION', 'summer-collection', 0),
(24, 22, 'WINTER COLLECTION', 'winter-collection', 0),
(25, 22, 'EXTRA FIELD', 'extra-field', 0),
(26, 22, 'TOP', 'women-top', 1),
(27, 22, 'BOTTOM', 'women-bottom', 1),
(28, 22, 'ACCESSORIES', 'women-accessories', 1),
(29, 23, 'SUMMER COLLECTION', 'summer-collection', 1),
(30, 23, 'WINTER COLLECTION', 'winter-collection', 1),
(31, 23, 'TOP (BOY)', 'junior-top-boy', 1),
(32, 23, 'TOP (GIRL)', 'Junior-top-girl', 1),
(33, 23, 'BOTTOM (BOY)', 'junior-bottom-boy', 1),
(34, 23, 'BOTTOM ( GIRL)', 'junior-bottom-girl', 1);

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
(4, 'shaon@gmail.com');

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
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `total_tax` float DEFAULT NULL,
  `featured_vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'unfeatured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `google_id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `wallet`, `phone_verified`, `total_commission`, `total_tax`, `featured_vendor`) VALUES
(104, NULL, NULL, 'shaun', NULL, NULL, NULL, NULL, 'sfcs', '01775391091', NULL, 'shaun@ed.com', '$2y$10$euI1dVOQ1sQ6nwdbZe92je1tOLNg0078upnB4cfl.Xj8UkJ9GGvvG', 'VnySKJq8bacVDu9q6E9dVBBmCfJXVhRyQfOyvK7uQd3t3FUtGEAa07A92j2L', '2021-02-03 05:36:52', '2021-02-04 01:47:05', 0, 0, '9b0e19962084b9282523819c3808f6e7', 'Yes', '9e6653698fe5505cb8a535f29c3e6d6d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2121-01-10', 0, '704', 1, NULL, NULL, 'unfeatured'),
(105, NULL, NULL, 'Md. Asiqur Rahman Hridoy', NULL, NULL, NULL, NULL, 'dhaka', '01775391096', NULL, 'aashiq.hridoy119@gmail.com', '$2y$10$a1h7nXlI2JdQoehbNlrdxej160TNaLlu12vSmcvj94BMEWhgsf7GW', 'XTgFmte8q2N5uBRG4Ejr16GfxKAt130afbDmnZt1VZVMWL2PL3zXByBiOQvi', '2021-02-12 15:25:48', '2021-02-12 15:25:54', 0, 0, '5716f8fbeaf833aa693b3da0bdc9903d', 'Yes', '6cc3a409316c39cec9fd696569a753f6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(109, NULL, NULL, 'ratul', NULL, NULL, NULL, NULL, 'd', '0193757072911', NULL, 'ratul@gmail.com', '$2y$10$4BjU1ReJm1VWAcFt93we3eQEofVpS3uNY7L5zcIbFTKva/JadUtz.', 'mHWs5g6M2h8ao0BCPCd21VBf2V8NuNysG2p5Am8LsjeUJcJKZl3wqJxgGktj', '2021-03-03 02:34:24', '2021-03-03 02:34:28', 0, 0, '7a5517ffb596966ff8c54fd6528fe467', 'Yes', '8f2e2bd628295cd3eb56dedabafa3cf8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(122, NULL, NULL, 'BRNNDA', '1615563472brnnda pro pic-01.jpg', NULL, NULL, 'Bangladesh', 'H-03,R-06,B-D,kafrul,Dhaka', '01768166575', NULL, 'atikurrahmantuhin041@gmail.com', '$2y$10$yRUMGkpHTpGembrXqNUBTOVuelaCVwEeeH04PTNpj0RC7qDYORhLW', 'Eyma9fzycZbhvkRvvpV7slx9nBHWWnsGcPV27Ug9UO7RRphIsDGIkCYL5LWG', '2021-03-12 08:45:50', '2021-06-16 00:45:24', 0, 0, 'b2d1fb2e4c53252ef5f0867560528110', 'Yes', '7acbda1360f772cd03fecee6c3bb53a0', 210, 'BRNNDA', 'Tausif sagar', '01768166575', 'E-50 easternhousing,mirpur-1216', '121212', NULL, '<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 488, '2121-02-16', 0, NULL, 1, 100, NULL, 'featured'),
(123, NULL, NULL, 'moon flower', '1615565659download (2).jpg', NULL, NULL, 'Bangladesh', 'kallyanpur ,', '964296', NULL, 'moonflower42@gmail.com', '$2y$10$ZSxgCUKa4k33jeSxnLIL8eLfeKb24L92Ae24RozY76QSCZW2CVa22', 'UrZTv95SSyg7ewimKWvBnFCfwTjf9cV95XZPYg7Rg2jyMUxoM3VciZ91cDtJ', '2021-03-12 09:10:05', '2021-04-14 22:19:51', 0, 0, '2431e7a225be87c6e857eb281e35c68c', 'Yes', '8c8be7fa8bcc4a412e89bd6b6dff60f5', 0, 'Moonflower', 'owaliur rahman', '964296', 'kallyanpur', '602060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 909, '2121-02-16', 0, NULL, 1, 100, NULL, 'featured'),
(124, NULL, NULL, 'easy times', '1615571615ET-Narrow-Sunset-Banner.png', NULL, NULL, 'Bangladesh', 'pallabi', '469686', NULL, 'Easytime29@gmail.com', '$2y$10$7/7iTiCs35zPUgBxTlwstO2mJ5Aq1hcDsfWtaSLMjUx6uamDS64tS', '4i3BVQjEB1b93V6vrGRFXeIck5HsHPLYGyL8m4CboQkudYOS3cPMOdFe9t5B', '2021-03-12 09:27:41', '2021-06-02 01:23:16', 0, 0, '69d5cd3d80f12c53a0be7ab9de06581d', 'Yes', 'c521d043c003b6ac2d7059ed5a31a32c', 0, 'Easy Time', 'owaliur rahman', '469686', 'kallyanpur', '469686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 11161, '2121-02-16', 0, NULL, 1, 552, NULL, 'featured'),
(125, NULL, NULL, 'DIPTO', NULL, NULL, NULL, NULL, 'kallyanpur ,', '869642', NULL, 'dipto24@gmail.com', '$2y$10$j08JSNT8IAmqM25dv36PEOinNc5auyOZKt16nuxGH9TJT7PR6VSte', 'VxxseuLyBtrW6f4qFHPk9EsvrP6QPL9mPQP4tJRlodgJsSopuJvUjyqdHwH6', '2021-03-12 09:42:02', '2021-03-12 09:42:14', 0, 0, '05182c673877ff1c4cd26e6aba2bcfda', 'Yes', '4c9ebea225e0cf8da221ec2bd732d52c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(126, NULL, NULL, 'SALMA MALIHA', '1615656784promi.jpg', NULL, NULL, 'Bangladesh', 'VILL: SHARABARIA,JONAIL', '01773657736', NULL, 'salmamaliha116@gmail.com', '$2y$10$a0UNtfsOnX7KroXWL6/bNeNCXc5CtbVdscIWIoMGpoJw/fS813Ukm', 'DymjsfNma5kNIDhRstIa5pd5oZDHuAElqQHoQ9JlgfGysCO0woDjKX9U5kew', '2021-03-13 11:59:01', '2021-03-13 12:03:04', 0, 0, '2fd21ccc7f5a62cc984673eaaa68a888', 'Yes', 'a6652171398d91ef65c1d27ca78af13a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(127, NULL, NULL, 'CLASSIC SHOP', '1616242041745092_20618617_3645599_74976eb7_image.jpg', NULL, NULL, 'Bangladesh', 'mirpur 1 dhaka 1206', '012233445566', NULL, 'nishat@gmail.com', '$2y$10$EOh3Lw9QcD5pU5e2L4poQOsMr/Bva1z6l9oVNaM8H1Tfk6cW3wQEa', 'skjlbtAeEJW2xaV0lD3nbYAzIeRRrNOkmoOfsurw8ZdAG4yTJr11Qm1f6lx7', '2021-03-13 23:26:52', '2021-04-12 07:31:48', 0, 0, '459e96190540d74eb908d7e7cb3d7f10', 'Yes', '9766a9e04af66120e4985305406aaa8f', 0, 'classical shop', 'nishat', '012233445566', 'mirpur 1, dhaka 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 430, '2121-02-18', 0, NULL, 1, 49.875, NULL, 'featured'),
(128, NULL, NULL, 'tausif', NULL, NULL, NULL, NULL, 'H-03,R-06,B-D,kafrul,Dhaka', '01681611340', NULL, 'tausifbrnnda@gmail.com', '$2y$10$JcwXFehU5uvrs2QvMliNwesvEKcMMQhDdXG1xIG1bLdyM7LQ230ru', NULL, '2021-03-15 23:27:57', '2021-03-15 23:28:09', 0, 0, '8c2b14207cfc5f47b2dd56ef8c1025b8', 'Yes', 'f62c578925941270c21738706452ce81', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(129, NULL, NULL, 'abcd', NULL, NULL, NULL, NULL, 'dhaka 1206', '10101010', NULL, NULL, '$2y$10$Q8lPfBn6Xzq9LmF20Ml8QuC/ThrC.A5nvQwWJyoopwK8K4yZoZrVe', 'SjMvDFw0YJa3OL7z74QFoUbltzJnavOmGRDJ3dzM5lnDDhy0mxlwNBZttpsJ', '2021-04-21 00:49:14', '2021-04-21 00:49:19', 0, 0, '37c8660da3c55838fc5fca21484e874a', 'Yes', 'e2fc714c4727ee9395f324cd2e7f331f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(130, NULL, NULL, 'dcode', NULL, NULL, NULL, NULL, 'dhaka', '1234', NULL, 'dcode@gmail.com', '$2y$10$ZZdWco3PXSjqsCgKwVnpLO7BCPzwnNX8lzH34Nx1b8wynuAKg7Gfi', '42YS5oAMHaNP0LoENhPkAorSOPtoR5xWksb8AOR8NU6NBysT2mSrT1klAHvb', '2021-04-21 00:57:12', '2021-04-21 01:02:50', 0, 0, '4023cfb46d4d18b243c782fea4b3094a', 'Yes', '574c49197a971b4760ea23f6ec7ab98a', 0, 'o code', 'Tausif sagar', '1234', 'dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2121-03-28', 0, NULL, 1, NULL, NULL, 'unfeatured'),
(131, NULL, NULL, 'ttt', NULL, NULL, NULL, NULL, '15', '01770631855', NULL, NULL, '$2y$10$OUmrK4pmXdhSJs1dWXHNMelIcxBV0IRxHJXmW7QsLXguC7yy2YIW.', NULL, '2021-05-12 21:46:11', '2021-05-12 21:46:17', 0, 0, '54f25f54553aa1ae2893821a01fb7955', 'Yes', '9990775155c3518a0d7917f7780b24aa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(132, NULL, NULL, 'gdfgbd fdffdf', NULL, NULL, NULL, NULL, 'dg', '5454564456', NULL, NULL, '$2y$10$99EcLo26a0RYZJtYskwzFeY5sg4HHHmeGHLFF2tZFdbMXu/Uw.4oq', NULL, '2021-06-01 03:20:29', '2021-06-01 03:20:34', 0, 0, 'ddf976a41559e602a6a7fb6d983097e3', 'Yes', '357a37cfb0ac8340187cc93019826cbc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(133, NULL, NULL, 'gdfgbd fdffdf', NULL, '423', 'Dhaka', 'Bangladesh', 'dg', '01715486265', NULL, 'webdesigner@essental-infotech.com', '$2y$10$en8vtGWjXkOfN2EUWcHuHes7lg2Xk.de1RYIYY.cpLDaf2Ma0GmAa', NULL, '2021-06-02 01:19:18', '2021-06-05 23:55:34', 0, 0, 'c190ff5126019235e48b5c929151ec13', 'Yes', '357a37cfb0ac8340187cc93019826cbc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(134, NULL, NULL, 'gdfgbd fdffdf', NULL, NULL, NULL, NULL, 'dg', '05454564456', NULL, NULL, '$2y$10$xs.afIbEXKpjF4l.DlLQsuv3Qv3SLryQNo0c16Gl0bT369TtLsLYm', 'm8vj3LhPNAImBkhgw2iTQSoET8aHPesYbkmwr8OWkGNtY4UWG67xq7F9hQx6', '2021-06-06 06:08:35', '2021-06-06 06:08:41', 0, 0, '00d869d86540617b0d9f414379cacbb4', 'Yes', '357a37cfb0ac8340187cc93019826cbc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(135, NULL, NULL, 'gdfgbd fdffdf', NULL, NULL, NULL, 'Bangladesh', 'dg', '123456789', NULL, 'mohsinsikder895@gmail.com', '$2y$10$BucJih1y0Ezkivj8rS4cI.naQeGejscvdC.34qI9awmuYbdGU0ClS', 'zTZKumPISvngctUe7N5WIxupdi9hBgYVD5IRarzdPKV1aqmnAvJsxgPdzN6H', '2021-06-06 22:53:22', '2021-06-06 23:03:24', 0, 0, '3fc070a22475f53ed8d567c332fb7df9', 'Yes', '357a37cfb0ac8340187cc93019826cbc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(139, NULL, NULL, 'arif', '1623818913survey.png', '1234', 'MNU', 'Bangladesh', '01631618174', 'arif@gmail.com', NULL, 'arif@gmail.com', '$2y$10$L3qjYnl.JaUzTPgZDhsUpeKc/OOLCbkcYvT5f34JTYsIxS8yNUiiy', '3Pl6ADtDwLOG8drVVsN9dm9t6zcin0RsInnEhNLzYSAQMpLiM37srosEKy06', '2021-06-14 06:37:21', '2021-06-16 00:39:33', 0, 0, 'acb0f6aa097e5ff112ee106d3fbb42a8', 'Yes', '0ff6c3ace16359e41e37d40b8301d67f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(142, NULL, '101466029648252833455', 'essential infotech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eitwebdeveloper1@gmail.com', NULL, 'fn1BsTjpSJIwNmMg7mkDGa9gbEgzjfIrnds5GZKXigkS9nmX2qB6bGoOnHGl', '2021-06-14 06:49:09', '2021-06-14 06:49:09', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'unfeatured'),
(144, NULL, NULL, 'njiud iuhndzf', NULL, NULL, NULL, NULL, 'kasdbj sdfidfas', '54654654', NULL, NULL, '$2y$10$X8yWGjWBQtWAjMebiD2zPuhcHGqxDgokL4GVr5kukbJJrK/NJzoyK', '1dKFS1Jhab9PI0gpUecaiFOaJNqzmJAWXl3UdNR3zA1W4YYHxVNVukmK9mAg', '2021-06-16 03:24:24', '2021-06-16 03:24:31', 0, 0, 'd4468df4db8bc301eaa95d046c7a2407', 'Yes', '360a4fc190a6730ef81d3e66efcddbbb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(145, NULL, NULL, 'djongo', '162383806441wIjg5em6L._ML160_-220x154.jpg', NULL, NULL, 'Bangladesh', '6546546465', '6546546465', NULL, 'atikurrahmantuhin041@gmail.com', '$2y$10$ELT2IYq/D0mJ7kus9gHLReQves3Twyw.gAv8F/D3.80EUe86A5YnW', 'PfQ0VfjeDziQwZOllIuXHdVZwE96Te9FZhnt91Arpt85p2WGkdJ12PcIdpRk', '2021-06-16 03:29:41', '2021-06-21 04:30:30', 0, 0, 'ac2c5e71ddb946c18386c4a99fd7a402', 'Yes', '68401ecede7a9f92d5de09a79a081a68', 0, 'dJongO', 'Tariq', '1645546', ',jhsdvgj,hsbf', NULL, 'jkhsduioff haipejasedfklan m   jhfb jaf g', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 8700, '2121-05-23', 0, NULL, 1, NULL, NULL, 'featured'),
(146, NULL, NULL, 'sdjkbsdv', NULL, NULL, NULL, NULL, '6564687', '6564687', NULL, NULL, '$2y$10$OaPLMDAUUr7RPFqXPLRBUutllO2Q2vA1EX3pxZEejFQubwFFEdL5e', 'WQcqWcza8DTWRT6uoqwLPixWDKPQqzpbtBA0yS2TqzmvJ5WGKyGHCSCVxgGv', '2021-06-16 03:39:21', '2021-06-16 03:39:28', 0, 0, '48680a92187b8e134e556a9794c6d809', 'Yes', '43b13d5987c7cff3f42767a38165e9f1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(147, NULL, NULL, 'dsdrs dsz t s', NULL, NULL, NULL, NULL, 'dg, g', '165415616549', NULL, 'tariqmolla8@gmail.com', '$2y$10$z5zjju98h73pghGs.S58oO5fPR.oIQr0GrDJbmTUTQnM/RQQy6S6e', 'UC0ufhe7ByjolJzhxzJocL3EToQ5DkOvNZ0N3aVAaNdFD8ckolIxcY6zafN0', '2021-06-16 22:32:50', '2021-06-16 22:32:55', 0, 0, 'ce1e783c8044f2f7c5f002197995f507', 'Yes', '2aae3a65e591c7a7fc09bf6ad62442b5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, NULL, NULL, 'unfeatured'),
(148, NULL, '114250373765628292658', 'Essential Infotech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'colaborationw@gmail.com', NULL, '2scpe0eUyhickLoFsQhBWQF0Ff36eHLdnmP7KYBfYaAP4UE5kUaMGPQK48rz', '2021-06-17 04:26:45', '2021-06-17 04:26:45', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'unfeatured'),
(149, NULL, '103378740611590057462', 'animo. Ai', NULL, NULL, NULL, NULL, NULL, 'xxxxxxxxxx', NULL, 'animo.ai.co@gmail.com', NULL, NULL, '2021-06-17 05:54:31', '2021-06-17 05:54:31', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 12000, NULL, 0, NULL, NULL, NULL, NULL, 'unfeatured');

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
(26, '0151569148032', '1111', '10', '1', '2021-02-01 05:02:31', NULL, NULL, 75),
(27, '0151569148032423', '1111', '10', '1', '2021-02-01 05:09:56', NULL, NULL, 76),
(28, '01515691480324', '1111', '2', '1', '2021-02-01 05:22:18', NULL, NULL, 77),
(29, '0151569148023', '1111', '2', '1', '2021-02-01 05:25:59', NULL, NULL, 78),
(30, '01515691480', '1111', '2', '1', '2021-02-01 06:09:47', NULL, NULL, 79),
(31, '01515691480', '1111', '2', '1', '2021-02-01 06:12:24', NULL, NULL, 79),
(32, '01515691480', '1111', '2', '1', '2021-02-01 06:13:00', NULL, NULL, 79),
(33, '01515691480', '1111', '2', '1', '2021-02-01 06:13:51', NULL, NULL, 79),
(34, '01515691480', '1111', '2', '1', '2021-02-01 06:15:34', NULL, NULL, 79),
(35, '01515691480', '1111', '2', '1', '2021-02-01 06:15:56', NULL, NULL, 79),
(36, '01515691480', '1111', '2', '1', '2021-02-01 06:17:42', NULL, NULL, 79),
(37, '01515691480', '1111', '2', '1', '2021-02-01 06:21:50', NULL, NULL, 79),
(38, '01515691480', '1111', '2', '1', '2021-02-01 06:23:29', NULL, NULL, 79),
(39, '01515691480', '1111', '2', '1', '2021-02-01 06:27:18', NULL, NULL, 79),
(40, '01515691480', '1111', '2', '1', '2021-02-01 06:28:54', NULL, NULL, 79),
(41, '01515691480', '1111', '2', '1', '2021-02-01 06:33:06', NULL, NULL, 79),
(42, '01515691480', '1111', '2', '1', '2021-02-01 06:39:28', NULL, NULL, 79),
(43, '01515691480', '1111', '2', '1', '2021-02-01 06:42:07', NULL, NULL, 79),
(44, '01515691480', '1111', '2', '1', '2021-02-01 06:46:24', NULL, NULL, 79),
(45, '01515691480', '1111', '2', '1', '2021-02-01 06:47:06', NULL, NULL, 79),
(46, '01515691480', '1111', '2', '1', '2021-02-01 06:47:21', NULL, NULL, 79),
(47, '01515691480', '1111', '2', '1', '2021-02-01 06:52:26', NULL, NULL, 79),
(48, '01515691480', '1111', '2', '1', '2021-02-01 06:54:21', NULL, NULL, 79),
(49, '01515691480', '1111', '2', '1', '2021-02-01 06:54:34', NULL, NULL, 79),
(50, '01515691480', '1111', '2', '1', '2021-02-01 06:55:09', NULL, NULL, 79),
(51, '01515691480', '1111', '2', '1', '2021-02-01 06:55:48', NULL, NULL, 79),
(52, '01515691480', '1111', '2', '1', '2021-02-01 06:58:30', NULL, NULL, 79),
(53, '01515691480', '1111', '2', '1', '2021-02-01 07:01:05', NULL, NULL, 79),
(54, '01515691480', '1111', '2', '1', '2021-02-01 07:01:13', NULL, NULL, 79),
(55, '01515691480', '1111', '2', '1', '2021-02-01 07:04:08', NULL, NULL, 79),
(56, '01515691480', '1111', '2', '1', '2021-02-01 07:07:49', NULL, NULL, 79),
(57, '01515691480', '1111', '2', '1', '2021-02-01 07:09:11', NULL, NULL, 79),
(58, '01515691480', '1111', '2', '1', '2021-02-01 07:10:44', NULL, NULL, 79),
(59, '01515691480', '1111', '2', '1', '2021-02-01 07:11:39', NULL, NULL, 79),
(60, '01515691480', '1111', '2', '1', '2021-02-01 07:12:17', NULL, NULL, 79),
(61, '01515691480', '1111', '2', '1', '2021-02-01 07:13:37', NULL, NULL, 79),
(62, '01515691480', '1111', '2', '1', '2021-02-01 07:16:27', NULL, NULL, 79),
(63, '01515691480', '1111', '2', '1', '2021-02-01 07:17:49', NULL, NULL, 79),
(64, '01515691480', '1111', '2', '1', '2021-02-01 07:19:48', NULL, NULL, 79),
(65, '01515691480', '1111', '2', '1', '2021-02-01 07:21:50', NULL, NULL, 79),
(66, '01515691480', '1111', '2', '1', '2021-02-01 07:22:33', NULL, NULL, 79),
(67, '01515691480', '1111', '2', '1', '2021-02-02 02:05:38', NULL, NULL, 79),
(68, '01515691480', '1111', '2', '1', '2021-02-02 02:06:39', NULL, NULL, 79),
(69, '01515691480', '1111', '2', '1', '2021-02-02 02:58:50', NULL, NULL, 79),
(70, '01515691480', '1111', '2', '1', '2021-02-02 03:00:13', NULL, NULL, 79),
(71, '01515691480', '1111', '2', '1', '2021-02-02 03:03:00', NULL, NULL, 79),
(72, '01515691480', '1111', '2', '1', '2021-02-02 03:04:35', NULL, NULL, 79),
(73, '01515691480', '1111', '2', '1', '2021-02-02 03:06:08', NULL, NULL, 79),
(74, '01515691480', '1111', '2', '1', '2021-02-02 03:07:11', NULL, NULL, 79),
(75, '01515691480', '1111', '2', '1', '2021-02-02 03:07:55', NULL, NULL, 79),
(76, '01515691480', '1111', '2', '1', '2021-02-02 03:08:38', NULL, NULL, 79),
(77, '01515691480', '1111', '2', '1', '2021-02-02 03:13:16', NULL, NULL, 79),
(78, '01515691480', '1111', '2', '1', '2021-02-02 03:15:30', NULL, NULL, 79),
(79, '01515691480', '1111', '2', '1', '2021-02-02 03:17:18', NULL, NULL, 79),
(80, '01515691482', '1111', '1', '0', '2021-02-02 03:28:39', NULL, NULL, 80),
(81, '015156914801234', '1111', '1', '0', '2021-02-02 04:12:49', NULL, NULL, 81),
(82, '01515691480434', '1111', '1', '0', '2021-02-02 04:15:55', NULL, NULL, 82),
(83, '01937570729', '1111', '1', '0', '2021-02-02 04:30:54', NULL, NULL, 83),
(84, '01937570729', '1111', '1', '0', '2021-02-02 05:12:51', NULL, NULL, 83),
(85, '01937570729', '1111', '1', '0', '2021-02-02 05:13:21', NULL, NULL, 83),
(86, '01937570729', '1111', '1', '0', '2021-02-02 05:13:48', NULL, NULL, 83),
(87, '01515691480', '1111', '1', '0', '2021-02-02 05:39:10', NULL, NULL, 79),
(88, '01515691480', '1111', '1', '0', '2021-02-02 05:39:12', NULL, NULL, 79),
(89, '01515691480', '1111', '1', '0', '2021-02-02 05:39:32', NULL, NULL, 79),
(90, '01515691480', '1111', '1', '0', '2021-02-02 05:40:14', NULL, NULL, 79),
(91, '01515691480', '1111', '1', '0', '2021-02-02 05:44:03', NULL, NULL, 79),
(92, '01515691480', '1111', '1', '0', '2021-02-02 05:46:56', NULL, NULL, 79),
(93, '01515691480', '1111', '1', '0', '2021-02-02 05:47:37', NULL, NULL, 79),
(94, '01515691480', '1111', '1', '0', '2021-02-02 05:52:21', NULL, NULL, 79),
(95, '01515691480', '1111', '1', '0', '2021-02-02 05:57:29', NULL, NULL, 79),
(96, '01515691480', '1111', '1', '0', '2021-02-02 05:57:52', NULL, NULL, 79),
(97, '01515691480', '1111', '1', '0', '2021-02-02 05:58:04', NULL, NULL, 79),
(98, '01515691480', '1111', '1', '0', '2021-02-02 05:58:12', NULL, NULL, 79),
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
(125, '01775391096', '1111', '2', '1', '2021-02-12 15:30:48', NULL, NULL, 105),
(126, '0151569148032423', '1111', '10', '1', '2021-02-18 00:15:41', NULL, NULL, 76),
(127, '0151569148032', '1111', '10', '1', '2021-02-18 00:39:16', NULL, NULL, 75),
(128, '321321', '1111', '1', '0', '2021-03-03 00:38:26', NULL, NULL, 106),
(129, '123123', '1111', '2', '1', '2021-03-03 00:45:11', NULL, NULL, 107),
(130, '111122221', '1111', '2', '1', '2021-03-03 01:52:01', NULL, NULL, 108),
(131, '0193757072911', '1111', '2', '1', '2021-03-03 02:39:24', NULL, NULL, 109),
(132, '123123123', '1111', '2', '1', '2021-03-03 03:19:27', NULL, NULL, 110),
(133, '0193757072912', '1111', '2', '1', '2021-03-03 03:54:14', NULL, NULL, 111),
(134, '11221', '1111', '2', '1', '2021-03-03 04:00:20', NULL, NULL, 112),
(135, '11224', '1111', '2', '1', '2021-03-03 04:34:47', NULL, NULL, 113),
(136, '11225', '1111', '2', '1', '2021-03-03 04:49:45', NULL, NULL, 114),
(137, '11226', '1111', '2', '1', '2021-03-03 05:01:48', NULL, NULL, 115),
(138, '11227', '1111', '2', '1', '2021-03-03 05:07:11', NULL, NULL, 116),
(139, '11229', '1111', '2', '1', '2021-03-03 05:11:25', NULL, NULL, 117),
(140, '01720981471', '1111', '2', '1', '2021-03-07 22:54:32', NULL, NULL, 118),
(141, '01937570729331', '1111', '2', '1', '2021-03-07 23:21:04', NULL, NULL, 119),
(142, '0123', '1111', '2', '1', '2021-03-08 03:22:35', NULL, NULL, 120),
(143, '01234', '1111', '2', '1', '2021-03-08 03:23:49', NULL, NULL, 121),
(144, '01768166575', '1111', '2', '1', '2021-03-12 08:50:50', NULL, NULL, 122),
(145, '964296', '1111', '2', '1', '2021-03-12 09:15:05', NULL, NULL, 123),
(146, '469686', '1111', '2', '1', '2021-03-12 09:32:41', NULL, NULL, 124),
(147, '869642', '1111', '2', '1', '2021-03-12 09:47:02', NULL, NULL, 125),
(148, '01773657736', '1111', '2', '1', '2021-03-13 12:04:01', NULL, NULL, 126),
(149, '469686', '1111', '4', '1', '2021-03-13 22:59:19', NULL, NULL, 124),
(150, '964296', '1111', '4', '1', '2021-03-13 23:01:05', NULL, NULL, 123),
(151, '012233445566', '1111', '2', '1', '2021-03-13 23:31:52', NULL, NULL, 127),
(152, '01681611340', '1111', '2', '1', '2021-03-15 23:32:57', NULL, NULL, 128),
(153, '10101010', '1111', '2', '1', '2021-04-21 00:54:14', NULL, NULL, 129),
(154, '1234', '1111', '2', '1', '2021-04-21 01:02:12', NULL, NULL, 130),
(155, '01770631855', '1111', '2', '1', '2021-05-12 21:51:11', NULL, NULL, 131),
(156, '5454564456', '1111', '2', '1', '2021-06-01 03:25:29', NULL, NULL, 132),
(157, '01715486265', '1111', '2', '1', '2021-06-02 01:24:18', NULL, NULL, 133),
(158, '01715486265', '1111', '4', '1', '2021-06-03 02:18:23', NULL, NULL, 133),
(159, '01715486265', '1111', '4', '1', '2021-06-06 00:00:16', NULL, NULL, 133),
(160, '05454564456', '1111', '2', '1', '2021-06-06 06:13:35', NULL, NULL, 134),
(161, '123456789', '1111', '2', '1', '2021-06-06 22:58:22', NULL, NULL, 135),
(162, '01768166575', '1111', '4', '1', '2021-06-06 23:21:53', NULL, NULL, 122),
(163, 'arif@gmail.com', '1111', '2', '1', '2021-06-14 06:42:21', NULL, NULL, 139),
(164, '63546546', '1111', '2', '1', '2021-06-15 06:38:03', NULL, NULL, 143),
(165, '54654654', '1111', '2', '1', '2021-06-16 03:29:24', NULL, NULL, 144),
(166, '6546546465', '1111', '2', '1', '2021-06-16 03:34:41', NULL, NULL, 145),
(167, '6564687', '1111', '2', '1', '2021-06-16 03:44:21', NULL, NULL, 146),
(168, '165415616549', '1111', '2', '1', '2021-06-16 22:37:50', NULL, NULL, 147);

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
(123, 124, 'BR1615657235Eg00139', 1, '2021-03-13 12:10:35', '2021-03-13 12:10:45'),
(124, 122, 'BR1615658583RM00140', 1, '2021-03-13 12:33:05', '2021-03-13 12:42:59'),
(125, 124, 'BR1615660667gi00141', 1, '2021-03-13 13:07:47', '2021-03-13 13:07:57'),
(126, 124, 'BR1615696706nX00142', 1, '2021-03-13 23:08:26', '2021-03-13 23:09:40'),
(127, 127, 'BR1615698506T700143', 1, '2021-03-13 23:38:26', '2021-03-18 22:57:06'),
(128, 127, 'BR1615699210lX00144', 1, '2021-03-13 23:50:11', '2021-03-18 22:57:06'),
(129, 124, 'BR1615699558Uu00145', 1, '2021-03-13 23:55:58', '2021-03-13 23:57:39'),
(130, 124, 'BR1615701974Tw00146', 1, '2021-03-14 00:36:14', '2021-03-14 00:36:22'),
(131, 124, 'BR1616127102nL00147', 1, '2021-03-18 22:41:42', '2021-03-18 22:41:58'),
(132, 124, 'BR1616127533vj00148', 1, '2021-03-18 22:48:53', '2021-03-18 22:49:04'),
(133, 127, 'BR1616127988W600149', 1, '2021-03-18 22:56:28', '2021-03-18 22:57:06'),
(134, 123, 'BR1616128504Lc00150', 1, '2021-03-18 23:05:05', '2021-03-18 23:05:12'),
(135, 123, 'BR1616129039TL00151', 1, '2021-03-18 23:13:59', '2021-03-18 23:14:10'),
(136, 124, 'BR1616129343DU00152', 1, '2021-03-18 23:19:03', '2021-03-18 23:51:46'),
(137, 124, 'BR1616131885YN00153', 1, '2021-03-19 00:01:25', '2021-03-19 00:03:34'),
(138, 124, 'BR16161340194600154', 1, '2021-03-19 00:36:59', '2021-04-15 00:51:10'),
(139, 124, 'BR1622618458bM00155', 0, '2021-06-02 01:20:58', '2021-06-02 01:20:58'),
(140, 124, 'BR1622633045DZ00156', 0, '2021-06-02 05:24:05', '2021-06-02 05:24:05'),
(141, 124, 'BR16226331793z00157', 0, '2021-06-02 05:26:19', '2021-06-02 05:26:19'),
(142, 127, 'BR1623753523vh00158', 0, '2021-06-15 05:08:43', '2021-06-15 05:08:43'),
(143, 124, 'BR1623753523vh00158', 0, '2021-06-15 05:08:43', '2021-06-15 05:08:43'),
(144, 124, 'BR1623753576Uu00159', 0, '2021-06-15 05:09:36', '2021-06-15 05:09:36'),
(145, 124, 'BR1623755110Ck00160', 0, '2021-06-15 05:35:10', '2021-06-15 05:35:10'),
(146, 127, 'BR1623756094jj00161', 0, '2021-06-15 05:51:34', '2021-06-15 05:51:34'),
(147, 124, 'BR1623756481i200162', 0, '2021-06-15 05:58:01', '2021-06-15 05:58:01'),
(148, 124, 'BR1623756857ST00163', 0, '2021-06-15 06:04:17', '2021-06-15 06:04:17'),
(149, 122, 'BR1623756857ST00163', 0, '2021-06-15 06:04:17', '2021-06-15 06:04:17'),
(150, 122, 'BR1623758424N400164', 0, '2021-06-15 06:30:24', '2021-06-15 06:30:24'),
(151, 127, 'BR1623818180DN00165', 0, '2021-06-15 23:06:20', '2021-06-15 23:06:20'),
(152, 124, 'BR1623924069m000166', 0, '2021-06-17 04:31:09', '2021-06-17 04:31:09'),
(153, 124, 'BR1623924280Iy00167', 0, '2021-06-17 04:34:40', '2021-06-17 04:34:40');

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
(91, 104, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-02-03 05:53:20', '2021-02-03 05:53:20', 1, NULL),
(101, 122, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-03-12 09:04:46', '2021-03-12 09:04:46', 1, NULL),
(102, 123, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-03-12 09:13:47', '2021-03-12 09:13:47', 1, NULL),
(103, 124, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-03-12 09:31:44', '2021-03-12 09:31:44', 1, NULL),
(104, 127, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-03-13 23:29:41', '2021-03-13 23:29:41', 1, NULL),
(105, 130, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-04-21 00:59:24', '2021-04-21 00:59:24', 1, NULL),
(106, 145, 8, 'Become vendor', '৳', 'Taka', 0, 36500, 0, 'Commission based', 'Free', NULL, NULL, '2021-06-16 03:41:00', '2021-06-16 03:41:00', 1, NULL);

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
  `vorder_commission` float DEFAULT NULL,
  `vorder_tax` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`, `vorder_commission`, `vorder_tax`) VALUES
(220, 124, 140, 2, 4070, 'BR1615657235Eg00139', 'completed', 0, 814),
(221, 122, 141, 1, 1000, 'BR1615658583RM00140', 'completed', 0, NULL),
(222, 124, 142, 1, 935, 'BR1615660667gi00141', 'completed', 0, 93.5),
(223, 124, 143, 1, 935, 'BR1615696706nX00142', 'completed', 0, 93.5),
(224, 127, 144, 1, 525, 'BR1615698506T700143', 'completed', 0, 26.25),
(225, 127, 145, 1, 525, 'BR1615699210lX00144', 'completed', 0, 26.25),
(226, 124, 146, 1, 825, 'BR1615699558Uu00145', 'completed', 0, 82.5),
(227, 124, 147, 1, 2035, 'BR1615701974Tw00146', 'completed', 0, 203.5),
(228, 124, 148, 1, 450, 'BR1616127102nL00147', 'completed', 45, NULL),
(229, 124, 149, 1, 825, 'BR1616127533vj00148', 'completed', 74.25, 82.5),
(230, 127, 150, 1, 525, 'BR1616127988W600149', 'completed', 49.875, 26.25),
(231, 123, 151, 1, 350, 'BR1616128504Lc00150', 'completed', 35, NULL),
(232, 123, 152, 1, 650, 'BR1616129039TL00151', 'completed', 65, NULL),
(233, 124, 153, 1, 935, 'BR1616129343DU00152', 'completed', 84.15, 93.5),
(234, 124, 154, 1, 825, 'BR1616131885YN00153', 'completed', 74.25, 82.5),
(235, 124, 155, 1, 1980, 'BR16161340194600154', 'completed', 178.2, 198),
(236, 124, 156, 1, 935, 'BR1622618458bM00155', 'completed', 96.15, 93.5),
(237, 124, 157, 1, 2035, 'BR1622633045DZ00156', 'pending', 195.15, 203.5),
(238, 124, 158, 1, 2035, 'BR16226331793z00157', 'pending', 195.15, 203.5),
(239, 127, 159, 5, 2625, 'BR1623753523vh00158', 'pending', 256.875, 656.25),
(240, 124, 159, 4, 7920, 'BR1623753523vh00158', 'pending', 523.2, 3168),
(241, 124, 160, 1, 1980, 'BR1623753576Uu00159', 'pending', 190.2, 198),
(242, 124, 160, 1, 2035, 'BR1623753576Uu00159', 'pending', 195.15, 203.5),
(243, 124, 161, 1, 1980, 'BR1623755110Ck00160', 'pending', 190.2, 198),
(244, 124, 161, 1, 2035, 'BR1623755110Ck00160', 'pending', 195.15, 203.5),
(245, 127, 162, 1, 525, 'BR1623756094jj00161', 'pending', 61.875, 26.25),
(246, 124, 163, 1, 1980, 'BR1623756481i200162', 'pending', 190.2, 198),
(247, 124, 164, 1, 2035, 'BR1623756857ST00163', 'pending', 195.15, 203.5),
(248, 122, 164, 1, 1000, 'BR1623756857ST00163', 'pending', 444, NULL),
(249, 122, 165, 3, 3000, 'BR1623758424N400164', 'pending', 1332, NULL),
(250, 127, 166, 2, 1050, 'BR1623818180DN00165', 'pending', 118.5, 105),
(251, 124, 167, 1, 1980, 'BR1623924069m000166', 'pending', 190.2, 198),
(252, 124, 168, 1, 1980, 'BR1623924280Iy00167', 'pending', 190.2, 198);

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
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Declined', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2021-06-06 06:01:42'),
(5, 104, NULL, NULL, NULL, 1, 'set eryery', '2021-02-03 05:57:21', '2021-02-03 05:57:21'),
(6, 104, '1612353686google-play-png-logo-3798.png,1612353686023db054a4a5690defce0acb2aee6c64 (1).png', 'Verified', 'easuirfh sadjkfgasjfhsaf', 0, 'fuck', '2021-02-03 06:00:18', '2021-02-03 06:02:17'),
(7, 122, '1615560013tshirt and cap-01.jpg', 'Verified', 'trade licensee', 0, 'Please send us the new Trade license scan copy .', '2021-03-12 09:06:59', '2021-03-12 09:12:00'),
(8, 124, '1615660008117335204_2806603282960265_8935816040962433225_n (1).jpg', 'Verified', 'ddf', 0, '3434', '2021-03-13 12:42:05', '2021-03-13 23:33:40'),
(9, 124, '1615659978download (4).jpg', 'Verified', 'ggh', 0, 'please send the scan copy of trade license', '2021-03-13 12:44:31', '2021-03-13 12:56:35'),
(10, 124, '1615659470images (1).jpg', 'Verified', 'dfdgdg', 0, 'please send the scan copy of trade license', '2021-03-13 12:45:13', '2021-03-13 12:48:10'),
(11, 123, '1615659816moonflower.jpg', 'Verified', 'fff', 0, 'please send the scan copy of trade license', '2021-03-13 12:52:11', '2021-03-13 12:56:40'),
(12, 127, NULL, NULL, NULL, 1, 'please send the details', '2021-03-13 23:30:59', '2021-03-13 23:30:59'),
(13, 127, '1615698205304-.jpg', 'Verified', 'hjjh', 0, 'send the details', '2021-03-13 23:31:42', '2021-03-13 23:33:49'),
(14, 130, NULL, NULL, NULL, 1, 'send the details', '2021-04-21 01:01:53', '2021-04-21 01:01:53');

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
(1, 139, 249);

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
(1, 127, 'Bank', NULL, '01542212', NULL, 'nishat', '201450', 'gvdv', 'mohakhali', 1000, 0, '2021-04-12 05:54:08', '2021-04-12 05:55:04', 'completed', 'vendor'),
(2, 124, 'Bank', NULL, '546545', NULL, 'tryty', 'rytryt', 'tytryt', 'trytryt', 500, 0, '2021-04-15 06:24:10', '2021-04-15 06:24:10', 'pending', 'vendor'),
(3, 122, 'Bank', NULL, '12343', NULL, '1234', '111', '1234', 'dhaka bank', 300, 0, '2021-06-07 05:19:10', '2021-06-07 05:33:35', 'completed', 'vendor'),
(4, 122, 'Bank', NULL, '12343', NULL, '1213', '123', '1213', '23e4r', 250, 0, '2021-06-07 05:45:37', '2021-06-07 05:45:37', 'pending', 'vendor'),
(5, 122, 'Bank', NULL, '12343', NULL, '12313', '1323', '123', 'qwedw', 300, 0, '2021-06-07 05:46:03', '2021-06-07 05:46:03', 'pending', 'vendor'),
(6, 122, 'Bank', NULL, '12343', NULL, '12', '123', '123', 'Dhaka', 250, 0, '2021-06-07 05:50:03', '2021-06-07 05:50:03', 'pending', 'vendor'),
(7, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'qwe', 300, 0, '2021-06-07 05:51:37', '2021-06-07 05:51:37', 'pending', 'vendor'),
(8, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'wed', 300, 0, '2021-06-07 05:57:52', '2021-06-07 05:57:52', 'pending', 'vendor'),
(9, 122, 'Bank', NULL, '12343', NULL, '123', '1213', '123', 'edxsr', 300, 0, '2021-06-07 05:58:33', '2021-06-07 05:58:33', 'pending', 'vendor'),
(10, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'e3srd', 300, 0, '2021-06-07 06:01:06', '2021-06-07 06:01:06', 'pending', 'vendor'),
(11, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'edrfc', 300, 0, '2021-06-07 06:02:45', '2021-06-07 06:02:45', 'pending', 'vendor'),
(12, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'edfc', 300, 0, '2021-06-07 06:06:45', '2021-06-07 06:06:45', 'pending', 'vendor'),
(13, 122, 'Bank', NULL, '12123', NULL, '123', '123', '123', 'edwrfe', 300, 0, '2021-06-07 06:18:44', '2021-06-07 06:18:44', 'pending', 'vendor'),
(14, 122, 'Bank', NULL, '12343', NULL, '1213', '123', '123', 'defdr', 300, 0, '2021-06-07 06:19:43', '2021-06-07 06:19:43', 'pending', 'vendor'),
(15, 122, 'Bank', NULL, '12343', NULL, '1232', '1 23', '123123', 'drftg', 300, 0, '2021-06-07 06:35:41', '2021-06-07 06:35:41', 'pending', 'vendor'),
(16, 122, 'Bank', NULL, '12345678', NULL, 'ahvfhf', '12354', '4153', 'fbfghnfgn', 300, 0, '2021-06-07 06:38:00', '2021-06-07 06:38:00', 'pending', 'vendor'),
(17, 122, 'Bank', NULL, '12343', NULL, 'gdfgbd fdffdf', '12354', '453254', 'dfghdfhdfh', 300, 0, '2021-06-07 06:41:02', '2021-06-07 06:41:02', 'pending', 'vendor'),
(18, 122, 'Bank', NULL, '123', NULL, '1231', '121', '123', 'frteer', 300, 0, '2021-06-07 06:49:26', '2021-06-07 06:49:26', 'pending', 'vendor'),
(19, 122, 'Select', NULL, NULL, NULL, NULL, NULL, NULL, 'eeeec', 300, 0, '2021-06-07 07:10:41', '2021-06-07 07:13:01', 'completed', 'vendor'),
(20, 122, 'Bank', NULL, '123', NULL, '123', '123', '123', 'xswdxwed', 300, 0, '2021-06-07 07:14:21', '2021-06-07 07:14:21', 'pending', 'vendor'),
(21, 122, 'Select', NULL, NULL, NULL, NULL, NULL, NULL, 'sfvg', 300, 0, '2021-06-07 07:17:55', '2021-06-07 07:17:55', 'pending', 'vendor'),
(22, 122, 'Select', NULL, NULL, NULL, NULL, NULL, NULL, 'dvgb', 300, 0, '2021-06-07 07:19:57', '2021-06-07 07:19:57', 'pending', 'vendor'),
(23, 122, 'Bank', NULL, '12343', NULL, '1234', '132', '123', 'dsfdsfs', 300, 0, '2021-06-07 08:07:30', '2021-06-07 08:07:30', 'pending', 'vendor'),
(24, 122, 'Bank', NULL, '12343', NULL, '1234', '1232', '123', 'eferfger', 300, 0, '2021-06-07 08:09:29', '2021-06-07 08:09:29', 'pending', 'vendor'),
(25, 122, 'Bank', NULL, '12344324', NULL, '1243242', '123213', '123', 'ggggb', 500, 0, '2021-06-07 08:44:21', '2021-06-07 08:44:21', 'pending', 'vendor'),
(26, 122, 'Bank', NULL, '12343', NULL, '1234', '1234', '1234', 'dfhftghtrh', 500, 0, '2021-06-07 08:47:45', '2021-06-07 08:47:45', 'pending', 'vendor'),
(27, 122, 'Bank', NULL, '12345', NULL, '12345', '12345', '12345', 'abc', 1000, 0, '2021-06-07 08:50:09', '2021-06-07 08:50:09', 'pending', 'vendor'),
(28, 122, 'Bank', NULL, '123456', NULL, '123456', '123456', '123456', 'abcd', 1000, 0, '2021-06-07 08:53:58', '2021-06-07 08:53:58', 'pending', 'vendor'),
(29, 122, 'Bank', NULL, '12', NULL, '12', '12', '12', 'ergreg', 500, 0, '2021-06-07 08:57:23', '2021-06-07 08:57:23', 'pending', 'vendor'),
(30, 122, 'Bank', NULL, '12345', NULL, '12345', '12345', '12345', 'tuhin', 1000, 0, '2021-06-07 09:00:32', '2021-06-07 09:00:32', 'pending', 'vendor'),
(31, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'asdc', 500, 0, '2021-06-08 07:26:08', '2021-06-08 07:26:08', 'pending', 'vendor'),
(32, 122, 'Bank', NULL, '12343', NULL, '123', '123', '123', 'asdc', 500, 0, '2021-06-08 07:26:38', '2021-06-08 07:26:38', 'pending', 'vendor'),
(33, 122, 'Bank', NULL, '12', NULL, '1233', '1233', '123', 'fgbhh', 1000, 0, '2021-06-08 07:50:12', '2021-06-08 07:50:12', 'pending', 'vendor'),
(34, 122, 'Bank', NULL, '12123', NULL, '123', '123', '123', 'wefgcr', 1000, 0, '2021-06-08 08:02:53', '2021-06-08 08:02:53', 'pending', 'vendor'),
(35, 122, 'Bank', NULL, '12343', NULL, '1234', '12321', '13123', 'fdgd', 500, 0, '2021-06-08 08:10:53', '2021-06-08 08:10:53', 'pending', 'vendor'),
(36, 122, 'Bank', NULL, '123', NULL, '123', '132', '123', 'dffhbf', 500, 0, '2021-06-08 08:13:35', '2021-06-08 08:13:35', 'pending', 'vendor'),
(37, 122, 'Bank', NULL, '1234', NULL, '1234', '1234', '1234', 'erghg', 500, 0, '2021-06-08 08:22:39', '2021-06-08 08:22:39', 'pending', 'vendor'),
(38, 122, 'Bank', NULL, '1234', NULL, '1234', '213', '213', 'fwe', 500, 0, '2021-06-08 08:43:55', '2021-06-08 08:43:55', 'pending', 'vendor'),
(39, 122, 'Select', NULL, NULL, NULL, NULL, NULL, NULL, 'vdfv', 500, 0, '2021-06-08 08:45:24', '2021-06-08 08:45:24', 'pending', 'vendor'),
(40, 122, 'Bank', NULL, '123', NULL, '123', '123', '123', 'heghe', 300, 0, '2021-06-08 08:52:27', '2021-06-08 08:52:27', 'pending', 'vendor'),
(41, 122, 'Bank', NULL, '123', NULL, '123', '123', '123', 'dsfsd', 300, 0, '2021-06-08 08:55:39', '2021-06-08 08:55:39', 'pending', 'vendor'),
(42, 122, 'Bank', NULL, '12343', NULL, '1234', '1234', '12354', 'bb', 300, 0, '2021-06-08 09:00:09', '2021-06-08 09:00:09', 'pending', 'vendor'),
(43, 122, 'Bank', NULL, '12343', NULL, '1234', '1234', '12354', 'bb', 300, 0, '2021-06-08 09:02:47', '2021-06-08 09:02:47', 'pending', 'vendor'),
(44, 122, 'Bank', NULL, '12343', NULL, '12345', '12345', '1345', 'nvbn', 300, 0, '2021-06-08 09:06:43', '2021-06-08 09:06:43', 'pending', 'vendor'),
(45, 122, 'Bank', NULL, '12343', NULL, '123', '12323', '123213', 'gfbfg', 300, 0, '2021-06-08 09:19:12', '2021-06-08 09:19:12', 'pending', 'vendor'),
(46, 122, 'Bank', NULL, '12343', NULL, '123', '123213', '12321', 'bfdbgvdf', 201, 0, '2021-06-08 09:21:49', '2021-06-08 09:21:49', 'pending', 'vendor'),
(47, 122, 'Bank', NULL, '12343', NULL, '123', '1313', '24214', 'vb', 201, 0, '2021-06-08 09:23:00', '2021-06-08 09:23:00', 'pending', 'vendor'),
(48, 122, 'Bank', NULL, '12343', NULL, '1234', '12345', '1234', 'dfvd', 300, 0, '2021-06-08 09:24:13', '2021-06-08 09:24:13', 'pending', 'vendor'),
(49, 122, 'Bank', NULL, '123', NULL, '21321', '213', '123', 'vds', 210, 0, '2021-06-08 09:26:42', '2021-06-16 06:15:24', 'rejected', 'vendor'),
(50, 122, 'Bank', NULL, '12345678', NULL, '1321', '213', '21213', 'vf', 300, 0, '2021-06-08 09:31:46', '2021-06-16 06:15:17', 'completed', 'vendor'),
(51, 145, 'Bank', NULL, '12344', NULL, '123123', '12321', '123123', 'dgfgeg', 300, 0, '2021-06-21 08:39:58', '2021-06-21 08:39:58', 'pending', 'vendor'),
(52, 145, 'Bank', NULL, '12344', NULL, '123234', '21214', '1234214', 'ewfgerge', 300, 0, '2021-06-21 08:44:02', '2021-06-21 08:44:02', 'pending', 'vendor'),
(53, 145, 'Bank', NULL, '1234', NULL, '1233', '1233', '214214', 'fdfwe', 300, 0, '2021-06-21 08:54:09', '2021-06-21 08:54:09', 'pending', 'vendor'),
(54, 145, 'Bank', NULL, '1234', NULL, '1313', '123213', '123123', 'brfghrt', 300, 0, '2021-06-21 08:57:54', '2021-06-21 08:57:54', 'pending', 'vendor'),
(55, 145, 'Bank', NULL, '1234', NULL, '123421', '2134', '12421', 'gergre', 300, 0, '2021-06-21 09:12:17', '2021-06-21 09:12:17', 'pending', 'vendor'),
(56, 145, 'Bank', NULL, '1234', NULL, '124234', '325325', '52323', 'grrth', 300, 0, '2021-06-21 09:14:28', '2021-06-21 09:14:28', 'pending', 'vendor'),
(57, 145, 'Bank', NULL, '1234', NULL, '43643', '436436', '34643', 'gfhgfh', 300, 0, '2021-06-21 09:17:56', '2021-06-21 09:17:56', 'pending', 'vendor'),
(58, 145, 'Bank', NULL, '1234', NULL, '43643', '436436', '34643', 'gfhgfh', 300, 0, '2021-06-21 09:17:59', '2021-06-21 09:17:59', 'pending', 'vendor'),
(59, 145, 'Bank', NULL, '1234', NULL, '43643', '436436', '34643', 'gfhgfh', 300, 0, '2021-06-21 09:18:02', '2021-06-21 09:18:02', 'pending', 'vendor'),
(60, 145, 'Bank', NULL, '12344', NULL, '124234', '235432', '32532', 'dvfdgdf', 300, 0, '2021-06-21 09:59:23', '2021-06-21 09:59:23', 'pending', 'vendor'),
(61, 145, 'Bank', NULL, '12344', NULL, 'arif', 'sdfsf34543', '1234214', 'dgvdfg', 300, 0, '2021-06-21 10:00:30', '2021-06-21 10:00:30', 'pending', 'vendor');

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
-- Indexes for table `destricts`
--
ALTER TABLE `destricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD UNIQUE KEY `phone` (`phone`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `android_token`
--
ALTER TABLE `android_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `android_user_check`
--
ALTER TABLE `android_user_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destricts`
--
ALTER TABLE `destricts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

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
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sslorders`
--
ALTER TABLE `sslorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
