-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2024 at 08:05 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futebol`
--

-- --------------------------------------------------------

--
-- Table structure for table `campeonato`
--

CREATE TABLE `campeonato` (
  `IDcampeonato` int(11) NOT NULL,
  `temporadaID` int(11) NOT NULL,
  `competicaoID` int(11) NOT NULL,
  `campeao` int(11) NOT NULL,
  `subcampeao` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campeonato`
--

INSERT INTO `campeonato` (`IDcampeonato`, `temporadaID`, `competicaoID`, `campeao`, `subcampeao`, `data`) VALUES
(24, 117, 9, 142, 141, '1997-06-28 22:00:00'),
(26, 116, 9, 148, 142, '2019-06-28 22:00:00'),
(27, 115, 9, 10, 9, '2018-06-28 22:00:00'),
(28, 114, 9, 11, 9, '2017-06-28 22:00:00'),
(29, 113, 9, 9, 77, '2016-06-28 22:00:00'),
(30, 112, 9, 10, 8, '2015-06-28 22:00:00'),
(31, 111, 9, 10, 28, '2014-06-28 22:00:00'),
(32, 110, 9, 11, 78, '2013-06-28 22:00:00'),
(33, 109, 9, 11, 37, '2012-06-28 22:00:00'),
(34, 108, 9, 11, 9, '2011-06-28 22:00:00'),
(35, 107, 9, 10, 37, '2010-06-28 22:00:00'),
(36, 106, 9, 10, 25, '2009-06-28 22:00:00'),
(37, 105, 9, 10, 11, '2008-06-28 22:00:00'),
(38, 104, 9, 10, 17, '2007-06-28 22:00:00'),
(39, 103, 9, 11, 8, '2006-06-28 22:00:00'),
(40, 102, 9, 10, 11, '2005-06-28 22:00:00'),
(41, 101, 9, 17, 19, '2004-06-28 22:00:00'),
(42, 100, 9, 10, 24, '2003-06-28 22:00:00'),
(43, 66, 9, 17, 0, NULL),
(44, 67, 9, 10, 17, NULL),
(45, 47, 9, 25, 10, NULL),
(46, 48, 9, 10, 9, NULL),
(47, 49, 9, 11, 9, NULL),
(48, 50, 9, 9, 77, NULL),
(49, 51, 9, 10, 8, NULL),
(50, 52, 9, 10, 28, NULL),
(51, 53, 9, 11, 78, NULL),
(52, 54, 9, 11, 37, NULL),
(53, 56, 9, 11, 9, NULL),
(54, 57, 9, 10, 37, NULL),
(55, 59, 9, 10, 25, NULL),
(56, 60, 9, 10, 11, NULL),
(57, 61, 9, 10, 17, NULL),
(58, 62, 9, 11, 8, NULL),
(59, 63, 9, 10, 11, NULL),
(60, 64, 9, 17, 19, NULL),
(61, 65, 9, 10, 24, NULL),
(62, 66, 9, 17, 10, NULL),
(63, 67, 9, 10, 17, NULL),
(64, 68, 9, 9, 11, NULL),
(65, 69, 9, 31, 17, NULL),
(66, 70, 9, 10, 8, NULL),
(67, 71, 9, 11, 77, NULL),
(68, 72, 9, 10, 17, NULL),
(69, 73, 9, 8, 10, NULL),
(70, 74, 9, 7, 8, NULL),
(71, 75, 9, 8, 25, NULL),
(72, 76, 9, 17, 8, NULL),
(73, 77, 9, 10, 25, NULL),
(74, 78, 9, 10, 11, NULL),
(75, 79, 9, 11, 10, NULL),
(76, 80, 9, 10, 11, NULL),
(77, 81, 9, 11, 8, NULL),
(78, 82, 9, 11, 10, NULL),
(79, 83, 9, 15, 10, NULL),
(80, 84, 9, 15, 77, NULL),
(81, 85, 9, 17, 7, NULL),
(82, 86, 9, 11, 17, NULL),
(83, 87, 9, 15, 11, NULL),
(84, 88, 9, 10, 17, NULL),
(85, 89, 9, 10, 17, NULL),
(86, 90, 9, 11, 7, NULL),
(87, 91, 9, 10, 17, NULL),
(88, 92, 9, 17, 18, NULL),
(89, 93, 9, 10, 17, NULL),
(90, 94, 9, 10, 9, NULL),
(91, 95, 9, 10, 11, NULL),
(92, 96, 9, 17, 77, NULL),
(93, 97, 9, 9, 10, NULL),
(94, 98, 9, 20, 2, NULL),
(95, 99, 9, 17, 26, NULL),
(96, 100, 9, 15, 17, NULL),
(97, 101, 9, 10, 15, NULL),
(98, 102, 9, 17, 11, NULL),
(99, 103, 9, 11, 12, NULL),
(100, 104, 9, 10, 11, NULL),
(101, 105, 9, 15, 10, NULL),
(102, 106, 9, 17, 7, NULL),
(103, 107, 9, 26, 27, NULL),
(104, 108, 9, 17, 11, NULL),
(105, 109, 9, 17, 12, NULL),
(106, 110, 9, 11, 31, NULL),
(107, 111, 9, 17, 14, NULL),
(108, 112, 9, 10, 17, NULL),
(109, 113, 9, 8, 10, NULL),
(110, 114, 9, 17, 8, NULL),
(111, 115, 9, 11, 9, NULL),
(112, 116, 9, 11, 17, NULL),
(113, 117, 9, 17, 16, '1997-06-28 00:00:00'),
(114, 38, 1, 24, 9, NULL),
(115, 39, 1, 9, 8, NULL),
(116, 40, 1, 10, 8, NULL),
(117, 41, 1, 8, 7, NULL),
(118, 42, 1, 9, 77, NULL),
(119, 43, 1, 9, 27, NULL),
(120, 44, 1, 10, 76, NULL),
(121, 45, 1, 10, 78, NULL),
(122, 47, 1, 10, 8, NULL),
(123, 48, 1, 9, 78, NULL),
(124, 50, 1, 9, 24, NULL),
(125, 51, 1, 9, 10, NULL),
(126, 52, 1, 9, 16, NULL),
(127, 53, 1, 10, 77, NULL),
(128, 54, 1, 9, 10, NULL),
(129, 55, 1, 16, 79, NULL),
(130, 56, 1, 9, 10, NULL),
(131, 57, 1, 30, 9, NULL),
(132, 58, 1, 9, 16, NULL),
(133, 59, 1, 8, 10, NULL),
(134, 60, 1, 30, 16, NULL),
(135, 61, 1, 9, 77, NULL),
(136, 62, 1, 10, 7, NULL),
(137, 63, 1, 9, 16, NULL),
(138, 64, 1, 77, 9, NULL),
(139, 65, 1, 6, 77, NULL),
(140, 66, 1, 77, 24, NULL),
(141, 67, 1, 16, 77, NULL),
(142, 68, 1, 9, 24, NULL),
(143, 69, 1, 9, 10, NULL),
(144, 70, 1, 10, 9, NULL),
(145, 71, 1, 9, 10, NULL),
(146, 72, 1, 10, 77, NULL),
(147, 73, 1, 10, 9, NULL),
(148, 74, 1, 14, 9, NULL),
(149, 75, 1, 14, 7, NULL),
(150, 76, 1, 16, 6, NULL),
(151, 77, 1, 10, 16, NULL),
(152, 78, 1, 14, 10, NULL),
(153, 79, 1, 9, 16, NULL),
(154, 80, 1, 9, 16, NULL),
(155, 81, 1, 10, 6, NULL),
(156, 82, 1, 9, 16, NULL),
(157, 83, 1, 16, 17, NULL),
(158, 84, 1, 9, 16, NULL),
(159, 85, 1, 9, 8, NULL),
(160, 86, 1, 9, 10, NULL),
(161, 87, 1, 16, 7, NULL),
(162, 88, 1, 8, 9, NULL),
(163, 89, 1, 80, 1, NULL),
(164, 90, 1, 16, 81, NULL),
(165, 91, 1, 14, 16, NULL),
(166, 92, 1, 9, 14, NULL),
(167, 93, 1, 16, 10, NULL),
(168, 94, 1, 10, 11, NULL),
(169, 95, 1, 9, 10, NULL),
(170, 96, 1, 14, 9, NULL),
(171, 97, 1, 16, 6, NULL),
(172, 98, 1, 81, 82, NULL),
(173, 99, 1, 16, 10, NULL),
(174, 100, 1, 16, 11, NULL),
(175, 101, 1, 10, 30, NULL),
(176, 102, 1, 16, 83, NULL),
(177, 103, 1, 9, 16, NULL),
(178, 104, 1, 77, 9, NULL),
(179, 105, 1, 16, 77, NULL),
(180, 106, 1, 10, 8, NULL),
(181, 107, 1, 10, 16, NULL),
(182, 108, 1, 16, 15, NULL),
(183, 109, 1, 16, 35, NULL),
(184, 110, 1, 16, 7, NULL),
(185, 111, 1, 24, 10, NULL),
(186, 112, 1, 7, 9, NULL),
(187, 113, 1, 9, 17, NULL),
(188, 114, 1, 10, 6, NULL),
(189, 115, 1, 6, 16, NULL),
(190, 116, 1, 9, 7, NULL),
(191, 117, 1, 85, 10, NULL),
(192, 118, 1, 10, 16, NULL),
(193, 119, 1, 16, 9, NULL),
(194, 38, 1, 24, 9, NULL),
(195, 39, 1, 9, 8, NULL),
(196, 40, 1, 10, 8, NULL),
(197, 41, 1, 8, 7, NULL),
(198, 42, 1, 9, 77, NULL),
(199, 43, 1, 9, 27, NULL),
(200, 44, 1, 10, 76, NULL),
(201, 45, 1, 10, 78, NULL),
(202, 47, 1, 10, 8, NULL),
(203, 48, 1, 9, 78, NULL),
(204, 50, 1, 9, 24, NULL),
(205, 51, 1, 9, 10, NULL),
(206, 52, 1, 9, 16, NULL),
(207, 53, 1, 10, 77, NULL),
(208, 54, 1, 9, 10, NULL),
(209, 55, 1, 16, 79, NULL),
(210, 56, 1, 9, 10, NULL),
(211, 57, 1, 30, 9, NULL),
(212, 58, 1, 9, 16, NULL),
(213, 59, 1, 8, 10, NULL),
(214, 60, 1, 30, 16, NULL),
(215, 61, 1, 9, 77, NULL),
(216, 62, 1, 10, 7, NULL),
(217, 63, 1, 9, 16, NULL),
(218, 64, 1, 77, 9, NULL),
(219, 65, 1, 6, 77, NULL),
(220, 66, 1, 77, 24, NULL),
(221, 67, 1, 16, 77, NULL),
(222, 68, 1, 9, 24, NULL),
(223, 69, 1, 9, 10, NULL),
(224, 70, 1, 10, 9, NULL),
(225, 71, 1, 9, 10, NULL),
(226, 72, 1, 10, 77, NULL),
(227, 73, 1, 10, 9, NULL),
(228, 74, 1, 14, 9, NULL),
(229, 75, 1, 14, 7, NULL),
(230, 76, 1, 16, 6, NULL),
(231, 77, 1, 10, 16, NULL),
(232, 78, 1, 14, 10, NULL),
(233, 79, 1, 9, 16, NULL),
(234, 80, 1, 9, 16, NULL),
(235, 81, 1, 10, 6, NULL),
(236, 82, 1, 9, 16, NULL),
(237, 83, 1, 16, 17, NULL),
(238, 84, 1, 9, 16, NULL),
(239, 85, 1, 9, 8, NULL),
(240, 86, 1, 9, 10, NULL),
(241, 87, 1, 16, 7, NULL),
(242, 88, 1, 8, 9, NULL),
(243, 89, 1, 80, 1, NULL),
(244, 90, 1, 16, 81, NULL),
(245, 91, 1, 14, 16, NULL),
(246, 92, 1, 9, 14, NULL),
(247, 93, 1, 16, 10, NULL),
(248, 94, 1, 10, 11, NULL),
(249, 95, 1, 9, 10, NULL),
(250, 96, 1, 14, 9, NULL),
(251, 97, 1, 16, 6, NULL),
(252, 98, 1, 81, 82, NULL),
(253, 99, 1, 16, 10, NULL),
(254, 100, 1, 16, 11, NULL),
(255, 101, 1, 10, 30, NULL),
(256, 102, 1, 16, 83, NULL),
(257, 103, 1, 9, 16, NULL),
(258, 104, 1, 77, 9, NULL),
(259, 105, 1, 16, 77, NULL),
(260, 106, 1, 10, 8, NULL),
(261, 107, 1, 10, 16, NULL),
(262, 108, 1, 16, 15, NULL),
(263, 109, 1, 16, 35, NULL),
(264, 110, 1, 16, 7, NULL),
(265, 111, 1, 24, 10, NULL),
(266, 112, 1, 7, 9, NULL),
(267, 113, 1, 9, 17, NULL),
(268, 114, 1, 10, 6, NULL),
(269, 115, 1, 6, 16, NULL),
(270, 116, 1, 9, 7, NULL),
(271, 117, 1, 85, 10, NULL),
(272, 118, 1, 10, 16, NULL),
(273, 119, 1, 16, 9, NULL),
(274, 38, 2, 24, 9, NULL),
(275, 39, 2, 9, 8, NULL),
(276, 40, 2, 10, 8, NULL),
(277, 41, 2, 8, 7, NULL),
(278, 42, 2, 9, 77, NULL),
(279, 43, 2, 9, 27, NULL),
(280, 44, 2, 10, 76, NULL),
(281, 45, 2, 10, 78, NULL),
(282, 47, 2, 10, 8, NULL),
(283, 48, 2, 9, 78, NULL),
(284, 50, 2, 9, 24, NULL),
(285, 51, 2, 9, 10, NULL),
(286, 52, 2, 9, 16, NULL),
(287, 53, 2, 10, 77, NULL),
(288, 54, 2, 9, 10, NULL),
(289, 55, 2, 16, 79, NULL),
(290, 56, 2, 9, 23, NULL),
(291, 57, 2, 16, 9, NULL),
(292, 58, 2, 9, 16, NULL),
(293, 59, 2, 8, 10, NULL),
(294, 60, 2, 30, 16, NULL),
(295, 61, 2, 9, 77, NULL),
(296, 62, 2, 10, 7, NULL),
(297, 63, 2, 9, 16, NULL),
(298, 64, 2, 77, 9, NULL),
(299, 65, 2, 6, 77, NULL),
(300, 66, 2, 77, 24, NULL),
(301, 67, 2, 16, 77, NULL),
(302, 68, 2, 9, 24, NULL),
(303, 69, 2, 9, 10, NULL),
(304, 70, 2, 10, 9, NULL),
(305, 71, 2, 9, 10, NULL),
(306, 72, 2, 10, 77, NULL),
(307, 73, 2, 10, 9, NULL),
(308, 74, 2, 14, 9, NULL),
(309, 75, 2, 14, 7, NULL),
(310, 76, 2, 16, 6, NULL),
(311, 77, 2, 10, 16, NULL),
(312, 78, 2, 14, 10, NULL),
(313, 79, 2, 9, 16, NULL),
(314, 80, 2, 9, 16, NULL),
(315, 81, 2, 10, 6, NULL),
(316, 82, 2, 9, 16, NULL),
(317, 83, 2, 16, 17, NULL),
(318, 84, 2, 9, 16, NULL),
(319, 85, 2, 9, 8, NULL),
(320, 86, 2, 9, 10, NULL),
(321, 87, 2, 16, 7, NULL),
(322, 88, 2, 8, 9, NULL),
(323, 89, 2, 80, 20, NULL),
(324, 90, 2, 16, 81, NULL),
(325, 91, 2, 14, 16, NULL),
(326, 92, 2, 9, 14, NULL),
(327, 93, 2, 16, 10, NULL),
(328, 94, 2, 10, 11, NULL),
(329, 95, 2, 9, 10, NULL),
(330, 96, 2, 14, 9, NULL),
(331, 97, 2, 16, 6, NULL),
(332, 98, 2, 81, 82, NULL),
(333, 99, 2, 16, 10, NULL),
(334, 100, 2, 16, 11, NULL),
(335, 101, 2, 10, 30, NULL),
(336, 102, 2, 16, 83, NULL),
(337, 103, 2, 9, 16, NULL),
(338, 104, 2, 77, 9, NULL),
(339, 105, 2, 16, 77, NULL),
(340, 106, 2, 10, 8, NULL),
(341, 107, 2, 10, 16, NULL),
(342, 108, 2, 16, 15, NULL),
(343, 109, 2, 16, 35, NULL),
(344, 110, 2, 16, 7, NULL),
(345, 111, 2, 24, 10, NULL),
(346, 112, 2, 7, 9, NULL),
(347, 113, 2, 9, 17, NULL),
(348, 114, 2, 10, 6, NULL),
(349, 115, 2, 6, 16, NULL),
(350, 116, 2, 9, 7, NULL),
(351, 117, 2, 85, 10, NULL),
(352, 118, 2, 10, 16, NULL),
(353, 119, 2, 16, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competicao`
--

CREATE TABLE `competicao` (
  `competicaoID` int(11) NOT NULL,
  `competicaoNome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `competicao`
--

INSERT INTO `competicao` (`competicaoID`, `competicaoNome`) VALUES
(6, 'Campeonato da Europa'),
(7, 'Campeonato Mundial'),
(8, 'Liga das Nações'),
(4, 'Liga dos Campeões'),
(5, 'Liga Europa'),
(9, 'Primeira Liga'),
(10, 'Segunda Liga'),
(2, 'Supertaça de Portugal'),
(3, 'Taça da Liga'),
(1, 'Taça de Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `equipa`
--

CREATE TABLE `equipa` (
  `equipaID` int(11) NOT NULL,
  `equipaNome` varchar(45) NOT NULL,
  `equipaPais` varchar(45) DEFAULT NULL,
  `paisID` char(3) DEFAULT NULL,
  `ultimoPresidente` varchar(100) NOT NULL,
  `dataFundacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipa`
--

INSERT INTO `equipa` (`equipaID`, `equipaNome`, `equipaPais`, `paisID`, `ultimoPresidente`, `dataFundacao`) VALUES
(133, 'Farense', NULL, 'POR', '', NULL),
(134, 'Portimonense', NULL, 'POR', '', NULL),
(135, 'Famalicão', NULL, 'POR', '', NULL),
(136, 'Gil Vicente', NULL, 'POR', '', NULL),
(137, 'Moreirense', NULL, 'POR', 'Vítor Magalhães', NULL),
(138, 'Sporting de Braga', NULL, 'POR', 'António Salvador', NULL),
(139, 'Vitória', NULL, 'POR', '', NULL),
(140, 'Belenenses SAD', NULL, 'POR', 'Patrick Morais de Carvalho', NULL),
(141, 'Benfica', NULL, 'POR', 'Luís Felipe Vieira', NULL),
(142, 'Sporting', NULL, 'POR', 'Frederico Varandas', NULL),
(143, 'Marítimo', NULL, 'POR', 'Carlos Pereira', NULL),
(144, 'Nacional', NULL, 'POR', '', NULL),
(145, 'Santa Clara', NULL, 'POR', '', NULL),
(146, 'Boavista', NULL, 'POR', 'João Loureiro', NULL),
(147, 'Paços de Ferreira', NULL, 'POR', '', NULL),
(148, 'Porto', NULL, 'POR', 'Pinto da Costa', NULL),
(149, 'Rio Ave', NULL, 'POR', '', NULL),
(150, 'Tondela', NULL, 'POR', 'Gilberto Coimbra', NULL),
(151, 'Arouca', NULL, 'POR', '', NULL),
(152, 'Feirense', NULL, 'POR', 'Rodrigo Nunes', NULL),
(153, 'Oliveirense', NULL, 'POR', '', NULL),
(154, 'Vizela', NULL, 'POR', '', NULL),
(155, 'Sporting da Covilhã', NULL, 'POR', '', NULL),
(156, 'Académica OAF', NULL, 'POR', '', NULL),
(157, 'Benfica B', NULL, 'POR', '', NULL),
(158, 'Casa Pia', NULL, 'POR', '', NULL),
(159, 'Estoril Praia', NULL, 'POR', 'Alexandre Faria', NULL),
(160, 'Mafra', NULL, 'POR', '', NULL),
(161, 'Vilafranquense', NULL, 'POR', '', NULL),
(162, 'Leixões', NULL, 'POR', '', NULL),
(163, 'Penafiel', NULL, 'POR', '', NULL),
(164, 'Porto B', NULL, 'POR', '', NULL),
(165, 'Varzim', NULL, 'POR', '', NULL),
(166, 'Cova da Piedade', NULL, 'POR', '', NULL),
(167, 'Chaves', NULL, 'POR', '', NULL),
(168, 'Académico de Viseu', NULL, 'POR', '', NULL),
(169, 'Real Madrid', NULL, 'ESP', '', NULL),
(170, 'Milan', NULL, 'ITA', '', NULL),
(171, 'Bayern de Munique', NULL, 'GER', '', NULL),
(172, 'Liverpool', NULL, 'ENG', '', NULL),
(173, 'Barcelona', NULL, 'ESP', '', NULL),
(174, 'Ajax', NULL, 'NED', '', NULL),
(175, 'Manchester United', NULL, 'ENG', '', NULL),
(176, 'Internazionale', NULL, 'ITA', '', NULL),
(177, 'Juventus', NULL, 'ITA', '', NULL),
(178, 'Nottingham Forest', NULL, 'ENG', '', NULL),
(179, 'Celtic', NULL, 'SCO', '', NULL),
(180, 'Hamburgo', NULL, 'GER', '', NULL),
(181, 'Steaua Bucareste', NULL, 'ROU', '', NULL),
(182, 'Olympique de Marseille', NULL, 'FRA', '', NULL),
(183, 'Borussia Dortmund', NULL, 'GER', '', NULL),
(184, 'Chelsea', NULL, 'ENG', '', NULL),
(185, 'Feyenoord', NULL, 'NED', '', NULL),
(186, 'Aston Villa', NULL, 'ENG', '', NULL),
(187, 'PSV Eindhoven', NULL, 'NED', '', NULL),
(188, 'Estrela Vermelha', NULL, 'SRB', '', NULL),
(189, 'Atlético de Madrid', NULL, 'ESP', '', NULL),
(190, 'Stade de Reims', NULL, 'FRA', '', NULL),
(191, 'Valencia', NULL, 'ESP', '', NULL),
(192, 'Fiorentina', NULL, 'ITA', '', NULL),
(193, 'Eintracht Frankfurt', NULL, 'GER', '', NULL),
(194, 'Partizan', NULL, 'SRB', '', NULL),
(195, 'Panathinaikos', NULL, 'GRE', '', NULL),
(196, 'Leeds United', NULL, 'ENG', '', NULL),
(197, 'Saint Etienne', NULL, 'FRA', '', NULL),
(198, 'Borussia Mönchengladbach', NULL, 'GER', '', NULL),
(199, 'Brugge', NULL, 'BEL', '', NULL),
(200, 'Malmö', NULL, 'SWE', '', NULL),
(201, 'Roma', NULL, 'ITA', '', NULL),
(202, 'Sampdoria', NULL, 'ITA', '', NULL),
(203, 'Bayer Leverkusen', NULL, 'GER', '', NULL),
(204, 'Monaco', NULL, 'FRA', '', NULL),
(205, 'Arsenal', NULL, 'ENG', '', NULL),
(206, 'Tottenham', NULL, 'ENG', '', NULL),
(207, 'Paris Saint ‐ Germain', NULL, 'FRA', '', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jogador`
-- (See below for the actual view)
--
CREATE TABLE `jogador` (
`Nome` varchar(137)
,`Ano` year(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `jogadores`
--

CREATE TABLE `jogadores` (
  `Nome` varchar(45) NOT NULL,
  `Ano` year(4) NOT NULL,
  `apelido1` varchar(45) DEFAULT NULL,
  `apelido2` varchar(45) DEFAULT NULL,
  `anoChegada` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jogadores`
--

INSERT INTO `jogadores` (`Nome`, `Ano`, `apelido1`, `apelido2`, `anoChegada`) VALUES
('Alberto Beja ALves', 1988, NULL, NULL, NULL),
('André Cardoso Barros', 1984, NULL, NULL, NULL),
('Fernando Costa', 1993, NULL, NULL, NULL),
('João Caetano Mendes', 1991, NULL, NULL, NULL),
('Jorge Águeda Campos', 1990, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `paisID` char(3) NOT NULL,
  `paisNome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`paisID`, `paisNome`) VALUES
('GER', 'Almanha'),
('Bel', 'Belgica'),
('SCO', 'Escocia'),
('ESP', 'Espanha'),
('FRA', 'França'),
('GRE', 'Grecia'),
('ENG', 'Inglatera'),
('ITA', 'Italia'),
('NED', 'Paises Baixos'),
('POR', 'Portugal'),
('ROU', 'Romenia'),
('SRB', 'Serbia'),
('SWE', 'Suecia');

-- --------------------------------------------------------

--
-- Table structure for table `temporada`
--

CREATE TABLE `temporada` (
  `temporadaID` int(11) NOT NULL,
  `anoInicio` year(4) NOT NULL,
  `anoFim` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temporada`
--

INSERT INTO `temporada` (`temporadaID`, `anoInicio`, `anoFim`) VALUES
(1, 1904, 1905),
(2, 1905, 1906),
(3, 1906, 1907),
(4, 1907, 1908),
(5, 1908, 1909),
(6, 1909, 1910),
(7, 1910, 1911),
(8, 1911, 1912),
(9, 1912, 1913),
(10, 1913, 1914),
(11, 1914, 1915),
(12, 1915, 1916),
(13, 1916, 1917),
(14, 1917, 1918),
(15, 1918, 1919),
(16, 1919, 1920),
(17, 1920, 1921),
(18, 1921, 1922),
(19, 1922, 1923),
(20, 1923, 1924),
(21, 1924, 1925),
(22, 1925, 1926),
(23, 1926, 1927),
(24, 1927, 1928),
(25, 1928, 1929),
(26, 1929, 1930),
(27, 1930, 1931),
(28, 1931, 1932),
(29, 1932, 1933),
(30, 1933, 1934),
(31, 1934, 1935),
(32, 1935, 1936),
(33, 1936, 1937),
(34, 1937, 1938),
(35, 1938, 1939),
(36, 1939, 1940),
(37, 1940, 1941),
(38, 1941, 1942),
(39, 1942, 1943),
(40, 1943, 1944),
(41, 1944, 1945),
(42, 1945, 1946),
(43, 1946, 1947),
(44, 1947, 1948),
(45, 1948, 1949),
(46, 1949, 1950),
(47, 1950, 1951),
(48, 1951, 1952),
(49, 1952, 1953),
(50, 1953, 1954),
(51, 1954, 1955),
(52, 1955, 1956),
(53, 1956, 1957),
(54, 1957, 1958),
(55, 1958, 1959),
(56, 1959, 1960),
(57, 1960, 1961),
(58, 1961, 1962),
(59, 1962, 1963),
(60, 1963, 1964),
(61, 1964, 1965),
(62, 1965, 1966),
(63, 1966, 1967),
(64, 1967, 1968),
(65, 1968, 1969),
(66, 1969, 1970),
(67, 1970, 1971),
(68, 1971, 1972),
(69, 1972, 1973),
(70, 1973, 1974),
(71, 1974, 1975),
(72, 1975, 1976),
(73, 1976, 1977),
(74, 1977, 1978),
(75, 1978, 1979),
(76, 1979, 1980),
(77, 1980, 1981),
(78, 1981, 1982),
(79, 1982, 1983),
(80, 1983, 1984),
(81, 1984, 1985),
(82, 1985, 1986),
(83, 1986, 1987),
(84, 1987, 1988),
(85, 1988, 1989),
(86, 1989, 1990),
(87, 1990, 1991),
(88, 1991, 1992),
(89, 1992, 1993),
(90, 1993, 1994),
(91, 1994, 1995),
(92, 1995, 1996),
(93, 1996, 1997),
(94, 1997, 1998),
(95, 1998, 1999),
(96, 1999, 2000),
(97, 2000, 2001),
(98, 2001, 2002),
(99, 2002, 2003),
(100, 2003, 2004),
(101, 2004, 2005),
(102, 2005, 2006),
(103, 2006, 2007),
(104, 2007, 2008),
(105, 2008, 2009),
(106, 2009, 2010),
(107, 2010, 2011),
(108, 2011, 2012),
(109, 2012, 2013),
(110, 2013, 2014),
(111, 2014, 2015),
(112, 2015, 2016),
(113, 2016, 2017),
(114, 2017, 2018),
(115, 2018, 2019),
(116, 2019, 2020),
(117, 2020, 2021);

-- --------------------------------------------------------

--
-- Stand-in structure for view `titulosview`
-- (See below for the actual view)
--
CREATE TABLE `titulosview` (
`Temporada` varchar(11)
,`Competição` varchar(45)
,`Campeão` varchar(45)
,`SegundoClassificado` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `jogador`
--
DROP TABLE IF EXISTS `jogador`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jogador`  AS SELECT concat_ws(' ',`jogadores`.`Nome`,`jogadores`.`apelido1`,`jogadores`.`apelido2`) AS `Nome`, `jogadores`.`anoChegada` AS `Ano` FROM `jogadores``jogadores`  ;

-- --------------------------------------------------------

--
-- Structure for view `titulosview`
--
DROP TABLE IF EXISTS `titulosview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `titulosview`  AS SELECT concat(cast(`temp`.`anoInicio` as char(4) charset utf8mb4),' ‐ ',cast(`temp`.`anoFim` as char(4) charset utf8mb4)) AS `Temporada`, `comp`.`competicaoNome` AS `Competição`, `eq1`.`equipaNome` AS `Campeão`, `eq2`.`equipaNome` AS `SegundoClassificado` FROM ((((`campeonato` `camp` join `competicao` `comp` on((`camp`.`competicaoID` = `comp`.`competicaoID`))) join `temporada` `temp` on((`camp`.`temporadaID` = `temp`.`temporadaID`))) join `equipa` `eq1` on((`camp`.`campeao` = `eq1`.`equipaID`))) left join `equipa` `eq2` on((`camp`.`subcampeao` = `eq2`.`equipaID`))) WHERE (not(`eq1`.`equipaID` in (select `equip`.`equipaID` from `equipa` `equip` where ((`equip`.`equipaNome` like 'Be%') OR (`equip`.`equipaNome` like 'S%') OR (`equip`.`equipaNome` like 'P%'))))) ORDER BY concat(cast(`temp`.`anoInicio` as char(4) charset utf8mb4),' ‐ ',cast(`temp`.`anoFim` as char(4) charset utf8mb4)) ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campeonato`
--
ALTER TABLE `campeonato`
  ADD PRIMARY KEY (`IDcampeonato`),
  ADD KEY `competicaoID_idx` (`competicaoID`),
  ADD KEY `temporadaID_idx` (`temporadaID`),
  ADD KEY `equipaID_idx1` (`subcampeao`),
  ADD KEY `equipaID_idx` (`campeao`,`subcampeao`);

--
-- Indexes for table `competicao`
--
ALTER TABLE `competicao`
  ADD PRIMARY KEY (`competicaoID`),
  ADD UNIQUE KEY `competicaoNome_UNIQUE` (`competicaoNome`);

--
-- Indexes for table `equipa`
--
ALTER TABLE `equipa`
  ADD PRIMARY KEY (`equipaID`),
  ADD UNIQUE KEY `equipaNome_UNIQUE` (`equipaNome`),
  ADD KEY `equipaPais_idx` (`paisID`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD UNIQUE KEY `Nome_UNIQUE` (`Nome`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`paisID`),
  ADD UNIQUE KEY `paisNome_UNIQUE` (`paisNome`);

--
-- Indexes for table `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`temporadaID`),
  ADD UNIQUE KEY `anoInicio_UNIQUE` (`anoInicio`),
  ADD UNIQUE KEY `anoFim_UNIQUE` (`anoFim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campeonato`
--
ALTER TABLE `campeonato`
  MODIFY `IDcampeonato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `competicao`
--
ALTER TABLE `competicao`
  MODIFY `competicaoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `equipa`
--
ALTER TABLE `equipa`
  MODIFY `equipaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `temporada`
--
ALTER TABLE `temporada`
  MODIFY `temporadaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipa`
--
ALTER TABLE `equipa`
  ADD CONSTRAINT `equipaPais` FOREIGN KEY (`paisID`) REFERENCES `pais` (`paisID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
