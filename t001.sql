-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-08-23 13:39:15
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `t001`
--

-- --------------------------------------------------------

--
-- 表的结构 `dept`
--

CREATE TABLE `dept` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `dept`
--

INSERT INTO `dept` (`id`, `name`, `remark`) VALUES
(1, '事业部', '事业部门'),
(2, '医疗部', '医疗部门');

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `type` int(11) DEFAULT NULL COMMENT '1-简单的公告，2富文本'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `name`, `content`, `img`, `type`) VALUES
(17, '开会公告', '<p>啊实打实</p>', 'http://localhost:9090/file/de7250a143884212802888ac42ed8da9.png', 2),
(18, '11', '<p>11123223</p><p><br/></p><p>12312312<br/><img src=\"http://localhost:9090/file/d2423bb5ff6e4d8e9b35efc9d67c5d0c.png\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', 'http://localhost:9090/file/d1f0b68c19bf4e3bbd28214272962451.png', 2);

-- --------------------------------------------------------

--
-- 表的结构 `personfile`
--

CREATE TABLE `personfile` (
  `id` int(11) NOT NULL,
  `hiretime` timestamp NULL DEFAULT NULL COMMENT '入职日期',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '身份证',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '照片',
  `salary` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '员工姓名',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '员工编号',
  `userid` int(11) DEFAULT NULL COMMENT '关联员工的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `personfile`
--

INSERT INTO `personfile` (`id`, `hiretime`, `idcard`, `avatar_url`, `salary`, `name`, `number`, `userid`) VALUES
(8, '2024-08-20 16:00:00', '3309123123123', '', '10000.00', 'zhang', '123123', 2),
(9, '2024-08-06 16:00:00', '12312', '', '21111.00', 'test', '1231', 4),
(10, '2024-08-06 16:00:00', '12', '', '12.00', 'qq', '111', 5),
(11, '2024-08-06 16:00:00', '23123289u82', '', '12000.00', 'wang', '1000', 3);

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict`
--

CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_dict`
--

INSERT INTO `sys_dict` (`id`, `name`, `value`, `type`) VALUES
(1, 'user', 'el-icon-user', 'icon'),
(2, 'house', 'el-icon-house', 'icon'),
(3, 'menu', 'el-icon-menu', 'icon'),
(4, 's-custom', 'el-icon-s-custom', 'icon'),
(5, 's-grid', 'el-icon-s-grid', 'icon'),
(6, 'document', 'el-icon-document', 'icon'),
(7, 'coffee', 'el-icon-coffee\r\n', 'icon'),
(8, 's-marketing', 'el-icon-s-marketing', 'icon'),
(9, 'phone-outline', 'el-icon-phone-outline', 'icon'),
(10, 'platform-eleme', 'el-icon-platform-eleme', 'icon'),
(11, 'eleme', 'el-icon-eleme', 'icon'),
(12, 'delete-solid', 'el-icon-delete-solid', 'icon'),
(13, 'delete', 'el-icon-delete', 'icon'),
(14, 's-tools', 'el-icon-s-tools', 'icon'),
(15, 'setting', 'el-icon-setting', 'icon'),
(16, 'user-solid', 'el-icon-user-solid', 'icon'),
(17, 'phone', 'el-icon-phone', 'icon'),
(18, 'more', 'el-icon-more', 'icon'),
(19, 'more-outline', 'el-icon-more-outline', 'icon'),
(20, 'star-on', 'el-icon-star-on', 'icon'),
(21, 'star-off', 'el-icon-star-off', 'icon'),
(22, 's-goods', 'el-icon-s-goods', 'icon'),
(23, 'goods', 'el-icon-goods', 'icon'),
(24, 'warning', 'el-icon-warning', 'icon'),
(25, 'warning-outline', 'el-icon-warning-outline', 'icon'),
(26, 'question', 'el-icon-question', 'icon'),
(27, 'info', 'el-icon-info', 'icon'),
(28, 'remove', 'el-icon-remove', 'icon'),
(29, 'circle-plus', 'el-icon-circle-plus', 'icon'),
(30, 'success', 'el-icon-success', 'icon'),
(31, 'error', 'el-icon-error', 'icon'),
(32, 'zoom-in', 'el-icon-zoom-in', 'icon'),
(33, 'zoom-out', 'el-icon-zoom-out', 'icon'),
(34, 'remove-outline', 'el-icon-remove-outline', 'icon'),
(35, 'circle-plus-outline', 'el-icon-circle-plus-outline', 'icon'),
(36, 'circle-check', 'el-icon-circle-check', 'icon'),
(37, 'circle-close', 'el-icon-circle-close', 'icon'),
(38, 's-help', 'el-icon-s-help', 'icon'),
(39, 'help', 'el-icon-help', 'icon'),
(40, 'minus', 'el-icon-minus', 'icon'),
(41, 'plus', 'el-icon-plus', 'icon'),
(42, 'check', 'el-icon-check', 'icon'),
(43, 'close', 'el-icon-close', 'icon'),
(44, 'picture', 'el-icon-picture', 'icon'),
(45, 'picture-outline', 'el-icon-picture-outline', 'icon'),
(46, 'picture-outline-round', 'el-icon-picture-outline-round', 'icon'),
(47, 'upload', 'el-icon-upload', 'icon'),
(48, 'upload2', 'el-icon-upload2', 'icon'),
(49, 'download', 'el-icon-download', 'icon'),
(50, 'camera-solid', 'el-icon-camera-solid', 'icon'),
(51, 'camera', 'el-icon-camera', 'icon'),
(52, 'video-camera-solid', 'el-icon-video-camera-solid', 'icon'),
(53, 'video-camera', 'el-icon-video-camera', 'icon'),
(54, 'message-solid', 'el-icon-message-solid', 'icon'),
(55, 'bell', 'el-icon-bell', 'icon'),
(56, 's-cooperation', 'el-icon-s-cooperation', 'icon'),
(57, 's-order', 'el-icon-s-order', 'icon'),
(58, 's-platform', 'el-icon-s-platform', 'icon'),
(59, 's-fold', 'el-icon-s-fold', 'icon'),
(60, 's-unfold', 'el-icon-s-unfold', 'icon'),
(61, 's-operation', 'el-icon-s-operation', 'icon'),
(62, 's-promotion', 'el-icon-s-promotion', 'icon'),
(63, 's-home', 'el-icon-s-home', 'icon'),
(64, 's-release', 'el-icon-s-release', 'icon'),
(65, 's-ticket', 'el-icon-s-ticket', 'icon'),
(66, 's-management', 'el-icon-s-management', 'icon'),
(67, 's-open', 'el-icon-s-open', 'icon'),
(68, 's-shop', 'el-icon-s-shop', 'icon'),
(69, 's-flag', 'el-icon-s-flag', 'icon'),
(70, 's-comment', 'el-icon-s-comment', 'icon'),
(71, 's-finance', 'el-icon-s-finance', 'icon'),
(72, 's-claim', 'el-icon-s-claim', 'icon'),
(73, 's-opportunity', 'el-icon-s-opportunity', 'icon'),
(74, 's-data', 'el-icon-s-data', 'icon'),
(75, 's-check', 'el-icon-s-check', 'icon'),
(76, 'share', 'el-icon-share', 'icon'),
(77, 'd-caret', 'el-icon-d-caret', 'icon'),
(78, 'caret-left', 'el-icon-caret-left', 'icon'),
(79, 'caret-right', 'el-icon-caret-right', 'icon'),
(80, 'caret-bottom', 'el-icon-caret-bottom', 'icon'),
(81, 'caret-top', 'el-icon-caret-top', 'icon'),
(82, 'bottom-left', 'el-icon-bottom-left', 'icon'),
(83, 'bottom-right', 'el-icon-bottom-right', 'icon'),
(84, 'back', 'el-icon-back', 'icon'),
(85, 'right', 'el-icon-right', 'icon'),
(86, 'bottom', 'el-icon-bottom', 'icon'),
(87, 'top', 'el-icon-top', 'icon'),
(88, 'top-left', 'el-icon-top-left', 'icon'),
(89, 'top-right', 'el-icon-top-right', 'icon'),
(90, 'arrow-left', 'el-icon-arrow-left', 'icon'),
(91, 'arrow-right', 'el-icon-arrow-right', 'icon'),
(92, 'arrow-down', 'el-icon-arrow-down', 'icon'),
(93, 'arrow-up', 'el-icon-arrow-up', 'icon'),
(94, 'd-arrow-left', 'el-icon-d-arrow-left', 'icon'),
(95, 'd-arrow-right', 'el-icon-d-arrow-right', 'icon'),
(96, 'video-pause', 'el-icon-video-pause', 'icon'),
(97, 'video-play', 'el-icon-video-play', 'icon'),
(98, 'refresh', 'el-icon-refresh', 'icon'),
(99, 'refresh-right', 'el-icon-refresh-right', 'icon'),
(100, 'refresh-left', 'el-icon-refresh-left', 'icon'),
(101, 'finished', 'el-icon-finished', 'icon'),
(102, 'sort', 'el-icon-sort', 'icon'),
(103, 'sort-up', 'el-icon-sort-up', 'icon'),
(104, 'sort-down', 'el-icon-sort-down', 'icon'),
(105, 'rank', 'el-icon-rank', 'icon'),
(106, 'loading', 'el-icon-loading', 'icon'),
(107, 'view', 'el-icon-view', 'icon'),
(108, 'c-scale-to-original', 'el-icon-c-scale-to-original', 'icon'),
(109, 'date', 'el-icon-date', 'icon'),
(110, 'edit', 'el-icon-edit', 'icon'),
(111, 'edit-outline', 'el-icon-edit-outline', 'icon'),
(112, 'folder', 'el-icon-folder', 'icon'),
(113, 'folder-opened', 'el-icon-folder-opened', 'icon'),
(114, 'folder-add', 'el-icon-folder-add', 'icon'),
(115, 'folder-remove', 'el-icon-folder-remove', 'icon'),
(116, 'folder-delete', 'el-icon-folder-delete', 'icon'),
(117, 'folder-checked', 'el-icon-folder-checked', 'icon'),
(118, 'tickets', 'el-icon-tickets', 'icon'),
(119, 'document-remove', 'el-icon-document-remove', 'icon'),
(120, 'document-delete', 'el-icon-document-delete', 'icon'),
(121, 'document-copy', 'el-icon-document-copy', 'icon'),
(122, 'document-checked', 'el-icon-document-checked', 'icon'),
(123, 'document-add', 'el-icon-document-add', 'icon'),
(124, 'printer', 'el-icon-printer', 'icon'),
(125, 'paperclip', 'el-icon-paperclip', 'icon'),
(126, 'takeaway-box', 'el-icon-takeaway-box', 'icon'),
(127, 'search', 'el-icon-search', 'icon'),
(128, 'monitor', 'el-icon-monitor', 'icon'),
(129, 'attract', 'el-icon-attract', 'icon'),
(130, 'mobile', 'el-icon-mobile', 'icon'),
(131, 'scissors', 'el-icon-scissors', 'icon'),
(132, 'umbrella', 'el-icon-umbrella', 'icon'),
(133, 'headset', 'el-icon-headset', 'icon'),
(134, 'brush', 'el-icon-brush', 'icon'),
(135, 'mouse', 'el-icon-mouse', 'icon'),
(136, 'coordinate', 'el-icon-coordinate', 'icon'),
(137, 'magic-stick', 'el-icon-magic-stick', 'icon'),
(138, 'reading', 'el-icon-reading', 'icon'),
(139, 'data-line', 'el-icon-data-line', 'icon'),
(140, 'data-board', 'el-icon-data-board', 'icon'),
(141, 'pie-chart', 'el-icon-pie-chart', 'icon'),
(142, 'data-analysis', 'el-icon-data-analysis', 'icon'),
(143, 'collection-tag', 'el-icon-collection-tag', 'icon'),
(144, 'film', 'el-icon-film', 'icon'),
(145, 'suitcase', 'el-icon-suitcase', 'icon'),
(146, 'suitcase-1', 'el-icon-suitcase-1', 'icon'),
(147, 'receiving', 'el-icon-receiving', 'icon'),
(148, 'collection', 'el-icon-collection', 'icon'),
(149, 'files', 'el-icon-files', 'icon'),
(150, 'notebook-1', 'el-icon-notebook-1', 'icon'),
(151, 'notebook-2', 'el-icon-notebook-2', 'icon'),
(152, 'toilet-paper', 'el-icon-toilet-paper', 'icon'),
(153, 'office-building', 'el-icon-office-building', 'icon'),
(154, 'school', 'el-icon-school', 'icon'),
(155, 'table-lamp', 'el-icon-table-lamp', 'icon'),
(156, 'no-smoking', 'el-icon-no-smoking', 'icon'),
(157, 'smoking', 'el-icon-smoking', 'icon'),
(158, 'shopping-cart-full', 'el-icon-shopping-cart-full', 'icon'),
(159, 'shopping-cart-1', 'el-icon-shopping-cart-1', 'icon'),
(160, 'shopping-cart-2', 'el-icon-shopping-cart-2', 'icon'),
(161, 'shopping-bag-1', 'el-icon-shopping-bag-1', 'icon'),
(162, 'shopping-bag-2', 'el-icon-shopping-bag-2', 'icon'),
(163, 'sold-out', 'el-icon-sold-out', 'icon'),
(164, 'sell', 'el-icon-sell', 'icon'),
(165, 'present', 'el-icon-present', 'icon'),
(166, 'box', 'el-icon-box', 'icon'),
(167, 'bank-card', 'el-icon-bank-card', 'icon'),
(168, 'money', 'el-icon-money', 'icon'),
(169, 'coin', 'el-icon-coin', 'icon'),
(170, 'wallet', 'el-icon-wallet', 'icon'),
(171, 'discount', 'el-icon-discount', 'icon'),
(172, 'price-tag', 'el-icon-price-tag', 'icon'),
(173, 'news', 'el-icon-news', 'icon'),
(174, 'guide', 'el-icon-guide', 'icon'),
(175, 'male', 'el-icon-male', 'icon'),
(176, 'female', 'el-icon-female', 'icon'),
(177, 'thumb', 'el-icon-thumb', 'icon'),
(178, 'cpu', 'el-icon-cpu', 'icon'),
(179, 'link', 'el-icon-link', 'icon'),
(180, 'connection', 'el-icon-connection', 'icon'),
(181, 'open', 'el-icon-open', 'icon'),
(182, 'turn-off', 'el-icon-turn-off', 'icon'),
(183, 'set-up', 'el-icon-set-up', 'icon'),
(184, 'chat-round', 'el-icon-chat-round', 'icon'),
(185, 'chat-line-round', 'el-icon-chat-line-round', 'icon'),
(186, 'chat-square', 'el-icon-chat-square', 'icon'),
(187, 'chat-dot-round', 'el-icon-chat-dot-round', 'icon'),
(188, 'chat-dot-square', 'el-icon-chat-dot-square', 'icon'),
(189, 'chat-line-square', 'el-icon-chat-line-square', 'icon'),
(190, 'message', 'el-icon-message', 'icon'),
(191, 'postcard', 'el-icon-postcard', 'icon'),
(192, 'position', 'el-icon-position', 'icon'),
(193, 'turn-off-microphone', 'el-icon-turn-off-microphone', 'icon'),
(194, 'microphone', 'el-icon-microphone', 'icon'),
(195, 'close-notification', 'el-icon-close-notification', 'icon'),
(196, 'bangzhu', 'el-icon-bangzhu', 'icon'),
(197, 'time', 'el-icon-time', 'icon'),
(198, 'odometer', 'el-icon-odometer', 'icon'),
(199, 'crop', 'el-icon-crop', 'icon'),
(200, 'aim', 'el-icon-aim', 'icon'),
(201, 'switch-button', 'el-icon-switch-button', 'icon'),
(202, 'full-screen', 'el-icon-full-screen', 'icon'),
(203, 'copy-document', 'el-icon-copy-document', 'icon'),
(204, 'mic', 'el-icon-mic', 'icon'),
(205, 'stopwatch', 'el-icon-stopwatch', 'icon'),
(206, 'medal-1', 'el-icon-medal-1', 'icon'),
(207, 'medal', 'el-icon-medal', 'icon'),
(208, 'trophy', 'el-icon-trophy', 'icon'),
(209, 'trophy-1', 'el-icon-trophy-1', 'icon'),
(210, 'first-aid-kit', 'el-icon-first-aid-kit', 'icon'),
(211, 'discover', 'el-icon-discover', 'icon'),
(212, 'place', 'el-icon-place', 'icon'),
(213, 'location', 'el-icon-location', 'icon'),
(214, 'location-outline', 'el-icon-location-outline', 'icon'),
(215, 'location-information', 'el-icon-location-information', 'icon'),
(216, 'add-location', 'el-icon-add-location', 'icon'),
(217, 'delete-location', 'el-icon-delete-location', 'icon'),
(218, 'map-location', 'el-icon-map-location', 'icon'),
(219, 'alarm-clock', 'el-icon-alarm-clock', 'icon'),
(220, 'timer', 'el-icon-timer', 'icon'),
(221, 'watch-1', 'el-icon-watch-1', 'icon'),
(222, 'watch', 'el-icon-watch', 'icon'),
(223, 'lock', 'el-icon-lock', 'icon'),
(224, 'unlock', 'el-icon-unlock', 'icon'),
(225, 'key', 'el-icon-key', 'icon'),
(226, 'service', 'el-icon-service', 'icon'),
(227, 'mobile-phone', 'el-icon-mobile-phone', 'icon'),
(228, 'bicycle', 'el-icon-bicycle', 'icon'),
(229, 'truck', 'el-icon-truck', 'icon'),
(230, 'ship', 'el-icon-ship', 'icon'),
(231, 'basketball', 'el-icon-basketball', 'icon'),
(232, 'football', 'el-icon-football', 'icon'),
(233, 'soccer', 'el-icon-soccer', 'icon'),
(234, 'baseball', 'el-icon-baseball', 'icon'),
(235, 'wind-power', 'el-icon-wind-power', 'icon'),
(236, 'light-rain', 'el-icon-light-rain', 'icon'),
(237, 'lightning', 'el-icon-lightning', 'icon'),
(238, 'heavy-rain', 'el-icon-heavy-rain', 'icon'),
(239, 'sunrise', 'el-icon-sunrise', 'icon'),
(240, 'sunrise-1', 'el-icon-sunrise-1', 'icon'),
(241, 'sunset', 'el-icon-sunset', 'icon'),
(242, 'sunny', 'el-icon-sunny', 'icon'),
(243, 'cloudy', 'el-icon-cloudy', 'icon'),
(244, 'partly-cloudy', 'el-icon-partly-cloudy', 'icon'),
(245, 'cloudy-and-sunny', 'el-icon-cloudy-and-sunny', 'icon'),
(246, 'moon', 'el-icon-moon', 'icon'),
(247, 'moon-night', 'el-icon-moon-night', 'icon'),
(248, 'dish', 'el-icon-dish', 'icon'),
(249, 'dish-1', 'el-icon-dish-1', 'icon'),
(250, 'food', 'el-icon-food', 'icon'),
(251, 'chicken', 'el-icon-chicken', 'icon'),
(252, 'fork-spoon', 'el-icon-fork-spoon', 'icon'),
(253, 'knife-fork', 'el-icon-knife-fork', 'icon'),
(254, 'burger', 'el-icon-burger', 'icon'),
(255, 'tableware', 'el-icon-tableware', 'icon'),
(256, 'sugar', 'el-icon-sugar', 'icon'),
(257, 'dessert', 'el-icon-dessert', 'icon'),
(258, 'ice-cream', 'el-icon-ice-cream', 'icon'),
(259, 'hot-water', 'el-icon-hot-water', 'icon'),
(260, 'water-cup', 'el-icon-water-cup', 'icon'),
(261, 'coffee-cup', 'el-icon-coffee-cup', 'icon'),
(262, 'cold-drink', 'el-icon-cold-drink', 'icon'),
(263, 'goblet', 'el-icon-goblet', 'icon'),
(264, 'goblet-full', 'el-icon-goblet-full', 'icon'),
(265, 'goblet-square', 'el-icon-goblet-square', 'icon'),
(266, 'goblet-square-full', 'el-icon-goblet-square-full', 'icon'),
(267, 'refrigerator', 'el-icon-refrigerator', 'icon'),
(268, 'grape', 'el-icon-grape', 'icon'),
(269, 'watermelon', 'el-icon-watermelon', 'icon'),
(270, 'cherry', 'el-icon-cherry', 'icon'),
(271, 'apple', 'el-icon-apple', 'icon'),
(272, 'pear', 'el-icon-pear', 'icon'),
(273, 'orange', 'el-icon-orange', 'icon'),
(274, 'ice-tea', 'el-icon-ice-tea', 'icon'),
(275, 'ice-drink', 'el-icon-ice-drink', 'icon'),
(276, 'milk-tea', 'el-icon-milk-tea', 'icon'),
(277, 'potato-strips', 'el-icon-potato-strips', 'icon'),
(278, 'lollipop', 'el-icon-lollipop', 'icon'),
(279, 'ice-cream-square', 'el-icon-ice-cream-square', 'icon'),
(280, 'ice-cream-round', 'el-icon-ice-cream-round', 'icon');

-- --------------------------------------------------------

--
-- 表的结构 `sys_file`
--

CREATE TABLE `sys_file` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否禁用链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_file`
--

INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `md5`, `is_delete`, `enable`) VALUES
(1, 'logo1.png', 'png', 100, 'http://localhost:8881/file/2ce065a81dc84757a5492657385b576c.png', '0f1337b5c0ebf68f67718fcf42d1322f', 0, 1),
(2, 'gloable.css', 'css', 0, 'http://localhost:8881/file/0f7087189573448bb8441ad745e51a77.css', '7f8c8954b30f2550cb2f294d4838a1fa', 0, 1),
(3, 'logo1.png', 'png', 100, 'http://localhost:8881/file/2ce065a81dc84757a5492657385b576c.png', '0f1337b5c0ebf68f67718fcf42d1322f', 0, 1),
(4, '1.jpg', 'jpg', 242, 'http://localhost:8881/file/eca489c25dba446885000f3af83cb1a4.jpg', 'fa214ac0f8634cc3f50d2e3c80460589', 0, 1),
(5, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(6, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(7, '2.jpg', 'jpg', 315, 'http://localhost:8881/file/aaad75557c534c9f8768896ebf06bb6c.jpg', 'a9d92f5c02291ac485b46fd1df5a9247', 0, 1),
(8, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(9, '4.jpg', 'jpg', 277, 'http://localhost:8881/file/370b6c615e1947d085011d8b10f0e98f.jpg', 'd0d496ebd3ada61b3571935236b04a32', 0, 1),
(10, '4.jpg', 'jpg', 277, 'http://localhost:8881/file/370b6c615e1947d085011d8b10f0e98f.jpg', 'd0d496ebd3ada61b3571935236b04a32', 0, 1),
(11, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(12, '5.jpg', 'jpg', 455, 'http://localhost:8881/file/2f41cb48d69746c5a1da36399b775d48.jpg', '765819df4897a8e112f5c962dd36c8a0', 0, 1),
(13, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(14, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(15, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(16, '3.jpg', 'jpg', 210, 'http://localhost:8881/file/2f665e18ae6b42b69331e6a878c4c496.jpg', '3ccaa8f5720f5c24fde6b3cd718df964', 0, 1),
(17, 'fast_index.png', 'png', 52, 'http://localhost:8881/file/b7c1eb87de294dd28bbe7e41e6145e6e.png', '717ab3eb992ac5331e45fe9a592447ba', 0, 1),
(18, 'image-20220514223315944.png', 'png', 28, 'http://localhost:9090/file/063f90d245244c74bd9fb09c0e63e9b8.png', '1f839322143570a7919dfc9a34dbba98', 0, 1),
(19, 'image-20220514223224132.png', 'png', 11, 'http://localhost:9090/file/d2423bb5ff6e4d8e9b35efc9d67c5d0c.png', '2961c58853814248d042220190a29068', 0, 1),
(20, 'image-20220515223042605.png', 'png', 81, 'http://localhost:9090/file/9f22984c99e84d36a7a5593d53fc949b.png', '902a4e021d576bfabf62e75d0a745049', 0, 1),
(21, 'image-20220514223736673.png', 'png', 106, 'http://localhost:9090/file/fb7474b2b1bf4e869ea51a7c77cc343d.png', 'ef6eea0d563358046d2397c28d2745d8', 0, 1),
(22, 'image-20220514223754885.png', 'png', 123, 'http://localhost:9090/file/b52f17092a04462eb68e2c1b830785af.png', '152bf001d3e9fb0bf46bb64f72f47f17', 0, 1),
(23, 'image-20220514223837743.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(24, 'image-20220514223835902.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(25, 'image-20220514223754885.png', 'png', 123, 'http://localhost:9090/file/b52f17092a04462eb68e2c1b830785af.png', '152bf001d3e9fb0bf46bb64f72f47f17', 0, 1),
(26, 'image-20220514223754885.png', 'png', 123, 'http://localhost:9090/file/b52f17092a04462eb68e2c1b830785af.png', '152bf001d3e9fb0bf46bb64f72f47f17', 0, 1),
(27, 'image-20220514223315944.png', 'png', 28, 'http://localhost:9090/file/063f90d245244c74bd9fb09c0e63e9b8.png', '1f839322143570a7919dfc9a34dbba98', 0, 1),
(28, 'image-20220514223736673.png', 'png', 106, 'http://localhost:9090/file/fb7474b2b1bf4e869ea51a7c77cc343d.png', 'ef6eea0d563358046d2397c28d2745d8', 0, 1),
(29, 'image-20220514223736673.png', 'png', 106, 'http://localhost:9090/file/fb7474b2b1bf4e869ea51a7c77cc343d.png', 'ef6eea0d563358046d2397c28d2745d8', 0, 1),
(30, 'image-20220515094651163.png', 'png', 157, 'http://localhost:9090/file/962a8ae386514a4c89d0d084dfd96192.png', '70ebe7c0a179e137d17696a7b8ae2045', 0, 1),
(31, 'image-20220514223835902.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(32, 'image-20220515223042605.png', 'png', 81, 'http://localhost:9090/file/9f22984c99e84d36a7a5593d53fc949b.png', '902a4e021d576bfabf62e75d0a745049', 0, 1),
(33, 'image-20220515094651163.png', 'png', 157, 'http://localhost:9090/file/962a8ae386514a4c89d0d084dfd96192.png', '70ebe7c0a179e137d17696a7b8ae2045', 0, 1),
(34, 'image-20220514223835902.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(35, 'image-20220514223736673.png', 'png', 106, 'http://localhost:9090/file/fb7474b2b1bf4e869ea51a7c77cc343d.png', 'ef6eea0d563358046d2397c28d2745d8', 0, 1),
(36, 'image-20220514223754885.png', 'png', 123, 'http://localhost:9090/file/b52f17092a04462eb68e2c1b830785af.png', '152bf001d3e9fb0bf46bb64f72f47f17', 0, 1),
(37, 'image-20220514223835902.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(38, 'image-20220514223835902.png', 'png', 140, 'http://localhost:9090/file/9a3f354e5ba741c09c292057f73d0f6b.png', '1aeb6876a908b617ec6742e300af8ffc', 0, 1),
(39, 'image-20220514223736673.png', 'png', 106, 'http://localhost:9090/file/fb7474b2b1bf4e869ea51a7c77cc343d.png', 'ef6eea0d563358046d2397c28d2745d8', 0, 1),
(40, '头像V2.png', 'png', 165, 'http://localhost:9090/file/4702397f0518489e8c7e31f09989b271.png', 'bb46dc339fc05fdd1e6a2dfa4ea97658', 0, 1),
(41, '123.png', 'png', 16, 'http://localhost:9090/file/d1f0b68c19bf4e3bbd28214272962451.png', '8e98583c762707d2f94a39946eaeed07', 0, 1),
(42, '1234.png', 'png', 114, 'http://localhost:9090/file/de7250a143884212802888ac42ed8da9.png', '930e2bc04592441fde653f20f5072ef5', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `pid` int(11) DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  `sort_num` int(11) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`, `sort_num`) VALUES
(4, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL, 9999),
(5, '用户管理', '/user', 'el-icon-user', NULL, 4, 'User', 301),
(6, '角色管理', '/role', 'el-icon-s-custom', NULL, 4, 'Role', 302),
(7, '菜单管理', '/menu', 'el-icon-menu', NULL, 4, 'Menu', 303),
(12, '发送邮件管理', '/youjian', 'el-icon-menu', NULL, NULL, 'Youjian', 999),
(13, '人事档案管理', '/personfile', 'el-icon-menu', NULL, NULL, 'Personfile', 999),
(14, '公告管理', '/notice', 'el-icon-menu', NULL, NULL, 'Notice', 999),
(15, '部门管理', '/dept', 'el-icon-menu', NULL, NULL, 'Dept', 999),
(16, '员工管理', '/employee', 'el-icon-user', NULL, NULL, 'Employee', 12),
(17, '聊天室', '/im', 'el-icon-chat-dot-round', NULL, NULL, 'Im', 11),
(18, '主页', '/home', 'el-icon-house', NULL, NULL, 'Home', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_role`
--

INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES
(1, '管理员', '管理员', 'ROLE_ADMIN'),
(2, '普通用户', '普通用户', 'ROLE_USER');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_menu`
--

CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色菜单关系表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_role_menu`
--

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(2, 10),
(2, 17);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user`
--

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `deptname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_user`
--

INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `create_time`, `avatar_url`, `role`, `deptid`, `deptname`) VALUES
(1, 'admin', '123456', '管理员', '2948879210@qq.com', '11111111111', '内蒙古', '2024-08-22 13:10:27', '', 'ROLE_ADMIN', 1, ''),
(2, 'zhang', '123456', '张三', 'zhang@qq.com', '13333333333', '南京', '2022-02-26 14:10:14', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'ROLE_USER', 1, '事业部'),
(6, 'lisi', '123456', '李四', '109212@qq.com', '12', '12', '2023-03-19 10:59:54', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 'ROLE_USER', 2, '医疗部');

