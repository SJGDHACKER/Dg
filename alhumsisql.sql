-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 30 أبريل 2023 الساعة 14:58
-- إصدار الخادم: 10.5.18-MariaDB-10+deb11u1
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamadh`
--

-- --------------------------------------------------------

--
-- بنية الجدول `buttons`
--

CREATE TABLE `buttons` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` text NOT NULL,
  `caption` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `buttons`
--

INSERT INTO `buttons` (`id`, `code`, `name`, `caption`) VALUES
(6, '#viv22foxh7', '- خدمات تليجرام ☑️🔥.', '✅︙خدمات (التزويد) لـ تيليجرام Telegram.\n🛒︙يرجى إختيار إحدى الخدمات من الأسفل.');

-- --------------------------------------------------------

--
-- بنية الجدول `divi`
--

CREATE TABLE `divi` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `codedivi` text NOT NULL,
  `caption` text NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `divi`
--

INSERT INTO `divi` (`id`, `code`, `codedivi`, `caption`, `name`) VALUES
(4, '#sh3fkwzu37', '#viv22foxh7', '🙋‍♂️︙رشق مشاهدات تليجرام Telegram . 🫂➕\n\n🎬︙يرجى إختيار نوع الرشق من الأسفل. 👇', '- مشاهدات تليجرام 🔥👁.');

-- --------------------------------------------------------

--
-- بنية الجدول `order_done`
--

CREATE TABLE `order_done` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `type` text NOT NULL,
  `caption` text NOT NULL,
  `api` text NOT NULL,
  `price` text NOT NULL,
  `remains` text NOT NULL,
  `order_id` text NOT NULL,
  `num_order` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `order_waiting`
--

CREATE TABLE `order_waiting` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `caption` text NOT NULL,
  `ms_user` text NOT NULL,
  `ms_channel` text NOT NULL,
  `order_id` text NOT NULL,
  `api` text NOT NULL,
  `price` text NOT NULL,
  `num_order` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `serv`
--

CREATE TABLE `serv` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `codeserv` text NOT NULL,
  `name` text NOT NULL,
  `caption` text NOT NULL,
  `num` text NOT NULL,
  `api` text NOT NULL,
  `precent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `serv`
--

INSERT INTO `serv` (`id`, `code`, `codeserv`, `name`, `caption`, `num`, `api`, `precent`) VALUES
(17, '#sh3fkwzu37', '#p3wkjku3fm', '- مشاهدات تليجرام سريعة🌪🔥', 'مشاهدات', '1', '1', '2');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `coin` text NOT NULL,
  `spent` text NOT NULL,
  `user` text NOT NULL,
  `charge` text NOT NULL,
  `mycoin` text NOT NULL,
  `fromuser` text NOT NULL,
  `coinfromuser` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `coin`, `spent`, `user`, `charge`, `mycoin`, `fromuser`, `coinfromuser`) VALUES
(19, '10', '0', '1872571604', '0', 's', 'None', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divi`
--
ALTER TABLE `divi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_done`
--
ALTER TABLE `order_done`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_waiting`
--
ALTER TABLE `order_waiting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serv`
--
ALTER TABLE `serv`
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
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divi`
--
ALTER TABLE `divi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_done`
--
ALTER TABLE `order_done`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_waiting`
--
ALTER TABLE `order_waiting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `serv`
--
ALTER TABLE `serv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
