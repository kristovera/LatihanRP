-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 03:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `batas`
--

CREATE TABLE `batas` (
  `id` int(10) NOT NULL,
  `nim` char(8) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batas`
--

INSERT INTO `batas` (`id`, `nim`, `tanggal_mulai`, `tanggal_akhir`) VALUES
(2, '72180209', '2021-06-02', '2021-10-05'),
(3, '72170210', '2021-06-11', '2021-07-17'),
(4, '7215001', '2021-06-12', '2021-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwalujian`
--

CREATE TABLE `jadwalujian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` char(8) NOT NULL,
  `judul_kp` varchar(100) NOT NULL,
  `penguji` varchar(100) NOT NULL,
  `ruang` varchar(100) NOT NULL,
  `jam` time NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwalujian`
--

INSERT INTO `jadwalujian` (`id`, `tanggal`, `nim`, `judul_kp`, `penguji`, `ruang`, `jam`, `status`) VALUES
(1, '2019-10-12', '72180209', 'Merancang Sistem A', 'argo wibowo', 'C.1.1', '08:00:00', 'Setuju'),
(2, '2019-10-11', '72180213', 'Merancang Sistem C', 'argo wibowo', 'B.1.1', '10:00:00', 'Setuju');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kp1`
-- (See below for the actual view)
--
CREATE TABLE `kp1` (
`nim` char(8)
,`judul_kp` varchar(100)
,`penguji` varchar(255)
,`tahun` int(4)
,`dokumen` varchar(255)
,`status` varchar(255)
);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_21_031138_create_sessions_table', 1),
(7, '2021_04_21_035641_add_google_id_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kp`
--

CREATE TABLE `pengajuan_kp` (
  `id` int(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun` int(4) NOT NULL,
  `judul_kp` varchar(100) NOT NULL,
  `nim` char(8) NOT NULL,
  `tools` varchar(255) NOT NULL,
  `spesifikasi` varchar(255) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  `penguji` varchar(255) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` char(12) NOT NULL,
  `pembimbing` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan_kp`
--

INSERT INTO `pengajuan_kp` (`id`, `semester`, `tahun`, `judul_kp`, `nim`, `tools`, `spesifikasi`, `dokumen`, `penguji`, `lembaga`, `pimpinan`, `alamat`, `notelp`, `pembimbing`, `status`) VALUES
(5, 2, 2016, 'Merancang Sistem S', '72160212', 'Web', 'data barang', '5_6152217201827906101.pdf', 'Amanda', 'pt kalbe', 'harianja', 'jalan cempaka no 119', '081234567878', 'Amanda', 'Diterima'),
(6, 2, 2014, 'Merancang Sistem B', '7214001', 'Web', 'data barang', '5_6152217201827906101.pdf', 'Galih', 'pt api', 'harianja', 'jalan kenanga', '081234567878', 'Dilla', 'Diterima'),
(12, 1, 2017, 'Merancang Sistem A', '72170210', 'Mobile', 'kriteria', 'apotek aini farma.pdf', 'Sari', 'PT 24', 'sutejo', 'jalan cempaka no 11,Lampung', '081234567899', NULL, '0'),
(13, 1, 2017, 'Merancang Sistem A', '72170209', 'Web', 'data karyawan', '193-528-1-PB.pdf', 'Wimmie', 'UGM', 'harianja', 'jalan cempaka no 112', '081263789002', NULL, '0'),
(14, 2, 2018, 'Merancang Sistem A', '72180207', 'Mobile', 'data karyawan', '6. BAB II.pdf', 'Wimmie', 'pt api', 'harianja', 'jalan cempaka no 118', '0812345678', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_prakp`
--

CREATE TABLE `pengajuan_prakp` (
  `id` int(10) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `tahun` int(4) NOT NULL,
  `nim` char(8) NOT NULL,
  `tools` varchar(100) NOT NULL,
  `spesifikasi` varchar(100) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  `penguji` varchar(100) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `pimpinan` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `notelp` char(12) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan_prakp`
--

INSERT INTO `pengajuan_prakp` (`id`, `semester`, `tahun`, `nim`, `tools`, `spesifikasi`, `dokumen`, `penguji`, `lembaga`, `pimpinan`, `alamat`, `notelp`, `status`) VALUES
(2, 1, 2017, '7217002', 'Web', 'data karyawan', 'panduan.pdf', 'B', 'UGM', 'B', 'jalan cempaka no 112', '081263789002', 'Ditolak'),
(3, 1, 2017, '72170209', 'Mobile', 'kriteria', 'Untitled document.pdf', 'argo wibowo', 'UKDW', 'harianja', 'jalan cempaka no 112', '081245678901', 'Diterima'),
(6, 2, 2018, '72180208', 'Mobile', 'data barang', '6. BAB II.pdf', 'argo wibowo', 'pt kalbe', 'harianja', 'jalan cempaka no 118', '081263789002', '0'),
(7, 2, 2017, '72180209', 'Mobile', 'data karyawan', 'apotek aini farma.pdf', 'Sari', 'pt kalbe', 'Budiman', 'jalan cempaka no 112', '081263789001', '0');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CJcjnIMs4vojY12lTpMPCcYF1ralWdxbT8TukdEg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXlxYmlsNW9xM3J4U0JVRTF1TTdzWGowOHZDSXE0cWdQUGo5U29RbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1623293567);

-- --------------------------------------------------------

--
-- Table structure for table `suratket`
--

CREATE TABLE `suratket` (
  `id` int(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nim` char(8) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `notelp` char(12) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `fax` int(12) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suratket`
--

INSERT INTO `suratket` (`id`, `semester`, `tahun`, `nim`, `lembaga`, `pimpinan`, `notelp`, `alamat`, `fax`, `status`, `dokumen`) VALUES
(5, '2', 2016, '72160219', 'UKDW', 'sutejo', '081245678901', 'jalan cempaka no 1', 1234444, 'Diterima', '1304-1375-1-SM.pdf'),
(6, '1', 2017, '72170210', 'UKDW', 'sutejo', '0812345678', 'jalan kenanga', 1122777, 'Ditolak', 'Bab_08_-_Teknik_Penulisan_Artikel_Populer_-_Revisi.pdf'),
(7, '1', 2016, '72160210', 'A', 'Handoko', '0812345678', 'jalan kenanga', 1122777, 'Ditolak', '193-528-1-PB.pdf'),
(8, '1', 2017, '72170210', 'pt mas', 'harianja', '081263789002', 'jalan cempaka no 118', 1234444, '0', '3_125610088_BAB II.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `ruang` varchar(100) NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `level`) VALUES
(1, 'Astuti', 'astuti18@si.ukdw.ac.id', '$2y$10$jAFN0pTV7h/RS8EWss2WD.03fTDpmnBwIZTq0G3.zZ2s2aTt.gwOm', '2021-05-22 13:08:50', '2021-05-22 13:08:50', 1),
(3, 'Galih', 'Galih1@staff.ac.ukdw.id', '$2y$10$NdLbtKfiLxBWHr1ADwEipeToiK74W/1TOtdSppzJ.twYA2INCjrMi', '2021-05-22 13:19:58', '2021-05-22 13:19:58', 3),
(4, 'Surandi', 'surandi12@gmail.com', '$2y$10$YYxWxgBZwxkSsc11APiVjumVultvHqwxqMK7tNjNzgXKW5WKv/jKa', '2021-06-02 07:55:02', '2021-06-02 07:55:02', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_batas`
-- (See below for the actual view)
--
CREATE TABLE `v_batas` (
`id` varchar(2)
,`nim` varchar(3)
,`tanggal_mulai` varchar(13)
,`tanggal_akhir` varchar(13)
,`status` varchar(6)
);

-- --------------------------------------------------------

--
-- Structure for view `kp1`
--
DROP TABLE IF EXISTS `kp1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kp1`  AS SELECT `pengajuan_kp`.`nim` AS `nim`, `pengajuan_kp`.`judul_kp` AS `judul_kp`, `pengajuan_kp`.`penguji` AS `penguji`, `pengajuan_kp`.`tahun` AS `tahun`, `pengajuan_kp`.`dokumen` AS `dokumen`, `pengajuan_kp`.`status` AS `status` FROM `pengajuan_kp` ;

-- --------------------------------------------------------

--
-- Structure for view `v_batas`
--
DROP TABLE IF EXISTS `v_batas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_batas`  AS SELECT 'id' AS `id`, 'nim' AS `nim`, 'tanggal_mulai' AS `tanggal_mulai`, 'tanggal_akhir' AS `tanggal_akhir`, 'status' AS `status` FROM (`pengajuan_kp` join `batas` on(`pengajuan_kp`.`id` = `batas`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batas`
--
ALTER TABLE `batas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwalujian`
--
ALTER TABLE `jadwalujian`
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
-- Indexes for table `pengajuan_kp`
--
ALTER TABLE `pengajuan_kp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_prakp`
--
ALTER TABLE `pengajuan_prakp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suratket`
--
ALTER TABLE `suratket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
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
-- AUTO_INCREMENT for table `batas`
--
ALTER TABLE `batas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwalujian`
--
ALTER TABLE `jadwalujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengajuan_kp`
--
ALTER TABLE `pengajuan_kp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengajuan_prakp`
--
ALTER TABLE `pengajuan_prakp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suratket`
--
ALTER TABLE `suratket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
