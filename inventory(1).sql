-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 08:46 AM
-- Server version: 10.4.13-MariaDB-log
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL),
(2, 'Acer', NULL, NULL),
(3, 'Fantech', NULL, NULL),
(4, 'Tech Pro', NULL, NULL),
(5, 'HP', NULL, NULL),
(6, 'Dell', NULL, NULL),
(7, 'Microlab', NULL, NULL),
(8, 'Desktop', NULL, NULL),
(9, 'Laptop', NULL, NULL),
(10, 'Segate', NULL, NULL),
(11, 'Gigabyte', NULL, NULL),
(12, 'Asus', NULL, NULL),
(13, 'MSI', NULL, NULL),
(14, 'Foxconn', NULL, NULL),
(15, 'Intel', NULL, NULL),
(16, 'Nvidia', NULL, NULL),
(17, 'Pegatrone', '2020-09-09 10:07:52', '2020-09-09 10:07:52'),
(18, 'Absolute Software', NULL, NULL),
(19, 'Accell', NULL, NULL),
(20, 'AccessHD', NULL, NULL),
(21, 'AccuScreen', NULL, NULL),
(22, 'ACECAD', NULL, NULL),
(23, 'Acertant Technologies', NULL, NULL),
(24, 'Acorn Media', NULL, NULL),
(25, 'Acoustic Research', NULL, NULL),
(26, 'ACP-EP', NULL, NULL),
(27, 'Acronis', NULL, NULL),
(28, '​Activision', NULL, NULL),
(29, 'Adaptec', NULL, NULL),
(30, 'Add-ins LLC', NULL, NULL),
(31, 'Addlogix', NULL, NULL),
(32, 'Addonics Communications', NULL, NULL),
(33, 'Adesso Inc.', NULL, NULL),
(34, 'Adobe', NULL, NULL),
(35, '​​​ADS Enterprises', NULL, NULL),
(36, 'ADV Films', NULL, NULL),
(37, 'AeroCool', NULL, NULL),
(38, 'Agetec', NULL, NULL),
(39, 'Agnitum Ltd.', NULL, NULL),
(40, 'Aiko Solutions', NULL, NULL),
(41, 'Aimersoft Studio', NULL, NULL),
(42, 'Alawar Entertainment, Inc.', NULL, NULL),
(43, 'AlbyMedia Studio', NULL, NULL),
(44, 'Aleratec', NULL, NULL),
(45, 'Allied Telesyn', NULL, NULL),
(46, 'Allume Systems Inc.', NULL, NULL),
(47, 'Alpha Software, Inc.', NULL, NULL),
(48, 'Altec Lansing', NULL, NULL),
(49, 'Altego By Samsill', NULL, NULL),
(50, 'AltraMedia Solution Inc.', NULL, NULL),
(51, 'Aluratek', NULL, NULL),
(52, 'Ambir Technology, Inc.', NULL, NULL),
(53, 'AMD', NULL, NULL),
(54, 'American Game Factory', NULL, NULL),
(55, 'American Recorder Technologies', NULL, NULL),
(56, 'AmeriChannels, LLC.', NULL, NULL),
(57, 'AmerTac', NULL, NULL),
(58, 'AmpliVox Sound Systems', NULL, NULL),
(59, 'AnalystSoft', NULL, NULL),
(60, 'Ancodia software', NULL, NULL),
(61, 'Anconia, Inc.', NULL, NULL),
(62, 'AOC', NULL, NULL),
(63, 'AOpen America', NULL, NULL),
(64, 'APC', NULL, NULL),
(65, 'Apevia International', NULL, NULL),
(66, 'Apex Computer Technology', NULL, NULL),
(67, 'Apple', NULL, NULL),
(68, 'Applian Technologies, Inc.', NULL, NULL),
(69, 'Archos', NULL, NULL),
(70, 'ArcSoft, Inc.', NULL, NULL),
(71, 'Ardustry Home Entertainment', NULL, NULL),
(72, 'Ariztical Entertainment', NULL, NULL),
(73, 'Arkon Resources Inc.', NULL, NULL),
(74, 'Arsenal Gaming', NULL, NULL),
(75, 'Artec', NULL, NULL),
(76, 'Asante', NULL, NULL),
(77, 'Ashford Games', NULL, NULL),
(78, 'Asylum Home Entertainment', NULL, NULL),
(79, 'ATT', NULL, NULL),
(80, 'Atdec', NULL, NULL),
(81, 'Aten Technology', NULL, NULL),
(82, 'Atherion Software', NULL, NULL),
(83, 'ATI Technologies', NULL, NULL),
(84, 'Atlantic', NULL, NULL),
(85, 'Atlona', NULL, NULL),
(86, 'Atlus', NULL, NULL),
(87, 'Audio-Technica U.S., Inc.', NULL, NULL),
(88, 'AudioSource', NULL, NULL),
(89, 'Audiovox', NULL, NULL),
(90, 'Auslogics Software Pty Ltd', NULL, NULL),
(91, 'Autodesk', NULL, NULL),
(92, 'Auzentech Inc.', NULL, NULL),
(93, 'Avanquest', NULL, NULL),
(94, 'AVerMedia', NULL, NULL),
(95, 'Avery', NULL, NULL),
(96, 'AVF', NULL, NULL),
(97, 'AVG Technologies USA, Inc.', NULL, NULL),
(98, 'Axis', NULL, NULL),
(99, 'Azden', NULL, NULL),
(100, 'Babylon L.T.D', NULL, NULL),
(101, 'Bandai Entertainment ', NULL, NULL),
(102, 'Battery Technology', NULL, NULL),
(103, 'BBE Sound', NULL, NULL),
(104, 'BC Soft Games Inc.', NULL, NULL),
(105, 'Belkin', NULL, NULL),
(106, 'Beltronics USA', NULL, NULL),
(107, 'BenQ', NULL, NULL),
(108, 'Best Data Products', NULL, NULL),
(109, 'BFG Technologies', NULL, NULL),
(110, 'BFS ENT and Multimedia', NULL, NULL),
(111, 'Bgears', NULL, NULL),
(112, 'Biostar', NULL, NULL),
(113, 'BITS Limited', NULL, NULL),
(114, 'BK Media', NULL, NULL),
(115, 'BlackBerry', NULL, NULL),
(116, 'BlackLine GPS', NULL, NULL),
(117, 'BlazeVideo, Inc.', NULL, NULL),
(118, 'Bling Software', NULL, NULL),
(119, 'Blubox Software Ltd', NULL, NULL),
(120, 'Blue Microphones', NULL, NULL),
(121, 'Blue Project Software', NULL, NULL),
(122, 'BlueAnt', NULL, NULL),
(123, 'BluSens', NULL, NULL),
(124, 'Bohemia Interactive', NULL, NULL),
(125, 'Booksty', NULL, NULL),
(126, 'BoomerX Software', NULL, NULL),
(127, 'Bose', NULL, NULL),
(128, 'Boss Audio', NULL, NULL),
(129, 'Boston Acoustics', NULL, NULL),
(130, 'Bracketron Inc', NULL, NULL),
(131, 'Brain Damage Films', NULL, NULL),
(132, 'BreatheAudio', NULL, NULL),
(133, 'Brentwood Home Video', NULL, NULL),
(134, 'Brother', NULL, NULL),
(135, 'Buena Vista Home Video', NULL, NULL),
(136, 'Buffalo Technology', NULL, NULL),
(137, 'Buka Entertainment', NULL, NULL),
(138, 'Business Logic Corporation', NULL, NULL),
(139, 'BVS Development Corporation', NULL, NULL),
(140, 'CA Inc.', NULL, NULL),
(141, 'Cables To Go', NULL, NULL),
(142, 'Cables Unlimited', NULL, NULL),
(143, 'Candella Software Ltd.', NULL, NULL),
(144, 'Canon', NULL, NULL),
(145, 'Canopus', NULL, NULL),
(146, 'CAPCOM', NULL, NULL),
(147, 'CardScan Inc.', NULL, NULL),
(148, 'CareWindows Corp.', NULL, NULL),
(149, 'Carnival Software', NULL, NULL),
(150, 'Case Logic', NULL, NULL),
(151, 'Case Mate', NULL, NULL),
(152, 'Casio', NULL, NULL),
(153, 'Cavalry', NULL, NULL),
(154, 'CD3', NULL, NULL),
(155, 'Celframe', NULL, NULL),
(156, 'Centon', NULL, NULL),
(157, 'Cerwin-Vega', NULL, NULL),
(158, '​CH Products', NULL, NULL),
(159, 'Channel Master', NULL, NULL),
(160, 'Channel Plus', NULL, NULL),
(161, 'Channel Vision Technology', NULL, NULL),
(162, 'Chester Creek Technologies, Inc.', NULL, NULL),
(163, 'Chief Architect', NULL, NULL),
(164, 'Chief Manufacturing', NULL, NULL),
(165, 'Chronic Logic LLC', NULL, NULL),
(166, 'Cirago', NULL, NULL),
(167, 'Cisco', NULL, NULL),
(168, 'Clarion', NULL, NULL),
(169, 'ClearView', NULL, NULL),
(170, 'Clover Electronics USA', NULL, NULL),
(171, 'Cobra Electronics', NULL, NULL),
(172, 'Coby', NULL, NULL),
(173, 'Codemasters', NULL, NULL),
(174, 'CoffeeCup Software', NULL, NULL),
(175, 'CoGen Media', NULL, NULL),
(176, 'CommuniGate Systems', NULL, NULL),
(177, 'Compaq', NULL, NULL),
(178, 'Compucase', NULL, NULL),
(179, 'Conceiva Pty. Ltd.', NULL, NULL),
(180, 'Consumervision Inc.  ', NULL, NULL),
(181, 'Contour Design', NULL, NULL),
(182, 'Cool Audio Ltd', NULL, NULL),
(183, 'Cooler Master', NULL, NULL),
(184, 'CoolIT', NULL, NULL),
(185, 'Coolmax', NULL, NULL),
(186, 'Copernic Inc.', NULL, NULL),
(187, 'Corbomite Games', NULL, NULL),
(188, 'Corel', NULL, NULL),
(189, 'Corsair', NULL, NULL),
(190, 'CP Technologies', NULL, NULL),
(191, 'Cradlepoint', NULL, NULL),
(192, 'Crave', NULL, NULL),
(193, 'Creative Labs', NULL, NULL),
(194, 'Criterion', NULL, NULL),
(195, 'Crucial', NULL, NULL),
(196, 'CTA Digital', NULL, NULL),
(197, 'Cyber Acoustics', NULL, NULL),
(198, 'CyberDefender Corporation', NULL, NULL),
(199, 'Cyberlink Corp.', NULL, NULL),
(200, 'CyberPatrol, LLC', NULL, NULL),
(201, 'CyberPower Systems', NULL, NULL),
(202, '​Cybertron', NULL, NULL),
(203, 'D-Link', NULL, NULL),
(204, 'D3 Publisher of America', NULL, NULL),
(205, 'Dane-Elec Memory', NULL, NULL),
(206, 'Data Protection Solutions', NULL, NULL),
(207, 'Data Robotics', NULL, NULL),
(208, 'DataComm Electronics', NULL, NULL),
(209, 'Datalab Inc.', NULL, NULL),
(210, 'Datamation Systems Inc.', NULL, NULL),
(211, 'DataNumen, Inc.', NULL, NULL),
(212, 'Denon', NULL, NULL),
(213, 'Destination Software', NULL, NULL),
(214, 'Diablo Tek', NULL, NULL),
(215, 'Diamond Multimedia', NULL, NULL),
(216, 'Digicell', NULL, NULL),
(217, 'Digipower', NULL, NULL),
(218, 'Digital Future', NULL, NULL),
(219, 'Digital Innovations', NULL, NULL),
(220, 'Digital Smart Software Inc', NULL, NULL),
(221, '​Disney Interactive Studios', NULL, NULL),
(222, 'Dito Inc Limited', NULL, NULL),
(223, 'DLO', NULL, NULL),
(224, 'DMSoft Technologies', NULL, NULL),
(225, 'DracoSoftware, LLC', NULL, NULL),
(226, 'Dragonray Studios', NULL, NULL),
(227, 'Draper', NULL, NULL),
(228, 'Dreamcatcher', NULL, NULL),
(229, 'Dreamgear', NULL, NULL),
(230, 'DreamQuest Software ', NULL, NULL),
(231, 'DT Utilities', NULL, NULL),
(232, 'Dual', NULL, NULL),
(233, 'Dual Electronics Corporation', NULL, NULL),
(234, 'Duracell', NULL, NULL),
(235, 'DVD', NULL, NULL),
(236, 'DYMO', NULL, NULL),
(237, 'E-MU', NULL, NULL),
(238, 'EA', NULL, NULL),
(239, 'EA Games', NULL, NULL),
(240, 'Eagle Tech', NULL, NULL),
(241, 'EASEUS', NULL, NULL),
(242, '​easystore', NULL, NULL),
(243, 'Echo Bridge Entertainment', NULL, NULL),
(244, 'Edge Tech Corp', NULL, NULL),
(245, 'eGames', NULL, NULL),
(246, 'Eidos', NULL, NULL),
(247, 'EIZO NANAO TECHNOLOGIES', NULL, NULL),
(248, 'Elecard', NULL, NULL),
(249, 'Elite', NULL, NULL),
(250, 'Elite Screens', NULL, NULL),
(251, 'Elliott Enterprise Solutions', NULL, NULL),
(252, 'Elo', NULL, NULL),
(253, 'eMachines', NULL, NULL),
(254, 'Ematic', NULL, NULL),
(255, 'EMC Corporation', NULL, NULL),
(256, 'Emerge', NULL, NULL),
(257, 'Emerson', NULL, NULL),
(258, 'Empire Brands', NULL, NULL),
(259, 'Empire Picture Inc.', NULL, NULL),
(260, 'ENC Security Systems Inc.', NULL, NULL),
(261, 'Encore Software', NULL, NULL),
(262, 'Energizer', NULL, NULL),
(263, 'EnGenius Technologies', NULL, NULL),
(264, 'Enteractive', NULL, NULL),
(265, 'ePadlink', NULL, NULL),
(266, 'Eph Software', NULL, NULL),
(267, 'Epson', NULL, NULL),
(268, 'Ergotron', NULL, NULL),
(269, 'ESI', NULL, NULL),
(270, 'Eton', NULL, NULL),
(271, 'Etymotic Research', NULL, NULL),
(272, 'Everki', NULL, NULL),
(273, 'EVGA', NULL, NULL),
(274, 'eWorld Learning', NULL, NULL),
(275, 'Excalibur Electronics', NULL, NULL),
(276, 'Eye Fi', NULL, NULL),
(277, 'Eye of the Storm Studios', NULL, NULL),
(278, 'EZ Dupe', NULL, NULL),
(279, 'ezGear', NULL, NULL),
(280, 'Eznetsoft LLC', NULL, NULL),
(281, 'Facets Multimedia', NULL, NULL),
(282, 'Fantom Drives', NULL, NULL),
(283, 'Fellowes', NULL, NULL),
(284, 'Fender', NULL, NULL),
(285, 'FileStream, Inc.', NULL, NULL),
(286, 'Fluke Networks', NULL, NULL),
(287, 'FOGWARE', NULL, NULL),
(288, 'Formitecho Information Technology', NULL, NULL),
(289, 'FormTool', NULL, NULL),
(290, 'Fortinet', NULL, NULL),
(291, 'FOX Home Entertainment', NULL, NULL),
(292, 'FoxEasy Inc.', NULL, NULL),
(293, 'Franklin Electronic', NULL, NULL),
(294, 'FreeTime Soft Inc', NULL, NULL),
(295, 'FTPx Corp', NULL, NULL),
(296, 'Fujifilm', NULL, NULL),
(297, 'Fujitsu (Computers)', NULL, NULL),
(298, 'Fujitsu (Scanners)', NULL, NULL),
(299, 'G-Recorder', NULL, NULL),
(300, 'G-Technologies', NULL, NULL),
(301, 'G7 Productivity Systems', NULL, NULL),
(302, 'Galaxy', NULL, NULL),
(303, 'GameFitz', NULL, NULL),
(304, 'Gammick Entertainment S.L', NULL, NULL),
(305, 'Garmin International', NULL, NULL),
(306, 'Gateway', NULL, NULL),
(307, 'Gear Head LLC', NULL, NULL),
(308, 'Gefen', NULL, NULL),
(309, 'Gemini', NULL, NULL),
(310, 'Geneon Entertainment ', NULL, NULL),
(311, 'General Electric - UPS', NULL, NULL),
(312, 'Genius', NULL, NULL),
(313, 'Genius Products INC', NULL, NULL),
(314, 'Global Visions Software', NULL, NULL),
(315, 'GN Netcom', NULL, NULL),
(316, 'Goldhil Entertainment', NULL, NULL),
(317, 'GPX Inc', NULL, NULL),
(318, 'Grace Digital', NULL, NULL),
(319, 'Grandtec USA', NULL, NULL),
(320, 'Great Game Products', NULL, NULL),
(321, 'Griffin Technology', NULL, NULL),
(322, 'GRR Systems, Inc.', NULL, NULL),
(323, 'GT Media Inc.', NULL, NULL),
(324, 'Gyration', NULL, NULL),
(325, '​HannsG', NULL, NULL),
(326, 'Hannspree USA', NULL, NULL),
(327, 'Hart Sharp Video', NULL, NULL),
(328, 'Hauppauge', NULL, NULL),
(329, 'Hawking Technologies', NULL, NULL),
(330, 'HBO Home Video', NULL, NULL),
(331, 'Henstooth Video ', NULL, NULL),
(332, 'HeroCraft', NULL, NULL),
(333, 'Hideki Electronics', NULL, NULL),
(334, 'Hiro', NULL, NULL),
(335, 'HIS - Hightech Information Systems', NULL, NULL),
(336, 'Hitachi', NULL, NULL),
(337, 'Holovision', NULL, NULL),
(338, 'Home Automation Inc', NULL, NULL),
(339, 'Honest Technology', NULL, NULL),
(340, 'Honestech, Inc', NULL, NULL),
(341, 'Honeywell', NULL, NULL),
(342, 'Hori', NULL, NULL),
(343, 'Hosa Technology', NULL, NULL),
(344, 'HTC', NULL, NULL),
(345, 'Hyundai IT America Corp. Monitors', NULL, NULL),
(346, 'IBM', NULL, NULL),
(347, 'Icon', NULL, NULL),
(348, 'Ignition Entertainment', NULL, NULL),
(349, 'iGo', NULL, NULL),
(350, 'iHome', NULL, NULL),
(351, 'IHS, Incorporated', NULL, NULL),
(352, 'Image Entertainment', NULL, NULL),
(353, 'Imation', NULL, NULL),
(354, 'IMC Networks', NULL, NULL),
(355, 'iMicro ELectronics Limited', NULL, NULL),
(356, 'ImportExcel', NULL, NULL),
(357, 'IMSI', NULL, NULL),
(358, 'Incomedia', NULL, NULL),
(359, 'Individual Software', NULL, NULL),
(360, 'Ineo Technology Inc.', NULL, NULL),
(361, 'InfinaDyne', NULL, NULL),
(362, 'InFocus', NULL, NULL),
(363, 'inKline Global, Inc.', NULL, NULL),
(364, 'Inland Computer Accessories', NULL, NULL),
(365, 'Innocode', NULL, NULL),
(366, 'Innovation', NULL, NULL),
(367, 'Innovera', NULL, NULL),
(368, 'Innovex', NULL, NULL),
(369, 'Intec', NULL, NULL),
(370, 'Intec INC', NULL, NULL),
(371, 'intellerum', NULL, NULL),
(372, 'IntelliTouch EOS', NULL, NULL),
(373, 'Interion', NULL, NULL),
(374, 'Interlink Electronics', NULL, NULL),
(375, 'Intova', NULL, NULL),
(376, 'Intuit Inc.', NULL, NULL),
(377, 'IObit', NULL, NULL),
(378, 'Iogear', NULL, NULL),
(379, 'Iomega', NULL, NULL),
(380, 'ION', NULL, NULL),
(381, 'Ion Audio', NULL, NULL),
(382, 'iS3, Inc.', NULL, NULL),
(383, 'iStarUSA', NULL, NULL),
(384, 'Ivinex', NULL, NULL),
(385, 'iWinSoft Inc.', NULL, NULL),
(386, 'Jenn-Air', NULL, NULL),
(387, 'JVC', NULL, NULL),
(388, 'KAD Software', NULL, NULL),
(389, 'Kalypso Media UK Ltd.', NULL, NULL),
(390, 'KaPlur', NULL, NULL),
(391, 'Kensington', NULL, NULL),
(392, 'Kenwood', NULL, NULL),
(393, 'KeyScan', NULL, NULL),
(394, 'KeyTronic', NULL, NULL),
(395, 'KGuard Security', NULL, NULL),
(396, 'Kingston', NULL, NULL),
(397, 'Kingwin', NULL, NULL),
(398, 'KIYUT Software', NULL, NULL),
(399, 'Klip xtreme', NULL, NULL),
(400, 'Klipsch', NULL, NULL),
(401, 'Koch International ', NULL, NULL),
(402, 'Kodak', NULL, NULL),
(403, 'Kodak Digital Scanners', NULL, NULL),
(404, 'Koei', NULL, NULL),
(405, 'KOMOTION, Inc.', NULL, NULL),
(406, 'Konami', NULL, NULL),
(407, '​Konftel Inc', NULL, NULL),
(408, 'Konica Minolta', NULL, NULL),
(409, 'Konnet', NULL, NULL),
(410, 'KORNER ENTERTAINMENT, SL', NULL, NULL),
(411, 'Koss', NULL, NULL),
(412, 'LaCie', NULL, NULL),
(413, 'Laguna Productions INC', NULL, NULL),
(414, 'Lantronix', NULL, NULL),
(415, 'LapLink', NULL, NULL),
(416, 'Laplink Software', NULL, NULL),
(417, 'Lavasoft AB', NULL, NULL),
(418, 'LC Technology International', NULL, NULL),
(419, 'LeapFrog', NULL, NULL),
(420, 'Lenexpo', NULL, NULL),
(421, 'Lenmar', NULL, NULL),
(422, 'Lenovo', NULL, NULL),
(423, 'LevelOne', NULL, NULL),
(424, 'Leviton', NULL, NULL),
(425, 'Lexar', NULL, NULL),
(426, 'Lexmark', NULL, NULL),
(427, 'LG Electronics', NULL, NULL),
(428, 'LG Software Innovations', NULL, NULL),
(429, 'LifSoft!', NULL, NULL),
(430, 'Likno Software', NULL, NULL),
(431, 'Linear', NULL, NULL),
(432, 'Linkskey', NULL, NULL),
(433, 'Linksys', NULL, NULL),
(434, 'Lions Gate Home Ent.', NULL, NULL),
(435, 'Lite-On', NULL, NULL),
(436, 'Livio Myine', NULL, NULL),
(437, 'Logitech', NULL, NULL),
(438, 'Lorex', NULL, NULL),
(439, 'Lowepro', NULL, NULL),
(440, 'LSI Logic', NULL, NULL),
(441, 'Lucas Arts', NULL, NULL),
(442, 'Lumiere L.A.', NULL, NULL),
(443, 'M-AUDIO', NULL, NULL),
(444, 'M-Gear Brand', NULL, NULL),
(445, 'M4 Solutions, LLC', NULL, NULL),
(446, 'Macdaddy Entertainment', NULL, NULL),
(447, 'Mach Speed', NULL, NULL),
(448, 'Macware', NULL, NULL),
(449, 'MAD Catz', NULL, NULL),
(450, 'Madacy Entertainment GRP', NULL, NULL),
(451, 'Magellan', NULL, NULL),
(452, 'Magic Sing', NULL, NULL),
(453, 'Magic Video Software Inc.', NULL, NULL),
(454, 'MAGIX', NULL, NULL),
(455, 'MAGIX Entertainment', NULL, NULL),
(456, 'Magnolia Pictures', NULL, NULL),
(457, 'MagTek', NULL, NULL),
(458, 'Maverick Entertainment', NULL, NULL),
(459, 'Maxell', NULL, NULL),
(460, 'Maxima Games', NULL, NULL),
(461, 'Maximizer Software Inc.', NULL, NULL),
(462, 'Maximum Software', NULL, NULL),
(463, 'Maxsa Innovations', NULL, NULL),
(464, 'MaylineGroup', NULL, NULL),
(465, 'McFunSoft Inc.', NULL, NULL),
(466, 'Media Blasters Inc.', NULL, NULL),
(467, 'MegaSystems', NULL, NULL),
(468, 'Memorex', NULL, NULL),
(469, 'Memory Solution Studio', NULL, NULL),
(470, 'Meridian4', NULL, NULL),
(471, 'Metra Electronics', NULL, NULL),
(472, 'Metrix Audio Solution Inc', NULL, NULL),
(473, 'Metrix Media Software Inc.', NULL, NULL),
(474, 'Metro DataVac', NULL, NULL),
(475, 'Micro Innovations', NULL, NULL),
(476, 'Microboards', NULL, NULL),
(477, 'Microcom Technologies', NULL, NULL),
(478, 'MicroNet', NULL, NULL),
(479, 'Microsoft', NULL, NULL),
(480, 'Microsoft XBOX', NULL, NULL),
(481, 'MicroWorld Technologies Inc.', NULL, NULL),
(482, 'Midland', NULL, NULL),
(483, 'Midway', NULL, NULL),
(484, 'Mightsoft Co., Ltd.', NULL, NULL),
(485, 'Minuteman UPS', NULL, NULL),
(486, 'Mitsubishi Digital Television', NULL, NULL),
(487, 'Mitsubishi Electric', NULL, NULL),
(488, 'MKHB Enterprises Inc.', NULL, NULL),
(489, 'Mobile Systems, Inc.', NULL, NULL),
(490, 'MobileEdge', NULL, NULL),
(491, 'Monarch Video Assoc. ', NULL, NULL),
(492, 'Monster Cable Power Products', NULL, NULL),
(493, 'Monster Cable Products', NULL, NULL),
(494, 'Monster Power', NULL, NULL),
(495, 'Monterey Home Video', NULL, NULL),
(496, 'Morpheus Software LLC', NULL, NULL),
(497, 'Motorola', NULL, NULL),
(498, 'Movie Outline Software', NULL, NULL),
(499, 'Moyea Software Co.,Ltd', NULL, NULL),
(500, 'MPI Home Video', NULL, NULL),
(501, 'MTI Productions', NULL, NULL),
(502, 'Mustek', NULL, NULL),
(503, 'muvee Technologies', NULL, NULL),
(504, 'My Privacy Tools, Inc.', NULL, NULL),
(505, 'MyGoTV Innovative DTV Solutions', NULL, NULL),
(506, 'MyWindowsDoctor Corp', NULL, NULL),
(507, 'Nady', NULL, NULL),
(508, 'Namco', NULL, NULL),
(509, 'NCH Software', NULL, NULL),
(510, 'NComputing', NULL, NULL),
(511, 'NCsoft', NULL, NULL),
(512, 'Neat', NULL, NULL),
(513, 'Neatware', NULL, NULL),
(514, 'NEC Display Solutions', NULL, NULL),
(515, 'Nero Inc.', NULL, NULL),
(516, 'NetDuster Inc.', NULL, NULL),
(517, 'NetGear', NULL, NULL),
(518, 'Netopia', NULL, NULL),
(519, 'NEW Line Home Video', NULL, NULL),
(520, 'NEW Video Group', NULL, NULL),
(521, 'NEW Yorker Films Video', NULL, NULL),
(522, 'Newsoft America Inc.', NULL, NULL),
(523, 'Newton Peripherals', NULL, NULL),
(524, 'NextGen', NULL, NULL),
(525, 'NextLevel Systems', NULL, NULL),
(526, 'NextUp Technologies, LLC.', NULL, NULL),
(527, 'NextWindow', NULL, NULL),
(528, 'Night Owl Optics', NULL, NULL),
(529, 'Night Owl Security', NULL, NULL),
(530, 'NotePage, Inc.', NULL, NULL),
(531, 'Nova Development', NULL, NULL),
(532, 'Novosoft LLC', NULL, NULL),
(533, 'Nuance', NULL, NULL),
(534, 'Numark', NULL, NULL),
(535, 'NuTone', NULL, NULL),
(536, 'NXG Technology', NULL, NULL),
(537, 'Nyko', NULL, NULL),
(538, 'NZXT', NULL, NULL),
(539, 'OCZ', NULL, NULL),
(540, 'Odyssey Pro Sound', NULL, NULL),
(541, 'OfficeWork Software', NULL, NULL),
(542, 'Oki Data', NULL, NULL),
(543, 'Olympus', NULL, NULL),
(544, 'Omega Magnus Corp.', NULL, NULL),
(545, 'OmniMount', NULL, NULL),
(546, 'Omnitronics Pro Sound', NULL, NULL),
(547, 'On Hand Software', NULL, NULL),
(548, 'One Touch', NULL, NULL),
(549, 'One Voice Technologies', NULL, NULL),
(550, 'Onkyo', NULL, NULL),
(551, 'online media promotions ltd', NULL, NULL),
(552, 'ooma Inc.', NULL, NULL),
(553, 'Opti-UPS', NULL, NULL),
(554, 'Optical Quantum', NULL, NULL),
(555, 'Option Wireless Technology', NULL, NULL),
(556, 'Optoma', NULL, NULL),
(557, 'orb games', NULL, NULL),
(558, 'Org-Matters Solutions Inc.', NULL, NULL),
(559, 'Oscilloscope Laboratories', NULL, NULL),
(560, 'Otterbox', NULL, NULL),
(561, 'Outertech', NULL, NULL),
(562, 'P3', NULL, NULL),
(563, 'Paladin Tools', NULL, NULL),
(564, 'Palo Alto Software', NULL, NULL),
(565, 'Panasonic', NULL, NULL),
(566, 'Panavise', NULL, NULL),
(567, 'Panda Security Canada', NULL, NULL),
(568, 'Pandigital', NULL, NULL),
(569, 'Paramount Home Video', NULL, NULL),
(570, 'Passware Inc.', NULL, NULL),
(571, 'Pathfinder Home ENT', NULL, NULL),
(572, 'PCCHIPS USA', NULL, NULL),
(573, 'PCSecurityShield', NULL, NULL),
(574, 'Peachtree', NULL, NULL),
(575, 'Penpower Technology Ltd.', NULL, NULL),
(576, 'Pentax', NULL, NULL),
(577, 'Phantom EFX', NULL, NULL),
(578, 'Philips', NULL, NULL),
(579, 'Philips Consumer Electronics', NULL, NULL),
(580, 'Phonex', NULL, NULL),
(581, 'PhotonFX Software', NULL, NULL),
(582, 'Pico Macom', NULL, NULL),
(583, 'PictoColor Corporation', NULL, NULL),
(584, 'Pinnacle Design', NULL, NULL),
(585, 'Pioneer', NULL, NULL),
(586, 'Planar Systems', NULL, NULL),
(587, 'Plantronics', NULL, NULL),
(588, 'Plato Global Greativity', NULL, NULL),
(589, 'PLAY', NULL, NULL),
(590, 'Playrix Entertainment', NULL, NULL),
(591, 'Plextor', NULL, NULL),
(592, 'Plus Vision', NULL, NULL),
(593, 'Plustek', NULL, NULL),
(594, 'PNY', NULL, NULL),
(595, 'Pocket Wizards', NULL, NULL),
(596, 'Pocomail', NULL, NULL),
(597, 'Pogoplug - Cloud Engines', NULL, NULL),
(598, 'Polaroid', NULL, NULL),
(599, 'Polk Audio', NULL, NULL),
(600, 'Polycom Inc', NULL, NULL),
(601, 'Power Acoustik', NULL, NULL),
(602, 'Powercam', NULL, NULL),
(603, 'Powermat', NULL, NULL),
(604, 'PowerUp', NULL, NULL),
(605, 'PPR Software Solutions', NULL, NULL),
(606, 'Pragma Systems, Inc.', NULL, NULL),
(607, 'Premium', NULL, NULL),
(608, 'Premium Compatibles', NULL, NULL),
(609, 'PrivacyView Software', NULL, NULL),
(610, 'ProCypher Software Co.', NULL, NULL),
(611, 'Professional Series', NULL, NULL),
(612, 'Progeny Software Inc', NULL, NULL),
(613, 'Prolimatech', NULL, NULL),
(614, 'ProLingo Software', NULL, NULL),
(615, 'Prolynkz', NULL, NULL),
(616, 'PROMT, Ltd.', NULL, NULL),
(617, 'ProSolve Data Solutions', NULL, NULL),
(618, 'Q-See', NULL, NULL),
(619, 'QLogic', NULL, NULL),
(620, 'Qmulate Software', NULL, NULL),
(621, 'QNAP', NULL, NULL),
(622, 'QuadriSpace', NULL, NULL),
(623, 'Quantum', NULL, NULL),
(624, 'RadarSync Ltd.', NULL, NULL),
(625, 'Radica', NULL, NULL),
(626, 'Radius', NULL, NULL),
(627, 'Razer', NULL, NULL),
(628, 'Razor Digital ENT', NULL, NULL),
(629, 'RCA', NULL, NULL),
(630, 'Reallusion Inc.', NULL, NULL),
(631, 'RealVestment Associates', NULL, NULL),
(632, 'Realviz', NULL, NULL),
(633, 'Rebit, Inc', NULL, NULL),
(634, 'RED Distribution', NULL, NULL),
(635, 'Red Frog', NULL, NULL),
(636, 'Red Lion', NULL, NULL),
(637, 'Renegade Minds', NULL, NULL),
(638, 'Results Software', NULL, NULL),
(639, 'Returnil', NULL, NULL),
(640, 'RF-Link', NULL, NULL),
(641, 'Rhinotek', NULL, NULL),
(642, 'Ricoh', NULL, NULL),
(643, 'Riktam Technologies', NULL, NULL),
(644, 'Rockustics', NULL, NULL),
(645, 'Rodin', NULL, NULL),
(646, 'Ronnander Games', NULL, NULL),
(647, 'Roxio', NULL, NULL),
(648, 'RTSECURITY', NULL, NULL),
(649, 'RUDE GAMEWARE', NULL, NULL),
(650, 'Rylee', NULL, NULL),
(651, 'S.N.Safe&Software Ltd', NULL, NULL),
(652, 'Sabrent', NULL, NULL),
(653, 'Sammsoft', NULL, NULL),
(654, 'SanDisk', NULL, NULL),
(655, 'Sangean America, Inc.', NULL, NULL),
(656, 'Sans Digital', NULL, NULL),
(657, 'Sanus Systems', NULL, NULL),
(658, 'Sanus VuePoint', NULL, NULL),
(659, 'Sanyo', NULL, NULL),
(660, 'Sapphire Technology', NULL, NULL),
(661, 'SBS labs', NULL, NULL),
(662, 'Sceptre Technologies', NULL, NULL),
(663, 'Scosche Industries', NULL, NULL),
(664, 'Seagate', NULL, NULL),
(665, 'Seal Shield', NULL, NULL),
(666, 'Search Engine Optimity', NULL, NULL),
(667, 'SearchHelp', NULL, NULL),
(668, 'Second Nature Software, Inc.', NULL, NULL),
(669, 'SecureInfoID', NULL, NULL),
(670, 'Security Labs', NULL, NULL),
(671, 'Security Stronghold', NULL, NULL),
(672, 'Sega', NULL, NULL),
(673, 'Seiko Instruments', NULL, NULL),
(674, 'SELECTECH', NULL, NULL),
(675, 'Selfkey Systems', NULL, NULL),
(676, 'Sennheiser', NULL, NULL),
(677, 'Sensaphone', NULL, NULL),
(678, 'Serif', NULL, NULL),
(679, 'Sharp', NULL, NULL),
(680, 'SheepArcade', NULL, NULL),
(681, 'Sherwood', NULL, NULL),
(682, 'Sherwood USA', NULL, NULL),
(683, 'Showtime Entertainment', NULL, NULL),
(684, 'Shuttle', NULL, NULL),
(685, 'Siber Systems', NULL, NULL),
(686, 'Siemens', NULL, NULL),
(687, 'SilenX', NULL, NULL),
(688, 'SiliconDust', NULL, NULL),
(689, 'Silverlode Interactive', NULL, NULL),
(690, 'SilverStone Technology', NULL, NULL),
(691, 'Sima', NULL, NULL),
(692, 'Sirius', NULL, NULL),
(693, 'Sisu Home Entertainment INC', NULL, NULL),
(694, 'Sling Media', NULL, NULL),
(695, 'Smart Planet', NULL, NULL),
(696, 'Smart-Soft Ltd.', NULL, NULL),
(697, 'Smarthome', NULL, NULL),
(698, 'SmartMedia Systems', NULL, NULL),
(699, 'Smartparts', NULL, NULL),
(700, 'SMC', NULL, NULL),
(701, 'Smith Micro Inc', NULL, NULL),
(702, 'SmithMicro Software', NULL, NULL),
(703, 'SMobile Systems Inc', NULL, NULL),
(704, 'Softlogic Innovations Pvt. Ltd.', NULL, NULL),
(705, 'softmath', NULL, NULL),
(706, 'Software Depot Online', NULL, NULL),
(707, 'Solidtek', NULL, NULL),
(708, 'SONAX', NULL, NULL),
(709, 'Sonicwall', NULL, NULL),
(710, 'Sonnet Technologies', NULL, NULL),
(711, 'Sony', NULL, NULL),
(712, 'Sony Music', NULL, NULL),
(713, 'Sony Online', NULL, NULL),
(714, 'Sony Pictures Home ENT', NULL, NULL),
(715, 'Sony PlayStation', NULL, NULL),
(716, 'SoundTells', NULL, NULL),
(717, 'Sourcing Network', NULL, NULL),
(718, 'South Peak', NULL, NULL),
(719, 'Southside Solutions', NULL, NULL),
(720, 'SoyPrint', NULL, NULL),
(721, 'SPAMfighter', NULL, NULL),
(722, 'SPARKLE Computer Co. Ltd.', NULL, NULL),
(723, 'SpeakerCraft', NULL, NULL),
(724, 'Speck Products', NULL, NULL),
(725, 'Speco Technologies', NULL, NULL),
(726, 'Spectorsoft', NULL, NULL),
(727, 'Spytech Software and Design, Inc.', NULL, NULL),
(728, 'Square Electronic Arts', NULL, NULL),
(729, 'Square Enix USA', NULL, NULL),
(730, 'ST Clair ENT GRP INC', NULL, NULL),
(731, 'Startech', NULL, NULL),
(732, 'Steelray Software', NULL, NULL),
(733, 'Stellar Information Systems Ltd.', NULL, NULL),
(734, 'Studio RTA', NULL, NULL),
(735, 'Summit Entertainment', NULL, NULL),
(736, 'Summitsoft Corp', NULL, NULL),
(737, 'Sunbelt Software', NULL, NULL),
(738, 'SuperMicro', NULL, NULL),
(739, 'Susteen', NULL, NULL),
(740, 'SWJ Soft', NULL, NULL),
(741, 'Syberfix Solutions Inc', NULL, NULL),
(742, 'Sylvania', NULL, NULL),
(743, 'Synaps', NULL, NULL),
(744, 'Syncables', NULL, NULL),
(745, 'Synnex', NULL, NULL),
(746, 'Systemax', NULL, NULL),
(747, 'SYSTRAN S.A.', NULL, NULL),
(748, 'Systweak, Inc.', NULL, NULL),
(749, 'Taiyo Yuden', NULL, NULL),
(750, 'Tango Entertainment INC', NULL, NULL),
(751, 'Targus', NULL, NULL),
(752, 'TASCAM', NULL, NULL),
(753, 'TDK', NULL, NULL),
(754, 'Teac', NULL, NULL),
(755, 'TeachUcomp, Inc.', NULL, NULL),
(756, 'Tecagora Solutions Inc.', NULL, NULL),
(757, 'TechForward Inc.', NULL, NULL),
(758, 'Techsound', NULL, NULL),
(759, 'Tecmo', NULL, NULL),
(760, 'Tekkeon Inc.', NULL, NULL),
(761, 'Terra Entertainment', NULL, NULL),
(762, 'Texas Instruments', NULL, NULL),
(763, 'THQ', NULL, NULL),
(764, 'Thrustmaster', NULL, NULL),
(765, 'Timeless Media Group', NULL, NULL),
(766, 'TIVO', NULL, NULL),
(767, 'Tommo', NULL, NULL),
(768, 'TomTom', NULL, NULL),
(769, 'TOPICS Entertainment', NULL, NULL),
(770, 'Toshiba', NULL, NULL),
(771, 'Touchpoint Studios Inc.', NULL, NULL),
(772, 'Transcend', NULL, NULL),
(773, 'Tread', NULL, NULL),
(774, 'Treasure Island Software', NULL, NULL),
(775, 'TRENDnet', NULL, NULL),
(776, 'Trinity Home Entertainment', NULL, NULL),
(777, 'TrippLite', NULL, NULL),
(778, 'TriSquare', NULL, NULL),
(779, 'Tritton Technologies', NULL, NULL),
(780, 'TrustPort Inc.', NULL, NULL),
(781, 'Tulip esoft', NULL, NULL),
(782, 'TuneUp Utilities', NULL, NULL),
(783, 'Turtle Beach', NULL, NULL),
(784, 'Tx Systems', NULL, NULL),
(785, 'Tyan', NULL, NULL),
(786, 'Ubisoft', NULL, NULL),
(787, 'Ultra', NULL, NULL),
(788, 'Ultra Electronics Card Systems', NULL, NULL),
(789, 'Ultralife', NULL, NULL),
(790, 'Unicorn Video', NULL, NULL),
(791, 'Uniden', NULL, NULL),
(792, 'United American Video', NULL, NULL),
(793, 'Universal Remote Control, Inc', NULL, NULL),
(794, 'Universal Studios', NULL, NULL),
(795, 'US Games', NULL, NULL),
(796, 'USBCELL', NULL, NULL),
(797, 'USRobotics', NULL, NULL),
(798, 'V Dimension', NULL, NULL),
(799, 'V.i.e.w. Inc.', NULL, NULL),
(800, 'V7 Videoseven', NULL, NULL),
(801, 'Valet by Cisco', NULL, NULL),
(802, 'Vanguard Cinema', NULL, NULL),
(803, 'Vanguard I.T.', NULL, NULL),
(804, 'Vanguard USA', NULL, NULL),
(805, 'Vantec Thermal Technologies', NULL, NULL),
(806, 'VeeCan Software Ltd.', NULL, NULL),
(807, 'Velocity Home Entertainment', NULL, NULL),
(808, 'Velocity Micro', NULL, NULL),
(809, 'Ventis Media', NULL, NULL),
(810, 'Verbatim', NULL, NULL),
(811, 'Vevosoft', NULL, NULL),
(812, 'Victor Multimedia', NULL, NULL),
(813, 'Video Communications Inc.', NULL, NULL),
(814, 'ViewSonic', NULL, NULL),
(815, 'VinPower Digital', NULL, NULL),
(816, 'Visimation Inc.', NULL, NULL),
(817, 'Visioneer', NULL, NULL),
(818, 'Visionman', NULL, NULL),
(819, 'VisionTek', NULL, NULL),
(820, 'VisionWorks Solutions', NULL, NULL),
(821, 'Vivendi Universal', NULL, NULL),
(822, 'Vivitar', NULL, NULL),
(823, 'Vivitek', NULL, NULL),
(824, 'Vizio', NULL, NULL),
(825, 'VSO-Software SARL', NULL, NULL),
(826, 'Vtech', NULL, NULL),
(827, 'Vutec Corporation', NULL, NULL),
(828, 'Wacom', NULL, NULL),
(829, 'Warner Home Video', NULL, NULL),
(830, 'Warnervision', NULL, NULL),
(831, 'Wasp Barcode', NULL, NULL),
(832, 'WatchGuard', NULL, NULL),
(833, 'Water Bearer Films', NULL, NULL),
(834, 'WEA DES Moines Video', NULL, NULL),
(835, 'Weber', NULL, NULL),
(836, 'WebRoot', NULL, NULL),
(837, 'Wellspring Media INC', NULL, NULL),
(838, 'Western Digital', NULL, NULL),
(839, 'WHV Games', NULL, NULL),
(840, 'Widowmaker Filmsllc', NULL, NULL),
(841, 'Wilson Electronics', NULL, NULL),
(842, 'Wintec', NULL, NULL),
(843, 'Wireless Extenders', NULL, NULL),
(844, 'Wirewize', NULL, NULL),
(845, 'Wolfe Video', NULL, NULL),
(846, 'Wolverine Data', NULL, NULL),
(847, 'WPO Entertainment', NULL, NULL),
(848, 'Wyse', NULL, NULL),
(849, 'X.M.Y. International LLC', NULL, NULL),
(850, 'Xblue Networks', NULL, NULL),
(851, 'XDM', NULL, NULL),
(852, 'XenoSystems', NULL, NULL),
(853, 'Xentris Wireless', NULL, NULL),
(854, 'Xerox', NULL, NULL),
(855, 'XFX', NULL, NULL),
(856, 'Xilisoft Corporation', NULL, NULL),
(857, 'Xion USA', NULL, NULL),
(858, 'Xitel', NULL, NULL),
(859, 'XtremeMac', NULL, NULL),
(860, 'Yamaha', NULL, NULL),
(861, 'York Home Video', NULL, NULL),
(862, 'Youda Games', NULL, NULL),
(863, 'Z-Line', NULL, NULL),
(864, 'Zalman', NULL, NULL),
(865, 'Zebra Technologies', NULL, NULL),
(866, 'Zeitgeist Films', NULL, NULL),
(867, 'Zemana Information Technologies', NULL, NULL),
(868, 'ZEROtherm', NULL, NULL),
(869, 'ZeroWater', NULL, NULL),
(870, 'Zip-Linq', NULL, NULL),
(871, 'ZONER software, s.r.o.', NULL, NULL),
(872, 'Zonet', NULL, NULL),
(873, 'Zoom Telephonics', NULL, NULL),
(874, 'Zotac USA Inc.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `honorific` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `honorific`, `first_name`, `middle_name`, `surname`, `email`, `mobile_no`, `address`, `city`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'abcdef', 'b', 'c', 'as@dsaf', 0, 'asd', 'af', NULL, NULL, NULL),
(2, 'Mr.', 'abrdsh', 'b', 'c', 'as@dsaf', 12, 'asd', 'af', NULL, NULL, NULL),
(3, '', 'as', 'fs', NULL, NULL, 3245, NULL, 'ha', NULL, '2020-09-04 12:12:37', '2020-09-04 12:12:37'),
(4, 'mr', 'dsf', 'gsdfg', 'srtg', 'hello@edhirya.com', 23435, 'hgshg', 'sdgfd', 'dsgsdg', '2020-09-04 12:24:17', '2020-09-04 12:24:17'),
(6, 'me', 'hkjg', 'gyk', 'kvgy', 'as@df.com', 65, 'zdfg', 'gaz', 'zshg', '2020-09-04 12:26:47', '2020-09-04 12:26:47'),
(7, 'as', 'adsf', 'garew', 'aweg', 'ayonademel@gmail.com', 2435, '5321', '13245', 'dghdh', '2020-09-04 12:43:50', '2020-09-04 12:43:50'),
(8, 'asd', 'asf', 'gsdfg', 'mr', 'asd@sa.c', 7435742, 'hgshg', '13245', 'esag', '2020-09-04 12:49:46', '2020-09-04 12:49:46'),
(10, '', 'fdhgd', NULL, NULL, 'asithniwantha@gmail.com', 0, NULL, 'dshsd', NULL, '2020-09-04 13:01:15', '2020-09-04 13:01:15'),
(11, '', 'dshd', NULL, NULL, 'ayonademel@gmail.com', 0, NULL, 'dfjg', NULL, '2020-09-04 13:06:24', '2020-09-04 13:06:24'),
(12, '', 'dsfh', NULL, NULL, 'as@df.com', 54, NULL, 'gc', NULL, '2020-09-04 13:10:24', '2020-09-04 13:10:24'),
(13, 'mr', 'zsg', 'hzdsrh', NULL, 'hello@edhirya.com', 4325364, NULL, 'dxfgdfg', NULL, '2020-09-09 08:41:49', '2020-09-09 08:41:49'),
(14, 'pr', 'xdfhgd', NULL, NULL, 'asithniwantha@gmail.com', 34646, NULL, 'zsdgdg', NULL, '2020-09-09 08:43:12', '2020-09-09 08:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_26_150326_create_contacts_table', 1),
(5, '2020_08_26_153651_create_sales_table', 1),
(6, '2020_08_26_163020_create_brands_table', 1),
(7, '2020_08_26_163030_create_product_names_table', 1),
(8, '2020_08_26_163033_create_products_table', 1),
(9, '2020_08_26_163034_create_product_details_table', 1),
(10, '2020_08_26_163044_create_sale_details_table', 1),
(11, '2020_08_26_173035_create_sellers_table', 1),
(12, '2020_08_26_173510_create_purchases_table', 1),
(13, '2020_08_26_174945_create_purchase_details_table', 1),
(14, '2020_08_26_175500_create_stocks_table', 1),
(15, '2020_08_26_175747_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name_id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('Desktop','Laptop') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name_id`, `category`, `brand_id`, `model`, `sku`, `created_at`, `updated_at`) VALUES
(6, 1, NULL, 2, 'LCD', 'MtrLcd', NULL, NULL),
(7, 1, NULL, 2, 'LED', 'MtrLed', NULL, NULL),
(8, 2, 'Desktop', 1, 'DDR2', 'RamD2', NULL, NULL),
(9, 2, 'Desktop', 1, 'DDR3', 'RamD3', NULL, NULL),
(10, 2, 'Desktop', 1, 'DDR4', 'RamD4', '2020-09-09 08:49:26', '2020-09-09 08:49:26'),
(11, 7, NULL, 14, 'G31', 'MbG31', '2020-09-09 08:55:46', '2020-09-09 08:55:46'),
(13, 1, NULL, 2, 'LCD', 'MtrLcd', '2020-09-09 09:06:04', '2020-09-09 09:06:04'),
(14, 1, NULL, 6, 'LED', 'MtrLed', '2020-09-09 09:07:24', '2020-09-09 09:07:24'),
(15, 1, NULL, 2, 'LED', 'MtrLed', '2020-09-09 09:27:31', '2020-09-09 09:27:31'),
(16, 7, NULL, 11, 'G41', NULL, '2020-09-09 09:55:01', '2020-09-09 09:55:01'),
(17, 7, NULL, 17, 'G31', 'MbG31', '2020-09-09 10:07:52', '2020-09-09 10:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sub_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_quantity` int(11) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `warranty` date DEFAULT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `sub_model`, `product_description`, `alert_quantity`, `image`, `warranty`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 6, '17\"', 'Acer LCD 17\"', 3, NULL, '0000-00-00', '4500.00', NULL, NULL),
(2, 6, '19\"', 'Acer LCD 19\"', 3, NULL, '0000-00-00', '5500.00', NULL, NULL),
(3, 7, '17\"', 'Acer LED 17\"', 3, NULL, '0000-00-00', '4800.00', NULL, NULL),
(4, 7, '19\"', 'Acer LED 19\"', 3, NULL, '0000-00-00', '5800.00', NULL, NULL),
(5, 7, '24\"', 'Acer LED 24\"', 3, NULL, '0000-00-00', '8500.00', NULL, NULL),
(6, 8, '1GB', 'Samsung DDR2 1GB', 10, NULL, '0000-00-00', '500.00', NULL, NULL),
(7, 8, '2GB', 'Samsung DDR2 2GB', 10, NULL, '0000-00-00', '1000.00', NULL, NULL),
(8, 9, '2GB', 'Samsung DDR3 2GB', 10, NULL, '0000-12-01', '1200.00', NULL, NULL),
(9, 9, '4GB', 'Samsung DDR3 4GB', 10, NULL, '0000-01-01', '2400.00', NULL, NULL),
(11, 11, NULL, NULL, 2, NULL, '0000-06-01', '3500.00', '2020-09-09 08:55:46', '2020-09-09 08:55:46'),
(12, 6, '21', NULL, 1, NULL, '0000-06-01', '8000.00', '2020-09-09 09:06:04', '2020-09-09 09:06:04'),
(13, 7, '26', NULL, 1, NULL, '0001-12-01', '12000.00', '2020-09-09 09:07:24', '2020-09-09 09:07:24'),
(14, 7, '32', NULL, 1, NULL, '0000-12-01', '20000.00', '2020-09-09 09:27:31', '2020-09-09 09:27:31'),
(15, 16, NULL, NULL, 2, NULL, '0002-12-01', '4000.00', '2020-09-09 09:55:01', '2020-09-09 09:55:01'),
(16, 17, NULL, NULL, NULL, NULL, '0000-01-01', '3400.00', '2020-09-09 11:23:21', '2020-09-09 11:23:21'),
(17, 10, '4GB', NULL, NULL, NULL, '0002-12-01', '4000.00', '2020-09-11 02:17:31', '2020-09-11 02:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_names`
--

CREATE TABLE `product_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_names`
--

INSERT INTO `product_names` (`id`, `product_name`, `created_at`, `updated_at`) VALUES
(1, 'Monitor', NULL, NULL),
(2, 'RAM', NULL, NULL),
(3, 'Hard Disk', NULL, NULL),
(4, 'Processer', NULL, NULL),
(5, 'VGA', NULL, NULL),
(6, 'Headphone', NULL, NULL),
(7, 'Motherboard', NULL, NULL),
(8, 'Power Supply', NULL, NULL),
(10, 'WebCam', '2020-09-06 13:14:17', '2020-09-06 13:14:17'),
(11, 'Mouse', '2020-09-07 00:39:26', '2020-09-07 00:39:26'),
(12, 'Fan', '2020-09-07 00:51:12', '2020-09-07 00:51:12'),
(13, 'Printer', '2020-09-07 00:52:11', '2020-09-07 00:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Received','Pending','Ordered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('Paid','Partial','Due') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `payment_method` enum('Cash','card','Cheque','Bank Transfer','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` decimal(8,2) NOT NULL,
  `purchase_date` date NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `seller_id`, `status`, `payment_status`, `amount`, `payment_method`, `grand_total`, `purchase_date`, `invoice_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'Received', 'Paid', '11000.00', 'Cash', '11000.00', '0000-00-00', 0, NULL, NULL),
(2, 2, 'Received', 'Paid', '5000.00', 'Cash', '5000.00', '0000-00-00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_detail_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchased_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_detail_id`, `quantity`, `purchased_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, '4000.00', NULL, NULL),
(2, 1, 2, 5, '5000.00', NULL, NULL),
(3, 1, 5, 3, '8000.00', NULL, NULL),
(4, 2, 4, 2, '5500.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `contact_id`, `discount`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00', 1, 10, '10000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_detail_id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_detail_id`, `serial_no`, `quantity`, `discount`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, 0, '4500.00', NULL, NULL),
(2, 1, 2, 0, 1, 0, '5500.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_neme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `seller_neme`, `bussiness_name`, `city`, `mobile_no`, `email`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Neo', 'Neo View', 'Gampaha', 0, '', '', NULL, NULL),
(2, 'Sense', 'Sense Micro', 'Colombo', 0, '', '', NULL, NULL),
(3, 'Green Line', 'Green Line Office', '', 0, '', '', NULL, NULL),
(4, 'PCmart', '', '', 0, '', '', NULL, NULL),
(5, 'LFL', 'LFL Kandy', '', 0, '', '', NULL, NULL),
(6, 'Computer Age', '', '', 0, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `product_detail_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `seller_id`, `product_detail_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9, NULL, NULL),
(2, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` datetime NOT NULL,
  `s_or_p_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('Sale','Purchase') COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `s_or_p_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `date_time`, `s_or_p_id`, `type`, `product_detail_id`, `quantity`, `s_or_p_amount`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00 00:00:00', 1, 'Purchase', 1, 10, '40000.00', NULL, NULL),
(2, '0000-00-00 00:00:00', 1, 'Purchase', 2, 5, '25000.00', NULL, NULL),
(3, '0000-00-00 00:00:00', 1, 'Purchase', 5, 3, '24000.00', NULL, NULL),
(4, '0000-00-00 00:00:00', 2, 'Purchase', 4, 2, '11000.00', NULL, NULL),
(5, '0000-00-00 00:00:00', 1, 'Sale', 1, 1, '4500.00', NULL, NULL),
(6, '0000-00-00 00:00:00', 1, 'Sale', 2, 1, '5500.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tstview`
-- (See below for the actual view)
--
CREATE TABLE `tstview` (
`id` bigint(20) unsigned
,`product_name_id` bigint(20) unsigned
,`brand_id` bigint(20) unsigned
,`model` varchar(255)
,`sku` varchar(255)
,`sub_model` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `tstview`
--
DROP TABLE IF EXISTS `tstview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tstview`  AS  (select `products`.`id` AS `id`,`products`.`product_name_id` AS `product_name_id`,`products`.`brand_id` AS `brand_id`,`products`.`model` AS `model`,`products`.`sku` AS `sku`,`product_details`.`sub_model` AS `sub_model` from (`products` join `product_details` on(`products`.`id` = `product_details`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_brand_name_unique` (`brand_name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_name_id_foreign` (`product_name_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_names`
--
ALTER TABLE `product_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_names_product_name_unique` (`product_name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_detail_id_foreign` (`product_detail_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_product_detail_id_foreign` (`product_detail_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_seller_id_foreign` (`seller_id`),
  ADD KEY `stocks_product_detail_id_foreign` (`product_detail_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_detail_id_foreign` (`product_detail_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=875;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_names`
--
ALTER TABLE `product_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_product_name_id_foreign` FOREIGN KEY (`product_name_id`) REFERENCES `product_names` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_detail_id_foreign` FOREIGN KEY (`product_detail_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_detail_id_foreign` FOREIGN KEY (`product_detail_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_product_detail_id_foreign` FOREIGN KEY (`product_detail_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `stocks_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_detail_id_foreign` FOREIGN KEY (`product_detail_id`) REFERENCES `product_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
