-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2015 at 04:28 PM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mypockyi_pockymatcha`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(8, 1441788534, '139.0.26.20', 'gxBvC'),
(9, 1441788593, '139.0.26.20', 'TukXr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('bb4e28d11cd466c50fe5bff82b859c6b', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1442189616, ''),
('352df90e227d4dbcb3a2d923c42e4829', '66.249.64.83', 'DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html)', 1442203397, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_districts`
--

CREATE TABLE IF NOT EXISTS `tbl_districts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_urban_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=469 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1441192958, 0),
(2, 2, 1, 1, 1441192958, 0),
(3, 3, 1, 1, 1441192958, 0),
(4, 4, 1, 1, 1441192958, 0),
(5, 5, 1, 1, 1441192958, 0),
(6, 6, 1, 1, 1441192958, 0),
(7, 38, 1, 1, 1441192958, 0),
(8, 39, 1, 1, 1441192958, 0),
(9, 54, 1, 1, 1441192958, 0),
(10, 55, 1, 1, 1441192958, 0),
(11, 70, 1, 1, 1441192958, 0),
(12, 71, 1, 1, 1441192958, 0),
(13, 86, 1, 1, 1441192958, 0),
(14, 87, 1, 1, 1441192958, 0),
(15, 88, 1, 1, 1441192958, 0),
(16, 89, 1, 1, 1441192958, 0),
(17, 7, 1, 1, 1441192958, 0),
(18, 8, 1, 1, 1441192958, 0),
(19, 9, 1, 1, 1441192958, 0),
(20, 10, 1, 1, 1441192958, 0),
(21, 11, 1, 1, 1441192958, 0),
(22, 12, 1, 1, 1441192958, 0),
(23, 13, 1, 1, 1441192958, 0),
(24, 14, 1, 1, 1441192958, 0),
(25, 15, 1, 1, 1441192958, 0),
(26, 16, 1, 1, 1441192958, 0),
(27, 17, 1, 1, 1441192958, 0),
(28, 18, 1, 1, 1441192958, 0),
(29, 19, 1, 1, 1441192958, 0),
(30, 20, 1, 1, 1441192958, 0),
(31, 21, 1, 1, 1441192958, 0),
(32, 22, 1, 1, 1441192958, 0),
(33, 23, 1, 1, 1441192958, 0),
(34, 24, 1, 1, 1441192958, 0),
(35, 25, 1, 1, 1441192958, 0),
(36, 26, 1, 1, 1441192958, 0),
(37, 27, 1, 1, 1441192958, 0),
(38, 28, 1, 1, 1441192958, 0),
(39, 29, 1, 1, 1441192958, 0),
(40, 30, 1, 1, 1441192958, 0),
(41, 31, 1, 1, 1441192958, 0),
(42, 32, 1, 1, 1441192958, 0),
(43, 33, 1, 1, 1441192958, 0),
(44, 34, 1, 1, 1441192958, 0),
(45, 35, 1, 1, 1441192958, 0),
(46, 36, 1, 1, 1441192958, 0),
(47, 37, 1, 1, 1441192958, 0),
(48, 40, 1, 1, 1441192958, 0),
(49, 41, 1, 1, 1441192958, 0),
(50, 42, 1, 1, 1441192958, 0),
(51, 43, 1, 1, 1441192958, 0),
(52, 44, 1, 1, 1441192958, 0),
(53, 45, 1, 1, 1441192958, 0),
(54, 46, 1, 1, 1441192958, 0),
(55, 47, 1, 1, 1441192958, 0),
(56, 48, 1, 1, 1441192958, 0),
(57, 49, 1, 1, 1441192958, 0),
(58, 50, 1, 1, 1441192958, 0),
(59, 51, 1, 1, 1441192958, 0),
(60, 52, 1, 1, 1441192958, 0),
(61, 53, 1, 1, 1441192958, 0),
(62, 56, 1, 1, 1441192958, 0),
(63, 57, 1, 1, 1441192958, 0),
(64, 58, 1, 1, 1441192958, 0),
(65, 59, 1, 1, 1441192958, 0),
(66, 60, 1, 1, 1441192958, 0),
(67, 61, 1, 1, 1441192958, 0),
(68, 62, 1, 1, 1441192958, 0),
(69, 63, 1, 1, 1441192958, 0),
(70, 64, 1, 1, 1441192958, 0),
(71, 65, 1, 1, 1441192958, 0),
(72, 66, 1, 1, 1441192958, 0),
(73, 67, 1, 1, 1441192958, 0),
(74, 68, 1, 1, 1441192958, 0),
(75, 69, 1, 1, 1441192958, 0),
(76, 72, 1, 1, 1441192958, 0),
(77, 73, 1, 1, 1441192958, 0),
(78, 74, 1, 1, 1441192958, 0),
(79, 75, 1, 1, 1441192958, 0),
(80, 76, 1, 1, 1441192958, 0),
(81, 77, 1, 1, 1441192958, 0),
(82, 78, 1, 1, 1441192958, 0),
(83, 79, 1, 1, 1441192958, 0),
(84, 80, 1, 1, 1441192958, 0),
(85, 81, 1, 1, 1441192958, 0),
(86, 82, 1, 1, 1441192958, 0),
(87, 83, 1, 1, 1441192958, 0),
(88, 84, 1, 1, 1441192958, 0),
(89, 85, 1, 1, 1441192958, 0),
(90, 90, 1, 1, 1441192958, 0),
(91, 91, 1, 1, 1441192958, 0),
(92, 92, 1, 1, 1441192958, 0),
(93, 93, 1, 1, 1441192958, 0),
(94, 94, 1, 1, 1441192958, 0),
(95, 95, 1, 1, 1441192958, 0),
(96, 96, 1, 1, 1441192958, 0),
(97, 97, 1, 1, 1441192958, 0),
(98, 98, 1, 1, 1441192958, 0),
(99, 99, 1, 1, 1441192958, 0),
(100, 100, 1, 1, 1441192958, 0),
(101, 101, 1, 1, 1441192958, 0),
(102, 102, 1, 1, 1441192958, 0),
(103, 103, 1, 1, 1441192958, 0),
(104, 104, 1, 1, 1441192958, 0),
(105, 105, 1, 1, 1441192958, 0),
(106, 106, 1, 1, 1441192958, 0),
(107, 107, 1, 1, 1441192958, 0),
(108, 108, 1, 1, 1441192958, 0),
(109, 109, 1, 1, 1441192958, 0),
(110, 110, 1, 1, 1441192958, 0),
(111, 111, 1, 1, 1441192958, 0),
(112, 112, 1, 1, 1441192958, 0),
(113, 113, 1, 1, 1441192958, 0),
(114, 114, 1, 1, 1441192958, 0),
(115, 115, 1, 1, 1441192958, 0),
(116, 116, 1, 1, 1441192958, 0),
(117, 117, 1, 1, 1441192958, 0),
(118, 1, 2, 1, 1441192958, 0),
(119, 2, 2, 1, 1441192958, 0),
(120, 3, 2, 1, 1441192958, 0),
(121, 4, 2, 1, 1441192958, 0),
(122, 5, 2, 1, 1441192958, 0),
(123, 6, 2, 1, 1441192958, 0),
(124, 38, 2, 1, 1441192958, 0),
(125, 39, 2, 1, 1441192958, 0),
(126, 54, 2, 1, 1441192958, 0),
(127, 55, 2, 1, 1441192958, 0),
(128, 70, 2, 1, 1441192958, 0),
(129, 71, 2, 1, 1441192958, 0),
(130, 86, 2, 1, 1441192958, 0),
(131, 87, 2, 1, 1441192958, 0),
(132, 88, 2, 1, 1441192958, 0),
(133, 89, 2, 1, 1441192958, 0),
(134, 7, 2, 1, 1441192958, 0),
(135, 8, 2, 1, 1441192958, 0),
(136, 9, 2, 1, 1441192958, 0),
(137, 10, 2, 1, 1441192958, 0),
(138, 11, 2, 1, 1441192958, 0),
(139, 12, 2, 1, 1441192958, 0),
(140, 13, 2, 1, 1441192958, 0),
(141, 14, 2, 1, 1441192958, 0),
(142, 15, 2, 1, 1441192958, 0),
(143, 16, 2, 1, 1441192958, 0),
(144, 17, 2, 1, 1441192958, 0),
(145, 18, 2, 1, 1441192958, 0),
(146, 19, 2, 1, 1441192958, 0),
(147, 20, 2, 1, 1441192958, 0),
(148, 21, 2, 1, 1441192958, 0),
(149, 22, 2, 1, 1441192958, 0),
(150, 23, 2, 1, 1441192958, 0),
(151, 24, 2, 1, 1441192958, 0),
(152, 25, 2, 1, 1441192958, 0),
(153, 26, 2, 1, 1441192958, 0),
(154, 27, 2, 1, 1441192958, 0),
(155, 28, 2, 1, 1441192958, 0),
(156, 29, 2, 1, 1441192958, 0),
(157, 30, 2, 1, 1441192958, 0),
(158, 31, 2, 1, 1441192958, 0),
(159, 32, 2, 1, 1441192958, 0),
(160, 33, 2, 1, 1441192958, 0),
(161, 34, 2, 1, 1441192958, 0),
(162, 35, 2, 1, 1441192958, 0),
(163, 36, 2, 1, 1441192958, 0),
(164, 37, 2, 1, 1441192958, 0),
(165, 40, 2, 1, 1441192958, 0),
(166, 41, 2, 1, 1441192958, 0),
(167, 42, 2, 1, 1441192958, 0),
(168, 43, 2, 1, 1441192958, 0),
(169, 44, 2, 1, 1441192958, 0),
(170, 45, 2, 1, 1441192958, 0),
(171, 46, 2, 1, 1441192958, 0),
(172, 47, 2, 1, 1441192958, 0),
(173, 48, 2, 1, 1441192958, 0),
(174, 49, 2, 1, 1441192958, 0),
(175, 50, 2, 1, 1441192958, 0),
(176, 51, 2, 1, 1441192958, 0),
(177, 52, 2, 1, 1441192958, 0),
(178, 53, 2, 1, 1441192958, 0),
(179, 56, 2, 1, 1441192958, 0),
(180, 57, 2, 1, 1441192958, 0),
(181, 58, 2, 1, 1441192958, 0),
(182, 59, 2, 1, 1441192958, 0),
(183, 60, 2, 1, 1441192958, 0),
(184, 61, 2, 1, 1441192958, 0),
(185, 62, 2, 1, 1441192958, 0),
(186, 63, 2, 1, 1441192958, 0),
(187, 64, 2, 1, 1441192958, 0),
(188, 65, 2, 1, 1441192958, 0),
(189, 66, 2, 1, 1441192958, 0),
(190, 67, 2, 1, 1441192958, 0),
(191, 68, 2, 1, 1441192958, 0),
(192, 69, 2, 1, 1441192958, 0),
(193, 72, 2, 1, 1441192958, 0),
(194, 73, 2, 1, 1441192958, 0),
(195, 74, 2, 1, 1441192958, 0),
(196, 75, 2, 1, 1441192958, 0),
(197, 76, 2, 1, 1441192958, 0),
(198, 77, 2, 1, 1441192958, 0),
(199, 78, 2, 1, 1441192958, 0),
(200, 79, 2, 1, 1441192958, 0),
(201, 80, 2, 1, 1441192958, 0),
(202, 81, 2, 1, 1441192958, 0),
(203, 82, 2, 1, 1441192958, 0),
(204, 83, 2, 1, 1441192958, 0),
(205, 84, 2, 1, 1441192958, 0),
(206, 85, 2, 1, 1441192958, 0),
(207, 90, 2, 1, 1441192958, 0),
(208, 91, 2, 1, 1441192958, 0),
(209, 92, 2, 1, 1441192958, 0),
(210, 93, 2, 1, 1441192958, 0),
(211, 94, 2, 1, 1441192958, 0),
(212, 95, 2, 1, 1441192958, 0),
(213, 96, 2, 1, 1441192958, 0),
(214, 97, 2, 1, 1441192958, 0),
(215, 98, 2, 1, 1441192958, 0),
(216, 99, 2, 1, 1441192958, 0),
(217, 100, 2, 1, 1441192958, 0),
(218, 101, 2, 1, 1441192958, 0),
(219, 102, 2, 1, 1441192958, 0),
(220, 103, 2, 1, 1441192958, 0),
(221, 104, 2, 1, 1441192958, 0),
(222, 105, 2, 1, 1441192958, 0),
(223, 106, 2, 1, 1441192958, 0),
(224, 107, 2, 1, 1441192958, 0),
(225, 108, 2, 1, 1441192958, 0),
(226, 109, 2, 1, 1441192958, 0),
(227, 110, 2, 1, 1441192958, 0),
(228, 111, 2, 1, 1441192958, 0),
(229, 112, 2, 1, 1441192958, 0),
(230, 113, 2, 1, 1441192958, 0),
(231, 114, 2, 1, 1441192958, 0),
(232, 115, 2, 1, 1441192958, 0),
(233, 116, 2, 1, 1441192958, 0),
(234, 117, 2, 1, 1441192958, 0),
(235, 1, 99, 0, 1441192958, 0),
(236, 2, 99, 0, 1441192958, 0),
(237, 3, 99, 0, 1441192958, 0),
(238, 4, 99, 0, 1441192958, 0),
(239, 5, 99, 0, 1441192958, 0),
(240, 6, 99, 0, 1441192958, 0),
(241, 38, 99, 0, 1441192958, 0),
(242, 39, 99, 0, 1441192958, 0),
(243, 54, 99, 0, 1441192958, 0),
(244, 55, 99, 0, 1441192958, 0),
(245, 70, 99, 0, 1441192958, 0),
(246, 71, 99, 0, 1441192958, 0),
(247, 86, 99, 0, 1441192958, 0),
(248, 87, 99, 0, 1441192958, 0),
(249, 88, 99, 0, 1441192958, 0),
(250, 89, 99, 0, 1441192958, 0),
(251, 7, 99, 0, 1441192958, 0),
(252, 8, 99, 0, 1441192958, 0),
(253, 9, 99, 0, 1441192958, 0),
(254, 10, 99, 0, 1441192958, 0),
(255, 11, 99, 0, 1441192958, 0),
(256, 12, 99, 0, 1441192958, 0),
(257, 13, 99, 0, 1441192958, 0),
(258, 14, 99, 0, 1441192958, 0),
(259, 15, 99, 0, 1441192958, 0),
(260, 16, 99, 0, 1441192958, 0),
(261, 17, 99, 0, 1441192958, 0),
(262, 18, 99, 0, 1441192958, 0),
(263, 19, 99, 0, 1441192958, 0),
(264, 20, 99, 0, 1441192958, 0),
(265, 21, 99, 0, 1441192958, 0),
(266, 22, 99, 0, 1441192958, 0),
(267, 23, 99, 0, 1441192958, 0),
(268, 24, 99, 0, 1441192958, 0),
(269, 25, 99, 0, 1441192958, 0),
(270, 26, 99, 0, 1441192958, 0),
(271, 27, 99, 0, 1441192958, 0),
(272, 28, 99, 0, 1441192958, 0),
(273, 29, 99, 0, 1441192958, 0),
(274, 30, 99, 0, 1441192958, 0),
(275, 31, 99, 0, 1441192958, 0),
(276, 32, 99, 0, 1441192958, 0),
(277, 33, 99, 0, 1441192958, 0),
(278, 34, 99, 0, 1441192958, 0),
(279, 35, 99, 0, 1441192958, 0),
(280, 36, 99, 0, 1441192958, 0),
(281, 37, 99, 0, 1441192958, 0),
(282, 40, 99, 0, 1441192958, 0),
(283, 41, 99, 0, 1441192958, 0),
(284, 42, 99, 0, 1441192958, 0),
(285, 43, 99, 0, 1441192958, 0),
(286, 44, 99, 0, 1441192958, 0),
(287, 45, 99, 0, 1441192958, 0),
(288, 46, 99, 0, 1441192958, 0),
(289, 47, 99, 0, 1441192958, 0),
(290, 48, 99, 0, 1441192958, 0),
(291, 49, 99, 0, 1441192958, 0),
(292, 50, 99, 0, 1441192958, 0),
(293, 51, 99, 0, 1441192958, 0),
(294, 52, 99, 0, 1441192958, 0),
(295, 53, 99, 0, 1441192958, 0),
(296, 56, 99, 0, 1441192958, 0),
(297, 57, 99, 0, 1441192958, 0),
(298, 58, 99, 0, 1441192958, 0),
(299, 59, 99, 0, 1441192958, 0),
(300, 60, 99, 0, 1441192958, 0),
(301, 61, 99, 0, 1441192958, 0),
(302, 62, 99, 0, 1441192958, 0),
(303, 63, 99, 0, 1441192958, 0),
(304, 64, 99, 0, 1441192958, 0),
(305, 65, 99, 0, 1441192958, 0),
(306, 66, 99, 0, 1441192958, 0),
(307, 67, 99, 0, 1441192958, 0),
(308, 68, 99, 0, 1441192958, 0),
(309, 69, 99, 0, 1441192958, 0),
(310, 72, 99, 0, 1441192958, 0),
(311, 73, 99, 0, 1441192958, 0),
(312, 74, 99, 0, 1441192958, 0),
(313, 75, 99, 0, 1441192958, 0),
(314, 76, 99, 0, 1441192958, 0),
(315, 77, 99, 0, 1441192958, 0),
(316, 78, 99, 0, 1441192958, 0),
(317, 79, 99, 0, 1441192958, 0),
(318, 80, 99, 0, 1441192958, 0),
(319, 81, 99, 0, 1441192958, 0),
(320, 82, 99, 0, 1441192958, 0),
(321, 83, 99, 0, 1441192958, 0),
(322, 84, 99, 0, 1441192958, 0),
(323, 85, 99, 0, 1441192958, 0),
(324, 90, 99, 0, 1441192958, 0),
(325, 91, 99, 0, 1441192958, 0),
(326, 92, 99, 0, 1441192958, 0),
(327, 93, 99, 0, 1441192958, 0),
(328, 94, 99, 0, 1441192958, 0),
(329, 95, 99, 0, 1441192958, 0),
(330, 96, 99, 0, 1441192958, 0),
(331, 97, 99, 0, 1441192958, 0),
(332, 98, 99, 0, 1441192958, 0),
(333, 99, 99, 0, 1441192958, 0),
(334, 100, 99, 0, 1441192958, 0),
(335, 101, 99, 0, 1441192958, 0),
(336, 102, 99, 0, 1441192958, 0),
(337, 103, 99, 0, 1441192958, 0),
(338, 104, 99, 0, 1441192958, 0),
(339, 105, 99, 0, 1441192958, 0),
(340, 106, 99, 0, 1441192958, 0),
(341, 107, 99, 0, 1441192958, 0),
(342, 108, 99, 0, 1441192958, 0),
(343, 109, 99, 0, 1441192958, 0),
(344, 110, 99, 0, 1441192958, 0),
(345, 111, 99, 0, 1441192958, 0),
(346, 112, 99, 0, 1441192958, 0),
(347, 113, 99, 0, 1441192958, 0),
(348, 114, 99, 0, 1441192958, 0),
(349, 115, 99, 0, 1441192958, 0),
(350, 116, 99, 0, 1441192958, 0),
(351, 117, 99, 0, 1441192958, 0),
(352, 1, 100, 0, 1441192958, 0),
(353, 2, 100, 0, 1441192958, 0),
(354, 3, 100, 0, 1441192958, 0),
(355, 4, 100, 0, 1441192958, 0),
(356, 5, 100, 0, 1441192958, 0),
(357, 6, 100, 0, 1441192958, 0),
(358, 38, 100, 0, 1441192958, 0),
(359, 39, 100, 0, 1441192958, 0),
(360, 54, 100, 0, 1441192958, 0),
(361, 55, 100, 0, 1441192958, 0),
(362, 70, 100, 0, 1441192958, 0),
(363, 71, 100, 0, 1441192958, 0),
(364, 86, 100, 0, 1441192958, 0),
(365, 87, 100, 0, 1441192958, 0),
(366, 88, 100, 0, 1441192958, 0),
(367, 89, 100, 0, 1441192958, 0),
(368, 7, 100, 0, 1441192958, 0),
(369, 8, 100, 0, 1441192958, 0),
(370, 9, 100, 0, 1441192958, 0),
(371, 10, 100, 0, 1441192958, 0),
(372, 11, 100, 0, 1441192958, 0),
(373, 12, 100, 0, 1441192958, 0),
(374, 13, 100, 0, 1441192958, 0),
(375, 14, 100, 0, 1441192958, 0),
(376, 15, 100, 0, 1441192958, 0),
(377, 16, 100, 0, 1441192958, 0),
(378, 17, 100, 0, 1441192958, 0),
(379, 18, 100, 0, 1441192958, 0),
(380, 19, 100, 0, 1441192958, 0),
(381, 20, 100, 0, 1441192958, 0),
(382, 21, 100, 0, 1441192958, 0),
(383, 22, 100, 0, 1441192958, 0),
(384, 23, 100, 0, 1441192958, 0),
(385, 24, 100, 0, 1441192958, 0),
(386, 25, 100, 0, 1441192958, 0),
(387, 26, 100, 0, 1441192958, 0),
(388, 27, 100, 0, 1441192958, 0),
(389, 28, 100, 0, 1441192958, 0),
(390, 29, 100, 0, 1441192958, 0),
(391, 30, 100, 0, 1441192958, 0),
(392, 31, 100, 0, 1441192958, 0),
(393, 32, 100, 0, 1441192958, 0),
(394, 33, 100, 0, 1441192958, 0),
(395, 34, 100, 0, 1441192958, 0),
(396, 35, 100, 0, 1441192958, 0),
(397, 36, 100, 0, 1441192958, 0),
(398, 37, 100, 0, 1441192958, 0),
(399, 40, 100, 0, 1441192958, 0),
(400, 41, 100, 0, 1441192958, 0),
(401, 42, 100, 0, 1441192958, 0),
(402, 43, 100, 0, 1441192958, 0),
(403, 44, 100, 0, 1441192958, 0),
(404, 45, 100, 0, 1441192958, 0),
(405, 46, 100, 0, 1441192958, 0),
(406, 47, 100, 0, 1441192958, 0),
(407, 48, 100, 0, 1441192958, 0),
(408, 49, 100, 0, 1441192958, 0),
(409, 50, 100, 0, 1441192958, 0),
(410, 51, 100, 0, 1441192958, 0),
(411, 52, 100, 0, 1441192958, 0),
(412, 53, 100, 0, 1441192958, 0),
(413, 56, 100, 0, 1441192958, 0),
(414, 57, 100, 0, 1441192958, 0),
(415, 58, 100, 0, 1441192958, 0),
(416, 59, 100, 0, 1441192958, 0),
(417, 60, 100, 0, 1441192958, 0),
(418, 61, 100, 0, 1441192958, 0),
(419, 62, 100, 0, 1441192958, 0),
(420, 63, 100, 0, 1441192958, 0),
(421, 64, 100, 0, 1441192958, 0),
(422, 65, 100, 0, 1441192958, 0),
(423, 66, 100, 0, 1441192958, 0),
(424, 67, 100, 0, 1441192958, 0),
(425, 68, 100, 0, 1441192958, 0),
(426, 69, 100, 0, 1441192958, 0),
(427, 72, 100, 0, 1441192958, 0),
(428, 73, 100, 0, 1441192958, 0),
(429, 74, 100, 0, 1441192958, 0),
(430, 75, 100, 0, 1441192958, 0),
(431, 76, 100, 0, 1441192958, 0),
(432, 77, 100, 0, 1441192958, 0),
(433, 78, 100, 0, 1441192958, 0),
(434, 79, 100, 0, 1441192958, 0),
(435, 80, 100, 0, 1441192958, 0),
(436, 81, 100, 0, 1441192958, 0),
(437, 82, 100, 0, 1441192958, 0),
(438, 83, 100, 0, 1441192958, 0),
(439, 84, 100, 0, 1441192958, 0),
(440, 85, 100, 0, 1441192958, 0),
(441, 90, 100, 0, 1441192958, 0),
(442, 91, 100, 0, 1441192958, 0),
(443, 92, 100, 0, 1441192958, 0),
(444, 93, 100, 0, 1441192958, 0),
(445, 94, 100, 0, 1441192958, 0),
(446, 95, 100, 0, 1441192958, 0),
(447, 96, 100, 0, 1441192958, 0),
(448, 97, 100, 0, 1441192958, 0),
(449, 98, 100, 0, 1441192958, 0),
(450, 99, 100, 0, 1441192958, 0),
(451, 100, 100, 0, 1441192958, 0),
(452, 101, 100, 0, 1441192958, 0),
(453, 102, 100, 0, 1441192958, 0),
(454, 103, 100, 0, 1441192958, 0),
(455, 104, 100, 0, 1441192958, 0),
(456, 105, 100, 0, 1441192958, 0),
(457, 106, 100, 0, 1441192958, 0),
(458, 107, 100, 0, 1441192958, 0),
(459, 108, 100, 0, 1441192958, 0),
(460, 109, 100, 0, 1441192958, 0),
(461, 110, 100, 0, 1441192958, 0),
(462, 111, 100, 0, 1441192958, 0),
(463, 112, 100, 0, 1441192958, 0),
(464, 113, 100, 0, 1441192958, 0),
(465, 114, 100, 0, 1441192958, 0),
(466, 115, 100, 0, 1441192958, 0),
(467, 116, 100, 0, 1441192958, 0),
(468, 117, 100, 0, 1441192958, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(82) DEFAULT NULL,
  `prefix` varchar(8) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `name`, `url`, `prefix`, `default`, `is_system`, `status`, `added`, `modified`) VALUES
(1, 'Indonesia', 'indonesia', 'id', 0, 0, 1, 1441192957, 0),
(2, 'English', 'english', 'en', 1, 1, 1, 1441192957, 0),
(3, 'Arab', 'arab', 'ar', 0, 0, 0, 1441192957, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_model_lists`
--

