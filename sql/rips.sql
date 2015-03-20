-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2015 a las 22:18:30
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rips`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `us`
--

CREATE TABLE IF NOT EXISTS `us` (
  `US_ID` int(11) NOT NULL,
  `US_FILE_NAME` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `US_DATE_ADD` datetime NOT NULL,
  `US_TIPO_ID` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `US_NUM_ID` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `US_COD_ENT` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `US_TIPO_USUARIO` tinyint(1) NOT NULL,
  `US_PRI_AP` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `US_SEG_AP` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `US_PRI_NOM` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `US_SEG_NOM` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `US_EDAD` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `US_UNI_EDAD` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `US_SEXO` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `US_COD_DEP` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `US_COD_MUN` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `US_ZONA` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`US_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `us`
--

INSERT INTO `us` (`US_ID`, `US_FILE_NAME`, `US_DATE_ADD`, `US_TIPO_ID`, `US_NUM_ID`, `US_COD_ENT`, `US_TIPO_USUARIO`, `US_PRI_AP`, `US_SEG_AP`, `US_PRI_NOM`, `US_SEG_NOM`, `US_EDAD`, `US_UNI_EDAD`, `US_SEXO`, `US_COD_DEP`, `US_COD_MUN`, `US_ZONA`) VALUES
(1, 'US000004 (2)', '2015-01-24 20:10:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(2, 'US000004 (2)', '2015-01-24 20:10:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(3, 'US000004 (2)', '2015-01-24 20:10:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(4, 'US000004 (2)', '2015-01-24 20:10:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(5, 'US000004 (2)', '2015-01-24 21:34:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(6, 'US000004 (2)', '2015-01-24 21:34:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(7, 'US000004 (2)', '2015-01-24 21:34:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(8, 'US000004 (2)', '2015-01-24 21:34:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(9, 'US000004 (2)', '2015-01-24 21:36:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(10, 'US000004 (2)', '2015-01-24 21:36:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(11, 'US000004 (2)', '2015-01-24 21:36:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(12, 'US000004 (2)', '2015-01-24 21:36:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(13, 'US000004 (2)', '2015-01-24 21:37:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(14, 'US000004 (2)', '2015-01-24 21:37:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(15, 'US000004 (2)', '2015-01-24 21:37:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(16, 'US000004 (2)', '2015-01-24 21:37:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(17, 'US000004 (2)', '2015-01-24 21:38:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(18, 'US000004 (2)', '2015-01-24 21:38:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(19, 'US000004 (2)', '2015-01-24 21:38:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(20, 'US000004 (2)', '2015-01-24 21:38:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(21, 'US000004 (2)', '2015-01-24 21:39:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(22, 'US000004 (2)', '2015-01-24 21:39:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(23, 'US000004 (2)', '2015-01-24 21:39:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(24, 'US000004 (2)', '2015-01-24 21:39:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(25, 'US000004 (2)', '2015-01-24 21:39:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(26, 'US000004 (2)', '2015-01-24 21:39:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(27, 'US000004 (2)', '2015-01-24 21:39:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(28, 'US000004 (2)', '2015-01-24 21:39:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(29, 'US000004 (2)', '2015-01-24 21:40:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(30, 'US000004 (2)', '2015-01-24 21:40:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(31, 'US000004 (2)', '2015-01-24 21:40:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(32, 'US000004 (2)', '2015-01-24 21:40:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(33, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(34, 'US000004 (2)', '2015-01-24 21:41:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(35, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(36, 'US000004 (2)', '2015-01-24 21:41:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(37, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(38, 'US000004 (2)', '2015-01-24 21:41:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(39, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(40, 'US000004 (2)', '2015-01-24 21:41:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(41, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(42, 'US000004 (2)', '2015-01-24 21:41:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(43, 'US000004 (2)', '2015-01-24 21:41:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(44, 'US000004 (2)', '2015-01-24 21:41:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(45, 'US000004 (2)', '2015-01-24 21:42:00', 'CC', '3409408', 'EPS016', 1, 'MONTOYA', 'RUIZ', 'JAMES', 'DE JESUS', '58', '1', 'M', '05', '091', 'U'),
(46, 'US000004 (2)', '2015-01-24 21:42:00', 'RC', '1001579890', 'EPS016', 1, 'USUGA', 'BENITEZ', 'LEYDY', 'LORENA', '12', '1', 'F', '05', '284', 'U'),
(47, 'US000004 (2)', '2015-01-24 21:42:00', 'CC', '1039596470', 'EPS016', 1, 'SALDARRIAGA', 'SALINAS', 'SINDY', 'LAURA', '25', '1', 'F', '05', '091', 'U'),
(48, 'US000004 (2)', '2015-01-24 21:42:00', 'TI', '1193034368', 'EPS016', 1, 'CONTRERAS', 'QUINTERO', 'DAHIANA', 'ANDREA', '13', '1', 'F', '05', '091', 'R'),
(49, 'US000004 (3)', '2015-01-24 22:30:00', 'CC', '21550944', 'EPS003', 1, 'ALVAREZ', 'DE PEREZ', 'ROSALBA', 'MARGARITA DE JESUS', '64', '1', 'F', '05', '091', 'U'),
(50, 'US000004 (3)', '2015-01-24 22:30:00', 'CC', '21553294', 'EPS003', 1, 'MONTOYA', 'VELASQUEZ', 'NELLY', 'DEL CARMEN', '39', '1', 'F', '05', '091', 'R'),
(51, 'US000004 (3)', '2015-01-24 22:30:00', '', '43287565', 'EPS003', 1, '', '', '', '', '34', '1', '', '05', '034', '\r'),
(52, 'US000004 (3)', '2015-01-24 22:30:00', 'RC', '1013556044', 'EPS003', 1, 'RAIGOZA', 'HOLGUIN', 'CRISTIAN', '', '9', '1', 'M', '05', '091', 'U'),
(53, 'US000004 (3)', '2015-01-24 22:32:00', 'CC', '21550944', 'EPS003', 1, 'ALVAREZ', 'DE PEREZ', 'ROSALBA', 'MARGARITA DE JESUS', '64', '1', 'F', '05', '091', 'U'),
(54, 'US000004 (3)', '2015-01-24 22:32:00', 'CC', '21553294', 'EPS003', 1, 'MONTOYA', 'VELASQUEZ', 'NELLY', 'DEL CARMEN', '39', '1', 'F', '05', '091', 'R'),
(55, 'US000004 (3)', '2015-01-24 22:32:00', '', '43287565', 'EPS003', 1, '', '', '', '', '34', '1', '', '05', '034', '\r'),
(56, 'US000004 (3)', '2015-01-24 22:32:00', 'RC', '1013556044', 'EPS003', 1, 'RAIGOZA', 'HOLGUIN', 'CRISTIAN', '', '9', '1', 'M', '05', '091', 'U'),
(57, 'US000004 (3)', '2015-01-24 22:32:00', 'CC', '21550944', 'EPS003', 1, 'ALVAREZ', 'DE PEREZ', 'ROSALBA', 'MARGARITA DE JESUS', '64', '1', 'F', '05', '091', 'U'),
(58, 'US000004 (3)', '2015-01-24 22:32:00', 'CC', '21553294', 'EPS003', 1, 'MONTOYA', 'VELASQUEZ', 'NELLY', 'DEL CARMEN', '39', '1', 'F', '05', '091', 'R'),
(59, 'US000004 (3)', '2015-01-24 22:32:00', '', '43287565', 'EPS003', 1, '', '', '', '', '34', '1', '', '05', '034', '\r'),
(60, 'US000004 (3)', '2015-01-24 22:32:00', 'RC', '1013556044', 'EPS003', 1, 'RAIGOZA', 'HOLGUIN', 'CRISTIAN', '', '9', '1', 'M', '05', '091', 'U');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
