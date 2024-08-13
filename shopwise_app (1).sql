-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 02:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopwise_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `featured_status`, `created_at`, `updated_at`) VALUES
(1, 'Watch Zone', 'We fsdkldafjkalsd', 'upload/brand-images/brandwatch.jpg', 0, '2023-10-25 05:45:26', '2023-10-25 05:45:26'),
(3, 'Vincent', 'Vincent Chase Full Rim Wayfarer Sunglasses', 'upload/brand-images/brand3.jpg', 0, '2023-10-25 06:18:20', '2023-10-25 06:18:20'),
(4, 'B & j', 'We Pldufsajdsfkjlkjdsafkjldsfa', 'upload/brand-images/brand5.png', 0, '2023-10-25 06:49:22', '2023-10-25 06:49:22'),
(5, 'Vision', 'VISION Electronics: Buy LED TV, Refrigerator, AC, Fan', 'upload/brand-images/brand8.jpg', 0, '2023-10-28 10:59:40', '2023-10-28 10:59:40'),
(6, 'Huawei', 'Huawei - Building a Fully Connected, Intelligent World', 'upload/brand-images/brand9.jpg', 0, '2023-11-01 22:53:13', '2023-11-01 22:53:13'),
(7, 'BD Bags Collection', 'RuSu is a Fashion brand based in Bangladesh.Always get High quality product with reasonable price', 'upload/brand-images/brand4.jpg', 0, '2023-11-05 01:26:31', '2023-11-05 01:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `featured_status`, `created_at`, `updated_at`) VALUES
(1, 'Watch', 'This is watch category', 'upload/category-images/goldwatch.jpg', 0, '2023-10-25 05:37:51', '2023-10-25 05:37:51'),
(3, 'sunglasses', 'This is sunglass category', 'upload/category-images/sunglass.jpg', 0, '2023-10-25 06:14:14', '2023-10-25 06:14:14'),
(4, 'Mobole Cover', 'this is co;adlsdfsa;l;k', 'upload/category-images/phonecover4.jpg', 0, '2023-10-25 08:35:53', '2023-10-25 08:35:53'),
(5, 'Electronics', 'This is category description', 'upload/category-images/electronic2.png', 0, '2023-10-28 10:55:08', '2023-10-28 10:55:08'),
(6, 'Bags', 'This is bags Category', 'upload/category-images/bag.jpg', 0, '2023-11-05 01:16:34', '2023-11-05 01:16:34'),
(7, 'Headphones', 'Thsi is Headphones category', 'upload/category-images/headphone4.jpg', 0, '2024-01-11 05:09:32', '2024-01-11 05:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount_amount` double(10,2) NOT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `customer_id`, `code`, `discount_amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'suma', 200.00, 'fixed', 1, '2023-11-21 06:15:21', '2023-11-21 06:15:21'),
(2, NULL, 'Afrin', 500.00, 'fixed', 1, '2023-11-21 09:10:21', '2023-11-23 13:44:23'),
(4, NULL, 'bely', 100.00, 'percent', 0, '2023-11-23 10:37:17', '2023-11-23 12:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `nid`, `address`, `date_of_birth`, `blood_group`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sadika', 'sadika@gmail.com', '876433', '$2y$10$6IK7PJ9E4KW7L3skdJAO7.RMl5q6Di891F7Pjz7AzIgftJNW.zwGa', NULL, NULL, NULL, NULL, NULL, '2023-10-27 08:35:21', '2024-05-10 07:21:01'),
(3, 'Kotha', 'kotha@gmail.com', '32344454354334', '$2y$10$hAk01mQJh.t5Fxgfd2OL5uGcRzQofIIKvr.8RsHucxj2IUs9iHGr6', NULL, NULL, NULL, NULL, NULL, '2023-10-28 05:42:08', '2023-10-28 05:42:08'),
(4, 'Halima', 'halima@gmail.com', '12800673213', '$2y$10$wt5/R99vZWKp./lTNpU/mONds4BylEYO1Zi0wV4X4y2M1ZLNfUrNa', NULL, NULL, NULL, NULL, NULL, '2023-10-28 06:52:04', '2024-04-19 21:57:27'),
(5, 'Khadiza', 'kadiza@gmail.com', '238657563654', '$2y$10$e1YJKSsoCxV4R9H.VB.oIeiJeSAdnh6dFfxIE4l2Qn3lVoyjNwNje', NULL, NULL, NULL, NULL, NULL, '2023-11-27 11:41:11', '2023-11-27 11:41:11'),
(6, 'Roja', 'roja@gmail.com', '458973480', '$2y$10$etbmSZ5f08oufLUVCzIqwupaVGUp94OBlSsquAlNvCRgSbSOdT9du', NULL, NULL, NULL, NULL, NULL, '2023-12-05 07:43:03', '2023-12-05 07:43:03'),
(7, 'taniya', 'admin@gmail.com', '12345678', '$2y$10$KexwbYl/uE8aFYzOV0K3Kev16Wm1znREhUREtrywWYkDmqAECsTmG', NULL, NULL, NULL, NULL, NULL, '2024-08-12 18:26:43', '2024-08-12 18:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_23_040531_create_sessions_table', 1),
(7, '2023_10_23_092301_create_categories_table', 1),
(8, '2023_10_23_125157_create_sub_categories_table', 1),
(9, '2023_10_23_164400_create_brands_table', 1),
(10, '2023_10_24_052908_create_units_table', 1),
(11, '2023_10_24_072332_create_products_table', 1),
(12, '2023_10_24_110651_create_other_images_table', 1),
(13, '2023_10_27_122735_create_orders_table', 2),
(14, '2023_10_27_122812_create_customers_table', 2),
(15, '2023_10_27_122853_create_order_details_table', 2),
(16, '2023_10_30_060343_add_courier_id_column_to_orders_table', 3),
(17, '2023_11_03_152516_add_product_status_to_products', 4),
(20, '2023_11_15_033036_create_coupons_table', 5),
(21, '2023_11_25_123347_add-coupon_id_column_to_order_table', 6),
(22, '2023_11_27_164013_add_coupon_id_to_orders_table', 7),
(24, '2023_12_22_103604_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `discount_amount` double DEFAULT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_amount` varchar(255) NOT NULL DEFAULT '0',
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0,
  `coupon_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `discount_amount`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `payment_method`, `payment_status`, `payment_amount`, `currency`, `transaction_id`, `created_at`, `updated_at`, `courier_id`, `coupon_id`) VALUES
(1, 1, 7525, 1925, 100, 0, '2023-10-27', '1698364800', 'Pending', 'Dhaka', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-10-27 08:35:21', '2023-10-27 08:35:21', 0, 0),
(2, 1, 11575, 2975, 100, 0, '2023-10-27', '1698364800', 'Pending', 'savar', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-10-27 09:11:09', '2023-10-27 09:11:09', 0, 0),
(3, 3, 1045, 245, 100, 0, '2023-10-28', '1698451200', 'Processing', 'Komolapur', 'Processing', 'cash', 'Processing', '1045', 'BDT', NULL, '2023-10-28 05:42:08', '2023-10-30 00:24:54', 2, 0),
(4, 4, 573, 123, 100, 0, '2023-10-30', '1698624000', 'Pending', 'Signboard', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-10-30 08:39:00', '2023-10-30 08:39:00', 0, 0),
(7, 4, 1045, 245, 100, 0, '2023-10-30', '1698624000', 'Pending', 'Dhanmondi', 'Pending', 'online', 'Pending', '0', 'BDT', '653fe3c7af2c7', '2023-10-30 11:11:35', '2023-10-30 11:11:35', 0, 0),
(8, 23223, 23, 350, 200, 0, '2023-10-30', '1698624000', 'Pending', 'ddds', 'Pending', 'online', 'Pending', '0', 'BDT', '653fe51f6e008', NULL, NULL, 0, 0),
(9, 4, 1990, 490, 100, 0, '2023-10-30', '1698624000', 'Pending', 'Signboard', 'Pending', 'online', 'Pending', '0', 'BDT', '653fe65977d74', '2023-10-30 11:22:33', '2023-10-30 11:22:33', 0, 0),
(10, 4, 4150, 1050, 100, 0, '2023-10-30', '1698624000', 'Cancel', 'sdad', 'Cancel', 'online', 'Cancel', '0', 'BDT', '653fefd5ac349', '2023-10-30 12:03:01', '2023-10-31 03:41:33', 1, 0),
(12, 3, 573, 123, 100, 0, '2023-10-30', '1698624000', 'Complete', 'Motijhil', 'Complete', 'online', 'Complete', '573', 'BDT', '653ff9c840317', '2023-10-30 12:45:28', '2023-10-31 02:32:22', 0, 0),
(13, 3, 1450, 350, 100, 0, '2023-11-02', '1698883200', 'Pending', 'Mugda', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-02 03:54:27', '2023-11-02 03:54:27', 0, 0),
(14, 4, 2125, 525, 100, 0, '2023-11-25', '1700870400', 'Pending', 'dssd', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-25 09:54:00', '2023-11-25 09:54:00', 0, 0),
(15, 1, 773, 123, 100, 0, '2023-11-26', '1700956800', 'Pending', 'Mugda', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-26 01:37:42', '2023-11-26 01:37:42', 0, 0),
(16, 5, 1920, 420, 100, 200, '2023-11-27', '1701043200', 'Pending', 'mirpur', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-27 12:01:03', '2023-11-27 12:01:03', 0, 1),
(17, 5, 7930, 2030, 100, NULL, '2023-11-28', '1701129600', 'Pending', 'ssd', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-28 10:45:40', '2023-11-28 10:45:40', 0, 0),
(18, 5, 2125, 525, 100, NULL, '2023-11-28', '1701129600', 'Pending', 'dhads', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-28 10:47:56', '2023-11-28 10:47:56', 0, 0),
(19, 5, 2125, 525, 100, NULL, '2023-11-28', '1701129600', 'Pending', 'dhads', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-11-28 10:48:45', '2023-11-28 10:48:45', 0, 0),
(20, 1, 4150, 1050, 100, NULL, '2023-12-24', '1703376000', 'Pending', 'fdaadf', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-12-24 10:56:37', '2023-12-24 10:56:37', 0, 0),
(21, 1, 1045, 245, 100, NULL, '2023-12-24', '1703376000', 'Pending', 'dhaka', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-12-24 12:27:59', '2023-12-24 12:27:59', 0, 0),
(22, 1, 2935, 735, 100, NULL, '2023-12-24', '1703376000', 'Pending', 'mugda', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-12-24 12:30:18', '2023-12-24 12:30:18', 0, 0),
(23, 1, 2935, 735, 100, NULL, '2023-12-24', '1703376000', 'Pending', 'Mirpur', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-12-24 12:32:03', '2023-12-24 12:32:03', 0, 0),
(24, 1, 1990, 490, 100, NULL, '2023-12-30', '1703894400', 'Pending', 'dekha', 'Pending', 'online', 'Pending', '0', 'BDT', '658fb56c75f2a', '2023-12-30 00:15:08', '2023-12-30 00:15:08', 0, 0),
(25, 1, 1990, 490, 100, NULL, '2023-12-30', '1703894400', 'Pending', 'dekha', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-12-30 00:15:19', '2023-12-30 00:15:19', 0, 0),
(26, 1, 573, 123, 100, NULL, '2023-12-30', '1703894400', 'Complete', 'dhaka', 'Complete', 'online', 'Complete', '573', 'BDT', '65902306702e1', '2023-12-30 08:02:46', '2024-01-10 01:44:59', 0, 0),
(27, 1, 1245, 245, 100, 200, '2024-01-01', '1704067200', 'Complete', 'dahkha', 'Complete', 'online', 'Complete', '1245', 'BDT', '6592ca1d8f124', '2024-01-01 08:20:13', '2024-01-10 01:36:56', 2, 1),
(28, 4, 1180, 280, 100, NULL, '2024-01-11', '1704931200', 'Pending', 'Lolmatiya', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2024-01-11 04:58:24', '2024-01-11 04:58:24', 0, 0),
(29, 1, 2395, 595, 100, NULL, '2024-05-10', '1715299200', 'Pending', 'Mugda Medical College, Dhaka', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2024-05-10 07:22:00', '2024-05-10 07:22:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Artificial Leather Wrist Watch', '1000', '2', '2023-10-27 08:35:21', '2023-10-27 08:35:21'),
(2, 1, 2, 'Retro Sunglasses', '700', '5', '2023-10-27 08:35:21', '2023-10-27 08:35:21'),
(3, 2, 3, 'Artificial Leather Wrist Watch', '1000', '2', '2023-10-27 09:11:09', '2023-10-27 09:11:09'),
(4, 2, 2, 'Retro Sunglasses', '700', '5', '2023-10-27 09:11:09', '2023-10-27 09:11:09'),
(5, 2, 1, 'Smart Watch', '1500', '2', '2023-10-27 09:11:09', '2023-10-27 09:11:09'),
(6, 3, 2, 'Retro Sunglasses', '700', '1', '2023-10-28 05:42:08', '2023-10-28 05:42:08'),
(7, 4, 4, 'Handheld Small Fan', '350', '1', '2023-10-30 08:39:00', '2023-10-30 08:39:00'),
(8, 7, 2, 'Retro Sunglasses', '700', '1', '2023-10-30 11:11:35', '2023-10-30 11:11:35'),
(9, 9, 2, 'Retro Sunglasses', '700', '2', '2023-10-30 11:22:33', '2023-10-30 11:22:33'),
(10, 10, 3, 'Artificial Leather Wrist Watch', '1000', '3', '2023-10-30 12:03:01', '2023-10-30 12:03:01'),
(11, 12, 4, 'Handheld Small Fan', '350', '1', '2023-10-30 12:45:28', '2023-10-30 12:45:28'),
(12, 13, 3, 'Artificial Leather Wrist Watch', '1000', '1', '2023-11-02 03:54:27', '2023-11-02 03:54:27'),
(13, 14, 8, 'Mini Colorblock Square Bag', '1500', '1', '2023-11-25 09:54:00', '2023-11-25 09:54:00'),
(14, 15, 4, 'Handheld Small Fan', '350', '1', '2023-11-26 01:37:42', '2023-11-26 01:37:42'),
(15, 16, 7, 'Mini Square Bag Stitch Top Handle Solid Color', '1200', '1', '2023-11-27 12:01:03', '2023-11-27 12:01:03'),
(16, 17, 2, 'Retro Sunglasses', '700', '4', '2023-11-28 10:45:40', '2023-11-28 10:45:40'),
(17, 17, 1, 'Smart Watch', '1500', '2', '2023-11-28 10:45:40', '2023-11-28 10:45:40'),
(18, 18, 1, 'Smart Watch', '1500', '1', '2023-11-28 10:47:56', '2023-11-28 10:47:56'),
(19, 19, 1, 'Smart Watch', '1500', '1', '2023-11-28 10:48:45', '2023-11-28 10:48:45'),
(20, 20, 1, 'Smart Watch', '1500', '2', '2023-12-24 10:56:37', '2023-12-24 10:56:37'),
(21, 21, 2, 'Retro Sunglasses', '700', '1', '2023-12-24 12:27:59', '2023-12-24 12:27:59'),
(22, 22, 2, 'Retro Sunglasses', '700', '3', '2023-12-24 12:30:18', '2023-12-24 12:30:18'),
(23, 23, 2, 'Retro Sunglasses', '700', '3', '2023-12-24 12:32:03', '2023-12-24 12:32:03'),
(24, 24, 2, 'Retro Sunglasses', '700', '2', '2023-12-30 00:15:08', '2023-12-30 00:15:08'),
(25, 26, 4, 'Handheld Small Fan', '350', '1', '2023-12-30 08:02:46', '2023-12-30 08:02:46'),
(26, 27, 2, 'Retro Sunglasses', '700', '1', '2024-01-01 08:20:13', '2024-01-01 08:20:13'),
(27, 28, 9, 'Small wallet  femaleKorean version', '400', '2', '2024-01-11 04:58:24', '2024-01-11 04:58:24'),
(28, 29, 3, 'Artificial Leather Wrist Watch', '1000', '1', '2024-05-10 07:22:00', '2024-05-10 07:22:00'),
(29, 29, 2, 'Retro Sunglasses', '700', '1', '2024-05-10 07:22:00', '2024-05-10 07:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/product-other-images/smartwatch2.jpg', '2023-10-25 06:54:26', '2023-10-25 06:54:26'),
(2, 1, 'upload/product-other-images/smartwatch3.jpg', '2023-10-25 06:54:26', '2023-10-25 06:54:26'),
(3, 1, 'upload/product-other-images/smartwatch4.jpg', '2023-10-25 06:54:26', '2023-10-25 06:54:26'),
(4, 1, 'upload/product-other-images/smartwatch5.jpg', '2023-10-25 06:54:26', '2023-10-25 06:54:26'),
(5, 2, 'upload/product-other-images/sunglass2.jpg', '2023-10-25 06:59:04', '2023-10-25 06:59:04'),
(6, 2, 'upload/product-other-images/sunglass3.jpg', '2023-10-25 06:59:05', '2023-10-25 06:59:05'),
(7, 2, 'upload/product-other-images/sunglass4.jpg', '2023-10-25 06:59:05', '2023-10-25 06:59:05'),
(8, 2, 'upload/product-other-images/sunglass5.jpg', '2023-10-25 06:59:05', '2023-10-25 06:59:05'),
(9, 3, 'upload/product-other-images/watch.jpg', '2023-10-25 13:00:56', '2023-10-25 13:00:56'),
(10, 3, 'upload/product-other-images/watch2jpg.jpg', '2023-10-25 13:00:56', '2023-10-25 13:00:56'),
(11, 3, 'upload/product-other-images/watch3.jpg', '2023-10-25 13:00:56', '2023-10-25 13:00:56'),
(12, 3, 'upload/product-other-images/watch4.jpg', '2023-10-25 13:00:56', '2023-10-25 13:00:56'),
(13, 3, 'upload/product-other-images/watch5.jpg', '2023-10-25 13:00:56', '2023-10-25 13:00:56'),
(14, 4, 'upload/product-other-images/fan.jpg', '2023-10-28 11:07:38', '2023-10-28 11:07:38'),
(15, 4, 'upload/product-other-images/fan2.jpg', '2023-10-28 11:07:38', '2023-10-28 11:07:38'),
(16, 4, 'upload/product-other-images/fan3.jpg', '2023-10-28 11:07:38', '2023-10-28 11:07:38'),
(17, 4, 'upload/product-other-images/fan4.jpg', '2023-10-28 11:07:38', '2023-10-28 11:07:38'),
(18, 5, 'upload/product-other-images/phonecover5.jpg', '2023-11-01 22:59:17', '2023-11-01 22:59:17'),
(19, 5, 'upload/product-other-images/phonecover6.jpg', '2023-11-01 22:59:17', '2023-11-01 22:59:17'),
(20, 5, 'upload/product-other-images/phonecover7.jpg', '2023-11-01 22:59:17', '2023-11-01 22:59:17'),
(21, 6, 'upload/product-other-images/iphone2.jpg', '2023-11-01 23:15:33', '2023-11-01 23:15:33'),
(22, 6, 'upload/product-other-images/iphone3.jpg', '2023-11-01 23:15:33', '2023-11-01 23:15:33'),
(23, 6, 'upload/product-other-images/iphone4.jpg', '2023-11-01 23:15:33', '2023-11-01 23:15:33'),
(24, 6, 'upload/product-other-images/iphone5.jpg', '2023-11-01 23:15:33', '2023-11-01 23:15:33'),
(25, 7, 'upload/product-other-images/logbag8.jpg', '2023-11-05 01:36:47', '2023-11-05 01:36:47'),
(26, 7, 'upload/product-other-images/logbag9.jpg', '2023-11-05 01:36:47', '2023-11-05 01:36:47'),
(27, 7, 'upload/product-other-images/longbag.jpg', '2023-11-05 01:36:47', '2023-11-05 01:36:47'),
(28, 8, 'upload/product-other-images/longbag2.jpg', '2023-11-05 03:48:43', '2023-11-05 03:48:43'),
(29, 8, 'upload/product-other-images/longbag3.jpg', '2023-11-05 03:48:43', '2023-11-05 03:48:43'),
(30, 8, 'upload/product-other-images/longbag4.jpg', '2023-11-05 03:48:43', '2023-11-05 03:48:43'),
(31, 8, 'upload/product-other-images/longbag5.jpg', '2023-11-05 03:48:43', '2023-11-05 03:48:43'),
(32, 9, 'upload/product-other-images/walet.jpg', '2024-01-11 04:49:20', '2024-01-11 04:49:20'),
(33, 9, 'upload/product-other-images/walet2.jpg', '2024-01-11 04:49:20', '2024-01-11 04:49:20'),
(34, 9, 'upload/product-other-images/walet3.jpg', '2024-01-11 04:49:20', '2024-01-11 04:49:20'),
(35, 9, 'upload/product-other-images/walet4.jpg', '2024-01-11 04:49:20', '2024-01-11 04:49:20'),
(36, 10, 'upload/product-other-images/headphone2.jpg', '2024-01-11 05:17:23', '2024-01-11 05:17:23'),
(37, 10, 'upload/product-other-images/headphone3.jpg', '2024-01-11 05:17:23', '2024-01-11 05:17:23'),
(38, 10, 'upload/product-other-images/headphone4.jpg', '2024-01-11 05:17:23', '2024-01-11 05:17:23'),
(39, 10, 'upload/product-other-images/headphones.jpg', '2024-01-11 05:17:23', '2024-01-11 05:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `trending_status` tinyint(4) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_status` tinyint(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `image`, `trending_status`, `sales_count`, `hit_count`, `status`, `created_at`, `updated_at`, `product_status`) VALUES
(1, 1, 1, 1, 1, 'Smart Watch', '222', 2000, 1500, 0, 'It  Health Monitoring Functions Such As Calling, Heart Rate, Sleep, Blood Pressure And Oxygen For Sports best best best', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.47be235dLHCjEE\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of 2023 LED Digital fashion Watch</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">New Arrival</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Touch LED Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Luminous Display</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Hours, minute</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Good Quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Stop Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">12 and 24 hour display</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">30M Water Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% life waterprof</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body Separation</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap;\">Specifications of 2023 LED Digital fashion Watch</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">291623897_BD-1296789682</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Strap Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Silicon</div></li></ul></div></div></div></div>', 'upload/product-images/smartwatch2.jpg', 1, 0, 0, 0, '2023-10-25 06:54:26', '2023-12-24 10:56:37', 2),
(2, 3, 4, 4, 3, 'Retro Sunglasses', '117', 1000, 700, 113, 'Retro Sunglasses Small Rectangle Frame Sun Glasses UV400 Protection Eyewear Square Travel Beach Trendy Eyeglasses', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Anti Blue Light Glasses Women -Oversized Eyeglasses -Anti Blue Light Computer Glasses</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Specification</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Design comfortable temple, simple but not simple, environmentally friendly and strong material</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable nose pads that fit the bridge of the nose</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Reinforced hinges for smooth opening and closing of templesLens material: resin</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Frame material: PC</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dimensions: 141x151x50mm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features: HD eye protection</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: through pink, through blue, through gray, bright black</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quantity: 1 pairPackage includes: 1x frame mirror</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial; margin-block-start: 1em; font-size: 14px;\"><li style=\"margin: 0px; padding: 0px;\">Anti Blue Light Glasses Women -Oversized Eyeglasses -Anti Blue Light Computer Glasses</li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px;\">Specification<br style=\"margin: 0px; padding: 0px;\">Design comfortable temple, simple but not simple, environmentally friendly and strong material<br style=\"margin: 0px; padding: 0px;\">Comfortable nose pads that fit the bridge of the nose<br style=\"margin: 0px; padding: 0px;\">Reinforced hinges for smooth opening and closing of temples</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px;\">Lens material: resin<br style=\"margin: 0px; padding: 0px;\">Frame material: PC<br style=\"margin: 0px; padding: 0px;\">Dimensions: 141x151x50mm<br style=\"margin: 0px; padding: 0px;\">Features: HD eye protection<br style=\"margin: 0px; padding: 0px;\">Color: through pink, through blue, through gray, bright black<br style=\"margin: 0px; padding: 0px;\">Quantity: 1 pair</p><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.d2f75e87iEeKvN\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px;\">Package includes: 1x frame mirror</p></div></div></div>', 'upload/product-images/sunglass.jpg', 0, 6, 0, 1, '2023-10-25 06:59:04', '2024-05-10 07:22:00', 4),
(3, 1, 3, 1, 1, 'Artificial Leather Wrist Watch', '129', 13434, 1000, 153, 'Product details of Cool Quartz Artificial Leather Stylish Wrist Watch For Man', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Cool Quartz Artificial Leather Stylish Wrist Watch For Man</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Watch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dail Shape: Round</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Adjustable pin buckle fastening</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">As a perfect gift for yourself or your friends</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashion and Comfortable design</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Best Quality Product</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Smart Design</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">It is easy and convenient to use</li></ul></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap;\">Specifications of Cool Quartz Artificial Leather Stylish Wrist Watch For Man</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">222097518_BD-1168650109</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Strap Material</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.621a5b59iLWGdl\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Artificial Leather</div></li></ul></div></div></div></div>', 'upload/product-images/watch.jpg', 0, 1, 0, 1, '2023-10-25 13:00:55', '2024-05-10 07:22:00', 2),
(4, 5, 6, 5, 4, 'Handheld Small Fan', '191', 450, 350, 30, 'Handheld Small Fan, Portable Silent Mini Desktop Dormitory Electric Fan, Handheld Mini USB Charging Fan', '<div class=\"rich-text-table\" style=\"overflow: auto; clear: both; color: rgb(34, 34, 34); font-family: Roboto, Arial, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px;\"><table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"border-spacing: 0px; width: 793px; border: 1px solid rgb(204, 204, 204); max-width: 1060px;\"><tbody><tr><td rowspan=\"13\" style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 214px;\"><div style=\"text-align: center;\">&nbsp;</div><span style=\"display: block; font-size: 0px;\"><img srcid=\"5052477185\" src=\"https://image.made-in-china.com/226f3j00UtubZFWEhqoS/New-Portable-Rechargeable-USB-Fan-with-Base.webp\" data-original=\"//image.made-in-china.com/226f3j00UtubZFWEhqoS/New-Portable-Rechargeable-USB-Fan-with-Base.webp\" alt=\"New Portable Rechargeable USB Fan with Base\" width=\"800px\" style=\"border: 0px; max-width: 100%; display: block;\"></span><div style=\"text-align: center;\">&nbsp;</div><br><br><br><br><br><br>&nbsp;</td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Item&nbsp; No.</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">BCS-4PF7</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Description</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">4\" Portable USB Fan</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Color</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">White / Pink / Grey&nbsp;</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Material</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">ABS+PP</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Unit Size</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">105*70*210 mm</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Unit Weight</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">About 300 g</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Input Voltage</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">DC5V / 1A ( Max )</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Power</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">4 W</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Recharge Cycles</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Over 600 Times</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Battery Type</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Built in 18650 Li-ion 3.7V 2000&nbsp;mAh</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px; height: 20px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Charge Time</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px; height: 20px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">2.5-3 Hours&nbsp;</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Working Time</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">2.5 Hours - 8&nbsp;Hours&nbsp;</span></td></tr><tr><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 133px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\">Product W</span></td><td style=\"margin: 0px; padding: 2px 5px; border-color: rgb(204, 204, 204); width: 425px;\">&nbsp;</td></tr></tbody></table></div><div contenteditable=\"false\" style=\"color: rgb(34, 34, 34); font-family: Roboto, Arial, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px;\">&nbsp;</div>', 'upload/product-images/fan3.jpg', 0, 1, 0, 1, '2023-10-28 11:07:38', '2024-01-10 01:44:59', 3),
(5, 4, 7, 6, 5, 'Neck Strap Phone Case', '190', 350, 240, 40, '1pc Silicone Neck Strap Phone Case Compatible With iphone15promax Xiaomi Huawei Samsung Protective Cover', '<div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Color:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Pink<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Type:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Phone Cases<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Power Supply:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">None<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Material:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">TPU<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Case Type:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Soft Case<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Pattern Type:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Plain<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Batteries Included:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">No<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 177.438px;\">Brand Compatibility:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Huawei, Samsung, Xiaomi, Apple</div></div>', 'upload/product-images/phonecover.jpg', 0, 0, 0, 1, '2023-11-01 22:59:17', '2023-11-01 22:59:17', 3),
(6, 4, 8, 6, 5, 'Ring Holder Phone Case', '131', 400, 320, 123, 'Slide Camera Cover Phone Case With Ring Holder', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.29e02400UKFubP\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of For Iphone X \\ Xs Cover White Translucent Frosted Feel Color Borders Logo Hole With Camera Protection Clear Back Case` - Camera - Phone Back Cover</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">High quality and unique Case For cover for your phone</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">- Protects your Phone from scratches, dirt and bumps</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">- Precise openings on the Case For, allowing access to all controls and features of the Phone</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">- Made of durable material, skidproof and deluxe</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#camera</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#phone</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦«à§‹à¦¨</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#mobile</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#phone back cover</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#Phone back cover</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><div style=\"margin: 0px; padding: 0px;\"></div></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap;\">Specifications of For Iphone X \\ Xs Cover White Translucent Frosted Feel Color Borders Logo Hole With Camera Protection Clear Back Case` - Camera - Phone Back Cover</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">315669328_BD-1426967377</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">For Iphone X Xs Cover White Translucent Frosted Feel Color Borders Logo Hole With Camera Protection Clear Back Case` - Camera - Phone Back Cover</div></div></div></div></div>', 'upload/product-images/iphone.jpg', 0, 0, 0, 1, '2023-11-01 23:15:33', '2023-11-05 00:47:04', 1),
(7, 6, 9, 7, 6, 'Mini Square Bag Stitch Top Handle Solid Color', '112', 1500, 1200, 20, 'Top Handle Bag, Stylish Canvas Bag, Hand and Shoulder Bag', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.6a1226c5YAdnL6\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Fashionable Crossbody/Side Bag For Women/Girls - ????? - Complete Look With Our Fashionable Crossbody/Side Bag For Women And Girls</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc height-limit\" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: 780px; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Products : Ladies Stylish Bag With Fur Ball Toy</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">same as picure</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: PU Leather</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable and Fashionable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Stylish and Beautiful Look</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size:L-32cm, H-20cm, W-16cm.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Available Colours: Pink,Black,Red,Gray,Blush Pink</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#Cross Body &amp; Shoulder Bags</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#bag for women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#ব্যাগ</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.6a1226c5YAdnL6\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">#Bag</li></ul></div></div></div>', 'upload/product-images/logbag8.jpg', 0, 0, 0, 1, '2023-11-05 01:36:47', '2023-11-05 01:36:47', 4),
(8, 6, 10, 7, 6, 'Mini Colorblock Square Bag', '103', 2000, 1500, 16, 'This mini colorblock flap square bag looks sturdy.', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.63445023qlUdxD\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of new model sharley crossbody and shoulder bag for events use with black golden lock</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Type: women\'s bag</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.63445023qlUdxD\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main material: Pu crocodile</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Lining material: polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Material: China</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Full body shining ball printing</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Cross body long belt size 42 inches.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Silver shining front side</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Closer type: zipper</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Folding type: none</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Multi.compartment</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">fashion sticker.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Soft touch felling .</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: 22cm(L), 10cm(W), 16cm(H)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Can be carried : mobile, cosmetics ,ornaments, id card, pen, comb etc.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Can not be carried: water bottle, books, cloth etc large size things.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Premium quality.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Unique design</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water proof.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dust resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Luxury color (same as picture, no filter use in camera)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Washable with wet cloth.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Carry with party and touring.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Hands bag, Shoulder bag</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial; margin-block-start: 1em; font-size: 14px;\"><li style=\"margin: 0px; padding: 0px;\">Type: women\'s bag</li><li style=\"margin: 0px; padding: 0px;\">Main material: Pu crocodile</li><li style=\"margin: 0px; padding: 0px;\">Lining material: polyester</li><li style=\"margin: 0px; padding: 0px;\">Material: China</li><li style=\"margin: 0px; padding: 0px;\">Full body shining ball printing</li><li style=\"margin: 0px; padding: 0px;\">Cross body long belt size 42 inches.</li><li style=\"margin: 0px; padding: 0px;\">Silver shining front side</li><li style=\"margin: 0px; padding: 0px;\">Closer type: zipper</li><li style=\"margin: 0px; padding: 0px;\">Folding type: none</li><li style=\"margin: 0px; padding: 0px;\">Multi.compartment</li><li style=\"margin: 0px; padding: 0px;\">fashion sticker.</li><li style=\"margin: 0px; padding: 0px;\">Soft touch felling .</li><li style=\"margin: 0px; padding: 0px;\">Size: 22cm(L), 10cm(W), 16cm(H)</li><li style=\"margin: 0px; padding: 0px;\">Can be carried : mobile, cosmetics ,ornaments, id card, pen, comb etc.</li><li style=\"margin: 0px; padding: 0px;\">Can not be carried: water bottle, books, cloth etc large size things.</li><li style=\"margin: 0px; padding: 0px;\">Premium quality.</li><li style=\"margin: 0px; padding: 0px;\">Unique design</li><li style=\"margin: 0px; padding: 0px;\">Water proof.</li><li style=\"margin: 0px; padding: 0px;\">Dust resistant</li><li style=\"margin: 0px; padding: 0px;\">Luxury color (same as picture, no filter use in camera)</li><li style=\"margin: 0px; padding: 0px;\">Washable with wet cloth.</li><li style=\"margin: 0px; padding: 0px;\">Carry with party and touring.</li><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.63445023qlUdxD\" style=\"margin: 0px; padding: 0px;\">Style: Hands bag, Shoulder bag</li></ul></div></div></div>', 'upload/product-images/longbag5.jpg', 0, 0, 0, 1, '2023-11-05 03:48:43', '2023-11-05 03:48:43', 1);
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `image`, `trending_status`, `sales_count`, `hit_count`, `status`, `created_at`, `updated_at`, `product_status`) VALUES
(9, 6, 11, 7, 6, 'Small wallet  femaleKorean version', '1220', 500, 400, 0, 'High quality faux leather material.', '<div id=\"block-DMWW16EXhnN\" class=\"pdp-block fixed-width-full background-2\" style=\"margin: 0px; padding: 0px; flex-basis: 100%; width: 988px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div id=\"module_product_review\" class=\"pdp-block module\" style=\"margin: 0px; padding: 0px;\"><div class=\"lazyload-wrapper \" style=\"margin: 0px; padding: 0px;\"><div class=\"review-new-wrapper\" data-spm=\"review_v3\" style=\"margin: 0px 0px 12px; padding: 0px;\"><div class=\"review-header\" style=\"margin: 0px; padding: 12px 20px; font-size: 14px; background-color: rgb(245, 245, 245);\">Ratings &amp; Reviews</div><div class=\"mod-empty\" style=\"margin: 0px; padding: 16px 0px; text-align: center; color: rgba(0, 0, 0, 0.5);\">This product has no reviews.</div></div></div></div></div><div id=\"block-zBmfVmmVAfV\" class=\"pdp-block fixed-width-full block-margin-top background-2\" style=\"margin: 12px 0px 0px; padding: 0px; flex-basis: 100%; width: 988px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div id=\"module_product_detail\" class=\"pdp-block module\" style=\"margin: 0px; padding: 0px;\"><h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 14px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Small wallet female short section Korean version of the tide High Quality Female Wallet mini sweet cute short ladies money clamp</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block-start: 1em; font-size: 14px; list-style: none; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">• High quality faux leather material.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">• Sweet and cute design for ladies.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">• Perfect size for a small wallet.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">• Suitable for female use.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">• Durable PU leather outside material.</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.26b5749cUGLBLW\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; text-align: justify;\">This small wallet is perfect for the stylish and practical woman on-the-go. Made with high-quality faux leather, it features a sweet and cute design that is perfect for any occasion. The Korean version of the tide adds a touch of sophistication to this mini wallet. With a ladies money clamp, you can easily organize your cash and cards. This wallet is perfect for everyday use or for a night out. The outside material is made of durable PU leather, ensuring that it will last for years to come. Keep your essentials organized with this must-have accessory.</p></div></div></div></div></div>', 'upload/product-images/walet5.jpg', 0, 1, 0, 1, '2024-01-11 04:49:20', '2024-01-11 04:58:24', 1),
(10, 7, 12, 5, 7, 'Headphones Headset Wireless Phone Speakerphone', '129', 1000, 700, 5, 'P47 Stereo Head Mounted Bluetooth Headphones Multifunctional Headset', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Product Parameters:</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Bluetooth Connection Name: P47</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Charging Time: 2 Hours</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Working Time: 6 Hours</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Standby Time: 18 Hours</p><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.738a27eeSjPt5X\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">LED Indicator Status: Blue Red</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Effective Distance: 10 Meters</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Sensitivity: -58±3dB</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Frequency Response Range: 87.5-108M HZ</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Audio Input: Wired/Wireless</p><p data-spm-anchor-id=\"0.0.0.i33.73c17463qd9Eoe\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 1em; font-size: 14px; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">Accessories: USB Data Cable (Support External Audio Input Such As Mobile Phone/Ipad/Mp4/Notebook)</p>', 'upload/product-images/headphone2.jpg', 0, 0, 0, 1, '2024-01-11 05:17:23', '2024-01-11 05:19:30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer_id`, `product_id`, `author`, `comments`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'sdf', 'rgdf', 3, '2023-12-24 10:21:55', '2023-12-24 10:21:55'),
(2, 1, 6, 'd', 'gsfd', 4, '2023-12-24 10:22:32', '2023-12-24 10:22:32'),
(3, 1, 6, 'sadika', 'i llike', 4, '2023-12-24 10:31:24', '2023-12-24 10:31:24'),
(4, 1, 4, 'halima', 'dfsdfs', 4, '2024-05-10 07:26:55', '2024-05-10 07:26:55'),
(5, 7, 2, 'dasd', 'dffffffffff', 4, '2024-08-12 18:28:21', '2024-08-12 18:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pNJDja5Trv8VMsUIY2dlzRJkooSQsPcpMX2xL7po', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZFIydW1PbXY4TTZsb1ZxZ2p6N2VncFhmQnk1UzR2RDBvRDdieFpFbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWRldGFpbC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYjhjNjRlYjllMTQ3YWYxYmZmNzgwYWMzMmExZDYxYTUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo4OntzOjU6InJvd0lkIjtzOjMyOiJiOGM2NGViOWUxNDdhZjFiZmY3ODBhYzMyYTFkNjFhNSI7czoyOiJpZCI7czoxOiIzIjtzOjM6InF0eSI7aToyO3M6NDoibmFtZSI7czozMDoiQXJ0aWZpY2lhbCBMZWF0aGVyIFdyaXN0IFdhdGNoIjtzOjU6InByaWNlIjtkOjEwMDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czozMToidXBsb2FkL3Byb2R1Y3QtaW1hZ2VzL3dhdGNoLmpwZyI7czo1OiJicmFuZCI7czoxMDoiV2F0Y2ggWm9uZSI7czo4OiJjYXRlZ29yeSI7czo1OiJXYXRjaCI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToxNTt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6MTE6ImN1c3RvbWVyX2lkIjtpOjc7czoxMzoiY3VzdG9tZXJfbmFtZSI7czo2OiJ0YW5peWEiO30=', 1723508944);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Silicone Strap Smart Watch', '1pc Unisex Silicone Strap Smart Watch', 'upload/sub-category-images/smartwatch5.jpg', '2023-10-25 05:39:37', '2023-10-25 05:39:37'),
(3, 1, 'Vincci watches', 'Vincci women watches available', 'upload/sub-category-images/goldwatch4.jpg', '2023-10-25 06:10:17', '2023-10-25 06:10:17'),
(4, 3, 'Summer Sunglasses', 'Summer Sunglasses Gradient UV400 Square Decoration Large Frame Glasses for Women', 'upload/sub-category-images/sunglass4.jpg', '2023-10-25 06:16:47', '2023-10-25 06:16:47'),
(5, 1, 'Indispensable', 'The best watch brands are often rooted in craftsmanship and sentimental value since what you wear is part of your personal story and styl', 'upload/sub-category-images/watch.jpg', '2023-10-25 06:22:08', '2023-10-25 06:22:08'),
(6, 5, 'Mini Fan', 'Plastic Mini Fan, Cute Ear Decor Handheld Fan For Home', 'upload/sub-category-images/fan3.jpg', '2023-10-28 10:56:04', '2023-10-28 10:56:04'),
(7, 4, 'Silicone Neck Strap Phone Case', 'Silicone Neck Strap Phone Case Compatible With Xiaomi Huawei Samsung Protective Cover', 'upload/sub-category-images/phonecover.jpg', '2023-11-01 22:50:31', '2023-11-01 22:50:31'),
(8, 4, 'Solid Phone Case', 'Solid Phone Case With Ring Holder', 'upload/sub-category-images/iphone.jpg', '2023-11-01 23:10:01', '2023-11-01 23:10:01'),
(9, 6, 'Mini Square Bag', 'The leader of the bag is nice and very beautiful', 'upload/sub-category-images/longbag2.jpg', '2023-11-05 01:22:55', '2023-11-05 01:22:55'),
(10, 6, 'Mini Chain Decor Bag', 'Look at this vcay solid color straw bag', 'upload/sub-category-images/longbag2.jpg', '2023-11-05 03:41:34', '2023-11-05 03:41:34'),
(11, 6, 'Wallet', 'Korean version of the tide High Quality Female Wallet mini sweet cute short ladies money clamp', 'upload/sub-category-images/walet.jpg', '2024-01-11 04:41:18', '2024-01-11 04:41:18'),
(12, 7, 'Stereo Headphones', 'this is sub category description', 'upload/sub-category-images/headphone3.jpg', '2024-01-11 05:10:31', '2024-01-11 05:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, '1 pieces watch', '12321', 'It  Health Monitoring Functions Such As Calling, Heart Rate, Sleep, Blood Pressure And Oxygen For Sports best best best', '2023-10-25 06:04:27', '2023-10-25 06:08:55'),
(4, 'Vision Mini Fan', '126', 'Popular Bangladeshi electronics brands include Walton Electronics, Singer Bangladesh, Jamuna Electronics, Vision Electronics.', '2023-10-28 11:02:12', '2023-10-28 11:02:12'),
(5, '1pc back cover', '177', 'fdssaffsafg', '2023-11-01 22:54:00', '2023-11-01 22:54:00'),
(6, '1 pieces Bags', '101', 'Thsi is Bag Unit Description', '2023-11-05 01:28:35', '2023-11-05 01:28:35'),
(7, 'Headphones Unit', '1102', 'this is had phone unit', '2024-01-11 05:11:20', '2024-01-11 05:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$wubpXcKWbz3XA5pox5xysOxcN0NF6DYEN6pBDRcPiq7RqOgepn3g.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-25 05:37:02', '2023-10-25 05:37:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