INSERT INTO `tbl_model_lists` (`id`, `module_id`, `model`) VALUES
(1, 1, 'admin/Users'),
(2, 1, 'admin/UserProfiles'),
(3, 1, 'admin/UserHistories'),
(4, 1, 'admin/ModulePermissions'),
(5, 1, 'admin/UserGroupPermissions'),
(6, 1, 'admin/Languages'),
(7, 1, 'admin/Settings'),
(8, 1, 'admin/ServerLogs'),
(9, 1, 'admin/Sessions'),
(10, 8, 'page/Pages'),
(11, 8, 'page/PageMenus'),
(12, 11, 'participant/Participants'),
(13, 11, 'participant/Attachments'),
(14, 14, 'questionnaire/Questionnaires'),
(15, 14, 'questionnaire/Questions'),
(16, 14, 'questionnaire/QuestionRules'),
(17, 14, 'questionnaire/QuestionnaireUserAnswers'),
(18, 14, 'questionnaire/Questionnairecompleted'),
(19, 17, 'region/Provinces'),
(20, 17, 'region/SubUrbans'),
(21, 17, 'region/UrbanDistricts'),
(22, 17, 'region/Districts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Languages', 'language/index', 3),
(6, 1, 'Settings', 'setting/index', 4),
(7, 1, 'Server Logs', 'serverlog/index', 5),
(8, 0, 'page', '#', 1),
(9, 8, 'Pages', 'page/index', 0),
(10, 8, 'Page Menus', 'pagemenu/index', 1),
(11, 0, 'participant', '#', 2),
(12, 11, 'Participant', 'participant/index', 0),
(13, 11, 'Attachment', 'attachment/index', 1),
(14, 0, 'questionnaire', '#', 3),
(15, 14, 'Questionnaires', 'questionnaire/index', 0),
(16, 14, 'Questions', 'question/index', 1),
(17, 0, 'region', '#', 4),
(18, 17, 'Province', 'province/index', 0),
(19, 17, 'Urban District', 'urbandistrict/index', 1),
(20, 17, 'Sub Urban', 'suburban/index', 2),
(21, 17, 'District', 'district/index', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Languages', 'language/index', 3),
(5, 1, 'Settings', 'setting/index', 4),
(6, 1, 'Server Logs', 'serverlog/index', 5),
(7, 1, 'Add New Dashboard', 'dashboard/add', 6),
(8, 1, 'View Dashboard', 'dashboard/view', 7),
(9, 1, 'Edit Dashboard', 'dashboard/edit', 8),
(10, 1, 'Delete Dashboard', 'dashboard/delete', 9),
(11, 1, 'Change Dashboard Status', 'dashboard/change', 10),
(12, 1, 'Add User', 'user/add', 11),
(13, 1, 'View User', 'user/view', 12),
(14, 1, 'Edit User', 'user/edit', 13),
(15, 1, 'Delete User', 'user/delete', 14),
(16, 1, 'Change User Status', 'user/change', 15),
(17, 1, 'Change User Image', 'user/image', 16),
(18, 1, 'Upload User Image', 'user/upload', 17),
(19, 1, 'Add User Group', 'usergroup/add', 18),
(20, 1, 'View User Group', 'usergroup/view', 19),
(21, 1, 'Edit User Group', 'usergroup/edit', 20),
(22, 1, 'Delete User Group', 'usergroup/delete', 21),
(23, 1, 'Change User Group Status', 'usergroup/change', 22),
(24, 1, 'Add Language', 'language/add', 23),
(25, 1, 'View Language', 'language/view', 24),
(26, 1, 'Edit Language', 'language/edit', 25),
(27, 1, 'Delete Language', 'language/delete', 26),
(28, 1, 'Change Language Status', 'language/change', 27),
(29, 1, 'Add Setting', 'setting/add', 28),
(30, 1, 'View Setting', 'setting/view', 29),
(31, 1, 'Edit Setting', 'setting/edit', 30),
(32, 1, 'Delete Setting', 'setting/delete', 31),
(33, 1, 'Change Setting Status', 'setting/change', 32),
(34, 1, 'View Server Log', 'serverlog/view', 33),
(35, 1, 'Edit Server Log', 'serverlog/edit', 34),
(36, 1, 'Delete Server Log', 'serverlog/delete', 35),
(37, 1, 'Trash Server Log', 'serverlog/trash', 36),
(38, 8, 'Pages', 'page/index', 0),
(39, 8, 'Page Menus', 'pagemenu/index', 1),
(40, 8, 'Add Page', 'page/index/add', 2),
(41, 8, 'View Page', 'page/index/view', 3),
(42, 8, 'Edit Page', 'page/index/edit', 4),
(43, 8, 'Delete Page', 'page/index/delete', 5),
(44, 8, 'Change Page Status', 'page/index/change', 6),
(45, 8, 'Export Page', 'page/index/export', 7),
(46, 8, 'Print Page', 'page/index/print', 8),
(47, 8, 'Add Page Menu', 'pagemenu/index/add', 9),
(48, 8, 'View Page Menu', 'pagemenu/index/view', 10),
(49, 8, 'Edit Page Menu', 'pagemenu/index/edit', 11),
(50, 8, 'Delete Page Menu', 'pagemenu/index/delete', 12),
(51, 8, 'Change Page Menu Status', 'pagemenu/index/change', 13),
(52, 8, 'Export Page Menu', 'pagemenu/index/export', 14),
(53, 8, 'Print Page Menu', 'pagemenu/index/print', 15),
(54, 11, 'Participant', 'participant/index', 0),
(55, 11, 'Attachment', 'attachment/index', 1),
(56, 11, 'Add Participant', 'participant/index/add', 2),
(57, 11, 'View Participant', 'participant/index/view', 3),
(58, 11, 'Edit Participant', 'participant/index/edit', 4),
(59, 11, 'Delete Participant', 'participant/index/delete', 5),
(60, 11, 'Change Participant Status', 'participant/index/change', 6),
(61, 11, 'Export Participant', 'participant/index/export', 7),
(62, 11, 'Print Participant', 'participant/index/print', 8),
(63, 11, 'Add Attachment', 'attachment/index/add', 9),
(64, 11, 'View Attachment', 'attachment/index/view', 10),
(65, 11, 'Edit Attachment', 'attachment/index/edit', 11),
(66, 11, 'Delete Attachment', 'attachment/index/delete', 12),
(67, 11, 'Change Attachment Status', 'attachment/index/change', 13),
(68, 11, 'Export Attachment', 'attachment/index/export', 14),
(69, 11, 'Print Attachment', 'attachment/index/print', 15),
(70, 14, 'Questionnaires', 'questionnaire/index', 0),
(71, 14, 'Questions', 'question/index', 1),
(72, 14, 'Add Questionnaire', 'questionnaire/index/add', 2),
(73, 14, 'View Questionnaire', 'questionnaire/index/view', 3),
(74, 14, 'Edit Questionnaire', 'questionnaire/index/edit', 4),
(75, 14, 'Delete Questionnaire', 'questionnaire/index/delete', 5),
(76, 14, 'Change Questionnaire Status', 'questionnaire/index/change', 6),
(77, 14, 'Export Questionnaire', 'questionnaire/index/export', 7),
(78, 14, 'Print Questionnaire', 'questionnaire/index/print', 8),
(79, 14, 'Add Question', 'question/index/add', 9),
(80, 14, 'View Question', 'question/index/view', 10),
(81, 14, 'Edit Question', 'question/index/edit', 11),
(82, 14, 'Delete Question', 'question/index/delete', 12),
(83, 14, 'Change Question Status', 'question/index/change', 13),
(84, 14, 'Export Question', 'question/index/export', 14),
(85, 14, 'Print Question', 'question/index/print', 15),
(86, 17, 'Province', 'province/index', 0),
(87, 17, 'Urban District', 'urbandistrict/index', 1),
(88, 17, 'Sub Urban', 'suburban/index', 2),
(89, 17, 'District', 'district/index', 3),
(90, 17, 'Add Province', 'province/index/add', 4),
(91, 17, 'View Province', 'province/index/view', 5),
(92, 17, 'Edit Province', 'province/index/edit', 6),
(93, 17, 'Delete Province', 'province/index/delete', 7),
(94, 17, 'Change Province Status', 'province/index/change', 8),
(95, 17, 'Export Province', 'province/index/export', 9),
(96, 17, 'Print Province', 'province/index/print', 10),
(97, 17, 'Add Urban District', 'urbandistrict/index/add', 11),
(98, 17, 'View Urban District', 'urbandistrict/index/view', 12),
(99, 17, 'Edit Urban District', 'urbandistrict/index/edit', 13),
(100, 17, 'Delete Urban District', 'urbandistrict/index/delete', 14),
(101, 17, 'Change Urban District Status', 'urbandistrict/index/change', 15),
(102, 17, 'Export Urban District', 'urbandistrict/index/export', 16),
(103, 17, 'Print Urban District', 'urbandistrict/index/print', 17),
(104, 17, 'Add Sub Urban', 'suburban/index/add', 18),
(105, 17, 'View Sub Urban', 'suburban/index/view', 19),
(106, 17, 'Edit Sub Urban', 'suburban/index/edit', 20),
(107, 17, 'Delete Sub Urban', 'suburban/index/delete', 21),
(108, 17, 'Change Sub Urban Status', 'suburban/index/change', 22),
(109, 17, 'Export Sub Urban', 'suburban/index/export', 23),
(110, 17, 'Print Sub Urban', 'suburban/index/print', 24),
(111, 17, 'Add District', 'district/index/add', 25),
(112, 17, 'View District', 'district/index/view', 26),
(113, 17, 'Edit District', 'district/index/edit', 27),
(114, 17, 'Delete District', 'district/index/delete', 28),
(115, 17, 'Change District Status', 'district/index/change', 29),
(116, 17, 'Export District', 'district/index/export', 30),
(117, 17, 'Print District', 'district/index/print', 31);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `url` varchar(255) DEFAULT NULL,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `synopsis`, `text`, `url`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 2, 'mechanism', 'Via Facebook', '<p>\n	Kirimkan foto dan cerita tersebut melalui salah satu cara berikut :</p>\n', '<div class="row hidden-xs">\n	<div class="col-xs-6 pembatas">\n		<img alt="cara kirim pakai FB" class="via-fb" src="../../assets/public/img/icon-up-fb.png" /></div>\n	<div class="col-xs-6">\n		<ul>\n			<li>\n				Foto boleh menggunakan ponsel atau kamera namun pastikan kualitas foto baik (Foto terang, tidak buram dan terlihat jelas)</li>\n			<li>\n				Kunjungi Facebook Mamypoko Indonesia (Tab Kisah Kasih Mamypoko)</li>\n			<li>\n				Login via Facebook</li>\n			<li>\n				Isi data diri secara lengkap</li>\n			<li>\n				Upload foto dan tulis cerita singkat yang menarik tentang Mamy, si Kecil dan MamyPoko</li>\n			<li>\n				Jika ingin mengikutsertakan lebih dari 1 orang anak, silakan ulangi proses mengisi data diri si Kecil dengan lengkap kemudian upload foto beserta cerita.</li>\n		</ul>\n	</div>\n</div>\n<div class="hidden-lg visible-xs">\n	<img alt="cara kirim pakai FB" class="via-fb img-ctr" src="../../assets/public/img/icon-up-fb.png" />\n	<ul>\n		<li>\n			Foto boleh menggunakan ponsel atau kamera namun pastikan kualitas foto baik (Foto terang, tidak buram dan terlihat jelas)</li>\n		<li>\n			Kunjungi Facebook Mamypoko Indonesia (Tab Kisah Kasih Mamypoko)</li>\n		<li>\n			Login via Facebook</li>\n		<li>\n			Isi data diri secara lengkap</li>\n		<li>\n			Upload foto dan tulis cerita singkat yang menarik tentang Mamy, si Kecil dan MamyPoko</li>\n		<li>\n			Jika ingin mengikutsertakan lebih dari 1 orang anak, silakan ulangi proses mengisi data diri si Kecil dengan lengkap kemudian upload foto beserta cerita.</li>\n	</ul>\n</div>\n', 'via-facebook', NULL, '2015-07-14', '2015-07-14', NULL, NULL, NULL, NULL, NULL, 'publish', 1436858857, 1438167095),
(2, 2, NULL, 'Via Pos', '<p>\n	Kirimkan foto dan cerita tersebut melalui salah satu cara berikut :</p>\n', '<div class="row hidden-xs">\n  <div class="col-xs-7 pembatas">\n  <div class="via-pos-img">\n  <img alt="cara kirim foto via Pos" src="../../assets/public/img/icon-kirim-post.png" /></div>\n  <ul>\n  <li>\n  Dapatkan formulir pendaftaran di toko-toko terdekat <img alt="sample cara kirim foto via Pos" class="item-via-pos-img" src="../../assets/public/img/sample-kirim-post.png" /></li>\n  <li>\n  Isi formulir dengan lengkap sesuai petunjuk sertakan juga cerita singkat yang menarik tentang Mamy, si Kecil dan MamyPoko</li>\n  </ul>\n  <div class="bot-left-info vag-font">\n  Kirimkan via Pos ke<br />\n  PO BOX MamyPoko JKT 10000</div>\n  </div>\n  <div class="col-xs-5">\n  <ul>\n  <li>\n  Bila ingin mengikutsertakan lebih dari 1 anak, dapat ambil formulir sesuai dengan jumlah anak, isi data diri dengan lengkap lalu kirimkan dalam 1 amplop</li>\n  <li>\n  Kirimkan foto berukuran 2R (6x9 cm)</li>\n  <li>\n  Pengiriman via pos disertai dengan formulir, apabila Mamy tidak memiliki formulir Mamy dapat mengisi data lengkap dibelakang foto yang Mamy kirim.</li>\n  <li>\n  Data lengkap yang harus diisi berupa (Nama Mamy, No. KTP, Nama bayi, Tanggal lahir bayi, Alamat [RT,RW, Kode Pos], No Hp dan No telepon rumah)</li>\n  </ul>\n  </div>\n</div>\n\n<div class="row hidden-lg visible-xs">\n  <div>\n  <img alt="cara kirim foto via Pos" class="img-ctr" src="../../assets/public/img/icon-kirim-post.png" />\n  <ul>\n  <li>\n  Dapatkan formulir pendaftaran di toko-toko terdekat</li>\n  <li>\n  <img alt="sample cara kirim foto via Pos" class="item-via-pos-img" src="../../assets/public/img/sample-kirim-post.png" /></li>\n  <li>\n  Isi formulir dengan lengkap sesuai petunjuk sertakan juga cerita singkat yang menarik tentang Mamy, si Kecil dan MamyPoko</li>\n  <li>\n  Bila ingin mengikutsertakan lebih dari 1 anak, dapat ambil formulir sesuai dengan jumlah anak, isi data diri dengan lengkap lalu kirimkan dalam 1 amplop</li>\n  <li>\n  Kirimkan foto berukuran 2R (6x9 cm)</li>\n  <li>\n  Pengiriman via pos disertai dengan formulir, apabila Mamy tidak memiliki formulir Mamy dapat mengisi data lengkap dibelakang foto yang Mamy kirim.</li>\n  <li>\n  Data lengkap yang harus diisi berupa (Nama Mamy, No. KTP, Nama bayi, Tanggal lahir bayi, Alamat [RT,RW, Kode Pos], No Hp dan No telepon rumah)</li>\n  </ul>\n  <!--<div class="bot-left-info vag-font">\n  Kirimkan via Pos ke<br>\n  PO BOX MamyPoko JKT 10000\n  </div>--></div>\n</div>\n<p>\n&nbsp;</p>\n', 'via-pos', NULL, '2015-07-14', '2015-07-14', NULL, NULL, NULL, NULL, NULL, 'publish', 1436862068, 1438674839);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sub_level` tinyint(3) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `is_system` tinyint(3) DEFAULT NULL,
  `has_child` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`name`,`sub_level`,`order`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_page_menus`
