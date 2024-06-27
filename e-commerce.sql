-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 01:07 PM
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
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'شركة أوليا سوفت هو المكان المثالي لشراء منتجات عالية الجودة للجمال والعناية بالجسم. اكتشف مجموعة متنوعة من المنتجات وتألق بإطلالة رائعة ومظهر متألق يعكس جمالك الفريد.', '[\"images\\/TgsId_1701380268.jpg\"]', NULL, '2023-11-30 19:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(16, 'احمد طارق', 'admin@admin.com', '$2y$10$qrljoG2V0uZh1VGHkPCFJe6BRdxZ/ZyPwhuCDpIF7tXGz9heDjtN.', 'images/54dsx_1699957087.jpg', '2023-11-14 08:18:07', '2023-12-01 20:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image`, `created_at`, `updated_at`) VALUES
(17, 'منتجات تجميل', 'images/gkuUY_1701379127.webp', '2023-11-24 08:24:39', '2023-11-30 19:18:47'),
(18, 'ليف', 'images/AV6yQ_1701379114.webp', '2023-11-24 08:29:16', '2023-11-30 19:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(4, 'ahmed ', 'ahmed@gmail.com ', '8754326', 'ljhfds', 'mytddgcgdsgs', NULL, NULL),
(5, 'Jack Quinn', 'tuvapazisy@mailinator.com', '1070243', 'Reprehenderit est ma', 'Illo hic qui nulla e', '2023-11-27 16:24:24', '2023-11-27 16:24:24'),
(6, 'Josiah Dillon', 'gubysu@mailinator.com', '+1 (547) 103-4589', 'Exercitation volupta', 'Eiusmod blanditiis e', '2023-11-30 09:09:03', '2023-11-30 09:09:03'),
(7, 'Bianca Koch', 'wogacy@mailinator.com', '+1 (447) 128-6205', 'Obcaecati distinctio', 'Labore numquam ab fu', '2023-11-30 09:10:09', '2023-11-30 09:10:09'),
(8, 'Karyn Maddox', 'popapibup@mailinator.com', '+1 (268) 548-1993', 'Minima dolore alias', 'Vel aliquip qui atqu', '2023-11-30 09:11:53', '2023-11-30 09:11:53'),
(9, 'Sloane Ball', 'domate@mailinator.com', '+1 (209) 255-8712', 'Rerum ipsa magni mo', 'Voluptas deleniti co', '2023-11-30 20:58:01', '2023-11-30 20:58:01'),
(10, 'Nero Wooten', 'punelyhigu@mailinator.com', '+1 (354) 639-6127', 'Elit recusandae Qu', 'Nobis ut ex in iure', '2023-11-30 21:02:19', '2023-11-30 21:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_28_134215_create_sliders_table', 1),
(6, '2023_09_30_210725_create_admins_table', 2),
(7, '2023_10_01_155547_create_categories_table', 3),
(8, '2023_10_01_213446_create_sponsors_table', 4),
(9, '2023_10_02_131110_create_products_table', 5),
(10, '2023_10_03_110929_create_contacts_table', 6),
(11, '2023_10_03_194318_create_about_table', 7),
(12, '2023_10_04_203004_create_reviews_table', 8),
(13, '2023_10_16_102338_create_product_images_table', 9),
(14, '2023_11_25_194225_create_offers_table', 10),
(15, '2023_11_30_185052_create_settings_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_before` decimal(8,2) NOT NULL,
  `price_after` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `description`, `image`, `price_before`, `price_after`, `created_at`, `updated_at`) VALUES
(1, 'الليفة المغربية', 'images/RGJqO_1701118286.jpg', '350.00', '300.00', NULL, '2023-11-27 18:52:53');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `discount` decimal(11,0) DEFAULT NULL,
  `final_price` decimal(11,0) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('متاح','غير متوفر') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `discount`, `final_price`, `image`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(35, 'بيضاوي', 'عرض - قطن', '200', NULL, '200', 'images/blVNY_1701111562.jpg', 'غير متوفر', 18, '2023-11-27 16:37:08', '2023-11-30 08:07:21'),
