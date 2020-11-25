-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 03:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom2001`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `ban_id` bigint(20) UNSIGNED NOT NULL,
  `ban_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_btn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ban_id`, `ban_title`, `ban_subtitle`, `ban_btn`, `ban_url`, `ban_image`, `ban_slug`, `ban_status`, `created_at`, `updated_at`) VALUES
(1, 'New Collection 2020', 'Web design and development course media and digital marketing.', 'View More', '#', 'banner_1_1598627584.jpg', 'B205f491f006cfaf', 1, '2020-08-28 15:13:04', '2020-08-28 15:13:04'),
(2, 'Fashion Able Design', 'Understanding understanding digital marketing.', 'Click More', '#', 'banner_2_1598627629.jpg', 'B205f491f2d3f975', 1, '2020-08-28 15:13:49', '2020-08-28 15:13:49'),
(3, 'The information', 'This is the best website', 'click me', 'https://www.youtube.com/watch?v=BgdXF127aNM', 'banner_3_1601976028.png', 'B205f7c36dca34e4', 1, '2020-10-06 09:20:28', '2020-10-06 09:20:31'),
(4, 'The informationdsd', 'This is the best websitedsd', 'click me', 'https://www.youtube.com/watch?v=xsKTO-7mhik', 'banner_4_1601976080.jpg', 'B205f7c371070810', 1, '2020-10-06 09:21:20', '2020-10-06 09:21:23'),
(5, 'Test Banner', 'This is the best website', 'click me', 'https://www.youtube.com/watch?v=QCk3hWaBhbg', 'banner_5_1601981140.jpg', 'B205f7c4ad4a4948', 1, '2020-10-06 10:45:40', '2020-10-06 10:45:44'),
(6, 'The information dffdsf', 'This is the best website', 'click me', 'https://learnhunter.live/', 'banner_6_1601981200.jpg', 'B205f7c4b105c08b', 1, '2020-10-06 10:46:40', '2020-10-06 10:46:41'),
(7, 'The information sdffdgf', 'This is the best website', 'click me', 'https://www.youtube.com/watch?v=xsKTO-7mhik', NULL, 'B205f7c4b22b030d', 1, '2020-10-06 10:46:58', NULL),
(8, 'The information ttt', 'This is the best website rf', 'click me', 'https://www.youtube.com/watch?v=BgdXF127aNM', NULL, 'B205f7c4cce5a66e', 1, '2020-10-06 10:54:06', NULL),
(9, 'The informationdfdf', 'fsdfsdf', 'dsfsdf', 'fsdfsd', NULL, 'B205f7c4e4f9d090', 1, '2020-10-06 11:00:31', NULL),
(10, 'The information fgdf', 'This is the best websitegdfg', 'click me', 'https://www.youtube.com/watch?v=xsKTO-7mhik', 'banner_10_1601994684.jpg', 'B205f7c7fbc689b8', 1, '2020-10-06 14:31:24', '2020-10-06 14:31:25'),
(11, 'The information fdgdfg', 'This is the best website dgdfg', 'click me', 'https://www.youtube.com/watch?v=QCk3hWaBhbg', 'banner_11_1601994731.jpg', 'B205f7c7feb9a54f', 1, '2020-10-06 14:32:11', '2020-10-06 14:32:11'),
(12, 'The informationfdfs', 'This is the best websitefsdf', 'click me', 'https://www.youtube.com/watch?v=BgdXF127aNM', 'banner_12_1601995355.jpg', 'B205f7c825b44e0c', 1, '2020-10-06 14:42:35', '2020-10-06 14:42:35'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-06 17:14:57', '2020-10-06 17:14:57'),
(14, 'The informationdsfsdf', 'fsdf', 'click me', 'https://www.youtube.com/watch?v=xsKTO-7mhik', 'banner_14_1602004497.jpg', 'B205f7ca61141e80', 1, '2020-10-06 17:14:57', '2020-10-06 17:14:57'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-06 17:16:26', '2020-10-06 17:16:26'),
(16, NULL, NULL, NULL, 'fsdgsdgsdg', 'uploads/banner/1679823729165098.jpg', NULL, 1, '2020-10-06 17:19:06', '2020-10-06 17:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint(20) UNSIGNED NOT NULL,
  `basic_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_flogo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_title`, `basic_subtitle`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'Flipmart Ecommerce', 'Bangladesh Best eCommerce Website', 'logo_1598624295.png', 'favicon_1594566014.png', 'flogo_1594566177.png', 1, '2020-07-12 08:31:18', '2020-10-16 14:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ci_phone1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone4` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email3` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email4` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `ci_phone1`, `ci_phone2`, `ci_phone3`, `ci_phone4`, `ci_email1`, `ci_email2`, `ci_email3`, `ci_email4`, `ci_add1`, `ci_add2`, `ci_add3`, `ci_add4`, `ci_status`, `created_at`, `updated_at`) VALUES
