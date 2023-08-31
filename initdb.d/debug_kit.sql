-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: cakephp4-tutorial-mysql
-- 生成日時: 2023 年 1 月 18 日 01:28
-- サーバのバージョン： 5.7.35
-- PHP のバージョン: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `debug_kit`
--
CREATE DATABASE IF NOT EXISTS `debug_kit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `debug_kit`;

-- --------------------------------------------------------

--
-- テーブルの構造 `panels`
--

CREATE TABLE `panels` (
  `id` char(36) NOT NULL,
  `request_id` char(36) NOT NULL,
  `panel` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `element` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `content` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `requests`
--

CREATE TABLE `requests` (
  `id` char(36) NOT NULL,
  `url` text NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `requested_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `panels`
--
ALTER TABLE `panels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_panel` (`request_id`,`panel`);

--
-- テーブルのインデックス `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;