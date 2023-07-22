-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2023 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingindus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Harsh', 'harsh@patnawholesale.com', '7488789915', '164950872448-480300_packers-and-movers-hyderabad-packers-and-movers-png.png', 0, '$2y$10$PhUQhc8yvKAOxJjETbFWV.CKY72JfVM2rl6xo6r/jgtGuPMZXMAZu', NULL, '2018-02-28 23:27:08', '2022-06-15 05:12:00'),
(3, 'IT Team', 'info@webhouseindia.com', '7488789915', '16778444825BQlOFOwebhouseindai_testimonial.jpg', 1, '$2y$10$SsenS1w7n1ax0dZJgjTWHO7yeZi4Yr.fvXftRFJu8QQJz3MI8uSkS', NULL, '2022-07-12 06:10:19', '2023-07-05 04:03:18'),
(5, 'Webhouseindia Team', 'vicky@webhouseindia.com', '7488789915', '1688549134WhatsApp Image 2023-06-09 at 10.02.22 AM.jpeg', 1, '$2y$10$/iXnu40V97badtxsxYkYteHcl3mfx1HrMWlDSGYv6A2y7O6ZtIHRu', NULL, '2023-03-03 00:16:35', '2023-07-05 04:03:07'),
(10, 'testing', 'testing@gmail.com', '0101010101', 'NyEMshutterstock_1021887838.jpg', 1, '$2y$10$MNs1B1psRHD09cdBz.Wjq.lkBtuGOlrT2F/SYEjDsnHO9OcnaBTkW', NULL, '2023-07-20 00:45:25', '2023-07-20 00:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 6, 'Color', 'color', NULL, NULL),
(2, 6, 'Size', 'size', NULL, NULL),
(3, 4, 'Color', 'color', NULL, NULL),
(4, 4, 'Size', 'size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT 0,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`, `stock`) VALUES
(1, 3, 'Red', 0, 'red', NULL, NULL, '24'),
(2, 3, 'Purple', 0, 'purple', NULL, NULL, 'unlimited'),
(3, 3, 'Orange', 0, 'orange', NULL, NULL, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_popular` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(1, 'Amazon', 'Amazon', 'Ufrkamazon.png', 1, 1, NULL, NULL),
(2, 'Flipkart', 'Flipkart', 'wHED2.png', 1, 1, NULL, NULL),
(3, 'Snapdeal', 'Snapdeal', 'oLAR5.png', 1, 1, NULL, NULL),
(4, 'Paytm Mall', 'Paytm-Mall', 'wQXA4.png', 1, 1, NULL, NULL),
(5, 'Tata CliQ', 'Tata-CliQ', 'VQX33.png', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_photo` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `small_photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(4, 'Rucksack', 'rucksack', '1688901916rucksuck-timesquartz.png', '16838093364-modified.png', '[{\"value\":\"rucksack\"}]', NULL, 1, 1, 6, NULL, NULL),
(5, 'Duffle Bag', 'duffle-bags', '1688901890duffle-bag-timesquartz.png', '16838091845-modified.png', '[{\"value\":\"duffle bags\"}]', 'Shop from our wide collection of branded Duffle bags for men and women in India at best prices. ✯ Free Shipping ✯ COD ✯ Easy returns', 1, 1, 5, NULL, NULL),
(18, 'Backpacks', 'backpacks', '1688901878bagpack-timesquartz.png', '16838094183-modified.png', '[{\"value\":\"bagpacks buy online\"}]', 'Buy Backpacks for Men. Huge collection of men\'s backpacks at low offer price & discounts at COD, Easy Returns & Exchanges.', 1, 1, 4, NULL, NULL),
(19, 'Trolley Bags', 'trolley-bags', '1688901868trolley-bag-timesquartz.png', '16838093892-modified.png', '[{\"value\":\"trolley bags buy online\"},{\"value\":\"trolley bag\"}]', 'Shop from the latest collection of trolleys, suitcases and luggage bags from TimesQuartz', 1, 1, 3, NULL, NULL),
(28, 'Women\'s Wrist Watch', 'womens-wrist-watch', '1688901803womens-watch-timesquartz.png', '16838093511-modified.png', '[{\"value\":\"womens wrist watch\"},{\"value\":\"buy women wrist watch\"},{\"value\":\"womens watch\"}]', 'Wide collection of best branded ladies wrist watches. Check top women\'s watches brands prices. Free Shipping. Cash on delivery option is available.', 1, 1, 2, NULL, NULL),
(30, 'Men\'s Wrist Watch', 'mens-wrist-watch', '1688901787mens-watch-timesquartz.png', '1683809311Untitled design (2)-modified.png', '[{\"value\":\"mens wrist watch\"},{\"value\":\"mens watches\"},{\"value\":\"buy mens watch online\"},{\"value\":\"watch for men\"}]', 'Check out the latest collection of watches (for) men and opt for options that suit you best. Whether you prefer timeless designs or are looking for stylish wrist watch.', 1, 1, 1, NULL, NULL),
(32, 'Women\'s Hand Bag', 'women-hand-bag', 'GUmRladies-hand-bag-timesquartz.png', 'Rzmeladies-hand-bag-timesquartz.png', '[{\"value\":\"Women\'s Hand Bag\"}]', 'd', 1, 1, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, NULL, NULL),
(7, 'INR', '₹', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To TimesQuartz', '<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT 1,
  `is_t4_featured_banner` tinyint(4) DEFAULT 1,
  `is_t4_specialpick` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t4_flashdeal` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t4_popular_category` tinyint(4) DEFAULT 1,
  `is_t4_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t4_blog_section` tinyint(4) DEFAULT 1,
  `is_t4_brand_section` tinyint(4) DEFAULT 1,
  `is_t4_service_section` tinyint(4) DEFAULT 1,
  `is_t3_slider` tinyint(4) DEFAULT 1,
  `is_t3_service_section` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t3_popular_category` tinyint(4) DEFAULT 1,
  `is_t3_flashdeal` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t3_pecialpick` tinyint(4) DEFAULT 1,
  `is_t3_brand_section` tinyint(4) DEFAULT 1,
  `is_t3_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t3_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_slider` tinyint(4) DEFAULT 1,
  `is_t2_service_section` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t2_flashdeal` tinyint(4) DEFAULT 1,
  `is_t2_new_product` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t2_featured_product` tinyint(4) DEFAULT 1,
  `is_t2_bestseller_product` tinyint(4) DEFAULT 1,
  `is_t2_toprated_product` tinyint(4) DEFAULT 1,
  `is_t2_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t2_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_brand_section` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT 1,
  `is_t2_falsh` tinyint(4) DEFAULT 1,
  `is_t3_falsh` tinyint(4) DEFAULT 1,
  `is_t4_falsh` tinyint(4) DEFAULT 1,
  `is_t2_three_column_category` tinyint(4) DEFAULT 1,
  `is_t3_three_column_category` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`, `is_t1_falsh`, `is_t2_falsh`, `is_t3_falsh`, `is_t4_falsh`, `is_t2_three_column_category`, `is_t3_three_column_category`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(44, 3, 'IS THERE ANY FEE TO JOIN Indus-rise.com?', 'Indus-rise.com doesn\'t take any fee for joining. It is absolutely free. You can join directly by entering your details on our mobile app or Website', NULL, NULL, NULL, NULL),
(45, 7, 'ARE YOUR PRODUCTS GENUINE OR DUPLICATE?', 'We deliver only Genuine and Original Products. All our products are 100% genuine. Additionally, we provide a  Invoice with each purchase which authenticates the transaction and all the products.', NULL, NULL, NULL, NULL),
(46, 7, 'IS DELIVERY FREE OF COST ?', 'The Delivery is free of cost in Bhopal Only.', NULL, NULL, NULL, NULL),
(47, 7, 'WHAT IS THE DELIVERY TIMELINE?', 'Our delivery time generally is 7 to 10 days depending on the delivery location. However, in some cases, due to unforeseen circumstances, the delivery can go upto 10 days.', NULL, NULL, NULL, NULL),
(48, 8, 'WHERE ARE YOUR OFFICES LOCATED?', 'Our corporate office is based in Bhopal, MP and For Any Issues Customers can contact us at +91 9798294716  (or) Support@indus-rise.com', NULL, NULL, NULL, NULL),
(49, 7, 'HOW CAN I PAY FOR MY ORDER?', 'Once the order is placed and approved by the  back-end team , our sales representative will guide you through the payment process. We usually take COD (or )Bank Transfer (or) UPI Payment.', NULL, NULL, NULL, NULL),
(50, 7, 'DO YOU HAVE MINIMUM ORDER QUANTITY?', 'Order Value More than INR 999', NULL, NULL, NULL, NULL),
(51, 9, 'CAN I CANCEL AFTER PLACING THE ORDER?', 'Cancellation will be done only before Order dispatch, If order is already dispatched no cancellation will be acceptable..', NULL, NULL, NULL, NULL),
(52, 9, 'CAN I CANCEL AFTER PLACING THE ORDER?', 'Cancellation will be done only before order dispatch, If order is already dispatched no cancellation will be acceptable..', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Product Delivery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Product-Delevery--', '[]', NULL, 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(13, 532, '1634490565Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(14, 532, '1634490565Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(15, 532, '1634490565Hf086ae681630461684ced251f8fb5206P.jpg', NULL, NULL),
(79, 523, 'bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png', NULL, NULL),
(86, 6, 'qP2k8-A-copy.jpg', NULL, NULL),
(87, 6, '0X048-D-copy.jpg', NULL, NULL),
(88, 7, 'vzab3.png', NULL, NULL),
(89, 7, '631w2.png', NULL, NULL),
(90, 7, 'VpjW1.png', NULL, NULL),
(91, 8, 'S5Xl6.png', NULL, NULL),
(92, 8, 'FGIG5.png', NULL, NULL),
(93, 8, 'IOjG4.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_secend` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_third` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_column_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_4_popular_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `discount_banner`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`, `hero_banner`) VALUES
(1, '{\"title1\":\"Trolley Bags\",\"subtitle1\":\"12% OFF\",\"firsturl1\":\"products?category=neck-band-wireless-earphones\",\"title2\":\"Watches\",\"subtitle2\":\"20% OFF\",\"firsturl2\":\"products?category=bluetooth-speaker\",\"title3\":\"BagPacks\",\"subtitle3\":\"15% OFF\",\"firsturl3\":\"products?category=wired-earphones\",\"img1\":\"dQyd1.png\",\"img2\":\"rF4l2.png\",\"img3\":\"UTpJ3.png\"}', '{\"img1\":\"pv0Gkisspng-clip-art-meditation-portable-network-graphics-imag-yoga-clip-meditation-transparent-amp-png-clipart-5c8639c7e84a26.7482503915523004879515-removebg-preview.png\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"title3\":\"Headphone\",\"subtitle3\":\"60% OFF\",\"url3\":\"#\",\"img1\":\"16365342794.jpg\",\"img2\":\"16365342795.jpg\",\"img3\":\"16365342796.jpg\"}', '{\"img1\":\"pv0Gkisspng-clip-art-meditation-portable-network-graphics-imag-yoga-clip-meditation-transparent-amp-png-clipart-5c8639c7e84a26.7482503915523004879515-removebg-preview.png\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"18\",\"subcategory_id1\":\"6\",\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":null,\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"18\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"FORMAL\",\"url1\":\"#\",\"label2\":\"LIMITEN EDITION\",\"url2\":\"#\",\"label3\":\"WOMEN\'S COLLECTION\",\"url3\":\"#\",\"label4\":\"SMART CASUALS\",\"url4\":\"#\",\"label5\":\"POLO\",\"url5\":\"#\",\"img1\":\"16368975771.jpg\",\"img2\":\"16368975772.jpg\",\"img3\":\"16368975773.jpg\",\"img4\":\"16368975774.jpg\",\"img5\":\"16368975775.jpg\"}', '[\"18\",\"19\",\"21\",\"27\"]', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"ONMF222.jpg\",\"img2\":\"24gX1111.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `subcategory_id` int(11) DEFAULT 0,
  `childcategory_id` int(11) DEFAULT 0,
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_specification` tinyint(4) DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `previous_price` double DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` enum('file','link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(4, 28, NULL, NULL, 3, NULL, 'Watch D345Z', 'Watch-D345Z', 'HMorra2NLz', '', NULL, 'Wireless Earbuds with Massive Playback of upto 17 Hour, IPX5 Water & Sweat Resistance, IWP Technology, Type C Interface', '[\"Country of Origin\",\"Package Contains:\",\"Bluetooth Version\",\"Charging Time:\",\"Bluetooth Range:\",\"Talk time\\/music time:\",\"Voice Assistant\",\"Marketed and Imported by:\",\"Address:\"]', '[\"India\",\"1 device, 1 charging cable, 1 user manual, warranty card\",\"V5.3+EDR\",\"30min(Earbuds), 2 Hours(Case)\",\"10 M\",\"3 Hours per bud\",\"Yes\",\"Indus Rise Pvt Ltd\",\"Bhopal MP, India\"]', 1, '<h2 style=\"text-align: center; \"><b>boAt Airdopes 131 - Wireless Earbuds</b></h2><p>Your partner for every vibe, Airdopes 163 earbuds pumps uninterrupted music with its massive playback of upto 17 hour. And when you run out of battery, you can enjoy 180 mins of music with just 10 minutes of charge. Grooving has never been so hasslefree with Bluetooth v5.1 that seamlessly plays your music. Gone are the days when you had to check if your device is connected or not. Our. connects with your paired devices as soon as you open the lid of the case. Indulge in our immersive sound with its 10mm driver and enjoy music for every vibe.</p><p><br></p><p><img src=\"https://cdn.shopify.com/s/files/1/0997/6284/files/vs104_ui_desk_features_2_1500x.jpg?v=1669611570\" style=\"width: 100%;\"><img src=\"https://cdn.shopify.com/s/files/1/0997/6284/files/d-03-min_e604f236-97b9-4eda-bcca-757ad6226c68_1500x.png?v=1655313818\" style=\"width: 100%;\"><img src=\"https://cdn.shopify.com/s/files/1/0997/6284/files/vs104_ui_desk_charge_2_1500x.jpg?v=1669611606\" style=\"width: 100%;\"><img src=\"https://cdn.shopify.com/s/files/1/0997/6284/files/d-07-min_1d5adfec-5afc-42cc-9847-e2c3a833014d_1500x.png?v=1655314373\" style=\"width: 100%;\"><br></p>', '168380824113-A-removebg-preview-removebg-preview.png', 1299, 1999, 33, '', NULL, 1, 'flash_deal', '10/18/2023', NULL, NULL, NULL, '2023-04-05 22:02:00', '2023-05-11 07:01:16', NULL, NULL, 'normal', '5IjHDy8s.png', NULL),
(5, 4, NULL, NULL, 3, NULL, 'Duffle Baga', 'Duffle-Baga', 'n3ao1cALfm', '', NULL, '1.65\" (4.18 cm) colour AMOLED Display, Fitness Tracking, 100+ Cloud Watch Faces', '[null]', '[null]', 1, '<p>Count on Watch Matrix to count your calories with Smart Activity Tracker. Carry your health on your wrist with boAt’s Smart Health Ecosystem, and track your health and that of your loved ones. Get customized run plans and achieve your fitness goals with Crest App Gamification. Keep your worries at bay and dive into your fitness journey, Watch Matrix comes with 3 ATM Dust, Splash and Sweat Resistance. Manage your health with Spo2, Step, Heart Rate, Sleep and Period Tracker. It comes with a massive battery back-up of 7 days so you #KeepPlaying. Go beyond just fitness and organize your day with all the important notifications on your wrist. Get ahead and make a bold statement.</p>', '16838085712-B-scaled-removebg-preview.png', 999, 1499, 50, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2023-04-05 22:12:05', '2023-05-11 07:06:11', NULL, NULL, 'normal', 'lWOS0x4U.png', NULL),
(6, 28, NULL, NULL, 3, NULL, 'Watch D34512 TimesQuartz', 'Watch-D34512-TimesQuartz', 'SicUMTyrPP', '', NULL, 'TimesQuartz Karishma Bandhan Off White Dial Quartz Analog Watch for Couple With Golden Stainless Steel Strap', '[\"BRAND\",\"GENDER\",\"WARRANTY PERIOD\",\"MOVEMENT\",\"STRAP COLOR\",\"GLASS MATERIAL\",\"STRAP MATERIAL\",\"WATER RESISTANCE\",\"CASE SHAPE\"]', '[\"TimesQuartz\",\"Male\",\"12 Months\",\"Quartz\",\"Golden\",\"Mineral Glass\",\"Stainless Steel\",\"3 ATM\",\"Round\"]', 1, '<p>Analogue quartz wrist watches are battery-powered timepieces. They are the OGs of the watch world. If you want that classy, debonair look, analogue watches are the way to go. At TimesQuartz, we offer a wide range of analogue watches, available in different dial shapes, strap materials, and a host of colours.</p>', '168380852312-A-1024x1024-removebg-preview.png', 989, 1899, 45, 'Mens Watch', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2023-04-05 22:17:08', '2023-05-11 08:03:29', NULL, NULL, 'normal', 'yAc25rkF.png', NULL),
(7, 30, NULL, NULL, 3, NULL, 'Analog TimesQuartz Watch (A-101 Silver Case Black Dial)', 'analog-watch-a-101-silver-case-black-dial', 'cwAmEMNKFP', 'A-101,TimesQuartzA101', NULL, 'Discover the allure of the A-101 Silver Case Black Dial Watch today! Shop now and experience the charm of a \"Made in India\" timepiece that complements your everyday lifestyle.', '[\"Origin of Country\",\"Lifestyle\",\"Dial\",\"Display\",\"Watch Feature\",\"Warranty Type\",\"Warranty Period\",\"Occasion\",\"Strap Type\",\"Movement\"]', '[\"India\",\"Everyday\",\"Black\",\"Analog\",\"Water Resistant\",\"Manufacturing\",\"1 Years\",\"Casual\\/Formal\",\"Stainless Steel\",\"Quartz\"]', 1, '<p>Introducing the <b>A-101 Silver Case Black Dial Watch</b> - a proud representation of a \"Made in India\" product that seamlessly fits into your everyday lifestyle.&nbsp;This timepiece features a captivating black dial and an analog display, exuding elegance and style. Whether it\'s a casual outing or a formal event, this watch effortlessly enhances your look.</p><p>Designed to withstand water exposure, this watch is water-resistant, making it suitable for various activities and environments. Feel confident wearing it wherever you go.</p><p><span style=\"color: rgb(0, 0, 0);\">For your peace of mind, the A-101 comes with a 12-month manufacturing warranty, ensuring the highest level of quality and customer satisfaction.</span></p>', '16890504681.png', 1899, 1709, 57, 'TimesQuartzA101,Mens Watch,TimesQuartz Mens Watch', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2023-07-10 23:11:08', '2023-07-19 23:40:06', NULL, NULL, 'normal', 'lPUZS15S.png', NULL),
(8, 28, NULL, NULL, 3, NULL, 'Timesquartz Wrist Watch for Women A-102', 'Timesquartz-Wrist-Watch-for-Women-A-102', 'iUdWdO3JsX', '', NULL, 'This is a genuine TimesQuartz product. The product comes with a Manufacturer Warranty of 1 Year', '[\"Origin of Country\",\"Lifestyle\",\"Display\",\"Watch Feature\",\"Warranty Type\",\"Warranty Period\",\"Occasion\",\"Strap Type\",\"Movement\"]', '[\"India\",\"Everyday\",\"Blue\",\"Water Resistant\",\"Manufacturing\",\"1 Year\",\"Casual\\/Formal\",\"Stainless Steel\",\"Quartz\"]', 1, '<p>The strap of the A-102 is crafted from durable stainless steel, providing comfort, durability, and a touch of sophistication.</p><p>Powered by a reliable quartz movement, this watch ensures accurate timekeeping, keeping you on track throughout your day.</p><p>Elevate your style and support locally made products with the Timesquartz Wrist Watch for Women A-102 - a perfect blend of quality, style, and craftsmanship.</p>', '16890515065.png', 2245, 1763, 50, 'Ladies Watch', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2023-07-10 23:28:26', '2023-07-10 23:28:26', NULL, NULL, 'normal', 'aEHKg6E2.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`, `type`) VALUES
(1, 'English', '1647794127lN7PfPAc.json', '1647794127lN7PfPAc', 1, 0, NULL, NULL, 'Website'),
(2, 'Arabic', '1647792286wzAqXQOx.json', '1647792286wzAqXQOx', 0, 1, NULL, NULL, 'Website'),
(3, 'English', '1647794074eEeCbfDD.json', '1647794074eEeCbfDD', 1, 0, NULL, NULL, 'Dashboard'),
(4, 'Arabic', '1638870927JMqjbCXv.json', '1638870927JMqjbCXv', 0, 1, NULL, NULL, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(15) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17),
(68, '2021_11_21_143624_add_shop_extra_field_to_settings_table', 19),
(69, '2021_11_20_105052_add_stock_to_attribute_options_table', 20),
(71, '2021_11_21_151422_add_home_page_title_to_settings_table', 21),
(72, '2021_11_23_141528_add_type_to_languages_table', 22),
(73, '2021_11_23_144810_add_privacy_terms_to_settings_table', 23),
(74, '2021_11_23_182026_add_guest_checkout_to_settings_table', 24),
(76, '2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table', 25),
(77, '2021_11_26_163222_add_affiliate_link_to_items_table', 26),
(78, '2021_11_27_113624_add_css_field_to_settings_table', 27),
(79, '2021_12_05_161222_add_flash_section_to_extra_settings_table', 28),
(82, '2021_12_05_165840_add_popup_field_to_settings_table', 29),
(83, '2021_12_06_141255_add_3column_section_to_extra_settings_table', 30),
(84, '2022_01_03_141239_add_currency_seperator_to_settings_table', 31),
(85, '2022_01_04_142738_create_states_table', 32),
(86, '2022_01_04_145532_add_state_id_to_users_table', 33),
(88, '2022_01_04_161647_add_state_id_to_orders_table', 34),
(89, '2022_01_06_155345_add_disqus_to_settings_table', 35),
(90, '2022_01_16_143429_add_type_to_states_table', 36),
(91, '2022_01_16_153254_add_state_to_orders_table', 37),
(92, '2022_03_01_162121_add_is_decemial_to_settings_table', 38),
(93, '2022_03_20_154807_update_column_to_home_cutomizes_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, '2023-07-19 23:40:06', '2023-07-19 23:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT 0,
  `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`, `state_price`, `state`) VALUES
(1, 11, '{\"7-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Analog TimesQuartz Watch (A-101 Silver Case Black Dial)\",\"slug\":\"analog-watch-a-101-silver-case-black-dial\",\"qty\":\"1\",\"price\":1899,\"main_price\":1899,\"photo\":\"16890504681.png\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '₹', '1', '[]', '{\"id\":7,\"title\":\"Delivery Charge\",\"price\":120,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'SlAzIM2PaG', 'Pending', '{\"ship_first_name\":\"Vicky\",\"ship_last_name\":\"Kumar\",\"ship_email\":\"info@fff.com\",\"ship_phone\":\"4758478787\",\"ship_address1\":\"Infront ofMarket, Kumhrar, Patna, Bihar 800026\",\"ship_address2\":\"fasfd\",\"ship_zip\":\"800026\",\"ship_city\":\"Patna\"}', '{\"_token\":\"YDCx7JESKdlNCesIb1hrUm3SpBK9XYTH0UW1jAEI\",\"bill_first_name\":\"Vicky\",\"bill_last_name\":\"Kumar\",\"bill_email\":\"info@kkk.com\",\"bill_phone\":\"4578\",\"bill_address1\":\"Infront of Prince Travelware, Building No.-159, Patna, Bihar 800026\",\"bill_address2\":\"fasfd\",\"bill_zip\":\"800026\",\"bill_city\":\"Patna\",\"same_ship_address\":\"on\"}', 'Unpaid', '2023-07-19 23:40:06', '2023-07-19 23:40:06', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(11, 'Terms & Condition', 'terms-and-condition', '<p>This website is owned and operated by Times Quartz Private Limited having its registered office at Meena Bazar, Ashok Rajpath, Patna Market, Patna – 800004, Bihar, India and its corporate office at Times Quartz Private Limited, G-8, Lilly Annex Bldg. No.-6, SV Road, Jogeshwari(W), Mumbai – 400102, Maharashtra, India.</p><p>&nbsp;In using the services provided by our website www.timesquartz.com you are deemed to have accepted the terms and conditions listed below or as may be revised from time to time, which is, for an indefinite period and you understand and agree that you are bound by such terms and conditions till the time you access this website.</p><p> Times Quartz Private Limited reserves the right to change these terms and conditions from time to time without any obligation to inform you and it is your responsibility to look through them as often as possible. All rights including copyright, in this website are owned by Times Quartz Private Limited. Any use of this website or its contents, including copying or storing it in whole or part without the permission of Times Quartz Private Limited is Prohibited.<br></p>', NULL, NULL, 2, NULL, NULL),
(12, 'Return Policy', 'return-policy', '<h2 style=\"color: rgb(0, 0, 0);\"><b>30 DAYS RETURN POLICY</b></h2><p>Times Quartz Private Limited offers 30 days replacement guarantee for all products sold through our web site (www.timesquartz.com) Customers may inform us through our Toll Free Number or e-mail of any damage or defect within 30 days from the date of receipt of the product. Times Quartz Private Limited will replace the defective product with a brand new product at no extra cost.</p><p>Times Quartz Private Limited will try to replace the specific product ordered. However, the company reserves the right to offer an alternate product in case the product is out of stock/ production.</p><p>The 30 days return policy is valid only in cases of manufacturing defects and transport damages and is invalid in cases of damages due to normal wear &amp; tear and negligence on part of the customer.</p><h2 style=\"color: rgb(0, 0, 0);\"><b>Cancellation Policy</b></h2><h3 style=\"color: rgb(0, 0, 0);\">Cancellation by Times Quartz Private Limited:</h3><p>There may be certain orders that Times Quartz Private Limited cannot accept, and therefore, we reserve the right, at our sole discretion, to refuse or cancel any order. Some reasons may include limitation on quantity available for purchase; errors in pricing or product information or certain issues identified by our fraud avoidance department or any other issue which we identifies for not accepting the order. We also reserve the right to ask for additional information for accepting orders in certain cases. We will notify you in case your order has been cancelled fully or partially or if any additional information is required to accept your order.</p><h3 style=\"color: rgb(0, 0, 0);\"><b>Cancellation by Customer:</b></h3><p>Order can be cancelled before it is shipped or after receiving the product. You can cancel the order within 30 days of receipt. You would see an option to cancel within ‘Track Orders’ section under the main menu of our Website then select the item or order you want to cancel. In case you are unable to cancel the order from ‘Track Orders’ section, you may call our Toll Free Number 1800 345 6474 and refund will be processed into the source account, if order amount was paid online. An item cannot be cancelled after 30 days of delivery of the goods. After ordering for the good/s, and up to the time of shipping, the customer can cancel the order.</p>', NULL, NULL, 2, NULL, NULL),
(19, 'Refund policy', 'refund-policy', '<p>In case you do not wish to receive the replacement, you may specify that in your communication with our customer service by phone or e-mail. </p><p><b>Product replacement</b> – In case of damaged or incorrect items Times Quartz Private Limited would replace it with a new one, upon receipt of the returned item.</p><p>We do not provide cash refunds. Refunds will be issued to the original source account provided at the time of purchase. After the refund has been initiated, as per the Returns Policy, the refund amount is expected to reflect in the customer account with in 07 Business Days.<br></p>', NULL, NULL, NULL, NULL, NULL),
(20, 'Corporate Enquiry', 'corporate-enquiries', '<p>Thank you for considering our products for your corporate needs. At <b><u>TimesQuartz</u></b>, we take pride in offering high-quality <b>watches, bags, and trolley bags</b> that combine style, functionality, and durability. Whether you\'re looking to enhance your corporate gifting program, outfit your employees with premium accessories, or collaborate on custom designs, we\'re here to assist you.</p><h3><b><u>Why Choose TimesQuartz Pvt. Ltd?</u></b></h3><ul><li><b>Exceptional Quality</b>: Our watches, bags, and trolley bags are meticulously crafted using premium materials and undergo rigorous quality control measures to ensure longevity and customer satisfaction.</li><li><b>Wide Product Range</b>: We offer a diverse collection of watches, bags, and trolley bags, featuring various styles, designs, and colors to suit different preferences and corporate branding requirements.</li><li><b>Customization Options</b>: We understand the importance of personalization. With our customization services, you can add your company logo, colors, or any specific design elements to create unique products that reflect your brand identity.</li><li><b>Competitive Pricing</b>: We strive to provide competitive pricing without compromising on quality. Our goal is to deliver excellent value for your investment.</li><li><b>Reliable and Efficient Service</b>: We value your time and prioritize customer satisfaction. Our dedicated team is committed to providing prompt and professional assistance throughout the inquiry and order process.</li></ul><p>Once we receive your inquiry, our corporate sales team will review your information and contact you within 24-48 hours to discuss your requirements further and provide personalized assistance. We\'ll work closely with you to ensure that your corporate needs are met with utmost satisfaction.</p><p>Thank you for considering <b><u>TimesQuartz</u></b> for your corporate requirements. We look forward to the opportunity to serve you and provide exceptional products that meet your expectations. For any additional inquiries or immediate assistance, please feel free to reach out to our dedicated corporate sales team.</p>', NULL, NULL, NULL, NULL, NULL),
(22, 'Shipping Policy', 'shipping-policy', '<p>Times Quartz Private Limited has a transparent and clear shipping policy for all orders placed on our website. </p><p>Times Quartz Private Limited understands that getting your items quickly is important to you, so we make every effort to process your order quickly.</p><ul><li>We are committed to delivering your order accurately, in good condition, and always on time promised by us in our website.</li><li>We offer FREE Shipping (specified on the Product detail page) on our products ordered through <a href=\"http://www.timesquartz.com\" target=\"_blank\">www.timesquartz.com</a>&nbsp;</li><li>Each order may be shipped only to a single destination address specified at the time of payment for that order. If you wish to ship products to different addresses, you shall need to place multiple orders.</li><li>We make our best efforts to ship each item in your order within 3-4 working days of the order. However in some cases, we may take longer, up to 7 working days.</li><li>We ship on all week days (Monday to Saturday), excluding public holidays.</li><li>To ensure that your order reaches you in the fastest time and in good condition, we only ship through reputed courier agencies.</li><li>While we shall strive to ship all items in your order together, this may not always be possible due to product characteristics, or availability.&nbsp;</li><li>If you believe that the product is not in good condition, or if the packaging is tampered with or damaged, before accepting delivery of the goods, please refuse to take delivery of the package, and call our Toll Free Number 1800 3456 474 or log on to https://timesquartz.com/contact , mentioning your order reference number. We shall make our best efforts to ensure that a replacement delivery is made to you at the earliest.</li><li>You may view the shipping status of your order on our website, by clicking at “ Track Order \"</li></ul><p>Please note all items (including gifts) will be shipped with an invoice&nbsp;<span style=\"color: rgb(0, 0, 0);\">mentioning the price, as per Indian Tax Regulations.</span></p>', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 0, NULL, NULL),
(15, 'Paypal', '{\"client_id\":\"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc\",\"client_secret\":\"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho\",\"check_sandbox\":1}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 0, NULL, NULL),
(17, 'Mollie', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 0, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"client_secret\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"website\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"industry\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"is_paytm\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\"}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 0, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"check_sandbox\":1}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 0, NULL, NULL),
(24, 'Mercadopago', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"check_sandbox\":1}', 'mercadopago', '1633085560unnamed.jpeg', 'Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.', 0, NULL, NULL),
(25, 'Authorize.Net', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"check_sandbox\":1}', 'authorize', '1633100640seal2.png', 'Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net', 0, NULL, NULL),
(26, 'Paystack', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"geniusdevs@gmail.com\"}', 'paystack', '1634237632paystack-opengraph.png', 'Paystack is the faster & safer way to send money. Make an online payment via Paystack.', 0, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1638530860pngwing.com (1).png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>', 1, NULL, NULL),
(28, 'Razorpay', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\"}', 'razorpay', '1637992878download.jpeg', 'Rezorpay is the faster & safer way to send money. Make an online payment via Rezorpay.', 1, NULL, NULL),
(29, 'Flutter Wave', '{\"public_key\":\"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X\",\"secret_key\":\"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '1637998096download.png', 'Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(3, '30% Of', 'TIMESGPT', 1, 30, 1, NULL, NULL, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'admin', '[\"Manage Categories\",\"Manage Products\",\"Manage Orders\",\"Transactions\",\"Ecommerce\",\"Customer List\",\"Manages Tickets\",\"Manage Site\",\"Manage Faqs Contents\",\"Manage Blogs\",\"Manages Pages\",\"Subscribers List\",\"Manage System User\",\"System Backup\"]', '2021-12-05 10:24:27', '2022-06-06 23:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Crafted in India', 'Made in India', '1680837314india (1).png', NULL, NULL),
(32, 'Free Shipping', 'We Will Ship Your Product Free Of Cost', '1679560170delivery-man.png', NULL, NULL),
(33, '10 Days Replacement', 'We Have 10 Days Replacement Policy', '1679559774replacement (1).png', NULL, NULL),
(34, '1 Year Warranty', '#', '1679558291warranty (2).png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT 1,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT 0,
  `email_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overlay` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shop` tinyint(4) DEFAULT 1,
  `is_blog` tinyint(4) DEFAULT 1,
  `is_faq` tinyint(4) DEFAULT 1,
  `is_contact` tinyint(4) DEFAULT 1,
  `facebook_check` tinyint(4) DEFAULT 1,
  `facebook_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT 1,
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double DEFAULT 0,
  `max_price` double DEFAULT 100000,
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_gateway_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT 1,
  `is_category` tinyint(4) DEFAULT 1,
  `is_product` tinyint(4) DEFAULT 1,
  `is_top_banner` tinyint(4) DEFAULT 1,
  `is_recent` tinyint(4) DEFAULT 1,
  `is_top` tinyint(4) DEFAULT 1,
  `is_best` tinyint(4) DEFAULT 1,
  `is_flash` tinyint(4) DEFAULT 1,
  `is_brand` tinyint(4) DEFAULT 1,
  `is_blogs` tinyint(4) DEFAULT 1,
  `is_campaign` tinyint(4) DEFAULT 1,
  `is_brands` tinyint(4) DEFAULT 1,
  `is_bottom_banner` tinyint(4) DEFAULT 1,
  `is_service` tinyint(4) DEFAULT 1,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT 1,
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_form_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT 1,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `is_maintainance` tinyint(4) DEFAULT 1,
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_twilio` tinyint(4) DEFAULT 0,
  `twilio_section` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT 1,
  `is_highlighted` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT 1,
  `is_featured_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT 1,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT 0,
  `currency_direction` tinyint(4) DEFAULT 1,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_messenger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_analytics` tinyint(4) DEFAULT 0,
  `is_google_adsense` tinyint(4) DEFAULT 0,
  `is_facebook_pixel` tinyint(4) DEFAULT 0,
  `is_facebook_messenger` tinyint(4) DEFAULT 0,
  `announcement_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attribute_search` tinyint(4) DEFAULT 1,
  `is_range_search` tinyint(4) DEFAULT 1,
  `view_product` int(11) DEFAULT 12,
  `discount_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_us` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_off` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT 1,
  `policy_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `terms_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT 1,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT 1,
  `cookie_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '.',
  `thousand_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ',',
  `disqus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `is_decimal` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`, `is_attribute_search`, `is_range_search`, `view_product`, `discount_banner`, `why_us`, `percent_off`, `home_page_title`, `is_privacy_trams`, `policy_link`, `terms_link`, `is_guest_checkout`, `custom_css`, `announcement_title`, `announcement_type`, `is_cookie`, `cookie_text`, `announcement_details`, `decimal_separator`, `thousand_separator`, `disqus`, `is_disqus`, `is_decimal`) VALUES
(1, 'Indus.com', '1689831604png-clipart-texas-leather-furniture-accessories-logo-brand-rustic-farmhouse-kitchen-design-ideas-furniture-text-removebg-preview.png', '1689831623venus-logo-favicon.png', '16388581681_D-ZiKd0B00tdifaB2X3tKQ.gif', 0, '1600622296topic.jpg', '#CF391C', 1, 'smtp-relay.sendinblue.com', '587', 'tls', 'TimesQuartz', 'j60Pr4DAnZ2kmWIK', 'Info@timesquartz.com', 'TimesQuartz', 'Info@timesquartz.com', '4.0', NULL, 'UA-106757798-1', 'Watches,Trolley Bags,Bag Packs,Hand Bags Brand', 'Choose from a variety of  Products online in India at best rates. ✯ Free Shipping ✯ Cash on Delivery ✯ Easy Returns & Replacement', 1, 0, 1, 1, 0, '643929170080071', '038b2100dff9a2a684c85959c0accf66', 'https://localhost/patnawholesale/auth/facebook/callback', 0, '915191002660-6hjno4cgnbcm5p1kb3t692trh7pc6ngh.apps.googleusercontent.com', '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', 'http://localhost/patnawholesale/auth/google/callback', 0, 25000, '1800-3456-474', 'Times Quartz Private Limited G-8, Lilly Annex Bldg. No. 6, S.V. Road, Jogeshwari (W), Mumbai – 400102 India', 'support@timesquartz.com', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-instagram\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\\/timesquartz\",\"https:\\/\\/twitter.com\\/timesquartz\",\"https:\\/\\/www.instagram.com\\/timesquartz\\/\",null]}', '9:00 AM', '9:00 PM', '11:00 AM', '5:00 PM', 'Copyright © TimesQuartz.com- 2023 | All Rights Reserved | Brand Managed By <a ref=\"nofollow\" href=\"https://webhouseindia.com\">Webhouseindia.com</a>', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 'Deals Of The Week', '10/10/2022', 1, 'AC73e54518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+1', 0, '1638791990Untitled-1.jpg', '1.00', 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully. your order number is {order_number}\",\"\'order_status\'\":\"Your Order status update. Order number is {order_number}\"}', NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 0, 'theme3', '6LdAH2klAAAAAHGYnHmtsRqtJ3kZfmIwNz-HyRyF', '6LdAH2klAAAAAHU_4UEaHbPPN9Zbhow7MDdBRJYL', 0, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '#', 1, 1, 8, '1687347796timesquartz-discount-offer.webp', '1689654974made-in-in-india (1).png', '1687406347percent-off-chatgpt.webp', 'Bag Maker', 1, '/privacy-policy', '/terms-and-condition', 0, NULL, 'Get 50% Discount.', 'newletter', 0, 'Your experience on this site will be improved by allowing cookies.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', '.', ',', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `minimum_price` double NOT NULL DEFAULT 0,
  `is_condition` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `minimum_price`, `is_condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delivery', 0, 2000, 1, 1, NULL, NULL),
(7, 'Delivery Charge', 120, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(7, '1683805804wp3354888.jpg', 'Up to 85% Off - Luggage and Suitcases', 'product/', '16838051271-A-scaled-removebg-preview.png', 'TimesQuartz special set of 2 luggage trolley offer @ Rs. 4599 and one bag absolutely free.', NULL, NULL, 'theme3'),
(8, '16838055141155017.jpg', 'Buy TimesQuartz Watches for Men @ Just Rs. 999', 'product', '1683804531FRONT-VIEW-removebg-preview.png', 'Choose from a wide range of Mens Digital, Analog, Chronological Watches', NULL, NULL, 'theme3');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `price`, `status`, `type`) VALUES
(10, 'GST', 12, 0, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, '12% GST Tax', 12, 1, NULL, NULL),
(2, '5% GST Tax', 5, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL),
(5, '18% GST Tax', 18, 1, NULL, NULL),
(6, '28% GST Tax', 28, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(40) NOT NULL,
  `company` varchar(50) NOT NULL,
  `rating` varchar(3) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `post`, `company`, `rating`, `type`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Rohit Kumar', 'Businessman', 'TRP Private Limited', '5', 2, '<p><font color=\"#262626\"><span style=\"font-size: 13.3333px;\">Rimjhim water Park is a very good option to enjoy your weekend with Family and friends. There are more than 6 rides for adults and two separate sections for children. The Food is also good. Try ', 'public/images/testimonials/WnalNx0_esythink_testimonial.jpeg', 1, '2023-06-22 12:58:49', '2023-05-23 16:21:49'),
(7, 'Rani Mishra', 'Sole proprietorship', 'Rani Enterprises', '4', 1, '<p>A very good place to visit in Rohtas. Before visiting we had doubts about water quality, crowd, gentry, food, toilets etc. etc. But we were pleasantly surprised that things were very smooth. Water was clean and all places were spick and span. Thanks al', 'public/images/testimonials/DKTwVNT_esythink_testimonial.jpeg', 1, '2023-06-23 12:58:49', '2023-05-23 16:20:39'),
(8, 'Rahul Singh', 'Bank Manager', 'Axis Bank', '5', 2, '<p>Me and My Wife with children went rimjhim water park..i was totally amazed with the facilities they have added.. I highly recommend them to anyone in need of family outing.\"</p>', 'public/images/testimonials/PEpeI69_esythink_testimonial.jpg', 1, '2023-06-28 12:58:49', '2023-05-23 16:19:08'),
(9, 'Mr. Raghav Kumar', 'Doctor', 'Vedashreeclasses.com', '5', 0, '<p>We are fully satisfied with Rimjhim Water Park..our full family enjoyed alot and have very warmful season in sasaram..we highly recommend this water park</p>', 'public/images/testimonials/9mWDCQ9_esythink_testimonial.jpg', 1, '2023-06-29 22:43:56', '2023-05-23 16:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(320, 133, 'Pending', '2023-04-07 06:19:32', '2023-04-07 06:19:32'),
(321, 134, 'Pending', '2023-04-07 21:10:12', '2023-04-07 21:10:12'),
(322, 1, 'Pending', '2023-07-19 23:40:06', '2023-07-19 23:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(103, '1', 'SlAzIM2PaG', 2019, 'upensuni@gmail.com', '₹', 1, '2023-07-19 23:40:06', '2023-07-19 23:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_company` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_zip` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_company` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`, `state_id`) VALUES
(8, 'showrav', 'Hasan', '017286436', 'teacher@gmail.com', NULL, 'ckKvuX', '$2y$10$zTzmhxGC02sxXgxdp2fDuOaQwKOg.DeHDK3zLDXRSsx1C.T8XX9j.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-23 10:10:00', '2023-06-15 10:10:00', NULL),
(11, 'Vicky', 'Kumar', '09709796347', 'upensuni@gmail.com', NULL, 'cioYyA', '$2y$10$yegov.HoOK3Wt7ag7LnwZ.e0cAvSs5szDakQsgjm6Wa4.TgZh8Oz.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-30 04:22:53', '2023-07-20 00:36:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 587, NULL, NULL),
(2, 1, 525, NULL, NULL),
(3, 1, 540, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
