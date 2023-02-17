-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 02:32 AM
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
(8, 6, 24, '12/00961/TBP-UP/PKM01952', 'Belanja Perjalanan Dinas Dalam Daerah Drs. Bustavidia dalam Rangka Monitoring Evaluasi Pasca Latsar CPNS Tanggal 9 November Tahun 2022', 'https://drive.google.com/file/d/1uF51rC7vO6rradEKGhrYH3wbMPIk5OO8/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-07 01:09:35', '2023-02-13 08:44:45'),
(14, 6, 24, '12/00970/TBP-UP/PKM01974', 'Belanja  Kursur Singkat (Instruktur Senam) Erna Mailini Tanggal 16 Agustus - 2 November 2022', 'https://drive.google.com/file/d/1gk9G1Mwe4WDfsJ9Jj5qF02Mqq5vkdYZD/view?usp=share_link', '30-11-2022', 1, 'Kwitansi', '2023-02-07 01:09:35', '2023-02-13 08:32:50'),
(17, 6, 24, '12/00968/TBP-UP/PKM01968', 'Belanja Kursur Singkat (Instruktur Senam) Erna Mailini Tanggal 25 Juli - 15 Oktober 2022', 'https://drive.google.com/file/d/1OuuWjRhUKTdxtfg9Bb__GOaqPmdkxKhs/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-07 01:09:35', '2023-02-13 08:32:58'),
(20, 6, 24, '12/00967/TBP-UP/PKM01965', 'Belanja Kursur Singkat (Instruktur Jalan Pagi) Awaldi Tanggal 16 Agustus - 2 November 2022', 'https://drive.google.com/file/d/1o50qIeWASFR_myVsMa2v62mdT2hrUp5t/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-13 08:29:19', '2023-02-13 08:32:36'),
(21, 6, 24, '12/00966/TBP-UP/PKM01962', 'Belanja Kursur Singkat (Instruktur Jalan Pagi) Awaldi Tanggal 2 Agustus - 22 Oktober 2022', 'https://drive.google.com/file/d/1bJk2uv5vD_Hnkt5koBNBAIZL8H0F2thp/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-13 08:32:02', '2023-02-13 08:32:02'),
(22, 6, 24, '12/00965/TBP-UP/PKM01959', 'Belanja Kursur Singkat (Instruktur Jalan Pagi) Awaldi Tanggal 25 Juli - 15 Oktober 2022', 'https://drive.google.com/file/d/1BoXBqnYk88tUHSFjr58ZmVb4UoCdshgS/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 00:53:08', '2023-02-14 00:53:08'),
(23, 6, 24, '12/00964/TBP-UP/PKM01956', 'Belanja Makan dan Minum Sosialisasi Orientasi PPPK Tanggal 29 November 2022', 'https://drive.google.com/file/d/1ImlrkJNKXZN5MY7wH8P0513Dx-hhlPPZ/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 00:54:50', '2023-02-14 00:54:50'),
(24, 6, 25, '12/00963/TBP-UP/PKJF01954', 'Belanja Perjalanan Dinas Luar Daerah Jamalus, M.Pd Tanggal 30 November - 3 Desember 2022', 'https://drive.google.com/file/d/1NFu1DIEpEqBMI5jFb3ozXKoosRUjA7ks/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 00:57:21', '2023-02-14 00:57:21'),
(25, 6, 25, '12/00963/TBP-UP/PKJF01955', 'Belanja Perjalanan Dinas Luar Daerah Jamalus, M.Pd Tanggal 30 November - 3 Desember 2022', 'https://drive.google.com/file/d/1KHUDvGiz9ZllWMjAOwZnmRRTsI_KiG_M/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:02:34', '2023-02-14 01:02:34'),
(26, 6, 24, '12/00962/TBP-UP/PKM01999', 'Belanja Perjalanan Dinas Luar Daerah Ammil Zukriah, S.Pd.I Tanggal 30 November - 3 Desember 2022', 'https://drive.google.com/file/d/17qZVcfAZd2PXSESXH9N-B3HiIZV9j33d/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:04:52', '2023-02-14 01:04:52'),
(27, 6, 24, '11/00949/TBP-UP/PKM01923', 'Belanja Perjalanan Dinas Luar Daerah Khairanti Khairanis, M.Si Tanggal 24-26 November 2022', 'https://drive.google.com/file/d/1SrCx26l_5nr30K4wcYr6_set0o6tFirj/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:07:00', '2023-02-14 01:07:00'),
(28, 6, 24, '11/00949/TBP-UP/PKM01924', 'Belanja Uang Panjar Khairanti Khairanis M.Si Tanggal 24 - 26 November 2022', 'https://drive.google.com/file/d/125HybaSqhjUOrNt1t0k-x1McJJMjfTvg/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:09:20', '2023-02-14 01:09:20'),
(29, 6, 24, '11/00946/TBP-UP/PKM01913', 'Belanja Honorarium Penyelenggaraan Kehiatan Pendidikan dan Pelatihan Meridawati, SE Tanggal 21 Oktober 2022', 'https://drive.google.com/file/d/1DixGN54nsPBfyFyvXTV9zxSNC-WRITK2/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:12:23', '2023-02-14 01:12:23'),
(30, 6, 24, '11/00945/TBP-UP/PKM01912', 'Belanja Aplikasi Zoom Tanggal 14 Oktober 2022', 'https://drive.google.com/file/d/18XNomLAsJg7JXunD0egSQybEgbLjKbzL/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:15:23', '2023-02-14 01:15:23'),
(31, 6, 24, '11/00944/TBP-UP/PKM01911', 'Belanja Penghargaan Piagam Tanggal 7 Maret - 2 November 2022', 'https://drive.google.com/file/d/1ebEU3l3tbxv3B94xSDjk3q-xyrfnNwnv/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:16:57', '2023-02-14 01:16:57'),
(32, 6, 24, '11/00941/TBP-UP/PKM01906', 'Belanja Spanduk Tanggal 15 Juli - 4 Oktober 2022', 'https://drive.google.com/file/d/1HPzT9kMDBDZc1dnsrpqtY_xYwKiE8VzM/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:19:06', '2023-02-14 01:19:06'),
(33, 6, 24, '11/00940/TBP-UP/PKM01905', 'Belanja Makan dan Minum Seminar Latsar CPNS Tanggal 19 September 2022', 'https://drive.google.com/file/d/1-MiIhDOfp_6U_4l7YHRsjmApYtmQhKmb/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:20:33', '2023-02-14 01:20:33'),
(34, 6, 24, '11/00939/TBP-UP/PKM01904', 'Belanja Perjalanan Dinas Dalam Daerah Rendi Fernando Tanggal 23 September 2023', 'https://drive.google.com/file/d/1zKiAeLdILZyMsypMGNWByb4vMrWUEIYK/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:23:09', '2023-02-14 01:23:09'),
(35, 6, 24, '11/00938/TBP-UP/PKM01903', 'Belanja Makan dan Minum Seminar Latsar CPNS Tanggal 16 Oktober 2022', 'https://drive.google.com/file/d/1lsvt80yFkMB8VWd4IddxupMCPchMdls4/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:24:46', '2023-02-14 01:24:46'),
(36, 6, 24, '11/0937/TBP-UP/PKM01902', 'Belanja Makan dan Minum Seminar Latsar CPNS Tanggal 9 Oktober 2022', 'https://drive.google.com/file/d/1pdspxpsMNj-keZQOpsCmYvwB217YCit9/view?usp=sharing', '30-11-2022', 1, 'Kwitansi', '2023-02-14 01:28:15', '2023-02-14 01:28:15');

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
(19, 'Umpeg', 'Umum dan Kepegawaian', '2023-02-07 01:09:35', '2023-02-13 08:06:48'),
(20, 'Perencanaan', 'Perencanaan', '2023-02-07 01:09:35', '2023-02-07 01:16:17'),
(21, 'Instansi Lain', 'Instansi Lain', '2023-02-07 01:09:35', '2023-02-07 01:13:13'),
(22, 'Keuangan', 'Keuangan', '2023-02-07 01:09:35', '2023-02-07 01:13:32'),
(23, 'SKPK', 'Sertifikasi Kompetensi dan Pengelolaan Kelembagaan', '2023-02-07 01:09:35', '2023-02-13 08:07:09'),
(24, 'PKM', 'Pengembangan Kompetensi Manajerial', '2023-02-07 01:09:35', '2023-02-13 08:06:14'),
(25, 'PKJF', 'Pengembangan Kompetensi Jabatan Fungsional', '2023-02-07 01:09:35', '2023-02-13 08:06:33'),
(26, 'PKT', 'Pengembangan Kompetensi Teknis', '2023-02-13 08:07:43', '2023-02-13 08:07:43'),
(27, 'Sekretariat', 'Sekretariat', '2023-02-13 08:08:02', '2023-02-13 08:08:02');

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
(1, 'Gaji', 'Gaji BPSDM Provinsi Sumatera Barat', '2023-02-07 01:09:35', '2023-02-13 07:49:04'),
(2, 'Sekretaris', 'Sekretaris BPSDM Provinsi Sumatera Barat', '2023-02-07 01:09:35', '2023-02-13 07:49:11'),
(3, 'SPM-LS', 'Surat Pernyataan Membayar-Langsung BPSDM Provinsi Sumatera Barat', '2023-02-13 07:46:33', '2023-02-13 07:47:48'),
(4, 'Surat Masuk', 'Surat Masuk BPSDM Provinsi Sumatera Barat', '2023-02-13 07:48:09', '2023-02-13 07:48:52'),
(5, 'Surat Keluar', 'Surat Keluar BPSDM Provinsi Sumatera Barat', '2023-02-13 07:49:39', '2023-02-13 07:49:39'),
(6, 'SPJ Latsar', 'Surat Pertanggungjawaban Latihan Dasar BPSDM Provinsi Sumatera Barat', '2023-02-13 07:50:04', '2023-02-13 07:50:04'),
(7, 'SPJ PKM', 'Surat Pertanggungjawaban Pengembangan Kompetensi Manajerial BPSDM Provinsi Sumatera Barat', '2023-02-13 07:55:22', '2023-02-13 07:55:22'),
(8, 'SPJ PKA', 'Surat Pertanggungjawaban Pelatihan Kepemimpinan Administrator', '2023-02-13 07:57:17', '2023-02-13 07:57:17'),
(9, 'SPJ PKJF', 'Surat Pertanggungjawaban Pengembangan Kompetensi Jabatan Fungsional BPSDM Provinsi Sumatera Barat', '2023-02-13 07:58:51', '2023-02-13 07:58:51'),
(10, 'SPJ SKPK', 'Surat Pertanggungjawaban Sertifikasi Kompetensi dan Pengelolaan Kelembagaan BPSDM Provinsi Sumatera Barat', '2023-02-13 07:59:41', '2023-02-13 07:59:41'),
(11, 'Pajak', 'Pajak BPSDM Provinsi Sumatera Barat', '2023-02-13 08:00:14', '2023-02-13 08:00:14'),
(12, 'Honor PKM', 'Honor Pengembangan Kompetensi Manajerial BPSDM Provinsi Sumatera Barat', '2023-02-13 08:01:05', '2023-02-13 08:01:05'),
(13, 'Honor PKJF', 'Honor Pengembangan Kompetensi Jabatan Fungsional BPSDM Prvinsi Sumatera Barat', '2023-02-13 08:01:36', '2023-02-13 08:01:36'),
(14, 'Penyediaan Jasa', 'Penyediaan Jasa BPSDM Provinsi Sumatera Barat', '2023-02-13 08:02:04', '2023-02-13 08:02:04'),
(15, 'Penyediaan Logistik', 'Penyediaan Logistik BPSDM Provinsi Sumatera Barat', '2023-02-13 08:02:26', '2023-02-13 08:02:26'),
(16, 'Laporan Realisasi', 'Laporan Realisasi BPSDM Provinsi Sumatera Barat', '2023-02-13 08:03:03', '2023-02-13 08:03:03'),
(17, 'Rakor', 'Rapat Kordinasi BPSDM Provinsi Sumatera Barat', '2023-02-13 08:03:27', '2023-02-13 08:03:27'),
(18, 'LRA', 'Laporan Realisasi Anggaran', '2023-02-13 08:04:29', '2023-02-13 08:04:29'),
(19, 'LO', 'Laporan Operasional', '2023-02-13 08:04:51', '2023-02-13 08:04:51'),
(20, 'GU', 'Ganti Uang Persediaan', '2023-02-13 08:05:27', '2023-02-13 08:05:27');

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
(5, 'Arfebyan', 'arfebyanrm@gmail.com', NULL, '$2y$10$GgIkp7Qy3o7hxeE0yYzzneW4rSw8Md0y2YFEbQuxyN3V8hyHkko5e', NULL, '2023-02-07 01:12:43', '2023-02-09 01:11:47'),
(6, 'Feri Fezla', 'ferifezla@gmail.com', NULL, '$2y$10$y/n533sn63jxvDsD53s6UOersmSFV/v8iLR/IsCj.RNoUjVxVshte', NULL, '2023-02-14 01:31:07', '2023-02-14 01:31:07'),
(7, 'Wirmayanti', 'wirmayanti@gmail.com', NULL, '$2y$10$6iZLkB4EmZuXWY.B9w6BBubVPLq3yAyP5HXnj/EUA/QFIm3dLvRGy', NULL, '2023-02-14 01:31:50', '2023-02-14 01:31:50');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `commodity_locations`
--
ALTER TABLE `commodity_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