--

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `name`, `title`, `synopsis`, `description`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'Terms', 'Syarat dan ketentuan', NULL, '<ul>\n	<li>\n		Saat foto, si Kecil harus memakai popok MamyPoko Tipe Celana / Pants (Standar/Extra Dry/Extra Soft)</li>\n	<li>\n		Kemasan produk tidak wajib ada di foto</li>\n	<li>\n		Si Kecil maksimal berusia 3 tahun sampai dengan akhir Desember 2015</li>\n	<li>\n		Satu anak hanya dapat diikutsertakan dalam 1 foto, jika mengirimkan lebih dari 1 foto maka akan didiskualifikasi</li>\n	<li>\n		Jika memiliki lebih dari 1 orang anak, semuanya dapat diikutsertakan dengan mengirimkan foto yang berbeda dan mengisi data diri masing-masing anak dengan lengkap</li>\n	<li>\n		Kompetisi berlangsung mulai 1 Agustus sampai 1 Oktober 2015</li>\n	<li>\n		Kompetisi ini tidak berlaku untuk staff dan karyawan MamyPoko / PT. Unicharm Indonesia serta agensi penyelenggara (biro iklan) beserta anggota keluarga maupun segala pihak yang berkaitan dengan kompetisi foto Kisah Kasih MamyPoko</li>\n	<li>\n		Setiap foto yang masuk ke Tim MamyPoko akan menjadi hak milik MamyPoko dan dapat digunakan sewaktu-waktu untuk kepentingan MamyPoko tanpa pemberitahuan sebelumnya dengan menyebutkan sumbernya</li>\n	<li>\n		Pemenang akan dipilih oleh Tim MamyPoko sebagai dewan juri. Keputusan tidak dapat diganggu gugat.</li>\n</ul>\n<h2>\n	Kriteria Penilaian</h2>\n<ul>\n	<li>\n		Keaslian cerita (bukan hasil mengutip dari mana pun)</li>\n	<li>\n		Cara penulisan cerita yang menarik dan kreatif</li>\n	<li>\n		Kesesuaian foto dengan tema serta cerita yang ditulis</li>\n	<li>\n		Ekspresi wajah baik si Kecil atau pun Mamy</li>\n	<li>\n		Produk MamyPoko yang digunakan nampak jelas</li>\n</ul>\n', 'terms', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 'Mechanism', 'Mekanisme', '<p>\n	Kirimkan foto dan cerita tersebut melalui salah satu cara berikut :</p>\n', '<div class="row hidden-xs">\n	<div class="col-xs-4 pembatas">\n		<img alt="cara satu" class="cara-satu" src="../assets/public/img/cara-satu.png" />\n		<ul>\n			<li>\n				Tunjukkan ekspresi bahagia dan penuh kasih antara Mamy dan si Kecil lewat foto</li>\n		</ul>\n	</div>\n	<div class="col-xs-4 pembatas">\n		<img alt="cara dua" class="cara-dua" src="../assets/public/img/cara-dua.png" />\n		<ul>\n			<li>\n				Pastikan si Kecil menggunakan popok MamyPoko Pants / Tipe Celana (Standar/Extra Dry/Extra Soft)</li>\n		</ul>\n	</div>\n	<div class="col-xs-4">\n		<img alt="cara tiga" class="cara-tiga" src="../assets/public/img/cara-tiga.png" />\n		<ul>\n			<li>\n				Ceritakan secara singkat dan menarik mengenai momen indah Mamy dan si Kecil bersama MamyPoko</li>\n		</ul>\n	</div>\n</div>\n<div class="row hidden-lg visible-xs">\n	<div>\n		<img alt="cara satu" class="cara-satu img-ctr" src="../assets/public/img/cara-satu.png" />\n		<ul>\n			<li>\n				Tunjukkan ekspresi bahagia dan penuh kasih antara Mamy dan si Kecil lewat foto</li>\n		</ul>\n	</div>\n	<div>\n		<img alt="cara dua" class="cara-dua img-ctr" src="../assets/public/img/cara-dua.png" />\n		<ul>\n			<li>\n				Pastikan si Kecil menggunakan popok MamyPoko Pants / Tipe Celana (Standar/Extra Dry/Extra Soft)</li>\n		</ul>\n	</div>\n	<div>\n		<img alt="cara tiga" class="cara-tiga img-ctr" src="../assets/public/img/cara-tiga.png" />\n		<ul>\n			<li>\n				Ceritakan secara singkat dan menarik mengenai momen indah Mamy dan si Kecil bersama MamyPoko</li>\n		</ul>\n	</div>\n</div>\n<p>\n	&nbsp;</p>\n', 'mechanism', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(3, NULL, 'Hadiah', 'Hadiah', NULL, '<div class="note-hadiah1 vag-font">\n	<p>\n		Hadiah grand prize (untuk pemenang utama, kedua, ketiga dan hiburan) akan diumumkan tanggal <span class="date-announce">19 October 2015</span> di Tabloid Nova dan Facebook fan page MamyPoko Indonesia</p>\n</div>\n<div class="note-hadiah2 vag-font">\n	<p>\n		Pemenang beruntung akan diumumkan tiap 2 minggu dengan rincian:</p>\n	<p>\n		Pemenang beruntung gelombang 1: Tanggal <span class="date-event">18 Agustus 2015</span> diumumkan di Tabloid Nova dan Facebook fan page MamyPoko</p>\n	<p>\n		Pemenang beruntung gelombang 2: Tanggal <span class="date-event">31 Agustus 2015</span> diumumkan di Facebook fan page MamyPoko Indonesia</p>\n	<p>\n		Pemenang beruntung gelombang 3: Tanggal <span class="date-event">14 September 2015</span> diumumkan di Facebook fan page MamyPoko Indonesia</p>\n	<p>\n		Pemenang beruntung gelombang 4: Tanggal <span class="date-event">28 September 2015</span> diumumkan di Facebook fan page MamyPoko Indonesia</p>\n</div>\n', 'prize', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participants`
--

CREATE TABLE IF NOT EXISTS `tbl_participants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier_id` varchar(64) DEFAULT NULL,
  `identity` varchar(32) DEFAULT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `photo_url` varchar(512) DEFAULT NULL,
  `email` varchar(72) DEFAULT NULL,
  `website` varchar(72) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `age` tinyint(2) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `research_area` varchar(255) DEFAULT NULL,
  `occupation` varchar(64) DEFAULT NULL,
  `about` text,
  `address` varchar(512) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `phone_home` varchar(32) DEFAULT NULL,
  `id_number` varchar(32) DEFAULT NULL,
  `file_name` varchar(512) DEFAULT NULL,
  `verify` varchar(8) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `logged_in` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` int(11) DEFAULT NULL,
  `session_id` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`id`, `identifier_id`, `identity`, `profile_url`, `photo_url`, `email`, `website`, `password`, `username`, `name`, `gender`, `age`, `nationality_id`, `research_area`, `occupation`, `about`, `address`, `region`, `phone_number`, `phone_home`, `id_number`, `file_name`, `verify`, `completed`, `logged_in`, `last_login`, `session_id`, `status`, `join_date`, `modified`) VALUES
