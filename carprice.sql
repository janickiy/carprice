-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 03 2017 г., 11:35
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `carprice`
--

-- --------------------------------------------------------

--
-- Структура таблицы `rfq_aut`
--

CREATE TABLE `rfq_aut` (
  `id` int(9) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','manager') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rfq_aut`
--

INSERT INTO `rfq_aut` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', 'b59c67bf196a4758191e42f76670ceba', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `rfq_cars`
--

CREATE TABLE `rfq_cars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rfq_cars`
--

INSERT INTO `rfq_cars` (`id`, `name`) VALUES
(1, 'ТАГАЗ'),
(2, 'BMW'),
(3, 'Brilliance'),
(4, 'BYD'),
(5, 'Changan'),
(6, 'Chery'),
(7, 'Chevrolet'),
(8, 'Citroen'),
(9, 'Datsun'),
(10, 'Dongfeng'),
(11, 'FAW'),
(12, 'Ford'),
(13, 'Geely'),
(14, 'Great Wall'),
(15, 'Haima'),
(16, 'Haval'),
(17, 'Hyundai'),
(18, 'Infiniti'),
(19, 'JAC'),
(20, 'Kia'),
(21, 'Lada'),
(22, 'Lifan'),
(23, 'Mazda'),
(24, 'Luxgen'),
(26, 'Mitsubishi'),
(27, 'Nissan'),
(28, 'Opel'),
(29, 'Peugeot'),
(31, 'Ravon'),
(32, 'Renault'),
(33, 'Skoda'),
(34, 'Ssangyong'),
(35, 'Suzuki'),
(37, 'UAZ'),
(38, 'Volkswagen'),
(39, 'Zotye'),
(40, 'FIAT'),
(41, 'DW Hower'),
(42, 'Hawtai Motor'),
(43, 'Honda');

-- --------------------------------------------------------

--
-- Структура таблицы `rfq_model`
--

CREATE TABLE `rfq_model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rfq_model`
--

INSERT INTO `rfq_model` (`id`, `name`, `car_id`) VALUES
(1, '1 серии', 2),
(4, 'H230 sedan', 3),
(5, 'H230 hatch', 3),
(6, 'V3', 3),
(7, 'V5', 3),
(9, 'F3', 4),
(10, 'CS35', 5),
(11, 'CS75', 5),
(12, 'Eado XT', 5),
(13, 'Eado', 5),
(14, 'Raeton', 5),
(15, 'Benni', 5),
(16, 'CS15', 5),
(17, 'CS95', 5),
(19, 'CX70', 5),
(20, 'Tiggo', 6),
(21, 'Arrizo', 6),
(22, 'M11 sedan', 6),
(23, 'tiggo 5 new', 6),
(24, 'M11 hatch', 6),
(25, 'indis', 6),
(26, 'indis', 6),
(27, 'tiggo fl', 6),
(28, 'tiggo 5', 6),
(29, 'Very', 6),
(30, 'bonus', 6),
(31, 'Tiggo 2', 6),
(32, 'bonus 3', 6),
(33, 'Tiggo 3', 6),
(34, 'Cruze sedan', 7),
(35, 'Cobalt', 7),
(36, 'Aveo hatch', 7),
(37, 'Aveo sedan', 7),
(38, 'niva', 7),
(39, 'Cruze sw', 7),
(42, 'Tracker', 7),
(43, 'Cruze hatch', 7),
(44, 'Orlando', 7),
(45, 'Spark', 7),
(46, 'Tahoe new', 7),
(47, 'Captiva', 7),
(48, 'Camaro', 7),
(49, 'Tahoe', 7),
(50, 'Trailblazer', 7),
(51, 'Trailblazer', 7),
(52, 'C3 picasso', 8),
(53, 'C5 Tourer', 8),
(54, 'C-Elysee', 8),
(55, 'C4 sedan', 8),
(56, 'C4 Aircross', 8),
(57, 'C4 sedan new', 8),
(58, 'C4', 8),
(59, 'C1', 8),
(60, 'DS3', 8),
(61, 'Berlingo', 8),
(62, 'C4 Grand Picasso', 8),
(63, 'Berlingo Multispace', 8),
(64, 'Berlingo Multispace New', 8),
(65, 'DS4', 8),
(66, 'C4 picasso', 8),
(67, 'mi-do', 9),
(68, 'on-do', 9),
(69, 'H30 Cross', 10),
(70, 'S30', 10),
(71, 'ax7', 10),
(72, 'Besturn B50', 11),
(73, '2', 11),
(74, '5', 11),
(75, 'Oley', 11),
(76, 'Besturn B70', 11),
(77, 'Besturn X80', 11),
(78, 'ducato комби', 40),
(79, 'scudo van', 40),
(80, 'ducato фургон', 40),
(81, 'ducato шасси', 40),
(82, 'scudo', 40),
(83, 'doblo panorama', 40),
(84, 'Freemont', 40),
(85, '500', 40),
(86, 'Punto 5d', 40),
(87, 'Punto 3d', 40),
(88, 'Mondeo wagon', 12),
(89, 'S-Max', 12),
(90, 'Explorer New', 12),
(91, 'Focus sedan', 12),
(92, 'Focus wag', 12),
(93, 'Focus hatch', 12),
(94, 'Fiesta sedan', 12),
(95, 'Fiesta hatch', 12),
(96, 'mondeo New', 12),
(97, 'mondeo', 12),
(98, 'focus wag new', 12),
(99, 'focus hatch new', 12),
(100, 'focus sedan new', 12),
(101, 'kuga new', 12),
(102, 'kuga', 12),
(103, 'tourneo custom', 12),
(104, 'Шасси', 12),
(105, 'transit фургон', 12),
(106, 'transit custom фургон', 12),
(107, 'Gradn C-max', 12),
(108, 'NL3', 13),
(109, 'Emgrand GT', 13),
(110, 'Emgrand GC9', 13),
(111, 'Emgrand Cross', 13),
(112, 'MK 08', 13),
(113, 'GC6', 13),
(114, 'emgrand EC7 hatch', 13),
(115, 'emgrand EC7 sedan', 13),
(116, 'emgrand x7 new', 13),
(117, 'emgrand x7', 13),
(118, 'emgrand sedan', 13),
(119, 'emgrand sedan', 13),
(120, 'emgrand hatch', 13),
(121, 'mk cross', 13),
(122, 'mk', 13),
(123, 'hover m2', 14),
(124, 'hover m1', 14),
(125, 'h5', 14),
(126, 'h3 new', 14),
(127, 'h3', 14),
(128, 'h6', 14),
(129, 'wingle 5', 14),
(130, 'm4', 14),
(131, 'M3', 15),
(132, '3 hb', 15),
(133, 'hover m2', 15),
(134, '7', 15),
(135, 'H6', 16),
(136, 'H2', 16),
(137, 'H8', 16),
(138, 'H9', 16),
(139, 'H7', 41),
(140, 'H6', 41),
(141, 'Boliger', 42),
(142, 'Pilot', 43),
(143, 'CR-V new', 43),
(144, 'Crosstour', 43),
(145, 'CR-V', 43),
(146, 'Civic 5D', 43),
(147, 'Civic 4D', 43),
(148, 'Accord', 43),
(149, 'Equus', 17),
(150, 'IX 55', 17),
(151, 'Porter 2', 17),
(152, 'Genesis', 17),
(153, 'H1', 17),
(154, 'Creta', 17),
(155, 'tucson', 17),
(156, 'Grand Santa Fe', 17),
(157, 'santa fe premium', 17),
(158, 'santa fe', 17),
(159, 'i40 wag', 17),
(160, 'i40 sed', 17),
(161, 'I30 hatch 3d', 17),
(162, 'i30 wagon', 17),
(163, 'i30 хэтчбек 5d new', 17),
(164, 'i30 хэтчбек 5d', 17),
(165, 'elantra new', 17),
(166, 'elantra', 17),
(167, 'solaris sed 2017', 17),
(168, 'solaris sed 2017', 17),
(169, 'QX80', 18),
(170, 'QX70', 18),
(171, 'QX60', 18),
(172, 'QX50', 18),
(173, 'Q70', 18),
(174, 'Q50', 18),
(175, 'J5', 19),
(176, 'S5', 19),
(177, 'optima new', 20),
(178, 'rio sed old', 20),
(179, 'Cerato coupe', 20),
(180, 'Ceed GT 5d', 20),
(181, 'ceed sw', 20),
(182, 'pro-ceed 3dr', 20),
(183, 'soul', 20),
(184, 'Sorento new', 20),
(185, 'Sorento Prime', 20),
(186, 'sorento', 20),
(187, 'Sportage New GT-Line', 20),
(188, 'Sportage New', 20),
(189, 'sportage', 20),
(190, 'rio sed 2017', 20),
(191, 'rio hatchback', 20),
(192, 'rio sed', 20),
(193, '4x4 urban 3dr', 21),
(194, '4x4 urban 5dr', 21),
(195, 'kalina sedan', 21),
(196, 'kalina sedan', 21),
(197, 'kalina sport', 21),
(198, 'granta sport', 21),
(199, 'largus cross 7 мест', 21),
(200, 'largus cross 5 мест', 21),
(201, 'largus 7 мест', 21),
(202, 'largus 5 мест', 21),
(203, 'largus фургон', 21),
(204, 'kalina cross', 21),
(205, '4x4 Bronto', 21),
(206, 'breez hatch', 22),
(207, 'Murman', 22),
(208, 'breez sedan', 22),
(209, 'cellya', 22),
(210, 'solano new ll', 22),
(211, 'myway', 22),
(212, 'Smily', 22),
(213, 'smily new', 22),
(214, 'cebrium', 22),
(215, 'x80', 22),
(216, 'x60 new', 22),
(217, 'x60', 22),
(218, 'x50', 22),
(219, 'solano', 22),
(220, 'breez hatch', 24),
(221, '3 sedan', 23),
(222, 'cx-9', 23),
(223, 'cx-5 new', 23),
(224, 'cx-5', 23),
(225, '6 sedan new', 23),
(226, '6 sedan', 23),
(227, '5', 23),
(228, '2', 23),
(229, '3 hatch new', 23),
(230, '3 hatch', 23),
(231, '3 sedan new', 23),
(232, 'Lancer', 26),
(233, 'L200 2014', 26),
(234, 'I-miev', 26),
(235, 'Outlander New', 26),
(236, 'Pajero Sport new 2017', 26),
(237, 'Pajero Sport', 26),
(238, 'Pajero', 26),
(239, 'L200 new', 26),
(240, 'Outlander', 26),
(241, 'asx new', 26),
(242, 'ASX', 26),
(243, 'NP 300 pickup', 27),
(244, 'Terrano NEW', 27),
(245, 'Navara', 27),
(246, 'GT-R', 27),
(247, 'patrol', 27),
(248, 'Pathfinder', 27),
(249, 'murano', 27),
(250, 'terrano', 27),
(251, 'qashqai new', 27),
(252, 'sentra', 27),
(253, 'almera', 27),
(254, 'Corsa 3d', 28),
(255, 'Meriva', 28),
(256, 'Zafira Tourer', 28),
(257, 'Zafira Family', 28),
(258, 'insignia country tourer', 28),
(259, 'Insignia sports tourer', 28),
(260, 'insignia hatch', 28),
(261, 'Insignia sedan', 28),
(262, 'Astra Sports Tourer', 28),
(263, 'Corsa', 28),
(264, 'Astra sw', 28),
(265, 'Astra sw', 28),
(266, 'Antara', 28),
(267, 'astra sedan', 28),
(268, 'Astra 3dr', 28),
(269, 'astra hatch', 28),
(270, 'Astra family sw', 28),
(271, 'Astra Family sedan', 28),
(272, 'Astra Family Hatch', 28),
(273, 'Astra GTC', 28),
(274, 'Mokka', 28),
(275, 'traveller', 29),
(276, 'Expert', 29),
(277, 'Partner фургон', 29),
(278, '208 3D', 29),
(279, '208', 29),
(280, '2008', 29),
(281, '508', 29),
(282, '4008', 29),
(283, '3008', 29),
(284, '408', 29),
(285, '308', 29),
(286, '301', 29),
(287, '107 5dr', 29),
(288, 'R4', 31),
(289, 'R3', 31),
(290, 'R2', 31),
(291, 'gentra', 31),
(292, 'nexia', 31),
(293, 'matiz', 31),
(294, 'master', 32),
(295, 'master шасси', 32),
(296, 'sandero old', 32),
(297, 'logan old', 32),
(298, 'koleos new', 32),
(299, 'koleos', 32),
(300, 'fluence', 32),
(301, 'sandero', 32),
(302, 'sandero stepway new', 32),
(303, 'sandero stepway', 32),
(304, 'duster new', 32),
(305, 'R4', 32),
(306, 'Roomster', 33),
(307, 'Kodiaq', 33),
(308, 'suprb combi', 33),
(309, 'Octavia RS', 33),
(310, 'Fabia combi', 33),
(311, 'octavia Combi new 2017', 33),
(312, 'octavia Combi', 33),
(313, 'Fabia', 33),
(314, 'superb', 33),
(315, 'yeti outdoor', 33),
(316, 'yeti', 33),
(317, 'rapid new 2017', 33),
(318, 'rapid', 33),
(319, 'octavia New 2017', 33),
(320, 'octavia', 33),
(321, 'Tivoli', 34),
(322, 'XLV', 34),
(323, 'Actyon sports', 34),
(324, 'Rexton', 34),
(325, 'Stavic', 34),
(326, 'Kyron', 34),
(327, 'Actyon new', 34),
(328, 'Actyon', 34),
(329, 'SX4', 35),
(330, 'Swift 5dr', 35),
(331, 'Swift 3dr', 35),
(332, 'SX4 Sedan', 35),
(333, 'Splash', 35),
(334, 'Jimny', 35),
(335, 'Grand Vitara New', 35),
(336, 'SX4 hatch', 35),
(337, 'SX4 Classic', 35),
(338, 'SX4 new', 35),
(339, 'Grand Vitara 5d', 35),
(340, 'Grand Vitara 3d', 35),
(341, 'Vitara S 1.4Т', 35),
(342, 'Vitara', 35),
(343, 'corolla 2017', 37),
(344, 'Hilux', 37),
(345, 'Verso', 37),
(346, 'Venza', 37),
(347, 'Rav 4 new', 37),
(348, 'Land Cruiser Prado 7 мест', 37),
(349, 'Land Cruiser Prado', 37),
(350, 'Highlander', 37),
(351, 'rav4', 37),
(352, 'corolla', 37),
(353, 'camry', 37),
(354, 'SX4', 37),
(355, 'golf 3d', 38),
(356, 'Tiguan new', 38),
(357, 'Touran', 38),
(358, 'polo hatch', 38),
(359, 'beetle', 38),
(360, 'golf gti', 38),
(361, 'Amarok', 38),
(362, 'Passat CC', 38),
(363, 'passat new 2017', 38),
(364, 'alltrack', 38),
(365, 'scirocco', 38),
(366, 'passat', 38),
(367, 'golf', 38),
(368, 'tiguan', 38),
(369, 'jetta', 38),
(370, 'polo sedan new', 38),
(371, 'Z300', 39),
(372, 'T600', 39),
(373, 'Tingo', 1),
(374, 'Estina', 1),
(375, 'Corda', 1),
(376, 'Alsvin V7', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `rfq_price`
--

CREATE TABLE `rfq_price` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rfq_price`
--

INSERT INTO `rfq_price` (`id`, `shop_id`, `url`, `price`, `model_id`, `created_at`, `updated_at`, `status`) VALUES
(18, 6, 'https://www.saloncentr.ru/catalog/changan/alsvin-v7', 489000, 376, '2017-11-02 15:57:48', '0000-00-00 00:00:00', 'no'),
(19, 6, 'https://www.saloncentr.ru/catalog/changan/cs35', 639900, 10, '2017-11-02 15:59:09', '0000-00-00 00:00:00', 'no'),
(20, 6, 'https://www.saloncentr.ru/catalog/changan/cs75', 660000, 11, '2017-11-02 16:00:16', '0000-00-00 00:00:00', 'no'),
(21, 6, 'https://www.saloncentr.ru/catalog/changan/eado', 400000, 13, '2017-11-02 16:01:29', '0000-00-00 00:00:00', 'no'),
(22, 6, 'https://www.saloncentr.ru/catalog/changan/raeton', 1179000, 14, '2017-11-02 16:03:06', '0000-00-00 00:00:00', 'no'),
(23, 7, 'https://riaavto.ru/changan/raeton', 1179000, 14, '2017-11-02 16:04:45', '0000-00-00 00:00:00', 'no'),
(24, 7, 'https://riaavto.ru/changan/eado-xt', 400000, 12, '2017-11-02 16:08:26', '0000-00-00 00:00:00', 'no'),
(25, 7, 'https://riaavto.ru/changan/eado-xt', 400000, 13, '2017-11-02 16:09:18', '0000-00-00 00:00:00', 'no'),
(26, 7, 'https://riaavto.ru/changan/raeton', 1179000, 14, '2017-11-02 16:10:30', '0000-00-00 00:00:00', 'no'),
(27, 1, 'http://renamax-auto.ru/auto/changan/cs35', 619000, 10, '2017-11-03 08:39:28', '0000-00-00 00:00:00', 'no'),
(28, 1, 'http://renamax-auto.ru/auto/changan/Eado', 380000, 13, '2017-11-03 08:40:13', '0000-00-00 00:00:00', 'no'),
(29, 1, 'http://renamax-auto.ru/auto/changan/Raeton', 939000, 14, '2017-11-03 08:40:42', '0000-00-00 00:00:00', 'no'),
(30, 2, 'http://www.cardex.su/catalog/changan/cs35/', 629000, 10, '2017-11-03 08:43:20', '0000-00-00 00:00:00', 'no'),
(31, 2, 'http://www.cardex.su/catalog/changan/eado/', 390000, 13, '2017-11-03 08:48:46', '0000-00-00 00:00:00', 'no'),
(32, 2, 'http://www.cardex.su/catalog/changan/raeton/', 0, 14, '2017-11-03 08:50:00', '0000-00-00 00:00:00', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `rfq_shops`
--

CREATE TABLE `rfq_shops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rfq_shops`
--

INSERT INTO `rfq_shops` (`id`, `name`, `url`, `city`) VALUES
(1, 'Renamax', 'renamax-auto.ru', 1),
(2, 'Cardex', 'cardex.su', 1),
(3, 'КРОСТ', 'krost-auto.ru', 1),
(4, 'Автоцентр &quot;GUTA MOTOTRS&quot;', 'guta-motors.ru', 1),
(5, 'Автосалон МАС Моторс', 'www.masmotors.ru', 1),
(6, 'АВТОСАЛОН &quot;ЦЕНТРАЛЬНЫЙ&quot;', 'www.saloncentr.ru', 1),
(7, 'Автосалон RIA AVTO', 'riaavto.ru', 1),
(33, 'Автоцентр &quot;Приморский&quot;', 'primavto.ru', 2),
(9, 'ООО «DARCARS»', 'darcars.ru', 1),
(10, 'ОО «Sky–Avto»', 'sky-avto.ru', 1),
(13, 'Пилот Авто', 'pilot-avto77.ru', 1),
(12, 'ROSKO', 'www.rosko-auto.ru', 1),
(27, 'www.cardex.city', 'www.cardex.city', 1),
(14, 'Автосалон &quot;ALTERA&quot;', 'altera-auto.ru', 1),
(15, 'Компания Exist Auto', 'exist-auto.moscow', 1),
(16, 'Гамма Моторс', 'gamma-motors.spb.ru', 2),
(18, 'Автосалон &quot;OHTA AUTO&quot;', 'ohta-auto.ru', 2),
(19, 'Автоцентр &quot;Смольный&quot;', 'www.asmolny.ru', 2),
(20, 'Компанией «Астория Моторс»', 'astoriamotors.ru', 2),
(21, 'kremlin-auto', 'kremlin-auto.ru', 2),
(22, 'Автоцентр &quot;АвтоПОРТ&quot;', 'autoports.ru', 2),
(23, 'askona-motors', 'askona-motors.ru', 2),
(24, 'ОХта центр', 'autocentrohta.ru', 2),
(25, 'Авант Моторс', 'avant-motors.ru', 2),
(26, 'Автоцентр «АЛЬФАПОИНТ»', 'alfapoint.spb.ru', 2),
(30, 'сильвер-авто.рф', 'сильвер-авто.рф', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `rfq_aut`
--
ALTER TABLE `rfq_aut`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rfq_cars`
--
ALTER TABLE `rfq_cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rfq_model`
--
ALTER TABLE `rfq_model`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rfq_price`
--
ALTER TABLE `rfq_price`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rfq_shops`
--
ALTER TABLE `rfq_shops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `rfq_aut`
--
ALTER TABLE `rfq_aut`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `rfq_cars`
--
ALTER TABLE `rfq_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `rfq_model`
--
ALTER TABLE `rfq_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT для таблицы `rfq_price`
--
ALTER TABLE `rfq_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `rfq_shops`
--
ALTER TABLE `rfq_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
