-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2023 lúc 01:47 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `diablowatch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `subtitle`, `image`, `category`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 'The Personality Trait That Makes People Happier', 'This IWC Portuguese Tribeca Film Festival 2013 Limited Edition', 'blog-1.jpg', 'TRAVEL', '', NULL, NULL),
(2, 3, 'This was one of our first days in Hawaii last week.', 'IW5001-26 is in overall excellent pre-owned condition.', 'blog-2.jpg', 'MODEL', '', NULL, NULL),
(3, 3, 'Last week I had my first work trip of the year to Sonoma Valley', 'This pre-owned IWC Portuguese IW5001-26 watch is in excellent condition.', 'blog-3.jpg', 'TRAVEL', '', NULL, NULL),
(4, 3, 'Happppppy New Year! I know I am a little late on this post', 'During our quality control check, any necessary adjustments are made to ensure the watch is functioning as intended.', 'blog-4.jpg', 'TRAVEL', '', NULL, NULL),
(5, 3, 'Absolue collection. The Lancome team has been one…', 'The watch is Crown & Caliber Certified Authentic and comes backed by our 2-year warranty.', 'blog-5.jpg', 'MODEL', '', NULL, NULL),
(6, 3, 'Writing has always been kind of therapeutic for me', 'Crown & Caliber offers a 2-year limited warranty for this timepiece, which covers repair or replacement of the watch or its parts. ', 'blog-6.jpg', 'MODEL', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `messages` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rolex', NULL, NULL),
(2, 'Omega', NULL, NULL),
(3, 'Hublot', NULL, NULL),
(4, 'IWC', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_12_09_085528_create_orders_table', 1),
(6, '2020_12_09_085832_create_order_details_table', 1),
(7, '2020_12_09_085936_create_products_table', 1),
(8, '2020_12_09_090029_create_brands_table', 1),
(9, '2020_12_09_090110_create_product_categories_table', 1),
(10, '2020_12_09_090148_create_product_images_table', 1),
(11, '2020_12_09_090228_create_product_details_table', 1),
(12, '2020_12_09_090308_create_product_comments_table', 1),
(13, '2020_12_09_090355_create_blogs_table', 1),
(14, '2020_12_09_090437_create_blog_comments_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `postcode_zip` varchar(255) NOT NULL,
  `town_city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `first_name`, `last_name`, `company_name`, `country`, `street_address`, `postcode_zip`, `town_city`, `email`, `phone`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'TTD', 'Diablo', 'DiabloTeam', 'Mexico', 'Hoang Dieu, Hai Chau', '50000', 'Da Nang City', 'diablo@gmail.com', '0 999 999 999', 'pay_later', 1, '2023-01-09 21:01:12', '2023-01-09 21:01:12'),