-- --------------------------------------------------------

--
-- 表的结构 `youjian`
--

CREATE TABLE `youjian` (
  `id` int(11) NOT NULL,
  `sendemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发送邮件账号',
  `receiveemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '接收邮件账号',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮件内容',
  `createtime` timestamp NULL DEFAULT NULL COMMENT '发送时间',
  `userid` int(11) DEFAULT NULL COMMENT '发邮件的用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮件标题'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `youjian`
--

INSERT INTO `youjian` (`id`, `sendemail`, `receiveemail`, `content`, `createtime`, `userid`, `title`) VALUES
(2, '1097426373@qq.com', '1097426373@qq.com', '工作已经完成', '2023-03-19 05:12:21', 3, '工作汇报');

--
-- 转储表的索引
--

--
-- 表的索引 `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `personfile`
--
ALTER TABLE `personfile`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_dict`
--
ALTER TABLE `sys_dict`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_file`
--
ALTER TABLE `sys_file`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_role_menu`
--
ALTER TABLE `sys_role_menu`
  ADD PRIMARY KEY (`role_id`,`menu_id`) USING BTREE;

--
-- 表的索引 `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `youjian`
--
ALTER TABLE `youjian`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `personfile`
--
ALTER TABLE `personfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `sys_dict`
--
ALTER TABLE `sys_dict`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=281;

--
-- 使用表AUTO_INCREMENT `sys_file`
--
ALTER TABLE `sys_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=43;

--
-- 使用表AUTO_INCREMENT `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `sys_role`
--
ALTER TABLE `sys_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `youjian`
--
ALTER TABLE `youjian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