(1, '10154167447888942', 'Facebook', '', 'https://graph.facebook.com/10154167447888942/picture?width=150&height=150', '', '', NULL, NULL, 'Arius Arif Budiman', '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 0, '2015-09-10 07:50:44', NULL),
(2, '1632116673733975', 'Facebook', '', 'https://graph.facebook.com/1632116673733975/picture?width=150&height=150', '', '', NULL, NULL, 'Nairfed Ifray', '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 0, '2015-09-10 15:48:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant_attachment_submissions`
--

CREATE TABLE IF NOT EXISTS `tbl_participant_attachment_submissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `part_id` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE IF NOT EXISTS `tbl_provinces` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionnaires`
--

CREATE TABLE IF NOT EXISTS `tbl_questionnaires` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `questionnaire_text` text,
  `help_text` text,
  `file_name` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_questionnaires`
--

INSERT INTO `tbl_questionnaires` (`id`, `name`, `questionnaire_text`, `help_text`, `file_name`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 'Yang mana kencan ideal kamu', '<p>\n	Yang mana kencan ideal kamu?</p>\n', NULL, '3d5f0-who-am-i.jpg', NULL, NULL, NULL, 1, NULL, NULL),
(2, 'Aktivitas outdoor favorit kamu', '<p>\n	Aktivitas outdoor favorit kamu?</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'Aplikasi Hape Favorite Kamu', '<p>\n	Aplikasi Hape Favorite Kamu ?</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'Sehari yang menyenangkan buat kamu seperti apa', '<p>\n	Sehari yang menyenangkan buat kamu seperti apa?</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'Apa warna favoritmu', '<p>\n	Apa warna favoritmu?</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(6, 'Menurut teman-teman, kamu itu…', '<p>\n	Menurut teman-teman, kamu itu&hellip;</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(7, 'Makanan Jepang favorit kamu', '<p>\n	Makanan Jepang favorit kamu?</p>\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionnaire_completed`
--

CREATE TABLE IF NOT EXISTS `tbl_questionnaire_completed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `date_completed` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_questionnaire_completed`
--

INSERT INTO `tbl_questionnaire_completed` (`id`, `participant_id`, `questionnaire_id`, `date_completed`, `status`, `added`, `modified`) VALUES
(1, 1, 1, 1441871497, 1, 1441871497, 1441871497),
(2, 1, 2, 1441871497, 1, 1441871497, 1441871497),
(3, 1, 3, 1441871497, 1, 1441871497, 1441871497),
(4, 1, 4, 1441871497, 1, 1441871497, 1441871497),
(5, NULL, 1, 1441995354, 1, 1441995354, 1441995354),
(6, NULL, 2, 1441995354, 1, 1441995354, 1441995354),
(7, NULL, 3, 1441995354, 1, 1441995354, 1441995354),
(8, NULL, 4, 1441995354, 1, 1441995354, 1441995354),
(9, NULL, 5, 1441995354, 1, 1441995354, 1441995354),
(10, NULL, 6, 1441995354, 1, 1441995354, 1441995354),
(11, NULL, 7, 1441995354, 1, 1441995354, 1441995354);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questionnaire_user_answers`
--

CREATE TABLE IF NOT EXISTS `tbl_questionnaire_user_answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) DEFAULT NULL,
  `user_questionnaire_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_questionnaire_user_answers`
--

INSERT INTO `tbl_questionnaire_user_answers` (`id`, `participant_id`, `user_questionnaire_id`, `question_id`, `status`, `added`, `modified`) VALUES
(1, 1, 1, 2, 1, 1441871497, 1441871497),
(2, 1, 2, 4, 1, 1441871497, 1441871497),
(3, 1, 3, 7, 1, 1441871497, 1441871497),
(4, 1, 4, 9, 1, 1441871497, 1441871497),
(5, NULL, 1, 3, 1, 1441995354, 1441995354),
(6, NULL, 2, 5, 1, 1441995354, 1441995354),
(7, NULL, 3, 7, 1, 1441995354, 1441995354),
(8, NULL, 4, 9, 1, 1441995354, 1441995354),
(9, NULL, 5, 11, 1, 1441995354, 1441995354),
(10, NULL, 6, 14, 1, 1441995354, 1441995354),
(11, NULL, 7, 19, 1, 1441995354, 1441995354);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionnaire_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `question_text` text,
  `file_name` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `questionnaire_id`, `name`, `question_text`, `file_name`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'Fine Dining', '<p>\n	Fine Dining</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 1, 'Party', '<p>\n	Party</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(14, 6, 'Mulai diet', '<p>\n	Mulai diet</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15, 6, 'Cari pacar baru', '<p>\n	Cari pacar baru</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 1, 'Camping di Alam Bebas', '<p>\n	Camping di Alam Bebas</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(13, 5, 'Ungu', '<p>\n	Ungu</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 2, 'Nyantai di Pantai', '<p>\n	Nyantai di Pantai</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 2, 'Instagram', '<p>\n	Instagram</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(6, 2, 'Pinterest', '<p>\n	Pinterest</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(12, 5, 'Biru', '<p>\n	Biru</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(7, 3, 'Music Player', '<p>\n	Music Player</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(8, 4, 'Makan seharian', '<p>\n	Makan seharian</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(9, 4, 'Yoga dan Spa', '<p>\n	Yoga dan Spa</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(10, 4, 'Cafe Hopping sama geng', '<p>\n	Cafe Hopping sama geng</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(11, 5, 'Merah', '<p>\n	Merah</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(16, 6, 'Olah raga tiap hari', '<p>\n	Olah raga tiap hari</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(17, 7, 'Sushi', '<p>\n	Sushi</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(18, 7, 'Sashimi', '<p>\n	Sashimi</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(19, 7, 'Sushi', '<p>\n	Sushi</p>\n', NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_rules`
--

CREATE TABLE IF NOT EXISTS `tbl_question_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `value` varchar(12) DEFAULT NULL,
  `file_name` varchar(512) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `http_code` int(11) unsigned NOT NULL,
  `status_code` varchar(160) DEFAULT NULL,
  `bytes_served` int(11) DEFAULT NULL,
  `total_time` varchar(160) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `referrer` varchar(512) DEFAULT NULL,
  `geolocation` varchar(512) DEFAULT NULL,
  `user_agent` varchar(512) DEFAULT NULL,
  `is_mobile` int(1) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `tbl_server_logs`
--

INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `geolocation`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(1, 'dd57e1de25e98154805e0bc884e97d1b', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.39544000 1441202882', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441202882, 1441202882),
(2, '51bbdc1a909edc3fa9ada214a9656175', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.08167600 1441203397', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441203397, 0),
(3, 'eedaad946f791c6f7dd816178cdc8352', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.50386800 1441203618', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441203618, 0),
(4, '2d1985e98cc8f23a3cff904a057de379', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.61819100 1441204073', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441204073, 1441204073),
(5, '277902e0f672999c368d2f0f3590504d', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.81809800 1441204744', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441204744, 1441204744),
(6, 'd13584ec7236b091dec2afc288529c09', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.32767000 1441204782', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441204782, 1441204782),
(7, '8863382e14288ff98975296157369014', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.40344600 1441205321', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441205321, 1441205321),
(8, '10122a28115e399df8ecbcf9e0b9522f', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.00111300 1441205576', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441205576, 1441205576),
(9, '09034d5d0da9e65745907c3e96692f61', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.49850900 1441205951', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441205951, 1441205951),
(10, '45540d6a5c8d1043981c2ef7425e11cd', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.39103900 1441206353', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441206353, 1441206353),
(11, '694207b00d18ed28c336e36f40f92033', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.77020800 1441206631', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441206631, 1441206631),
(12, '4a8864697a06896d3fcd30a93e7aad6a', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.17071400 1441206907', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441206907, 1441206907),
(13, '1550b4f0a0e70187378dea4d84854daf', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.70660300 1441207480', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441207480, 1441207480),
(14, '30a92cc291ee16b3ba369c107fc88c1a', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.49947200 1441207763', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441207763, 1441207763),
(15, 'fe24702d92a62d5d5b73b749b612ef34', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.11231900 1441207887', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441207887, 1441207887),
(16, 'e8831c5040267c1d954eec1115c6742f', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.07067200 1441208463', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441208463, 1441208463),
(17, '70906784ef086038fa737e8135a64b52', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.05256200 1441208951', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441208951, 1441208951),
(18, '936b5c98c668695857b08b696facc01d', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.03229900 1441209280', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441209280, 1441209280),
(19, '1baeae47d4c91ba03ef6ef0d60fec104', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.34491400 1441209432', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441209432, 1441209432),
(20, '15d7172e4c092b1b0b9e793b8a7fd16c', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.01933600 1441209954', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441209954, 1441209954),
(21, '503ece42fe9938ecd27c3604d47adada', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.87077900 1441210354', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441210354, 1441210354),
(22, '943c72e7c37bc4108f2bf622c8414897', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.10996400 1441210612', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441210612, 1441210612),
(23, '83be5e63138f29638fca9cf4a8780400', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.08999000 1441211019', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441211019, 1441211019),
(24, '4e6aee31071f77f70531836d9a268316', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.16825500 1441211322', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441211322, 1441211322),
(25, '32894cdfe29e7bf8dbe59aa5ff459ce4', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.35908700 1441211623', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441211623, 1441211623),
(26, '821630dd7f02761320df9cf8183695a4', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.98423600 1441211880', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441211881, 1441211881),
(27, 'aff3fee7fe9fda4edd7bea47c59d488d', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.05937100 1441212255', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441212255, 1441212255),
(28, '00892aff920a3c44853ed855c0921fe2', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.55770100 1441212453', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441212453, 1441212453),
(29, '712a041e7cdf0828b53dcd80e56e2941', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.44026900 1441212870', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441212870, 1441212870),
(30, '2465ae7fb328e2e13164b0c20eaf7d58', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.00665100 1441213062', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441213062, 1441213062),
(31, 'dc1fa89a659b417413968e73555f64fa', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.50723600 1441257739', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441257739, 1441257739),
(32, 'a39b36737df2333e8634fa90f6eab3a0', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.66313500 1441258769', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441258769, 1441258769),
(33, '8e26ecb62264a1c4a7eb22fca4b477a2', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.28852500 1441259073', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441259073, 1441259073),
(34, '74392e55e3454b4258ec945dce20016b', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.02934900 1441259418', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441259418, 1441259418),
(35, 'ff23af5d7765d5631714e9e81a0f4198', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.74810300 1441259760', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441259760, 1441259760),
(36, 'cf7d5e9ba1347161ee2782b354daabde', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.08425700 1441260046', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441260046, 1441260046),
(37, 'edb641afb2a5288901b84580b4bec07b', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.21589900 1441260107', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441260107, 1441260107),
(38, '8e135c19f8bc513725181ffdeed3f9ba', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.82822000 1441260631', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441260631, 1441260631),
(39, '3cf61a6536fa5b554ca6aa6784607524', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.90167800 1441261239', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441261239, 1441261239),
(40, 'cb98b25e3ae073744dffee4bfe2e6437', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.67422500 1441261340', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441261340, 1441261340),
(41, '55f923011b7a5df19e304497ab6659f3', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.73282700 1441263155', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441263155, 1441263155),
(42, 'ed305013571522421bfb4ef78ace58e9', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.05970000 1441263287', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441263287, 1441263287),
(43, 'f4b7920fa87d3e5209843e88e89ec825', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.73390100 1441265563', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441265563, 1441265563),
(44, 'f329bb1d19fcbb32f95628d0c190d780', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.27350600 1441265899', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441265899, 1441265899),
(45, 'e256adede2ceabbb8e3c5fcc31b72c88', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.13706100 1441268378', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441268378, 1441268378),
(46, 'c6e304f074752004bc08a007b0a4ea6f', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.98831700 1441281939', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441281940, 1441281940),
(47, 'd1b193fd051d087688fa3e7f1e7aca3a', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.95475400 1441286198', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441286198, 0),
(48, '1a0355e6f2aa0f21db7f8d31d52f3010', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.38513200 1441290952', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441290952, 1441290952),
(49, 'cfb94966ccbcce6ec4c1cf8a73f73a05', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.96063600 1441291040', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441291041, 1441291041),
(50, '8a95a76b0247405896c9d6b83b25532e', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.85098100 1441291788', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441291788, 1441291788),
(51, 'c423131efde50126b1611339ed3f6e9f', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.92247300 1441292219', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441292219, 1441292219),
(52, '34a2acdcf83ea8b8886a3957f328001e', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.33314500 1441345423', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441345423, 0),
(53, '08119fe57fd30232bb44838843366741', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.93973300 1441356765', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441356765, 1441356765),
(54, '16ae0737285be330be5331c5cff622d0', 'http://localhost/pockyquiz/quest/gallery/1', NULL, 200, NULL, NULL, '0.10786500 1441356785', '::1', 'http://localhost/pockyquiz/quest/gallery', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441356785, 1441356785),
(55, 'e00fdcb1191a420ec167bea4da89809b', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.20605100 1441357970', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441357970, 1441357970),
(56, 'a6bdf1b4cd22bd6240d215440a17cfb2', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.48776000 1441358243', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441358243, 1441358243),
(57, 'e70919ee69f3c43cde67c9ed3650d5cc', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.78443400 1441358298', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441358298, 0),
(58, '88cc7a546a51dc4cdccff64157c43224', 'http://localhost/pockyquiz/quest/gallery', NULL, 200, NULL, NULL, '0.39659600 1441365904', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441365904, 0),
(59, '33ad09fae85e234130c8784e6e6465f2', 'http://localhost/pockyquiz/quest/gallery', NULL, 200, NULL, NULL, '0.75513500 1441368204', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441368204, 1441368204),
(60, '1bc7d959e81039b2d701f067310409ef', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.87954000 1441604258', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441604258, 1441604258),
(61, '76a64b17314ecb574ae2da6d4dfa3f06', 'http://localhost/pockyquiz/quest', NULL, 200, NULL, NULL, '0.35461700 1441623358', '::1', 'http://localhost/pockyquiz/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441623358, 1441623358),
(62, 'ad7acae2751eed102706c5f7e885eb03', 'http://localhost/pockymatcha/quest', NULL, 200, NULL, NULL, '0.08408400 1441692409', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441692409, 0),
(63, '6f3e897516c4f84939d3f6dcd577d2ae', 'http://localhost/pockymatcha/quest', NULL, 200, NULL, NULL, '0.17904100 1441696014', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441696014, 1441696014),
(64, 'e4482bc39220c86675cfd308f0598ae6', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.70753900 1441696772', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441696772, 1441696772),
(65, '2f1a87141b6fcab9adde717fabbac401', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.75669900 1441696956', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441696956, 0),
(66, 'b1b2226cae3be26d5e17fd6da8ea7a85', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.80782500 1441698675', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441698675, 1441698675),
(67, 'e2567ac2bcdce6c1047059ea0bae3772', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.08135900 1441698920', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441698920, 1441698920),
(68, '23fd12ffc4fe530468e5f5142d79a9a9', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.04802200 1441699251', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441699251, 1441699251),
(69, 'b555bcf83376dcb1b66abf15128a0a89', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.23423800 1441699363', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441699363, 1441699363),
(70, 'b80ab8db7f04a456d16dee6790efb25d', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.21003000 1441699641', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441699641, 1441699641),
(71, '7c7fd2bb01a2a0ebcacfbabe7d6d6d4d', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.77904100 1441700081', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441700081, 1441700081),
(72, 'a777147ea0c85668cfb201698ad42098', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.80883800 1441704446', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441704446, 1441704446),
(73, 'f6a76e5ce0ea3213176e177e9eaf5816', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.73976500 1441704656', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441704656, 1441704656),
(74, 'd09d27eca232d72469ce9dc1d62850ef', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.48881300 1441706158', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441706158, 1441706158),
(75, '7d7d1333d3d433a1ae7a3ae9c49bccaa', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.21107000 1441706384', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441706384, 1441706384),
(76, '486df5e0a92cf888a8211df9e4ba9716', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.49755500 1441707232', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441707232, 1441707232),
(77, 'd71a97c1f5979ce3fad3ff54b9d2c0c0', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.84784100 1441710546', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441710546, 1441710546),
(78, '77a138dd6ee90481dd88af93dcdac139', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.84685900 1441719596', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441719596, 1441719596),
(79, '63858d9fdc2aedcc29098c36806b3607', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.78536400 1441721536', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441721536, 1441721536),
(80, '51bfe3f167b4d9dea352e091404f5ca3', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.45258200 1441728359', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441728359, 1441728359),
(81, '39a6b42089d1efa9dbe5d41887ad8a13', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.80524700 1441728710', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441728710, 1441728710),
(82, '5b777b1f97527e5ba8ae47027558d100', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.25649800 1441729015', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441729015, 1441729015),
(83, '5bc964f708f1bdf60a2fa065bd18414f', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.22416700 1441729307', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441729307, 1441729307),
(84, '917678a19b926b92ff9f722dcf2dd0bb', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.91297400 1441729640', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441729640, 1441729640),
(85, '3261ad6bdf7d092e16448096a9641a9e', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.56678700 1441729854', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441729854, 1441729854),
(86, '742f7c4db802003049b291767e98dd17', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.05394000 1441730279', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441730279, 1441730279),
(87, '658da1edaeb87c720c84cfff4b4eaf6d', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.19435000 1441730512', '::1', 'http://localhost/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441730512, 1441730512),
(88, 'ab8a4aaa095badd466aed9b6a8226e10', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.02552300 1441732317', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441732317, 1441732317),
(89, 'fa679198734f43042e5ec3e09340ed30', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.10635700 1441732397', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441732397, 1441732397),
(90, '0c9c5bcb1efefbc937038e3bd754223b', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.56762600 1441741347', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441741347, 0),
(91, '8d5a0c6e37ed95debf5e0ff235bb5167', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.79629200 1441781702', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441781703, 0),
(92, 'fcdbf63d2370ae774f2ae8f952d29cba', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.09356100 1441781994', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441781994, 1441781994),
(93, '9120eee400afa35543ca1f4935d03523', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.98674400 1441781702', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441781703, 0),
(94, 'c2239f7c5e62cbd3352b5bac75b84ca0', 'http://localhost/pockymatcha/quest', 0, 0, '', 0, '0.62465500 1441782355', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441782355, 1441782355),
(95, 'ee929fff924ecd4c154304b88539ca63', 'http://localhost/pockymatcha/', 0, 0, '', 0, '0.24248800 1441782479', '::1', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441782479, 1441782479),
(96, 'fe3f5037bf6aacc9bae65aa0d942d553', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.16415300 1441782820', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441782820, 1441782820),
(97, '88d595a42cc3cda993430c2eac483673', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.92201300 1441783069', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441783070, 1441783070),
(98, '42c07a8e24cc55814d75a702f46f970e', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.03220000 1441783241', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.85 Safari\\/537.36","platform":"Mac OS X","browser":"Chrome"}', 0, 1, 1441783241, 1441783241),
(99, 'ed63a6bd777dfd4dd0ec91705e7a4f0b', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.60402900 1441784009', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441784009, 0),
(100, '2f3d7882a2017d4d7dd830e462b4b065', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.48337600 1441784120', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441784120, 1441784120),
(101, 'f6cd60aa65c37811cf6b44f195ad308c', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.30923300 1441784280', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.85 Safari\\/537.36","platform":"Mac OS X","browser":"Chrome"}', 0, 1, 1441784280, 1441784280),
(102, '7b6c1ac9c6306d5eb52558e8b23689a6', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.26368500 1441784907', '139.0.26.20', 'https://apps.facebook.com/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.85 Safari\\/537.36","platform":"Mac OS X","browser":"Chrome"}', 0, 1, 1441784907, 1441784907),
(103, '60ee3e868f8bbb756d5d1dc883af13b9', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.23646700 1441784961', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441784961, 1441784961),
(104, '701142e008e83298dac3895bedaa811b', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.06779500 1441785621', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441785621, 1441785621),
(105, '3ad72c5fe40d1615d268bc17044c050a', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.42276100 1441786219', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441786219, 1441786219),
(106, '57e4d30321fb3f87d44a625edb63a11c', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.31143200 1441787702', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441787702, 1441787702),
(107, '79ec15ab6907a5c3f9c47f9ada5fa30e', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.63421500 1441787918', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.85 Safari\\/537.36","platform":"Mac OS X","browser":"Chrome"}', 0, 1, 1441787918, 0),
(108, 'f4c380015a961e3b50f5ccc9493b1af6', 'https://www.mypockyid.com/pockymatcha/account/dashboard', 0, 0, '', 0, '0.50920300 1441788410', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441788410, 1441788410),
(109, '80532e0425194622a72332be74125521', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.62439000 1441788192', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441788192, 0),
(110, '5652da0ac4aba61b50c9fd24c14b22d2', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.41543700 1441788397', '173.252.112.111', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788397, 0),
(111, '7c045d164fdba4582667503d6c28b64d', 'https://www.mypockyid.com/pockymatcha/account/register', 0, 0, '', 0, '0.47371100 1441788593', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441788593, 1441788593),
(113, '133034c852ae23b78f07ae81b91ec894', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.98020800 1441788528', '173.252.112.116', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788529, 0),
(112, '85c19be9ea3b89494c707483dac6b321', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.29538100 1441788492', '173.252.112.113', '', '', '{"user_agent":"facebookexternalhit\\/1.1 (+http:\\/\\/www.facebook.com\\/externalhit_uatext.php)","platform":"Unknown Platform","browser":""}', 0, 1, 1441788492, 0),
(114, '1326a41d27caec6bc6f00db3cbcd89b3', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.33176500 1441788574', '173.252.112.97', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788574, 0),
(115, 'b4e394674eda70644fd54ded9cecd27b', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.03766900 1441788808', '173.252.112.118', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788808, 0),
(116, 'c6e7eff13c5a3976b0fc8f011dd16942', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.43599100 1441788942', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441788942, 1441788942),
(117, '6551508df2768f10c5b3fdf355059f14', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.13300600 1441788849', '173.252.112.115', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788849, 0),
(118, '9fee13824bfe07225d128469d4e60bf0', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.12039300 1441788963', '173.252.112.106', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441788963, 0),
(119, 'f1125a40150acef44be4e2c4a8484e34', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.93451500 1441789919', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/read/prize', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441789920, 1441789920),
(120, 'c6956ea8c2916a386e36797448f4efa3', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.42974700 1441790240', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/read/prize', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441790240, 1441790240),
(121, '01a6afebb85910257710e0d057927b5c', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.79140100 1441790603', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/read/mechanism', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441790603, 1441790603),
(122, '25c2db25db5f7aad68aea5be474286d9', 'https://www.mypockyid.com/pockymatcha/read/mechanism', 0, 0, '', 0, '0.43050000 1441790373', '173.252.112.117', '', '', '{"user_agent":"facebookexternalhit\\/1.1 (+http:\\/\\/www.facebook.com\\/externalhit_uatext.php)","platform":"Unknown Platform","browser":""}', 0, 1, 1441790373, 0),
(123, '631c369c805ac8f861ef29d07a094e8c', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.90271900 1441790742', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/read/mechanism', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441790743, 1441790743),
(124, '74865048d27a456fae2dd32b64b3a1f7', 'https://www.mypockyid.com/pockymatcha/mechanism/view/via-facebook', 0, 0, '', 0, '0.87059100 1441791825', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/read/mechanism', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441791826, 1441791826),
(125, '28a3582220e326e7c1697957b6d8cfb3', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.93878100 1441792010', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441792011, 1441792011),
(126, '7acde00ea88ac36fa2252be205bbd05c', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.61080800 1441793394', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441793394, 1441793394),
(127, '491243b6dfbab11f3e8471a6b854fcbb', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.07061100 1441793686', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441793686, 1441793686),
(128, 'bd7070c5d97400694b5bdfd1edbef2cd', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.68249900 1441793979', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441793979, 1441793979),
(129, '983935843f6bd638d748328369bbf59d', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.73453800 1441794386', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441794386, 1441794386),
(130, '6551aa948a157624f40732431ef23796', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.32682900 1441795200', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441795200, 1441795200),
(131, '61db8f0443ed5be8904da715e08c6861', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.96240400 1441795665', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441795666, 1441795666),
(132, '7c06b39929207298b3b760544f1ebdda', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.61750400 1441795803', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441795803, 1441795803),
(133, 'b40381a676550614147714f4ae2d58ea', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.52858200 1441809723', '66.249.71.137', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441809723, 0),
(134, '870e30c66f1eddc5fe0e18025013efeb', 'https://www.mypockyid.com/pockymatcha/read/prize', 0, 0, '', 0, '0.01559300 1441809995', '66.249.71.245', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441809995, 0),
(135, '8785dca1e376dead1484f3866cfda564', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.71022700 1441810021', '66.249.71.148', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810021, 0),
(136, '3a76c7012d815ae4f08bea3db7b04fe1', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.32507300 1441810076', '66.249.71.137', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810076, 0),
(137, 'ed2aa035e29a6b062dcd731a93e42656', 'https://www.mypockyid.com/pockymatcha/read/mechanism', 0, 0, '', 0, '0.62049300 1441810125', '66.249.71.137', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810125, 0),
(138, '72714c7d85f4fc35fb5835bb94ea25ce', 'https://www.mypockyid.com/pockymatcha/quest/gallery', 0, 0, '', 0, '0.12018500 1441810198', '66.249.71.245', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810198, 0),
(139, 'f012cee39eba19eabfe5bf4f3f46e895', 'https://www.mypockyid.com/pockymatcha/hauth/login/Facebook', 0, 0, '', 0, '0.41819600 1441810266', '66.249.71.245', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810266, 0),
(140, 'f8dc5c154ae595c34459626869e2980d', 'https://www.mypockyid.com/pockymatcha/hauth/endpoint', 0, 0, '', 0, '0.17908600 1441810270', '66.249.71.245', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810270, 0),
(141, '32f341997c0bbbe3de4efb207cb1650a', 'https://www.mypockyid.com/pockymatcha/mechanism/view/via-facebook', 0, 0, '', 0, '0.87084100 1441810281', '66.249.79.134', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810281, 0),
(142, '7811a770256719d07c533741862911fe', 'https://www.mypockyid.com/pockymatcha/mechanism/view/via-pos', 0, 0, '', 0, '0.11970700 1441810481', '66.249.71.245', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Googlebot\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1441810481, 0),
(143, 'c923f7786ff26854b43f4f96db1fcdad', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.82933400 1441810834', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441810834, 1441810834),
(144, 'b87f13e5eaaab62f2ae71cd8fd063b23', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.47196500 1441843855', '195.154.156.209', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1441843863, 0),
(145, '733a9d8e5c3f8a4c91f94cff380384f9', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.39372500 1441865846', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441865846, 1441865846),
(146, 'c4995c82ae9fd845b8cfa31313bea437', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.57145100 1441866199', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441866199, 0),
(147, '9edd965b0f49b38fa69224a23a56d83e', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.96500900 1441869919', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441869920, 1441869920),
(148, '7f106c4d996b5da43fcd82ab9ad694ce', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.70002400 1441869939', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441869939, 0),
(149, 'c3bf1649c55e34cdb1e9c75e8ae938fa', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.34510900 1441870670', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441870670, 1441870670),
(150, '58e60fe1c0cd069fafb87c7fb01e99fd', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.57798200 1441871497', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.85 Safari\\/537.36","platform":"Mac OS X","browser":"Chrome"}', 0, 1, 1441871497, 1441871497);
INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `geolocation`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(151, 'd2e6a538965bedce18d0545bc2d2158c', 'https://mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.57978300 1441871675', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441871675, 1441871675),
(152, '1ff3b2ae67d86897f84d0fe22a4b1eaf', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.15248000 1441871725', '173.252.112.113', '', '', '{"user_agent":null,"platform":"","browser":""}', 0, 1, 1441871725, 0),
(153, '57b917867ac7cc3c58156351c288b3e3', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.87503900 1441877330', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441877330, 1441877330),
(154, '6779adca8f84cbf9acf45ddb929cefb3', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.58778100 1441879410', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441879410, 1441879410),
(155, 'c3c9873dfff73ae67e080a820af41621', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.58133100 1441894064', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441894064, 0),
(156, '3184164b462333f175d288b5b5fbe5b6', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.46835200 1441900156', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441900156, 1441900156),
(157, '306bce54d0df742a5c3275a92043ef35', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.38219100 1441900265', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441900265, 1441900265),
(158, '66f266b7069b666349ed1d6f45a898fe', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.29965400 1441924589', '212.83.177.193', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1441924589, 0),
(159, 'ec68446824e6ee6f538d564f28c823a1', 'https://180.235.151.42/pockymatcha/', 0, 0, '', 0, '0.81002200 1441935942', '208.90.57.196', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko\\/20100101 Firefox\\/31.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441935942, 0),
(160, '8580a0a3270a8fb7d3d8c45a50a8eb5d', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.77493100 1441958710', '139.0.26.20', '', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441958719, 0),
(161, '28ad45773056f8c75d2649e8634a0f5e', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.69143900 1441958742', '139.0.26.20', 'https://apps.facebook.com', '', '{"user_agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10.7; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Mac OS X","browser":"Firefox"}', 0, 1, 1441958742, 0),
(162, 'ded43d6e8e07ae6dd0d18000bfa2b371', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.01057100 1441959001', '139.0.26.20', 'https://www.mypockyid.com/pockymatcha/', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1441959001, 1441959001),
(163, '2b991987b082f9bd47aaf02098913ba9', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.58076200 1441995267', '173.252.112.109', '', '', '{"user_agent":"facebookexternalhit\\/1.1 (+http:\\/\\/www.facebook.com\\/externalhit_uatext.php)","platform":"Unknown Platform","browser":""}', 0, 1, 1441995276, 0),
(164, '376d1c29ded5d313ce7a3444f7fabdb6', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.58114200 1441995267', '173.252.112.104', '', '', '{"user_agent":"facebookexternalhit\\/1.1 (+http:\\/\\/www.facebook.com\\/externalhit_uatext.php)","platform":"Unknown Platform","browser":""}', 0, 1, 1441995276, 0),
(165, 'fc17a0609b7b620431cb5d62fd2dbffa', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.28812100 1441995490', '112.215.64.69', 'https://www.mypockyid.com/pockymatcha/quest', '', '{"user_agent":"Mozilla\\/5.0 (Linux; Android 5.0; K012 Build\\/LRX21V) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/45.0.2454.84 Safari\\/537.36","platform":"Linux","browser":"Chrome"}', 0, 1, 1441995490, 1441995490),
(166, 'a62cbd64060933794b7ab767c4fc789d', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.96053800 1442042090', '62.210.90.118', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442042091, 0),
(167, 'c5b7aee8e77d4f0d01fcc8344a68e578', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.77945500 1442076461', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076479, 0),
(168, 'dcd709ffe4d787ba68a292bd99306782', 'https://www.mypockyid.com/pockymatcha/quest', 0, 0, '', 0, '0.44879600 1442076481', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076481, 0),
(169, '29376acdb79558d6b126e1645f18e686', 'https://www.mypockyid.com/pockymatcha/read/prize', 0, 0, '', 0, '0.23789300 1442076510', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076512, 0),
(170, '9b74a7204b650b21a838a941d0f7496c', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.48104400 1442076514', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076514, 0),
(171, 'dcdd0a7d128b383dbc331c868a40375c', 'https://www.mypockyid.com/pockymatcha/read/mechanism', 0, 0, '', 0, '0.44774400 1442076514', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076514, 0),
(172, 'cb6f229848d18648d3fc76883b2ca005', 'https://www.mypockyid.com/pockymatcha/mechanism/view/via-facebook', 0, 0, '', 0, '0.07566600 1442076548', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076548, 0),
(173, 'c7bdc42ad4f63c6c110495cc339e38a2', 'https://www.mypockyid.com/pockymatcha/mechanism/view/via-pos', 0, 0, '', 0, '0.59105200 1442076584', '64.79.85.205', '', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1) (compatible; SMTBot\\/1.0; +http:\\/\\/www.similartech.com\\/smtbot)","platform":"Unknown Windows OS","browser":"Mozilla"}', 0, 1, 1442076585, 0),
(174, '494d08362060f0fd4a1c8d7eb18cabb1', 'https://www.mypockyid.com/pockymatcha/read/mechanism', 0, 0, '', 0, '0.69922000 1442077350', '213.202.222.167', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442077350, 0),
(175, '565dd7557605e41b2c2dcc9286e21c21', 'https://www.mypockyid.com/pockymatcha/read/prize', 0, 0, '', 0, '0.21408700 1442077353', '213.202.222.167', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442077353, 0),
(176, '322cca271fc83350db4e5ddbb59959ba', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.50246300 1442077355', '213.202.222.167', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442077355, 0),
(177, '0f5e580d76d2aa5240f009ce18eecbe4', 'https://www.mypockyid.com/pockymatcha/read/mechanism', 0, 0, '', 0, '0.70399300 1442097995', '76.29.80.211', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442098003, 0),
(178, '9d23d17277a771bf762e166fcf3088a5', 'https://www.mypockyid.com/pockymatcha/read/prize', 0, 0, '', 0, '0.53690800 1442098006', '76.29.80.211', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442098006, 0),
(179, '8c5c7cf6896432b1bdf4111c881f1d2c', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.09807900 1442147884', '120.169.255.171', 'https://www.mypockyid.com/', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko\\/20100101 Firefox\\/40.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1442147891, 0),
(180, '846d4cec696dc8f3a449a549d1341e40', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.18879000 1442161948', '178.63.13.15', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442161957, 0),
(181, 'ad790d2fcfce222ff8d3bcdf058e1117', 'https://www.mypockyid.com/pockymatcha/read/terms', 0, 0, '', 0, '0.66168600 1442161961', '178.63.13.15', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; MJ12bot\\/v1.4.5; http:\\/\\/www.majestic12.co.uk\\/bot.php?+)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442161961, 0),
(182, 'bb4e28d11cd466c50fe5bff82b859c6b', 'https://www.buttmkp.org/pockymatcha/', 0, 0, '', 0, '0.37743900 1442189610', '180.76.15.30', '', '', '{"user_agent":"Mozilla\\/5.0 (compatible; Baiduspider\\/2.0; +http:\\/\\/www.baidu.com\\/search\\/spider.html)","platform":"Unknown Platform","browser":"Mozilla"}', 0, 1, 1442189619, 0),
(183, '352df90e227d4dbcb3a2d923c42e4829', 'https://www.mypockyid.com/pockymatcha/', 0, 0, '', 0, '0.89143900 1442203396', '66.249.64.83', '', '', '{"user_agent":"DoCoMo\\/2.0 N905i(c100;TB;W24H16) (compatible; Googlebot-Mobile\\/2.1; +http:\\/\\/www.google.com\\/bot.html)","platform":"Unknown Platform","browser":""}', 0, 1, 1442203397, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `input_type` enum('input','textarea','radio','dropdown','timezones') DEFAULT NULL,
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `show_editor` enum('0','1') DEFAULT NULL,
  `is_numeric` enum('0','1') DEFAULT NULL,
  `help_text` varchar(512) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `input_type`, `input_size`, `show_editor`, `is_numeric`, `help_text`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', '&dash;', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '&dash;', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 522.3715', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'It''s Matcha Time', 1, NULL, NULL, NULL, NULL, '', 1, NULL, 1441699296),
(12, 'title_name', 'Company Title Name', 'My Pocky', 1, NULL, NULL, NULL, NULL, '', 1, NULL, 1441699248),
(13, 'site_logo', 'Site Logo', 'logo.png', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(14, 'language', 'Default Site Language', 'en', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(15, 'counter', 'Site Counter', '123', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(16, 'copyright', 'Copyright', '© 2015 Pocky. All Rights Reserved.', 1, NULL, NULL, NULL, NULL, '', 1, NULL, 1441698811),
(17, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(18, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(19, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(20, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(21, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(22, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(23, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(24, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(25, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(26, 'google_analytics', 'Analytics', 'Code Snippet', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(27, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_urbans`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_urbans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `urban_district_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urban_districts`
--

CREATE TABLE IF NOT EXISTS `tbl_urban_districts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(160) NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `is_system` tinyint(3) NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL,
  `logged_in` int(1) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL,
  `verify` varchar(8) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`,`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `password`, `username`, `group_id`, `is_system`, `last_login`, `logged_in`, `session_id`, `verify`, `status`, `added`, `modified`) VALUES
(1, 'admin@admin.com', 'a03c997e5e5643a11d77287d82856b9f83bd8fe4', 'admin', 1, 1, 1441788111, 1, '306bce54d0df742a5c3275a92043ef35', 'Q12C', 1, 1441192955, 0),
(2, 'administrator', '12506e739378348ec662bb015bfd2288362dcc1c', 'Administrator', 2, 1, 0, 1441192955, '', 'Q12C', 1, 1441192955, 0),
(3, 'user@testing.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'User', 99, 0, 0, 1441192955, '', 'Q12C', 1, 1441192955, 0),
(4, 'employee@employee.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'Employee Staff', 100, 0, 0, 1441192955, '', 'Q12C', 1, 1441192955, 0),
(5, 'admin@admin.com', 'a03c997e5e5643a11d77287d82856b9f83bd8fe4', 'admin', 1, 1, 0, 1441192956, '', 'Q12C', 1, 1441192956, 0),
(6, 'administrator', '12506e739378348ec662bb015bfd2288362dcc1c', 'Administrator', 2, 1, 0, 1441192956, '', 'Q12C', 1, 1441192956, 0),
(7, 'user@testing.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'User', 99, 0, 0, 1441192956, '', 'Q12C', 1, 1441192956, 0),
(8, 'employee@employee.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'Employee Staff', 100, 0, 0, 1441192956, '', 'Q12C', 1, 1441192956, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1441192956, 0),
(2, 'Administrator', 1, 0, 1, 1, 1441192956, 0),
(99, 'User', 0, 0, 1, 1, 1441192956, 0),
(100, 'Employee', 0, 0, 1, 1, 1441192956, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1441192956),
(2, 'user', 1, 'history', 'index', 1441192956);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 'male', 'Superadmin of this Website', 'Developer', 'Website', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '', '0', 'http://-', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1283831030),
(2, 'male', 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '', '0', '-', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1283831030),
(3, 'male', 'User of this Website', '', '', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '1234', '', '', '', 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1285152397, 0),
(4, 'male', '', '', 'Jakarta', '', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '081807244697', '', '', '', 'image/jpeg', 'eb068fc7204f01f8cd25375b42fc6953.jpg', 1, 1285152397, 1326110970),
(5, 'male', '', '', 'mimipopo', '', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '081807244697', '', '', '', 'image/jpeg', 'eb068fc7204f01f8cd25375b42fc6953.jpg', 1, 1285152397, 1326110970),
(111, 'male', '', 'Web Developer', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 1, 1333442128, 1333442192),
(110, 'male', '', 'Web Developer', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 1, 1333441986, 1333442058);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
