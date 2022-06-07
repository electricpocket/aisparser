SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `compasseye`
--

-- --------------------------------------------------------

--
-- Table structure for table `5324_ais`
--

CREATE TABLE IF NOT EXISTS `5324_ais` (
  `mmsi` varchar(9) NOT NULL,
  `shipname` varchar(34) DEFAULT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `time` datetime NOT NULL DEFAULT '2012-01-01 01:01:01',
  `sog` float NOT NULL DEFAULT '0.001',
  `cog` smallint(6) NOT NULL,
  `heading` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '16',
  `turn` smallint(8) NOT NULL DEFAULT '-128',
  `imo` varchar(10) NOT NULL,
  `callsign` varchar(7) NOT NULL,
  `shiptype` tinyint(4) NOT NULL,
  `a` smallint(6) NOT NULL,
  `b` smallint(6) NOT NULL,
  `c` smallint(6) NOT NULL,
  `d` smallint(6) NOT NULL,
  `draught` float NOT NULL,
  `destination` varchar(20) NOT NULL,
  `eta` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source` varchar(3) NOT NULL,
  `off_position` tinyint(4) NOT NULL DEFAULT '-1',
  `virtual_aid` tinyint(4) NOT NULL DEFAULT '-1',
  `aidtype` tinyint(4) NOT NULL DEFAULT '-1',
  `time_reference` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`mmsi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
