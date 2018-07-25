-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour softhorizon
CREATE DATABASE IF NOT EXISTS `softhorizon` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `softhorizon`;

-- Export de la structure de la table softhorizon. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table softhorizon.categories : ~0 rows (environ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Export de la structure de la table softhorizon. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table softhorizon.migrations : ~6 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_07_23_155035_create_products_table', 1),
	(4, '2018_07_24_092236_create_categories_table', 1),
	(5, '2018_07_24_094504_alter_categories_add_description_column', 1),
	(6, '2018_07_25_134356_alter_products_add_column_userid', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Export de la structure de la table softhorizon. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table softhorizon.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Export de la structure de la table softhorizon. products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table softhorizon.products : ~6 rows (environ)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `label`, `description`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Windev', 'description windev', 2, 1, '2018-07-25 14:29:33', '2018-07-25 14:29:33'),
	(2, 'Livreddd', 'zdzdzdzdzd', 2, 0, '2018-07-25 14:31:00', '2018-07-25 14:31:00'),
	(3, 'Cars', 'cars description', 1, 1, '2018-07-25 14:31:35', '2018-07-25 14:31:35'),
	(4, 'Gestion en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est sed repellat veritatis quasi, cumque, enim dolorem molestiae illo necessitatibus. Perferendis atque, cupiditate aliquid qui quia facilis dicta natus doloribus autem', 2, 1, '2018-07-25 14:49:54', '2018-07-25 14:49:54'),
	(5, 'Booksssx', 'veeefefef', 2, 1, '2018-07-25 15:21:05', '2018-07-25 15:21:05'),
	(6, 'Livre test', 'test test test', 1, 1, '2018-07-25 15:21:30', '2018-07-25 15:21:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Export de la structure de la table softhorizon. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Export de données de la table softhorizon.users : ~2 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `profile`, `created_at`, `updated_at`) VALUES
	(1, 'Mohamed IDBRAHIM', 'idbrahimdev@gmail.com', '$2y$10$xR4WeADETNEZiWp/PI4xGu3dNFDdYIi.EgdMCe145sBz6bmP8pN4G', 'CEKybysL5Sulby1FfYnsO3QSzLL1nbmwA6r85TvvnuEkq3vyvQKudQhbgiNf', 'user', '2018-07-25 14:10:40', '2018-07-25 14:10:40'),
	(2, 'Zoubir KARROUT', 'zoubirkarrout@gmail.com', '$2y$10$xR4WeADETNEZiWp/PI4xGu3dNFDdYIi.EgdMCe145sBz6bmP8pN4G', 'JxNEH195AUU3F6aoK7qS76wO4tLHoT5vG8URK7WRsGFcP1MEtB5bISvp6lz2', 'admin', '2018-07-25 14:18:56', '2018-07-25 14:18:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
