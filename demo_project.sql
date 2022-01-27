-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 08:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image_path`, `caption`, `created_at`, `updated_at`) VALUES
(1, '270603597Banner1.jpg', 'Use Coupan code  #COUP12 to \r\nget upto 10% OFF on\r\n minimum shopping of above 500', NULL, '2022-01-19 04:44:09'),
(2, '940176414banner2.jpg', 'Use Coupan code  #MAX100 to get upto 10% OFF on minimum shopping of above 500', NULL, '2022-01-18 01:39:26'),
(4, '528170528banner3.jpg', 'Use Coupan code  #SHOP12 to get upto 10% OFF on minimum shopping of above 500', NULL, '2022-01-18 01:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'New models', '2022-01-15 02:10:45', '2022-01-15 02:10:45'),
(2, 'Laptop', 'New launches', '2022-01-15 03:22:12', '2022-01-15 03:22:12'),
(3, 'Glasses', 'New models', '2022-01-15 03:22:25', '2022-01-15 03:22:25'),
(4, 'Clothing', 'Casual', '2022-01-15 03:22:39', '2022-01-15 03:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `admin_email`, `notification_email`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'pm2792493@gmail.com', 7276024613, NULL, '2022-01-24 06:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'manoj', 'manoj@gmail.com', 7276024613, 'Hello guys', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `status`, `created_at`, `updated_at`) VALUES
(1, '#COUP12', 'percent', '10.00', '500.00', 0, NULL, '2022-01-24 03:19:13'),
(2, '#MAX100', 'percent', '10.00', '500.00', 1, NULL, NULL),
(3, '#SHOP12', 'fixed', '5.00', '500.00', 1, NULL, NULL),
(4, '#ECOM12', 'fixed', '5.00', '500.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_m_s_managements`
--

CREATE TABLE `c_m_s_managements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_m_s_managements`
--

