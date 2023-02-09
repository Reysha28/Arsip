-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 02:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `commodities`
--

CREATE TABLE `commodities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_operational_assistance_id` bigint(20) UNSIGNED NOT NULL,
  `commodity_location_id` bigint(20) UNSIGNED NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `date_of_purchase` varchar(255) NOT NULL,
  `condition` tinyint(4) NOT NULL,
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commodities`
--

INSERT INTO `commodities` (`id`, `school_operational_assistance_id`, `commodity_location_id`, `item_code`, `name`, `brand`, `date_of_purchase`, `condition`, `note`, `created_at`, `updated_at`) VALUES
(8, 1, 22, 'A001', 'Gaji', 'JYSXK', '09-01-2023', 1, 'Bukti Setor Gaji', '2023-02-07 01:09:35', '2023-02-07 01:20:06'),
(14, 1, 22, 'A002', 'Gaji', 'iFurnholic', '01-02-2023', 1, 'Bukti Setor Gaji', '2023-02-07 01:09:35', '2023-02-07 01:20:50'),
(17, 2, 21, 'A003', 'Sewa Ruangan', 'Livien', '23-01-2023', 1, 'Sewa Aula', '2023-02-07 01:09:35', '2023-02-07 01:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `commodity_locations`
--

CREATE TABLE `commodity_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commodity_locations`
--

INSERT INTO `commodity_locations` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(19, 'Umum', 'Umum', '2023-02-07 01:09:35', '2023-02-07 01:16:36'),
(20, 'Perencanaan', 'Perencanaan', '2023-02-07 01:09:35', '2023-02-07 01:16:17'),
(21, 'Instansi Lain', 'Instansi Lain', '2023-02-07 01:09:35', '2023-02-07 01:13:13'),
(22, 'Keuangan', 'Keuangan', '2023-02-07 01:09:35', '2023-02-07 01:13:32'),
(23, 'SKPK', 'SKPK', '2023-02-07 01:09:35', '2023-02-07 01:13:49'),
(24, 'PKM', 'PKM', '2023-02-07 01:09:35', '2023-02-07 01:14:01'),
(25, 'PKJF', 'PKJF', '2023-02-07 01:09:35', '2023-02-07 01:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_02_044956_create_school_operational_assistances_table', 1),
(5, '2020_07_02_045203_create_commodity_locations_table', 1),
(6, '2020_07_03_061038_create_commodities_table', 1),
(7, '2020_07_25_134054_remove_kode_register_from_commodities_table', 1),
(8, '2020_07_31_140126_update_year_commodities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_operational_assistances`
--

CREATE TABLE `school_operational_assistances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_operational_assistances`
--

INSERT INTO `school_operational_assistances` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Gaji', 'Data Gaji', '2023-02-07 01:09:35', '2023-02-07 01:16:59'),
(2, 'Sewa', 'Data Sewa', '2023-02-07 01:09:35', '2023-02-07 01:17:28');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Suciana', 'suciana@gmail.com', NULL, '$2y$10$KfOtMbaUdZECEagoPfZrROWiEMC77QdOdObMvie1uFwLkmcNV8ERK', NULL, '2023-02-07 01:11:26', '2023-02-09 01:10:59'),
(4, 'Admin', 'bpsdmprovsumbar@gmail.com', NULL, '$2y$10$suCACBYzj8lcsob4e8hf3.c73UzFZVpy0R9hxCFKBVc.ZeQ9BcTFS', NULL, '2023-02-07 01:12:10', '2023-02-09 01:10:43'),
(5, 'Reysha', 'irsyalinareysha@gmail.com', NULL, '$2y$10$GgIkp7Qy3o7hxeE0yYzzneW4rSw8Md0y2YFEbQuxyN3V8hyHkko5e', NULL, '2023-02-07 01:12:43', '2023-02-09 01:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commodities_school_operational_assistance_id_foreign` (`school_operational_assistance_id`),
  ADD KEY `commodities_commodity_location_id_foreign` (`commodity_location_id`);

--
-- Indexes for table `commodity_locations`
--
ALTER TABLE `commodity_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `school_operational_assistances`
--
ALTER TABLE `school_operational_assistances`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `commodity_locations`
--
ALTER TABLE `commodity_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `school_operational_assistances`
--
ALTER TABLE `school_operational_assistances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commodities`
--
ALTER TABLE `commodities`
  ADD CONSTRAINT `commodities_commodity_location_id_foreign` FOREIGN KEY (`commodity_location_id`) REFERENCES `commodity_locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commodities_school_operational_assistance_id_foreign` FOREIGN KEY (`school_operational_assistance_id`) REFERENCES `school_operational_assistances` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