(36, 'يد (عرض)', 'قطن', '100', NULL, '100', 'images/2q9wR_1701110463.jpg', 'متاح', 18, '2023-11-27 16:41:03', '2023-11-30 08:07:01'),
(37, 'مساج', 'قطن', '150', NULL, '150', 'images/SrNEX_1701110630.jpg', 'متاح', 18, '2023-11-27 16:43:50', '2023-11-30 08:06:41'),
(38, 'قلب', 'قطن', '250', NULL, '250', 'images/aiM3S_1701110797.jpg', 'غير متوفر', 18, '2023-11-27 16:46:37', '2023-11-30 08:06:28'),
(39, 'ظهر', 'خشب - كبير', '150', '50', '100', 'images/sg1zr_1701111195.jpg', 'متاح', 18, '2023-11-27 16:53:15', '2023-11-30 08:06:16'),
(40, 'مغربي', 'لوف - جامبو', '350', NULL, '350', 'images/B2zCt_1701111475.webp', 'متاح', 18, '2023-11-27 16:57:55', '2023-11-30 08:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(55, 38, 'images/BEO2j_1701112173.jpg', '2023-11-27 17:09:33', '2023-11-27 17:09:33'),
(56, 38, 'images/TXevy_1701112173.jpg', '2023-11-27 17:09:33', '2023-11-27 17:09:33'),
(57, 38, 'images/xWuMe_1701112173.jpg', '2023-11-27 17:09:33', '2023-11-27 17:09:33'),
(63, 37, 'images/JViL9_1701112367.jpg', '2023-11-27 17:12:47', '2023-11-27 17:12:47'),
(64, 37, 'images/kn2uA_1701112367.jpg', '2023-11-27 17:12:47', '2023-11-27 17:12:47'),
(65, 37, 'images/tum9w_1701112367.jpg', '2023-11-27 17:12:47', '2023-11-27 17:12:47'),
(66, 36, 'images/6C7cV_1701112401.jpg', '2023-11-27 17:13:21', '2023-11-27 17:13:21'),
(67, 36, 'images/O782C_1701112401.jpg', '2023-11-27 17:13:21', '2023-11-27 17:13:21'),
(68, 35, 'images/0pcVf_1701112426.jpg', '2023-11-27 17:13:46', '2023-11-27 17:13:46'),
(69, 35, 'images/BD7xd_1701112426.jpg', '2023-11-27 17:13:46', '2023-11-27 17:13:46'),
(70, 35, 'images/Sr9Rm_1701112426.jpg', '2023-11-27 17:13:46', '2023-11-27 17:13:46'),
(71, 39, 'images/TlF0J_1701112714.jpg', '2023-11-27 17:18:34', '2023-11-27 17:18:34'),
(72, 39, 'images/n1LlM_1701112714.jpg', '2023-11-27 17:18:34', '2023-11-27 17:18:34'),
(83, 40, 'images/KWYam_1701427386.jpg', '2023-12-01 08:43:06', '2023-12-01 08:43:06'),
(84, 40, 'images/Dgxo0_1701427386.jpg', '2023-12-01 08:43:06', '2023-12-01 08:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `sub_title`, `review`, `image`, `created_at`, `updated_at`) VALUES
(5, 'سارة', 'عميلة مميزة', 'لقد استخدمت كريم الوجه المرطب العميق لمدة شهرين الآن وأود أن أقدم تقييمي الشخصي حوله. أنا من ذوات البشرة الجافة جدًا وكنت أبحث عن منتج يمنحني الترطيب اللازم والنعومة. وبعد استخدام هذا الكريم، أنا سعيدة بالنتائج التي حققتها.', 'images/lkXQN_1697146127.jpg', '2023-10-08 08:34:00', '2023-10-29 10:32:18'),
(6, 'نور', 'اراء عملاءنا', 'أنا سعيدة جدًا بسيروم الوجه المضيء المنشط والنتائج التي حققتها على بشرتي. يعمل على ترطيب وتغذية البشرة بعمق، وتحسين إشراقتها وتوحيدها. السيروم لديه تأثير مضيء فعال ويجعل بشرتي تبدو صحية ومشعة.', 'images/3gwqL_1698582870.jpg', '2023-10-08 08:34:17', '2023-10-29 10:38:22'),
(7, 'ليلى', 'احد عملاءنا', 'اسبراي قشرة الشعر هو منتج جيد لتهدئة الفروة وتقليل قشرة الشعر كما يتميزبرائحته المنعشة والمهدئة ويمتص الاسبراي بسرعة ولا يترك أي بقايا دهنية على الشعر.', 'images/GVQB3_1698582841.png', '2023-10-08 08:34:42', '2023-10-29 10:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `phone`, `whatsapp`, `gmail`, `facebook`, `created_at`, `updated_at`) VALUES
(1, 'images/uHBRg_1701425781.jpeg', '01141190077', '01141190077', 'ahmedtarekya100@gmail.com', 'https://www.facebook.com/ahmedtarekya/', NULL, '2023-12-01 08:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) NOT NULL,
  `btn_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `btn_text`, `btn_link`, `created_at`, `updated_at`) VALUES
(23, 'ليف الاستحمام الطبيعي', 'اكتشف فوائد ليف الاستحمام الطبيعي لتجربة استحمام مميزة ومنعشة.', 'images/Ps8FG_1701378561.jpg', 'تصفح', 'https://github.com/afnan612/e-commerce', '2023-10-12 10:11:55', '2023-11-30 19:31:51'),
(24, 'جودة فائقة بسعر مناسب', 'تتميز منتجاتنا بجودة عالية ومواد طبيعية نقية تساعد على تنظيف البشرة وترطيبها.', 'images/NMenU_1701378551.jpg', 'تصفح المزيد', 'https://github.com/afnan612/e-commerce', '2023-10-12 10:12:18', '2023-11-30 19:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(8, 'stripe', 'images/rqQJW_1696248548.png', '2023-10-02 09:09:08', '2023-10-07 09:48:33'),
(16, 'tap', 'images/zJo9O_1697461183.png', '2023-10-12 10:14:29', '2023-10-16 09:59:43'),
(17, 'Vodafone', 'images/QtH4G_1697461153.PNG', '2023-10-12 10:14:46', '2023-10-16 09:59:13'),
(18, 'Hyper pay', 'images/TVyXD_1697461213.png', '2023-10-16 10:00:13', '2023-10-16 10:00:13');

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
(3, 'admin ', 'admin@admin.com ', NULL, '123456789', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
