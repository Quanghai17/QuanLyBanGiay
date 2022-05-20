-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 04:42 AM
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
-- Database: `s-cart-7.2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(1, '00_00_00_step1_create_tables_admin', 1),
(2, '00_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('964d363e-9979-420c-94f2-4bd853143c8a', NULL, 'SCart Personal Access Client', 'JJzD49d73S360kaxvmPLHwK7Zwo4vcj3ngTJFDHR', NULL, 'http://localhost', 1, 0, 0, '2022-05-15 03:01:07', '2022-05-15 03:01:07'),
('964d363e-da1c-4ee6-bac9-93d71e99bb98', NULL, 'SCart Password Grant Client', 'tiskpf0ElUsNxC2KkUY4i5GTFQubax3vonp5U5cV', 'users', 'http://localhost', 0, 1, 0, '2022-05-15 03:01:07', '2022-05-15 03:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '964d363e-9979-420c-94f2-4bd853143c8a', '2022-05-15 03:01:07', '2022-05-15 03:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 0, 'Shipping Standard'),
(3, 'global', 'seo_config', 'url_seo_lang', '0', 0, 0, 1, 'seo.url_seo_lang'),
(4, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.LOG_SLACK_WEBHOOK_URL'),
(5, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL'),
(6, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL'),
(7, 'global', 'api_config', 'api_connection_required', '1', 0, 0, 1, 'api_connection.api_connection_required'),
(8, 'global', 'api_config', 'api_mode', '0', 0, 0, 1, 'api_connection.api_mode'),
(9, 'global', 'cache', 'cache_status', '0', 0, 0, 0, 'admin.cache.cache_status'),
(10, 'global', 'cache', 'cache_time', '600', 0, 0, 0, 'admin.cache.cache_time'),
(11, 'global', 'cache', 'cache_category', '0', 0, 0, 3, 'admin.cache.cache_category'),
(12, 'global', 'cache', 'cache_product', '0', 0, 0, 4, 'admin.cache.cache_product'),
(13, 'global', 'cache', 'cache_news', '0', 0, 0, 5, 'admin.cache.cache_news'),
(14, 'global', 'cache', 'cache_category_cms', '0', 0, 0, 6, 'admin.cache.cache_category_cms'),
(15, 'global', 'cache', 'cache_content_cms', '0', 0, 0, 7, 'admin.cache.cache_content_cms'),
(16, 'global', 'cache', 'cache_page', '0', 0, 0, 8, 'admin.cache.cache_page'),
(17, 'global', 'cache', 'cache_country', '0', 0, 0, 10, 'admin.cache.cache_country'),
(18, 'global', 'env_mail', 'smtp_mode', '', 0, 0, 0, 'email.smtp_mode'),
(19, '', 'product_config_attribute', 'product_brand', '1', 0, 1, 0, 'product.config_manager.brand'),
(20, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 1, 0, ''),
(21, '', 'product_config_attribute', 'product_supplier', '1', 0, 1, 0, 'product.config_manager.supplier'),
(22, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 1, 0, ''),
(23, '', 'product_config_attribute', 'product_price', '1', 0, 1, 0, 'product.config_manager.price'),
(24, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 1, 0, ''),
(25, '', 'product_config_attribute', 'product_cost', '1', 0, 1, 0, 'product.config_manager.cost'),
(26, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 1, 0, ''),
(27, '', 'product_config_attribute', 'product_promotion', '1', 0, 1, 0, 'product.config_manager.promotion'),
(28, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 1, 0, ''),
(29, '', 'product_config_attribute', 'product_stock', '1', 0, 1, 0, 'product.config_manager.stock'),
(30, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 1, 0, ''),
(31, '', 'product_config_attribute', 'product_kind', '1', 0, 1, 0, 'product.config_manager.kind'),
(32, '', 'product_config_attribute', 'product_property', '1', 0, 1, 0, 'product.config_manager.property'),
(33, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 1, 0, ''),
(34, '', 'product_config_attribute', 'product_attribute', '1', 0, 1, 0, 'product.config_manager.attribute'),
(35, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 1, 0, ''),
(36, '', 'product_config_attribute', 'product_available', '1', 0, 1, 0, 'product.config_manager.available'),
(37, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 1, 0, ''),
(38, '', 'product_config_attribute', 'product_weight', '1', 0, 1, 0, 'product.config_manager.weight'),
(39, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 1, 0, ''),
(40, '', 'product_config_attribute', 'product_length', '1', 0, 1, 0, 'product.config_manager.length'),
(41, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 1, 0, ''),
(42, '', 'product_config', 'product_display_out_of_stock', '1', 0, 1, 19, 'product.config_manager.product_display_out_of_stock'),
(43, '', 'product_config', 'show_date_available', '1', 0, 1, 21, 'product.config_manager.show_date_available'),
(44, '', 'product_config', 'product_tax', '1', 0, 1, 0, 'product.config_manager.tax'),
(45, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 1, 1, 'customer.config_manager.lastname'),
(46, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 1, 1, ''),
(47, '', 'customer_config_attribute', 'customer_address1', '1', 0, 1, 2, 'customer.config_manager.address1'),
(48, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 1, 2, ''),
(49, '', 'customer_config_attribute', 'customer_address2', '1', 0, 1, 2, 'customer.config_manager.address2'),
(50, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 1, 2, ''),
(51, '', 'customer_config_attribute', 'customer_address3', '0', 0, 1, 2, 'customer.config_manager.address3'),
(52, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 1, 2, ''),
(53, '', 'customer_config_attribute', 'customer_company', '0', 0, 1, 0, 'customer.config_manager.company'),
(54, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 1, 0, ''),
(55, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 1, 0, 'customer.config_manager.postcode'),
(56, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 1, 0, ''),
(57, '', 'customer_config_attribute', 'customer_country', '0', 0, 1, 0, 'customer.config_manager.country'),
(58, '', 'customer_config_attribute_required', 'customer_country_required', '0', 0, 1, 0, ''),
(59, '', 'customer_config_attribute', 'customer_group', '0', 0, 1, 0, 'customer.config_manager.group'),
(60, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 1, 0, ''),
(61, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 1, 0, 'customer.config_manager.birthday'),
(62, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 1, 0, ''),
(63, '', 'customer_config_attribute', 'customer_sex', '0', 0, 1, 0, 'customer.config_manager.sex'),
(64, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 1, 0, ''),
(65, '', 'customer_config_attribute', 'customer_phone', '1', 0, 1, 0, 'customer.config_manager.phone'),
(66, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 1, 1, ''),
(67, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 1, 0, 'customer.config_manager.name_kana'),
(68, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 1, 1, ''),
(69, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 1, 0, 'admin.env.ADMIN_NAME'),
(70, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 1, 0, 'admin.env.ADMIN_TITLE'),
(71, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 1, 0, 'admin.env.ADMIN_LOGO'),
(72, '', 'admin_config', 'hidden_copyright_footer', '0', 0, 1, 0, 'admin.env.hidden_copyright_footer'),
(73, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, 1, 0, 'admin.env.hidden_copyright_footer_admin'),
(74, '', 'display_config', 'product_top', '12', 0, 1, 0, 'store.display.product_top'),
(75, '', 'display_config', 'product_list', '12', 0, 1, 0, 'store.display.list_product'),
(76, '', 'display_config', 'product_relation', '4', 0, 1, 0, 'store.display.relation_product'),
(77, '', 'display_config', 'product_viewed', '4', 0, 1, 0, 'store.display.viewed_product'),
(78, '', 'display_config', 'item_list', '12', 0, 1, 0, 'store.display.item_list'),
(79, '', 'display_config', 'item_top', '12', 0, 1, 0, 'store.display.item_top'),
(80, '', 'order_config', 'shop_allow_guest', '1', 0, 1, 11, 'order.admin.shop_allow_guest'),
(81, '', 'order_config', 'product_preorder', '1', 0, 1, 18, 'order.admin.product_preorder'),
(82, '', 'order_config', 'product_buy_out_of_stock', '0', 0, 1, 20, 'order.admin.product_buy_out_of_stock'),
(83, '', 'order_config', 'shipping_off', '0', 0, 1, 20, 'order.admin.shipping_off'),
(84, '', 'order_config', 'payment_off', '0', 0, 1, 20, 'order.admin.payment_off'),
(85, '', 'email_action', 'email_action_mode', '0', 0, 1, 0, 'email.email_action.email_action_mode'),
(86, '', 'email_action', 'email_action_queue', '0', 0, 1, 1, 'email.email_action.email_action_queue'),
(87, '', 'email_action', 'order_success_to_admin', '0', 0, 1, 1, 'email.email_action.order_success_to_admin'),
(88, '', 'email_action', 'order_success_to_customer', '0', 0, 1, 2, 'email.email_action.order_success_to_cutomer'),
(89, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 1, 3, 'email.email_action.order_success_to_cutomer_pdf'),
(90, '', 'email_action', 'customer_verify', '0', 0, 1, 4, 'email.email_action.customer_verify'),
(91, '', 'email_action', 'welcome_customer', '0', 0, 1, 4, 'email.email_action.welcome_customer'),
(92, '', 'email_action', 'contact_to_admin', '1', 0, 1, 6, 'email.email_action.contact_to_admin'),
(93, '', 'smtp_config', 'smtp_host', '', 0, 1, 1, 'email.config_smtp.smtp_host'),
(94, '', 'smtp_config', 'smtp_user', '', 0, 1, 2, 'email.config_smtp.smtp_user'),
(95, '', 'smtp_config', 'smtp_password', '', 0, 1, 3, 'email.config_smtp.smtp_password'),
(96, '', 'smtp_config', 'smtp_security', '', 0, 1, 4, 'email.config_smtp.smtp_security'),
(97, '', 'smtp_config', 'smtp_port', '', 0, 1, 5, 'email.config_smtp.smtp_port'),
(98, '', 'smtp_config', 'smtp_name', '', 0, 1, 6, 'email.config_smtp.smtp_name'),
(99, '', 'smtp_config', 'smtp_from', '', 0, 1, 7, 'email.config_smtp.smtp_from'),
(100, '', 'url_config', 'SUFFIX_URL', '.html', 0, 1, 0, 'admin.env.SUFFIX_URL'),
(101, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 1, 0, 'admin.env.PREFIX_SHOP'),
(102, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 1, 0, 'admin.env.PREFIX_BRAND'),
(103, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 1, 0, 'admin.env.PREFIX_CATEGORY'),
(104, '', 'url_config', 'PREFIX_CATEGORY_VENDOR', 'category-vendor', 0, 1, 0, 'admin.env.PREFIX_CATEGORY_VENDOR'),
(105, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 1, 0, 'admin.env.PREFIX_SUB_CATEGORY'),
(106, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 1, 0, 'admin.env.PREFIX_PRODUCT'),
(107, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 1, 0, 'admin.env.PREFIX_SEARCH'),
(108, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 1, 0, 'admin.env.PREFIX_CONTACT'),
(109, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 1, 0, 'admin.env.PREFIX_NEWS'),
(110, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 1, 0, 'admin.env.PREFIX_MEMBER'),
(111, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 1, 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST'),
(112, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD'),
(113, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO'),
(114, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 1, 0, 'admin.env.PREFIX_CMS_CATEGORY'),
(115, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 1, 0, 'admin.env.PREFIX_CMS_ENTRY'),
(116, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 1, 0, 'admin.env.PREFIX_CART_WISHLIST'),
(117, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 1, 0, 'admin.env.PREFIX_CART_COMPARE'),
(118, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 1, 0, 'admin.env.PREFIX_CART_DEFAULT'),
(119, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT'),
(120, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM'),
(121, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 1, 0, 'admin.env.PREFIX_ORDER_SUCCESS'),
(122, '', 'captcha_config', 'captcha_mode', '0', 0, 1, 20, 'admin.captcha.captcha_mode'),
(123, '', 'captcha_config', 'captcha_page', '[]', 0, 1, 10, 'captcha.captcha_page'),
(124, '', 'captcha_config', 'captcha_method', '', 0, 1, 0, 'admin.captcha.captcha_method'),
(125, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, 1, 0, 'admin.admin_custom_config.facebook_url'),
(126, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, 1, 0, 'admin.admin_custom_config.fanpage_url'),
(127, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, 1, 0, 'admin.admin_custom_config.twitter_url'),
(128, '', 'admin_custom_config', 'instagram_url', '#', 0, 1, 0, 'admin.admin_custom_config.instagram_url'),
(129, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, 1, 0, 'admin.admin_custom_config.youtube_url'),
(130, '', 'config_layout', 'link_account', '1', 0, 1, 0, 'admin.config_layout.link_account'),
(131, '', 'config_layout', 'link_language', '1', 0, 1, 0, 'admin.config_layout.link_language'),
(132, '', 'config_layout', 'link_currency', '1', 0, 1, 0, 'admin.config_layout.link_currency'),
(133, '', 'config_layout', 'link_cart', '1', 0, 1, 0, 'admin.config_layout.link_cart');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:01:24', '2022-05-15 03:01:24'),
(2, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:09:15', '2022-05-15 03:09:15'),
(3, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:10:16', '2022-05-15 03:10:16'),
(4, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-15 03:10:19', '2022-05-15 03:10:19'),
(5, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652584222487\"}', '2022-05-15 03:10:23', '2022-05-15 03:10:23'),
(6, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652584222488\"}', '2022-05-15 03:10:23', '2022-05-15 03:10:23'),
(7, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584222489\"}', '2022-05-15 03:10:24', '2022-05-15 03:10:24'),
(8, 1, 'sc_admin/uploads/newfolder', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"name\":\"shose\",\"_\":\"1652584222490\"}', '2022-05-15 03:10:32', '2022-05-15 03:10:32'),
(9, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1652584222491\"}', '2022-05-15 03:10:32', '2022-05-15 03:10:32'),
(10, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584222492\"}', '2022-05-15 03:10:33', '2022-05-15 03:10:33'),
(11, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584222493\"}', '2022-05-15 03:10:35', '2022-05-15 03:10:35'),
(12, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_token\":\"zEMewMAe1691yjR4GQ9hv4e64EyfxjubxAHjRyWK\"}', '2022-05-15 03:11:38', '2022-05-15 03:11:38'),
(13, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_\":\"1652584222494\"}', '2022-05-15 03:11:39', '2022-05-15 03:11:39'),
(14, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584222495\"}', '2022-05-15 03:11:39', '2022-05-15 03:11:39'),
(15, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/home1-slide2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"zEMewMAe1691yjR4GQ9hv4e64EyfxjubxAHjRyWK\"}', '2022-05-15 03:12:07', '2022-05-15 03:12:07'),
(16, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:12:08', '2022-05-15 03:12:08'),
(17, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:12:29', '2022-05-15 03:12:29'),
(18, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-15 03:12:32', '2022-05-15 03:12:32'),
(19, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652584352364\"}', '2022-05-15 03:12:32', '2022-05-15 03:12:32'),
(20, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652584352365\"}', '2022-05-15 03:12:32', '2022-05-15 03:12:32'),
(21, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584352366\"}', '2022-05-15 03:12:33', '2022-05-15 03:12:33'),
(22, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584352367\"}', '2022-05-15 03:12:34', '2022-05-15 03:12:34'),
(23, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_token\":\"zEMewMAe1691yjR4GQ9hv4e64EyfxjubxAHjRyWK\"}', '2022-05-15 03:12:50', '2022-05-15 03:12:50'),
(24, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_\":\"1652584352368\"}', '2022-05-15 03:12:50', '2022-05-15 03:12:50'),
(25, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652584352369\"}', '2022-05-15 03:12:50', '2022-05-15 03:12:50'),
(26, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/banner_1.2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"zEMewMAe1691yjR4GQ9hv4e64EyfxjubxAHjRyWK\"}', '2022-05-15 03:13:04', '2022-05-15 03:13:04'),
(27, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:13:04', '2022-05-15 03:13:04'),
(28, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:13:48', '2022-05-15 03:13:48'),
(29, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:13:52', '2022-05-15 03:13:52'),
(30, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:13:59', '2022-05-15 03:13:59'),
(31, 1, 'sc_admin/seo/config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:14:07', '2022-05-15 03:14:07'),
(32, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:14:14', '2022-05-15 03:14:14'),
(33, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:14:20', '2022-05-15 03:14:20'),
(34, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:14:26', '2022-05-15 03:14:26'),
(35, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-15 03:14:31', '2022-05-15 03:14:31'),
(36, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:34:47', '2022-05-16 07:34:47'),
(37, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:46:53', '2022-05-16 07:46:53'),
(38, 1, 'sc_admin/template/refresh', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"key\":\"shose\"}', '2022-05-16 07:46:58', '2022-05-16 07:46:58'),
(39, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:46:58', '2022-05-16 07:46:58'),
(40, 1, 'sc_admin/template/disable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"key\":\"shose\"}', '2022-05-16 07:47:02', '2022-05-16 07:47:02'),
(41, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:47:02', '2022-05-16 07:47:02'),
(42, 1, 'sc_admin/template/enable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"key\":\"shose\"}', '2022-05-16 07:47:12', '2022-05-16 07:47:12'),
(43, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:47:13', '2022-05-16 07:47:13'),
(44, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 07:47:20', '2022-05-16 07:47:20'),
(45, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"storeId\":\"1\"}', '2022-05-16 07:47:28', '2022-05-16 07:47:28'),
(46, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:08:31', '2022-05-16 08:08:31'),
(47, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:12:38', '2022-05-16 08:12:38'),
(48, 1, 'sc_admin/banner/edit/4', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/banner-store.jpg\",\"url\":null,\"title\":\"Banner store\",\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:12:43', '2022-05-16 08:12:43'),
(49, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:12:44', '2022-05-16 08:12:44'),
(50, 1, 'sc_admin/banner/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:12:54', '2022-05-16 08:12:54'),
(51, 1, 'sc_admin/banner/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/banner-store.jpg\",\"url\":null,\"title\":\"Banner store (s-cart-light)\",\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:12:59', '2022-05-16 08:12:59'),
(52, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:12:59', '2022-05-16 08:12:59'),
(53, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:13:17', '2022-05-16 08:13:17'),
(54, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-16 08:13:20', '2022-05-16 08:13:20'),
(55, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652688801842\"}', '2022-05-16 08:13:22', '2022-05-16 08:13:22'),
(56, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652688801841\"}', '2022-05-16 08:13:22', '2022-05-16 08:13:22'),
(57, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652688801843\"}', '2022-05-16 08:13:23', '2022-05-16 08:13:23'),
(58, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652688801844\"}', '2022-05-16 08:13:26', '2022-05-16 08:13:26'),
(59, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/banner_1.2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:13:35', '2022-05-16 08:13:35'),
(60, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:13:35', '2022-05-16 08:13:35'),
(61, 1, 'sc_admin/banner/edit/15', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:13:49', '2022-05-16 08:13:49'),
(62, 1, 'sc_admin/banner/edit/15', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/banner_1.2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:13:59', '2022-05-16 08:13:59'),
(63, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:14:00', '2022-05-16 08:14:00'),
(64, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"15\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:19:14', '2022-05-16 08:19:14'),
(65, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:19:14', '2022-05-16 08:19:14'),
(66, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:19:16', '2022-05-16 08:19:16'),
(67, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-16 08:19:18', '2022-05-16 08:19:18'),
(68, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689158892\"}', '2022-05-16 08:19:19', '2022-05-16 08:19:19'),
(69, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689158893\"}', '2022-05-16 08:19:19', '2022-05-16 08:19:19'),
(70, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689158894\"}', '2022-05-16 08:19:19', '2022-05-16 08:19:19'),
(71, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689158895\"}', '2022-05-16 08:19:21', '2022-05-16 08:19:21'),
(72, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:19:30', '2022-05-16 08:19:30'),
(73, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_\":\"1652689158896\"}', '2022-05-16 08:19:31', '2022-05-16 08:19:31'),
(74, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689158897\"}', '2022-05-16 08:19:31', '2022-05-16 08:19:31'),
(75, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"items\":[\"banner_1.2.jpg\"],\"_\":\"1652689158898\"}', '2022-05-16 08:19:43', '2022-05-16 08:19:43'),
(76, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_\":\"1652689158899\"}', '2022-05-16 08:19:44', '2022-05-16 08:19:44'),
(77, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/banner_1.2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:19:54', '2022-05-16 08:19:54'),
(78, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:19:54', '2022-05-16 08:19:54'),
(79, 1, 'sc_admin/banner/edit/16', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:19:59', '2022-05-16 08:19:59'),
(80, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-16 08:20:04', '2022-05-16 08:20:04'),
(81, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689204181\"}', '2022-05-16 08:20:04', '2022-05-16 08:20:04'),
(82, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689204180\"}', '2022-05-16 08:20:04', '2022-05-16 08:20:04'),
(83, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689204182\"}', '2022-05-16 08:20:05', '2022-05-16 08:20:05'),
(84, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689204183\"}', '2022-05-16 08:20:07', '2022-05-16 08:20:07'),
(85, 1, 'sc_admin/banner/edit/16', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/shop.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:20:12', '2022-05-16 08:20:12'),
(86, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:20:13', '2022-05-16 08:20:13'),
(87, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"14\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:20:44', '2022-05-16 08:20:44'),
(88, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:20:44', '2022-05-16 08:20:44'),
(89, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:20:47', '2022-05-16 08:20:47'),
(90, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:20:56', '2022-05-16 08:20:56'),
(91, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:20:56', '2022-05-16 08:20:56'),
(92, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:21:05', '2022-05-16 08:21:05'),
(93, 1, 'sc_admin/banner/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:21:45', '2022-05-16 08:21:45'),
(94, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-16 08:21:47', '2022-05-16 08:21:47'),
(95, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689307658\"}', '2022-05-16 08:21:48', '2022-05-16 08:21:48'),
(96, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652689307659\"}', '2022-05-16 08:21:48', '2022-05-16 08:21:48'),
(97, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689307660\"}', '2022-05-16 08:21:48', '2022-05-16 08:21:48'),
(98, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652689307661\"}', '2022-05-16 08:21:50', '2022-05-16 08:21:50'),
(99, 1, 'sc_admin/banner/edit/13', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/shop.jpg\",\"url\":null,\"title\":\"Banner breadcrumb (s-cart-light)\",\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:21:55', '2022-05-16 08:21:55'),
(100, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:21:55', '2022-05-16 08:21:55'),
(101, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:22:01', '2022-05-16 08:22:01'),
(102, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:22:02', '2022-05-16 08:22:02'),
(103, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:38:16', '2022-05-16 08:38:16'),
(104, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:38:22', '2022-05-16 08:38:22'),
(105, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"4,3,2,1\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:38:33', '2022-05-16 08:38:33'),
(106, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:38:34', '2022-05-16 08:38:34'),
(107, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:38:37', '2022-05-16 08:38:37'),
(108, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"23,21,20,19,18,17,16,14,12,11,10,9,8,7,6,5\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:39:10', '2022-05-16 08:39:10'),
(109, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:39:11', '2022-05-16 08:39:11'),
(110, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"16,15,14,13\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:39:25', '2022-05-16 08:39:25'),
(111, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:39:26', '2022-05-16 08:39:26'),
(112, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"14,12,11,7,3,2\",\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\"}', '2022-05-16 08:39:44', '2022-05-16 08:39:44'),
(113, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-05-16 08:39:44', '2022-05-16 08:39:44'),
(114, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-16 08:42:36', '2022-05-16 08:42:36'),
(115, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"storeId\":\"1\"}', '2022-05-16 08:42:43', '2022-05-16 08:42:43'),
(116, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"storeId\":\"1\"}', '2022-05-16 08:48:13', '2022-05-16 08:48:13'),
(117, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"currency\",\"value\":\"VND\",\"pk\":null,\"_token\":\"LoKHL2ASTNqJ4zI8UM7BxEtSytkwdgennkb8MNPN\",\"storeId\":\"1\"}', '2022-05-16 08:48:25', '2022-05-16 08:48:25'),
(118, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:15:48', '2022-05-18 08:15:48'),
(119, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:15:57', '2022-05-18 08:15:57'),
(120, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"3Se5bdIZ08HMJbkeLkgrRZRIQU3t3SDh5tNepGyQ\",\"storeId\":\"1\"}', '2022-05-18 08:16:05', '2022-05-18 08:16:05'),
(121, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:16:44', '2022-05-18 08:16:44'),
(122, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"3Se5bdIZ08HMJbkeLkgrRZRIQU3t3SDh5tNepGyQ\"}', '2022-05-18 08:16:48', '2022-05-18 08:16:48'),
(123, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-18 08:16:49', '2022-05-18 08:16:49'),
(124, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"12\",\"_token\":\"3Se5bdIZ08HMJbkeLkgrRZRIQU3t3SDh5tNepGyQ\"}', '2022-05-18 08:16:53', '2022-05-18 08:16:53'),
(125, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-18 08:16:53', '2022-05-18 08:16:53'),
(126, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"16\",\"_token\":\"3Se5bdIZ08HMJbkeLkgrRZRIQU3t3SDh5tNepGyQ\"}', '2022-05-18 08:16:56', '2022-05-18 08:16:56'),
(127, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-18 08:16:57', '2022-05-18 08:16:57'),
(128, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"17\",\"_token\":\"3Se5bdIZ08HMJbkeLkgrRZRIQU3t3SDh5tNepGyQ\"}', '2022-05-18 08:17:02', '2022-05-18 08:17:02'),
(129, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-18 08:17:02', '2022-05-18 08:17:02'),
(130, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:31:58', '2022-05-18 08:31:58'),
(131, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:32:09', '2022-05-18 08:32:09'),
(132, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:32:15', '2022-05-18 08:32:15'),
(133, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\",\"storeId\":\"1\"}', '2022-05-18 08:32:20', '2022-05-18 08:32:20'),
(134, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:32:49', '2022-05-18 08:32:49'),
(135, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"24\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:33:07', '2022-05-18 08:33:07'),
(136, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-18 08:33:08', '2022-05-18 08:33:08'),
(137, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:57:49', '2022-05-18 08:57:49'),
(138, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:57:51', '2022-05-18 08:57:51'),
(139, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-18 08:58:03', '2022-05-18 08:58:03'),
(140, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864285333\"}', '2022-05-18 08:58:05', '2022-05-18 08:58:05'),
(141, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864285334\"}', '2022-05-18 08:58:06', '2022-05-18 08:58:06'),
(142, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864285335\"}', '2022-05-18 08:58:06', '2022-05-18 08:58:06'),
(143, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864285336\"}', '2022-05-18 08:58:16', '2022-05-18 08:58:16'),
(144, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:59:00', '2022-05-18 08:59:00'),
(145, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652864285337\"}', '2022-05-18 08:59:01', '2022-05-18 08:59:01'),
(146, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864285338\"}', '2022-05-18 08:59:02', '2022-05-18 08:59:02'),
(147, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 24\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 24\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product-1.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-24.png\",\"\\/data\\/product\\/product-22.png\"],\"sku\":\"BANHTRANG-12\",\"alias\":\"demo-alias-name-product-24\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:59:13', '2022-05-18 08:59:13'),
(148, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:59:13', '2022-05-18 08:59:13'),
(149, 1, 'sc_admin/product/edit/22', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:59:17', '2022-05-18 08:59:17'),
(150, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-18 08:59:22', '2022-05-18 08:59:22'),
(151, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864362782\"}', '2022-05-18 08:59:23', '2022-05-18 08:59:23'),
(152, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864362781\"}', '2022-05-18 08:59:23', '2022-05-18 08:59:23'),
(153, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864362783\"}', '2022-05-18 08:59:24', '2022-05-18 08:59:24'),
(154, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:59:32', '2022-05-18 08:59:32'),
(155, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652864362784\"}', '2022-05-18 08:59:33', '2022-05-18 08:59:33'),
(156, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864362785\"}', '2022-05-18 08:59:34', '2022-05-18 08:59:34'),
(157, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1652864362786\"}', '2022-05-18 08:59:42', '2022-05-18 08:59:42'),
(158, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"2\",\"_\":\"1652864362787\"}', '2022-05-18 08:59:49', '2022-05-18 08:59:49'),
(159, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"2\",\"_\":\"1652864362788\"}', '2022-05-18 08:59:49', '2022-05-18 08:59:49'),
(160, 1, 'sc_admin/product/edit/22', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 22\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 22\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"10\"],\"image\":\"\\/data\\/product\\/product-5.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-18.png\",\"\\/data\\/product\\/product-19.png\"],\"sku\":\"MITOM-AY\",\"alias\":\"demo-alias-name-product-22\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:59:54', '2022-05-18 08:59:54');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(161, 1, 'sc_admin/product/edit/22', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 22\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 22\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"10\"],\"image\":\"\\/data\\/product\\/product-5.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-18.png\",\"\\/data\\/product\\/product-19.png\"],\"sku\":\"MITOM-AY\",\"alias\":\"demo-alias-name-product-22\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 08:59:54', '2022-05-18 08:59:54'),
(162, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:59:55', '2022-05-18 08:59:55'),
(163, 1, 'sc_admin/product/edit/21', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 08:59:58', '2022-05-18 08:59:58'),
(164, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-18 09:00:08', '2022-05-18 09:00:08'),
(165, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864408670\"}', '2022-05-18 09:00:09', '2022-05-18 09:00:09'),
(166, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652864408671\"}', '2022-05-18 09:00:09', '2022-05-18 09:00:09'),
(167, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864408672\"}', '2022-05-18 09:00:09', '2022-05-18 09:00:09'),
(168, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 09:00:20', '2022-05-18 09:00:20'),
(169, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652864408673\"}', '2022-05-18 09:00:20', '2022-05-18 09:00:20'),
(170, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652864408674\"}', '2022-05-18 09:00:21', '2022-05-18 09:00:21'),
(171, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1652864408675\"}', '2022-05-18 09:00:22', '2022-05-18 09:00:22'),
(172, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1652864408676\"}', '2022-05-18 09:00:31', '2022-05-18 09:00:31'),
(173, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"2\",\"_\":\"1652864408677\"}', '2022-05-18 09:00:33', '2022-05-18 09:00:33'),
(174, 1, 'sc_admin/product/edit/21', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Easy Polo Black Edition 21\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Easy Polo Black Edition 21\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"10\"],\"image\":\"\\/data\\/product\\/product-10.jpg\",\"sub_image\":[null],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-21\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lDfa45hYphRO3qAbDZF9l1LLENIDHKsF3TPoNQMn\"}', '2022-05-18 09:00:38', '2022-05-18 09:00:38'),
(175, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 09:00:38', '2022-05-18 09:00:38'),
(176, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 09:04:22', '2022-05-18 09:04:22'),
(177, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 09:04:31', '2022-05-18 09:04:31'),
(178, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-18 09:31:27', '2022-05-18 09:31:27'),
(179, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:47:11', '2022-05-19 00:47:11'),
(180, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:48:06', '2022-05-19 00:48:06'),
(181, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:48:18', '2022-05-19 00:48:18'),
(182, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"B7SmBVxFpdfYcE0u7OgEsI1V4NQhifidAkZe7RCi\",\"storeId\":\"1\"}', '2022-05-19 00:48:25', '2022-05-19 00:48:25'),
(183, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:50:31', '2022-05-19 00:50:31'),
(184, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 00:50:38', '2022-05-19 00:50:38'),
(185, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:55:37', '2022-05-19 00:55:37'),
(186, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"28\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 00:55:44', '2022-05-19 00:55:44'),
(187, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 00:55:45', '2022-05-19 00:55:45'),
(188, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 00:56:04', '2022-05-19 00:56:04'),
(189, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 00:56:05', '2022-05-19 00:56:05'),
(190, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"27\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 00:56:11', '2022-05-19 00:56:11'),
(191, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 00:56:12', '2022-05-19 00:56:12'),
(192, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:56:20', '2022-05-19 00:56:20'),
(193, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-19 00:56:23', '2022-05-19 00:56:23'),
(194, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652921784968\"}', '2022-05-19 00:56:25', '2022-05-19 00:56:25'),
(195, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652921784967\"}', '2022-05-19 00:56:25', '2022-05-19 00:56:25'),
(196, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652921784969\"}', '2022-05-19 00:56:26', '2022-05-19 00:56:26'),
(197, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652921784970\"}', '2022-05-19 00:56:32', '2022-05-19 00:56:32'),
(198, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/shop.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 00:56:39', '2022-05-19 00:56:39'),
(199, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:56:40', '2022-05-19 00:56:40'),
(200, 1, 'sc_admin/banner/edit/29', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:56:55', '2022-05-19 00:56:55'),
(201, 1, 'sc_admin/banner/edit/29', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/shop.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 00:57:02', '2022-05-19 00:57:02'),
(202, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 00:57:02', '2022-05-19 00:57:02'),
(203, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 01:33:55', '2022-05-19 01:33:55'),
(204, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"phone\",\"value\":\"0359808267\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 01:34:06', '2022-05-19 01:34:06'),
(205, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"H\\u1ed7 Tr\\u1ee3: 0359808267\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 01:34:24', '2022-05-19 01:34:24'),
(206, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"address\",\"value\":\"T\\u1ed5 2, ph\\u01b0\\u1eddng T\\u00e2n Th\\u1ecbnh, TP Th\\u00e1i Nguy\\u00ean\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 01:34:49', '2022-05-19 01:34:49'),
(207, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"email\",\"value\":\"NguyenQuangHai17@email.com\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 01:35:08', '2022-05-19 01:35:08'),
(208, 1, 'sc_admin/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 01:35:44', '2022-05-19 01:35:44'),
(209, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:02:50', '2022-05-19 02:02:50'),
(210, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:02:54', '2022-05-19 02:02:54'),
(211, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:02:55', '2022-05-19 02:02:55'),
(212, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:02:58', '2022-05-19 02:02:58'),
(213, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:02:58', '2022-05-19 02:02:58'),
(214, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:03:00', '2022-05-19 02:03:00'),
(215, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:03:01', '2022-05-19 02:03:01'),
(216, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:03:03', '2022-05-19 02:03:03'),
(217, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:03:03', '2022-05-19 02:03:03'),
(218, 1, 'sc_admin/news/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:03:07', '2022-05-19 02:03:07'),
(219, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 02:03:13', '2022-05-19 02:03:13'),
(220, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925793602\"}', '2022-05-19 02:03:14', '2022-05-19 02:03:14'),
(221, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925793601\"}', '2022-05-19 02:03:14', '2022-05-19 02:03:14'),
(222, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652925793603\"}', '2022-05-19 02:03:14', '2022-05-19 02:03:14'),
(223, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:03:42', '2022-05-19 02:03:42'),
(224, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:04:27', '2022-05-19 02:04:27'),
(225, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1652925793604\"}', '2022-05-19 02:04:28', '2022-05-19 02:04:28'),
(226, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652925793605\"}', '2022-05-19 02:04:28', '2022-05-19 02:04:28'),
(227, 1, 'sc_admin/news/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-5\",\"image\":\"\\/data\\/content\\/blog-5.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:04:38', '2022-05-19 02:04:38'),
(228, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:04:38', '2022-05-19 02:04:38'),
(229, 1, 'sc_admin/news/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:04:45', '2022-05-19 02:04:45'),
(230, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 02:04:49', '2022-05-19 02:04:49'),
(231, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925889930\"}', '2022-05-19 02:04:50', '2022-05-19 02:04:50'),
(232, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925889929\"}', '2022-05-19 02:04:50', '2022-05-19 02:04:50'),
(233, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652925889931\"}', '2022-05-19 02:04:51', '2022-05-19 02:04:51'),
(234, 1, 'sc_admin/news/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-5\",\"image\":\"\\/data\\/content\\/blog-22.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:04:58', '2022-05-19 02:04:58'),
(235, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:04:58', '2022-05-19 02:04:58'),
(236, 1, 'sc_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:05:01', '2022-05-19 02:05:01'),
(237, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 02:05:05', '2022-05-19 02:05:05'),
(238, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925905541\"}', '2022-05-19 02:05:06', '2022-05-19 02:05:06'),
(239, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652925905542\"}', '2022-05-19 02:05:06', '2022-05-19 02:05:06'),
(240, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652925905543\"}', '2022-05-19 02:05:06', '2022-05-19 02:05:06'),
(241, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:05:11', '2022-05-19 02:05:11'),
(242, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1652925905544\"}', '2022-05-19 02:05:11', '2022-05-19 02:05:11'),
(243, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652925905545\"}', '2022-05-19 02:05:12', '2022-05-19 02:05:12'),
(244, 1, 'sc_admin/news/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog-44.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:05:15', '2022-05-19 02:05:15'),
(245, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:05:15', '2022-05-19 02:05:15'),
(246, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:36:27', '2022-05-19 02:36:27'),
(247, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 02:36:34', '2022-05-19 02:36:34'),
(248, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 02:38:59', '2022-05-19 02:38:59'),
(249, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 02:52:32', '2022-05-19 02:52:32'),
(250, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"32\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:52:40', '2022-05-19 02:52:40'),
(251, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:52:40', '2022-05-19 02:52:40'),
(252, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"33\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 02:52:45', '2022-05-19 02:52:45'),
(253, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 02:52:45', '2022-05-19 02:52:45'),
(254, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 03:01:54', '2022-05-19 03:01:54'),
(255, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 03:01:54', '2022-05-19 03:01:54'),
(256, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 03:01:57', '2022-05-19 03:01:57'),
(257, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 03:01:57', '2022-05-19 03:01:57'),
(258, 1, 'sc_admin/banner/edit/30', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:02:07', '2022-05-19 03:02:07'),
(259, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-19 03:02:13', '2022-05-19 03:02:13'),
(260, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652929334121\"}', '2022-05-19 03:02:14', '2022-05-19 03:02:14'),
(261, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652929334122\"}', '2022-05-19 03:02:14', '2022-05-19 03:02:14'),
(262, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652929334123\"}', '2022-05-19 03:02:15', '2022-05-19 03:02:15'),
(263, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652929334124\"}', '2022-05-19 03:02:20', '2022-05-19 03:02:20'),
(264, 1, 'sc_admin/banner/edit/30', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/home1-slide2.jpg\",\"url\":null,\"title\":\"Banner home 1 (s-cart-light)\",\"target\":\"_self\",\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 03:02:25', '2022-05-19 03:02:25'),
(265, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:02:25', '2022-05-19 03:02:25'),
(266, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:02:39', '2022-05-19 03:02:39'),
(267, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 03:02:45', '2022-05-19 03:02:45'),
(268, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:02:56', '2022-05-19 03:02:56'),
(269, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"30\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 03:17:49', '2022-05-19 03:17:49'),
(270, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"31\",\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\"}', '2022-05-19 03:17:49', '2022-05-19 03:17:49'),
(271, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 03:17:50', '2022-05-19 03:17:50'),
(272, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 03:17:51', '2022-05-19 03:17:51'),
(273, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:17:52', '2022-05-19 03:17:52'),
(274, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 03:29:50', '2022-05-19 03:29:50'),
(275, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 03:30:04', '2022-05-19 03:30:04'),
(276, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"8NE2cZ8TAsDKE9wjBupoo4sy7mkJzwjOJmSYajht\",\"storeId\":\"1\"}', '2022-05-19 04:06:14', '2022-05-19 04:06:14'),
(277, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:13:30', '2022-05-19 07:13:30'),
(278, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:13:37', '2022-05-19 07:13:37'),
(279, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"name\":\"template\",\"value\":\"shose\",\"pk\":null,\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\",\"storeId\":\"1\"}', '2022-05-19 07:13:43', '2022-05-19 07:13:43'),
(280, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:21:27', '2022-05-19 07:21:27'),
(281, 1, 'sc_admin/banner/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:23:34', '2022-05-19 07:23:34'),
(282, 1, 'sc_admin/banner/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/home1-slide2.jpg\",\"url\":null,\"title\":\"Lay banner nay\",\"target\":null,\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:23:52', '2022-05-19 07:23:52'),
(283, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:23:52', '2022-05-19 07:23:52'),
(284, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"38\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:24:02', '2022-05-19 07:24:02'),
(285, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 07:24:02', '2022-05-19 07:24:02'),
(286, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"39\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:24:09', '2022-05-19 07:24:09'),
(287, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 07:24:09', '2022-05-19 07:24:09'),
(288, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"40\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:27:16', '2022-05-19 07:27:16'),
(289, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 07:27:16', '2022-05-19 07:27:16'),
(290, 1, 'sc_admin/banner/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"41\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:27:19', '2022-05-19 07:27:19'),
(291, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 07:27:19', '2022-05-19 07:27:19'),
(292, 1, 'sc_admin/banner/edit/29', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:27:25', '2022-05-19 07:27:25'),
(293, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-19 07:28:27', '2022-05-19 07:28:27'),
(294, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945308791\"}', '2022-05-19 07:28:29', '2022-05-19 07:28:29'),
(295, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945308790\"}', '2022-05-19 07:28:29', '2022-05-19 07:28:29'),
(296, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308792\"}', '2022-05-19 07:28:30', '2022-05-19 07:28:30'),
(297, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"banner-home-1.jpg\"],\"_\":\"1652945308793\"}', '2022-05-19 07:28:38', '2022-05-19 07:28:38'),
(298, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1652945308794\"}', '2022-05-19 07:28:38', '2022-05-19 07:28:38'),
(299, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308795\"}', '2022-05-19 07:28:39', '2022-05-19 07:28:39'),
(300, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"banner-home-2.jpg\"],\"_\":\"1652945308796\"}', '2022-05-19 07:28:43', '2022-05-19 07:28:43'),
(301, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1652945308797\"}', '2022-05-19 07:28:43', '2022-05-19 07:28:43'),
(302, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308798\"}', '2022-05-19 07:28:44', '2022-05-19 07:28:44'),
(303, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"banner-store.jpg\"],\"_\":\"1652945308799\"}', '2022-05-19 07:28:47', '2022-05-19 07:28:47'),
(304, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1652945308800\"}', '2022-05-19 07:28:47', '2022-05-19 07:28:47'),
(305, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308801\"}', '2022-05-19 07:28:48', '2022-05-19 07:28:48'),
(306, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"breadcrumb.jpg\"],\"_\":\"1652945308802\"}', '2022-05-19 07:28:51', '2022-05-19 07:28:51');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(307, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1652945308803\"}', '2022-05-19 07:28:51', '2022-05-19 07:28:51'),
(308, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308804\"}', '2022-05-19 07:28:52', '2022-05-19 07:28:52'),
(309, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945308805\"}', '2022-05-19 07:28:54', '2022-05-19 07:28:54'),
(310, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:29:37', '2022-05-19 07:29:37'),
(311, 1, 'sc_admin/banner/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:29:43', '2022-05-19 07:29:43'),
(312, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-19 07:29:45', '2022-05-19 07:29:45'),
(313, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945386116\"}', '2022-05-19 07:29:46', '2022-05-19 07:29:46'),
(314, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945386117\"}', '2022-05-19 07:29:46', '2022-05-19 07:29:46'),
(315, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945386118\"}', '2022-05-19 07:29:47', '2022-05-19 07:29:47'),
(316, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945386119\"}', '2022-05-19 07:29:48', '2022-05-19 07:29:48'),
(317, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:30:09', '2022-05-19 07:30:09'),
(318, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"_\":\"1652945386120\"}', '2022-05-19 07:30:10', '2022-05-19 07:30:10'),
(319, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945386121\"}', '2022-05-19 07:30:10', '2022-05-19 07:30:10'),
(320, 1, 'sc_admin/banner/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/home1-slide2.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:30:36', '2022-05-19 07:30:36'),
(321, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:30:36', '2022-05-19 07:30:36'),
(322, 1, 'sc_admin/banner/edit/42', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:30:44', '2022-05-19 07:30:44'),
(323, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"banner\"}', '2022-05-19 07:30:47', '2022-05-19 07:30:47'),
(324, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945447657\"}', '2022-05-19 07:30:48', '2022-05-19 07:30:48'),
(325, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1652945447656\"}', '2022-05-19 07:30:48', '2022-05-19 07:30:48'),
(326, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945447658\"}', '2022-05-19 07:30:48', '2022-05-19 07:30:48'),
(327, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/shose\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652945447659\"}', '2022-05-19 07:30:50', '2022-05-19 07:30:50'),
(328, 1, 'sc_admin/banner/edit/42', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/shose\\/home2-slide1.jpg\",\"url\":null,\"title\":null,\"target\":null,\"html\":null,\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 07:30:55', '2022-05-19 07:30:55'),
(329, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 07:30:55', '2022-05-19 07:30:55'),
(330, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:01:09', '2022-05-19 08:01:09'),
(331, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:03:30', '2022-05-19 08:03:30'),
(332, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:04:01', '2022-05-19 08:04:01'),
(333, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"13\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:28', '2022-05-19 08:10:28'),
(334, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:29', '2022-05-19 08:10:29'),
(335, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"12\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:32', '2022-05-19 08:10:32'),
(336, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:33', '2022-05-19 08:10:33'),
(337, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"11\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:35', '2022-05-19 08:10:35'),
(338, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:36', '2022-05-19 08:10:36'),
(339, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:38', '2022-05-19 08:10:38'),
(340, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:38', '2022-05-19 08:10:38'),
(341, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"9\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:40', '2022-05-19 08:10:40'),
(342, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:41', '2022-05-19 08:10:41'),
(343, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:43', '2022-05-19 08:10:43'),
(344, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:44', '2022-05-19 08:10:44'),
(345, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:46', '2022-05-19 08:10:46'),
(346, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:47', '2022-05-19 08:10:47'),
(347, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:49', '2022-05-19 08:10:49'),
(348, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:49', '2022-05-19 08:10:49'),
(349, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:53', '2022-05-19 08:10:53'),
(350, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:53', '2022-05-19 08:10:53'),
(351, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:56', '2022-05-19 08:10:56'),
(352, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:57', '2022-05-19 08:10:57'),
(353, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:10:59', '2022-05-19 08:10:59'),
(354, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:10:59', '2022-05-19 08:10:59'),
(355, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:11:01', '2022-05-19 08:11:01'),
(356, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:11:02', '2022-05-19 08:11:02'),
(357, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:11:04', '2022-05-19 08:11:04'),
(358, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:11:05', '2022-05-19 08:11:05'),
(359, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:11:07', '2022-05-19 08:11:07'),
(360, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:11:10', '2022-05-19 08:11:10'),
(361, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:11:10', '2022-05-19 08:11:10'),
(362, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:11:12', '2022-05-19 08:11:12'),
(363, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"category\"}', '2022-05-19 08:12:29', '2022-05-19 08:12:29'),
(364, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652947949852\"}', '2022-05-19 08:12:30', '2022-05-19 08:12:30'),
(365, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652947949853\"}', '2022-05-19 08:12:30', '2022-05-19 08:12:30'),
(366, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949854\"}', '2022-05-19 08:12:31', '2022-05-19 08:12:31'),
(367, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-14.jpg\"],\"_\":\"1652947949855\"}', '2022-05-19 08:12:38', '2022-05-19 08:12:38'),
(368, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949856\"}', '2022-05-19 08:12:39', '2022-05-19 08:12:39'),
(369, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949857\"}', '2022-05-19 08:12:39', '2022-05-19 08:12:39'),
(370, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-18.jpg\"],\"_\":\"1652947949858\"}', '2022-05-19 08:12:42', '2022-05-19 08:12:42'),
(371, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949859\"}', '2022-05-19 08:12:43', '2022-05-19 08:12:43'),
(372, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949860\"}', '2022-05-19 08:12:43', '2022-05-19 08:12:43'),
(373, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-40.jpg\"],\"_\":\"1652947949861\"}', '2022-05-19 08:12:46', '2022-05-19 08:12:46'),
(374, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949862\"}', '2022-05-19 08:12:46', '2022-05-19 08:12:46'),
(375, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949863\"}', '2022-05-19 08:12:47', '2022-05-19 08:12:47'),
(376, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-42.jpg\"],\"_\":\"1652947949864\"}', '2022-05-19 08:12:49', '2022-05-19 08:12:49'),
(377, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949865\"}', '2022-05-19 08:12:50', '2022-05-19 08:12:50'),
(378, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949866\"}', '2022-05-19 08:12:50', '2022-05-19 08:12:50'),
(379, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-44.jpg\"],\"_\":\"1652947949867\"}', '2022-05-19 08:12:53', '2022-05-19 08:12:53'),
(380, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949868\"}', '2022-05-19 08:12:54', '2022-05-19 08:12:54'),
(381, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949869\"}', '2022-05-19 08:12:54', '2022-05-19 08:12:54'),
(382, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:13:17', '2022-05-19 08:13:17'),
(383, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652947949870\"}', '2022-05-19 08:13:18', '2022-05-19 08:13:18'),
(384, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652947949871\"}', '2022-05-19 08:13:18', '2022-05-19 08:13:18'),
(385, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Sneaker\",\"keyword\":\"Gi\\u00e0y Sneaker\",\"description\":\"Gi\\u00e0y Sneaker\"},\"vi\":{\"title\":\"Gi\\u00e0y Sneaker\",\"keyword\":\"Gi\\u00e0y Sneaker\",\"description\":\"Gi\\u00e0y Sneaker\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product-1.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:13:25', '2022-05-19 08:13:25'),
(386, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:13:26', '2022-05-19 08:13:26'),
(387, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:13:29', '2022-05-19 08:13:29'),
(388, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"category\"}', '2022-05-19 08:14:00', '2022-05-19 08:14:00'),
(389, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652948040778\"}', '2022-05-19 08:14:01', '2022-05-19 08:14:01'),
(390, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652948040777\"}', '2022-05-19 08:14:01', '2022-05-19 08:14:01'),
(391, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948040779\"}', '2022-05-19 08:14:01', '2022-05-19 08:14:01'),
(392, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:14:13', '2022-05-19 08:14:13'),
(393, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652948040780\"}', '2022-05-19 08:14:14', '2022-05-19 08:14:14'),
(394, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948040781\"}', '2022-05-19 08:14:14', '2022-05-19 08:14:14'),
(395, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Adidas Yeezy\",\"keyword\":\"Gi\\u00e0y Adidas Yeezy\",\"description\":\"Gi\\u00e0y Adidas Yeezy\"},\"vi\":{\"title\":\"Gi\\u00e0y Adidas Yeezy\",\"keyword\":\"Gi\\u00e0y Adidas Yeezy\",\"description\":\"Gi\\u00e0y Adidas Yeezy\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product-3.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:14:20', '2022-05-19 08:14:20'),
(396, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:14:21', '2022-05-19 08:14:21'),
(397, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:14:28', '2022-05-19 08:14:28'),
(398, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"category\"}', '2022-05-19 08:14:54', '2022-05-19 08:14:54'),
(399, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652948094891\"}', '2022-05-19 08:14:55', '2022-05-19 08:14:55'),
(400, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1652948094892\"}', '2022-05-19 08:14:55', '2022-05-19 08:14:55'),
(401, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948094893\"}', '2022-05-19 08:14:56', '2022-05-19 08:14:56'),
(402, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:15:05', '2022-05-19 08:15:05'),
(403, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1652948094894\"}', '2022-05-19 08:15:05', '2022-05-19 08:15:05'),
(404, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948094895\"}', '2022-05-19 08:15:06', '2022-05-19 08:15:06'),
(405, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Nike AIR MAX 97\",\"keyword\":\"Gi\\u00e0y Nike AIR MAX 97\",\"description\":\"Gi\\u00e0y Nike AIR MAX 97\"},\"vi\":{\"title\":\"Gi\\u00e0y Nike AIR MAX 97\",\"keyword\":\"Gi\\u00e0y Nike AIR MAX 97\",\"description\":\"Gi\\u00e0y Nike AIR MAX 97\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product-2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:15:11', '2022-05-19 08:15:11'),
(406, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:15:12', '2022-05-19 08:15:12'),
(407, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:15:20', '2022-05-19 08:15:20'),
(408, 1, 'sc_admin/product/edit/21', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:15:22', '2022-05-19 08:15:22'),
(409, 1, 'sc_admin/product/edit/21', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Louis Vuitton \\u2013 Archlight\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Louis Vuitton \\u2013 Archlight\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.jpg\",\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-21\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:16:17', '2022-05-19 08:16:17'),
(410, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:16:17', '2022-05-19 08:16:17'),
(411, 1, 'sc_admin/product/edit/22', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:16:25', '2022-05-19 08:16:25'),
(412, 1, 'sc_admin/product/edit/22', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-5.jpg\",\"sku\":\"MITOM-AY\",\"alias\":\"demo-alias-name-product-22\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:16:47', '2022-05-19 08:16:47'),
(413, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:16:48', '2022-05-19 08:16:48'),
(414, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:16:51', '2022-05-19 08:16:51'),
(415, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Alexander McQueen\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Alexander McQueen\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"15\"],\"image\":\"\\/data\\/product\\/product-1.jpg\",\"sku\":\"BANHTRANG-12\",\"alias\":\"demo-alias-name-product-24\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:17:12', '2022-05-19 08:17:12'),
(416, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:17:13', '2022-05-19 08:17:13'),
(417, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:17:16', '2022-05-19 08:17:16'),
(418, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:17:32', '2022-05-19 08:17:32'),
(419, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948252485\"}', '2022-05-19 08:17:33', '2022-05-19 08:17:33'),
(420, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948252486\"}', '2022-05-19 08:17:33', '2022-05-19 08:17:33'),
(421, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252487\"}', '2022-05-19 08:17:33', '2022-05-19 08:17:33'),
(422, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-1.jpg\"],\"_\":\"1652948252488\"}', '2022-05-19 08:17:44', '2022-05-19 08:17:44'),
(423, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252489\"}', '2022-05-19 08:17:44', '2022-05-19 08:17:44'),
(424, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252490\"}', '2022-05-19 08:17:45', '2022-05-19 08:17:45'),
(425, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-1.png\"],\"_\":\"1652948252491\"}', '2022-05-19 08:17:50', '2022-05-19 08:17:50'),
(426, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252492\"}', '2022-05-19 08:17:50', '2022-05-19 08:17:50'),
(427, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252493\"}', '2022-05-19 08:17:51', '2022-05-19 08:17:51'),
(428, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-10.jpg\"],\"_\":\"1652948252494\"}', '2022-05-19 08:17:54', '2022-05-19 08:17:54'),
(429, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252495\"}', '2022-05-19 08:17:54', '2022-05-19 08:17:54'),
(430, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252496\"}', '2022-05-19 08:17:55', '2022-05-19 08:17:55'),
(431, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-10.png\"],\"_\":\"1652948252497\"}', '2022-05-19 08:17:58', '2022-05-19 08:17:58'),
(432, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252498\"}', '2022-05-19 08:17:58', '2022-05-19 08:17:58'),
(433, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252499\"}', '2022-05-19 08:17:59', '2022-05-19 08:17:59'),
(434, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-11.png\"],\"_\":\"1652948252500\"}', '2022-05-19 08:18:02', '2022-05-19 08:18:02'),
(435, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252501\"}', '2022-05-19 08:18:02', '2022-05-19 08:18:02'),
(436, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252502\"}', '2022-05-19 08:18:03', '2022-05-19 08:18:03'),
(437, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252503\"}', '2022-05-19 08:18:04', '2022-05-19 08:18:04'),
(438, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-12.png\"],\"_\":\"1652948252504\"}', '2022-05-19 08:18:06', '2022-05-19 08:18:06'),
(439, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252505\"}', '2022-05-19 08:18:07', '2022-05-19 08:18:07'),
(440, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252506\"}', '2022-05-19 08:18:07', '2022-05-19 08:18:07'),
(441, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-13.png\"],\"_\":\"1652948252507\"}', '2022-05-19 08:18:10', '2022-05-19 08:18:10'),
(442, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252508\"}', '2022-05-19 08:18:10', '2022-05-19 08:18:10'),
(443, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252509\"}', '2022-05-19 08:18:11', '2022-05-19 08:18:11'),
(444, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-14.png\"],\"_\":\"1652948252510\"}', '2022-05-19 08:18:13', '2022-05-19 08:18:13'),
(445, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252511\"}', '2022-05-19 08:18:14', '2022-05-19 08:18:14'),
(446, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252512\"}', '2022-05-19 08:18:14', '2022-05-19 08:18:14'),
(447, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-15.png\"],\"_\":\"1652948252513\"}', '2022-05-19 08:18:17', '2022-05-19 08:18:17'),
(448, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252514\"}', '2022-05-19 08:18:17', '2022-05-19 08:18:17'),
(449, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252515\"}', '2022-05-19 08:18:18', '2022-05-19 08:18:18'),
(450, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-16.png\"],\"_\":\"1652948252516\"}', '2022-05-19 08:18:20', '2022-05-19 08:18:20'),
(451, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252517\"}', '2022-05-19 08:18:21', '2022-05-19 08:18:21'),
(452, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252518\"}', '2022-05-19 08:18:21', '2022-05-19 08:18:21'),
(453, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252519\"}', '2022-05-19 08:18:23', '2022-05-19 08:18:23');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(454, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-18.png\"],\"_\":\"1652948252520\"}', '2022-05-19 08:18:25', '2022-05-19 08:18:25'),
(455, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252521\"}', '2022-05-19 08:18:26', '2022-05-19 08:18:26'),
(456, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252522\"}', '2022-05-19 08:18:26', '2022-05-19 08:18:26'),
(457, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-17.png\"],\"_\":\"1652948252523\"}', '2022-05-19 08:18:29', '2022-05-19 08:18:29'),
(458, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252524\"}', '2022-05-19 08:18:29', '2022-05-19 08:18:29'),
(459, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252525\"}', '2022-05-19 08:18:30', '2022-05-19 08:18:30'),
(460, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-19.png\"],\"_\":\"1652948252526\"}', '2022-05-19 08:18:33', '2022-05-19 08:18:33'),
(461, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252527\"}', '2022-05-19 08:18:33', '2022-05-19 08:18:33'),
(462, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252528\"}', '2022-05-19 08:18:34', '2022-05-19 08:18:34'),
(463, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-2.png\"],\"_\":\"1652948252529\"}', '2022-05-19 08:18:37', '2022-05-19 08:18:37'),
(464, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252530\"}', '2022-05-19 08:18:37', '2022-05-19 08:18:37'),
(465, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252531\"}', '2022-05-19 08:18:38', '2022-05-19 08:18:38'),
(466, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-20.png\"],\"_\":\"1652948252532\"}', '2022-05-19 08:18:40', '2022-05-19 08:18:40'),
(467, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252533\"}', '2022-05-19 08:18:41', '2022-05-19 08:18:41'),
(468, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252534\"}', '2022-05-19 08:18:41', '2022-05-19 08:18:41'),
(469, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-21.png\"],\"_\":\"1652948252535\"}', '2022-05-19 08:18:44', '2022-05-19 08:18:44'),
(470, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-21.png\"],\"_\":\"1652948252536\"}', '2022-05-19 08:18:44', '2022-05-19 08:18:44'),
(471, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252537\"}', '2022-05-19 08:18:45', '2022-05-19 08:18:45'),
(472, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252538\"}', '2022-05-19 08:18:46', '2022-05-19 08:18:46'),
(473, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-23.png\"],\"_\":\"1652948252539\"}', '2022-05-19 08:18:57', '2022-05-19 08:18:57'),
(474, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252540\"}', '2022-05-19 08:18:57', '2022-05-19 08:18:57'),
(475, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252541\"}', '2022-05-19 08:18:58', '2022-05-19 08:18:58'),
(476, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-3.png\"],\"_\":\"1652948252542\"}', '2022-05-19 08:19:03', '2022-05-19 08:19:03'),
(477, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252543\"}', '2022-05-19 08:19:03', '2022-05-19 08:19:03'),
(478, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252544\"}', '2022-05-19 08:19:04', '2022-05-19 08:19:04'),
(479, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-4.png\"],\"_\":\"1652948252545\"}', '2022-05-19 08:19:07', '2022-05-19 08:19:07'),
(480, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252546\"}', '2022-05-19 08:19:07', '2022-05-19 08:19:07'),
(481, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252547\"}', '2022-05-19 08:19:08', '2022-05-19 08:19:08'),
(482, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-5.jpg\"],\"_\":\"1652948252548\"}', '2022-05-19 08:19:11', '2022-05-19 08:19:11'),
(483, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252549\"}', '2022-05-19 08:19:11', '2022-05-19 08:19:11'),
(484, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252550\"}', '2022-05-19 08:19:12', '2022-05-19 08:19:12'),
(485, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252551\"}', '2022-05-19 08:19:13', '2022-05-19 08:19:13'),
(486, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252552\"}', '2022-05-19 08:19:16', '2022-05-19 08:19:16'),
(487, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-5.png\"],\"_\":\"1652948252553\"}', '2022-05-19 08:19:20', '2022-05-19 08:19:20'),
(488, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252554\"}', '2022-05-19 08:19:20', '2022-05-19 08:19:20'),
(489, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252555\"}', '2022-05-19 08:19:21', '2022-05-19 08:19:21'),
(490, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-6.png\"],\"_\":\"1652948252556\"}', '2022-05-19 08:19:24', '2022-05-19 08:19:24'),
(491, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252557\"}', '2022-05-19 08:19:24', '2022-05-19 08:19:24'),
(492, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252558\"}', '2022-05-19 08:19:25', '2022-05-19 08:19:25'),
(493, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-7.png\"],\"_\":\"1652948252559\"}', '2022-05-19 08:19:28', '2022-05-19 08:19:28'),
(494, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252560\"}', '2022-05-19 08:19:28', '2022-05-19 08:19:28'),
(495, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252561\"}', '2022-05-19 08:19:28', '2022-05-19 08:19:28'),
(496, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-8.png\"],\"_\":\"1652948252562\"}', '2022-05-19 08:19:31', '2022-05-19 08:19:31'),
(497, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252563\"}', '2022-05-19 08:19:31', '2022-05-19 08:19:31'),
(498, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252564\"}', '2022-05-19 08:19:32', '2022-05-19 08:19:32'),
(499, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-9.png\"],\"_\":\"1652948252565\"}', '2022-05-19 08:19:34', '2022-05-19 08:19:34'),
(500, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252566\"}', '2022-05-19 08:19:35', '2022-05-19 08:19:35'),
(501, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252567\"}', '2022-05-19 08:19:35', '2022-05-19 08:19:35'),
(502, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:19:46', '2022-05-19 08:19:46'),
(503, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948252568\"}', '2022-05-19 08:19:47', '2022-05-19 08:19:47'),
(504, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948252569\"}', '2022-05-19 08:19:47', '2022-05-19 08:19:47'),
(505, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:19:51', '2022-05-19 08:19:51'),
(506, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948391677\"}', '2022-05-19 08:19:52', '2022-05-19 08:19:52'),
(507, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948391676\"}', '2022-05-19 08:19:52', '2022-05-19 08:19:52'),
(508, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948391678\"}', '2022-05-19 08:19:52', '2022-05-19 08:19:52'),
(509, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Gi\\u00e0y sneaker da logo Rhyton Gucci\",\"keyword\":null,\"description\":null,\"content\":null},\"vi\":{\"name\":\"Gi\\u00e0y sneaker da logo Rhyton Gucci\",\"keyword\":null,\"description\":null,\"content\":null}},\"category\":[\"16\"],\"image\":\"\\/data\\/product\\/product-7.jpg\",\"sku\":\"AFFGHAQ\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"200000\",\"price\":\"250000\",\"tax_id\":\"0\",\"price_promotion\":\"239000\",\"price_promotion_start\":\"05\\/19\\/2022\",\"price_promotion_end\":\"05\\/20\\/2022\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-05-19\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:20:59', '2022-05-19 08:20:59'),
(510, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:20:59', '2022-05-19 08:20:59'),
(511, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Gi\\u00e0y sneaker da logo Rhyton Gucci\",\"keyword\":null,\"description\":null,\"content\":\"a\"},\"vi\":{\"name\":\"Gi\\u00e0y sneaker da logo Rhyton Gucci\",\"keyword\":null,\"description\":null,\"content\":\"a\"}},\"category\":[\"16\"],\"image\":\"\\/data\\/product\\/product-7.jpg\",\"sku\":\"AFFGHAQ\",\"alias\":\"giay-sneaker-da-logo-rhyton-gucci\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"200000\",\"price\":\"250000\",\"tax_id\":\"0\",\"price_promotion\":\"239000\",\"price_promotion_start\":\"05\\/19\\/2022\",\"price_promotion_end\":\"05\\/20\\/2022\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-05-19\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:21:11', '2022-05-19 08:21:11'),
(512, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:21:11', '2022-05-19 08:21:11'),
(513, 1, 'sc_admin/product/edit/24', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:21:17', '2022-05-19 08:21:17'),
(514, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:21:23', '2022-05-19 08:21:23'),
(515, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948483723\"}', '2022-05-19 08:21:24', '2022-05-19 08:21:24'),
(516, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948483722\"}', '2022-05-19 08:21:24', '2022-05-19 08:21:24'),
(517, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948483724\"}', '2022-05-19 08:21:24', '2022-05-19 08:21:24'),
(518, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:21:33', '2022-05-19 08:21:33'),
(519, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948483725\"}', '2022-05-19 08:21:34', '2022-05-19 08:21:34'),
(520, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948483726\"}', '2022-05-19 08:21:34', '2022-05-19 08:21:34'),
(521, 1, 'sc_admin/product/edit/24', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Alexander McQueen\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Alexander McQueen\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"15\"],\"image\":\"\\/data\\/product\\/product-1.jpg\",\"sku\":\"BANHTRANG-12\",\"alias\":\"demo-alias-name-product-24\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:21:40', '2022-05-19 08:21:40'),
(522, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:21:41', '2022-05-19 08:21:41'),
(523, 1, 'sc_admin/product/edit/22', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:21:44', '2022-05-19 08:21:44'),
(524, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:21:48', '2022-05-19 08:21:48'),
(525, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948508800\"}', '2022-05-19 08:21:49', '2022-05-19 08:21:49'),
(526, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948508801\"}', '2022-05-19 08:21:49', '2022-05-19 08:21:49'),
(527, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948508802\"}', '2022-05-19 08:21:50', '2022-05-19 08:21:50'),
(528, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:21:59', '2022-05-19 08:21:59'),
(529, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948508803\"}', '2022-05-19 08:22:00', '2022-05-19 08:22:00'),
(530, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948508804\"}', '2022-05-19 08:22:00', '2022-05-19 08:22:00'),
(531, 1, 'sc_admin/product/edit/22', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-2.jpg\",\"sku\":\"MITOM-AY\",\"alias\":\"demo-alias-name-product-22\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:22:05', '2022-05-19 08:22:05'),
(532, 1, 'sc_admin/product/edit/22', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Balenciaga Triple S\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-2.jpg\",\"sku\":\"MITOM-AY\",\"alias\":\"demo-alias-name-product-22\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:22:05', '2022-05-19 08:22:05'),
(533, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:22:05', '2022-05-19 08:22:05'),
(534, 1, 'sc_admin/product/edit/21', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:22:11', '2022-05-19 08:22:11'),
(535, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:22:15', '2022-05-19 08:22:15'),
(536, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948535807\"}', '2022-05-19 08:22:16', '2022-05-19 08:22:16'),
(537, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948535806\"}', '2022-05-19 08:22:16', '2022-05-19 08:22:16'),
(538, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948535808\"}', '2022-05-19 08:22:17', '2022-05-19 08:22:17'),
(539, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:22:27', '2022-05-19 08:22:27'),
(540, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948535809\"}', '2022-05-19 08:22:27', '2022-05-19 08:22:27'),
(541, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948535810\"}', '2022-05-19 08:22:28', '2022-05-19 08:22:28'),
(542, 1, 'sc_admin/product/edit/21', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Louis Vuitton \\u2013 Archlight\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"name\":\"Louis Vuitton \\u2013 Archlight\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.jpg\",\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-21\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:22:33', '2022-05-19 08:22:33'),
(543, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:22:34', '2022-05-19 08:22:34'),
(544, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:22:38', '2022-05-19 08:22:38'),
(545, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"product\"}', '2022-05-19 08:23:05', '2022-05-19 08:23:05'),
(546, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948585765\"}', '2022-05-19 08:23:06', '2022-05-19 08:23:06'),
(547, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1652948585764\"}', '2022-05-19 08:23:06', '2022-05-19 08:23:06'),
(548, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948585766\"}', '2022-05-19 08:23:06', '2022-05-19 08:23:06'),
(549, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:23:12', '2022-05-19 08:23:12'),
(550, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1652948585767\"}', '2022-05-19 08:23:13', '2022-05-19 08:23:13'),
(551, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652948585768\"}', '2022-05-19 08:23:13', '2022-05-19 08:23:13'),
(552, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1652948585769\"}', '2022-05-19 08:23:23', '2022-05-19 08:23:23'),
(553, 1, 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Fila Disruptor 2\",\"keyword\":\"Fila Disruptor 2\",\"description\":\"a\",\"content\":\"a\"},\"vi\":{\"name\":\"Fila Disruptor 2\",\"keyword\":\"Fila Disruptor 2\",\"description\":\"a\",\"content\":\"a\"}},\"category\":[\"16\"],\"image\":\"\\/data\\/product\\/product-4.jpg\",\"sku\":\"AFFGH\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"300000\",\"price\":\"550000\",\"tax_id\":\"0\",\"price_promotion\":\"450000\",\"price_promotion_start\":\"05\\/27\\/2022\",\"price_promotion_end\":\"05\\/28\\/2022\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:24:06', '2022-05-19 08:24:06'),
(554, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:24:07', '2022-05-19 08:24:07'),
(555, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:06', '2022-05-19 08:48:06'),
(556, 1, 'sc_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:09', '2022-05-19 08:48:09'),
(557, 1, 'sc_admin/news/edit/6', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog-44.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:48:44', '2022-05-19 08:48:44'),
(558, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:44', '2022-05-19 08:48:44'),
(559, 1, 'sc_admin/news/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:48', '2022-05-19 08:48:48'),
(560, 1, 'sc_admin/news/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"},\"vi\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 150px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-5\",\"image\":\"\\/data\\/content\\/blog-22.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:48:56', '2022-05-19 08:48:56'),
(561, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:56', '2022-05-19 08:48:56'),
(562, 1, 'sc_admin/news/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:48:59', '2022-05-19 08:48:59'),
(563, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 08:49:32', '2022-05-19 08:49:32'),
(564, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950173042\"}', '2022-05-19 08:49:33', '2022-05-19 08:49:33'),
(565, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950173043\"}', '2022-05-19 08:49:33', '2022-05-19 08:49:33'),
(566, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950173044\"}', '2022-05-19 08:49:34', '2022-05-19 08:49:34'),
(567, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:49:48', '2022-05-19 08:49:48'),
(568, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1652950173045\"}', '2022-05-19 08:49:53', '2022-05-19 08:49:53'),
(569, 1, 'sc_admin/news/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"a\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"C\\u00e1c m\\u1eabu gi\\u00e0y m\\u1edbi nh\\u1ea5t\",\"content\":\"a\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog-44.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:50:01', '2022-05-19 08:50:01'),
(570, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:50:02', '2022-05-19 08:50:02'),
(571, 1, 'sc_admin/news/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:50:10', '2022-05-19 08:50:10'),
(572, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 08:50:25', '2022-05-19 08:50:25');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(573, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950226039\"}', '2022-05-19 08:50:26', '2022-05-19 08:50:26'),
(574, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950226040\"}', '2022-05-19 08:50:26', '2022-05-19 08:50:26'),
(575, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950226041\"}', '2022-05-19 08:50:27', '2022-05-19 08:50:27'),
(576, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"time\",\"page\":\"1\",\"_\":\"1652950226042\"}', '2022-05-19 08:50:31', '2022-05-19 08:50:31'),
(577, 1, 'sc_admin/news/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog-1.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:50:36', '2022-05-19 08:50:36'),
(578, 1, 'sc_admin/news/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog-1.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:50:36', '2022-05-19 08:50:36'),
(579, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:50:37', '2022-05-19 08:50:37'),
(580, 1, 'sc_admin/news/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:51:12', '2022-05-19 08:51:12'),
(581, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 08:51:13', '2022-05-19 08:51:13'),
(582, 1, 'sc_admin/news/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:51:16', '2022-05-19 08:51:16'),
(583, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 08:51:20', '2022-05-19 08:51:20'),
(584, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950280641\"}', '2022-05-19 08:51:21', '2022-05-19 08:51:21'),
(585, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950280640\"}', '2022-05-19 08:51:21', '2022-05-19 08:51:21'),
(586, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950280642\"}', '2022-05-19 08:51:21', '2022-05-19 08:51:21'),
(587, 1, 'sc_admin/news/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"}},\"alias\":\"giay-the-thao\",\"image\":\"\\/data\\/content\\/blog-3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:51:37', '2022-05-19 08:51:37'),
(588, 1, 'sc_admin/news/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"}},\"alias\":\"giay-the-thao\",\"image\":\"\\/data\\/content\\/blog-3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:51:38', '2022-05-19 08:51:38'),
(589, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:51:38', '2022-05-19 08:51:38'),
(590, 1, 'sc_admin/news/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:51:46', '2022-05-19 08:51:46'),
(591, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 08:51:50', '2022-05-19 08:51:50'),
(592, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950310662\"}', '2022-05-19 08:51:51', '2022-05-19 08:51:51'),
(593, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950310663\"}', '2022-05-19 08:51:51', '2022-05-19 08:51:51'),
(594, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950310664\"}', '2022-05-19 08:51:51', '2022-05-19 08:51:51'),
(595, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:52:00', '2022-05-19 08:52:00'),
(596, 1, 'sc_admin/uploads/delete', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"items\":[\"blog-3.jpg\"],\"_\":\"1652950310665\"}', '2022-05-19 08:52:05', '2022-05-19 08:52:05'),
(597, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1652950310666\"}', '2022-05-19 08:52:06', '2022-05-19 08:52:06'),
(598, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950310667\"}', '2022-05-19 08:52:06', '2022-05-19 08:52:06'),
(599, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:52:16', '2022-05-19 08:52:16'),
(600, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1652950310668\"}', '2022-05-19 08:52:17', '2022-05-19 08:52:17'),
(601, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950310669\"}', '2022-05-19 08:52:17', '2022-05-19 08:52:17'),
(602, 1, 'sc_admin/news/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"},\"vi\":{\"title\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"keyword\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"description\":\"Gi\\u00e0y Th\\u1ec3 Thao\",\"content\":\"Gi&agrave;y Th\\u1ec3 Thao\"}},\"alias\":\"giay-the-thao\",\"image\":\"\\/data\\/content\\/blog-3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\"}', '2022-05-19 08:52:22', '2022-05-19 08:52:22'),
(603, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:52:22', '2022-05-19 08:52:22'),
(604, 1, 'sc_admin/news/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 08:52:27', '2022-05-19 08:52:27'),
(605, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"type\":\"content\"}', '2022-05-19 08:52:32', '2022-05-19 08:52:32'),
(606, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950352940\"}', '2022-05-19 08:52:33', '2022-05-19 08:52:33'),
(607, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1652950352941\"}', '2022-05-19 08:52:33', '2022-05-19 08:52:33'),
(608, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1652950352942\"}', '2022-05-19 08:52:34', '2022-05-19 08:52:34'),
(609, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 09:39:40', '2022-05-19 09:39:40'),
(610, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 09:51:57', '2022-05-19 09:51:57'),
(611, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 10:02:17', '2022-05-19 10:02:17'),
(612, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\",\"name\":\"product_buy_out_of_stock\",\"storeId\":\"1\",\"value\":\"0\"}', '2022-05-19 10:02:24', '2022-05-19 10:02:24'),
(613, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\",\"name\":\"customer_country\",\"storeId\":\"1\",\"value\":\"0\"}', '2022-05-19 10:03:00', '2022-05-19 10:03:00'),
(614, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"_token\":\"YrGqkWFDBb0YvakZyEnBWZks9zgRpfab6pVUNl6R\",\"name\":\"customer_country_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2022-05-19 10:03:01', '2022-05-19 10:03:01'),
(615, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 10:03:23', '2022-05-19 10:03:23'),
(616, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-19 10:15:04', '2022-05-19 10:15:04'),
(617, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-20 01:42:59', '2022-05-20 01:42:59'),
(618, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '{\"order_status\":\"1\"}', '2022-05-20 01:43:08', '2022-05-20 01:43:08'),
(619, 1, 'sc_admin/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-20 01:43:19', '2022-05-20 01:43:19'),
(620, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-20 02:09:33', '2022-05-20 02:09:33'),
(621, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '[]', '2022-05-20 02:26:31', '2022-05-20 02:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'admin.menu_titles.page_manager', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'admin.menu_titles.shipping_status', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'admin.menu_titles.order', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'admin.menu_titles.order_status', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'admin.menu_titles.payment_status', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'admin.menu_titles.product', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'admin.menu_titles.category', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 27, 4, 'admin.menu_titles.supplier', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 27, 5, 'admin.menu_titles.brand', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'admin.menu_titles.attribute_group', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'admin.menu_titles.customer', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'admin.menu_titles.subscribe', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'admin.menu_titles.block_content', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'admin.menu_titles.template', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'admin.menu_titles.store_info', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 9, 3, 'admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'admin.menu_titles.email_template', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'admin.menu_titles.localisation', 'fa fa-map-signs', '', 0, 0, NULL, NULL, NULL),
(31, 30, 1, 'admin.menu_titles.language', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 3, 'admin.menu_titles.currency', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'admin.menu_titles.banner', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'admin.menu_titles.backup_restore', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'admin.menu_titles.plugin', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 28, 2, 'admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 'admin.menu_titles.plugin_payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 0, 'admin.menu_titles.plugin_shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 0, 'admin.menu_titles.plugin_total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 'admin.menu_titles.plugin_other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 0, 'admin.menu_titles.plugin_cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 2, 'admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 28, 0, 'admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'admin.menu_titles.news', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'admin.menu_titles.store_maintain', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'admin.menu_titles.tax', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(62, 27, 6, 'admin.menu_titles.weight', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'admin.menu_titles.length', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(68, 27, 5, 'admin.menu_titles.custom_field', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, NULL),
(69, 30, 2, 'admin.menu_titles.language_manager', 'fa fa-universal-access', 'admin::language_manager', 0, 0, NULL, NULL, NULL),
(70, 9, 6, 'admin.menu_titles.security', 'fab fa-shirtsinbulk', '', 0, 0, 'ADMIN_SECURITY', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2022-05-15 03:01:01', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2022-05-15 03:01:01', NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', '2022-05-15 03:01:01', NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*', '2022-05-15 03:01:01', NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*', '2022-05-15 03:01:01', NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', '2022-05-15 03:01:01', NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', '2022-05-15 03:01:01', NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2022-05-15 03:01:01', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', '2022-05-15 03:01:01', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*', '2022-05-15 03:01:01', NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2022-05-15 03:01:01', NULL),
(12, 'CMS full', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2022-05-15 03:01:01', NULL),
(13, 'Update config', 'change.config', 'POST::sc_admin/store_config/update', '2022-05-15 03:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-05-15 03:01:01', NULL),
(2, 'Group only View', 'view.all', '2022-05-15 03:01:01', NULL),
(3, 'Manager', 'manager', '2022-05-15 03:01:01', NULL),
(4, 'CMS', 'cms', '2022-05-15 03:01:01', NULL),
(5, 'Accountant', 'accountant', '2022-05-15 03:01:01', NULL),
(6, 'Marketing', 'maketing', '2022-05-15 03:01:01', NULL),
(7, 'Admin CMS', 'admin_cms', '2022-05-15 03:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2022-05-15 03:01:01', NULL),
(3, 2, '2022-05-15 03:01:01', NULL),
(3, 3, '2022-05-15 03:01:01', NULL),
(3, 4, '2022-05-15 03:01:01', NULL),
(3, 5, '2022-05-15 03:01:01', NULL),
(3, 6, '2022-05-15 03:01:01', NULL),
(3, 7, '2022-05-15 03:01:01', NULL),
(3, 8, '2022-05-15 03:01:01', NULL),
(3, 9, '2022-05-15 03:01:01', NULL),
(3, 10, '2022-05-15 03:01:01', NULL),
(3, 11, '2022-05-15 03:01:01', NULL),
(3, 12, '2022-05-15 03:01:01', NULL),
(3, 13, '2022-05-15 03:01:01', NULL),
(4, 1, '2022-05-15 03:01:01', NULL),
(4, 12, '2022-05-15 03:01:01', NULL),
(5, 1, '2022-05-15 03:01:01', NULL),
(5, 2, '2022-05-15 03:01:01', NULL),
(5, 7, '2022-05-15 03:01:01', NULL),
(5, 11, '2022-05-15 03:01:01', NULL),
(6, 1, '2022-05-15 03:01:01', NULL),
(6, 2, '2022-05-15 03:01:01', NULL),
(6, 8, '2022-05-15 03:01:01', NULL),
(6, 10, '2022-05-15 03:01:01', NULL),
(6, 11, '2022-05-15 03:01:01', NULL),
(6, 12, '2022-05-15 03:01:01', NULL),
(7, 1, '2022-05-15 03:01:01', NULL),
(7, 4, '2022-05-15 03:01:01', NULL),
(7, 8, '2022-05-15 03:01:01', NULL),
(7, 12, '2022-05-15 03:01:01', NULL),
(7, 13, '2022-05-15 03:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Use for multi-store, multi-vendor',
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Use for multi-vendor',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'Use for multi-store, multi-vendor',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `icon`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, 'data/logo/scart-mid.png', NULL, '0359808267', 'Hỗ Trợ: 0359808267', 'NguyenQuangHai17@email.com', '', 'Tổ 2, phường Tân Thịnh, TP Thái Nguyên', NULL, NULL, 'shose', 'localhost/s-cart-6.7.2/public', '0', 's-cart', 'vi', 'Asia/Ho_Chi_Minh', 'VND', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
(1, 'en', 'Demo S-Cart : Free Laravel eCommerce', 'Free website shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>', 'Website is in maintenance mode!'),
(1, 'vi', 'Demo S-Cart: Mã nguồn website thương mại điện tử miễn phí', 'Laravel shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n</center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_template`
--

CREATE TABLE `sc_admin_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_template`
--

INSERT INTO `sc_admin_template` (`id`, `key`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 's-cart-light', 'S-Cart Light', 1, '2022-05-15 03:01:01', NULL),
(2, 'shose', 'Shose', 1, '2022-05-16 07:46:58', '2022-05-16 07:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$C7Q96Rods6Ze43fY/6JH8eMMOgBjh86RjHHRlpyDnuzG9g4aQKtHG', 'Administrator', 'admin@admin.com', '/admin/avatar/user.jpg', NULL, NULL, '2022-05-15 03:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '3fa2b6ac-d3fb-11ec-bd54-ecf4bbf952b5', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_languages`
--

CREATE TABLE `sc_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_languages`
--

INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1, 'action.from', 'From', 'action', 'en'),
(2, 'action.from', 'Từ', 'action', 'vi'),
(3, 'action.to', 'To', 'action', 'en'),
(4, 'action.to', 'Đến', 'action', 'vi'),
(5, 'action.disable', 'Disable', 'action', 'en'),
(6, 'action.disable', 'Vô hiệu hóa', 'action', 'vi'),
(7, 'action.disable_success', 'Disabled success', 'action', 'en'),
(8, 'action.disable_success', 'Vô hiệu hóa thành công', 'action', 'vi'),
(9, 'action.enable', 'Enable', 'action', 'en'),
(10, 'action.enable', 'Kích hoạt', 'action', 'vi'),
(11, 'action.enable_success', 'Enabled success', 'action', 'en'),
(12, 'action.enable_success', 'Kích hoạt thành công', 'action', 'vi'),
(13, 'action.remove', 'Removed', 'action', 'en'),
(14, 'action.remove', 'Gỡ bỏ', 'action', 'vi'),
(15, 'action.remove_success', 'Removedd success', 'action', 'en'),
(16, 'action.remove_success', 'Gỡ bỏ thành công', 'action', 'vi'),
(17, 'action.edit', 'Edit', 'action', 'en'),
(18, 'action.edit', 'Chỉnh sửa', 'action', 'vi'),
(19, 'action.update', 'Update', 'action', 'en'),
(20, 'action.update', 'Cập nhật', 'action', 'vi'),
(21, 'action.add', 'Thêm mới', 'action', 'vi'),
(22, 'action.add', 'Add new', 'action', 'en'),
(23, 'action.create', 'Create new', 'action', 'en'),
(24, 'action.create', 'Tạo mới', 'action', 'vi'),
(25, 'action.create_success', 'Tạo mới thành công', 'action', 'vi'),
(26, 'action.create_success', 'Create success', 'action', 'en'),
(27, 'action.edit_success', 'Edit success', 'action', 'en'),
(28, 'action.edit_success', 'Tạo mới thành công', 'action', 'vi'),
(29, 'action.update_success', 'Update success', 'action', 'en'),
(30, 'action.update_success', 'Cập nhật thành công', 'action', 'vi'),
(31, 'action.add_success', 'Add new success', 'action', 'en'),
(32, 'action.add_success', 'Thêm mới thành công', 'action', 'vi'),
(33, 'action.remote_success', 'Remove success', 'action', 'en'),
(34, 'action.remote_success', 'Gỡ bỏ thành công', 'action', 'vi'),
(35, 'action.delete_success', 'Delete success', 'action', 'en'),
(36, 'action.delete_success', 'Xóa thành công', 'action', 'vi'),
(37, 'action.remote', 'Gỡ bỏ', 'action', 'vi'),
(38, 'action.remote', 'Remove', 'action', 'en'),
(39, 'action.delete', 'Xóa', 'action', 'vi'),
(40, 'action.delete', 'Delete', 'action', 'en'),
(41, 'action.uninstall', 'Delete', 'action', 'en'),
(42, 'action.uninstall', 'Gỡ cài đặt', 'action', 'vi'),
(43, 'action.install', 'Cài đặt', 'action', 'vi'),
(44, 'action.install', 'Install', 'action', 'en'),
(45, 'action.click', 'Click', 'action', 'en'),
(46, 'action.click', 'Bấm', 'action', 'vi'),
(47, 'action.click_here', 'Click here', 'action', 'en'),
(48, 'action.click_here', 'Bấm vào đây', 'action', 'vi'),
(49, 'action.view', 'Xem', 'action', 'vi'),
(50, 'action.view', 'View', 'action', 'en'),
(51, 'action.view_more', 'View more', 'action', 'en'),
(52, 'action.view_more', 'Xem thêm', 'action', 'vi'),
(53, 'action.detail', 'Chi tiết', 'action', 'vi'),
(54, 'action.detail', 'Detail', 'action', 'en'),
(55, 'action.hidden', 'Hidden', 'action', 'en'),
(56, 'action.hidden', 'Ẩn', 'action', 'vi'),
(57, 'action.show', 'Hiển thị', 'action', 'vi'),
(58, 'action.show', 'Show', 'action', 'en'),
(59, 'action.submit', 'Submit', 'action', 'en'),
(60, 'action.submit', 'Gửi', 'action', 'vi'),
(61, 'action.save', 'Save', 'action', 'en'),
(62, 'action.save', 'Lưu lại', 'action', 'vi'),
(63, 'action.reset', 'Làm lại', 'action', 'vi'),
(64, 'action.reset', 'Reset', 'action', 'en'),
(65, 'action.logout', 'Đăng xuất', 'action', 'vi'),
(66, 'action.logout', 'Logout', 'action', 'en'),
(67, 'action.login', 'Đăng nhập', 'action', 'vi'),
(68, 'action.login', 'Login', 'action', 'en'),
(69, 'action.refresh', 'Làm mới', 'action', 'vi'),
(70, 'action.refresh', 'Refresh', 'action', 'en'),
(71, 'action.confirm', 'Xác nhận', 'action', 'vi'),
(72, 'action.confirm', 'Confirmation', 'action', 'en'),
(73, 'action.add_to_cart', 'Add to cart', 'action', 'en'),
(74, 'action.add_to_cart', 'Thêm vào giỏ hàng', 'action', 'vi'),
(75, 'action.add_to_wishlist', 'Thêm yêu thích', 'action', 'vi'),
(76, 'action.add_to_wishlist', 'Add to wishlist', 'action', 'en'),
(77, 'action.add_to_compare', 'Add to compare', 'action', 'en'),
(78, 'action.add_to_compare', 'Thêm so sánh', 'action', 'vi'),
(79, 'action.buy_now', 'Mua ngay', 'action', 'vi'),
(80, 'action.buy_now', 'Buy now', 'action', 'en'),
(81, 'action.re_order', 'Re-order', 'action', 'en'),
(82, 'action.re_order', 'Mua lại', 'action', 'vi'),
(83, 'action.order', 'Đặt hàng', 'action', 'vi'),
(84, 'action.order', 'Order', 'action', 'en'),
(85, 'action.title', 'Action', 'action', 'en'),
(86, 'action.title', 'Thao tác', 'action', 'vi'),
(87, 'action.confirm_agree', 'Agree', 'action', 'en'),
(88, 'action.confirm_agree', 'Đồng ý', 'action', 'vi'),
(89, 'action.confirm_cancel', 'Hủy bỏ', 'action', 'vi'),
(90, 'action.confirm_cancel', 'Cancel', 'action', 'en'),
(91, 'action.confirm_yes', 'Yes', 'action', 'en'),
(92, 'action.confirm_yes', 'Có', 'action', 'vi'),
(93, 'action.confirm_no', 'Không', 'action', 'vi'),
(94, 'action.confirm_no', 'No', 'action', 'en'),
(95, 'action.delete_confirm', 'Are you sure to delete it?', 'action', 'en'),
(96, 'action.delete_confirm', 'Bạn có chắc chắn sẽ xóa nó?', 'action', 'vi'),
(97, 'action.delete_confirm_deleted', 'Deleted', 'action', 'en'),
(98, 'action.delete_confirm_deleted', 'Đã xóa', 'action', 'vi'),
(99, 'action.delete_confirm_deleted_msg', 'Item has deleted', 'action', 'en'),
(100, 'action.delete_confirm_deleted_msg', 'Item này đã được xóa.', 'action', 'vi'),
(101, 'action.remove_confirm', 'Are you sure to remove it?', 'action', 'en'),
(102, 'action.remove_confirm', 'Bạn có chắc chắn gỡ nó?', 'action', 'vi'),
(103, 'action.action_confirm', 'Bạn có chắc chắn thao tác này?', 'action', 'vi'),
(104, 'action.action_confirm', 'Are you sure you do this?', 'action', 'en'),
(105, 'action.action_confirm_warning', 'Hành động này sẽ không thể phục hồi', 'action', 'vi'),
(106, 'action.action_confirm_warning', 'This action will not be restore', 'action', 'en'),
(107, 'action.warning', 'Warning', 'action', 'en'),
(108, 'action.warning', 'Cảnh báo', 'action', 'vi'),
(109, 'action.notify', 'Thông báo', 'action', 'vi'),
(110, 'action.notify', 'Notify', 'action', 'en'),
(111, 'action.sort', 'Sort items', 'action', 'en'),
(112, 'action.sort', 'Sắp xếp', 'action', 'vi'),
(113, 'action.search', 'Tìm kiếm', 'action', 'vi'),
(114, 'action.search', 'Search', 'action', 'en'),
(115, 'action.copy', 'Sao chép', 'action', 'vi'),
(116, 'action.copy', 'Copy', 'action', 'en'),
(117, 'action.duplicate', 'Duplicate', 'action', 'en'),
(118, 'action.duplicate', 'Nhân bản', 'action', 'vi'),
(119, 'action.allow', 'Allow', 'action', 'en'),
(120, 'action.allow', 'Cho phép', 'action', 'vi'),
(121, 'action.deny', 'Deny', 'action', 'en'),
(122, 'action.deny', 'Ngăn chặn', 'action', 'vi'),
(123, 'front.home', 'Trang chủ', 'front', 'vi'),
(124, 'front.home', 'Home', 'front', 'en'),
(125, 'front.shop', 'Cửa hàng', 'front', 'vi'),
(126, 'front.shop', 'Shop', 'front', 'en'),
(127, 'front.store', 'Cửa hàng', 'front', 'vi'),
(128, 'front.store', 'Store', 'front', 'en'),
(129, 'front.store_list', 'Danh sách cửa hàng', 'front', 'vi'),
(130, 'front.store_list', 'Store list', 'front', 'en'),
(131, 'front.link_useful', 'Liên kết hữu ích', 'front', 'vi'),
(132, 'front.link_useful', 'Link useful', 'front', 'en'),
(133, 'front.brands', 'Nhãn hàng', 'front', 'vi'),
(134, 'front.brands', 'Brands', 'front', 'en'),
(135, 'front.categories', 'Danh mục', 'front', 'vi'),
(136, 'front.categories', 'Categries', 'front', 'en'),
(137, 'front.sub_categories', 'Danh mục nhỏ', 'front', 'vi'),
(138, 'front.sub_categories', 'Subcategory', 'front', 'en'),
(139, 'front.blog', 'Tin Tức', 'front', 'vi'),
(140, 'front.blog', 'Blogs', 'front', 'en'),
(141, 'front.news', 'Tin tức', 'front', 'vi'),
(142, 'front.news', 'News', 'front', 'en'),
(143, 'front.about', 'About us', 'front', 'en'),
(144, 'front.about', 'Giới thiệu', 'front', 'vi'),
(145, 'front.contact', 'Contact us', 'front', 'en'),
(146, 'front.contact', 'Liên hệ', 'front', 'vi'),
(147, 'front.cms_category', 'Danh mục CMS', 'front', 'vi'),
(148, 'front.cms_category', 'CMS category', 'front', 'en'),
(149, 'front.my_profile', 'Tài khoản', 'front', 'vi'),
(150, 'front.my_profile', 'My profile', 'front', 'en'),
(151, 'front.my_account', 'Tài khoản', 'front', 'vi'),
(152, 'front.my_account', 'My account', 'front', 'en'),
(153, 'front.account', 'Tài khoản', 'front', 'vi'),
(154, 'front.account', 'customer', 'front', 'en'),
(155, 'front.currency', 'Tiền tệ', 'front', 'vi'),
(156, 'front.currency', 'Currency', 'front', 'en'),
(157, 'front.language', 'Ngôn ngữ', 'front', 'vi'),
(158, 'front.language', 'Language', 'front', 'en'),
(159, 'front.cart', 'Giỏ hàng', 'front', 'vi'),
(160, 'front.cart', 'Cart', 'front', 'en'),
(161, 'front.compare', 'So sánh', 'front', 'vi'),
(162, 'front.compare', 'Compare', 'front', 'en'),
(163, 'front.compare_page', 'Sản phẩm so sánh', 'front', 'vi'),
(164, 'front.compare_page', 'Product compare', 'front', 'en'),
(165, 'front.wishlist', 'Yêu thích', 'front', 'vi'),
(166, 'front.wishlist', 'Wishlist', 'front', 'en'),
(167, 'front.wishlist_page', 'Sản phẩm yêu thich', 'front', 'vi'),
(168, 'front.wishlist_page', 'Product Wishlist', 'front', 'en'),
(169, 'front.login', 'Đăng nhập', 'front', 'vi'),
(170, 'front.login', 'Login', 'front', 'en'),
(171, 'front.logout', 'Đăng xuất', 'front', 'vi'),
(172, 'front.logout', 'Logout', 'front', 'en'),
(173, 'front.maintenace', 'Bảo trì', 'front', 'vi'),
(174, 'front.maintenace', 'Maintenace', 'front', 'en'),
(175, 'front.products_hot', 'Hot Products', 'front', 'en'),
(176, 'front.products_hot', 'Sản phẩm nổi bật', 'front', 'vi'),
(177, 'front.products_promotion', 'Promotion Products', 'front', 'en'),
(178, 'front.products_promotion', 'Sản phẩm khuyến mãi', 'front', 'vi'),
(179, 'front.products_special', 'Special products', 'front', 'en'),
(180, 'front.products_special', 'Sản phẩm đặc biệt', 'front', 'vi'),
(181, 'front.products_last_view', 'Last view products', 'front', 'en'),
(182, 'front.products_last_view', 'Sản phẩm mới xem', 'front', 'vi'),
(183, 'front.products_build', 'Product bundle', 'front', 'en'),
(184, 'front.products_build', 'Sản phẩm bộ', 'front', 'vi'),
(185, 'front.products_bundle', 'Product bundle', 'front', 'en'),
(186, 'front.products_bundle', 'Sản phẩm bộ', 'front', 'vi'),
(187, 'front.products_single', 'Product single', 'front', 'en'),
(188, 'front.products_single', 'Sản phẩm đơn', 'front', 'vi'),
(189, 'front.products_group', 'Product group', 'front', 'en'),
(190, 'front.products_group', 'Sản phẩm nhóm', 'front', 'vi'),
(191, 'front.products_new', 'New products', 'front', 'en'),
(192, 'front.products_new', 'Sản phẩm mới', 'front', 'vi'),
(193, 'front.products_recommend', 'Recommend products', 'front', 'en'),
(194, 'front.products_recommend', 'Sản phẩm đề xuất', 'front', 'vi'),
(195, 'front.product_detail', 'Product detail', 'front', 'en'),
(196, 'front.product_detail', 'Chi tiết sản phẩm', 'front', 'vi'),
(197, 'front.categories_store', 'Categories', 'front', 'en'),
(198, 'front.categories_store', 'Danh mục', 'front', 'vi'),
(199, 'front.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'front', 'en'),
(200, 'front.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'front', 'vi'),
(201, 'front.all_product', 'Tất cả sản phẩm', 'front', 'vi'),
(202, 'front.all_product', 'All products', 'front', 'en'),
(203, 'front.data_notfound', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(204, 'front.data_notfound', 'Data not found!', 'front', 'en'),
(205, 'front.data_not_found', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(206, 'front.data_not_found', 'Data not found!', 'front', 'en'),
(207, 'front.data_not_found_title', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(208, 'front.data_not_found_title', 'Data not found!', 'front', 'en'),
(209, 'front.page_notfound', 'Không tìm thấy trang!', 'front', 'vi'),
(210, 'front.page_notfound', 'Page not found!', 'front', 'en'),
(211, 'front.page_not_found', 'Không tìm thấy trang!', 'front', 'vi'),
(212, 'front.page_not_found', 'Page not found!', 'front', 'en'),
(213, 'front.page_not_found_title', 'Không tìm thấy trang!', 'front', 'vi'),
(214, 'front.page_not_found_title', 'Page not found!', 'front', 'en'),
(215, 'front.flash_stock', 'Available', 'front', 'en'),
(216, 'front.flash_sold', 'Already Sold', 'front', 'en'),
(217, 'front.flash_title', 'Flash sale', 'front', 'en'),
(218, 'front.flash_stock', 'Còn lại', 'front', 'vi'),
(219, 'front.flash_sold', 'Đã bán', 'front', 'vi'),
(220, 'front.flash_title', 'Flash sale', 'front', 'vi'),
(221, 'front.products_best_seller', 'Sản phẩm thịnh hành', 'front', 'vi'),
(222, 'front.products_best_seller', 'Trending products', 'front', 'en'),
(223, 'front.products_trending', 'Sản phẩm bán chạy nhất', 'front', 'vi'),
(224, 'front.products_trending', 'Product best seller', 'front', 'en'),
(225, 'front.search_result', 'Kết quả tìm kiếm', 'front', 'vi'),
(226, 'front.search_result', 'Search result', 'front', 'en'),
(227, 'front.view_not_exist', 'Không có view :view', 'front', 'vi'),
(228, 'front.view_not_exist', 'View not found :view', 'front', 'en'),
(229, 'front.no_item', 'Không tìm thấy item nào', 'front', 'vi'),
(230, 'front.no_item', 'No items found', 'front', 'en'),
(231, 'search.placeholder', 'Nhập từ khóa', 'search', 'vi'),
(232, 'search.placeholder', 'Input keyword', 'search', 'en'),
(233, 'store.deny_help_1', 'Sorry, this domain does not exist on the system!', 'store', 'en'),
(234, 'store.deny_help_1', 'Xin lỗi, tên miền này không có trên hệ thống!', 'store', 'vi'),
(235, 'store.deny_help_2', 'Return to home page', 'store', 'en'),
(236, 'store.deny_help_2', 'Trở về trang chủ', 'store', 'vi'),
(237, 'store.address', 'Address', 'store', 'en'),
(238, 'store.address', 'Địa chỉ', 'store', 'vi'),
(239, 'store.phone', 'Phone', 'store', 'en'),
(240, 'store.phone', 'Số điện thoại', 'store', 'vi'),
(241, 'store.hotline', 'Hotline', 'store', 'en'),
(242, 'store.hotline', 'Số điện thoại', 'store', 'vi'),
(243, 'store.email', 'Email', 'store', 'vi'),
(244, 'store.email', 'Email', 'store', 'en'),
(245, 'store.title', 'Tên cửa hàng', 'store', 'vi'),
(246, 'store.title', 'Store title', 'store', 'en'),
(247, 'store.keyword', 'Từ khóa', 'store', 'vi'),
(248, 'store.keyword', 'Keyword', 'store', 'en'),
(249, 'store.description', 'Mô tả', 'store', 'vi'),
(250, 'store.description', 'Description', 'store', 'en'),
(251, 'store.language', 'Ngôn ngữ', 'store', 'vi'),
(252, 'store.language', 'Language', 'store', 'en'),
(253, 'store.currency', 'Tiền tệ', 'store', 'vi'),
(254, 'store.currency', 'Currency', 'store', 'en'),
(255, 'store.timezone', 'Múi giờ', 'store', 'vi'),
(256, 'store.timezone', 'Timezone', 'store', 'en'),
(257, 'store.admin.template', 'Giao diện', 'store.admin', 'vi'),
(258, 'store.admin.template', 'Template', 'store.admin', 'en'),
(259, 'store.admin.domain', 'Tên miền', 'store.admin', 'vi'),
(260, 'store.admin.domain', 'Domain', 'store.admin', 'en'),
(261, 'store.admin.domain_help', 'Ví dụ: https://abc.com', 'store.admin', 'vi'),
(262, 'store.admin.domain_help', 'For example: https://abc.com', 'store.admin', 'en'),
(263, 'store.admin.domain_invalid', 'Tên miền không hợp lệ', 'store.admin', 'vi'),
(264, 'store.admin.domain_invalid', 'Domain invalid', 'store.admin', 'en'),
(265, 'store.warehouse', 'Nhà kho', 'store', 'vi'),
(266, 'store.warehouse', 'Warehouse', 'store', 'en'),
(267, 'store.office', 'Văn phòng', 'store', 'vi'),
(268, 'store.office', 'Office', 'store', 'en'),
(269, 'store.time_active', 'Thời gian làm việc', 'store', 'vi'),
(270, 'store.time_active', 'Time active', 'store', 'en'),
(271, 'store.long_phone', 'Số điện thoại', 'store', 'vi'),
(272, 'store.long_phone', 'Full phone', 'store', 'en'),
(273, 'store.logo', 'Logo', 'store', 'vi'),
(274, 'store.logo', 'Logo', 'store', 'en'),
(275, 'store.icon', 'Icon', 'store', 'vi'),
(276, 'store.icon', 'Icon', 'store', 'en'),
(277, 'store.maintenance', 'Bảo trì', 'store', 'vi'),
(278, 'store.maintenance', 'Maintenance', 'store', 'en'),
(279, 'store.admin.code', 'Store code', 'store.admin', 'en'),
(280, 'store.admin.code', 'Mã cửa hàng', 'store.admin', 'vi'),
(281, 'store.admin.css', 'Edit CSS', 'store.admin', 'en'),
(282, 'store.admin.css', 'Chỉnh sửa CSS', 'store.admin', 'vi'),
(283, 'store.admin.title', 'Thông tin cửa hàng', 'store.admin', 'vi'),
(284, 'store.admin.config_store', 'Cấu hình cửa hàng #:id', 'store.admin', 'vi'),
(285, 'store.admin.config_store_detail', 'Cấu hình cửa hàng', 'store.admin', 'vi'),
(286, 'store.admin.list', 'Danh sách cửa hàng', 'store.admin', 'vi'),
(287, 'store.admin.field', 'Các trường', 'store.admin', 'vi'),
(288, 'store.admin.value', 'Giá trị', 'store.admin', 'vi'),
(289, 'store.admin.config_mode', 'Cấu hình mode', 'store.admin', 'vi'),
(290, 'store.admin.config_display', 'Cấu hình hiển thị', 'store.admin', 'vi'),
(291, 'store.admin.config_customize', 'Cấu hình tùy chỉnh', 'store.admin', 'vi'),
(292, 'store.admin.status', 'Status', 'store.admin', 'vi'),
(293, 'store.admin.action', 'Hành động', 'store.admin', 'vi'),
(294, 'store.admin.add_new', 'Thêm mới', 'store.admin', 'vi'),
(295, 'store.admin.sort', 'Sắp xếp', 'store.admin', 'vi'),
(296, 'store.admin.search', 'Tìm kiếm', 'store.admin', 'vi'),
(297, 'store.admin.add_new_title', 'Tạo cửa hàng', 'store.admin', 'vi'),
(298, 'store.admin.add_new_des', 'Tạo mới một cửa hàng', 'store.admin', 'vi'),
(299, 'store.admin.config_info', 'Thông tin', 'store.admin', 'vi'),
(300, 'store.admin.config_product', 'Sản phẩm', 'store.admin', 'vi'),
(301, 'store.admin.config_customer', 'Khách hàng', 'store.admin', 'vi'),
(302, 'store.admin.config_email', 'Email', 'store.admin', 'vi'),
(303, 'store.admin.config_url', 'URL', 'store.admin', 'vi'),
(304, 'store.admin.config_api', 'API', 'store.admin', 'vi'),
(305, 'store.admin.config_order', 'Đơn hàng', 'store.admin', 'vi'),
(306, 'store.admin.config_other', 'Khác', 'store.admin', 'vi'),
(307, 'store.admin.switch_store', 'Chuyển đổi cửa hàng', 'store.admin', 'vi'),
(308, 'store.admin.config_admin_other', 'Cấu hình admin', 'store.admin', 'vi'),
(309, 'store.admin.active_strict', 'Kích hoạt chế độ kiểm tra tên miền', 'store.admin', 'vi'),
(310, 'store.admin.active_domain', 'Kích hoạt tên miền', 'store.admin', 'vi'),
(311, 'store.admin.active_maintain', 'Kích hoạt chế độ bảo trì', 'store.admin', 'vi'),
(312, 'store.admin.domain_exist', 'Tên miền đã có rồi', 'store.admin', 'vi'),
(313, 'store.admin.code_exist', 'Mã code đã có rồi', 'store.admin', 'vi'),
(314, 'store.admin.value_cannot_change', 'Giá trị này không thể thay đổi', 'store.admin', 'vi'),
(315, 'store.admin.title', 'Store infomation', 'store.admin', 'en'),
(316, 'store.admin.config_store', 'Config store #:id', 'store.admin', 'en'),
(317, 'store.admin.config_store_detail', 'Config store', 'store.admin', 'en'),
(318, 'store.admin.list', 'Store list', 'store.admin', 'en'),
(319, 'store.admin.field', 'Field', 'store.admin', 'en'),
(320, 'store.admin.value', 'Value', 'store.admin', 'en'),
(321, 'store.admin.config_mode', 'Store mode', 'store.admin', 'en'),
(322, 'store.admin.config_display', 'Store display', 'store.admin', 'en'),
(323, 'store.admin.config_customize', 'Config customize', 'store.admin', 'en'),
(324, 'store.admin.status', 'Status', 'store.admin', 'en'),
(325, 'store.admin.action', 'Action', 'store.admin', 'en'),
(326, 'store.admin.sort', 'Sort', 'store.admin', 'en'),
(327, 'store.admin.search', 'Search', 'store.admin', 'en'),
(328, 'store.admin.add_new', 'Add new', 'store.admin', 'en'),
(329, 'store.admin.add_new_title', 'Add new store', 'store.admin', 'en'),
(330, 'store.admin.add_new_des', 'Create a new store', 'store.admin', 'en'),
(331, 'store.admin.config_info', 'Infomation', 'store.admin', 'en'),
(332, 'store.admin.config_order', 'Order', 'store.admin', 'en'),
(333, 'store.admin.config_product', 'Product', 'store.admin', 'en'),
(334, 'store.admin.config_customer', 'Customer', 'store.admin', 'en'),
(335, 'store.admin.config_email', 'Email', 'store.admin', 'en'),
(336, 'store.admin.config_url', 'URL', 'store.admin', 'en'),
(337, 'store.admin.config_api', 'API', 'store.admin', 'en'),
(338, 'store.admin.config_other', 'Other', 'store.admin', 'en'),
(339, 'store.admin.switch_store', 'Switch store', 'store.admin', 'en'),
(340, 'store.admin.config_admin_other', 'Config admin', 'store.admin', 'en'),
(341, 'store.admin.active_strict', 'Activate domain check mode', 'store.admin', 'en'),
(342, 'store.admin.active_domain', 'Activate the domain name', 'store.admin', 'en'),
(343, 'store.admin.active_maintain', 'Activate maintenance mode', 'store.admin', 'en'),
(344, 'store.admin.domain_exist', 'Domain exist already', 'store.admin', 'en'),
(345, 'store.admin.code_exist', 'Code exist already', 'store.admin', 'en'),
(346, 'store.admin.value_cannot_change', 'This value cannot be changed', 'store.admin', 'en'),
(347, 'store.display.product_top', 'Top product', 'store.admin', 'en'),
(348, 'store.display.product_top', 'Top sản phẩm', 'store.admin', 'vi'),
(349, 'store.display.list_product', 'List product', 'store.admin', 'en'),
(350, 'store.display.list_product', 'Danh sách sản phẩm', 'store.admin', 'vi'),
(351, 'store.display.relation_product', 'Relation product', 'store.admin', 'en'),
(352, 'store.display.relation_product', 'Sản phẩm liên quan', 'store.admin', 'vi'),
(353, 'store.display.viewed_product', 'Product viewed', 'store.admin', 'en'),
(354, 'store.display.viewed_product', 'Sản phẩm đã xem', 'store.admin', 'vi'),
(355, 'store.display.item_list', 'List item', 'store.admin', 'en'),
(356, 'store.display.item_list', 'Danh sách item', 'store.admin', 'vi'),
(357, 'store.display.item_top', 'Top item', 'store.admin', 'en'),
(358, 'store.display.item_top', 'Top item', 'store.admin', 'vi'),
(359, 'cart.checkout', 'Checkout', 'cart', 'en'),
(360, 'cart.checkout', 'Thanh toán', 'cart', 'vi'),
(361, 'cart.back_to_cart', 'Back to cart', 'cart', 'en'),
(362, 'cart.back_to_cart', 'Trở lại giỏ hàng', 'cart', 'vi'),
(363, 'cart.confirm', 'Confirm', 'cart', 'en'),
(364, 'cart.confirm', 'Xác nhận', 'cart', 'vi'),
(365, 'cart.cart_title', 'Shopping cart', 'cart', 'en'),
(366, 'cart.cart_title', 'Trang giỏ hàng', 'cart', 'vi'),
(367, 'cart.page_title', 'Shopping cart', 'cart', 'en'),
(368, 'cart.page_title', 'Trang giỏ hàng', 'cart', 'vi'),
(369, 'cart.back_to_shop', 'Back to shop', 'cart', 'en'),
(370, 'cart.back_to_shop', 'Trở về của hàng', 'cart', 'vi'),
(371, 'cart.remove_all', 'Remove cart', 'cart', 'en'),
(372, 'cart.remove_all', 'Xóa giỏ hàng', 'cart', 'vi'),
(373, 'cart.minimum_value', 'Minimum :value items', 'cart', 'en'),
(374, 'cart.minimum_value', 'Tối thiểu :value item', 'cart', 'vi'),
(375, 'cart.note', 'Note', 'cart', 'en'),
(376, 'cart.note', 'Ghi chú', 'cart', 'vi'),
(377, 'cart.coupon', 'Coupon', 'cart', 'en'),
(378, 'cart.coupon', 'Mã giảm giá', 'cart', 'vi'),
(379, 'cart.remove_coupon', 'Remove coupon', 'cart', 'en'),
(380, 'cart.remove_coupon', 'Xóa mã giảm giá', 'cart', 'vi'),
(381, 'cart.coupon_empty', 'Coupon empty', 'cart', 'en'),
(382, 'cart.coupon_empty', 'Không có mã giảm giá', 'cart', 'vi'),
(383, 'cart.apply', 'Apply', 'cart', 'en'),
(384, 'cart.apply', 'Áp dụng', 'cart', 'vi'),
(385, 'cart.change_address', 'Change address', 'cart', 'en'),
(386, 'cart.change_address', 'Thay đổi địa chỉ', 'cart', 'vi'),
(387, 'cart.add_new_address', 'Add new address', 'cart', 'en'),
(388, 'cart.add_new_address', 'Thêm địa chỉ mới', 'cart', 'vi'),
(389, 'cart.page_wishlist_title', 'Page wishlist', 'cart', 'en'),
(390, 'cart.page_wishlist_title', 'Trang sản phẩm yêu thich', 'cart', 'vi'),
(391, 'cart.page_compare_title', 'Page compare', 'cart', 'en'),
(392, 'cart.page_compare_title', 'Trang so sánh sản phẩm', 'cart', 'vi'),
(393, 'cart.shipping_address', 'Shipping address', 'cart', 'en'),
(394, 'cart.shipping_address', 'Địa chỉ giao hàng', 'cart', 'vi'),
(395, 'cart.payment_address', 'Payment address', 'cart', 'en'),
(396, 'cart.payment_address', 'Địa chỉ thanh toán', 'cart', 'vi'),
(397, 'cart.payment_method', 'Phương thức thanh toán', 'cart', 'vi'),
(398, 'cart.payment_method', 'Payment method', 'cart', 'en'),
(399, 'cart.shipping_method', 'Phương thức vận chuyển', 'cart', 'vi'),
(400, 'cart.shipping_method', 'Shipping method', 'cart', 'en'),
(401, 'cart.country', 'Country', 'cart', 'en'),
(402, 'cart.country', 'Quốc gia', 'cart', 'vi'),
(403, 'cart.company', 'Công ty', 'cart', 'vi'),
(404, 'cart.company', 'Company', 'cart', 'en'),
(405, 'cart.address3', 'Địa chỉ nhà', 'cart', 'vi'),
(406, 'cart.address3', 'Address 3', 'cart', 'en'),
(407, 'cart.address2', 'Quận/Huyện', 'cart', 'vi'),
(408, 'cart.address2', 'Address 2', 'cart', 'en'),
(409, 'cart.address1', 'Tỉnh/Thành', 'cart', 'vi'),
(410, 'cart.address1', 'Address 1', 'cart', 'en'),
(411, 'cart.postcode', 'Mã bưu điện', 'cart', 'vi'),
(412, 'cart.postcode', 'Post code', 'cart', 'en'),
(413, 'cart.phone', 'Phone', 'cart', 'en'),
(414, 'cart.phone', 'Điện thoại', 'cart', 'vi'),
(415, 'cart.last_name_kana', 'Họ kana', 'cart', 'vi'),
(416, 'cart.last_name_kana', 'Last name kana', 'cart', 'en'),
(417, 'cart.first_name_kana', 'First name kana', 'cart', 'en'),
(418, 'cart.first_name_kana', 'Tên Kana', 'cart', 'vi'),
(419, 'cart.full_name', 'Full name', 'cart', 'en'),
(420, 'cart.full_name', 'Tên đầy đủ', 'cart', 'vi'),
(421, 'cart.name', 'Name', 'cart', 'en'),
(422, 'cart.name', 'Tên', 'cart', 'vi'),
(423, 'cart.midle_name', 'Tên đệm', 'cart', 'vi'),
(424, 'cart.midle_name', 'Midle name', 'cart', 'en'),
(425, 'cart.last_name', 'Họ', 'cart', 'vi'),
(426, 'cart.last_name', 'Last name', 'cart', 'en'),
(427, 'cart.first_name', 'Tên', 'cart', 'vi'),
(428, 'cart.first_name', 'First name', 'cart', 'en'),
(429, 'cart.email', 'Email', 'cart', 'vi'),
(430, 'cart.email', 'Email', 'cart', 'en'),
(431, 'cart.sex', 'Giới tính', 'cart', 'vi'),
(432, 'cart.sex', 'Sex', 'cart', 'en'),
(433, 'cart.birthday', 'Ngày sinh', 'cart', 'vi'),
(434, 'cart.birthday', 'Birthday', 'cart', 'en'),
(435, 'cart.validation.shippingMethod_required', 'Shipping method required', 'cart', 'en'),
(436, 'cart.validation.shippingMethod_required', 'Giao thức giao hàng là bắt buộc', 'cart', 'vi'),
(437, 'cart.validation.paymentMethod_required', 'Payment method required', 'cart', 'en'),
(438, 'cart.validation.paymentMethod_required', 'Phương thức thanh toán là bắt buộc', 'cart', 'vi'),
(439, 'cart.add_to_cart_success', 'Thêm vào :instance thành công', 'cart', 'vi'),
(440, 'cart.add_to_cart_success', 'Add to :instance success', 'cart', 'en'),
(441, 'cart.item_exist_in_cart', 'This item is already in stock in the :instance', 'cart', 'en'),
(442, 'cart.item_exist_in_cart', 'Item này đã có trong :instance rồi', 'cart', 'vi'),
(443, 'cart.item_over_qty', 'The number of :sku must not exceed :qty', 'cart', 'en'),
(444, 'cart.item_over_qty', 'Số lượng của :sku không được vượt quá :qty', 'cart', 'vi'),
(445, 'cart.have_error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại.', 'cart', 'vi'),
(446, 'cart.have_error', 'Have an error. Please check again.', 'cart', 'en'),
(447, 'cart.cart_store_id_notfound', 'Không tìm thấy ID cửa hàng.', 'cart', 'vi'),
(448, 'cart.cart_store_id_notfound', 'Store ID not found', 'cart', 'en'),
(449, 'cart.cart_empty', 'Giỏ hàng rỗng.', 'cart', 'vi'),
(450, 'cart.cart_empty', 'The shopping cart is empty', 'cart', 'en'),
(451, 'cart.cart_store_empty', 'Giỏ hàng trong shop rỗng.', 'cart', 'vi'),
(452, 'cart.cart_store_empty', 'The shopping cart in the shop is empty', 'cart', 'en'),
(453, 'checkout.title', 'Checkout', 'checkout', 'en'),
(454, 'checkout.title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(455, 'checkout.order_success_msg', 'Thank you for your purchase!', 'checkout', 'en'),
(456, 'checkout.order_success_msg', 'Cảm ơn vì đơn hàng của bạn!', 'checkout', 'vi'),
(457, 'checkout.order_success_order_info', 'Your order #:order_id', 'checkout', 'en'),
(458, 'checkout.order_success_order_info', 'Đơn hàng của bạn là #:order_id', 'checkout', 'vi'),
(459, 'checkout.page_title', 'Checkout page', 'checkout', 'en'),
(460, 'checkout.page_title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(461, 'checkout.success_title', 'Order success', 'checkout', 'en'),
(462, 'checkout.success_title', 'Đặt hàng thành công', 'checkout', 'vi'),
(463, 'product.name', 'Name', 'product', 'en'),
(464, 'product.name', 'Tên', 'product', 'vi'),
(465, 'product.keyword', 'Keyword ', 'product', 'en'),
(466, 'product.keyword', 'Từ khóa', 'product', 'vi'),
(467, 'product.content', 'Main content', 'product', 'en'),
(468, 'product.content', 'Nội dung chính', 'product', 'vi'),
(469, 'product.sku', 'SKU code', 'product', 'en'),
(470, 'product.sku', 'Mã SKU', 'product', 'vi'),
(471, 'product.stock', 'Stock', 'product', 'en'),
(472, 'product.stock', 'Số lượng trong kho', 'product', 'vi'),
(473, 'product.cost', 'Price cost', 'product', 'en'),
(474, 'product.cost', 'Giá cost', 'product', 'vi'),
(475, 'product.price', 'Price', 'product', 'en'),
(476, 'product.price', 'Giá', 'product', 'vi'),
(477, 'product.image', 'Image', 'product', 'en'),
(478, 'product.image', 'Hình ảnh', 'product', 'vi'),
(479, 'product.view', 'Viewed', 'product', 'en'),
(480, 'product.view', 'Lượt xem', 'product', 'vi'),
(481, 'product.kind', 'Kind', 'product', 'en'),
(482, 'product.kind', 'Kiểu', 'product', 'vi'),
(483, 'product.sold', 'Sold', 'product', 'en'),
(484, 'product.sold', 'Đã bán', 'product', 'vi'),
(485, 'product.minimum', 'Minimum', 'product', 'en'),
(486, 'product.minimum', 'Tối thiểu', 'product', 'vi'),
(487, 'product.minimum_help', 'Minimum quantity to order', 'product', 'en'),
(488, 'product.minimum_help', 'Số lượng tối thiểu đề đặt hàng', 'product', 'vi'),
(489, 'product.width', 'Width', 'product', 'en'),
(490, 'product.width', 'Chiều rộng', 'product', 'vi'),
(491, 'product.status', 'Status', 'product', 'en'),
(492, 'product.status', 'Trạng thái', 'product', 'vi'),
(493, 'product.quantity', 'Quantity', 'product', 'en'),
(494, 'product.quantity', 'Số lượng', 'product', 'vi'),
(495, 'product.weight', 'Weight', 'product', 'en'),
(496, 'product.weight', 'Khối lượng', 'product', 'vi'),
(497, 'product.length', 'Length', 'product', 'en'),
(498, 'product.length', 'Kích thước', 'product', 'vi'),
(499, 'product.height', 'Height', 'product', 'en'),
(500, 'product.height', 'Chiều cao', 'product', 'vi'),
(501, 'product.property', 'Property', 'product', 'en'),
(502, 'product.property', 'Đặc tính', 'product', 'vi'),
(503, 'product.download_path', 'Url or path to file', 'product', 'en'),
(504, 'product.download_path', 'Liên kết hoặc đường dẫn tới tập tin', 'product', 'vi'),
(505, 'product.attribute', 'Attribute', 'product', 'en'),
(506, 'product.attribute', 'Thuộc tính', 'product', 'vi'),
(507, 'product.tax', 'Tax', 'product', 'en'),
(508, 'product.tax', 'Thuế', 'product', 'vi'),
(509, 'product.price_group', 'Click view price', 'product', 'en'),
(510, 'product.price_group', 'Bấm xem giá', 'product', 'vi'),
(511, 'product.price_group_chose', 'Click choose product', 'product', 'en'),
(512, 'product.price_group_chose', 'Bấm chọn sản phẩm', 'product', 'vi'),
(513, 'product.subtotal', 'Subtotal', 'product', 'en'),
(514, 'product.subtotal', 'Giá sản phẩm', 'product', 'vi'),
(515, 'product.sub_total', 'Subtotal', 'product', 'en'),
(516, 'product.sub_total', 'Giá sản phẩm', 'product', 'vi'),
(517, 'product.total_price', 'Total price', 'product', 'en'),
(518, 'product.total_price', 'Tổng tiền', 'product', 'vi'),
(519, 'product.stock_status', 'Stock status', 'product', 'en'),
(520, 'product.stock_status', 'Trạng thái tồn', 'product', 'vi'),
(521, 'product.out_stock', 'Out of stock', 'product', 'en'),
(522, 'product.out_stock', 'Hết hàng', 'product', 'vi'),
(523, 'product.in_stock', 'In stock', 'product', 'en'),
(524, 'product.in_stock', 'Còn hàng', 'product', 'vi'),
(525, 'product.date_available', 'Date available', 'product', 'en'),
(526, 'product.date_available', 'Ngày bán', 'product', 'vi'),
(527, 'product.category', 'Category', 'product', 'en'),
(528, 'product.category', 'Danh mục', 'product', 'vi'),
(529, 'product.category_store', 'Category store', 'product', 'en'),
(530, 'product.category_store', 'Danh mục riêng', 'product', 'vi'),
(531, 'product.brand', 'Brand', 'product', 'en'),
(532, 'product.brand', 'Nhãn hàng', 'product', 'vi'),
(533, 'product.supplier', 'Supplier', 'product', 'en'),
(534, 'product.supplier', 'Nhà cung cấp', 'product', 'vi'),
(535, 'product.kind_group', 'Group', 'product', 'en'),
(536, 'product.kind_group', 'Sản phẩm nhóm', 'product', 'vi'),
(537, 'product.kind_bundle', 'Bundle', 'product', 'en'),
(538, 'product.kind_bundle', 'Sản phẩm bộ', 'product', 'vi'),
(539, 'product.kind_single', 'Single', 'product', 'en'),
(540, 'product.kind_single', 'Sản phẩm đơn', 'product', 'vi'),
(541, 'product.description', 'Description', 'product', 'en'),
(542, 'product.description', 'Mô tả', 'product', 'vi'),
(543, 'product.product_detail', 'Product detail', 'product', 'en'),
(544, 'product.product_detail', 'Chi tiết sản phẩm', 'product', 'vi'),
(545, 'product.dont_allow_sale', 'Product :sku dont allow for sale', 'product', 'en'),
(546, 'product.dont_allow_sale', 'Sản phẩm :sku không bán', 'product', 'vi'),
(547, 'product.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(548, 'product.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(549, 'product.sku_unique', 'SKU already exists', 'product', 'en'),
(550, 'product.sku_unique', 'SKU đã có rồi', 'product', 'vi'),
(551, 'product.product_specifications', 'Additional infomation', 'product', 'en'),
(552, 'product.product_specifications', 'Thông tin bổ sung', 'product', 'vi'),
(553, 'product.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'en'),
(554, 'product.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'vi'),
(555, 'product.sku_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(556, 'product.sku_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(557, 'product.price_promotion', 'Price promotion', 'product', 'en'),
(558, 'product.price_promotion', 'Giá khuyến mãi', 'product', 'vi'),
(559, 'product.price_promotion_start', 'Start date', 'product', 'en'),
(560, 'product.price_promotion_start', 'Ngày bắt đầu', 'product', 'vi'),
(561, 'product.price_promotion_end', 'End date', 'product', 'en'),
(562, 'product.price_promotion_end', 'Ngày kết thúc', 'product', 'vi'),
(563, 'product.edit_product', 'Edit product', 'product', 'en'),
(564, 'product.edit_product', 'Chỉnh sửa sản phẩm', 'product', 'vi'),
(565, 'product.admin.title', 'Quản lý sản phẩm', 'product.admin', 'vi'),
(566, 'product.admin.create_success', 'Tạo item thành công!', 'product.admin', 'vi'),
(567, 'product.admin.edit_success', 'chỉnh sửa item thành công!', 'product.admin', 'vi'),
(568, 'product.admin.list', 'Danh sách sản phẩm', 'product.admin', 'vi'),
(569, 'product.admin.action', 'Hành động', 'product.admin', 'vi'),
(570, 'product.admin.delete', 'Xóa', 'product.admin', 'vi'),
(571, 'product.admin.edit', 'Sửa', 'product.admin', 'vi'),
(572, 'product.admin.add_new', 'Thêm mới', 'product.admin', 'vi'),
(573, 'product.admin.add_new_title', 'Tạo sản phẩm', 'product.admin', 'vi'),
(574, 'product.admin.add_new_title_build', 'Tạo sản phẩm bộ', 'product.admin', 'vi'),
(575, 'product.admin.add_new_title_group', 'Tạo sản phẩm nhóm', 'product.admin', 'vi'),
(576, 'product.admin.add_new_des', 'Tạo mới một sản phẩm', 'product.admin', 'vi'),
(577, 'product.admin.export', 'Xuất', 'product.admin', 'vi'),
(578, 'product.admin.refresh', 'Làm mới', 'product.admin', 'vi'),
(579, 'product.admin.select_kind', 'Chọn loại sản phẩm', 'product.admin', 'vi'),
(580, 'product.admin.select_supplier', 'Chọn nhà cung cấp', 'product.admin', 'vi'),
(581, 'product.admin.sort', 'Thứ tự', 'product.admin', 'vi'),
(582, 'product.admin.select_category', 'Chọn danh mục', 'product.admin', 'vi'),
(583, 'product.admin.select_store', 'Chọn cửa hàng', 'product.admin', 'vi'),
(584, 'product.admin.select_product_in_group', 'Chọn sản phẩm trong nhóm', 'product.admin', 'vi'),
(585, 'product.admin.select_product_in_build', 'Chọn sản phẩm trong bộ', 'product.admin', 'vi'),
(586, 'product.admin.add_product', 'Thêm sản phẩm', 'product.admin', 'vi'),
(587, 'product.admin.add_attribute', 'Thêm thuộc tính', 'product.admin', 'vi'),
(588, 'product.admin.add_attribute_place', 'Nhập một thuộc tính', 'product.admin', 'vi'),
(589, 'product.admin.add_sub_image', 'Thêm ảnh', 'product.admin', 'vi'),
(590, 'product.admin.add_product_promotion', 'Thêm giá khuyến mãi', 'product.admin', 'vi'),
(591, 'product.admin.choose_image', 'Chọn hình', 'product.admin', 'vi'),
(592, 'product.admin.add_price_place', 'Thêm tiền', 'product.admin', 'vi'),
(593, 'product.admin.setting_info', 'Thiết lập sản phẩm', 'product.admin', 'vi'),
(594, 'product.admin.config_info', 'Cấu hình thông tin', 'product.admin', 'vi'),
(595, 'product.admin.title', 'Product manager', 'product.admin', 'en'),
(596, 'product.admin.create_success', 'Create new item success!', 'product.admin', 'en'),
(597, 'product.admin.edit_success', 'Edit item success!', 'product.admin', 'en'),
(598, 'product.admin.list', 'Product list', 'product.admin', 'en'),
(599, 'product.admin.action', 'Action', 'product.admin', 'en'),
(600, 'product.admin.delete', 'Delete', 'product.admin', 'en'),
(601, 'product.admin.edit', 'Edit', 'product.admin', 'en'),
(602, 'product.admin.add_new', 'Add new', 'product.admin', 'en'),
(603, 'product.admin.add_new_title', 'Add new product', 'product.admin', 'en'),
(604, 'product.admin.add_new_title_build', 'Add new product build', 'product.admin', 'en'),
(605, 'product.admin.add_new_title_group', 'Add new product group', 'product.admin', 'en'),
(606, 'product.admin.add_new_des', 'Create a new product', 'product.admin', 'en'),
(607, 'product.admin.export', 'Export', 'product.admin', 'en'),
(608, 'product.admin.refresh', 'Refresh', 'product.admin', 'en'),
(609, 'product.admin.select_kind', 'Select product kind', 'product.admin', 'en'),
(610, 'product.admin.select_supplier', 'Select supplier', 'product.admin', 'en'),
(611, 'product.admin.result_item', 'Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>', 'product.admin', 'en'),
(612, 'product.admin.sort', 'Sort', 'product.admin', 'en'),
(613, 'product.admin.select_category', 'Select category', 'product.admin', 'en'),
(614, 'product.admin.select_store', 'Select store', 'product.admin', 'en'),
(615, 'product.admin.select_product_in_group', 'Select products in group', 'product.admin', 'en'),
(616, 'product.admin.select_product_in_build', 'Select products build', 'product.admin', 'en'),
(617, 'product.admin.select_weight', 'Select weight class', 'product.admin', 'en'),
(618, 'product.admin.select_weight', 'Chọn đơn vị khối lượng', 'product.admin', 'vi'),
(619, 'product.admin.select_length', 'Select length class', 'product.admin', 'en'),
(620, 'product.admin.select_length', 'Chọn đơn vị kích thước', 'product.admin', 'vi'),
(621, 'product.admin.add_product', 'Add product', 'product.admin', 'en'),
(622, 'product.admin.add_attribute', 'Add attribute', 'product.admin', 'en'),
(623, 'product.admin.add_attribute_place', 'Add an attribute value', 'product.admin', 'en'),
(624, 'product.admin.add_sub_image', 'Add more images', 'product.admin', 'en'),
(625, 'product.admin.add_product_promotion', 'Add promotion price', 'product.admin', 'en'),
(626, 'product.admin.choose_image', 'Choose', 'product.admin', 'en'),
(627, 'product.admin.add_price_place', 'Add price', 'product.admin', 'en'),
(628, 'product.admin.setting_info', 'Setting product', 'product.admin', 'en'),
(629, 'product.admin.config_info', 'Config info product', 'product.admin', 'en'),
(630, 'product.admin.search_place', 'Search Name, SKU', 'product.admin', 'en'),
(631, 'product.admin.search_place', 'Tìm tên và SKU', 'product.admin', 'vi'),
(632, 'product.admin.length_class', 'Length class', 'product.admin', 'en'),
(633, 'product.admin.length_class', 'Đơn vị kích thước', 'product.admin', 'vi'),
(634, 'product.admin.weight_class', 'Weight class', 'product.admin', 'en'),
(635, 'product.admin.weight_class', 'Đơn vị khối lượng', 'product.admin', 'vi'),
(636, 'product.admin.cant_remove_child', 'Please delete product parent before remove this product', 'product.admin', 'en'),
(637, 'product.admin.cant_remove_child', 'Xóa các sản phẩm cha trước khi xóa sản phẩm này', 'product.admin', 'vi'),
(638, 'product.admin.clone', 'Clone product', 'product.admin', 'en'),
(639, 'product.admin.clone', 'Nhân bản sản phẩm', 'product.admin', 'vi'),
(640, 'product.admin.clone_confirm', 'Do you want to clone this product?', 'product.admin', 'en'),
(641, 'product.admin.clone_confirm', 'Bạn có muốn nhân bản sản phẩm này?', 'product.admin', 'vi'),
(642, 'product.admin.clone_success', 'Clone product success', 'product.admin', 'en'),
(643, 'product.admin.clone_success', 'Nhân bản sản phẩm thành công', 'product.admin', 'vi'),
(644, 'product.config_manager.title', 'Config product', 'product.admin', 'en'),
(645, 'product.config_manager.field', 'Field config', 'product.admin', 'en'),
(646, 'product.config_manager.value', 'Value', 'product.admin', 'en'),
(647, 'product.config_manager.brand', 'Use BRAND', 'product.admin', 'en'),
(648, 'product.config_manager.supplier', 'Use SUPPLIER', 'product.admin', 'en'),
(649, 'product.config_manager.price', 'Use PRICE', 'product.admin', 'en'),
(650, 'product.config_manager.stock', 'Use STOCK', 'product.admin', 'en'),
(651, 'product.config_manager.cost', 'Use COST PRICE', 'product.admin', 'en'),
(652, 'product.config_manager.type', 'Use TYPE (new, hot,...)', 'product.admin', 'en'),
(653, 'product.config_manager.kind', 'Use STRUCTURE TYPE (single, group, bundle)', 'product.admin', 'en'),
(654, 'product.config_manager.property', 'Use Product Property: download, property, physical', 'product.admin', 'en'),
(655, 'product.config_manager.attribute', 'Use ATTRIBUTE (color, size,...)', 'product.admin', 'en'),
(656, 'product.config_manager.promotion', 'Use PROMOTION PRICE', 'product.admin', 'en'),
(657, 'product.config_manager.available', 'Use Time to start selling', 'product.admin', 'en'),
(658, 'product.config_manager.tax', 'Tax configuration', 'product.admin', 'en'),
(659, 'product.config_manager.product_display_price_include_tax', 'Display price include tax', 'product.admin', 'en'),
(660, 'product.config_manager.weight', 'Use Weight', 'product.admin', 'en'),
(661, 'product.config_manager.length', 'Use Length', 'product.admin', 'en'),
(662, 'product.config_manager.required', 'Required', 'product.admin', 'en'),
(663, 'product.config_manager.title', ' Cấu hình sản phẩm', 'product.admin', 'vi'),
(664, 'product.config_manager.field', 'Trường cấu hình', 'product.admin', 'vi'),
(665, 'product.config_manager.value', 'Giá trị', 'product.admin', 'vi'),
(666, 'product.config_manager.brand', 'Sử dụng NHÃN HIỆU', 'product.admin', 'vi'),
(667, 'product.config_manager.supplier', 'Sử dụng NHÀ CUNG CẤP', 'product.admin', 'vi'),
(668, 'product.config_manager.price', 'Sử dụng GIÁ', 'product.admin', 'vi'),
(669, 'product.config_manager.cost', 'Sử dụng GIÁ GỐC', 'product.admin', 'vi'),
(670, 'product.config_manager.stock', 'Sử dụng SỐ LƯỢNG', 'product.admin', 'vi'),
(671, 'product.config_manager.type', 'Sử dụng PHÂN LOẠI TÌNH TRẠNG(mới, hot,...)', 'product.admin', 'vi'),
(672, 'product.config_manager.kind', 'Sử dụng PHÂN LOẠI THEO CẤU TRÚC (sản phẩm đơn, nhóm, bộ)', 'product.admin', 'vi'),
(673, 'product.config_manager.property', 'Sử dụng PHÂN LOẠI ĐẶC TÍNH: download, vật lý, dịch vụ,..', 'product.admin', 'vi'),
(674, 'product.config_manager.attribute', 'Sử dụng THUỘC TÍNH (màu sắc, kích thước,...)', 'product.admin', 'vi'),
(675, 'product.config_manager.promotion', 'Sử dụng GIÁ KHUYẾN MÃI', 'product.admin', 'vi'),
(676, 'product.config_manager.available', 'Sử dụng THỜI GIAN MỞ BÁN', 'product.admin', 'vi'),
(677, 'product.config_manager.tax', 'Cấu hình thuế', 'product.admin', 'vi'),
(678, 'product.config_manager.product_display_price_include_tax', 'Hiển thị giá bao gồm thuế', 'product.admin', 'vi'),
(679, 'product.config_manager.weight', 'Sử dụng Khối lượng', 'product.admin', 'vi'),
(680, 'product.config_manager.length', 'Sử dụng Kích thước', 'product.admin', 'vi'),
(681, 'product.config_manager.required', 'Bắt buộc', 'product.admin', 'vi'),
(682, 'product.config_manager.show_date_available', 'Hiện thời gian bán hàng', 'product.admin', 'vi'),
(683, 'product.config_manager.show_date_available', 'Display date available', 'product.admin', 'en'),
(684, 'product.config_manager.product_display_out_of_stock', 'Hiện sản phẩm hết hàng', 'product.admin', 'vi'),
(685, 'product.config_manager.product_display_out_of_stock', 'Display product out of stock', 'product.admin', 'en'),
(686, 'customer.my_account', 'My page', 'customer', 'en'),
(687, 'customer.my_account', 'Trang cá nhân', 'customer', 'vi'),
(688, 'customer.password', 'Password', 'customer', 'en'),
(689, 'customer.password', 'Mật khẩu', 'customer', 'vi'),
(690, 'customer.password_new', 'New password', 'customer', 'en'),
(691, 'customer.password_new', 'Mật khẩu mới', 'customer', 'vi'),
(692, 'customer.password_old', 'Old password', 'customer', 'en'),
(693, 'customer.password_old', 'Mật khẩu cũ', 'customer', 'vi'),
(694, 'customer.password_old_required', 'Old password required', 'customer', 'en'),
(695, 'customer.password_old_required', 'Mật khẩu cũ là bắt buộc', 'customer', 'vi'),
(696, 'customer.password_old_notcorrect', 'Old password incorrect', 'customer', 'en'),
(697, 'customer.password_old_notcorrect', 'Mật khẩu cũ chưa đúng', 'customer', 'vi'),
(698, 'customer.remember_me', 'Remember', 'customer', 'en'),
(699, 'customer.remember_me', 'Ghi nhớ', 'customer', 'vi'),
(700, 'customer.change_password', 'Change password', 'customer', 'en'),
(701, 'customer.change_password', 'Đổi mật khẩu', 'customer', 'vi'),
(702, 'customer.update_success', 'Update success', 'customer', 'en'),
(703, 'customer.update_success', 'Cập nhật thành công', 'customer', 'vi'),
(704, 'customer.update_infomation', 'Update infomation', 'customer', 'en'),
(705, 'customer.update_infomation', 'Cập nhật thông tin', 'customer', 'vi'),
(706, 'customer.change_infomation', 'Change infomation', 'customer', 'en'),
(707, 'customer.change_infomation', 'Thay đổi thông tin', 'customer', 'vi'),
(708, 'customer.order_history', 'Order history', 'customer', 'en'),
(709, 'customer.order_history', 'Lịch sử mua hàng', 'customer', 'vi'),
(710, 'customer.order_detail', 'Order detail', 'customer', 'en'),
(711, 'customer.order_detail', 'Chi tiết đơn hàng', 'customer', 'vi'),
(712, 'customer.address_list', 'Address list', 'customer', 'en'),
(713, 'customer.address_list', 'Danh sách địa chỉ', 'customer', 'vi'),
(714, 'customer.address_detail', 'Address detail', 'customer', 'en'),
(715, 'customer.address_detail', 'Danh sách địa chỉ', 'customer', 'vi'),
(716, 'customer.address_default', 'Address default', 'customer', 'en'),
(717, 'customer.address_default', 'Địa chỉ mặc định', 'customer', 'vi'),
(718, 'customer.address_set_default', 'Set address default', 'customer', 'en'),
(719, 'customer.address_set_default', 'Đặt địa chỉ mặc định', 'customer', 'vi'),
(720, 'customer.delete_address_success', 'Delete address success', 'customer', 'en'),
(721, 'customer.delete_address_success', 'Xóa địa chỉ thành công', 'customer', 'vi'),
(722, 'customer.verify_email.button_verify', 'Email verification', 'customer', 'en'),
(723, 'customer.verify_email.button_verify', 'Xác thực email', 'customer', 'vi'),
(724, 'customer.verify_email.title_page', 'Email verification', 'customer', 'en'),
(725, 'customer.verify_email.title_page', 'Xác thực email', 'customer', 'vi'),
(726, 'customer.verify_email.link_invalid', 'Link invalid', 'customer', 'en'),
(727, 'customer.verify_email.link_invalid', 'Link không hợp lệ', 'customer', 'vi'),
(728, 'customer.verify_email.verify_success', 'Successful verification', 'customer', 'en'),
(729, 'customer.verify_email.verify_success', 'Xác thực thành công', 'customer', 'vi'),
(730, 'customer.verify_email.msg_sent', 'Verification link sent.', 'customer', 'en'),
(731, 'customer.verify_email.msg_sent', 'Đã gửi liên kết xác minh!', 'customer', 'vi'),
(732, 'customer.verify_email.msg_page_2', 'click here to request another.', 'customer', 'en'),
(733, 'customer.verify_email.msg_page_2', 'hãy nhấp vào đây để yêu cầu.', 'customer', 'vi'),
(734, 'customer.verify_email.msg_page_1', 'Before proceeding, please check your email for a verification link. If you did not receive the email,', 'customer', 'en'),
(735, 'customer.verify_email.msg_page_1', 'Trước khi tiếp tục, vui lòng kiểm tra email của bạn để biết liên kết xác minh. Nếu bạn không nhận được email,', 'customer', 'vi'),
(736, 'customer.verify_email.title_header', 'Verify Your Email Address', 'customer', 'en'),
(737, 'customer.verify_email.title_header', 'Xác minh địa chỉ email của bạn', 'customer', 'vi'),
(738, 'customer.password_forgot', 'Forgot password', 'customer', 'en'),
(739, 'customer.password_forgot', 'Quên mật khẩu', 'customer', 'vi'),
(740, 'customer.login_title', 'Login page', 'customer', 'en'),
(741, 'customer.login_title', 'Trang đăng nhập', 'customer', 'vi'),
(742, 'customer.register_success', 'Successful register', 'customer', 'en'),
(743, 'customer.register_success', 'Đăng ký thành công', 'customer', 'vi'),
(744, 'customer.signup', 'Signup', 'customer', 'en'),
(745, 'customer.signup', 'Đăng ký', 'customer', 'vi'),
(746, 'customer.title_register', 'Account register', 'customer', 'en'),
(747, 'customer.title_register', 'Đăng ký tài khoản', 'customer', 'vi'),
(748, 'customer.password_reset', 'Password reset', 'customer', 'en'),
(749, 'customer.password_reset', 'Reset mật khẩu', 'customer', 'vi'),
(750, 'customer.password_confirm', 'Password confirm', 'customer', 'en'),
(751, 'customer.password_confirm', 'Xác nhận mật khẩu', 'customer', 'vi'),
(752, 'customer.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'customer', 'en'),
(753, 'customer.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'customer', 'vi'),
(754, 'customer.country', 'Country', 'customer', 'en'),
(755, 'customer.country', 'Quốc gia', 'customer', 'vi'),
(756, 'customer.company', 'Công ty', 'customer', 'vi'),
(757, 'customer.company', 'Company', 'customer', 'en'),
(758, 'customer.address3', 'Địa chỉ nhà', 'customer', 'vi'),
(759, 'customer.address3', 'Address 3', 'customer', 'en'),
(760, 'customer.address2', 'Quận/Huyện', 'customer', 'vi'),
(761, 'customer.address2', 'Address 2', 'customer', 'en'),
(762, 'customer.address1', 'Tỉnh/Thành', 'customer', 'vi'),
(763, 'customer.address1', 'Address 1', 'customer', 'en'),
(764, 'customer.postcode', 'Mã bưu điện', 'customer', 'vi'),
(765, 'customer.postcode', 'Post code', 'customer', 'en'),
(766, 'customer.phone', 'Phone', 'customer', 'en'),
(767, 'customer.phone', 'Điện thoại', 'customer', 'vi'),
(768, 'customer.last_name_kana', 'Họ kana', 'customer', 'vi'),
(769, 'customer.last_name_kana', 'Last name kana', 'customer', 'en');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(770, 'customer.first_name_kana', 'First name kana', 'customer', 'en'),
(771, 'customer.first_name_kana', 'Tên Kana', 'customer', 'vi'),
(772, 'customer.full_name', 'Full name', 'customer', 'en'),
(773, 'customer.full_name', 'Tên đầy đủ', 'customer', 'vi'),
(774, 'customer.name', 'Name', 'customer', 'en'),
(775, 'customer.name', 'Tên', 'customer', 'vi'),
(776, 'customer.midle_name', 'Tên đệm', 'customer', 'vi'),
(777, 'customer.midle_name', 'Midle name', 'customer', 'en'),
(778, 'customer.last_name', 'Họ', 'customer', 'vi'),
(779, 'customer.last_name', 'Last name', 'customer', 'en'),
(780, 'customer.first_name', 'Tên', 'customer', 'vi'),
(781, 'customer.first_name', 'First name', 'customer', 'en'),
(782, 'customer.email', 'Email', 'customer', 'vi'),
(783, 'customer.email', 'Email', 'customer', 'en'),
(784, 'customer.sex', 'Giới tính', 'customer', 'vi'),
(785, 'customer.sex', 'Sex', 'customer', 'en'),
(786, 'customer.sex_women', 'Women', 'customer', 'en'),
(787, 'customer.sex_women', 'Nữ', 'customer', 'vi'),
(788, 'customer.sex_other', 'Other', 'customer', 'en'),
(789, 'customer.sex_other', 'Khác', 'customer', 'vi'),
(790, 'customer.sex_men', 'Men', 'customer', 'en'),
(791, 'customer.sex_men', 'Nam', 'customer', 'vi'),
(792, 'customer.birthday', 'Ngày sinh', 'customer', 'vi'),
(793, 'customer.birthday', 'Birthday', 'customer', 'en'),
(794, 'customer.title_login', 'Login account', 'customer', 'en'),
(795, 'customer.title_login', 'Đăng nhập', 'customer', 'vi'),
(796, 'customer.my_profile', 'Tài khoản', 'customer', 'vi'),
(797, 'customer.my_profile', 'My profile', 'customer', 'en'),
(798, 'customer.status', 'Trạng thái', 'customer', 'vi'),
(799, 'customer.status', 'Status', 'customer', 'en'),
(800, 'customer.group', 'Nhóm', 'customer', 'en'),
(801, 'customer.group', 'Group', 'customer', 'vi'),
(802, 'customer.admin.add_new_title', 'Thêm mới khách hàng', 'customer.admin', 'vi'),
(803, 'customer.admin.add_new_title', 'Add new customer', 'customer.admin', 'en'),
(804, 'customer.admin.add_new_des', 'Thêm mới', 'customer.admin', 'vi'),
(805, 'customer.admin.add_new_des', 'Add new', 'customer.admin', 'en'),
(806, 'customer.admin.provider', 'Provider', 'customer.admin', 'vi'),
(807, 'customer.admin.provider', 'Provider', 'customer.admin', 'en'),
(808, 'customer.admin.field', 'Trường dữ liệu', 'customer.admin', 'vi'),
(809, 'customer.admin.field', 'Field data', 'customer.admin', 'en'),
(810, 'customer.admin.value', 'Giá trị', 'customer.admin', 'vi'),
(811, 'customer.admin.value', 'Value', 'customer.admin', 'en'),
(812, 'customer.admin.required', 'Bắt buộc', 'customer.admin', 'vi'),
(813, 'customer.admin.required', 'Required', 'customer.admin', 'en'),
(814, 'customer.admin.keep_password', 'Giữ mật khẩu', 'customer.admin', 'vi'),
(815, 'customer.admin.keep_password', 'Keep password', 'customer.admin', 'en'),
(816, 'customer.admin.list', 'Danh sách khách hàng', 'customer.admin', 'vi'),
(817, 'customer.admin.list', 'Customer list', 'customer.admin', 'en'),
(818, 'customer.config_manager.title', ' Config customer', 'customer.admin', 'en'),
(819, 'customer.config_manager.field', 'Field config', 'customer.admin', 'en'),
(820, 'customer.config_manager.value', 'Value', 'customer.admin', 'en'),
(821, 'customer.config_manager.lastname', 'Use last name', 'customer.admin', 'en'),
(822, 'customer.config_manager.name_kana', 'Use name KANA', 'customer.admin', 'en'),
(823, 'customer.config_manager.firstname_kana', 'Use first name KANA', 'customer.admin', 'en'),
(824, 'customer.config_manager.lastname_kana', 'Use last name KANA', 'customer.admin', 'en'),
(825, 'customer.config_manager.address1', 'Use ADDRESS 1', 'customer.admin', 'en'),
(826, 'customer.config_manager.address2', 'Use ADDRESS 2', 'customer.admin', 'en'),
(827, 'customer.config_manager.address3', 'Use ADDRESS 3', 'customer.admin', 'en'),
(828, 'customer.config_manager.company', 'Use COMPANY', 'customer.admin', 'en'),
(829, 'customer.config_manager.postcode', 'Use POSTCODE', 'customer.admin', 'en'),
(830, 'customer.config_manager.country', 'Use COUNTRY', 'customer.admin', 'en'),
(831, 'customer.config_manager.group', 'Use GROUP', 'customer.admin', 'en'),
(832, 'customer.config_manager.birthday', 'Use BIRTHDAY', 'customer.admin', 'en'),
(833, 'customer.config_manager.sex', 'Use SEX', 'customer.admin', 'en'),
(834, 'customer.config_manager.phone', 'Use PHONE', 'customer.admin', 'en'),
(835, 'customer.config_manager.reqired', 'Required', 'customer.admin', 'en'),
(836, 'customer.config_manager.title', ' Cấu hình khách hàng', 'customer.admin', 'vi'),
(837, 'customer.config_manager.lastname', 'Sử dụng HỌ', 'customer.admin', 'vi'),
(838, 'customer.config_manager.name_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(839, 'customer.config_manager.firstname_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(840, 'customer.config_manager.lasttname_kana', 'Sử dụng họ KANA', 'customer.admin', 'vi'),
(841, 'customer.config_manager.address1', 'Sử dụng Tỉnh/Thành', 'customer.admin', 'vi'),
(842, 'customer.config_manager.address2', 'Sử dụng Quận/Huyện', 'customer.admin', 'vi'),
(843, 'customer.config_manager.address3', 'Địa chỉ nhà', 'customer.admin', 'vi'),
(844, 'customer.config_manager.company', 'Sử dụng Công Ty', 'customer.admin', 'vi'),
(845, 'customer.config_manager.postcode', 'Sử dụng Mã bưu chính', 'customer.admin', 'vi'),
(846, 'customer.config_manager.country', 'Sử dụng Quốc Gia', 'customer.admin', 'vi'),
(847, 'customer.config_manager.group', 'Sử dụng Nhóm', 'customer.admin', 'vi'),
(848, 'customer.config_manager.birthday', 'Sử dụng NGÀY SINH', 'customer.admin', 'vi'),
(849, 'customer.config_manager.sex', 'Sử dụng GIỚI TÍNH', 'customer.admin', 'vi'),
(850, 'customer.config_manager.phone', 'Sử dụng SỐ ĐIỆN THOẠI', 'customer.admin', 'vi'),
(851, 'customer.config_manager.required', 'Bắt buộc', 'customer.admin', 'vi'),
(852, 'order.order_status', 'Trạng thái đơn hàng', 'order', 'vi'),
(853, 'order.order_status', 'Order status', 'order', 'en'),
(854, 'order.shipping_status', 'Trạng thái vận chuyển', 'order', 'vi'),
(855, 'order.shipping_status', 'Shipping status', 'order', 'en'),
(856, 'order.payment_status', 'Trạng thái thanh toán', 'order', 'vi'),
(857, 'order.payment_status', 'Payment status', 'order', 'en'),
(858, 'order.payment_method', 'Phương thức thanh toán', 'order', 'vi'),
(859, 'order.payment_method', 'Payment method', 'order', 'en'),
(860, 'order.shipping_method', 'Phương thức vận chuyển', 'order', 'vi'),
(861, 'order.shipping_method', 'Shipping method', 'order', 'en'),
(862, 'order.shipping_address', 'Shipping address', 'order', 'en'),
(863, 'order.shipping_address', 'Địa chỉ giao hàng', 'order', 'vi'),
(864, 'order.payment_address', 'Payment address', 'order', 'en'),
(865, 'order.payment_address', 'Địa chỉ thanh toán', 'order', 'vi'),
(866, 'order.currency', 'Tiền tệ', 'order', 'vi'),
(867, 'order.currency', 'Currency', 'order', 'en'),
(868, 'order.exchange_rate', 'Tỉ giá', 'order', 'vi'),
(869, 'order.exchange_rate', 'Exchange rate', 'order', 'en'),
(870, 'order.totals.balance', 'Còn lại', 'order', 'vi'),
(871, 'order.totals.balance', 'Balance', 'order', 'en'),
(872, 'order.date', 'Ngày đặt hàng', 'order', 'vi'),
(873, 'order.date', 'Order date', 'order', 'en'),
(874, 'order.qty', 'Số lượng', 'order', 'vi'),
(875, 'order.qty', 'quantity', 'order', 'en'),
(876, 'order.amount', 'Giá', 'order', 'vi'),
(877, 'order.amount', 'Amount', 'order', 'en'),
(878, 'order.id', 'Mã đơn hàng', 'order', 'vi'),
(879, 'order.id', 'Order ID', 'order', 'en'),
(880, 'order.date_export', 'Ngày tạo', 'order', 'vi'),
(881, 'order.date_export', 'Date export', 'order', 'en'),
(882, 'order.total', 'Tổng tiền', 'order', 'vi'),
(883, 'order.total', 'Total', 'order', 'en'),
(884, 'order.sub_total', 'Tiền hàng', 'order', 'vi'),
(885, 'order.sub_total', 'SubTotal', 'order', 'en'),
(886, 'order.subtotal', 'Tiền hàng', 'order', 'vi'),
(887, 'order.subtotal', 'SubTotal', 'order', 'en'),
(888, 'order.tax', 'Thuế', 'order', 'vi'),
(889, 'order.tax', 'Tax', 'order', 'en'),
(890, 'order.shipping', 'Vận chuyển', 'order', 'vi'),
(891, 'order.shipping', 'Shipping', 'order', 'en'),
(892, 'order.received', 'Đã nhận', 'order', 'vi'),
(893, 'order.received', 'Received', 'order', 'en'),
(894, 'order.discount', 'Giảm giá', 'order', 'vi'),
(895, 'order.discount', 'Discount', 'order', 'en'),
(896, 'order.other_fee', 'Chi phí khác', 'order', 'vi'),
(897, 'order.other_fee', 'Other fee', 'order', 'en'),
(898, 'order.invoice', 'Hóa đơn', 'order', 'vi'),
(899, 'order.invoice', 'Invoice', 'order', 'en'),
(900, 'order.totals.total', 'Tổng tiền', 'order', 'vi'),
(901, 'order.totals.total', 'Total', 'order', 'en'),
(902, 'order.totals.sub_total', 'Tiền hàng', 'order', 'vi'),
(903, 'order.totals.sub_total', 'SubTotal', 'order', 'en'),
(904, 'order.totals.subtotal', 'Tiền hàng', 'order', 'vi'),
(905, 'order.totals.subtotal', 'SubTotal', 'order', 'en'),
(906, 'order.totals.tax', 'Thuế', 'order', 'vi'),
(907, 'order.totals.tax', 'Tax', 'order', 'en'),
(908, 'order.totals.discount', 'Giảm giá', 'order', 'vi'),
(909, 'order.totals.discount', 'Discount', 'order', 'en'),
(910, 'order.totals.shipping', 'Vận chuyển', 'order', 'vi'),
(911, 'order.totals.shipping', 'Shipping', 'order', 'en'),
(912, 'order.totals.received', 'Đã nhận', 'order', 'vi'),
(913, 'order.totals.received', 'Received', 'order', 'en'),
(914, 'order.detail', 'Chi tiết', 'order', 'vi'),
(915, 'order.detail', 'Order detail', 'order', 'en'),
(916, 'order.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'order', 'en'),
(917, 'order.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'order', 'vi'),
(918, 'order.country', 'Country', 'order', 'en'),
(919, 'order.country', 'Quốc gia', 'order', 'vi'),
(920, 'order.company', 'Công ty', 'order', 'vi'),
(921, 'order.company', 'Company', 'order', 'en'),
(922, 'order.address3', 'Địa chỉ nhà', 'order', 'vi'),
(923, 'order.address3', 'Address 3', 'order', 'en'),
(924, 'order.address2', 'Quận/Huyện', 'order', 'vi'),
(925, 'order.address2', 'Address 2', 'order', 'en'),
(926, 'order.address1', 'Tỉnh/Thành', 'order', 'vi'),
(927, 'order.address1', 'Address 1', 'order', 'en'),
(928, 'order.address', 'Địa chỉ', 'order', 'vi'),
(929, 'order.address', 'Address', 'order', 'en'),
(930, 'order.postcode', 'Mã bưu điện', 'order', 'vi'),
(931, 'order.postcode', 'Post code', 'order', 'en'),
(932, 'order.phone', 'Phone', 'order', 'en'),
(933, 'order.phone', 'Điện thoại', 'order', 'vi'),
(934, 'order.last_name_kana', 'Họ kana', 'order', 'vi'),
(935, 'order.last_name_kana', 'Last name kana', 'order', 'en'),
(936, 'order.first_name_kana', 'First name kana', 'order', 'en'),
(937, 'order.first_name_kana', 'Tên Kana', 'order', 'vi'),
(938, 'order.full_name', 'Full name', 'order', 'en'),
(939, 'order.full_name', 'Tên đầy đủ', 'order', 'vi'),
(940, 'order.name', 'Name', 'order', 'en'),
(941, 'order.name', 'Tên', 'order', 'vi'),
(942, 'order.midle_name', 'Tên đệm', 'order', 'vi'),
(943, 'order.midle_name', 'Midle name', 'order', 'en'),
(944, 'order.last_name', 'Họ', 'order', 'vi'),
(945, 'order.last_name', 'Last name', 'order', 'en'),
(946, 'order.first_name', 'Tên', 'order', 'vi'),
(947, 'order.first_name', 'First name', 'order', 'en'),
(948, 'order.email', 'Email', 'order', 'vi'),
(949, 'order.email', 'Email', 'order', 'en'),
(950, 'order.payment_country', 'Country', 'order', 'en'),
(951, 'order.payment_country', 'Quốc gia', 'order', 'vi'),
(952, 'order.payment_company', 'Công ty', 'order', 'vi'),
(953, 'order.payment_company', 'Company', 'order', 'en'),
(954, 'order.payment_address3', 'Địa chỉ nhà', 'order', 'vi'),
(955, 'order.payment_address3', 'Address 3', 'order', 'en'),
(956, 'order.payment_address2', 'Quận/Huyện', 'order', 'vi'),
(957, 'order.payment_address2', 'Address 2', 'order', 'en'),
(958, 'order.payment_address1', 'Tỉnh/Thành', 'order', 'vi'),
(959, 'order.payment_address1', 'Address 1', 'order', 'en'),
(960, 'order.payment_postcode', 'Mã bưu điện', 'order', 'vi'),
(961, 'order.payment_postcode', 'Post code', 'order', 'en'),
(962, 'order.payment_phone', 'Phone', 'order', 'en'),
(963, 'order.payment_phone', 'Điện thoại', 'order', 'vi'),
(964, 'order.payment_last_name_kana', 'Họ kana', 'order', 'vi'),
(965, 'order.payment_last_name_kana', 'Last name kana', 'order', 'en'),
(966, 'order.payment_first_name_kana', 'First name kana', 'order', 'en'),
(967, 'order.payment_first_name_kana', 'Tên Kana', 'order', 'vi'),
(968, 'order.payment_full_name', 'Full name', 'order', 'en'),
(969, 'order.payment_full_name', 'Tên đầy đủ', 'order', 'vi'),
(970, 'order.payment_name', 'Name', 'order', 'en'),
(971, 'order.payment_name', 'Tên', 'order', 'vi'),
(972, 'order.payment_midle_name', 'Tên đệm', 'order', 'vi'),
(973, 'order.payment_midle_name', 'Midle name', 'order', 'en'),
(974, 'order.payment_last_name', 'Họ', 'order', 'vi'),
(975, 'order.payment_last_name', 'Last name', 'order', 'en'),
(976, 'order.payment_first_name', 'Tên', 'order', 'vi'),
(977, 'order.payment_first_name', 'First name', 'order', 'en'),
(978, 'order.payment_email', 'Email', 'order', 'vi'),
(979, 'order.payment_email', 'Email', 'order', 'en'),
(980, 'order.shipping_country', 'Country', 'order', 'en'),
(981, 'order.shipping_country', 'Quốc gia', 'order', 'vi'),
(982, 'order.shipping_company', 'Công ty', 'order', 'vi'),
(983, 'order.shipping_company', 'Company', 'order', 'en'),
(984, 'order.shipping_address3', 'Địa chỉ nhà', 'order', 'vi'),
(985, 'order.shipping_address3', 'Address 3', 'order', 'en'),
(986, 'order.shipping_address2', 'Quận/Huyện', 'order', 'vi'),
(987, 'order.shipping_address2', 'Address 2', 'order', 'en'),
(988, 'order.shipping_address1', 'Tỉnh/Thành', 'order', 'vi'),
(989, 'order.shipping_address1', 'Address 1', 'order', 'en'),
(990, 'order.shipping_postcode', 'Mã bưu điện', 'order', 'vi'),
(991, 'order.shipping_postcode', 'Post code', 'order', 'en'),
(992, 'order.shipping_phone', 'Phone', 'order', 'en'),
(993, 'order.shipping_phone', 'Điện thoại', 'order', 'vi'),
(994, 'order.shipping_last_name_kana', 'Họ kana', 'order', 'vi'),
(995, 'order.shipping_last_name_kana', 'Last name kana', 'order', 'en'),
(996, 'order.shipping_first_name_kana', 'First name kana', 'order', 'en'),
(997, 'order.shipping_first_name_kana', 'Tên Kana', 'order', 'vi'),
(998, 'order.shipping_full_name', 'Full name', 'order', 'en'),
(999, 'order.shipping_full_name', 'Tên đầy đủ', 'order', 'vi'),
(1000, 'order.shipping_name', 'Name', 'order', 'en'),
(1001, 'order.shipping_name', 'Tên', 'order', 'vi'),
(1002, 'order.shipping_midle_name', 'Tên đệm', 'order', 'vi'),
(1003, 'order.shipping_midle_name', 'Midle name', 'order', 'en'),
(1004, 'order.shipping_last_name', 'Họ', 'order', 'vi'),
(1005, 'order.shipping_last_name', 'Last name', 'order', 'en'),
(1006, 'order.shipping_first_name', 'Tên', 'order', 'vi'),
(1007, 'order.shipping_first_name', 'First name', 'order', 'en'),
(1008, 'order.shipping_email', 'Email', 'order', 'vi'),
(1009, 'order.shipping_email', 'Email', 'order', 'en'),
(1010, 'order.sex', 'Giới tính', 'order', 'vi'),
(1011, 'order.sex', 'Sex', 'order', 'en'),
(1012, 'order.sex_women', 'Women', 'order', 'en'),
(1013, 'order.sex_women', 'Nữ', 'order', 'vi'),
(1014, 'order.sex_other', 'Other', 'order', 'en'),
(1015, 'order.sex_other', 'Khác', 'order', 'vi'),
(1016, 'order.sex_men', 'Men', 'order', 'en'),
(1017, 'order.sex_men', 'Nam', 'order', 'vi'),
(1018, 'order.birthday', 'Ngày sinh', 'order', 'vi'),
(1019, 'order.birthday', 'Birthday', 'order', 'en'),
(1020, 'order.status', 'Trạng thái đơn hàng', 'order', 'vi'),
(1021, 'order.status', 'Order status', 'order', 'en'),
(1022, 'order.order_detail', 'Chi tiết đơn hàng', 'order', 'vi'),
(1023, 'order.order_detail', 'Order detail', 'order', 'en'),
(1024, 'order.note', 'Note', 'order', 'en'),
(1025, 'order.note', 'Ghi chú', 'order', 'vi'),
(1026, 'order.order_note', 'Note', 'order', 'en'),
(1027, 'order.order_note', 'Ghi chú', 'order', 'vi'),
(1028, 'order.domain', 'Domain', 'order', 'en'),
(1029, 'order.domain', 'Tên miền', 'order', 'vi'),
(1030, 'order.admin.order_history', 'Order history', 'order.admin', 'en'),
(1031, 'order.admin.history_staff', 'Staff', 'order.admin', 'en'),
(1032, 'order.admin.history_content', 'Content', 'order.admin', 'en'),
(1033, 'order.admin.history_time', 'Time', 'order.admin', 'en'),
(1034, 'order.admin.order_history', 'Lịch sử đơn hàng', 'order.admin', 'vi'),
(1035, 'order.admin.history_staff', 'Nhân viên', 'order.admin', 'vi'),
(1036, 'order.admin.history_content', 'Nội dung', 'order.admin', 'vi'),
(1037, 'order.admin.history_time', 'Thời gian', 'order.admin', 'vi'),
(1038, 'order.admin.title', 'Quản lý đơn hàng', 'order.admin', 'vi'),
(1039, 'order.admin.config_title', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(1040, 'order.admin.list', 'Danh sách đơn hàng', 'order.admin', 'vi'),
(1041, 'order.admin.payment_method', 'Phương thức thanh toán', 'order.admin', 'vi'),
(1042, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'vi'),
(1043, 'order.admin.currency', 'Tiền tệ', 'order.admin', 'vi'),
(1044, 'order.admin.exchange_rate', 'Tỉ giá', 'order.admin', 'vi'),
(1045, 'order.admin.order_new', 'Thêm mới', 'order.admin', 'vi'),
(1046, 'order.admin.add_new', 'Thêm mới', 'order.admin', 'vi'),
(1047, 'order.admin.add_new_title', 'Tạo đơn hàng', 'order.admin', 'vi'),
(1048, 'order.admin.add_new_des', 'Tạo mới một đơn hàng', 'order.admin', 'vi'),
(1049, 'order.admin.export_batch', 'Xuất', 'order.admin', 'vi'),
(1050, 'order.admin.config_info', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(1051, 'order.admin.store', 'Cửa hàng', 'order.admin', 'vi'),
(1052, 'order.admin.title', 'Order manager', 'order.admin', 'en'),
(1053, 'order.admin.config_title', 'Config info order', 'order.admin', 'en'),
(1054, 'order.admin.list', 'Order list', 'order.admin', 'en'),
(1055, 'order.admin.payment_method', 'Payment method', 'order.admin', 'en'),
(1056, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'en'),
(1057, 'order.admin.currency', 'Currency', 'order.admin', 'en'),
(1058, 'order.admin.exchange_rate', 'Exchange rate', 'order.admin', 'en'),
(1059, 'order.admin.status', 'Status', 'order.admin', 'en'),
(1060, 'order.admin.status', 'Trạng thái', 'order.admin', 'vi'),
(1061, 'order.admin.created_at', 'Created at', 'order.admin', 'en'),
(1062, 'order.admin.created_at', 'Tạo lúc', 'order.admin', 'vi'),
(1063, 'order.admin.order_new', 'Add new', 'order.admin', 'en'),
(1064, 'order.admin.add_new', 'Add new', 'order.admin', 'en'),
(1065, 'order.admin.add_new_title', 'Add new order', 'order.admin', 'en'),
(1066, 'order.admin.add_new_des', 'Create a new order', 'order.admin', 'en'),
(1067, 'order.admin.export_batch', 'Export', 'order.admin', 'en'),
(1068, 'order.admin.config_info', 'Config order', 'order.admin', 'en'),
(1069, 'order.admin.store', 'Store', 'order.admin', 'en'),
(1070, 'order.admin.search_order_status', 'Search order status', 'order.admin', 'en'),
(1071, 'order.admin.search_order_status', 'Tìm trạng thái đơn hàng', 'order.admin', 'vi'),
(1072, 'order.admin.search_email', 'Search email', 'order.admin', 'en'),
(1073, 'order.admin.search_email', 'Tìm email', 'order.admin', 'vi'),
(1074, 'order.admin.search_id', 'Search id', 'order.admin', 'en'),
(1075, 'order.admin.search_id', 'Tìm ID', 'order.admin', 'vi'),
(1076, 'order.admin.select_product', 'Select product', 'order.admin', 'en'),
(1077, 'order.admin.select_product', 'Chọn sản phẩm', 'order.admin', 'vi'),
(1078, 'order.admin.product_buy_out_of_stock', 'Allow buy out of stock', 'order.admin', 'en'),
(1079, 'order.admin.product_buy_out_of_stock', 'Cho phép mua hàng đã hết', 'order.admin', 'vi'),
(1080, 'order.admin.shipping_off', 'Dont use shipping method', 'order.admin', 'en'),
(1081, 'order.admin.shipping_off', 'Không sử dụng phương thức vận chuyển', 'order.admin', 'vi'),
(1082, 'order.admin.payment_off', 'Dont use payment method', 'order.admin', 'en'),
(1083, 'order.admin.payment_off', 'Không sử dụng phương thức thanh toán', 'order.admin', 'vi'),
(1084, 'order.admin.product_preorder', 'Allow pre-order', 'order.admin', 'en'),
(1085, 'order.admin.product_preorder', 'Cho phép đặt hàng trước', 'order.admin', 'vi'),
(1086, 'order.admin.shop_allow_guest', 'Allow buy no need login', 'order.admin', 'en'),
(1087, 'order.admin.shop_allow_guest', 'Cho phép mua không cần đăng nhập', 'order.admin', 'vi'),
(1088, 'order.admin.select_customer', 'Select customer', 'order.admin', 'en'),
(1089, 'order.admin.select_customer', 'Chọn khách hàng', 'order.admin', 'vi'),
(1090, 'contact.name', 'Tên', 'contact', 'vi'),
(1091, 'contact.name', 'Name', 'contact', 'en'),
(1092, 'contact.email', 'Email', 'contact', 'vi'),
(1093, 'contact.email', 'Email', 'contact', 'en'),
(1094, 'contact.phone', 'Điện thoại', 'contact', 'vi'),
(1095, 'contact.phone', 'Phone', 'contact', 'en'),
(1096, 'contact.subject', 'Tiêu đề', 'contact', 'vi'),
(1097, 'contact.subject', 'Subject', 'contact', 'en'),
(1098, 'contact.content', 'Nội dung', 'contact', 'vi'),
(1099, 'contact.content', 'content', 'contact', 'en'),
(1100, 'contact.page_title', 'Liên hệ', 'contact', 'vi'),
(1101, 'contact.page_title', 'Contact page', 'contact', 'en'),
(1102, 'contact.thank_contact', 'Cảm ơn vì bạn đã liên hệ', 'contact', 'vi'),
(1103, 'contact.thank_contact', 'Thank you for your contact', 'contact', 'en'),
(1104, 'filter_sort.sort', 'Thứ tự', 'filter_sort', 'vi'),
(1105, 'filter_sort.sort', 'Sort', 'filter_sort', 'en'),
(1106, 'filter_sort.price_asc', 'Giá tăng dần', 'filter_sort', 'vi'),
(1107, 'filter_sort.price_asc', 'Price ascending', 'filter_sort', 'en'),
(1108, 'filter_sort.price_desc', 'Giá giảm dần', 'filter_sort', 'vi'),
(1109, 'filter_sort.price_desc', 'Price descending', 'filter_sort', 'en'),
(1110, 'filter_sort.sort_asc', 'Sort tăng dần', 'filter_sort', 'vi'),
(1111, 'filter_sort.sort_asc', 'Sort ascending', 'filter_sort', 'en'),
(1112, 'filter_sort.sort_desc', 'Sort giảm dần', 'filter_sort', 'vi'),
(1113, 'filter_sort.sort_desc', 'Sort descending', 'filter_sort', 'en'),
(1114, 'filter_sort.id_asc', 'ID tăng dần', 'filter_sort', 'vi'),
(1115, 'filter_sort.id_asc', 'ID ascending', 'filter_sort', 'en'),
(1116, 'filter_sort.id_desc', 'ID giảm dần', 'filter_sort', 'vi'),
(1117, 'filter_sort.id_desc', 'ID descending', 'filter_sort', 'en'),
(1118, 'filter_sort.name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1119, 'filter_sort.name_desc', 'Name in z-a order', 'filter_sort', 'en'),
(1120, 'filter_sort.name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1121, 'filter_sort.name_asc', 'Name in a-z order', 'filter_sort', 'en'),
(1122, 'filter_sort.first_name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1123, 'filter_sort.first_name_desc', 'First name in z-a order', 'filter_sort', 'en'),
(1124, 'filter_sort.first_name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1125, 'filter_sort.first_name_asc', 'First name in a-z order', 'filter_sort', 'en'),
(1126, 'filter_sort.last_name_desc', 'Họ theo thứ tự z-a', 'filter_sort', 'vi'),
(1127, 'filter_sort.last_name_desc', 'Last name in z-a order', 'filter_sort', 'en'),
(1128, 'filter_sort.last_name_asc', 'Họ theo thứ tự a-z', 'filter_sort', 'vi'),
(1129, 'filter_sort.last_name_asc', 'Last name in a-z order', 'filter_sort', 'en'),
(1130, 'filter_sort.title_desc', 'Tiêu đề theo thứ tự z-a', 'filter_sort', 'vi'),
(1131, 'filter_sort.title_desc', 'Title in z-a order', 'filter_sort', 'en'),
(1132, 'filter_sort.title_asc', 'Tiêu đề theo thứ tự a-z', 'filter_sort', 'vi'),
(1133, 'filter_sort.title_asc', 'Title in a-z order', 'filter_sort', 'en'),
(1134, 'filter_sort.sold_asc', 'Bán ra tăng dần', 'filter_sort', 'vi'),
(1135, 'filter_sort.sold_asc', 'Sold ascending', 'filter_sort', 'en'),
(1136, 'filter_sort.sold_desc', 'Bán ra giảm dần', 'filter_sort', 'vi'),
(1137, 'filter_sort.sold_desc', 'Sold descending', 'filter_sort', 'en'),
(1138, 'filter_sort.view_desc', 'Lượt xem giảm dần', 'filter_sort', 'vi'),
(1139, 'filter_sort.view_desc', 'View descending', 'filter_sort', 'en'),
(1140, 'filter_sort.view_asc', 'Lượt xem tăng dần', 'filter_sort', 'vi'),
(1141, 'filter_sort.view_asc', 'View ascending', 'filter_sort', 'en'),
(1142, 'filter_sort.alpha_desc', ':alpha theo thứ tự z-a', 'filter_sort', 'vi'),
(1143, 'filter_sort.alpha_desc', ':alpha in z-a order', 'filter_sort', 'en'),
(1144, 'filter_sort.alpha_asc', ':alpha theo thứ tự a-z', 'filter_sort', 'vi'),
(1145, 'filter_sort.alpha_asc', ':alpha in a-z order', 'filter_sort', 'en'),
(1146, 'filter_sort.value_asc', ':value tăng dần', 'filter_sort', 'vi'),
(1147, 'filter_sort.value_asc', ':value ascending', 'filter_sort', 'en'),
(1148, 'filter_sort.value_desc', ':value giảm dần', 'filter_sort', 'vi'),
(1149, 'filter_sort.value_desc', ':value descending', 'filter_sort', 'en'),
(1150, 'subscribe.email', 'Email', 'subscribe', 'en'),
(1151, 'subscribe.action', 'Subscribe', 'subscribe', 'en'),
(1152, 'subscribe.title', 'Subscribe email', 'subscribe', 'en'),
(1153, 'subscribe.subscribe_des', 'Get the most recent updates from us', 'subscribe', 'en'),
(1154, 'subscribe.subscribe_email', 'Your email', 'subscribe', 'en'),
(1155, 'subscribe.subscribe_success', 'Subscribe email successful!', 'subscribe', 'en'),
(1156, 'subscribe.email', 'Email', 'subscribe', 'vi'),
(1157, 'subscribe.action', 'Đăng ký', 'subscribe', 'vi'),
(1158, 'subscribe.title', 'Đăng ký email', 'subscribe', 'vi'),
(1159, 'subscribe.subscribe_des', 'Nhận cập nhật mới nhất', 'subscribe', 'vi'),
(1160, 'subscribe.subscribe_email', 'Email của bạn', 'subscribe', 'vi'),
(1161, 'subscribe.subscribe_success', 'Đăng ký email thành công!', 'subscribe', 'vi'),
(1162, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'vi'),
(1163, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'en'),
(1164, 'subscribe.admin.list', 'Danh sách đang ký', 'subscribe.admin', 'vi'),
(1165, 'subscribe.admin.list', 'Subscribe list', 'subscribe.admin', 'en'),
(1166, 'subscribe.admin.status', 'Trạng thái', 'subscribe.admin', 'vi'),
(1167, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'en'),
(1168, 'subscribe.admin.add_new_title', 'Thêm đăng ký', 'subscribe.admin', 'vi'),
(1169, 'subscribe.admin.add_new_title', 'Add subscribe', 'subscribe.admin', 'en'),
(1170, 'subscribe.admin.add_new_des', 'Thêm tài khoản đăng ký', 'subscribe.admin', 'vi'),
(1171, 'subscribe.admin.add_new_des', 'Add a new subscribe', 'subscribe.admin', 'en'),
(1172, 'subscribe.admin.search_place', 'Search ID or email', 'subscribe.admin', 'en'),
(1173, 'subscribe.admin.search_place', 'Tìm ID hoặc email', 'admin.subscribe', 'vi'),
(1174, 'about.page_title', 'About us', 'about', 'en'),
(1175, 'about.page_title', 'Giới thiệu', 'about', 'vi'),
(1176, 'admin.user.setting', 'Setting', 'admin.user', 'en'),
(1177, 'admin.user.setting', 'Cài đặt', 'admin.user', 'vi'),
(1178, 'admin.user.logout', 'Logout', 'admin.user', 'en'),
(1179, 'admin.user.logout', 'Đăng xuất', 'admin.user', 'vi'),
(1180, 'admin.user.username', 'User name', 'admin.user', 'en'),
(1181, 'admin.user.username', 'Tên đăng nhập', 'admin.user', 'vi'),
(1182, 'admin.user.password', 'Password', 'admin.user', 'en'),
(1183, 'admin.user.password', 'Mật khẩu', 'admin.user', 'vi'),
(1184, 'admin.user.remember_me', 'Remember', 'admin.user', 'en'),
(1185, 'admin.user.remember_me', 'Ghi nhớ', 'admin.user', 'vi'),
(1186, 'admin.user.login', 'Login', 'admin.user', 'en'),
(1187, 'admin.user.login', 'Đăng nhập', 'admin.user', 'vi'),
(1188, 'admin.user.keep_password', 'Để trống nếu không muốn thay đổi mật khẩu', 'admin.user', 'vi'),
(1189, 'admin.user.select_roles', 'Chọn vai trò', 'admin.user', 'vi'),
(1190, 'admin.user.select_permission', 'Chọn quyền hạn', 'admin.user', 'vi'),
(1191, 'admin.user.add_permission', 'Thêm quyền hạn', 'admin.user', 'vi'),
(1192, 'admin.user.select_store', 'Chọn cửa hàng', 'admin.user', 'vi'),
(1193, 'admin.user.name', 'Tên đầy đủ', 'admin.user', 'vi'),
(1194, 'admin.user.user_name', 'Tên đăng nhập', 'admin.user', 'vi'),
(1195, 'admin.user.email', 'Email', 'admin.user', 'vi'),
(1196, 'admin.user.avatar', 'Hình đại diện', 'admin.user', 'vi'),
(1197, 'admin.user.roles', 'vai trò', 'admin.user', 'vi'),
(1198, 'admin.user.permission', 'Quyền hạn', 'admin.user', 'vi'),
(1199, 'admin.user.created_at', 'Tạo lúc', 'admin.user', 'vi'),
(1200, 'admin.user.updated_at', 'Cập nhật', 'admin.user', 'vi'),
(1201, 'admin.user.member_since', 'Tham gia từ', 'admin.user', 'vi'),
(1202, 'admin.user.password_confirmation', 'Xác nhận mật khẩu', 'admin.user', 'vi'),
(1203, 'admin.user.username_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'vi'),
(1204, 'admin.user.title', 'Quản lý người dùng', 'admin.user', 'vi'),
(1205, 'admin.user.list', 'Danh sách người dùng', 'admin.user', 'vi'),
(1206, 'admin.user.add_new', 'Thêm mới', 'admin.user', 'vi'),
(1207, 'admin.user.add_new_title', 'Tạo người dùng', 'admin.user', 'vi'),
(1208, 'admin.user.add_new_des', 'Tạo mới người dùng', 'admin.user', 'vi'),
(1209, 'admin.user.name', 'Full name', 'admin.user', 'en'),
(1210, 'admin.user.user_name', 'User name', 'admin.user', 'en'),
(1211, 'admin.user.email', 'Email', 'admin.user', 'en'),
(1212, 'admin.user.avatar', 'Avatar', 'admin.user', 'en'),
(1213, 'admin.user.roles', 'Roles', 'admin.user', 'en'),
(1214, 'admin.user.permission', 'Permission', 'admin.user', 'en'),
(1215, 'admin.user.created_at', 'Created at', 'admin.user', 'en'),
(1216, 'admin.user.updated_at', 'Updated at', 'admin.user', 'en'),
(1217, 'admin.user.member_since', 'Member since', 'admin.user', 'en'),
(1218, 'admin.user.password_confirmation', 'Confirmation', 'admin.user', 'en'),
(1219, 'admin.user.username_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'en'),
(1220, 'admin.user.keep_password', 'Leave blank if you dont want to change the password', 'admin.user', 'en'),
(1221, 'admin.user.select_roles', 'Select roles', 'admin.user', 'en'),
(1222, 'admin.user.select_permission', 'Select permission', 'admin.user', 'en'),
(1223, 'admin.user.add_permission', 'Add permission', 'admin.user', 'en'),
(1224, 'admin.user.select_store', 'Select store', 'admin.user', 'en'),
(1225, 'admin.user.add_new', 'Add new', 'admin.user', 'en'),
(1226, 'admin.user.add_new_title', 'Add new user', 'admin.user', 'en'),
(1227, 'admin.user.add_new_des', 'Create a new user', 'admin.user', 'en'),
(1228, 'admin.user.list', 'User list', 'admin.user', 'en'),
(1229, 'admin.user.title', 'User manager', 'admin.user', 'en'),
(1230, 'admin.user.search_place', 'Search name', 'admin.user', 'en'),
(1231, 'admin.user.search_place', 'Tìm tên', 'admin.user', 'vi'),
(1232, 'admin.menu_titles.order_manager', 'Quản lý đơn hàng', 'admin.menu_titles', 'vi'),
(1233, 'admin.menu_titles.order_manager', 'Order manager', 'admin.menu_titles', 'en'),
(1234, 'admin.menu_titles.catalog_mamager', 'Sản phẩm & danh mục', 'admin.menu_titles', 'vi'),
(1235, 'admin.menu_titles.catalog_mamager', 'Product & category', 'admin.menu_titles', 'en'),
(1236, 'admin.menu_titles.customer_manager', 'Quản lý khách hàng', 'admin.menu_titles', 'vi'),
(1237, 'admin.menu_titles.customer_manager', 'Customer manager', 'admin.menu_titles', 'en'),
(1238, 'admin.menu_titles.admin_global', 'Quản lý chung', 'admin.menu_titles', 'vi'),
(1239, 'admin.menu_titles.admin_global', 'Admin global', 'admin.menu_titles', 'en'),
(1240, 'admin.menu_titles.ADMIN_SHOP', 'Cửa hàng', 'admin.menu_titles', 'vi'),
(1241, 'admin.menu_titles.ADMIN_SHOP', 'Admin shop', 'admin.menu_titles', 'en'),
(1242, 'admin.menu_titles.ADMIN_CONTENT', 'Nội dung', 'admin.menu_titles', 'vi'),
(1243, 'admin.menu_titles.ADMIN_CONTENT', 'Content', 'admin.menu_titles', 'en'),
(1244, 'admin.menu_titles.ADMIN_EXTENSION', 'Phần mở rộng', 'admin.menu_titles', 'vi'),
(1245, 'admin.menu_titles.ADMIN_EXTENSION', 'Extension', 'admin.menu_titles', 'en'),
(1246, 'admin.menu_titles.ADMIN_SYSTEM', 'Cấu hình hệ thống', 'admin.menu_titles', 'vi'),
(1247, 'admin.menu_titles.ADMIN_SYSTEM', 'System config', 'admin.menu_titles', 'en'),
(1248, 'admin.menu_titles.page_manager', 'Quản lý trang', 'admin.menu_titles', 'vi'),
(1249, 'admin.menu_titles.page_manager', 'Page manager', 'admin.menu_titles', 'en'),
(1250, 'admin.menu_titles.order', 'Đơn hàng', 'admin.menu_titles', 'vi'),
(1251, 'admin.menu_titles.order', 'Order', 'admin.menu_titles', 'en'),
(1252, 'admin.menu_titles.order_status', 'Trạng thái đơn hàng', 'admin.menu_titles', 'vi'),
(1253, 'admin.menu_titles.order_status', 'Order status', 'admin.menu_titles', 'en'),
(1254, 'admin.menu_titles.payment_status', 'Trạng thái thanh toán', 'admin.menu_titles', 'vi'),
(1255, 'admin.menu_titles.payment_status', 'Payment status', 'admin.menu_titles', 'en'),
(1256, 'admin.menu_titles.shipping_status', 'Trạng thái vận chuyển', 'admin.menu_titles', 'vi'),
(1257, 'admin.menu_titles.shipping_status', 'Shipping status', 'admin.menu_titles', 'en'),
(1258, 'admin.menu_titles.product', 'Sản phẩm', 'admin.menu_titles', 'vi'),
(1259, 'admin.menu_titles.product', 'Products', 'admin.menu_titles', 'en'),
(1260, 'admin.menu_titles.category', 'Danh mục', 'admin.menu_titles', 'vi'),
(1261, 'admin.menu_titles.category', 'Categories', 'admin.menu_titles', 'en'),
(1262, 'admin.menu_titles.supplier', 'Nhà cung cấp', 'admin.menu_titles', 'vi'),
(1263, 'admin.menu_titles.supplier', 'Suppliers', 'admin.menu_titles', 'en'),
(1264, 'admin.menu_titles.brand', 'Nhãn hiệu', 'admin.menu_titles', 'vi'),
(1265, 'admin.menu_titles.brand', 'Brands', 'admin.menu_titles', 'en'),
(1266, 'admin.menu_titles.attribute_group', 'Nhóm thuộc tính', 'admin.menu_titles', 'vi'),
(1267, 'admin.menu_titles.attribute_group', 'Attribute group', 'admin.menu_titles', 'en'),
(1268, 'admin.menu_titles.customer', 'Khách hàng', 'admin.menu_titles', 'vi'),
(1269, 'admin.menu_titles.customer', 'Customers', 'admin.menu_titles', 'en'),
(1270, 'admin.menu_titles.subscribe', 'Đăng ký', 'admin.menu_titles', 'vi'),
(1271, 'admin.menu_titles.subscribe', 'Subscribe', 'admin.menu_titles', 'en'),
(1272, 'admin.menu_titles.block_content', 'Khối nội dung', 'admin.menu_titles', 'vi'),
(1273, 'admin.menu_titles.block_content', 'Block content', 'admin.menu_titles', 'en'),
(1274, 'admin.menu_titles.block_link', 'Quản lý liên kết', 'admin.menu_titles', 'vi'),
(1275, 'admin.menu_titles.block_link', 'Link manager', 'admin.menu_titles', 'en'),
(1276, 'admin.menu_titles.template_layout', 'Quản lý giao diện', 'admin.menu_titles', 'vi'),
(1277, 'admin.menu_titles.template_layout', 'Template manager', 'admin.menu_titles', 'en'),
(1278, 'admin.menu_titles.template', 'Giao diện', 'admin.menu_titles', 'vi'),
(1279, 'admin.menu_titles.template', 'Template', 'admin.menu_titles', 'en'),
(1280, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'vi'),
(1281, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'en'),
(1282, 'admin.menu_titles.store_info', 'Thông tin cửa hàng', 'admin.menu_titles', 'vi'),
(1283, 'admin.menu_titles.store_info', 'Store infomation', 'admin.menu_titles', 'en'),
(1284, 'admin.menu_titles.setting_system', 'Thiết lập hệ thống', 'admin.menu_titles', 'vi'),
(1285, 'admin.menu_titles.setting_system', 'Setting system', 'admin.menu_titles', 'en'),
(1286, 'admin.menu_titles.error_log', 'Lỗi & Nhật ký', 'admin.menu_titles', 'vi'),
(1287, 'admin.menu_titles.error_log', 'Error & Logs', 'admin.menu_titles', 'en'),
(1288, 'admin.menu_titles.email_template', 'Mẫu email', 'admin.menu_titles', 'vi'),
(1289, 'admin.menu_titles.email_template', 'Email template', 'admin.menu_titles', 'en'),
(1290, 'admin.menu_titles.language', 'Ngôn ngữ', 'admin.menu_titles', 'vi'),
(1291, 'admin.menu_titles.language', 'Languages', 'admin.menu_titles', 'en'),
(1292, 'admin.menu_titles.language_manager', 'Quản lý ngôn ngữ', 'admin.menu_titles', 'vi'),
(1293, 'admin.menu_titles.language_manager', 'Language manager', 'admin.menu_titles', 'en'),
(1294, 'admin.menu_titles.currency', 'Tiền tệ', 'admin.menu_titles', 'vi'),
(1295, 'admin.menu_titles.currency', 'Currencies', 'admin.menu_titles', 'en'),
(1296, 'admin.menu_titles.banner', 'Banner', 'admin.menu_titles', 'vi'),
(1297, 'admin.menu_titles.banner', 'Banners', 'admin.menu_titles', 'en'),
(1298, 'admin.menu_titles.backup_restore', 'Sao lưu & Phục hồi', 'admin.menu_titles', 'vi'),
(1299, 'admin.menu_titles.backup_restore', 'Backup & Restore', 'admin.menu_titles', 'en'),
(1300, 'admin.menu_titles.plugin', 'Tiện ích', 'admin.menu_titles', 'vi'),
(1301, 'admin.menu_titles.plugin', 'Plugins', 'admin.menu_titles', 'en'),
(1302, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'vi'),
(1303, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'en'),
(1304, 'admin.menu_titles.report_manager', 'Quản lý báo cáo', 'admin.menu_titles', 'vi'),
(1305, 'admin.menu_titles.report_manager', 'Report manager', 'admin.menu_titles', 'en'),
(1306, 'admin.menu_titles.user_permission', 'Quyền hạn người dùng', 'admin.menu_titles', 'vi'),
(1307, 'admin.menu_titles.user_permission', 'User permission', 'admin.menu_titles', 'en'),
(1308, 'admin.menu_titles.css', 'Chỉnh sửa CSS', 'admin.menu_titles', 'vi'),
(1309, 'admin.menu_titles.css', 'CSS style', 'admin.menu_titles', 'en'),
(1310, 'admin.menu_titles.seo_manager', 'Quản lý SEO', 'admin.menu_titles', 'vi'),
(1311, 'admin.menu_titles.seo_manager', 'SEO manager', 'admin.menu_titles', 'en'),
(1312, 'admin.menu_titles.users', 'Người dùng', 'admin.menu_titles', 'vi'),
(1313, 'admin.menu_titles.users', 'Users', 'admin.menu_titles', 'en'),
(1314, 'admin.menu_titles.roles', 'Nhóm quyền', 'admin.menu_titles', 'vi'),
(1315, 'admin.menu_titles.roles', 'Roles', 'admin.menu_titles', 'en'),
(1316, 'admin.menu_titles.permission', 'Quyền hạn', 'admin.menu_titles', 'vi'),
(1317, 'admin.menu_titles.permission', 'Permission', 'admin.menu_titles', 'en'),
(1318, 'admin.menu_titles.operation_log', 'Nhật ký truy cập', 'admin.menu_titles', 'vi'),
(1319, 'admin.menu_titles.operation_log', 'Log access', 'admin.menu_titles', 'en'),
(1320, 'admin.menu_titles.seo_config', 'Cấu hình SEO', 'admin.menu_titles', 'vi'),
(1321, 'admin.menu_titles.seo_config', 'SEO config', 'admin.menu_titles', 'en'),
(1322, 'admin.menu_titles.news', 'Tin tức', 'admin.menu_titles', 'vi'),
(1323, 'admin.menu_titles.news', 'News', 'admin.menu_titles', 'en'),
(1324, 'admin.menu_titles.env_config', 'Cấu hình môi trường', 'admin.menu_titles', 'vi'),
(1325, 'admin.menu_titles.env_config', 'Environment Config', 'admin.menu_titles', 'en'),
(1326, 'admin.menu_titles.report_product', 'Báo cáo sản phẩm', 'admin.menu_titles', 'vi'),
(1327, 'admin.menu_titles.report_product', 'Report product', 'admin.menu_titles', 'en'),
(1328, 'admin.menu_titles.store_config', 'Cấu hình cửa hàng', 'admin.menu_titles', 'vi'),
(1329, 'admin.menu_titles.store_config', 'Store config', 'admin.menu_titles', 'en'),
(1330, 'admin.menu_titles.cache_manager', 'Bộ nhớ đệm', 'admin.menu_titles', 'vi'),
(1331, 'admin.menu_titles.cache_manager', 'Cache', 'admin.menu_titles', 'en'),
(1332, 'admin.menu_titles.api_manager', 'Quản lý API', 'admin.menu_titles', 'vi'),
(1333, 'admin.menu_titles.api_manager', 'API manager', 'admin.menu_titles', 'en'),
(1334, 'admin.menu_titles.store_maintain', 'Bảo trì website', 'admin.menu_titles', 'vi'),
(1335, 'admin.menu_titles.store_maintain', 'Website maintain', 'admin.menu_titles', 'en'),
(1336, 'admin.menu_titles.tax', 'Thuế', 'admin.menu_titles', 'vi'),
(1337, 'admin.menu_titles.tax', 'Tax', 'admin.menu_titles', 'en'),
(1338, 'admin.menu_titles.weight', 'Khối lượng', 'admin.menu_titles', 'vi'),
(1339, 'admin.menu_titles.weight', 'Weight', 'admin.menu_titles', 'en'),
(1340, 'admin.menu_titles.length', 'Kích thước', 'admin.menu_titles', 'vi'),
(1341, 'admin.menu_titles.length', 'Length', 'admin.menu_titles', 'en'),
(1342, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Thiết lập cửa hàng', 'admin.menu_titles', 'vi'),
(1343, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Shop setting', 'admin.menu_titles', 'en'),
(1344, 'admin.menu_titles.api_config', 'Cấu hình API', 'admin.menu_titles', 'vi'),
(1345, 'admin.menu_titles.api_config', 'API config', 'admin.menu_titles', 'en'),
(1346, 'admin.menu_titles.layout', 'Bố cục', 'admin.menu_titles', 'vi'),
(1347, 'admin.menu_titles.layout', 'Layout', 'admin.menu_titles', 'en'),
(1348, 'admin.menu_titles.custom_field', 'Tùy chỉnh dữ liệu', 'admin.menu_titles', 'vi'),
(1349, 'admin.menu_titles.custom_field', 'Custom field data', 'admin.menu_titles', 'en'),
(1350, 'admin.menu_titles.security', 'Bảo mật', 'admin.menu_titles', 'vi'),
(1351, 'admin.menu_titles.security', 'Security', 'admin.menu_titles', 'en'),
(1352, 'admin.menu_titles.localization', 'Địa phương hóa', 'admin.menu_titles', 'vi'),
(1353, 'admin.menu_titles.localization', 'Localization', 'admin.menu_titles', 'en'),
(1354, 'admin.menu_titles.localisation', 'Địa phương hóa', 'admin.menu_titles', 'vi'),
(1355, 'admin.menu_titles.localisation', 'Localisation', 'admin.menu_titles', 'en'),
(1356, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'vi'),
(1357, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'en'),
(1358, 'admin.menu_titles.config_store_default', 'Cấu hình mặc định', 'admin.menu_titles', 'vi'),
(1359, 'admin.menu_titles.config_store_default', 'Config default', 'admin.menu_titles', 'en'),
(1360, 'admin.login_success', 'Login success!', 'admin', 'en'),
(1361, 'admin.login_success', 'Đăng nhập thành công', 'admin', 'vi'),
(1362, 'admin.access_denied', 'Access denied!', 'admin', 'en'),
(1363, 'admin.access_denied', 'Truy cập bị từ chối', 'admin', 'vi'),
(1364, 'admin.max_c', 'Maximum :max characters', 'admin', 'en'),
(1365, 'admin.min_c', 'Minimum :min characters', 'admin', 'en'),
(1366, 'admin.min_v', 'Greater than :value', 'admin', 'en'),
(1367, 'admin.max_v', 'Less than :value', 'admin', 'en'),
(1368, 'admin.max_c', 'Tối đa :max kí tự', 'admin', 'vi'),
(1369, 'admin.min_c', 'Tối thiểu :min kí tự', 'admin', 'vi'),
(1370, 'admin.min_v', 'Lớn hơn :value', 'admin', 'vi'),
(1371, 'admin.max_v', 'Nhỏ hơn :value', 'admin', 'vi'),
(1372, 'admin.data_not_found_detail', 'Dữ liệu không tồn tại :msg', 'admin', 'vi'),
(1373, 'admin.data_not_found_detail', 'Data not found :msg', 'admin', 'en'),
(1374, 'admin.login_successful', 'Đăng nhập thành công', 'admin', 'vi'),
(1375, 'admin.login_successful', 'Login success', 'admin', 'en'),
(1376, 'admin.add_new', 'Add new', 'admin', 'en'),
(1377, 'admin.add_new', 'Thêm mới', 'admin', 'vi'),
(1378, 'admin.not_empty', 'Not empty', 'admin', 'en'),
(1379, 'admin.not_empty', 'Không được rỗng', 'admin', 'vi'),
(1380, 'admin.only_numeric', 'Enly numeric', 'admin', 'en'),
(1381, 'admin.only_numeric', 'Chỉ dùng số', 'admin', 'vi'),
(1382, 'admin.store_swicth_success', 'Switch store success!', 'admin', 'en'),
(1383, 'admin.store_swicth_success', 'Chuyển cửa hàng thành công!', 'admin', 'vi'),
(1384, 'admin.dashboard', 'Dashboard', 'admin', 'en'),
(1385, 'admin.dashboard', 'Tổng hợp', 'admin', 'vi'),
(1386, 'admin.data_not_found', 'Data not found!', 'admin', 'en'),
(1387, 'admin.data_not_found', 'Không có dữ liệu!', 'admin', 'vi'),
(1388, 'admin.data_not_found_msg', 'The data you are accessing does not exist.', 'admin', 'en'),
(1389, 'admin.data_not_found_msg', 'Dữ liệu bạn đang truy cập không tồn tại.', 'admin', 'vi'),
(1390, 'admin.deny', 'Access denied!', 'admin', 'en'),
(1391, 'admin.deny', 'Truy cập từ chối!', 'admin', 'vi'),
(1392, 'admin.setting_account', 'Setting account', 'admin', 'en'),
(1393, 'admin.setting_account', 'Thiết lập tài khoản', 'admin', 'vi'),
(1394, 'admin.failed', 'Auth failed', 'admin', 'en'),
(1395, 'admin.failed', 'Chứng thực thất bại', 'admin', 'vi'),
(1396, 'admin.maintain_enable', 'Active ', 'admin', 'en'),
(1397, 'admin.maintain_enable', 'Hoạt động', 'admin', 'vi'),
(1398, 'admin.maintain_disable', 'Maintenance ', 'admin', 'en'),
(1399, 'admin.maintain_disable', 'Bảo trì', 'admin', 'vi'),
(1400, 'admin.position_all', 'All pages', 'admin', 'en'),
(1401, 'admin.position_all', 'Tất cả các trang', 'admin', 'vi'),
(1402, 'admin.theme', 'Theme', 'admin', 'en'),
(1403, 'admin.theme', 'Mẫu', 'admin', 'vi'),
(1404, 'admin.select_store', 'Select store', 'admin', 'en'),
(1405, 'admin.select_store', 'Chọn cửa hàng', 'admin', 'vi'),
(1406, 'admin.welcome_dasdboard', 'Welcome to admin system!', 'admin', 'en'),
(1407, 'admin.welcome_dasdboard', 'Chào mừng đến với hệ thống!', 'admin', 'vi'),
(1408, 'admin.deny_msg', 'You need permission to access the system!', 'admin', 'en'),
(1409, 'admin.deny_content', 'Permission denied!', 'admin', 'en'),
(1410, 'admin.deny_msg', 'Bạn cần thêm quyền hạn để truy cập hệ thống!', 'admin', 'vi'),
(1411, 'admin.deny_content', 'Bạn không có đủ quyền hạn!', 'admin', 'vi'),
(1412, 'admin.home', 'Trang chủ', 'admin', 'vi'),
(1413, 'admin.home', 'Home', 'admin', 'en'),
(1414, 'admin.choose_icon', 'Chọn icon', 'admin', 'vi'),
(1415, 'admin.choose_icon', 'Chose icon', 'admin', 'en'),
(1416, 'admin.file_manager', 'Quản lý file', 'admin', 'vi'),
(1417, 'admin.file_manager', 'File manager', 'admin', 'en'),
(1418, 'admin.notice_new_order', 'Bạn có :total đơn hàng mới', 'admin', 'vi'),
(1419, 'admin.notice_new_order', 'You have :total new orders', 'admin', 'en'),
(1420, 'admin.gt_numeric_0', 'Giá trị  phải lớn hơn 0!', 'admin', 'vi'),
(1421, 'admin.gt_numeric_0', 'Value must greater zero!', 'admin', 'en'),
(1422, 'admin.api_connection.api_mode_help', 'ON/OFF API', 'admin.api_connection', 'en'),
(1423, 'admin.api_connection.api_mode_help', 'TẮT/MỞ API', 'admin.api_connection', 'vi'),
(1424, 'admin.api_connection.api_mode', 'ON/OFF API', 'admin.api_connection', 'en'),
(1425, 'admin.api_connection.api_mode', 'TẮT/MỞ API', 'admin.api_connection', 'vi'),
(1426, 'admin.api_connection.list', 'API connection list', 'admin.api_connection', 'en'),
(1427, 'admin.api_connection.list', 'Danh sách API connection', 'admin.api_connection', 'vi'),
(1428, 'admin.api_connection.description', 'Mô tả', 'admin.api_connection', 'vi'),
(1429, 'admin.api_connection.description', 'Description', 'admin.api_connection', 'en'),
(1430, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'vi'),
(1431, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'en'),
(1432, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'vi'),
(1433, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'en'),
(1434, 'admin.api_connection.expire', 'Hết hạn', 'admin.api_connection', 'vi'),
(1435, 'admin.api_connection.expire', 'Expire', 'admin.api_connection', 'en'),
(1436, 'admin.api_connection.last_active', 'Lần cuối truy cập', 'admin.api_connection', 'vi'),
(1437, 'admin.api_connection.last_active', 'Last active', 'admin.api_connection', 'en'),
(1438, 'admin.api_connection.status', 'Trạng thái', 'admin.api_connection', 'vi'),
(1439, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'en'),
(1440, 'admin.api_connection.validate_regex', 'Chỉ sử dụng các kí tự : a-z0-9', 'admin.api_connection', 'vi'),
(1441, 'admin.api_connection.validate_regex', 'Only use characters : a-z0-9', 'admin.api_connection', 'en'),
(1442, 'admin.api_connection.create', 'Tạo mới connection', 'admin.api_connection', 'vi'),
(1443, 'admin.api_connection.create', 'Creat new connection', 'admin.api_connection', 'en'),
(1444, 'admin.api_connection.edit', 'Chỉnh sửa connection', 'admin.api_connection', 'vi'),
(1445, 'admin.api_connection.edit', 'Edit connection', 'admin.api_connection', 'en'),
(1446, 'admin.api_connection.api_connection_required_help', '<ul><li>Nếu không sử dụng API, hãy hãy chuyển sang trạng thái \"OFF API\"</li><li>Nếu không sử dụng apikey và apiconnection, hãy chuyển sang trạng thái \"OFF CONNECTION\"</li></ul>\n    <a href=\"https://s-cart.org/vi/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiết ở đây</i></a>\n    ', 'admin.api_connection', 'vi'),
(1447, 'admin.api_connection.api_connection_required_help', '<ul><li>If not using API, please switch to \"OFF API\" state</li><li>If apikey and apiconnection are not used, switch to \"OFF CONNECTION\" state</li></ul>\n    <a href=\"https://s-cart.org/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\n    ', 'admin.api_connection', 'en'),
(1448, 'admin.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'admin', 'en'),
(1449, 'admin.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'admin', 'vi'),
(1450, 'admin.method_not_allow', 'Method not allow', 'admin', 'en'),
(1451, 'admin.method_not_allow', 'Phương thức không được phép', 'admin', 'vi'),
(1452, 'admin.back_list', 'Back list', 'admin', 'en'),
(1453, 'admin.back_list', 'Trở lại danh sách', 'admin', 'vi'),
(1454, 'admin.msg_change_success', 'All changes have been updated', 'admin', 'en'),
(1455, 'admin.msg_change_success', 'Thay đổi đã được cập nhật', 'admin', 'vi'),
(1456, 'admin.updated_at', 'Updated at', 'admin', 'en'),
(1457, 'admin.updated_at', 'Cập nhật lúc', 'admin', 'vi'),
(1458, 'admin.created_at', 'Created at', 'admin', 'en'),
(1459, 'admin.created_at', 'Tạo lúc', 'admin', 'vi'),
(1460, 'admin.remove_dont_permisison', 'Dont permission remove ', 'admin', 'en'),
(1461, 'admin.remove_dont_permisison', 'Không có quyền gỡ bỏ', 'admin', 'vi'),
(1462, 'admin.delete_dont_permisison', 'Dont permission delete ', 'admin', 'en'),
(1463, 'admin.delete_dont_permisison', 'Không có quyền xóa', 'admin', 'vi'),
(1464, 'admin.attribute_group.list', 'Danh sách nhóm thuộc tính', 'admin.attribute_group', 'vi'),
(1465, 'admin.attribute_group.list', 'Attribute group list', 'admin.attribute_group', 'en'),
(1466, 'admin.attribute_group.name', 'Tên', 'admin.attribute_group', 'vi'),
(1467, 'admin.attribute_group.name', 'Name', 'admin.attribute_group', 'en'),
(1468, 'admin.attribute_group.type', 'Loại', 'admin.attribute_group', 'vi'),
(1469, 'admin.attribute_group.type', 'Type', 'admin.attribute_group', 'en'),
(1470, 'admin.order.search', 'Tìm đơn hàng', 'admin.order', 'vi'),
(1471, 'admin.order.search', 'Search order', 'admin.order', 'en'),
(1472, 'admin.permission.name', 'Tên', 'admin.permission', 'vi'),
(1473, 'admin.permission.name', 'Name', 'admin.permission', 'en'),
(1474, 'admin.permission.list', 'Dánh sách quyền', 'admin.permission', 'vi'),
(1475, 'admin.permission.list', 'Permission list', 'admin.permission', 'en'),
(1476, 'admin.permission.slug', 'Slug', 'admin.permission', 'vi'),
(1477, 'admin.permission.slug', 'Slug', 'admin.permission', 'en'),
(1478, 'admin.permission.select_http_uri', 'Chọn http uri', 'admin.permission', 'vi'),
(1479, 'admin.permission.select_http_uri', 'Select http uri', 'admin.permission', 'en'),
(1480, 'admin.permission.method_placeholder', 'Các quyền', 'admin.permission', 'vi'),
(1481, 'admin.permission.method_placeholder', 'Permission detail', 'admin.permission', 'en'),
(1482, 'admin.permission.http_path', 'Http path', 'admin.permission', 'vi'),
(1483, 'admin.permission.http_path', 'Http path', 'admin.permission', 'en'),
(1484, 'admin.permission.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'vi');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1485, 'admin.permission.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'en'),
(1486, 'admin.permission.add_new_des', 'Tạo mới một quyền', 'admin.permission', 'vi'),
(1487, 'admin.permission.add_new_des', 'Create new permission', 'admin.permission', 'en'),
(1488, 'admin.permission.add_new_title', 'Tạo quyền', 'admin.permission', 'vi'),
(1489, 'admin.permission.add_new_title', 'Create permission', 'admin.permission', 'en'),
(1490, 'admin.backup.title', 'Danh sách sao lưu', 'admin.backup', 'vi'),
(1491, 'admin.backup.title', 'Backup list', 'admin.backup', 'en'),
(1492, 'admin.backup.processing', 'Đang xử lý...', 'admin.backup', 'vi'),
(1493, 'admin.backup.processing', 'Processing...', 'admin.backup', 'en'),
(1494, 'admin.backup.guide', '<span class=\"text-danger\">Chú ý: Bạn cần phải cài đặt đường dẫn hệ thống chính xác. Xem hướng dẫn <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">TẠI ĐÂY</a></span>', 'admin.backup', 'vi'),
(1495, 'admin.backup.generate_now', 'Tạo một backup ngay', 'admin.backup', 'vi'),
(1496, 'admin.backup.manager', 'Quản lý sao lưu', 'admin.backup', 'vi'),
(1497, 'admin.backup.name', 'Tên file', 'admin.backup', 'vi'),
(1498, 'admin.backup.sort', 'Thứ tự', 'admin.backup', 'vi'),
(1499, 'admin.backup.date', 'Thời gian', 'admin.backup', 'vi'),
(1500, 'admin.backup.size', 'Kích thước', 'admin.backup', 'vi'),
(1501, 'admin.backup.download', 'Tải về', 'admin.backup', 'vi'),
(1502, 'admin.backup.remove', 'Gỡ bỏ', 'admin.backup', 'vi'),
(1503, 'admin.backup.restore', 'Phục hồi', 'admin.backup', 'vi'),
(1504, 'admin.backup.remove_success', 'Xóa file thành công!', 'admin.backup', 'vi'),
(1505, 'admin.backup.restore_success', 'Phục hồi dữ liệu thành công!', 'admin.backup', 'vi'),
(1506, 'admin.backup.generate_success', 'Tạo file backup thành công!', 'admin.backup', 'vi'),
(1507, 'admin.backup.limit_backup', 'Bạn chỉ được tạo tối đa 10 bản sao lưu!', 'admin.backup', 'vi'),
(1508, 'admin.backup.guide', '<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>', 'admin.backup', 'en'),
(1509, 'admin.backup.generate_now', 'Gererate a backup now', 'admin.backup', 'en'),
(1510, 'admin.backup.manager', 'Backup management', 'admin.backup', 'en'),
(1511, 'admin.backup.name', 'File name', 'admin.backup', 'en'),
(1512, 'admin.backup.sort', 'Sort', 'admin.backup', 'en'),
(1513, 'admin.backup.date', 'Date', 'admin.backup', 'en'),
(1514, 'admin.backup.size', 'Size', 'admin.backup', 'en'),
(1515, 'admin.backup.download', 'Download', 'admin.backup', 'en'),
(1516, 'admin.backup.remove', 'Remove', 'admin.backup', 'en'),
(1517, 'admin.backup.restore', 'Restore', 'admin.backup', 'en'),
(1518, 'admin.backup.remove_success', 'Remove successful!', 'admin.backup', 'en'),
(1519, 'admin.backup.restore_success', 'Restore successful!', 'admin.backup', 'en'),
(1520, 'admin.backup.generate_success', 'Create successful backup file!', 'admin.backup', 'en'),
(1521, 'admin.backup.limit_backup', 'You cannot create more than 10 copies', 'admin.backup', 'en'),
(1522, 'admin.banner.type', 'Loại', 'admin.banner', 'vi'),
(1523, 'admin.banner.type', 'Type', 'admin.banner', 'en'),
(1524, 'admin.banner.add_new', 'Thêm mới banner', 'admin.banner', 'vi'),
(1525, 'admin.banner.add_new', 'Add new banner', 'admin.banner', 'en'),
(1526, 'admin.banner.image', 'Hình ảnh', 'admin.banner', 'vi'),
(1527, 'admin.banner.image', 'Image', 'admin.banner', 'en'),
(1528, 'admin.banner.title', 'Tiêu đề', 'admin.banner', 'vi'),
(1529, 'admin.banner.title', 'Title', 'admin.banner', 'en'),
(1530, 'admin.banner.url', 'URL', 'admin.banner', 'vi'),
(1531, 'admin.banner.url', 'URL', 'admin.banner', 'en'),
(1532, 'admin.banner.sort', 'Thứ tự', 'admin.banner', 'vi'),
(1533, 'admin.banner.sort', 'Sort', 'admin.banner', 'en'),
(1534, 'admin.banner.status', 'Trạng thái', 'admin.banner', 'vi'),
(1535, 'admin.banner.status', 'Status', 'admin.banner', 'en'),
(1536, 'admin.banner.click', 'Bấm chuột', 'admin.banner', 'vi'),
(1537, 'admin.banner.click', 'Click', 'admin.banner', 'en'),
(1538, 'admin.banner.target', 'Target', 'admin.banner', 'vi'),
(1539, 'admin.banner.target', 'Target', 'admin.banner', 'en'),
(1540, 'admin.banner.select_target', 'Chọn target', 'admin.banner', 'vi'),
(1541, 'admin.banner.select_target', 'Select target', 'admin.banner', 'en'),
(1542, 'admin.banner.list', 'Danh sách banner', 'admin.banner', 'vi'),
(1543, 'admin.banner.list', 'Banner list', 'admin.banner', 'en'),
(1544, 'admin.banner_type.list', 'Loại banner', 'admin.banner', 'vi'),
(1545, 'admin.banner_type.list', 'Banner type list', 'admin.banner', 'en'),
(1546, 'admin.banner_type.add_new_title', 'Thêm loại mới', 'admin.banner', 'vi'),
(1547, 'admin.banner_type.add_new_title', 'Add new type', 'admin.banner', 'en'),
(1548, 'admin.banner_type.code', 'Mã', 'admin.banner', 'vi'),
(1549, 'admin.banner_type.code', 'Code', 'admin.banner', 'en'),
(1550, 'admin.banner_type.name', 'Tên', 'admin.banner', 'vi'),
(1551, 'admin.banner_type.name', 'Name', 'admin.banner', 'en'),
(1552, 'admin.brand.list', 'Danh sách nhãn hiệu', 'admin.brand', 'vi'),
(1553, 'admin.brand.list', 'Brand list', 'admin.brand', 'en'),
(1554, 'admin.brand.add_new_title', 'Thêm mới nhãn hiệu', 'admin.brand', 'vi'),
(1555, 'admin.brand.add_new_title', 'Add new brand', 'admin.brand', 'en'),
(1556, 'admin.brand.image', 'Hình ảnh', 'admin.brand', 'vi'),
(1557, 'admin.brand.image', 'Image', 'admin.brand', 'en'),
(1558, 'admin.brand.name', 'Tên', 'admin.brand', 'vi'),
(1559, 'admin.brand.name', 'Name', 'admin.brand', 'en'),
(1560, 'admin.brand.sort', 'Thứ tự', 'admin.brand', 'vi'),
(1561, 'admin.brand.sort', 'Sort', 'admin.brand', 'en'),
(1562, 'admin.brand.status', 'Trạng thái', 'admin.brand', 'vi'),
(1563, 'admin.brand.status', 'Status', 'admin.brand', 'en'),
(1564, 'admin.brand.alias', 'Alias', 'admin.brand', 'vi'),
(1565, 'admin.brand.alias', 'Alias', 'admin.brand', 'en'),
(1566, 'admin.brand.url', 'Url', 'admin.brand', 'vi'),
(1567, 'admin.brand.url', 'Url', 'admin.brand', 'en'),
(1568, 'admin.brand.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'vi'),
(1569, 'admin.brand.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'en'),
(1570, 'admin.cache.title', 'Cấu hình bộ nhớ Cache', 'admin.cache', 'vi'),
(1571, 'admin.cache.title', 'config cache manager', 'admin.cache', 'en'),
(1572, 'admin.cache.cache_clear_processing', 'Đang xóa Cache', 'admin.cache', 'vi'),
(1573, 'admin.cache.cache_clear_processing', 'Cache clearing', 'admin.cache', 'en'),
(1574, 'admin.cache.cache_status', 'Trạng thái', 'admin.cache', 'vi'),
(1575, 'admin.cache.cache_status', 'Status', 'admin.cache', 'en'),
(1576, 'admin.cache.cache_clear_all', 'Xóa tất cả Cache', 'admin.cache', 'vi'),
(1577, 'admin.cache.cache_clear_all', 'Clear all cache', 'admin.cache', 'en'),
(1578, 'admin.cache.cache_clear_success', 'Đã xóa cache xong', 'admin.cache', 'vi'),
(1579, 'admin.cache.cache_clear_success', 'Clear cache success', 'admin.cache', 'en'),
(1580, 'admin.cache.cache_refresh', 'Làm mới cache', 'admin.cache', 'vi'),
(1581, 'admin.cache.cache_refresh', 'Cache refresh', 'admin.cache', 'en'),
(1582, 'admin.cache.cache_clear', 'Xóa cache', 'admin.cache', 'vi'),
(1583, 'admin.cache.cache_clear', 'Clear cache', 'admin.cache', 'en'),
(1584, 'admin.cache.cache_all', 'Cache tất cả', 'admin.cache', 'vi'),
(1585, 'admin.cache.cache_all', 'Cache all', 'admin.cache', 'en'),
(1586, 'admin.cache.cache_time', 'Thời gian cache (giây)', 'admin.cache', 'vi'),
(1587, 'admin.cache.cache_time', 'Cache time (s)', 'admin.cache', 'en'),
(1588, 'admin.cache.value', 'Giá trị', 'admin.cache', 'vi'),
(1589, 'admin.cache.value', 'Value', 'admin.cache', 'en'),
(1590, 'admin.cache.field', 'Trường', 'admin.cache', 'vi'),
(1591, 'admin.cache.field', 'Field', 'admin.cache', 'en'),
(1592, 'admin.cache.cache_category', 'Cache Danh mục sản phẩm', 'admin.cache', 'vi'),
(1593, 'admin.cache.cache_product', 'Cache Sản phẩm', 'admin.cache', 'vi'),
(1594, 'admin.cache.cache_news', 'Cache Tin tức/Blog', 'admin.cache', 'vi'),
(1595, 'admin.cache.cache_category_cms', 'Cache Danh mục CMS', 'admin.cache', 'vi'),
(1596, 'admin.cache.cache_content_cms', 'Cache Nội dung CMS', 'admin.cache', 'vi'),
(1597, 'admin.cache.cache_page', 'Cache Trang viết', 'admin.cache', 'vi'),
(1598, 'admin.cache.cache_store', 'Cache Cửa hàng', 'admin.cache', 'vi'),
(1599, 'admin.cache.cache_country', 'Cache Quốc gia', 'admin.cache', 'vi'),
(1600, 'admin.cache.cache_category', 'Cache categoty', 'admin.cache', 'en'),
(1601, 'admin.cache.cache_product', 'Cache product', 'admin.cache', 'en'),
(1602, 'admin.cache.cache_news', 'Cache News/Blog', 'admin.cache', 'en'),
(1603, 'admin.cache.cache_category_cms', 'Cache Category CMS', 'admin.cache', 'en'),
(1604, 'admin.cache.cache_content_cms', 'Cache CMS content', 'admin.cache', 'en'),
(1605, 'admin.cache.cache_page', 'Cache page', 'admin.cache', 'en'),
(1606, 'admin.cache.cache_store', 'Cache Store', 'admin.cache', 'en'),
(1607, 'admin.cache.cache_country', 'Cache country', 'admin.cache', 'en'),
(1608, 'admin.category.list', 'Danh sách danh mục', 'admin.category', 'vi'),
(1609, 'admin.category.list', 'Category list', 'admin.category', 'en'),
(1610, 'admin.category.add_new_title', 'Thêm mới danh mục', 'admin.category', 'vi'),
(1611, 'admin.category.add_new_title', 'Add new category', 'admin.category', 'en'),
(1612, 'admin.category.add_new_des', 'Thêm mới', 'admin.category', 'vi'),
(1613, 'admin.category.add_new_des', 'Add new', 'admin.category', 'en'),
(1614, 'admin.category.image', 'Hình ảnh', 'admin.category', 'vi'),
(1615, 'admin.category.image', 'Image', 'admin.category', 'en'),
(1616, 'admin.category.title', 'Tên', 'admin.category', 'vi'),
(1617, 'admin.category.title', 'Name', 'admin.category', 'en'),
(1618, 'admin.category.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'vi'),
(1619, 'admin.category.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'vi'),
(1620, 'admin.category.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'en'),
(1621, 'admin.category.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'en'),
(1622, 'admin.category.keyword', 'Từ khóa', 'admin.category', 'vi'),
(1623, 'admin.category.keyword', 'Keyword', 'admin.category', 'en'),
(1624, 'admin.category.description', 'Mô tả', 'admin.category', 'vi'),
(1625, 'admin.category.description', 'Description', 'admin.category', 'en'),
(1626, 'admin.category.top', 'Công cộng', 'admin.category', 'vi'),
(1627, 'admin.category.top', 'Public', 'admin.category', 'en'),
(1628, 'admin.category.parent', 'Cấp cha', 'admin.category', 'vi'),
(1629, 'admin.category.parent', 'Parent', 'admin.category', 'en'),
(1630, 'admin.category.sort', 'Thứ tự', 'admin.category', 'vi'),
(1631, 'admin.category.sort', 'Sort', 'admin.category', 'en'),
(1632, 'admin.category.status', 'Trạng thái', 'admin.category', 'vi'),
(1633, 'admin.category.status', 'Status', 'admin.category', 'en'),
(1634, 'admin.category.select_category', 'Chọn danh mục', 'admin.category', 'vi'),
(1635, 'admin.category.select_category', 'Select category', 'admin.category', 'en'),
(1636, 'admin.category.top_help', 'Danh mục này sẽ hiển thị ra ngoài trang chủ. Mặc định chỉ dành cho những danh mục Root.', 'admin.category', 'vi'),
(1637, 'admin.category.top_help', 'This category will display outside the homepage. The default is for Root items only.', 'admin.category', 'en'),
(1638, 'admin.config.webhook', 'Webhook', 'admin.config', 'vi'),
(1639, 'admin.config.webhook', 'Webhook', 'admin.config', 'en'),
(1640, 'admin.config.setting_website', 'Cài đặt website', 'admin.config', 'vi'),
(1641, 'admin.config.setting_website', 'Setting website', 'admin.config', 'en'),
(1642, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Gửi tới Slack webhook', 'admin.config', 'vi'),
(1643, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Report error to Slack webhook', 'admin.config', 'en'),
(1644, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Gửi tới Google webhook', 'admin.config', 'vi'),
(1645, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Report error to Google webhook', 'admin.config', 'en'),
(1646, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Gửi tới Chatword webhook', 'admin.config', 'vi'),
(1647, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Report error to Chatword webhook', 'admin.config', 'en'),
(1648, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'vi'),
(1649, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'en'),
(1650, 'admin.currency.list', 'Danh sách tiền tệ', 'admin.currency', 'vi'),
(1651, 'admin.currency.list', 'Currencies list', 'admin.currency', 'en'),
(1652, 'admin.currency.name', 'Tên', 'admin.currency', 'vi'),
(1653, 'admin.currency.name', 'Name', 'admin.currency', 'en'),
(1654, 'admin.currency.code', 'Mã', 'admin.currency', 'vi'),
(1655, 'admin.currency.code', 'Code', 'admin.currency', 'en'),
(1656, 'admin.currency.symbol', 'Ký hiệu', 'admin.currency', 'vi'),
(1657, 'admin.currency.symbol', 'Symbol', 'admin.currency', 'en'),
(1658, 'admin.currency.exchange_rate', 'Tỉ giá', 'admin.currency', 'vi'),
(1659, 'admin.currency.exchange_rate', 'Exchange rate', 'admin.currency', 'en'),
(1660, 'admin.currency.precision', 'Số chữ số thập phân', 'admin.currency', 'vi'),
(1661, 'admin.currency.precision', 'Precision', 'admin.currency', 'en'),
(1662, 'admin.currency.symbol_first', 'Hiện kí hiệu đầu tiên', 'admin.currency', 'vi'),
(1663, 'admin.currency.symbol_first', 'Symbol first', 'admin.currency', 'en'),
(1664, 'admin.currency.thousands', 'Ngăn cách phần nghìn', 'admin.currency', 'vi'),
(1665, 'admin.currency.thousands', 'Thousands separator', 'admin.currency', 'en'),
(1666, 'admin.currency.status', 'Trạng thái', 'admin.currency', 'vi'),
(1667, 'admin.currency.status', 'Status', 'admin.currency', 'en'),
(1668, 'admin.currency.sort', 'Thứ tự', 'admin.currency', 'vi'),
(1669, 'admin.currency.sort', 'Sort', 'admin.currency', 'en'),
(1670, 'admin.currency.add_new_title', 'Thêm mới tiền tệ', 'admin.currency', 'vi'),
(1671, 'admin.currency.add_new_title', 'Add new currency', 'admin.currency', 'en'),
(1672, 'admin.currency.add_new_des', 'Thêm mới', 'admin.currency', 'vi'),
(1673, 'admin.currency.add_new_des', 'Add new', 'admin.currency', 'en'),
(1674, 'admin.custom_field.title', 'Field dữ liệu tùy chỉnh', 'admin.custom_field', 'vi'),
(1675, 'admin.custom_field.title', 'Custom field', 'admin.custom_field', 'en'),
(1676, 'admin.custom_field.list', 'Danh sách field tùy chỉnh', 'admin.custom_field', 'vi'),
(1677, 'admin.custom_field.list', 'Custom field list', 'admin.custom_field', 'en'),
(1678, 'admin.custom_field.status', 'Trạng thái', 'admin.custom_field', 'vi'),
(1679, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'en'),
(1680, 'admin.custom_field.sort', 'Thứ tự', 'admin.custom_field', 'vi'),
(1681, 'admin.custom_field.sort', 'Sort', 'admin.custom_field', 'en'),
(1682, 'admin.custom_field.add_new_title', 'Thêm mới field', 'admin.custom_field', 'vi'),
(1683, 'admin.custom_field.add_new_title', 'Add new field', 'admin.custom_field', 'en'),
(1684, 'admin.custom_field.add_new_des', 'Thêm mới', 'admin.custom_field', 'vi'),
(1685, 'admin.custom_field.add_new_des', 'Add new', 'admin.custom_field', 'en'),
(1686, 'admin.custom_field.name', 'Tên', 'admin.custom_field', 'vi'),
(1687, 'admin.custom_field.name', 'Name', 'admin.custom_field', 'en'),
(1688, 'admin.custom_field.code', 'Mã', 'admin.custom_field', 'vi'),
(1689, 'admin.custom_field.code', 'Code', 'admin.custom_field', 'en'),
(1690, 'admin.custom_field.type', 'Loại', 'admin.custom_field', 'vi'),
(1691, 'admin.custom_field.type', 'Type', 'admin.custom_field', 'en'),
(1692, 'admin.custom_field.required', 'Bắt buộc', 'admin.custom_field', 'vi'),
(1693, 'admin.custom_field.required', 'Required', 'admin.custom_field', 'en'),
(1694, 'admin.custom_field.option', 'Tùy chọn', 'admin.custom_field', 'vi'),
(1695, 'admin.custom_field.option', 'Option', 'admin.custom_field', 'en'),
(1696, 'admin.custom_field.default', 'Mặc định', 'admin.custom_field', 'vi'),
(1697, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'en'),
(1698, 'admin.custom_field.default_help', 'Định dạng cho \"Tùy chọn\" là Radio hoặc Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'vi'),
(1699, 'admin.custom_field.default_help', 'Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'en'),
(1700, 'admin.env.APP_DEBUG', 'DEBUG mode', 'admin.env', 'en'),
(1701, 'admin.env.APP_URL', 'URL app', 'admin.env', 'en'),
(1702, 'admin.env.APP_ENV', 'Environment mode', 'admin.env', 'en'),
(1703, 'admin.env.ADMIN_PREFIX', 'Admin prefix', 'admin.env', 'en'),
(1704, 'admin.env.ADMIN_NAME', 'Admin name', 'admin.env', 'en'),
(1705, 'admin.env.ADMIN_LOGO', 'Admin logo', 'admin.env', 'en'),
(1706, 'admin.env.ADMIN_LOGO_MINI', 'Admin logo mini', 'admin.env', 'en'),
(1707, 'admin.env.ADMIN_TITLE', 'Admin title', 'admin.env', 'en'),
(1708, 'admin.env.field', 'Field', 'admin.env', 'en'),
(1709, 'admin.env.value', 'Value', 'admin.env', 'en'),
(1710, 'admin.env.title', 'Config environment', 'admin.env', 'en'),
(1711, 'admin.env.SUFFIX_URL', 'Suffix URL', 'admin.env', 'en'),
(1712, 'admin.env.PREFIX_BRAND', 'Prefix url BRAND', 'admin.env', 'en'),
(1713, 'admin.env.PREFIX_SUPPLIER', 'Prefix url SUPPLIER', 'admin.env', 'en'),
(1714, 'admin.env.PREFIX_CATEGORY', 'Prefix url CATEGORY ', 'admin.env', 'en'),
(1715, 'admin.env.PREFIX_SUB_CATEGORY', 'Prefix url sub CATEGORY', 'admin.env', 'en'),
(1716, 'admin.env.PREFIX_PRODUCT', 'Prefix url PRODUCT', 'admin.env', 'en'),
(1717, 'admin.env.PREFIX_SEARCH', 'Prefix url SEARCH', 'admin.env', 'en'),
(1718, 'admin.env.PREFIX_CONTACT', 'Prefix url CONTACT', 'admin.env', 'en'),
(1719, 'admin.env.PREFIX_NEWS', 'Prefix url NEWS', 'admin.env', 'en'),
(1720, 'admin.env.PREFIX_MEMBER', 'Prefix url CUSTOMER', 'admin.env', 'en'),
(1721, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Prefix url CUSTOMER ORDER', 'admin.env', 'en'),
(1722, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Prefix url CHANGE PASSWOD', 'admin.env', 'en'),
(1723, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Prefix url CHANGE INFO', 'admin.env', 'en'),
(1724, 'admin.env.PREFIX_CMS_CATEGORY', 'Prefix url CMS CATEGORY', 'admin.env', 'en'),
(1725, 'admin.env.PREFIX_CMS_ENTRY', 'Prefix url CMS ENTRY', 'admin.env', 'en'),
(1726, 'admin.env.PREFIX_CART_WISHLIST', 'Prefix url WISHLIST', 'admin.env', 'en'),
(1727, 'admin.env.PREFIX_CART_COMPARE', 'Prefix url COMPARE', 'admin.env', 'en'),
(1728, 'admin.env.PREFIX_CART_DEFAULT', 'Prefix url CART', 'admin.env', 'en'),
(1729, 'admin.env.PREFIX_CART_CHECKOUT', 'Prefix url CHECKOUT', 'admin.env', 'en'),
(1730, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Prefix url CHECKOUT CONFIRM', 'admin.env', 'en'),
(1731, 'admin.env.PREFIX_ORDER_SUCCESS', 'Prefix url ORDER SUCCESS', 'admin.env', 'en'),
(1732, 'admin.env.PREFIX_SHOP', 'Link shop', 'admin.env', 'en'),
(1733, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Customize template admin', 'admin.env', 'en'),
(1734, 'admin.env.APP_DEBUG', 'Chế độ sửa lỗi', 'admin.env', 'vi'),
(1735, 'admin.env.APP_URL', 'URL website', 'admin.env', 'vi'),
(1736, 'admin.env.APP_ENV', 'Môi trường', 'admin.env', 'vi'),
(1737, 'admin.env.ADMIN_PREFIX', 'Tiền tố admin', 'admin.env', 'vi'),
(1738, 'admin.env.ADMIN_NAME', 'Tên trang admin', 'admin.env', 'vi'),
(1739, 'admin.env.ADMIN_LOGO', 'Logo admin', 'admin.env', 'vi'),
(1740, 'admin.env.ADMIN_LOGO_MINI', 'Logo nhỏ', 'admin.env', 'vi'),
(1741, 'admin.env.ADMIN_TITLE', 'Tiêu đề admin', 'admin.env', 'vi'),
(1742, 'admin.env.field', 'Trường dữ liệu', 'admin.env', 'vi'),
(1743, 'admin.env.value', 'Giá trị', 'admin.env', 'vi'),
(1744, 'admin.env.title', 'Cấu hình môi trường', 'admin.env', 'vi'),
(1745, 'admin.env.SUFFIX_URL', 'Hậu tố URL', 'admin.env', 'vi'),
(1746, 'admin.env.PREFIX_BRAND', 'Tiền tố trang BRAND', 'admin.env', 'vi'),
(1747, 'admin.env.PREFIX_SUPPLIER', 'Tiền tố trang SUPPLIER', 'admin.env', 'vi'),
(1748, 'admin.env.PREFIX_CATEGORY', 'Tiền tố trang CATEGORY ', 'admin.env', 'vi'),
(1749, 'admin.env.PREFIX_SUB_CATEGORY', 'Tiền tố trang CATEGORY nhỏ', 'admin.env', 'vi'),
(1750, 'admin.env.PREFIX_PRODUCT', 'Tiền tố trang PRODUCT', 'admin.env', 'vi'),
(1751, 'admin.env.PREFIX_SEARCH', 'Tiền tố trang SEARCH', 'admin.env', 'vi'),
(1752, 'admin.env.PREFIX_CONTACT', 'Tiền tố trang CONTACT', 'admin.env', 'vi'),
(1753, 'admin.env.PREFIX_NEWS', 'Tiền tố trang NEWS', 'admin.env', 'vi'),
(1754, 'admin.env.PREFIX_MEMBER', 'Tiền tố trang CUSTOMER', 'admin.env', 'vi'),
(1755, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Tiền tố trang CUSTOMER ORDER', 'admin.env', 'vi'),
(1756, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Tiền tố trang CHANGE PASSWOD', 'admin.env', 'vi'),
(1757, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Tiền tố trang CHANGE INFO', 'admin.env', 'vi'),
(1758, 'admin.env.PREFIX_CMS_CATEGORY', 'Tiền tố trang CMS CATEGORY', 'admin.env', 'vi'),
(1759, 'admin.env.PREFIX_CMS_ENTRY', 'Tiền tố trang CMS ENTRY', 'admin.env', 'vi'),
(1760, 'admin.env.PREFIX_CART_WISHLIST', 'Tiền tố trang WISHLIST', 'admin.env', 'vi'),
(1761, 'admin.env.PREFIX_CART_COMPARE', 'Tiền tố trang COMPARE', 'admin.env', 'vi'),
(1762, 'admin.env.PREFIX_CART_DEFAULT', 'Tiền tố trang CART', 'admin.env', 'vi'),
(1763, 'admin.env.PREFIX_CART_CHECKOUT', 'Tiền tố trang CHECKOUT', 'admin.env', 'vi'),
(1764, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Tiền tố trang CHECKOUT CONFIRM', 'admin.env', 'vi'),
(1765, 'admin.env.PREFIX_ORDER_SUCCESS', 'Tiền tố trang ORDER SUCCESS', 'admin.env', 'vi'),
(1766, 'admin.env.PREFIX_SHOP', 'Link Cửa hàng', 'admin.env', 'vi'),
(1767, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Tùy chỉnh giao diện Admin', 'admin.env', 'vi'),
(1768, 'admin.env.hidden_copyright_footer_admin', 'Ẩn thông tin bản quyền footer admin', 'admin.env', 'vi'),
(1769, 'admin.env.hidden_copyright_footer', 'Ẩn thông tin bản quyền footer website', 'admin.env', 'vi'),
(1770, 'admin.env.hidden_copyright_footer_admin', 'Hide admin footer copyright information', 'admin.env', 'en'),
(1771, 'admin.env.hidden_copyright_footer', 'Hide website footer copyright information', 'admin.env', 'en'),
(1772, 'admin.email_template.name', 'Tên', 'admin.email_template', 'vi'),
(1773, 'admin.email_template.list', 'Danh sách mẫu email', 'admin.email_template', 'vi'),
(1774, 'admin.email_template.list', 'Email template list', 'admin.email_template', 'en'),
(1775, 'admin.email_template.status', 'Trạng thái', 'admin.email_template', 'vi'),
(1776, 'admin.email_template.group', 'Nhóm', 'admin.email_template', 'vi'),
(1777, 'admin.email_template.html', 'HTML', 'admin.email_template', 'vi'),
(1778, 'admin.email_template.text', 'Nội dung', 'admin.email_template', 'vi'),
(1779, 'admin.email_template.name', 'Name', 'admin.email_template', 'en'),
(1780, 'admin.email_template.lits', 'Email template list', 'admin.email_template', 'en'),
(1781, 'admin.email_template.group', 'Group', 'admin.email_template', 'en'),
(1782, 'admin.email_template.text', 'Content', 'admin.email_template', 'en'),
(1783, 'admin.email_template.html', 'HTML', 'admin.email_template', 'en'),
(1784, 'admin.email_template.status', 'Status', 'admin.email_template', 'en'),
(1785, 'admin.email_template.add_new_title', 'Add template', 'admin.email_template', 'en'),
(1786, 'admin.email_template.add_new_des', 'Create a new template', 'admin.email_template', 'en'),
(1787, 'admin.email_template.variable_support', 'Variables support:', 'admin.email_template', 'en'),
(1788, 'admin.email_template.add_new_title', 'Tạo template', 'admin.email_template', 'vi'),
(1789, 'admin.email_template.add_new_des', 'Tạo mới template', 'admin.email_template', 'vi'),
(1790, 'admin.email_template.variable_support', 'Các biến hỗ trợ', 'admin.email_template', 'vi'),
(1791, 'admin.language.list', 'Language list', 'admin.language', 'en'),
(1792, 'admin.language.list', 'Danh sách ngôn ngữ', 'admin.language', 'vi'),
(1793, 'admin.language.select_lang', 'Select language', 'admin.language', 'en'),
(1794, 'admin.language.select_lang', 'Chọn ngôn ngữ', 'admin.language', 'vi'),
(1795, 'admin.language.select_position', 'Select position', 'admin.language', 'en'),
(1796, 'admin.language.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1797, 'admin.language.name', 'Name', 'admin.language', 'en'),
(1798, 'admin.language.icon', 'Icon', 'admin.language', 'en'),
(1799, 'admin.language.code', 'Code', 'admin.language', 'en'),
(1800, 'admin.language.sort', 'Sort', 'admin.language', 'en'),
(1801, 'admin.language.status', 'Status', 'admin.language', 'en'),
(1802, 'admin.language.layout_rtl', 'Layout RTL', 'admin.language', 'en'),
(1803, 'admin.language.add_new_title', 'Add language', 'admin.language', 'en'),
(1804, 'admin.language.add_new_des', 'Create a new language', 'admin.language', 'en'),
(1805, 'admin.language.name', 'Tên ngôn ngữ', 'admin.language', 'vi'),
(1806, 'admin.language.icon', 'Icon', 'admin.language', 'vi'),
(1807, 'admin.language.code', 'Code', 'admin.language', 'vi'),
(1808, 'admin.language.sort', 'Thứ tự', 'admin.language', 'vi'),
(1809, 'admin.language.status', 'Status', 'admin.language', 'vi'),
(1810, 'admin.language.layout_rtl', 'Giao diện RTL', 'admin.language', 'vi'),
(1811, 'admin.language.add_new_title', 'Tạo ngôn ngữ', 'admin.language', 'vi'),
(1812, 'admin.language.add_new_des', 'Tạo mới ngôn ngữ', 'admin.language', 'vi'),
(1813, 'admin.language_manager.title', 'Quản lý ngôn ngữ', 'admin.language', 'vi'),
(1814, 'admin.language_manager.title', 'Language manager', 'admin.language', 'en'),
(1815, 'admin.language_manager.add', 'Thêm giá trị mới', 'admin.language', 'vi'),
(1816, 'admin.language_manager.add', 'Add new record language', 'admin.language', 'en'),
(1817, 'admin.language_manager.position', 'Vị trí mới ngôn ngữ', 'admin.language', 'vi'),
(1818, 'admin.language_manager.position', 'Position language', 'admin.language', 'en'),
(1819, 'admin.language_manager.new_position', 'Hoặc thêm vị trí mới', 'admin.language', 'vi'),
(1820, 'admin.language_manager.new_position', 'Or add new position', 'admin.language', 'en'),
(1821, 'admin.language_manager.code', 'Mã code', 'admin.language', 'vi'),
(1822, 'admin.language_manager.code', 'Code', 'admin.language', 'en'),
(1823, 'admin.language_manager.text', 'Nội dung ngôn ngữ', 'admin.language', 'vi'),
(1824, 'admin.language_manager.text', 'Language content', 'admin.language', 'en'),
(1825, 'admin.language_manager.text_help', 'Mặc định, giá trị mới chỉ được thêm cho tiếng Anh. <br>Để cập nhật cho ngôn ngữ khác, tìm giá trị mới thêm và chỉnh sửa <a href=\":link\">Ở ĐÂY</a>', 'admin.language', 'vi'),
(1826, 'admin.language_manager.text_help', 'By default, the new value is only added for English. <br>To update for other languages, find the newly added value and edit <a href=\":link\">HERE</a>', 'admin.language', 'en'),
(1827, 'admin.language_manager.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1828, 'admin.language_manager.select_position', 'Select position of language', 'admin.language', 'en'),
(1829, 'admin.menu.list', 'Quản lý menu', 'admin.emnu', 'vi'),
(1830, 'admin.menu.create', 'Tạo mới menu', 'admin.emnu', 'vi'),
(1831, 'admin.menu.edit', 'Chỉnh sửa menu', 'admin.emnu', 'vi'),
(1832, 'admin.menu.error_have_child', 'Cần xóa các menu bên trong trước khi làm điều này!', 'admin.emnu', 'vi'),
(1833, 'admin.menu.parent', 'Cha', 'admin.emnu', 'vi'),
(1834, 'admin.menu.title', 'Tiêu đề', 'admin.emnu', 'vi'),
(1835, 'admin.menu.icon', 'Icon', 'admin.emnu', 'vi'),
(1836, 'admin.menu.uri', 'URI', 'admin.emnu', 'vi'),
(1837, 'admin.menu.roles', 'Vai trò', 'admin.emnu', 'vi'),
(1838, 'admin.menu.permissions', 'Quyền', 'admin.emnu', 'vi'),
(1839, 'admin.menu.create_success', 'Tạo mới thành công!', 'admin.emnu', 'vi'),
(1840, 'admin.menu.edit_success', 'Cập nhật thành công!', 'admin.emnu', 'vi'),
(1841, 'admin.menu.sort', 'Thứ tự', 'admin.emnu', 'vi'),
(1842, 'admin.menu.list', 'Menu manager', 'admin.emnu', 'en'),
(1843, 'admin.menu.create', 'Create new menu', 'admin.emnu', 'en'),
(1844, 'admin.menu.edit', 'Edit menu', 'admin.emnu', 'en'),
(1845, 'admin.menu.error_have_child', 'Need to delete the internal menus before doing this!', 'admin.emnu', 'en'),
(1846, 'admin.menu.parent', 'Parent', 'admin.emnu', 'en'),
(1847, 'admin.menu.title', 'Title', 'admin.emnu', 'en'),
(1848, 'admin.menu.icon', 'Icon', 'admin.emnu', 'en'),
(1849, 'admin.menu.uri', 'URI', 'admin.emnu', 'en'),
(1850, 'admin.menu.roles', 'Roles', 'admin.emnu', 'en'),
(1851, 'admin.menu.permissions', 'Permissions', 'admin.emnu', 'en'),
(1852, 'admin.menu.create_success', 'Create new item success!', 'admin.emnu', 'en'),
(1853, 'admin.menu.edit_success', 'Edit item success!', 'admin.emnu', 'en'),
(1854, 'admin.menu.sort', 'Sort', 'admin.emnu', 'en'),
(1855, 'email.admin.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1856, 'email.admin.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1857, 'email.admin.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1858, 'email.admin.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1859, 'email.admin.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1860, 'email.admin.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1861, 'email.admin.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1862, 'email.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1863, 'email.admin.other', 'Other', 'email.admin', 'en'),
(1864, 'email.admin.customer_verify', 'Send account verification email', 'email.admin', 'en'),
(1865, 'email.admin.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1866, 'email.admin.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1867, 'email.admin.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1868, 'email.admin.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1869, 'email.admin.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1870, 'email.admin.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1871, 'email.admin.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1872, 'email.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1873, 'email.admin.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1874, 'email.admin.other', 'Loại khác', 'email.admin', 'vi'),
(1875, 'email.admin.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1876, 'email.admin.config_mode', 'Config mode', 'email.admin', 'en'),
(1877, 'email.admin.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1878, 'email.admin.config_mode', 'Cấu hình mode', 'email.admin', 'vi'),
(1879, 'email.email_action.type', 'Action type', 'email.admin', 'en'),
(1880, 'email.email_action.mode', 'Action mode', 'email.admin', 'en'),
(1881, 'email.email_action.sort', 'Action sort', 'email.admin', 'en'),
(1882, 'email.email_action.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1883, 'email.email_action.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1884, 'email.email_action.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1885, 'email.email_action.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1886, 'email.email_action.customer_verify', 'Customer verification', 'email.admin', 'en'),
(1887, 'email.email_action.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1888, 'email.email_action.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1889, 'email.email_action.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1890, 'email.email_action.email_action_mode', 'ON/OFF send mail', 'email.admin', 'en'),
(1891, 'email.email_action.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1892, 'email.email_action.email_action_smtp_mode', 'SMTP mode', 'email.admin', 'en'),
(1893, 'email.email_action.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1894, 'email.email_action.type', 'Loại gửi mail', 'email.admin', 'vi'),
(1895, 'email.email_action.mode', 'Chế độ', 'email.admin', 'vi'),
(1896, 'email.email_action.sort', 'Sắp xếp', 'email.admin', 'vi'),
(1897, 'email.email_action.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1898, 'email.email_action.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1899, 'email.email_action.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1900, 'email.email_action.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1901, 'email.email_action.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1902, 'email.email_action.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1903, 'email.email_action.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1904, 'email.email_action.email_action_mode', 'Tắt/Mở chức năng gửi mail', 'email.admin', 'vi'),
(1905, 'email.email_action.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1906, 'email.email_action.email_action_smtp_mode', 'Sử dụng SMTP', 'email.admin', 'vi'),
(1907, 'email.email_action.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1908, 'email.email_action.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1909, 'email.email_action.smtp_mode', 'Sử dụng cấu hình SMTP', 'email.admin', 'vi'),
(1910, 'email.email_action.smtp_mode', 'Use SMTP config', 'email.admin', 'en'),
(1911, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Email sẽ không được gửi trực tiếp, mà thông qua hàng đợi. Bạn cần phải cài đặt \"artisan schedule:run\" trước,  chi tiết <a href=\"https://s-cart.org/docs/master/email.html\">TẠI ĐÂY</a>', 'email.admin', 'vi'),
(1912, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>', 'email.admin', 'en'),
(1913, 'email.config_smtp.smtp_host', 'SMTP host', 'email.admin', 'en'),
(1914, 'email.config_smtp.smtp_user', 'SMTP user', 'email.admin', 'en'),
(1915, 'email.config_smtp.smtp_password', 'SMTP password', 'email.admin', 'en'),
(1916, 'email.config_smtp.smtp_security', 'SMTP security', 'email.admin', 'en'),
(1917, 'email.config_smtp.smtp_port', 'SMTP port', 'email.admin', 'en'),
(1918, 'email.config_smtp.smtp_name', 'Email name', 'email.admin', 'en'),
(1919, 'email.config_smtp.smtp_from', 'Send mail from', 'email.admin', 'en'),
(1920, 'email.config_smtp.smtp_host', 'Server SMTP', 'email.admin', 'vi'),
(1921, 'email.config_smtp.smtp_user', 'Tài khoản SMTP', 'email.admin', 'vi'),
(1922, 'email.config_smtp.smtp_password', 'Mật khẩu SMTP', 'email.admin', 'vi'),
(1923, 'email.config_smtp.smtp_security', 'Bảo mật SMTP', 'email.admin', 'vi'),
(1924, 'email.config_smtp.smtp_port', 'Cổng kết nối SMTP', 'email.admin', 'vi'),
(1925, 'email.config_smtp.smtp_name', 'Tên gửi mail', 'email.admin', 'vi'),
(1926, 'email.config_smtp.smtp_from', 'Địa chỉ email gửi', 'email.admin', 'vi'),
(1927, 'email.welcome', 'Chào mừng!', 'email', 'vi'),
(1928, 'email.welcome', 'Welcome!', 'email', 'en'),
(1929, 'email.msg_goodbye', 'Trân trọng!', 'email', 'vi'),
(1930, 'email.msg_goodbye', 'Best regards!', 'email', 'en'),
(1931, 'email.forgot_password.title', 'Hello!', 'email.forgot_password', 'en'),
(1932, 'email.forgot_password.reset_button', 'Reset password', 'email.forgot_password', 'en'),
(1933, 'email.forgot_password.reason_sendmail', 'You are receiving this email because we received a password reset request for your account.', 'email.forgot_password', 'en'),
(1934, 'email.forgot_password.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.', 'email.forgot_password', 'en'),
(1935, 'email.forgot_password.note_access_link', 'If you’re having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url', 'email.forgot_password', 'en'),
(1936, 'email.forgot_password.title', 'Xin chào!', 'email.forgot_password', 'vi'),
(1937, 'email.forgot_password.reset_button', 'Tạo lại mật khẩu', 'email.forgot_password', 'vi'),
(1938, 'email.forgot_password.reason_sendmail', 'Bạn đang nhận email này vì chúng tôi nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn.', 'email.forgot_password', 'vi'),
(1939, 'email.forgot_password.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn không yêu cầu một thiết lập lại mật khẩu, bạn không cần làm gì cả.<br>', 'email.forgot_password', 'vi'),
(1940, 'email.forgot_password.note_access_link', 'Nếu bạn gặp sự cố cách nhấn vào nút \":reset_button\", sao chép và dán URL dưới đây vào trình duyệt web của bạn :url', 'email.forgot_password', 'vi'),
(1941, 'email.verification_content.title', 'Hello!', 'email.verification_content', 'en'),
(1942, 'email.verification_content.button', 'Verify Email Address', 'email.verification_content', 'en'),
(1943, 'email.verification_content.reason_sendmail', 'Please click the button below to verify your email address.', 'email.verification_content', 'en'),
(1944, 'email.verification_content.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.', 'email.verification_content', 'en'),
(1945, 'email.verification_content.note_access_link', 'If you’re having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url', 'email.verification_content', 'en'),
(1946, 'email.verification_content.title', 'Xin chào!', 'email.verification_content', 'vi'),
(1947, 'email.verification_content.button', 'Xác nhận địa chỉ email', 'email.verification_content', 'vi'),
(1948, 'email.verification_content.reason_sendmail', 'Vui lòng nhấp vào nút bên dưới để xác minh địa chỉ email của bạn.', 'email.verification_content', 'vi'),
(1949, 'email.verification_content.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn chưa tạo tài khoản, bạn không cần thực hiện thêm hành động nào.', 'email.verification_content', 'vi'),
(1950, 'email.verification_content.note_access_link', 'Nếu bạn gặp sự cố khi nhấp vào button \":button\", sao chép và dán URL bên dưới vào trình duyệt web của bạn :url', 'email.verification_content', 'vi'),
(1951, 'email.order.title_1', 'Hi! Website :website has new order!', 'email.order', 'en'),
(1952, 'email.order.order_id', 'Order ID', 'email.order', 'en'),
(1953, 'email.order.toname', 'Customer name', 'email.order', 'en'),
(1954, 'email.order.address', 'Address', 'email.order', 'en'),
(1955, 'email.order.phone', 'Phone', 'email.order', 'en'),
(1956, 'email.order.note', 'Note', 'email.order', 'en'),
(1957, 'email.order.order_detail', 'Order detail', 'email.order', 'en'),
(1958, 'email.order.sort', 'No.', 'email.order', 'en'),
(1959, 'email.order.sku', 'SKU', 'email.order', 'en'),
(1960, 'email.order.price', 'Price', 'email.order', 'en'),
(1961, 'email.order.name', 'Name', 'email.order', 'en'),
(1962, 'email.order.qty', 'Qty', 'email.order', 'en'),
(1963, 'email.order.total', 'Total', 'email.order', 'en'),
(1964, 'email.order.sub_total', 'Sub total', 'email.order', 'en'),
(1965, 'email.order.shipping_fee', 'Shipping fee', 'email.order', 'en'),
(1966, 'email.order.discount', 'Discount', 'email.order', 'en'),
(1967, 'email.order.order_total', 'Order total', 'email.order', 'en'),
(1968, 'email.order.title_1', 'Xin chào! :website trang web có đơn hàng mới!', 'email.order', 'vi'),
(1969, 'email.order.order_id', 'Mã đơn hàng', 'email.order', 'vi'),
(1970, 'email.order.toname', 'Tên khách hàng', 'email.order', 'vi'),
(1971, 'email.order.address', 'Địa chỉ', 'email.order', 'vi'),
(1972, 'email.order.phone', 'Điện thoại', 'email.order', 'vi'),
(1973, 'email.order.note', 'Ghi chú', 'email.order', 'vi'),
(1974, 'email.order.order_detail', 'Chi tiết đặt hàng', 'email.order', 'vi'),
(1975, 'email.order.sort', 'Thứ tự', 'email.order', 'vi'),
(1976, 'email.order.sku', 'SKU', 'email.order', 'vi'),
(1977, 'email.order.price', 'Giá', 'email.order', 'vi'),
(1978, 'email.order.name', 'Tên', 'email.order', 'vi'),
(1979, 'email.order.qty', 'Số lượng', 'email.order', 'vi'),
(1980, 'email.order.total', 'Tổng', 'email.order', 'vi'),
(1981, 'email.order.sub_total', 'Tiền hàng', 'email.order', 'vi'),
(1982, 'email.order.shipping_fee', 'Phí vận chuyển', 'email.order', 'vi'),
(1983, 'email.order.discount', 'Giảm giá', 'email.order', 'vi'),
(1984, 'email.order.order_total', 'Tổng số đơn hàng', 'email.order', 'vi'),
(1985, 'email.order.email_subject_customer', 'Có đơn hàng mới', 'email.order', 'vi'),
(1986, 'email.order.email_subject_customer', 'Have a new order', 'email.order', 'en'),
(1987, 'admin.store_block.list', 'Danh sách block', 'admin.store_block', 'vi'),
(1988, 'admin.store_block.list', 'Block list', 'admin.store_block', 'en'),
(1989, 'admin.store_block.name', 'Tên', 'admin.store_block', 'vi'),
(1990, 'admin.store_block.position', 'Vị trí', 'admin.store_block', 'vi'),
(1991, 'admin.store_block.page', 'Trang', 'admin.store_block', 'vi'),
(1992, 'admin.store_block.type', 'Loại', 'admin.store_block', 'vi'),
(1993, 'admin.store_block.text', 'Nội dung', 'admin.store_block', 'vi'),
(1994, 'admin.store_block.status', 'Trạng thái', 'admin.store_block', 'vi'),
(1995, 'admin.store_block.name', 'Name', 'admin.store_block', 'en'),
(1996, 'admin.store_block.position', 'Position', 'admin.store_block', 'en'),
(1997, 'admin.store_block.page', 'Page', 'admin.store_block', 'en'),
(1998, 'admin.store_block.type', 'Type', 'admin.store_block', 'en'),
(1999, 'admin.store_block.text', 'Text', 'admin.store_block', 'en'),
(2000, 'admin.store_block.status', 'Status', 'admin.store_block', 'en'),
(2001, 'admin.store_block.sort', 'Sort', 'admin.store_block', 'en'),
(2002, 'admin.store_block.sort', 'Sắp xếp', 'admin.store_block', 'vi'),
(2003, 'admin.store_block.add_new_title', 'Add layout', 'admin.store_block', 'en'),
(2004, 'admin.store_block.add_new_des', 'Create a new layout', 'admin.store_block', 'en'),
(2005, 'admin.store_block.select_position', 'Select position', 'admin.store_block', 'en'),
(2006, 'admin.store_block.select_page', 'Select page', 'admin.store_block', 'en'),
(2007, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'en'),
(2008, 'admin.store_block.helper_view', 'View files are in \"resources/views/templates/:template/block\" directory.', 'admin.store_block', 'en'),
(2009, 'admin.store_block.helper_module', 'File in \"app/Plugins/Block\". Module must have render() method available to display content.', 'admin.store_block', 'en'),
(2010, 'admin.store_block.add_new_title', 'Tạo bố cục', 'admin.store_block', 'vi'),
(2011, 'admin.store_block.add_new_des', 'Tạo mới bố cục', 'admin.store_block', 'vi'),
(2012, 'admin.store_block.select_position', 'Chọn vị trí', 'admin.store_block', 'vi'),
(2013, 'admin.store_block.select_page', 'Chọn trang', 'admin.store_block', 'vi'),
(2014, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'vi'),
(2015, 'admin.store_block.helper_view', 'File trong thư mục \"resources/views/templates/:template/block\".', 'admin.store_block', 'vi'),
(2016, 'admin.store_block.helper_module', 'File trong \"app/Plugins/Block\". Module phải có hàm render().', 'admin.store_block', 'vi'),
(2017, 'admin.log.list', 'Danh sách nhật ký', 'admin.log', 'vi'),
(2018, 'admin.log.list', 'Logs list', 'admin.log', 'en'),
(2019, 'admin.log.user', 'Người dùng', 'admin.log', 'vi'),
(2020, 'admin.log.user', 'User', 'admin.log', 'en'),
(2021, 'admin.log.method', 'Phương thức', 'admin.log', 'vi'),
(2022, 'admin.log.path', 'Path', 'admin.log', 'vi'),
(2023, 'admin.log.ip', 'IP', 'admin.log', 'vi'),
(2024, 'admin.log.user_agent', 'User agent', 'admin.log', 'vi'),
(2025, 'admin.log.input', 'Input', 'admin.log', 'vi'),
(2026, 'admin.log.created_at', 'Thời gian', 'admin.log', 'vi'),
(2027, 'admin.log.method', 'Method', 'admin.log', 'en'),
(2028, 'admin.log.path', 'Path', 'admin.log', 'en'),
(2029, 'admin.log.ip', 'IP', 'admin.log', 'en'),
(2030, 'admin.log.user_agent', 'User agent', 'admin.log', 'en'),
(2031, 'admin.log.input', 'Input', 'admin.log', 'en'),
(2032, 'admin.log.created_at', 'Time', 'admin.log', 'en'),
(2033, 'admin.page.title', 'Tiêu đề', 'admin.page', 'vi'),
(2034, 'admin.page.image', 'Hình ảnh', 'admin.page', 'vi'),
(2035, 'admin.page.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'vi'),
(2036, 'admin.page.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'vi'),
(2037, 'admin.page.key_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'vi'),
(2038, 'admin.page.status', 'Trạng thái', 'admin.page', 'vi'),
(2039, 'admin.page.keyword', 'Từ khóa', 'admin.page', 'vi'),
(2040, 'admin.page.description', 'Mô tả', 'admin.page', 'vi'),
(2041, 'admin.page.content', 'Nội dung', 'admin.page', 'vi'),
(2042, 'admin.page.title', 'Title', 'admin.page', 'en'),
(2043, 'admin.page.image', 'Image', 'admin.page', 'en'),
(2044, 'admin.page.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'en'),
(2045, 'admin.page.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'en'),
(2046, 'admin.page.status', 'Status', 'admin.page', 'en'),
(2047, 'admin.page.keyword', 'Keyword', 'admin.page', 'en'),
(2048, 'admin.page.description', 'Description', 'admin.page', 'en'),
(2049, 'admin.page.content', 'Content', 'admin.page', 'en'),
(2050, 'admin.page.key_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'en'),
(2051, 'admin.page.add_new', 'Add new', 'admin.page', 'en'),
(2052, 'admin.page.add_new_title', 'Add page', 'admin.page', 'en'),
(2053, 'admin.page.add_new_des', 'Create a new page', 'admin.page', 'en'),
(2054, 'admin.page.add_new_title', 'Tạo trang', 'admin.page', 'vi'),
(2055, 'admin.page.add_new_des', 'Tạo mới trang', 'admin.page', 'vi'),
(2056, 'admin.page.choose_image', 'Chọn ảnh', 'admin.page', 'vi'),
(2057, 'admin.page.choose_image', 'Chose image', 'admin.page', 'en'),
(2058, 'admin.page.list', 'Danh sách trang', 'admin.page', 'vi'),
(2059, 'admin.page.list', 'Page list', 'admin.page', 'en'),
(2060, 'admin.page.search_place', 'Tìm tên', 'admin.page', 'vi'),
(2061, 'admin.page.search_place', 'Search name', 'admin.page', 'en'),
(2062, 'admin.news.add_new_title', 'Add new blog', 'admin.news', 'en'),
(2063, 'admin.news.add_new_des', 'Create a new blog', 'admin.news', 'en'),
(2064, 'admin.news.title', 'Title', 'admin.news', 'en'),
(2065, 'admin.news.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'en'),
(2066, 'admin.news.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'en'),
(2067, 'admin.news.keyword', 'Keyword', 'admin.news', 'en'),
(2068, 'admin.news.description', 'Description', 'admin.news', 'en'),
(2069, 'admin.news.content', 'Content', 'admin.news', 'en'),
(2070, 'admin.news.image', 'Image', 'admin.news', 'en'),
(2071, 'admin.news.status', 'Status', 'admin.news', 'en'),
(2072, 'admin.news.sort', 'Sort', 'admin.news', 'en'),
(2073, 'admin.news.list', 'Blog/News manager', 'admin.news', 'en'),
(2074, 'admin.news.edit', 'Edit', 'admin.news', 'en'),
(2075, 'admin.news.search_place', 'Search title', 'admin.news', 'en'),
(2076, 'admin.news.title', 'Tiêu đề', 'admin.news', 'vi'),
(2077, 'admin.news.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'vi'),
(2078, 'admin.news.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'vi'),
(2079, 'admin.news.keyword', 'Từ khóa', 'admin.news', 'vi'),
(2080, 'admin.news.description', 'Mô tả', 'admin.news', 'vi'),
(2081, 'admin.news.content', 'Nội dung', 'admin.news', 'vi'),
(2082, 'admin.news.image', 'Hình ảnh', 'admin.news', 'vi'),
(2083, 'admin.news.parent', 'Danh mục cha', 'admin.news', 'vi'),
(2084, 'admin.news.top', 'Hiển thị ưu tiên', 'admin.news', 'vi'),
(2085, 'admin.news.status', 'Trạng thái', 'admin.news', 'vi'),
(2086, 'admin.news.sort', 'Sắp xếp', 'admin.news', 'vi'),
(2087, 'admin.news.list', 'Danh sách', 'admin.news', 'vi'),
(2088, 'admin.news.add_new_title', 'Tạo Blog/News', 'admin.news', 'vi'),
(2089, 'admin.news.add_new_des', 'Tạo mới một Blog/News', 'admin.news', 'vi'),
(2090, 'admin.news.search_place', 'Tìm tiêu đề', 'admin.news', 'vi'),
(2091, 'admin.length.name', 'Tên', 'admin.length', 'vi'),
(2092, 'admin.length.name', 'Name', 'admin.length', 'en'),
(2093, 'admin.length.description', 'Mô tả', 'admin.length', 'vi'),
(2094, 'admin.length.description', 'Description', 'admin.length', 'en'),
(2095, 'admin.length.list', 'Danh sách kích thước', 'admin.length', 'vi'),
(2096, 'admin.length.list', 'Length list', 'admin.length', 'en'),
(2097, 'admin.length.add_new_title', 'Thêm kích thước', 'admin.length', 'vi'),
(2098, 'admin.length.add_new_title', 'Add Length', 'admin.length', 'en'),
(2099, 'admin.weight.name', 'Tên', 'admin.weight', 'vi'),
(2100, 'admin.weight.name', 'Name', 'admin.weight', 'en'),
(2101, 'admin.weight.description', 'Mô tả', 'admin.weight', 'vi'),
(2102, 'admin.weight.description', 'Description', 'admin.weight', 'en'),
(2103, 'admin.weight.list', 'Danh sách khối lượng', 'admin.weight', 'vi'),
(2104, 'admin.weight.list', 'Weight list', 'admin.weight', 'en'),
(2105, 'admin.weight.add_new_title', 'Thêm khối lượng', 'admin.weight', 'vi'),
(2106, 'admin.weight.add_new_title', 'Add weight', 'admin.weight', 'en');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(2107, 'admin.product_property.name', 'Tên', 'admin.product_property', 'vi'),
(2108, 'admin.product_property.name', 'Name', 'admin.product_property', 'en'),
(2109, 'admin.product_property.code', 'Mã', 'admin.product_property', 'vi'),
(2110, 'admin.product_property.code', 'Code', 'admin.product_property', 'en'),
(2111, 'admin.product_property.list', 'Danh sách thuộc tính', 'admin.product_property', 'vi'),
(2112, 'admin.product_property.list', 'Product property list', 'admin.product_property', 'en'),
(2113, 'admin.product_property.status', 'Trạng thái', 'admin.product_property', 'vi'),
(2114, 'admin.product_property.status', 'Status', 'admin.product_property', 'en'),
(2115, 'admin.product_property.add_new_title', 'Thêm thuộc tính', 'admin.product_property', 'vi'),
(2116, 'admin.product_property.add_new_title', 'Add product property', 'admin.product_property', 'en'),
(2117, 'admin.order_status.name', 'Tên', 'admin.order_status', 'vi'),
(2118, 'admin.order_status.name', 'Name', 'admin.order_status', 'en'),
(2119, 'admin.order_status.list', 'Danh sách trạng thái', 'admin.order_status', 'vi'),
(2120, 'admin.order_status.list', 'Order status list', 'admin.order_status', 'en'),
(2121, 'admin.order_status.status', 'Trạng thái', 'admin.order_status', 'vi'),
(2122, 'admin.order_status.status', 'Status', 'admin.order_status', 'en'),
(2123, 'admin.order_status.add_new_title', 'Thêm trạng thái', 'admin.order_status', 'vi'),
(2124, 'admin.order_status.add_new_title', 'Add status', 'admin.order_status', 'en'),
(2125, 'admin.payment_status.name', 'Tên', 'admin.payment_status', 'vi'),
(2126, 'admin.payment_status.name', 'Name', 'admin.payment_status', 'en'),
(2127, 'admin.payment_status.list', 'Danh sách trạng thái', 'admin.payment_status', 'vi'),
(2128, 'admin.payment_status.list', 'Payment status list', 'admin.payment_status', 'en'),
(2129, 'admin.payment_status.status', 'Trạng thái', 'admin.payment_status', 'vi'),
(2130, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'en'),
(2131, 'admin.payment_status.add_new_title', 'Thêm trạng thái', 'admin.payment_status', 'vi'),
(2132, 'admin.payment_status.add_new_title', 'Add status', 'admin.payment_status', 'en'),
(2133, 'admin.shipping_status.name', 'Tên', 'admin.shipping_status', 'vi'),
(2134, 'admin.shipping_status.name', 'Name', 'admin.shipping_status', 'en'),
(2135, 'admin.shipping_status.list', 'Danh sách trạng thái', 'admin.shipping_status', 'vi'),
(2136, 'admin.shipping_status.list', 'Shipping status list', 'admin.shipping_status', 'en'),
(2137, 'admin.shipping_status.status', 'Trạng thái', 'admin.shipping_status', 'vi'),
(2138, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'en'),
(2139, 'admin.shipping_status.add_new_title', 'Thêm trạng thái', 'admin.shipping_status', 'vi'),
(2140, 'admin.shipping_status.add_new_title', 'Add status', 'admin.shipping_status', 'en'),
(2141, 'admin.tax.name', 'Tên', 'admin.tax', 'vi'),
(2142, 'admin.tax.name', 'Name', 'admin.tax', 'en'),
(2143, 'admin.tax.value', 'Giá trị', 'admin.tax', 'vi'),
(2144, 'admin.tax.value', 'Value', 'admin.tax', 'en'),
(2145, 'admin.tax.non_tax', 'Không thuế', 'admin.tax', 'vi'),
(2146, 'admin.tax.non_tax', 'None tax', 'admin.tax', 'en'),
(2147, 'admin.tax.auto', 'Tự động', 'admin.tax', 'vi'),
(2148, 'admin.tax.auto', 'Auto', 'admin.tax', 'en'),
(2149, 'admin.tax.list', 'Danh sách thuế', 'admin.tax', 'vi'),
(2150, 'admin.tax.list', 'Tax list', 'admin.tax', 'en'),
(2151, 'admin.tax.status', 'Trạng thái', 'admin.tax', 'vi'),
(2152, 'admin.tax.status', 'Status', 'admin.tax', 'en'),
(2153, 'admin.tax.add_new_title', 'Thêm thuế', 'admin.tax', 'vi'),
(2154, 'admin.tax.add_new_title', 'Add tax', 'admin.tax', 'en'),
(2155, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'en'),
(2156, 'admin.captcha.captcha_mode', 'Use Captcha', 'admin.captcha', 'en'),
(2157, 'admin.captcha.captcha_method', 'Captcha method', 'admin.captcha', 'en'),
(2158, 'admin.captcha.captcha_method_help', 'Select method Captcha', 'admin.captcha', 'en'),
(2159, 'admin.captcha.captcha_page', 'Captcha', 'admin.captcha', 'en'),
(2160, 'admin.captcha.captcha_page_help', 'Select page use Captcha', 'admin.captcha', 'en'),
(2161, 'admin.captcha.captcha_page_contact', 'Contact', 'admin.captcha', 'en'),
(2162, 'admin.captcha.captcha_page_register', 'Register', 'admin.captcha', 'en'),
(2163, 'admin.captcha.captcha_page_forgot_password', 'Forgot pasword', 'admin.captcha', 'en'),
(2164, 'admin.captcha.captcha_page_checkout', 'Checkout', 'admin.captcha', 'en'),
(2165, 'admin.captcha.captcha_page_review', 'Review product', 'admin.captcha', 'en'),
(2166, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'vi'),
(2167, 'admin.captcha.captcha_mode', 'Sử dụng Captcha', 'admin.captcha', 'vi'),
(2168, 'admin.captcha.captcha_method', 'Loại Captcha', 'admin.captcha', 'vi'),
(2169, 'admin.captcha.captcha_method_help', 'Chọn loại Captcha', 'admin.captcha', 'vi'),
(2170, 'admin.captcha.captcha_page', 'Trang sử dụng captcha', 'admin.captcha', 'vi'),
(2171, 'admin.captcha.captcha_page_help', 'Chọn trang sử dụng Captcha', 'admin.captcha', 'vi'),
(2172, 'admin.captcha.captcha_page_contact', 'Liên hệ', 'admin.captcha', 'vi'),
(2173, 'admin.captcha.captcha_page_register', 'Đăng ký', 'admin.captcha', 'vi'),
(2174, 'admin.captcha.captcha_page_forgot_password', 'Quên mật khẩu', 'admin.captcha', 'vi'),
(2175, 'admin.captcha.captcha_page_checkout', 'Đặt hàng', 'admin.captcha', 'vi'),
(2176, 'admin.captcha.captcha_page_review', 'Đánh giá sản phẩm', 'admin.captcha', 'vi'),
(2177, 'admin.link.list', 'Danh sách liên kết', 'admin.link', 'vi'),
(2178, 'admin.link.list', 'Link list', 'admin.link', 'en'),
(2179, 'admin.link.name', 'Tên', 'admin.link', 'vi'),
(2180, 'admin.link.url', 'Đường dẫn', 'admin.link', 'vi'),
(2181, 'admin.link.target', 'Target', 'admin.link', 'vi'),
(2182, 'admin.link.group', 'Nhóm', 'admin.link', 'vi'),
(2183, 'admin.link.sort', 'Thứ tự', 'admin.link', 'vi'),
(2184, 'admin.link.status', 'Trạng thái', 'admin.link', 'vi'),
(2185, 'admin.link.add_new', 'Thêm mới', 'admin.link', 'vi'),
(2186, 'admin.link.add_new_title', 'Tạo url', 'admin.link', 'vi'),
(2187, 'admin.link.add_new_des', 'Tạo mới url', 'admin.link', 'vi'),
(2188, 'admin.link.select_group', 'Chọn nhóm', 'admin.link', 'vi'),
(2189, 'admin.link.select_target', 'Chọn target', 'admin.link', 'vi'),
(2190, 'admin.link.helper_url', 'Ví dụ: url, path, hoặc route::name', 'admin.link', 'vi'),
(2191, 'admin.link.name', 'Name', 'admin.link', 'en'),
(2192, 'admin.link.url', 'Url', 'admin.link', 'en'),
(2193, 'admin.link.target', 'Target', 'admin.link', 'en'),
(2194, 'admin.link.group', 'Group', 'admin.link', 'en'),
(2195, 'admin.link.status', 'Status', 'admin.link', 'en'),
(2196, 'admin.link.sort', 'Sort', 'admin.link', 'en'),
(2197, 'admin.link.add_new', 'Add new', 'admin.link', 'en'),
(2198, 'admin.link.add_new_title', 'Add layout url', 'admin.link', 'en'),
(2199, 'admin.link.add_new_des', 'Create a new layout url', 'admin.link', 'en'),
(2200, 'admin.link.select_group', 'Select group', 'admin.link', 'en'),
(2201, 'admin.link.select_target', 'Select target', 'admin.link', 'en'),
(2202, 'admin.link.helper_url', 'Ex: url, path, or route::name', 'admin.link', 'en'),
(2203, 'admin.link_position.menu', 'Menu', 'admin.link', 'vi'),
(2204, 'admin.link_position.menu_left', 'Menu trái', 'admin.link', 'vi'),
(2205, 'admin.link_position.menu_right', 'Menu phải', 'admin.link', 'vi'),
(2206, 'admin.link_position.footer', 'Footer', 'admin.link', 'vi'),
(2207, 'admin.link_position.footer_left', 'Footer trái', 'admin.link', 'vi'),
(2208, 'admin.link_position.footer_right', 'Footer phải', 'admin.link', 'vi'),
(2209, 'admin.link_position.sidebar', 'Thanh bên', 'admin.link', 'vi'),
(2210, 'admin.link_position.menu', 'Menu', 'admin.link', 'en'),
(2211, 'admin.link_position.menu_left', 'Menu left', 'admin.link', 'en'),
(2212, 'admin.link_position.menu_right', 'Menu right', 'admin.link', 'en'),
(2213, 'admin.link_position.footer', 'Footer', 'admin.link', 'en'),
(2214, 'admin.link_position.footer_left', 'Footer left', 'admin.link', 'en'),
(2215, 'admin.link_position.footer_right', 'Footer right', 'admin.link', 'en'),
(2216, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'en'),
(2217, 'admin.supplier.name', 'Name', 'admin.supplier', 'en'),
(2218, 'admin.supplier.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'en'),
(2219, 'admin.supplier.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'en'),
(2220, 'admin.supplier.email', 'Email', 'admin.supplier', 'en'),
(2221, 'admin.supplier.phone', 'Phone', 'admin.supplier', 'en'),
(2222, 'admin.supplier.address', 'Address', 'admin.supplier', 'en'),
(2223, 'admin.supplier.image', 'Image', 'admin.supplier', 'en'),
(2224, 'admin.supplier.url', 'Website', 'admin.supplier', 'en'),
(2225, 'admin.supplier.sort', 'Sort', 'admin.supplier', 'en'),
(2226, 'admin.supplier.status', 'Status', 'admin.supplier', 'en'),
(2227, 'admin.supplier.add_new', 'Add new', 'admin.supplier', 'en'),
(2228, 'admin.supplier.add_new_title', 'Add supplier', 'admin.supplier', 'en'),
(2229, 'admin.supplier.add_new_des', 'Create a new supplier', 'admin.supplier', 'en'),
(2230, 'admin.supplier.list', 'Suppliers list', 'admin.supplier', 'en'),
(2231, 'admin.supplier.name', 'Tên nhà cung cấp', 'admin.supplier', 'vi'),
(2232, 'admin.supplier.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'vi'),
(2233, 'admin.supplier.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'vi'),
(2234, 'admin.supplier.email', 'Email', 'admin.supplier', 'vi'),
(2235, 'admin.supplier.phone', 'Số điện thoại', 'admin.supplier', 'vi'),
(2236, 'admin.supplier.address', 'Địa chỉ', 'admin.supplier', 'vi'),
(2237, 'admin.supplier.image', 'Hình ảnh', 'admin.supplier', 'vi'),
(2238, 'admin.supplier.url', 'Website', 'admin.supplier', 'vi'),
(2239, 'admin.supplier.sort', 'Sắp xếp', 'admin.supplier', 'vi'),
(2240, 'admin.supplier.status', 'Status', 'admin.supplier', 'vi'),
(2241, 'admin.supplier.add_new_title', 'Tạo nhà cung cấp', 'admin.supplier', 'vi'),
(2242, 'admin.supplier.add_new_des', 'Tạo mới nhà cung cấp', 'admin.supplier', 'vi'),
(2243, 'admin.supplier.list', 'Danh sách nhà cung cấp', 'admin.supplier', 'vi'),
(2244, 'admin.supplier.search_place', 'Tìm tên hoặc email', 'admin.supplier', 'vi'),
(2245, 'admin.supplier.search_place', 'Search name or email', 'admin.supplier', 'en'),
(2246, 'admin.role.name', 'Name', 'admin.role', 'en'),
(2247, 'admin.role.slug', 'Slug', 'admin.role', 'en'),
(2248, 'admin.role.permission', 'Permission', 'admin.role', 'en'),
(2249, 'admin.role.http_path', 'HTTP path', 'admin.role', 'en'),
(2250, 'admin.role.http_method', 'HTTP method', 'admin.role', 'en'),
(2251, 'admin.role.created_at', 'Created at', 'admin.role', 'en'),
(2252, 'admin.role.updated_at', 'Updated at', 'admin.role', 'en'),
(2253, 'admin.role.password_confirmation', 'Confirmation', 'admin.role', 'en'),
(2254, 'admin.role.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'en'),
(2255, 'admin.role.list', 'Role manager', 'admin.role', 'en'),
(2256, 'admin.role.edit', 'Edit', 'admin.role', 'en'),
(2257, 'admin.role.add_new', 'Add new', 'admin.role', 'en'),
(2258, 'admin.role.add_new_title', 'Add new role', 'admin.role', 'en'),
(2259, 'admin.role.add_new_des', 'Create a new role', 'admin.role', 'en'),
(2260, 'admin.role.select_http_method', 'Select method', 'admin.role', 'en'),
(2261, 'admin.role.select_permission', 'Select permission', 'admin.role', 'en'),
(2262, 'admin.role.select_user', 'Select user', 'admin.role', 'en'),
(2263, 'admin.role.slug', 'Slug', 'admin.role', 'vi'),
(2264, 'admin.role.name', 'Tên', 'admin.role', 'vi'),
(2265, 'admin.role.roles', 'vai trò', 'admin.role', 'vi'),
(2266, 'admin.role.permission', 'Quyền hạn', 'admin.role', 'vi'),
(2267, 'admin.role.http_path', 'HTTP path', 'admin.role', 'vi'),
(2268, 'admin.role.http_method', 'HTTP method', 'admin.role', 'vi'),
(2269, 'admin.role.created_at', 'Tạo lúc', 'admin.role', 'vi'),
(2270, 'admin.role.updated_at', 'Cập nhật', 'admin.role', 'vi'),
(2271, 'admin.role.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'vi'),
(2272, 'admin.role.add_new', 'Thêm mới', 'admin.role', 'vi'),
(2273, 'admin.role.add_new_title', 'Tạo quyền', 'admin.role', 'vi'),
(2274, 'admin.role.add_new_des', 'Tạo mới một quyền', 'admin.role', 'vi'),
(2275, 'admin.role.select_permission', 'Chọn quyền hạn', 'admin.role', 'vi'),
(2276, 'admin.role.select_user', 'Chọn người dùng', 'admin.role', 'vi'),
(2277, 'admin.template.import', 'Import Template', 'admin.template', 'en'),
(2278, 'admin.template.file_format', 'File format', 'admin.template', 'en'),
(2279, 'admin.template.choose_file', 'Choose File', 'admin.template', 'en'),
(2280, 'admin.template.import_submit', 'Import', 'admin.template', 'en'),
(2281, 'admin.template.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.template', 'en'),
(2282, 'admin.template.error_unzip', 'Error while unzip', 'admin.template', 'en'),
(2283, 'admin.template.error_upload', 'Error while uploading file', 'admin.template', 'en'),
(2284, 'admin.template.error_check_config', 'Cannot find config file', 'admin.template', 'en'),
(2285, 'admin.template.error_config_format', 'The config file is not in the right format', 'admin.template', 'en'),
(2286, 'admin.template.import_success', 'Import success!', 'admin.template', 'en'),
(2287, 'admin.template.error_exist', 'Template exist!', 'admin.template', 'en'),
(2288, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>', 'admin.template', 'en'),
(2289, 'admin.template.template_more', '<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.template', 'en'),
(2290, 'admin.template.manager', 'Template management', 'admin.template', 'en'),
(2291, 'admin.template.title', 'Template list', 'admin.template', 'en'),
(2292, 'admin.template.name', 'Template name', 'admin.template', 'en'),
(2293, 'admin.template.auth', 'Author', 'admin.template', 'en'),
(2294, 'admin.template.email', 'Email', 'admin.template', 'en'),
(2295, 'admin.template.website', 'Website', 'admin.template', 'en'),
(2296, 'admin.template.activated', 'Activated', 'admin.template', 'en'),
(2297, 'admin.template.inactive', 'Inactive', 'admin.template', 'en'),
(2298, 'admin.template.download', 'Download', 'admin.template', 'en'),
(2299, 'admin.template.remove', 'Remove', 'admin.template', 'en'),
(2300, 'admin.template.status', 'Status', 'admin.template', 'en'),
(2301, 'admin.template.action', 'Action', 'admin.template', 'en'),
(2302, 'admin.template.installing', 'Installing', 'admin.template', 'en'),
(2303, 'admin.template.local', 'Save local', 'admin.template', 'en'),
(2304, 'admin.template.online', 'From library', 'admin.template', 'en'),
(2305, 'admin.template.version', 'Version', 'admin.template', 'en'),
(2306, 'admin.template.link', 'Link', 'admin.template', 'en'),
(2307, 'admin.template.image', 'Image', 'admin.template', 'en'),
(2308, 'admin.template.empty', 'Empty template!', 'admin.template', 'en'),
(2309, 'admin.template.downloaded', 'Downloaded', 'admin.template', 'en'),
(2310, 'admin.template.rated', 'Rated', 'admin.template', 'en'),
(2311, 'admin.template.price', 'Price', 'admin.template', 'en'),
(2312, 'admin.template.free', 'Free', 'admin.template', 'en'),
(2313, 'admin.template.date', 'Date', 'admin.template', 'en'),
(2314, 'admin.template.click_here', 'Click here', 'admin.template', 'en'),
(2315, 'admin.template.located', 'Located', 'admin.template', 'en'),
(2316, 'admin.template.code', 'Code', 'admin.template', 'en'),
(2317, 'admin.template.image_demo', 'Image demo', 'admin.template', 'en'),
(2318, 'admin.template.only_version_current', 'Only this version', 'admin.template', 'en'),
(2319, 'admin.template.compatible', 'Compatible', 'admin.template', 'en'),
(2320, 'admin.template.used', 'Template used', 'admin.template', 'en'),
(2321, 'admin.template.list', 'Template list', 'admin.template', 'en'),
(2322, 'admin.template.import', 'Import Giao diện', 'admin.template', 'vi'),
(2323, 'admin.template.file_format', 'File mẫu', 'admin.template', 'vi'),
(2324, 'admin.template.choose_file', 'Chọn file', 'admin.template', 'vi'),
(2325, 'admin.template.import_submit', 'Import', 'admin.template', 'vi'),
(2326, 'admin.template.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.template', 'vi'),
(2327, 'admin.template.error_unzip', 'Lỗi trong khi unzip', 'admin.template', 'vi'),
(2328, 'admin.template.error_upload', 'Lỗi trong khi upload file', 'admin.template', 'vi'),
(2329, 'admin.template.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.template', 'vi'),
(2330, 'admin.template.error_config_format', 'File config không đúng định dạng', 'admin.template', 'vi'),
(2331, 'admin.template.import_success', 'Import thành công!', 'admin.template', 'vi'),
(2332, 'admin.template.error_exist', 'Giao diện đã tồn tại!', 'admin.template', 'vi'),
(2333, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.template', 'vi'),
(2334, 'admin.template.template_more', '<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.template', 'vi'),
(2335, 'admin.template.manager', 'Quản lý giao diện', 'admin.template', 'vi'),
(2336, 'admin.template.title', 'Danh sách giao diện', 'admin.template', 'vi'),
(2337, 'admin.template.name', 'Tên giao diện', 'admin.template', 'vi'),
(2338, 'admin.template.email', 'Email', 'admin.template', 'vi'),
(2339, 'admin.template.website', 'Website', 'admin.template', 'vi'),
(2340, 'admin.template.activated', 'Đang hoạt động', 'admin.template', 'vi'),
(2341, 'admin.template.inactive', 'Đang ẩn', 'admin.template', 'vi'),
(2342, 'admin.template.download', 'Tải về', 'admin.template', 'vi'),
(2343, 'admin.template.remove', 'Gỡ bỏ', 'admin.template', 'vi'),
(2344, 'admin.template.status', 'Trạng thái', 'admin.template', 'vi'),
(2345, 'admin.template.action', 'Hành động', 'admin.template', 'vi'),
(2346, 'admin.template.installing', 'Đang cài đặt', 'admin.template', 'vi'),
(2347, 'admin.template.local', 'Đã lưu trên máy', 'admin.template', 'vi'),
(2348, 'admin.template.online', 'Tải từ thư viện', 'admin.template', 'vi'),
(2349, 'admin.template.auth', 'Tác giả', 'admin.template', 'vi'),
(2350, 'admin.template.version', 'Phiên bản', 'admin.template', 'vi'),
(2351, 'admin.template.link', 'Liên kết', 'admin.template', 'vi'),
(2352, 'admin.template.image', 'Hình ảnh', 'admin.template', 'vi'),
(2353, 'admin.template.empty', 'Chưa có template nào!', 'admin.template', 'vi'),
(2354, 'admin.template.downloaded', 'Số lần tải', 'admin.template', 'vi'),
(2355, 'admin.template.rated', 'Đánh giá', 'admin.template', 'vi'),
(2356, 'admin.template.price', 'Giá', 'admin.template', 'vi'),
(2357, 'admin.template.free', 'Miễn phí', 'admin.template', 'vi'),
(2358, 'admin.template.date', 'Ngày tạo', 'admin.template', 'vi'),
(2359, 'admin.template.located', 'Đã tải về', 'admin.template', 'vi'),
(2360, 'admin.template.code', 'Mã code', 'admin.template', 'vi'),
(2361, 'admin.template.click_here', 'Bấm vào đây', 'admin.template', 'vi'),
(2362, 'admin.template.image_demo', 'Hình mẫu', 'admin.template', 'vi'),
(2363, 'admin.template.only_version_current', 'Chỉ phiên bản này', 'admin.template', 'vi'),
(2364, 'admin.template.compatible', 'Tương thích', 'admin.template', 'vi'),
(2365, 'admin.template.used', 'Đang sử dụng', 'admin.template', 'vi'),
(2366, 'admin.template.list', 'Danh sách giao diện', 'admin.template', 'vi'),
(2367, 'admin.plugin.compatible', 'Tương thích', 'admin.plugin', 'vi'),
(2368, 'admin.plugin.code', 'Mã code', 'admin.plugin', 'vi'),
(2369, 'admin.plugin.name', 'Tên chức năng', 'admin.plugin', 'vi'),
(2370, 'admin.plugin.sort', 'Thứ tự', 'admin.plugin', 'vi'),
(2371, 'admin.plugin.action', 'Hành động', 'admin.plugin', 'vi'),
(2372, 'admin.plugin.status', 'Trạng thái', 'admin.plugin', 'vi'),
(2373, 'admin.plugin.enable', 'Kích hoạt', 'admin.plugin', 'vi'),
(2374, 'admin.plugin.disable', 'Tắt', 'admin.plugin', 'vi'),
(2375, 'admin.plugin.remove', 'Gỡ bỏ', 'admin.plugin', 'vi'),
(2376, 'admin.plugin.only_delete_data', 'Chỉ xóa dữ liệu', 'admin.plugin', 'vi'),
(2377, 'admin.plugin.install', 'Cài đặt', 'admin.plugin', 'vi'),
(2378, 'admin.plugin.config', 'Cấu hình', 'admin.plugin', 'vi'),
(2379, 'admin.plugin.actived', 'Hoạt động', 'admin.plugin', 'vi'),
(2380, 'admin.plugin.disabled', 'Bị tắt', 'admin.plugin', 'vi'),
(2381, 'admin.plugin.not_install', 'Chưa cài đặt', 'admin.plugin', 'vi'),
(2382, 'admin.plugin.auth', 'Tác giả', 'admin.plugin', 'vi'),
(2383, 'admin.plugin.version', 'Phiên bản', 'admin.plugin', 'vi'),
(2384, 'admin.plugin.link', 'Liên kết', 'admin.plugin', 'vi'),
(2385, 'admin.plugin.image', 'Hình ảnh', 'admin.plugin', 'vi'),
(2386, 'admin.plugin.empty', 'Chưa có extension nào!', 'admin.plugin', 'vi'),
(2387, 'admin.plugin.local', 'Đã lưu trên máy', 'admin.plugin', 'vi'),
(2388, 'admin.plugin.online', 'Tải từ thư viện', 'admin.plugin', 'vi'),
(2389, 'admin.plugin.downloaded', 'Số lần tải', 'admin.plugin', 'vi'),
(2390, 'admin.plugin.rated', 'Đánh giá', 'admin.plugin', 'vi'),
(2391, 'admin.plugin.price', 'Giá', 'admin.plugin', 'vi'),
(2392, 'admin.plugin.free', 'Miễn phí', 'admin.plugin', 'vi'),
(2393, 'admin.plugin.date', 'Ngày tạo', 'admin.plugin', 'vi'),
(2394, 'admin.plugin.located', 'Đã tải về', 'admin.plugin', 'vi'),
(2395, 'admin.plugin.only_free', 'Là miễn phí', 'admin.plugin', 'vi'),
(2396, 'admin.plugin.only_version', 'Cùng phiên bản', 'admin.plugin', 'vi'),
(2397, 'admin.plugin.all_version', 'Tất cả phiên bản', 'admin.plugin', 'vi'),
(2398, 'admin.plugin.sort_price_asc', 'Giá tăng', 'admin.plugin', 'vi'),
(2399, 'admin.plugin.sort_price_desc', 'Giá giảm', 'admin.plugin', 'vi'),
(2400, 'admin.plugin.sort_rating', 'Bình chọn', 'admin.plugin', 'vi'),
(2401, 'admin.plugin.sort_download', 'Lượt tải', 'admin.plugin', 'vi'),
(2402, 'admin.plugin.search_keyword', 'Từ khóa', 'admin.plugin', 'vi'),
(2403, 'admin.plugin.enter_search_keyword', 'Nhập từ khóa', 'admin.plugin', 'vi'),
(2404, 'admin.plugin.search_submit', 'Lọc kết quả', 'admin.plugin', 'vi'),
(2405, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'vi'),
(2406, 'admin.plugin.file_format', 'File mẫu', 'admin.plugin', 'vi'),
(2407, 'admin.plugin.choose_file', 'Chọn file', 'admin.plugin', 'vi'),
(2408, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'vi'),
(2409, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'vi'),
(2410, 'admin.plugin.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.plugin', 'vi'),
(2411, 'admin.plugin.error_unzip', 'Lỗi trong khi unzip', 'admin.plugin', 'vi'),
(2412, 'admin.plugin.error_upload', 'Lỗi trong khi upload file', 'admin.plugin', 'vi'),
(2413, 'admin.plugin.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.plugin', 'vi'),
(2414, 'admin.plugin.error_config_format', 'File config không đúng định dạng', 'admin.plugin', 'vi'),
(2415, 'admin.plugin.import_success', 'Import thành công!', 'admin.plugin', 'vi'),
(2416, 'admin.plugin.error_exist', 'Plugin đã tồn tại!', 'admin.plugin', 'vi'),
(2417, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'vi'),
(2418, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.plugin', 'vi'),
(2419, 'admin.plugin.Shipping_plugin', 'Shipping extension', 'admin.plugin', 'en'),
(2420, 'admin.plugin.Payment_plugin', 'Payment extension', 'admin.plugin', 'en'),
(2421, 'admin.plugin.Total_plugin', 'Total extension', 'admin.plugin', 'en'),
(2422, 'admin.plugin.Other_plugin', 'Other plugin', 'admin.plugin', 'en'),
(2423, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'en'),
(2424, 'admin.plugin.Cms_plugin', 'Cms plugins', 'admin.plugin', 'en'),
(2425, 'admin.plugin.Block_plugin', 'Block plugins', 'admin.plugin', 'en'),
(2426, 'admin.plugin.Shipping_plugin', 'Chức năng vận chuyển', 'admin.plugin', 'vi'),
(2427, 'admin.plugin.Payment_plugin', 'Chức năng thanh toán', 'admin.plugin', 'vi'),
(2428, 'admin.plugin.Total_plugin', 'Chức năng giá trị đơn hàng', 'admin.plugin', 'vi'),
(2429, 'admin.plugin.Other_plugin', 'Chức năng khác', 'admin.plugin', 'vi'),
(2430, 'admin.plugin.Cms_plugin', 'Module CMS', 'admin.plugin', 'vi'),
(2431, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'vi'),
(2432, 'admin.plugin.Block_plugin', 'Module Block', 'admin.plugin', 'vi'),
(2433, 'admin.plugin.compatible', 'Compatible', 'admin.plugin', 'en'),
(2434, 'admin.plugin.code', 'Code', 'admin.plugin', 'en'),
(2435, 'admin.plugin.name', 'Name', 'admin.plugin', 'en'),
(2436, 'admin.plugin.sort', 'Sort', 'admin.plugin', 'en'),
(2437, 'admin.plugin.action', 'Action', 'admin.plugin', 'en'),
(2438, 'admin.plugin.status', 'Status', 'admin.plugin', 'en'),
(2439, 'admin.plugin.enable', 'Enable', 'admin.plugin', 'en'),
(2440, 'admin.plugin.disable', 'Disable', 'admin.plugin', 'en'),
(2441, 'admin.plugin.remove', 'Remove', 'admin.plugin', 'en'),
(2442, 'admin.plugin.only_delete_data', 'Only remove data', 'admin.plugin', 'en'),
(2443, 'admin.plugin.install', 'Install', 'admin.plugin', 'en'),
(2444, 'admin.plugin.config', 'Config', 'admin.plugin', 'en'),
(2445, 'admin.plugin.actived', 'Actived', 'admin.plugin', 'en'),
(2446, 'admin.plugin.disabled', 'Disabled', 'admin.plugin', 'en'),
(2447, 'admin.plugin.not_install', 'Not install', 'admin.plugin', 'en'),
(2448, 'admin.plugin.auth', 'Auth', 'admin.plugin', 'en'),
(2449, 'admin.plugin.version', 'Version', 'admin.plugin', 'en'),
(2450, 'admin.plugin.link', 'Link', 'admin.plugin', 'en'),
(2451, 'admin.plugin.image', 'Image', 'admin.plugin', 'en'),
(2452, 'admin.plugin.empty', 'Empty extension!', 'admin.plugin', 'en'),
(2453, 'admin.plugin.local', 'Save local', 'admin.plugin', 'en'),
(2454, 'admin.plugin.online', 'From library', 'admin.plugin', 'en'),
(2455, 'admin.plugin.downloaded', 'Downloaded', 'admin.plugin', 'en'),
(2456, 'admin.plugin.rated', 'Rated', 'admin.plugin', 'en'),
(2457, 'admin.plugin.price', 'Price', 'admin.plugin', 'en'),
(2458, 'admin.plugin.free', 'Free', 'admin.plugin', 'en'),
(2459, 'admin.plugin.date', 'Date', 'admin.plugin', 'en'),
(2460, 'admin.plugin.located', 'Located', 'admin.plugin', 'en'),
(2461, 'admin.plugin.only_free', 'Is free', 'admin.plugin', 'en'),
(2462, 'admin.plugin.only_version', 'Only version', 'admin.plugin', 'en'),
(2463, 'admin.plugin.all_version', 'All version', 'admin.plugin', 'en'),
(2464, 'admin.plugin.sort_price_asc', 'Price asc', 'admin.plugin', 'en'),
(2465, 'admin.plugin.sort_price_desc', 'Price desc', 'admin.plugin', 'en'),
(2466, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'en'),
(2467, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'en'),
(2468, 'admin.plugin.search_keyword', 'Keyword', 'admin.plugin', 'en'),
(2469, 'admin.plugin.enter_search_keyword', 'Enter keyword', 'admin.plugin', 'en'),
(2470, 'admin.plugin.search_submit', 'Filter result', 'admin.plugin', 'en'),
(2471, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'en'),
(2472, 'admin.plugin.file_format', 'File format', 'admin.plugin', 'en'),
(2473, 'admin.plugin.choose_file', 'Choose File', 'admin.plugin', 'en'),
(2474, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'en'),
(2475, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'en'),
(2476, 'admin.plugin.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.plugin', 'en'),
(2477, 'admin.plugin.error_unzip', 'Error while unzip', 'admin.plugin', 'en'),
(2478, 'admin.plugin.error_upload', 'Error while uploading file', 'admin.plugin', 'en'),
(2479, 'admin.plugin.error_check_config', 'Cannot find config file', 'admin.plugin', 'en'),
(2480, 'admin.plugin.error_config_format', 'The config file is not in the right format', 'admin.plugin', 'en'),
(2481, 'admin.plugin.import_success', 'Import success!', 'admin.plugin', 'en'),
(2482, 'admin.plugin.error_exist', 'Plugin exist!', 'admin.plugin', 'en'),
(2483, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'en'),
(2484, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.plugin', 'en'),
(2485, 'admin.plugin.install_success', 'Installed successfully', 'admin.plugin', 'en'),
(2486, 'admin.plugin.install_faild', 'Installation failed', 'admin.plugin', 'en'),
(2487, 'admin.plugin.table_exist', 'Table :table already exists', 'admin.plugin', 'en'),
(2488, 'admin.plugin.plugin_exist', 'This plugin already exists', 'admin.plugin', 'en'),
(2489, 'admin.plugin.action_error', 'There was an error while :action', 'admin.plugin', 'en'),
(2490, 'admin.plugin.install_success', 'Cài đặt thành công', 'admin.plugin', 'vi'),
(2491, 'admin.plugin.install_faild', 'Cài đặt thất bại', 'admin.plugin', 'vi'),
(2492, 'admin.plugin.table_exist', 'Bảng :table đã tồn tại rồi', 'admin.plugin', 'vi'),
(2493, 'admin.plugin.plugin_exist', 'Plugin này đã tồn tại rồi', 'admin.plugin', 'vi'),
(2494, 'admin.plugin.action_error', 'Có lỗi trong khi :action', 'admin.plugin', 'vi'),
(2495, 'admin.chart.static_month', 'Thống kê trong 12 tháng', 'admin.chart', 'vi'),
(2496, 'admin.chart.static_30_day', 'Thống kê trong 1 tháng', 'admin.chart', 'vi'),
(2497, 'admin.chart.static_month_help', 'Dữ liệu so sánh bằng tổng số tiền của đơn hàng, đơn vị Bit', 'admin.chart', 'vi'),
(2498, 'admin.chart.amount', 'Tổng số tiền (Bit)', 'admin.chart', 'vi'),
(2499, 'admin.chart.order', 'Tổng đơn hàng', 'admin.chart', 'vi'),
(2500, 'admin.chart.static_country', 'Đơn hàng theo quốc gia', 'admin.chart', 'vi'),
(2501, 'admin.chart.country', 'Quốc gia', 'admin.chart', 'vi'),
(2502, 'admin.chart.static_month', 'Statistics for 12 months', 'admin.chart', 'en'),
(2503, 'admin.chart.static_30_day', 'Statistics for 30 days', 'admin.chart', 'en'),
(2504, 'admin.chart.static_month_help', 'The comparison data is equal to the total amount of the order and the Bit units', 'admin.chart', 'en'),
(2505, 'admin.chart.amount', 'Total amount (Bit)', 'admin.chart', 'en'),
(2506, 'admin.chart.order', 'Total order', 'admin.chart', 'en'),
(2507, 'admin.chart.static_country', 'Statistics of orders by country', 'admin.chart', 'en'),
(2508, 'admin.chart.country', 'Country', 'admin.chart', 'en'),
(2509, 'admin.chart.static_device', 'Statistics of orders by device', 'admin.chart', 'en'),
(2510, 'admin.chart.static_device', 'Thống kê đơn hàng theo thiết bị', 'admin.chart', 'vi'),
(2511, 'admin.chart.static_count_order', 'Statistics of count orders', 'admin.chart', 'en'),
(2512, 'admin.chart.static_count_order', 'Thống kê tổng số đơn hàng', 'admin.chart', 'vi'),
(2513, 'admin.chart.device', 'Device type', 'admin.chart', 'en'),
(2514, 'admin.chart.device', 'Loại thiết bị', 'admin.chart', 'vi'),
(2515, 'admin.maintain.title', 'Maintenance page', 'admin.maintain', 'en'),
(2516, 'admin.maintain.content', 'Maintenance content of the store', 'admin.maintain', 'en'),
(2517, 'admin.maintain.description', 'Description', 'admin.maintain', 'en'),
(2518, 'admin.maintain.description_note', 'Maintenance note', 'admin.maintain', 'en'),
(2519, 'admin.maintain.title', 'Trang bảo trì', 'admin.maintain', 'vi'),
(2520, 'admin.maintain.content', 'Nội dung bảo trì của cửa hàng', 'admin.maintain', 'vi'),
(2521, 'admin.maintain.description', 'Nội dung', 'admin.maintain', 'vi'),
(2522, 'admin.maintain.description_note', 'Ghi chú bảo trì', 'admin.maintain', 'vi'),
(2523, 'admin.seo.config', 'Cấu hình SEO', 'admin.seo', 'vi'),
(2524, 'admin.seo.config', 'SEO config', 'admin.seo', 'en'),
(2525, 'admin.seo.url_seo_lang', 'Thêm ngôn ngữ trên URL', 'admin.seo', 'vi'),
(2526, 'admin.seo.url_seo_lang', 'Add language on URL', 'admin.seo', 'en'),
(2527, 'admin.dashboard.total_order', 'Tổng đơn hàng', 'admin.dashboard', 'vi'),
(2528, 'admin.dashboard.total_order', 'Order total', 'admin.dashboard', 'en'),
(2529, 'admin.dashboard.total_product', 'Tổng sản phẩm', 'admin.dashboard', 'vi'),
(2530, 'admin.dashboard.total_product', 'Product total', 'admin.dashboard', 'en'),
(2531, 'admin.dashboard.total_customer', 'Tổng khách hàng', 'admin.dashboard', 'vi'),
(2532, 'admin.dashboard.total_customer', 'Customer total', 'admin.dashboard', 'en'),
(2533, 'admin.dashboard.total_blog', 'Tổng blog', 'admin.dashboard', 'vi'),
(2534, 'admin.dashboard.total_blog', 'Blog total', 'admin.dashboard', 'en'),
(2535, 'admin.dashboard.order_month', 'Đơn hàng trong tháng', 'admin.dashboard', 'vi'),
(2536, 'admin.dashboard.order_month', 'Order in month', 'admin.dashboard', 'en'),
(2537, 'admin.dashboard.order_year', 'Đơn hàng trong năm', 'admin.dashboard', 'vi'),
(2538, 'admin.dashboard.order_year', 'Order in year', 'admin.dashboard', 'en'),
(2539, 'admin.dashboard.top_order_new', 'Đơn hàng mới', 'admin.dashboard', 'vi'),
(2540, 'admin.dashboard.top_order_new', 'New orders', 'admin.dashboard', 'en'),
(2541, 'admin.dashboard.top_customer_new', 'Khách hàng mới mới', 'admin.dashboard', 'vi'),
(2542, 'admin.dashboard.top_customer_new', 'New customers', 'admin.dashboard', 'en'),
(2543, 'admin.dashboard.pie_chart', 'Hiển thị biểu đồ pie', 'admin.dashboard', 'vi'),
(2544, 'admin.dashboard.pie_chart', 'Display pie chart total', 'admin.dashboard', 'en'),
(2545, 'admin.dashboard.title', 'Trang tổng quan', 'admin.dashboard', 'vi'),
(2546, 'admin.dashboard.title', 'Dashboard page', 'admin.dashboard', 'en'),
(2547, 'admin.dashboard.config_display', 'Cấu hình trang tổng quan admin', 'admin.dashboard', 'vi'),
(2548, 'admin.dashboard.config_display', 'Config dashboard adminpage', 'admin.dashboard', 'en'),
(2549, 'admin.layout_page_position.all', 'All Page', 'admin.layout_page_position', 'en'),
(2550, 'admin.layout_page_position.home', 'Home page', 'admin.layout_page_position', 'en'),
(2551, 'admin.layout_page_position.shop_home', 'Home shop', 'admin.layout_page_position', 'en'),
(2552, 'admin.layout_page_position.shop_search', 'Search page', 'admin.layout_page_position', 'en'),
(2553, 'admin.layout_page_position.vendor_home', 'Store: home', 'admin.layout_page_position', 'en'),
(2554, 'admin.layout_page_position.store_product_list', 'Store: product list', 'admin.layout_page_position', 'en'),
(2555, 'admin.layout_page_position.product_list', 'List: product', 'admin.layout_page_position', 'en'),
(2556, 'admin.layout_page_position.product_detail', 'Detail: product', 'admin.layout_page_position', 'en'),
(2557, 'admin.layout_page_position.shop_cart', 'Cart: cart, wishlist, compare, checkout', 'admin.layout_page_position', 'en'),
(2558, 'admin.layout_page_position.shop_auth', 'Auth: login, forgot, register', 'admin.layout_page_position', 'en'),
(2559, 'admin.layout_page_position.shop_profile', 'Customer profile', 'admin.layout_page_position', 'en'),
(2560, 'admin.layout_page_position.item_list', 'List: category, brand, supplier', 'admin.layout_page_position', 'en'),
(2561, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'en'),
(2562, 'admin.layout_page_position.news_list', 'List:  Blog/news', 'admin.layout_page_position', 'en'),
(2563, 'admin.layout_page_position.news_detail', 'Detail: entry Blog', 'admin.layout_page_position', 'en'),
(2564, 'admin.layout_page_position.content_list', 'List: content CMS', 'admin.layout_page_position', 'en'),
(2565, 'admin.layout_page_position.content_detail', 'Detail: entry CMS', 'admin.layout_page_position', 'en'),
(2566, 'admin.layout_page_position.shop_contact', 'Page contact', 'admin.layout_page_position', 'en'),
(2567, 'admin.layout_page_position.shop_page', 'Other page: about...', 'admin.layout_page_position', 'en'),
(2568, 'admin.layout_page_position.all', 'Tất cả trang', 'admin.layout_page_position', 'vi'),
(2569, 'admin.layout_page_position.home', 'Trang chủ', 'admin.layout_page_position', 'vi'),
(2570, 'admin.layout_page_position.shop_home', 'Trang chủ Shop', 'admin.layout_page_position', 'vi'),
(2571, 'admin.layout_page_position.shop_search', 'Trang tìm kiếm', 'admin.layout_page_position', 'vi'),
(2572, 'admin.layout_page_position.vendor_home', 'Cửa hàng: trang chủ', 'admin.layout_page_position', 'vi'),
(2573, 'admin.layout_page_position.store_product_list', 'Cửa hàng: danh sách sản phẩm', 'admin.layout_page_position', 'vi'),
(2574, 'admin.layout_page_position.product_list', 'Danh sách: sản phẩm', 'admin.layout_page_position', 'vi'),
(2575, 'admin.layout_page_position.product_detail', 'Chi tiết: sản phẩm', 'admin.layout_page_position', 'vi'),
(2576, 'admin.layout_page_position.shop_cart', 'Giỏ hàng: giỏ hàng, wishlist, compare, checkout', 'admin.layout_page_position', 'vi'),
(2577, 'admin.layout_page_position.shop_auth', 'Chứng thực: đăng nhập, đăng ký, quên mật khẩu', 'admin.layout_page_position', 'vi'),
(2578, 'admin.layout_page_position.shop_profile', 'Tài khoản khách hàng', 'admin.layout_page_position', 'vi'),
(2579, 'admin.layout_page_position.item_list', 'Danh sách item: danh mục, nhãn hiệu, nhà cung cấp', 'admin.layout_page_position', 'vi'),
(2580, 'admin.layout_page_position.item_detail', 'Chi tiết: item', 'admin.layout_page_position', 'vi'),
(2581, 'admin.layout_page_position.news_list', 'Danh sách: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2582, 'admin.layout_page_position.news_detail', 'Chi tiết: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2583, 'admin.layout_page_position.content_list', 'Danh sách: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2584, 'admin.layout_page_position.content_detail', 'Chi tiết: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2585, 'admin.layout_page_position.shop_contact', 'Trang liên hệ', 'admin.layout_page_position', 'vi'),
(2586, 'admin.layout_page_position.shop_page', 'Các trang viết: giới thiệu...', 'admin.layout_page_position', 'vi'),
(2587, 'admin.layout_page_block.header', 'Head code :meta, css, javascript,...', 'admin.layout_page_block', 'vi'),
(2588, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'vi'),
(2589, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'vi'),
(2590, 'admin.layout_page_block.left', 'BlockLeft - Cột trái', 'admin.layout_page_block', 'vi'),
(2591, 'admin.layout_page_block.right', 'Block Right - Cột phải', 'admin.layout_page_block', 'vi'),
(2592, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'vi'),
(2593, 'admin.layout_page_block.header', 'Head code: meta, css, javascript, ...', 'admin.layout_page_block', 'en'),
(2594, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'en'),
(2595, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'en'),
(2596, 'admin.layout_page_block.left', 'Block Left', 'admin.layout_page_block', 'en'),
(2597, 'admin.layout_page_block.right', 'Block Right', 'admin.layout_page_block', 'en'),
(2598, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'en'),
(2599, 'admin.admin_custom_config.facebook_url', 'Facebook Url', 'admin.admin_custom_config', 'en'),
(2600, 'admin.admin_custom_config.fanpage_url', 'Fanpage Url', 'admin.admin_custom_config', 'en'),
(2601, 'admin.admin_custom_config.twitter_url', 'Twitter Url', 'admin.admin_custom_config', 'en'),
(2602, 'admin.admin_custom_config.instagram_url', 'Instagram Url', 'admin.admin_custom_config', 'en'),
(2603, 'admin.admin_custom_config.youtube_url', 'Youtube Url', 'admin.admin_custom_config', 'en'),
(2604, 'admin.admin_custom_config.facebook_url', 'Facebook Url', 'admin.admin_custom_config', 'vi'),
(2605, 'admin.admin_custom_config.fanpage_url', 'Fanpage Url', 'admin.admin_custom_config', 'vi'),
(2606, 'admin.admin_custom_config.twitter_url', 'Twitter Url', 'admin.admin_custom_config', 'vi'),
(2607, 'admin.admin_custom_config.instagram_url', 'Instagram Url', 'admin.admin_custom_config', 'vi'),
(2608, 'admin.admin_custom_config.youtube_url', 'Youtube Url', 'admin.admin_custom_config', 'vi'),
(2609, 'admin.admin_custom_config.add_new', 'Thêm mới cấu hình', 'admin.admin_custom_config', 'vi'),
(2610, 'admin.admin_custom_config.add_new', 'Add new config', 'admin.admin_custom_config', 'en'),
(2611, 'admin.admin_custom_config.add_new_detail', 'Thông tin cấu hình', 'admin.admin_custom_config', 'vi'),
(2612, 'admin.admin_custom_config.add_new_detail', 'Config detail', 'admin.admin_custom_config', 'en'),
(2613, 'admin.admin_custom_config.add_new_key', 'Key cấu hình', 'admin.admin_custom_config', 'vi'),
(2614, 'admin.admin_custom_config.add_new_key', 'Key config', 'admin.admin_custom_config', 'en'),
(2615, 'admin.admin_custom_config.add_new_value', 'Giá trị', 'admin.admin_custom_config', 'vi'),
(2616, 'admin.admin_custom_config.add_new_value', 'Value', 'admin.admin_custom_config', 'en'),
(2617, 'admin.admin_custom_config.key_exist', 'Key đã tồn tại', 'admin.admin_custom_config', 'vi'),
(2618, 'admin.admin_custom_config.key_exist', 'Key already exist', 'admin.admin_custom_config', 'en'),
(2619, 'admin.config_layout.link_home_page', 'Hiển thị link trang chủ', 'admin.config_layout', 'vi'),
(2620, 'admin.config_layout.link_home_page', 'Display link homepage', 'admin.config_layout', 'en'),
(2621, 'admin.config_layout.link_shop_page', 'Hiển thị link cửa hàng', 'admin.config_layout', 'vi'),
(2622, 'admin.config_layout.link_shop_page', 'Display link shop', 'admin.config_layout', 'en'),
(2623, 'admin.config_layout.link_account', 'Hiển thị link tài khoản', 'admin.config_layout', 'vi'),
(2624, 'admin.config_layout.link_account', 'Display link account', 'admin.config_layout', 'en'),
(2625, 'admin.config_layout.link_cart', 'Hiển thị giỏ hàng', 'admin.config_layout', 'vi'),
(2626, 'admin.config_layout.link_cart', 'Display link cart', 'admin.config_layout', 'en'),
(2627, 'admin.config_layout.link_language', 'Hiển thị ngôn ngữ', 'admin.config_layout', 'vi'),
(2628, 'admin.config_layout.link_language', 'Display link language', 'admin.config_layout', 'en'),
(2629, 'admin.config_layout.link_currency', 'Hiển thị tiền tệ', 'admin.config_layout', 'vi'),
(2630, 'admin.config_layout.link_currency', 'Display link currency', 'admin.config_layout', 'en'),
(2631, 'store.admin.config_layout', 'Cấu hình bố cục cửa hàng', 'admin.config_layout', 'vi'),
(2632, 'store.admin.config_layout', 'Config layout shop', 'admin.config_layout', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(5, 'Lay banner nay', '/data/banner/shose/home1-slide2.jpg', NULL, NULL, NULL, 1, 0, 2, 'banner', '2022-05-15 03:12:07', '2022-05-19 07:23:52'),
(16, NULL, '/data/banner/shose/shop.jpg', NULL, NULL, NULL, 1, 0, 0, 'banner-store', '2022-05-16 08:19:54', '2022-05-16 08:20:12'),
(29, NULL, '/data/banner/shose/shop.jpg', NULL, NULL, NULL, 1, 0, 0, 'breadcrumb', '2022-05-19 00:56:39', '2022-05-19 00:57:02'),
(42, NULL, '/data/banner/shose/home2-slide1.jpg', NULL, NULL, NULL, 1, 0, 0, 'banner', '2022-05-19 07:30:36', '2022-05-19 07:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner_store`
--

CREATE TABLE `sc_shop_banner_store` (
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner_store`
--

INSERT INTO `sc_shop_banner_store` (`banner_id`, `store_id`) VALUES
(5, 1),
(16, 1),
(29, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner_type`
--

CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner_type`
--

INSERT INTO `sc_shop_banner_type` (`id`, `code`, `name`) VALUES
(1, 'banner', 'Banner website'),
(2, 'background', 'Background website'),
(3, 'breadcrumb', 'Breadcrumb website'),
(4, 'banner-store', 'Banner store'),
(5, 'other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_brand`
--

INSERT INTO `sc_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'ThanhHoa', 'thanhhoa', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'SaiGon', 'saigon', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'HaNoi', 'hanoi', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'BenTre', 'bentre', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'NgheAn', 'nghean', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'DaNang', 'danang', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'LongAn', 'longan', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'BinhDinh', 'binhdinh', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_brand_store`
--

CREATE TABLE `sc_shop_brand_store` (
  `brand_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_brand_store`
--

INSERT INTO `sc_shop_brand_store` (`brand_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(14, '/data/category/product-1.jpg', 'giay-sneaker', 0, 1, 1, 0),
(15, '/data/category/product-3.jpg', 'giay-adidas-yeezy', 0, 1, 1, 0),
(16, '/data/category/product-2.jpg', 'giay-nike-air-max-97', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(14, 'en', 'Giày Sneaker', 'Giày Sneaker', 'Giày Sneaker'),
(14, 'vi', 'Giày Sneaker', 'Giày Sneaker', 'Giày Sneaker'),
(15, 'en', 'Giày Adidas Yeezy', 'Giày Adidas Yeezy', 'Giày Adidas Yeezy'),
(15, 'vi', 'Giày Adidas Yeezy', 'Giày Adidas Yeezy', 'Giày Adidas Yeezy'),
(16, 'en', 'Giày Nike AIR MAX 97', 'Giày Nike AIR MAX 97', 'Giày Nike AIR MAX 97'),
(16, 'vi', 'Giày Nike AIR MAX 97', 'Giày Nike AIR MAX 97', 'Giày Nike AIR MAX 97');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category_store`
--

CREATE TABLE `sc_shop_category_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic Peoples Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao Peoples Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 1, 0),
(2, 'VietNam Dong', 'VND', '₫', 20.00, 0, 0, ',', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint(20) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_customer`
--

INSERT INTO `sc_shop_customer` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `address3`, `company`, `country`, `phone`, `store_id`, `remember_token`, `status`, `group`, `email_verified_at`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Quang Hải', 'Nguyễn', NULL, NULL, 'admin1@admin.com', NULL, NULL, '$2y$10$1eHeQ0PE.H1a/jQyFJiaielkiElvd4LMSFZMmhXqt5Sd1WFXVuGNC', 1, NULL, 'Bắc Giang', 'Lạng Giang', NULL, NULL, 'VN', '0984559557', 1, NULL, 1, 1, NULL, '2022-05-20 02:25:40', '2022-05-20 02:25:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_customer_address`
--

INSERT INTO `sc_shop_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `postcode`, `address1`, `address2`, `address3`, `country`, `phone`) VALUES
(1, 1, 'Quang Hải', 'Nguyễn', '', '', '', 'Bắc Giang', 'Lạng Giang', '', '', '0984559557');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_custom_field`
--

CREATE TABLE `sc_shop_custom_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_custom_field_detail`
--

CREATE TABLE `sc_shop_custom_field_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(2, 'Customer verification', 'customer_verify', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(3, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(4, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<b>Name</b>: {{$name}}<br>\n<b>Email</b>: {{$email}}<br>\n<b>Phone</b>: {{$phone}}<br>\n</td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td>{{$content}}</td>\n</tr>\n</table>', 1, 1),
(5, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n  <tr>\n      <td>\n          <b>Order ID</b>: {{$orderID}}<br>\n          <b>Customer name</b>: {{$toname}}<br>\n          <b>Email</b>: {{$email}}<br>\n          <b>Address</b>: {{$address}}<br>\n          <b>Phone</b>: {{$phone}}<br>\n          <b>Order note</b>: {{$comment}}\n      </td>\n  </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n  {{$orderDetail}}\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\n  </tr>\n</table>', 1, 1),
(6, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n  <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n  </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'admin.layout_page_position.home'),
(2, 'shop_home', 'admin.layout_page_position.shop_home'),
(3, 'shop_search', 'admin.layout_page_position.shop_search'),
(4, 'shop_product_list', 'admin.layout_page_position.product_list'),
(5, 'product_detail', 'admin.layout_page_position.product_detail'),
(6, 'shop_cart', 'admin.layout_page_position.shop_cart'),
(7, 'shop_item_list', 'admin.layout_page_position.item_list'),
(8, 'shop_item_detail', 'admin.layout_page_position.item_detail'),
(9, 'shop_news', 'admin.layout_page_position.news_list'),
(10, 'shop_news_detail', 'admin.layout_page_position.news_detail'),
(11, 'shop_auth', 'admin.layout_page_position.shop_auth'),
(12, 'shop_profile', 'admin.layout_page_position.shop_profile'),
(13, 'shop_page', 'admin.layout_page_position.shop_page'),
(14, 'shop_contact', 'admin.layout_page_position.shop_contact'),
(15, 'content_list', 'admin.layout_page_position.content_list'),
(16, 'content_detail', 'admin.layout_page_position.content_detail'),
(17, 'vendor_home', 'admin.layout_page_position.vendor_home'),
(18, 'store_product_list', 'admin.layout_page_position.store_product_list');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'header', 'admin.layout_page_block.header'),
(2, 'banner_top', 'admin.layout_page_block.banner_top'),
(3, 'top', 'admin.layout_page_block.top'),
(4, 'left', 'admin.layout_page_block.left'),
(5, 'right', 'admin.layout_page_block.right'),
(6, 'bottom', 'admin.layout_page_block.bottom');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'front.home', 'route::home', '_self', 'menu', '', 1, 10),
(2, 'front.shop', 'route::shop', '_self', 'menu', '', 1, 20),
(3, 'front.blog', 'route::news', '_self', 'menu', '', 1, 30),
(4, 'front.contact', 'route::contact', '_self', 'menu', '', 1, 40),
(5, 'front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 50),
(6, 'front.my_profile', 'route::login', '_self', 'footer', '', 1, 60),
(7, 'front.compare_page', 'route::compare', '_self', 'footer', '', 1, 70),
(8, 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 80);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link_store`
--

CREATE TABLE `sc_shop_link_store` (
  `link_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link_store`
--

INSERT INTO `sc_shop_link_store` (`link_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(5, '/data/content/blog-22.jpg', 'demo-alias-blog-5', 0, 1, '2022-05-15 03:01:02', '2022-05-19 02:04:58'),
(6, '/data/content/blog-44.jpg', 'demo-alias-blog-6', 0, 1, '2022-05-15 03:01:02', '2022-05-19 02:05:15'),
(7, '/data/content/blog-44.jpg', 'giay-the-thao', 0, 1, '2022-05-19 08:50:01', '2022-05-19 08:50:01'),
(9, '/data/content/blog-3.jpg', 'giay-the-thao', 0, 1, '2022-05-19 08:50:37', '2022-05-19 08:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(5, 'en', 'Easy Polo Black Edition 5', NULL, 'Các mẫu giày mới nhất', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', NULL, 'Các mẫu giày mới nhất', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', NULL, 'Các mẫu giày mới nhất', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', NULL, 'Các mẫu giày mới nhất', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(7, 'en', 'Giày Thể Thao', 'Giày Thể Thao', 'Các mẫu giày mới nhất', 'a'),
(7, 'vi', 'Giày Thể Thao', 'Giày Thể Thao', 'Các mẫu giày mới nhất', 'a'),
(9, 'en', 'Giày Thể Thao', 'Giày Thể Thao', 'Giày Thể Thao', 'Gi&agrave;y Thể Thao'),
(9, 'vi', 'Giày Thể Thao', 'Giày Thể Thao', 'Giày Thể Thao', 'Gi&agrave;y Thể Thao');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news_store`
--

CREATE TABLE `sc_shop_news_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news_store`
--

INSERT INTO `sc_shop_news_store` (`news_id`, `store_id`) VALUES
(5, 1),
(6, 1),
(7, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `address3`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `device_type`, `ip`, `transaction`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 0, 'http://localhost/s-cart-6.7.2/public', 300000, 0, 0, 1, 1, 1, 30000, 330000, 'VND', 20.00, 0, 330000, 'Quang Hải', 'Nguyễn', NULL, NULL, 'Bắc Giang', 'Lạng Giang', NULL, 'VN', NULL, NULL, '0984559557', 'admin2@admin.com', 'Xã Mỹ Hà', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'desktop', '::1', NULL, 1, '2022-05-19 09:51:50', '2022-05-19 09:51:50'),
(2, 0, 'http://localhost/s-cart-6.7.2/public', 600000, 0, 0, 1, 1, 1, 60000, 660000, 'VND', 20.00, 0, 660000, 'Quang Hải', 'Nguyễn', NULL, NULL, 'Bắc Giang', 'Lạng Giang', NULL, 'VN', NULL, NULL, '0984559557', 'admin2@admin.com', 'a', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'desktop', '::1', NULL, 1, '2022-05-19 10:03:17', '2022-05-19 10:03:17'),
(3, 0, 'http://localhost/s-cart-6.7.2/public', 11300000, 0, 0, 1, 1, 1, 30000, 11330000, 'VND', 20.00, 0, 11330000, 'Quang Hải', 'Nguyễn', NULL, NULL, 'Bắc Giang', 'Lạng Giang', NULL, 'VN', NULL, NULL, '0984559557', 'admin2@admin.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'desktop', '::1', NULL, 1, '2022-05-19 10:14:33', '2022-05-19 10:14:33'),
(4, 0, 'http://localhost/s-cart-6.7.2/public', 110300000, 0, 0, 1, 1, 1, 30000, 110330000, 'VND', 20.00, 0, 110330000, 'Quang Hải', 'Nguyễn', NULL, NULL, 'Bắc Giang', 'Lạng Giang', NULL, 'VN', NULL, NULL, '0984559557', 'admin1@admin.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'desktop', '::1', NULL, 1, '2022-05-20 01:42:42', '2022-05-20 01:42:42'),
(5, 0, 'http://localhost/s-cart-6.7.2/public', 10036000, 0, 0, 1, 1, 1, 3600, 10039600, 'VND', 20.00, 0, 10039600, 'Quang Hải', 'Nguyễn', NULL, NULL, 'Bắc Giang', 'Lạng Giang', NULL, 'VN', NULL, NULL, '0984559557', 'admin1@admin.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', 'phone', '::1', NULL, 1, '2022-05-20 02:06:55', '2022-05-20 02:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 'Louis Vuitton – Archlight', 300000, 1, 1, 300000, 30000, 'ALOKK1-AY', 'VND', 20.00, '[]', '2022-05-19 09:51:50', '2022-05-19 09:51:50'),
(2, 2, 21, 'Louis Vuitton – Archlight', 300000, 2, 1, 600000, 60000, 'ALOKK1-AY', 'VND', 20.00, '[]', '2022-05-19 10:03:17', '2022-05-19 10:03:17'),
(3, 3, 21, 'Louis Vuitton – Archlight', 300000, 1, 1, 300000, 30000, 'ALOKK1-AY', 'VND', 20.00, '[]', '2022-05-19 10:14:33', '2022-05-19 10:14:33'),
(4, 3, 26, 'Fila Disruptor 2', 11000000, 1, 1, 11000000, 0, 'AFFGH', 'VND', 20.00, '[]', '2022-05-19 10:14:33', '2022-05-19 10:14:33'),
(5, 4, 21, 'Louis Vuitton – Archlight', 300000, 1, 1, 300000, 30000, 'ALOKK1-AY', 'VND', 20.00, '[]', '2022-05-20 01:42:42', '2022-05-20 01:42:42'),
(6, 4, 26, 'Fila Disruptor 2', 11000000, 10, 1, 110000000, 0, 'AFFGH', 'VND', 20.00, '[]', '2022-05-20 01:42:42', '2022-05-20 01:42:42'),
(7, 5, 25, 'Giày sneaker da logo Rhyton Gucci', 5000000, 2, 1, 10000000, 0, 'AFFGHAQ', 'VND', 20.00, '[]', '2022-05-20 02:06:55', '2022-05-20 02:06:55'),
(8, 5, 22, 'Balenciaga Triple S', 12000, 3, 1, 36000, 3600, 'MITOM-AY', 'VND', 20.00, '[]', '2022-05-20 02:06:55', '2022-05-20 02:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` bigint(20) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
(1, 1, 'New order', 0, 0, 1, '2022-05-19 16:51:50'),
(2, 2, 'New order', 0, 0, 1, '2022-05-19 17:03:17'),
(3, 3, 'New order', 0, 0, 1, '2022-05-19 17:14:33'),
(4, 4, 'New order', 0, 0, 1, '2022-05-20 08:42:42'),
(5, 5, 'New order', 0, 0, 1, '2022-05-20 09:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tiền hàng', 'subtotal', 300000, '300,000₫', 1, '2022-05-19 09:51:50', NULL),
(2, 1, 'Thuế', 'tax', 30000, '30,000₫', 2, '2022-05-19 09:51:50', NULL),
(3, 1, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-05-19 09:51:50', NULL),
(4, 1, 'Giảm giá', 'discount', 0, '0', 20, '2022-05-19 09:51:50', NULL),
(5, 1, 'Tổng tiền', 'total', 330000, '330,000₫', 100, '2022-05-19 09:51:50', NULL),
(6, 1, 'Đã nhận', 'received', 0, '0', 200, '2022-05-19 09:51:50', NULL),
(7, 2, 'Tiền hàng', 'subtotal', 600000, '600,000₫', 1, '2022-05-19 10:03:17', NULL),
(8, 2, 'Thuế', 'tax', 60000, '60,000₫', 2, '2022-05-19 10:03:17', NULL),
(9, 2, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-05-19 10:03:17', NULL),
(10, 2, 'Giảm giá', 'discount', 0, '0', 20, '2022-05-19 10:03:17', NULL),
(11, 2, 'Tổng tiền', 'total', 660000, '660,000₫', 100, '2022-05-19 10:03:17', NULL),
(12, 2, 'Đã nhận', 'received', 0, '0', 200, '2022-05-19 10:03:17', NULL),
(13, 3, 'Tiền hàng', 'subtotal', 11300000, '11,300,000₫', 1, '2022-05-19 10:14:33', NULL),
(14, 3, 'Thuế', 'tax', 30000, '30,000₫', 2, '2022-05-19 10:14:33', NULL),
(15, 3, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-05-19 10:14:33', NULL),
(16, 3, 'Giảm giá', 'discount', 0, '0', 20, '2022-05-19 10:14:33', NULL),
(17, 3, 'Tổng tiền', 'total', 11330000, '11,330,000₫', 100, '2022-05-19 10:14:33', NULL),
(18, 3, 'Đã nhận', 'received', 0, '0', 200, '2022-05-19 10:14:33', NULL),
(19, 4, 'Tiền hàng', 'subtotal', 110300000, '110,300,000₫', 1, '2022-05-20 01:42:42', NULL),
(20, 4, 'Thuế', 'tax', 30000, '30,000₫', 2, '2022-05-20 01:42:42', NULL),
(21, 4, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-05-20 01:42:42', NULL),
(22, 4, 'Giảm giá', 'discount', 0, '0', 20, '2022-05-20 01:42:42', NULL),
(23, 4, 'Tổng tiền', 'total', 110330000, '110,330,000₫', 100, '2022-05-20 01:42:42', NULL),
(24, 4, 'Đã nhận', 'received', 0, '0', 200, '2022-05-20 01:42:42', NULL),
(25, 5, 'Tiền hàng', 'subtotal', 10036000, '10,036,000₫', 1, '2022-05-20 02:06:55', NULL),
(26, 5, 'Thuế', 'tax', 3600, '3,600₫', 2, '2022-05-20 02:06:55', NULL),
(27, 5, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-05-20 02:06:55', NULL),
(28, 5, 'Giảm giá', 'discount', 0, '0', 20, '2022-05-20 02:06:55', NULL),
(29, 5, 'Tổng tiền', 'total', 10039600, '10,039,600₫', 100, '2022-05-20 02:06:55', NULL),
(30, 5, 'Đã nhận', 'received', 0, '0', 200, '2022-05-20 02:06:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, '', 'about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page_store`
--

CREATE TABLE `sc_shop_page_store` (
  `page_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page_store`
--

INSERT INTO `sc_shop_page_store` (`page_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(21, 'ALOKK1-AY', NULL, NULL, NULL, NULL, NULL, '/data/product/product-10.jpg', 3, 1, 15000, 10000, 95, 5, 0, '', 0, '', 0, 0, 0, 0, 'physical', 'auto', 1, 0, 4, 'demo-alias-name-product-21', '2022-05-20 09:04:21', NULL, NULL, '2022-05-20 02:04:21'),
(22, 'MITOM-AY', NULL, NULL, NULL, NULL, NULL, '/data/product/product-2.jpg', 3, 1, 15000, 10000, 97, 3, 0, '', 0, '', 0, 0, 0, 0, 'physical', 'auto', 1, 0, 2, 'demo-alias-name-product-22', '2022-05-20 08:44:10', NULL, NULL, '2022-05-20 02:06:55'),
(24, 'BANHTRANG-12', NULL, NULL, NULL, NULL, NULL, '/data/product/product-1.jpg', 3, 1, 15000, 10000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 'physical', 'auto', 1, 0, 3, 'demo-alias-name-product-24', '2022-05-20 08:49:28', NULL, NULL, '2022-05-20 01:49:28'),
(25, 'AFFGHAQ', NULL, NULL, NULL, NULL, NULL, '/data/product/product-7.jpg', 0, 0, 250000, 200000, 98, 2, 0, 'oz', 0, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 3, 'giay-sneaker-da-logo-rhyton-gucci', '2022-05-20 09:08:59', '2022-05-19', '2022-05-19 08:21:11', '2022-05-20 02:08:59'),
(26, 'AFFGH', NULL, NULL, NULL, NULL, NULL, '/data/product/product-4.jpg', 0, 0, 550000, 300000, 89, 11, 0, 'oz', 0, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 30, 'fila-disruptor-2', '2022-05-20 08:42:02', NULL, '2022-05-19 08:24:06', '2022-05-20 01:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_attribute`
--

INSERT INTO `sc_shop_product_attribute` (`id`, `name`, `attribute_group_id`, `product_id`, `add_price`, `sort`, `status`) VALUES
(17, 'Blue', 1, 24, 50, 0, 1),
(18, 'White', 1, 24, 0, 0, 1),
(19, 'S', 2, 24, 20, 0, 1),
(20, 'XL', 2, 24, 30, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
(21, 14),
(22, 14),
(24, 15),
(25, 16),
(26, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` bigint(20) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(21, 'en', 'Louis Vuitton – Archlight', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(21, 'vi', 'Louis Vuitton – Archlight', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(22, 'en', 'Balenciaga Triple S', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(22, 'vi', 'Balenciaga Triple S', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(24, 'en', 'Alexander McQueen', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(24, 'vi', 'Alexander McQueen', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(25, 'en', 'Giày sneaker da logo Rhyton Gucci', NULL, NULL, 'a'),
(25, 'vi', 'Giày sneaker da logo Rhyton Gucci', NULL, NULL, 'a'),
(26, 'en', 'Fila Disruptor 2', 'Fila Disruptor 2', 'a', 'a'),
(26, 'vi', 'Fila Disruptor 2', 'Fila Disruptor 2', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_download`
--

CREATE TABLE `sc_shop_product_download` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` bigint(20) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_promotion`
--

INSERT INTO `sc_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(22, 600, NULL, NULL, 1, '2022-05-19 08:22:05', '2022-05-19 08:22:05'),
(25, 239000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2022-05-19 08:21:11', '2022-05-19 08:21:11'),
(26, 450000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2022-05-19 08:24:06', '2022-05-19 08:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_property`
--

CREATE TABLE `sc_shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_property`
--

INSERT INTO `sc_shop_product_property` (`id`, `code`, `name`) VALUES
(1, 'physical', 'Product physical'),
(2, 'download', 'Product download');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_store`
--

CREATE TABLE `sc_shop_product_store` (
  `product_id` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_store`
--

INSERT INTO `sc_shop_product_store` (`product_id`, `store_id`) VALUES
(21, 1),
(22, 1),
(24, 1),
(25, 1),
(26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`, `template`) VALUES
(65, 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 1, 's-cart-light'),
(66, 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 1, 's-cart-light'),
(67, 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 1, 's-cart-light'),
(68, 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 1, 's-cart-light'),
(69, 'Category left (s-cart-light)', 'left', 'shop_product_list', 'view', 'category_left', 1, 20, 1, 's-cart-light'),
(70, 'Brand left (s-cart-light)', 'left', 'shop_product_list', 'view', 'brand_left', 1, 30, 1, 's-cart-light'),
(71, 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 1, 's-cart-light'),
(72, 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 1, 's-cart-light');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`, `template`) VALUES
('####CSS HERE ######', 1, 's-cart-light');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_subscribe`
--

INSERT INTO `sc_shop_subscribe` (`id`, `email`, `phone`, `content`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'a@gmail.com', NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_tax`
--

INSERT INTO `sc_shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Indexes for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Indexes for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Indexes for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`),
  ADD KEY `sc_admin_store_partner_index` (`partner`);

--
-- Indexes for table `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Indexes for table `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_template_key_unique` (`key`);

--
-- Indexes for table `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Indexes for table `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Indexes for table `sc_languages`
--
ALTER TABLE `sc_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_languages_code_location_unique` (`code`,`location`),
  ADD KEY `sc_languages_code_index` (`code`),
  ADD KEY `sc_languages_position_index` (`position`),
  ADD KEY `sc_languages_location_index` (`location`);

--
-- Indexes for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`);

--
-- Indexes for table `sc_shop_banner_store`
--
ALTER TABLE `sc_shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Indexes for table `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`);

--
-- Indexes for table `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_brand_store`
--
ALTER TABLE `sc_shop_brand_store`
  ADD PRIMARY KEY (`brand_id`,`store_id`);

--
-- Indexes for table `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_category_store`
--
ALTER TABLE `sc_shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Indexes for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Indexes for table `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Indexes for table `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_type_index` (`type`),
  ADD KEY `sc_shop_custom_field_code_index` (`code`);

--
-- Indexes for table `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Indexes for table `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Indexes for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Indexes for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Indexes for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Indexes for table `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_link_store`
--
ALTER TABLE `sc_shop_link_store`
  ADD PRIMARY KEY (`link_id`,`store_id`);

--
-- Indexes for table `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Indexes for table `sc_shop_news_store`
--
ALTER TABLE `sc_shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indexes for table `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_customer_id_index` (`customer_id`),
  ADD KEY `sc_shop_order_device_type_index` (`device_type`),
  ADD KEY `sc_shop_order_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_page_store`
--
ALTER TABLE `sc_shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Indexes for table `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Indexes for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Indexes for table `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Indexes for table `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_property_code_unique` (`code`);

--
-- Indexes for table `sc_shop_product_store`
--
ALTER TABLE `sc_shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Indexes for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`),
  ADD KEY `sc_shop_store_block_template_index` (`template`);

--
-- Indexes for table `sc_shop_store_css`
--
ALTER TABLE `sc_shop_store_css`
  ADD UNIQUE KEY `sc_shop_store_css_store_id_template_unique` (`store_id`,`template`);

--
-- Indexes for table `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_languages`
--
ALTER TABLE `sc_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2633;

--
-- AUTO_INCREMENT for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
