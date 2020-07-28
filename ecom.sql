-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 09:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-07-03 12:14:36', '2020-07-03 12:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"pending\",\"processing\":\"processing\",\"completed\":\"completed\",\"decline\":\"decline\"}}', 4),
(60, 7, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not paid\",\"checked\":true}', 7),
(63, 7, 'payment_method', 'select_dropdown', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"Cash on Delivery\":\"Cash on Delivery\",\"paypal\":\"paypal\",\"Stripe\":\"Stripe\",\"Card\":\"card\"}}', 8),
(64, 7, 'shipping_fullname', 'text', 'Shipping Fullname', 0, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'shipping_address', 'text', 'Shipping Address', 1, 0, 1, 1, 1, 1, '{}', 10),
(66, 7, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 7, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 7, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'shipping_phone', 'text', 'Shipping Phone', 1, 0, 1, 1, 1, 1, '{}', 14),
(70, 7, 'notes', 'text', 'Notes', 0, 0, 1, 1, 1, 1, '{}', 15),
(71, 7, 'billing_fullname', 'text', 'Billing Fullname', 0, 1, 1, 1, 1, 1, '{}', 16),
(72, 7, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 17),
(73, 7, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 7, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 1, '{}', 21),
(77, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 22),
(78, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 24),
(96, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(98, 10, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(99, 10, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\",\"checked\":true}', 4),
(100, 10, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(101, 10, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(102, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(103, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(104, 10, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(105, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(107, 11, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(108, 11, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(109, 11, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 6),
(110, 11, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(112, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(113, 11, 'product_belongsto_shop_relationship', 'relationship', 'shops', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shop\",\"table\":\"shops\",\"type\":\"belongsTo\",\"column\":\"shop_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:34', '2020-07-03 12:14:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-07-03 12:14:36', '2020-07-03 12:14:36'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-folder', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-03 14:22:48', '2020-07-03 14:39:28'),
(10, 'shops', 'shops', 'Shop', 'Shops', 'voyager-folder', 'App\\Shop', '\\App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-04 15:00:29', '2020-07-04 15:07:02'),
(11, 'products', 'products', 'Product', 'Products', 'voyager-folder', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-04 15:08:26', '2020-07-04 15:08:26');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-03 12:14:29', '2020-07-03 12:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-07-03 12:14:29', '2020-07-03 12:14:29', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-07-03 12:14:35', '2020-07-03 12:14:35', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-07-03 12:14:37', '2020-07-03 12:14:37', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-07-03 12:14:39', '2020-07-03 12:14:39', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-07-03 12:14:43', '2020-07-03 12:14:43', 'voyager.hooks', NULL),
(15, 1, 'Orders', '', '_self', 'voyager-folder', NULL, NULL, 15, '2020-07-03 14:22:49', '2020-07-03 14:22:49', 'voyager.orders.index', NULL),
(18, 1, 'Shops', '', '_self', 'voyager-folder', NULL, NULL, 16, '2020-07-04 15:00:30', '2020-07-04 15:00:30', 'voyager.shops.index', NULL),
(19, 1, 'Products', '', '_self', 'voyager-folder', NULL, NULL, 17, '2020-07-04 15:08:27', '2020-07-04 15:08:27', 'voyager.products.index', NULL);

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
(59, '2014_10_12_000000_create_users_table', 1),
(60, '2014_10_12_100000_create_password_resets_table', 1),
(61, '2016_01_01_000000_add_voyager_user_fields', 1),
(62, '2016_01_01_000000_create_data_types_table', 1),
(63, '2016_01_01_000000_create_pages_table', 1),
(64, '2016_01_01_000000_create_posts_table', 1),
(65, '2016_02_15_204651_create_categories_table', 1),
(66, '2016_05_19_173453_create_menu_table', 1),
(67, '2016_10_21_190000_create_roles_table', 1),
(68, '2016_10_21_190000_create_settings_table', 1),
(69, '2016_11_30_135954_create_permission_table', 1),
(70, '2016_11_30_141208_create_permission_role_table', 1),
(71, '2016_12_26_201236_data_types__add__server_side', 1),
(72, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(73, '2017_01_14_005015_create_translations_table', 1),
(74, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(75, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(76, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(77, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(78, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(79, '2017_08_05_000000_add_group_to_settings_table', 1),
(80, '2017_11_26_013050_add_user_role_relationship', 1),
(81, '2017_11_26_015000_create_user_roles_table', 1),
(82, '2018_03_11_000000_add_user_settings', 1),
(83, '2018_03_14_000000_add_details_to_data_types_table', 1),
(84, '2018_03_16_000000_make_settings_value_nullable', 1),
(85, '2019_08_19_000000_create_failed_jobs_table', 1),
(86, '2020_06_29_064551_create_products_table', 1),
(87, '2020_07_01_000133_create_orders_table', 1),
(88, '2020_07_03_082215_create_shops_table', 2),
(89, '2020_07_04_072027_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-07-03 12:14:40', '2020-07-03 12:14:40');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(2, 'browse_bread', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(3, 'browse_database', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(4, 'browse_media', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(5, 'browse_compass', NULL, '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(6, 'browse_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(7, 'read_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(8, 'edit_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(9, 'add_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(10, 'delete_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(11, 'browse_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(12, 'read_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(13, 'edit_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(14, 'add_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(15, 'delete_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(16, 'browse_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(17, 'read_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(18, 'edit_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(19, 'add_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(20, 'delete_users', 'users', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(21, 'browse_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(22, 'read_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(23, 'edit_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(24, 'add_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(25, 'delete_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(26, 'browse_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(27, 'read_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(28, 'edit_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(29, 'add_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(30, 'delete_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(31, 'browse_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(32, 'read_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(33, 'edit_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(34, 'add_posts', 'posts', '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(35, 'delete_posts', 'posts', '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(36, 'browse_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(37, 'read_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(38, 'edit_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(39, 'add_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(40, 'delete_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(41, 'browse_hooks', NULL, '2020-07-03 12:14:43', '2020-07-03 12:14:43'),
(42, 'browse_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(43, 'read_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(44, 'edit_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(45, 'add_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(46, 'delete_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(47, 'browse_shops', 'shops', '2020-07-03 17:19:32', '2020-07-03 17:19:32'),
(48, 'read_shops', 'shops', '2020-07-03 17:19:32', '2020-07-03 17:19:32'),
(49, 'edit_shops', 'shops', '2020-07-03 17:19:32', '2020-07-03 17:19:32'),
(50, 'add_shops', 'shops', '2020-07-03 17:19:32', '2020-07-03 17:19:32'),
(51, 'delete_shops', 'shops', '2020-07-03 17:19:32', '2020-07-03 17:19:32'),
(52, 'browse_products', 'products', '2020-07-04 11:26:21', '2020-07-04 11:26:21'),
(53, 'read_products', 'products', '2020-07-04 11:26:21', '2020-07-04 11:26:21'),
(54, 'edit_products', 'products', '2020-07-04 11:26:21', '2020-07-04 11:26:21'),
(55, 'add_products', 'products', '2020-07-04 11:26:21', '2020-07-04 11:26:21'),
(56, 'delete_products', 'products', '2020-07-04 11:26:21', '2020-07-04 11:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n<h2>We can use all kinds of format!</h2>\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Clara Tromp', 'Amet delectus eum cum sed quas nihil cumque.', 4380.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(2, 'Dianna Quitzon', 'Hic non laudantium velit qui nihil.', 2525.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(3, 'Cindy Waters', 'Aspernatur at nobis nam eveniet accusamus similique provident inventore.', 158.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(4, 'Deron Zieme', 'Ut minima pariatur qui.', 1826.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(5, 'Sonny Keebler', 'Fugit autem natus quisquam odit facilis nemo doloribus voluptas.', 2186.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(6, 'Nat Marvin IV', 'Quidem ut facilis rerum praesentium.', 4009.00, NULL, NULL, '2020-07-04 14:22:31', '2020-07-04 14:22:31'),
(7, 'Mr. Colton Towne', 'Ad sit consequatur consequatur neque qui ex beatae.', 4054.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(8, 'Dr. Judy Greenholt I', 'Quo eum ut architecto sint fugit repellendus.', 3069.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(9, 'Antonietta Hirthe', 'Voluptas et in autem dolor.', 2341.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(10, 'Alfonso McCullough DDS', 'Autem a natus expedita assumenda qui et.', 4848.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(11, 'Lilliana Marks', 'Similique non quidem odit et.', 2664.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(12, 'Zelda Jast', 'Praesentium quidem aliquam blanditiis ut ad temporibus.', 1539.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(13, 'Prof. Hayley Stehr', 'Omnis ut voluptatem rerum.', 2210.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(14, 'Brayan Stracke', 'Nisi esse ut cupiditate et.', 4113.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(15, 'Mr. Monty Parker V', 'Et nihil omnis architecto tempore excepturi est occaecati.', 4482.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(16, 'Rodolfo Johnson II', 'Omnis nulla aut quia qui repellendus enim eum.', 2422.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(17, 'Angelo Ritchie', 'Non praesentium eaque et.', 2462.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(18, 'Dr. Selina Zemlak Sr.', 'Et illum voluptates consequatur omnis voluptates.', 3439.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(19, 'Dr. Julian Quitzon DDS', 'Quaerat dolor et facilis voluptatem.', 4983.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(20, 'Aubree Goyette', 'Qui totam vel voluptates eaque sed velit.', 2374.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(21, 'Dr. Celestine Kerluke', 'Corporis nobis autem consectetur aut debitis.', 3019.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(22, 'Kylee Ziemann', 'Vero quasi delectus ducimus vel nihil numquam repellat.', 394.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(23, 'Kendall Turner II', 'Temporibus earum aspernatur necessitatibus eum.', 692.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(24, 'Prof. Darien Larson II', 'Reiciendis voluptatem et totam amet voluptas rerum.', 4241.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(25, 'Elda Kirlin', 'At quibusdam consectetur nam magnam illo.', 597.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(26, 'Miss Princess Fay', 'Fugiat aut laborum aliquid odio eligendi architecto.', 2530.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(27, 'Cielo Reichert', 'Omnis eius qui aliquam eveniet tenetur possimus.', 2548.00, NULL, NULL, '2020-07-04 14:22:32', '2020-07-04 14:22:32'),
(28, 'Prof. Denis Prosacco', 'Id dolorum maiores voluptatibus voluptatum iure odit excepturi.', 138.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(29, 'Florida Will', 'Sapiente ducimus est similique quia fugit.', 3294.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(30, 'Libby Mayert Sr.', 'Perspiciatis sunt atque sint occaecati quasi.', 1754.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(31, 'Tomasa Buckridge', 'Est eius et saepe veritatis ut.', 2693.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(32, 'Prof. Mathias Kris I', 'Vero ut id ratione deleniti suscipit molestiae.', 4775.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(33, 'Mrs. Kali Murazik', 'Culpa aut atque adipisci sit ipsam quo quos enim.', 1589.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(34, 'Vita Waelchi', 'Alias inventore culpa quia architecto.', 1534.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(35, 'Bernadine Schaefer', 'Ea debitis et veritatis dolore molestiae cupiditate ipsa.', 2151.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(36, 'Mr. Carlo Hansen PhD', 'Eos quasi deserunt dolor maiores odit eum.', 3494.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(37, 'Chesley Nicolas', 'Non odio iste autem aut et.', 1653.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(38, 'Donald Block', 'Recusandae ipsam exercitationem distinctio ducimus adipisci.', 3444.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(39, 'Ana Ledner', 'Molestias voluptatem laudantium ut sint a.', 1449.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(40, 'Charley Graham', 'Ipsum corrupti dolorem dolorem sit ipsum.', 3327.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(41, 'Dr. Russell Hegmann', 'Et quam qui officiis dolorem aut.', 2858.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(42, 'Ms. Joy Conn II', 'In necessitatibus voluptatem in necessitatibus.', 1062.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(43, 'Prof. Giles Johnson', 'Et ad necessitatibus qui in rem eveniet adipisci.', 1905.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(44, 'Broderick Heidenreich', 'Dolore amet sed dicta quia repellendus delectus et.', 4837.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(45, 'Alanis Dibbert', 'Sed cupiditate molestiae ipsam necessitatibus autem voluptatem.', 4452.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(46, 'Priscilla Brown', 'Quibusdam ducimus in quo qui voluptas omnis.', 4469.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(47, 'Hermina O\'Hara', 'Dolores velit quis fugiat minima itaque.', 1285.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(48, 'Chris Lueilwitz', 'Qui expedita sunt sit minus assumenda.', 2785.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(49, 'Leonel Rogahn', 'Nihil animi illo sed sed aliquid quas.', 137.00, NULL, NULL, '2020-07-04 14:22:33', '2020-07-04 14:22:33'),
(50, 'Sigurd Robel', 'Officiis voluptatem et voluptatibus corrupti porro.', 1775.00, NULL, NULL, '2020-07-04 14:22:34', '2020-07-04 14:22:34'),
(51, 'Berry Hill', 'Porro est omnis est ea adipisci eos nam.', 146.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(52, 'Mr. Stone Thompson', 'Molestias nobis dolorum tenetur eum.', 1532.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(53, 'Ronaldo Will PhD', 'Repellat corporis est praesentium commodi dolor quibusdam laboriosam.', 2218.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(54, 'Ms. Violette Waters', 'Assumenda quia quis qui amet aperiam dicta doloribus.', 3435.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(55, 'Kaylie Bradtke', 'Sint id pariatur sequi perspiciatis voluptas sed sit.', 4613.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(56, 'Kennith Russel Sr.', 'Voluptatem iste sed asperiores minus animi.', 1725.00, NULL, NULL, '2020-07-04 14:41:32', '2020-07-04 14:41:32'),
(57, 'Mrs. Stella Reinger III', 'Natus ut sit quaerat repudiandae.', 1578.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(58, 'Armando Sanford', 'Labore omnis nobis dolores accusamus laboriosam.', 3332.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(59, 'Mandy Gibson', 'Aliquid quia cupiditate sit sint qui fuga.', 1464.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(60, 'Keira Rohan', 'Amet magnam voluptates quas.', 1514.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(61, 'Cordelia Reinger', 'Quia aut quidem ut magni molestiae voluptate.', 2172.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(62, 'Mr. Akeem Treutel V', 'Ducimus nihil mollitia neque nihil officia distinctio quasi.', 3703.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(63, 'Dr. Veda Walter', 'Odit assumenda dolore natus voluptatum ea porro est.', 1862.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(64, 'Dr. Prince Effertz', 'Facere aperiam ipsam id.', 4304.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(65, 'Alyce Altenwerth V', 'Voluptatum vel quis non fugiat eum ipsam ea.', 3815.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(66, 'Dr. Kelley Bernier III', 'A animi ducimus qui ducimus magnam.', 3005.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(67, 'Ms. Yvonne Dicki IV', 'Rem eligendi et et repellat et.', 3986.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(68, 'Betsy Homenick', 'Maiores dolorem quo qui animi expedita quam qui debitis.', 743.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(69, 'Miss Carole Nienow Sr.', 'Ipsam est eos nemo.', 4728.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(70, 'Dariana McGlynn', 'Facere nam rem earum sed laborum numquam ullam.', 1235.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(71, 'Loyce Cremin', 'Magnam dolores perferendis inventore ut.', 1837.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(72, 'Margarette Price', 'Impedit assumenda qui ut qui voluptatem.', 1381.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(73, 'Mr. Bo Maggio', 'Facere cumque tempore unde minus veritatis aliquam.', 2499.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(74, 'Della Schuster', 'Alias repellendus consequatur minus consectetur harum sunt quo.', 3377.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(75, 'Mrs. Karolann Kilback IV', 'Ipsum aut sit consequatur at quidem.', 3721.00, NULL, NULL, '2020-07-04 14:41:33', '2020-07-04 14:41:33'),
(76, 'Jasper Mayert PhD', '<p>Atque voluptate suscipit itaque cumque culpa aut ut.</p>', 2247.00, 'products\\July2020\\7mQiD5rmuzBB2AqgVoON.jpg', NULL, '2020-07-04 14:41:00', '2020-07-04 15:10:03'),
(77, 'Roosevelt McCullough', '<p>Est autem soluta adipisci sed fuga.</p>', 2504.00, NULL, 4, '2020-07-04 14:41:00', '2020-07-05 02:16:51'),
(78, 'Greta Ferry Jr.', 'Dolorem odit odio perspiciatis aut culpa.', 1086.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(79, 'Ben Haley', 'Officia itaque pariatur voluptas iure omnis sed.', 739.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(80, 'Solon Beer', 'Sed temporibus ut ut exercitationem voluptates sed.', 4290.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(81, 'Harmon Feeney', 'Necessitatibus sint modi ut possimus quis vel.', 1632.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(82, 'Prof. Helena Tillman', 'Ut ab laborum maiores dolore aut quo eaque.', 3437.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(83, 'Cleveland Haley', 'Architecto quidem aspernatur id quisquam nemo.', 2881.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(84, 'Carley Cartwright', 'Quia quisquam ea corrupti iusto enim id.', 3147.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(85, 'Cecilia Williamson', 'Quidem commodi tempora et animi sit.', 3768.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(86, 'Bria Bartoletti', 'Qui ipsum culpa ullam in quia reprehenderit.', 216.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(87, 'Mrs. Alice Schulist', 'Similique quae doloremque assumenda voluptatem beatae quia repudiandae accusantium.', 1317.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(88, 'Darion Konopelski', 'A est dolore omnis sunt rerum eligendi suscipit.', 2046.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(89, 'Terence Mayer', 'Nisi at et ad nihil ex inventore.', 4552.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(90, 'Dr. Alexandro Durgan I', 'Corrupti nesciunt asperiores dolorum esse.', 484.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(91, 'Adolf Ryan', 'Esse veritatis velit vero tempora.', 2453.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(92, 'Nathaniel Balistreri', 'Nulla sequi qui consequatur.', 2908.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(93, 'Brenden Konopelski', 'Quidem sint cumque ipsam sint consequuntur.', 2049.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(94, 'Elbert Aufderhar', 'Officia quos ipsa repudiandae et.', 3773.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(95, 'Evangeline Grant', 'Velit praesentium necessitatibus molestiae voluptatem.', 4165.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(96, 'Missouri Ebert', 'Dolor corrupti nobis aliquid consequatur.', 3509.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(97, 'Bryana Herman', 'Fuga tenetur velit et non sint quas.', 1658.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(98, 'Fae Simonis', 'Corrupti et recusandae quia sit voluptatem laudantium nesciunt.', 653.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(99, 'Giovanni Feest', 'Modi ut illum ex minima quia.', 4568.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34'),
(100, 'Mr. Josiah Rohan II', 'Animi cupiditate dicta dolorem fugiat qui esse.', 4382.00, NULL, NULL, '2020-07-04 14:41:34', '2020-07-04 14:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-03 12:14:29', '2020-07-03 12:14:29'),
(2, 'user', 'Normal User', '2020-07-03 12:14:29', '2020-07-03 12:14:29'),
(3, 'seller', 'seller', '2020-07-04 04:22:47', '2020-07-04 04:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'shop1', 2, 0, 'shop1 shop1 shop1 shop1  shop1 shop1  shop1 shop1', NULL, '2020-07-03 16:39:36', '2020-07-03 16:39:36'),
(2, 'shop1', 2, 0, 'shop1 shop1 shop1 shop1  shop1 shop1  shop1 shop1', NULL, '2020-07-03 16:45:22', '2020-07-03 16:45:22'),
(3, 'shop1', 2, 0, 'shop1 shop1 shop1 shop1  shop1 shop1  shop1 shop1', NULL, '2020-07-03 16:48:54', '2020-07-03 16:48:54'),
(4, 'test2', 2, 0, 'test2 test 2', NULL, '2020-07-03 16:51:08', '2020-07-03 16:51:08'),
(5, 'test2', 2, 0, 'test2 test 2', NULL, '2020-07-03 16:51:46', '2020-07-03 16:51:46'),
(7, 'test2', 2, 1, 'test2 test 2', NULL, '2020-07-03 17:05:00', '2020-07-04 06:57:46'),
(8, 'test6', 2, 1, 'test6', NULL, '2020-07-04 02:22:00', '2020-07-04 04:10:45'),
(9, 'test7', 1, 1, 'test7', NULL, '2020-07-04 02:39:00', '2020-07-04 02:42:19'),
(10, 'bbbb', 2, 1, 'bbbbb', NULL, '2020-07-04 03:03:00', '2020-07-04 03:08:43'),
(11, 'seller1', 4, 1, 'seller1 dkmkmkm', NULL, '2020-07-04 07:56:00', '2020-07-04 10:14:48'),
(12, 'hhjhjh', 4, 1, 'jnnjnjnjn', NULL, '2020-07-04 14:37:00', '2020-07-04 15:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$qCXcSR1ly8vT4uJR4G4gdukq.M.DefPT3GyApBWQLnD5y.qjEubpO', 'SBUZCWEmkKXmNuGsBIqYkqEbRAmWK97MmMtGo75V9AoesMKXijY3SyH8BkR8', NULL, '2020-07-03 12:14:36', '2020-07-03 12:14:36'),
(2, 3, 'test', 'test@gmail.com', 'users/default.png', NULL, '$2y$10$qCyNtHgn0Gk2I1VsRLSdh.V0hoBmSdHl7URY/vydBNSrOIlxabkwm', NULL, NULL, '2020-07-03 16:33:12', '2020-07-04 06:58:02'),
(3, 2, 'seller', 'seller@gmail.com', 'users/default.png', NULL, '$2y$10$gMnc.BMbE9B1dJCCEH4BS.CwRMN3v4J.p/fFoKExHB/GrYLqF/8ei', NULL, NULL, '2020-07-04 07:38:28', '2020-07-04 07:38:28'),
(4, 3, 'seller1', 'seller1@gmail.com', 'users/default.png', NULL, '$2y$10$5MVtILEEhcs03FjWOLMDxuxzd6vfuQMRR4I1qO6r7qx/QfvhuXWH.', NULL, NULL, '2020-07-04 07:55:21', '2020-07-04 07:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
