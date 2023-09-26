-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.2.0-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- board 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `board`;

-- 테이블 board.board_tb 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_tb` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(255) NOT NULL DEFAULT '아무개',
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 board.board_tb:~165 rows (대략적) 내보내기
INSERT INTO `board_tb` (`uid`, `title`, `content`, `writer`, `regdate`) VALUES
	(1, '제목1', '<p>내용1</p>', '아무개', '2023-08-10 14:56:39'),
	(2, '제목2', '내용2', '아무개', '2023-08-10 14:56:51'),
	(3, '제목3', '내용3', '아무개', '2023-08-10 14:56:56'),
	(4, '제목4', '내용4', '아무개', '2023-08-10 14:57:01'),
	(5, '제목5', '내용5', '아무개', '2023-08-10 14:57:05'),
	(6, '제목6', '내용6', '아무개', '2023-08-10 14:57:10'),
	(7, '제목7', '내용7', '아무개', '2023-08-10 14:57:15'),
	(8, '제목8', '내용8', '아무개', '2023-08-10 14:57:24'),
	(9, '제목9', '내용9', '아무개', '2023-08-10 14:57:48'),
	(10, '제목10', '내용10', '아무개', '2023-08-10 14:57:54'),
	(11, '제목11', '내용11', '아무개', '2023-08-10 14:57:58'),
	(12, '제목12', '내용12', '아무개', '2023-08-10 14:58:07'),
	(13, '제목13', '내용13', '아무개', '2023-08-10 14:58:13'),
	(14, '제목14', '내용14', '아무개', '2023-08-10 14:58:19'),
	(15, '제목15', '내용15', '아무개', '2023-08-10 14:58:24'),
	(16, '제목16', '내용16', '아무개', '2023-08-10 14:58:31'),
	(17, '제목17', '내용17', '아무개', '2023-08-10 16:50:42'),
	(18, '제목18', '내용18', '아무개', '2023-08-10 16:50:52'),
	(19, '제목19', '내용19', '아무개', '2023-08-10 16:50:58'),
	(20, '제목20', '내용20', '아무개', '2023-08-10 16:51:04'),
	(21, '제목21', '내용21', '아무개', '2023-08-10 16:51:39'),
	(22, '제목22', '내용22', '아무개', '2023-08-10 16:51:44'),
	(23, '제목23', '내용23', '아무개', '2023-08-10 16:51:49'),
	(24, '제목24', '내용24', '아무개', '2023-08-10 16:51:54'),
	(25, '제목25', '내용25', '아무개', '2023-08-10 16:51:59'),
	(26, '제목26', '내용26', '아무개', '2023-08-10 16:52:06'),
	(27, '제목27', '내용27', '아무개', '2023-08-10 16:52:11'),
	(28, '제목28', '내용28', '아무개', '2023-08-10 16:52:16'),
	(29, '제목29', '내용29', '아무개', '2023-08-10 16:52:22'),
	(30, '제목30', '내용30', '아무개', '2023-08-10 16:52:27'),
	(31, '제목31', '내용31', '아무개', '2023-08-10 16:52:34'),
	(32, '제목32', '내용32', '아무개', '2023-08-10 16:52:39'),
	(33, '제목33', '내용33', '아무개', '2023-08-10 16:52:46'),
	(34, '제목34', '내용34', '아무개', '2023-08-10 16:52:50'),
	(35, '제목35', '내용35', '아무개', '2023-08-10 16:52:55'),
	(36, '제목36', '내용36', '아무개', '2023-08-10 16:53:01'),
	(37, '제목37', '내용37', '아무개', '2023-08-10 16:53:07'),
	(38, '제목38', '내용38', '아무개', '2023-08-10 16:53:14'),
	(39, '제목39', '내용39', '아무개', '2023-08-10 16:53:19'),
	(40, '제목40', '내용40', '아무개', '2023-08-10 16:53:25'),
	(41, '제목41', '내용41', '아무개', '2023-08-11 17:17:53'),
	(42, '제목42', '내용42', '아무개', '2023-08-11 17:17:58'),
	(43, '제목43', '내용43', '아무개', '2023-08-11 17:18:08'),
	(44, '제목44', '내용44', '아무개', '2023-08-14 17:25:26'),
	(45, '제목45', '내용45', '아무개', '2023-08-14 17:25:31'),
	(46, '제목46', '내용46', '아무개', '2023-08-14 17:25:36'),
	(47, '제목47', '내용47', '아무개', '2023-08-14 17:25:43'),
	(48, '제목48', '내용48', '아무개', '2023-08-14 17:25:49'),
	(49, '제목49', '내용49', '아무개', '2023-08-14 17:25:54'),
	(50, '제목50', '내용50', '아무개', '2023-08-14 17:26:00'),
	(51, '제목51', '내용51', '아무개', '2023-08-14 17:26:05'),
	(52, '제목52', '내용52', '아무개', '2023-08-14 17:26:10'),
	(53, '제목53', '내용53', '아무개', '2023-08-14 17:26:15'),
	(54, '제목54', '내용54', '아무개', '2023-08-14 17:26:25'),
	(55, '제목55', '내용55', '아무개', '2023-08-14 17:26:31'),
	(56, '제목56', '내용56', '아무개', '2023-08-14 17:26:36'),
	(57, '제목57', '내용57', '아무개', '2023-08-14 17:26:41'),
	(58, '제목58', '내용58', '아무개', '2023-08-14 17:26:52'),
	(59, '제목59', '내용59', '아무개', '2023-08-14 17:26:57'),
	(60, '제목60', '내용60', '아무개', '2023-08-14 17:27:02'),
	(61, '제목61', '내용61', '아무개', '2023-08-14 17:27:08'),
	(62, '제목62', '내용62', '아무개', '2023-08-14 17:27:13'),
	(63, '제목63', '내용63', '아무개', '2023-08-14 17:27:17'),
	(64, '제목64', '내용64', '아무개', '2023-08-14 17:27:24'),
	(65, '제목65', '내용65', '아무개', '2023-08-14 17:27:30'),
	(66, '제목66', '내용66', '아무개', '2023-08-14 17:27:35'),
	(67, '제목67', '내용67', '아무개', '2023-08-14 17:27:43'),
	(68, '제목68', '내용68', '아무개', '2023-08-14 17:27:50'),
	(69, '제목69', '내용69', '아무개', '2023-08-14 17:28:00'),
	(70, '제목70', '내용70', '아무개', '2023-08-14 17:28:06'),
	(71, '제목71', '내용71', '아무개', '2023-08-14 17:28:14'),
	(72, '제목72', '내용72', '아무개', '2023-08-14 17:28:20'),
	(73, '제목73', '내용73', '아무개', '2023-08-14 17:28:26'),
	(74, '제목74', '내용74', '아무개', '2023-08-14 17:28:32'),
	(75, '제목75', '내용75', '아무개', '2023-08-14 17:28:39'),
	(76, '제목76', '내용76', '아무개', '2023-08-14 17:28:45'),
	(77, '제목77', '내용77', '아무개', '2023-08-14 17:29:11'),
	(78, '제목78', '내용78', '아무개', '2023-08-14 17:29:19'),
	(79, '제목79', '내용79', '아무개', '2023-08-14 17:29:25'),
	(80, '제목80', '내용80', '아무개', '2023-08-14 17:29:34'),
	(81, '제목81', '내용81', '아무개', '2023-08-14 17:29:39'),
	(82, '제목82', '내용82', '아무개', '2023-08-14 17:29:45'),
	(83, '제목83', '내용83', '아무개', '2023-08-14 17:29:50'),
	(84, '제목84', '내용84', '아무개', '2023-08-14 17:29:54'),
	(85, '제목85', '내용85', '아무개', '2023-08-14 17:29:59'),
	(86, '제목86', '내용86', '아무개', '2023-08-14 17:30:04'),
	(87, '제목87', '내용87', '아무개', '2023-08-14 17:30:20'),
	(88, '제목88', '내용88', '아무개', '2023-08-14 17:30:25'),
	(89, '제목89', '내용89', '아무개', '2023-08-14 17:30:29'),
	(90, '제목90', '내용90', '아무개', '2023-08-14 17:30:34'),
	(91, '제목91', '내용91', '아무개', '2023-08-14 17:30:40'),
	(92, '제목92', '내용92', '아무개', '2023-08-14 17:30:45'),
	(93, '제목93', '내용93', '아무개', '2023-08-14 17:30:54'),
	(94, '제목94', '내용94', '아무개', '2023-08-14 17:31:00'),
	(95, '제목95', '내용95', '아무개', '2023-08-14 17:31:07'),
	(96, '제목96', '내용96', '아무개', '2023-08-14 17:31:12'),
	(97, '제목97', '내용97', '아무개', '2023-08-14 17:31:17'),
	(98, '제목98', '내용98', '아무개', '2023-08-14 17:31:22'),
	(99, '제목99', '내용99', '아무개', '2023-08-14 17:31:26'),
	(100, '제목100', '내용100', '아무개', '2023-08-14 17:31:35'),
	(101, '제목101', '내용101', '아무개', '2023-08-16 12:55:37'),
	(102, '제목102', '내용102', '아무개', '2023-08-16 12:55:44'),
	(103, '제목103', '내용103', '아무개', '2023-08-16 12:55:51'),
	(104, '제목104', '내용104', '아무개', '2023-08-16 12:55:56'),
	(105, '제목105', '내용105', '아무개', '2023-08-16 12:56:02'),
	(106, '제목106', '내용106', '아무개', '2023-08-16 12:56:07'),
	(107, '제목107', '내용107', '아무개', '2023-08-16 12:56:12'),
	(108, '제목108', '내용108', '아무개', '2023-08-16 12:56:18'),
	(109, '제목109', '내용109', '아무개', '2023-08-16 12:56:23'),
	(110, '제목110', '내용110', '아무개', '2023-08-16 13:10:45'),
	(111, '제목111', '내용111', '아무개', '2023-08-16 13:10:52'),
	(112, '제목112', '내용112', '아무개', '2023-08-16 13:10:57'),
	(113, '제목113', '내용113', '아무개', '2023-08-16 13:11:02'),
	(114, '제목114', '내용114', '아무개', '2023-08-16 13:11:06'),
	(115, '제목115', '내용115', '아무개', '2023-08-16 13:11:12'),
	(116, '제목116', '내용116', '아무개', '2023-08-16 13:15:41'),
	(117, '제목117', '내용117', '아무개', '2023-08-16 13:15:48'),
	(118, '제목118', '내용118', '아무개', '2023-08-16 13:15:55'),
	(119, '제목119', '내용119', '아무개', '2023-08-16 13:16:02'),
	(120, '제목120', '내용120', '아무개', '2023-08-16 13:16:09'),
	(121, '제목121', '내용121', '아무개', '2023-08-16 13:16:24'),
	(122, '제목122', '내용122', '아무개', '2023-08-16 13:16:29'),
	(123, '제목123', '내용123', '아무개', '2023-08-16 13:16:35'),
	(124, '제목124', '내용124', '아무개', '2023-08-16 13:16:41'),
	(125, '제목125', '내용125', '아무개', '2023-08-16 13:16:47'),
	(126, '제목126', '내용126', '아무개', '2023-08-16 13:16:53'),
	(127, '제목127', '내용127', '아무개', '2023-08-16 13:16:58'),
	(128, '제목128', '내용128', '아무개', '2023-08-16 13:17:03'),
	(129, '제목129', '내용129', '아무개', '2023-08-16 13:17:11'),
	(130, '제목130', '내용130', '아무개', '2023-08-16 13:17:18'),
	(131, '제목131', '내용131', '아무개', '2023-08-16 13:17:23'),
	(132, '제목132', '내용132', '아무개', '2023-08-16 13:17:34'),
	(133, '제목133', '내용133', '아무개', '2023-08-16 13:17:38'),
	(134, '제목134', '내용134', '아무개', '2023-08-16 13:17:42'),
	(135, '제목135', '내용135', '아무개', '2023-08-16 13:17:47'),
	(136, '제목136', '내용136', '아무개', '2023-08-16 13:17:56'),
	(137, '제목137', '내용137', '아무개', '2023-08-16 13:18:04'),
	(138, '제목138', '내용138', '아무개', '2023-08-16 13:18:09'),
	(139, '제목139', '내용139', '아무개', '2023-08-16 13:18:19'),
	(140, '제목140', '내용140', '아무개', '2023-08-16 13:18:26'),
	(141, '제목141', '내용141', '아무개', '2023-08-16 13:18:35'),
	(142, '제목142', '내용142', '아무개', '2023-08-16 13:18:42'),
	(143, '제목143', '내용143', '아무개', '2023-08-16 13:18:51'),
	(144, '제목144', '내용144', '아무개', '2023-08-16 13:18:57'),
	(145, '제목145', '내용145', '아무개', '2023-08-16 13:19:07'),
	(146, '제목146', '내용146', '아무개', '2023-08-16 13:19:12'),
	(147, '제목147', '내용147', '아무개', '2023-08-16 13:19:17'),
	(148, '제목148', '내용148', '아무개', '2023-08-16 13:19:23'),
	(149, '제목149', '내용149', '아무개', '2023-08-16 13:19:28'),
	(150, '제목150', '내용150', '아무개', '2023-08-16 13:19:33'),
	(151, '제목151', '내용151', '아무개', '2023-08-16 13:19:39'),
	(152, '제목152', '<p>내용152</p>', '아무개', '2023-08-16 17:54:43'),
	(153, '제목153', '<p>내용153</p>', '아무개', '2023-08-16 17:56:04'),
	(154, '제목154', '<p>내용154</p>', '아무개', '2023-08-16 17:57:59'),
	(155, '제목155', '<p>내용155</p>', '아무개', '2023-08-17 10:12:51'),
	(156, '제목156', '내용156', '아무개', '2023-08-18 12:41:41'),
	(157, '제목157', '내용157', '아무개', '2023-08-18 12:41:48'),
	(158, '제목158', '내용158', '아무개', '2023-08-18 12:41:54'),
	(159, '제목159', '<p>내용159</p><p>&nbsp;</p>', '아무개', '2023-08-18 12:42:01'),
	(160, '제목160', '내용160', '아무개', '2023-08-18 12:42:09'),
	(169, '제목161', '<p>내용161</p>', '아무개', '2023-08-21 17:27:34'),
	(171, '제목162', '<p>내용162</p>', '아무개', '2023-08-22 17:22:32'),
	(172, '제목163', '<p>내용163</p>', '아무개', '2023-08-24 13:06:47'),
	(182, 'test', '<p>test</p>', 'test', '2023-09-19 15:09:03'),
	(183, '1', '<p>11</p>', '12', '2023-09-19 15:22:58');

-- 테이블 board.member_tb 구조 내보내기
CREATE TABLE IF NOT EXISTS `member_tb` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 board.member_tb:~2 rows (대략적) 내보내기
INSERT INTO `member_tb` (`uid`, `email`, `pw`, `nickname`, `createdate`) VALUES
	(61, 'test@gmail.com', '12345678', 'test', '2023-09-21 12:15:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;