(1, '01710726035', NULL, NULL, NULL, 'info@creativesystemltd.com', 'info@digital.com', NULL, NULL, 'House: A-15, Road# 11, Dhanmondi, Dhaka, Bangladesh.', NULL, NULL, NULL, '1', '2020-08-21 14:21:29', '2020-08-28 14:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `con_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `con_name`, `con_email`, `con_phone`, `con_subject`, `con_message`, `con_slug`, `con_status`, `created_at`, `updated_at`) VALUES
(1, 'Rahim Khan', 'rahim@gmail.com', '01998212121', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'CON9887871', 1, '2020-08-21 13:58:45', NULL),
(2, 'Mr. Monir Hossen', 'monir@yahoo.com', '01788232321', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'CON112W22', 1, '2020-08-21 14:59:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'farukhaider', '29', '1', NULL, NULL);

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
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `mcate_id` bigint(20) UNSIGNED NOT NULL,
  `mcate_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcate_icon` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcate_slug` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcate_top_menu` int(11) NOT NULL DEFAULT 0,
  `mcate_side_menu` int(11) NOT NULL DEFAULT 0,
  `mcate_position` int(11) DEFAULT NULL,
  `mcate_creator` int(11) NOT NULL,
  `mcate_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`mcate_id`, `mcate_name`, `mcate_icon`, `mcate_slug`, `mcate_top_menu`, `mcate_side_menu`, `mcate_position`, `mcate_creator`, `mcate_status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'fa-user', 'men', 1, 1, 1, 1, 1, '2020-08-30 14:35:50', NULL),
(2, 'Women', 'fa-female', 'women', 1, 1, 2, 1, 1, '2020-08-30 14:39:50', NULL),
(3, 'Kids & Baby', 'fa-gift', 'kids-baby', 0, 1, 3, 1, 1, '2020-08-30 14:40:49', NULL),
(4, 'Home & Living', 'fa-home', 'home-living', 1, 1, 7, 1, 1, '2020-08-30 14:47:49', NULL),
(5, 'Electronics', 'fa-lightbulb-o', 'electronics', 0, 1, 4, 1, 1, '2020-08-30 14:45:56', NULL),
(6, 'Gadgets', 'fa-gamepad', 'gadgets', 1, 0, 6, 1, 1, '2020-08-30 15:38:56', NULL),
(7, 'Food & Grocery', 'fa-cutlery', 'food-grocery', 0, 1, 5, 1, 1, '2020-08-30 15:45:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_19_152343_create_banners_table', 2),
(5, '2020_07_03_145521_create_user_roles_table', 3),
(6, '2020_07_12_202801_create_basics_table', 4),
(7, '2020_07_12_211909_create_social_media_table', 5),
(8, '2020_08_21_201439_create_contact_information_table', 6),
(9, '2020_08_21_204015_create_contact_us_table', 7),
(10, '2020_08_30_200958_create_main_categories_table', 8),
(11, '2020_09_07_200630_create_product_categories_table', 9),
(12, '2020_10_03_220218_create_products_table', 10),
(13, '2020_10_30_220213_create_coupons_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_cate_id` int(11) NOT NULL,
  `product_cat_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `product_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `main_cate_id`, `product_cat_id`, `product_name`, `product_code`, `product_slug`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `product_stock`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Computer Desk', 'H4Js5', '1', '40', 'dasdasdad', 'dasd,ad,addad', 'dasd,dasda,dad', '3096', '810', 'https://www.konga.com/product/computer-desk-with-single-drawer-key-board-casing-cpu-and-ups-3984944', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'uploads/product/1679822743087757.jpg', 'uploads/product/1679822744145526.jpg', 'uploads/product/1679822744195332.jpg', 1, 'Available', '2020-10-06 17:03:29', '2020-10-06 17:03:29'),
(2, 1, 1, 'Computer Desk', 'Etaaf', 'computer-desk', '40', 'hjgjgfjfggfdf  kjkhghg\r\ngghfhg', 'jhgjhg,jkgjhgjh,jhgjh', 'hhfhgfg,jgjhgjh,khkjhkj', '240', '', 'https://www.konga.com/product/computer-desk-with-single-drawer-key-board-casing-cpu-and-ups-3984944', 1, 1, 1, NULL, 1, NULL, NULL, 'uploads/product/1680175040423099.jpg', 'uploads/product/1680175040685138.jpg', 'uploads/product/1680175040946236.jpg', 1, 'Available', '2020-10-10 14:23:03', '2020-10-10 14:23:03'),
(208, 6, 5, 'Cassie Wolff', 'B078GNCWR9', 'cassie-wolff', '25', 'Sint rerum nostrum porro consequatur totam pariatur. Expedita asperiores voluptatibus veniam doloribus. At numquam incidunt enim.', 'aqua', 'ms4t9SL', '5744', '4283', 'https://hansen.com/repellendus-hic-sed-et-voluptates-consequatur-non.html', 1, 1, 1, 1, 0, 1, 0, 'uploads/product/1.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:40', '2020-10-11 14:24:40'),
(209, 4, 7, 'Wilfredo Krajcik', 'B078MPY2JP', 'wilfredo-krajcik', '40', 'Ducimus quaerat officiis unde necessitatibus magnam dolorum. Sed ea qui qui qui. Quis non odit repudiandae nihil est nesciunt libero vel. Vitae autem id quisquam placeat sunt ipsam. Rem ut placeat numquam voluptas qui.', 'gray', 'xqlGASL', '1731', '994', 'http://treutel.info/dolore-voluptatibus-a-qui-dolores-quisquam-corporis', 0, 1, 0, 0, 0, 0, 1, 'uploads/product/2.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:40', '2020-10-11 14:24:40'),
(210, 3, 5, 'Reid Erdman', 'B078N35NNN', 'reid-erdman', '41', 'Et ea perspiciatis voluptas non illum ut quos. Incidunt facilis nesciunt id et. Sequi iusto quae dolorum magni illo. Accusantium maiores ullam non quibusdam.', 'olive', '6bYP8SL', '6250', '1397', 'http://www.flatley.org/', 1, 1, 1, 0, 0, 0, 1, 'uploads/product/3.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:40', '2020-10-11 14:24:40'),
(211, 3, 5, 'Dr. Raquel Bogan', 'B078SQK9XK', 'dr-raquel-bogan', '31', 'Quibusdam nam officia sed quos enim similique voluptas. Quaerat iste non est est explicabo. Consequatur error esse cum dolorem illum ipsa voluptatibus voluptas.', 'gray', 'lfyKrSL', '2042', '924', 'http://kuhic.info/delectus-sed-assumenda-rerum-dolor-delectus', 0, 0, 1, 1, 1, 0, 0, 'uploads/product/4.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(212, 1, 7, 'Barbara Rau', 'B078XRF6GV', 'barbara-rau', '29', 'Sint similique mollitia omnis quia autem placeat asperiores saepe. Id aliquid voluptatem dolorem optio est tempora. Numquam voluptatem et saepe reprehenderit numquam ad vel porro.', 'fuchsia', 'JKX9oSL', '9846', '4277', 'http://www.kemmer.org/est-non-voluptates-magni-eligendi-cupiditate-perferendis', 1, 0, 0, 1, 1, 0, 1, 'uploads/product/5.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(213, 7, 3, 'Cecilia Smith', 'B078YXYSJQ', 'cecilia-smith', '37', 'Illo officiis ad voluptatem dolorem eos. Nesciunt fugiat voluptatem eum illum possimus accusamus. Possimus libero qui ut consectetur et earum non.', 'maroon', 'bKBLQSL', '8403', '1254', 'https://howell.com/praesentium-ex-natus-laudantium-earum.html', 0, 1, 0, 0, 0, 1, 0, 'uploads/product/6.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(214, 2, 6, 'Mr. Eldred Ward IV', 'B0791H17YW', 'mr-eldred-ward-iv', '41', 'Delectus et delectus qui quia facilis error. Voluptatum eos numquam qui temporibus in sunt quos sed. Nemo at soluta ipsum qui in tempora doloribus.', 'green', 'THDKISL', '474', '2845', 'http://altenwerth.com/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/7.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(215, 4, 10, 'Hilbert Steuber', 'B079226K35', 'hilbert-steuber', '43', 'Fugit possimus molestiae eos consequuntur facere sed quia. Ipsa doloremque debitis eaque aut repellendus quam. Modi quam pariatur sunt reprehenderit id omnis. Ut quaerat dolorem autem neque incidunt provident molestiae.', 'yellow', 'vb0OaSL', '8186', '3339', 'http://zemlak.org/earum-ipsum-nesciunt-qui-sint-autem-iusto', 1, 0, 1, 0, 1, 1, 1, 'uploads/product/8.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(216, 7, 7, 'Oliver Herzog', 'B079H46Y7Z', 'oliver-herzog', '32', 'Quia aut saepe nemo odio. Suscipit consequatur earum sed et in sit aut corporis.', 'teal', '3eNpbSL', '6740', '1690', 'https://www.bergnaum.biz/inventore-nihil-quia-nisi-nam-harum-omnis-velit-et', 1, 1, 1, 1, 0, 1, 0, 'uploads/product/9.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(217, 6, 8, 'Dejah Lockman', 'B079KB8L5K', 'dejah-lockman', '46', 'Aliquid fugiat architecto vero nemo rerum veritatis impedit ea. Est corporis sapiente temporibus laudantium modi qui dolores ut. Non nulla non necessitatibus rerum iste. Fuga fugit distinctio nam commodi.', 'black', 'vLaSySL', '1637', '4763', 'http://romaguera.com/', 1, 1, 1, 0, 0, 0, 1, 'uploads/product/10.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(218, 2, 6, 'Willis Kuhic', 'B079KVKNF7', 'willis-kuhic', '28', 'Et libero dolore natus harum numquam aspernatur sit. Nemo placeat facere porro nam. Recusandae excepturi excepturi officia tempora sunt aliquam. Id vitae explicabo temporibus fugit aut totam. Ex est accusantium ut qui.', 'gray', '98uPDSL', '6102', '4202', 'http://nienow.info/sit-aut-est-non-quidem-sit-fugit-sit', 0, 0, 1, 1, 0, 1, 0, 'uploads/product/11.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(219, 3, 1, 'Kavon Jenkins III', 'B079M32BXX', 'kavon-jenkins-iii', '46', 'Aut explicabo pariatur ipsum. Repellat autem dolores excepturi laboriosam. Aut exercitationem ea possimus quia harum. Eum fugit autem facilis repudiandae modi itaque ab.', 'fuchsia', 'FJpYdSL', '5357', '3688', 'http://www.mcdermott.info/iste-illo-qui-voluptas-culpa-illo-saepe-aut.html', 0, 1, 0, 1, 1, 0, 0, 'uploads/product/12.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:41', '2020-10-11 14:24:41'),
(220, 5, 6, 'Roman Parker', 'B07BFRWH1L', 'roman-parker', '40', 'Magnam provident rerum non animi mollitia dolores. A qui non qui qui atque. Quod ipsa occaecati eveniet eius perferendis dolorum incidunt quasi.', 'teal', '2BJq0SL', '7842', '1282', 'http://franecki.com/alias-aut-ut-perferendis-voluptas.html', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/13.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(221, 2, 10, 'Angelina Goldner', 'B07BGGYYPX', 'angelina-goldner', '43', 'Exercitationem libero vero occaecati dignissimos delectus. Perspiciatis ut et alias animi magnam nihil. In provident ut delectus et non iure aut.', 'gray', '9xjSCSL', '8015', '4076', 'http://www.sipes.com/nulla-consequatur-iste-maxime-eos-voluptate-quas', 1, 0, 0, 1, 0, 0, 0, 'uploads/product/14.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(222, 5, 4, 'Dr. Clementine Kuhlman DDS', 'B07BN8X5L9', 'dr-clementine-kuhlman-dds', '39', 'Hic deserunt dolores ipsum et quas eveniet dolore. Vel quisquam odit enim architecto consequuntur beatae. Dolor quod qui eos iure enim cumque.', 'olive', 'NRotjSL', '9713', '1201', 'http://www.berge.com/sed-aut-quisquam-ipsa-perferendis-voluptatibus-neque', 0, 0, 0, 0, 1, 0, 1, 'uploads/product/15.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(223, 6, 3, 'Luis Tromp', 'B07BQDHCT7', 'luis-tromp', '22', 'Est et ut recusandae. Soluta aperiam inventore in earum quas optio.', 'navy', 'JLHt1SL', '8206', '734', 'http://orn.com/', 0, 1, 1, 1, 1, 1, 1, 'uploads/product/16.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(224, 2, 2, 'Mr. Jesse Hagenes', 'B07BWDBB7L', 'mr-jesse-hagenes', '25', 'Tempora similique deleniti et et. Sed et quos expedita sit vitae molestiae. Qui nisi nihil accusantium laudantium quia quis possimus.', 'blue', '7f91VSL', '872', '2541', 'https://www.leffler.biz/et-numquam-et-in-nesciunt-rerum-iste-rerum-et', 1, 0, 0, 0, 0, 0, 0, 'uploads/product/17.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(225, 1, 5, 'Dr. Verna Walsh MD', 'B07BWFPL9W', 'dr-verna-walsh-md', '21', 'Id nihil est molestiae quos nihil aut doloremque. Nihil in quia dolorem aliquid omnis nihil minima. Magni minima ut consequatur aut. Perferendis dolorum est sit ut asperiores corrupti in.', 'lime', '6gtkxSL', '1388', '2430', 'http://www.hodkiewicz.com/facilis-odio-id-non-enim-voluptatem', 1, 1, 1, 0, 0, 1, 0, 'uploads/product/18.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:42', '2020-10-11 14:24:42'),
(226, 4, 10, 'Tyra Stiedemann', 'B07BZQ7X84', 'tyra-stiedemann', '22', 'Officia rem aut quia autem fugit perferendis. Ut quisquam laboriosam sit aliquam ab mollitia. Omnis at vel voluptatem consequatur sint possimus itaque.', 'green', 'ltkWlSL', '5049', '1124', 'http://gleichner.com/quis-inventore-nisi-impedit-est.html', 0, 1, 1, 1, 1, 0, 0, 'uploads/product/19.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(227, 4, 5, 'Brandy Stracke I', 'B07C16MKYH', 'brandy-stracke-i', '32', 'Vitae voluptatum aperiam est vitae quibusdam quas ut. Quaerat dolor consequuntur reprehenderit molestiae minus dolorum qui. Magni odit ducimus non fuga fuga. Rerum amet magni ea et quaerat porro. Eos consequatur occaecati occaecati harum.', 'navy', '2XXqISL', '6413', '4527', 'http://nader.com/quis-nulla-voluptatem-eum-voluptatum-ullam-ullam-illum-consequatur', 1, 1, 0, 0, 1, 1, 0, 'uploads/product/20.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(228, 6, 9, 'Prof. Herbert Mitchell', 'B07C1H3MC6', 'prof-herbert-mitchell', '49', 'Ipsa vel et ut voluptatem iusto numquam. Doloribus aut quia quo eaque. Voluptas enim assumenda dolorum sint alias.', 'green', 'PjLEDSL', '7622', '2238', 'http://dickens.com/veniam-enim-qui-dolores-in-magnam-non', 1, 0, 0, 0, 1, 1, 1, 'uploads/product/21.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(229, 3, 2, 'Prof. Charlie Bartoletti Jr.', 'B07C25TVVB', 'prof-charlie-bartoletti-jr', '24', 'Nesciunt tenetur et sed quaerat tempora. Inventore quo impedit illo. Voluptatem voluptatem vel consequuntur est.', 'navy', 'WksE2SL', '6362', '2386', 'http://www.fadel.com/alias-repudiandae-ab-quasi-excepturi-consequatur.html', 0, 0, 1, 1, 1, 1, 1, 'uploads/product/22.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(230, 4, 5, 'Loyal Ortiz', 'B07C2S9CWW', 'loyal-ortiz', '23', 'Nostrum eveniet debitis nostrum cupiditate dolor qui. Eligendi sed eum voluptas et. Nam rerum provident aut illum eum.', 'teal', '6H1f2SL', '1008', '1474', 'http://www.altenwerth.com/sit-sint-eum-distinctio-ut.html', 0, 0, 0, 1, 0, 0, 1, 'uploads/product/23.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(231, 6, 3, 'Alicia Lakin', 'B07C35RCZ1', 'alicia-lakin', '40', 'Necessitatibus non et non ducimus quo aut odit. Neque facere doloremque possimus expedita expedita natus ducimus. Optio voluptate animi quam quia. Explicabo excepturi velit minima.', 'blue', 'lzpOlSL', '7753', '1303', 'http://www.greenholt.com/ut-voluptatem-totam-exercitationem-sunt-sapiente-molestias', 1, 0, 1, 0, 1, 0, 1, 'uploads/product/24.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(232, 3, 10, 'Dr. Rory Harber', 'B07C6F95KZ', 'dr-rory-harber', '31', 'Cupiditate mollitia assumenda aut. Voluptatum ratione ipsa expedita quibusdam soluta explicabo vitae voluptas. Temporibus sed debitis ea incidunt praesentium.', 'teal', '75z08SL', '5556', '3608', 'http://www.homenick.com/aut-laudantium-voluptas-rerum-dolores-aut-dolore.html', 1, 1, 1, 1, 0, 0, 0, 'uploads/product/25.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(233, 3, 3, 'Prof. Agustina Armstrong V', 'B07C6RFXTP', 'prof-agustina-armstrong-v', '40', 'Nihil inventore nihil minus sunt consequatur accusamus. Magni modi quia cum totam est laborum. Dolor asperiores blanditiis cum facilis ut aspernatur. Dicta repellat est tempore eum quo sed est.', 'lime', 'IBYzNSL', '1080', '3310', 'http://www.sauer.com/', 1, 1, 1, 0, 1, 1, 0, 'uploads/product/26.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:43', '2020-10-11 14:24:43'),
(234, 1, 9, 'Dr. Viola Kemmer MD', 'B07C73WL89', 'dr-viola-kemmer-md', '21', 'Commodi architecto assumenda aut sed. Aperiam eius qui quo eum consectetur incidunt. Quos aut consequatur corporis.', 'lime', 'KPtufSL', '6600', '3204', 'http://www.heidenreich.info/asperiores-dolorum-molestiae-quas-et-similique.html', 0, 0, 0, 1, 1, 1, 0, 'uploads/product/27.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(235, 4, 8, 'Anastasia Blick DVM', 'B07C7MQD6S', 'anastasia-blick-dvm', '45', 'Ipsum aut numquam facere expedita et atque. Voluptatem ipsum qui tempora sed delectus sunt rerum soluta. Et quaerat recusandae nihil eum.', 'lime', 'N3qKfSL', '8722', '1202', 'https://www.durgan.net/nesciunt-explicabo-voluptatem-rerum-molestiae-aut-qui', 0, 0, 1, 0, 0, 0, 1, 'uploads/product/28.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(236, 5, 3, 'Prof. Justice Rath PhD', 'B07C91F97P', 'prof-justice-rath-phd', '26', 'Explicabo qui minima qui aliquid numquam. Distinctio sed non aut necessitatibus architecto. Assumenda similique earum sapiente autem tenetur qui doloribus.', 'gray', '7LnZESL', '3905', '3540', 'http://www.ankunding.com/', 1, 1, 1, 0, 0, 1, 0, 'uploads/product/29.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(237, 1, 10, 'Viola Harvey', 'B07CC941JZ', 'viola-harvey', '30', 'Sed nesciunt sit nam fugit. Temporibus beatae excepturi et non et. Eaque rerum placeat voluptas fugiat mollitia laborum voluptatem.', 'black', 'G9uMvSL', '1743', '301', 'http://kilback.info/', 0, 0, 0, 1, 0, 0, 1, 'uploads/product/30.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(238, 7, 2, 'Emilia Kunde', 'B07CCHNHDP', 'emilia-kunde', '47', 'Ullam aut nihil sed error placeat quia nam. Est est doloribus voluptatem est facere optio nulla. Dignissimos rem fugit quia repudiandae iure necessitatibus blanditiis. Labore vitae sint et.', 'gray', '5mN3lSL', '296', '358', 'http://predovic.com/ut-et-perspiciatis-suscipit-blanditiis-in-et', 0, 0, 0, 0, 1, 1, 0, 'uploads/product/31.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(239, 3, 7, 'Deion Hackett Sr.', 'B07CJGLJK6', 'deion-hackett-sr', '27', 'Praesentium sequi inventore molestias fugiat. Qui suscipit natus modi necessitatibus rerum aut repellendus. Ut quia blanditiis dolores distinctio nesciunt. Porro dicta velit molestiae ut qui. Assumenda distinctio saepe velit sed distinctio.', 'white', 'WqmRZSL', '7269', '4616', 'http://www.welch.com/minus-et-atque-nulla-praesentium-rerum-pariatur.html', 0, 0, 0, 0, 1, 1, 0, 'uploads/product/32.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:44', '2020-10-11 14:24:44'),
(240, 5, 2, 'Prof. Yadira Baumbach III', 'B07CJHBYJ3', 'prof-yadira-baumbach-iii', '41', 'Placeat nesciunt et dolorum hic et consectetur. Iste rem et iusto vitae ut odio. Totam quia quibusdam odit architecto ipsa. Nulla vero quibusdam unde a velit dolorum minima.', 'navy', 'XmqdQSL', '3419', '335', 'https://mohr.com/maxime-ipsum-qui-blanditiis-voluptates.html', 0, 1, 1, 0, 0, 1, 1, 'uploads/product/33.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(241, 4, 6, 'Sasha Wehner', 'B07CMZVT6T', 'sasha-wehner', '35', 'Architecto fugiat aut iste explicabo. Porro beatae quod et ipsum facere enim. Aut non sint quod voluptate magnam sunt. Laborum quisquam eveniet asperiores quisquam est animi error. Molestiae facilis id rerum nam possimus veritatis fuga.', 'teal', 'mEcR9SL', '9861', '3672', 'http://www.schmitt.biz/labore-necessitatibus-blanditiis-nostrum-atque-est-quo', 0, 1, 1, 1, 1, 1, 0, 'uploads/product/34.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(242, 7, 5, 'Prof. Friedrich Rolfson DDS', 'B07CPX7FW5', 'prof-friedrich-rolfson-dds', '39', 'Et iste qui vero explicabo et. Error impedit voluptatem id tempora labore aliquid. Debitis ratione est quis accusamus id enim ullam. Ea similique numquam qui possimus maiores officiis iusto.', 'green', 'kBdPmSL', '7289', '300', 'http://boyer.net/', 1, 1, 0, 0, 0, 0, 1, 'uploads/product/35.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(243, 4, 6, 'Colin Flatley V', 'B07CSHVTSH', 'colin-flatley-v', '44', 'Sed recusandae nemo rem. Voluptas amet velit dolorem corrupti sunt. Nostrum dolor deserunt voluptatem aliquid pariatur quia laudantium rem. Aut earum assumenda necessitatibus quos.', 'blue', 'O7Qg0SL', '6469', '3252', 'http://www.dare.com/aperiam-dolorum-ut-eos-modi-consequatur', 0, 1, 0, 1, 0, 1, 1, 'uploads/product/36.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(244, 6, 4, 'Lyric Yost', 'B07CSL8668', 'lyric-yost', '32', 'Sunt deleniti quia quia nobis nesciunt. Maiores aliquid ea quo voluptatem quia eum. Facilis eligendi eum enim blanditiis eos alias molestiae inventore.', 'silver', 'dpir4SL', '6806', '220', 'https://www.hilpert.biz/necessitatibus-dolorem-eaque-temporibus-aliquam', 0, 1, 0, 0, 0, 0, 1, 'uploads/product/37.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(245, 6, 5, 'Afton Rath', 'B07CVD1P77', 'afton-rath', '31', 'Velit nemo ipsa iusto culpa quod odio. Animi qui sunt et totam deleniti. Id adipisci odit eligendi rerum voluptatem. Possimus pariatur explicabo blanditiis non non sunt.', 'gray', 'R5DXBSL', '4543', '3840', 'https://www.kulas.org/est-similique-omnis-qui', 0, 1, 1, 0, 0, 1, 1, 'uploads/product/38.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(246, 7, 4, 'Dr. Sylvia Schimmel Sr.', 'B07CWLXHJB', 'dr-sylvia-schimmel-sr', '37', 'Ut voluptate et similique ducimus aut eveniet unde. Mollitia praesentium at consequatur in. Quo debitis consequatur nisi culpa ducimus et assumenda.', 'white', 'yuBMASL', '6395', '2127', 'https://emard.com/consequuntur-nobis-qui-et.html', 1, 0, 0, 1, 1, 1, 0, 'uploads/product/39.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(247, 6, 6, 'Ruthe Blick', 'B07CZXN3J5', 'ruthe-blick', '49', 'Soluta aut et voluptas suscipit vitae repellendus numquam. Natus quia repellendus quia architecto voluptas unde. Aspernatur autem nihil sint et quas magnam.', 'teal', 'h16yBSL', '2269', '3137', 'https://waelchi.com/dolorem-eligendi-sed-ut-nostrum-officia-excepturi-fuga-velit.html', 0, 1, 0, 1, 1, 0, 1, 'uploads/product/40.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(248, 6, 7, 'Walker Zboncak', 'B07D1KJMLL', 'walker-zboncak', '36', 'Ea sequi ea aut ipsa. Voluptatem doloribus omnis et culpa deserunt. Quibusdam delectus impedit labore quia dolor amet. Accusamus officiis sunt et cumque beatae modi aut.', 'maroon', 'vw71xSL', '7933', '1573', 'http://www.conn.com/', 1, 0, 0, 0, 1, 1, 1, 'uploads/product/41.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:45', '2020-10-11 14:24:45'),
(249, 6, 1, 'Melissa Nienow', 'B07D35PZBG', 'melissa-nienow', '23', 'Iusto saepe quia itaque cupiditate aut accusantium suscipit numquam. Doloribus odio repudiandae fugit libero. Optio autem aspernatur quaerat eveniet corporis ut.', 'silver', 'WeSt8SL', '8827', '2651', 'http://www.eichmann.org/qui-dignissimos-veniam-est-amet-voluptas', 0, 0, 1, 0, 0, 1, 0, 'uploads/product/42.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(250, 2, 7, 'Andy Waters', 'B07D3NHF6V', 'andy-waters', '35', 'Fugiat cum dolorem vel natus aliquam non corporis. Iste beatae quisquam ducimus error atque. Unde dolor molestiae quam quam assumenda sapiente vel.', 'blue', '5CpNsSL', '6518', '1374', 'http://www.herman.biz/sit-voluptas-temporibus-earum-dolorum-fugiat-dolor-aspernatur-id.html', 1, 0, 1, 1, 0, 1, 1, 'uploads/product/43.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(251, 4, 2, 'Telly Wilkinson', 'B07D974VN5', 'telly-wilkinson', '29', 'Doloribus ut aut amet et. Nobis voluptatem in consequuntur molestias modi ad. Sed numquam aut consequatur id nihil. Porro qui doloribus asperiores laudantium maiores minus aut.', 'navy', 'p4LoESL', '8342', '3171', 'http://kutch.com/occaecati-et-sunt-quisquam-doloremque-totam-dolorem', 1, 0, 0, 1, 1, 1, 0, 'uploads/product/44.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(252, 2, 10, 'Stanley Dooley', 'B07DC13MV7', 'stanley-dooley', '45', 'Numquam vero voluptas amet voluptas mollitia illo. Culpa architecto veritatis pariatur ex.', 'silver', 'O7q9GSL', '1420', '2999', 'http://marvin.com/officia-error-recusandae-eius-pariatur.html', 1, 0, 0, 1, 1, 1, 1, 'uploads/product/45.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(253, 2, 6, 'Dawn Casper', 'B0000536EY', 'dawn-casper', '38', 'Nisi in nihil omnis deserunt eveniet. Ratione eum recusandae quae porro. Sed distinctio vel et quod beatae.', 'white', 'areGxSL', '1741', '2333', 'http://www.leuschke.com/id-qui-ut-officia-et-accusamus-eos', 1, 0, 0, 0, 0, 1, 0, 'uploads/product/46.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(254, 3, 4, 'Arnold Harvey', 'B00006ANDK', 'arnold-harvey', '44', 'Ab deserunt provident ipsa. Sed fugiat qui aliquam sint soluta. Accusamus ut praesentium iure voluptas.', 'green', 'rTBolSL', '3072', '2143', 'http://www.kozey.info/', 1, 1, 0, 1, 0, 1, 1, 'uploads/product/47.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(255, 7, 3, 'Ford Kassulke', 'B00016XJ4M', 'ford-kassulke', '39', 'Perspiciatis quisquam quia eos accusantium unde. Dicta deleniti esse vitae error et nihil. Perspiciatis quia accusamus quibusdam expedita. Ad saepe aut nobis provident voluptatem eligendi quia.', 'fuchsia', 'jWd42SL', '9775', '1097', 'https://www.schumm.org/sed-sequi-impedit-est', 0, 0, 1, 0, 0, 1, 1, 'uploads/product/48.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(256, 7, 5, 'Eloy Weber', 'B0007V6PK6', 'eloy-weber', '43', 'Est nesciunt dolorum odio nam aut. Commodi aut sapiente et omnis explicabo. Et ut tempore explicabo atque autem praesentium non.', 'fuchsia', '5u2qMSL', '9025', '4670', 'http://quitzon.com/', 0, 1, 0, 1, 0, 1, 1, 'uploads/product/49.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:46', '2020-10-11 14:24:46'),
(257, 2, 2, 'Syble Rutherford', 'B0009RF8G0', 'syble-rutherford', '31', 'Placeat et exercitationem sunt perspiciatis nobis suscipit repudiandae. Ab ad similique asperiores quibusdam. Eaque sit mollitia doloremque qui aut voluptas. Vel praesentium deleniti sit laudantium.', 'black', 'grldISL', '3155', '2841', 'http://hagenes.com/', 1, 1, 0, 1, 0, 1, 1, 'uploads/product/50.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(258, 6, 5, 'Miss Asa Wisozk', 'B000JNQSIQ', 'miss-asa-wisozk', '37', 'Provident sed qui corporis et. Minus iure consectetur dolorum placeat aliquid. Tempora sit voluptatibus libero ipsam ipsum quia nisi. Sed rem eum suscipit doloremque et totam. Eveniet a eos quidem animi et maxime.', 'gray', 'qs8mSSL', '9498', '267', 'http://www.welch.com/aspernatur-eos-porro-est-recusandae-voluptas-provident-dolorum', 1, 1, 1, 0, 1, 1, 0, 'uploads/product/51.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(259, 5, 8, 'Mr. Marcelo Walsh', 'B000NWGCZ2', 'mr-marcelo-walsh', '30', 'Quis quae et quibusdam sapiente eum alias. Voluptas beatae dignissimos expedita qui. Repellendus similique eaque aut quia laboriosam molestias iusto officia.', 'lime', 'vQmV5SL', '5241', '3556', 'http://metz.info/sint-deserunt-eum-molestias-cupiditate-modi', 0, 1, 0, 1, 0, 0, 0, 'uploads/product/52.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(260, 1, 1, 'Dr. Jennifer Walter', 'B000YJ2SLG', 'dr-jennifer-walter', '36', 'Minus aut soluta ad fugit ad. Maiores ut velit sed dignissimos. Nisi unde dignissimos reiciendis ratione sunt ut et. Veritatis iusto corporis et.', 'white', 'DrbS3SL', '2802', '3799', 'http://www.franecki.net/est-quis-est-accusantium', 1, 1, 1, 1, 1, 1, 1, 'uploads/product/53.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(261, 6, 9, 'Yasmine Krajcik', 'B0016DK48C', 'yasmine-krajcik', '40', 'Et impedit et nobis at dolorum cum non. Consequuntur quas architecto odit quo dolorem. Dolor rerum fugit quas excepturi consequatur omnis minima. Quia repellat aut sit.', 'white', 'Ot2qRSL', '8312', '3504', 'http://www.leuschke.net/', 1, 1, 1, 0, 1, 0, 1, 'uploads/product/54.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(262, 5, 6, 'Hannah Sanford', 'B0013MTHWQ', 'hannah-sanford', '42', 'Nihil totam voluptatem laboriosam at. Adipisci quae illum laboriosam et ducimus officia sed. Deserunt ex vitae nisi debitis molestias aspernatur porro.', 'aqua', 'wkJAsSL', '2359', '3061', 'https://www.schulist.com/reprehenderit-molestiae-saepe-veritatis-ut-veritatis-labore', 0, 1, 0, 1, 0, 1, 0, 'uploads/product/55.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(263, 2, 8, 'Dr. Bo Terry III', 'B001459IEE', 'dr-bo-terry-iii', '47', 'Ut perferendis temporibus non. Eum aperiam quos culpa. Voluptatem pariatur sed dolorem et nisi iure. In cumque rerum cumque.', 'gray', 'kvb0FSL', '1231', '120', 'https://www.feeney.com/aut-autem-quo-nihil-ut-dolorem-odio-ea', 0, 0, 1, 0, 0, 0, 1, 'uploads/product/56.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(264, 2, 1, 'Prof. Timmy Williamson DDS', 'B00194Q7BC', 'prof-timmy-williamson-dds', '43', 'Minima ratione alias amet repellendus nesciunt ducimus molestias. Quam ipsam totam dolor in. Deserunt unde in quos fuga ex qui omnis. Facilis sit assumenda dolore est sint maiores nisi.', 'lime', 'gjELtSL', '9166', '4907', 'http://www.fisher.com/vel-laudantium-nostrum-officiis-modi-et-quaerat', 1, 0, 1, 0, 1, 1, 0, 'uploads/product/57.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:47', '2020-10-11 14:24:47'),
(265, 1, 9, 'Sofia Nicolas', 'B001ECQ4US', 'sofia-nicolas', '49', 'Accusantium nihil perferendis et qui est ducimus mollitia. Sequi doloribus deleniti expedita. Aut dolor recusandae et fugit ea esse ullam expedita. Quo ut ut dolores aut rem in voluptates.', 'green', 'EBWTkSL', '3101', '3300', 'https://www.morar.biz/dolor-fuga-enim-eius-saepe-sed', 1, 1, 1, 0, 1, 0, 0, 'uploads/product/58.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(266, 4, 5, 'Anne Beahan V', 'B001OOLLVS', 'anne-beahan-v', '25', 'Harum placeat saepe quis sit eaque sunt totam doloribus. Expedita quis ut quam ut voluptas. Qui in voluptatem velit voluptatem qui.', 'gray', 'buP5gSL', '6017', '4974', 'http://www.gaylord.com/incidunt-amet-dolores-et-vitae.html', 1, 0, 0, 0, 0, 0, 0, 'uploads/product/59.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(267, 1, 3, 'Elnora Kuphal III', 'B001P92FMG', 'elnora-kuphal-iii', '38', 'Inventore unde dicta quibusdam. Ratione corrupti odit rem ipsum. Aut cum nam consequatur fugit.', 'blue', 'GfZ51SL', '1118', '4610', 'https://heathcote.com/perferendis-vel-quos-in-nihil.html', 0, 0, 0, 1, 1, 0, 0, 'uploads/product/60.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(268, 1, 6, 'Lloyd Huel', 'B00240UWGG', 'lloyd-huel', '20', 'Quia ut quis rem iusto laudantium nulla. Qui ullam sit at aut. Est enim pariatur rerum facilis beatae.', 'aqua', 'WAH7ASL', '2243', '192', 'http://flatley.com/', 1, 1, 0, 1, 1, 1, 1, 'uploads/product/61.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(269, 7, 8, 'Constance Gorczany', 'B002LC9OES', 'constance-gorczany', '47', 'Similique in porro id porro ducimus labore qui. Voluptas qui consequatur rerum. Quia et consequatur atque occaecati illum quo expedita.', 'navy', 'sAum4SL', '4976', '2750', 'http://www.bogisich.biz/esse-non-qui-animi.html', 0, 1, 0, 1, 1, 1, 1, 'uploads/product/62.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(270, 3, 9, 'Afton Kuvalis', 'B003QWG0IA', 'afton-kuvalis', '44', 'Quia sit esse maiores necessitatibus voluptates architecto. Temporibus pariatur necessitatibus ipsa architecto. Earum atque incidunt ut fugit quibusdam rerum. Temporibus id placeat odio exercitationem. Voluptatem ut quisquam commodi autem facere aliquid atque.', 'fuchsia', '9SQykSL', '2009', '1012', 'http://waelchi.com/veritatis-quas-amet-aliquid-doloribus-et-voluptatem-nihil', 0, 1, 0, 1, 1, 1, 1, 'uploads/product/63.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(271, 1, 6, 'Miss Tanya Kuhic IV', 'B0049LUI9O', 'miss-tanya-kuhic-iv', '40', 'Neque ea at qui iusto consequatur pariatur. Dolore quae fuga maxime est explicabo ea. Doloremque perferendis aut voluptatibus numquam autem.', 'aqua', 'ghl1NSL', '2384', '1742', 'https://www.beer.info/soluta-omnis-sunt-itaque-ea-doloremque-vero-ipsa', 1, 0, 0, 1, 0, 0, 1, 'uploads/product/64.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(272, 4, 4, 'Forrest Schmitt', 'B004BCXAM8', 'forrest-schmitt', '30', 'Fuga nostrum itaque ea a alias rerum. Accusantium suscipit ex fugiat voluptatum qui ut. Vel aut et aliquid quis quis quia.', 'silver', '4fKWkSL', '7802', '1433', 'http://gottlieb.net/et-tempore-eos-inventore-doloremque-vel-praesentium', 0, 1, 1, 0, 0, 1, 0, 'uploads/product/65.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(273, 6, 7, 'Beryl Gibson', 'B004D2DR0Q', 'beryl-gibson', '47', 'At qui ut aperiam ut illum natus. Ipsum porro voluptates optio non qui tempora voluptates saepe. Et fuga dolor omnis nesciunt. Et quam quam provident est minus.', 'white', '0t9nESL', '2449', '1812', 'https://lakin.info/nam-harum-et-aliquid.html', 0, 0, 0, 1, 0, 1, 1, 'uploads/product/66.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:48', '2020-10-11 14:24:48'),
(274, 6, 3, 'Mr. Daron Jerde', 'B004N7DQHA', 'mr-daron-jerde', '44', 'Magni non commodi in minus ab. Enim fuga animi voluptas impedit et reiciendis. Aut excepturi magni voluptatibus et sit consectetur.', 'green', 'L0wb7SL', '925', '3624', 'https://leffler.com/rerum-ullam-aut-quos-numquam-perferendis-itaque-nam.html', 1, 1, 1, 0, 0, 0, 1, 'uploads/product/67.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(275, 2, 4, 'Dr. Lorenzo Harris', 'B004UH74DA', 'dr-lorenzo-harris', '31', 'Vel vel dolorum quo officiis praesentium temporibus impedit nihil. Sunt eligendi et voluptatum est tenetur. Sunt magnam optio est sint tenetur recusandae qui est. Et porro et ut rerum deleniti sunt.', 'teal', 'NK2vVSL', '1431', '102', 'http://www.dietrich.net/', 0, 1, 1, 1, 1, 1, 1, 'uploads/product/68.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(276, 2, 7, 'Tyrel Wiegand', 'B0050QJHTO', 'tyrel-wiegand', '35', 'Omnis reprehenderit ab eveniet qui. Nihil quia fugiat alias ut nulla natus quia. Cum rem optio tempore sapiente minus.', 'gray', 'LN2mxSL', '9877', '3362', 'http://www.leffler.com/at-non-ea-similique-perspiciatis', 0, 1, 0, 0, 1, 1, 1, 'uploads/product/69.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(277, 7, 6, 'Leonora Herzog', 'B0054LHI5A', 'leonora-herzog', '39', 'Sunt modi autem placeat omnis corrupti rerum earum. Eum totam quo rerum incidunt assumenda corrupti. Quo id et id quae.', 'silver', 'WcvooSL', '5054', '2418', 'https://www.koepp.info/odit-aut-exercitationem-quia-optio-at-maiores-optio', 1, 0, 1, 0, 1, 0, 0, 'uploads/product/70.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(278, 4, 6, 'Kaylie Lockman', 'B005PLQIQ4', 'kaylie-lockman', '38', 'Qui nihil dolorum et. Pariatur est hic omnis nam facilis et aut. Et et qui placeat consequatur nihil. Vitae impedit dolorem unde sed sit aut est eaque.', 'olive', 'G6YHrSL', '3046', '4752', 'http://www.jast.biz/itaque-aliquid-quos-aut-itaque-ut-voluptatem.html', 0, 1, 0, 1, 1, 1, 0, 'uploads/product/71.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(279, 7, 8, 'Larry Labadie', 'B0061JPJ28', 'larry-labadie', '37', 'Rerum ex minima ut consequatur. Praesentium sed quia eveniet libero dolorem dicta quia.', 'maroon', 'BUzILSL', '927', '4042', 'http://www.dicki.com/animi-aut-minus-molestiae', 0, 0, 0, 0, 1, 1, 0, 'uploads/product/72.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(280, 1, 1, 'Ada Ryan', 'B0065ZTKWS', 'ada-ryan', '39', 'Natus aut voluptatibus qui ex. Voluptatem ab placeat nobis aliquid et. Sed maxime iste mollitia architecto quo.', 'blue', 'DEg7ZSL', '9557', '2354', 'http://www.wintheiser.com/voluptas-et-eveniet-laboriosam-doloremque', 0, 0, 0, 1, 1, 0, 0, 'uploads/product/73.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:49', '2020-10-11 14:24:49'),
(281, 2, 3, 'Tristian Kreiger DVM', 'B007KA7V5U', 'tristian-kreiger-dvm', '32', 'Praesentium consequatur pariatur nulla soluta tenetur. Et deleniti sunt pariatur officiis nisi. Beatae ad quo facilis sunt dolorem quia. Et fuga ut repudiandae in.', 'blue', 'DcISVSL', '2078', '2465', 'http://breitenberg.info/', 1, 1, 1, 1, 0, 1, 0, 'uploads/product/74.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(282, 6, 8, 'Dr. Dayana Fahey V', 'B007TIM8A6', 'dr-dayana-fahey-v', '44', 'Odio eum praesentium eum quis quam sit reprehenderit at. Impedit qui molestias voluptates aperiam excepturi quis non. Molestias sunt enim nihil qui pariatur fugit.', 'blue', '2CeBZSL', '5374', '906', 'http://shields.com/expedita-tempora-necessitatibus-cumque-nihil-id', 1, 1, 1, 1, 0, 1, 0, 'uploads/product/75.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(283, 3, 5, 'Velva Cassin', 'B0080EEMCA', 'velva-cassin', '35', 'Facere quo magnam in laborum. Dolores ut tempore ut quia odio. Commodi necessitatibus beatae a et.', 'black', 'tMxOXSL', '5016', '3579', 'http://hoeger.com/', 1, 1, 1, 0, 0, 1, 0, 'uploads/product/76.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(284, 7, 9, 'Mr. Jaleel Roberts', 'B00AHAWWO0', 'mr-jaleel-roberts', '29', 'Voluptatibus officiis est ea deserunt magnam maxime voluptatibus quia. Quam exercitationem facere pariatur voluptatem sed. Placeat sit natus dolorem quia voluptatum id. Asperiores sunt deleniti aspernatur est.', 'black', 'Kt2DgSL', '3561', '1584', 'http://www.nitzsche.com/praesentium-unde-modi-nihil-in-corrupti.html', 1, 1, 1, 1, 1, 0, 0, 'uploads/product/77.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(285, 2, 7, 'Antonina Hudson', 'B00AINMFAC', 'antonina-hudson', '36', 'Aut omnis error sint aut. Qui cupiditate omnis dolorem voluptas repudiandae quis. Recusandae quae cumque nihil in. Eligendi voluptate non maxime sit id.', 'purple', 'xUMfRSL', '1496', '2353', 'http://emmerich.com/corporis-similique-enim-eos-architecto-aliquam-dignissimos-et', 1, 0, 0, 1, 1, 1, 0, 'uploads/product/78.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(286, 2, 10, 'Laney Renner IV', 'B00BOYA2M2', 'laney-renner-iv', '28', 'Consequatur nesciunt magni et aut eos. Consequatur doloremque ad qui sit libero natus eum. Illum optio aut eius animi neque exercitationem et.', 'white', '4Rj2uSL', '7798', '337', 'http://steuber.com/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/79.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:50', '2020-10-11 14:24:50'),
(287, 6, 3, 'Conrad Braun', 'B00DM14TYC', 'conrad-braun', '31', 'Blanditiis id rerum reprehenderit molestiae. Ducimus beatae deserunt ullam eveniet sint laudantium minus. Expedita eos quae suscipit tempora amet.', 'fuchsia', 'TmrWjSL', '6109', '3562', 'http://www.nicolas.net/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/80.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(288, 4, 9, 'Francisco Borer', 'B00GMZUS2M', 'francisco-borer', '29', 'Quia nostrum qui beatae sed ad. Enim quam fugiat alias dolorem quam eligendi molestiae.', 'purple', 'IsvYQSL', '6411', '4979', 'http://www.hermann.org/blanditiis-voluptate-doloremque-mollitia-dolore', 0, 0, 0, 0, 1, 0, 0, 'uploads/product/81.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(289, 2, 9, 'Fabian Bogisich', 'B00H33ZP3O', 'fabian-bogisich', '44', 'Et culpa quibusdam voluptas in cum. Incidunt esse temporibus et vero eum. Et ipsa vel est et quod quia.', 'yellow', 'LwUwbSL', '7660', '3129', 'http://ebert.info/', 1, 0, 1, 0, 1, 1, 0, 'uploads/product/82.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(290, 7, 9, 'Robert Will', 'B00HSE4WJG', 'robert-will', '25', 'Aut enim iure voluptatem excepturi. Quia rerum vero inventore eius modi. Sunt aliquam ut eos ut rem aut provident in.', 'silver', 'w0DxjSL', '1432', '995', 'http://www.morar.info/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/83.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(291, 3, 6, 'Lorine Berge PhD', 'B00JUJ1BCS', 'lorine-berge-phd', '39', 'Consequuntur odio nobis voluptates voluptatem cumque. Corrupti corporis sed et asperiores cum ratione reiciendis. Consequatur nulla sed non in necessitatibus sed vitae. Laborum ducimus et et.', 'purple', '0uRwGSL', '5571', '3406', 'http://ward.org/itaque-ratione-vel-vitae-temporibus', 0, 1, 1, 0, 1, 1, 1, 'uploads/product/84.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(292, 7, 6, 'Addie Graham', 'B00JUJ1E0W', 'addie-graham', '22', 'Illo sed reprehenderit recusandae optio. Quasi occaecati fugiat qui amet quaerat expedita quisquam. Reprehenderit quaerat labore nihil omnis iusto.', 'aqua', 'CopJaSL', '8655', '4025', 'http://mueller.net/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/85.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(293, 3, 3, 'Colten Hoppe', 'B00LIBEBTG', 'colten-hoppe', '22', 'Et sit et similique veniam odit non alias. Ipsa et est dignissimos quibusdam ipsa laudantium. Assumenda maiores voluptatem possimus dolorem odio neque enim ipsam.', 'aqua', 'A5ybtSL', '7930', '3398', 'https://www.corkery.info/deserunt-molestiae-ratione-sit-et-repellat', 1, 1, 1, 0, 1, 1, 0, 'uploads/product/86.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(294, 7, 7, 'Laila Mante', 'B00LV5NY3I', 'laila-mante', '23', 'Debitis fugit consequatur eos omnis totam quasi molestias. Aliquid ut tempora quia voluptatem. Est in quasi quia non repellendus mollitia voluptatem.', 'silver', 'gGeyXSL', '3474', '641', 'https://www.sporer.biz/ut-harum-saepe-deserunt-autem-est-voluptatum-earum', 0, 1, 1, 0, 1, 0, 0, 'uploads/product/87.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:51', '2020-10-11 14:24:51'),
(295, 6, 3, 'Alycia Zulauf I', 'B00LV6VDG2', 'alycia-zulauf-i', '33', 'Expedita occaecati maiores dicta. Delectus hic cum fugit sint. Nihil dolores eligendi officia voluptatem laudantium quam nulla. Molestias cumque earum et labore velit explicabo qui.', 'fuchsia', 'hW10hSL', '3550', '2016', 'https://eichmann.com/laborum-quos-ipsam-est-laborum.html', 0, 0, 1, 1, 1, 1, 1, 'uploads/product/88.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:52', '2020-10-11 14:24:52'),
(296, 1, 4, 'Mona Sporer', 'B00MLBPDQ2', 'mona-sporer', '21', 'Quia dicta delectus debitis atque asperiores ut omnis. Explicabo rem ea eligendi quia consequatur.', 'white', 'rLPY3SL', '4819', '3955', 'http://www.cruickshank.net/sed-soluta-enim-sed-omnis-quis-corporis-similique.html', 1, 0, 1, 1, 0, 1, 0, 'uploads/product/89.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(297, 5, 9, 'Mrs. Rosalinda Quigley', 'B00MWI2IS0', 'mrs-rosalinda-quigley', '35', 'Quia culpa ratione voluptatem amet voluptatum. Quae ut laboriosam eos iusto ut et consequatur. Tempore quod ipsum eligendi eos quasi nihil. Aliquid vel qui mollitia qui consequuntur saepe et occaecati.', 'purple', 'vBVR9SL', '417', '4316', 'http://ebert.com/vitae-nesciunt-labore-et-laborum', 1, 0, 1, 1, 1, 1, 1, 'uploads/product/90.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(298, 4, 6, 'Shaina Kihn', 'B00NR1YQHM', 'shaina-kihn', '33', 'Qui porro sint vel sit sit non. In rerum minus tenetur labore numquam quidem optio suscipit. Incidunt voluptate qui et delectus non maiores doloremque.', 'green', 'W6IURSL', '867', '174', 'https://durgan.biz/nam-eveniet-molestiae-accusamus-repellendus-occaecati-deserunt.html', 0, 0, 1, 0, 0, 1, 1, 'uploads/product/91.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(299, 2, 2, 'Ms. Rosella Rempel', 'B00PGQYEUK', 'ms-rosella-rempel', '35', 'Accusantium nihil dolores dolorum et. Nihil dolores quia exercitationem ut eligendi est. Eos molestias nostrum est quis quia. Est ratione distinctio sit.', 'aqua', 'iU1dcSL', '8655', '2426', 'http://www.cronin.com/', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/92.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(300, 1, 7, 'Randal Labadie PhD', 'B00PLUIR2C', 'randal-labadie-phd', '50', 'Pariatur in vero accusamus eaque magnam in fugit. Illum autem omnis architecto temporibus amet fuga. Deserunt nihil qui suscipit numquam molestiae quis ut.', 'gray', 'tKS1lSL', '1216', '1929', 'http://www.botsford.com/eos-necessitatibus-voluptas-ullam-laboriosam-dolores', 0, 0, 0, 0, 1, 0, 0, 'uploads/product/93.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(301, 5, 7, 'Delphine Cummerata', 'B00PMR3QF2', 'delphine-cummerata', '46', 'Qui aut et quod illo qui ea. Ex enim ut ipsa doloremque non quo a. Quae a quod vel neque aut quia quidem placeat.', 'lime', 'mxkI4SL', '337', '2376', 'http://www.bradtke.com/fuga-ut-laborum-cupiditate-ad-dignissimos', 0, 1, 1, 1, 1, 1, 1, 'uploads/product/94.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:53', '2020-10-11 14:24:53'),
(302, 4, 10, 'Dr. Colleen Hackett', 'B00PO7GKLM', 'dr-colleen-hackett', '40', 'Distinctio ut dignissimos quae quasi. Esse qui quia sed nostrum expedita commodi ea.', 'lime', 'T0g9lSL', '3774', '820', 'http://www.wolf.com/rem-aut-amet-illum-minus-et-quidem-molestiae.html', 0, 0, 1, 1, 1, 1, 0, 'uploads/product/95.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54'),
(303, 5, 9, 'Marquise Kirlin', 'B00QZ67ODE', 'marquise-kirlin', '48', 'Excepturi neque repellendus repellat earum eos eaque asperiores. Et sapiente vel est molestiae. Necessitatibus accusantium totam quidem.', 'blue', 'eYXvuSL', '4344', '4804', 'https://www.roob.org/odio-sunt-corporis-corporis-id-maiores-omnis-reiciendis', 1, 0, 1, 1, 0, 1, 0, 'uploads/product/96.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54'),
(304, 5, 5, 'Harold McKenzie', 'B00SNM5US4', 'harold-mckenzie', '35', 'Autem error voluptas nemo laborum. Reiciendis ut quis sit ea. Debitis laudantium hic ipsam et.', 'olive', 'QEEHhSL', '4297', '4350', 'http://www.mcclure.biz/non-eligendi-aut-voluptatem-omnis-eveniet.html', 0, 0, 1, 1, 1, 0, 1, 'uploads/product/97.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54'),
(305, 5, 3, 'Hobart Gutmann', 'B00TKS5Y3Q', 'hobart-gutmann', '37', 'Ut consequatur ad itaque corrupti. Explicabo aut facere minus et. Quis natus labore quia hic quod tempora omnis. Non numquam sequi quo dolores voluptatibus distinctio.', 'purple', 'ouiy5SL', '8766', '1866', 'http://www.considine.info/quibusdam-quia-maxime-sapiente-vitae-necessitatibus-odio', 0, 0, 0, 1, 1, 1, 1, 'uploads/product/98.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54'),
(306, 2, 3, 'Ms. Valentina Harber', 'B00TTD9BRC', 'ms-valentina-harber', '31', 'Praesentium ea optio dolorem inventore laborum et amet. Dolores neque et et est. Aut consequatur sint beatae voluptas voluptas vero officiis excepturi. Ullam perferendis maiores fugit quae quisquam consequatur mollitia.', 'blue', 'olTXESL', '3547', '3119', 'https://lind.net/quibusdam-officia-consequuntur-quo-ipsum-saepe-quas-qui-temporibus.html', 0, 0, 1, 0, 1, 0, 0, 'uploads/product/99.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54');
INSERT INTO `products` (`id`, `main_cate_id`, `product_cat_id`, `product_name`, `product_code`, `product_slug`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `product_stock`, `created_at`, `updated_at`) VALUES
(307, 3, 4, 'Mr. Curtis Wuckert PhD', 'B00XPRRHYW', 'mr-curtis-wuckert-phd', '21', 'Commodi nesciunt nesciunt voluptatum suscipit. Sed magni saepe et et non laboriosam. Id qui natus repellat quas voluptas. Qui quas et rerum molestiae harum officia ut. Sed porro omnis a.', 'fuchsia', 'A2QmUSL', '1862', '3848', 'http://kovacek.com/dolorem-in-doloremque-aut-expedita', 0, 0, 0, 1, 1, 1, 1, 'uploads/product/100.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:54', '2020-10-11 14:24:54'),
(308, 4, 8, 'Prof. Gladys Hahn DVM', 'B00YE3CPW0', 'prof-gladys-hahn-dvm', '37', 'Reiciendis optio adipisci laudantium quae. Numquam deleniti accusamus doloremque. Provident impedit ex quo voluptas ullam doloribus.', 'blue', 'FKQSaSL', '2112', '4053', 'http://boehm.org/', 1, 1, 0, 1, 0, 0, 1, 'uploads/product/101.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:55', '2020-10-11 14:24:55'),
(309, 6, 9, 'Lizeth Gottlieb', 'B00Z75ZDAU', 'lizeth-gottlieb', '45', 'Non a non error velit tempora doloribus. Numquam vitae eum magnam quibusdam quidem. Totam ullam dignissimos aut odit.', 'gray', '73NsVSL', '1289', '3420', 'http://bogisich.com/in-commodi-ea-quia-assumenda-dolorem', 0, 0, 1, 1, 0, 0, 1, 'uploads/product/102.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:55', '2020-10-11 14:24:55'),
(310, 1, 7, 'Prof. Kale Casper', 'B0107QP1VE', 'prof-kale-casper', '37', 'Sequi voluptatibus aut sint sit. Nulla ullam voluptates atque culpa a quia consequatur. Assumenda excepturi id voluptate reprehenderit explicabo ut quia corporis. Est quo dolor nostrum qui.', 'lime', 'pXMNcSL', '2914', '3315', 'http://effertz.com/', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/103.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:55', '2020-10-11 14:24:55'),
(311, 1, 10, 'Eula Skiles I', 'B015HTI3UC', 'eula-skiles-i', '20', 'Qui magni est ut ex sit qui. Consequatur quam voluptates quaerat omnis. Magnam omnis deserunt accusamus id. Qui voluptatem aut sint est et aut architecto esse. Iusto unde quae dicta ut nobis.', 'aqua', 'VT80FSL', '3630', '4080', 'http://www.batz.com/labore-cupiditate-error-veritatis-saepe-consequatur', 0, 0, 0, 1, 0, 0, 0, 'uploads/product/104.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:55', '2020-10-11 14:24:55'),
(312, 3, 4, 'Dr. Carole Renner', 'B018YOVQSI', 'dr-carole-renner', '25', 'Expedita non totam ducimus culpa autem occaecati. Aliquid voluptatem fugiat voluptate maxime impedit cum laboriosam. Veniam cum qui ea cupiditate.', 'green', 'TlGvGSL', '3236', '304', 'http://www.murphy.net/', 1, 0, 1, 1, 0, 1, 0, 'uploads/product/105.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:56', '2020-10-11 14:24:56'),
(313, 7, 2, 'Joannie Pollich MD', 'B019FGCM00', 'joannie-pollich-md', '34', 'Recusandae ducimus culpa dolorem voluptate. Quaerat nihil harum labore qui nemo quidem. Voluptas qui sint quia occaecati est. Non ab quis sit aut fugit. Qui natus temporibus perspiciatis veniam et corrupti modi.', 'teal', 'nWSlcSL', '1930', '4981', 'http://swaniawski.com/minima-sunt-non-dolores-perferendis-rerum-voluptates-voluptatem-cumque', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/106.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:56', '2020-10-11 14:24:56'),
(314, 2, 4, 'Dr. Mya Bode DDS', 'B019SVHLEY', 'dr-mya-bode-dds', '50', 'Ut dolor enim quod optio ipsa. Nihil ut architecto ut architecto aut. Iste ipsa delectus corrupti quos ullam nostrum officiis. Vel quia est eum enim qui.', 'teal', 'QyXs8SL', '1058', '1486', 'https://keebler.net/quas-voluptatem-voluptas-beatae-tenetur-amet.html', 0, 1, 1, 0, 1, 0, 0, 'uploads/product/107.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:56', '2020-10-11 14:24:56'),
(315, 3, 10, 'Joesph Jones', 'B01BJOY2LS', 'joesph-jones', '44', 'Id vel impedit aut repellendus. Voluptatem deserunt dolorem delectus. Quia ipsum dolores est ut dolor. Qui ipsum in qui sunt.', 'silver', 'mHgXqSL', '6784', '3237', 'http://hartmann.com/consectetur-quia-vitae-autem-repudiandae-voluptatem-vel-tempora', 1, 1, 1, 0, 1, 0, 1, 'uploads/product/108.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:56', '2020-10-11 14:24:56'),
(316, 2, 1, 'Raphaelle Deckow', 'B01BSB56OY', 'raphaelle-deckow', '43', 'Itaque dolorum ea velit sit suscipit consequatur. Ad consequatur voluptatem eligendi ut fugit reiciendis et. Repudiandae et voluptatem qui consequatur ipsum.', 'teal', '0HznESL', '6875', '4732', 'http://kerluke.com/nobis-assumenda-voluptate-modi-quasi-maiores-ipsam-facilis.html', 0, 0, 1, 0, 0, 1, 0, 'uploads/product/109.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:56', '2020-10-11 14:24:56'),
(317, 5, 9, 'Cordelia Wiza', 'B01CYDXMSW', 'cordelia-wiza', '20', 'Illum molestias debitis eos amet. In quis enim amet quasi sit et est facilis. Laudantium consequatur culpa iste autem consectetur eos dicta.', 'lime', 'aaEbqSL', '7187', '3436', 'http://www.robel.com/maiores-expedita-alias-ratione-corporis-nihil-autem.html', 0, 1, 1, 1, 0, 0, 0, 'uploads/product/110.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:57', '2020-10-11 14:24:57'),
(318, 3, 5, 'Kade Murphy', 'B01EBB291G', 'kade-murphy', '38', 'Quia aperiam non enim culpa eum provident qui ea. Quaerat et ipsam quam dicta pariatur autem. Eveniet similique reprehenderit est. Rerum nisi magnam voluptate est ab. Tempora vero fuga odio ipsa.', 'aqua', '8QtaVSL', '7988', '4075', 'http://huels.com/sit-et-est-culpa-aut.html', 0, 0, 0, 0, 0, 1, 1, 'uploads/product/111.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:57', '2020-10-11 14:24:57'),
(319, 4, 2, 'Michele Lakin', 'B01EIQQ096', 'michele-lakin', '36', 'At accusantium nostrum numquam quaerat nisi similique. Veniam quasi deserunt a. Hic et blanditiis quas aliquam quam dignissimos dolor. Aspernatur sed ex rerum quaerat.', 'maroon', '1OvfHSL', '3294', '3927', 'http://sauer.org/et-eveniet-eligendi-temporibus-soluta-eos', 1, 0, 1, 0, 0, 0, 0, 'uploads/product/112.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:57', '2020-10-11 14:24:57'),
(320, 4, 1, 'Prof. Kurt Tillman', 'B01JGG5CH4', 'prof-kurt-tillman', '47', 'Nihil qui et pariatur laudantium quisquam maxime dolor. Laboriosam cum perspiciatis praesentium ea quia. Molestiae animi quia qui voluptas doloribus expedita. Eveniet qui id enim natus vel omnis velit.', 'teal', 'fGBqVSL', '1165', '3269', 'https://oberbrunner.com/dolorum-non-illo-architecto-consequatur-magnam-aliquid-culpa.html', 1, 0, 0, 0, 0, 0, 1, 'uploads/product/113.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:57', '2020-10-11 14:24:57'),
(321, 5, 6, 'Connor Spencer', 'B01KZOTRG8', 'connor-spencer', '47', 'Tempora accusantium et in voluptatem rerum. Sequi sapiente aspernatur ipsum illum aperiam. In id ratione consequatur magni suscipit ab. Quaerat occaecati aliquam illum eum labore earum unde.', 'green', 'pqtgmSL', '2606', '696', 'http://www.pouros.com/laborum-eos-aut-ut-quo.html', 1, 0, 1, 1, 0, 1, 1, 'uploads/product/114.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:58', '2020-10-11 14:24:58'),
(322, 7, 1, 'Carmen Glover', 'B01LZ3RLPC', 'carmen-glover', '38', 'Rerum error consequatur eligendi et. Amet consequatur quae molestias natus accusantium ducimus. Et dolorum non aperiam facere.', 'fuchsia', 'AKK4YSL', '6950', '4170', 'http://considine.biz/fugit-odio-dolore-harum-et.html', 1, 0, 0, 0, 1, 1, 0, 'uploads/product/115.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:58', '2020-10-11 14:24:58'),
(323, 3, 6, 'Ms. Angie Hermiston Sr.', 'B01M0PB8DZ', 'ms-angie-hermiston-sr', '29', 'Sunt accusamus aut iure qui dolore. In voluptas distinctio natus qui eveniet iure nobis. Sunt sunt quia tenetur omnis esse architecto. Eveniet aspernatur nam quaerat sed expedita.', 'gray', '1YRlOSL', '5941', '228', 'http://www.stoltenberg.com/aut-ea-aspernatur-officia-et.html', 0, 1, 0, 1, 1, 1, 0, 'uploads/product/116.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:58', '2020-10-11 14:24:58'),
(324, 2, 1, 'Dr. Demario Hintz', 'B01M5KZQF6', 'dr-demario-hintz', '33', 'Eaque exercitationem molestiae aut velit vitae est. Doloribus enim sed non et nemo nihil esse. Impedit voluptatibus debitis consequatur voluptatem omnis iure ex. Earum reiciendis deleniti quia sed ipsam est.', 'teal', 'PBh6WSL', '381', '1162', 'http://www.rodriguez.com/et-eum-provident-saepe-optio-delectus-et', 0, 0, 0, 1, 0, 1, 1, 'uploads/product/117.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:58', '2020-10-11 14:24:58'),
(325, 2, 9, 'Ms. Corine Ledner', 'B01MFGN8S5', 'ms-corine-ledner', '25', 'Ipsum animi voluptatem velit delectus at. Doloribus qui quae molestiae ut voluptate voluptatem. Porro sint id quia numquam. Laudantium molestiae qui veritatis sit quisquam tempora porro accusamus.', 'lime', '8nKhlSL', '7358', '3437', 'http://www.ebert.com/', 0, 1, 1, 0, 1, 0, 0, 'uploads/product/118.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(326, 5, 3, 'Josephine Wintheiser', 'B01MSSDEPK', 'josephine-wintheiser', '20', 'A possimus molestias ut sit id perferendis nesciunt rem. Voluptatum autem nostrum voluptate nulla nemo ad dolorem optio. Accusamus iste explicabo facere facere veniam.', 'maroon', 'mHZVSSL', '2269', '2090', 'https://zieme.com/reiciendis-veritatis-a-ratione-sapiente.html', 1, 1, 0, 1, 1, 1, 1, 'uploads/product/119.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(327, 4, 7, 'Marlon Hegmann', 'B01MXGP5DM', 'marlon-hegmann', '30', 'Eaque voluptatibus architecto voluptates amet. Autem incidunt voluptas autem voluptate consectetur ipsam ratione consequatur. Aperiam animi iusto repellendus consectetur.', 'lime', 'rs0FlSL', '1223', '1573', 'http://crooks.net/ipsum-quidem-harum-minima-qui-neque-aut', 0, 0, 1, 0, 1, 0, 0, 'uploads/product/120.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(328, 4, 4, 'Marco Gleichner', 'B06VTPNVJZ', 'marco-gleichner', '37', 'Odio possimus quia quo. Ut consequuntur et est quis. Labore quod ut dolores molestias numquam. Natus inventore accusamus nihil sapiente maiores cupiditate.', 'teal', '13jkbSL', '3683', '1797', 'http://www.jaskolski.com/ipsa-quaerat-iure-laboriosam-incidunt-iusto', 0, 0, 0, 0, 0, 0, 1, 'uploads/product/121.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(329, 4, 1, 'Ayla Gusikowski', 'B06WP3N89Z', 'ayla-gusikowski', '32', 'Ratione vel aspernatur modi maxime. Et qui voluptas sit omnis itaque. Ratione consectetur in odit voluptates quis. Enim exercitationem itaque adipisci aut maiores.', 'white', 'HFpltSL', '5212', '1034', 'http://howe.com/', 1, 0, 0, 0, 1, 0, 1, 'uploads/product/122.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(330, 6, 4, 'Maryam Stracke', 'B06X9PM3GJ', 'maryam-stracke', '23', 'Tempore ea fugit quia dolorem. Voluptas repellendus aliquid quaerat est praesentium. Non porro perspiciatis incidunt et est commodi.', 'aqua', 'mCiyGSL', '5731', '105', 'http://paucek.com/pariatur-suscipit-in-est-omnis-sit', 0, 0, 1, 1, 1, 1, 1, 'uploads/product/123.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(331, 5, 10, 'Dr. Erik Bins', 'B06XFBCP2D', 'dr-erik-bins', '24', 'Odit repudiandae qui labore incidunt eveniet aliquam voluptatem. Doloremque delectus nam unde dicta. Est quia qui qui maiores qui est.', 'blue', 'DrtZMSL', '5900', '1584', 'http://bergnaum.org/in-deleniti-cum-numquam-distinctio-blanditiis-tempora', 0, 1, 0, 1, 0, 1, 1, 'uploads/product/124.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(332, 1, 9, 'Augustine Bernier', 'B0711BR3TC', 'augustine-bernier', '44', 'Et animi neque assumenda exercitationem atque. Voluptas porro nobis aliquid. Repudiandae delectus voluptatem voluptas.', 'blue', 'QeeJVSL', '2682', '2411', 'http://wisoky.com/', 1, 1, 1, 0, 0, 1, 1, 'uploads/product/125.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:24:59', '2020-10-11 14:24:59'),
(333, 2, 9, 'Elissa Mayer', 'B071YSXJ2Y', 'elissa-mayer', '36', 'Id voluptatem doloremque recusandae enim et non autem. Excepturi praesentium beatae aliquid est dicta eveniet aut. Ut voluptatem accusantium vitae animi maxime. Quo at perferendis quas consectetur velit. Maxime deleniti rem hic dicta consequuntur sequi.', 'green', 'NzdMOSL', '370', '2145', 'http://www.wehner.com/voluptatibus-nostrum-quia-perspiciatis-consequuntur.html', 1, 0, 1, 0, 1, 0, 0, 'uploads/product/126.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:00', '2020-10-11 14:25:00'),
(334, 4, 9, 'Jedidiah Davis', 'B073VD4YFV', 'jedidiah-davis', '28', 'Voluptatem vel repudiandae illum officiis qui. Delectus non sunt quo quibusdam inventore error dolores. Veniam sed suscipit perspiciatis natus ipsa debitis dolor ab. Modi dolorem nisi nihil itaque.', 'green', 'FVTITSL', '7174', '2842', 'http://spinka.com/', 0, 0, 0, 1, 0, 1, 0, 'uploads/product/127.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:00', '2020-10-11 14:25:00'),
(335, 5, 5, 'Mr. Quincy Graham', 'B074MNF659', 'mr-quincy-graham', '33', 'Perspiciatis nihil sit ut eligendi magnam. Dolorem porro ea illo blanditiis explicabo voluptas. Cumque soluta sit nostrum.', 'white', 'WohoJSL', '9281', '2959', 'http://www.kassulke.net/nihil-quia-enim-laborum-molestias-qui-nisi', 0, 0, 1, 1, 0, 1, 0, 'uploads/product/128.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:00', '2020-10-11 14:25:00'),
(336, 2, 3, 'Eladio Paucek IV', 'B074N4FCB4', 'eladio-paucek-iv', '46', 'Inventore nihil nisi facilis rerum adipisci at aliquid totam. Necessitatibus et aliquam delectus consequuntur consequatur. Omnis velit recusandae quae hic necessitatibus aut quidem. Dolorem velit consequatur modi qui laudantium.', 'navy', 'wYMIMSL', '2510', '1212', 'http://www.hoppe.org/aut-nihil-et-non-sit', 0, 1, 1, 0, 0, 1, 1, 'uploads/product/129.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(337, 5, 9, 'Dr. Cordell Feest PhD', 'B074V3NCB1', 'dr-cordell-feest-phd', '36', 'Aperiam ut voluptatum dolorem consequatur omnis magnam. Sit nihil alias dolores vitae nulla amet. Ea qui molestias unde sit repellendus dolorum amet.', 'olive', '0FyzkSL', '2713', '2925', 'http://kessler.org/ipsam-qui-et-quasi-quo', 0, 0, 1, 1, 0, 0, 0, 'uploads/product/130.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(338, 1, 7, 'Ona Heidenreich', 'B074XDLHNJ', 'ona-heidenreich', '22', 'Ut animi unde a non tenetur unde id. Eius dolorum doloribus autem qui est eligendi dolores. Porro quis natus rerum reiciendis voluptas repudiandae dicta.', 'maroon', 'dKNeHSL', '7710', '3722', 'https://kuhic.com/enim-labore-assumenda-est-perferendis-recusandae-aut.html', 0, 0, 1, 1, 1, 0, 1, 'uploads/product/131.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(339, 6, 1, 'Cynthia Bartell', 'B074ZB7LWJ', 'cynthia-bartell', '36', 'Excepturi soluta inventore distinctio mollitia. Ipsa blanditiis aut velit. Nobis aperiam corporis sed nihil doloremque cupiditate. Asperiores velit laudantium quia et tempore iste ea omnis.', 'fuchsia', '3sS6pSL', '7282', '339', 'https://www.crist.com/id-iure-et-rerum-porro-magnam', 0, 1, 0, 1, 1, 1, 0, 'uploads/product/132.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(340, 6, 3, 'Miss Elvie Gerhold Sr.', 'B075KHM8CF', 'miss-elvie-gerhold-sr', '29', 'Aut animi deleniti distinctio suscipit sed quae. Sit maiores eligendi consectetur eveniet dignissimos. Aut omnis quos doloremque et quasi. Unde rem sed et non.', 'black', 'PyFSASL', '5331', '4967', 'http://www.schamberger.com/', 0, 0, 1, 1, 1, 1, 0, 'uploads/product/133.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(341, 1, 6, 'Iva Ryan', 'B075VPZ6MK', 'iva-ryan', '40', 'Saepe harum ea aut. Ut similique occaecati non qui quisquam corporis doloribus enim. Voluptate a consequatur vel ut dolorem repellendus labore nisi.', 'green', '9vPdBSL', '3235', '2215', 'http://www.harvey.biz/ipsum-impedit-fuga-inventore-consectetur.html', 1, 0, 1, 1, 0, 0, 0, 'uploads/product/134.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(342, 1, 7, 'Miss Krystal Larkin V', 'B0762LYFKP', 'miss-krystal-larkin-v', '37', 'Ex et numquam iure vel. Unde autem enim fugiat consequatur qui. Ut odio ea consequatur eveniet eius rerum. Numquam sint esse tempora consequatur optio reprehenderit. Qui sed explicabo ut soluta asperiores voluptatem doloremque.', 'aqua', '6utPpSL', '7420', '806', 'http://www.mcdermott.com/harum-et-porro-atque', 0, 0, 0, 1, 0, 1, 0, 'uploads/product/135.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:01', '2020-10-11 14:25:01'),
(343, 4, 5, 'Ayana Lang IV', 'B07663BXQ5', 'ayana-lang-iv', '21', 'Corporis nihil voluptatem modi id voluptates sed. Aut placeat expedita sapiente error ut tempore labore. Unde vel exercitationem enim alias.', 'black', 'FCh32SL', '4155', '4608', 'http://hartmann.com/tempore-et-consequuntur-ducimus-itaque-iusto-nemo-animi-rerum.html', 0, 0, 1, 0, 0, 0, 0, 'uploads/product/136.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(344, 5, 8, 'Verlie Olson', 'B076B9CBVZ', 'verlie-olson', '40', 'Nisi quidem eum libero consequuntur. Et nulla ullam beatae voluptatem velit. Vitae corporis blanditiis nam dicta. Praesentium rerum eum qui qui molestias quia.', 'navy', 'btZ83SL', '7838', '199', 'http://www.hansen.com/reiciendis-dolorum-eos-neque-repudiandae-debitis-doloremque', 1, 0, 1, 1, 1, 0, 1, 'uploads/product/137.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(345, 4, 8, 'Mr. Mckenna Beer', 'B076JGK2KK', 'mr-mckenna-beer', '45', 'Quasi beatae mollitia ducimus aut. Beatae at qui quos ut quo corporis et. Impedit sint quam deserunt laboriosam.', 'black', '0TicBSL', '4071', '4579', 'http://www.dubuque.com/ullam-qui-amet-molestias-exercitationem-delectus-nam.html', 1, 0, 0, 1, 1, 0, 1, 'uploads/product/138.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(346, 6, 8, 'Prof. Spencer Hegmann IV', 'B076RW5LKG', 'prof-spencer-hegmann-iv', '46', 'Dolorem deleniti id et a quia. Expedita in suscipit rerum autem aspernatur et voluptate. Repudiandae voluptatem reiciendis explicabo nisi eum. Voluptatem deleniti quia occaecati iusto aut.', 'black', '60hR8SL', '5753', '877', 'http://www.effertz.com/molestiae-qui-ipsa-praesentium-est-deserunt-minus.html', 1, 1, 0, 1, 0, 1, 1, 'uploads/product/139.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(347, 4, 9, 'Estrella Swift', 'B077YCC84H', 'estrella-swift', '29', 'Quisquam veniam sit et voluptatem eius autem dolor. Ab ipsam sunt voluptas suscipit et harum officia. Non ab et dolore blanditiis. Expedita tempora culpa rem odio nobis quis voluptas.', 'yellow', 'D1RxMSL', '4815', '2121', 'http://www.stehr.com/vitae-facilis-quia-aliquid-optio.html', 1, 0, 0, 1, 0, 0, 0, 'uploads/product/140.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(348, 4, 2, 'Monte Lynch', 'B078SLLTYS', 'monte-lynch', '40', 'Explicabo sed ex eveniet illum molestias repudiandae nostrum. Et et nam est quo laborum. Ab quia repellat in est. Voluptates omnis ab adipisci omnis atque culpa eos. Cupiditate ducimus corrupti id a.', 'white', 'AHvUlSL', '8068', '3060', 'http://www.thiel.net/qui-maxime-ratione-rerum-aut-possimus', 0, 0, 1, 0, 1, 1, 1, 'uploads/product/141.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:02', '2020-10-11 14:25:02'),
(349, 2, 4, 'Charlotte Waters', 'B0797TPBPQ', 'charlotte-waters', '40', 'Eum provident officiis cum repellat itaque tempora vitae. Nesciunt a officia harum eum ut ut et. Voluptatibus soluta laboriosam sed iusto quo vitae. Et mollitia accusamus at et tempora. Omnis id nihil eius alias asperiores dicta.', 'lime', 'wGEfbSL', '5957', '586', 'http://www.hane.com/ea-rerum-consectetur-omnis-quod-possimus-amet', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/142.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:03', '2020-10-11 14:25:03'),
(350, 3, 8, 'Ruthie Kautzer', 'B0798P4ZHT', 'ruthie-kautzer', '42', 'Fuga distinctio quibusdam molestias neque rerum qui quae. Velit fuga architecto ipsam perspiciatis dolor. Qui quod et dolorem perspiciatis tempora. Qui et et rem voluptas qui ut.', 'purple', 'B0Tv2SL', '6814', '2226', 'http://www.schaefer.info/', 0, 0, 0, 0, 1, 0, 0, 'uploads/product/143.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:03', '2020-10-11 14:25:03'),
(351, 1, 8, 'Earnestine Rutherford', 'B079HNJLRC', 'earnestine-rutherford', '41', 'Ratione praesentium culpa aspernatur laudantium. Neque accusantium quis neque ullam. Aliquam aperiam ut dolore ea rerum. Alias sint fuga dicta dolores. Iste iste velit sunt eum.', 'maroon', 'uHVmLSL', '8837', '3813', 'http://goodwin.info/', 1, 0, 1, 0, 0, 1, 1, 'uploads/product/144.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:03', '2020-10-11 14:25:03'),
(352, 7, 4, 'Myrtie White IV', 'B079HP8774', 'myrtie-white-iv', '26', 'Sed reiciendis eligendi unde sed totam. Ratione voluptatem optio et. Sit consequatur distinctio neque occaecati.', 'teal', 'lm4glSL', '7809', '3392', 'http://larson.net/rerum-repellat-eos-minima-et-qui-ut', 0, 0, 0, 0, 1, 1, 0, 'uploads/product/145.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:03', '2020-10-11 14:25:03'),
(353, 1, 2, 'Prof. Margret Torphy', 'B079L3TT1L', 'prof-margret-torphy', '23', 'Et consequuntur alias eum est. Impedit repudiandae at possimus aut et eos accusantium. Dolore ipsa rerum facilis qui laudantium nisi fugit. Aliquam architecto nam delectus aut.', 'silver', 'mGnK7SL', '4166', '3763', 'http://www.greenfelder.org/', 1, 1, 0, 0, 1, 1, 0, 'uploads/product/146.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:04', '2020-10-11 14:25:04'),
(354, 2, 2, 'Mr. Deangelo Hintz', 'B079Y7RCZ6', 'mr-deangelo-hintz', '35', 'Officiis beatae laudantium eius id sit ea. Nemo nobis distinctio et. Necessitatibus sunt est dignissimos blanditiis deserunt voluptates rerum. Rerum quod quia mollitia dignissimos.', 'maroon', 'aUAHTSL', '8366', '3771', 'http://ruecker.net/', 1, 1, 1, 1, 1, 0, 1, 'uploads/product/147.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:04', '2020-10-11 14:25:04'),
(355, 7, 10, 'Roy Schuster', 'B079Z4VJS7', 'roy-schuster', '41', 'Nesciunt tempore occaecati aut aliquid occaecati earum. Quia quo pariatur iusto omnis.', 'navy', 'zYZ6JSL', '5573', '1200', 'http://www.robel.com/quas-distinctio-id-ducimus-facilis-voluptatem-quia-illo.html', 1, 1, 0, 0, 0, 0, 1, 'uploads/product/148.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:04', '2020-10-11 14:25:04'),
(356, 2, 10, 'Miss Rhianna Tromp PhD', 'B07BB3FK19', 'miss-rhianna-tromp-phd', '34', 'Perspiciatis cumque perspiciatis voluptatem et excepturi. Libero omnis aut quae minus harum. Laudantium et est ut vitae ipsam commodi praesentium voluptatem.', 'lime', 'NAyLwSL', '5703', '2299', 'http://mclaughlin.com/et-nemo-voluptas-saepe-similique-rem-et', 0, 0, 1, 1, 1, 0, 0, 'uploads/product/149.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:04', '2020-10-11 14:25:04'),
(357, 5, 7, 'Mrs. Bert Purdy', 'B07BC63XGB', 'mrs-bert-purdy', '39', 'Et possimus veniam eaque omnis. Id quod veniam aut sunt aspernatur aut eum. Est laborum saepe illo sunt ducimus.', 'fuchsia', 'pT8nESL', '8260', '1617', 'http://gaylord.com/aut-dignissimos-eos-nemo.html', 1, 0, 1, 0, 0, 0, 0, 'uploads/product/150.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:04', '2020-10-11 14:25:04'),
(358, 4, 4, 'Cathryn Daugherty', 'B07BC6R1M4', 'cathryn-daugherty', '36', 'Cum quia autem et dolor ipsam aut. Voluptates id non qui in explicabo. Illum est ab minima quia.', 'blue', 'jWTXrSL', '5301', '490', 'https://www.heaney.com/rerum-aut-odit-omnis-et-pariatur-debitis-voluptatem', 0, 0, 1, 1, 0, 1, 0, 'uploads/product/151.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(359, 4, 6, 'Miss Gracie Bosco III', 'B07BFTTF4D', 'miss-gracie-bosco-iii', '43', 'Et ipsum sit sint molestiae adipisci. Est deserunt hic aut maiores est. Adipisci voluptatem qui qui omnis. Sint necessitatibus quos fugit culpa id ratione. Sed in accusantium cum quibusdam nihil.', 'green', 'nIKUQSL', '4767', '4242', 'https://haag.biz/id-iste-consequuntur-illo-aut.html', 0, 0, 0, 0, 0, 1, 0, 'uploads/product/152.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(360, 3, 9, 'Mac Treutel Jr.', 'B07BGVBV8D', 'mac-treutel-jr', '49', 'Nesciunt eum ut quo quo. Iste delectus voluptatum tempora ut reprehenderit sit voluptas. Qui assumenda non quis quis aut.', 'black', 'CfN0nSL', '3194', '4084', 'http://www.dach.com/minima-molestias-veniam-voluptatum-alias-vel.html', 0, 1, 1, 1, 1, 0, 0, 'uploads/product/153.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(361, 2, 4, 'Dr. Dorothea Funk', 'B07BN1H7GW', 'dr-dorothea-funk', '48', 'Perferendis quae aperiam maiores eius perferendis. Est asperiores autem voluptatem harum officia molestias optio. Non commodi perferendis accusamus. Earum quis tempore facilis quod voluptatem dolor laudantium quod. Voluptatem dolores ea unde placeat.', 'green', 'ylw5ESL', '1346', '3952', 'http://www.muller.net/quam-ducimus-voluptas-molestiae-deserunt.html', 1, 0, 0, 1, 1, 1, 1, 'uploads/product/154.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(362, 1, 3, 'Margaretta Turcotte', 'B07BP4HX5Y', 'margaretta-turcotte', '46', 'Ipsam perspiciatis amet placeat eaque itaque. Vero eum voluptates laborum quod sapiente. Aliquam aut laudantium enim ullam et. Dolore sed et rerum distinctio aut pariatur voluptatum.', 'gray', 'U9qAJSL', '5412', '2086', 'http://white.biz/minima-a-possimus-sequi-est-laboriosam-rem-aut.html', 1, 0, 1, 1, 1, 0, 1, 'uploads/product/155.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(363, 2, 5, 'Prof. Julian Kohler DDS', 'B07BPC6F3C', 'prof-julian-kohler-dds', '26', 'Ullam quaerat dolores consequuntur fugiat beatae atque veniam. Modi et maxime magni velit quis ipsam qui. Dolor soluta velit et quam et mollitia vel et. A qui explicabo repellat qui minus sit ratione distinctio.', 'olive', 'L3pTaSL', '649', '2221', 'http://www.deckow.org/laboriosam-reiciendis-dolores-aperiam-aliquam-recusandae.html', 1, 1, 1, 0, 1, 1, 0, 'uploads/product/156.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(364, 6, 8, 'Ms. Beverly Leuschke V', 'B07BRB3XG3', 'ms-beverly-leuschke-v', '26', 'Corrupti rem fuga soluta. Adipisci praesentium non facere dolorum.', 'green', 'x6BJkSL', '2717', '4391', 'http://www.rodriguez.com/quos-quia-et-iste-nemo', 0, 0, 1, 0, 1, 0, 1, 'uploads/product/157.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(365, 7, 8, 'Brice Paucek', 'B07BSHR4KQ', 'brice-paucek', '29', 'Sint aspernatur dolor tempora fugiat. Provident quis dicta nobis veniam et. Sit non veritatis ea et sit voluptas. Sit laboriosam ut qui eveniet sed placeat alias.', 'black', 'vbhW3SL', '732', '4104', 'https://www.prosacco.net/modi-aut-sit-quas', 1, 0, 0, 1, 1, 1, 0, 'uploads/product/158.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(366, 1, 4, 'Mrs. Estrella Macejkovic', 'B07BSYV84S', 'mrs-estrella-macejkovic', '39', 'Quaerat eaque aspernatur nostrum animi vel. Velit exercitationem provident qui autem sint excepturi accusamus modi. Repudiandae temporibus magni et. Rem illo magnam quia quam consequatur qui sed.', 'maroon', '2TQD8SL', '6018', '3906', 'https://www.carroll.com/suscipit-dolor-vel-ab-qui-qui-consectetur', 0, 0, 1, 1, 0, 1, 0, 'uploads/product/159.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:06', '2020-10-11 14:25:06'),
(367, 1, 7, 'Myrtice Smith', 'B07BT9C5YP', 'myrtice-smith', '50', 'Quibusdam corrupti adipisci voluptas voluptas ea. Dolore odio minus voluptas explicabo ut rem.', 'olive', 'Ncq8hSL', '2074', '2277', 'http://schumm.com/voluptatem-harum-sed-sequi-nihil-expedita-esse-quas.html', 1, 0, 0, 1, 1, 1, 1, 'uploads/product/160.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:06', '2020-10-11 14:25:06'),
(368, 4, 9, 'Pat Crooks', 'B07BTWQ2QY', 'pat-crooks', '28', 'Et totam aliquid omnis aliquid veritatis vero. Iusto quia cum fugiat eos sed nemo iusto.', 'lime', 'F5ZDJSL', '4580', '4595', 'http://dooley.info/est-excepturi-adipisci-consequatur-distinctio', 1, 0, 1, 0, 0, 1, 1, 'uploads/product/161.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:06', '2020-10-11 14:25:06'),
(369, 3, 3, 'Mr. Jakob McKenzie', 'B07BVQ55T6', 'mr-jakob-mckenzie', '49', 'Culpa ut explicabo id cum. Consequuntur nemo quasi accusantium debitis sapiente rerum voluptas natus. Qui ut et et quis. Debitis aut nemo qui nobis voluptatem.', 'purple', 'LbcMUSL', '2884', '1963', 'https://www.kling.com/hic-vel-blanditiis-inventore-assumenda-tempore-dolorem-dolores', 1, 1, 0, 1, 0, 0, 0, 'uploads/product/162.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:06', '2020-10-11 14:25:06'),
(370, 7, 8, 'Heber Howe', 'B07BVQTYJK', 'heber-howe', '41', 'Est rerum ea molestiae quam sunt quia aliquam quo. Nihil ad quia quia repellendus provident non. Repellat cumque et odio labore inventore vel et.', 'silver', 'fWsHiSL', '9046', '3049', 'http://wiza.net/exercitationem-minus-deleniti-ipsam-maxime', 0, 0, 0, 1, 1, 1, 1, 'uploads/product/163.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:07', '2020-10-11 14:25:07'),
(371, 1, 9, 'Amie Walter', 'B07BW41B14', 'amie-walter', '42', 'Nostrum corrupti laboriosam ea sint dolor cupiditate itaque. Occaecati et nostrum maiores quos. Aliquid nihil numquam neque velit qui. Corrupti non nihil ab dolor cupiditate blanditiis. Quaerat corporis libero repellat natus vel.', 'navy', 'YllqjSL', '8288', '206', 'http://morar.com/', 0, 0, 0, 1, 0, 0, 1, 'uploads/product/164.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:07', '2020-10-11 14:25:07'),
(372, 5, 9, 'Mr. Jordan Streich MD', 'B07BXGKQDZ', 'mr-jordan-streich-md', '32', 'Non aut nulla mollitia eaque cumque. Quisquam officiis sint ullam veritatis veritatis. Adipisci excepturi laborum impedit placeat.', 'yellow', 'JmWesSL', '5314', '3177', 'http://morar.biz/', 0, 0, 0, 0, 0, 1, 0, 'uploads/product/165.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:07', '2020-10-11 14:25:07'),
(373, 2, 8, 'Ms. Elvie Pfeffer IV', 'B07BYJF7L7', 'ms-elvie-pfeffer-iv', '31', 'Commodi placeat voluptatum odio quia. Quibusdam molestiae quasi asperiores corrupti inventore placeat. Veritatis aliquid illum voluptas maiores. Rerum non quae velit alias et.', 'green', 'myzVQSL', '3858', '4528', 'http://satterfield.com/optio-ducimus-iure-officiis-in-perspiciatis-quis', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/166.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:07', '2020-10-11 14:25:07'),
(374, 6, 6, 'Antonina Rohan', 'B07BYLVT71', 'antonina-rohan', '24', 'Aut fugit et dolore ea eligendi omnis rerum voluptas. Iste laboriosam qui tenetur est fuga. Ullam nihil enim corrupti consequatur id omnis. Mollitia repudiandae omnis consequatur sit voluptas.', 'silver', 'SO5uQSL', '3872', '1870', 'http://daugherty.org/dignissimos-provident-et-illo-dolor-porro.html', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/167.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(375, 3, 1, 'Dr. Dandre Kozey DDS', 'B07C1H7W1L', 'dr-dandre-kozey-dds', '29', 'Maiores eius sit odio est eveniet quia et. Qui omnis doloribus earum repellat quam nisi. Eaque expedita culpa omnis rerum consequatur aliquid numquam.', 'aqua', 'Rmf0USL', '9251', '1092', 'http://www.dietrich.com/', 0, 1, 0, 1, 1, 1, 1, 'uploads/product/168.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(376, 6, 10, 'Augustine Kreiger', 'B07C1J5FNV', 'augustine-kreiger', '44', 'Voluptatibus quos et vitae est qui omnis. Similique illo velit cumque voluptatem. Dolorem reprehenderit similique harum non incidunt. Esse et amet quia nobis.', 'fuchsia', 'Sg8AySL', '2495', '2807', 'http://hauck.com/cupiditate-voluptatum-rerum-sequi-unde-animi-sint-magnam.html', 0, 0, 1, 0, 0, 0, 0, 'uploads/product/169.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(377, 6, 10, 'Prof. Amir Baumbach PhD', 'B07C1N3Y8L', 'prof-amir-baumbach-phd', '23', 'Ipsum eius id illo dolore tempora minima. Ut in quo esse numquam dolorum deleniti. Consequatur velit consequuntur atque omnis quo ipsa sint ut. Asperiores eaque eligendi aliquam ut sed asperiores eaque.', 'fuchsia', 'GynK6SL', '1255', '2093', 'https://swift.net/repellat-eveniet-tempore-quis.html', 1, 1, 0, 1, 0, 0, 0, 'uploads/product/170.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(378, 7, 4, 'Jarrell Pagac V', 'B07C2S3DMV', 'jarrell-pagac-v', '21', 'Quas autem consequuntur ut repudiandae rerum totam. Enim omnis asperiores sint est nobis autem ratione. Sit sit quia eveniet et.', 'aqua', 'bbvYESL', '6323', '1170', 'http://www.kuhn.com/', 1, 1, 1, 0, 1, 0, 0, 'uploads/product/171.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(379, 7, 1, 'Miss Samanta Nicolas', 'B07C2SPXMH', 'miss-samanta-nicolas', '37', 'Odit est facilis dolor aut dolor id. Reiciendis ex aliquam qui doloremque. Quam modi excepturi dolorem molestiae.', 'blue', 'RZX7ESL', '2739', '1173', 'http://www.spinka.com/mollitia-laudantium-et-iste-tenetur-explicabo.html', 0, 0, 0, 0, 0, 0, 1, 'uploads/product/172.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(380, 7, 4, 'Tiara Predovic', 'B07C2VR54L', 'tiara-predovic', '21', 'Assumenda nemo aut enim rem ut est beatae. Consequatur ipsam et sit mollitia non quia cum ut. Molestiae fuga atque magnam consectetur. Provident temporibus nobis ut non nam itaque.', 'black', 'vjoWLSL', '3713', '1273', 'http://franecki.org/voluptates-architecto-temporibus-culpa-vel-aut-ipsam', 0, 0, 0, 0, 0, 1, 0, 'uploads/product/173.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(381, 4, 3, 'Meredith Gleichner', 'B07C336J4Q', 'meredith-gleichner', '29', 'Nobis eos modi commodi dicta qui. In commodi ut quos voluptatem quia dolores soluta dolor. Ad eum voluptas repellat cupiditate et eos.', 'gray', 'QOHbjSL', '485', '2741', 'http://rau.com/commodi-culpa-quidem-voluptas-optio', 1, 1, 1, 1, 0, 1, 1, 'uploads/product/174.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(382, 3, 6, 'Michele Dicki', 'B07C3WCDLL', 'michele-dicki', '49', 'Fugit veritatis recusandae labore ducimus voluptatibus. Veniam id et aut velit facilis tempore consectetur et. Alias sapiente harum odio ut veniam. Ratione laudantium quasi officiis id perferendis nostrum ut dolores.', 'blue', '8c2tFSL', '5005', '4146', 'http://koss.com/consequuntur-blanditiis-repudiandae-aut-quisquam', 0, 1, 0, 1, 0, 0, 1, 'uploads/product/175.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:08', '2020-10-11 14:25:08'),
(383, 3, 4, 'Janessa Schmitt', 'B07C4PK9MX', 'janessa-schmitt', '34', 'Expedita ex non sunt eum architecto qui. Ut sed enim dolor ut autem. Qui commodi illo suscipit voluptatibus distinctio tempore.', 'maroon', 'kKnTVSL', '5850', '4984', 'http://hintz.info/ex-aliquid-laboriosam-rem-corporis.html', 1, 1, 0, 0, 0, 0, 0, 'uploads/product/176.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:09', '2020-10-11 14:25:09'),
(384, 3, 6, 'Mrs. Damaris Blick', 'B07C5GR9FW', 'mrs-damaris-blick', '28', 'Ab est nobis et. Sunt libero est ipsam necessitatibus minus alias.', 'navy', 'PxSyVSL', '2609', '866', 'http://www.moen.info/', 1, 1, 0, 0, 0, 0, 1, 'uploads/product/177.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:09', '2020-10-11 14:25:09'),
(385, 5, 3, 'Nico Will', 'B07C69T8W6', 'nico-will', '37', 'Ipsum esse iste quas ratione tenetur sunt porro. Nihil officia beatae qui doloremque. Itaque est repellat rem est accusamus.', 'black', 'd5RLjSL', '3730', '4079', 'http://ondricka.com/sed-hic-expedita-eum-officiis-quidem.html', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/178.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:09', '2020-10-11 14:25:09'),
(386, 7, 10, 'Prof. Maybelle Lehner', 'B07C6ZB5QG', 'prof-maybelle-lehner', '33', 'Omnis veritatis adipisci cupiditate nisi unde officiis. Et rem beatae esse dolorem. Earum est et vero. Ab harum velit ut quam maiores sed autem sint.', 'white', 'Yf2TiSL', '3706', '835', 'http://www.towne.biz/et-et-deleniti-consequatur-eos-aut.html', 0, 0, 1, 1, 1, 1, 0, 'uploads/product/179.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:09', '2020-10-11 14:25:09'),
(387, 4, 5, 'Prof. Sean Borer', 'B07C7LSGHS', 'prof-sean-borer', '47', 'Quis est voluptates tenetur et et facilis ipsam. Omnis qui fuga qui quaerat omnis nobis et. Quia est doloribus omnis vel ea.', 'teal', 'wVXR9SL', '7026', '1073', 'http://anderson.org/', 0, 1, 1, 0, 0, 0, 0, 'uploads/product/180.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:09', '2020-10-11 14:25:09'),
(388, 5, 1, 'Jordane Grant', 'B07C7PM7JX', 'jordane-grant', '48', 'Aspernatur minima expedita esse neque qui deleniti. Nisi sequi quos nihil nostrum exercitationem quis inventore enim. Suscipit eum et quod ea et ipsa blanditiis consequatur.', 'fuchsia', 'QaSsXSL', '9967', '4915', 'https://www.oreilly.com/deleniti-nam-placeat-doloribus-aut-quibusdam-qui-molestias', 1, 1, 1, 1, 0, 1, 0, 'uploads/product/181.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:14', '2020-10-11 14:25:14'),
(389, 7, 6, 'Dillan Turner', 'B07C7SF5Q8', 'dillan-turner', '44', 'Aperiam quos omnis totam voluptatibus sed. Aut aut aliquid aut voluptatum amet. Voluptatum ea laboriosam aut blanditiis. Temporibus eum amet deleniti quasi temporibus ut ut.', 'fuchsia', '8dXQySL', '1404', '3344', 'http://dach.com/libero-neque-aut-facere-omnis-quaerat.html', 1, 0, 0, 0, 0, 0, 0, 'uploads/product/182.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:14', '2020-10-11 14:25:14'),
(390, 1, 9, 'Princess Deckow', 'B07C8XGF63', 'princess-deckow', '24', 'Consequatur nostrum ab qui vero soluta qui hic quis. Impedit praesentium tempore consequatur illo amet quod. Non dolores molestiae nostrum facere dignissimos. Aperiam inventore eos aut excepturi aspernatur omnis veniam.', 'blue', 'SiP1iSL', '5260', '3765', 'http://www.howell.com/', 1, 1, 0, 1, 0, 1, 0, 'uploads/product/183.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:15', '2020-10-11 14:25:15'),
(391, 5, 5, 'Prof. Robyn Walter', 'B07C96N7TM', 'prof-robyn-walter', '47', 'Sed animi aperiam sunt dolorum natus et voluptatem. Enim tenetur vitae qui voluptas suscipit dolorem enim. Earum accusantium repudiandae qui ipsam velit autem. Velit itaque ratione nostrum natus est eum velit ipsum.', 'silver', 'B9Cu4SL', '8754', '1060', 'http://schamberger.com/odio-nemo-aspernatur-dolorem-sed-consequatur.html', 1, 1, 1, 1, 1, 1, 0, 'uploads/product/184.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:15', '2020-10-11 14:25:15'),
(392, 3, 5, 'Vernice Hagenes', 'B07C9L2MD2', 'vernice-hagenes', '34', 'Ab officia fuga sed animi facere. Ut dolorem dignissimos amet voluptas. Minima nisi voluptas eveniet dicta dolorem quo. Dignissimos accusamus ducimus et autem recusandae nihil.', 'silver', 'N2f8bSL', '8849', '3620', 'http://waters.com/quis-magnam-similique-nisi', 0, 0, 1, 0, 1, 0, 1, 'uploads/product/185.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:15', '2020-10-11 14:25:15'),
(393, 3, 7, 'Prof. Demarco Gerhold III', 'B07CBBD9GJ', 'prof-demarco-gerhold-iii', '23', 'Tenetur rem ex qui ea. Et error qui aut quibusdam est est. Id voluptatem cum laborum reprehenderit laudantium. Officiis voluptatem aut ab culpa qui architecto. Sit dolorem tempore voluptas recusandae et.', 'gray', 'wkuLvSL', '2482', '4992', 'http://www.beer.com/nostrum-adipisci-ut-et-beatae-itaque-ipsum', 0, 1, 0, 1, 1, 0, 1, 'uploads/product/186.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:15', '2020-10-11 14:25:15'),
(394, 5, 8, 'Jettie Mertz', 'B07CC5KFF3', 'jettie-mertz', '50', 'Deleniti autem autem fuga voluptas rerum culpa odit. Doloribus alias quaerat ut nisi molestiae rerum. Iste recusandae est autem. Repudiandae minima inventore id dolorum ipsa. Et magni aliquam beatae nisi veritatis eius.', 'white', 'tzKoCSL', '3522', '129', 'http://www.cassin.com/', 1, 0, 1, 1, 1, 0, 1, 'uploads/product/187.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(395, 4, 4, 'Melody Goldner', 'B07CG5X4DV', 'melody-goldner', '39', 'Quia consequuntur deserunt modi et. Nihil facere sit officiis odit fugiat. Alias eveniet impedit voluptate culpa esse. Corporis commodi error aut mollitia repellendus omnis neque iure.', 'lime', 'HPuKYSL', '7958', '4284', 'https://farrell.com/quo-dolores-dolorum-aliquam-id.html', 0, 1, 1, 1, 0, 0, 1, 'uploads/product/188.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(396, 7, 7, 'Bridget Yundt', 'B07CL5RH6S', 'bridget-yundt', '29', 'Ea libero et accusantium quia. Et voluptas corrupti voluptas libero. Pariatur ab omnis voluptatem deserunt cumque. Sit esse asperiores ad dignissimos.', 'gray', 'vNJF0SL', '9885', '835', 'http://www.walter.org/', 1, 0, 1, 0, 0, 0, 0, 'uploads/product/189.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(397, 2, 7, 'Ms. Lori Streich II', 'B07CMC3TBW', 'ms-lori-streich-ii', '24', 'Quos omnis quam repellendus voluptate nihil voluptate. Qui autem est ullam rerum numquam. Saepe dignissimos temporibus tempora voluptatem libero dolorem. Ratione et praesentium fuga doloribus aut.', 'navy', 'u1kTQSL', '9823', '4558', 'http://gulgowski.info/totam-ut-sint-totam-quia-fugiat-culpa', 1, 1, 0, 1, 1, 0, 1, 'uploads/product/190.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(398, 5, 1, 'Providenci Pagac', 'B07CMYXVF6', 'providenci-pagac', '46', 'Id quibusdam quo aspernatur maiores expedita perspiciatis minima quisquam. Vel perferendis vel iste qui quae non nemo. Corporis possimus non fugiat eius. Voluptatem in nobis est harum minus voluptates assumenda.', 'blue', 'Ce3pWSL', '1449', '604', 'http://www.carter.com/aut-ipsa-doloribus-ut.html', 1, 0, 0, 0, 0, 1, 0, 'uploads/product/191.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(399, 1, 10, 'Daphne Mraz II', 'B07CNRZ41H', 'daphne-mraz-ii', '24', 'Aliquam soluta aut beatae error qui. Cupiditate saepe dolorem id aperiam. Nulla culpa voluptas enim quidem.', 'lime', 'wzja9SL', '7598', '4207', 'http://yost.net/', 1, 0, 0, 0, 0, 0, 1, 'uploads/product/192.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(400, 1, 4, 'Dr. Quincy Moen', 'B07CRT1T99', 'dr-quincy-moen', '44', 'Est aut similique officia culpa veritatis ratione. Eos quo est excepturi deleniti qui labore. Omnis tempore maxime ex.', 'olive', 'fQHsYSL', '6511', '2243', 'http://fritsch.com/occaecati-tempora-aut-veritatis', 0, 0, 0, 0, 0, 1, 0, 'uploads/product/193.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:16', '2020-10-11 14:25:16'),
(401, 2, 1, 'Zoila Johns', 'B07CSLBFVC', 'zoila-johns', '48', 'Aperiam qui ipsa quo consequatur. Est et consectetur qui architecto et recusandae fuga. Autem veniam omnis odit iusto occaecati repellat. Autem eligendi ducimus et et. Quod molestiae alias omnis doloremque qui.', 'teal', 'emFNzSL', '5980', '111', 'http://ohara.com/', 0, 0, 0, 0, 1, 0, 0, 'uploads/product/194.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:17', '2020-10-11 14:25:17'),
(402, 6, 8, 'Cortney O\'Connell', 'B07CSMGKPW', 'cortney-oconnell', '45', 'Voluptatum dolorem cupiditate debitis ex et est. Ea sit est deserunt itaque ducimus.', 'purple', '40Mx4SL', '3845', '2449', 'http://nikolaus.biz/vero-qui-voluptas-sapiente-voluptatem', 0, 1, 0, 1, 0, 0, 1, 'uploads/product/195.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18'),
(403, 7, 7, 'Mr. Marc Graham', 'B07CX4VT8B', 'mr-marc-graham', '32', 'Impedit tenetur aut et. Assumenda reiciendis praesentium et voluptatem nisi. Dolor similique cum porro dolores nihil. Necessitatibus similique officiis vel nemo delectus.', 'yellow', 'aOMOvSL', '6992', '651', 'https://www.prohaska.org/dolores-necessitatibus-voluptate-voluptas-dolor-et-occaecati', 1, 0, 1, 0, 0, 1, 1, 'uploads/product/196.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18'),
(404, 4, 4, 'Prof. Francis Carroll PhD', 'B07CXYXCLT', 'prof-francis-carroll-phd', '43', 'Nihil ut maxime ut omnis minima nulla. Omnis dolorum enim omnis dolorum. Consequatur nihil optio in voluptatum error incidunt sint. Suscipit ut quod voluptatem.', 'teal', 's92GNSL', '3471', '4488', 'http://gusikowski.info/omnis-qui-optio-dolor-ut-illo-totam', 0, 1, 0, 0, 1, 0, 1, 'uploads/product/197.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18'),
(405, 5, 8, 'Asa Wolff MD', 'B07CXZQSDZ', 'asa-wolff-md', '20', 'Sunt inventore magnam porro praesentium. Accusantium et ut eligendi qui minus et. Reprehenderit enim nemo vitae illo dolorem laboriosam placeat molestiae. Quia voluptatem omnis maiores.', 'silver', 'nHdB3SL', '7572', '2027', 'http://www.sipes.com/quod-et-et-porro-quae-fugit-rem', 0, 0, 1, 1, 0, 1, 1, 'uploads/product/198.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18');
INSERT INTO `products` (`id`, `main_cate_id`, `product_cat_id`, `product_name`, `product_code`, `product_slug`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `product_stock`, `created_at`, `updated_at`) VALUES
(406, 3, 8, 'Damaris West', 'B07D2CRJKX', 'damaris-west', '23', 'Maxime in ducimus amet qui eius placeat. Dicta occaecati ut totam doloribus eum labore et. Tempore maxime ut cupiditate nihil tempore cum. Aspernatur voluptas quia dolor voluptatibus in architecto cupiditate.', 'navy', '6iQ1ySL', '9393', '1848', 'http://breitenberg.info/', 0, 0, 1, 1, 1, 0, 0, 'uploads/product/199.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18'),
(407, 4, 3, 'Alex Watsica', 'B07D4C2DZ7', 'alex-watsica', '40', 'Delectus nam voluptatibus soluta in dignissimos. Excepturi mollitia consectetur placeat vitae et impedit est. Vel autem quod adipisci ut dicta ab soluta.', 'lime', '7gyoXSL', '318', '1437', 'https://greenholt.org/sint-aut-et-molestias-voluptatem-corrupti-quidem-deserunt.html', 0, 1, 1, 1, 1, 1, 0, 'uploads/product/200.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:18', '2020-10-11 14:25:18'),
(408, 5, 3, 'Manuela Reichel I', 'B07D4CJGNG', 'manuela-reichel-i', '24', 'Ut enim quisquam est cumque. Qui reiciendis ut sint eligendi voluptate iure modi. Dolores dolorem iste voluptatem vel error officiis. Hic quod qui suscipit neque exercitationem.', 'fuchsia', 'a7ofRSL', '9186', '2368', 'https://www.toy.com/est-nesciunt-nobis-vero-aut-porro', 1, 0, 1, 0, 1, 1, 1, 'uploads/product/201.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:19', '2020-10-11 14:25:19'),
(409, 1, 3, 'Dr. Hayden Morissette V', 'B07D6DDQYG', 'dr-hayden-morissette-v', '47', 'Consequatur non deleniti beatae excepturi. Optio repellendus suscipit perferendis fuga ratione id. Rerum esse enim iusto dolore optio. Et aut quod quae eveniet laudantium eius debitis rem. Vero dolorem quidem incidunt in.', 'olive', 'cXFV6SL', '3011', NULL, 'http://kovacek.info/facilis-et-sunt-ut-odio.html', 0, 1, 1, 0, 1, 0, 1, 'uploads/product/202.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:19', '2020-10-11 14:25:19'),
(410, 1, 1, 'Mia Carter', 'B07D9GG444', 'mia-carter', '50', 'Iste repellat totam aut aliquid rerum. Reprehenderit et soluta voluptatibus officia in. Enim explicabo cumque cum dolorem nostrum occaecati.', 'navy', 'LkFOmSL', '1314', '3648', 'http://www.collins.org/sed-natus-porro-nostrum-dolore-alias-ut-atque', 1, 1, 0, 1, 1, 0, 0, 'uploads/product/203.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:19', '2020-10-11 14:25:19'),
(411, 3, 6, 'Kaci Willms', 'B07DD458VN', 'kaci-willms', '20', 'Omnis pariatur dolores dolor voluptates consectetur expedita. Quasi quisquam illo harum sed qui iure. Totam ratione consequuntur iure sit minima vel. Magnam vel et ut nemo.', 'blue', 'Mz9vpSL', '3220', '1289', 'http://www.kunze.biz/et-voluptatum-aperiam-magnam-eaque-voluptatem-et-quo-cum', 0, 0, 0, 0, 0, 0, 1, 'uploads/product/204.jpg', 'uploads/product/two.jpg', 'uploads/product/three.jpg', 1, 'Available', '2020-10-11 14:25:19', '2020-10-11 14:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `pcate_id` bigint(20) UNSIGNED NOT NULL,
  `mcate_id` int(11) NOT NULL,
  `pcate_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcate_icon` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcate_slug` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcate_position` int(11) DEFAULT NULL,
  `pcate_creator` int(11) NOT NULL,
  `pcate_status` int(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`pcate_id`, `mcate_id`, `pcate_name`, `pcate_icon`, `pcate_slug`, `pcate_position`, `pcate_creator`, `pcate_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'T-shirt', 'fa-bandcamp', 'men-tshirt', 1, 1, 1, '2020-09-07 14:14:18', NULL),
(2, 1, 'Jeans', 'fa-bandcamp', 'men-jeans', 2, 1, 1, '2020-09-07 14:14:18', NULL),
(3, 1, 'Panjabi', 'fa-bandcamp', 'men-panjabi', 4, 1, 1, '2020-09-07 14:21:32', NULL),
(4, 1, 'Walet', 'fa-bandcamp', 'men-walet', 3, 1, 1, '2020-09-07 14:18:32', NULL),
(5, 2, 'Saree', 'fa-bandcamp', 'women-saree', 1, 1, 1, '2020-09-07 14:21:56', NULL),
(6, 2, 'Kurti', 'fa-bandcamp', 'women-kurti', 4, 1, 1, '2020-09-07 14:18:56', NULL),
(7, 2, 'Hijab', 'fa-bandcamp', 'women-hijab', 2, 1, 1, '2020-09-07 14:26:30', NULL),
(8, 2, 'Watch', 'fa-bandcamp', 'women-watch', 3, 1, 1, '2020-09-07 14:21:30', NULL),
(9, 2, 'Jewelry', 'fa-bandcamp', 'women-jewelry', 5, 1, 1, '2020-09-07 14:23:08', NULL),
(10, 5, 'Mobile', 'fa-bandcamp', 'mobile', 1, 1, 1, '2020-09-07 14:25:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint(20) UNSIGNED NOT NULL,
  `sm_facebook` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_google` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_pinterest` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_instagram` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_skype` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_vimeo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_rss` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_youtube`, `sm_google`, `sm_pinterest`, `sm_instagram`, `sm_skype`, `sm_vimeo`, `sm_rss`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/uzzalbd.creative', '#', '#', NULL, NULL, '#', NULL, NULL, NULL, NULL, 1, '2020-07-12 13:23:04', '2020-08-28 15:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 5,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Creative Shaper', 'creative@gmail.com', '', NULL, '$2y$10$SDmE7.9I88PTvTfUEWq/Cu5VQ47LUPLTJ2hjo.3xzB3t9v5YNzi1q', 1, NULL, NULL, '2020-06-16 08:10:45', '2020-06-16 08:10:45'),
(2, 'Emran Khan', 'emran@gmail.com', '', NULL, '$2y$10$bmwPR8kOd1fFml098bmXoe61yhFPYLLhcjVwuCHVnSfCyKFQAt/Zq', 3, NULL, NULL, '2020-06-16 09:27:30', '2020-06-16 09:27:30'),
(3, 'Akib', 'akib@gmail.com', '', NULL, '$2y$10$Oz6L7r./g1BVzVpd62mDh.KhzX/tDJ0tyJ2rvUjWwBA1eTUTvRWtq', 2, NULL, NULL, '2020-06-16 09:30:15', '2020-06-16 09:30:15'),
(4, 'Azizul Hakim', 'azizul@gmail.com', '', NULL, '$2y$10$tFLC/LHspKgFLsC37OvrzuA.08sAyP.cvn9zfQC/OwwHAp5X7VyGC', 5, NULL, NULL, '2020-07-05 14:29:43', NULL),
(5, 'Monir Khan', 'monir@gmail.com', NULL, NULL, '$2y$10$lFHpD7rntL9iBRVNcnyPHutvVlkJD8wQ8eGCUXxX15mRlB6.X/l0a', 5, NULL, NULL, '2020-07-05 14:32:35', '2020-07-05 14:32:35'),
(6, 'Sheikh Monir Ul Bari', 'skmonir@gmail.com', '01877131600', NULL, '$2y$10$lgrUNcjAB2XBYPiDVK2x6.uPHH59uHA8nEEIOMomV4ADJ2Arkqw4a', 3, 'user_6_1593962139.png', NULL, '2020-07-05 14:54:09', '2020-07-05 15:15:39'),
(7, 'Masud Rana', 'masud@gmail.com', '01773272266', NULL, '$2y$10$vRWkyCAY05/cc6uxMAAH2uDOjCJiJISayyd4BCAy.WvxLMyQnvhPK', 1, 'user_7_1593960991.png', NULL, '2020-07-05 14:56:31', '2020-07-05 15:14:17'),
(8, 'Kazi Anawer', 'anawar@gmail.com', '01792993098', NULL, '$2y$10$d7SJNJWFJEgk6oUmKiNeP.cY/6GRbKJe7P/gwgnU3J27iPor2JE1W', 2, 'user_8_1593961074.png', NULL, '2020-07-05 14:57:54', '2020-07-05 14:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 1, '2020-07-03 15:57:47', NULL),
(2, 'Admin', 1, '2020-07-03 14:54:47', NULL),
(3, 'Author', 1, '2020-07-03 14:58:19', NULL),
(4, 'Editor', 1, '2020-07-03 13:58:17', NULL),
(5, 'Subscriber', 1, '2020-07-03 13:58:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`mcate_id`),
  ADD UNIQUE KEY `main_categories_mcate_name_unique` (`mcate_name`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`pcate_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `mcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `pcate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