(2, 1, 'Diablo', 'Diablo', 'DiabloTeam', 'Mexico', 'Hoang Dieu, Hai Chau', '50000', 'Da Nang City', 'doantkls97@gmail.com', '0 999 999 999', 'pay_later', 1, '2023-01-09 21:04:23', '2023-01-09 21:04:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `qty`, `amount`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 495, 495, '2023-01-09 21:01:12', '2023-01-09 21:01:12'),
(2, 1, 2, 1, 13, 13, '2023-01-09 21:01:12', '2023-01-09 21:01:12'),
(3, 2, 1, 1, 495, 495, '2023-01-09 21:04:23', '2023-01-09 21:04:23'),
(4, 2, 7, 1, 35, 35, '2023-01-09 21:04:23', '2023-01-09 21:04:23'),
(5, 2, 4, 1, 35, 35, '2023-01-09 21:04:23', '2023-01-09 21:04:23'),
(6, 3, 12, 1, 10000, 10000, '2023-01-10 12:23:34', '2023-01-10 12:23:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brand_id`, `product_category_id`, `name`, `description`, `content`, `price`, `qty`, `discount`, `weight`, `sku`, `featured`, `tag`, `created_at`, `updated_at`) VALUES
(12, 1, 1, 'Sea-Dweller 16600', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Case Size -&nbsp;40.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;3135</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;48 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;6.5 inches</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'Preowned Watch', 10500, 10, 10000, 14.5, '0001', 1, 'Rolex', '2023-01-10 09:42:38', '2023-01-10 10:23:12'),
(13, 1, 1, 'Submariner 126613', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Paper Date -&nbsp;11/01/2021</strong></li>\r\n	<li><strong>Case Size -&nbsp;41.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;3235</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;70 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Blue</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7.75 inches</strong></li>\r\n</ul>', 'Preowned Watch', 16700, 103, 15000, 21, '0002', 1, 'Rolex', '2023-01-10 10:03:08', '2023-01-10 10:23:37'),
(14, 1, 1, 'GMT-Master II 16710', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Case Size -&nbsp;40.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;50 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7 inches</strong></li>\r\n</ul>', 'Preowned Watch', 14200, 10, 12900, 40, '0003', 1, 'Rolex', '2023-01-10 10:27:09', '2023-01-10 10:28:03'),
(15, 1, 2, 'Yacht-Master 126621', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Paper Date -&nbsp;12/07/2022</strong></li>\r\n	<li><strong>Case Size -&nbsp;40.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;3235</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;70 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Brown</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7.5 inches</strong></li>\r\n</ul>', 'Preowned Watch', 189999, 20, 17200, 21, '0004', 1, 'Rolex', '2023-01-10 10:31:03', '2023-01-10 10:31:03'),
(16, 1, 2, 'Datejust 16014', '<ul>\r\n	<li><strong>Condition -&nbsp;Very Good&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Case Size -&nbsp;36.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;3035</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;42 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Silver</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;6.75 inches</strong></li>\r\n	<li><strong>Year -&nbsp;1979</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;20.0</strong></li>\r\n</ul>', 'Preowned Watch', 390000, 30, 20999, 35, '0005', 1, 'Rolex', '2023-01-10 10:34:03', '2023-01-10 10:34:03'),
(17, 1, 1, 'Oyster Perpetual 76080', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Case Size -&nbsp;24.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;2230</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;42 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Women</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;6.75 inches</strong></li>\r\n	<li><strong>Year -&nbsp;1999</strong></li>\r\n</ul>', 'Preowned Watch', 279000, 40, 20999, 40, '0006', 1, 'Rolex', '2023-01-10 10:37:14', '2023-01-10 10:37:14'),
(18, 2, 1, 'Seamaster 300M 2534.50.00', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Case Size -&nbsp;41.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;1128</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;44 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;6.25 inches</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2000s</strong></li>\r\n</ul>', 'Preowned Watch', 390000, 50, 27999, 40, '0007', 1, 'Omega', '2023-01-10 10:40:29', '2023-01-10 10:40:29'),
(19, 2, 1, 'Speedmaster Racing', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;No</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;No</strong></li>\r\n	<li><strong>Paper Date -&nbsp;01/13/2019</strong></li>\r\n	<li><strong>Case Size -&nbsp;40.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;Co-Axial 3330</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;54 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black, White</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7.75 inches</strong></li>\r\n</ul>', 'Preowned Watch', 400000, 10, 39000, 35, '0008', 1, 'Omega', '2023-01-10 10:43:52', '2023-01-10 10:43:52'),
(20, 2, 2, 'Seamaster 300', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Case Size -&nbsp;41.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;Co-Axial 8400</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;60 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2010s</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;21.0</strong></li>\r\n	<li><strong>Bracelet -&nbsp;Leather</strong></li>\r\n</ul>', 'Preowned Watch', 679999, 20, 56900, 14.5, '0009', 1, 'Omega', '2023-01-10 11:32:00', '2023-01-10 11:32:00'),
(21, 2, 2, 'Speedmaster Racing', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Case Size -&nbsp;44.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;Co-Axial 9900</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;60 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;White</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7 inches</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2010s</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;21.0</strong></li>\r\n	<li><strong>Bracelet -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Bezel -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Bezel Insert Material -&nbsp;Ceramic</strong></li>\r\n	<li><strong>Crystal -&nbsp;Sapphire</strong></li>\r\n</ul>', 'Preowned Watch', 400000, 19, 39000, 21, '00010', 1, 'Omega', '2023-01-10 11:34:54', '2023-01-10 11:34:54'),
(22, 3, 1, 'Classic Fusion Automatic', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Paper Date -&nbsp;11/01/2010</strong></li>\r\n	<li><strong>Case Size -&nbsp;42.00&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;51011</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;168 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Silver</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2010s</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;22.0</strong></li>\r\n</ul>', 'Preowned Watch', 390000, 39, 20999, 35, '00011', 1, 'Hublot', '2023-01-10 11:38:20', '2023-01-10 11:38:20'),
(23, 3, 1, 'Black Dial Men\'s Watch', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Paper Date -&nbsp;11/01/2010</strong></li>\r\n	<li><strong>Case Size -&nbsp;42.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;51011</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;168 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Silver</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2010s</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;22.0</strong></li>\r\n</ul>', 'Preowned Watch', 79999, 40, 70990, 14, '00012', 1, 'Hublot', '2023-01-10 11:41:14', '2023-01-10 11:41:14'),
(24, 4, 1, 'Pilot Mark XVIII', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;No</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Case Size -&nbsp;40.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;35111</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;42 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Black</strong></li>\r\n	<li><strong>Max. Wrist Size -&nbsp;7.25 inches</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2020 - Present</strong></li>\r\n	<li><strong>Case Material -&nbsp;Stainless Steel</strong></li>\r\n	<li><strong>Lug Width -&nbsp;20.0</strong></li>\r\n</ul>', 'Preowned Watch', 299999, 10, 20000, 40, '14', 1, 'IWC', '2023-01-10 11:43:59', '2023-01-10 11:43:59'),
(25, 4, 2, 'Portuguese', '<ul>\r\n	<li><strong>Condition -&nbsp;Excellent&nbsp;</strong></li>\r\n	<li><strong>Box -&nbsp;Yes</strong></li>\r\n	<li><strong>Papers -&nbsp;Yes</strong></li>\r\n	<li><strong>Manual -&nbsp;Yes</strong></li>\r\n	<li><strong>Paper Date -&nbsp;04/26/2013</strong></li>\r\n	<li><strong>Case Size -&nbsp;42.00&nbsp;</strong></li>\r\n	<li><strong>Movement -&nbsp;Automatic&nbsp;</strong></li>\r\n	<li><strong>Caliber -&nbsp;51011</strong></li>\r\n	<li><strong>Power Reserve -&nbsp;168 hours</strong></li>\r\n	<li><strong>Gender -&nbsp;Men</strong></li>\r\n	<li><strong>Dial Color -&nbsp;Gray</strong></li>\r\n	<li><strong>Approximate Age -&nbsp;2010s</strong></li>\r\n</ul>', 'Preowned Watch', 279000, 39, 20000, 40, '00014', 1, 'IWC', '2023-01-10 11:46:45', '2023-01-10 11:46:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Men', NULL, NULL),
(2, 'Women', NULL, NULL),
(3, 'Kid', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comments`
--

CREATE TABLE `product_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `messages` varchar(255) NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comments`
--

INSERT INTO `product_comments` (`id`, `product_id`, `user_id`, `email`, `name`, `messages`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'BrandonKelley@gmail.com', 'Brandon Kelley', 'Nice !', 4, NULL, NULL),
(2, 1, 5, 'RoyBanks@gmail.com', 'Roy Banks', 'Nice !', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `color`, `size`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'blue', '0', 44, NULL, '2023-01-09 20:39:19'),
(2, 1, 'blue', 'M', 5, NULL, NULL),
(3, 1, 'blue', 'L', 5, NULL, NULL),
(4, 1, 'blue', 'XS', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-1.jpg', NULL, NULL),
(2, 1, 'product-1-1.jpg', NULL, NULL),
(3, 1, 'product-1-2.jpg', NULL, NULL),
(4, 2, 'product-2.jpg', NULL, NULL),
(5, 3, 'product-3.jpg', NULL, NULL),
(6, 4, 'product-4.jpg', NULL, NULL),
(7, 5, 'product-5.jpg', NULL, NULL),
(8, 6, 'product-6.jpg', NULL, NULL),
(9, 7, 'product-7.jpg', NULL, NULL),
(10, 8, 'product-8.jpg', NULL, NULL),
(11, 9, 'product-9.jpg', NULL, NULL),
(12, 1, 'man-3_63bc47f8bc8d1_23109_115936.jpg', '2023-01-09 16:59:36', '2023-01-09 16:59:36'),
(14, 2, 'man-4_63bc4810af2e4_23110_120000.jpg', '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(15, 2, 'man-2_63bc6dfc9c4d1_23110_024148.jpg', '2023-01-09 19:41:48', '2023-01-09 19:41:48'),
(16, 10, 'man-3_63bc6f17f1b68_23110_024631.jpg', '2023-01-09 19:46:31', '2023-01-09 19:46:31'),
(17, 10, 'man-large_63bc6f1ec575e_23110_024638.jpg', '2023-01-09 19:46:38', '2023-01-09 19:46:38'),
(22, 13, 'watch-sell-pro2-1_63bd384c08512_23110_050500.jpg', '2023-01-10 10:05:00', '2023-01-10 10:05:00'),
(23, 13, 'watch-sell-pro2-2_63bd38526368b_23110_050506.jpg', '2023-01-10 10:05:06', '2023-01-10 10:05:06'),
(24, 13, 'watch-sell-pro3-3_63bd3857d79b1_23110_050511.jpg', '2023-01-10 10:05:11', '2023-01-10 10:05:11'),
(25, 12, 'watch-sell-pro1-3_63bd39018bcf3_23110_050801.jpg', '2023-01-10 10:08:01', '2023-01-10 10:08:01'),
(26, 12, 'watch-sell-pro1-1_63bd3906503bd_23110_050806.jpg', '2023-01-10 10:08:06', '2023-01-10 10:08:06'),
(27, 12, 'watch-sell-pro1-2_63bd390b6d804_23110_050811.jpg', '2023-01-10 10:08:11', '2023-01-10 10:08:11'),
(28, 14, 'watch-sell-pro3-1_63bd3d8771f1f_23110_052719.jpg', '2023-01-10 10:27:19', '2023-01-10 10:27:19'),
(29, 14, 'watch-sell-pro3-2_63bd3d8c32cda_23110_052724.jpg', '2023-01-10 10:27:24', '2023-01-10 10:27:24'),
(30, 14, 'watch-sell-pro3-3_63bd3d917f9b5_23110_052729.jpg', '2023-01-10 10:27:29', '2023-01-10 10:27:29'),
(31, 15, 'watch-sell-pro4-1_63bd3e707a0f4_23110_053112.jpg', '2023-01-10 10:31:12', '2023-01-10 10:31:12'),
(32, 15, 'watch-sell-pro4-2_63bd3e7572080_23110_053117.jpg', '2023-01-10 10:31:17', '2023-01-10 10:31:17'),
(33, 15, 'watch-sell-pro4-3_63bd3e7a5944b_23110_053122.jpg', '2023-01-10 10:31:22', '2023-01-10 10:31:22'),
(34, 16, 'watch-sell-pro5-1_63bd3f2aa6c80_23110_053418.jpg', '2023-01-10 10:34:18', '2023-01-10 10:34:18'),
(35, 16, 'watch-sell-pro5-2_63bd3f301f54f_23110_053424.jpg', '2023-01-10 10:34:24', '2023-01-10 10:34:24'),
(36, 16, 'watch-sell-pro5-3_63bd3f353ecb7_23110_053429.jpg', '2023-01-10 10:34:29', '2023-01-10 10:34:29'),
(37, 17, 'watch-sell-pro6-1_63bd3fe2d7323_23110_053722.jpg', '2023-01-10 10:37:22', '2023-01-10 10:37:22'),
(38, 17, 'watch-sell-pro6-2_63bd3fe97c6f6_23110_053729.jpg', '2023-01-10 10:37:29', '2023-01-10 10:37:29'),
(39, 17, 'watch-sell-pro6-3_63bd3fef54f6c_23110_053735.jpg', '2023-01-10 10:37:35', '2023-01-10 10:37:35'),
(40, 18, 'watch-sell-pro7-1_63bd40a692d7c_23110_054038.jpg', '2023-01-10 10:40:38', '2023-01-10 10:40:38'),
(41, 18, 'watch-sell-pro7-2_63bd40ac80159_23110_054044.jpg', '2023-01-10 10:40:44', '2023-01-10 10:40:44'),
(42, 18, 'watch-sell-pro7-3_63bd40b1a4d13_23110_054049.jpg', '2023-01-10 10:40:49', '2023-01-10 10:40:49'),
(43, 19, 'watch-sell-pro8-1_63bd4170e0a02_23110_054400.jpg', '2023-01-10 10:44:00', '2023-01-10 10:44:00'),
(44, 19, 'watch-sell-pro8-2_63bd4176e743f_23110_054406.jpg', '2023-01-10 10:44:06', '2023-01-10 10:44:06'),
(45, 19, 'watch-sell-pro8-3_63bd417c2d1d2_23110_054412.jpg', '2023-01-10 10:44:12', '2023-01-10 10:44:12'),
(46, 20, 'watch-sell-pro9-1_63bd4cb91ba93_23110_063209.jpg', '2023-01-10 11:32:09', '2023-01-10 11:32:09'),
(47, 20, 'watch-sell-pro9-2_63bd4cbe96fac_23110_063214.jpg', '2023-01-10 11:32:14', '2023-01-10 11:32:14'),
(48, 20, 'watch-sell-pro9-3_63bd4cc3ac1a2_23110_063219.jpg', '2023-01-10 11:32:19', '2023-01-10 11:32:19'),
(49, 21, 'watch-sell-pro10-1_63bd4d6636cce_23110_063502.jpg', '2023-01-10 11:35:02', '2023-01-10 11:35:02'),
(50, 21, 'watch-sell-pro10-2_63bd4d6c659f8_23110_063508.jpg', '2023-01-10 11:35:08', '2023-01-10 11:35:08'),
(51, 21, 'watch-sell-pro10-3_63bd4d71bce72_23110_063513.jpg', '2023-01-10 11:35:13', '2023-01-10 11:35:13'),
(52, 22, 'watch-sell-pro11-1_63bd4e348c0d4_23110_063828.jpg', '2023-01-10 11:38:28', '2023-01-10 11:38:28'),
(53, 22, 'watch-sell-pro11-2_63bd4e3ace06e_23110_063834.jpg', '2023-01-10 11:38:34', '2023-01-10 11:38:34'),
(54, 22, 'watch-sell-pro11-3_63bd4e40b2b2a_23110_063840.jpg', '2023-01-10 11:38:40', '2023-01-10 11:38:40'),
(55, 23, 'watch-sell-pro12-1_63bd4ee3dfab2_23110_064123.jpg', '2023-01-10 11:41:23', '2023-01-10 11:41:23'),
(56, 23, 'watch-sell-pro12-2_63bd4eea1e926_23110_064130.jpg', '2023-01-10 11:41:30', '2023-01-10 11:41:30'),
(57, 23, 'watch-sell-pro13-3_63bd4eef4f54b_23110_064135.jpg', '2023-01-10 11:41:35', '2023-01-10 11:41:35'),
(58, 24, 'watch-sell-pro13-1_63bd4f87cad3f_23110_064407.jpg', '2023-01-10 11:44:07', '2023-01-10 11:44:07'),
(59, 24, 'watch-sell-pro13-2_63bd4f8f801dd_23110_064415.jpg', '2023-01-10 11:44:15', '2023-01-10 11:44:15'),
(60, 24, 'watch-sell-pro13-3_63bd4f9553fe9_23110_064421.jpg', '2023-01-10 11:44:21', '2023-01-10 11:44:21'),
(61, 25, 'watch-sell-pro14-1_63bd502eccc50_23110_064654.jpg', '2023-01-10 11:46:54', '2023-01-10 11:46:54'),
(62, 25, 'watch-sell-pro14-2_63bd503479af6_23110_064700.jpg', '2023-01-10 11:47:00', '2023-01-10 11:47:00'),
(63, 25, 'watch-sell-pro14-3_63bd503b163b1_23110_064707.jpg', '2023-01-10 11:47:07', '2023-01-10 11:47:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `postcode_zip` varchar(255) DEFAULT NULL,
  `town_city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `level`, `description`, `company_name`, `country`, `street_address`, `postcode_zip`, `town_city`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Diablo', 'doantkls97@gmail.com', NULL, '$2y$10$Yddcjz7PAwPTpc7Xtnszcebky1sPKZd/JDDYeWV/kv4srmZ4yfMJO', NULL, 'avatar-1.jpg', 2, NULL, 'DiabloTeam', 'Mexico', 'Hoang Dieu, Hai Chau', '50000', 'Da Nang City', '0 999 999 999', NULL, NULL),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$9NUatQrvaQsMvZrUkxxcHuc8o1SOsGFVwCf8/uRv5227sFHo/fH1G', NULL, 'avatar-2.jpg', 0, NULL, 'DiabloTeam', 'Mexico', 'Hoang Dieu, Hai Chau', '50000', 'Da Nang City', '0 999 999 999', NULL, NULL),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$wZW9o1zdIMVCKJkaKD03G.lkuPwLeanASNOIGX3mGVZQYWRPB92I.', 'M3zbrDzL0TRyzdYyi0FiVJYcramu6JuCS9Y9BARkbmzpgyHZrtNp0PxUCupl', 'avatar-3.jpg', 1, NULL, 'DiabloTeam', 'Mexico', 'Hoang Dieu, Hai Chau', '50000', 'Da Nang City', '0 999 999 999', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
