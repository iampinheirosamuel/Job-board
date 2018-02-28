-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 11:50 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profile_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `user_id`, `profile_name`, `profile_pic`, `profile_title`, `skills`, `profile_description`, `address`, `created_at`, `updated_at`, `active`) VALUES
(1, 0, 'Jonathon Roy', 'images/candidates/1.jpg', 'Graphic Designer', 'logo design, business card design, web page design', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(2, 0, 'Thasan Khan', 'images/candidates/2.jpg', 'Web Designer', 'html, css, php', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(3, 0, 'Sara Khan', 'images/candidates/3.jpg', 'Graphic Designer', 'logo design, business card design, web page design', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(4, 0, 'Sophia', 'images/candidates/4.jpg', 'Web Developer', 'php, wordpress, laravel', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(5, 0, 'Jonathon Roy', 'images/candidates/1.jpg', 'Graphic Designer', 'logo design, business card design, web page design', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(6, 0, 'Thasan Khan', 'images/candidates/2.jpg', 'Web Designer', 'html, css, php', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(7, 0, 'Sara Khan', 'images/candidates/3.jpg', 'Graphic Designer', 'logo design, business card design, web page design', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', NULL, NULL, 0),
(8, 0, 'Sophia', 'images/candidates/4.jpg', 'Web Developer', 'php, wordpress, laravel', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fbf_jobs`
--

CREATE TABLE `fbf_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('PERMANENT','TEMPORARY') COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` enum('FULL_TIME','PART_TIME') COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_from` float(10,2) DEFAULT NULL,
  `salary_to` float(10,2) DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `search_extra` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('DRAFT','APPROVED') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `published_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_description`, `job_location`, `job_type`, `job_category`, `payment`, `featured`, `company_name`, `company_logo`, `created_at`, `updated_at`, `user_id`, `active`) VALUES
(1, 'Graphic Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', 'FULLTIME', 'Designing', '200', 0, 'Devitems', 'images/company-logo/1.png', NULL, NULL, 0, 1),
(2, 'Web Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', 'PARTTIME', 'Designing', '300', 0, 'Hastech', 'images/company-logo/2.png', NULL, NULL, 0, 1),
(3, 'Print Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', 'INTERNSHIP', 'Designing', '400', 0, 'PowerBoosts', 'images/company-logo/3.png', NULL, NULL, 0, 1),
(4, 'UI/UX Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', 'FULLTIME', 'Designing', '500', 1, 'CodeCarnival', 'images/company-logo/4.png', NULL, NULL, 0, 1),
(5, 'Graphic Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', 'FULLTIME', 'Designing', '200', 0, 'Devitems', 'images/company-logo/1.png', NULL, NULL, 0, 1),
(6, 'Web Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', 'PARTTIME', 'Designing', '300', 0, 'Hastech', 'images/company-logo/2.png', NULL, NULL, 0, 1),
(7, 'Print Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire1 Glen,Alpharetta, GA-30009', 'INTERNSHIP', 'Designing', '400', 0, 'PowerBoosts', 'images/company-logo/3.png', NULL, NULL, 0, 1),
(8, 'UI/UX Designer', 'We have earlier made our own custom webshop, which works good. But now we need to add some new features. Its a Laravel 5 Project running on LEMP (Linux, Nginx, MySQL, PHP) stack.PHP, Composer, Laravel, Linux, Nginx, MySQL, JS, SASS. Please send us message if you are interested.', '2020 Willshire2 Glen,Alpharetta, GA-30009', 'FULLTIME', 'Designing', '500', 1, 'CodeCarnival', 'images/company-logo/4.png', NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_11_15_214339_create_jobs_table', 1),
('2014_10_12_000000_create_users_table', 2),
('2014_10_12_100000_create_password_resets_table', 2),
('2016_11_17_112703_add_types_to_users_table', 2),
('2016_11_19_121530_create_jobs_table', 2),
('2016_11_21_060931_create_candidates_table', 2),
('2016_11_27_114328_add_user_id_to_jobs_table', 2),
('2016_11_27_120507_create_job_role_table', 2),
('2016_11_28_065525_add_active_to_jobs_table', 2),
('2016_12_05_042552_add_active_to_candidates_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `website_url`, `profile_description`) VALUES
(1, 'Samuel Pinheiro', 'pinheirolaoluwa@gmail.com', '$2y$10$2pQLIcbJYwMxJe5ck88dFuVz9sSGxy5MkSWQV0fUGz/r0KFDpTfTa', NULL, '2018-02-27 12:43:37', '2018-02-27 12:43:37', 'JobSeeker', NULL, NULL),
(2, 'Samuel Pinheiro', 'pinheirolaoluwaa@gmail.com', '$2y$10$6w7HMYUYX8A.bpDT74/JLOuGhVlTBXdcvjULHp33hrpxOppCzgcG.', NULL, '2018-02-28 06:37:23', '2018-02-28 06:37:23', 'Employer', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbf_jobs`
--
ALTER TABLE `fbf_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fbf_jobs_slug_unique` (`slug`);
ALTER TABLE `fbf_jobs` ADD FULLTEXT KEY `search` (`title`,`description`,`reference`,`location`,`search_extra`,`meta_description`,`meta_keywords`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fbf_jobs`
--
ALTER TABLE `fbf_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
