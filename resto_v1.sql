-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 30 sep. 2023 à 13:37
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `resto_v1`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 9, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-09-30 10:49:48'),
(2, 0, 10, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-09-30 10:49:48'),
(3, 2, 11, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-09-30 10:49:48'),
(4, 2, 12, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-09-30 10:49:48'),
(5, 2, 13, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-09-30 10:49:48'),
(6, 2, 14, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-09-30 10:49:48'),
(7, 2, 15, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-09-30 10:49:48'),
(8, 0, 1, 'Users', 'fa-user-plus', 'users', NULL, '2023-09-30 10:32:34', '2023-09-30 10:54:43'),
(9, 0, 2, 'Users', 'fa-bars', 'users', NULL, '2023-09-30 10:32:59', '2023-09-30 10:49:48'),
(10, 0, 3, 'Orders', 'fa-bars', 'orders', NULL, '2023-09-30 10:43:19', '2023-09-30 10:49:48'),
(11, 0, 4, 'Category', 'fa-bars', 'category', NULL, '2023-09-30 10:48:34', '2023-09-30 10:49:48'),
(12, 0, 5, 'Dishes', 'fa-bars', 'dishes', NULL, '2023-09-30 10:48:48', '2023-09-30 10:49:48'),
(13, 0, 6, 'Ingredients', 'fa-bars', 'ingredients', NULL, '2023-09-30 10:49:08', '2023-09-30 10:49:48'),
(14, 0, 7, 'Origins', 'fa-bars', 'origins', NULL, '2023-09-30 10:49:25', '2023-09-30 10:49:48'),
(15, 0, 8, 'Tables', 'fa-bars', 'tables', NULL, '2023-09-30 10:49:38', '2023-09-30 10:49:48');

-- --------------------------------------------------------

--
-- Structure de la table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-30 10:31:46', '2023-09-30 10:31:46'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:32:09', '2023-09-30 10:32:09'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"User\",\"icon\":\"fa-user-plus\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:32:34', '2023-09-30 10:32:34'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:32:34', '2023-09-30 10:32:34'),
(5, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:32:51', '2023-09-30 10:32:51'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:32:52', '2023-09-30 10:32:52'),
(7, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:32:59', '2023-09-30 10:32:59'),
(8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:33:00', '2023-09-30 10:33:00'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:33:04', '2023-09-30 10:33:04'),
(10, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:33:13', '2023-09-30 10:33:13'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:38:37', '2023-09-30 10:38:37'),
(12, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-bars\",\"uri\":\"orders\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:43:19', '2023-09-30 10:43:19'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:43:37', '2023-09-30 10:43:37'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-bars\",\"uri\":\"category\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:48:34', '2023-09-30 10:48:34'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:48:35', '2023-09-30 10:48:35'),
(16, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dishes\",\"icon\":\"fa-bars\",\"uri\":\"dishes\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:48:48', '2023-09-30 10:48:48'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:48:49', '2023-09-30 10:48:49'),
(18, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Ingredients\",\"icon\":\"fa-bars\",\"uri\":\"ingredients\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:49:08', '2023-09-30 10:49:08'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:49:08', '2023-09-30 10:49:08'),
(20, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Origins\",\"icon\":\"fa-bars\",\"uri\":\"origins\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:49:25', '2023-09-30 10:49:25'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:49:26', '2023-09-30 10:49:26'),
(22, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Tables\",\"icon\":\"fa-bars\",\"uri\":\"tables\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\"}', '2023-09-30 10:49:38', '2023-09-30 10:49:38'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:49:39', '2023-09-30 10:49:39'),
(24, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-09-30 10:49:48', '2023-09-30 10:49:48'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:49:49', '2023-09-30 10:49:49'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:49:59', '2023-09-30 10:49:59'),
(27, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:16', '2023-09-30 10:50:16'),
(28, 1, 'admin/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:20', '2023-09-30 10:50:20'),
(29, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:29', '2023-09-30 10:50:29'),
(30, 1, 'admin/tables', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:39', '2023-09-30 10:50:39'),
(31, 1, 'admin/tables/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:42', '2023-09-30 10:50:42'),
(32, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:50:47', '2023-09-30 10:50:47'),
(33, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:09', '2023-09-30 10:54:09'),
(34, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:15', '2023-09-30 10:54:15'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:24', '2023-09-30 10:54:24'),
(36, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:29', '2023-09-30 10:54:29'),
(37, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-user-plus\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2023-09-30 10:54:43', '2023-09-30 10:54:43'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-09-30 10:54:44', '2023-09-30 10:54:44'),
(39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:48', '2023-09-30 10:54:48'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:52', '2023-09-30 10:54:52'),
(41, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:54:57', '2023-09-30 10:54:57'),
(42, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:55:02', '2023-09-30 10:55:02'),
(43, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-30 10:55:05', '2023-09-30 10:55:05'),
(44, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"Rachel\",\"email\":\"rachle@gmail.com\",\"email_verified_at\":\"2023-09-30 12:55:05\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"zQl3yKKpiTHGgxOPFapJuylsT0ESEDGbdCRty3qj\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/users\"}', '2023-09-30 10:55:36', '2023-09-30 10:55:36'),
(45, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-09-30 10:55:36', '2023-09-30 10:55:36');

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-09-30 10:28:58', '2023-09-30 10:28:58');

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$la4XXOHbyM9Ue27N4QFXNeTAiH7DUrhjb5/Pn7/9g4K8pVW5n/LaW', 'Administrator', NULL, 'SZpNWhhKRMd9cQExDDKfc02cnbKEYDdI6DLlDxuUnzvXLq06ohsF9XziICI1', '2023-09-30 10:28:58', '2023-09-30 10:28:58');

-- --------------------------------------------------------

--
-- Structure de la table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'poissons', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(2, 'poissons', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(3, 'légumes', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(4, 'soupes', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(5, 'légumes', '2023-09-12 09:12:29', '2023-09-12 09:12:29');

-- --------------------------------------------------------

--
-- Structure de la table `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `origin_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `preparation_time` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dishes`
--

INSERT INTO `dishes` (`id`, `category_id`, `origin_id`, `name`, `price`, `preparation_time`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 'Bœuf', 65.00, 32, 'Omnis voluptate fugit aut autem consequatur. Eos ut et ratione amet et. Qui quo suscipit sunt quod aut veniam vel. Ut eius deserunt repellat aut non.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(3, 3, 2, 'Ntaba', 27.00, 24, 'Illo id aut sed enim ea. Dolorem amet voluptatem fuga quis rem vel. Aut qui suscipit aut distinctio. Voluptate tenetur eum molestias dolorem error saepe nam.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(4, 3, 4, 'Veau', 31.00, 29, 'Quibusdam ut exercitationem nihil nihil. Qui exercitationem quis qui est dolor alias magni. Dicta esse aut voluptatem voluptatem voluptate sunt quam voluptatem.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(5, 2, 5, 'Salade de tomate', 22.00, 10, 'Facilis nihil et nobis. Provident qui quia rerum alias ipsa. Veritatis dignissimos non amet quo. Ex minus aperiam dolores qui vel ut. Iste expedita eos ipsam aspernatur cum.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(6, 3, 3, 'Riz au manioc', 7.00, 33, 'Eos et vel repudiandae qui ut. Quia iusto aut ex omnis aut omnis. Adipisci architecto officia repellendus praesentium minus ullam. Ut odit est sunt sunt.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(7, 3, 4, 'Salade de courgettes', 16.00, 8, 'Et magni harum autem est fugiat magni. Reiciendis cumque necessitatibus qui repudiandae vel. Nobis modi animi beatae consequatur dolorem deserunt sint.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(8, 3, 1, 'Viandes', 11.00, 8, 'Ea aut amet sed accusantium excepturi tempora voluptate. Est dicta minima fuga.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(9, 1, 4, 'Soupes', 5.00, 33, 'Aut ipsam ut id consequatur. Quam eos eum pariatur in. Consequatur accusantium delectus sit illum beatae. Asperiores adipisci voluptatum maiores fuga sint aut.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(10, 3, 1, 'Salade de tomate', 89.00, 34, 'Consequatur laudantium ducimus qui sit. Sit quaerat sed error eos nemo. Nulla explicabo in sit cum et. Ducimus et eos voluptatibus saepe at similique. Quam ratione vel sequi tenetur.', NULL, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(11, 5, 2, 'Hollee Maxwell', 595.00, 65, 'Enim maxime quis vol', 'photos/KeVLnC79OjiEqz2Uu2gTl73JV196x6KA3EiHCpom.jpg', '2023-09-12 16:21:01', '2023-09-12 16:21:01');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'farine', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(2, 'cumin', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(3, 'menthe', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(4, 'curcuma', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(5, 'ail', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(6, 'beurre', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(7, 'yams', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(8, 'tomates', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(9, 'lait', '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(10, 'poivrons', '2023-09-12 09:12:29', '2023-09-12 09:12:29');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2023_08_18_203051_create_origins_table', 1),
(30, '2023_08_19_084805_create_ingredients_table', 1),
(31, '2023_08_19_092958_create_categories_table', 1),
(32, '2023_08_19_125609_create_tables_table', 1),
(33, '2023_08_19_151133_create_dishes_table', 1),
(34, '2023_08_20_194815_create_orders_table', 1),
(35, '2023_08_21_113612_create_order_dishes_table', 1),
(36, '2016_01_04_173148_create_admin_tables', 2);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `table_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `table_id`, `created_at`, `updated_at`) VALUES
(15, 3, '2023-09-24 13:52:53', '2023-09-24 13:52:53'),
(16, 5, '2023-09-24 14:42:42', '2023-09-24 14:42:42'),
(17, 1, '2023-09-27 17:39:14', '2023-09-27 17:39:14'),
(18, 1, '2023-09-27 17:49:00', '2023-09-27 17:49:00');

-- --------------------------------------------------------

--
-- Structure de la table `order_dishes`
--

CREATE TABLE `order_dishes` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `dish_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_dishes`
--

INSERT INTO `order_dishes` (`id`, `order_id`, `dish_id`, `created_at`, `updated_at`) VALUES
(20, 15, 1, NULL, NULL),
(21, 15, 3, NULL, NULL),
(22, 15, 5, NULL, NULL),
(23, 16, 10, NULL, NULL),
(24, 16, 11, NULL, NULL),
(25, 17, 5, NULL, NULL),
(26, 18, 6, NULL, NULL),
(27, 18, 7, NULL, NULL),
(28, 18, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `origins`
--

CREATE TABLE `origins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `origins`
--

INSERT INTO `origins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Venezuela', '2023-09-12 09:12:28', '2023-09-12 09:12:28'),
(2, 'Palestinian Territories', '2023-09-12 09:12:28', '2023-09-12 09:12:28'),
(3, 'United Kingdom', '2023-09-12 09:12:28', '2023-09-12 09:12:28'),
(4, 'Cote d\'Ivoire', '2023-09-12 09:12:28', '2023-09-12 09:12:28'),
(5, 'Dominican Republic', '2023-09-12 09:12:28', '2023-09-12 09:12:28');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'c10ee963b0529c851ed60b91344bd1a42e0d7de8f77a7275170b2cf0984cb6b5', '[\"*\"]', NULL, NULL, '2023-09-28 18:17:33', '2023-09-28 18:17:33'),
(2, 'App\\Models\\User', 1, 'API TOKEN', 'cd2e2f5abb80e176df5535278340096dcc51cb476f0e7d9d91ebce8ffd336517', '[\"*\"]', NULL, NULL, '2023-09-28 18:20:00', '2023-09-28 18:20:00'),
(3, 'App\\Models\\User', 2, 'API TOKEN', 'fc159689a6440b94aa52f4cce8afc7f88f4a8ef87311fb63fdf2f97113bc4cae', '[\"*\"]', NULL, NULL, '2023-09-29 17:04:35', '2023-09-29 17:04:35'),
(4, 'App\\Models\\User', 2, 'API TOKEN', '261dccb66034c532a256a964884fdef7542ed22e1827745fdf4e29ffb28b8b2a', '[\"*\"]', NULL, NULL, '2023-09-29 17:04:54', '2023-09-29 17:04:54'),
(5, 'App\\Models\\User', 2, 'API TOKEN', 'c97647670bd4be775db1dcad4c6a851a7deb54bd5bff4c394c44f46b4322da9a', '[\"*\"]', NULL, NULL, '2023-09-29 17:07:15', '2023-09-29 17:07:15'),
(6, 'App\\Models\\User', 2, 'API TOKEN', '98e70465b7a1b9378e86c359e56170b5a6946eb33111d8fb8fb0a1465cf77552', '[\"*\"]', NULL, NULL, '2023-09-29 17:09:03', '2023-09-29 17:09:03'),
(7, 'App\\Models\\User', 2, 'API TOKEN', '1da590e369998f779fd82c8bfdc5a088b76b1ea4e4ec9d38b9559551930ee52d', '[\"*\"]', NULL, NULL, '2023-09-29 17:09:05', '2023-09-29 17:09:05'),
(8, 'App\\Models\\User', 2, 'API TOKEN', '9eb6d58554552d1e9cfab51395cfc3f918eec18090cf5af4a76002076eeefc7e', '[\"*\"]', NULL, NULL, '2023-09-29 17:46:45', '2023-09-29 17:46:45'),
(9, 'App\\Models\\User', 2, 'API TOKEN', '12eb54d81ac42ee0b61bf8d4fe703b4508a6b9aa02e33b73b7f38cad1b09e992', '[\"*\"]', NULL, NULL, '2023-09-29 17:47:04', '2023-09-29 17:47:04'),
(10, 'App\\Models\\User', 2, 'API TOKEN', '72af91ebeca2423fc83937284797b9752655f5fa23b574df8e9bed2afe3d255d', '[\"*\"]', NULL, NULL, '2023-09-29 17:47:08', '2023-09-29 17:47:08'),
(11, 'App\\Models\\User', 2, 'API TOKEN', '9a0326aab82a771218c6c65d6a8c0c7e68274597455f4ef9e70c4a2291c93a0f', '[\"*\"]', NULL, NULL, '2023-09-29 17:47:12', '2023-09-29 17:47:12'),
(12, 'App\\Models\\User', 2, 'API TOKEN', '1385e18b1d831c8b9b9432112954da9ec61f27c3a1e164e8012322b3e196da5b', '[\"*\"]', NULL, NULL, '2023-09-29 18:18:11', '2023-09-29 18:18:11'),
(13, 'App\\Models\\User', 2, 'API TOKEN', 'e47a171fde77a807ab050ecbd1b2e2c7b0eeeeb02f795d579c28aeadaa79b849', '[\"*\"]', NULL, NULL, '2023-09-29 18:18:28', '2023-09-29 18:18:28'),
(14, 'App\\Models\\User', 2, 'API TOKEN', '4a43df1764988009e970740c185c687057348c3cacaae826758380f385fa4115', '[\"*\"]', NULL, NULL, '2023-09-29 18:18:29', '2023-09-29 18:18:29'),
(15, 'App\\Models\\User', 2, 'API TOKEN', 'f6eaccb56a42ac7991dfe1dd3fece191acb84cd414e472f5fdc4934e369cdfd1', '[\"*\"]', NULL, NULL, '2023-09-29 18:18:31', '2023-09-29 18:18:31'),
(16, 'App\\Models\\User', 2, 'API TOKEN', 'b89bd50ec0f7bcf2a368065fa4d27b7aecfb21e87f81f4144b9339bd39b68f12', '[\"*\"]', NULL, NULL, '2023-09-30 10:52:20', '2023-09-30 10:52:20'),
(17, 'App\\Models\\User', 3, 'API TOKEN', '7796390d4d0da72fffa578e803072b08e7ff9a8a6aa4ee9dd335b14313568e60', '[\"*\"]', NULL, NULL, '2023-09-30 10:55:59', '2023-09-30 10:55:59');

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `id` bigint UNSIGNED NOT NULL,
  `number` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tables`
--

INSERT INTO `tables` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, 5, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(2, 5, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(3, 7, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(4, 2, '2023-09-12 09:12:29', '2023-09-12 09:12:29'),
(5, 6, '2023-09-12 09:12:29', '2023-09-12 09:12:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kash26', 'isaackashiya2@gmail.com', NULL, '$2y$10$yHQSvAKVSZ1/H75lc8HNZeWDBdNkN6da95uTMblqRM55h/XuRbKF2', NULL, '2023-09-28 18:17:33', '2023-09-28 18:17:33'),
(2, 'Master', 'isaackashiya@gmail.com', NULL, '$2y$10$yB0d8ZWFMb6c2hAyF/ZUTOoOlsHH6BKM4oMz2hWYAv.0t0/Fg5Oum', NULL, '2023-09-29 17:04:34', '2023-09-29 17:04:34'),
(3, 'Rachel', 'rachle@gmail.com', '2023-09-30 10:55:05', '$2y$10$GaHkMrcCEfldFDwfqnLzdud0LzTeP5FsHHI/DykWza9zFrtoCf4NS', NULL, '2023-09-30 10:55:36', '2023-09-30 10:55:36');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Index pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Index pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Index pour la table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Index pour la table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Index pour la table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Index pour la table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dishes_category_id_foreign` (`category_id`),
  ADD KEY `dishes_origin_id_foreign` (`origin_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_table_id_foreign` (`table_id`);

--
-- Index pour la table `order_dishes`
--
ALTER TABLE `order_dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_dishes_order_id_foreign` (`order_id`),
  ADD KEY `order_dishes_dish_id_foreign` (`dish_id`);

--
-- Index pour la table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `order_dishes`
--
ALTER TABLE `order_dishes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `dishes_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Contraintes pour la table `order_dishes`
--
ALTER TABLE `order_dishes`
  ADD CONSTRAINT `order_dishes_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`),
  ADD CONSTRAINT `order_dishes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
