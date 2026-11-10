-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2026 at 02:48 PM
-- Server version: 8.4.3
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sme`
--

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_audit_logs`
--

CREATE TABLE `autopsy_audit_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `old_values` longtext COLLATE utf8mb4_unicode_ci,
  `new_values` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_audit_logs`
--

INSERT INTO `autopsy_audit_logs` (`id`, `id_user`, `action`, `entity_type`, `entity_id`, `old_values`, `new_values`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'admin.user.updated', 'user', 3, '{\"full_name\":\"Perdanak Akira\",\"email\":\"thedoricatcher@gmail.com\",\"role\":\"sme_owner\",\"is_verified\":false}', '{\"full_name\":\"Perdanak Akira\",\"email\":\"thedoricatcher@gmail.com\",\"role\":\"sme_owner\",\"is_verified\":true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 07:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_diagnoses`
--

CREATE TABLE `autopsy_diagnoses` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `severity` enum('critical','high','medium','low') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority` smallint UNSIGNED NOT NULL DEFAULT '100',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_diagnoses`
--

INSERT INTO `autopsy_diagnoses` (`id`, `code`, `name`, `description`, `severity`, `priority`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'revenue_decline_light', 'Omzet Menurun Ringan', 'Diagnosis penurunan omzet tingkat Ringan.', 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 'revenue_decline_medium', 'Omzet Menurun Sedang', 'Diagnosis penurunan omzet tingkat Sedang.', 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 'revenue_decline_significant', 'Omzet Menurun Signifikan', 'Diagnosis penurunan omzet tingkat Signifikan.', 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 'revenue_decline_crash', 'Omzet Menurun Anjlok', 'Diagnosis penurunan omzet tingkat Anjlok.', 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 'customer_decline_light', 'Pelanggan Menurun Ringan', 'Diagnosis penurunan pelanggan tingkat Ringan.', 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 'customer_decline_medium', 'Pelanggan Menurun Sedang', 'Diagnosis penurunan pelanggan tingkat Sedang.', 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 'customer_decline_significant', 'Pelanggan Menurun Signifikan', 'Diagnosis penurunan pelanggan tingkat Signifikan.', 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 'customer_decline_crash', 'Pelanggan Menurun Anjlok', 'Diagnosis penurunan pelanggan tingkat Anjlok.', 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 'sales_decline_light', 'Volume penjualan Menurun Ringan', 'Diagnosis penurunan volume_penjualan tingkat Ringan.', 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 'sales_decline_medium', 'Volume penjualan Menurun Sedang', 'Diagnosis penurunan volume_penjualan tingkat Sedang.', 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 'sales_decline_significant', 'Volume penjualan Menurun Signifikan', 'Diagnosis penurunan volume_penjualan tingkat Signifikan.', 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 'sales_decline_crash', 'Volume penjualan Menurun Anjlok', 'Diagnosis penurunan volume_penjualan tingkat Anjlok.', 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 'high_operating_cost', 'Biaya Operasional Tinggi', 'Rasio biaya operasional terhadap omzet melebihi 70%.', 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 'low_profit_margin', 'Margin Laba Rendah', 'Margin laba usaha berada di bawah 10%.', 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_recommendations`
--

CREATE TABLE `autopsy_recommendations` (
  `id` bigint UNSIGNED NOT NULL,
  `id_diagnosis` bigint UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `priority` smallint UNSIGNED NOT NULL DEFAULT '100',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_recommendations`
--

INSERT INTO `autopsy_recommendations` (`id`, `id_diagnosis`, `code`, `title`, `description`, `priority`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'rec_revenue_decline_light', 'Strategi Pemulihan omzet Ringan', 'Langkah tindakan untuk mengatasi penurunan omzet.', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 2, 'rec_revenue_decline_medium', 'Strategi Pemulihan omzet Sedang', 'Langkah tindakan untuk mengatasi penurunan omzet.', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 3, 'rec_revenue_decline_significant', 'Strategi Pemulihan omzet Signifikan', 'Langkah tindakan untuk mengatasi penurunan omzet.', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 4, 'rec_revenue_decline_crash', 'Strategi Pemulihan omzet Anjlok', 'Langkah tindakan untuk mengatasi penurunan omzet.', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 5, 'rec_customer_decline_light', 'Strategi Pemulihan pelanggan Ringan', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 6, 'rec_customer_decline_medium', 'Strategi Pemulihan pelanggan Sedang', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 7, 'rec_customer_decline_significant', 'Strategi Pemulihan pelanggan Signifikan', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 8, 'rec_customer_decline_crash', 'Strategi Pemulihan pelanggan Anjlok', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 9, 'rec_sales_decline_light', 'Strategi Pemulihan volume_penjualan Ringan', 'Langkah tindakan untuk mengatasi penurunan volume_penjualan.', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 10, 'rec_sales_decline_medium', 'Strategi Pemulihan volume_penjualan Sedang', 'Langkah tindakan untuk mengatasi penurunan volume_penjualan.', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 11, 'rec_sales_decline_significant', 'Strategi Pemulihan volume_penjualan Signifikan', 'Langkah tindakan untuk mengatasi penurunan volume_penjualan.', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 12, 'rec_sales_decline_crash', 'Strategi Pemulihan volume_penjualan Anjlok', 'Langkah tindakan untuk mengatasi penurunan volume_penjualan.', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 13, 'rec_high_operating_cost', 'Strategi Biaya Operasional Tinggi', 'Langkah perbaikan untuk menjaga efisiensi dan profitabilitas usaha.', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 14, 'rec_low_profit_margin', 'Strategi Margin Laba Rendah', 'Langkah perbaikan untuk menjaga efisiensi dan profitabilitas usaha.', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_recommendation_steps`
--

CREATE TABLE `autopsy_recommendation_steps` (
  `id` bigint UNSIGNED NOT NULL,
  `id_recommendation` bigint UNSIGNED NOT NULL,
  `step_order` smallint UNSIGNED NOT NULL DEFAULT '1',
  `step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_recommendation_steps`
--

INSERT INTO `autopsy_recommendation_steps` (`id`, `id_recommendation`, `step_order`, `step`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bandingkan hasil usaha dengan periode sebelumnya dan catat sumber penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 1, 2, 'Periksa produk atau layanan yang mengalami penurunan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 1, 3, 'Buat target perbaikan untuk periode berikutnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 1, 4, 'Evaluasi hasil perbaikan setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 2, 1, 'Identifikasi produk, layanan, atau kanal penjualan yang paling banyak mengalami penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 2, 2, 'Hubungi pelanggan yang mulai jarang bertransaksi dan cari tahu penyebabnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 2, 3, 'Uji penawaran bundling atau promosi dengan margin yang sehat.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 2, 4, 'Tetapkan target pemulihan dan pantau hasilnya setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 3, 1, 'Analisis penyebab penurunan berdasarkan produk, pelanggan, dan kanal penjualan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 3, 2, 'Prioritaskan produk atau layanan dengan permintaan dan margin terbaik.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 3, 3, 'Hubungi pelanggan lama dan jalankan program pemulihan pelanggan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 3, 4, 'Susun program promosi terukur dengan batas biaya yang jelas.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 3, 5, 'Evaluasi pencapaian target setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 4, 1, 'Periksa penyebab penurunan dan dampaknya terhadap arus kas usaha.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(15, 4, 2, 'Identifikasi sumber pendapatan yang masih bertahan dan prioritaskan pemulihannya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(16, 4, 3, 'Hubungi pelanggan utama dan pelanggan tidak aktif untuk mencari penyebab kehilangan transaksi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(17, 4, 4, 'Hentikan sementara pengeluaran atau pemasaran yang tidak menghasilkan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(18, 4, 5, 'Buat rencana pemulihan 30 hari dengan target mingguan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(19, 4, 6, 'Evaluasi hasil pemulihan setiap minggu dan sesuaikan strategi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(20, 5, 1, 'Bandingkan hasil usaha dengan periode sebelumnya dan catat sumber penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(21, 5, 2, 'Periksa produk atau layanan yang mengalami penurunan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(22, 5, 3, 'Buat target perbaikan untuk periode berikutnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(23, 5, 4, 'Evaluasi hasil perbaikan setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(24, 6, 1, 'Identifikasi produk, layanan, atau kanal penjualan yang paling banyak mengalami penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(25, 6, 2, 'Hubungi pelanggan yang mulai jarang bertransaksi dan cari tahu penyebabnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(26, 6, 3, 'Uji penawaran bundling atau promosi dengan margin yang sehat.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(27, 6, 4, 'Tetapkan target pemulihan dan pantau hasilnya setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(28, 7, 1, 'Analisis penyebab penurunan berdasarkan produk, pelanggan, dan kanal penjualan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(29, 7, 2, 'Prioritaskan produk atau layanan dengan permintaan dan margin terbaik.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(30, 7, 3, 'Hubungi pelanggan lama dan jalankan program pemulihan pelanggan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(31, 7, 4, 'Susun program promosi terukur dengan batas biaya yang jelas.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(32, 7, 5, 'Evaluasi pencapaian target setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(33, 8, 1, 'Periksa penyebab penurunan dan dampaknya terhadap arus kas usaha.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(34, 8, 2, 'Identifikasi sumber pendapatan yang masih bertahan dan prioritaskan pemulihannya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(35, 8, 3, 'Hubungi pelanggan utama dan pelanggan tidak aktif untuk mencari penyebab kehilangan transaksi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(36, 8, 4, 'Hentikan sementara pengeluaran atau pemasaran yang tidak menghasilkan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(37, 8, 5, 'Buat rencana pemulihan 30 hari dengan target mingguan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(38, 8, 6, 'Evaluasi hasil pemulihan setiap minggu dan sesuaikan strategi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(39, 9, 1, 'Bandingkan hasil usaha dengan periode sebelumnya dan catat sumber penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(40, 9, 2, 'Periksa produk atau layanan yang mengalami penurunan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(41, 9, 3, 'Buat target perbaikan untuk periode berikutnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(42, 9, 4, 'Evaluasi hasil perbaikan setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(43, 10, 1, 'Identifikasi produk, layanan, atau kanal penjualan yang paling banyak mengalami penurunan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(44, 10, 2, 'Hubungi pelanggan yang mulai jarang bertransaksi dan cari tahu penyebabnya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(45, 10, 3, 'Uji penawaran bundling atau promosi dengan margin yang sehat.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(46, 10, 4, 'Tetapkan target pemulihan dan pantau hasilnya setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(47, 11, 1, 'Analisis penyebab penurunan berdasarkan produk, pelanggan, dan kanal penjualan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(48, 11, 2, 'Prioritaskan produk atau layanan dengan permintaan dan margin terbaik.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(49, 11, 3, 'Hubungi pelanggan lama dan jalankan program pemulihan pelanggan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(50, 11, 4, 'Susun program promosi terukur dengan batas biaya yang jelas.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(51, 11, 5, 'Evaluasi pencapaian target setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(52, 12, 1, 'Periksa penyebab penurunan dan dampaknya terhadap arus kas usaha.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(53, 12, 2, 'Identifikasi sumber pendapatan yang masih bertahan dan prioritaskan pemulihannya.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(54, 12, 3, 'Hubungi pelanggan utama dan pelanggan tidak aktif untuk mencari penyebab kehilangan transaksi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(55, 12, 4, 'Hentikan sementara pengeluaran atau pemasaran yang tidak menghasilkan kontribusi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(56, 12, 5, 'Buat rencana pemulihan 30 hari dengan target mingguan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(57, 12, 6, 'Evaluasi hasil pemulihan setiap minggu dan sesuaikan strategi.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(58, 13, 1, 'Rinci seluruh biaya operasional berdasarkan kategori pengeluaran.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(59, 13, 2, 'Identifikasi biaya yang meningkat dan tidak memberikan kontribusi langsung.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(60, 13, 3, 'Evaluasi harga pemasok dan negosiasikan biaya pembelian.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(61, 13, 4, 'Tetapkan batas anggaran operasional dan evaluasi setiap minggu.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(62, 14, 1, 'Hitung biaya pokok dan keuntungan setiap produk atau layanan.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(63, 14, 2, 'Identifikasi produk dengan margin paling rendah.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(64, 14, 3, 'Evaluasi harga jual dan biaya bahan atau pemasok.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(65, 14, 4, 'Prioritaskan penjualan produk dengan margin sehat.', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(66, 14, 5, 'Tetapkan batas diskon agar transaksi tidak merugikan usaha.', '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_rules`
--

CREATE TABLE `autopsy_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `id_diagnosis` bigint UNSIGNED NOT NULL,
  `severity` enum('critical','high','medium','low') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority` smallint UNSIGNED NOT NULL DEFAULT '100',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_rules`
--

INSERT INTO `autopsy_rules` (`id`, `code`, `name`, `description`, `id_diagnosis`, `severity`, `priority`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'rule_revenue_decline_light', 'Rule Omzet Menurun Ringan', 'Mendeteksi penurunan omzet tingkat Ringan.', 1, 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 'rule_revenue_decline_medium', 'Rule Omzet Menurun Sedang', 'Mendeteksi penurunan omzet tingkat Sedang.', 2, 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 'rule_revenue_decline_significant', 'Rule Omzet Menurun Signifikan', 'Mendeteksi penurunan omzet tingkat Signifikan.', 3, 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 'rule_revenue_decline_crash', 'Rule Omzet Menurun Anjlok', 'Mendeteksi penurunan omzet tingkat Anjlok.', 4, 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 'rule_customer_decline_light', 'Rule Pelanggan Menurun Ringan', 'Mendeteksi penurunan pelanggan tingkat Ringan.', 5, 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 'rule_customer_decline_medium', 'Rule Pelanggan Menurun Sedang', 'Mendeteksi penurunan pelanggan tingkat Sedang.', 6, 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 'rule_customer_decline_significant', 'Rule Pelanggan Menurun Signifikan', 'Mendeteksi penurunan pelanggan tingkat Signifikan.', 7, 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 'rule_customer_decline_crash', 'Rule Pelanggan Menurun Anjlok', 'Mendeteksi penurunan pelanggan tingkat Anjlok.', 8, 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 'rule_sales_decline_light', 'Rule Volume penjualan Menurun Ringan', 'Mendeteksi penurunan volume_penjualan tingkat Ringan.', 9, 'low', 4, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 'rule_sales_decline_medium', 'Rule Volume penjualan Menurun Sedang', 'Mendeteksi penurunan volume_penjualan tingkat Sedang.', 10, 'medium', 3, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 'rule_sales_decline_significant', 'Rule Volume penjualan Menurun Signifikan', 'Mendeteksi penurunan volume_penjualan tingkat Signifikan.', 11, 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 'rule_sales_decline_crash', 'Rule Volume penjualan Menurun Anjlok', 'Mendeteksi penurunan volume_penjualan tingkat Anjlok.', 12, 'critical', 1, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 'rule_high_operating_cost', 'Rule Biaya Operasional Tinggi', 'Rasio biaya operasional terhadap omzet melebihi 70%.', 13, 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 'rule_low_profit_margin', 'Rule Margin Laba Rendah', 'Margin laba usaha berada di bawah 10%.', 14, 'high', 2, 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_rule_conditions`
--

CREATE TABLE `autopsy_rule_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rule_group` bigint UNSIGNED NOT NULL,
  `id_symptom` bigint UNSIGNED NOT NULL,
  `is_negated` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_rule_conditions`
--

INSERT INTO `autopsy_rule_conditions` (`id`, `id_rule_group`, `id_symptom`, `is_negated`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 1, 2, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 2, 2, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 2, 3, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 3, 3, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 3, 4, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 4, 4, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 5, 5, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 5, 6, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 6, 6, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 6, 7, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 7, 7, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 7, 8, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 8, 8, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(15, 9, 9, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(16, 9, 10, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(17, 10, 10, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(18, 10, 11, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(19, 11, 11, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(20, 11, 12, 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(21, 12, 12, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(22, 13, 13, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(23, 14, 14, 0, '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_rule_groups`
--

CREATE TABLE `autopsy_rule_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rule_version` bigint UNSIGNED NOT NULL,
  `group_order` smallint UNSIGNED NOT NULL DEFAULT '1',
  `label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_rule_groups`
--

INSERT INTO `autopsy_rule_groups` (`id`, `id_rule_version`, `group_order`, `label`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tingkat penurunan light', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 2, 1, 'Tingkat penurunan medium', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 3, 1, 'Tingkat penurunan significant', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 4, 1, 'Tingkat penurunan crash', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 5, 1, 'Tingkat penurunan light', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 6, 1, 'Tingkat penurunan medium', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 7, 1, 'Tingkat penurunan significant', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 8, 1, 'Tingkat penurunan crash', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 9, 1, 'Tingkat penurunan light', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 10, 1, 'Tingkat penurunan medium', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 11, 1, 'Tingkat penurunan significant', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 12, 1, 'Tingkat penurunan crash', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 13, 1, 'Kondisi keuangan', '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 14, 1, 'Kondisi keuangan', '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_rule_versions`
--

CREATE TABLE `autopsy_rule_versions` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rule` bigint UNSIGNED NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_diagnosis` bigint UNSIGNED DEFAULT NULL,
  `severity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_rule_versions`
--

INSERT INTO `autopsy_rule_versions` (`id`, `id_rule`, `version`, `status`, `is_active`, `notes`, `published_at`, `created_by`, `created_at`, `updated_at`, `id_diagnosis`, `severity`, `priority`) VALUES
(1, 1, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 1, 'low', 4),
(2, 2, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 2, 'medium', 3),
(3, 3, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 3, 'high', 2),
(4, 4, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 4, 'critical', 1),
(5, 5, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 5, 'low', 4),
(6, 6, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 6, 'medium', 3),
(7, 7, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 7, 'high', 2),
(8, 8, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 8, 'critical', 1),
(9, 9, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 9, 'low', 4),
(10, 10, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 10, 'medium', 3),
(11, 11, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 11, 'high', 2),
(12, 12, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 12, 'critical', 1),
(13, 13, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 13, 'high', 2),
(14, 14, 1, 'published', 1, 'Versi awal master rule Intelligence.', '2026-11-10 07:43:57', NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57', 14, 'high', 2);

-- --------------------------------------------------------

--
-- Table structure for table `autopsy_symptoms`
--

CREATE TABLE `autopsy_symptoms` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `metric_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` enum('greater_than','greater_than_or_equal','less_than','less_than_or_equal','equal','not_equal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `threshold` decimal(15,4) NOT NULL,
  `severity` enum('critical','high','medium','low') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autopsy_symptoms`
--

INSERT INTO `autopsy_symptoms` (`id`, `code`, `name`, `description`, `metric_key`, `operator`, `threshold`, `severity`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'revenue_decline_light', 'Omzet Menurun Ringan', 'Omzet mengalami penurunan tingkat Ringan.', 'revenue_change_percent', 'less_than_or_equal', -1.0000, 'low', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(2, 'revenue_decline_medium', 'Omzet Menurun Sedang', 'Omzet mengalami penurunan tingkat Sedang.', 'revenue_change_percent', 'less_than', -5.0000, 'medium', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(3, 'revenue_decline_significant', 'Omzet Menurun Signifikan', 'Omzet mengalami penurunan tingkat Signifikan.', 'revenue_change_percent', 'less_than', -10.0000, 'high', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(4, 'revenue_decline_crash', 'Omzet Menurun Anjlok', 'Omzet mengalami penurunan tingkat Anjlok.', 'revenue_change_percent', 'less_than', -25.0000, 'critical', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(5, 'customer_decline_light', 'Jumlah pelanggan Menurun Ringan', 'Jumlah pelanggan mengalami penurunan tingkat Ringan.', 'customer_change_percent', 'less_than_or_equal', -1.0000, 'low', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(6, 'customer_decline_medium', 'Jumlah pelanggan Menurun Sedang', 'Jumlah pelanggan mengalami penurunan tingkat Sedang.', 'customer_change_percent', 'less_than', -5.0000, 'medium', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(7, 'customer_decline_significant', 'Jumlah pelanggan Menurun Signifikan', 'Jumlah pelanggan mengalami penurunan tingkat Signifikan.', 'customer_change_percent', 'less_than', -10.0000, 'high', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(8, 'customer_decline_crash', 'Jumlah pelanggan Menurun Anjlok', 'Jumlah pelanggan mengalami penurunan tingkat Anjlok.', 'customer_change_percent', 'less_than', -25.0000, 'critical', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(9, 'sales_decline_light', 'Volume penjualan Menurun Ringan', 'Volume penjualan mengalami penurunan tingkat Ringan.', 'sales_change_percent', 'less_than_or_equal', -1.0000, 'low', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(10, 'sales_decline_medium', 'Volume penjualan Menurun Sedang', 'Volume penjualan mengalami penurunan tingkat Sedang.', 'sales_change_percent', 'less_than', -5.0000, 'medium', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(11, 'sales_decline_significant', 'Volume penjualan Menurun Signifikan', 'Volume penjualan mengalami penurunan tingkat Signifikan.', 'sales_change_percent', 'less_than', -10.0000, 'high', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(12, 'sales_decline_crash', 'Volume penjualan Menurun Anjlok', 'Volume penjualan mengalami penurunan tingkat Anjlok.', 'sales_change_percent', 'less_than', -25.0000, 'critical', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(13, 'high_operating_cost', 'Biaya Operasional Tinggi', 'Rasio biaya operasional terhadap omzet melebihi 70%.', 'operating_expense_ratio', 'greater_than', 70.0000, 'high', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57'),
(14, 'low_profit_margin', 'Margin Laba Rendah', 'Margin laba usaha berada di bawah 10%.', 'profit_margin', 'less_than', 10.0000, 'high', 1, NULL, NULL, '2026-11-10 07:43:57', '2026-11-10 07:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `business_categories`
--

CREATE TABLE `business_categories` (
  `id_category` bigint UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_categories`
--

INSERT INTO `business_categories` (`id_category`, `category_name`, `deskripsi`) VALUES
(1, 'Kuliner', 'Usaha makanan dan minuman'),
(2, 'Retail', 'Perdagangan barang eceran'),
(3, 'Jasa', 'Usaha jasa dan konsultasi'),
(4, 'Manufaktur', 'Produksi dan pengolahan barang'),
(5, 'Pertanian', 'Pertanian, perkebunan, dan agribisnis'),
(6, 'Teknologi', 'Produk digital dan teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `business_data`
--

CREATE TABLE `business_data` (
  `id` bigint UNSIGNED NOT NULL,
  `id_profile` bigint UNSIGNED NOT NULL,
  `period_date` date NOT NULL,
  `omzet` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pendapatan` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pengeluaran` decimal(15,2) NOT NULL DEFAULT '0.00',
  `laba` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jumlah_transaksi` int NOT NULL DEFAULT '0',
  `jumlah_pelanggan` int NOT NULL DEFAULT '0',
  `produk_terjual` int NOT NULL DEFAULT '0',
  `produk_tidak_terjual` int NOT NULL DEFAULT '0',
  `stok` int NOT NULL DEFAULT '0',
  `biaya_operasional` decimal(15,2) NOT NULL DEFAULT '0.00',
  `biaya_pemasaran` decimal(15,2) NOT NULL DEFAULT '0.00',
  `data_pendukung` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_profiles`
--

CREATE TABLE `business_profiles` (
  `id_business_profile` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL,
  `business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nib` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_count` int UNSIGNED DEFAULT NULL,
  `established_year` int UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_profiles`
--

INSERT INTO `business_profiles` (`id_business_profile`, `id_user`, `id_category`, `business_name`, `legal_type`, `city`, `province`, `postal_code`, `address`, `phone`, `business_email`, `website`, `nib`, `npwp`, `employee_count`, `established_year`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'wrtyu', 'werty', 'sdfgh', NULL, NULL, 'waresxtcytvguhb', '234567', NULL, NULL, NULL, NULL, 5, 2026, NULL, '2026-11-10 07:45:05', '2026-11-10 07:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `id_business_profile` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `industry_sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `offering_description` text COLLATE utf8mb4_unicode_ci,
  `seeking_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `id_business_profile`, `name`, `description`, `industry_sector`, `location`, `created_at`, `updated_at`, `offering_description`, `seeking_description`) VALUES
(1, 3, 1, 'wrtyu', NULL, 'Retail', 'sdfgh', '2026-11-10 07:45:08', '2026-11-10 07:45:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `decision_action_plans`
--

CREATE TABLE `decision_action_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_analysis` bigint UNSIGNED NOT NULL,
  `id_finding` bigint UNSIGNED DEFAULT NULL,
  `assigned_to` bigint UNSIGNED DEFAULT NULL,
  `task` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'todo',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `decision_action_plans`
--

INSERT INTO `decision_action_plans` (`id`, `id_user`, `id_analysis`, `id_finding`, `assigned_to`, `task`, `description`, `due_date`, `status`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 2, 3, 'Periksa penyebab penurunan dan dampaknya terhadap arus kas usaha.', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', '2026-11-10', 'done', '2026-11-10 07:47:59', '2026-11-10 07:47:34', '2026-11-10 07:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `intelligence_analyses`
--

CREATE TABLE `intelligence_analyses` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `period_prev_date` date DEFAULT NULL,
  `period_current_date` date DEFAULT NULL,
  `omzet_prev` decimal(15,2) NOT NULL,
  `omzet_current` decimal(15,2) NOT NULL,
  `customer_prev` decimal(15,2) NOT NULL,
  `customer_current` decimal(15,2) NOT NULL,
  `sales_prev` decimal(15,2) NOT NULL,
  `sales_current` decimal(15,2) NOT NULL,
  `product_count` decimal(10,2) NOT NULL DEFAULT '0.00',
  `avg_price` decimal(15,2) NOT NULL,
  `marketing_spend` decimal(15,2) NOT NULL,
  `operational_cost` decimal(15,2) NOT NULL,
  `omzet_change` decimal(8,2) NOT NULL,
  `customer_change` decimal(8,2) NOT NULL,
  `sales_change` decimal(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_diagnosis_id` bigint UNSIGNED DEFAULT NULL,
  `primary_rule_version_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intelligence_analyses`
--

INSERT INTO `intelligence_analyses` (`id`, `id_user`, `period_prev_date`, `period_current_date`, `omzet_prev`, `omzet_current`, `customer_prev`, `customer_current`, `sales_prev`, `sales_current`, `product_count`, `avg_price`, `marketing_spend`, `operational_cost`, `omzet_change`, `customer_change`, `sales_change`, `status`, `primary_diagnosis_id`, `primary_rule_version_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, 10000000.00, 20000000.00, 1000.00, 391.00, 1000.00, 9965.00, 1000.00, 49982.00, 50000.00, 500000.00, 100.00, -60.90, 896.50, 'critical', 8, 8, '2026-11-10 07:47:13', '2026-11-10 07:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `intelligence_analysis_candidates`
--

CREATE TABLE `intelligence_analysis_candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `id_analysis` bigint UNSIGNED NOT NULL,
  `id_rule` bigint UNSIGNED DEFAULT NULL,
  `id_rule_version` bigint UNSIGNED DEFAULT NULL,
  `id_diagnosis` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` smallint UNSIGNED DEFAULT NULL,
  `specificity` smallint UNSIGNED DEFAULT NULL,
  `rank_position` smallint UNSIGNED NOT NULL DEFAULT '1',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intelligence_analysis_candidates`
--

INSERT INTO `intelligence_analysis_candidates` (`id`, `id_analysis`, `id_rule`, `id_rule_version`, `id_diagnosis`, `code`, `severity`, `priority`, `specificity`, `rank_position`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 8, 8, 'rule_customer_decline_crash', 'critical', 1, 1, 1, 1, '2026-11-10 07:47:13', '2026-11-10 07:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `intelligence_analysis_findings`
--

CREATE TABLE `intelligence_analysis_findings` (
  `id` bigint UNSIGNED NOT NULL,
  `id_analysis` bigint UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fallback',
  `ref_id` bigint UNSIGNED DEFAULT NULL,
  `id_rule_version` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `severity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` smallint UNSIGNED DEFAULT NULL,
  `priority_label` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intelligence_analysis_findings`
--

INSERT INTO `intelligence_analysis_findings` (`id`, `id_analysis`, `type`, `source`, `ref_id`, `id_rule_version`, `code`, `title`, `description`, `severity`, `priority`, `priority_label`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'diagnosis', 'rule', 8, 8, 'customer_decline_crash', 'Pelanggan Menurun Anjlok', 'Diagnosis penurunan pelanggan tingkat Anjlok.', 'critical', 1, NULL, 0, '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(2, 1, 'recommendation', 'rule', 8, 8, 'rec_customer_decline_crash', 'Strategi Pemulihan pelanggan Anjlok', 'Langkah tindakan untuk mengatasi penurunan pelanggan.', NULL, 1, 'high', 0, '2026-11-10 07:47:13', '2026-11-10 07:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `intelligence_analysis_finding_steps`
--

CREATE TABLE `intelligence_analysis_finding_steps` (
  `id` bigint UNSIGNED NOT NULL,
  `id_finding` bigint UNSIGNED NOT NULL,
  `step_order` smallint UNSIGNED NOT NULL DEFAULT '1',
  `step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intelligence_analysis_finding_steps`
--

INSERT INTO `intelligence_analysis_finding_steps` (`id`, `id_finding`, `step_order`, `step`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Periksa penyebab penurunan dan dampaknya terhadap arus kas usaha.', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(2, 2, 2, 'Identifikasi sumber pendapatan yang masih bertahan dan prioritaskan pemulihannya.', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(3, 2, 3, 'Hubungi pelanggan utama dan pelanggan tidak aktif untuk mencari penyebab kehilangan transaksi.', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(4, 2, 4, 'Hentikan sementara pengeluaran atau pemasaran yang tidak menghasilkan kontribusi.', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(5, 2, 5, 'Buat rencana pemulihan 30 hari dengan target mingguan.', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(6, 2, 6, 'Evaluasi hasil pemulihan setiap minggu dan sesuaikan strategi.', '2026-11-10 07:47:13', '2026-11-10 07:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `intelligence_analysis_symptoms`
--

CREATE TABLE `intelligence_analysis_symptoms` (
  `id` bigint UNSIGNED NOT NULL,
  `id_analysis` bigint UNSIGNED NOT NULL,
  `id_symptom` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metric_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intelligence_analysis_symptoms`
--

INSERT INTO `intelligence_analysis_symptoms` (`id`, `id_analysis`, `id_symptom`, `code`, `name`, `metric_key`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'customer_decline_crash', 'Jumlah pelanggan Menurun Anjlok', 'customer_change_percent', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(2, 1, 5, 'customer_decline_light', 'Jumlah pelanggan Menurun Ringan', 'customer_change_percent', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(3, 1, 6, 'customer_decline_medium', 'Jumlah pelanggan Menurun Sedang', 'customer_change_percent', '2026-11-10 07:47:13', '2026-11-10 07:47:13'),
(4, 1, 7, 'customer_decline_significant', 'Jumlah pelanggan Menurun Signifikan', 'customer_change_percent', '2026-11-10 07:47:13', '2026-11-10 07:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint UNSIGNED NOT NULL,
  `company_a_id` bigint UNSIGNED NOT NULL,
  `company_b_id` bigint UNSIGNED NOT NULL,
  `matched_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2026_11_10_144320_create_autopsy_audit_logs_table', 1),
(2, '2026_11_10_144320_create_autopsy_diagnoses_table', 1),
(3, '2026_11_10_144320_create_autopsy_recommendation_steps_table', 1),
(4, '2026_11_10_144320_create_autopsy_recommendations_table', 1),
(5, '2026_11_10_144320_create_autopsy_rule_conditions_table', 1),
(6, '2026_11_10_144320_create_autopsy_rule_groups_table', 1),
(7, '2026_11_10_144320_create_autopsy_rule_versions_table', 1),
(8, '2026_11_10_144320_create_autopsy_rules_table', 1),
(9, '2026_11_10_144320_create_autopsy_symptoms_table', 1),
(10, '2026_11_10_144320_create_business_categories_table', 1),
(11, '2026_11_10_144320_create_business_data_table', 1),
(12, '2026_11_10_144320_create_business_profiles_table', 1),
(13, '2026_11_10_144320_create_cache_locks_table', 1),
(14, '2026_11_10_144320_create_cache_table', 1),
(15, '2026_11_10_144320_create_companies_table', 1),
(16, '2026_11_10_144320_create_decision_action_plans_table', 1),
(17, '2026_11_10_144320_create_failed_jobs_table', 1),
(18, '2026_11_10_144320_create_intelligence_analyses_table', 1),
(19, '2026_11_10_144320_create_intelligence_analysis_candidates_table', 1),
(20, '2026_11_10_144320_create_intelligence_analysis_finding_steps_table', 1),
(21, '2026_11_10_144320_create_intelligence_analysis_findings_table', 1),
(22, '2026_11_10_144320_create_intelligence_analysis_symptoms_table', 1),
(23, '2026_11_10_144320_create_job_batches_table', 1),
(24, '2026_11_10_144320_create_jobs_table', 1),
(25, '2026_11_10_144320_create_matches_table', 1),
(26, '2026_11_10_144320_create_password_reset_tokens_table', 1),
(27, '2026_11_10_144320_create_sessions_table', 1),
(28, '2026_11_10_144320_create_sme_profiles_table', 1),
(29, '2026_11_10_144320_create_swipes_table', 1),
(30, '2026_11_10_144320_create_system_logs_table', 1),
(31, '2026_11_10_144320_create_users_table', 1),
(32, '2026_11_10_144323_add_foreign_keys_to_autopsy_audit_logs_table', 1),
(33, '2026_11_10_144323_add_foreign_keys_to_autopsy_diagnoses_table', 1),
(34, '2026_11_10_144323_add_foreign_keys_to_autopsy_recommendation_steps_table', 1),
(35, '2026_11_10_144323_add_foreign_keys_to_autopsy_recommendations_table', 1),
(36, '2026_11_10_144323_add_foreign_keys_to_autopsy_rule_conditions_table', 1),
(37, '2026_11_10_144323_add_foreign_keys_to_autopsy_rule_groups_table', 1),
(38, '2026_11_10_144323_add_foreign_keys_to_autopsy_rule_versions_table', 1),
(39, '2026_11_10_144323_add_foreign_keys_to_autopsy_rules_table', 1),
(40, '2026_11_10_144323_add_foreign_keys_to_autopsy_symptoms_table', 1),
(41, '2026_11_10_144323_add_foreign_keys_to_business_data_table', 1),
(42, '2026_11_10_144323_add_foreign_keys_to_business_profiles_table', 1),
(43, '2026_11_10_144323_add_foreign_keys_to_companies_table', 1),
(44, '2026_11_10_144323_add_foreign_keys_to_decision_action_plans_table', 1),
(45, '2026_11_10_144323_add_foreign_keys_to_intelligence_analyses_table', 1),
(46, '2026_11_10_144323_add_foreign_keys_to_intelligence_analysis_candidates_table', 1),
(47, '2026_11_10_144323_add_foreign_keys_to_intelligence_analysis_finding_steps_table', 1),
(48, '2026_11_10_144323_add_foreign_keys_to_intelligence_analysis_findings_table', 1),
(49, '2026_11_10_144323_add_foreign_keys_to_intelligence_analysis_symptoms_table', 1),
(50, '2026_11_10_144323_add_foreign_keys_to_matches_table', 1),
(51, '2026_11_10_144323_add_foreign_keys_to_sme_profiles_table', 1),
(52, '2026_11_10_144323_add_foreign_keys_to_swipes_table', 1),
(53, '2026_11_10_144323_add_foreign_keys_to_system_logs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sme_profiles`
--

CREATE TABLE `sme_profiles` (
  `id_profile` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL,
  `business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `established_year` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `swipes`
--

CREATE TABLE `swipes` (
  `id` bigint UNSIGNED NOT NULL,
  `swiper_company_id` bigint UNSIGNED NOT NULL,
  `swiped_company_id` bigint UNSIGNED NOT NULL,
  `direction` enum('like','pass') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'like',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id_logs` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `action_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id_logs`, `id_user`, `action_type`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'admin.user.updated', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 07:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('sme_owner','mentor','investor','admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `full_name`, `role`, `is_verified`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'admin@example.com', '$2y$12$7YAlWTe9H5N2zC7k/3gRA.8CbrTf8xYdQeWt.1b1k96nZi4G/6e7.', 'Administrator', 'admin', 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57', NULL),
(2, 'test@example.com', '$2y$12$7VP9k6yTKqKxGtE03GGgtePhqFI2Dexf7D6RpoVx/rIDiHQQNStHi', 'Test User', 'sme_owner', 1, '2026-11-10 07:43:57', '2026-11-10 07:43:57', NULL),
(3, 'thedoricatcher@gmail.com', '$2y$12$w58uOTgxVw5tZIcvkJVrSOjRhjEG0rQU2x9rK6fNKBGfTeqY1XX8C', 'Perdanak Akira', 'sme_owner', 1, '2026-11-10 14:44:42', '2026-11-10 07:44:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autopsy_audit_logs`
--
ALTER TABLE `autopsy_audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autopsy_audit_logs_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `autopsy_audit_logs_id_user_foreign` (`id_user`),
  ADD KEY `autopsy_audit_logs_created_at_index` (`created_at`);

--
-- Indexes for table `autopsy_diagnoses`
--
ALTER TABLE `autopsy_diagnoses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_diagnoses_code_unique` (`code`),
  ADD KEY `autopsy_diagnoses_is_active_severity_priority_index` (`is_active`,`severity`,`priority`),
  ADD KEY `autopsy_diagnoses_created_by_foreign` (`created_by`),
  ADD KEY `autopsy_diagnoses_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `autopsy_recommendations`
--
ALTER TABLE `autopsy_recommendations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_recommendations_code_unique` (`code`),
  ADD KEY `autopsy_recommendations_id_diagnosis_is_active_index` (`id_diagnosis`,`is_active`),
  ADD KEY `autopsy_recommendations_created_by_foreign` (`created_by`),
  ADD KEY `autopsy_recommendations_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `autopsy_recommendation_steps`
--
ALTER TABLE `autopsy_recommendation_steps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_recommendation_steps_id_recommendation_step_order_unique` (`id_recommendation`,`step_order`);

--
-- Indexes for table `autopsy_rules`
--
ALTER TABLE `autopsy_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_rules_code_unique` (`code`),
  ADD KEY `autopsy_rules_is_active_id_diagnosis_index` (`is_active`,`id_diagnosis`),
  ADD KEY `autopsy_rules_id_diagnosis_foreign` (`id_diagnosis`),
  ADD KEY `autopsy_rules_created_by_foreign` (`created_by`),
  ADD KEY `autopsy_rules_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `autopsy_rule_conditions`
--
ALTER TABLE `autopsy_rule_conditions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_rule_conditions_id_rule_group_id_symptom_unique` (`id_rule_group`,`id_symptom`),
  ADD KEY `autopsy_rule_conditions_id_symptom_foreign` (`id_symptom`);

--
-- Indexes for table `autopsy_rule_groups`
--
ALTER TABLE `autopsy_rule_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_rule_groups_id_rule_version_group_order_unique` (`id_rule_version`,`group_order`);

--
-- Indexes for table `autopsy_rule_versions`
--
ALTER TABLE `autopsy_rule_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_rule_versions_id_rule_version_unique` (`id_rule`,`version`),
  ADD KEY `autopsy_rule_versions_id_rule_is_active_index` (`id_rule`,`is_active`),
  ADD KEY `autopsy_rule_versions_created_by_foreign` (`created_by`),
  ADD KEY `autopsy_rule_versions_id_diagnosis_index` (`id_diagnosis`);

--
-- Indexes for table `autopsy_symptoms`
--
ALTER TABLE `autopsy_symptoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autopsy_symptoms_code_unique` (`code`),
  ADD KEY `autopsy_symptoms_is_active_metric_key_index` (`is_active`,`metric_key`),
  ADD KEY `autopsy_symptoms_created_by_foreign` (`created_by`),
  ADD KEY `autopsy_symptoms_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `business_categories`
--
ALTER TABLE `business_categories`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `business_categories_unique` (`category_name`);

--
-- Indexes for table `business_data`
--
ALTER TABLE `business_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_data_id_profile_period_date_unique` (`id_profile`,`period_date`);

--
-- Indexes for table `business_profiles`
--
ALTER TABLE `business_profiles`
  ADD PRIMARY KEY (`id_business_profile`),
  ADD KEY `business_profiles_id_user_foreign` (`id_user`),
  ADD KEY `business_profiles_id_category_foreign` (`id_category`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_id_business_profile_unique` (`id_business_profile`),
  ADD KEY `fk_companies_users` (`user_id`);

--
-- Indexes for table `decision_action_plans`
--
ALTER TABLE `decision_action_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dap_analysis_finding_idx` (`id_analysis`,`id_finding`),
  ADD KEY `dap_owner_status_due_idx` (`id_user`,`status`,`due_date`),
  ADD KEY `decision_action_plans_id_finding_foreign` (`id_finding`),
  ADD KEY `decision_action_plans_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `intelligence_analyses`
--
ALTER TABLE `intelligence_analyses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intelligence_analyses_id_user_created_at_index` (`id_user`,`created_at`),
  ADD KEY `intelligence_analyses_primary_diagnosis_id_foreign` (`primary_diagnosis_id`),
  ADD KEY `intelligence_analyses_primary_rule_version_id_foreign` (`primary_rule_version_id`);

--
-- Indexes for table `intelligence_analysis_candidates`
--
ALTER TABLE `intelligence_analysis_candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `intelligence_analysis_candidates_id_analysis_id_rule_unique` (`id_analysis`,`id_rule`),
  ADD KEY `intelligence_analysis_candidates_id_analysis_rank_position_index` (`id_analysis`,`rank_position`),
  ADD KEY `intelligence_analysis_candidates_id_rule_foreign` (`id_rule`),
  ADD KEY `intelligence_analysis_candidates_id_rule_version_foreign` (`id_rule_version`),
  ADD KEY `intelligence_analysis_candidates_id_diagnosis_foreign` (`id_diagnosis`);

--
-- Indexes for table `intelligence_analysis_findings`
--
ALTER TABLE `intelligence_analysis_findings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iaf_analysis_type_order_index` (`id_analysis`,`type`,`sort_order`),
  ADD KEY `intelligence_analysis_findings_id_rule_version_foreign` (`id_rule_version`);

--
-- Indexes for table `intelligence_analysis_finding_steps`
--
ALTER TABLE `intelligence_analysis_finding_steps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `intelligence_analysis_finding_steps_id_finding_step_order_unique` (`id_finding`,`step_order`);

--
-- Indexes for table `intelligence_analysis_symptoms`
--
ALTER TABLE `intelligence_analysis_symptoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `intelligence_analysis_symptoms_id_analysis_id_symptom_unique` (`id_analysis`,`id_symptom`),
  ADD KEY `intelligence_analysis_symptoms_id_symptom_foreign` (`id_symptom`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_matches_company_a` (`company_a_id`),
  ADD KEY `fk_matches_company_b` (`company_b_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sme_profiles`
--
ALTER TABLE `sme_profiles`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `sme_profiles_users_fk` (`id_user`),
  ADD KEY `sme_profiles_business_categories_fk` (`id_category`);

--
-- Indexes for table `swipes`
--
ALTER TABLE `swipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_swipes_swiper` (`swiper_company_id`),
  ADD KEY `fk_swipes_swiped` (`swiped_company_id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id_logs`),
  ADD KEY `system_logs_users_fk` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autopsy_audit_logs`
--
ALTER TABLE `autopsy_audit_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `autopsy_diagnoses`
--
ALTER TABLE `autopsy_diagnoses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `autopsy_recommendations`
--
ALTER TABLE `autopsy_recommendations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `autopsy_recommendation_steps`
--
ALTER TABLE `autopsy_recommendation_steps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `autopsy_rules`
--
ALTER TABLE `autopsy_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `autopsy_rule_conditions`
--
ALTER TABLE `autopsy_rule_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `autopsy_rule_groups`
--
ALTER TABLE `autopsy_rule_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `autopsy_rule_versions`
--
ALTER TABLE `autopsy_rule_versions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `autopsy_symptoms`
--
ALTER TABLE `autopsy_symptoms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `business_categories`
--
ALTER TABLE `business_categories`
  MODIFY `id_category` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `business_data`
--
ALTER TABLE `business_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_profiles`
--
ALTER TABLE `business_profiles`
  MODIFY `id_business_profile` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `decision_action_plans`
--
ALTER TABLE `decision_action_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intelligence_analyses`
--
ALTER TABLE `intelligence_analyses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intelligence_analysis_candidates`
--
ALTER TABLE `intelligence_analysis_candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intelligence_analysis_findings`
--
ALTER TABLE `intelligence_analysis_findings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `intelligence_analysis_finding_steps`
--
ALTER TABLE `intelligence_analysis_finding_steps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `intelligence_analysis_symptoms`
--
ALTER TABLE `intelligence_analysis_symptoms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sme_profiles`
--
ALTER TABLE `sme_profiles`
  MODIFY `id_profile` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `swipes`
--
ALTER TABLE `swipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id_logs` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `autopsy_audit_logs`
--
ALTER TABLE `autopsy_audit_logs`
  ADD CONSTRAINT `autopsy_audit_logs_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `autopsy_diagnoses`
--
ALTER TABLE `autopsy_diagnoses`
  ADD CONSTRAINT `autopsy_diagnoses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `autopsy_diagnoses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `autopsy_recommendations`
--
ALTER TABLE `autopsy_recommendations`
  ADD CONSTRAINT `autopsy_recommendations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `autopsy_recommendations_id_diagnosis_foreign` FOREIGN KEY (`id_diagnosis`) REFERENCES `autopsy_diagnoses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `autopsy_recommendations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `autopsy_recommendation_steps`
--
ALTER TABLE `autopsy_recommendation_steps`
  ADD CONSTRAINT `autopsy_recommendation_steps_id_recommendation_foreign` FOREIGN KEY (`id_recommendation`) REFERENCES `autopsy_recommendations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `autopsy_rules`
--
ALTER TABLE `autopsy_rules`
  ADD CONSTRAINT `autopsy_rules_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `autopsy_rules_id_diagnosis_foreign` FOREIGN KEY (`id_diagnosis`) REFERENCES `autopsy_diagnoses` (`id`),
  ADD CONSTRAINT `autopsy_rules_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `autopsy_rule_conditions`
--
ALTER TABLE `autopsy_rule_conditions`
  ADD CONSTRAINT `autopsy_rule_conditions_id_rule_group_foreign` FOREIGN KEY (`id_rule_group`) REFERENCES `autopsy_rule_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `autopsy_rule_conditions_id_symptom_foreign` FOREIGN KEY (`id_symptom`) REFERENCES `autopsy_symptoms` (`id`);

--
-- Constraints for table `autopsy_rule_groups`
--
ALTER TABLE `autopsy_rule_groups`
  ADD CONSTRAINT `autopsy_rule_groups_id_rule_version_foreign` FOREIGN KEY (`id_rule_version`) REFERENCES `autopsy_rule_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `autopsy_rule_versions`
--
ALTER TABLE `autopsy_rule_versions`
  ADD CONSTRAINT `autopsy_rule_versions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `autopsy_rule_versions_id_rule_foreign` FOREIGN KEY (`id_rule`) REFERENCES `autopsy_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `autopsy_symptoms`
--
ALTER TABLE `autopsy_symptoms`
  ADD CONSTRAINT `autopsy_symptoms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `autopsy_symptoms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `business_data`
--
ALTER TABLE `business_data`
  ADD CONSTRAINT `business_data_id_profile_foreign` FOREIGN KEY (`id_profile`) REFERENCES `sme_profiles` (`id_profile`) ON DELETE CASCADE;

--
-- Constraints for table `business_profiles`
--
ALTER TABLE `business_profiles`
  ADD CONSTRAINT `business_profiles_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `business_categories` (`id_category`),
  ADD CONSTRAINT `business_profiles_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_id_business_profile_foreign` FOREIGN KEY (`id_business_profile`) REFERENCES `business_profiles` (`id_business_profile`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_companies_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `decision_action_plans`
--
ALTER TABLE `decision_action_plans`
  ADD CONSTRAINT `decision_action_plans_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `decision_action_plans_id_analysis_foreign` FOREIGN KEY (`id_analysis`) REFERENCES `intelligence_analyses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `decision_action_plans_id_finding_foreign` FOREIGN KEY (`id_finding`) REFERENCES `intelligence_analysis_findings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `decision_action_plans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `intelligence_analyses`
--
ALTER TABLE `intelligence_analyses`
  ADD CONSTRAINT `intelligence_analyses_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `intelligence_analyses_primary_diagnosis_id_foreign` FOREIGN KEY (`primary_diagnosis_id`) REFERENCES `autopsy_diagnoses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `intelligence_analyses_primary_rule_version_id_foreign` FOREIGN KEY (`primary_rule_version_id`) REFERENCES `autopsy_rule_versions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `intelligence_analysis_candidates`
--
ALTER TABLE `intelligence_analysis_candidates`
  ADD CONSTRAINT `intelligence_analysis_candidates_id_analysis_foreign` FOREIGN KEY (`id_analysis`) REFERENCES `intelligence_analyses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `intelligence_analysis_candidates_id_diagnosis_foreign` FOREIGN KEY (`id_diagnosis`) REFERENCES `autopsy_diagnoses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `intelligence_analysis_candidates_id_rule_foreign` FOREIGN KEY (`id_rule`) REFERENCES `autopsy_rules` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `intelligence_analysis_candidates_id_rule_version_foreign` FOREIGN KEY (`id_rule_version`) REFERENCES `autopsy_rule_versions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `intelligence_analysis_findings`
--
ALTER TABLE `intelligence_analysis_findings`
  ADD CONSTRAINT `intelligence_analysis_findings_id_analysis_foreign` FOREIGN KEY (`id_analysis`) REFERENCES `intelligence_analyses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `intelligence_analysis_findings_id_rule_version_foreign` FOREIGN KEY (`id_rule_version`) REFERENCES `autopsy_rule_versions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `intelligence_analysis_finding_steps`
--
ALTER TABLE `intelligence_analysis_finding_steps`
  ADD CONSTRAINT `intelligence_analysis_finding_steps_id_finding_foreign` FOREIGN KEY (`id_finding`) REFERENCES `intelligence_analysis_findings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `intelligence_analysis_symptoms`
--
ALTER TABLE `intelligence_analysis_symptoms`
  ADD CONSTRAINT `intelligence_analysis_symptoms_id_analysis_foreign` FOREIGN KEY (`id_analysis`) REFERENCES `intelligence_analyses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `intelligence_analysis_symptoms_id_symptom_foreign` FOREIGN KEY (`id_symptom`) REFERENCES `autopsy_symptoms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `fk_matches_company_a` FOREIGN KEY (`company_a_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_matches_company_b` FOREIGN KEY (`company_b_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sme_profiles`
--
ALTER TABLE `sme_profiles`
  ADD CONSTRAINT `sme_profiles_business_categories_FK` FOREIGN KEY (`id_category`) REFERENCES `business_categories` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sme_profiles_users_FK` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `swipes`
--
ALTER TABLE `swipes`
  ADD CONSTRAINT `fk_swipes_swiped` FOREIGN KEY (`swiped_company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_swipes_swiper` FOREIGN KEY (`swiper_company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD CONSTRAINT `system_logs_users_FK` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
