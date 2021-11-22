-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-09-2019 a las 10:38:15
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `videoaula`
--
CREATE DATABASE `videoaula` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `videoaula`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumnes`
--

CREATE TABLE IF NOT EXISTS `albumnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) NOT NULL,
  `propietario` int(11) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(1000) NOT NULL DEFAULT '',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `albumnes`
--

INSERT INTO `albumnes` (`id`, `nombre`, `propietario`, `descripcion`, `imagen`, `fecha`) VALUES
(10, 'canciones', 138, ' hay canciones', '', '2003-01-01 08:24:45'),
(11, 'musica de wendys', 138, 'pura champeta', '', '2003-01-01 05:24:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE IF NOT EXISTS `archivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archivo` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tam` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `archivo`, `id_user`, `tam`, `fecha`) VALUES
(1, 'hh.jpg', 138, 298588, '0000-00-00 00:00:00'),
(2, 'Chrysanthemum.jpg', 138, 879394, '0000-00-00 00:00:00'),
(3, 'Desert.jpg', 138, 845941, '0000-00-00 00:00:00'),
(4, 'Hydrangeas.jpg', 138, 595284, '0000-00-00 00:00:00'),
(5, 'Jellyfish.jpg', 138, 775702, '0000-00-00 00:00:00'),
(6, 'Koala.jpg', 138, 780831, '0000-00-00 00:00:00'),
(7, 'Lighthouse.jpg', 138, 561276, '0000-00-00 00:00:00'),
(8, 'Penguins.jpg', 138, 777835, '0000-00-00 00:00:00'),
(9, 'Tulips.jpg', 138, 620888, '0000-00-00 00:00:00'),
(10, 'Chrysanthemum.jpg', 138, 879394, '0000-00-00 00:00:00'),
(11, 'Koala.jpg', 138, 780831, '0000-00-00 00:00:00'),
(12, 'Chrysanthemum.jpg', 138, 879394, '0000-00-00 00:00:00'),
(13, 'Desert.jpg', 138, 845941, '0000-00-00 00:00:00'),
(14, 'Hydrangeas.jpg', 138, 595284, '0000-00-00 00:00:00'),
(15, 'Jellyfish.jpg', 138, 775702, '0000-00-00 00:00:00'),
(16, 'Koala.jpg', 138, 780831, '0000-00-00 00:00:00'),
(17, 'Lighthouse.jpg', 138, 561276, '0000-00-00 00:00:00'),
(18, 'Penguins.jpg', 138, 777835, '0000-00-00 00:00:00'),
(19, 'Tulips.jpg', 138, 620888, '0000-00-00 00:00:00'),
(20, 'fondo.jpg', 138, 561189, '0000-00-00 00:00:00'),
(21, 'fondo.jpg', 138, 561189, '0000-00-00 00:00:00'),
(22, 'img1.jpg', 138, 1504031, '0000-00-00 00:00:00'),
(23, 'img2.jpg', 138, 396998, '0000-00-00 00:00:00'),
(24, 'img4.jpg', 138, 680877, '0000-00-00 00:00:00'),
(25, 'img5.jpg', 138, 3158922, '0000-00-00 00:00:00'),
(26, 'img6.jpg', 138, 882619, '0000-00-00 00:00:00'),
(27, 'img8.jpg', 138, 1300666, '0000-00-00 00:00:00'),
(28, 'img9.jpg', 138, 843281, '0000-00-00 00:00:00'),
(29, 'img10.jpg', 138, 514479, '0000-00-00 00:00:00'),
(30, 'fondo.jpg', 153, 561189, '0000-00-00 00:00:00'),
(31, 'img1.jpg', 153, 1504031, '0000-00-00 00:00:00'),
(32, 'img2.jpg', 153, 396998, '0000-00-00 00:00:00'),
(33, 'img3.jpg', 153, 2076921, '0000-00-00 00:00:00'),
(34, 'img4.jpg', 153, 680877, '0000-00-00 00:00:00'),
(35, 'img5.jpg', 153, 3158922, '0000-00-00 00:00:00'),
(36, 'img6.jpg', 153, 882619, '0000-00-00 00:00:00'),
(37, 'img7.jpg', 153, 4137789, '0000-00-00 00:00:00'),
(38, 'img8.jpg', 153, 1300666, '0000-00-00 00:00:00'),
(39, 'img9.jpg', 153, 843281, '0000-00-00 00:00:00'),
(40, 'img10.jpg', 153, 514479, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archivo` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `limite` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visitas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `archivo`, `id_user`, `fecha`, `limite`, `visitas`) VALUES
(1, 'Koala.jpg', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Hydrangeas.jpg', '138', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'fondo.jpg', '138', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'img1.jpg', '153', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensagens`
--

CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_de` int(11) NOT NULL,
  `id_para` int(11) NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `lido` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Volcado de datos para la tabla `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_de`, `id_para`, `mensagem`, `time`, `lido`) VALUES
(1, 4, 138, ':):):)', 1041397694, 1),
(2, 4, 138, 'jajajajajaj', 1041397712, 1),
(3, 4, 138, 'gh00000000000000000', 1041398071, 1),
(4, 4, 138, '111', 1041398203, 1),
(5, 138, 4, '66', 1041398230, 1),
(6, 138, 4, '000000000000000000000000000', 1041398324, 1),
(7, 4, 138, ':):) jjjjjjjjjj', 1041398754, 1),
(8, 4, 138, 'fsdfsd', 1041398761, 1),
(9, 138, 4, 'jajajajaj', 1041398772, 1),
(10, 138, 4, 'dfg dfg dfdf 0000 :)))))', 1041398780, 1),
(11, 138, 4, 'sdfsd', 1041398784, 1),
(12, 138, 4, 'fdgdf', 1041398788, 1),
(13, 4, 138, 'jajajajja', 1041398793, 1),
(14, 138, 4, '123456789014785239', 1041398813, 1),
(15, 138, 4, ':) jajaja 0:15', 1041398160, 1),
(16, 4, 138, 'gracias dios', 1041398170, 1),
(17, 4, 138, 'soy', 1041398182, 1),
(18, 138, 4, 'dollaolajansdd', 1041398191, 1),
(19, 4, 138, 'jajajajajajajaaj', 1041397837, 1),
(20, 4, 138, ':)', 1041401680, 1),
(21, 4, 138, ':) jajajaja', 1041401710, 1),
(22, 138, 4, 'hola :) jajajaja', 1041401742, 1),
(23, 4, 138, 'que', 1041401865, 1),
(24, 138, 4, 'cuas sdkf dsfdf fsdm sdlf sd msd,mf s,f s,ef  fse fgsd ,fsdlmf  sd fsdn ,sd fsdnknf ,sd f sdknf sd fksjfn sd,n hsd ,dhf sdnf nsdfsdn sdf sdfjksdk sd sdn ksnfn sd fnsdn sd ksd sd fsdk nsdn ksdk sdf sd kfnds fsdn sd nsdknf nsd ksdfn ksdh nsdn sdn nsdfh ksdf', 1041401907, 1),
(25, 4, 138, 'aya', 1041401916, 1),
(26, 138, 4, 'jajajajaja :)', 1041401931, 1),
(27, 138, 4, 'fotos', 1041401986, 1),
(28, 138, 1, '67u tytyty t ty ty ty yt tyyt ty ty uty ty ty yt ty y yty yt tyty yt yt ty ty yt ty ty yt ty ty y   yt y ty tty y ty  yt yu y ty yty tyy tty ytyy  y ytytyt  ty jhgh   dgdgd dfg d gd gdfgdfdff', 1041406103, 1),
(29, 1, 138, 'siiiii', 1041407470, 1),
(30, 138, 4, 'hola como estas', 1041397548, 1),
(31, 4, 138, 'gdfgfd fd df', 1041397564, 1),
(32, 4, 138, 'tytryt t', 1041397571, 1),
(33, 6, 138, 'hola beny cm estas :)', 315810610, 1),
(34, 138, 6, 'bien y tu', 315810632, 1),
(35, 138, 4, 'hola wendys', 315812641, 1),
(36, 138, 4, '#08589a', 1041427729, 1),
(37, 138, 4, 'bvgfgh  gh', 1041430698, 1),
(38, 138, 4, 'bvgfgh  gh', 1041430698, 1),
(39, 4, 138, 'hhk,k', 1041430879, 1),
(40, 138, 4, 'v565', 1041430892, 1),
(41, 4, 138, 'hola keyner com ;)', 1041557763, 1),
(42, 4, 138, 'hola keyner como estas', 1041644573, 1),
(43, 138, 4, 'bien y tu', 1041644591, 1),
(44, 4, 138, 'muy bien', 1041644607, 1),
(45, 4, 138, 'y como estan todos por alla', 1041644621, 1),
(46, 138, 4, 'bien y cuando vienes', 1041644647, 1),
(47, 4, 138, 'nose', 1041644652, 1),
(48, 138, 4, 'jajajajaja', 1041644659, 1),
(49, 4, 138, 'QUE', 1041644665, 1),
(50, 138, 4, 'VERDAD', 1041644678, 1),
(51, 138, 5, 'hola como estas', 315813404, 1),
(52, 5, 138, 'bien y tu', 315813420, 1),
(53, 138, 5, 'muy bien', 315813438, 1),
(54, 5, 138, 'me alegra', 315813454, 1),
(55, 138, 5, ':):):) jajajajajaja', 315813468, 1),
(56, 138, 4, 'hellow', 315812107, 1),
(57, 4, 138, 'what ??', 315812135, 1),
(58, 138, 4, 'never', 315812160, 1),
(59, 138, 1, '67u tytyty t ty ty ty yt tyyt ty ty iiuu', 315818044, 1),
(60, 138, 1, '67u tytyty t ty ty ty yt tyyt ty ty ty', 315818057, 1),
(61, 138, 1, '67u tytyty t ty ty ty yt tyyt ty ty t', 315818071, 1),
(62, 138, 4, '4', 315825659, 1),
(63, 138, 1, '1', 315825669, 1),
(64, 138, 5, '3', 315825679, 1),
(65, 138, 6, '2', 315825689, 1),
(66, 4, 138, 'hola keyner como estas :)', 315829515, 1),
(67, 138, 4, 'jajaj', 315841315, 0),
(68, 142, 138, 'hola señor como estas', 1568885910, 0),
(69, 138, 142, 'muy bien y tu como estas', 1568885926, 0),
(70, 142, 138, ':) :)', 1568885937, 0),
(71, 138, 142, '546566464646464', 1568885952, 0),
(72, 138, 142, '55', 1568885958, 0),
(73, 138, 142, '5555', 1568885958, 0),
(74, 138, 142, '555', 1568885958, 0),
(75, 138, 142, '55555', 1568885958, 0),
(76, 138, 142, '555555', 1568885958, 0),
(77, 138, 142, '5555555', 1568885959, 0),
(78, 138, 142, '5555555', 1568885959, 0),
(79, 138, 142, '555555555', 1568885959, 0),
(80, 142, 138, '4444444', 1568885967, 0),
(81, 138, 142, '55555', 1568885973, 0),
(82, 142, 138, 'ffffff', 1568885977, 0),
(83, 4, 153, 'hola como estas', 1568888656, 1),
(84, 153, 4, 'gfdgfdfdgdf', 1568888671, 0),
(85, 4, 153, ':):):)', 1568888682, 1),
(86, 138, 153, 'holaaaa', 1568888769, 0),
(87, 4, 153, 'hollaaa', 1568888788, 0),
(88, 153, 4, 'ya los vii', 1568888841, 0),
(89, 153, 138, 'ya los vi', 1568888848, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE IF NOT EXISTS `publicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `mensaje` varchar(50000) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `id_user`, `mensaje`, `fecha`) VALUES
(1, 138, 'javascript:void(0);', '2003-01-01 06:42:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` varchar(100) NOT NULL,
  `ao` int(11) NOT NULL,
  `horario` datetime NOT NULL,
  `limite` datetime NOT NULL,
  `blocks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `foto`, `nome`, `apellidos`, `email`, `password`, `sexo`, `pais`, `telefono`, `dia`, `mes`, `ao`, `horario`, `limite`, `blocks`) VALUES
(1, 'lucas.jpg', 'Lucas Silva', 'perez solar', 'lucas.designer@hotmail.com.br', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '1980-01-04 07:25:09', '1980-01-04 07:31:25', ''),
(2, 'juan.jpg', 'João Souza', 'palacio', 'joao@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '1980-01-04 05:13:21', '1980-01-04 05:21:26', ''),
(3, 'maria.jpg', 'Maria da Silva', 'martinez', 'mariasilva@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:36:22', '2003-01-01 05:37:32', ''),
(4, 'wendys.jpg', 'wendys paola', 'pena herrera', 'wendys@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2019-09-19 10:22:56', '2019-09-19 10:38:53', ''),
(5, 'kendys.jpg', 'kendys', 'rivera tobar', 'kendys@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '1980-01-04 09:07:27', '1980-01-04 09:10:03', ''),
(6, 'beny.jpg', 'beny', 'ospina roble', 'beny@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', '', '313608918', 9, 'diciembre', 2002, '1980-01-04 09:03:20', '1980-01-04 09:05:35', ''),
(7, 'juan.jpg', 'juan', 'samiento blanco', 'juan@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:18:48', '2003-01-01 05:22:02', ''),
(8, 'leo.jpg', 'leo', 'herrera villanueva', 'leo@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', '', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:16:47', '2003-01-01 05:17:58', ''),
(9, 'danna.jpg', 'danna', 'causado herrera', 'danna@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:08:54', '2003-01-01 05:18:38', ''),
(10, 'yulis.jpg', 'yulis', 'divasto arrieta', 'yulis@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', '', '313608918', 9, 'diciembre', 2002, '1980-01-08 23:59:59', '1980-01-08 22:57:59', ''),
(11, 'roxana.jpg', 'roxana', 'solar pajaro', 'roxana@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '1980-01-08 23:59:59', '1980-01-08 22:57:59', ''),
(12, 'danna.jpg', 'diana', 'pinto san martin', 'diana@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2017-12-21 20:04:16', '2017-12-21 20:16:46', ''),
(13, 'thaliana.jpg', 'thaliana', 'ortega diaz', 'thaliana@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2017-12-21 16:13:46', '2017-12-21 16:19:41', ''),
(14, 'manuel.jpg', 'manuel', 'zapata olivera', 'manuel@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '1980-01-04 05:25:47', '1980-01-04 05:27:14', ''),
(15, 'wendys.jpg', 'pablo', 'diaz maestre', 'pablo@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2018-01-02 14:00:58', '2018-01-02 14:03:42', ''),
(16, 'lucas.jpg', 'oscar', 'rodriguez', 'oscar@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2017-12-21 22:10:17', '2017-12-21 22:11:46', ''),
(18, 'juan.jpg', 'rafael', 'diaz lopez', 'rafael@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2018-01-01 20:00:52', '2018-01-01 20:02:00', ''),
(19, 'img1.jpg', 'zora', 'serpa d', 'zora@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '3108041211', 9, 'diciembre', 2002, '2017-12-31 17:43:39', '2017-12-31 00:00:00', ''),
(126, 'img2.jpg', 'dfsdfd', 'sfsdfsd', 'fdsfs@d.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(130, 'img3.jpg', 'hjgj', 'gjhjgh', 'fghf@sd.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', '', '313608918', 9, 'diciembre', 2002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(131, 'img4.jpg', 'ytuty', 'xx@aa.com', 'xx@aa.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', '', '313608918', 9, 'diciembre', 2002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(132, 'img5.jpg', 'julian', 'sanmartin', 'julian@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:42:28', '2003-01-01 05:43:40', '2'),
(133, 'img6.jpg', 'milena andrea', 'zapata', 'milena@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Colombia', '313608918', 9, 'diciembre', 2002, '2003-01-01 06:40:15', '2003-01-01 06:41:26', '2'),
(138, 'keyner.jpg', 'Keyner ', 'peña herrera', 'keyner@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Colombia', '313608918', 9, 'diciembre', 2002, '2019-09-19 10:07:52', '2019-09-19 10:30:45', '2'),
(142, 'img7.jpg', 'ana maria', 'galvis', 'ana_maria@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Eritrea', '313608918', 9, 'diciembre', 2002, '2019-09-19 09:37:58', '2019-09-19 09:40:39', '2'),
(143, 'img8.jpg', 'dfdsfgsdf', 'gdfgdf', 'fdg@hf.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Bahamas', '313608918', 9, 'diciembre', 2002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(144, 'img9.jpg', 'fghfg', 'fgh', 'fghfg@dd.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mujer', 'Estonia', '313608918', 9, 'diciembre', 2002, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(149, 'img10.jpg', 'kk', 'pp', 'kkpp@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Tanzania', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:20:24', '2003-01-01 05:21:34', '2'),
(150, 'img11.jpg', 'MMM', 'MMM', 'MMM@HOTMAIL.COM', '827ccb0eea8a706c4c34a16891f84e7b', 'Hombre', 'Australia', '313608918', 9, 'diciembre', 2002, '2003-01-01 05:06:49', '2003-01-01 05:39:36', '2'),
(151, '', 'keyner', 'peña herrera', 'keynerp@hotmail.com', '202cb962ac59075b964b07152d234b70', 'Hombre', 'Colombia', '3136089184', 1, 'abril', 2009, '2003-01-01 06:00:43', '2003-01-01 06:08:36', '2'),
(152, '', 'dffdgd', 'dfgdf', 'keyner@hotmaild.com', '8277e0910d750195b448797616e091ad', 'Hombre', 'Australia', '3136089184', 5, 'septiembre', 2000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2'),
(153, 'img10.jpg', 'suscriptor', 'suscriptor', 'suscriptor@hotmail.com', '1f3bdecfd82df99a5bea9e4da0b7dfd3', 'Hombre', 'Colombia', '3212458898', 5, 'diciembre', 2002, '2019-09-19 10:14:32', '2019-09-19 10:31:06', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