INSERT INTO `c_m_s_managements` (`id`, `title`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '1003073350about-img-min-1.jpg', 'Find new men\'s suits, dress pants, dress shirts, chinos, jeans, and more all in one place at Eshooper. Whether you would like a brand new work wardrobe for your job, some casual pieces like shorts, joggers, and t-shirts for the weekend, or everyday essentials like shorts and trousers we\'ve got you covered. Shop clothing for men online or in-store today.\r\nEshooper is here to guide menswear customers to look their confident best for the moments that matter. Whether it’s a rental for your big day, a flexible work-to-weekend wardrobe, or a custom suit made only for you, our expertise ensures you\'ve got the perfect fit. Your satisfaction is the highest priority. If you\'re not completely happy with the fit, quality, or fabric of any item, you\'ll return your purchase within 90 days of the first sale.', NULL, '2022-01-15 15:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(14, '2022_01_13_081912_create_wishlists_table', 2),
(16, '2014_10_12_000000_create_users_table', 3),
(17, '2014_10_12_100000_create_password_resets_table', 3),
(18, '2019_08_19_000000_create_failed_jobs_table', 3),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(20, '2021_12_23_170601_create_roles_table', 3),
(21, '2021_12_25_052048_create_categories_table', 3),
(22, '2021_12_26_162615_create_banners_table', 3),
(23, '2021_12_29_075909_create_products_table', 3),
(24, '2021_12_30_040349_create_product_images_table', 3),
(25, '2021_12_30_040749_create_product_attributes_table', 3),
(26, '2021_12_30_041148_create_product_categories_table', 3),
(27, '2022_01_01_041000_create_coupons_table', 3),
(28, '2022_01_05_210529_create_contacts_table', 3),
(29, '2022_01_13_132322_create_wishlists_table', 3),
(30, '2022_01_03_092842_create_order_details_table', 4),
(31, '2022_01_13_192821_create_user_orders_table', 4),
(32, '2022_01_14_115736_create_user_addresses_table', 4),
(33, '2022_01_14_184120_create_c_m_s_managements_table', 4),
(34, '2022_01_15_173703_create_user_orders_table', 5),
(35, '2022_01_15_150744_create_configurations_table', 6),
(36, '2022_01_19_053310_create_user_orders_table', 7);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_id`, `name`, `quantity`, `price`, `sale_price`, `status`, `features`, `created_at`, `updated_at`) VALUES
(1, 1, 'hfj7fdpdhxws4kk0', 'Iphone SE', 1, '35499.00', '32300.00', 1, '128 GB ROM11.94 cm 4.7 inch HD Display', '2022-01-15 02:21:45', '2022-01-15 10:25:55'),
(2, 1, 'qep8w1y4ekgwok', 'SAMSUNG  M12', 1, '11350.00', '11350.00', 1, '4 GB RAM | 64 GB ROM', '2022-01-15 03:17:16', '2022-01-15 03:19:26'),
(3, 1, '4w8oowei2nt', 'realme 8 5G', 1, '16499.00', '15999.00', 1, '4 GB RAM | 128 GB ROM |', '2022-01-15 14:18:06', '2022-01-15 14:18:06'),
(4, 2, '293xuff7zs9wog', 'DELL Inspiron', 1, '42310.00', '42100.00', 1, 'DELL Inspiron Core i3 11th gen', '2022-01-15 14:25:55', '2022-01-15 14:25:55'),
(5, 2, 'z5ia89vzmhp', 'Hp', 1, '57990.00', '58000.00', 1, 'P Pavilion Ryzen 5 Hexa 5600H', '2022-01-15 14:29:33', '2022-01-15 14:29:33'),
(6, 2, 'dllcm3pybpwsk', 'Lenova', 1, '38999.00', '37999.00', 1, 'Lenovo IdeaPad 3 Core i3 10th Gen', '2022-01-15 14:34:08', '2022-01-15 14:34:08'),
(7, 3, '1j1plk8yu9z400', 'Green Glasses', 1, '201.00', '180.00', 1, 'Riding Glasses, UV Protection', '2022-01-15 14:41:01', '2022-01-15 14:41:01'),
(8, 3, 'qe3voxyz', 'Black glasses', 1, '200.00', '190.00', 1, 'UV Protection Aviator Sunglasses', '2022-01-15 14:46:26', '2022-01-15 14:46:43'),
(9, 3, 'q4ip520gatd', 'Orange glasses', 1, '1299.00', '1199.00', 1, 'LOUIS KOUROS Mirrored Square', '2022-01-15 14:50:50', '2022-01-15 14:50:50'),
(10, 4, '4g2ah6yio8sz', 'Casual teshirt', 1, '500.00', '551.00', 1, 'Solid Men Hooded Yellow T-Shirt', '2022-01-15 14:56:55', '2022-01-15 14:56:55'),
(11, 4, '1c3w628th', 'Zara tshirt', 1, '1000.00', '800.00', 1, 'Military Camou Men Round Neck', '2022-01-15 15:21:55', '2022-01-15 15:21:55'),
(12, 4, '12euiy4eef9e', 'Denim tshirt', 1, '1200.00', '1150.00', 1, 'Color Block Men Round Neck', '2022-01-15 15:24:26', '2022-01-15 15:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `products_id`, `quantity`, `price`, `features`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '35499.00', '128 GB ROM11.94 cm 4.7 inch HD Display', NULL, '2022-01-15 10:25:55'),
(2, 2, 1, '11350.00', '4 GB RAM | 64 GB ROM', NULL, '2022-01-15 03:19:26'),
(3, 3, 1, '16499.00', '4 GB RAM | 128 GB ROM |', NULL, NULL),
(4, 4, 1, '42310.00', 'DELL Inspiron Core i3 11th gen', NULL, NULL),
(5, 5, 1, '57990.00', 'P Pavilion Ryzen 5 Hexa 5600H', NULL, NULL),
(6, 6, 1, '38999.00', 'Lenovo IdeaPad 3 Core i3 10th Gen', NULL, NULL),
(7, 7, 1, '201.00', 'Riding Glasses, UV Protection', NULL, NULL),
(8, 8, 1, '200.00', 'UV Protection Aviator Sunglasses', NULL, '2022-01-15 14:46:43'),
(9, 9, 1, '1299.00', 'LOUIS KOUROS Mirrored Square', NULL, NULL),
(10, 10, 1, '500.00', 'Solid Men Hooded Yellow T-Shirt', NULL, NULL),
(11, 11, 1, '1000.00', 'Military Camou Men Round Neck', NULL, NULL),
(12, 12, 1, '1200.00', 'Color Block Men Round Neck', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_id`, `products_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2022-01-15 10:25:55'),
(2, 1, 2, NULL, '2022-01-15 03:19:26'),
(3, 1, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 3, 7, NULL, NULL),
(8, 3, 8, NULL, '2022-01-15 14:46:43'),
(9, 3, 9, NULL, NULL),
(10, 4, 10, NULL, NULL),
(11, 4, 11, NULL, NULL),
(12, 4, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, '1924463579iphone1.jpeg', NULL, NULL),
(2, 1, '1975036971iphone2.jpeg', NULL, NULL),
(3, 1, '1629865160Iphone3.jpeg', NULL, NULL),
(4, 1, '468815733Iphone4.jpeg', NULL, NULL),
(7, 2, '2748141834th.jpeg', NULL, NULL),
(8, 2, '1268267792Furst1.jpeg', NULL, NULL),
(9, 2, '584388574second.jpeg', NULL, NULL),
(10, 2, '749679140third.jpeg', NULL, NULL),
(11, 3, '645513104first.jpeg', NULL, NULL),
(12, 3, '724525473fourth.jpeg', NULL, NULL),
(13, 3, '877312652second.jpeg', NULL, NULL),
(14, 3, '991216567third.jpeg', NULL, NULL),
(15, 4, '978180217first.jpeg', NULL, NULL),
(16, 4, '1894661935fourth.jpeg', NULL, NULL),
(17, 4, '29638288second.jpeg', NULL, NULL),
(18, 4, '770079941third.jpeg', NULL, NULL),
(19, 5, '412711165first.jpeg', NULL, NULL),
(20, 5, '1181297846fourth.jpeg', NULL, NULL),
(21, 5, '992663543second.jpeg', NULL, NULL),
(22, 5, '1018466672thirds.jpeg', NULL, NULL),
(23, 6, '1386234844first.jpeg', NULL, NULL),
(24, 6, '575101566fourth.jpeg', NULL, NULL),
(25, 6, '548171786second.jpeg', NULL, NULL),
(26, 6, '2027688621third.jpeg', NULL, NULL),
(27, 7, '316510781first.jpeg', NULL, NULL),
(28, 7, '940411550fourth.jpeg', NULL, NULL),
(29, 7, '630395262second.jpeg', NULL, NULL),
(30, 7, '714614120third.jpeg', NULL, NULL),
(31, 8, '1671305446first.jpeg', NULL, NULL),
(32, 8, '926090525fourth.jpeg', NULL, NULL),
(33, 8, '730553982second.jpeg', NULL, NULL),
(34, 8, '92631087third.jpeg', NULL, NULL),
(35, 9, '1211620125first.jpeg', NULL, NULL),
(36, 9, '1610703127fourth.jpeg', NULL, NULL),
(37, 9, '5761232second.jpeg', NULL, NULL),
(38, 9, '1965754275third.jpeg', NULL, NULL),
(39, 10, '1530970199first.jpeg', NULL, NULL),
(40, 10, '1198978081fourth.jpeg', NULL, NULL),
(41, 10, '1399803179second.jpeg', NULL, NULL),
(42, 10, '310103762third.jpeg', NULL, NULL),
(43, 11, '864428521first.jpeg', NULL, NULL),
(44, 11, '1417850149fourth.jpeg', NULL, NULL),
(45, 11, '1386851033second.jpeg', NULL, NULL),
(46, 11, '2141662441third.jpeg', NULL, NULL),
(47, 12, '637544951first.jpeg', NULL, NULL),
(48, 12, '1058802719fourth.jpeg', NULL, NULL),
(49, 12, '1137300041second.jpeg', NULL, NULL),
(50, 12, '230460654third.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'super admin', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'inventory manager', NULL, NULL),
(4, 'order manager', NULL, NULL),
(5, 'customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role_type`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$u3vzRIcBIHofLcHq7OHgJ.O0GLFSiuvTLnplJutq0s6trAqR0vjVm', 'admin', 1, NULL, NULL, NULL, NULL),
(2, 'User', 'user', 'user@gmail.com', '$2y$10$sUh8vr5nABTCdEi6rCcGu.ofUG4uDy06cLzGP38jZmCHouN.djqGa', 'customer', 1, NULL, NULL, NULL, NULL),
(3, 'Prashant', 'mishra', 'prashant.mishra4801@gmail.com', '$2y$10$7lJyBdrXGB2xgMRcsqsyauFLbHV.rvPasHOTfmfFfJnP1wtwAaMuK', 'customer', 1, NULL, NULL, NULL, '2022-01-17 00:43:40'),
(4, 'vivek', 'singh', 'vivek@gmail.com', '$2y$10$Na9PW.ew.lSDxdV7kSmDp.alCBn1uYmVLNV0xTtT4C7Zbs6PhJ1Ra', 'customer', 1, NULL, NULL, NULL, NULL),
(5, 'nishant', 'mishra', 'nishant@gmail.com', '$2y$10$mCWtSxTLQlcRQaBfunXBsuv/bvtBQ3RKWAXItvnsDMZu6WIBdt79S', 'customer', 1, NULL, NULL, NULL, NULL),
(6, 'sumit', 'mishra', 'sumit@gmail.com', '$2y$10$Eh7jEMyaYfB.tD5kfKa.dul6wFfvaDL.R3NOcu268OlqImh2mZs2G', 'customer', 1, NULL, NULL, NULL, NULL),
(8, 'suraj', 'arya', 'surajarya745@gmail.com', '$2y$10$iFDvZ.KiL9CMjn/cDJyRC.dSox2L6LKdR/976t2uGA8i2L29OueC6', 'customer', 1, NULL, NULL, NULL, NULL),
(11, 'manisha', 'gupta', 'manishagupta456@gmail.com', '$2y$10$7Is8T5DYPS8QbA0bfRkyheGUtZLoLZOg6idgoIv3J7gDViBEeCkHG', 'customer', 1, NULL, NULL, NULL, NULL),
(12, 'dheeraj', 'patil', 'dheeraj.c.patil@gmail.com', '$2y$10$E/9jnbDNVmZvDYSU3xQF/esnaH3ooA2G/mekWd.2XKtuQGOOMB.Ai', 'customer', 1, NULL, NULL, NULL, NULL),
(13, 'Roshni', 'dharkar', 'roshnidharkar.111@gmail.com', '$2y$10$vINZVy1o9AS0gljAIk2EceE5JmKj/.7Kowrp1H2mMLVXZomT3DTwO', 'customer', 1, NULL, NULL, NULL, NULL),
(14, 'nishant', 'mishra', 'nishantmishra101@gmail.com', '$2y$10$4wIyJVU8u5Dqt92Klvh3u.F/Aj21D52QHZAhDyfgxRbSjIO2HY8iK', 'customer', 1, NULL, NULL, NULL, NULL),
(15, 'devesh', 'jadhav', 'deveshjadhav982@gmail.com', '$2y$10$TZyeh2jDUASePCHrfc5ygefz2QsUHQfOLJSAD8uEMBdsE9CA5S4zC', 'customer', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `postal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_email`, `name`, `address`, `phone`, `postal`, `created_at`, `updated_at`) VALUES
(1, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(16, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081318, 410203, NULL, NULL),
(17, 'deveshjadhav982@gmail.com', 'devesh', 'mumbai', 7776081319, 410203, NULL, NULL),
(18, 'p@gmail.com', 'pawan', 'mumbai', 7776081318, 410203, NULL, NULL),
(19, 'manishagupta456@gmail.com', 'manisha', 'mumbai', 7776081318, 410203, NULL, NULL),
(20, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081318, 410203, NULL, NULL),
(21, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(22, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(23, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081318, 410203, NULL, NULL),
(24, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(25, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081318, 410203, NULL, NULL),
(26, 'deveshjadhav982@gmail.com', 'devesh', 'mumbai', 7776081318, 410203, NULL, NULL),
(27, 'prashant.mishra4801@gmail.com', 'prashant', 'ssss', 7776081318, 410203, NULL, NULL),
(28, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081317, 410203, NULL, NULL),
(29, 'dheeraj.c.patil@gmail.com', 'dheeraj', 'mumbai', 7776088888, 410203, NULL, NULL),
(30, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776088888, 410203, NULL, NULL),
(31, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(32, 'prashant.mishra4801@gmail.com', 'aaaaaa', 'mumbai', 7776081318, 410203, NULL, NULL),
(33, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(34, 'prashant.mishra4801@gmail.com', 'prashant', 'aaa', 7776088888, 410203, NULL, NULL),
(35, 'prashant.mishra4801@gmail.com', 'prashant', 'sss', 7776088888, 410203, NULL, NULL),
(36, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(37, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(38, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(39, 'admin@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL),
(40, 'prashant.mishra4801@gmail.com', 'devesh', 'ssssssssss', 7776088888, 410203, NULL, NULL),
(41, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776088888, 410203, NULL, NULL),
(42, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776088888, 410203, NULL, NULL),
(43, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776088888, 410203, NULL, NULL),
(44, 'roshnidharkar.111@gmail.com', 'Roshni', 'pen', 7776081317, 410202, NULL, NULL),
(45, 'nishantmishra101@gmail.com', 'nishant', 'mumbai', 7776081319, 410203, NULL, NULL),
(46, 'admin@gmail.com', 'devesh', 'mumbai', 7776081319, 410203, NULL, NULL),
(47, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081318, 410203, NULL, NULL),
(48, 'prashant.mishra4801@gmail.com', 'prashant', 'mumbai', 7776081319, 410203, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paidAmount` int(11) NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`id`, `orderId`, `email`, `product_name`, `product_image`, `product_price`, `product_quantity`, `coupon_code`, `amount`, `paidAmount`, `payment_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, '67519', 'prashant.mishra4801@gmail.com', 'Iphone SE', '1924463579iphone1.jpeg', 35499, '1', '#COUP12', 35499, 31949, 'COD', 'cancelled', NULL, '2022-01-25 06:55:32'),
(22, '14228', 'nishantmishra101@gmail.com', 'Iphone SE', '1924463579iphone1.jpeg', 35499, '1', NULL, 35499, 35499, 'COD', 'pending', NULL, NULL),
(23, '37653', 'deveshjadhav982@gmail.com', 'Iphone SE', '1924463579iphone1.jpeg', 35499, '1', NULL, 35499, 35499, 'COD', 'pending', NULL, NULL),
(24, '39452', 'prashant.mishra4801@gmail.com', 'realme 8 5G', '645513104first.jpeg', 16499, '1', '#MAX100', 16499, 14849, 'COD', 'pending', NULL, NULL),
(25, '55767', 'prashant.mishra4801@gmail.com', 'Lenova', '1386234844first.jpeg', 38999, '1', NULL, 38999, 38999, 'COD', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_email`, `pro_id`, `product_id`, `product_name`, `product_price`, `image_path`, `created_at`, `updated_at`) VALUES
(3, 'prashant.mishra4801@gmail.com', 5, 'z5ia89vzmhp', 'Hp', '57990.00', 'http://127.0.0.1:8000/uploads/412711165first.jpeg', NULL, NULL),
(4, 'nishant@gmail.com', 5, 'z5ia89vzmhp', 'Hp', '57990.00', 'http://127.0.0.1:8000/uploads/412711165first.jpeg', NULL, NULL),
(5, 'prashant.mishra4801@gmail.com', 8, 'qe3voxyz', 'Black glasses', '200.00', 'http://127.0.0.1:8000/uploads/1671305446first.jpeg', NULL, NULL),
(6, 'deveshjadhav982@gmail.com', 10, '4g2ah6yio8sz', 'Casual teshirt', '500.00', 'http://127.0.0.1:8000/uploads/1530970199first.jpeg', NULL, NULL),
(7, 'manishagupta456@gmail.com', 5, 'z5ia89vzmhp', 'Hp', '57990.00', 'http://127.0.0.1:8000/uploads/412711165first.jpeg', NULL, NULL),
(8, 'prashant.mishra4801@gmail.com', 1, 'hfj7fdpdhxws4kk0', 'Iphone SE', '35499.00', 'http://127.0.0.1:8000/uploads/1924463579iphone1.jpeg', NULL, NULL),
(9, 'dheeraj.c.patil@gmail.com', 1, 'hfj7fdpdhxws4kk0', 'Iphone SE', '35499.00', 'http://127.0.0.1:8000/uploads/1924463579iphone1.jpeg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `c_m_s_managements`
--
ALTER TABLE `c_m_s_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_products_id_foreign` (`products_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`),
  ADD KEY `product_categories_products_id_foreign` (`products_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_products_id_foreign` (`products_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `c_m_s_managements`
--
ALTER TABLE `c_m_s_managements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
