SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

CREATE TABLE `dc_hashes` (
  `id` int(11) NOT NULL COMMENT 'Primary key.',
  `hash` char(15) NOT NULL DEFAULT '' COMMENT 'Hash for url path.',
  `data` longblob NOT NULL COMMENT 'Json with S3 pathes.',
  `expire` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Expired date.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table for storing information about downloadable items from…';

INSERT INTO `dc_hashes` (`id`, `hash`, `data`, `expire`) VALUES
(1, 'tuDAu2WyS9tjf4g', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499870684),
(2, 'kQkQDHNySfpHF35', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499870813),
(3, 'y6jRlK9nBmz0OSQ', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499870874),
(4, 'aHut94gufEJGKvC', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499870911),
(5, 'jkE1Y1TOKPqGoT5', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499870914),
(6, 'gldWzQzyDg2P2Rf', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499872730),
(7, 'lz2tyktSu2pZ3yk', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499872747),
(8, 'gfh9IxxSWtz5JtM', 0x5b5d, 1499872810),
(9, 'dTLyNcYPisopxnp', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1499874326),
(10, 'vaPogIOND2OYpmu', 0x5b7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d5d, 1500045910),
(11, 'cf7LVdv7DIlrwwd', 0x5b5d, 1500046127),
(12, 'pQBtBndnwmPfPhE', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1500299120),
(13, 'tlphRQL4TqgxfpM', 0x5b7b226e616d65223a2242726f63687572652e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572652e6a7067222c2274797065223a227333227d2c7b226e616d65223a22526f7461727953747269702d323430302d7064662e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f526f7461727953747269702d323430302d7064662e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500382312),
(14, 'sWEQyDsNeayDlMi', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d362e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d362e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d352e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d332e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d332e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d322e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2250726f647563742d312d696d6167652e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f50726f647563742d312d696d6167652e6a7067222c2274797065223a227333227d2c7b226e616d65223a2242726f63687572652e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572652e6a7067222c2274797065223a227333227d2c7b226e616d65223a22526f7461727953747269702d323430302d7064662e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f526f7461727953747269702d323430302d7064662e6a7067222c2274797065223a227333227d5d, 1500383653),
(15, 'ehJqJ1CRvypsN3X', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d362e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d362e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d352e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d332e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d332e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d322e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2250726f647563742d312d696d6167652e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f50726f647563742d312d696d6167652e6a7067222c2274797065223a227333227d2c7b226e616d65223a2242726f63687572652e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572652e6a7067222c2274797065223a227333227d2c7b226e616d65223a22526f7461727953747269702d323430302d7064662e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f526f7461727953747269702d323430302d7064662e6a7067222c2274797065223a227333227d5d, 1500386550),
(16, 'qZV7vor9tGSlseR', 0x5b7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d5d, 1500386605),
(17, 'bdzHuS2gWJTQb6v', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d362e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d362e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d352e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d332e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d332e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d322e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2250726f647563742d312d696d6167652e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f50726f647563742d312d696d6167652e6a7067222c2274797065223a227333227d2c7b226e616d65223a2242726f63687572652e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572652e6a7067222c2274797065223a227333227d2c7b226e616d65223a22526f7461727953747269702d323430302d7064662e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f526f7461727953747269702d323430302d7064662e6a7067222c2274797065223a227333227d5d, 1500388102),
(18, 'e7BwUwpit4vL7OF', 0x5b7b226e616d65223a2250726f647563742d312d696d6167652e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f50726f647563742d312d696d6167652e6a7067222c2274797065223a227333227d5d, 1500388138),
(19, 'ip9h4puIPjfmbyD', 0x5b7b226e616d65223a2250726f647563742d312d696d6167652e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f50726f647563742d312d696d6167652e6a7067222c2274797065223a227333227d5d, 1500388169),
(20, 'iSN6GleI5nlEHTX', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500391251),
(21, 'yBcy0RvKx3Okj8B', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d362e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d362e6a7067222c2274797065223a227333227d5d, 1500391270),
(22, 'eEvkGG9C9iAb3fB', 0x5b7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d372e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d372e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d362e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d362e6a7067222c2274797065223a227333227d5d, 1500391301),
(23, 'c2nrCy4NutuO5E2', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500391489),
(24, 'vPLVjTLGn6tuL5z', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500391915),
(25, 'm2jOGLaZI2MxlSd', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500392272),
(26, 'jBuXphWEAw9VxIr', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d382e6a7067222c2274797065223a227333227d5d, 1500392318),
(27, 'o4FRA7ByI7J4BGX', 0x5b7b226e616d65223a2262726f63687572652d2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f62726f63687572652d2e6a7067222c2274797065223a227333227d2c7b226e616d65223a2270726f647563742d392e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f5c2f70726f647563742d392e6a7067222c2274797065223a227333227d5d, 1500392718),
(28, 'qhDHkPjNKXEPENy', 0x5b7b226e616d65223a2242726f63687572655f302e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572655f302e6a7067222c2274797065223a227333227d5d, 1500392928),
(29, 'lzny95Da4oUQDEw', 0x5b7b226e616d65223a2242726f63687572655f312e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572655f312e6a7067222c2274797065223a227333227d5d, 1500393142),
(30, 'x6pH7dbSmYnYnJd', 0x5b7b226e616d65223a2242726f63687572655f312e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572655f312e6a7067222c2274797065223a227333227d5d, 1500393209),
(31, 'oqmDcM2R50dwgod', 0x5b7b226e616d65223a2242726f63687572655f312e6a7067222c2270617468223a227363686c2d71615c2f62726f6368757265735c2f42726f63687572655f312e6a7067222c2274797065223a227333227d5d, 1500393255),
(32, 'pFwpyzTwNHbneQc', 0x5b7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d5d, 1500465350),
(33, 'llnI46BGzAC7POw', 0x5b7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d5d, 1500465403),
(34, 'hoCqLVXt30Y5Uh2', 0x5b7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500465514),
(35, 'sXXSttV1uAFeuZ4', 0x5b7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500466899),
(36, 't4yrgKfTpdp4oht', 0x5b7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500467037),
(37, 'rUIeR00vtn5efvV', 0x5b7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500467067),
(38, 'xbChd1RUpnbsYop', 0x5b7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d5d, 1500467184),
(39, 'xPn5MHjBsr7Ov6c', 0x5b7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d5d, 1500468228),
(40, 'ru6LeVvLsY8fYyp', 0x5b7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d5d, 1500481554),
(41, 'qJwdH7xDqJKuvT3', 0x5b7b226e616d65223a2265635f333330305f665f68697265735f636f6c2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f65635f333330305f665f68697265735f636f6c2e6a7067222c2274797065223a227333227d2c7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500541726),
(42, 'vZe08q491IwE3J1', 0x5b7b226e616d65223a2265635f333330305f665f68697265735f636f6c2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f65635f333330305f665f68697265735f636f6c2e6a7067222c2274797065223a227333227d2c7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500541755),
(43, 'femiG9SFzOgIuI3', 0x5b7b226e616d65223a2265635f333330305f665f68697265735f636f6c2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f65635f333330305f665f68697265735f636f6c2e6a7067222c2274797065223a227333227d2c7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500541860),
(44, 'vyu02oWu1FNTm0s', 0x5b7b226e616d65223a2265635f333330305f665f68697265735f636f6c2e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f65635f333330305f665f68697265735f636f6c2e6a7067222c2274797065223a227333227d2c7b226e616d65223a22706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f706f7765726375745f333730305f64735f323031365f30385f30355f656e5f61345f302e706466222c2274797065223a227333227d2c7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f322e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f312e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138345f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637385f302e6a7067222c2274797065223a227333227d2c7b226e616d65223a22726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f726f746172797374726970323430305f7765625f396333363138323138342e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333230305f665f68697265735f636f6c5f653734306135353637382e6a7067222c2274797065223a227333227d2c7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d5d, 1500541956),
(45, 'dtjyvEQp9vBbI5y', 0x5b7b226e616d65223a22696d675f32303137303632325f3039323931352e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f696d675f32303137303632325f3039323931352e6a7067222c2274797065223a227333227d2c7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d2c7b226e616d65223a2265635f333330305f665f68697265735f636f6c5f643561346161663432622e6a7067222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30365c2f65635f333330305f665f68697265735f636f6c5f643561346161663432622e6a7067222c2274797065223a227333227d5d, 1500908479),
(46, 'o5kJHRg2puRXeBL', 0x5b7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d5d, 1501857814),
(47, 'oJbPSk1SgwaTjyb', 0x5b7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d5d, 1501857898),
(48, 'efLPwo1sAHgSQfi', 0x5b7b226e616d65223a2265636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2270617468223a227363686c2d71615c2f70726f647563745c2f323031372d30375c2f65636f6375745f333230305f64735f323031365f30385f30355f656e5f61342e706466222c2274797065223a227333227d5d, 1501857935),
(49, 'qfbQgAH0tUYUIXw', 0x5b7b226e616d65223a226a6f6273312e6a7067222c2270617468223a227363686c2d71615c2f736c696465725c2f6a6f6273312e6a7067222c2274797065223a227333227d5d, 1501858342),
(50, 'fH2RyekRhUpOwBM', 0x5b7b226e616d65223a226a6f6273312e6a7067222c2270617468223a227363686c2d71615c2f736c696465725c2f6a6f6273312e6a7067222c2274797065223a227333227d5d, 1501858362),
(51, 'uRT62VCbujVXZdl', 0x5b7b226e616d65223a226a6f6273312e6a7067222c2270617468223a227363686c2d71615c2f736c696465725c2f6a6f6273312e6a7067222c2274797065223a227333227d5d, 1501858438);


ALTER TABLE `dc_hashes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dc_hash_registry` (`id`,`hash`);


ALTER TABLE `dc_hashes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key.', AUTO_INCREMENT=52;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
