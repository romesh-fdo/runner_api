-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2021 at 09:13 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `runner_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbm_failed_jobs`
--

DROP TABLE IF EXISTS `tbm_failed_jobs`;
CREATE TABLE IF NOT EXISTS `tbm_failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbm_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_form_data`
--

DROP TABLE IF EXISTS `tbm_form_data`;
CREATE TABLE IF NOT EXISTS `tbm_form_data` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `runner_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Career` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `1stUp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `2ndUp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `3rdUp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `4thUp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_last_runs`
--

DROP TABLE IF EXISTS `tbm_last_runs`;
CREATE TABLE IF NOT EXISTS `tbm_last_runs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `runner_id` int NOT NULL,
  `date` date NOT NULL,
  `place` int NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbm_last_runs`
--

INSERT INTO `tbm_last_runs` (`id`, `runner_id`, `date`, `place`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-01', 4, 'Colombo', NULL, NULL),
(2, 12, '2021-11-04', 1, 'Negombo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbm_meetings`
--

DROP TABLE IF EXISTS `tbm_meetings`;
CREATE TABLE IF NOT EXISTS `tbm_meetings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_migrations`
--

DROP TABLE IF EXISTS `tbm_migrations`;
CREATE TABLE IF NOT EXISTS `tbm_migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbm_migrations`
--

INSERT INTO `tbm_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_06_064025_create_meetings_table', 1),
(6, '2021_11_06_064059_create_form_data_table', 1),
(7, '2021_11_06_064110_create_last_run_table', 1),
(8, '2021_11_06_064126_create_race_table', 1),
(9, '2021_11_06_064138_creat_runner_table', 1),
(10, '2021_11_06_064146_creat_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbm_password_resets`
--

DROP TABLE IF EXISTS `tbm_password_resets`;
CREATE TABLE IF NOT EXISTS `tbm_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `tbm_password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_personal_access_tokens`
--

DROP TABLE IF EXISTS `tbm_personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `tbm_personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbm_personal_access_tokens_token_unique` (`token`),
  KEY `tbm_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_races`
--

DROP TABLE IF EXISTS `tbm_races`;
CREATE TABLE IF NOT EXISTS `tbm_races` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbm_runners`
--

DROP TABLE IF EXISTS `tbm_runners`;
CREATE TABLE IF NOT EXISTS `tbm_runners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `runner_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbm_runners`
--

INSERT INTO `tbm_runners` (`id`, `external_id`, `runner_name`, `age`, `sex`, `color`, `race_id`, `created_at`, `updated_at`) VALUES
(1, '343fdgH3456', 'Romesh Fernando', '23', 'male', 'black', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbm_users`
--

DROP TABLE IF EXISTS `tbm_users`;
CREATE TABLE IF NOT EXISTS `tbm_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbm_users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
