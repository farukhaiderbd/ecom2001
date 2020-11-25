-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 07:35 PM
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
(2, 'Fashion Able Design', 'Understanding understanding digital marketing.', 'Click More', '#', 'banner_2_1598627629.jpg', 'B205f491f2d3f975', 1, '2020-08-28 15:13:49', '2020-08-28 15:13:49');

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
(1, 'eCommerce', 'Bangladesh Best eCommerce Website', 'logo_1598624295.png', 'favicon_1594566014.png', 'flogo_1594566177.png', 1, '2020-07-12 08:31:18', '2020-08-28 14:18:15');

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
(12, '2020_10_03_220218_create_products_table', 10);

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
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
