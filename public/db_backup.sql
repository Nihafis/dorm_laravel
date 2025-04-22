-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_demo
CREATE DATABASE IF NOT EXISTS `laravel_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `laravel_demo`;

-- Dumping data for table laravel_demo.cache: ~2 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1745292484),
	('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1745292484;', 1745292484);

-- Dumping data for table laravel_demo.cache_locks: ~0 rows (approximately)

-- Dumping data for table laravel_demo.customers: ~0 rows (approximately)

-- Dumping data for table laravel_demo.failed_jobs: ~0 rows (approximately)

-- Dumping data for table laravel_demo.jobs: ~0 rows (approximately)

-- Dumping data for table laravel_demo.job_batches: ~0 rows (approximately)

-- Dumping data for table laravel_demo.migrations: ~2 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Dumping data for table laravel_demo.organizations: ~0 rows (approximately)
INSERT INTO `organizations` (`id`, `name`, `phone`, `address`, `tax_code`, `logo`) VALUES
	(1, '0', '1', '1', '1', 'organizations/ecBQka0YYKIVDwMp1Jpvx3VmrNoIdfbCsHGDoyCq.png');

-- Dumping data for table laravel_demo.password_reset_tokens: ~0 rows (approximately)

-- Dumping data for table laravel_demo.product: ~1 rows (approximately)
INSERT INTO `product` (`id`, `name`, `price`, `qty`, `detail`) VALUES
	(1, 'apple', 10, 1, 'red apple');

-- Dumping data for table laravel_demo.rooms: ~80 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `price_per_day`, `price_per_month`, `status`, `is_empty`) VALUES
	(1, 1, 5000, 1000, 'use', NULL),
	(2, 2, 5000, 1000, 'use', NULL),
	(3, 3, 5000, 1000, 'use', NULL),
	(4, 4, 5000, 1000, 'use', NULL),
	(5, 5, 5000, 1000, 'use', NULL),
	(6, 6, 5000, 1000, 'use', NULL),
	(7, 7, 5000, 1000, 'use', NULL),
	(8, 8, 5000, 1000, 'use', NULL),
	(9, 9, 5000, 1000, 'use', NULL),
	(10, 10, 5000, 1000, 'use', NULL),
	(11, 11, 5000, 1000, 'use', NULL),
	(12, 12, 5000, 1000, 'use', NULL),
	(13, 13, 5000, 1000, 'use', NULL),
	(14, 14, 5000, 1000, 'use', NULL),
	(15, 15, 5000, 1000, 'use', NULL),
	(16, 16, 5000, 1000, 'use', NULL),
	(17, 17, 5000, 1000, 'use', NULL),
	(18, 18, 5000, 1000, 'use', NULL),
	(19, 19, 5000, 1000, 'use', NULL),
	(20, 20, 5000, 1000, 'use', NULL),
	(21, 21, 5000, 1000, 'use', NULL),
	(22, 22, 5000, 1000, 'use', NULL),
	(23, 23, 5000, 1000, 'use', NULL),
	(24, 24, 5000, 1000, 'use', NULL),
	(25, 25, 5000, 1000, 'use', NULL),
	(26, 26, 5000, 1000, 'use', NULL),
	(27, 27, 5000, 1000, 'use', NULL),
	(28, 28, 5000, 1000, 'use', NULL),
	(29, 29, 5000, 1000, 'use', NULL),
	(30, 30, 5000, 1000, 'use', NULL),
	(31, 31, 5000, 1000, 'use', NULL),
	(32, 32, 5000, 1000, 'use', NULL),
	(33, 33, 5000, 1000, 'use', NULL),
	(34, 34, 5000, 1000, 'use', NULL),
	(35, 35, 5000, 1000, 'use', NULL),
	(36, 36, 5000, 1000, 'use', NULL),
	(37, 37, 5000, 1000, 'use', NULL),
	(38, 38, 5000, 1000, 'use', NULL),
	(39, 39, 5000, 1000, 'use', NULL),
	(40, 40, 5000, 1000, 'use', NULL),
	(41, 1, 100, 100, 'use', NULL),
	(42, 2, 100, 100, 'use', NULL),
	(43, 3, 100, 100, 'use', NULL),
	(44, 4, 100, 100, 'use', NULL),
	(45, 5, 100, 100, 'use', NULL),
	(46, 6, 100, 100, 'use', NULL),
	(47, 7, 100, 100, 'use', NULL),
	(48, 8, 100, 100, 'use', NULL),
	(49, 9, 100, 100, 'use', NULL),
	(50, 10, 100, 100, 'use', NULL),
	(51, 11, 100, 100, 'use', NULL),
	(52, 12, 100, 100, 'use', NULL),
	(53, 13, 100, 100, 'use', NULL),
	(54, 14, 100, 100, 'use', NULL),
	(55, 15, 100, 100, 'use', NULL),
	(56, 16, 100, 100, 'use', NULL),
	(57, 17, 100, 100, 'use', NULL),
	(58, 18, 100, 100, 'use', NULL),
	(59, 19, 100, 100, 'use', NULL),
	(60, 20, 100, 100, 'use', NULL),
	(61, 21, 100, 100, 'use', NULL),
	(62, 22, 100, 100, 'use', NULL),
	(63, 23, 100, 100, 'use', NULL),
	(64, 24, 100, 100, 'use', NULL),
	(65, 25, 100, 100, 'use', NULL),
	(66, 26, 100, 100, 'use', NULL),
	(67, 27, 100, 100, 'use', NULL),
	(68, 28, 100, 100, 'use', NULL),
	(69, 29, 100, 100, 'use', NULL),
	(70, 30, 100, 100, 'use', NULL),
	(71, 31, 100, 100, 'use', NULL),
	(72, 32, 100, 100, 'use', NULL),
	(73, 33, 100, 100, 'use', NULL),
	(74, 34, 100, 100, 'use', NULL),
	(75, 35, 100, 100, 'use', NULL),
	(76, 36, 100, 100, 'use', NULL),
	(77, 37, 100, 100, 'use', NULL),
	(78, 40, 1000, 1500, 'deleted', NULL),
	(79, 39, 100, 100, 'deleted', NULL),
	(80, 40, 100, 100, 'deleted', NULL);

-- Dumping data for table laravel_demo.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('rKea7qUUEnBZlMijZIdKqtSC1CAQ4x34LmrzWWKD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiTVoyZTdnYmlUbHhFYW5PNDZPb0w1cWhDZW1EeUJ0dlZhVDBOZVRacyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjc6InVzZXJfaWQiO2k6MTM7czo5OiJ1c2VyX25hbWUiO3M6NjoiYWRtaW4yIjt9', 1745315576);

-- Dumping data for table laravel_demo.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(11, 'asdasd123', 'test@gmail.com', NULL, '$2y$12$6f1nClUyQUN.iiv.g8ILLubtfUDWjSUokfnkRZZchmFYDx6REoeju', NULL, NULL, NULL),
	(13, 'admin2', 'admin@mail.com', '2025-04-18 07:56:54', '$2y$12$p.G9B9WY7VruCg22oHGga.pA9Y78r5h0ARo.SV6gUyTJEB1tZlMha', NULL, NULL, '2025-04-22 02:36:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
