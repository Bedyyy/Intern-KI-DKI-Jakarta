-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 08:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kipcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'updated', 5, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":5,\"category_id\":3,\"title\":\"Mengenal Area Lintas Batas Negara di Utara Indonesia\",\"seotitle\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia\",\"content\":\"<p><strong>Miangas<\\/strong> - Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi Miangas untuk melihat kehidupan masyarakat di perbatasan. Bukan cuma sekedar perbatasan negara, Miangas adalah Border Cross Area.<\\/p>\\r\\n<p>Mari mulai dengan kedekatan Miangas dan Filipina sejak dulu. Sebagai pulau yang lebih dekat dengan Filipina, Miangas cukup bergantung pada Filipina.&nbsp;<\\/p>\\r\\n<p>Tak hanya sekedar berdagang dan memenuhi kebutuhan bahan pokok, Miangas dan Filipina sudah menali persaudaraan lewat perkawinan. Namun kegiatan ini mulai berkurang sejak ditetapkannya Border Cross Area.<\\/p>\\r\\n<p>\\\"Border Crossing Area (BCA) atau Daerah Lintas Batas, untuk Kabupaten Talaud, Miangas menjadi check poinnya,\\\" ujar Sepno Lantaa, Camat Khusus Miangas.<\\/p>\\r\\n<p>Unsur dari BCA adalah camat, angkatan laut, imigrasi, bea cukai dan karantina. BCA mulai berdiri di Indonesia sejak 1975. Tugas utama dari BCA adalah mengawasi lalu lintas manusia dan perdagangan barang.<\\/p>\\r\\n<p>Sejak itu lalu lintas dan perdagangan mulai ketat. Dalam seminggu hanya ada satu-dua pelintas yang datang dengan menggunakan pamboat atau perahu motor tempel.<\\/p>\\r\\n<p>Untuk masuk ke dalam daerah lintas batas atau BCA pun tak sembarangan, traveler. Kalau biasanya kamu hanya butuh paspor untuk kunjungan ke luar negeri, BCA membutuhkan lebih dari itu yaitu Kartu Lintas Batas (KLB).<\\/p>\\r\\n<p>Kartu Lintas Batas adalah surat ijin untuk tinggal di Border Cross Area. Kartu ini dibagi ke dalam 3 masa tenggang, 13 hari, 30 hari dan 59 hari. Kartu ini bukan bisa digunakan sekali atau PP.<\\/p>\\r\\n<p>\\\"Biasanya kegiatan yang dilakukan oleh pelintas batas Filipina adalah kunjungan keluarga, dagang atau transaksi barter,\\\" jelas Sepno.<\\/p>\\r\\n<p>Angka pernikahan campuran sudah mulai menurun di Miangas. Namun transaksi dagang dan barter masih terus dilakukan. Kedekatan jarak antara Miangas dan Filipina menjadi satu-satunya jalan mencari kebutuhan pokok jika cuaca ekstrem datang.<\\/p>\\r\\n<p>\\\"Saat ada keterlambatan dari kapal perintis atau penumpang, masyarakat yang kehabisan bahan pokok akan mencarinya lewat Filipina,\\\" cerita Sepno.<\\/p>\\r\\n<p>Bagaimana cara Miangas dan Filipina berkomunikasi?<\\/p>\\r\\n<p>Filipina punya seorang perwakilan negara yang ditempatkan di area lintas batas Miangas. Begitu pula perwakilan Indonesia di Filipina.&nbsp;<\\/p>\\r\\n<p>Filipina diwakilkan oleh Albert Lopez dan tinggal di Miangas. Sayangnya, saat detikcom berkunjung, Albert Lopez sedang dalam masa cuti dan kembali ke Filipina.<\\/p>\\r\\n<p>Dari sinilah kebutuhan-kebutuhan Miangas didapatkan. Jika ada warga Filipina yang ingin barter atau dagang ke Miangas, Lopez akan segera memberitahu bahan-bahan apa saja yang diperlukan.<\\/p>\\r\\n<p>\\\"Yang dicari kebutuhan 9 bahan pokok, seperti beras, sayur sampai daging,\\\" tambah Sepno.<\\/p>\\r\\n<p>Lantas seberapa penting adanya jalur lintas batas ini?<\\/p>\\r\\n<p>\\\"Merujuk dari tahun 2002 dalam Border Trait Area, bahwa implikasi perdagangan bebas ini sebenarnya dirasakan apabila diberdayakan. Sebelum adanya pengetatan hukum di tahun 70an, masyarakat sering melakukan perdagangan ke Filipina,\\\" tutur Sepno.<\\/p>\\r\\n<p>Masalah atau kendala yang seringkali dihadapi oleh BCA Miangas biasanya adalah surat ijin tinggal. Ini sudah lazim terjadi, karena sejak dulu Filipina bisa masuk dengan mudah ke Miangas.<\\/p>\\r\\n<p>\\\"Kalau ada pelintas batas yang sakit di Miangas, maka ia akan dirujuk ke rumah sakit terdekat dengan aturan standar yang sudah ditetapkan,\\\" lanjut Sepno.<\\/p>\\r\\n<p>TNI yang betugas di BCA bukan cuma mengawasi lalu lintas warga Filipina dan Miangas. Mereka juga melakukan pengecekan dokumen bersama pihak imigrasi.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.\",\"picture\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia.jpg\",\"picture_description\":\"Border Cross Area di Miangas (Muhammad Ridho)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:55:02\",\"updated_at\":\"2024-10-09 05:45:17\"},\"old\":{\"id\":5,\"category_id\":3,\"title\":\"Mengenal Area Lintas Batas Negara di Utara Indonesia\",\"seotitle\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia\",\"content\":\"<p><strong>Miangas<\\/strong> - Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi Miangas untuk melihat kehidupan masyarakat di perbatasan. Bukan cuma sekedar perbatasan negara, Miangas adalah Border Cross Area.<\\/p>\\r\\n<p>Mari mulai dengan kedekatan Miangas dan Filipina sejak dulu. Sebagai pulau yang lebih dekat dengan Filipina, Miangas cukup bergantung pada Filipina.&nbsp;<\\/p>\\r\\n<p>Tak hanya sekedar berdagang dan memenuhi kebutuhan bahan pokok, Miangas dan Filipina sudah menali persaudaraan lewat perkawinan. Namun kegiatan ini mulai berkurang sejak ditetapkannya Border Cross Area.<\\/p>\\r\\n<p>\\\"Border Crossing Area (BCA) atau Daerah Lintas Batas, untuk Kabupaten Talaud, Miangas menjadi check poinnya,\\\" ujar Sepno Lantaa, Camat Khusus Miangas.<\\/p>\\r\\n<p>Unsur dari BCA adalah camat, angkatan laut, imigrasi, bea cukai dan karantina. BCA mulai berdiri di Indonesia sejak 1975. Tugas utama dari BCA adalah mengawasi lalu lintas manusia dan perdagangan barang.<\\/p>\\r\\n<p>Sejak itu lalu lintas dan perdagangan mulai ketat. Dalam seminggu hanya ada satu-dua pelintas yang datang dengan menggunakan pamboat atau perahu motor tempel.<\\/p>\\r\\n<p>Untuk masuk ke dalam daerah lintas batas atau BCA pun tak sembarangan, traveler. Kalau biasanya kamu hanya butuh paspor untuk kunjungan ke luar negeri, BCA membutuhkan lebih dari itu yaitu Kartu Lintas Batas (KLB).<\\/p>\\r\\n<p>Kartu Lintas Batas adalah surat ijin untuk tinggal di Border Cross Area. Kartu ini dibagi ke dalam 3 masa tenggang, 13 hari, 30 hari dan 59 hari. Kartu ini bukan bisa digunakan sekali atau PP.<\\/p>\\r\\n<p>\\\"Biasanya kegiatan yang dilakukan oleh pelintas batas Filipina adalah kunjungan keluarga, dagang atau transaksi barter,\\\" jelas Sepno.<\\/p>\\r\\n<p>Angka pernikahan campuran sudah mulai menurun di Miangas. Namun transaksi dagang dan barter masih terus dilakukan. Kedekatan jarak antara Miangas dan Filipina menjadi satu-satunya jalan mencari kebutuhan pokok jika cuaca ekstrem datang.<\\/p>\\r\\n<p>\\\"Saat ada keterlambatan dari kapal perintis atau penumpang, masyarakat yang kehabisan bahan pokok akan mencarinya lewat Filipina,\\\" cerita Sepno.<\\/p>\\r\\n<p>Bagaimana cara Miangas dan Filipina berkomunikasi?<\\/p>\\r\\n<p>Filipina punya seorang perwakilan negara yang ditempatkan di area lintas batas Miangas. Begitu pula perwakilan Indonesia di Filipina.&nbsp;<\\/p>\\r\\n<p>Filipina diwakilkan oleh Albert Lopez dan tinggal di Miangas. Sayangnya, saat detikcom berkunjung, Albert Lopez sedang dalam masa cuti dan kembali ke Filipina.<\\/p>\\r\\n<p>Dari sinilah kebutuhan-kebutuhan Miangas didapatkan. Jika ada warga Filipina yang ingin barter atau dagang ke Miangas, Lopez akan segera memberitahu bahan-bahan apa saja yang diperlukan.<\\/p>\\r\\n<p>\\\"Yang dicari kebutuhan 9 bahan pokok, seperti beras, sayur sampai daging,\\\" tambah Sepno.<\\/p>\\r\\n<p>Lantas seberapa penting adanya jalur lintas batas ini?<\\/p>\\r\\n<p>\\\"Merujuk dari tahun 2002 dalam Border Trait Area, bahwa implikasi perdagangan bebas ini sebenarnya dirasakan apabila diberdayakan. Sebelum adanya pengetatan hukum di tahun 70an, masyarakat sering melakukan perdagangan ke Filipina,\\\" tutur Sepno.<\\/p>\\r\\n<p>Masalah atau kendala yang seringkali dihadapi oleh BCA Miangas biasanya adalah surat ijin tinggal. Ini sudah lazim terjadi, karena sejak dulu Filipina bisa masuk dengan mudah ke Miangas.<\\/p>\\r\\n<p>\\\"Kalau ada pelintas batas yang sakit di Miangas, maka ia akan dirujuk ke rumah sakit terdekat dengan aturan standar yang sudah ditetapkan,\\\" lanjut Sepno.<\\/p>\\r\\n<p>TNI yang betugas di BCA bukan cuma mengawasi lalu lintas warga Filipina dan Miangas. Mereka juga melakukan pengecekan dokumen bersama pihak imigrasi.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.\",\"picture\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia.jpg\",\"picture_description\":\"Border Cross Area di Miangas (Muhammad Ridho)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":1,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:55:02\",\"updated_at\":\"2019-11-13 04:25:38\"}}', '2024-10-08 22:45:18', '2024-10-08 22:45:18'),
(2, 'default', 'updated', 5, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":5,\"category_id\":3,\"title\":\"Mengenal Area Lintas Batas Negara di Utara Indonesia\",\"seotitle\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia\",\"content\":\"<p><strong>Miangas<\\/strong> - Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi Miangas untuk melihat kehidupan masyarakat di perbatasan. Bukan cuma sekedar perbatasan negara, Miangas adalah Border Cross Area.<\\/p>\\r\\n<p>Mari mulai dengan kedekatan Miangas dan Filipina sejak dulu. Sebagai pulau yang lebih dekat dengan Filipina, Miangas cukup bergantung pada Filipina.&nbsp;<\\/p>\\r\\n<p>Tak hanya sekedar berdagang dan memenuhi kebutuhan bahan pokok, Miangas dan Filipina sudah menali persaudaraan lewat perkawinan. Namun kegiatan ini mulai berkurang sejak ditetapkannya Border Cross Area.<\\/p>\\r\\n<p>\\\"Border Crossing Area (BCA) atau Daerah Lintas Batas, untuk Kabupaten Talaud, Miangas menjadi check poinnya,\\\" ujar Sepno Lantaa, Camat Khusus Miangas.<\\/p>\\r\\n<p>Unsur dari BCA adalah camat, angkatan laut, imigrasi, bea cukai dan karantina. BCA mulai berdiri di Indonesia sejak 1975. Tugas utama dari BCA adalah mengawasi lalu lintas manusia dan perdagangan barang.<\\/p>\\r\\n<p>Sejak itu lalu lintas dan perdagangan mulai ketat. Dalam seminggu hanya ada satu-dua pelintas yang datang dengan menggunakan pamboat atau perahu motor tempel.<\\/p>\\r\\n<p>Untuk masuk ke dalam daerah lintas batas atau BCA pun tak sembarangan, traveler. Kalau biasanya kamu hanya butuh paspor untuk kunjungan ke luar negeri, BCA membutuhkan lebih dari itu yaitu Kartu Lintas Batas (KLB).<\\/p>\\r\\n<p>Kartu Lintas Batas adalah surat ijin untuk tinggal di Border Cross Area. Kartu ini dibagi ke dalam 3 masa tenggang, 13 hari, 30 hari dan 59 hari. Kartu ini bukan bisa digunakan sekali atau PP.<\\/p>\\r\\n<p>\\\"Biasanya kegiatan yang dilakukan oleh pelintas batas Filipina adalah kunjungan keluarga, dagang atau transaksi barter,\\\" jelas Sepno.<\\/p>\\r\\n<p>Angka pernikahan campuran sudah mulai menurun di Miangas. Namun transaksi dagang dan barter masih terus dilakukan. Kedekatan jarak antara Miangas dan Filipina menjadi satu-satunya jalan mencari kebutuhan pokok jika cuaca ekstrem datang.<\\/p>\\r\\n<p>\\\"Saat ada keterlambatan dari kapal perintis atau penumpang, masyarakat yang kehabisan bahan pokok akan mencarinya lewat Filipina,\\\" cerita Sepno.<\\/p>\\r\\n<p>Bagaimana cara Miangas dan Filipina berkomunikasi?<\\/p>\\r\\n<p>Filipina punya seorang perwakilan negara yang ditempatkan di area lintas batas Miangas. Begitu pula perwakilan Indonesia di Filipina.&nbsp;<\\/p>\\r\\n<p>Filipina diwakilkan oleh Albert Lopez dan tinggal di Miangas. Sayangnya, saat detikcom berkunjung, Albert Lopez sedang dalam masa cuti dan kembali ke Filipina.<\\/p>\\r\\n<p>Dari sinilah kebutuhan-kebutuhan Miangas didapatkan. Jika ada warga Filipina yang ingin barter atau dagang ke Miangas, Lopez akan segera memberitahu bahan-bahan apa saja yang diperlukan.<\\/p>\\r\\n<p>\\\"Yang dicari kebutuhan 9 bahan pokok, seperti beras, sayur sampai daging,\\\" tambah Sepno.<\\/p>\\r\\n<p>Lantas seberapa penting adanya jalur lintas batas ini?<\\/p>\\r\\n<p>\\\"Merujuk dari tahun 2002 dalam Border Trait Area, bahwa implikasi perdagangan bebas ini sebenarnya dirasakan apabila diberdayakan. Sebelum adanya pengetatan hukum di tahun 70an, masyarakat sering melakukan perdagangan ke Filipina,\\\" tutur Sepno.<\\/p>\\r\\n<p>Masalah atau kendala yang seringkali dihadapi oleh BCA Miangas biasanya adalah surat ijin tinggal. Ini sudah lazim terjadi, karena sejak dulu Filipina bisa masuk dengan mudah ke Miangas.<\\/p>\\r\\n<p>\\\"Kalau ada pelintas batas yang sakit di Miangas, maka ia akan dirujuk ke rumah sakit terdekat dengan aturan standar yang sudah ditetapkan,\\\" lanjut Sepno.<\\/p>\\r\\n<p>TNI yang betugas di BCA bukan cuma mengawasi lalu lintas warga Filipina dan Miangas. Mereka juga melakukan pengecekan dokumen bersama pihak imigrasi.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.\",\"picture\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia.jpg\",\"picture_description\":\"Border Cross Area di Miangas (Muhammad Ridho)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":3,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:55:02\",\"updated_at\":\"2024-10-09 05:45:54\"},\"old\":{\"id\":5,\"category_id\":3,\"title\":\"Mengenal Area Lintas Batas Negara di Utara Indonesia\",\"seotitle\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia\",\"content\":\"<p><strong>Miangas<\\/strong> - Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi Miangas untuk melihat kehidupan masyarakat di perbatasan. Bukan cuma sekedar perbatasan negara, Miangas adalah Border Cross Area.<\\/p>\\r\\n<p>Mari mulai dengan kedekatan Miangas dan Filipina sejak dulu. Sebagai pulau yang lebih dekat dengan Filipina, Miangas cukup bergantung pada Filipina.&nbsp;<\\/p>\\r\\n<p>Tak hanya sekedar berdagang dan memenuhi kebutuhan bahan pokok, Miangas dan Filipina sudah menali persaudaraan lewat perkawinan. Namun kegiatan ini mulai berkurang sejak ditetapkannya Border Cross Area.<\\/p>\\r\\n<p>\\\"Border Crossing Area (BCA) atau Daerah Lintas Batas, untuk Kabupaten Talaud, Miangas menjadi check poinnya,\\\" ujar Sepno Lantaa, Camat Khusus Miangas.<\\/p>\\r\\n<p>Unsur dari BCA adalah camat, angkatan laut, imigrasi, bea cukai dan karantina. BCA mulai berdiri di Indonesia sejak 1975. Tugas utama dari BCA adalah mengawasi lalu lintas manusia dan perdagangan barang.<\\/p>\\r\\n<p>Sejak itu lalu lintas dan perdagangan mulai ketat. Dalam seminggu hanya ada satu-dua pelintas yang datang dengan menggunakan pamboat atau perahu motor tempel.<\\/p>\\r\\n<p>Untuk masuk ke dalam daerah lintas batas atau BCA pun tak sembarangan, traveler. Kalau biasanya kamu hanya butuh paspor untuk kunjungan ke luar negeri, BCA membutuhkan lebih dari itu yaitu Kartu Lintas Batas (KLB).<\\/p>\\r\\n<p>Kartu Lintas Batas adalah surat ijin untuk tinggal di Border Cross Area. Kartu ini dibagi ke dalam 3 masa tenggang, 13 hari, 30 hari dan 59 hari. Kartu ini bukan bisa digunakan sekali atau PP.<\\/p>\\r\\n<p>\\\"Biasanya kegiatan yang dilakukan oleh pelintas batas Filipina adalah kunjungan keluarga, dagang atau transaksi barter,\\\" jelas Sepno.<\\/p>\\r\\n<p>Angka pernikahan campuran sudah mulai menurun di Miangas. Namun transaksi dagang dan barter masih terus dilakukan. Kedekatan jarak antara Miangas dan Filipina menjadi satu-satunya jalan mencari kebutuhan pokok jika cuaca ekstrem datang.<\\/p>\\r\\n<p>\\\"Saat ada keterlambatan dari kapal perintis atau penumpang, masyarakat yang kehabisan bahan pokok akan mencarinya lewat Filipina,\\\" cerita Sepno.<\\/p>\\r\\n<p>Bagaimana cara Miangas dan Filipina berkomunikasi?<\\/p>\\r\\n<p>Filipina punya seorang perwakilan negara yang ditempatkan di area lintas batas Miangas. Begitu pula perwakilan Indonesia di Filipina.&nbsp;<\\/p>\\r\\n<p>Filipina diwakilkan oleh Albert Lopez dan tinggal di Miangas. Sayangnya, saat detikcom berkunjung, Albert Lopez sedang dalam masa cuti dan kembali ke Filipina.<\\/p>\\r\\n<p>Dari sinilah kebutuhan-kebutuhan Miangas didapatkan. Jika ada warga Filipina yang ingin barter atau dagang ke Miangas, Lopez akan segera memberitahu bahan-bahan apa saja yang diperlukan.<\\/p>\\r\\n<p>\\\"Yang dicari kebutuhan 9 bahan pokok, seperti beras, sayur sampai daging,\\\" tambah Sepno.<\\/p>\\r\\n<p>Lantas seberapa penting adanya jalur lintas batas ini?<\\/p>\\r\\n<p>\\\"Merujuk dari tahun 2002 dalam Border Trait Area, bahwa implikasi perdagangan bebas ini sebenarnya dirasakan apabila diberdayakan. Sebelum adanya pengetatan hukum di tahun 70an, masyarakat sering melakukan perdagangan ke Filipina,\\\" tutur Sepno.<\\/p>\\r\\n<p>Masalah atau kendala yang seringkali dihadapi oleh BCA Miangas biasanya adalah surat ijin tinggal. Ini sudah lazim terjadi, karena sejak dulu Filipina bisa masuk dengan mudah ke Miangas.<\\/p>\\r\\n<p>\\\"Kalau ada pelintas batas yang sakit di Miangas, maka ia akan dirujuk ke rumah sakit terdekat dengan aturan standar yang sudah ditetapkan,\\\" lanjut Sepno.<\\/p>\\r\\n<p>TNI yang betugas di BCA bukan cuma mengawasi lalu lintas warga Filipina dan Miangas. Mereka juga melakukan pengecekan dokumen bersama pihak imigrasi.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.\",\"picture\":\"mengenal-area-lintas-batas-negara-di-utara-indonesia.jpg\",\"picture_description\":\"Border Cross Area di Miangas (Muhammad Ridho)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:55:02\",\"updated_at\":\"2024-10-09 05:45:17\"}}', '2024-10-08 22:45:54', '2024-10-08 22:45:54'),
(3, 'default', 'updated', 3, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":3,\"category_id\":2,\"title\":\"Bocor, Ini Penampakan Toyota Yaris Versi 2020\",\"seotitle\":\"bocor-ini-penampakan-toyota-yaris-versi-2020\",\"content\":\"<p><strong>Jakarta<\\/strong> - Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini. Toyota Yaris versi penyegaran itu disebut-sebut akan diluncurkan di pameran Tokyo Motor Show (TMS) 2019, di penghujung bulan ini.<\\/p>\\r\\n<p>Secara garis besar, Toyota Yaris 2020 mendapat ubahan signifikan di area fascia-nya. Bentuk grille sekarang terlihat lebih besar. Yaris 2020 menggunakan lampu LED, dilengkapi dengan DRL. Dan untuk lampu kabutnya dibuat lebih minimalis.<\\/p>\\r\\n<p>Ubahan juga dilakukan di bagian buritan. Toyota Yaris 2020 kini dilengkapi lampu LED, lengkap dengan reflektor panjang yang menyambung. Mirip seperti konsep yang ada di Honda BR-V.<\\/p>\\r\\n<p>Yang menarik lagi, kesan crossover pada hatchback pesaing Honda Jazz ini makin terasa berkat penggunaan bemper belakang yang besar. Selain itu, area difuser juga ditinggikan, sehingga menambah kesan sporty.<\\/p>\\r\\n<p>Toyota Yaris 2020 juga akan mendapatkan pelek palang dengan motif baru. Model ini masih mempertahankan antena shark fin, dan desain atap yang seolah melayang (floating roof).<\\/p>\",\"meta_description\":\"Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini.\",\"picture\":\"bocor-ini-penampakan-toyota-yaris-versi-2020.jpg\",\"picture_description\":\"Foto: pandulaju.com.my\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:44:44\",\"updated_at\":\"2024-10-14 03:46:46\"},\"old\":{\"id\":3,\"category_id\":2,\"title\":\"Bocor, Ini Penampakan Toyota Yaris Versi 2020\",\"seotitle\":\"bocor-ini-penampakan-toyota-yaris-versi-2020\",\"content\":\"<p><strong>Jakarta<\\/strong> - Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini. Toyota Yaris versi penyegaran itu disebut-sebut akan diluncurkan di pameran Tokyo Motor Show (TMS) 2019, di penghujung bulan ini.<\\/p>\\r\\n<p>Secara garis besar, Toyota Yaris 2020 mendapat ubahan signifikan di area fascia-nya. Bentuk grille sekarang terlihat lebih besar. Yaris 2020 menggunakan lampu LED, dilengkapi dengan DRL. Dan untuk lampu kabutnya dibuat lebih minimalis.<\\/p>\\r\\n<p>Ubahan juga dilakukan di bagian buritan. Toyota Yaris 2020 kini dilengkapi lampu LED, lengkap dengan reflektor panjang yang menyambung. Mirip seperti konsep yang ada di Honda BR-V.<\\/p>\\r\\n<p>Yang menarik lagi, kesan crossover pada hatchback pesaing Honda Jazz ini makin terasa berkat penggunaan bemper belakang yang besar. Selain itu, area difuser juga ditinggikan, sehingga menambah kesan sporty.<\\/p>\\r\\n<p>Toyota Yaris 2020 juga akan mendapatkan pelek palang dengan motif baru. Model ini masih mempertahankan antena shark fin, dan desain atap yang seolah melayang (floating roof).<\\/p>\",\"meta_description\":\"Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini.\",\"picture\":\"bocor-ini-penampakan-toyota-yaris-versi-2020.jpg\",\"picture_description\":\"Foto: pandulaju.com.my\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"Y\",\"comment\":\"Y\",\"hits\":1,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:44:44\",\"updated_at\":\"2019-11-13 04:34:06\"}}', '2024-10-13 20:46:46', '2024-10-13 20:46:46'),
(4, 'default', 'updated', 6, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":6,\"category_id\":3,\"title\":\"Pantai Mera, Si Cantik dari Pulau Miangas\",\"seotitle\":\"pantai-mera-si-cantik-dari-pulau-miangas\",\"content\":\"<p><strong>Miangas<\\/strong> - Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas. Santai sejenak dan hilangkan penat, selamat datang di Pantai Mera.<\\/p>\\r\\n<p>Miangas memang punya arti menangis. Meski dihadapkan dengan kehidupan yang keras, alam Miangas sungguhlah kaya.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi di pulau perbatasan ini. Pulau seluas 3,2 km persegi ini menyimpan potensi wisata yang mendalam.<\\/p>\\r\\n<p>Inilah Pantai Mera, area wisata yang jauh dari pemukiman warga ini siap untuk dijelajahi. Pantai Mera berada di arah utara Pulau Miangas.&nbsp;<\\/p>\\r\\n<p>Kalau menggunakan motor, pantai ini bisa dicapai sekitar 10 menit. Tapi karena jarangnya kendaraan, kamu bisa sampai di pantai ini dengan waktu 20 menit dengan berjalan kaki.<\\/p>\\r\\n<p>Masih sangat alami, kamu mesti berhati-hati untuk masuk ke pantai ini. Bekas tebangan kelapa dan talud menyembunyikan keindahan Mera.<\\/p>\\r\\n<p>Teriknya pulau ini menjadi satu alasan buat kamu untuk main ke Pantai Mera. Pasirnya putih halus dan air laut yang dingin akan menyegarkan badan yang penuh dengan peluh.<\\/p>\\r\\n<p>Berkarakter karang, kamu yang mau berenang tetap haru hati-hati. Belum lagi ombak besar yang bisa datang tiba-tiba. Asal waspada, kamu bisa menikmati Pantai Mera dengan maksimal.<\\/p>\\r\\n<p>Karena sedikitnya angka kunjungan wisatawan ke pulau ini, tak perlu takut untuk kehabisan spot foto. Sepanjang garis pantai ini akan jadi milikmu seorang.<\\/p>\\r\\n<p>Serasa di pulau pribadi, Miangas menjadi salah satu tempat wisata seksi untuk traveler. Lihat saja foto-foto pantai ini yang begitu kosong.<\\/p>\\r\\n<p>Namun tetap jaga kelakuan dan tidak membuang sampah sembarangan ya. Selain menjadi tempat wisata, Pantai Mera juga jadi tempat pertahanan leluhur Miangas.<\\/p>\\r\\n<p>Sehingga adat sopan dan santun harus selalu dijaga dalam tiap jengkal pulau ini. Kamu boleh piknik di pantai ini asal membawa kembali sampahmu.<\\/p>\\r\\n<p>Gratis dan terbuka untuk umum, wisatawan tak perlu takut untuk datang ke Pantai Mera. Bicara soal transaksi liburan, traveler bisa tarik tunai di satu-satunya bank Miangas, BRI. Liburan jadi lebih mudah.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas.\",\"picture\":\"pantai-mera-si-cantik-dari-pulau-miangas.jpg\",\"picture_description\":\"Pantai Mera (Bonauli\\/detikcom)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:58:26\",\"updated_at\":\"2024-10-14 04:29:43\"},\"old\":{\"id\":6,\"category_id\":3,\"title\":\"Pantai Mera, Si Cantik dari Pulau Miangas\",\"seotitle\":\"pantai-mera-si-cantik-dari-pulau-miangas\",\"content\":\"<p><strong>Miangas<\\/strong> - Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas. Santai sejenak dan hilangkan penat, selamat datang di Pantai Mera.<\\/p>\\r\\n<p>Miangas memang punya arti menangis. Meski dihadapkan dengan kehidupan yang keras, alam Miangas sungguhlah kaya.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi di pulau perbatasan ini. Pulau seluas 3,2 km persegi ini menyimpan potensi wisata yang mendalam.<\\/p>\\r\\n<p>Inilah Pantai Mera, area wisata yang jauh dari pemukiman warga ini siap untuk dijelajahi. Pantai Mera berada di arah utara Pulau Miangas.&nbsp;<\\/p>\\r\\n<p>Kalau menggunakan motor, pantai ini bisa dicapai sekitar 10 menit. Tapi karena jarangnya kendaraan, kamu bisa sampai di pantai ini dengan waktu 20 menit dengan berjalan kaki.<\\/p>\\r\\n<p>Masih sangat alami, kamu mesti berhati-hati untuk masuk ke pantai ini. Bekas tebangan kelapa dan talud menyembunyikan keindahan Mera.<\\/p>\\r\\n<p>Teriknya pulau ini menjadi satu alasan buat kamu untuk main ke Pantai Mera. Pasirnya putih halus dan air laut yang dingin akan menyegarkan badan yang penuh dengan peluh.<\\/p>\\r\\n<p>Berkarakter karang, kamu yang mau berenang tetap haru hati-hati. Belum lagi ombak besar yang bisa datang tiba-tiba. Asal waspada, kamu bisa menikmati Pantai Mera dengan maksimal.<\\/p>\\r\\n<p>Karena sedikitnya angka kunjungan wisatawan ke pulau ini, tak perlu takut untuk kehabisan spot foto. Sepanjang garis pantai ini akan jadi milikmu seorang.<\\/p>\\r\\n<p>Serasa di pulau pribadi, Miangas menjadi salah satu tempat wisata seksi untuk traveler. Lihat saja foto-foto pantai ini yang begitu kosong.<\\/p>\\r\\n<p>Namun tetap jaga kelakuan dan tidak membuang sampah sembarangan ya. Selain menjadi tempat wisata, Pantai Mera juga jadi tempat pertahanan leluhur Miangas.<\\/p>\\r\\n<p>Sehingga adat sopan dan santun harus selalu dijaga dalam tiap jengkal pulau ini. Kamu boleh piknik di pantai ini asal membawa kembali sampahmu.<\\/p>\\r\\n<p>Gratis dan terbuka untuk umum, wisatawan tak perlu takut untuk datang ke Pantai Mera. Bicara soal transaksi liburan, traveler bisa tarik tunai di satu-satunya bank Miangas, BRI. Liburan jadi lebih mudah.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas.\",\"picture\":\"pantai-mera-si-cantik-dari-pulau-miangas.jpg\",\"picture_description\":\"Pantai Mera (Bonauli\\/detikcom)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":1,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:58:26\",\"updated_at\":\"2019-11-13 22:00:11\"}}', '2024-10-13 21:29:43', '2024-10-13 21:29:43'),
(5, 'default', 'updated', 10, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":10,\"category_id\":5,\"title\":\"Apa Benar Minum Air dengan Lemon Bisa Menguruskan Badan?\",\"seotitle\":\"apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan\",\"content\":\"<p><strong>Jakarta<\\/strong> - Sudah sering kita dengarkan anjuran untuk segera meminum segelas air dengan perasan atau potongan buah lemon saat bangun tidur. Anjuran ini biasanya dilakukan mereka yang sedang berusaha menurunkan berat badan.<\\/p>\\r\\n<p>Segelas air lemon dalam perut kosong bisa membantu membuang lemak. Namun benarkah hal ini sebenarnya?<\\/p>\\r\\n<p>Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan. Akan tetapi, jika kamu menggunakan minuman ini sebagai minuman pengganti yang banyak kalori seperi susu atau jus buah, maka bisa membantumu untuk mengurangi jumlah kalori untuk menurunkan badan.<\\/p>\\r\\n<p>\\\"Menjaga tubuh tetap terhidrasi juga menjadi salah satu komponen penting saat menurunkan berat badan. Hal ini disebabkan tubuh kita kadang mengartikan haus sebagai rasa lapar sehingga kita menjadi makan lebih banyak dari kalori yang kita butuhkan. Air lemon membantu kita tetap terhidrasi,\\\" demikian dilaporkan situs tersebut.<\\/p>\\r\\n<p>Sebuah studi yang dipublikasikan dalam Journal of Clinical Biochemistry and Nutrition menemukan bahwa polifenol atau senyawa tumbuhan yang berperan seperti antioksidan dalam jus lemon dan juga kulitnya yang bisa menstimulasi hati atau liver untuk membakar lemak.<\\/p>\\r\\n<p>Studi tersebut dilakukan pada tikus percobaan yang telah diberi makan tinggi lemak sehingga hasilnya tidak terlalu benar-benar bisa dikaitkan dengan manusia kecuali melakukan diet ketogentik.<\\/p>\\r\\n<p>Tak ada minuman yang secara ajaib bisa membantu menurunkan berat badan dan menjadi langsing. Untuk mendapatkannya setidaknya ubah pola makan menjadi sehat dan tetap aktif untuk menurunkan bobot dengan cara yang seimbang dan sehat. Dan perlu diingat bahwa lemon mengandung asam yang bisa mengganggu pencernaanmu saat kosong.<\\/p>\",\"meta_description\":\"Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan.\",\"picture\":\"apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan.jpg\",\"picture_description\":\"Air lemon disebut bisa membantu menurunkan berat badan (Foto: iStock)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 06:15:50\",\"updated_at\":\"2024-10-15 14:30:25\"},\"old\":{\"id\":10,\"category_id\":5,\"title\":\"Apa Benar Minum Air dengan Lemon Bisa Menguruskan Badan?\",\"seotitle\":\"apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan\",\"content\":\"<p><strong>Jakarta<\\/strong> - Sudah sering kita dengarkan anjuran untuk segera meminum segelas air dengan perasan atau potongan buah lemon saat bangun tidur. Anjuran ini biasanya dilakukan mereka yang sedang berusaha menurunkan berat badan.<\\/p>\\r\\n<p>Segelas air lemon dalam perut kosong bisa membantu membuang lemak. Namun benarkah hal ini sebenarnya?<\\/p>\\r\\n<p>Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan. Akan tetapi, jika kamu menggunakan minuman ini sebagai minuman pengganti yang banyak kalori seperi susu atau jus buah, maka bisa membantumu untuk mengurangi jumlah kalori untuk menurunkan badan.<\\/p>\\r\\n<p>\\\"Menjaga tubuh tetap terhidrasi juga menjadi salah satu komponen penting saat menurunkan berat badan. Hal ini disebabkan tubuh kita kadang mengartikan haus sebagai rasa lapar sehingga kita menjadi makan lebih banyak dari kalori yang kita butuhkan. Air lemon membantu kita tetap terhidrasi,\\\" demikian dilaporkan situs tersebut.<\\/p>\\r\\n<p>Sebuah studi yang dipublikasikan dalam Journal of Clinical Biochemistry and Nutrition menemukan bahwa polifenol atau senyawa tumbuhan yang berperan seperti antioksidan dalam jus lemon dan juga kulitnya yang bisa menstimulasi hati atau liver untuk membakar lemak.<\\/p>\\r\\n<p>Studi tersebut dilakukan pada tikus percobaan yang telah diberi makan tinggi lemak sehingga hasilnya tidak terlalu benar-benar bisa dikaitkan dengan manusia kecuali melakukan diet ketogentik.<\\/p>\\r\\n<p>Tak ada minuman yang secara ajaib bisa membantu menurunkan berat badan dan menjadi langsing. Untuk mendapatkannya setidaknya ubah pola makan menjadi sehat dan tetap aktif untuk menurunkan bobot dengan cara yang seimbang dan sehat. Dan perlu diingat bahwa lemon mengandung asam yang bisa mengganggu pencernaanmu saat kosong.<\\/p>\",\"meta_description\":\"Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan.\",\"picture\":\"apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan.jpg\",\"picture_description\":\"Air lemon disebut bisa membantu menurunkan berat badan (Foto: iStock)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":1,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 06:15:50\",\"updated_at\":\"2019-11-13 22:10:00\"}}', '2024-10-15 07:30:25', '2024-10-15 07:30:25'),
(6, 'default', 'updated', 6, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":6,\"category_id\":3,\"title\":\"Pantai Mera, Si Cantik dari Pulau Miangas\",\"seotitle\":\"pantai-mera-si-cantik-dari-pulau-miangas\",\"content\":\"<p><strong>Miangas<\\/strong> - Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas. Santai sejenak dan hilangkan penat, selamat datang di Pantai Mera.<\\/p>\\r\\n<p>Miangas memang punya arti menangis. Meski dihadapkan dengan kehidupan yang keras, alam Miangas sungguhlah kaya.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi di pulau perbatasan ini. Pulau seluas 3,2 km persegi ini menyimpan potensi wisata yang mendalam.<\\/p>\\r\\n<p>Inilah Pantai Mera, area wisata yang jauh dari pemukiman warga ini siap untuk dijelajahi. Pantai Mera berada di arah utara Pulau Miangas.&nbsp;<\\/p>\\r\\n<p>Kalau menggunakan motor, pantai ini bisa dicapai sekitar 10 menit. Tapi karena jarangnya kendaraan, kamu bisa sampai di pantai ini dengan waktu 20 menit dengan berjalan kaki.<\\/p>\\r\\n<p>Masih sangat alami, kamu mesti berhati-hati untuk masuk ke pantai ini. Bekas tebangan kelapa dan talud menyembunyikan keindahan Mera.<\\/p>\\r\\n<p>Teriknya pulau ini menjadi satu alasan buat kamu untuk main ke Pantai Mera. Pasirnya putih halus dan air laut yang dingin akan menyegarkan badan yang penuh dengan peluh.<\\/p>\\r\\n<p>Berkarakter karang, kamu yang mau berenang tetap haru hati-hati. Belum lagi ombak besar yang bisa datang tiba-tiba. Asal waspada, kamu bisa menikmati Pantai Mera dengan maksimal.<\\/p>\\r\\n<p>Karena sedikitnya angka kunjungan wisatawan ke pulau ini, tak perlu takut untuk kehabisan spot foto. Sepanjang garis pantai ini akan jadi milikmu seorang.<\\/p>\\r\\n<p>Serasa di pulau pribadi, Miangas menjadi salah satu tempat wisata seksi untuk traveler. Lihat saja foto-foto pantai ini yang begitu kosong.<\\/p>\\r\\n<p>Namun tetap jaga kelakuan dan tidak membuang sampah sembarangan ya. Selain menjadi tempat wisata, Pantai Mera juga jadi tempat pertahanan leluhur Miangas.<\\/p>\\r\\n<p>Sehingga adat sopan dan santun harus selalu dijaga dalam tiap jengkal pulau ini. Kamu boleh piknik di pantai ini asal membawa kembali sampahmu.<\\/p>\\r\\n<p>Gratis dan terbuka untuk umum, wisatawan tak perlu takut untuk datang ke Pantai Mera. Bicara soal transaksi liburan, traveler bisa tarik tunai di satu-satunya bank Miangas, BRI. Liburan jadi lebih mudah.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas.\",\"picture\":\"pantai-mera-si-cantik-dari-pulau-miangas.jpg\",\"picture_description\":\"Pantai Mera (Bonauli\\/detikcom)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":3,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:58:26\",\"updated_at\":\"2024-10-15 14:35:48\"},\"old\":{\"id\":6,\"category_id\":3,\"title\":\"Pantai Mera, Si Cantik dari Pulau Miangas\",\"seotitle\":\"pantai-mera-si-cantik-dari-pulau-miangas\",\"content\":\"<p><strong>Miangas<\\/strong> - Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas. Santai sejenak dan hilangkan penat, selamat datang di Pantai Mera.<\\/p>\\r\\n<p>Miangas memang punya arti menangis. Meski dihadapkan dengan kehidupan yang keras, alam Miangas sungguhlah kaya.<\\/p>\\r\\n<p>detikcom bersama Bank BRI melakukan ekspedisi di pulau perbatasan ini. Pulau seluas 3,2 km persegi ini menyimpan potensi wisata yang mendalam.<\\/p>\\r\\n<p>Inilah Pantai Mera, area wisata yang jauh dari pemukiman warga ini siap untuk dijelajahi. Pantai Mera berada di arah utara Pulau Miangas.&nbsp;<\\/p>\\r\\n<p>Kalau menggunakan motor, pantai ini bisa dicapai sekitar 10 menit. Tapi karena jarangnya kendaraan, kamu bisa sampai di pantai ini dengan waktu 20 menit dengan berjalan kaki.<\\/p>\\r\\n<p>Masih sangat alami, kamu mesti berhati-hati untuk masuk ke pantai ini. Bekas tebangan kelapa dan talud menyembunyikan keindahan Mera.<\\/p>\\r\\n<p>Teriknya pulau ini menjadi satu alasan buat kamu untuk main ke Pantai Mera. Pasirnya putih halus dan air laut yang dingin akan menyegarkan badan yang penuh dengan peluh.<\\/p>\\r\\n<p>Berkarakter karang, kamu yang mau berenang tetap haru hati-hati. Belum lagi ombak besar yang bisa datang tiba-tiba. Asal waspada, kamu bisa menikmati Pantai Mera dengan maksimal.<\\/p>\\r\\n<p>Karena sedikitnya angka kunjungan wisatawan ke pulau ini, tak perlu takut untuk kehabisan spot foto. Sepanjang garis pantai ini akan jadi milikmu seorang.<\\/p>\\r\\n<p>Serasa di pulau pribadi, Miangas menjadi salah satu tempat wisata seksi untuk traveler. Lihat saja foto-foto pantai ini yang begitu kosong.<\\/p>\\r\\n<p>Namun tetap jaga kelakuan dan tidak membuang sampah sembarangan ya. Selain menjadi tempat wisata, Pantai Mera juga jadi tempat pertahanan leluhur Miangas.<\\/p>\\r\\n<p>Sehingga adat sopan dan santun harus selalu dijaga dalam tiap jengkal pulau ini. Kamu boleh piknik di pantai ini asal membawa kembali sampahmu.<\\/p>\\r\\n<p>Gratis dan terbuka untuk umum, wisatawan tak perlu takut untuk datang ke Pantai Mera. Bicara soal transaksi liburan, traveler bisa tarik tunai di satu-satunya bank Miangas, BRI. Liburan jadi lebih mudah.<\\/p>\\r\\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.<\\/p>\",\"meta_description\":\"Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas.\",\"picture\":\"pantai-mera-si-cantik-dari-pulau-miangas.jpg\",\"picture_description\":\"Pantai Mera (Bonauli\\/detikcom)\",\"tag\":\"PopojiCMS,CMS Indonesia\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 05:58:26\",\"updated_at\":\"2024-10-14 04:29:43\"}}', '2024-10-15 07:35:48', '2024-10-15 07:35:48'),
(7, 'default', 'created', 11, 'App\\Menu', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"parent\":0,\"group\":1,\"title\":\"Test\",\"url\":\"pages\\/test\",\"class\":null,\"target\":\"none\",\"position\":1,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-23 04:23:28\",\"updated_at\":\"2024-10-23 04:23:28\"}}', '2024-10-22 21:23:28', '2024-10-22 21:23:28'),
(8, 'default', 'deleted', 11, 'App\\Menu', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"parent\":0,\"group\":1,\"title\":\"Test\",\"url\":\"pages\\/test\",\"class\":null,\"target\":\"none\",\"position\":1,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-23 04:23:28\",\"updated_at\":\"2024-10-23 04:23:28\"}}', '2024-10-22 21:23:54', '2024-10-22 21:23:54'),
(9, 'default', 'created', 2, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"tentang\":\"Memek lu dig\",\"judul\":\"Digra Padang\",\"keterangan\":\"Anak Kontol\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-24 09:06:04\",\"updated_at\":\"2024-10-24 09:06:04\"}}', '2024-10-24 02:06:04', '2024-10-24 02:06:04'),
(10, 'default', 'created', 3, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"tentang\":\"test2\",\"judul\":\"test2\",\"keterangan\":\"test2\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 09:33:27\",\"updated_at\":\"2024-10-27 09:33:27\"}}', '2024-10-27 02:33:27', '2024-10-27 02:33:27'),
(11, 'default', 'deleted', 3, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"tentang\":\"test2\",\"judul\":\"test2\",\"keterangan\":\"test2\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 09:33:27\",\"updated_at\":\"2024-10-27 09:33:27\"}}', '2024-10-27 06:15:58', '2024-10-27 06:15:58'),
(12, 'default', 'created', 4, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"tentang\":\"testestetset\",\"judul\":\"Test\",\"keterangan\":\"test\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 13:19:10\",\"updated_at\":\"2024-10-27 13:19:10\"}}', '2024-10-27 06:19:10', '2024-10-27 06:19:10'),
(13, 'default', 'created', 5, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":5,\"tentang\":\"dlkadwaflbflkf\",\"judul\":\"test satu lagi\",\"keterangan\":\"tsesatetaeta\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 13:24:17\",\"updated_at\":\"2024-10-27 13:24:17\"}}', '2024-10-27 06:24:17', '2024-10-27 06:24:17'),
(14, 'default', 'created', 6, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":6,\"tentang\":\"daksbdkabsda\",\"judul\":\"test\",\"keterangan\":\"asdbasbd\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 14:21:02\",\"updated_at\":\"2024-10-27 14:21:02\"}}', '2024-10-27 07:21:02', '2024-10-27 07:21:02'),
(15, 'default', 'created', 7, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":7,\"tentang\":\"dawdadaw\",\"judul\":\"sdadwa\",\"keterangan\":\"dadawd\",\"file\":\"List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 14:54:59\",\"updated_at\":\"2024-10-27 14:54:59\"}}', '2024-10-27 07:54:59', '2024-10-27 07:54:59'),
(16, 'default', 'deleted', 7, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":7,\"tentang\":\"dawdadaw\",\"judul\":\"sdadwa\",\"keterangan\":\"dadawd\",\"file\":\"List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 14:54:59\",\"updated_at\":\"2024-10-27 14:54:59\"}}', '2024-10-27 07:59:25', '2024-10-27 07:59:25'),
(17, 'default', 'deleted', 6, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":6,\"tentang\":\"daksbdkabsda\",\"judul\":\"test\",\"keterangan\":\"asdbasbd\",\"file\":null,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 14:21:02\",\"updated_at\":\"2024-10-27 14:21:02\"}}', '2024-10-27 07:59:43', '2024-10-27 07:59:43'),
(18, 'default', 'created', 8, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":8,\"tentang\":\"ddasdaw\",\"judul\":\"adwdadawdaw\",\"keterangan\":\"dwawdawd\",\"file\":\"List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 15:01:02\",\"updated_at\":\"2024-10-27 15:01:02\"}}', '2024-10-27 08:01:02', '2024-10-27 08:01:02'),
(19, 'default', 'deleted', 8, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":8,\"tentang\":\"ddasdaw\",\"judul\":\"adwdadawdaw\",\"keterangan\":\"dwawdawd\",\"file\":\"List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-27 15:01:02\",\"updated_at\":\"2024-10-27 15:01:02\"}}', '2024-10-27 08:01:43', '2024-10-27 08:01:43'),
(20, 'default', 'created', 9, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":9,\"tentang\":\"dawdawdawdawdaw\",\"judul\":\"asdawdawdwad\",\"keterangan\":\"wadadawdawdwd\",\"file\":\"1730081340_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:09:00\",\"updated_at\":\"2024-10-28 02:09:00\"}}', '2024-10-27 19:09:00', '2024-10-27 19:09:00'),
(21, 'default', 'deleted', 9, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":9,\"tentang\":\"dawdawdawdawdaw\",\"judul\":\"asdawdawdwad\",\"keterangan\":\"wadadawdawdwd\",\"file\":\"1730081340_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:09:00\",\"updated_at\":\"2024-10-28 02:09:00\"}}', '2024-10-27 19:13:30', '2024-10-27 19:13:30'),
(22, 'default', 'created', 10, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":10,\"tentang\":\"wwwwww\",\"judul\":\"dawdawd\",\"keterangan\":\"dawdadww\",\"file\":\"1730081657_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:14:17\",\"updated_at\":\"2024-10-28 02:14:17\"}}', '2024-10-27 19:14:17', '2024-10-27 19:14:17'),
(23, 'default', 'deleted', 10, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":10,\"tentang\":\"wwwwww\",\"judul\":\"dawdawd\",\"keterangan\":\"dawdadww\",\"file\":\"1730081657_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:14:17\",\"updated_at\":\"2024-10-28 02:14:17\"}}', '2024-10-27 19:15:57', '2024-10-27 19:15:57'),
(24, 'default', 'created', 11, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"tentang\":\"wwwww\",\"judul\":\"asdadwa\",\"keterangan\":\"dawdawdww\",\"file\":\"1730081777_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:16:17\",\"updated_at\":\"2024-10-28 02:16:17\"}}', '2024-10-27 19:16:17', '2024-10-27 19:16:17'),
(25, 'default', 'deleted', 11, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"tentang\":\"wwwww\",\"judul\":\"asdadwa\",\"keterangan\":\"dawdawdww\",\"file\":\"1730081777_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 02:16:17\",\"updated_at\":\"2024-10-28 02:16:17\"}}', '2024-10-27 22:51:48', '2024-10-27 22:51:48'),
(26, 'default', 'created', 12, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":12,\"tentang\":\"gajelas\",\"judul\":\"digra\",\"keterangan\":\"padang\",\"file\":\"1730094733_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 05:52:13\",\"updated_at\":\"2024-10-28 05:52:13\"}}', '2024-10-27 22:52:13', '2024-10-27 22:52:13'),
(27, 'default', 'updated', 1, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"tentang\":\"Test\",\"judul\":\"Test\",\"keterangan\":\"Test\",\"file\":\"1730209886_Proposal Lamaran Magang Hadiid.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-24 09:28:10\",\"updated_at\":\"2024-10-29 13:51:26\"},\"old\":{\"id\":1,\"tentang\":\"Test\",\"judul\":\"Test\",\"keterangan\":\"Test\",\"file\":\"Test.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-24 09:28:10\",\"updated_at\":\"2024-10-24 09:28:10\"}}', '2024-10-29 06:51:26', '2024-10-29 06:51:26'),
(28, 'default', 'updated', 12, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":12,\"tentang\":\"gajelas\",\"judul\":\"digra\",\"keterangan\":\"padang\",\"file\":\"1730209994_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 05:52:13\",\"updated_at\":\"2024-10-29 13:53:14\"},\"old\":{\"id\":12,\"tentang\":\"gajelas\",\"judul\":\"digra\",\"keterangan\":\"padang\",\"file\":\"1730094733_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 05:52:13\",\"updated_at\":\"2024-10-28 05:52:13\"}}', '2024-10-29 06:53:14', '2024-10-29 06:53:14');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(29, 'default', 'deleted', 12, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":12,\"tentang\":\"gajelas\",\"judul\":\"digra\",\"keterangan\":\"padang\",\"file\":\"1730209994_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-28 05:52:13\",\"updated_at\":\"2024-10-29 13:53:14\"}}', '2024-10-29 06:53:40', '2024-10-29 06:53:40'),
(30, 'default', 'deleted', 1, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"tentang\":\"Test\",\"judul\":\"Test\",\"keterangan\":\"Test\",\"file\":\"1730209886_Proposal Lamaran Magang Hadiid.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-24 09:28:10\",\"updated_at\":\"2024-10-29 13:51:26\"}}', '2024-10-29 06:53:40', '2024-10-29 06:53:40'),
(31, 'default', 'created', 13, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":13,\"tentang\":\"asdasdlawjdlajdw\",\"judul\":\"regulasi\",\"keterangan\":\"coba-coba\",\"file\":\"1730210040_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 13:54:00\",\"updated_at\":\"2024-10-29 13:54:00\"}}', '2024-10-29 06:54:00', '2024-10-29 06:54:00'),
(32, 'default', 'deleted', 13, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":13,\"tentang\":\"asdasdlawjdlajdw\",\"judul\":\"regulasi\",\"keterangan\":\"coba-coba\",\"file\":\"1730210040_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 13:54:00\",\"updated_at\":\"2024-10-29 13:54:00\"}}', '2024-10-29 07:05:20', '2024-10-29 07:05:20'),
(33, 'default', 'created', 14, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211108_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:11:48\"}}', '2024-10-29 14:11:48', '2024-10-29 14:11:48'),
(34, 'default', 'updated', 14, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211135_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:12:15\"},\"old\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211108_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:11:48\"}}', '2024-10-29 14:12:15', '2024-10-29 14:12:15'),
(35, 'default', 'updated', 14, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211262_Surat Permohonan Magang.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:14:22\"},\"old\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211135_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:12:15\"}}', '2024-10-29 14:14:22', '2024-10-29 14:14:22'),
(36, 'default', 'deleted', 14, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":14,\"tentang\":\"dawdawd\",\"judul\":\"sadawd\",\"keterangan\":\"dwadwa\",\"file\":\"1730211262_Surat Permohonan Magang.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:11:48\",\"updated_at\":\"2024-10-29 21:14:22\"}}', '2024-10-29 07:17:18', '2024-10-29 07:17:18'),
(37, 'default', 'created', 15, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211543_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:19:03\"}}', '2024-10-29 14:19:03', '2024-10-29 14:19:03'),
(38, 'default', 'updated', 15, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211567_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:19:27\"},\"old\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211543_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:19:03\"}}', '2024-10-29 14:19:27', '2024-10-29 14:19:27'),
(39, 'default', 'updated', 15, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211979_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:26:19\"},\"old\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211567_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:19:27\"}}', '2024-10-29 14:26:19', '2024-10-29 14:26:19'),
(40, 'default', 'deleted', 15, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":15,\"tentang\":\"dawdadawda\",\"judul\":\"asdawd\",\"keterangan\":\"adadawda\",\"file\":\"1730211979_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:19:03\",\"updated_at\":\"2024-10-29 21:26:19\"}}', '2024-10-29 07:26:37', '2024-10-29 07:26:37'),
(41, 'default', 'created', 16, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":16,\"tentang\":\"DWDWDWDW\",\"judul\":\"DASDAS\",\"keterangan\":\"DASDASD\",\"file\":\"1730212428_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:33:48\",\"updated_at\":\"2024-10-29 21:33:48\"}}', '2024-10-29 14:33:48', '2024-10-29 14:33:48'),
(42, 'default', 'updated', 16, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":16,\"tentang\":\"DWD\",\"judul\":\"DASDAS\",\"keterangan\":\"DASDASD\",\"file\":\"1730212443_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:33:48\",\"updated_at\":\"2024-10-29 21:34:03\"},\"old\":{\"id\":16,\"tentang\":\"DWDWDWDW\",\"judul\":\"DASDAS\",\"keterangan\":\"DASDASD\",\"file\":\"1730212428_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:33:48\",\"updated_at\":\"2024-10-29 21:33:48\"}}', '2024-10-29 14:34:03', '2024-10-29 14:34:03'),
(43, 'default', 'deleted', 16, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":16,\"tentang\":\"DWD\",\"judul\":\"DASDAS\",\"keterangan\":\"DASDASD\",\"file\":\"1730212443_CV ATS Muhammad Hadiid Faathir.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:33:48\",\"updated_at\":\"2024-10-29 21:34:03\"}}', '2024-10-29 07:34:42', '2024-10-29 07:34:42'),
(44, 'default', 'created', 17, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":17,\"tentang\":\"dwadadwa\",\"judul\":\"asdaw\",\"keterangan\":\"dwadawd\",\"file\":\"1730213302_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:48:22\",\"updated_at\":\"2024-10-29 21:48:22\"}}', '2024-10-29 14:48:22', '2024-10-29 14:48:22'),
(45, 'default', 'updated', 8, 'App\\Post', NULL, NULL, '{\"attributes\":{\"id\":8,\"category_id\":4,\"title\":\"Woku Balanga dan Tinoransak Disajikan di Java\",\"seotitle\":\"woku-balanga-dan-tinoransak-disajikan-di-java\",\"content\":\"<p><strong>Jakarta<\\/strong> - Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan. Cocok buat lidah para penyuka hidangan Manado yang terkenal pedas. Untuk penggemar dabu-dabu jangan lupa cobain Udang bakar Dabu-Dabu yang bisa bikin ketagihan. Mau?<\\/p>\\r\\n<p>Setelah sukses dengan rangkaian promo \'Pasar Senggol\' yang menghadirkan beragam kuliner tradisional dari seluruh Indonesia, seperti Sumatera, Jawa, dan Bali. Kini Java Restaurant menghadirkan makanan bercita rasa hot &amp; spicy asal Manado. Hidangan yang memiliki penggemar tersendiri ini bakal digelar hingga akhir Juli 2011.<\\/p>\\r\\n<p>Masakan Manado memang terkenal dengan citarasanya yang hot &amp; spicy. Selain itu hidangan Manado juga terkenal royal dalam pemakaian bumbu sehingga sedap rasanya. Misalkan saja ayam woku blanga yang banyak disajikan di berbagai restoran Manado atau Tonoransak yang pedas mengigit.<\\/p>\\r\\n<p>Tinotuan alias bubur Manado sendiri bakal diracik dan disajikan sesaat setelah dipesan. Selain itu tak lengkap rasanya jika belum menikmati Cakalang Pampis, Ayam Woku Belanga, Tumis Bunga Pepaya dan Bruinnebon. Jajanan khas Manado yang ditawarkan oleh Java Restaurant yang terletak di lanta 2, InterContinental Jakarta MidPlaza ini juga sayang untuk dilewatkan.<\\/p>\\r\\n<p>Ada panada yang berisi ikan cakalang dengan sensasi rasa pedas. Kue khas Manado yang ini tak hanya aromanya yang wangi tetapi juga enak rasanya. Selain itu pengunjung juga bisa mencicipi lalampa, klapertart yang manis, dan kue bugis yang manis-manis gurih.<\\/p>\\r\\n<p>Kesemua hidangan buffet tersebut dapat dinikmati sepuas hati cukup dengan membayar Rp 188.000++ per orang. Gimana, sudah tak sabar ingin merasakan sengatan masakan Manado yang pedas ini? Sebelum datang berkunjung ada baiknya melakukan reservasi terlebih dahulu di 021-2510888. Mari makan joo!<\\/p>\",\"meta_description\":\"Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan.\",\"picture\":\"woku-balanga-dan-tinoransak-disajikan-di-java.jpg\",\"picture_description\":\"Rasa bumbu woku sangat kaya akan rempah\",\"tag\":\"PopojiCMS,CMS Indonesia,Manado\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":2,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 06:10:16\",\"updated_at\":\"2024-11-02 11:59:10\"},\"old\":{\"id\":8,\"category_id\":4,\"title\":\"Woku Balanga dan Tinoransak Disajikan di Java\",\"seotitle\":\"woku-balanga-dan-tinoransak-disajikan-di-java\",\"content\":\"<p><strong>Jakarta<\\/strong> - Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan. Cocok buat lidah para penyuka hidangan Manado yang terkenal pedas. Untuk penggemar dabu-dabu jangan lupa cobain Udang bakar Dabu-Dabu yang bisa bikin ketagihan. Mau?<\\/p>\\r\\n<p>Setelah sukses dengan rangkaian promo \'Pasar Senggol\' yang menghadirkan beragam kuliner tradisional dari seluruh Indonesia, seperti Sumatera, Jawa, dan Bali. Kini Java Restaurant menghadirkan makanan bercita rasa hot &amp; spicy asal Manado. Hidangan yang memiliki penggemar tersendiri ini bakal digelar hingga akhir Juli 2011.<\\/p>\\r\\n<p>Masakan Manado memang terkenal dengan citarasanya yang hot &amp; spicy. Selain itu hidangan Manado juga terkenal royal dalam pemakaian bumbu sehingga sedap rasanya. Misalkan saja ayam woku blanga yang banyak disajikan di berbagai restoran Manado atau Tonoransak yang pedas mengigit.<\\/p>\\r\\n<p>Tinotuan alias bubur Manado sendiri bakal diracik dan disajikan sesaat setelah dipesan. Selain itu tak lengkap rasanya jika belum menikmati Cakalang Pampis, Ayam Woku Belanga, Tumis Bunga Pepaya dan Bruinnebon. Jajanan khas Manado yang ditawarkan oleh Java Restaurant yang terletak di lanta 2, InterContinental Jakarta MidPlaza ini juga sayang untuk dilewatkan.<\\/p>\\r\\n<p>Ada panada yang berisi ikan cakalang dengan sensasi rasa pedas. Kue khas Manado yang ini tak hanya aromanya yang wangi tetapi juga enak rasanya. Selain itu pengunjung juga bisa mencicipi lalampa, klapertart yang manis, dan kue bugis yang manis-manis gurih.<\\/p>\\r\\n<p>Kesemua hidangan buffet tersebut dapat dinikmati sepuas hati cukup dengan membayar Rp 188.000++ per orang. Gimana, sudah tak sabar ingin merasakan sengatan masakan Manado yang pedas ini? Sebelum datang berkunjung ada baiknya melakukan reservasi terlebih dahulu di 021-2510888. Mari makan joo!<\\/p>\",\"meta_description\":\"Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan.\",\"picture\":\"woku-balanga-dan-tinoransak-disajikan-di-java.jpg\",\"picture_description\":\"Rasa bumbu woku sangat kaya akan rempah\",\"tag\":\"PopojiCMS,CMS Indonesia,Manado\",\"type\":\"general\",\"active\":\"Y\",\"headline\":\"N\",\"comment\":\"Y\",\"hits\":1,\"created_by\":2,\"updated_by\":1,\"created_at\":\"2019-10-15 06:10:16\",\"updated_at\":\"2019-11-13 21:57:02\"}}', '2024-11-02 04:59:10', '2024-11-02 04:59:10'),
(46, 'default', 'created', 18, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":18,\"tentang\":\"sakjhdlakhdlahldaw\",\"judul\":\"test\",\"keterangan\":\"test123\",\"file\":\"1730690520_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-04 10:22:00\",\"updated_at\":\"2024-11-04 10:22:00\"}}', '2024-11-04 03:22:00', '2024-11-04 03:22:00'),
(47, 'default', 'updated', 18, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":18,\"tentang\":\"sakjhdlakhdlahldaw\",\"judul\":\"test\",\"keterangan\":\"test123\",\"file\":\"1730690546_Introduction to Cybersecurity devnull.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-04 10:22:00\",\"updated_at\":\"2024-11-04 10:22:26\"},\"old\":{\"id\":18,\"tentang\":\"sakjhdlakhdlahldaw\",\"judul\":\"test\",\"keterangan\":\"test123\",\"file\":\"1730690520_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-04 10:22:00\",\"updated_at\":\"2024-11-04 10:22:00\"}}', '2024-11-04 03:22:26', '2024-11-04 03:22:26'),
(48, 'default', 'deleted', 17, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":17,\"tentang\":\"dwadadwa\",\"judul\":\"asdaw\",\"keterangan\":\"dwadawd\",\"file\":\"1730213302_List Berita Double Website KI Jakarta.pdf\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-10-29 21:48:22\",\"updated_at\":\"2024-10-29 21:48:22\"}}', '2024-11-03 20:22:32', '2024-11-03 20:22:32'),
(49, 'default', 'created', 1, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"tentang\":\"daskdaksdams\",\"judul\":\"test\",\"keterangan\":\"123\",\"file\":\"1730695281_Introduction to Cybersecurity devnull.pdf\",\"diunduh\":0,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-04 11:41:21\",\"updated_at\":\"2024-11-04 11:41:21\"}}', '2024-11-04 04:41:21', '2024-11-04 04:41:21'),
(50, 'default', 'created', 2, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"tentang\":\"dwadawdadawdaw\",\"judul\":\"Baru\",\"keterangan\":\"asdasdas\",\"file\":\"1730779337_List Berita Double Website KI Jakarta.pdf\",\"diunduh\":0,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-05 11:02:17\",\"updated_at\":\"2024-11-05 11:02:17\"}}', '2024-11-05 04:02:17', '2024-11-05 04:02:17'),
(51, 'default', 'created', 1, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":1,\"kategori_permohonan\":\"lembagaorganisasi\",\"nomor_identitas\":12312443,\"nama_pemohon\":\"dwadawdaw\",\"file_ktp\":\"C:\\\\xampp\\\\tmp\\\\php95E6.tmp\",\"alamat_pemohon\":\"asdasdaw\",\"email_pemohon\":\"test@gmail.com\",\"no_telp_pemohon\":\"4234235\",\"pekerjaan_pemohon\":\"asdasdasd\",\"tujuan_permohonan\":\"sdasdasdasdasd\",\"rincian_informasi\":\"safsdfsdfsdfds\",\"cara_dapat_informasi\":\"mencatat\",\"dapat_salinan_informasi\":\"hardcopy\",\"cara_dapat_salinan_informasi\":\"email-radio\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-07 08:05:23\",\"updated_at\":\"2024-11-07 08:05:23\"}}', '2024-11-07 01:05:23', '2024-11-07 01:05:23'),
(52, 'default', 'created', 2, 'App\\Contact', NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Hadid\",\"email\":\"Hadid@gmail.com\",\"subject\":\"Kepo\",\"message\":\"Kepo bgt\",\"status\":\"N\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-07 08:11:12\",\"updated_at\":\"2024-11-07 08:11:12\"}}', '2024-11-07 01:11:12', '2024-11-07 01:11:12'),
(53, 'default', 'created', 2, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":2,\"kategori_permohonan\":\"perorangan\",\"nomor_identitas\":317401,\"nama_pemohon\":\"Muhammad Hadiid Faathir\",\"file_ktp\":\"C:\\\\xampp\\\\tmp\\\\phpDD0D.tmp\",\"alamat_pemohon\":\"Jl Jakarta\",\"email_pemohon\":\"Hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Gk kerja\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Gak ada\",\"cara_dapat_informasi\":\"membaca\",\"dapat_salinan_informasi\":\"softcopy\",\"cara_dapat_salinan_informasi\":\"email-radio\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-07 08:14:25\",\"updated_at\":\"2024-11-07 08:14:25\"}}', '2024-11-07 01:14:25', '2024-11-07 01:14:25'),
(54, 'default', 'created', 3, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":3,\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":3312,\"nama_pemohon\":\"Rafly\",\"file_ktp\":\"C:\\\\xampp\\\\tmp\\\\php8928.tmp\",\"alamat_pemohon\":\"Jakarta Utara\",\"email_pemohon\":\"rafly@gmail.com\",\"no_telp_pemohon\":\"21831239\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-11 07:50:40\",\"updated_at\":\"2024-11-11 07:50:40\"}}', '2024-11-11 00:50:40', '2024-11-11 00:50:40'),
(55, 'default', 'created', 1, 'App\\KeberatanInformasi', NULL, NULL, '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"123\",\"nama_pemohon\":\"Daeng\",\"file_ktp\":\"C:\\\\xampp\\\\tmp\\\\php60A6.tmp\",\"no_telp_pemohon\":\"0857\",\"pekerjaan_pemohon\":\"Gak Kerja\",\"alamat_pemohon\":\"Jakarta Utara\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-11 08:54:57\",\"updated_at\":\"2024-11-11 08:54:57\"}}', '2024-11-11 01:54:57', '2024-11-11 01:54:57'),
(56, 'default', 'created', 2, 'App\\KeberatanInformasi', NULL, NULL, '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731395044_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Informasi Disampaikan Melebihi Jangka Waktu yang Ditentukan\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-12 14:04:04\",\"updated_at\":\"2024-11-12 14:04:04\"}}', '2024-11-12 07:04:05', '2024-11-12 07:04:05'),
(57, 'default', 'created', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731470778_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 11:06:18\",\"updated_at\":\"2024-11-13 11:06:18\"}}', '2024-11-13 04:06:19', '2024-11-13 04:06:19'),
(58, 'default', 'created', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 13:29:43\"}}', '2024-11-13 06:29:44', '2024-11-13 06:29:44'),
(59, 'default', 'updated', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 07:11:08\"},\"old\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 13:29:43\"}}', '2024-11-13 00:11:08', '2024-11-13 00:11:08'),
(60, 'default', 'updated', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Ditolak\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 07:15:00\"},\"old\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 07:11:08\"}}', '2024-11-13 00:15:00', '2024-11-13 00:15:00'),
(61, 'default', 'created', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 14:42:52\"}}', '2024-11-13 07:42:52', '2024-11-13 07:42:52'),
(62, 'default', 'updated', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"test\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 07:43:56\"},\"old\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 14:42:52\"}}', '2024-11-13 00:43:56', '2024-11-13 00:43:56'),
(63, 'default', 'updated', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"test\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 07:44:04\"},\"old\":{\"id\":2,\"nomor_permohonan\":\"test\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 07:43:56\"}}', '2024-11-13 00:44:04', '2024-11-13 00:44:04'),
(64, 'default', 'deleted', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"test\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":12345,\"nama_pemohon\":\"test\",\"file_ktp\":\"1731483772_CV - Muhammad Rafly Surya Nirwana.pdf\",\"alamat_pemohon\":\"testtest\",\"email_pemohon\":\"tets@gmail.com\",\"no_telp_pemohon\":\"321312\",\"pekerjaan_pemohon\":\"asdhashdashd\",\"tujuan_permohonan\":\"dasdasasdasd\",\"rincian_informasi\":\"jkansjasfa\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 14:42:52\",\"updated_at\":\"2024-11-13 07:44:04\"}}', '2024-11-13 00:44:47', '2024-11-13 00:44:47'),
(65, 'default', 'created', 1, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid2\",\"file_ktp\":\"1731486739_Surat Permohonan Magang.pdf\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 15:32:19\",\"updated_at\":\"2024-11-13 15:32:19\"}}', '2024-11-13 08:32:20', '2024-11-13 08:32:20'),
(66, 'default', 'deleted', 1, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid2\",\"file_ktp\":\"1731486739_Surat Permohonan Magang.pdf\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 15:32:19\",\"updated_at\":\"2024-11-13 15:32:19\"}}', '2024-11-13 08:40:18', '2024-11-13 08:40:18'),
(67, 'default', 'created', 2, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731512997_davai.jpg\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 22:49:57\",\"updated_at\":\"2024-11-13 22:49:57\"}}', '2024-11-13 15:49:57', '2024-11-13 15:49:57'),
(68, 'default', 'updated', 2, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731512997_davai.jpg\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 22:49:57\",\"updated_at\":\"2024-11-13 15:51:45\"},\"old\":{\"id\":2,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731512997_davai.jpg\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 22:49:57\",\"updated_at\":\"2024-11-13 22:49:57\"}}', '2024-11-13 08:51:45', '2024-11-13 08:51:45'),
(69, 'default', 'created', 3, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"hadid\",\"file_ktp\":\"1731594640_encrypted_2592317.png\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"mahasiswa\",\"alamat_pemohon\":\"jakarta timur\",\"tujuan_keberatan\":\"kepo bgt\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:30:40\",\"updated_at\":\"2024-11-14 21:30:40\"}}', '2024-11-14 14:30:40', '2024-11-14 14:30:40'),
(70, 'default', 'deleted', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":1234,\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731479383_KTM_Muhammad_Hadiid_Faathir_BDC_Tim_4.jpg\",\"alamat_pemohon\":\"Jakarta Timur\",\"email_pemohon\":\"hadid@gmail.com\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"tujuan_permohonan\":\"Kepo\",\"rincian_informasi\":\"Kepo bgt\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Ditolak\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 13:29:43\",\"updated_at\":\"2024-11-13 07:15:00\"}}', '2024-11-14 07:33:58', '2024-11-14 07:33:58'),
(71, 'default', 'deleted', 2, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"Hadid\",\"file_ktp\":\"1731512997_davai.jpg\",\"no_telp_pemohon\":\"0878\",\"pekerjaan_pemohon\":\"Mahasiswa\",\"alamat_pemohon\":\"Jakarta Timur\",\"tujuan_keberatan\":\"Kepo\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diterima\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-13 22:49:57\",\"updated_at\":\"2024-11-13 15:51:45\"}}', '2024-11-14 07:40:47', '2024-11-14 07:40:47'),
(72, 'default', 'created', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":12345678,\"nama_pemohon\":\"hadid\",\"file_ktp\":\"1731595423_Liz.jpg\",\"alamat_pemohon\":\"asdasda\",\"email_pemohon\":\"asd@gmail.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"asdasdas\",\"tujuan_permohonan\":\"asdasda\",\"rincian_informasi\":\"sdasdasdasd\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:43:43\",\"updated_at\":\"2024-11-14 21:43:43\"}}', '2024-11-14 14:43:43', '2024-11-14 14:43:43'),
(73, 'default', 'created', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":121,\"nama_pemohon\":\"asmdkasmdas\",\"file_ktp\":\"1731595808_rrq_bb.jpg\",\"alamat_pemohon\":\"asdasda\",\"email_pemohon\":\"asd@test.com\",\"no_telp_pemohon\":\"213123123213123\",\"pekerjaan_pemohon\":\"sdsfdsfsdfsdfsdfsdf\",\"tujuan_permohonan\":\"admfkadmfksamdfkas\",\"rincian_informasi\":\"eifsdkfosdkofksdof\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:50:08\",\"updated_at\":\"2024-11-14 21:50:08\"}}', '2024-11-14 14:50:08', '2024-11-14 14:50:08'),
(74, 'default', 'deleted', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":121,\"nama_pemohon\":\"asmdkasmdas\",\"file_ktp\":\"1731595808_rrq_bb.jpg\",\"alamat_pemohon\":\"asdasda\",\"email_pemohon\":\"asd@test.com\",\"no_telp_pemohon\":\"213123123213123\",\"pekerjaan_pemohon\":\"sdsfdsfsdfsdfsdfsdf\",\"tujuan_permohonan\":\"admfkadmfksamdfkas\",\"rincian_informasi\":\"eifsdkfosdkofksdof\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:50:08\",\"updated_at\":\"2024-11-14 21:50:08\"}}', '2024-11-14 07:59:31', '2024-11-14 07:59:31'),
(75, 'default', 'created', 4, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"1231312\",\"nama_pemohon\":\"asdasdasdas\",\"file_ktp\":\"1731596489_Liz.jpg\",\"no_telp_pemohon\":\"213123124\",\"pekerjaan_pemohon\":\"asdasd\",\"alamat_pemohon\":\"asdasdadas\",\"tujuan_keberatan\":\"fasfasfasfa\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:01:29\",\"updated_at\":\"2024-11-14 22:01:29\"}}', '2024-11-14 15:01:29', '2024-11-14 15:01:29'),
(76, 'default', 'created', 5, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":5,\"nomor_permohonan\":\"asdasd\",\"nama_pemohon\":\"asdasdas\",\"file_ktp\":\"1731596554_rrq_bb.jpg\",\"no_telp_pemohon\":\"21314534\",\"pekerjaan_pemohon\":\"asdasd\",\"alamat_pemohon\":\"asdasdasdads\",\"tujuan_keberatan\":\"asdasdasdasdas\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:02:34\",\"updated_at\":\"2024-11-14 22:02:34\"}}', '2024-11-14 15:02:34', '2024-11-14 15:02:34'),
(77, 'default', 'created', 3, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":23141,\"nama_pemohon\":\"asdasdasd\",\"file_ktp\":\"1731596676_RPS-Cloud-Computing.docx.pdf\",\"alamat_pemohon\":\"asdasd\",\"email_pemohon\":\"asddasda@test.com\",\"no_telp_pemohon\":\"21312124\",\"pekerjaan_pemohon\":\"asdasdas\",\"tujuan_permohonan\":\"sadasdasda\",\"rincian_informasi\":\"dasdasd\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:04:36\",\"updated_at\":\"2024-11-14 22:04:36\"}}', '2024-11-14 15:04:36', '2024-11-14 15:04:36'),
(78, 'default', 'created', 4, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":21312312,\"nama_pemohon\":\"asdasdasdas\",\"file_ktp\":\"1731596955_encrypted_2592317.png\",\"alamat_pemohon\":\"asdasdasdas\",\"email_pemohon\":\"asdadsas@gmail.com\",\"no_telp_pemohon\":\"1231234141\",\"pekerjaan_pemohon\":\"sdasdasdawda\",\"tujuan_permohonan\":\"dawdwadawd\",\"rincian_informasi\":\"asdawdwadawdaw\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:09:15\",\"updated_at\":\"2024-11-14 22:09:15\"}}', '2024-11-14 15:09:15', '2024-11-14 15:09:15'),
(79, 'default', 'deleted', 5, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":5,\"nomor_permohonan\":\"asdasd\",\"nama_pemohon\":\"asdasdas\",\"file_ktp\":\"1731596554_rrq_bb.jpg\",\"no_telp_pemohon\":\"21314534\",\"pekerjaan_pemohon\":\"asdasd\",\"alamat_pemohon\":\"asdasdasdads\",\"tujuan_keberatan\":\"asdasdasdasdas\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:02:34\",\"updated_at\":\"2024-11-14 22:02:34\"}}', '2024-11-14 08:13:12', '2024-11-14 08:13:12'),
(80, 'default', 'deleted', 4, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"1231312\",\"nama_pemohon\":\"asdasdasdas\",\"file_ktp\":\"1731596489_Liz.jpg\",\"no_telp_pemohon\":\"213123124\",\"pekerjaan_pemohon\":\"asdasd\",\"alamat_pemohon\":\"asdasdadas\",\"tujuan_keberatan\":\"fasfasfasfa\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:01:29\",\"updated_at\":\"2024-11-14 22:01:29\"}}', '2024-11-14 08:13:12', '2024-11-14 08:13:12'),
(81, 'default', 'deleted', 3, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"1234\",\"nama_pemohon\":\"hadid\",\"file_ktp\":\"1731594640_encrypted_2592317.png\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"mahasiswa\",\"alamat_pemohon\":\"jakarta timur\",\"tujuan_keberatan\":\"kepo bgt\",\"alasan_keberatan\":\"Permintaan Informasi Tidak Ditanggapi Sebagaimana yang Diminta\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:30:40\",\"updated_at\":\"2024-11-14 21:30:40\"}}', '2024-11-14 08:13:12', '2024-11-14 08:13:12'),
(82, 'default', 'deleted', 4, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":21312312,\"nama_pemohon\":\"asdasdasdas\",\"file_ktp\":\"1731596955_encrypted_2592317.png\",\"alamat_pemohon\":\"asdasdasdas\",\"email_pemohon\":\"asdadsas@gmail.com\",\"no_telp_pemohon\":\"1231234141\",\"pekerjaan_pemohon\":\"sdasdasdawda\",\"tujuan_permohonan\":\"dawdwadawd\",\"rincian_informasi\":\"asdawdwadawdaw\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:09:15\",\"updated_at\":\"2024-11-14 22:09:15\"}}', '2024-11-14 08:14:00', '2024-11-14 08:14:00'),
(83, 'default', 'deleted', 3, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":23141,\"nama_pemohon\":\"asdasdasd\",\"file_ktp\":\"1731596676_RPS-Cloud-Computing.docx.pdf\",\"alamat_pemohon\":\"asdasd\",\"email_pemohon\":\"asddasda@test.com\",\"no_telp_pemohon\":\"21312124\",\"pekerjaan_pemohon\":\"asdasdas\",\"tujuan_permohonan\":\"sadasdasda\",\"rincian_informasi\":\"dasdasd\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 22:04:36\",\"updated_at\":\"2024-11-14 22:04:36\"}}', '2024-11-14 08:14:00', '2024-11-14 08:14:00'),
(84, 'default', 'deleted', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":12345678,\"nama_pemohon\":\"hadid\",\"file_ktp\":\"1731595423_Liz.jpg\",\"alamat_pemohon\":\"asdasda\",\"email_pemohon\":\"asd@gmail.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"asdasdas\",\"tujuan_permohonan\":\"asdasda\",\"rincian_informasi\":\"sdasdasdasd\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-14 21:43:43\",\"updated_at\":\"2024-11-14 21:43:43\"}}', '2024-11-14 08:14:00', '2024-11-14 08:14:00'),
(85, 'default', 'created', 1, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":21,\"nama_pemohon\":\"jaskdjadkha\",\"file_ktp\":null,\"alamat_pemohon\":\"sadsadsjadas\",\"email_pemohon\":\"dasjdsajdnas@test.com\",\"no_telp_pemohon\":2873912,\"pekerjaan_pemohon\":\"jkasdakjsndjaksnd\",\"tujuan_permohonan\":\"ksajdkjasndkasnadk\",\"rincian_informasi\":\"dasnkdasjdkasndkasnd\",\"cara_dapat_informasi\":\"Melihat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 03:21:01\",\"updated_at\":\"2024-11-15 03:21:01\"}}', '2024-11-14 20:21:01', '2024-11-14 20:21:01'),
(86, 'default', 'created', 1, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"1234567891234567\",\"nama_pemohon\":\"padang\",\"file_ktp\":null,\"alamat_pemohon\":\"kontol\",\"email_pemohon\":\"pdg@gmail.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"asdasdasd\",\"tujuan_permohonan\":\"wadawdawd\",\"rincian_informasi\":\"dawdawdawdaw\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 03:25:41\",\"updated_at\":\"2024-11-15 03:25:41\"}}', '2024-11-14 20:25:41', '2024-11-14 20:25:41'),
(87, 'default', 'created', 2, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"1234567891234567\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1731641218_encrypted_2592317.png\",\"alamat_pemohon\":\"asdjsadaksdkjasd\",\"email_pemohon\":\"asjdasdj@test.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"kasjdlajdl\",\"tujuan_permohonan\":\"djsandjkasndkasndands\",\"rincian_informasi\":\"djnasdnaskndkasdjasndkandka\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:26:58\",\"updated_at\":\"2024-11-15 10:26:58\"}}', '2024-11-15 03:26:58', '2024-11-15 03:26:58'),
(88, 'default', 'created', 3, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"gfssshdhdhd\",\"file_ktp\":\"1731641670_encrypted_2592317.png\",\"alamat_pemohon\":\"safafafafaefafafa\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"sgegggwg\",\"tujuan_permohonan\":\"faafsefeggsgsg\",\"rincian_informasi\":\"sgsgsrgsgsvfusfuy\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:34:30\",\"updated_at\":\"2024-11-15 10:34:30\"}}', '2024-11-15 03:34:30', '2024-11-15 03:34:30'),
(89, 'default', 'created', 4, 'App\\PermohonanInformasi', NULL, NULL, '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"uduguyegfygw\",\"file_ktp\":\"1731641912_encrypted_2592317.png\",\"alamat_pemohon\":\"higfiueiufgeiuufgieuf\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"gyfgyfguegfygf\",\"tujuan_permohonan\":\"vwfygfgefiuheiufhw\",\"rincian_informasi\":\"wfwffehsnnerhhfhd\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:38:32\",\"updated_at\":\"2024-11-15 10:38:32\"}}', '2024-11-15 03:38:32', '2024-11-15 03:38:32'),
(90, 'default', 'deleted', 1, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"1234567891234567\",\"nama_pemohon\":\"padang\",\"file_ktp\":null,\"alamat_pemohon\":\"kontol\",\"email_pemohon\":\"pdg@gmail.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"asdasdasd\",\"tujuan_permohonan\":\"wadawdawd\",\"rincian_informasi\":\"dawdawdawdaw\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 03:25:41\",\"updated_at\":\"2024-11-15 03:25:41\"}}', '2024-11-14 20:39:44', '2024-11-14 20:39:44'),
(91, 'default', 'deleted', 2, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"1234567891234567\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1731641218_encrypted_2592317.png\",\"alamat_pemohon\":\"asdjsadaksdkjasd\",\"email_pemohon\":\"asjdasdj@test.com\",\"no_telp_pemohon\":\"087883858676\",\"pekerjaan_pemohon\":\"kasjdlajdl\",\"tujuan_permohonan\":\"djsandjkasndkasndands\",\"rincian_informasi\":\"djnasdnaskndkasdjasndkandka\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:26:58\",\"updated_at\":\"2024-11-15 10:26:58\"}}', '2024-11-14 20:40:15', '2024-11-14 20:40:15');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(92, 'default', 'deleted', 3, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":3,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"gfssshdhdhd\",\"file_ktp\":\"1731641670_encrypted_2592317.png\",\"alamat_pemohon\":\"safafafafaefafafa\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"sgegggwg\",\"tujuan_permohonan\":\"faafsefeggsgsg\",\"rincian_informasi\":\"sgsgsrgsgsvfusfuy\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:34:30\",\"updated_at\":\"2024-11-15 10:34:30\"}}', '2024-11-14 20:43:42', '2024-11-14 20:43:42'),
(93, 'default', 'deleted', 2, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":2,\"tentang\":\"dwadawdadawdaw\",\"judul\":\"Baru\",\"keterangan\":\"asdasdas\",\"file\":\"1730779337_List Berita Double Website KI Jakarta.pdf\",\"diunduh\":0,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-05 11:02:17\",\"updated_at\":\"2024-11-05 11:02:17\"}}', '2024-11-14 20:44:05', '2024-11-14 20:44:05'),
(94, 'default', 'created', 5, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":5,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"uydfadfufduf\",\"file_ktp\":\"1731642545_encrypted_2592317.png\",\"alamat_pemohon\":\"fefsgsrgdhdhhdthd\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"gudgwugdwyg\",\"tujuan_permohonan\":\"drtftyrdrgdf\",\"rincian_informasi\":\"hfthfthfhdhrhd\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:49:05\",\"updated_at\":\"2024-11-15 10:49:05\"}}', '2024-11-15 03:49:05', '2024-11-15 03:49:05'),
(95, 'default', 'deleted', 5, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":5,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"uydfadfufduf\",\"file_ktp\":\"1731642545_encrypted_2592317.png\",\"alamat_pemohon\":\"fefsgsrgdhdhhdthd\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"gudgwugdwyg\",\"tujuan_permohonan\":\"drtftyrdrgdf\",\"rincian_informasi\":\"hfthfthfhdhrhd\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:49:05\",\"updated_at\":\"2024-11-15 10:49:05\"}}', '2024-11-14 20:51:03', '2024-11-14 20:51:03'),
(96, 'default', 'created', 1, 'App\\KeberatanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"nomor_permohonan\":\"23112312\",\"nama_pemohon\":\"dawdawd\",\"no_telp_pemohon\":\"312312\",\"pekerjaan_pemohon\":\"dwadawd\",\"alamat_pemohon\":\"dwadawdaw\",\"tujuan_keberatan\":\"asdasdasda\",\"alasan_keberatan\":\"Permohonan Informasi Ditolak\",\"status_keberatan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 04:20:21\",\"updated_at\":\"2024-11-15 04:20:21\"}}', '2024-11-14 21:20:21', '2024-11-14 21:20:21'),
(97, 'default', 'deleted', 4, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":4,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"3171051805030001\",\"nama_pemohon\":\"uduguyegfygw\",\"file_ktp\":\"1731641912_encrypted_2592317.png\",\"alamat_pemohon\":\"higfiueiufgeiuufgieuf\",\"email_pemohon\":\"digraizham@gmail.com\",\"no_telp_pemohon\":\"12345678901\",\"pekerjaan_pemohon\":\"gyfgyfguegfygf\",\"tujuan_permohonan\":\"vwfygfgefiuheiufhw\",\"rincian_informasi\":\"wfwffehsnnerhhfhd\",\"cara_dapat_informasi\":\"Membaca\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-15 10:38:32\",\"updated_at\":\"2024-11-15 10:38:32\"}}', '2024-11-19 20:51:37', '2024-11-19 20:51:37'),
(98, 'default', 'created', 6, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":6,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"73123712371263217381\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1732074779_Logo unj baru.png\",\"alamat_pemohon\":\"dahdkjasdkasdksjandkjasndkandkasj\",\"email_pemohon\":\"test@gmail.com\",\"no_telp_pemohon\":\"271381273912783\",\"pekerjaan_pemohon\":\"test\",\"tujuan_permohonan\":\"dasijdausdadjsandjasd\",\"rincian_informasi\":\"oqwiepqwioepwqmdskadsa\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 10:52:59\",\"updated_at\":\"2024-11-20 10:52:59\"}}', '2024-11-20 03:52:59', '2024-11-20 03:52:59'),
(99, 'default', 'deleted', 6, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":6,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"73123712371263217381\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1732074779_Logo unj baru.png\",\"alamat_pemohon\":\"dahdkjasdkasdksjandkjasndkandkasj\",\"email_pemohon\":\"test@gmail.com\",\"no_telp_pemohon\":\"271381273912783\",\"pekerjaan_pemohon\":\"test\",\"tujuan_permohonan\":\"dasijdausdadjsandjasd\",\"rincian_informasi\":\"oqwiepqwioepwqmdskadsa\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 10:52:59\",\"updated_at\":\"2024-11-20 10:52:59\"}}', '2024-11-19 20:53:52', '2024-11-19 20:53:52'),
(100, 'default', 'created', 7, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":7,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"32713912738127491\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1732075129_Logo unj baru.png\",\"alamat_pemohon\":\"jashdkashdkjashdas\",\"email_pemohon\":\"test@gmail.com\",\"no_telp_pemohon\":\"821379182381273\",\"pekerjaan_pemohon\":\"testing\",\"tujuan_permohonan\":\"sjadnjasndjasndjas\",\"rincian_informasi\":\"lksadkasmdkasmdkas\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 10:58:49\",\"updated_at\":\"2024-11-20 10:58:49\"}}', '2024-11-20 03:58:49', '2024-11-20 03:58:49'),
(101, 'default', 'deleted', 7, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":7,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"32713912738127491\",\"nama_pemohon\":\"test\",\"file_ktp\":\"1732075129_Logo unj baru.png\",\"alamat_pemohon\":\"jashdkashdkjashdas\",\"email_pemohon\":\"test@gmail.com\",\"no_telp_pemohon\":\"821379182381273\",\"pekerjaan_pemohon\":\"testing\",\"tujuan_permohonan\":\"sjadnjasndjasndjas\",\"rincian_informasi\":\"lksadkasmdkasmdkas\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 10:58:49\",\"updated_at\":\"2024-11-20 10:58:49\"}}', '2024-11-19 21:02:17', '2024-11-19 21:02:17'),
(102, 'default', 'created', 8, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":8,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":\"31982738912739812\",\"nama_pemohon\":\"sakjdjasdasdaks\",\"file_ktp\":\"1732075448_Logo unj baru.png\",\"alamat_pemohon\":\"sdakjdhkajshdkajwdnajwdna\",\"email_pemohon\":\"ashdhasdhas@gmail.com\",\"no_telp_pemohon\":\"37182381263812\",\"pekerjaan_pemohon\":\"jdasjdlasjdlajdlask\",\"tujuan_permohonan\":\"laksdklasmdlawdawl\",\"rincian_informasi\":\"kadmkwamdlamdklamdklawmdkawd\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 11:04:08\",\"updated_at\":\"2024-11-20 11:04:08\"}}', '2024-11-20 04:04:08', '2024-11-20 04:04:08'),
(103, 'default', 'deleted', 8, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":8,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":\"31982738912739812\",\"nama_pemohon\":\"sakjdjasdasdaks\",\"file_ktp\":\"1732075448_Logo unj baru.png\",\"alamat_pemohon\":\"sdakjdhkajshdkajwdnajwdna\",\"email_pemohon\":\"ashdhasdhas@gmail.com\",\"no_telp_pemohon\":\"37182381263812\",\"pekerjaan_pemohon\":\"jdasjdlasjdlajdlask\",\"tujuan_permohonan\":\"laksdklasmdlawdawl\",\"rincian_informasi\":\"kadmkwamdlamdklamdklawmdkawd\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 11:04:08\",\"updated_at\":\"2024-11-20 11:04:08\"}}', '2024-11-19 21:08:17', '2024-11-19 21:08:17'),
(104, 'default', 'created', 9, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":9,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":\"31298739127931\",\"nama_pemohon\":\"sdkjashdkasd\",\"file_ktp\":\"1732078625_Logo unj baru.png\",\"alamat_pemohon\":\"asndkasjndkjasndkajsda\",\"email_pemohon\":\"sadasndmas@gmail.com\",\"no_telp_pemohon\":\"83128381491\",\"pekerjaan_pemohon\":\"sajdasdak\",\"tujuan_permohonan\":\"aksndasndmasnd,awmd\",\"rincian_informasi\":\"anwdmanwdawnd,andaw\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Hardcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 11:57:05\",\"updated_at\":\"2024-11-20 11:57:05\"}}', '2024-11-20 04:57:05', '2024-11-20 04:57:05'),
(105, 'default', 'deleted', 9, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":9,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Lembaga\\/Organisasi\",\"nomor_identitas\":\"31298739127931\",\"nama_pemohon\":\"sdkjashdkasd\",\"file_ktp\":\"1732078625_Logo unj baru.png\",\"alamat_pemohon\":\"asndkasjndkjasndkajsda\",\"email_pemohon\":\"sadasndmas@gmail.com\",\"no_telp_pemohon\":\"83128381491\",\"pekerjaan_pemohon\":\"sajdasdak\",\"tujuan_permohonan\":\"aksndasndmasnd,awmd\",\"rincian_informasi\":\"anwdmanwdawnd,andaw\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Hardcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 11:57:05\",\"updated_at\":\"2024-11-20 11:57:05\"}}', '2024-11-19 21:57:20', '2024-11-19 21:57:20'),
(106, 'default', 'created', 10, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":10,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"812831830182\",\"nama_pemohon\":\"djsakdkajsdka\",\"file_ktp\":\"1732078873_Logo unj baru.png\",\"alamat_pemohon\":\"klasmdaksmdlamkwdka\",\"email_pemohon\":\"asjdlajla@gmail.com\",\"no_telp_pemohon\":\"12731273912\",\"pekerjaan_pemohon\":\"kaskdalsdlas\",\"tujuan_permohonan\":\"kawdkawmdlkawmkdla\",\"rincian_informasi\":\"awmdawmmamkdawl\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Hardcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:01:13\",\"updated_at\":\"2024-11-20 12:01:13\"}}', '2024-11-20 05:01:14', '2024-11-20 05:01:14'),
(107, 'default', 'deleted', 10, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":10,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"812831830182\",\"nama_pemohon\":\"djsakdkajsdka\",\"file_ktp\":\"1732078873_Logo unj baru.png\",\"alamat_pemohon\":\"klasmdaksmdlamkwdka\",\"email_pemohon\":\"asjdlajla@gmail.com\",\"no_telp_pemohon\":\"12731273912\",\"pekerjaan_pemohon\":\"kaskdalsdlas\",\"tujuan_permohonan\":\"kawdkawmdlkawmkdla\",\"rincian_informasi\":\"awmdawmmamkdawl\",\"cara_dapat_informasi\":\"Mencatat\",\"dapat_salinan_informasi\":\"Hardcopy\",\"cara_dapat_salinan_informasi\":\"Mengambil Langsung\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:01:13\",\"updated_at\":\"2024-11-20 12:01:13\"}}', '2024-11-19 22:01:31', '2024-11-19 22:01:31'),
(108, 'default', 'created', 11, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"291283792173912\",\"nama_pemohon\":\"siajdiasjdais\",\"file_ktp\":\"1732080841_Logo unj baru.png\",\"alamat_pemohon\":\".msdmfsdmfsdm,\",\"email_pemohon\":\"a@gmail.com\",\"no_telp_pemohon\":\"1208312803291\",\"pekerjaan_pemohon\":\"jsadhkjasdas\",\"tujuan_permohonan\":\"kasjdkajsndkasn\",\"rincian_informasi\":\"nma dsnasdmas\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:34:01\",\"updated_at\":\"2024-11-20 12:34:01\"}}', '2024-11-20 05:34:01', '2024-11-20 05:34:01'),
(109, 'default', 'deleted', 11, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":11,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Perorangan\",\"nomor_identitas\":\"291283792173912\",\"nama_pemohon\":\"siajdiasjdais\",\"file_ktp\":\"1732080841_Logo unj baru.png\",\"alamat_pemohon\":\".msdmfsdmfsdm,\",\"email_pemohon\":\"a@gmail.com\",\"no_telp_pemohon\":\"1208312803291\",\"pekerjaan_pemohon\":\"jsadhkjasdas\",\"tujuan_permohonan\":\"kasjdkajsndkasn\",\"rincian_informasi\":\"nma dsnasdmas\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Email\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:34:01\",\"updated_at\":\"2024-11-20 12:34:01\"}}', '2024-11-19 22:34:09', '2024-11-19 22:34:09'),
(110, 'default', 'created', 12, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":12,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Kelompok Orang\",\"nomor_identitas\":\"23173982179381\",\"nama_pemohon\":\"dasjdasjdlas\",\"file_ktp\":\"1732080991_Logo unj baru.png\",\"alamat_pemohon\":\"asdkalsdklasmdlkams\",\"email_pemohon\":\"sadkladkas@gmail.com\",\"no_telp_pemohon\":\"3829482984932\",\"pekerjaan_pemohon\":\"dn,asmnd,masnd,as\",\"tujuan_permohonan\":\"amskdmlasmdlkam,\",\"rincian_informasi\":\"asd.sada.wdawpd21e\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:36:31\",\"updated_at\":\"2024-11-20 12:36:31\"}}', '2024-11-20 05:36:31', '2024-11-20 05:36:31'),
(111, 'default', 'deleted', 12, 'App\\PermohonanInformasi', 1, 'App\\User', '{\"attributes\":{\"id\":12,\"nomor_permohonan\":\"Masukkan Nomor Permohonan\",\"kategori_permohonan\":\"Kelompok Orang\",\"nomor_identitas\":\"23173982179381\",\"nama_pemohon\":\"dasjdasjdlas\",\"file_ktp\":\"1732080991_Logo unj baru.png\",\"alamat_pemohon\":\"asdkalsdklasmdlkams\",\"email_pemohon\":\"sadkladkas@gmail.com\",\"no_telp_pemohon\":\"3829482984932\",\"pekerjaan_pemohon\":\"dn,asmnd,masnd,as\",\"tujuan_permohonan\":\"amskdmlasmdlkam,\",\"rincian_informasi\":\"asd.sada.wdawpd21e\",\"cara_dapat_informasi\":\"Mendengarkan\",\"dapat_salinan_informasi\":\"Softcopy\",\"cara_dapat_salinan_informasi\":\"Faksimili\",\"status_permohonan\":\"Diproses\",\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-20 12:36:31\",\"updated_at\":\"2024-11-20 12:36:31\"}}', '2024-11-19 22:36:49', '2024-11-19 22:36:49'),
(112, 'default', 'deleted', 1, 'App\\Regulasi', 1, 'App\\User', '{\"attributes\":{\"id\":1,\"tentang\":\"daskdaksdams\",\"judul\":\"test\",\"keterangan\":\"123\",\"file\":\"1730695281_Introduction to Cybersecurity devnull.pdf\",\"diunduh\":10,\"created_by\":1,\"updated_by\":1,\"created_at\":\"2024-11-04 11:41:21\",\"updated_at\":\"2024-11-05 04:12:43\"}}', '2024-11-19 22:39:24', '2024-11-19 22:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `seotitle`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Pure', 'pure', 'Y', 1, 1, '2019-10-11 02:59:19', '2019-10-11 02:59:47'),
(2, 'Plain', 'plain', 'Y', 1, 1, '2019-10-11 02:59:56', '2019-10-11 02:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent`, `title`, `seotitle`, `picture`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, 'Sport', 'sport', NULL, 'Y', 1, 1, '2019-10-08 21:09:54', '2019-10-08 21:11:51'),
(2, 0, 'Otomotif', 'otomotif', NULL, 'Y', 1, 1, '2019-10-08 21:11:36', '2019-10-08 21:46:59'),
(3, 0, 'Travel', 'travel', NULL, 'Y', 1, 1, '2019-10-08 21:12:03', '2019-10-08 21:12:03'),
(4, 0, 'Food', 'food', NULL, 'Y', 1, 1, '2019-10-08 21:12:09', '2019-10-08 22:12:09'),
(5, 0, 'Health', 'health', NULL, 'Y', 1, 1, '2019-10-08 21:12:30', '2019-10-08 22:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent`, `post_id`, `name`, `email`, `content`, `active`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dwira Survivor', 'djenuar@yahoo.co.id', 'Mungkin saja melihat MU masih ragu-ragu untuk mengganti pelatih yang sekarang.', 'Y', 'Y', 2, 2, '2019-10-16 16:00:00', '2019-10-16 21:57:07'),
(2, 1, 1, 'Super Admin', 'super@popojicms.org', 'Kita lihat saja perkembangannya nanti. Terima kasih sudah mengomentari berita ini.', 'Y', 'Y', 2, 2, '2019-10-16 21:56:02', '2019-10-16 21:56:02'),
(3, 0, 5, 'Jenuar Dalapang', 'djenuar@gmail.com', 'Ujung Indonesia itu indah-indah yaa ternyata...menajubkan sekali.', 'Y', 'Y', 1, 1, '2019-11-12 20:14:45', '2019-11-12 20:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'component',
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `title`, `author`, `folder`, `type`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Gallery', 'Dwira Survivor', 'gallery', 'component', 'Y', 1, 1, '2019-10-10 19:25:05', '2019-10-10 19:25:47'),
(2, 'Contact', 'Dwira Survivor', 'contact', 'component', 'Y', 1, 1, '2019-10-10 19:25:17', '2019-10-10 19:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Jenuar Dalapang', 'djenuar@gmail.com', 'Welcome POPOJI', 'Welcome the New POPOJI : Engine Management System for You.', 'Y', 1, 1, '2019-10-11 01:32:31', '2019-10-11 01:35:14'),
(2, 'Hadid', 'Hadid@gmail.com', 'Kepo', 'Kepo bgt', 'N', 1, 1, '2024-11-07 01:11:12', '2024-11-07 01:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallerys`
--

CREATE TABLE `gallerys` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallerys`
--

INSERT INTO `gallerys` (`id`, `album_id`, `title`, `content`, `picture`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Coloration', NULL, 'coloration.jpg', 1, 1, '2019-10-15 19:03:08', '2019-10-15 19:03:08'),
(2, 2, 'Legs On Table', NULL, 'legs-on-table.jpg', 1, 1, '2019-10-15 19:03:39', '2019-10-15 19:03:39'),
(3, 1, 'Shop Counter', NULL, 'shop-counter.jpg', 1, 1, '2019-10-15 19:04:08', '2019-10-15 19:04:08'),
(4, 2, 'Work Desk', NULL, 'work-desk.jpg', 1, 1, '2019-10-15 19:04:34', '2019-10-15 19:04:34'),
(5, 1, 'City From Sky', NULL, 'city-from-sky.jpg', 1, 1, '2019-10-15 19:05:26', '2019-10-15 19:05:26'),
(6, 2, 'Traction', NULL, 'traction.jpg', 1, 1, '2019-10-15 19:05:46', '2019-10-15 19:05:46'),
(7, 1, 'Still Life White', NULL, 'still-life-white.jpg', 1, 1, '2019-10-15 19:06:06', '2019-10-15 19:06:06'),
(8, 2, 'Coffee In Heart', NULL, 'coffee-in-heart.jpg', 1, 1, '2019-10-15 19:06:28', '2019-10-15 19:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `keberataninformasis`
--

CREATE TABLE `keberataninformasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_keberatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_keberatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_keberatan` enum('Diterima','Ditolak','Diproses') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Diproses',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keberataninformasis`
--

INSERT INTO `keberataninformasis` (`id`, `nomor_permohonan`, `nama_pemohon`, `no_telp_pemohon`, `pekerjaan_pemohon`, `alamat_pemohon`, `tujuan_keberatan`, `alasan_keberatan`, `status_keberatan`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '23112312', 'dawdawd', '312312', 'dwadawd', 'dwadawdaw', 'asdasdasda', 'Permohonan Informasi Ditolak', 'Diproses', 1, 1, '2024-11-14 21:20:21', '2024-11-14 21:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `group` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent`, `group`, `title`, `url`, `class`, `target`, `position`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Home', '/', NULL, 'none', 1, 1, 1, '2019-10-14 15:23:50', '2019-10-14 16:15:31'),
(2, 0, 1, 'About Us', 'pages/about-us', NULL, 'none', 2, 1, 1, '2019-10-14 16:14:58', '2019-10-14 16:31:12'),
(3, 2, 1, 'Services', 'pages/services', NULL, 'none', 3, 1, 1, '2019-10-14 16:20:41', '2019-10-14 16:31:13'),
(4, 0, 1, 'Sport', 'category/sport', NULL, 'none', 4, 1, 1, '2019-10-14 16:29:31', '2019-10-14 16:31:13'),
(5, 0, 1, 'Otomotif', 'category/otomotif', NULL, 'none', 5, 1, 1, '2019-10-14 16:30:16', '2019-10-14 16:31:13'),
(6, 0, 1, 'Travel', 'category/travel', NULL, 'none', 6, 1, 1, '2019-10-14 16:30:36', '2019-10-14 16:31:13'),
(7, 0, 1, 'Food', 'category/food', NULL, 'none', 7, 1, 1, '2019-10-14 16:30:51', '2019-10-14 16:31:13'),
(8, 0, 1, 'Health', 'category/health', NULL, 'none', 8, 1, 1, '2019-10-14 16:31:05', '2019-10-14 16:31:13'),
(9, 0, 1, 'Gallery', 'album/all', NULL, 'none', 9, 1, 1, '2019-10-14 16:31:34', '2019-10-14 16:31:40'),
(10, 0, 1, 'Contact Us', 'contact', NULL, 'none', 10, 1, 1, '2019-10-14 16:34:14', '2019-10-14 16:34:19');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_22_084207_create_activity_log_table', 1),
(5, '2019_09_22_084507_create_permission_tables', 1),
(6, '2019_10_03_031736_create_settings_table', 2),
(7, '2019_10_08_114314_create_tags_table', 3),
(8, '2019_10_09_042443_create_categories_table', 4),
(9, '2019_10_10_081154_create_comments_table', 5),
(10, '2019_10_10_113552_create_themes_table', 6),
(11, '2019_10_11_030739_create_components_table', 7),
(12, '2019_10_11_090451_create_contacts_table', 8),
(13, '2019_10_11_100436_create_gallerys_table', 9),
(14, '2019_10_11_100452_create_albums_table', 9),
(15, '2019_10_11_221843_create_pages_table', 10),
(16, '2019_10_14_042900_create_posts_table', 11),
(17, '2019_10_14_043042_create_post_gallerys_table', 11),
(18, '2019_10_14_222137_create_menus_table', 12),
(19, '2019_10_15_055433_create_subscribes_table', 13),
(21, '2024_10_23_031234_create_regulasis_table', 14),
(23, '2024_10_24_022302_create_regulasis_table', 15),
(35, '2024_11_06_143836_create_permohonaninformasis_table', 22),
(36, '2024_11_06_143927_create_keberataninformasis_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3),
(4, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `seotitle`, `content`, `picture`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<p>PopojiCMS is a EngineManagement System that is made with a very interesting concept and easy to use. PopojiCMS made its appearance bootstarp responsive to the base and it is also equipped with a lot of jQuery plugins.<br /><br />PopojiCMS built on a Laravel version 6.0, so the developer can easily to use. Hopefully PopojiCMS can answer all your needs on the web.<br /><br /><br />Thank you,<br /><br /><strong>Jenuar Dwi Putra Dalapang a.k.a Dwira Survivor</strong></p>', NULL, 'Y', 1, 1, '2019-10-13 00:27:10', '2019-11-07 00:19:18'),
(2, 'Services', 'services', '<p>Popoji has developed into a major Engine Management System over the past 6 years, a variety of input and improvements here and there have made Popoji ready to answer the needs of your web, broad community support and a reliable web security course is ready you get.</p>\r\n<p>With furnished by jQuery and Bootstrap, Popoji more vivid brings the features previously unimaginable.</p>\r\n<p>Popoji made its appearance responsive so that it can be opened on the screen size anytime and anywhere.<br />Popoji designed with a modern look that is beautiful that attract web users to always visit.<br />Popoji made with Laravel core so that developers can custom easily its flavor.</p>', NULL, 'Y', 1, 1, '2019-10-14 22:26:46', '2019-10-14 22:26:46');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'web', '2019-10-04 19:32:00', '2019-10-04 19:32:00'),
(2, 'read-users', 'web', '2019-10-04 19:32:00', '2019-10-04 19:32:00'),
(3, 'update-users', 'web', '2019-10-04 19:32:00', '2019-10-04 19:32:00'),
(4, 'delete-users', 'web', '2019-10-04 19:32:00', '2019-10-04 19:32:00'),
(5, 'create-roles', 'web', '2019-10-04 19:32:07', '2019-10-04 19:32:07'),
(6, 'read-roles', 'web', '2019-10-04 19:32:07', '2019-10-04 19:32:07'),
(7, 'update-roles', 'web', '2019-10-04 19:32:07', '2019-10-04 19:32:07'),
(8, 'delete-roles', 'web', '2019-10-04 19:32:08', '2019-10-04 19:32:08'),
(9, 'create-permissions', 'web', '2019-10-04 19:32:22', '2019-10-04 19:32:22'),
(10, 'read-permissions', 'web', '2019-10-04 19:32:22', '2019-10-04 19:32:22'),
(11, 'update-permissions', 'web', '2019-10-04 19:32:22', '2019-10-04 19:32:22'),
(12, 'delete-permissions', 'web', '2019-10-04 19:32:22', '2019-10-04 19:32:22'),
(13, 'create-settings', 'web', '2019-10-05 19:53:03', '2019-10-05 19:53:03'),
(14, 'read-settings', 'web', '2019-10-05 19:53:03', '2019-10-05 19:53:03'),
(15, 'update-settings', 'web', '2019-10-05 19:53:03', '2019-10-05 19:53:03'),
(16, 'delete-settings', 'web', '2019-10-05 19:53:03', '2019-10-05 19:53:03'),
(17, 'create-posts', 'web', '2019-10-08 04:14:28', '2019-10-08 04:14:28'),
(18, 'read-posts', 'web', '2019-10-08 04:14:28', '2019-10-08 04:14:28'),
(19, 'update-posts', 'web', '2019-10-08 04:14:28', '2019-10-08 04:14:28'),
(20, 'delete-posts', 'web', '2019-10-08 04:14:28', '2019-10-08 04:14:28'),
(21, 'create-categories', 'web', '2019-10-08 04:14:38', '2019-10-08 04:14:38'),
(22, 'read-categories', 'web', '2019-10-08 04:14:38', '2019-10-08 04:14:38'),
(23, 'update-categories', 'web', '2019-10-08 04:14:38', '2019-10-08 04:14:38'),
(24, 'delete-categories', 'web', '2019-10-08 04:14:38', '2019-10-08 04:14:38'),
(25, 'create-tags', 'web', '2019-10-08 04:14:44', '2019-10-08 04:14:44'),
(26, 'read-tags', 'web', '2019-10-08 04:14:44', '2019-10-08 04:14:44'),
(27, 'update-tags', 'web', '2019-10-08 04:14:44', '2019-10-08 04:14:44'),
(28, 'delete-tags', 'web', '2019-10-08 04:14:44', '2019-10-08 04:14:44'),
(29, 'create-comments', 'web', '2019-10-08 04:14:57', '2019-10-08 04:14:57'),
(30, 'read-comments', 'web', '2019-10-08 04:14:57', '2019-10-08 04:14:57'),
(31, 'update-comments', 'web', '2019-10-08 04:14:57', '2019-10-08 04:14:57'),
(32, 'delete-comments', 'web', '2019-10-08 04:14:58', '2019-10-08 04:14:58'),
(33, 'create-pages', 'web', '2019-10-08 04:15:03', '2019-10-08 04:15:03'),
(34, 'read-pages', 'web', '2019-10-08 04:15:03', '2019-10-08 04:15:03'),
(35, 'update-pages', 'web', '2019-10-08 04:15:03', '2019-10-08 04:15:03'),
(36, 'delete-pages', 'web', '2019-10-08 04:15:03', '2019-10-08 04:15:03'),
(37, 'create-themes', 'web', '2019-10-08 04:15:10', '2019-10-08 04:15:10'),
(38, 'read-themes', 'web', '2019-10-08 04:15:10', '2019-10-08 04:15:10'),
(39, 'update-themes', 'web', '2019-10-08 04:15:10', '2019-10-08 04:15:10'),
(40, 'delete-themes', 'web', '2019-10-08 04:15:10', '2019-10-08 04:15:10'),
(41, 'create-menumanager', 'web', '2019-10-08 04:15:31', '2019-10-08 04:15:31'),
(42, 'read-menumanager', 'web', '2019-10-08 04:15:31', '2019-10-08 04:15:31'),
(43, 'update-menumanager', 'web', '2019-10-08 04:15:31', '2019-10-08 04:15:31'),
(44, 'delete-menumanager', 'web', '2019-10-08 04:15:31', '2019-10-08 04:15:31'),
(45, 'create-components', 'web', '2019-10-08 04:15:50', '2019-10-08 04:15:50'),
(46, 'read-components', 'web', '2019-10-08 04:15:50', '2019-10-08 04:15:50'),
(47, 'update-components', 'web', '2019-10-08 04:15:50', '2019-10-08 04:15:50'),
(48, 'delete-components', 'web', '2019-10-08 04:15:50', '2019-10-08 04:15:50'),
(49, 'create-contacts', 'web', '2019-10-11 01:22:14', '2019-10-11 01:22:14'),
(50, 'read-contacts', 'web', '2019-10-11 01:22:14', '2019-10-11 01:22:14'),
(51, 'update-contacts', 'web', '2019-10-11 01:22:14', '2019-10-11 01:22:14'),
(52, 'delete-contacts', 'web', '2019-10-11 01:22:14', '2019-10-11 01:22:14'),
(53, 'create-gallerys', 'web', '2019-10-11 01:22:23', '2019-10-11 01:22:23'),
(54, 'read-gallerys', 'web', '2019-10-11 01:22:23', '2019-10-11 01:22:23'),
(55, 'update-gallerys', 'web', '2019-10-11 01:22:23', '2019-10-11 01:22:23'),
(56, 'delete-gallerys', 'web', '2019-10-11 01:22:23', '2019-10-11 01:22:23'),
(57, 'create-subscribes', 'web', '2019-10-14 22:00:09', '2019-10-14 22:00:09'),
(58, 'read-subscribes', 'web', '2019-10-14 22:00:09', '2019-10-14 22:00:09'),
(59, 'update-subscribes', 'web', '2019-10-14 22:00:09', '2019-10-14 22:00:09'),
(60, 'delete-subscribes', 'web', '2019-10-14 22:00:09', '2019-10-14 22:00:09'),
(61, 'create-clark', 'web', '2019-10-14 22:00:54', '2019-10-14 22:00:54'),
(62, 'read-clark', 'web', '2019-10-14 22:00:54', '2019-10-14 22:00:54'),
(63, 'update-clark', 'web', '2019-10-14 22:00:54', '2019-10-14 22:00:54'),
(64, 'delete-clark', 'web', '2019-10-14 22:00:54', '2019-10-14 22:00:54'),
(69, 'create-regulasis', 'web', '2024-10-24 01:16:34', '2024-10-24 01:16:34'),
(70, 'read-regulasis', 'web', '2024-10-24 01:16:34', '2024-10-24 01:16:34'),
(71, 'update-regulasis', 'web', '2024-10-24 01:16:34', '2024-10-24 01:16:34'),
(72, 'delete-regulasis', 'web', '2024-10-24 01:16:34', '2024-10-24 01:16:34'),
(73, 'create-permohonaninformasis', 'web', '2024-11-12 00:13:40', '2024-11-12 00:13:40'),
(74, 'read-permohonaninformasis', 'web', '2024-11-12 00:13:40', '2024-11-12 00:13:40'),
(75, 'update-permohonaninformasis', 'web', '2024-11-12 00:13:40', '2024-11-12 00:13:40'),
(76, 'delete-permohonaninformasis', 'web', '2024-11-12 00:13:40', '2024-11-12 00:13:40'),
(77, 'create-keberataninformasis', 'web', '2024-11-13 01:18:56', '2024-11-13 01:18:56'),
(78, 'read-keberataninformasis', 'web', '2024-11-13 01:18:56', '2024-11-13 01:18:56'),
(79, 'update-keberataninformasis', 'web', '2024-11-13 01:18:56', '2024-11-13 01:18:56'),
(80, 'delete-keberataninformasis', 'web', '2024-11-13 01:18:56', '2024-11-13 01:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `permohonaninformasis`
--

CREATE TABLE `permohonaninformasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Masukkan Nomor Permohonan',
  `kategori_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_identitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rincian_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cara_dapat_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dapat_salinan_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cara_dapat_salinan_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_permohonan` enum('Diterima','Ditolak','Diproses') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Diproses',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('general','pagination','picture','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `comment` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `hits` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `seotitle`, `content`, `meta_description`, `picture`, `picture_description`, `tag`, `type`, `active`, `headline`, `comment`, `hits`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mungkinkah Man United Degradasi di Akhir Musim?', 'mungkinkah-man-united-degradasi-di-akhir-musim', '<p><strong>Jakarta</strong> - Manchester United sedang mengalami fase terburuknya di Liga Inggris sejak ditinggal Sir Alex Ferguson. Mungkinkah mereka terdegradasi di akhir musim?</p>\r\n<p>Laju MU di awal musim ini memang jauh dari harapan. Marcus Rashford dkk kini berada di posisi ke-12 klasemen Liga Inggris dengan raihan 9 poin, hasil dua kali menang, 3 kali seri, dan menelan tiga kekalahan. Ironisnya, sebagai klub \'papan atas\' Inggris, saat ini mereka lebih dekat dengan zona degradasi.</p>\r\n<p>Dengan perolehan 9 poin, MU hanya terpaut 2 poin dari Everton yang kini berada di posisi ke-18 atau zona merah. Sedangkan dengan Leicester City yang ada di peringkat keempat atau zona Liga Champions, mereka terpaut lima poin.</p>\r\n<p>Jika tren negatif ini terus berlanjut, bukan tak mungkin The Red Devils akan mengalami kemungkinan terburuk, yakni terdegradasi. Sepanjang sejarah, MU memang sudah pernah turun kasta.</p>\r\n<p>Masa kelam itu terjadi pada musim 1973/7194, sewaktu masih ditangani Thomas Docherty. Seperti halnya di musim ini, MU saat itu mengawali musim dengan hasil buruk, dengan hanya meraih 3 kemenangan dalam 10 laga.</p>\r\n<p>Meski terdegradasi, manajemen MU kala itu tetap mempertahankan Docherty, yang berhasil membawa MU kembali promosi di musim berikutnya. Tapi hal serupa tampak mustahil dilakukan direksi MU saat ini pada manajer mereka, Ole Gunnar Solskjaer. Apa kata dunia jika MU sampai turun kasta?</p>\r\n<p>Labilnya penampilan MU saat ini membuat mereka diragukan untuk bisa merangkak ke papan atas. Terlebih banyaknya persoalan yang dihadapi, mulai dari krisis cedera, minim stok penyerang, hingga sulit mencetak lebih dari satu gol di tiap laga.</p>\r\n<p>Meski terlalu dini, kemungkinan degradasi itu nyata. Ole pun diprediksi akan dipecat jika MU terus gagal meraih kemenangan.</p>\r\n<p>Tagar #OleOut sudah ramai di media sosial selepas MU takluk 0-1 dari Newcastle, Minggu (6/10). Sejumlah nama secara liar sudah dimunculkan media-media Inggris untuk menggantikannya, mulai dari Max Allegri hingga Arsene Wenger.</p>\r\n<p>Tak sepeti Docherty, Ole harus berbenah dengan waktu yang tak banyak. Jeda internasional kali ini harus dipakainya untuk menambal lubang-lubang yang ada dalam permainan MU agar kembali tampil efektif dan meraih kemenangan. Apalagi MU akan berjumpa dengan pemuncak klasemen, Liverpool, tepat seusai jeda internasional, Minggu (20/10).</p>\r\n<p>Bila berhasil meraih kemenangan dan terus mendapat hasil baik sampai akhir tahun, Ole bisa menggunakan bursa transfer Januari untuk kembali membangun tim. Jika hasil negatif terus menyelimuti MU, bisa saja ia harus menikmati Natal sebagai seorang pengangguran.</p>', 'Manchester United sedang mengalami fase terburuknya di Liga Inggris sejak ditinggal Sir Alex Ferguson.', 'mungkinkah-man-united-degradasi-di-akhir-musim.jpg', 'Manchester United mungkinkah terdegradasi di akhir musim nanti? (Scott Heppell / Reuters)', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'Y', 'Y', 1, 2, 1, '2019-10-13 22:11:45', '2019-11-13 15:09:47'),
(2, 1, 'Tiket MotoGP Indonesia Dijual Mulai November 2019', 'tiket-motogp-indonesia-dijual-mulai-november-2019', '<p><strong>Jakarta</strong> - MotoGP Indonesia baru akan digelar pada tahun 2021. Namun, penjualan tiketnya akan mulai dilakukan mulai bulan depan.</p>\r\n<p>Dikonfirmasi detikSport kepada VP Corporate Secretary Indonesia Tourism Development Corporation (ITDC), Miranti Rendranti, pihaknya merencanakan penjualan tiket pada awal atau akhir November 2019.</p>\r\n<p>\"Per akhir November 2019 hingga Agustus 2020 akan dilakukan kegiatan Pre-Booking tiket MotoGP Mandalika 2021 untuk sejumlah 20.000 pemegang hak mendapat tiket, melalui pemesanan online,\" ujar Miranti lewat pesan singkat Whatsapp.</p>\r\n<p>Diketahui, Indonesia mendapat slot dari Dorna untuk menggelar MotoGP per musim 2021. Kontrak berdurasi tiga tahun disebut sudah dikantongi.</p>\r\n<p>Adapun sirkuit yang dipakai adalah sirkuit jalan raya kawasan wisata Mandalika di Lombok, Nusa Tenggara Barat.</p>\r\n<p>Sejauh ini pembangunan Mandalika Street Circuit, yang akan digunakan untuk penyelenggaraan MotoGP 2021, telah menyelesaikan proses pengukuran topografi dan penyelidikan tanah.</p>\r\n<p>Tahap land clearing dan pemagaran sekeliling area sirkuit sepanjang 6,25 km, telah terbangun 2,5 km atau sekitar 42%. Sementara land clearing mencapai 98.000 m2 dari rencana 432.000 m2.</p>\r\n<p>\"Kami pastikan pembangunan Mandalika Street Circuit saat ini berjalan sesuai dengan rencana, yaitu memulai konstruksi pada Oktober 2019. Selain kegiatan di lapangan yang fokus kepada area sirkuit berupa pemagaran yang hampir mencapai 50% dan land clearing, proses homologasi desain Mandalika Street Circuit juga telah menyepakati Center Line desain sirkuit, artinya telah menyepakati titik-titik koordinat, panjang, dan lengkung lintasan satu dengan yang lainnya,\" kata Direktur Utama ITDC Abdulbar M Mansoer dalam keterangannya kepada detikcom.</p>', 'MotoGP Indonesia baru akan digelar pada tahun 2021. Namun, penjualan tiketnya akan mulai dilakukan mulai bulan depan.', 'tiket-motogp-indonesia-dijual-mulai-november-2019.jpg', 'Gambaran proyek Sirkuit Mandalika. (Foto: MotoGP.com)', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'N', 'Y', 1, 2, 1, '2019-10-14 22:32:09', '2019-11-13 15:03:35'),
(3, 2, 'Bocor, Ini Penampakan Toyota Yaris Versi 2020', 'bocor-ini-penampakan-toyota-yaris-versi-2020', '<p><strong>Jakarta</strong> - Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini. Toyota Yaris versi penyegaran itu disebut-sebut akan diluncurkan di pameran Tokyo Motor Show (TMS) 2019, di penghujung bulan ini.</p>\r\n<p>Secara garis besar, Toyota Yaris 2020 mendapat ubahan signifikan di area fascia-nya. Bentuk grille sekarang terlihat lebih besar. Yaris 2020 menggunakan lampu LED, dilengkapi dengan DRL. Dan untuk lampu kabutnya dibuat lebih minimalis.</p>\r\n<p>Ubahan juga dilakukan di bagian buritan. Toyota Yaris 2020 kini dilengkapi lampu LED, lengkap dengan reflektor panjang yang menyambung. Mirip seperti konsep yang ada di Honda BR-V.</p>\r\n<p>Yang menarik lagi, kesan crossover pada hatchback pesaing Honda Jazz ini makin terasa berkat penggunaan bemper belakang yang besar. Selain itu, area difuser juga ditinggikan, sehingga menambah kesan sporty.</p>\r\n<p>Toyota Yaris 2020 juga akan mendapatkan pelek palang dengan motif baru. Model ini masih mempertahankan antena shark fin, dan desain atap yang seolah melayang (floating roof).</p>', 'Foto-foto yang diduga Toyota Yaris 2020 tersebar di dunia maya baru-baru ini.', 'bocor-ini-penampakan-toyota-yaris-versi-2020.jpg', 'Foto: pandulaju.com.my', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'Y', 'Y', 2, 2, 1, '2019-10-14 22:44:44', '2024-10-13 20:46:46'),
(4, 2, 'Dijual Rp 70 Juta, Intip Fitur di Dalam Mobil Termurah Suzuki', 'dijual-rp-70-juta-intip-fitur-di-dalam-mobil-termurah-suzuki', '<p><strong>Jakarta</strong> - Suzuki belum lama ini merilis mobil paling murahnya di India. Mobil itu disapa Maruti S-Presso. Kabarnya mobil bakal dijual mulai Rp 70 jutaan.</p>\r\n<p>Meski dibanderol dengan harga murah di bawah Rp 100 jutaan, Suzuki tak absen menghadirkan fitur-fitur keamanan dan keselamatan buat penumpang dan pengendara di dalamnya.</p>\r\n<p>Seperti diberitakan sebelumnya, Suzuki S-Presso ini akan dilengkapi dengan dua airbag, sistem pengereman ABS dan EBD, sensor parkir di bagian belakang, pedestrian protection, crash compliance dan peringatan saat dipacu dalam kecepatan tinggi.</p>\r\n<p>Kemudian di bagian sistem hiburan terdapat Call Assistant, AHA Radio, Navigasi, informasi kendaraan, dan juga peringatan untuk pintu yang tak tertutup dengan rapat.</p>\r\n<p>Mengusung mesin K10B dengan kapasitas 998cc mobil memiliki tenaga setara 50 kW pada putaran 5.500 rpm dan torsi maksimum 90 Nm pada putaran 3.500 rpm.</p>\r\n<p>Suzuki mengusung tenaga penggerak roda depan pada S-Presso dan juga transmisi manual lima percepatan.</p>\r\n<p>Sayangnya buat orang Indonesia yang menginginkan mobil murah ini belum bisa mendapatkannya. Suzuki menegaskan belum berencana memboyong mobil murah itu dalam waktu dekat ke Tanah Air. Di Indonesia, mobil-mobil mungil dengan banderol harga miring memang cukup banyak ditawarkan di India.</p>\r\n<p>Mobil-mobil dengan model seperti itu cukup menarik bagi masyarakat India. Namun bisa jadi saat masuk ke pasar Indonesia mobil justru tak dilirik karena tak sesuai selera masyarakat.</p>', 'Suzuki belum lama ini merilis mobil paling murahnya di India. Mobil itu disapa Maruti S-Presso.', 'dijual-rp-70-juta-intip-fitur-di-dalam-mobil-termurah-suzuki.jpg', 'Suzuki S-Presso. Foto: Indianautosblog', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'N', 'Y', 1, 2, 1, '2019-10-14 22:46:22', '2019-11-13 15:09:37'),
(5, 3, 'Mengenal Area Lintas Batas Negara di Utara Indonesia', 'mengenal-area-lintas-batas-negara-di-utara-indonesia', '<p><strong>Miangas</strong> - Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.</p>\r\n<p>detikcom bersama Bank BRI melakukan ekspedisi Miangas untuk melihat kehidupan masyarakat di perbatasan. Bukan cuma sekedar perbatasan negara, Miangas adalah Border Cross Area.</p>\r\n<p>Mari mulai dengan kedekatan Miangas dan Filipina sejak dulu. Sebagai pulau yang lebih dekat dengan Filipina, Miangas cukup bergantung pada Filipina.&nbsp;</p>\r\n<p>Tak hanya sekedar berdagang dan memenuhi kebutuhan bahan pokok, Miangas dan Filipina sudah menali persaudaraan lewat perkawinan. Namun kegiatan ini mulai berkurang sejak ditetapkannya Border Cross Area.</p>\r\n<p>\"Border Crossing Area (BCA) atau Daerah Lintas Batas, untuk Kabupaten Talaud, Miangas menjadi check poinnya,\" ujar Sepno Lantaa, Camat Khusus Miangas.</p>\r\n<p>Unsur dari BCA adalah camat, angkatan laut, imigrasi, bea cukai dan karantina. BCA mulai berdiri di Indonesia sejak 1975. Tugas utama dari BCA adalah mengawasi lalu lintas manusia dan perdagangan barang.</p>\r\n<p>Sejak itu lalu lintas dan perdagangan mulai ketat. Dalam seminggu hanya ada satu-dua pelintas yang datang dengan menggunakan pamboat atau perahu motor tempel.</p>\r\n<p>Untuk masuk ke dalam daerah lintas batas atau BCA pun tak sembarangan, traveler. Kalau biasanya kamu hanya butuh paspor untuk kunjungan ke luar negeri, BCA membutuhkan lebih dari itu yaitu Kartu Lintas Batas (KLB).</p>\r\n<p>Kartu Lintas Batas adalah surat ijin untuk tinggal di Border Cross Area. Kartu ini dibagi ke dalam 3 masa tenggang, 13 hari, 30 hari dan 59 hari. Kartu ini bukan bisa digunakan sekali atau PP.</p>\r\n<p>\"Biasanya kegiatan yang dilakukan oleh pelintas batas Filipina adalah kunjungan keluarga, dagang atau transaksi barter,\" jelas Sepno.</p>\r\n<p>Angka pernikahan campuran sudah mulai menurun di Miangas. Namun transaksi dagang dan barter masih terus dilakukan. Kedekatan jarak antara Miangas dan Filipina menjadi satu-satunya jalan mencari kebutuhan pokok jika cuaca ekstrem datang.</p>\r\n<p>\"Saat ada keterlambatan dari kapal perintis atau penumpang, masyarakat yang kehabisan bahan pokok akan mencarinya lewat Filipina,\" cerita Sepno.</p>\r\n<p>Bagaimana cara Miangas dan Filipina berkomunikasi?</p>\r\n<p>Filipina punya seorang perwakilan negara yang ditempatkan di area lintas batas Miangas. Begitu pula perwakilan Indonesia di Filipina.&nbsp;</p>\r\n<p>Filipina diwakilkan oleh Albert Lopez dan tinggal di Miangas. Sayangnya, saat detikcom berkunjung, Albert Lopez sedang dalam masa cuti dan kembali ke Filipina.</p>\r\n<p>Dari sinilah kebutuhan-kebutuhan Miangas didapatkan. Jika ada warga Filipina yang ingin barter atau dagang ke Miangas, Lopez akan segera memberitahu bahan-bahan apa saja yang diperlukan.</p>\r\n<p>\"Yang dicari kebutuhan 9 bahan pokok, seperti beras, sayur sampai daging,\" tambah Sepno.</p>\r\n<p>Lantas seberapa penting adanya jalur lintas batas ini?</p>\r\n<p>\"Merujuk dari tahun 2002 dalam Border Trait Area, bahwa implikasi perdagangan bebas ini sebenarnya dirasakan apabila diberdayakan. Sebelum adanya pengetatan hukum di tahun 70an, masyarakat sering melakukan perdagangan ke Filipina,\" tutur Sepno.</p>\r\n<p>Masalah atau kendala yang seringkali dihadapi oleh BCA Miangas biasanya adalah surat ijin tinggal. Ini sudah lazim terjadi, karena sejak dulu Filipina bisa masuk dengan mudah ke Miangas.</p>\r\n<p>\"Kalau ada pelintas batas yang sakit di Miangas, maka ia akan dirujuk ke rumah sakit terdekat dengan aturan standar yang sudah ditetapkan,\" lanjut Sepno.</p>\r\n<p>TNI yang betugas di BCA bukan cuma mengawasi lalu lintas warga Filipina dan Miangas. Mereka juga melakukan pengecekan dokumen bersama pihak imigrasi.</p>\r\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.</p>', 'Miangas di Kabupaten Talaud, Sulawesi Utara bukan cuma sekedar pulau eksotis. Berada di ujung utara Indonesia, Miangas jadi perbatasan dengan Filipina.', 'mengenal-area-lintas-batas-negara-di-utara-indonesia.jpg', 'Border Cross Area di Miangas (Muhammad Ridho)', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'Y', 'Y', 3, 2, 1, '2019-10-14 22:55:02', '2024-10-08 22:45:54'),
(6, 3, 'Pantai Mera, Si Cantik dari Pulau Miangas', 'pantai-mera-si-cantik-dari-pulau-miangas', '<p><strong>Miangas</strong> - Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas. Santai sejenak dan hilangkan penat, selamat datang di Pantai Mera.</p>\r\n<p>Miangas memang punya arti menangis. Meski dihadapkan dengan kehidupan yang keras, alam Miangas sungguhlah kaya.</p>\r\n<p>detikcom bersama Bank BRI melakukan ekspedisi di pulau perbatasan ini. Pulau seluas 3,2 km persegi ini menyimpan potensi wisata yang mendalam.</p>\r\n<p>Inilah Pantai Mera, area wisata yang jauh dari pemukiman warga ini siap untuk dijelajahi. Pantai Mera berada di arah utara Pulau Miangas.&nbsp;</p>\r\n<p>Kalau menggunakan motor, pantai ini bisa dicapai sekitar 10 menit. Tapi karena jarangnya kendaraan, kamu bisa sampai di pantai ini dengan waktu 20 menit dengan berjalan kaki.</p>\r\n<p>Masih sangat alami, kamu mesti berhati-hati untuk masuk ke pantai ini. Bekas tebangan kelapa dan talud menyembunyikan keindahan Mera.</p>\r\n<p>Teriknya pulau ini menjadi satu alasan buat kamu untuk main ke Pantai Mera. Pasirnya putih halus dan air laut yang dingin akan menyegarkan badan yang penuh dengan peluh.</p>\r\n<p>Berkarakter karang, kamu yang mau berenang tetap haru hati-hati. Belum lagi ombak besar yang bisa datang tiba-tiba. Asal waspada, kamu bisa menikmati Pantai Mera dengan maksimal.</p>\r\n<p>Karena sedikitnya angka kunjungan wisatawan ke pulau ini, tak perlu takut untuk kehabisan spot foto. Sepanjang garis pantai ini akan jadi milikmu seorang.</p>\r\n<p>Serasa di pulau pribadi, Miangas menjadi salah satu tempat wisata seksi untuk traveler. Lihat saja foto-foto pantai ini yang begitu kosong.</p>\r\n<p>Namun tetap jaga kelakuan dan tidak membuang sampah sembarangan ya. Selain menjadi tempat wisata, Pantai Mera juga jadi tempat pertahanan leluhur Miangas.</p>\r\n<p>Sehingga adat sopan dan santun harus selalu dijaga dalam tiap jengkal pulau ini. Kamu boleh piknik di pantai ini asal membawa kembali sampahmu.</p>\r\n<p>Gratis dan terbuka untuk umum, wisatawan tak perlu takut untuk datang ke Pantai Mera. Bicara soal transaksi liburan, traveler bisa tarik tunai di satu-satunya bank Miangas, BRI. Liburan jadi lebih mudah.</p>\r\n<p>detikcom bersama Bank BRI mengadakan program Tapal Batas yang mengulas mengenai perkembangan infrastruktur, ekonomi, hingga wisata di beberapa wilayah terdepan.</p>', 'Lambaian nyiur, pasir putih, dan dinginnya air laut menjadi salah satu daya tarik wisata di Miangas.', 'pantai-mera-si-cantik-dari-pulau-miangas.jpg', 'Pantai Mera (Bonauli/detikcom)', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'N', 'Y', 3, 2, 1, '2019-10-14 22:58:26', '2024-10-15 07:35:48'),
(7, 4, '7 Kuliner Khas Manado yang Dijamin Bikin Ketagihan!', '7-kuliner-khas-manado-yang-dijamin-bikin-ketagihan', '<p><strong>Manado</strong> - Kota Manado dikenal mempunyai objek-objek wisata yang sangat indah. Karena itu, banyak sekali pengunjung baik dari dalam maupun luar negeri yang berbondong-bondong datang ke kota yang satu ini.</p>\r\n<p>Saat mendengar kota Manado, mungkin benak anda langsung terlintas tentang taman laut Bunaken dan Monumen Yesus Memberkati, sebagai objek wisata paling iconic di Manado.\\</p>\r\n<p>Namun, dari sekian banyak hal yang dicari, kamu wajib mencoba kuliner khas Manado yang dijamin bakal membuat kamu ketagihan. Berikut ini adalah 7 makanan khas Manado yang harus kamu coba saat berkunjung ke Manado.</p>\r\n<p><strong>1. Tinutuan (Bubur Manado)</strong></p>\r\n<p>Tinutuan atau bubur Manado merupakan makanan yang khas dari Manado yang tak hanya di kenal di Manado, tetapi juga terkenal di seluruh Indonesia.</p>\r\n<p>Makanan ini sering disebut makanan yang sangat sehat karena komposisinya yang mengandung banyak sayur dan zat baik yang berguna untuk tubuh. Biasanya tinutuan disajikan bersama ikan, aneka gorengan, sambal, dan pelengkap lainnya.</p>\r\n<hr />\r\n<p><strong>2. Cakalang Fufu Saos</strong></p>\r\n<p>Cakalang fufu adalah ikan khas Manado yang sangat enak. Cakalang juga diketahui merupakan jenis ikan yang tidak hanya enak, tetapi juga banyak manfaat bagi tubuh kita. Kandungan cakalang diketahui mampu untuk meningkatkan kecerdasan dan daya ingat otak serta membantu pemulihan depresi.</p>\r\n<p>Cakalang saos ini merupakan makanan khas Manado yang bercita rasa pedas dan kaya akan bumbu. Saos yang dicampurkan mirip seperti bumbu balado.</p>\r\n<hr />\r\n<p><strong>3. Ikan Woku</strong></p>\r\n<p>Makanan yang satu ini juga kaya akan bumbu. Biasanya, woku bisa dimasak dengan berbagai jenis ikan sesuai dengan selera. Jenis ikan yang sering dipakai dalam masakan ini adalah tuna, cakalang dan mujair.</p>\r\n<p>Rasa bumbu woku sangat kaya akan rempah seperti sereh, daun lemon, kemangi, kunyit, dll, sehingga kamu bakal ketagihan.</p>\r\n<hr />\r\n<p><strong>4. Sambal Roa</strong></p>\r\n<p>Dari bermacam-macam sambal yang ada, sambal roa adalah sambal khas Manado yang paling terkenal dan laris saat dijual. Biasanya sambal roa dihidangkan dengan berbagai jenis makanan ataupun gorengan. Bahkan banyak orang juga memakan sambal roa hanya dengan seporsi nasi panas.</p>\r\n<p>Sambal roa sendiri dibuat dari ikan roa yang telah di asap dan dijemur berhari-hari sampai kering, kemudian dihaluskan dan dicampur dengan bumbu sambal racikan khas Manado. Dijamin susah lupa deh sama Manado!</p>\r\n<hr />\r\n<p><strong>5. Pisang Goroho Goreng</strong></p>\r\n<p>Mungkin kamu banyak menjumpai pisang goreng yang pada umumnya dipotong seperti jari-jari dan dilabur tepung. Tetapi, kamu hanya bisa menemukan pisang goreng dari pisang jenis goroho di Manado. Rasa dari pisang goroho sangat enak.</p>\r\n<p>Pisang ini digoreng dengan irisan yang tipis sehingga gurih untuk dimakan. Kamu juga bisa makan pisang ini dengan mencelupkannya kedalam sambal roa atau jenis sambal lainnya. Lebih nikmat lagi jika pisang goroho ini disajikan dengan segelas teh atau kopi.</p>\r\n<hr />\r\n<p><strong>6. Klapertart</strong></p>\r\n<p>Makanan yang satu ini merupakan jenis dessert terkenal khas Manado. Bahan dasar klapertart adalah kelapa muda yang masih fresh kemudian dicampur dengan kismis, keju, kenari dan bahan adonan lainnya. Tekstur dari klapertart sangat kental dan cita rasanya yang creamy mampu membuat anda ketagihan.</p>\r\n<hr />\r\n<p><strong>7. Gohu&nbsp;</strong></p>\r\n<p>Gohu merupakan asinan buah yang sangat digemari oleh orang Manado. Gohu dibuat dengan menggunakan buah pepaya, timun ataupun nenas dan dicampurkan kedalam campuran air, cuka atau lemon, cabe rawit, jahe, gula merah dan garam secukupnya.</p>\r\n<p>Lebih nikmat jika kamu menyantapnya dalam keadaan dingin. Biasanya, banyak tempat makan yang menyediakan asinan ini baik yang dingin ataupun yang biasa.</p>\r\n<p>Itulah 7 kuliner yang harus kamu cicipi saat berkunjung ke Manado. Dijamin pasti enak dan ketagihan!</p>', 'Kota Manado dikenal mempunyai objek-objek wisata yang sangat indah. Karena itu, banyak sekali pengunjung baik dari dalam maupun luar negeri yang berbondong-bondong datang ke kota yang satu ini.', '7-kuliner-khas-manado-yang-dijamin-bikin-ketagihan.jpg', 'Masak Itu Gampang Bakal susah move on sama Manado nih', 'PopojiCMS,CMS Indonesia,Manado', 'pagination', 'Y', 'Y', 'Y', 4, 2, 1, '2019-10-14 23:07:35', '2019-11-13 15:16:08'),
(8, 4, 'Woku Balanga dan Tinoransak Disajikan di Java', 'woku-balanga-dan-tinoransak-disajikan-di-java', '<p><strong>Jakarta</strong> - Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan. Cocok buat lidah para penyuka hidangan Manado yang terkenal pedas. Untuk penggemar dabu-dabu jangan lupa cobain Udang bakar Dabu-Dabu yang bisa bikin ketagihan. Mau?</p>\r\n<p>Setelah sukses dengan rangkaian promo \'Pasar Senggol\' yang menghadirkan beragam kuliner tradisional dari seluruh Indonesia, seperti Sumatera, Jawa, dan Bali. Kini Java Restaurant menghadirkan makanan bercita rasa hot &amp; spicy asal Manado. Hidangan yang memiliki penggemar tersendiri ini bakal digelar hingga akhir Juli 2011.</p>\r\n<p>Masakan Manado memang terkenal dengan citarasanya yang hot &amp; spicy. Selain itu hidangan Manado juga terkenal royal dalam pemakaian bumbu sehingga sedap rasanya. Misalkan saja ayam woku blanga yang banyak disajikan di berbagai restoran Manado atau Tonoransak yang pedas mengigit.</p>\r\n<p>Tinotuan alias bubur Manado sendiri bakal diracik dan disajikan sesaat setelah dipesan. Selain itu tak lengkap rasanya jika belum menikmati Cakalang Pampis, Ayam Woku Belanga, Tumis Bunga Pepaya dan Bruinnebon. Jajanan khas Manado yang ditawarkan oleh Java Restaurant yang terletak di lanta 2, InterContinental Jakarta MidPlaza ini juga sayang untuk dilewatkan.</p>\r\n<p>Ada panada yang berisi ikan cakalang dengan sensasi rasa pedas. Kue khas Manado yang ini tak hanya aromanya yang wangi tetapi juga enak rasanya. Selain itu pengunjung juga bisa mencicipi lalampa, klapertart yang manis, dan kue bugis yang manis-manis gurih.</p>\r\n<p>Kesemua hidangan buffet tersebut dapat dinikmati sepuas hati cukup dengan membayar Rp 188.000++ per orang. Gimana, sudah tak sabar ingin merasakan sengatan masakan Manado yang pedas ini? Sebelum datang berkunjung ada baiknya melakukan reservasi terlebih dahulu di 021-2510888. Mari makan joo!</p>', 'Tinoransak yang dibalut dengan bumbu menyengat ini dijamin bakal bikin keringat berlelehan.', 'woku-balanga-dan-tinoransak-disajikan-di-java.jpg', 'Rasa bumbu woku sangat kaya akan rempah', 'PopojiCMS,CMS Indonesia,Manado', 'general', 'Y', 'N', 'Y', 2, 2, 1, '2019-10-14 23:10:16', '2024-11-02 04:59:10'),
(9, 5, 'Sensasi Kebas Tisu Magic, Diyakini Bikin \'Ngegas\' dan Tahan Lama', 'sensasi-kebas-tisu-magic-diyakini-bikin-ngegas-dan-tahan-lama', '<p><strong>Jakarta</strong> - OS (28), wanita pekerja seks komersial (PSK) online di Kabupaten Karawang, Jawa Barat dibunuh oleh Ridwan Solihin alias Emen. Ia mengaku menggunakan tisu magic sebelum berhubungan intim dengan OS.</p>\r\n<p>Tisu magic merupakan sebutan populer dari salah satu produk tisu khusus pria dewasa. Biasanya tisu magic ini dijual bersama kondom dan diklaim sebagai salah satu cara memperbaiki vitalitas pria.</p>\r\n<p>Pakar andrologi dan seksologi Profesor Dr dr Wimpie Pangkahila, SpAnd, FAACS pernah mengatakan, tisu magic sering dianggap sebagai \'obat kuat\' karena sifatnya yang bisa seperti anestesi lokal. Dengan demikian diharapkan para pria bisa ereksi lebih lama serta mencegah terjadinya ejakulasi dini.</p>\r\n<p>\"Harapannya adalah tidak cepat mengalami ejakulasi karena kulit sekitar area sensitif telah kebas atau mati rasa. Pada beberapa orang mungkin ada efeknya, tapi tidak mengatasi persoalan yang sebenarnya. Jika memang mengalami ejakulasi dini pergilah berobat yang benar supaya masalah segera teratasi,\" kata Prof Wimpie pada detikcom beberapa waktu lalu.</p>\r\n<p>Efek anastesi lokal yang terjadi karena tisu magic berfungsi seperti bius pada ujung penis. Dengan kulit yang mati rasa atau kebas selama kurun waktu tertentu, pria berharap bisa ereksi lebih lama. Padahal, ejakulasi dini tak hanya diakibatkan minimnya sensitivitas kulit pada area sensitif pria.</p>\r\n<p>\"Namanya juga usaha untuk mengatasi ejakulasi dini, tentu boleh mengusahakan berbagai cara. Namun efeknya tidak akan lama bagi yang sudah merasakan manfaatnya. Sedangkan bagi yang lain mungkin tidak merasakan manfaatnya, karena memang ejakulasi dini tidak bisa diatasi hanya dengan tisu magic,\" jelas Prof Wimpie.</p>\r\n<p>Hal yang disebut Prof Wimpie tercermin dari cerita pengalaman beberapa netizen yang mencoba tisu magic. Hilman (26) dari Ciputat misalnya mengaku memang bisa merasa jadi dua kali lebih lama saat bercinta. Namun bagi Adi (33) hal sebaliknya terjadi karena malah jadi kesulitan ereksi karena saking kebasnya.</p>\r\n<p>\"Dibungkus paling beberapa detik doang tapi digosok sampai rata. Enggak bisa (ereksi -red),\" kata Adi.</p>', 'Tisu magic merupakan sebutan populer dari salah satu produk tisu khusus pria dewasa. Biasanya tisu magic ini dijual bersama kondom dan diklaim sebagai salah satu cara memperbaiki vitalitas pria.', 'sensasi-kebas-tisu-magic-diyakini-bikin-ngegas-dan-tahan-lama.jpg', 'Ilustrasi tisu magic. Foto: iStock', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'Y', 'Y', 1, 2, 1, '2019-10-14 23:13:56', '2019-11-13 15:09:52'),
(10, 5, 'Apa Benar Minum Air dengan Lemon Bisa Menguruskan Badan?', 'apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan', '<p><strong>Jakarta</strong> - Sudah sering kita dengarkan anjuran untuk segera meminum segelas air dengan perasan atau potongan buah lemon saat bangun tidur. Anjuran ini biasanya dilakukan mereka yang sedang berusaha menurunkan berat badan.</p>\r\n<p>Segelas air lemon dalam perut kosong bisa membantu membuang lemak. Namun benarkah hal ini sebenarnya?</p>\r\n<p>Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan. Akan tetapi, jika kamu menggunakan minuman ini sebagai minuman pengganti yang banyak kalori seperi susu atau jus buah, maka bisa membantumu untuk mengurangi jumlah kalori untuk menurunkan badan.</p>\r\n<p>\"Menjaga tubuh tetap terhidrasi juga menjadi salah satu komponen penting saat menurunkan berat badan. Hal ini disebabkan tubuh kita kadang mengartikan haus sebagai rasa lapar sehingga kita menjadi makan lebih banyak dari kalori yang kita butuhkan. Air lemon membantu kita tetap terhidrasi,\" demikian dilaporkan situs tersebut.</p>\r\n<p>Sebuah studi yang dipublikasikan dalam Journal of Clinical Biochemistry and Nutrition menemukan bahwa polifenol atau senyawa tumbuhan yang berperan seperti antioksidan dalam jus lemon dan juga kulitnya yang bisa menstimulasi hati atau liver untuk membakar lemak.</p>\r\n<p>Studi tersebut dilakukan pada tikus percobaan yang telah diberi makan tinggi lemak sehingga hasilnya tidak terlalu benar-benar bisa dikaitkan dengan manusia kecuali melakukan diet ketogentik.</p>\r\n<p>Tak ada minuman yang secara ajaib bisa membantu menurunkan berat badan dan menjadi langsing. Untuk mendapatkannya setidaknya ubah pola makan menjadi sehat dan tetap aktif untuk menurunkan bobot dengan cara yang seimbang dan sehat. Dan perlu diingat bahwa lemon mengandung asam yang bisa mengganggu pencernaanmu saat kosong.</p>', 'Situs Times of India menyebutkan para ahli tidak menyetujui adanya pemikiran lemon segar yang diperas ke dalam air akan membantu menurunkan berat badan.', 'apa-benar-minum-air-dengan-lemon-bisa-menguruskan-badan.jpg', 'Air lemon disebut bisa membantu menurunkan berat badan (Foto: iStock)', 'PopojiCMS,CMS Indonesia', 'general', 'Y', 'N', 'Y', 2, 2, 1, '2019-10-14 23:15:50', '2024-10-15 07:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_gallerys`
--

CREATE TABLE `post_gallerys` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regulasis`
--

CREATE TABLE `regulasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diunduh` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2019-10-04 18:58:36', '2019-10-04 18:58:36'),
(2, 'admin', 'web', '2019-10-04 18:58:54', '2019-10-04 18:58:54'),
(3, 'editor', 'web', '2019-10-04 18:59:08', '2019-10-04 18:59:08'),
(4, 'member', 'web', '2019-10-04 18:59:16', '2019-10-04 18:59:16'),
(5, 'sekretariat', 'web', '2024-11-04 21:29:27', '2024-11-04 21:29:27'),
(6, 'user', 'web', '2024-11-04 21:29:42', '2024-11-04 21:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(2, 3),
(3, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(2, 4),
(3, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `groups`, `options`, `value`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'General', 'web_name', 'Komisi Informasi DKI Jakarta', 1, 1, '2019-10-05 20:48:11', '2019-10-05 21:02:02'),
(2, 'General', 'web_url', 'http://localhost/kip_v3.2024', 1, 1, '2019-10-05 21:12:28', '2019-10-05 21:12:28'),
(3, 'General', 'web_description', 'Website resmi Komisi Informasi DKI Jakarta', 1, 1, '2019-10-05 21:13:01', '2019-10-05 21:13:01'),
(4, 'General', 'web_keyword', 'popojicms buat sendiri rasa webmu', 1, 1, '2019-10-05 21:13:42', '2019-10-05 21:13:42'),
(5, 'General', 'web_author', 'PopojiCMS', 1, 1, '2019-10-05 21:13:56', '2019-10-05 21:13:56'),
(6, 'General', 'email', 'kip@jakarta.go.id', 1, 1, '2019-10-05 21:14:09', '2019-10-05 21:14:09'),
(7, 'General', 'telephone', '021 391 1975', 1, 1, '2019-10-05 21:14:26', '2019-10-05 21:14:26'),
(8, 'General', 'fax', '021 391 1975', 1, 1, '2019-10-05 21:14:38', '2019-10-05 21:14:38'),
(9, 'General', 'address', 'Gedung Graha Mental Spiritual Lt. 7, Jl. Awaludin II No. 1, Tanah Abang, Jakarta Pusat, DKI Jakarta, 10230', 1, 1, '2019-10-05 21:14:50', '2019-10-05 21:14:50'),
(10, 'General', 'latitude', '-6.1753871', 1, 1, '2019-10-05 21:15:21', '2019-10-05 21:15:21'),
(11, 'General', 'longitude', '106.8249641', 1, 1, '2019-10-05 21:15:54', '2019-10-05 21:15:54'),
(12, 'General', 'facebook', 'https://www.facebook.com/kipdkijakarta/', 1, 1, '2019-10-05 21:16:37', '2019-10-05 21:16:37'),
(13, 'General', 'twitter', 'https://x.com/kipdki', 1, 1, '2019-10-05 21:16:57', '2019-10-05 21:16:57'),
(14, 'General', 'youtube', 'https://www.youtube.com/@komisiinformasijakarta', 1, 1, '2019-10-05 21:17:12', '2019-10-05 21:17:12'),
(15, 'Image', 'favicon', 'logo_ki_dki.png', 1, 1, '2019-10-05 21:17:38', '2019-10-05 21:20:17'),
(16, 'Image', 'logo', 'logo_ki_dki.png', 1, 1, '2019-10-05 21:20:27', '2019-10-31 15:24:50'),
(17, 'Image', 'medium_size', '640x480', 1, 1, '2019-10-05 21:23:00', '2019-10-05 21:23:00'),
(18, 'Config', 'maintenance_mode', 'N', 1, 1, '2019-10-05 21:33:27', '2019-10-05 21:34:46'),
(19, 'Config', 'member_registration', 'N', 1, 1, '2019-10-05 21:33:54', '2019-10-05 21:34:53'),
(20, 'Config', 'comment', 'Y', 1, 1, '2019-10-05 21:34:21', '2019-10-05 21:35:01'),
(21, 'Config', 'item_per_page', '5', 1, 1, '2019-10-05 21:34:40', '2019-10-05 21:35:09'),
(22, 'Config', 'google_analytics_id', '-', 1, 1, '2019-10-05 21:35:45', '2019-10-05 21:35:45'),
(23, 'Config', 'recaptcha_key', '6LckEgETAAAAAPdqrQSY_boMDLZRL1vpkAatVqKf', 1, 1, '2019-10-05 21:36:15', '2019-10-05 21:36:46'),
(24, 'Config', 'recaptcha_secret', '6LckEgETAAAAAHqx4VFD4zNL96P9UEikD8BHfT28', 1, 1, '2019-10-05 21:36:40', '2019-10-05 21:36:40'),
(25, 'Mail', 'mail_protocol', 'SMTP', 1, 1, '2019-10-05 21:37:27', '2019-10-05 21:37:27'),
(26, 'Mail', 'mail_hostname', 'mail.popojicms.org', 1, 1, '2019-10-05 21:37:51', '2019-10-05 21:37:51'),
(27, 'Mail', 'mail_username', 'noreply@popojicms.org', 1, 1, '2019-10-05 21:39:13', '2019-10-05 21:39:13'),
(28, 'Mail', 'mail_password', '-', 1, 1, '2019-10-05 21:39:33', '2019-10-05 21:39:33'),
(29, 'Mail', 'mail_port', '465', 1, 1, '2019-10-05 21:39:51', '2019-10-05 21:39:51'),
(30, 'Other', 'sitemap', 'sitemap.xml', 1, 1, '2019-10-15 20:01:21', '2019-10-15 20:01:21'),
(31, 'Other', 'sitemap_priority', '0.8', 1, 1, '2019-10-15 20:08:49', '2019-10-16 19:18:58'),
(32, 'Other', 'sitemap_frequency', 'monthly', 1, 1, '2019-10-16 19:25:16', '2019-10-16 19:25:16'),
(33, 'Other', 'backup', 'backup', 1, 1, '2019-10-16 19:32:50', '2019-10-16 19:32:50'),
(34, 'Image', 'logo_footer', 'logo-inews-white.png', 1, 1, '2019-10-31 15:26:25', '2019-10-31 15:27:48'),
(35, 'Config', 'slug', 'detailpost/slug', 1, 1, '2019-11-13 14:32:55', '2019-11-13 15:09:19'),
(36, 'Image', 'ketua-ki', 'ketua_ki_dki.jpg', 1, 1, NULL, NULL),
(37, 'Image', 'wakil-ketua', 'ketua_bidang_kelembagaan_dki.jpg', 1, 1, NULL, NULL),
(38, 'Image', 'ketua-psi', 'ketua_bidang_psi_dki.jpg', 1, 1, NULL, NULL),
(39, 'Image', 'ketua-esa', 'ketua_bidang_esa_dki.jpg', 1, 1, NULL, NULL),
(40, 'Image', 'struktur-organisasi', 'struktur_organisasi-1086x1536.jpeg', 1, 1, NULL, NULL),
(41, 'Image', 'instagram', 'https://www.instagram.com/kipdkijakarta', 1, 1, NULL, NULL),
(42, 'Image', 'Prosedur-Pelayanan-Informasi', 'Prosedur_Pelayanan_Informasi.png\r\n', 1, 1, NULL, NULL),
(43, 'Image', 'Alur-Permohonan', 'Alur_Permohonan.png\r\n', 1, 1, NULL, NULL),
(44, 'Image', 'Alur-Penyelesaian', 'Alur_Penyelesaian_Sengketa_Informasi.png\r\n', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `name`, `email`, `follow`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Jenuar', 'djenuar@gmail.com', 'Y', 1, 1, '2019-10-14 22:15:33', '2019-10-14 22:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seotitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `seotitle`, `count`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CMS Indonesia', 'cms-indonesia', 23, 1, 1, '2019-10-08 05:26:34', '2019-11-12 21:30:26'),
(2, 'PopojiCMS', 'popojicms', 24, 1, 1, '2019-10-08 05:26:34', '2019-11-12 21:30:26'),
(3, 'Manado', 'manado', 14, 1, 1, '2019-10-23 00:37:34', '2019-11-12 21:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `title`, `author`, `folder`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'INews', 'Dwira Survivor', 'inews', 'Y', 1, 1, '2019-10-30 20:55:25', '2019-10-30 20:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `telp`, `bio`, `block`, `picture`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', 'mhddfthr09@gmail.com', NULL, '$2y$10$TwKHji/2MnOiaPoazVtlC.fMhdgQiSB7s6SO.eY/V4.A4MoS7GH0u', NULL, NULL, 'N', NULL, NULL, 1, 1, '2019-09-22 00:56:35', '2019-10-04 19:50:43'),
(2, 'Administrator', 'administrator', 'admin@popojicms.org', NULL, '$2y$10$TwKHji/2MnOiaPoazVtlC.fMhdgQiSB7s6SO.eY/V4.A4MoS7GH0u', NULL, NULL, 'N', '', NULL, 1, 1, '2019-10-15 00:36:38', '2019-10-15 00:36:48'),
(3, 'Editor', 'editor', 'editor@popojicms.org', NULL, '$2y$10$TwKHji/2MnOiaPoazVtlC.fMhdgQiSB7s6SO.eY/V4.A4MoS7GH0u', NULL, NULL, 'N', '', NULL, 1, 1, '2019-10-15 00:37:15', '2019-10-15 00:37:15'),
(4, 'Member', 'member', 'member@popojicms.org', NULL, '$2y$10$TwKHji/2MnOiaPoazVtlC.fMhdgQiSB7s6SO.eY/V4.A4MoS7GH0u', NULL, NULL, 'N', '', NULL, 1, 1, '2019-10-15 00:37:45', '2019-10-15 00:37:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerys`
--
ALTER TABLE `gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keberataninformasis`
--
ALTER TABLE `keberataninformasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `email` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permohonaninformasis`
--
ALTER TABLE `permohonaninformasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_gallerys`
--
ALTER TABLE `post_gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regulasis`
--
ALTER TABLE `regulasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallerys`
--
ALTER TABLE `gallerys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keberataninformasis`
--
ALTER TABLE `keberataninformasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `permohonaninformasis`
--
ALTER TABLE `permohonaninformasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_gallerys`
--
ALTER TABLE `post_gallerys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regulasis`
--
ALTER TABLE `regulasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
