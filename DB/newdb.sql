-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 10:45 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`created_at`, `updated_at`, `id`, `first_name`, `last_name`, `email`, `image`, `social_link`) VALUES
('2020-03-17 00:30:53', '2020-03-18 19:26:28', 2, 'বাপ্পী সাহা,', 'টেকনিক্যাল ডেভেলপার', 'bappi35-2097@diu.edu.bd', 'storage/files/2020/03/16/fddc26ee4ea08234a0b0b7f3baececa9.png', 'bappi35-2097@diu.edu.bd'),
('2020-03-17 02:42:37', '2020-03-18 19:26:21', 3, 'হেদায়েতুল ইসলাম তোহা,', 'টেকনিক্যাল ডেভেলপার', 'hitoha6277@gmail.com', 'storage/files/2020/03/17/fb351c1523ff1044d206d66ff074e2d8.png', 'hitoha6277@gmail.com'),
('2020-03-17 02:45:18', '2020-03-18 19:26:15', 4, 'বাঁধন কুমার সরকার,', 'টেকনিক্যাল ডেভেলপার', 'badhonsarkar518@gmail.com', 'storage/files/2020/03/17/c72f0a075002bf4ade3137c4a289312a.png', 'badhonsarkar518@gmail.com'),
('2020-03-17 02:47:13', '2020-03-18 19:26:06', 5, 'সাদিয়া সুলতানা শারমিন,', 'কনটেন্ট ডেভেলপার', 'sadia15-5191@diu.edu.bd', 'storage/files/2020/03/16/0486f33c6be79be5591ceee1a90e3992.png', 'sadia15-5191@diu.edu.bd'),
('2020-03-17 02:48:05', '2020-03-18 19:26:01', 6, 'মোঃ সানজিদুল ইসলাম,', 'সমন্বয়কারী | লেকচারার, ডিআইইউ', 'sanzid.swe@diu.edu.bd', 'storage/files/2020/03/16/c687cc645213ee27cd0c744a949813e1.png', 'sanzid.swe@diu.edu.bd'),
('2020-03-17 02:48:35', '2020-03-18 19:25:53', 7, 'শাহরিয়ার আজাদ রাব্বী,', 'সমন্বয়কারী | লেকচারার, ডিআইইউ', 'shahariar.cse@diu.edu.bd', 'storage/files/2020/03/17/52309e005dcb3e190f2a5f4bbe939796.png', 'shahariar.cse@diu.edu.bd');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`created_at`, `updated_at`, `id`, `type`, `user_id`, `title`) VALUES
('2020-03-15 02:00:31', '2020-03-17 10:53:53', 1, 'What Should We Do?', NULL, 'খাবারের ব্যাপারে সতর্কতা'),
('2020-03-15 02:09:14', '2020-03-17 10:52:58', 2, 'What', NULL, 'সামাজিকতার বিকল্প মাধ্যম'),
('2020-03-15 07:47:30', '2020-03-17 10:52:39', 4, 'what we do', NULL, 'করোনাভাইরাস প্রতিরোধে করনীয়'),
('2020-03-17 10:54:40', '2020-03-17 10:54:40', 5, 'out of home', NULL, 'ঘরের বাইরের ব্যাপারে সতর্কতা'),
('2020-03-17 10:55:03', '2020-03-17 10:55:03', 6, 'about travel', NULL, 'ভ্রমণের ব্যাপারে সতর্কতা');

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pc_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`created_at`, `updated_at`, `id`, `category_id`, `pc_image`, `tab_image`, `mobile_image`) VALUES
('2020-03-17 12:06:05', '2020-03-17 12:06:05', 22, 6, 'storage/files/2020/03/17/74fafc06029dd1e1742f5023f05cb60f.png', NULL, NULL),
('2020-03-17 12:06:10', '2020-03-17 12:06:10', 23, 6, 'storage/files/2020/03/17/fe0f49cb64c5be407e59d12e6da1ae00.png', NULL, NULL),
('2020-03-17 12:06:14', '2020-03-17 12:06:14', 24, 6, 'storage/files/2020/03/17/88ec7d961979e9d6e7845792058afead.png', NULL, NULL),
('2020-03-17 12:06:27', '2020-03-17 12:06:27', 25, 5, 'storage/files/2020/03/17/6a27470b560a8e475d4b8430e774d379.png', NULL, NULL),
('2020-03-17 12:06:31', '2020-03-17 12:06:31', 26, 5, 'storage/files/2020/03/17/61ed77aa5107906d16e4f894971da112.png', NULL, NULL),
('2020-03-17 12:06:47', '2020-03-17 12:06:47', 27, 1, 'storage/files/2020/03/17/3cbb34616d623e51bf8f6bde2443c8be.png', NULL, NULL),
('2020-03-17 12:06:51', '2020-03-17 12:06:51', 28, 1, 'storage/files/2020/03/17/ab397f1c02a629e709ea554fcf2fd168.png', NULL, NULL),
('2020-03-17 12:06:55', '2020-03-17 20:31:23', 29, 1, 'storage/files/2020/03/17/fd5859b0c467f6162d1896b32eb786c1.png', NULL, NULL),
('2020-03-17 12:07:05', '2020-03-17 12:07:05', 30, 2, 'storage/files/2020/03/17/545e59d173bd2f67c14af37ae12df6bb.png', NULL, NULL),
('2020-03-17 12:07:09', '2020-03-17 12:07:09', 31, 2, 'storage/files/2020/03/17/adc8bd9ffb21125f629079e2c9a2abeb.png', NULL, NULL),
('2020-03-17 12:07:13', '2020-03-17 12:07:13', 32, 2, 'storage/files/2020/03/17/095cf3705eb423bf33655a955c63e764.png', NULL, NULL),
('2020-03-17 12:07:29', '2020-03-17 12:07:29', 33, 4, 'storage/files/2020/03/17/3ddbd73c2db5b1077c8e78bc86e58a4f.png', NULL, NULL),
('2020-03-17 12:07:33', '2020-03-17 12:07:33', 34, 4, 'storage/files/2020/03/17/60667cf0b5ba5308d24ac3fc3bcded34.png', NULL, NULL),
('2020-03-17 12:07:36', '2020-03-17 12:07:36', 35, 4, 'storage/files/2020/03/17/31bc3832ba1511519c8257f8424a4baf.png', NULL, NULL),
('2020-03-17 12:07:41', '2020-03-17 12:07:41', 36, 4, 'storage/files/2020/03/17/607aa3e982ae84b48aba694a23181d20.png', NULL, NULL),
('2020-03-17 12:07:45', '2020-03-17 12:07:45', 37, 4, 'storage/files/2020/03/17/cd2a91baef7c3035ba1eb3df0992b2b0.png', NULL, NULL),
('2020-03-17 12:07:49', '2020-03-17 12:07:49', 38, 4, 'storage/files/2020/03/17/99350f85f1b395051487c72ff176bae1.png', NULL, NULL),
('2020-03-21 18:55:21', '2020-03-21 18:55:21', 39, 5, 'storage/files/2020/03/21/4c8a8f063ce682c8992033ddeb27c541.png', NULL, NULL),
('2020-03-21 18:55:42', '2020-03-21 18:55:42', 40, 5, 'storage/files/2020/03/21/5eb6710578c27ae1165caa2113ccd65e.png', NULL, NULL),
('2020-03-21 18:56:00', '2020-03-21 18:56:00', 41, 5, 'storage/files/2020/03/21/404da1ec8a8c37a1d41381c09cc8b3c1.png', NULL, NULL),
('2020-03-21 18:56:18', '2020-03-21 18:56:18', 42, 5, 'storage/files/2020/03/21/0018ec756a9a1ffb549ec288e5ec92b3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cb_menus`
--

CREATE TABLE `cb_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT 0,
  `cb_modules_id` int(11) DEFAULT NULL,
  `parent_cb_menus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_menus`
--

INSERT INTO `cb_menus` (`id`, `name`, `icon`, `path`, `type`, `sort_number`, `cb_modules_id`, `parent_cb_menus_id`) VALUES
(1, 'About Us', NULL, NULL, 'module', 0, 1, NULL),
(2, 'Categories', NULL, NULL, 'module', 0, 2, NULL),
(3, 'Category Images', NULL, NULL, 'module', 0, 3, NULL),
(5, 'Symptoms', NULL, NULL, 'module', 0, 4, NULL),
(7, 'Headerposts', NULL, NULL, 'module', 0, 5, NULL),
(12, 'Coronabot', 'fa fa-github-alt', NULL, 'module', 0, 8, NULL),
(13, 'Photo Categories', 'fa fa-align-justify', NULL, 'module', 0, 9, NULL),
(14, 'Photo Gallery', 'fa fa-file-image-o', NULL, 'module', 0, 10, NULL),
(15, 'Faq', 'fa fa-align-justify', NULL, 'module', 0, 11, NULL),
(19, 'Tutorial Categories', 'fa fa-align-justify', NULL, 'module', 0, 14, NULL),
(20, 'Tutorials', NULL, NULL, 'module', 0, 15, NULL),
(22, 'Quarantine', 'fa fa-align-justify', NULL, 'module', 0, 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cb_modules`
--

CREATE TABLE `cb_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_column_build` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_modules`
--

INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(1, 'About Us', 'fa fa-address-card', 'about_us', 'AdminAboutUsController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"First Name\",\"column_field\":\"first_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Last Name\",\"column_field\":\"last_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Email\",\"column_field\":\"email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Image\",\"column_field\":\"image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Social Link\",\"column_field\":\"social_link\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(2, 'Categories', 'fa fa-th-list', 'categories', 'AdminCategoriesController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Type\",\"column_field\":\"type\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"User\",\"column_field\":\"user_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"users\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":true,\"column_add\":false,\"column_filterable\":null,\"column_foreign\":\"user_id\",\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"email_verified_at\",\"primary_key\":false,\"display\":false},{\"column\":\"password\",\"primary_key\":false,\"display\":false},{\"column\":\"remember_token\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"photo\",\"primary_key\":false,\"display\":false},{\"column\":\"cb_roles_id\",\"primary_key\":false,\"display\":false},{\"column\":\"ip_address\",\"primary_key\":false,\"display\":false},{\"column\":\"user_agent\",\"primary_key\":false,\"display\":false},{\"column\":\"login_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(3, 'Category Images', 'fa fa-file-image-o', 'category_images', 'AdminCategoryImagesController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Category\",\"column_field\":\"category_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"categories\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"title\",\"column_option_sql_condition\":null,\"column_options\":[{\"key\":null,\"label\":null}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":false,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"type\",\"primary_key\":false,\"display\":false},{\"column\":\"user_id\",\"primary_key\":false,\"display\":false},{\"column\":\"title\",\"primary_key\":false,\"display\":true}]},{\"column_label\":\"Pc Image\",\"column_field\":\"pc_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tab Image\",\"column_field\":\"tab_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Mobile Image\",\"column_field\":\"mobile_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(4, 'Symptoms', 'fa fa-hospital-o', 'symptoms', 'AdminSymptomsController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Image\",\"column_field\":\"image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Body\",\"column_field\":\"body\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(5, 'Headerposts', 'fa fa-bars', 'headerposts', 'AdminHeaderpostsController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Body\",\"column_field\":\"body\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Image\",\"column_field\":\"image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(8, 'Coronabot', 'fa fa-odnoklassniki', 'coronabot', 'AdminCoronabotController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":true,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":true,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques1\",\"column_field\":\"ques1\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques2\",\"column_field\":\"ques2\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques3\",\"column_field\":\"ques3\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques4\",\"column_field\":\"ques4\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques5\",\"column_field\":\"ques5\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques6\",\"column_field\":\"ques6\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques7\",\"column_field\":\"ques7\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques8\",\"column_field\":\"ques8\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques9\",\"column_field\":\"ques9\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Ques11\",\"column_field\":\"ques11\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Heart\",\"column_field\":\"heart\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Diabetic\",\"column_field\":\"diabetics\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Asthama\",\"column_field\":\"asthama\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"High Pressure\",\"column_field\":\"high_pressure\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nothing\",\"column_field\":\"nothing\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Result\",\"column_field\":\"result\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Phone Number\",\"column_field\":\"phone_number\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(9, 'Photo Categories', 'fa fa-align-justify', 'photo_categories', 'AdminPhotoCategoriesController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Type\",\"column_field\":\"type\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(10, 'Photo Gallery', 'fa fa-bars', 'photo_gallery', 'AdminPhotoGalleryController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Photo Category\",\"column_field\":\"photo_category_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"photo_categories\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"title\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"type\",\"primary_key\":false,\"display\":false},{\"column\":\"title\",\"primary_key\":false,\"display\":true}]},{\"column_label\":\"Pc Image\",\"column_field\":\"pc_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tab Image\",\"column_field\":\"tab_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Mobile Image\",\"column_field\":\"mobile_image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');
INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(11, 'Faq', 'fa fa-bars', 'faq', 'AdminFaqController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Question\",\"column_field\":\"question\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Answer\",\"column_field\":\"answer\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Type\",\"column_field\":\"type\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(14, 'Tutorial Categories', 'fa fa-bars', 'tutorial_categories', 'AdminTutorialCategoriesController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Description\",\"column_field\":\"description\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":\"Not Mandatory\",\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(15, 'Tutorials', 'fa fa-youtube-play', 'tutorials', 'AdminTutorialsController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"title\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Description\",\"column_field\":\"description\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Video\",\"column_field\":\"video\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Image\",\"column_field\":\"image\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":\"Size:300X200\",\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Reference\",\"column_field\":\"reference\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tutorial Category\",\"column_field\":\"tutorial_category_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"tutorial_categories\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"title\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false},{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"title\",\"primary_key\":false,\"display\":true},{\"column\":\"description\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Blog Post\",\"column_field\":\"blog_post\",\"column_type\":\"wysiwyg\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"View Type\",\"column_field\":\"view_type\",\"column_type\":\"select_option\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[{\"key\":\"1\",\"label\":\"Video\"},{\"key\":\"2\",\"label\":\"Image\"}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(16, 'Quarantine', 'fa fa-bars', 'quarantine', 'AdminQuarantineController', '[{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":false,\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Total Quarantine\",\"column_field\":\"total_quarantine\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Finished Quarantine\",\"column_field\":\"finished_quarantine\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Total Isolation\",\"column_field\":\"total_isolation\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":\"Not mandatory\",\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Finished Isolation\",\"column_field\":\"finished_isolation\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":\"Not Mandatory\",\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `cb_roles`
--

CREATE TABLE `cb_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_roles`
--

INSERT INTO `cb_roles` (`id`, `name`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cb_role_privileges`
--

CREATE TABLE `cb_role_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `cb_menus_id` int(11) NOT NULL,
  `can_browse` tinyint(4) NOT NULL DEFAULT 1,
  `can_create` tinyint(4) NOT NULL DEFAULT 1,
  `can_read` tinyint(4) NOT NULL DEFAULT 1,
  `can_update` tinyint(4) NOT NULL DEFAULT 1,
  `can_delete` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_role_privileges`
--

INSERT INTO `cb_role_privileges` (`id`, `cb_roles_id`, `cb_menus_id`, `can_browse`, `can_create`, `can_read`, `can_update`, `can_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 1, 1, 1),
(3, 1, 3, 1, 1, 1, 1, 1),
(4, 1, 5, 1, 1, 1, 1, 1),
(5, 1, 7, 1, 1, 1, 1, 1),
(8, 1, 12, 1, 1, 1, 1, 1),
(9, 1, 13, 1, 1, 1, 1, 1),
(10, 1, 14, 1, 1, 1, 1, 1),
(11, 1, 15, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coronabot`
--

CREATE TABLE `coronabot` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `ques1` tinyint(4) DEFAULT NULL,
  `ques2` tinyint(4) DEFAULT NULL,
  `ques3` tinyint(4) DEFAULT NULL,
  `ques4` tinyint(4) DEFAULT NULL,
  `ques5` tinyint(4) DEFAULT NULL,
  `ques6` tinyint(4) DEFAULT NULL,
  `ques7` tinyint(4) DEFAULT NULL,
  `ques8` tinyint(4) DEFAULT NULL,
  `ques9` tinyint(4) DEFAULT NULL,
  `ques11` tinyint(4) DEFAULT NULL,
  `heart` tinyint(1) DEFAULT NULL,
  `diabetics` tinyint(1) DEFAULT NULL,
  `asthama` tinyint(1) DEFAULT NULL,
  `high_pressure` tinyint(1) DEFAULT NULL,
  `nothing` tinyint(1) DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL,
  `phone_number` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coronabot`
--

INSERT INTO `coronabot` (`created_at`, `updated_at`, `id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques11`, `heart`, `diabetics`, `asthama`, `high_pressure`, `nothing`, `result`, `phone_number`) VALUES
(NULL, NULL, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 4, '01749086857'),
(NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 3, ''),
(NULL, NULL, 10, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 3, ''),
(NULL, NULL, 11, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 4, ''),
(NULL, NULL, 14, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, ''),
(NULL, NULL, 15, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 4, ''),
(NULL, NULL, 16, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 17, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 2, '01521254189'),
(NULL, NULL, 18, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, ''),
(NULL, NULL, 19, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 20, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 21, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 3, ''),
(NULL, NULL, 22, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 23, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 24, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 3, ''),
(NULL, NULL, 25, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 26, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 4, ''),
(NULL, NULL, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 28, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 4, ''),
(NULL, NULL, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 30, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 31, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 33, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, ''),
(NULL, NULL, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, ''),
(NULL, NULL, 35, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, ''),
(NULL, NULL, 36, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 37, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 2, ''),
(NULL, NULL, 38, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 3, ''),
(NULL, NULL, 39, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 3, ''),
(NULL, NULL, 40, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 41, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 43, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, ''),
(NULL, NULL, 44, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 45, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 46, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 47, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 48, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 49, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 4, '01703740923'),
(NULL, NULL, 50, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 4, '01725588360'),
(NULL, NULL, 52, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 3, ''),
(NULL, NULL, 53, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, ''),
(NULL, NULL, 55, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 3, ''),
(NULL, NULL, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 4, '+8801775495019'),
(NULL, NULL, 57, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 4, ''),
(NULL, NULL, 58, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 59, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, ''),
(NULL, NULL, 60, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 61, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2, ''),
(NULL, NULL, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, '01726257333');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`created_at`, `updated_at`, `id`, `question`, `answer`, `type`) VALUES
('2020-03-20 15:26:30', '2020-03-20 15:26:30', 1, '১। করোনাভাইরাস (কোভিড-১৯) কি?', 'করোনাভাইরাস এমন একটি সংক্রামক ভাইরাস - যা এর আগে কখনো মানুষের মধ্যে ছড়ায়নি। <br>\r\n\r\nসারাবিশ্বে এরই মধ্যে ১৫০টির বেশি দেশে ছড়িয়েছে এই ভাইরাস, বিশ্বব্যাপী প্রাণহানি হয়েছে ৭ হাজারের বেশি মানুষের। <br>\r\n\r\nভাইরাসটির আরেক নাম ২০১৯ - এনসিওভি বা নভেল করোনাভাইরাস। এটি এক ধরণের করোনাভাইরাস। করোনাভাইরাসের অনেক রকম প্রজাতি আছে, কিন্তু এর মধ্যে মাত্র ছয়টি প্রজাতি মানুষের দেহে সংক্রমিত হতে পারে। তবে নতুন ধরণের ভাইরাসের কারণে সেই সংখ্যা এখন থেকে হবে সাতটি। <br>\r\n\r\n২০০২ সাল থেকে চীনে মহামারি আকারে ছড়িয়ে পড়া সার্স (পুরো নাম সিভিয়ার এ্যাকিউট রেসপিরেটরি সিনড্রোম) নামে যে ভাইরাসের সংক্রমণে পৃথিবীতে ৭৭৪জনের মৃত্যু হয়েছিল আর ৮০৯৮ জন সংক্রমিত হয়েছিল। সেটিও ছিল এক ধরণের করোনাভাইরাস। <br>\r\n\r\nনতুন এই রোগটিকে প্রথমদিকে নানা নামে ডাকা হচ্ছিল, যেমন: \'চায়না ভাইরাস\', \'করোনাভাইরাস\', \'২০১৯ এনকভ\', \'নতুন ভাইরাস\', \'রহস্য ভাইরাস\' ইত্যাদি। <br>\r\n\r\nএ বছরের ফেব্রুয়ারি মাসের দ্বিতীয় সপ্তাহে বিশ্ব স্বাস্থ্য সংস্থা রোগটির আনুষ্ঠানিক নাম দেয় কোভিড-১৯ যা \'করোনাভাইরাস ডিজিজ ২০১৯\'-এর সংক্ষিপ্ত রূপ।', 'FirstQuestion'),
('2020-03-20 15:29:48', '2020-03-20 15:29:48', 2, '২। কেন এই রোগটিকে করোনাভাইরাস বা COVID-19 বলা হয়?', '<strong>১.</strong>বাড়িতে অবস্থান করুন এবং কর্মস্থল, স্কুল-কলেজ এবং জনবহুল এলাকা থেকে দূরে থাকুন। যদি আপনাকে বাইরে যেতেই হয় তবে যেকোনো ধরনের পাবলিক যানবাহন, রাইড শেয়ারিং বা ট্যাক্সি ব্যবহার করা এড়িয়ে চলুন।\r\n                  <br><strong>২.</strong>সাবধানতার সাথে আপনার লক্ষণগুলো পর্যবেক্ষণ করুন। যদি আপনার লক্ষণগুলো আরও গুরুতর হয়, অবিলম্বে আপনার স্বাস্থ্যসেবা সরবরাহকারীকে ফোন করুন।\r\n                  <br><strong>৩.</strong>বিশ্রাম করুন এবং হাইড্রেটেড থাকুন।\r\n                  <br><strong>৪.</strong>যদি আপনার ডাক্তারের কাছে অ্যাপয়েন্টমেন্ট থাকে তবে যাওয়ার আগেই স্বাস্থ্যসেবা সরবরাহকারীকে ফোন করুন এবং তাদের বলুন যে আপনি COVID-19 এ আক্রান্ত বা আশংকা করছেন।\r\n                  <br><strong>৫.</strong>জরুরী পরিস্থিতিতে 16263, 333 এবং 999 এই নম্বর গুলোতে ফোন করুন এবং কর্মরতদের জানান যে আপনি COVID-19 এ আক্রান্ত বা আশংকা করছেন।\r\n                  <br><strong>৬.</strong>মুখ ঢেকে হাঁচি এবং কাশি  দিন।\r\n                  <br><strong>৭.</strong>প্রায়শই সাবান এবং পানি দিয়ে ২০ সেকেন্ডের মতো আপনার হাত ধুয়ে নিন বা অ্যালকোহল জাতীয় হ্যান্ড স্যানিটাইজার দিয়ে আপনার হাত পরিষ্কার করুন, যে স্যানিটাইজারে কমপক্ষে ৬০% অ্যালকোহল থাকে।\r\n                  <br><strong>৮.</strong>যতটা সম্ভব, একটি নির্দিষ্ট ঘরে থাকুন এবং আপনার বাড়ির অন্যান্য লোকদের থেকে দূরে থাকুন। এছাড়াও, যদি সম্ভব হয়ে থাকে তবে আপনার আলাদা বাথরুম ব্যবহার করা উচিত। আপনার যদি বাড়ির বাইরে এবং বাড়ির ভেতরের লোকদের আশেপাশে থাকার প্রয়োজন হয়ই, তবে ফেসমাস্ক পরুন।\r\n                  <br><strong>৯.</strong>আপনার পরিবারের অন্যান্য ব্যক্তির সাথে থালা-বাসন, তোয়ালে এবং বিছানাপত্রের মতো ব্যক্তিগত  জিনিসগুলোর ভাগাভাগি এড়িয়ে চলুন।\r\n                  <br><strong>১০.</strong>প্রায়শই স্পর্শ করা হয় এমন বস্তুগুলো - সার্ভিস কাউন্টার, টেবিলের উপরিভাগ, দরজার হাতল এগুলোকে পরিষ্কার রাখুন। লেবেল নির্দেশাবলী অনুযায়ী গৃহস্থালি পরিষ্কার করার স্প্রে বা ওয়াইপ ব্যবহার করুন।', 'SecondQuestion'),
('2020-03-20 15:32:48', '2020-03-20 15:32:48', 3, '৩। করোনাভাইরাসে আক্রান্ত হলে বা সম্ভবনা থাকলে ১০ টি করনীয়?', '<strong>১.</strong>বাড়িতে অবস্থান করুন এবং কর্মস্থল, স্কুল-কলেজ এবং জনবহুল এলাকা থেকে দূরে থাকুন। যদি আপনাকে বাইরে যেতেই হয় তবে যেকোনো ধরনের পাবলিক যানবাহন, রাইড শেয়ারিং বা ট্যাক্সি ব্যবহার করা এড়িয়ে চলুন।\r\n                  <br><strong>২.</strong>সাবধানতার সাথে আপনার লক্ষণগুলো পর্যবেক্ষণ করুন। যদি আপনার লক্ষণগুলো আরও গুরুতর হয়, অবিলম্বে আপনার স্বাস্থ্যসেবা সরবরাহকারীকে ফোন করুন।\r\n                  <br><strong>৩.</strong>বিশ্রাম করুন এবং হাইড্রেটেড থাকুন।\r\n                  <br><strong>৪.</strong>যদি আপনার ডাক্তারের কাছে অ্যাপয়েন্টমেন্ট থাকে তবে যাওয়ার আগেই স্বাস্থ্যসেবা সরবরাহকারীকে ফোন করুন এবং তাদের বলুন যে আপনি COVID-19 এ আক্রান্ত বা আশংকা করছেন।\r\n                  <br><strong>৫.</strong>জরুরী পরিস্থিতিতে 16263, 333 এবং 999 এই নম্বর গুলোতে ফোন করুন এবং কর্মরতদের জানান যে আপনি COVID-19 এ আক্রান্ত বা আশংকা করছেন।\r\n                  <br><strong>৬.</strong>মুখ ঢেকে হাঁচি এবং কাশি  দিন।\r\n                  <br><strong>৭.</strong>প্রায়শই সাবান এবং পানি দিয়ে ২০ সেকেন্ডের মতো আপনার হাত ধুয়ে নিন বা অ্যালকোহল জাতীয় হ্যান্ড স্যানিটাইজার দিয়ে আপনার হাত পরিষ্কার করুন, যে স্যানিটাইজারে কমপক্ষে ৬০% অ্যালকোহল থাকে।\r\n                  <br><strong>৮.</strong>যতটা সম্ভব, একটি নির্দিষ্ট ঘরে থাকুন এবং আপনার বাড়ির অন্যান্য লোকদের থেকে দূরে থাকুন। এছাড়াও, যদি সম্ভব হয়ে থাকে তবে আপনার আলাদা বাথরুম ব্যবহার করা উচিত। আপনার যদি বাড়ির বাইরে এবং বাড়ির ভেতরের লোকদের আশেপাশে থাকার প্রয়োজন হয়ই, তবে ফেসমাস্ক পরুন।\r\n                  <br><strong>৯.</strong>আপনার পরিবারের অন্যান্য ব্যক্তির সাথে থালা-বাসন, তোয়ালে এবং বিছানাপত্রের মতো ব্যক্তিগত  জিনিসগুলোর ভাগাভাগি এড়িয়ে চলুন।\r\n                  <br><strong>১০.</strong>প্রায়শই স্পর্শ করা হয় এমন বস্তুগুলো - সার্ভিস কাউন্টার, টেবিলের উপরিভাগ, দরজার হাতল এগুলোকে পরিষ্কার রাখুন। লেবেল নির্দেশাবলী অনুযায়ী গৃহস্থালি পরিষ্কার করার স্প্রে বা ওয়াইপ ব্যবহার করুন।', 'Three'),
('2020-03-20 15:33:54', '2020-03-20 15:33:54', 4, '৪। বাংলাদেশের জন্য করোনাভাইরাস বিষয়ক হটলাইন নাম্বারগুলো কি কি?', '<strong>-</strong>করোনা হটলাইন নম্বর! নিজের অথবা পরিবারের কারো করোনা ভাইরাসে আক্রান্ত হওয়ার লক্ষন দেখা দিলে\" ইনস্টিটিউট অব এপিডেমোলোজি ডিজিজ কন্ট্রোল এন্ড রিসার্চ\" আইইডিসিআরে যোগাযোগ করুন নিচের নম্বর গুলোর মাধ্যমে-\r\n                  <br><strong>֍ </strong>+880 1937000011\r\n                  <br><strong>֍ </strong>+880 1937110011\r\n                  <br><strong>֍ </strong>+880 1927711784\r\n                  <br><strong>֍ </strong>+880 1927711785\r\n\r\n                  <br><strong>֍ </strong>+880 1944333222\r\n                  <br><strong>֍ </strong>+880 1550064901-05\r\n                  <br><strong>֍ </strong>+880 1401184551\r\n                  <br><strong>֍ </strong>+880 1401184554\r\n                  <br><strong>֍ </strong>+880 1401184555\r\n                  <br><strong>֍ </strong>+880 1401184556\r\n                  <br><strong>֍ </strong>+880 1401184559\r\n                  <br><strong>֍ </strong>+880 1401184560\r\n                  <br><strong>֍ </strong>+880 1401184563\r\n                  <br><strong>֍ </strong>+880 1401184568\r\n                  <br><strong>֍ </strong>+880 1937000011\r\n                  <br><strong>֍ </strong>+880 1937110011\r\n                  <br><strong>֍ </strong>+880 1927711784\r\n                  <br><strong>֍ </strong>+880 1937000011\r\n                  <br><strong>֍ </strong>+880 1944333222\r\n                  <br><strong>֍ </strong>+880 1937110011\r\n                  <br><strong>֍ </strong>+880 1927711784\r\n                  <br><strong>֍ </strong>+880 1927711785\r\n                  <br><strong>֍ </strong>+880 1550064901\r\n                  <br><strong>֍ </strong>+880 1550064902\r\n                  <br><strong>֍ </strong>+880 1550064903\r\n                  <br><strong>֍ </strong>+880 1550064904\r\n                  <br><strong>֍ </strong>+880 1550064905\r\n                  <br/>\r\n                  <br/>', '4'),
('2020-03-20 15:34:52', '2020-03-20 15:34:52', 5, '৫। করোনাভাইরাস সংক্রমণের লক্ষ্মণ কী?', '<strong></strong>রেসপিরেটরি লক্ষণ ছাড়াও জ্বর, কাশি, শ্বাস প্রশ্বাসের সমস্যাই মূলত প্রধান লক্ষণ। <br>\r\n\r\nএটি ফুসফুসে আক্রমণ করে। <br>\r\n\r\nসাধারণত শুষ্ক কাশি ও জ্বরের মাধ্যমেই শুরু হয় উপসর্গ দেখা দেয়, পরে শ্বাস প্রশ্বাসে সমস্যা দেখা দেয়। <br>\r\n\r\nসাধারণত রোগের উপসর্গগুলো প্রকাশ পেতে গড়ে পাঁচদিন সময় নেয়। <br>\r\n\r\nবিশ্ব স্বাস্থ্য সংস্থা বলছে, ভাইরাসটির ইনকিউবেশন পিরিয়ড ১৪দিন পর্যন্ত স্থায়ী থাকে। তবে কিছু কিছু গবেষকের মতে এর স্থায়িত্ব ২৪দিন পর্যন্ত থাকতে পারে।<br>\r\n\r\nমানুষের মধ্যে যখন ভাইরাসের উপসর্গ দেখা দেবে তখন বেশি মানুষকে সংক্রমণের সম্ভাবনা থাকবে তাদের। তবে এমন ধারণাও করা হচ্ছে যে নিজেরা অসুস্থ না থাকার সময়ও সুস্থ মানুষের দেহে ভাইরাস সংক্রমিত করতে পারে মানুষ।\r\n\r\nশুরুর দিকের উপসর্গ সাধারণ সর্দিজ্বর এবং ফ্লু-এর সাথে সাদৃশ্যপূর্ণ হওয়ায় রোগ নির্ণয়ের ক্ষেত্রে দ্বিধাগ্রস্থ হওয়া স্বাভাবিক।\r\n\r\n                <br/>\r\n                <br/>', '5'),
('2020-03-20 15:35:19', '2020-03-20 15:35:19', 6, '৬। COVID-19 এ আক্রান্ত কেউ কি এ রোগ ছড়াতে পারে?', '<strong></strong>COVID-19 এ সংক্রমিত ভাইরাসটি এক ব্যক্তি থেকে অন্য ব্যক্তিতে ছড়িয়ে পড়ে। যদি কেউ COVID-19 এ সক্রিয়ভাবে অসুস্থ্য থাকেন তবে তিনি এই অসুস্থ্যতা অন্যদের মধ্যে ছড়িয়ে দিতে পারেন। একারনেই CDC (Centers for Disease Control and Prevention)পরামর্শ দেয় যে এই রোগীদের সুস্থ্য না হওয়া পর্যন্ত বাড়িতে বা হসপিটালে (তারা কতটা অসুস্থ্য তার উপর নির্ভর করে)  পৃথক (আইসোলেট) করে রাখার যাতে অন্যরা এই রোগে সংক্রমিত হতে না পারে।\r\n\r\n              <br/>\r\n              <br/>', '6'),
('2020-03-20 15:35:49', '2020-03-20 15:35:49', 7, '৭। কখন একজন রোগীকে আইসোলেশন থেকে মুক্তি দেয়া ঠিক?', '<strong></strong>কেউ একজন কতক্ষন সক্রিয়ভাবে অসুস্থ্য আছেন বা আইসোলেশন থেকে তাকে কখন ছেড়ে দেয়া হবে এটির নির্ধারণ  ডাক্তার, সংক্রমণ প্রতিরোধ ও নিয়ন্ত্রণ বিশেষজ্ঞ এবং জনস্বাস্থ্য কর্মকর্তাদের পরামর্শ অনুযায়ী হয়ে থাকে এবং প্রতিটি পরিস্থিতির সুনির্দিষ্ট বিবেচনা এই রোগে আক্রান্ত রোগীর রোগের তীব্রতা, অসুস্থ্যতার লক্ষণসমূহ এবং রোগীর ল্যাবরেটরির রিপোর্টের ফলাফলের উপর নির্ভর করে।\r\n\r\n            কখন একজন রোগীকে আইসোলেশন থেকে মুক্তি দেয়া ঠিক তার জন্য বর্তমানে বিভিন্ন কেসের ভিত্তিতে একটি CDC(Centers for Disease Control and Prevention) গাইডেন্স তৈরি করা হয় এবং এতে নিম্মলিখিত সকল বিষয়গুলো তুলে ধরা হয়-\r\n            <br><strong>֍ </strong>রোগী জ্বর কমানোর ওষুধ ছাড়াই জ্বর থেকে মুক্ত হলে।\r\n          <br><strong>֍ </strong>রোগীর কাশিসহ আর অন্য লক্ষণগুলো না থাকলে।\r\n\r\n          <br><strong>֍ </strong>২৪ ঘন্টায় কমপক্ষে দুবার পৃথকভাবে সংগ্রহীত শ্বাস-প্রশ্বাসের রিপোর্টের ফলাফল নেতিবাচক হলে।\r\n          <br>আইসোলেশন থেকে মুক্তি পাওয়া এমন কাউকে অন্যজনের জন্যে সংক্রমনের ঝুঁকি বলে মনে করা উচিৎ নয়।\r\n\r\n          <br/>\r\n            <br/>', '7'),
('2020-03-20 15:36:20', '2020-03-20 15:36:20', 8, '৮।  উষ্ণ আবহাওয়া COVID-19 এর প্রাদুর্ভাব বন্ধ করতে সহায়ক কি?', '<strong></strong>আবহাওয়া এবং তাপমাত্রা COVID-19 এর বিস্তারকে প্রভাবিত করে কিনা তা এখনও জানা যায়নি। কিছু অন্যান্য ভাইরাস যেমন সাধারণ সর্দি এবং ফ্লু জাতীয় ভাইরাস যেগুলো শীতকালে ছড়ায় কিন্তু এর অর্থ এই নয় যে এগুলো দ্বারা অন্যান্য মাসগুলিতে অসুস্থ্য হওয়া অসম্ভব।\r\n          কিন্তু সম্প্রতি ওয়ার্ল্ড হেলথ অর্গানাইজেশন (ডাব্লুএইচও) ফিলিপাইন নতুন করোনভাইরাস 2019-nCoV সম্পর্কে কিছু গুজব এবং মিথের জবাব দিয়েছে।\r\n          নতুন করোনাভাইরাসটি গরম এবং আর্দ্র আবহাওয়ায় বেঁচে থাকতে পারে কিনা এ বিষয়ে জানতে চাইলে ডাব্লুএইচও বলেছিল যে এটি \"গরম এবং আর্দ্র জলবায়ু যেমন শীত এবং শুষ্ক উভয় দেশেই ছড়িয়ে যেতে পারে\"।\r\n\r\n        <br/>\r\n          <br/>', '8'),
('2020-03-20 15:36:53', '2020-03-20 15:36:53', 9, '৯। কোথা থেকে এলো এই ভাইরাস?', '<strong></strong>বিশ্ব স্বাস্থ্য সংস্থার ধারণা ভাইরাসটি উৎস কোনো প্রাণী। <br>\r\n\r\nযতটুকু জানা যায়, মানুষের আক্রান্ত হবার ঘটনাটি ঘটেছে চীনের উহান শহরে সামুদ্রিক মাছ পাইকারি বিক্রি হয় এমন একটি বাজারে। <br>\r\n\r\nকরোনাভাইরাস ভাইরাস পরিবারে আছে তবে এ ধরণের ছয়টি ভাইরাস আগে পরিচিত থাকলেও এখন যেটিতে সংক্রমিত হচ্ছে মানুষ সেটি নতুন। <br>\r\n\r\nবেশিরভাগ করোনাভাইরাসই বিপজ্জনক নয় কিন্তু আগে থেকে অপরিচিত এই নতুন ভাইরাসটি ভাইরাল নিউমোনিয়াকে মহামারীর দিকে ঠেলে দিতে পারে বলে আশংকা করা হচ্ছে।\r\n        <br/>', '9'),
('2020-03-20 15:37:36', '2020-03-20 15:37:36', 10, '১০। COVID-19 এ আক্রান্ত হওয়ার ঝুঁকি বেশি কার?', '<strong></strong>চীন (যেখানে COVID-19 প্রথম শুরু হয়েছিল) থেকে প্রাথমিক তথ্য অনুযায়ী- বয়স্ক, প্রাপ্তবয়স্ক, হৃদরোগে আক্রান্ত, ডায়াবেটিস এবং ফুসফুসের মারাত্মক রোগের মতো দীর্ঘস্থায়ী চিকিৎসাজনিত রোগীদের আক্রান্ত হওয়ার ঝুঁকি বেশি।\r\n        <br/><br/>', '10'),
('2020-03-20 15:38:05', '2020-03-20 15:38:05', 11, '১১। COVID-19 এ আক্রান্ত হওয়ার ঝুঁকিতে থাকা লোকেদের কী করা উচিত?', '<strong></strong>যদি আপনি COVID-19 এ আক্রান্ত হওয়ার ঝুঁকিতে থাকেন তবে আপনার উচিত: নিজের এবং অন্যদের মাঝে দূরত্ব বজায় রাখতে সাবধানতা অবলম্বন করা; যখন আপনি জনবহুল এলাকায় যাবেন তখন অসুস্থ ব্যক্তিদের থেকে দূরে থাকা; ঘনিষ্ঠ যোগাযোগ কম করা; আপনার হাত প্রায়শই ধোয়া; ভিড় এবং অপ্রয়োজনীয় ভ্রমণ এড়িয়ে চলা। আপনার এলাকায় এর প্রাদুর্ভাব দেখা দিলে যতটা সম্ভব বাড়িতে থাকুন। লক্ষণ ও জরুরী বিষয় গুলোর প্রতি লক্ষ্য রাখুন। যদি আপনি অসুস্থ হয়ে থাকেন তবে বাড়িতে থাকুন এবং আপনার ডাক্তারকে কল করুন।\r\n\r\n        <br/><br/>', '11'),
('2020-03-20 15:38:35', '2020-03-20 15:38:35', 12, '১২। চীন থেকে প্যাকেজ বা পণ্য শিপিংয়ের কারণে কি আমি COVID-19 এর ঝুঁকিতে আছি?', '<strong></strong>নতুন আবির্ভূত COVID-19 এবং এটি কীভাবে ছড়িয়ে পড়ে সে সম্পর্কে এখনও অনেক কিছুই অজানা। এর আগেও আরো দুটি করোনা ভাইরাস মানুষদের মধ্যে মারাত্মকভাবে ছড়িয়ে পড়েছিল (এমইআরএস- কোভি এবং সারস- কোভি)। COVID-19-এর কারণ হিসাবে তৈরি ভাইরাসটি বংশগতভাবে এমআরএস-কোভির তুলনায় সারস-কোভিত সাথে সম্পর্কিত, তবে উভয়ই বিটাকোরোনভাইরাস যার উৎস বাঁদুর। যদিও আমরা নিশ্চিতভাবে জানি না যে এই ভাইরাসটি সারস-কোভি এবং এমআরএস-কোভির মতো আচরণ করবে কিনা তবুও আমরা আমাদের পূর্ববর্তী দুটি করোনভাইরাস থেকে প্রাপ্ত তথ্য আমাদের পথ দেখাতে ব্যবহার করতে পারি। সাধারণত এইসব করোনা ভাইরাসের বেঁচে থাকার ক্ষমতা কম থাকায় এদের খুব সম্ভবত পৃষ্ঠ এবং কম তাপমাত্রায় কয়েক সপ্তাহের জন্যে সরবরাহ করা পণ্য বা প্যাকিজিং থেকে ছড়িয়ে পড়ার ঝুঁকি কম। করোনাভাইরাসগুলো সাধারণত শ্বাস-প্রশ্বাস দ্বারা প্রায়শই ছড়িয়ে পড়ে বলে মনে করা হয়। বর্তমানে আমদানিকৃত পণ্য COVID-19 সংক্রমণকে সমর্থন করার কোনও প্রমাণ নেই।\r\n        <br/><br/>', '12'),
('2020-03-20 15:39:02', '2020-03-20 15:39:02', 13, '১৩।  COVID-19 টেস্টের ফলাফল নেগেটিভ আসা ব্যক্তির পরের টেস্টের ফলাফল কি পজিটিভ আসতে পারে?', '<strong></strong>CDC (Centers for Disease Control and Prevention) ডেভেলপমেন্ট ডায়াগনস্টিক টেস্ট অনুযায়ী একটি নেগেটিভ ফলাফলের অর্থ COVID-19  ভাইরাসটি সেই ব্যক্তির টেস্টে পাওয়া যায়নি। সংক্রমণের প্রাথমিক পর্যায়ে ভাইরাস সনাক্ত করা সম্ভব নাও হতে পারে। COVID-19 এর জন্য সংগৃহীত টেস্টের ফলাফল নেগেটিভ হলে এর অর্থ হল COVID-19 ভাইরাস তাদের বর্তমান অসুস্থতার কারণ নয়।\r\n        <br/>', '13'),
('2020-03-20 15:39:28', '2020-03-20 15:39:28', 14, '১৪। CDC (Centers for Disease Control and Prevention) কি COVID-19 রোধ করতে ফেসমাস্ক ব্যবহারের পরামর্শ দেয়?', '<strong></strong>ফেসমাস্ক ব্যবহার করলেই  COVID-19 সহ যেকোনো শ্বাস-প্রশ্বাস জনিত রোগ থেকে রক্ষা পাওয়া যাবে এটা CDC সুপারিশ করে না। যদি কোনও স্বাথ্যসেবা বিষয়ক কর্মকর্তা এটির পরামর্শ দেয় তবেই আপনার কেবল মাস্ক ব্যবহার করা উচিত। ফেসমাস্ক শুধু কেবল তাদেরই ব্যবহার করা উচিত যারা COVID-19 এ আক্রান্ত বা এর লক্ষণ প্রকাশ পেয়েছে। এটি অন্যদের সংক্রামিত হওয়ার ঝুঁকি থেকে রক্ষা করে। স্বাস্থ্যকর্মী এবং অন্যান্য লোকেরা যারা COVID-19 সংক্রামিত ঘনিষ্ঠ কোনো (বাড়িতে বা কোনও স্বাস্থ্যসেবা কেন্দ্রে) ব্যক্তির যত্ন নিচ্ছেন তাদের জন্যও ফেসমাস্ক ব্যবহার অত্যন্ত গুরুত্বপূর্ণ।\r\n        <br/>', '14'),
('2020-03-20 15:39:55', '2020-03-20 15:39:55', 15, '১৫।  COVID-19 এর কারণে পোষা প্রাণী বা অন্যান্য প্রাণী সম্পর্কে আমার কি উদ্বিগ্ন বা বিচলিত হওয়া উচিত?', '<strong></strong>যদিও এই ভাইরাসটি কোনও প্রাণীর উৎস থেকে উদ্ভূত হয়েছে বলে মনে করা হচ্ছে, তবে এখন এটি চীনে ব্যক্তি থেকে ব্যক্তিতে ছড়িয়ে পড়েছে। বাংলাদেশে  পোষা প্রাণী সহ যে কোনও প্রাণী এই নতুন করোনভাইরাস সংক্রমণের কারণ হতে পারে বলে ভাবার কোনও কারণ নেই। আজ অবধি, CDC পোষা প্রাণী বা অন্যান্য প্রাণী COVID-19 দ্বারা অসুস্থ হওয়ার কোনও খবর পায়নি। এই মুহুর্তে, পোষা প্রাণী সহ সহচর প্রাণী COVID-19 ছড়াতে পারে এমন কোনও প্রমাণ নেই। তবে, যেহেতু প্রাণীগুলি মানুষের মধ্যে অন্যান্য রোগ ছড়াতে পারে, তাই প্রাণীর আশপাশে থাকার পরে আপনার হাত ধুয়ে ফেলা সর্বদা ভাল অভ্যেস।\r\n\r\n\r\n        <br/>', '15'),
('2020-03-20 15:40:20', '2020-03-20 15:40:20', 16, '১৬।  আমি COVID-19-এ আক্রান্ত হলে আমার কি পোষা প্রাণী বা অন্যান্য প্রাণীর সাথে যোগাযোগ এড়ানো উচিত?', '<strong></strong>আপনি COVID-19-এ অসুস্থ থাকাকালীন আপনার পোষা প্রাণী এবং অন্যান্য প্রাণীদের সাথে যোগাযোগ সীমাবদ্ধ রাখা উচিত, ঠিক যেমনটি  আপনি আপনার আশেপাশের অন্য লোকদের ক্ষেত্রে করেন। যদিও পোষা প্রাণী বা অন্যান্য প্রাণী COVID-19-এ আক্রান্ত হওয়ার খবর পাওয়া যায় নি, তবুও এই পরামর্শ দেওয়া হয় যে এই ভাইরাস সম্পর্কে আরও তথ্য না পাওয়া পর্যন্ত COVID-19-এ আক্রান্ত ব্যক্তিরা প্রাণীদের সাথে যোগাযোগ সীমাবদ্ধ রাখবেন। আপনি যখন অসুস্থ থাকবেন তখন আপনার পরিবারের অন্য কোনও সদস্যকে আপনার পশুদের যত্ন নিতে দিন। আপনি যদি COVID-19 এ আক্রান্ত হয়ে থাকেন তবে আপনার পোষা প্রাণীর যত্ন নেয়া থেকে শুরু করে পোষা প্রাণীর চুম্বন বা স্নাগেলিং এবং খাবার ভাগাভাগি করা ব্যাপার গুলো এড়িয়ে চলুন। অসুস্থ অবস্থায় আপনি যদি আপনার পোষা প্রাণীর যত্ন নিতে বা প্রাণীদের আশেপাশে থাকতে চান তবে পোষা প্রাণীর সংস্পর্শে আসার  আগে এবং পরে আপনার হাত ধুয়ে ফেলুন এবং ফেসমাস্ক পরুন।', '16'),
('2020-03-20 15:40:46', '2020-03-21 03:02:40', 17, '১৭। হোম কোয়ারেন্টাইন বলতে কি বুঝায়?', '<strong></strong>বাড়িতে কোয়ারেন্টাইনে থাকার অর্থ হলো ১৪ দিন সকল মেলামেশা এড়িয়ে একটি নির্দিষ্ট ঘরে অবস্থান করা। এইসময় কোনো অবস্থাতেই কর্মস্থল, স্কুল বা জনসমাগমে যাওয়া যাবে না। এমনকি সামাজিক যেকোনো অনুষ্ঠানে অংশ নেয়া থেকেও বিরত থাকতে হবে। গণপরিবহণ বা ভাড়ায় চালিত যানবাহন যেমন ট্যাক্সি, অটোরিকশা ব্যবহার করা যাবে না। বাড়িতে অবস্থানকালে পরিবারের অন্যদের সংস্পর্শও যথাসম্ভব এড়িয়ে চলতে হবে। অবশ্যই আলাদা ঘরে থাকতে হবে। একই ঘরে অন্য কেউ থাকলে, মাস্ক ব্যাবহার ও তিন ফুট দূরত্ব নিশ্চিত করতে হবে। এসময় বাজার করা, কেনাকাটা ঔষুধ কেনা প্রয়োজন হলে নিজে না গিয়ে অন্য কারও সহায়তা নিতে হবে। ব্যবহার করা কাপড়, তোয়ালে, গামছা, খাবারের পাত্র ও অন্যান্য ব্যবহৃত জিনিসগুলো দিয়েও এই ভাইরাস ছড়াতে পারে। তাই কোয়ারিন্টাইনে থাকা মানুষকে যতকিছু থেকে সম্ভব আলাদা থাকতে হবে। কোয়ারিন্টাইনে থাকা ব্যক্তি ও তার সংস্পর্শে আসা সকলকে হাত ধোয়া, পরিচ্ছন্ন ও হাচি-কাশি সংক্রান্ত স্বাস্থ্যবিধি মেনে চলতে হবে।\r\n        <br/>', '17');

-- --------------------------------------------------------

--
-- Table structure for table `headerposts`
--

CREATE TABLE `headerposts` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_152421_modify_users', 1),
(4, '2016_08_07_152421_table_menus', 1),
(5, '2016_08_07_152421_table_modules', 1),
(6, '2016_08_07_152421_table_role_privileges', 1),
(7, '2016_08_07_152421_table_roles', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_03_14_211952_about_us', 3),
(12, '2020_03_15_074252_categories', 5),
(13, '2020_03_15_075224_category_images', 6),
(15, '2020_03_15_094205_symptoms', 8),
(16, '2020_03_15_101113_headerPosts', 9),
(17, '2020_03_15_171012_FAQCategories', 10),
(19, '2020_03_15_172615_FAQ_answers', 11),
(20, '2020_03_19_230515_coronabot', 12),
(21, '2020_03_20_084017_photo_categories', 13),
(22, '2020_03_20_084305_photo_gallery', 14),
(23, '2020_03_20_164136_FAQ', 15),
(27, '2020_03_25_132859_tutorial_categories', 16),
(28, '2020_03_25_133415_tutorials', 17),
(29, '2020_03_26_090426_quarantine', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_categories`
--

CREATE TABLE `photo_categories` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_categories`
--

INSERT INTO `photo_categories` (`created_at`, `updated_at`, `id`, `type`, `title`) VALUES
('2020-03-21 14:49:09', '2020-03-21 18:09:17', 3, '1', 'রাষ্ট্রীয় ঘোষণা'),
('2020-03-21 18:08:52', '2020-03-21 18:08:52', 4, '2', 'সার্বজনীন তথ্য'),
('2020-03-21 18:48:11', '2020-03-21 18:48:11', 5, '3', 'ধর্মীয় বিধি');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_category_id` int(11) DEFAULT NULL,
  `pc_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`created_at`, `updated_at`, `id`, `photo_category_id`, `pc_image`, `tab_image`, `mobile_image`) VALUES
('2020-03-21 18:10:09', '2020-03-21 18:10:09', 26, 3, 'storage/files/2020/03/21/8cc3309fdc18bfca0fb868020c0407b9.jpg', NULL, NULL),
('2020-03-21 18:10:20', '2020-03-21 18:10:20', 27, 3, 'storage/files/2020/03/21/24adc521f4b92030f6dfe2b04637b2cc.jpg', NULL, NULL),
('2020-03-21 18:10:28', '2020-03-21 18:10:28', 28, 4, 'storage/files/2020/03/21/aadb6c0d4a52f78c544811f81f07993b.jpg', NULL, NULL),
('2020-03-21 18:10:36', '2020-03-21 18:10:36', 29, 4, 'storage/files/2020/03/21/c0167e423563da6893e4a7abceb77fb2.jpg', NULL, NULL),
('2020-03-21 18:10:45', '2020-03-21 18:10:45', 30, 4, 'storage/files/2020/03/21/c895bc12fa9113ede8d09b63a154dc09.jpg', NULL, NULL),
('2020-03-21 18:10:51', '2020-03-21 18:10:51', 31, 4, 'storage/files/2020/03/21/e01a53bd61219987dca8bc687738ff22.jpg', NULL, NULL),
('2020-03-21 18:10:58', '2020-03-21 18:10:58', 32, 4, 'storage/files/2020/03/21/83c4c316186cb2c28d43e982b6f11b91.jpg', NULL, NULL),
('2020-03-21 18:11:04', '2020-03-21 18:11:04', 33, 4, 'storage/files/2020/03/21/3152cad37f4d93a62c6eb063301b3bbe.jpg', NULL, NULL),
('2020-03-21 18:56:37', '2020-03-21 18:56:37', 34, 5, 'storage/files/2020/03/21/81921cc50d0f974430a633e51a066fca.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_quarantine` int(11) DEFAULT NULL,
  `finished_quarantine` int(11) DEFAULT NULL,
  `total_isolation` int(11) DEFAULT NULL,
  `finished_isolation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quarantine`
--

INSERT INTO `quarantine` (`created_at`, `updated_at`, `id`, `total_quarantine`, `finished_quarantine`, `total_isolation`, `finished_isolation`) VALUES
('2020-03-26 03:09:57', '2020-03-26 03:09:57', 1, 43262, 12839, 314, 267);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tutorial_category_id` int(11) DEFAULT NULL,
  `blog_post` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorial_categories`
--

CREATE TABLE `tutorial_categories` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`, `cb_roles_id`, `ip_address`, `user_agent`, `login_at`) VALUES
(1, 'Sanzid Kawsar', 'dev@coronabd.xyz', NULL, '$2y$10$k9E614qPS2BBzcxU5655VeKtqj4fJuUGZ1d4IQB37VF4GPlVGs0he', NULL, NULL, NULL, 'storage/files/2020/03/22/1c475d84b89f5a6cfda75179e2d71e15.jpg', 1, '103.25.250.250', 'Mozilla/5.0 (Linux; Android 9; ONEPLUS A3010) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Mobile Safari/537.36', '2020-03-23 11:20:33'),
(2, 'Bappi Saha', 'bappi35-2097@diu.edu.bd', NULL, '$2y$10$FKojamdVKcSLnERDtLXvJOQwqJLu6OrUjHKN77Whqpo0lHMHrsNHO', NULL, NULL, NULL, 'storage/files/2020/03/22/6960fe36fcec508b9730ae38803c3872.jpg', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', '2020-03-26 03:06:26'),
(3, 'Hadaitul Islam Toha', 'hitoha@gmail.com', NULL, '$2y$10$njy/TodEmHS0/4ybkd7EuuCyuzY27lAJudSk1d5wmdrEDlQVBtxqG', NULL, NULL, NULL, NULL, 1, '103.55.145.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '2020-03-23 13:09:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_menus`
--
ALTER TABLE `cb_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_modules`
--
ALTER TABLE `cb_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_roles`
--
ALTER TABLE `cb_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coronabot`
--
ALTER TABLE `coronabot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headerposts`
--
ALTER TABLE `headerposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photo_categories`
--
ALTER TABLE `photo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial_categories`
--
ALTER TABLE `tutorial_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cb_menus`
--
ALTER TABLE `cb_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cb_modules`
--
ALTER TABLE `cb_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cb_roles`
--
ALTER TABLE `cb_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `coronabot`
--
ALTER TABLE `coronabot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `headerposts`
--
ALTER TABLE `headerposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `photo_categories`
--
ALTER TABLE `photo_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quarantine`
--
ALTER TABLE `quarantine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tutorial_categories`
--
ALTER TABLE `tutorial_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
