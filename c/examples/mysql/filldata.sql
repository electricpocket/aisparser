
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


INSERT INTO `5324_ais` (`mmsi`, `shipname`, `longitude`, `latitude`, `time`, `sog`, `cog`, `heading`, `status`, `turn`, `imo`, `callsign`, `shiptype`, `a`, `b`, `c`, `d`, `draught`, `destination`, `eta`, `updated`, `source`, `off_position`, `virtual_aid`, `aidtype`, `time_reference`) VALUES
('232004528', 'HERSTON LASS', -3.134792, 58.836127, '2022-06-07 15:57:37', 0, 338, 39, 0, 0, '9063782', 'MRTK3', 60, 8, 13, 3, 3, 2, 'H', '2023-05-22 08:00:00', '2022-06-07 15:57:37', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('257624000', 'AQUA SOLUNDOY', -3.294027, 58.960935, '2022-06-07 15:57:29', 0, 19, 5, 5, 0, '9158654', 'LACH8', 90, 0, 0, 0, 0, 5, 'STROMNESS', '2023-05-26 13:30:00', '2022-06-07 15:57:29', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232018710', NULL, -3.384195, 58.767627, '2022-06-07 15:32:01', 7.7, 316, 317, 7, 0, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:32:01', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235001641', 'INVINCIBLE', -3.293390, 58.964073, '2022-06-07 15:56:24', 0, 360, 511, 16, -128, '', '', 34, 20, 6, 2, 6, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:56:24', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235019173', 'GRAEMSAY', -3.296803, 58.962005, '2022-06-07 15:54:47', 0, 259, 511, 16, -128, '', '', 60, 3, 18, 2, 4, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:54:47', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('992351063', 'BARR ROCK BUOY', -3.282642, 58.943455, '2022-06-07 15:55:15', 0.001, 0, 0, 16, -128, '', '', 0, 1, 1, 1, 1, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:55:15', 'bb', 0, 0, 20, '0000-00-00 00:00:00'),
('992356006', 'NORTH SHOAL VIRTUAL', -3.580517, 59.224900, '2022-06-07 15:55:35', 0.001, 0, 0, 16, -128, '', '', 0, 1, 1, 1, 1, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:55:35', 'bb', 0, 1, 17, '0000-00-00 00:00:00'),
('992351101', 'BROUGH OF BIRSAY LIGHTHOUSE', -3.339383, 59.136900, '2022-06-07 15:55:25', 0.001, 0, 0, 16, -128, '', '', 0, 1, 1, 1, 1, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:55:25', 'bb', 0, 0, 5, '0000-00-00 00:00:00'),
('235084524', 'KARIN', -3.296575, 58.962680, '2022-06-07 15:57:15', 0, 360, 511, 16, -128, '', '', 34, 15, 8, 3, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:15', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('257463000', NULL, -1.742428, 58.306123, '2022-06-07 15:32:00', 0.8, 179, 96, 3, 127, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:32:00', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232000670', 'EARL SIGURD', -2.939237, 59.037420, '2022-06-07 15:57:43', 11.4, 26, 27, 0, 0, '8902711', 'MLKN9', 60, 11, 34, 10, 2, 3.2, 'KIRKWALL/NORTH-ISLES', '2022-06-07 19:40:00', '2022-06-07 15:57:43', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232022849', NULL, -2.936182, 59.014947, '2022-06-07 15:38:16', 20, 220, 219, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:38:16', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235018907', 'THORSVOE', -2.931115, 59.018027, '2022-06-07 15:54:07', 9, 222, 217, 0, -127, '9014743', 'MNLY8', 69, 21, 14, 1, 8, 2.5, 'KIRKWALL', '2023-04-01 13:00:00', '2022-06-07 15:54:07', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235092348', 'HELEN BURNIE', -2.944623, 59.017007, '2022-06-07 15:13:37', 8.2, 213, 212, 0, 0, '0', '2FLW8', 90, 5, 20, 5, 5, 2.5, 'FISH FARM', '2023-04-18 15:00:00', '2022-06-07 15:13:37', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235083881', 'JEAN ELAINE', -3.296235, 58.963463, '2022-06-07 15:46:36', 0, 0, 511, 16, -128, '', '', 34, 11, 10, 2, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:46:36', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235118464', 'ISLAND TIGER II', -3.298678, 58.960607, '2022-06-07 15:57:20', 4.3, 12, 511, 16, -128, '', '', 40, 0, 10, 0, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:20', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232029685', 'ELLA MAY', -3.292882, 58.961728, '2022-06-07 15:14:04', 0, 360, 511, 16, -128, '', '', 70, 5, 11, 4, 4, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:14:04', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235089523', 'LADY JEAN', -3.293362, 58.954840, '2022-06-07 15:11:53', 6.8, 319, 511, 16, -128, '', '', 70, 13, 2, 3, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:11:53', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('311000866', 'GREG MORTIMER', -3.124400, 59.303417, '2022-06-07 15:37:38', 14.6, 326, 324, 0, 7, '9834648', 'C6ED7', 60, 49, 57, 10, 8, 5, 'KIRKWALL', '2022-06-08 07:00:00', '2022-06-07 15:37:38', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('247302644', NULL, -20.192422, -50.243810, '2022-06-07 15:19:47', 34.1, 234, 22, 0, 18, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:19:47', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235449000', 'HAMNAVOE', -3.416340, 58.933765, '2022-06-07 15:57:45', 19.4, 248, 249, 0, -127, '9246061', 'VSTY7', 69, 15, 97, 12, 8, 4.4, 'STROMNESS\\SCRABSTER', '2022-06-07 18:15:00', '2022-06-07 15:57:45', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('030438294', NULL, 110.542308, 29.564927, '2022-06-07 15:09:18', 33, 65, 398, 0, -124, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:09:18', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232003525', NULL, -2.972577, 58.956960, '2022-06-07 14:41:11', 0, 32, 114, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 14:41:11', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('259699000', NULL, -1.766102, 58.290028, '2022-06-07 15:32:20', 7.2, 163, 161, 0, 127, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:32:20', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235018919', 'HOY HEAD', -3.185235, 58.874447, '2022-06-07 15:57:37', 11.8, 355, 358, 0, 0, '9081722', 'MSQD2', 69, 25, 25, 5, 5, 2.5, 'SCAPA FLOW', '2023-05-29 13:00:00', '2022-06-07 15:57:37', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235052647', 'GRAEMSAY LASS', -3.134720, 58.836092, '2022-06-07 15:52:20', 0, 222, 511, 16, -128, '', '', 31, 6, 10, 3, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:52:20', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235033268', 'GIGHA MHOR', -3.293693, 58.964917, '2022-06-07 15:39:51', 0, 26, 511, 16, -128, '', '', 37, 15, 5, 4, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:39:51', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232892000', 'CS SOVEREIGN', -2.735560, 58.807393, '2022-06-07 15:57:27', 10.5, 208, 210, 0, 16, '8918629', 'MNNU8', 96, 75, 56, 8, 13, 6.2, 'SCAPA FLOW', '2022-06-07 18:00:00', '2022-06-07 15:57:27', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('249652000', NULL, -2.399035, 59.627393, '2022-06-07 14:04:10', 14.2, 277, 278, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 14:04:10', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('636020190', 'STATIA', -3.095130, 58.901960, '2022-06-07 15:57:28', 0, 11, 70, 1, 0, '9302982', 'D5YC6', 80, 232, 42, 28, 20, 13.5, 'DE WVN>GB SFW', '2022-06-03 22:30:00', '2022-06-07 15:57:28', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232000760', 'EARL THORFINN', -2.959563, 59.003767, '2022-06-07 15:56:30', 12.5, 182, 183, 5, 0, '8902723', 'MLKP9', 60, 8, 37, 2, 9, 3.1, 'KIRKWALL:NORTH ISLES', '2022-06-08 00:00:00', '2022-06-07 15:56:30', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('249551000', NULL, -1.657978, 58.533365, '2022-06-07 14:56:49', 9.7, 168, 169, 0, 4, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 14:56:49', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235086245', 'HAVRA', -3.295858, 58.963738, '2022-06-07 15:57:16', 0, 360, 511, 16, -128, '', '', 70, 3, 12, 3, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:16', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232003134', 'RNLI LIFEBOAT 17-16', -3.297170, 58.962103, '2022-06-07 15:57:43', 0, 0, 511, 0, -128, '0', 'MCQT8', 51, 14, 3, 2, 3, 1.4, 'STROMNESS', '2022-12-31 23:59:00', '2022-06-07 15:57:43', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232029607', 'NORDIC SEA', -3.295897, 58.961787, '2022-06-07 15:57:41', 5.5, 359, 3, 0, 127, '0', 'MIAW3', 60, 10, 12, 2, 4, 1, 'STROMNESS', '2023-05-12 12:45:00', '2022-06-07 15:57:41', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('319060600', NULL, -1.937193, 58.368255, '2022-06-07 15:25:53', 5.2, 175, 173, 0, 19, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:25:53', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235088132', 'C-ODYSSEY', -2.980898, 58.942443, '2022-06-07 15:24:30', 8.2, 357, 357, 0, 0, '9636307', '2ETW7', 52, 13, 13, 5, 5, 2.7, 'ST MARGARETS HOPE', '2022-06-05 08:00:00', '2022-06-07 15:24:30', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232026524', 'FAIR ISLE', -3.294902, 58.963982, '2022-06-07 15:56:15', 0, 330, 511, 16, -128, '', '', 97, 5, 18, 5, 5, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:56:15', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232004138', 'BRILLIANT', -3.192353, 58.906448, '2022-06-07 15:57:31', 3.9, 275, 511, 16, -128, '', '', 36, 8, 3, 2, 1, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:31', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235089518', 'COLLEEN', -3.189742, 58.835878, '2022-06-07 14:32:12', 6.6, 182, 511, 16, -128, '', '', 70, 3, 8, 2, 2, 0, '', '0000-00-00 00:00:00', '2022-06-07 14:32:12', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232011409', 'KEILA K121', -3.348390, 58.949143, '2022-06-07 15:47:00', 9.3, 282, 511, 15, 0, '0', 'MBXL9', 30, 10, 18, 6, 2, 5.2, '', '2022-00-00 00:00:00', '2022-06-07 15:47:00', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('257089150', 'EAGLE BALDER', -3.019875, 58.903845, '2022-06-07 15:55:00', 0, 0, 53, 1, 2, '9833113', 'LAIY8', 80, 219, 58, 27, 19, 9.5, 'SCAPA FLOW', '2022-06-05 20:00:00', '2022-06-07 15:55:00', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232020225', 'STENA DON', -2.969688, 58.886017, '2022-06-07 15:53:16', 0, 26, 228, 1, 0, '8764418', 'MEOY4', 99, 14, 81, 33, 33, 12, 'GBSFW', '2023-02-05 07:00:00', '2022-06-07 15:53:16', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('244730322', 'MISCHIEF', -3.294192, 58.964635, '2022-06-07 15:57:15', 0, 0, 511, 16, -128, '', '', 36, 12, 1, 2, 2, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:15', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235108399', 'HUSKYAN', -3.297068, 58.962313, '2022-06-07 15:56:11', 0, 343, 511, 16, -128, '', '', 67, 8, 8, 3, 3, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:56:11', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('339824000', NULL, -2.961220, 58.987532, '2022-06-07 15:57:44', 0, 278, 168, 5, 0, '', '', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:44', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('232000550', 'VARAGEN', -2.926017, 59.051650, '2022-06-07 15:39:33', 10.3, 14, 12, 0, -127, '8818154', 'MHBM9', 60, 33, 17, 5, 6, 3, 'NORTH_ISLES/KWL', '2022-06-07 19:45:00', '2022-06-07 15:39:33', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('235018814', 'KEALOHA V', -3.293852, 58.964668, '2022-06-07 15:57:41', 0, 268, 511, 16, -128, '', '', 36, 11, 1, 2, 0, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:57:41', 'bb', -1, -1, -1, '0000-00-00 00:00:00'),
('992351083', 'FLOTTA GRINDS BUOY', -3.012787, 58.849468, '2022-06-07 15:55:31', 0.001, 0, 0, 16, -128, '', '', 0, 1, 1, 1, 1, 0, '', '0000-00-00 00:00:00', '2022-06-07 15:55:31', 'bb', 0, 0, 24, '0000-00-00 00:00:00'),
('235058922', 'FLOTTA LASS', -3.184920, 58.917327, '2022-06-07 15:57:45', 0, 341, 27, 0, 0, '9456666', '2AEF6', 60, 2, 19, 3, 3, 1.3, 'BUCKIE', '2023-04-05 00:00:00', '2022-06-07 15:57:45', 'bb', -1, -1, -1, '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;