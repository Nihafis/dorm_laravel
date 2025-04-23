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

-- Dumping data for table laravel_demo.customers: ~1 rows (approximately)
INSERT INTO `customers` (`id`, `room_id`, `name`, `phone`, `address`, `created_at`, `remark`, `status`, `stay_type`, `price`) VALUES
	(1, 100, 'แดงดำcf', '014584825', 'ปปปป', '2025-04-23 00:00:00', '0', 'use', 'm', 1500),
	(2, 87, 'แดง', NULL, NULL, '2025-04-23 00:00:00', NULL, 'delete', 'm', 1500),
	(3, 98, '1231', '123213', '123213', '2025-04-23 00:00:00', '123', 'use', 'd', 500);

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

-- Dumping data for table laravel_demo.rooms: ~20 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `price_per_day`, `price_per_month`, `status`, `is_empty`) VALUES
	(81, 1, 500, 1500, 'use', 'yes'),
	(82, 2, 500, 1500, 'use', 'yes'),
	(83, 3, 500, 1500, 'use', 'yes'),
	(84, 4, 500, 1500, 'use', 'yes'),
	(85, 5, 500, 1500, 'use', 'yes'),
	(86, 6, 500, 1500, 'use', 'yes'),
	(87, 7, 500, 1500, 'use', 'no'),
	(88, 8, 500, 1500, 'use', 'yes'),
	(89, 9, 500, 1500, 'use', 'no'),
	(90, 10, 500, 1500, 'use', 'no'),
	(91, 11, 500, 1500, 'use', 'no'),
	(92, 12, 500, 1500, 'use', 'yes'),
	(93, 13, 500, 1500, 'use', 'yes'),
	(94, 14, 500, 1500, 'use', 'yes'),
	(95, 15, 500, 1500, 'use', 'yes'),
	(96, 16, 500, 1500, 'use', 'yes'),
	(97, 17, 500, 1500, 'use', 'yes'),
	(98, 18, 500, 1500, 'use', 'no'),
	(99, 19, 500, 1500, 'use', 'no'),
	(100, 20, 500, 1500, 'use', 'no');

-- Dumping data for table laravel_demo.sessions: ~2 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('FewNPLFwbPIC0QAl7TAyJ9EC5NbD9kSqZlJCM28Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiOWhpcG5NV3Y0eVZhdHRuSTlaaUdTckRXZ2NNREZuYkZVdTNsTzVNMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdXN0b21lciI7fXM6NzoidXNlcl9pZCI7aToxMztzOjk6InVzZXJfbmFtZSI7czo1OiJhZG1pbiI7czoxMjoiY3VycmVudF9tZW51IjtzOjg6ImN1c3RvbWVyIjt9', 1745399175);

-- Dumping data for table laravel_demo.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(11, 'asdasd123', 'test@gmail.com', NULL, '$2y$12$6f1nClUyQUN.iiv.g8ILLubtfUDWjSUokfnkRZZchmFYDx6REoeju', NULL, NULL, NULL),
	(13, 'admin', 'admin@mail.com', '2025-04-18 07:56:54', '$2y$12$nYaBF23Knz01pcP1Ja.2M.64cOCEHr9w59d/xJa7TQMXc110oGeJO', NULL, NULL, '2025-04-23 00:49:08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
