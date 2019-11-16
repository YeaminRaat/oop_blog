-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 06:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(5) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `cat_id`, `title`, `content`, `photo`, `name`, `status`, `created_at`, `updated_at`) VALUES
(11, 8, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¦à§à¦°à§à¦¦à¦¾à¦¨à§à¦¤ à¦–à§‡à¦²à§‡à¦›à§‡, à¦¬à¦²à¦²à§‡à¦¨ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦•à§‹à¦š', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦šà§‹à¦–à§‡ à¦šà¦¶à¦®à¦¾,à¦¹à§‡à¦²à§‡ à¦¦à§à¦²à§‡ à¦¹à¦¾à¦à¦Ÿà¦¾ à¦¦à§‡à¦–à¦²à§‡ à¦®à¦¨à§‡ à¦¹à§Ÿ à¦¸à¦¬ à¦¸à¦®à§Ÿ à¦•à§€ à¦¯à§‡à¦¨ à¦­à¦¾à¦¬à¦›à§‡à¦¨ ! à¦­à¦¾à¦°à¦¤à§‡à¦° à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¦° à¦•à§‹à¦š à¦‡à¦—à¦° à¦¸à§à¦Ÿà¦¿à¦®à¦¾à¦šà§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦à¦•à¦Ÿà¦¾ à¦ªà§à¦°à¦«à§‡à¦¸à¦°à¦¸à§à¦²à¦­ à¦­à¦¾à¦¬ à¦†à¦›à§‡à¥¤ à¦¨à¦¾ à¦¶à§à¦§à§ à¦šà¦¶à¦®à¦¾ à¦†à¦° à¦­à¦¾à¦¬à§à¦• à¦¦à§ƒà¦·à§à¦Ÿà¦¿à¦° à¦œà¦¨à§à¦¯ à¦¨à¦¾, à¦¦à¦•à§à¦·à¦¿à¦£ à¦à¦¶à¦¿à§Ÿà¦¾à¦¨ à¦«à§à¦Ÿà¦¬à¦²à§‡à¦° à¦®à¦¾à¦¨à¦¦à¦£à§à¦¡à§‡ à¦¤à¦¾à¦à¦•à§‡ à¦ªà§à¦°à¦«à§‡à¦¸à¦° à¦¬à¦²à¦¾à¦‡ à¦¯à¦¾à§Ÿâ€”à¦¯à¦–à¦¨ à¦¶à§à¦¨à¦¬à§‡à¦¨ à¦¤à¦¾à¦à¦° à¦…à¦§à§€à¦¨à§‡à¦‡ à§¨à§¦à§§à§ª à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡ à¦–à§‡à¦²à§‡à¦›à¦¿à¦² à¦•à§à¦°à§‹à§Ÿà§‡à¦¶à¦¿à§Ÿà¦¾à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ªà§‡ à¦¦à¦² à¦¨à¦¿à§Ÿà§‡ à¦¯à¦¾à¦“à§Ÿà¦¾ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦à¦‡ à¦•à§‹à¦šà¦‡ à¦†à¦œ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦²à§‡à¦¨ à¦…à¦­à¦¿à¦¨à¦¨à§à¦¦à¦¨ à¥¤ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¯à§‡ à¦¤à¦¾à¦à¦° à¦®à¦¨ à¦œà§Ÿ à¦•à¦°à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à§‡ à¦®à§à¦¯à¦¾à¦š à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¸à¦‚à¦¬à¦¾à¦¦ à¦¸à¦®à§à¦®à§‡à¦²à¦¨à§‡ à¦­à¦°à¦¾ à¦®à¦œà¦²à¦¿à¦¶à§‡ à¦¤à¦¾ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ à¦¦à¦¿à¦²à§‡à¦¨, â€˜à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦•à§‡ à¦…à¦­à¦¿à¦¨à¦¨à§à¦¦à¦¨à¥¤ à¦¤à¦¾à¦°à¦¾ à¦¦à§à¦°à§à¦¦à¦¾à¦¨à§à¦¤ à¦«à§à¦Ÿà¦¬à¦² à¦–à§‡à¦²à§‡à¦›à§‡à¥¤ à¦–à§à¦¬à¦‡ à¦°à§‹à¦®à¦¾à¦žà§à¦šà¦•à¦° à¦à¦•à¦Ÿà¦¿ à¦®à§à¦¯à¦¾à¦š à¦›à¦¿à¦²à¥¤ à¦à¦Ÿà¦¾à¦‡ à¦«à§à¦Ÿà¦¬à¦²à§‡à¦° à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯à¥¤ à¦†à¦®à¦¿ à¦…à¦¤à§€à¦¤à§‡ à¦®à§à¦¯à¦¾à¦šà§‡ à¦®à¦¾à¦ à§‡ à¦›à¦¿à¦²à¦¾à¦®à¥¤ à¦à¦‡ à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¾ à¦†à¦®à¦¾à¦° à¦œà§€à¦¬à¦¨à§‡ à¦¸à§à¦®à¦°à¦£à§€à§Ÿ à¦¹à§Ÿà§‡ à¦¥à¦¾à¦•à¦¬à§‡à¥¤â€™</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦­à¦¾à¦°à¦¤à§‡à¦° à¦®à¦¾à¦Ÿà¦¿à¦¤à§‡ à¦•à¦–à¦¨à§‹ à¦œà§‡à¦¤à§‡à¦¨à¦¿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¥¤ à¦†à¦œ à¦¸à§‡à¦‡ à¦…à¦§à¦°à¦¾ à¦œà§Ÿà§‡à¦° à¦¦à§‡à¦–à¦¾ à¦®à¦¿à¦²à¦¤à§‡ à¦ªà¦¾à¦°à¦¤à¥¤ à¦ªà§à¦°à¦¥à¦®à¦¾à¦°à§à¦§à§‡à¦° à§ªà§¨ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦¸à¦¾à¦¦ à¦‰à¦¦à§à¦¦à¦¿à¦¨à§‡à¦° à¦—à§‹à¦²à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¾à¦° à¦¬à§à¦¯à¦¬à¦§à¦¾à¦¨ à¦ªà§à¦à¦œà¦¿ à¦•à¦°à§‡ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦ªà§à¦°à¦¾à§Ÿ à¦¶à§‡à¦· à¦ªà¦°à§à¦¯à¦¨à§à¦¤à¦“ à¦œà§Ÿà§‡à¦° à¦¸à§à¦¬à¦¾à¦¸ à¦ªà¦¾à¦šà§à¦›à¦¿à¦² à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¥¤ à§®à§® à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦¹à§ƒà¦¦à§Ÿ à¦­à¦™à§à¦—à¥¤ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦¿à¦¤ à¦¸à¦®à§Ÿ à¦¶à§‡à¦· à¦¹à¦“à§Ÿà¦¾à¦° à¦¦à§à¦‡ à¦®à¦¿à¦¨à¦¿à¦Ÿ à¦†à¦—à§‡ à¦¹à§‡à¦¡à§‡ à¦¸à¦®à¦¤à¦¾à¦¸à§‚à¦šà¦• à¦—à§‹à¦²à¦Ÿà¦¿ à¦•à¦°à§‡à¦¨ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦†à¦¦à¦¿à¦² à¦–à¦¾à¦¨à¥¤ à¦à¦¤à§‡à¦‡ à§§ à¦ªà§Ÿà§‡à¦¨à§à¦Ÿ à¦¨à¦¿à§Ÿà§‡ à¦®à¦¾à¦  à¦›à¦¾à§œà¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¸à§à¦¬à¦¾à¦—à¦¤à¦¿à¦•à§‡à¦°à¦¾à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦¤à¦¬à§‡ à¦¡à§à¦° à¦¨à§Ÿ , à¦­à¦¾à¦°à¦¤à§‡à¦° à¦œà§Ÿ à¦ªà¦¾à¦“à¦¨à¦¾ à¦›à¦¿à¦² à¦¬à¦²à§‡ à¦®à¦¨à§‡ à¦•à¦°à§‡à¦¨ à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦•à§‹à¦š, â€˜à¦œà§Ÿà¦Ÿà¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦ªà§à¦°à¦¾à¦ªà§à¦¯ à¦›à¦¿à¦²à¥¤ à¦†à¦®à¦°à¦¾ à¦ªà§à¦°à§‹ à¦®à§à¦¯à¦¾à¦šà§‡ à¦¦à¦¾à¦ªà¦Ÿ à¦¦à§‡à¦–à¦¿à§Ÿà§‡à¦›à¦¿à¥¤ à¦…à¦¨à§‡à¦• à¦¸à§à¦¯à§‹à¦— à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§‡à¦›à¦¿à¥¤ à¦¯à§‡à¦‡ à¦—à§‹à¦²à¦Ÿà¦¾ à¦¹à¦œà¦® à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦•à§‹à¦¨à§‹à¦­à¦¾à¦¬à§‡à¦‡ à¦—à§à¦°à¦¹à¦£ à¦¯à§‹à¦—à§à¦¯ à¦¨à§Ÿà¥¤ à¦†à¦®à¦¿ à¦ªà¦°à¦¿à¦·à§à¦•à¦¾à¦°à¦­à¦¾à¦¬à§‡ à¦¬à¦²à¦¤à§‡ à¦šà¦¾à¦‡ à¦ à¦—à§‹à¦² à¦¹à¦œà¦® à¦•à¦°à¦¾à¦Ÿà¦¾ à¦®à¦¾à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à¦›à¦¿ à¦¨à¦¾à¥¤ â€™ à¦¤à¦¬à§‡ à¦®à§à¦¯à¦¾à¦šà§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦“ à¦¯à§‡ à¦¦à§à¦°à§à¦­à¦¾à¦—à§à¦¯à§‡à¦° à¦¶à¦¿à¦•à¦¾à¦°, à¦¸à§‡à¦Ÿà¦¿à¦“ à¦®à§‡à¦¨à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦¸à§à¦Ÿà¦¿à¦®à¦¾à¦šà¥¤</p>', '20191016115144.jpg', 'admin', 1, '2019-10-16 05:51:44', '2019-10-16 05:51:44'),
(12, 13, 'à¦ªà§à¦°à¦¤à¦¿à¦ªà¦•à§à¦· à¦šà¦¾à¦‡à¦›à§‡, à¦†à¦®à¦¿ à¦¯à§‡à¦¨ à¦¥à§‡à¦®à§‡ à¦¯à¦¾à¦‡', '<strong style=\"outline: 0px; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¹à¦šà§à¦›à§‡ à¦¨à¦¾à¥¤ à¦¸à¦¤à§à¦¯à¦¿à¦•à¦¾à¦°à§‡à¦° à¦¶à¦¿à¦²à§à¦ªà§€ à¦ªà¦¾à¦¬à§‡à¦¨ à¦•à§‹à¦¥à¦¾à§Ÿ? à¦¯à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¾ à¦šà¦²à¦›à§‡, à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦†à¦¸à¦²à§‡ à¦•à§€ à¦¨à¦¿à§Ÿà§‡ à¦²à§œà¦¾à¦‡ à¦•à¦°à¦¾ à¦‰à¦šà¦¿à¦¤?</strong><br style=\"outline: 0px; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\"><span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦° à¦¶à¦¿à¦²à§à¦ªà§€ à¦¸à¦®à¦¿à¦¤à¦¿ à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¨à§Ÿà¥¤ à¦à¦Ÿà¦¾ à¦¸à¦¬ à¦¶à¦¿à¦²à§à¦ªà§€à¦° à¦¸à¦™à§à¦—à§‡ à¦¬à¦¨à§à¦§à§à¦¤à§à¦¬ à¦¬à¦¾à§œà¦¾à¦¨à§‹à¦° à¦ªà§à¦²à§à¦¯à¦¾à¦Ÿà¦«à¦°à§à¦®à¥¤ à¦¶à¦¿à¦²à§à¦ªà§€à¦¦à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¯à§‡ à¦…à¦¸à¦¹à¦¿à¦·à§à¦£à§ à¦ªà¦°à¦¿à¦¬à§‡à¦¶ à¦¤à§ˆà¦°à¦¿ à¦¹à§Ÿà§‡à¦›à§‡, à¦¤à¦¾ à¦¦à§‚à¦° à¦•à¦°à¦¾à¦Ÿà¦¾à¦‡ à¦šà§à¦¯à¦¾à¦²à§‡à¦žà§à¦œà¥¤ à¦ªà¦°à¦¿à¦¬à§‡à¦¶ à¦¸à§à¦¨à§à¦¦à¦° à¦¹à¦²à§‡ à¦¬à¦¿à¦¨à¦¿à§Ÿà§‹à¦—à¦•à¦¾à¦°à§€à¦°à¦¾à¦“ à¦†à¦—à§à¦°à¦¹à§€ à¦¹à¦¬à§‡à¥¤</span>', '20191017103102.jpg', 'admin', 1, '2019-10-16 05:53:22', '2019-10-17 04:31:02'),
(13, 11, ' à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨ à¦–à§‡à¦²à¦²à§‡à¦¨ à¦œà§€à¦¬à¦¨à§‡à¦° à¦¸à§‡à¦°à¦¾ à¦®à§à¦¯à¦¾à¦š', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦†à¦ªà¦¨à¦¾à¦° à¦®à¦¾à¦¥à¦¾à§Ÿ à¦¬à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦œ à¦²à¦¾à¦—à¦¾à¦¨à§‹ à¦›à¦¬à¦¿à¦Ÿà¦¾ à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦®à¦¾à¦§à§à¦¯à¦® à¦«à§‡à¦¸à¦¬à§à¦•à§‡à¦° à¦¹à§‹à¦® à¦ªà§‡à¦œà§‡ à¦˜à§à¦°à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦ªà¦¿à¦•à¦šà¦¾à¦°à§‡à¦“ à¦†à¦ªà¦¨à¦¾à¦° .. à¦¶à§‡à¦· à¦•à¦°à¦¾à¦° à¦†à¦—à§‡à¦‡ à¦•à§œà¦¾ à¦¡à¦¿à¦«à§‡à¦¨à§à¦¡à¦¾à¦°à§‡à¦° à¦­à¦™à§à¦—à¦¿à¦¤à§‡ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¸à§‡à¦ªà¦¶à¦¨ à¦•à¦°à§‡ à¦•à¦¥à¦¾à¦Ÿà¦¿ à¦•à§‡à§œà§‡ à¦¨à¦¿à§Ÿà§‡ â€˜à¦†à¦®à¦¿ à¦«à§‡à¦¸à¦¬à§à¦• à¦–à§à¦¬ à¦¬à§‡à¦¶à¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¿ à¦¨à¦¾à¥¤ à¦•à§€ à¦¹à§Ÿ , à¦¨à¦¾ à¦¹à§Ÿ- à¦«à¦²à§‹ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦¨à¦¾à¥¤â€™</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦—à¦¤à¦•à¦¾à¦² à¦•à¦²à¦•à¦¾à¦¤à¦¾à¦° à¦¯à§à¦¬ à¦­à¦¾à¦°à¦¤à§€ à¦•à§à¦°à§€à§œà¦¾à¦™à§à¦—à¦¨à§‡ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦¬à¦¾à¦°à¦¬à¦¾à¦°à¦‡ à¦šà§‹à¦– à¦šà¦²à§‡ à¦¯à¦¾à¦šà§à¦›à¦¿à¦² à¦¸à¦¬à¦¾à¦°à¥¤ à¦¶à¦•à§à¦¤à¦¿à¦¶à¦¾à¦²à§€ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦†à¦•à§à¦°à¦®à¦£à¦—à§à¦²à§‹à¦•à§‡ à¦¬à¦¾à¦°à¦¬à¦¾à¦° à¦¬à§à¦¯à¦°à§à¦¥ à¦•à¦°à§‡ à¦¦à¦¿à¦šà§à¦›à¦¿à¦²à§‡à¦¨ à¦¬à¦²à§‡à¦‡ à¦¨à§Ÿ, à¦®à¦¾à¦¥à¦¾à§Ÿ à¦¸à¦¾à¦¦à¦¾ à¦¬à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦œ à¦¨à¦¿à§Ÿà§‡ à¦¯à¦¿à¦¨à¦¿ à¦¬à§€à¦°à¦¦à¦°à§à¦ªà§‡ à¦²à§œà§‡ à¦¯à¦¾à¦šà§à¦›à§‡à¦¨, à¦¤à¦¾à¦à¦° à¦¦à¦¿à¦•à§‡ à¦¸à¦¬à¦¾à¦° à¦šà§‹à¦– à¦à¦®à¦¨à¦¿à¦¤à§‡à¦‡ à¦šà¦²à§‡ à¦¯à¦¾à§Ÿà¥¤à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¶à§à¦°à§à¦¤à§‡à¦‡ à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦«à¦°à§‹à§Ÿà¦¾à¦°à§à¦¡à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¹à§‡à¦¡à§‡à¦° à¦Ÿà¦•à§à¦•à¦° à¦¨à¦¿à¦¤à§‡ à¦—à¦¿à§Ÿà§‡ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à§‡à¦° à¦•à¦ªà¦¾à¦² à¦«à§‡à¦Ÿà§‡ à¦à¦•à¦¾à¦•à¦¾à¦°à¥¤ à¦°à¦•à§à¦¤ à¦à¦°à¦² à¦¤à¦¬à§à¦“ à¦¦à¦®à¦²à§‡à¦¨ à¦¨à¦¾, à¦®à¦¾à¦¥à¦¾à§Ÿ à¦²à¦¾à¦—à¦¾à¦²à§‡à¦¨ à¦¬à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦œà¥¤ à¦¹à¦¾à¦¤à§‡ à¦¤à§à¦²à§‡ à¦¨à¦¿à¦²à§‡à¦¨ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦°à¦•à§à¦·à¦¾ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦° à¦¦à¦¾à§Ÿà¦¿à¦¤à§à¦¬à¥¤ à¦¶à§‡à¦· à¦®à§à¦¹à§‚à¦°à§à¦¤à§‡ à¦—à§‹à¦² à¦¹à¦œà¦® à¦•à¦°à§‡ à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¾ à¦œà¦¿à¦¤à¦¤à§‡ à¦¨à¦¾ à¦ªà¦¾à¦°à¦²à§‡à¦“ à§§-à§§ à¦—à§‹à¦²à§‡ à¦¡à§à¦°à§Ÿà§‡à¦° à¦ à¦®à§à¦¯à¦¾à¦šà§‡ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨ à¦•à¦¿à¦¨à§à¦¤à§ à¦ à¦¿à¦•à¦‡ à¦®à¦¨ à¦œà§Ÿ à¦•à¦°à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦¸à¦¬à¦¾à¦°à¥¤ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦¦à§à¦¯ à¦Ÿà§‡à¦²à¦¿à¦—à§à¦°à¦¾à¦« à¦ªà¦¤à§à¦°à¦¿à¦•à¦¾ à¦²à¦¿à¦–à§‡à¦›à§‡, â€˜à¦–à§‡à¦²à¦¾à¦° à¦ªà¦žà§à¦šà¦® à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦®à¦¾à¦¥à¦¾ à¦•à§‡à¦Ÿà§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦ªà¦° à¦—à§‹à¦Ÿà¦¾ à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¾à¦‡ à¦¬à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦œ à¦¨à¦¿à§Ÿà§‡ à¦–à§‡à¦²à¦²à§‡à¦¨ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦à¦Ÿà¦¿ à¦¤à¦¾à¦à¦° à¦–à§‡à¦²à¦¾à§Ÿ à¦•à§‹à¦¨à§‹ à¦›à¦¨à§à¦¦à¦ªà¦¤à¦¨ à¦˜à¦Ÿà¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¦¿à¥¤ à¦–à§à¦¬ à¦¸à¦®à§à¦­à¦¬ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦à¦‡ à¦¡à¦¿à¦«à§‡à¦¨à§à¦¡à¦¾à¦° à¦•à¦¾à¦² à¦¤à¦¾à¦à¦° à¦œà§€à¦¬à¦¨à§‡à¦° à¦¸à§‡à¦°à¦¾ à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¾à¦‡ à¦–à§‡à¦²à§‡à¦›à§‡à¦¨à¥¤ à¦—à§‹à¦Ÿà¦¾ à¦–à§‡à¦²à¦¾à§Ÿ à¦ à¦¿à¦• à¦¸à¦®à§Ÿà¦®à¦¤à§‹ à¦Ÿà§à¦¯à¦¾à¦•à¦²à¦—à§à¦²à§‹ à¦•à¦°à§‡ à¦—à§‡à¦²à§‡à¦¨, à¦¹à§‡à¦¡ à¦•à¦°à§‡ à¦¬à¦² à¦“à§œà¦¾à¦²à§‡à¦¨à¥¤ à¦¸à¦®à§à¦­à¦¬ à¦¸à¦¬à¦•à¦¿à¦›à§à¦‡ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿à¥¤ à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿà¦¾à¦°à§à¦§à§‡ à¦¶à¦°à§€à¦° à¦¦à¦¿à§Ÿà§‡ à¦ à§‡à¦•à¦¾à¦²à§‡à¦¨ à¦¸à¦¾à¦¹à¦¾à¦²à§‡à¦° à¦à¦•à¦Ÿà§ à¦¨à¦¿à¦šà§ à¦¶à¦Ÿà¥¤â€™</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦—à¦¤à¦•à¦¾à¦²à¦•à§‡à¦° à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¿ à¦›à¦¿à¦² à¦¨à¦¾à§Ÿà¦• à¦¹à§Ÿà§‡ à¦“à¦ à¦¾à¦° à¦®à§à¦¯à¦¾à¦šà¥¤ à¦•à¦¿à¦‚à¦¬à¦¾ à¦–à¦² à¦¨à¦¾à§Ÿà¦•à¥¤ à¦•à¦²à¦•à¦¾à¦¤à¦¾à¦° à¦¬à¦¿à¦–à§à¦¯à¦¾à¦¤ à¦¯à§à¦¬ à¦­à¦¾à¦°à¦¤à§€ à¦•à§à¦°à§€à§œà¦¾à¦™à§à¦—à¦¨à§‡ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨ à¦¹à§Ÿà§‡ à¦‰à¦ à¦²à§‡à¦¨ à¦…à¦¨à§à¦¯à¦¤à¦® à¦¨à¦¾à§Ÿà¦•à¥¤ à¦¨à¦¾à§Ÿà¦• à¦¯à§‡ à¦•à§‡à¦¬à¦² à¦—à§‹à¦² à¦•à¦°à§‡à¦‡ à¦¹à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾à¥¤ à¦•à¦–à¦¨à§‹ à¦•à¦–à¦¨à§‹ à¦ªà§à¦°à¦¤à¦¿à¦ªà¦•à§à¦·à§‡à¦° à¦†à¦•à§à¦°à¦®à¦£à¦—à§à¦²à§‹ à¦ à§‡à¦•à¦¿à§Ÿà§‡à¦“ à¦¹à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ, à¦¨à¦¾à§Ÿà¦• à¦¹à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¬à§à¦• à¦šà¦¿à¦¤à¦¿à§Ÿà§‡ à¦²à§œà§‡, à¦¬à§€à¦°à¦¤à§à¦¬ à¦¦à§‡à¦–à¦¿à§Ÿà§‡â€”à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨ à¦•à¦¾à¦² à¦¸à§‡à¦Ÿà¦¿à¦‡ à¦ªà§à¦°à¦®à¦¾à¦£ à¦•à¦°à¦²à§‡à¦¨à¥¤ à¦¬à¦¿à¦¶à§à¦¬à¦•à¦¾à¦ª à¦¬à¦¾à¦›à¦¾à¦‡à¦ªà¦°à§à¦¬à§‡à¦° à¦ à¦®à§à¦¯à¦¾à¦š à¦¦à¦¿à§Ÿà§‡ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨ à¦à¦–à¦¨ à¦°à§€à¦¤à¦¿à¦®à¦¤à§‹ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦«à§à¦Ÿà¦¬à¦²à§‡à¦° à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨à¥¤<br style=\"outline: 0px; padding: 0px; margin: 0px;\"><br style=\"outline: 0px; padding: 0px; margin: 0px;\">à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à§‡à¦° à¦–à§‡à¦²à¦¾à§Ÿ à¦¯à¦¦à¦¿ à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯ à¦–à§à¦à¦œà¦¤à§‡ à¦¯à¦¾à¦¨, à¦¤à¦¾à¦¹à¦²à§‡ à¦¸à§‡à¦Ÿà¦¿ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾à¦‡ à¦¬à§‡à¦¶à¦¿à¥¤ à¦¤à¦¬à§‡ à¦–à§‡à¦²à¦¾ à¦¯à¦¦à¦¿ à¦¹à§Ÿ à¦¯à§à¦¦à§à¦§à§‡à¦° à¦®à§Ÿà¦¦à¦¾à¦¨ , à¦à¦¤à§‡ à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦¬à§œ à¦¬à§€à¦°à§‡à¦° à¦¨à¦¾à¦® à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à¥¤ à¦¡à¦¾à¦°à§à¦Ÿà¦¿ à¦“à§Ÿà¦¾à¦°à§à¦•à¦“ à¦¯à§‡ à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯ à¦›à§œà¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨ à¦¤à¦¾ à¦—à¦¤à¦•à¦¾à¦²à§‡à¦° à¦®à§à¦¯à¦¾à¦šà¦‡ à¦¤à§‹ à¦ªà§à¦°à¦®à¦¾à¦£à¥¤ à¦¸à§‡à¦‡ à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯à§‡à¦° à¦†à¦° à¦¸à¦¾à¦«à¦²à§à¦¯à§‡à¦° à¦à¦• à¦†à¦¶à§à¦šà¦°à§à¦¯ à¦¯à§à¦—à¦²à¦¬à¦¨à§à¦¦à§€ à§¨à§¬ à¦¬à¦›à¦°à§‡à¦° à¦à¦‡ à¦¸à§‡à¦¨à§à¦Ÿà¦¾à¦°à¦¬à§à¦¯à¦¾à¦•à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦¸à§‡à¦¨à§à¦Ÿà¦¾à¦°à¦¬à§à¦¯à¦¾à¦• à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à§‡à¦° à¦®à§‚à¦² à¦•à§à¦¯à¦¾à¦°à¦¿à¦¶à¦®à¦¾à¦Ÿà¦¾ à¦•à§‹à¦¥à¦¾à§Ÿ ? à¦…à¦¨à§‡à¦• à¦‰à¦à¦šà§à¦¤à§‡ à¦“à¦ à§‡ à¦¹à§‡à¦¡ à¦•à¦°à¦¤à§‡ à¦œà§à§œà¦¿ à¦¨à§‡à¦‡ à¦¤à¦¾à¦à¦°à¥¤ à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦«à¦°à§‹à§Ÿà¦¾à¦°à§à¦¡ à¦¸à§à¦¨à§€à¦², à¦®à¦¾à¦¨à¦­à¦¿à¦°à¦¦à§‡à¦° à¦ªà¦¾ à¦¥à§‡à¦•à§‡ à¦•à¦¤à¦¬à¦¾à¦° à¦¬à¦² à¦•à§‡à§œà§‡ à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨, à¦¸à§‡à¦—à§à¦²à§‹ à¦šà§‹à¦– à¦à§œà¦¾à§Ÿ à¦•à§€à¦­à¦¾à¦¬à§‡! à¦¦à§à¦‡ à¦ªà¦¾à§Ÿà§‡ à¦¸à¦¬ à¦¨à¦¿à¦–à§à¦à¦¤ à¦Ÿà§à¦¯à¦¾à¦•à¦², à¦¸à¦™à§à¦—à§‡ à¦¦à§à¦°à§à¦¦à¦¾à¦¨à§à¦¤ à¦•à¦­à¦¾à¦°à¦¿à¦‚à¥¤ à¦†à¦° à¦¦à§à¦‡ à¦ªà§à¦°à¦¾à¦¨à§à¦¤ à¦¥à§‡à¦•à§‡ à¦­à§Ÿ à¦§à¦°à¦¾à¦¨à§‹ à¦¸à¦¬ à¦•à§à¦°à¦¸ à¦¯à¦–à¦¨ à¦­à§‡à¦¸à§‡ à¦à¦¸à§‡à¦›à§‡ à¦¬à¦•à§à¦¸à§‡, à¦¤à¦–à¦¨ à¦šà§‹à¦–à§‡ à¦ªà§œà§‡à¦›à§‡ à¦¤à¦¾à¦à¦° à¦¦à§‚à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤à¦¾à¥¤ à¦¸à¦™à§à¦—à§‡ à¦²à¦¡à¦¼à¦¾à¦•à§ à¦®à¦¨à§‹à¦­à¦¾à¦¬ à¦à¦¬à¦‚ à¦ªà§à¦°à¦šà¦£à§à¦¡ à¦¸à¦¾à¦¹à¦¸ à¦¤à§‹ à¦›à¦¿à¦²à¦‡à¥¤ à¦¡à¦¿à¦«à§‡à¦¨à§à¦¡à¦¾à¦°à¦¦à§‡à¦° à¦–à§‡à¦²à¦¾à¦° à¦®à¦§à§à¦¯à§‡à¦“ à¦¯à§‡ à¦à¦•à¦Ÿà§ à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯ à¦¥à¦¾à¦•à§‡ à¦¤à¦¾ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¾ à¦Ÿà§à¦¯à¦¾à¦•à¦² à¦“ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¸à§‡à¦ªà¦¶à¦¨à§‡ à¦«à§à¦Ÿà§‡ à¦‰à¦ à§‡à¦›à§‡à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦•à§‹à¦š à¦œà§‡à¦®à¦¿ à¦¡à§‡ à¦•à¦–à¦¨à§‹ à¦•à§‹à¦¨à§‹ à¦¶à¦¿à¦·à§à¦¯à§‡à¦° à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦ªà¦¾à¦°à¦«à¦°à¦®à§‡à¦¨à§à¦¸ à¦¨à¦¿à§Ÿà§‡ à¦•à¦¥à¦¾ à¦¬à¦²à§‡à¦¨ à¦¨à¦¾à¥¤ à¦Ÿà¦¿à¦® à¦¹à§‹à¦Ÿà§‡à¦²à§‡ à¦¬à¦¸à§‡ à¦†à¦œà¦“ à¦¬à¦²à¦²à§‡à¦¨ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à¦•à§‡ à¦¨à¦¿à§Ÿà§‡à¥¤ à¦—à¦¤à¦•à¦¾à¦²à§‡à¦° à¦…à¦®à¦¨ à¦ªà¦¾à¦°à¦«à¦°à¦®à§‡à¦¨à§à¦¸à§‡à¦° à¦ªà¦° à¦à¦‡ à¦‡à¦‚à¦²à¦¿à¦¶ à¦•à§‹à¦š à¦†à¦° à¦šà§à¦ª à¦¥à¦¾à¦•à§‡à¦¨ à¦•à§€ à¦•à¦°à§‡! à¦¶à¦¿à¦·à§à¦¯à¦•à§‡ à¦­à¦¾à¦¸à¦¿à§Ÿà§‡ à¦¦à¦¿à¦²à§‡à¦¨ à¦ªà§à¦°à¦¶à¦‚à¦¸à¦¾à§Ÿ , â€˜à¦¨à¦¿à¦ƒà¦¸à¦¨à§à¦¦à§‡à¦¹à§‡ à¦—à¦¤à¦•à¦¾à¦²à§‡à¦° à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¸à§‡à¦°à¦¾ à¦–à§‡à¦²à§‹à§Ÿà¦¾à§œ à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à¥¤ à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦«à¦°à§‹à§Ÿà¦¾à¦°à§à¦¡à¦°à¦¾ à¦“à¦•à§‡ à¦•à¦–à¦¨à§‹à¦‡ à¦¦à§à¦°à§à¦¬à¦² à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¦¨à¦¿à¥¤ à¦†à¦®à¦¾à¦° à¦¦à§‡à¦–à¦¾ à¦¸à§‡à¦°à¦¾ à¦®à§à¦¯à¦¾à¦š à¦–à§‡à¦²à§‡à¦›à§‡ à¦¸à§‡à¥¤â€™</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦‡à§Ÿà¦¾à¦¸à¦¿à¦¨à¦°à¦¾ à¦à¦­à¦¾à¦¬à§‡ à¦¬à¦¾à¦°à¦¬à¦¾à¦° à¦œà§à¦¬à¦²à§‡ à¦‰à¦ à¦²à§‡à¦‡ à¦¤à§‹ à¦¬à¦¦à¦²à§‡ à¦¯à¦¾à§Ÿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦«à§à¦Ÿà¦¬à¦²à¥¤</p>', '20191017110850.jpg', 'admin', 1, '2019-10-17 05:08:50', '2019-10-17 05:34:38'),
(14, 11, 'à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦à¦–à¦¨ à¦¢à¦¾à¦•à¦¾à§Ÿ', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦œà¦¿à§Ÿà¦¾à¦¨à§à¦¨à¦¿ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹ à¦à¦–à¦¨ à¦¢à¦¾à¦•à¦¾à§Ÿà¥¤ à¦¬à§ƒà¦¹à¦¸à§à¦ªà¦¤à¦¿à¦¬à¦¾à¦° à¦­à§‹à¦°à§‡ à¦¶à¦¾à¦¹à¦œà¦¾à¦²à¦¾à¦² à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦¬à¦¿à¦®à¦¾à¦¨à¦¬à¦¨à§à¦¦à¦°à§‡ à¦…à¦¬à¦¤à¦°à¦£ à¦•à¦°à§‡ à¦¤à¦¾à¦à¦•à§‡ à¦¬à¦¹à¦¨à¦•à¦¾à¦°à§€ à¦¬à¦¿à¦®à¦¾à¦¨à¥¤ à¦®à¦¾à¦¤à§à¦° à§§à§« à¦˜à¦£à§à¦Ÿà¦¾à¦° à¦à¦Ÿà¦¿à¦•à¦¾ à¦¸à¦«à¦°à§‡ à¦¢à¦¾à¦•à¦¾à§Ÿ à¦à¦¸à§‡à¦›à§‡à¦¨ à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¥¤ à¦¬à¦¿à¦®à¦¾à¦¨à¦¬à¦¨à§à¦¦à¦°à§‡ à¦¸à¦¬à¦¾à¦‡à¦•à§‡ à¦¶à§à¦­ à¦¸à¦•à¦¾à¦² à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ à¦ªà§à¦°à¦¥à¦®à¦¬à¦¾à¦°à§‡à¦° à¦®à¦¤à§‹ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦†à¦¸à¦¤à§‡ à¦ªà§‡à¦°à§‡ à¦†à¦¨à¦¨à§à¦¦ à¦ªà§à¦°à¦•à¦¾à¦¶ à¦•à¦°à§‡à¦¨ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦šà¦¾à¦° à¦¸à¦™à§à¦—à§€ à¦¨à¦¿à§Ÿà§‡ à¦•à¦¿à¦›à§ à¦•à¦°à§à¦®à¦¸à§‚à¦šà¦¿à¦¤à§‡ à¦¯à§‹à¦— à¦¦à§‡à¦¬à§‡à¦¨ à¦«à§à¦Ÿà¦¬à¦²à§‡à¦° à¦¨à¦¿à§Ÿà¦¨à§à¦¤à§à¦°à¦• à¦¸à¦‚à¦¸à§à¦¥à¦¾à¦° à¦ à¦ªà§à¦°à¦§à¦¾à¦¨à¥¤ à¦¸à¦•à¦¾à¦² à¦¸à¦¾à§œà§‡ à§§à§¦à¦Ÿà¦¾à§Ÿ à¦ªà§à¦°à¦§à¦¾à¦¨à¦®à¦¨à§à¦¤à§à¦°à§€ à¦¶à§‡à¦– à¦¹à¦¾à¦¸à¦¿à¦¨à¦¾à¦° à¦¸à¦™à§à¦—à§‡ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹à¦° à¦¸à§Œà¦œà¦¨à§à¦¯ à¦¸à¦¾à¦•à§à¦·à¦¾à¦¤à§‡à¦° à¦•à¦¥à¦¾ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦¸à§‡à¦–à¦¾à¦¨ à¦¥à§‡à¦•à§‡ à¦¤à¦¿à¦¨à¦¿ à¦¦à§à¦ªà§à¦° à¦¸à§‹à§Ÿà¦¾ à§§à§¨à¦Ÿà¦¾à§Ÿ à¦†à¦¸à¦¬à§‡à¦¨ à¦®à¦¤à¦¿à¦à¦¿à¦²à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦«à§à¦Ÿà¦¬à¦² à¦«à§‡à¦¡à¦¾à¦°à§‡à¦¶à¦¨ à¦­à¦¬à¦¨à§‡à¥¤ à¦ à¦‰à¦ªà¦²à¦•à§à¦·à§‡ à¦¬à¦¾à¦«à§à¦«à§‡ à¦­à¦¬à¦¨ à¦¸à§‡à¦œà§‡ à¦‰à¦ à§‡à¦›à§‡ à¦¨à¦¤à§à¦¨ à¦¸à¦¾à¦œà§‡à¥¤ à¦­à¦¬à¦¨ à¦šà¦¤à§à¦¬à¦°à§‡ à¦²à¦¨à§‡à¦° à¦˜à¦¾à¦¸ à¦•à§‡à¦Ÿà§‡ à¦¸à§à¦¨à§à¦¦à¦° à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¦•à§‡ à¦¶à§à¦­à§‡à¦šà§à¦›à¦¾ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ à¦¤à¦¾à¦à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à§ƒà¦¤à¦¿ à¦²à¦¾à¦—à¦¾à¦¨à§‹ à¦¹à§Ÿà§‡à¦›à§‡ à¦­à¦¬à¦¨à§‡à¥¤ à¦¬à¦¿à¦¶à§à¦¬ à¦«à§à¦Ÿà¦¬à¦²à§‡à¦° à¦à¦‡ à¦¶à§€à¦°à§à¦· à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾à¦•à§‡ à¦‰à¦·à§à¦£ à¦…à¦­à¦¿à¦¨à¦¨à§à¦¦à¦¨ à¦œà¦¾à¦¨à¦¾à¦¤à§‡ à¦šà§‡à¦·à§à¦Ÿà¦¾à¦° à¦•à§‹à¦¨à§‹ à¦•à¦®à¦¤à¦¿ à¦°à¦¾à¦–à¦›à§‡ à¦¨à¦¾ à¦¬à¦¾à¦«à§à¦«à§‡à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¦•à§‡ à¦¦à§‡à¦¶à§€à§Ÿ à¦œà¦¾à¦®à¦¦à¦¾à¦¨à¦¿ à¦¶à¦¾à¦¡à¦¼à¦¿ à¦‰à¦ªà¦¹à¦¾à¦° à¦¦à§‡à¦¬à§‡ à¦¬à¦¾à¦«à§à¦«à§‡à¥¤ à¦†à¦° à¦ªà§à¦°à¦§à¦¾à¦¨à¦®à¦¨à§à¦¤à§à¦°à§€à¦° à¦¹à¦¾à¦¤ à¦¦à¦¿à¦¯à¦¼à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¦à¦²à§‡à¦° à¦à¦•à¦Ÿà¦¿ à¦œà¦¾à¦°à§à¦¸à¦¿ (à§§à§¦ à¦¨à¦®à§à¦¬à¦°) à¦‰à¦ªà¦¹à¦¾à¦° à¦¦à§‡à¦“à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡ à¦¤à¦¾à¦à¦•à§‡, à¦¯à§‡à¦Ÿà¦¿à¦° à¦ªà§‡à¦›à¦¨à§‡ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‡à¦¾à¦° à¦¨à¦¾à¦® à¦¥à¦¾à¦•à¦¬à§‡à¥¤ à¦¤à¦¾à¦à¦° à¦¸à¦«à¦°à¦¸à¦™à§à¦—à§€à¦¦à§‡à¦° à¦¦à§‡à¦“à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡ à¦¦à§‡à¦¶à§‡ à¦¤à§ˆà¦°à¦¿ à¦Ÿà§‡à¦¬à¦¿à¦² à¦®à§à¦¯à¦¾à¦Ÿà¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦®à¦¤à¦¬à¦¿à¦¨à¦¿à¦®à§Ÿ à¦•à¦°à¦¬à§‡à¦¨ à¦¬à¦¾à¦«à§à¦«à§‡à¦° à¦•à¦¾à¦°à§à¦¯à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¹à§€ à¦ªà¦°à¦¿à¦·à¦¦à§‡à¦° à¦¸à¦™à§à¦—à§‡à¥¤ à¦œà¦¾à¦¨à¦¤à§‡ à¦šà¦¾à¦‡à¦¬à§‡à¦¨ à¦¬à¦¾à¦«à§à¦«à§‡à¦° à¦†à¦—à¦¾à¦®à§€ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾à¥¤ à¦¬à¦¾à¦«à§à¦«à§‡ à¦†à¦— à¦¬à¦¾à§œà¦¿à§Ÿà§‡ à¦•à¦¿à¦›à§ à¦šà¦¾à¦‡à¦›à§‡ à¦¨à¦¾ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹à¦° à¦•à¦¾à¦›à§‡à¥¤ à¦¤à¦¬à§‡ à¦¤à¦¿à¦¨à¦¿ à¦¨à¦¿à¦œà§‡ à¦•à¦¿à¦›à§ à¦œà¦¾à¦¨à¦¤à§‡ à¦šà¦¾à¦‡à¦²à§‡ à¦­à¦¿à¦¨à§à¦¨ à¦•à¦¥à¦¾à¥¤ à¦¬à¦¾à¦«à§à¦«à§‡ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦•à¦¾à¦œà§€ à¦¸à¦¾à¦²à¦¾à¦‰à¦¦à§à¦¦à¦¿à¦¨ à¦¬à¦²à§‡à¦›à§‡à¦¨, â€˜à¦¤à¦¿à¦¨à¦¿ à¦¶à§à¦­à§‡à¦šà§à¦›à¦¾ à¦¸à¦«à¦°à§‡ à¦†à¦¸à¦¬à§‡à¦¨à¥¤ à¦•à¦¾à¦œà§‡à¦‡ à¦à¦–à¦¾à¦¨à§‡ à¦šà¦¾à¦“à§Ÿà¦¾à¦° à¦•à¦¿à¦›à§ à¦¨à§‡à¦‡à¥¤ à¦¤à¦¬à§‡ à¦¤à¦¿à¦¨à¦¿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦«à§à¦Ÿà¦¬à¦² à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡à¦“ à¦§à¦¾à¦°à¦£à¦¾ à¦°à¦¾à¦–à§‡à¦¨à¥¤ à¦•à¦¾à¦œà§‡à¦‡ à¦¤à¦¿à¦¨à¦¿ à¦¨à¦¿à¦œà§‡ à¦•à¦¿à¦›à§ à¦¦à¦¿à¦¤à§‡ à¦šà¦¾à¦‡à¦²à§‡ à¦†à¦®à¦°à¦¾ à¦†à¦²à§‹à¦šà¦¨à¦¾ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à¦¿à¥¤ à¦à¦¸à¦¬ à¦¨à¦¿à§Ÿà§‡ à¦†à¦®à¦°à¦¾ à¦…à¦¬à¦¶à§à¦¯ à¦­à¦¾à¦¬à¦›à¦¿ à¦¨à¦¾à¥¤â€™</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦¬à¦¾à¦«à§à¦«à§‡à¦° à¦¦à§‡à¦“à§Ÿà¦¾ à¦¸à§‚à¦šà¦¿ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€, à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦«à§à¦Ÿà¦¬à¦² à¦­à¦¬à¦¨à§‡ à¦¥à¦¾à¦•à¦¬à§‡à¦¨ à¦ªà§à¦°à¦¾à§Ÿ à§ªà§« à¦®à¦¿à¦¨à¦¿à¦Ÿà¥¤ à¦¦à§à¦ªà§à¦° à§§à§¨à¦Ÿà¦¾ à§«à§¦ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦¹à§‹à¦Ÿà§‡à¦²à§‡à¦° à¦‰à¦¦à§à¦¦à§‡à¦¶à§‡ à¦°à¦“à¦¨à¦¾ à¦¦à§‡à¦¬à§‡à¦¨à¥¤ à¦¸à§‹à¦¨à¦¾à¦°à¦—à¦¾à¦à¦“ à¦¹à§‹à¦Ÿà§‡à¦²à§‡ à¦¸à¦‚à¦¬à¦¾à¦¦ à¦¸à¦®à§à¦®à§‡à¦²à¦¨à§‡ à¦…à¦‚à¦¶ à¦¨à§‡à¦¬à§‡à¦¨ à¦¬à§‡à¦²à¦¾ à§¨à¦Ÿà¦¾ à§¨à§¦ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡à¥¤ à§©à¦Ÿà¦¾à§Ÿ à¦¹à§‹à¦Ÿà§‡à¦² à¦¥à§‡à¦•à§‡ à¦¬à¦¿à¦®à¦¾à¦¨à¦¬à¦¨à§à¦¦à¦°à§‡à¦° à¦‰à¦¦à§à¦¦à§‡à¦¶à§‡ à¦°à¦“à¦¨à¦¾ à¦¦à§‡à¦¬à§‡à¦¨à¥¤ à¦¬à¦¿à¦•à§‡à¦² à¦ªà¦¾à¦à¦šà¦Ÿà¦¾à§Ÿ à¦²à¦¾à¦“à¦¸à§‡à¦° à¦‰à¦¦à§à¦¦à§‡à¦¶à§‡ à¦¯à¦¾à¦¤à§à¦°à¦¾ à¦•à¦°à¦¬à§‡à¦¨à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦•à§‹à¦¨à§‹ à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¦° à¦à¦Ÿà¦¿ à¦šà¦¤à§à¦°à§à¦¥ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¸à¦«à¦°à¥¤ à§§à§¯à§®à§¦ à¦¸à¦¾à¦²à§‡ à¦ªà§à¦°à¦¥à¦®à¦¬à¦¾à¦° à¦à¦¸à§‡à¦›à¦¿à¦²à§‡à¦¨ à¦œà§‹à§Ÿà¦¾à¦“ à¦¹à§à¦¯à¦¾à¦­à§‡à¦²à¦¾à¦žà§à¦œà¥¤ à§¨à§¦à§¦à§¬ à¦“ à§¨à§¦à§§à§¨ à¦¸à¦¾à¦²à§‡ à¦¦à§à¦¬à¦¾à¦° à¦†à¦¸à§‡à¦¨ à¦¸à§‡à¦ª à¦¬à§à¦²à§à¦¯à¦¾à¦Ÿà¦¾à¦°à¥¤ à§¨à§¦à§§à§¬ à¦¸à¦¾à¦²à§‡à¦° à§¨à§¬ à¦«à§‡à¦¬à§à¦°à§à§Ÿà¦¾à¦°à¦¿ à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦¹à¦¨ à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹, à¦ à¦¬à¦›à¦°à§‡à¦° à§« à¦œà§à¦¨ à¦ªà§à¦¨à¦°à§à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤ à¦¹à¦¨à¥¤ à¦«à¦¿à¦«à¦¾ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦¹à¦“à§Ÿà¦¾à¦° à§ªà§ª à¦®à¦¾à¦¸ à¦ªà¦° à¦à¦‡ à¦ªà§à¦°à¦¥à¦® à¦‡à¦¨à¦«à¦¾à¦¨à§à¦¤à¦¿à¦¨à§‹ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦à¦¸à§‡à¦›à§‡à¦¨à¥¤ à¦à¦¶à¦¿à§Ÿà¦¾ à¦¸à¦«à¦°à§‡à¦° à¦…à¦‚à¦¶ à¦¹à¦¿à¦¸à§‡à¦¬à§‡à¦‡ à¦¤à¦¾à¦à¦° à¦¢à¦¾à¦•à¦¾à§Ÿ à¦†à¦¸à¦¾à¥¤ à¦à¦¸à§‡à¦›à§‡à¦¨ à¦®à¦™à§à¦—à§‹à¦²à¦¿à§Ÿà¦¾ à¦¥à§‡à¦•à§‡à¥¤ à¦¸à¦™à§à¦—à§€ à¦°à§Ÿà§‡à¦›à§‡à¦¨ à¦«à¦¿à¦«à¦¾à¦° à¦¡à§‡à¦ªà§à¦Ÿà¦¿ à¦¸à§‡à¦•à§à¦°à§‡à¦Ÿà¦¾à¦°à¦¿ à¦œà§‡à¦¨à¦¾à¦°à§‡à¦² (à¦«à§à¦Ÿà¦¬à¦²) à¦®à§à¦¯à¦¾à¦Ÿà¦¿à§Ÿà¦¾à¦¸ à¦—à§à¦°à¦¾à¦«à¦¸à¦¸à§à¦Ÿà§à¦°à¦®, à¦šà¦¿à¦« à¦…à¦¬ à¦•à¦®à¦¿à¦‰à¦¨à¦¿à¦•à§‡à¦¶à¦¨à¦¸ à¦…à¦¨à§‹à¦«à§à¦°à¦¿ à¦•à¦¸à§à¦¤à¦¾, à¦¡à¦¿à¦°à§‡à¦•à§à¦Ÿà¦° à¦…à¦¬ à¦®à§‡à¦®à§à¦¬à¦¾à¦° à¦…à§à¦¯à¦¾à¦¸à§‹à¦¸à¦¿à§Ÿà§‡à¦¶à¦¨ à¦à¦¶à¦¿à§Ÿà¦¾ à¦…à§à¦¯à¦¾à¦¨à§à¦¡ à¦“à¦¶à§‡à¦¨à¦¿à§Ÿà¦¾ à¦à¦¬à¦‚ à¦ªà§à¦°à§‡à¦¸à¦¿à¦¡à§‡à¦¨à§à¦Ÿà¦¸ à¦…à¦«à¦¿à¦¸ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦¾à¦° à¦«à§‡à¦¦à§‡à¦°à¦¿à¦•à§‹ à¦°à¦¿à¦­à¦¿à¦—à¦²à¦¿à¦“à¦¨à¥¤</p>', '20191017113319.jpg', 'admin', 0, '2019-10-17 05:33:19', '2019-10-17 05:39:03'),
(15, 16, 'What is Lorem Ipsum?', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '', 'admin', 1, '2019-10-25 16:45:59', '2019-10-26 05:08:10'),
(16, 14, 'à¦†à¦° à¦¦à§à¦‡ à¦“à¦­à¦¾à¦° à¦¥à¦¾à¦•à¦²à§‡à¦‡ à¦¹à§Ÿà§‡ à¦¯à§‡à¦¤, à¦¨à¦¾à¦ˆà¦®à¦•à§‡ à¦¹à¦°à¦­à¦œà¦¨', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦ à¦†à¦«à¦¸à§‹à¦¸ à¦•à¦¿ à¦à¦¤ à¦¸à¦¹à¦œà§‡ à¦¯à¦¾à§Ÿ? à¦•à§€ à¦¦à§à¦°à§à¦¦à¦¾à¦¨à§à¦¤ à¦‡à¦¨à¦¿à¦‚à¦¸ à¦–à§‡à¦²à¦²à§‡à¦¨à¥¤ à¦…à¦¥à¦š à¦®à¦¾à¦  à¦›à¦¾à§œà¦¤à§‡ à¦¹à¦²à§‹ à¦ªà¦°à¦¾à¦œà§Ÿà§‡à¦° à¦¹à¦¤à¦¾à¦¶à¦¾ à¦¨à¦¿à§Ÿà§‡à¥¤ à¦¨à¦¾à¦—à¦ªà§à¦°à§‡ à¦•à¦¾à¦² à¦°à¦¾à¦¤à§‡ à§®à§§ à¦°à¦¾à¦¨à§‡à¦° à¦®à§à¦—à§à¦§ à¦•à¦°à¦¾ à¦à¦• à¦‡à¦¨à¦¿à¦‚à¦¸ à¦–à§‡à¦²à§‡ à¦¦à¦²à¦•à§‡ à¦œà§‡à¦¤à¦¾à¦¤à§‡ à¦¨à¦¾ à¦ªà¦¾à¦°à¦²à§‡à¦“ à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¨à¦¾à¦ˆà¦® à¦­à¦¿à¦œà¦›à§‡à¦¨ à¦ªà§à¦°à¦¶à¦‚à¦¸à¦¾à¦° à¦¬à§ƒà¦·à§à¦Ÿà¦¿à¦¤à§‡à¥¤ à¦¸à¦¾à¦¬à§‡à¦• à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦¸à§à¦ªà¦¿à¦¨à¦¾à¦° à¦¹à¦°à¦­à¦œà¦¨ à¦¸à¦¿à¦‚ à¦¤à§‹ à¦¤à¦¾à¦à¦° à¦ªà¦¿à¦  à¦šà¦¾à¦ªà§œà§‡à¦‡ à¦¦à¦¿à§Ÿà§‡à¦›à§‡à¦¨à¥¤</p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">à¦à¦¸à¦¬ à¦ªà§à¦°à¦¶à¦‚à¦¸à¦¾ à¦¤à¦¾à¦à¦° à¦•à¦¾à¦›à§‡ à¦à¦–à¦¨ à¦¸à¦¾à¦¨à§à¦¤à§à¦¬à¦¨à¦¾à¦° à¦ªà§à¦°à¦²à§‡à¦ª à¦®à¦¾à¦¤à§à¦°à¥¤ à¦¨à¦¾à¦ˆà¦®à§‡à¦° à¦•à¦¿à¦›à§à¦¤à§‡à¦‡ à¦¯à§‡ à¦†à¦«à¦¸à§‹à¦¸ à¦¯à¦¾à¦šà§à¦›à§‡ à¦¨à¦¾à¥¤ à¦†à¦œ à¦¨à¦¾à¦—à¦ªà§à¦° à¦¥à§‡à¦•à§‡ à¦¦à§‡à¦¶à§‡ à¦«à§‡à¦°à¦¾à¦° à¦¬à¦¿à¦®à¦¾à¦¨ à¦§à¦°à¦¾à¦° à¦†à¦—à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¦à¦²à§‡à¦° à¦¤à¦°à§à¦£ à¦“à¦ªà§‡à¦¨à¦¾à¦° à¦¸à¦¾à¦‚à¦¬à¦¾à¦¦à¦¿à¦•à¦¦à§‡à¦° à¦¬à¦²à¦²à§‡à¦¨, â€˜à¦†à¦•à§à¦·à§‡à¦ªà¦Ÿà¦¾ à¦…à¦¨à§‡à¦• à¦¬à§‡à¦¶à¦¿à¥¤ à¦®à§à¦¯à¦¾à¦šà¦Ÿà¦¾ à¦œà¦¿à¦¤à¦¤à§‡ à¦ªà¦¾à¦°à¦²à§‡, à¦¸à¦¿à¦°à¦¿à¦œ à¦œà¦¿à¦¤à¦¤à§‡ à¦ªà¦¾à¦°à¦²à§‡ à¦…à¦¨à§‡à¦• à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à¦¤à¥¤ à¦œà¦¿à¦¤à¦¤à§‡ à¦ªà¦¾à¦°à¦¿à¦¨à¦¿, à¦–à¦¾à¦°à¦¾à¦ª à¦²à¦¾à¦—à¦›à§‡à¥¤â€™</p>', '20191111092103.jpg', 'admin', 1, '2019-11-11 15:21:03', '2019-11-11 15:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(2) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Cricket Ball', 1, '2019-10-13 07:17:49', '2019-10-15 13:10:38'),
(11, 'Football', 1, '2019-10-13 08:12:25', '2019-10-17 05:54:11'),
(12, 'News', 1, '2019-10-13 08:15:16', '2019-10-25 16:45:01'),
(13, 'Entertainment', 1, '2019-10-15 12:36:03', '2019-10-17 05:55:57'),
(14, 'Sports', 1, '2019-10-15 16:44:36', '2019-10-15 19:26:11'),
(15, 'International', 1, '2019-10-24 06:13:16', '2019-10-24 06:13:16'),
(16, 'English', 1, '2019-10-25 16:44:55', '2019-10-25 16:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `blog_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `commented_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `blog_id`, `username`, `useremail`, `comment`, `commented_at`) VALUES
(1, 15, 'Yeamin', 'yeamin510@gmail.com', 'Nice post', '2019-10-26 20:11:36'),
(2, 13, 'Sakib Al Hasan', 'sakib@gmail.com', 'This is the most relevant post.', '2019-10-26 20:45:55'),
(3, 15, 'Mushfiq', 'mushi@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2019-10-27 05:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '', '2019-10-10 15:38:52', '2019-10-10 15:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;