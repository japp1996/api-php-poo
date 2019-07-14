-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-10-2018 a las 14:41:03
-- Versión del servidor: 5.7.22-0ubuntu0.16.04.1
-- Versión de PHP: 5.6.38-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lotto9service`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencias`
--

CREATE TABLE `agencias` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usuario` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `rif` varchar(50) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `telefonos` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `comision` float(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agencias`
--

INSERT INTO `agencias` (`id`, `id_usuario`, `nombre`, `rif`, `codigo`, `id_ciudad`, `direccion`, `telefonos`, `correo`, `comision`) VALUES
(2, 10, 'Agencia Uno', 'v123423535', 'age', 277, 'direccion agencia uno.', '02222222', 'agencia.oficial@gmail.com', 10.20),
(3, 16, 'Agencia Prueba', '123456789', 'AGT', 1, 'Dirección', '04123555888', 'agenicaprueba@gamil.com', 200.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balances`
--

CREATE TABLE `balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `monto` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `balances`
--

INSERT INTO `balances` (`id`, `user_id`, `monto`) VALUES
(1, 12, 1000000.00),
(2, 13, 1020600.00),
(3, 15, 1000000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `capital` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `id_estado`, `ciudad`, `capital`) VALUES
(1, 1, 'Maroa', 0),
(2, 1, 'Puerto Ayacucho', 1),
(3, 1, 'San Fernando de Atabapo', 0),
(4, 2, 'Anaco', 0),
(5, 2, 'Aragua de Barcelona', 0),
(6, 2, 'Barcelona', 1),
(7, 2, 'Boca de Uchire', 0),
(8, 2, 'Cantaura', 0),
(9, 2, 'Clarines', 0),
(10, 2, 'El Chaparro', 0),
(11, 2, 'El Pao Anzoátegui', 0),
(12, 2, 'El Tigre', 0),
(13, 2, 'El Tigrito', 0),
(14, 2, 'Guanape', 0),
(15, 2, 'Guanta', 0),
(16, 2, 'Lechería', 0),
(17, 2, 'Onoto', 0),
(18, 2, 'Pariaguán', 0),
(19, 2, 'Píritu', 0),
(20, 2, 'Puerto La Cruz', 0),
(21, 2, 'Puerto Píritu', 0),
(22, 2, 'Sabana de Uchire', 0),
(23, 2, 'San Mateo Anzoátegui', 0),
(24, 2, 'San Pablo Anzoátegui', 0),
(25, 2, 'San Tomé', 0),
(26, 2, 'Santa Ana de Anzoátegui', 0),
(27, 2, 'Santa Fe Anzoátegui', 0),
(28, 2, 'Santa Rosa', 0),
(29, 2, 'Soledad', 0),
(30, 2, 'Urica', 0),
(31, 2, 'Valle de Guanape', 0),
(43, 3, 'Achaguas', 0),
(44, 3, 'Biruaca', 0),
(45, 3, 'Bruzual', 0),
(46, 3, 'El Amparo', 0),
(47, 3, 'El Nula', 0),
(48, 3, 'Elorza', 0),
(49, 3, 'Guasdualito', 0),
(50, 3, 'Mantecal', 0),
(51, 3, 'Puerto Páez', 0),
(52, 3, 'San Fernando de Apure', 1),
(53, 3, 'San Juan de Payara', 0),
(54, 4, 'Barbacoas', 0),
(55, 4, 'Cagua', 0),
(56, 4, 'Camatagua', 0),
(58, 4, 'Choroní', 0),
(59, 4, 'Colonia Tovar', 0),
(60, 4, 'El Consejo', 0),
(61, 4, 'La Victoria', 0),
(62, 4, 'Las Tejerías', 0),
(63, 4, 'Magdaleno', 0),
(64, 4, 'Maracay', 1),
(65, 4, 'Ocumare de La Costa', 0),
(66, 4, 'Palo Negro', 0),
(67, 4, 'San Casimiro', 0),
(68, 4, 'San Mateo', 0),
(69, 4, 'San Sebastián', 0),
(70, 4, 'Santa Cruz de Aragua', 0),
(71, 4, 'Tocorón', 0),
(72, 4, 'Turmero', 0),
(73, 4, 'Villa de Cura', 0),
(74, 4, 'Zuata', 0),
(75, 5, 'Barinas', 1),
(76, 5, 'Barinitas', 0),
(77, 5, 'Barrancas', 0),
(78, 5, 'Calderas', 0),
(79, 5, 'Capitanejo', 0),
(80, 5, 'Ciudad Bolivia', 0),
(81, 5, 'El Cantón', 0),
(82, 5, 'Las Veguitas', 0),
(83, 5, 'Libertad de Barinas', 0),
(84, 5, 'Sabaneta', 0),
(85, 5, 'Santa Bárbara de Barinas', 0),
(86, 5, 'Socopó', 0),
(87, 6, 'Caicara del Orinoco', 0),
(88, 6, 'Canaima', 0),
(89, 6, 'Ciudad Bolívar', 1),
(90, 6, 'Ciudad Piar', 0),
(91, 6, 'El Callao', 0),
(92, 6, 'El Dorado', 0),
(93, 6, 'El Manteco', 0),
(94, 6, 'El Palmar', 0),
(95, 6, 'El Pao', 0),
(96, 6, 'Guasipati', 0),
(97, 6, 'Guri', 0),
(98, 6, 'La Paragua', 0),
(99, 6, 'Matanzas', 0),
(100, 6, 'Puerto Ordaz', 0),
(101, 6, 'San Félix', 0),
(102, 6, 'Santa Elena de Uairén', 0),
(103, 6, 'Tumeremo', 0),
(104, 6, 'Unare', 0),
(105, 6, 'Upata', 0),
(106, 7, 'Bejuma', 0),
(107, 7, 'Belén', 0),
(108, 7, 'Campo de Carabobo', 0),
(109, 7, 'Canoabo', 0),
(110, 7, 'Central Tacarigua', 0),
(111, 7, 'Chirgua', 0),
(112, 7, 'Ciudad Alianza', 0),
(113, 7, 'El Palito', 0),
(114, 7, 'Guacara', 0),
(115, 7, 'Guigue', 0),
(116, 7, 'Las Trincheras', 0),
(117, 7, 'Los Guayos', 0),
(118, 7, 'Mariara', 0),
(119, 7, 'Miranda', 0),
(120, 7, 'Montalbán', 0),
(121, 7, 'Morón', 0),
(122, 7, 'Naguanagua', 0),
(123, 7, 'Puerto Cabello', 0),
(124, 7, 'San Joaquín', 0),
(125, 7, 'Tocuyito', 0),
(126, 7, 'Urama', 0),
(127, 7, 'Valencia', 1),
(128, 7, 'Vigirimita', 0),
(129, 8, 'Aguirre', 0),
(130, 8, 'Apartaderos Cojedes', 0),
(131, 8, 'Arismendi', 0),
(132, 8, 'Camuriquito', 0),
(133, 8, 'El Baúl', 0),
(134, 8, 'El Limón', 0),
(135, 8, 'El Pao Cojedes', 0),
(136, 8, 'El Socorro', 0),
(137, 8, 'La Aguadita', 0),
(138, 8, 'Las Vegas', 0),
(139, 8, 'Libertad de Cojedes', 0),
(140, 8, 'Mapuey', 0),
(141, 8, 'Piñedo', 0),
(142, 8, 'Samancito', 0),
(143, 8, 'San Carlos', 1),
(144, 8, 'Sucre', 0),
(145, 8, 'Tinaco', 0),
(146, 8, 'Tinaquillo', 0),
(147, 8, 'Vallecito', 0),
(148, 9, 'Tucupita', 1),
(149, 24, 'Caracas', 1),
(150, 24, 'El Junquito', 0),
(151, 10, 'Adícora', 0),
(152, 10, 'Boca de Aroa', 0),
(153, 10, 'Cabure', 0),
(154, 10, 'Capadare', 0),
(155, 10, 'Capatárida', 0),
(156, 10, 'Chichiriviche', 0),
(157, 10, 'Churuguara', 0),
(158, 10, 'Coro', 1),
(159, 10, 'Cumarebo', 0),
(160, 10, 'Dabajuro', 0),
(161, 10, 'Judibana', 0),
(162, 10, 'La Cruz de Taratara', 0),
(163, 10, 'La Vela de Coro', 0),
(164, 10, 'Los Taques', 0),
(165, 10, 'Maparari', 0),
(166, 10, 'Mene de Mauroa', 0),
(167, 10, 'Mirimire', 0),
(168, 10, 'Pedregal', 0),
(169, 10, 'Píritu Falcón', 0),
(170, 10, 'Pueblo Nuevo Falcón', 0),
(171, 10, 'Puerto Cumarebo', 0),
(172, 10, 'Punta Cardón', 0),
(173, 10, 'Punto Fijo', 0),
(174, 10, 'San Juan de Los Cayos', 0),
(175, 10, 'San Luis', 0),
(176, 10, 'Santa Ana Falcón', 0),
(177, 10, 'Santa Cruz De Bucaral', 0),
(178, 10, 'Tocopero', 0),
(179, 10, 'Tocuyo de La Costa', 0),
(180, 10, 'Tucacas', 0),
(181, 10, 'Yaracal', 0),
(182, 11, 'Altagracia de Orituco', 0),
(183, 11, 'Cabruta', 0),
(184, 11, 'Calabozo', 0),
(185, 11, 'Camaguán', 0),
(196, 11, 'Chaguaramas Guárico', 0),
(197, 11, 'El Socorro', 0),
(198, 11, 'El Sombrero', 0),
(199, 11, 'Las Mercedes de Los Llanos', 0),
(200, 11, 'Lezama', 0),
(201, 11, 'Onoto', 0),
(202, 11, 'Ortíz', 0),
(203, 11, 'San José de Guaribe', 0),
(204, 11, 'San Juan de Los Morros', 1),
(205, 11, 'San Rafael de Laya', 0),
(206, 11, 'Santa María de Ipire', 0),
(207, 11, 'Tucupido', 0),
(208, 11, 'Valle de La Pascua', 0),
(209, 11, 'Zaraza', 0),
(210, 12, 'Aguada Grande', 0),
(211, 12, 'Atarigua', 0),
(212, 12, 'Barquisimeto', 1),
(213, 12, 'Bobare', 0),
(214, 12, 'Cabudare', 0),
(215, 12, 'Carora', 0),
(216, 12, 'Cubiro', 0),
(217, 12, 'Cují', 0),
(218, 12, 'Duaca', 0),
(219, 12, 'El Manzano', 0),
(220, 12, 'El Tocuyo', 0),
(221, 12, 'Guaríco', 0),
(222, 12, 'Humocaro Alto', 0),
(223, 12, 'Humocaro Bajo', 0),
(224, 12, 'La Miel', 0),
(225, 12, 'Moroturo', 0),
(226, 12, 'Quíbor', 0),
(227, 12, 'Río Claro', 0),
(228, 12, 'Sanare', 0),
(229, 12, 'Santa Inés', 0),
(230, 12, 'Sarare', 0),
(231, 12, 'Siquisique', 0),
(232, 12, 'Tintorero', 0),
(233, 13, 'Apartaderos Mérida', 0),
(234, 13, 'Arapuey', 0),
(235, 13, 'Bailadores', 0),
(236, 13, 'Caja Seca', 0),
(237, 13, 'Canaguá', 0),
(238, 13, 'Chachopo', 0),
(239, 13, 'Chiguara', 0),
(240, 13, 'Ejido', 0),
(241, 13, 'El Vigía', 0),
(242, 13, 'La Azulita', 0),
(243, 13, 'La Playa', 0),
(244, 13, 'Lagunillas Mérida', 0),
(245, 13, 'Mérida', 1),
(246, 13, 'Mesa de Bolívar', 0),
(247, 13, 'Mucuchíes', 0),
(248, 13, 'Mucujepe', 0),
(249, 13, 'Mucuruba', 0),
(250, 13, 'Nueva Bolivia', 0),
(251, 13, 'Palmarito', 0),
(252, 13, 'Pueblo Llano', 0),
(253, 13, 'Santa Cruz de Mora', 0),
(254, 13, 'Santa Elena de Arenales', 0),
(255, 13, 'Santo Domingo', 0),
(256, 13, 'Tabáy', 0),
(257, 13, 'Timotes', 0),
(258, 13, 'Torondoy', 0),
(259, 13, 'Tovar', 0),
(260, 13, 'Tucani', 0),
(261, 13, 'Zea', 0),
(262, 14, 'Araguita', 0),
(263, 14, 'Carrizal', 0),
(264, 14, 'Caucagua', 0),
(265, 14, 'Chaguaramas Miranda', 0),
(266, 14, 'Charallave', 0),
(267, 14, 'Chirimena', 0),
(268, 14, 'Chuspa', 0),
(269, 14, 'Cúa', 0),
(270, 14, 'Cupira', 0),
(271, 14, 'Curiepe', 0),
(272, 14, 'El Guapo', 0),
(273, 14, 'El Jarillo', 0),
(274, 14, 'Filas de Mariche', 0),
(275, 14, 'Guarenas', 0),
(276, 14, 'Guatire', 0),
(277, 14, 'Higuerote', 0),
(278, 14, 'Los Anaucos', 0),
(279, 14, 'Los Teques', 1),
(280, 14, 'Ocumare del Tuy', 0),
(281, 14, 'Panaquire', 0),
(282, 14, 'Paracotos', 0),
(283, 14, 'Río Chico', 0),
(284, 14, 'San Antonio de Los Altos', 0),
(285, 14, 'San Diego de Los Altos', 0),
(286, 14, 'San Fernando del Guapo', 0),
(287, 14, 'San Francisco de Yare', 0),
(288, 14, 'San José de Los Altos', 0),
(289, 14, 'San José de Río Chico', 0),
(290, 14, 'San Pedro de Los Altos', 0),
(291, 14, 'Santa Lucía', 0),
(292, 14, 'Santa Teresa', 0),
(293, 14, 'Tacarigua de La Laguna', 0),
(294, 14, 'Tacarigua de Mamporal', 0),
(295, 14, 'Tácata', 0),
(296, 14, 'Turumo', 0),
(297, 15, 'Aguasay', 0),
(298, 15, 'Aragua de Maturín', 0),
(299, 15, 'Barrancas del Orinoco', 0),
(300, 15, 'Caicara de Maturín', 0),
(301, 15, 'Caripe', 0),
(302, 15, 'Caripito', 0),
(303, 15, 'Chaguaramal', 0),
(305, 15, 'Chaguaramas Monagas', 0),
(307, 15, 'El Furrial', 0),
(308, 15, 'El Tejero', 0),
(309, 15, 'Jusepín', 0),
(310, 15, 'La Toscana', 0),
(311, 15, 'Maturín', 1),
(312, 15, 'Miraflores', 0),
(313, 15, 'Punta de Mata', 0),
(314, 15, 'Quiriquire', 0),
(315, 15, 'San Antonio de Maturín', 0),
(316, 15, 'San Vicente Monagas', 0),
(317, 15, 'Santa Bárbara', 0),
(318, 15, 'Temblador', 0),
(319, 15, 'Teresen', 0),
(320, 15, 'Uracoa', 0),
(321, 16, 'Altagracia', 0),
(322, 16, 'Boca de Pozo', 0),
(323, 16, 'Boca de Río', 0),
(324, 16, 'El Espinal', 0),
(325, 16, 'El Valle del Espíritu Santo', 0),
(326, 16, 'El Yaque', 0),
(327, 16, 'Juangriego', 0),
(328, 16, 'La Asunción', 1),
(329, 16, 'La Guardia', 0),
(330, 16, 'Pampatar', 0),
(331, 16, 'Porlamar', 0),
(332, 16, 'Puerto Fermín', 0),
(333, 16, 'Punta de Piedras', 0),
(334, 16, 'San Francisco de Macanao', 0),
(335, 16, 'San Juan Bautista', 0),
(336, 16, 'San Pedro de Coche', 0),
(337, 16, 'Santa Ana de Nueva Esparta', 0),
(338, 16, 'Villa Rosa', 0),
(339, 17, 'Acarigua', 0),
(340, 17, 'Agua Blanca', 0),
(341, 17, 'Araure', 0),
(342, 17, 'Biscucuy', 0),
(343, 17, 'Boconoito', 0),
(344, 17, 'Campo Elías', 0),
(345, 17, 'Chabasquén', 0),
(346, 17, 'Guanare', 1),
(347, 17, 'Guanarito', 0),
(348, 17, 'La Aparición', 0),
(349, 17, 'La Misión', 0),
(350, 17, 'Mesa de Cavacas', 0),
(351, 17, 'Ospino', 0),
(352, 17, 'Papelón', 0),
(353, 17, 'Payara', 0),
(354, 17, 'Pimpinela', 0),
(355, 17, 'Píritu de Portuguesa', 0),
(356, 17, 'San Rafael de Onoto', 0),
(357, 17, 'Santa Rosalía', 0),
(358, 17, 'Turén', 0),
(359, 18, 'Altos de Sucre', 0),
(360, 18, 'Araya', 0),
(361, 18, 'Cariaco', 0),
(362, 18, 'Carúpano', 0),
(363, 18, 'Casanay', 0),
(364, 18, 'Cumaná', 1),
(365, 18, 'Cumanacoa', 0),
(366, 18, 'El Morro Puerto Santo', 0),
(367, 18, 'El Pilar', 0),
(368, 18, 'El Poblado', 0),
(369, 18, 'Guaca', 0),
(370, 18, 'Guiria', 0),
(371, 18, 'Irapa', 0),
(372, 18, 'Manicuare', 0),
(373, 18, 'Mariguitar', 0),
(374, 18, 'Río Caribe', 0),
(375, 18, 'San Antonio del Golfo', 0),
(376, 18, 'San José de Aerocuar', 0),
(377, 18, 'San Vicente de Sucre', 0),
(378, 18, 'Santa Fe de Sucre', 0),
(379, 18, 'Tunapuy', 0),
(380, 18, 'Yaguaraparo', 0),
(381, 18, 'Yoco', 0),
(382, 19, 'Abejales', 0),
(383, 19, 'Borota', 0),
(384, 19, 'Bramon', 0),
(385, 19, 'Capacho', 0),
(386, 19, 'Colón', 0),
(387, 19, 'Coloncito', 0),
(388, 19, 'Cordero', 0),
(389, 19, 'El Cobre', 0),
(390, 19, 'El Pinal', 0),
(391, 19, 'Independencia', 0),
(392, 19, 'La Fría', 0),
(393, 19, 'La Grita', 0),
(394, 19, 'La Pedrera', 0),
(395, 19, 'La Tendida', 0),
(396, 19, 'Las Delicias', 0),
(397, 19, 'Las Hernández', 0),
(398, 19, 'Lobatera', 0),
(399, 19, 'Michelena', 0),
(400, 19, 'Palmira', 0),
(401, 19, 'Pregonero', 0),
(402, 19, 'Queniquea', 0),
(403, 19, 'Rubio', 0),
(404, 19, 'San Antonio del Tachira', 0),
(405, 19, 'San Cristobal', 1),
(406, 19, 'San José de Bolívar', 0),
(407, 19, 'San Josecito', 0),
(408, 19, 'San Pedro del Río', 0),
(409, 19, 'Santa Ana Táchira', 0),
(410, 19, 'Seboruco', 0),
(411, 19, 'Táriba', 0),
(412, 19, 'Umuquena', 0),
(413, 19, 'Ureña', 0),
(414, 20, 'Batatal', 0),
(415, 20, 'Betijoque', 0),
(416, 20, 'Boconó', 0),
(417, 20, 'Carache', 0),
(418, 20, 'Chejende', 0),
(419, 20, 'Cuicas', 0),
(420, 20, 'El Dividive', 0),
(421, 20, 'El Jaguito', 0),
(422, 20, 'Escuque', 0),
(423, 20, 'Isnotú', 0),
(424, 20, 'Jajó', 0),
(425, 20, 'La Ceiba', 0),
(426, 20, 'La Concepción de Trujllo', 0),
(427, 20, 'La Mesa de Esnujaque', 0),
(428, 20, 'La Puerta', 0),
(429, 20, 'La Quebrada', 0),
(430, 20, 'Mendoza Fría', 0),
(431, 20, 'Meseta de Chimpire', 0),
(432, 20, 'Monay', 0),
(433, 20, 'Motatán', 0),
(434, 20, 'Pampán', 0),
(435, 20, 'Pampanito', 0),
(436, 20, 'Sabana de Mendoza', 0),
(437, 20, 'San Lázaro', 0),
(438, 20, 'Santa Ana de Trujillo', 0),
(439, 20, 'Tostós', 0),
(440, 20, 'Trujillo', 1),
(441, 20, 'Valera', 0),
(442, 21, 'Carayaca', 0),
(443, 21, 'Litoral', 0),
(444, 25, 'Archipiélago Los Roques', 0),
(445, 22, 'Aroa', 0),
(446, 22, 'Boraure', 0),
(447, 22, 'Campo Elías de Yaracuy', 0),
(448, 22, 'Chivacoa', 0),
(449, 22, 'Cocorote', 0),
(450, 22, 'Farriar', 0),
(451, 22, 'Guama', 0),
(452, 22, 'Marín', 0),
(453, 22, 'Nirgua', 0),
(454, 22, 'Sabana de Parra', 0),
(455, 22, 'Salom', 0),
(456, 22, 'San Felipe', 1),
(457, 22, 'San Pablo de Yaracuy', 0),
(458, 22, 'Urachiche', 0),
(459, 22, 'Yaritagua', 0),
(460, 22, 'Yumare', 0),
(461, 23, 'Bachaquero', 0),
(462, 23, 'Bobures', 0),
(463, 23, 'Cabimas', 0),
(464, 23, 'Campo Concepción', 0),
(465, 23, 'Campo Mara', 0),
(466, 23, 'Campo Rojo', 0),
(467, 23, 'Carrasquero', 0),
(468, 23, 'Casigua', 0),
(469, 23, 'Chiquinquirá', 0),
(470, 23, 'Ciudad Ojeda', 0),
(471, 23, 'El Batey', 0),
(472, 23, 'El Carmelo', 0),
(473, 23, 'El Chivo', 0),
(474, 23, 'El Guayabo', 0),
(475, 23, 'El Mene', 0),
(476, 23, 'El Venado', 0),
(477, 23, 'Encontrados', 0),
(478, 23, 'Gibraltar', 0),
(479, 23, 'Isla de Toas', 0),
(480, 23, 'La Concepción del Zulia', 0),
(481, 23, 'La Paz', 0),
(482, 23, 'La Sierrita', 0),
(483, 23, 'Lagunillas del Zulia', 0),
(484, 23, 'Las Piedras de Perijá', 0),
(485, 23, 'Los Cortijos', 0),
(486, 23, 'Machiques', 0),
(487, 23, 'Maracaibo', 1),
(488, 23, 'Mene Grande', 0),
(489, 23, 'Palmarejo', 0),
(490, 23, 'Paraguaipoa', 0),
(491, 23, 'Potrerito', 0),
(492, 23, 'Pueblo Nuevo del Zulia', 0),
(493, 23, 'Puertos de Altagracia', 0),
(494, 23, 'Punta Gorda', 0),
(495, 23, 'Sabaneta de Palma', 0),
(496, 23, 'San Francisco', 0),
(497, 23, 'San José de Perijá', 0),
(498, 23, 'San Rafael del Moján', 0),
(499, 23, 'San Timoteo', 0),
(500, 23, 'Santa Bárbara Del Zulia', 0),
(501, 23, 'Santa Cruz de Mara', 0),
(502, 23, 'Santa Cruz del Zulia', 0),
(503, 23, 'Santa Rita', 0),
(504, 23, 'Sinamaica', 0),
(505, 23, 'Tamare', 0),
(506, 23, 'Tía Juana', 0),
(507, 23, 'Villa del Rosario', 0),
(508, 21, 'La Guaira', 1),
(509, 21, 'Catia La Mar', 0),
(510, 21, 'Macuto', 0),
(511, 21, 'Naiguatá', 0),
(512, 25, 'Archipiélago Los Monjes', 0),
(513, 25, 'Isla La Tortuga y Cayos adyacentes', 0),
(514, 25, 'Isla La Sola', 0),
(515, 25, 'Islas Los Testigos', 0),
(516, 25, 'Islas Los Frailes', 0),
(517, 25, 'Isla La Orchila', 0),
(518, 25, 'Archipiélago Las Aves', 0),
(519, 25, 'Isla de Aves', 0),
(520, 25, 'Isla La Blanquilla', 0),
(521, 25, 'Isla de Patos', 0),
(522, 25, 'Islas Los Hermanos', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_impresora`
--

CREATE TABLE `configuracion_impresora` (
  `id` int(11) NOT NULL,
  `id_taquilla` int(11) NOT NULL,
  `tipo_papel` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1: 58mm, 2: 80mm',
  `margen_izq` int(11) NOT NULL COMMENT 'margen izquierdo',
  `impresora_pred` varchar(250) NOT NULL COMMENT 'impresora predeterminada',
  `saltos_lin_ant` int(11) NOT NULL COMMENT 'saltos de lineas antes',
  `saltos_lin_desp` int(11) NOT NULL COMMENT 'saltos de lineas despues',
  `mensaje_1` varchar(250) NOT NULL,
  `mensaje_2` varchar(250) NOT NULL,
  `mensaje_3` varchar(250) NOT NULL,
  `otro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuracion_impresora`
--

INSERT INTO `configuracion_impresora` (`id`, `id_taquilla`, `tipo_papel`, `margen_izq`, `impresora_pred`, `saltos_lin_ant`, `saltos_lin_desp`, `mensaje_1`, `mensaje_2`, `mensaje_3`, `otro`) VALUES
(2, 1, '1', 1, 'Generic / Text Only', 1, 1, 'TICKET CADUCA A LOS 3 DIAS', 'mensaje 2', 'mensaje 3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dividendos`
--

CREATE TABLE `dividendos` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `aciertos` int(11) NOT NULL,
  `monto` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dividendos`
--

INSERT INTO `dividendos` (`id`, `cantidad`, `aciertos`, `monto`) VALUES
(1, 9, 9, 120000),
(2, 9, 8, 5000),
(3, 9, 7, 500),
(4, 9, 6, 12),
(5, 9, 5, 0),
(6, 9, 4, 0),
(7, 9, 3, 0),
(8, 9, 2, 0),
(9, 9, 1, 0),
(10, 9, 0, 3),
(11, 8, 8, 25000),
(12, 8, 7, 1200),
(13, 8, 6, 250),
(14, 8, 5, 25),
(15, 8, 4, 0),
(16, 8, 3, 0),
(17, 8, 2, 0),
(18, 8, 1, 0),
(19, 8, 0, 3),
(20, 7, 7, 5000),
(21, 7, 6, 500),
(22, 7, 5, 50),
(23, 7, 4, 5),
(24, 7, 3, 0),
(25, 7, 2, 0),
(26, 7, 1, 0),
(27, 7, 0, 2),
(28, 6, 6, 2500),
(29, 6, 5, 120),
(30, 6, 4, 12),
(31, 6, 3, 3),
(32, 6, 2, 0),
(33, 6, 1, 0),
(34, 6, 0, 1),
(35, 5, 5, 250),
(36, 5, 4, 20),
(37, 5, 3, 5),
(38, 5, 2, 1),
(39, 5, 1, 0),
(40, 5, 0, 0),
(41, 4, 4, 120),
(42, 4, 3, 15),
(43, 4, 2, 1),
(44, 4, 1, 0),
(45, 4, 0, 0),
(46, 3, 3, 60),
(47, 3, 2, 2),
(48, 3, 1, 0),
(49, 3, 0, 0),
(50, 2, 2, 10),
(51, 2, 1, 1),
(52, 2, 0, 0),
(53, 1, 1, 4),
(54, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `iso_3166-2` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`, `iso_3166-2`) VALUES
(1, 'Amazonas', 'VE-X'),
(2, 'Anzoátegui', 'VE-B'),
(3, 'Apure', 'VE-C'),
(4, 'Aragua', 'VE-D'),
(5, 'Barinas', 'VE-E'),
(6, 'Bolívar', 'VE-F'),
(7, 'Carabobo', 'VE-G'),
(8, 'Cojedes', 'VE-H'),
(9, 'Delta Amacuro', 'VE-Y'),
(10, 'Falcón', 'VE-I'),
(11, 'Guárico', 'VE-J'),
(12, 'Lara', 'VE-K'),
(13, 'Mérida', 'VE-L'),
(14, 'Miranda', 'VE-M'),
(15, 'Monagas', 'VE-N'),
(16, 'Nueva Esparta', 'VE-O'),
(17, 'Portuguesa', 'VE-P'),
(18, 'Sucre', 'VE-R'),
(19, 'Táchira', 'VE-S'),
(20, 'Trujillo', 'VE-T'),
(21, 'Vargas', 'VE-W'),
(22, 'Yaracuy', 'VE-U'),
(23, 'Zulia', 'VE-V'),
(24, 'Distrito Capital', 'VE-A'),
(25, 'Dependencias Federales', 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id`, `descripcion`) VALUES
(1, 'En verificación'),
(2, 'Aprobada'),
(3, 'Rechazada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_transacciones`
--

CREATE TABLE `historico_transacciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `monto` double(10,2) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historico_transacciones`
--

INSERT INTO `historico_transacciones` (`id`, `fecha_registro`, `id_movimiento`, `id_user`, `monto`, `estatus`) VALUES
(1, '2018-04-20 19:26:55', 1, 12, 60.00, 2),
(2, '2018-04-20 19:27:00', 1, 12, 75.00, 3),
(3, '2018-04-20 21:57:28', 1, 13, 200.00, 2),
(4, '2018-04-20 23:49:27', 1, 13, 200.00, 1),
(5, '2018-04-23 00:59:16', 1, 12, 1100000.00, 1),
(6, '2018-04-23 08:02:46', 1, 13, 20000.00, 1),
(7, '2018-04-25 10:12:00', 1, 13, 1000000.00, 1),
(8, '2018-04-26 13:00:02', 1, 15, 1000000.00, 2),
(9, '2018-04-26 13:12:23', 1, 15, 200.00, 1),
(10, '2018-04-26 13:17:59', 1, 15, 100.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadas`
--

CREATE TABLE `jugadas` (
  `id` int(11) NOT NULL,
  `numeros_maximo` int(11) NOT NULL,
  `costo_ticket` double(10,2) NOT NULL DEFAULT '0.00',
  `sorteos_maximo` int(11) NOT NULL,
  `boletos_sorteo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jugadas`
--

INSERT INTO `jugadas` (`id`, `numeros_maximo`, `costo_ticket`, `sorteos_maximo`, `boletos_sorteo`) VALUES
(1, 9, 50000.00, 9, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id`, `descripcion`) VALUES
(1, 'Abonado a cuenta'),
(2, 'Compra de ticket');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `id_estado`, `municipio`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Río Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Peñalver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'José Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro María Freites'),
(23, 2, 'Píritu'),
(24, 2, 'San José de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simón Bolívar'),
(28, 2, 'Simón Rodríguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Muñóz'),
(32, 3, 'Páez'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Rómulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolívar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcántara'),
(40, 4, 'José Ángel Lamas'),
(41, 4, 'José Félix Ribas'),
(42, 4, 'José Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Briceño Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastián'),
(48, 4, 'Santiago Mariño'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andrés Eloy Blanco'),
(56, 5, 'Antonio José de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolívar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroní'),
(67, 6, 'Cedeño'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raúl Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan José Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalbán'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquín'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoátegui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Rómulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Díaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolívar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcón'),
(113, 10, 'Federación'),
(114, 10, 'Jacura'),
(115, 10, 'José Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monseñor Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Píritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocópero'),
(126, 10, 'Unión'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguán'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'José Félix Ribas'),
(133, 11, 'José Tadeo Monagas'),
(134, 11, 'Juan Germán Roscio'),
(135, 11, 'Julián Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortíz'),
(140, 11, 'San Gerónimo de Guayabal'),
(141, 11, 'San José de Guaribe'),
(142, 11, 'Santa María de Ipire'),
(143, 11, 'Sebastián Francisco de Miranda'),
(144, 12, 'Andrés Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jiménez'),
(148, 12, 'Morán'),
(149, 12, 'Palavecino'),
(150, 12, 'Simón Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andrés Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacón'),
(184, 13, 'Campo Elías'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio César Salas'),
(189, 13, 'Justo Briceño'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Dávila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andrés Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brión'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristóbal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(236, 14, 'Páez'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simón Bolívar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolívar'),
(261, 15, 'Caripe'),
(262, 15, 'Cedeño'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturín'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Bárbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolín del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'García'),
(274, 16, 'Gómez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mariño'),
(278, 16, 'Península de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Díaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Monseñor José Vicente de Unda'),
(288, 17, 'Ospino'),
(289, 17, 'Páez'),
(290, 17, 'Papelón'),
(291, 17, 'San Genaro de Boconoíto'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalía'),
(294, 17, 'Sucre'),
(295, 17, 'Turén'),
(296, 18, 'Andrés Eloy Blanco'),
(297, 18, 'Andrés Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benítez'),
(300, 18, 'Bermúdez'),
(301, 18, 'Bolívar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmerón Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mariño'),
(306, 18, 'Mejía'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdéz'),
(341, 19, 'Andrés Bello'),
(342, 19, 'Antonio Rómulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolívar'),
(345, 19, 'Cárdenas'),
(346, 19, 'Córdoba'),
(347, 19, 'Fernández Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'García de Hevia'),
(350, 19, 'Guásimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jáuregui'),
(353, 19, 'José María Vargas'),
(354, 19, 'Junín'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro María Ureña'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Darío Maldonado'),
(363, 19, 'San Cristóbal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simón Rodríguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andrés Bello'),
(371, 20, 'Boconó'),
(372, 20, 'Bolívar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'José Felipe Márquez Cañizalez'),
(377, 20, 'Juan Vicente Campos Elías'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatán'),
(382, 20, 'Pampán'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Arístides Bastidas'),
(392, 22, 'Bolívar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'José Antonio Páez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Peña'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'José Joaquín Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colón'),
(446, 23, 'Francisco Javier Pulgar'),
(447, 23, 'Páez'),
(448, 23, 'Jesús Enrique Losada'),
(449, 23, 'Jesús María Semprún'),
(450, 23, 'La Cañada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perijá'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perijá'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simón Bolívar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodríguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth`
--

CREATE TABLE `oauth` (
  `id` int(11) NOT NULL,
  `oauth_project_name` varchar(100) NOT NULL,
  `oauth_token` varchar(200) NOT NULL,
  `oauth_email` varchar(200) NOT NULL,
  `oauth_status` enum('0','1','2','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oauth`
--

INSERT INTO `oauth` (`id`, `oauth_project_name`, `oauth_token`, `oauth_email`, `oauth_status`) VALUES
(1, 'LimonByte', '3fe011919f6720cccbaad6421ad5675c', 'admin@hotmail.com', '0'),
(2, 'LimonByte', '56fdafe247d37c0705cc129d512d1abf', 'desarrollo.limonbyte@gmail.com', '0'),
(3, 'Heb', 'a117debe49cbd3a3be94a7663f004aeb', 'hmendoza@limonbyte,com', '0'),
(5, '', '24eb03a1d25a4b158d60c27dcd82cc16', '', '0'),
(6, 'NombredeProyecto', '2c90cc9a25bf23fe12fbc8ffe41ac664', 'correo@dominio.com', '0'),
(7, 'LimonByte', '05d47dbf6f005d9db5779aa8bea8d0a2', 'japp19961996@hotmail.com', '0'),
(8, 'NombredeProyecto', '0b7c402f0d51469a0caa24044ec12604', 'manuel@gmail.com', '0'),
(9, 'NombredeProyecto', '191f5c3a786b944a68e9a278551e27f6', 'manuel@gmail.com	', '0'),
(10, 'NombredeProyecto', 'c569af532709b6b2f0ba7a2954dd482d', 'manuele@gmail.com', '0'),
(11, 'NombredeProyecto', '6a598b9df13504abda8ba566ef778618', 'fgg', '0'),
(12, 'NombredeProyecto', '4338a07c4ec3e62c936f0505849eff8d', 'cliente1', '0'),
(13, 'NombredeProyecto', '1db427d4026a30b060071bc6269bdecc', 'd', '0'),
(14, 'NombredeProyecto', 'dbf26bb48b796ce04dde2342c10a1bc4', 'd', '0'),
(15, 'NombredeProyecto', 'c49b6b41d8fd0e6f647d8795ff86440a', 'man', '0'),
(16, 'NombredeProyecto', 'be244a3a4d635d59db425800bbbb2208', 'm', '0'),
(17, 'NombredeProyecto', 'a2a89db30a79d59096f2c6f02022e444', 'manue', '0'),
(18, 'NombredeProyecto', '989176c019c743bd2d39ce78bb78bef4', 'ma', '0'),
(19, 'NombredeProyecto', '3b8b45525abbffaa0a69ba5932a70d4f', 'manuel', '0'),
(20, 'NombredeProyecto', 'a1a370e859f4f54c24b5a04fcf72c45f', 'manu', '0'),
(21, 'NombredeProyecto', '27704da72fe8465d82d8ed01febadf94', 'manuel@', '0'),
(22, 'NombredeProyecto', '3da77b58090f40304766b046f042ed7a', 'manuel@gm', '0'),
(23, 'NombredeProyecto', '2234facdbbd632bb23d198949b1689da', 'manuel@g', '0'),
(24, 'NombredeProyecto', '7a7ed00e9b2ef5d9cb62308d24690abd', 'manuel@gmai', '0'),
(25, 'NombredeProyecto', 'c0d8cc1dd4f623e35ea378b242565e24', 'manuel@gmail', '0'),
(26, 'NombredeProyecto', '7ba62be159841d1fca32ed99f8921551', 'manuel@gma', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangos`
--

CREATE TABLE `rangos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rangos`
--

INSERT INTO `rangos` (`id`, `nombre`) VALUES
(1, 'Super Administrador'),
(2, 'Administrador'),
(3, 'Agente'),
(4, 'Sub Agente'),
(5, 'Taquilla'),
(6, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recargas`
--

CREATE TABLE `recargas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_taquilla` int(11) NOT NULL,
  `id_subagencia` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `num_transaccion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_transaccion` int(11) NOT NULL,
  `monto` bigint(20) NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1',
  `motivo` text COLLATE utf8_unicode_ci,
  `notificado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recargas`
--

INSERT INTO `recargas` (`id`, `id_usuario`, `id_taquilla`, `id_subagencia`, `id_agencia`, `num_transaccion`, `tipo_transaccion`, `monto`, `estatus`, `motivo`, `notificado`) VALUES
(1, 19, 1, 2, 3, NULL, 4, 200, 1, NULL, 0),
(2, 19, 1, 2, 3, NULL, 4, 1000, 1, NULL, 0),
(3, 19, 1, 2, 3, NULL, 4, 200, 1, NULL, 0),
(4, 19, 1, 2, 3, NULL, 4, 2000, 1, NULL, 0),
(5, 19, 1, 2, 3, NULL, 4, 100000, 1, NULL, 0),
(6, 19, 1, 2, 3, NULL, 4, 600, 1, NULL, 0),
(7, 19, 1, 2, 3, NULL, 4, 300, 1, NULL, 0),
(8, 19, 1, 2, 3, NULL, 4, 40000, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldos`
--

CREATE TABLE `saldos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fechayhora` date NOT NULL,
  `tipo_saldo` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `monto` int(11) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `saldos`
--

INSERT INTO `saldos` (`id`, `id_usuario`, `fechayhora`, `tipo_saldo`, `descripcion`, `monto`, `saldo`) VALUES
(1, 19, '2018-05-14', 2, 'recarga por medio de efectivo', 200, 200),
(2, 19, '2018-05-14', 2, 'recarga por medio de efectivo', 1000, 1200),
(3, 19, '2018-05-15', 2, 'recarga por medio de efectivo', 200, 1400),
(4, 19, '2018-05-26', 2, 'recarga por medio de efectivo', 2000, 3400),
(5, 19, '2018-05-26', 2, 'recarga por medio de efectivo', 100000, 103400),
(6, 19, '2018-06-07', 2, 'recarga por medio de efectivo', 600, 104000),
(7, 19, '2018-06-07', 2, 'recarga por medio de efectivo', 300, 104300),
(8, 19, '2018-06-07', 2, 'recarga por medio de efectivo', 40000, 144300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorteos`
--

CREATE TABLE `sorteos` (
  `id` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estatus` int(11) NOT NULL DEFAULT '1',
  `pelota1` int(11) NOT NULL,
  `pelota2` int(11) NOT NULL,
  `pelota3` int(11) NOT NULL,
  `pelota4` int(11) NOT NULL,
  `pelota5` int(11) NOT NULL,
  `pelota6` int(11) NOT NULL,
  `pelota7` int(11) NOT NULL,
  `pelota8` int(11) NOT NULL,
  `pelota9` int(11) NOT NULL,
  `pelota10` int(11) NOT NULL,
  `pelota11` int(11) NOT NULL,
  `pelota12` int(11) NOT NULL,
  `pelota13` int(11) NOT NULL,
  `pelota14` int(11) NOT NULL,
  `pelota15` int(11) NOT NULL,
  `pelota16` int(11) NOT NULL,
  `pelota17` int(11) NOT NULL,
  `pelota18` int(11) NOT NULL,
  `pelota19` int(11) NOT NULL,
  `pelota20` int(11) NOT NULL,
  `pelota21` int(11) NOT NULL,
  `pelota22` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sorteos`
--

INSERT INTO `sorteos` (`id`, `fecha_hora`, `estatus`, `pelota1`, `pelota2`, `pelota3`, `pelota4`, `pelota5`, `pelota6`, `pelota7`, `pelota8`, `pelota9`, `pelota10`, `pelota11`, `pelota12`, `pelota13`, `pelota14`, `pelota15`, `pelota16`, `pelota17`, `pelota18`, `pelota19`, `pelota20`, `pelota21`, `pelota22`) VALUES
(1, '2018-09-21 17:12:39', 1, 22, 0, 33, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2018-09-21 17:12:39', 1, 22, 2, 3, 44, 5, 6, 7, 8, 9, 10, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22),
(4, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '2018-09-21 17:12:39', 1, 22, 2, 3, 44, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22),
(6, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '2018-09-21 17:12:39', 1, 22, 2, 3, 44, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22),
(9, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '2018-09-21 17:12:39', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '2018-09-21 17:14:01', 1, 22, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, '2018-08-25 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, '2018-08-26 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, '2018-08-25 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, '2018-08-26 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, '2018-09-20 20:09:03', 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, '2018-09-20 20:09:01', 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, '2018-09-20 20:09:00', 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, '2018-09-20 20:08:58', 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, '2018-08-27 13:12:12', 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, '2018-08-26 13:12:09', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, '2018-08-29 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, '2018-08-22 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, '2018-08-22 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, '2018-08-22 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, '2018-08-22 03:54:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, '2018-08-29 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, '2018-08-29 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, '2018-08-28 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, '2018-08-30 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, '2018-08-29 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, '2018-08-30 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, '2018-08-31 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, '2018-08-30 01:13:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, '2018-08-31 03:30:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_agencias`
--

CREATE TABLE `sub_agencias` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usuario` int(11) UNSIGNED NOT NULL,
  `id_agencia` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `rif` varchar(50) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `telefonos` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `comision` float(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sub_agencias`
--

INSERT INTO `sub_agencias` (`id`, `id_usuario`, `id_agencia`, `nombre`, `rif`, `codigo`, `id_ciudad`, `direccion`, `telefonos`, `correo`, `comision`) VALUES
(1, 11, 2, 'agencia 1.2', '', '#cc', 0, '', '', '', 66.50),
(2, 17, 3, 'Sub Agencia', '123456781', '023', 1, 'Direccion', '04123555888', 'subagencia@gmail.com', 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taquillas`
--

CREATE TABLE `taquillas` (
  `id` int(10) UNSIGNED NOT NULL,
  `max_veces_apostar` int(11) NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_subagencia` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `taquillas`
--

INSERT INTO `taquillas` (`id`, `max_veces_apostar`, `id_usuario`, `id_subagencia`, `codigo`) VALUES
(1, 100, 18, 2, '547'),
(2, 500, 19, 2, 'ta2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `veces_apostado` int(11) NOT NULL,
  `monto` double(11,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `1_numero` int(11) DEFAULT NULL,
  `2_numero` int(11) DEFAULT NULL,
  `3_numero` int(11) DEFAULT NULL,
  `4_numero` int(11) DEFAULT NULL,
  `5_numero` int(11) DEFAULT NULL,
  `6_numero` int(11) DEFAULT NULL,
  `7_numero` int(11) DEFAULT NULL,
  `8_numero` int(11) DEFAULT NULL,
  `9_numero` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estatus` enum('0','1','2') NOT NULL DEFAULT '1',
  `premiado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `codigo`, `serial`, `numero`, `veces_apostado`, `monto`, `id_usuario`, `1_numero`, `2_numero`, `3_numero`, `4_numero`, `5_numero`, `6_numero`, `7_numero`, `8_numero`, `9_numero`, `fecha`, `estatus`, `premiado`) VALUES
(1, '9YKfZum3Hn1xL', '1860494734333', '1', 1, 30000.00, 18, 0, 1, 2, 3, 4, 5, NULL, NULL, NULL, '2018-06-04 13:47:34', '2', 1),
(2, 'vXtMFeTKDWP8C', '1860494734333', '1', 1, 20000.00, 18, 0, 1, 2, 3, 4, NULL, NULL, NULL, NULL, '2018-06-04 13:47:34', '2', 1),
(3, 'jTzuOAQxRdgSU', '1860494912461', '2', 1, 30000.00, 18, 8, 7, 6, 5, 4, 3, 2, 1, 0, '2018-06-04 13:49:12', '1', 0),
(4, 'H9GEu7Wjdyn2c', '18604135926604', '3', 1, 10000.00, 18, 0, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, '2018-06-04 17:59:26', '1', 1),
(5, 'BdM0tumX4JTnz', '18604140106372', '4', 3, 30000.00, 18, 0, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, '2018-06-04 18:01:06', '1', 1),
(6, '5clzn7Cog2s0h', '18604140106372', '4', 1, 20000.00, 18, 0, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, '2018-06-04 18:01:06', '1', 1),
(7, 'Fl7E2OhHjKZbB', '1860594641636', '5', 1, 30000.00, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, '2018-06-05 13:46:41', '1', 1),
(8, '5ebHdIScpgvln', '1860594749544', '6', 1, 20000.00, 18, 0, 1, 2, 3, 4, 5, NULL, NULL, NULL, '2018-06-05 13:47:49', '1', 1),
(9, 'vsN2M1I7exkHR', '1860594758898', '7', 1, 20000.00, 18, 20, 23, 36, 56, 63, 51, 34, 46, NULL, '2018-06-05 13:47:58', '1', 1),
(10, 'WhIUg1XJzC30S', '1860594812648', '8', 1, 20000.00, 18, 0, 11, 12, 34, 55, 63, 52, 37, 38, '2018-06-05 13:48:12', '1', 1),
(11, 'Z1gWTQxD59Rqc', '1860594819870', '9', 1, 20000.00, 18, 0, 10, 20, 40, 50, 70, 80, 83, NULL, '2018-06-05 13:48:19', '2', 1),
(12, 'o2zSLWJE0TK4G', '1860594827733', '10', 1, 30000.00, 18, 23, 36, 57, 75, 61, 44, 46, 76, 87, '2018-06-05 13:48:27', '1', 1),
(13, 'jyCXAZ4fMGWev', '18605113443422', '11', 1, 20000.00, 18, 0, 10, 11, 12, 22, NULL, NULL, NULL, NULL, '2018-06-05 15:34:43', '1', 0),
(14, 'Kf85vLaGq9B14', '18605114545624', '12', 1, 30000.00, 18, 0, 12, 33, 55, 60, 50, NULL, NULL, NULL, '2018-06-05 15:45:45', '1', 0),
(15, 'TN8Qun9RgrcW6', '18605114703884', '13', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:47:03', '1', 0),
(16, 'v01eqXSb2G6FT', '18605114744666', '14', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:47:44', '1', 0),
(17, 'cCIbfTF2K64OW', '18605114744666', '14', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:47:44', '1', 0),
(18, '5SWmzHutq1ZPj', '18605114815735', '15', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:48:15', '1', 0),
(19, 'G9nhpsHlvtO2X', '18605115058900', '16', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:50:58', '1', 0),
(20, '2J9YhT8iWutxm', '18605115148746', '17', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:51:48', '1', 0),
(21, 'Psb4xJiINeB9L', '18605115715869', '18', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:57:15', '1', 0),
(22, 'dcSoHpIVN5Owr', '18605115949485', '19', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:59:49', '1', 0),
(23, 'G9Ox4NWqVezCE', '18605115949485', '19', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 15:59:49', '1', 0),
(24, 'fg12CvHGiu6Q7', '18605132222121', '20', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 17:22:22', '0', 0),
(25, 'HvkpMrEw3KPRA', '18605133943301', '21', 1, 20000.00, 18, 0, 10, 11, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-05 17:39:43', '0', 0),
(26, '4D5AdWZ7yIhB1', '18605134633047', '22', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 17:46:33', '1', 0),
(27, 'cwL83FbERoSWe', '18605134633047', '22', 1, 30000.00, 18, 0, 1, 2, 3, 4, 5, NULL, NULL, NULL, '2018-06-05 17:46:33', '1', 0),
(28, 'ynX5Qvi7a0OTU', '18605134822882', '23', 1, 30000.00, 18, 0, 10, 20, 40, 30, 50, 60, NULL, NULL, '2018-06-05 17:48:22', '1', 0),
(29, 'hTULs6bqOPBHz', '18605134822882', '23', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 17:48:22', '1', 0),
(30, 'pRtbIh0ucS6VW', '18605134907902', '24', 1, 30000.00, 18, 0, 10, 20, 30, NULL, NULL, NULL, NULL, NULL, '2018-06-05 17:49:07', '1', 0),
(31, '1KbqGxQEriLhI', '18605135758306', '25', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 17:57:58', '1', 0),
(32, 'u0yEBQqSxnaH4', '18605135758306', '25', 1, 30000.00, 18, 64, 58, 44, 43, NULL, NULL, NULL, NULL, NULL, '2018-06-05 17:57:58', '1', 0),
(33, 'HP8huXNZY0voj', '18605140001878', '26', 1, 30000.00, 18, 0, 1, 2, 3, 4, 6, NULL, NULL, NULL, '2018-06-05 18:00:01', '1', 0),
(34, 'O0ePmBu2k59Ra', '18605140201813', '27', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:02:01', '1', 0),
(35, 'Zs5dewbDiPMqp', '18605140227493', '28', 1, 20000.00, 18, 0, 10, 20, 40, NULL, NULL, NULL, NULL, NULL, '2018-06-05 18:02:27', '1', 0),
(36, 'X2E96yUG0k1qm', '18605140431358', '29', 1, 30000.00, 18, 0, 10, 20, 30, 40, 60, 50, 70, 80, '2018-06-05 18:04:31', '1', 0),
(37, '0FIlixbCmh4sa', '18605140504864', '30', 10, 200000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:05:04', '1', 0),
(38, '31UGTXYxlC04a', '18605140933558', '31', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:09:33', '1', 0),
(39, 'SCXkFlmVoN0yn', '18605141245024', '32', 1, 30000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-05 18:12:45', '1', 0),
(40, 'NOnxEPBwDK4MC', '18605141538651', '33', 1, 20000.00, 18, 0, 10, 20, 30, NULL, NULL, NULL, NULL, NULL, '2018-06-05 18:15:38', '1', 0),
(41, 'OHvxNyjqhawuD', '18605142429637', '34', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, NULL, '2018-06-05 18:24:29', '1', 0),
(42, 'Tp32rXelqGDgu', '18605142429637', '34', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:24:29', '1', 0),
(43, 'yGIkWNSlEvpVa', '18605142816383', '35', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 70, NULL, NULL, '2018-06-05 18:28:16', '1', 0),
(44, 'BdvWkyznPr8lK', '18605143218033', '36', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:32:18', '1', 0),
(45, 'uqyGN0FL9oiYI', '18605143258689', '37', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-05 18:32:58', '1', 0),
(46, 'WE0hxICaMrQgj', '18605143332984', '38', 1, 30000.00, 18, 0, 10, 20, 21, 22, 23, 24, 25, 26, '2018-06-05 18:33:32', '1', 0),
(47, 'cL5oAxQWkCSfE', '18605143505562', '39', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:35:05', '1', 0),
(48, 'TnjXW8rz4RwSi', '18605143505562', '39', 1, 30000.00, 18, 90, 91, 92, 93, 94, 95, 96, 97, 98, '2018-06-05 18:35:05', '1', 0),
(49, 'UmREQDyzAtsOf', '18605143542670', '40', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-05 18:35:42', '1', 0),
(50, 'OQ3tbrC25IVMm', '18605143542670', '40', 1, 20000.00, 18, 10, 0, 11, 22, NULL, NULL, NULL, NULL, NULL, '2018-06-05 18:35:42', '1', 0),
(51, 'AJhT3jY1EPZG8', '1860682539624', '41', 1, 10000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-06 12:25:39', '1', 0),
(52, '2ReH9lt18QsbF', '1860682557361', '42', 3, 30000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 12:25:57', '1', 0),
(53, 'LEp3CTAoFdzKQ', '1860682759614', '43', 3, 90000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, NULL, '2018-06-06 12:27:59', '1', 0),
(54, 'PLvzmStKUwQf3', '1860682759614', '43', 3, 120000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 12:27:59', '1', 0),
(55, 'DdTagxXzZSPpG', '1860684758678', '44', 2, 60000.00, 18, 0, 1, 2, 3, 4, 5, NULL, NULL, NULL, '2018-06-06 12:47:58', '1', 0),
(56, 'wUBefND0mrJYK', '1860685355577', '45', 1, 30000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 12:53:55', '1', 0),
(57, 'MzRgrfXSHhKqI', '1860691226482', '46', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 13:12:26', '1', 0),
(58, 'Sh4NnyvmsTwQx', '1860691418900', '47', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 13:14:18', '1', 0),
(59, 'ANptrMwS35HL8', '1860691717695', '48', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 13:17:17', '1', 0),
(60, 'qYDGaOzeCwTNg', '1860691827285', '49', 2, 40000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 13:18:27', '1', 0),
(61, 'JiBtpIT48Xg7G', '1860694533344', '50', 1, 40000.00, 18, 0, 21, 42, 43, 35, 46, 66, 65, NULL, '2018-06-06 13:45:33', '1', 0),
(62, 'KwGgL23yokcen', '1860694656996', '51', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, NULL, '2018-06-06 13:46:56', '1', 0),
(63, '4Ty3Swra8timR', '1860694822825', '52', 1, 40000.00, 18, 0, 10, 20, 30, 40, 60, NULL, NULL, NULL, '2018-06-06 13:48:22', '1', 0),
(64, 'EMiVxnD3YISuj', '1860695516923', '53', 1, 30000.00, 18, 0, 10, 20, 30, 50, NULL, NULL, NULL, NULL, '2018-06-06 13:55:16', '1', 0),
(65, 'FEutAfo7CsQpV', '18606103838781', '54', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 14:38:38', '1', 0),
(66, 'e7iLpyTAHu34w', '18606104002188', '55', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-06 14:40:02', '1', 0),
(67, 'mIiCrORyTolSL', '18606104204108', '56', 1, 30000.00, 18, 0, 11, 33, 45, 66, 64, NULL, NULL, NULL, '2018-06-06 14:42:04', '1', 0),
(68, 'OBQZ7mKYsTEqS', '18606105403077', '57', 1, 30000.00, 18, 0, 10, 32, 44, 53, NULL, NULL, NULL, NULL, '2018-06-06 14:54:03', '1', 0),
(69, 'DMvYVceJX4h5K', '18606105445662', '58', 1, 30000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 14:54:45', '1', 0),
(70, '2TMcHiQl61NS4', '18606105535236', '59', 1, 20000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 14:55:35', '1', 0),
(71, 'z0rlK2d53W6BQ', '18606105627089', '60', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-06 14:56:27', '1', 0),
(72, 'MJsNtYhdmxAg1', '18606105725286', '61', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-06 14:57:25', '1', 0),
(73, 'VEquKMfJpYmZ4', '18606105800981', '62', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 80, 70, '2018-06-06 14:58:00', '1', 0),
(74, 'gclGdPzBAr62U', '18606105912715', '63', 1, 30000.00, 18, 10, 0, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 14:59:12', '1', 0),
(75, 'SB1r6lkvptTD5', '18606130736540', '64', 1, 40000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 17:07:36', '1', 0),
(76, 'ker3zhOqSTLZW', '18606133916585', '65', 2, 60000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 17:39:16', '1', 0),
(77, 'nyRKF3i4p8cQk', '18606142339660', '66', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 70, 80, 60, '2018-06-06 18:23:39', '1', 0),
(78, '4lhju3Dp5siIM', '18606142412231', '67', 1, 20000.00, 18, 0, 10, 30, 40, 50, 52, 55, 66, 86, '2018-06-06 18:24:12', '1', 0),
(79, '8VnYgiSyJRKDj', '18606145627913', '68', 1, 30000.00, 18, 0, 10, 20, 30, 42, NULL, NULL, NULL, NULL, '2018-06-06 18:56:27', '1', 0),
(80, '9r0oS6BUuviIK', '18606145744629', '69', 1, 20000.00, 18, 0, 10, 30, 41, 31, 24, NULL, NULL, NULL, '2018-06-06 18:57:44', '1', 0),
(81, 'qYdxuFRzNorZk', '18606150553800', '70', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 19:05:53', '1', 0),
(82, 'vQFkHJVLTcm2N', '18606150717126', '71', 5, 50000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 19:07:17', '1', 0),
(83, 'UMzTcHofrtYEI', '18606151100876', '72', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 19:11:00', '1', 0),
(84, 'jo7XnYrgbO90U', '18606151814185', '73', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 19:18:14', '1', 0),
(85, 'RPOdpZwaN7Dtf', '18606152858455', '74', 1, 30000.00, 18, 0, 10, 20, 30, 40, NULL, NULL, NULL, NULL, '2018-06-06 19:28:58', '1', 0),
(86, '7Mt81gjLQEZBe', '18606152930694', '75', 1, 30000.00, 18, 0, 20, 30, 10, 50, 70, 80, 91, NULL, '2018-06-06 19:29:30', '1', 0),
(87, 'YIF4STQbpyaUM', '18606153213039', '76', 1, 30000.00, 18, 1, 0, 20, 30, 50, 61, 52, NULL, NULL, '2018-06-06 19:32:13', '1', 0),
(88, 'Rx5eE07vbsyl1', '18606153306039', '77', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 19:33:06', '1', 0),
(89, 'KY8Zb96uCU4NE', '18606153357590', '78', 1, 30000.00, 18, 0, 10, 20, 40, 30, 50, 60, 70, 80, '2018-06-06 19:33:57', '1', 0),
(90, 'l7HTtj9JCU4FA', '18606160643807', '00000000079', 20, 600000.00, 18, 0, 10, 20, 50, NULL, NULL, NULL, NULL, NULL, '2018-06-06 20:06:43', '1', 0),
(91, 'YrPexnNfCDHBJ', '18606161201073', '00000000080', 1, 40000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, NULL, '2018-06-06 20:12:01', '1', 0),
(92, 'rq0UbRvHta4w5', '18606161804447', '00000000081', 1, 30000.00, 18, 0, 10, 20, 30, 50, 72, 65, 47, NULL, '2018-06-06 20:18:04', '1', 0),
(93, 'rK61TExUn2PaH', '18606161804447', '00000000081', 1, 20000.00, 18, 24, 25, 37, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 20:18:04', '1', 0),
(94, 'Kq0HfnasbkuUF', '18606161804447', '00000000081', 1, 30000.00, 18, 52, 56, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06 20:18:04', '1', 0),
(95, 'lSDicUJqKMnFG', '18606162735652', '00000000082', 2, 60000.00, 18, 0, 1, 11, 10, 20, 21, 30, 31, NULL, '2018-06-06 20:27:35', '1', 0),
(96, 'orPvU7EgSL0Tm', '18606162735652', '00000000082', 3, 60000.00, 18, 50, 51, 52, 53, 54, NULL, NULL, NULL, NULL, '2018-06-06 20:27:35', '1', 0),
(97, '5Q8mXq7iaSVMN', '18606163918769', '00000000083', 1, 30000.00, 18, 0, 10, 20, 40, 30, 50, 60, NULL, NULL, '2018-06-06 20:39:18', '1', 0),
(98, 'zFYJjkBIbpGEw', '18606164229961', '00000000084', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-06 20:42:29', '1', 0),
(99, 'wOAbanJ275jX8', '18606164348507', '00000000085', 1, 30000.00, 18, 0, 10, 11, 12, NULL, NULL, NULL, NULL, NULL, '2018-06-06 20:43:48', '1', 0),
(100, 'ICRKg6ZNFtyAu', '18606164801583', '00000000086', 1, 30000.00, 18, 10, 20, 0, 1, 11, 31, 41, 44, 26, '2018-06-06 20:48:01', '1', 0),
(101, '5RnpeON6Ef7ZD', '18606165719208', '00000000087', 1, 30000.00, 18, 1, 20, 31, 34, 25, 46, 64, 51, 22, '2018-06-06 20:57:19', '1', 0),
(102, '0vnfruD6TRbwJ', '18606165947053', '00000000088', 1, 30000.00, 18, 12, 24, 46, 53, 43, NULL, NULL, NULL, NULL, '2018-06-06 20:59:47', '0', 0),
(103, 'dgODPBuIxRF1L', '18606165947053', '00000000088', 1, 30000.00, 18, 51, 45, 57, 77, 53, 33, NULL, NULL, NULL, '2018-06-06 20:59:47', '0', 0),
(104, '2uqeKrn6FDymk', '18606170630163', '00000000089', 1, 30000.00, 18, 0, 10, 20, 50, 60, 62, 54, 34, NULL, '2018-06-06 21:06:30', '1', 0),
(105, 'PcOhzqetjAKNC', '18606170630163', '00000000089', 1, 40000.00, 18, 42, 44, 86, 75, 34, 46, NULL, NULL, NULL, '2018-06-06 21:06:30', '2', 0),
(106, 'rf1KV7tMuFo5y', '1860783140075', '00000000090', 1, 20000.00, 18, 0, 10, 20, 30, 40, 50, 53, 44, 46, '2018-06-07 12:31:40', '1', 0),
(107, 'bgO2RGWPv5K8X', '1860783233257', '00000000091', 1, 30000.00, 18, 0, 10, 20, 31, 23, 35, NULL, NULL, NULL, '2018-06-07 12:32:33', '1', 0),
(108, '7XFVxMgqk02Nz', '1860783436204', '00000000092', 1, 30000.00, 18, 43, 36, 14, 32, 35, NULL, NULL, NULL, NULL, '2018-06-07 12:34:36', '1', 0),
(109, 'XHBNoIbeAOdjW', '1860783445562', '00000000093', 1, 20000.00, 18, 1, 11, 31, 41, 43, 24, 36, NULL, NULL, '2018-06-07 12:34:45', '1', 0),
(110, 'Ix3QtXnh4CsLg', '1860784027278', '00000000094', 1, 20000.00, 18, 0, 10, 30, 41, 45, 26, 17, 38, NULL, '2018-06-07 12:40:27', '1', 0),
(111, 'n5SjQUakZ1moK', '1860784503359', '00000000095', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, NULL, NULL, '2018-06-07 12:45:03', '1', 0),
(112, 'VBhdAmX74jCUo', '1860784503359', '00000000095', 3, 60000.00, 18, 31, 51, 61, 45, 53, NULL, NULL, NULL, NULL, '2018-06-07 12:45:03', '1', 0),
(113, 'uHqk1GMT3KJwc', '1860785705107', '00000000096', 1, 20000.00, 18, 0, 20, 30, 32, 34, 55, NULL, NULL, NULL, '2018-06-07 12:57:05', '1', 0),
(114, 'TJM6ECtmZLfHu', '1860785809422', '00000000097', 1, 30000.00, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, '2018-06-07 12:58:09', '1', 0),
(115, '2bLQ4rOAGhxKM', '1860785809422', '00000000097', 3, 60000.00, 18, 51, 52, 53, 54, 55, NULL, NULL, NULL, NULL, '2018-06-07 12:58:09', '1', 0),
(116, 'PLOxpk0KMyo7H', '1860785905515', '00000000098', 1, 20000.00, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, '2018-06-07 12:59:05', '1', 0),
(117, 'cWP2jSEKmNz5x', '1860785905515', '00000000098', 3, 60000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-07 12:59:05', '1', 0),
(118, 'T5nYDFX4ObqRW', '1860793324028', '99', 10, 100000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 13:33:24', '1', 0),
(119, 'JxhZDTztPSI86', '1860794904584', '00000000100', 1, 20000.00, 18, 0, 10, 20, 30, 40, 60, NULL, NULL, NULL, '2018-06-07 13:49:04', '1', 0),
(120, 'LEr02SDtkzQMi', '1860794904584', '00000000100', 1, 30000.00, 18, 61, 65, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 13:49:04', '1', 0),
(121, '7YrlksE2NXRD6', '18607100027709', '00000000101', 3, 90000.00, 18, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 14:00:27', '1', 0),
(122, 'UvQRf3BtAuJLk', '18607100027709', '00000000101', 3, 90000.00, 18, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 14:00:27', '1', 0),
(123, 'p60hwKoj32rtI', '18607100359756', '00000000102', 1, 30000.00, 18, 0, 10, 30, 34, 37, 58, 77, 74, 63, '2018-06-07 14:03:59', '1', 0),
(124, 'uqXDCWPG4osc6', '18607101925676', '00000000103', 1, 30000.00, 18, 0, 10, 20, 30, 40, 50, 60, 70, 80, '2018-06-07 14:19:25', '1', 0),
(125, 'zqT2sl7DWMHJr', '18607103212536', '00000000104', 1, 30000.00, 18, 0, 22, 33, 36, NULL, NULL, NULL, NULL, NULL, '2018-06-07 14:32:12', '1', 0),
(126, 'cfH0yOCt6IElD', '18607113416610', '00000000105', 1, 20000.00, 18, 12, 32, 42, 35, 17, 38, 57, 54, 62, '2018-06-07 15:34:16', '1', 0),
(127, '5UsYIvBmMbT9u', '18607113436613', '00000000106', 1, 20000.00, 18, 20, 41, 53, 35, 25, NULL, NULL, NULL, NULL, '2018-06-07 15:34:36', '1', 0),
(128, '9jxdyAoiX0P2q', '18607125942938', '00000000107', 1, 20000.00, 18, 52, 44, 55, 73, 33, NULL, NULL, NULL, NULL, '2018-06-07 16:59:42', '1', 0),
(129, 'a4Z0KcRYfTvLI', '18607134008617', '00000000108', 1, 20000.00, 18, 0, 20, 50, 55, 47, 24, 32, 74, NULL, '2018-06-07 17:40:08', '1', 0),
(130, 'WrDhi8JOvCj6d', '18607135307130', '00000000109', 1, 20000.00, 18, 21, 56, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 17:53:07', '2', 0),
(131, 'HpCS9tbB6cZfq', '18607150252883', '00000000110', 1, 20000.00, 18, 21, 56, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 19:02:52', '1', 0),
(132, '5fEVTjZMtmw4X', '18607150618871', '00000000111', 1, 20000.00, 18, 21, 56, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 19:06:18', '1', 0),
(133, 'NW4X2Lz6xEb0s', '18607150929329', '00000000112', 1, 10000.00, 18, 41, 44, 64, 72, 32, 13, NULL, NULL, NULL, '2018-06-07 19:09:29', '1', 0),
(134, '2LVwTcP1lQgto', '18607151931277', '00000000113', 1, 20000.00, 18, 21, 56, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 19:19:31', '1', 0),
(135, '7srcWEwGTOgUM', '18607154721556', '00000000114', 1, 20000.00, 18, 10, 20, 40, 50, 52, 44, 67, 77, NULL, '2018-06-07 19:47:21', '1', 0),
(136, 'B9KEp6ZRjvhQ4', '18607154721556', '00000000114', 1, 20000.00, 18, 14, 26, 28, 33, 68, 76, NULL, NULL, NULL, '2018-06-07 19:47:21', '1', 0),
(137, 'pJZHzyS3RVv4c', '18607154721556', '00000000114', 5, 100000.00, 18, 68, 33, 32, 53, 64, 72, 88, 75, 74, '2018-06-07 19:47:21', '1', 0),
(138, '0H6WF7MguLZfP', '18607160736357', '00000000115', 10, 100000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 20:07:36', '1', 0),
(139, 'Wz2IalAcJdfBR', '18607161449394', '00000000116', 1, 20000.00, 18, 0, 20, 50, 55, 47, 24, 32, 74, NULL, '2018-06-07 20:14:49', '1', 0),
(140, '7Z4JM5RYXveA9', '1860885635669', '00000000117', 5, 150000.00, 18, 3, 10, 11, 12, 22, NULL, NULL, NULL, NULL, '2018-06-08 12:56:35', '1', 0),
(141, 'cSukidYHGBlNU', '1860885635669', '00000000117', 15, 1800000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 12:56:35', '1', 0),
(142, '0oY7zhrq9U1ca', '1860885635669', '00000000117', 1, 20000.00, 18, 4, 14, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 12:56:35', '1', 0),
(143, 'h3fmwKgI7eEAj', '1860885935445', '00000000118', 2, 40000.00, 18, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 12:59:35', '1', 0),
(144, 'lD2Xzhq8RutkN', '1860890024284', '00000000119', 5, 50000.00, 18, 1, 12, 42, 41, 52, NULL, NULL, NULL, NULL, '2018-06-08 13:00:24', '1', 0),
(145, 'NLkoWyPFlpYAz', '1860890241928', '00000000120', 3, 30000.00, 18, 0, 2, 3, 13, NULL, NULL, NULL, NULL, NULL, '2018-06-08 13:02:41', '1', 0),
(146, 'K3qieWLA1xO6Z', '1860894820830', '00000000121', 1, 10000.00, 18, 0, 1, 10, 20, 30, 40, 50, 51, 61, '2018-06-08 13:48:20', '1', 0),
(147, '6kze51aSMVBsE', '1860894941386', '00000000122', 1, 10000.00, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 13:49:41', '1', 0),
(148, 'LmEx916iwazpl', '18608100032143', '00000000123', 1, 120000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 14:00:32', '1', 0),
(149, 'Lvp4t0bnagAGS', '18608100032143', '00000000123', 1, 120000.00, 18, 11, 12, 22, 33, 65, 5, 3, 57, 17, '2018-06-08 14:00:32', '1', 0),
(150, '98PLtEVmckTB5', '18608143933521', '00000000124', 5, 100000.00, 18, 35, 25, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 18:39:33', '1', 0),
(151, 'jcJqfmWhIRe1d', '18608144110667', '00000000125', 10, 1000000.00, 18, 23, 24, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 18:41:10', '1', 0),
(152, 'qmboGTYKSayun', '18608144418869', '00000000126', 10, 200000.00, 18, 1, 11, 12, 35, 34, 44, 43, 81, 92, '2018-06-08 18:44:18', '1', 0),
(153, 'bnFiCZXMc1w8r', '18608145510856', '00000000127', 5, 100000.00, 18, 4, 14, 15, 43, 54, NULL, NULL, NULL, NULL, '2018-06-08 18:55:10', '1', 0),
(154, 'hYzWRdZ48pXy9', '18608145542708', '00000000128', 5, 100000.00, 18, 22, 23, 33, 44, 76, NULL, NULL, NULL, NULL, '2018-06-08 18:55:42', '1', 0),
(155, 'cVYQkF8u0Kq3m', '18608145639436', '00000000129', 2, 20000.00, 18, 12, 13, 28, 38, 48, NULL, NULL, NULL, NULL, '2018-06-08 18:56:39', '1', 0),
(156, 'qLIiK61zmyNpU', '18608145756465', '00000000130', 5, 100000.00, 18, 10, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 18:57:56', '1', 0),
(157, 'IKEflgsr4mQkj', '18608145923354', '00000000131', 5, 50000.00, 18, 31, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 18:59:23', '1', 0),
(158, 'vw5Hy049xCQ8X', '18608150110894', '00000000132', 5, 100000.00, 18, 11, 13, 34, 44, 54, NULL, NULL, NULL, NULL, '2018-06-08 19:01:10', '1', 0),
(159, 'WXdp2V4BZ0hzj', '18608150220045', '00000000133', 5, 50000.00, 18, 0, 10, 11, 21, 77, 97, 96, 86, 76, '2018-06-08 19:02:20', '1', 0),
(160, 'd1P7iTlq4NtXM', '18608150308360', '00000000134', 3, 60000.00, 18, 43, 44, 54, 55, 64, NULL, NULL, NULL, NULL, '2018-06-08 19:03:08', '1', 0),
(161, 'EA5R1CNTIvsxe', '18608161540912', '00000000135', 5, 500000.00, 18, 2, 13, 15, 5, 44, NULL, NULL, NULL, NULL, '2018-06-08 20:15:40', '1', 0),
(162, 'DMtk2iuSAfqpL', '18608161556509', '00000000136', 5, 500000.00, 18, 2, 13, 15, 5, 44, NULL, NULL, NULL, NULL, '2018-06-08 20:15:56', '1', 0),
(163, '09XMtzfsuoIUj', '18608161641439', '00000000137', 5, 500000.00, 18, 20, 11, 12, 2, NULL, NULL, NULL, NULL, NULL, '2018-06-08 20:16:41', '1', 0),
(164, 'Ep5WDJP6ncxlQ', '18608161752851', '00000000138', 5, 500000.00, 18, 22, 23, 13, 4, NULL, NULL, NULL, NULL, NULL, '2018-06-08 20:17:52', '1', 0),
(165, 'n35As6mOMwHky', '18608164026034', '00000000139', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 20:40:26', '1', 0),
(166, 'bfGXZDpPzAe4C', '18608164056520', '00000000140', 10, 200000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 20:40:56', '1', 0),
(167, 'BlV7ecrnsQDFA', '18608164211968', '00000000141', 1, 10000.00, 18, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-08 20:42:11', '1', 0),
(168, 'CDZagkfwmebFs', '1861183309520', '00000000142', 1, 30000.00, 18, 10, 30, 36, 56, 66, NULL, NULL, NULL, NULL, '2018-06-11 12:33:09', '1', 0),
(169, 'WGIEl3NYHC5qJ', '1861183309521', '00000000143', 1, 20000.00, 18, 12, 32, 42, 26, 47, NULL, NULL, NULL, NULL, '2018-06-11 12:34:53', '1', 0),
(170, 'vN2JBhH4OQu8X', '1861183838802', '00000000144', 1, 20000.00, 18, 12, 32, 42, 26, 47, NULL, NULL, NULL, NULL, '2018-06-11 12:38:38', '1', 0),
(171, 'tMnyE83he7AXc', '1861183941781', '00000000145', 1, 30000.00, 18, 0, 10, 20, 30, 50, 60, 65, NULL, NULL, '2018-06-11 12:39:41', '1', 0),
(172, 'j9HLATkpWcKO5', '18611134445680', '00000000146', 1, 40000.00, 18, 10, 40, 41, 15, 37, 65, 43, 22, NULL, '2018-06-11 17:44:45', '1', 0),
(173, 'VGUA5DdeNLfQO', '18611134533828', '00000000147', 1, 40000.00, 18, 10, 40, 41, 15, 37, 65, 43, 22, NULL, '2018-06-11 17:45:33', '1', 0),
(174, 'BikgfudoFwSZq', '18612103735444', '00000000148', 5, 150000.00, 18, 0, 22, 13, 43, NULL, NULL, NULL, NULL, NULL, '2018-06-12 14:37:35', '1', 0),
(175, 'GbLzR1ixQlw34', '18612103735444', '00000000148', 2, 20000.00, 18, 0, 11, 22, 13, 14, 34, 43, 42, 31, '2018-06-12 14:37:35', '1', 0),
(176, '2kOQyWKTplrJ6', '18612103811032', '00000000149', 5, 150000.00, 18, 0, 22, 13, 43, NULL, NULL, NULL, NULL, NULL, '2018-06-12 14:38:11', '1', 0),
(177, 'WAZ8u6IG7fHJx', '18612103811032', '00000000149', 2, 20000.00, 18, 0, 11, 22, 13, 14, 34, 43, 42, 31, '2018-06-12 14:38:11', '1', 0),
(178, '1TuWcY4ahsgAQ', '18612103811032', '00000000149', 1, 10000.00, 18, 12, 13, 14, 4, 24, NULL, NULL, NULL, NULL, '2018-06-12 14:38:11', '1', 0),
(179, 'uZfPkcU3qXnt8', '1861592821092', '00000000150', 1, 30000.00, 18, 0, 10, 15, 54, 21, 13, 34, 37, NULL, '2018-06-15 13:28:21', '1', 0),
(180, '9YZiectMPwNTs', '1861593017007', '00000000151', 1, 30000.00, 18, 21, 22, 45, 46, 37, 58, NULL, NULL, NULL, '2018-06-15 13:30:17', '1', 0),
(181, 'eJ6CUyBL0vR5O', '1861593115179', '00000000152', 1, 30000.00, 18, 25, 41, 32, 34, 55, 74, 63, 37, NULL, '2018-06-15 13:31:15', '1', 0),
(182, '2vZPciJm5qKD3', '1861593151386', '00000000153', 1, 40000.00, 18, 12, 10, 20, 32, 24, 25, 46, NULL, NULL, '2018-06-15 13:31:51', '1', 0),
(183, '0fXxqzSnesiYJ', '1861593224327', '00000000154', 1, 30000.00, 18, 42, 3, 26, 45, 31, 21, 25, 24, NULL, '2018-06-15 13:32:24', '1', 0),
(184, 'kTrLo6OUCBAXz', '1861593523426', '00000000155', 1, 40000.00, 18, 0, 20, 24, 54, 33, 13, NULL, NULL, NULL, '2018-06-15 13:35:23', '1', 0),
(185, 'sKSNpYCUuyGf3', '1861594020862', '00000000156', 1, 30000.00, 18, 12, 24, 44, 22, 15, 53, 52, 47, NULL, '2018-06-15 13:40:20', '1', 0),
(186, 'f291bxhjFRvCs', '1861594159590', '00000000157', 1, 40000.00, 18, 1, 21, 41, 66, 73, NULL, NULL, NULL, NULL, '2018-06-15 13:41:59', '1', 0),
(187, 'O8rHVJEUBxA7D', '1861594725938', '00000000158', 1, 30000.00, 18, 44, 13, 52, 41, 36, 59, 68, NULL, NULL, '2018-06-15 13:47:25', '1', 0),
(188, '19Xe2Lrwukjfq', '1861595014536', '00000000159', 1, 30000.00, 18, 12, 31, 52, 48, 26, 32, 54, NULL, NULL, '2018-06-15 13:50:14', '1', 0),
(189, 'H2oAIUrWpj4Yg', '1861595958463', '00000000160', 1, 30000.00, 18, 10, 21, 42, 36, 26, 16, 17, 18, NULL, '2018-06-15 13:59:58', '1', 0),
(190, '9kNaLQ4fc5zIS', '18615100645206', '00000000161', 1, 20000.00, 18, 10, 30, 40, 44, 26, 17, NULL, NULL, NULL, '2018-06-15 14:06:45', '1', 0),
(191, 'qRETcAgV2vJmC', '18615100948869', '00000000162', 1, 20000.00, 18, 10, 20, 45, 26, 57, 53, NULL, NULL, NULL, '2018-06-15 14:09:48', '1', 0),
(192, 'TuP1dpsINQ0Da', '18615101419151', '00000000163', 1, 30000.00, 18, 32, 53, 45, 77, 74, 63, 49, NULL, NULL, '2018-06-15 14:14:19', '1', 0),
(193, 'X5Y1nOh0ZuBKi', '18615101708439', '00000000164', 1, 30000.00, 18, 22, 56, 66, 62, 42, 37, 47, 44, NULL, '2018-06-15 14:17:08', '1', 0),
(194, 'yBjSsGQta4znc', '18615102227260', '00000000165', 1, 30000.00, 18, 10, 20, 32, 36, 66, 62, 43, 37, 58, '2018-06-15 14:22:27', '1', 0),
(195, '03JaGFk42Lmfc', '18615102334259', '00000000166', 1, 20000.00, 18, 1, 20, 44, 28, 24, NULL, NULL, NULL, NULL, '2018-06-15 14:23:34', '1', 0),
(196, 'y40vN9n1imBRj', '18615102600168', '00000000167', 1, 30000.00, 18, 11, 44, 24, 38, 67, NULL, NULL, NULL, NULL, '2018-06-15 14:26:00', '1', 0),
(197, 'n5mOvNc2B81sF', '18615104231337', '00000000168', 1, 20000.00, 18, 10, 0, 24, 40, 12, 5, 47, 54, 63, '2018-06-15 14:42:31', '1', 0),
(198, 'JqaGhuPVlfgNK', '18615104255192', '00000000169', 1, 20000.00, 18, 23, 51, 30, 55, NULL, NULL, NULL, NULL, NULL, '2018-06-15 14:42:55', '1', 0),
(199, 'KJk7Wp4TN1Edx', '18615104310719', '00000000170', 1, 30000.00, 18, 0, 12, 13, 22, 31, 44, NULL, NULL, NULL, '2018-06-15 14:43:10', '1', 0),
(200, 'nwmCfh1N3ygWD', '18615104530186', '00000000171', 1, 20000.00, 18, 24, 26, 45, 31, 15, 44, NULL, NULL, NULL, '2018-06-15 14:45:30', '1', 0),
(201, 'TYyEJvjq8hOgk', '18615104634617', '00000000172', 1, 20000.00, 18, 12, 34, 44, 52, 31, 25, NULL, NULL, NULL, '2018-06-15 14:46:34', '1', 0),
(202, 'ZgUNIRdMvy9js', '18615105153104', '00000000173', 1, 20000.00, 18, 43, 72, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 14:51:53', '1', 0),
(203, 'U3uQwjR1s0FHK', '18615105257969', '00000000174', 1, 20000.00, 18, 10, 14, 65, 52, 22, 36, NULL, NULL, NULL, '2018-06-15 14:52:57', '1', 0),
(204, 'P19fCkSNZArED', '18615105306021', '00000000175', 1, 20000.00, 18, 31, 37, 56, 54, 24, NULL, NULL, NULL, NULL, '2018-06-15 14:53:06', '1', 0),
(205, 'TuaiRvG8UmXHt', '18615105403035', '00000000176', 1, 20000.00, 18, 2, 10, 21, 24, 36, 44, 43, NULL, NULL, '2018-06-15 14:54:03', '1', 0),
(206, 'XTWozG814NOB0', '18615105810814', '00000000177', 1, 30000.00, 18, 0, 2, 5, 7, 17, 24, NULL, NULL, NULL, '2018-06-15 14:58:10', '1', 0),
(207, 'uXDg9GNAOaspj', '18615110738323', '00000000178', 1, 30000.00, 18, 21, 41, 37, 45, 34, NULL, NULL, NULL, NULL, '2018-06-15 15:07:38', '1', 0),
(208, 'kv4isMh2wWRZq', '18615111059643', '00000000179', 1, 30000.00, 18, 22, 32, 45, 43, 24, 28, NULL, NULL, NULL, '2018-06-15 15:10:59', '1', 0),
(209, 'NlRTp3M6ntuA9', '18615111757343', '00000000180', 1, 30000.00, 18, 21, 35, 55, 42, 24, NULL, NULL, NULL, NULL, '2018-06-15 15:17:57', '1', 0),
(210, '90Xz6M2YFQquc', '18615111818014', '00000000181', 1, 20000.00, 18, 11, 61, 65, 36, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:18:18', '1', 0),
(211, '6NFelsDSyBOq8', '18615112043749', '00000000182', 1, 30000.00, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, '2018-06-15 15:20:43', '1', 0),
(212, '0DBCrplHASm1o', '18615112246522', '00000000183', 1, 20000.00, 18, 11, 21, 31, 34, 25, 37, NULL, NULL, NULL, '2018-06-15 15:22:46', '1', 0),
(213, '07AxrFdfo2189', '18615112943695', '00000000184', 1, 20000.00, 18, 22, 45, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:29:43', '1', 0),
(214, 'KVxzhnfA4kroI', '18615113006086', '00000000185', 1, 20000.00, 18, 21, 24, 34, 32, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:30:06', '1', 0),
(215, 'yEA09BsnGwaSf', '18615113047758', '00000000186', 1, 30000.00, 18, 22, 41, 26, 15, 33, NULL, NULL, NULL, NULL, '2018-06-15 15:30:47', '1', 0),
(216, 'CFAuBlhveVKWf', '18615113209765', '00000000187', 1, 30000.00, 18, 11, 25, 45, 32, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:32:09', '1', 0),
(217, 'vkqYwxZgV4zDe', '18615113236058', '00000000188', 1, 20000.00, 18, 34, 42, 22, 17, 37, NULL, NULL, NULL, NULL, '2018-06-15 15:32:36', '1', 0),
(218, 'AKoqHG0ad1m3y', '18615113247161', '00000000189', 1, 20000.00, 18, 2, 42, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:32:47', '1', 0),
(219, 'vLBb1ZGaTg0Um', '18615113529914', '00000000190', 1, 30000.00, 18, 57, 53, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:35:29', '1', 0),
(220, 'tV6fP381Ai7Ie', '18615113717649', '00000000191', 1, 20000.00, 18, 21, 14, 25, 35, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:37:17', '1', 0),
(221, 'wAV5WOloni6Uu', '18615114028727', '00000000192', 1, 20000.00, 18, 42, 47, 45, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:40:28', '1', 0),
(222, 'SfDyvnhUEsF64', '18615114047449', '00000000193', 1, 20000.00, 18, 43, 48, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:40:47', '1', 0),
(223, 'ZCzHqDGJjWd1K', '18615114546543', '00000000194', 1, 10000.00, 18, 21, 22, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:45:46', '1', 0),
(224, 'bpwZ3dlC0HfTG', '18615114606717', '00000000195', 1, 10000.00, 18, 23, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:46:06', '1', 0),
(225, 'rD82I9o4hdCHk', '18615114637936', '00000000196', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:46:37', '1', 0),
(226, 'JeT5XDp0iCUKW', '18615114747143', '00000000197', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:47:47', '1', 0),
(227, '9qE1I5VDyxFnP', '18615114842004', '00000000198', 1, 20000.00, 18, 0, 12, 23, 31, 32, NULL, NULL, NULL, NULL, '2018-06-15 15:48:42', '1', 0),
(228, 'G9JZR72XDNwpW', '18615114929436', '00000000199', 1, 20000.00, 18, 25, 23, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:49:29', '1', 0),
(229, 'JRTbIWFKZqSsP', '18615115210077', '00000000200', 1, 10000.00, 18, 12, 15, 35, 33, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:52:10', '1', 0),
(230, 'ChKS64UTNapMm', '18615115233634', '00000000201', 1, 20000.00, 18, 31, 27, 37, 23, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:52:33', '1', 0),
(231, '6gG4AbZs3tyVk', '18615115835350', '00000000202', 1, 20000.00, 18, 30, 45, 43, 22, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:58:35', '1', 0),
(232, 'eTl7id9Oq5HCJ', '18615115905412', '00000000203', 1, 20000.00, 18, 35, 48, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 15:59:05', '1', 0),
(233, 'w9HuFgjsWcOmY', '18615120539914', '00000000204', 1, 20000.00, 18, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 16:05:39', '1', 0),
(234, 'OXeQsClqi1opU', '18615120838023', '00000000205', 1, 20000.00, 18, 35, 53, 63, 69, 57, NULL, NULL, NULL, NULL, '2018-06-15 16:08:38', '1', 0),
(235, 'jhG9axzBv1b8J', '18615131302610', '00000000206', 1, 30000.00, 18, 43, 46, 65, 52, 31, NULL, NULL, NULL, NULL, '2018-06-15 17:13:02', '1', 0),
(236, 'qmTA2vFXwYjeC', '18615131526383', '00000000207', 1, 20000.00, 18, 44, 57, 66, 61, 36, NULL, NULL, NULL, NULL, '2018-06-15 17:15:26', '1', 0),
(237, '8X2Jb5tvwoNAQ', '18615131637710', '00000000208', 1, 20000.00, 18, 32, 45, 65, 62, 44, NULL, NULL, NULL, NULL, '2018-06-15 17:16:37', '1', 0),
(238, 'EcWt9A52wNuzn', '18615131920012', '00000000209', 1, 30000.00, 18, 20, 30, 45, 37, 23, 33, NULL, NULL, NULL, '2018-06-15 17:19:20', '1', 0),
(239, 'mPbvEBOlxdFSY', '18615132032851', '00000000210', 1, 30000.00, 18, 23, 47, 55, 42, 27, 54, NULL, NULL, NULL, '2018-06-15 17:20:32', '1', 0),
(240, 'OtlmGXeJWSjRC', '18615132707055', '00000000211', 1, 30000.00, 18, 23, 51, 64, 46, 22, 41, 55, NULL, NULL, '2018-06-15 17:27:07', '1', 0),
(241, 'PWGci9mLZMksX', '18615132818023', '00000000212', 1, 30000.00, 18, 0, 10, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:28:18', '1', 0),
(242, 'tqNfazLd3Uu7O', '18615132919070', '00000000213', 1, 20000.00, 18, 23, 15, 0, 20, 42, NULL, NULL, NULL, NULL, '2018-06-15 17:29:19', '1', 0),
(243, 'PRqTrm5z1Ktnu', '18615133010578', '00000000214', 1, 20000.00, 18, 31, 34, 44, 50, 12, 43, NULL, NULL, NULL, '2018-06-15 17:30:10', '1', 0),
(244, 'upq91wdcLPfhT', '18615133202273', '00000000215', 20, 400000.00, 18, 31, 45, 55, 51, 43, 35, 47, 67, 74, '2018-06-15 17:32:02', '1', 0),
(245, 'wK8TZpybUDihq', '18615134114110', '00000000216', 1, 20000.00, 18, 2, 15, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:41:14', '1', 0),
(246, 's3MGxVhvJrFKU', '18615134131686', '00000000217', 1, 20000.00, 18, 45, 57, 64, 43, 36, NULL, NULL, NULL, NULL, '2018-06-15 17:41:31', '1', 0),
(247, 'Q5NBfr8Y07tGw', '18615134304690', '00000000218', 1, 20000.00, 18, 35, 15, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:43:04', '1', 0),
(248, 'Opsa9LrfIBChe', '18615134818046', '00000000219', 1, 30000.00, 18, 35, 54, 42, 32, 26, 58, NULL, NULL, NULL, '2018-06-15 17:48:18', '1', 0),
(249, 'kn0YzJQtDSf15', '18615135349290', '00000000220', 1, 10000.00, 18, 14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:53:49', '1', 0),
(250, 'hRBwKL1Do9cxT', '18615135403272', '00000000221', 1, 10000.00, 18, 24, 15, 38, 47, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:54:03', '1', 0),
(251, '7DOCZxEGN6Fvs', '18615135421511', '00000000222', 1, 10000.00, 18, 14, 34, 44, 54, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:54:21', '1', 0),
(252, 'kSyOPm6blrhTv', '18615135456864', '00000000223', 1, 10000.00, 18, 12, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:54:56', '1', 0),
(253, 'v1rMncNhWxbK7', '18615135513656', '00000000224', 1, 10000.00, 18, 15, 37, 67, 46, NULL, NULL, NULL, NULL, NULL, '2018-06-15 17:55:13', '1', 0),
(254, '7ENMU1Shk42cw', '18615140914892', '00000000225', 1, 10000.00, 18, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 18:09:14', '1', 0),
(255, '5DG6YHuCMpJES', '18615141019332', '00000000226', 1, 10000.00, 18, 12, 46, 54, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 18:10:19', '1', 0),
(256, '9muZYJTrGxbU2', '18615141040582', '00000000227', 1, 10000.00, 18, 3, 23, 54, 75, NULL, NULL, NULL, NULL, NULL, '2018-06-15 18:10:40', '1', 0),
(257, 'Rcw7YyJDrolNg', '18615150535785', '00000000228', 1, 10000.00, 18, 32, 35, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:05:35', '1', 0),
(258, 'gNjZLexpBvuGP', '18615150859489', '00000000229', 1, 10000.00, 18, 23, 26, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:08:59', '1', 0),
(259, '09hOi2tQjRAow', '18615152008477', '00000000230', 1, 10000.00, 18, 11, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:20:08', '1', 0),
(260, '7jiu3Ae4TkIUM', '18615152029087', '00000000231', 1, 10000.00, 18, 56, 53, 30, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:20:29', '1', 0),
(261, 'F1Y4iaykDzGoN', '18615153151575', '00000000232', 1, 10000.00, 18, 2, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:31:51', '1', 0),
(262, 'ef7mrIDGtwSoF', '18615155404424', '00000000233', 1, 10000.00, 18, 34, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:54:04', '1', 0),
(263, 'tAqBTscLe5XMi', '18615155432364', '00000000234', 1, 10000.00, 18, 46, 55, 63, 42, NULL, NULL, NULL, NULL, NULL, '2018-06-15 19:54:32', '1', 0),
(264, 'Ipr7yGLf8BVKq', '18615160118640', '00000000235', 1, 20000.00, 18, 21, 32, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:01:18', '1', 0),
(265, 'MiCe3kAnjSIb2', '18615160701250', '00000000236', 1, 10000.00, 18, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:07:01', '1', 0),
(266, 'nU32hVYEBXbpG', '18615160730384', '00000000237', 1, 20000.00, 18, 31, 23, 17, 37, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:07:30', '1', 0),
(267, 'ePIYUClhqzo2F', '18615160813348', '00000000238', 1, 20000.00, 18, 11, 21, 24, 26, 16, NULL, NULL, NULL, NULL, '2018-06-15 20:08:13', '1', 0),
(268, 'CE2nWXSZqw7rm', '18615161216376', '00000000239', 1, 20000.00, 18, 13, 36, 33, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:12:16', '1', 0),
(269, 'i0VYgbxonKhzE', '18615161548462', '00000000240', 1, 20000.00, 18, 3, 36, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:15:48', '1', 0),
(270, 'IGVOiTt2dgFcx', '18615161605554', '00000000241', 1, 20000.00, 18, 23, 33, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:16:05', '1', 0),
(271, 'Bw3GaK8xi7Aur', '18615161637401', '00000000242', 1, 10000.00, 18, 57, 86, 74, 45, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:16:37', '1', 0),
(272, '0AaBsQvEKMPGc', '18615161717328', '00000000243', 4, 120000.00, 18, 35, 82, 51, 66, 74, 23, NULL, NULL, NULL, '2018-06-15 20:17:17', '1', 0),
(273, '71H8CgODuakUb', '18615161758807', '00000000244', 1, 10000.00, 18, 44, 54, 65, 42, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:17:58', '1', 0),
(274, 'yUlimwSbFZn20', '18615161909882', '00000000245', 6, 60000.00, 18, 52, 56, 77, 84, 44, 35, NULL, NULL, NULL, '2018-06-15 20:19:09', '1', 0),
(275, 'AWZulVwfDjGx5', '18615162111002', '00000000246', 1, 20000.00, 18, 43, 53, 46, 36, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:21:11', '1', 0),
(276, 'SOw7cpHg96CA5', '18615162218847', '00000000247', 1, 20000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:22:18', '1', 0),
(277, 'KOd65AwfJ4mLe', '18615162738113', '00000000248', 1, 10000.00, 18, 55, 76, 85, 73, NULL, NULL, NULL, NULL, NULL, '2018-06-15 20:27:38', '1', 0),
(278, 'dfU5OStkcClWZ', '1861694055271', '00000000249', 5, 100000.00, 18, 41, 52, 77, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 13:40:55', '1', 0),
(279, 'qRJtoklOIN9wf', '1861695131264', '00000000250', 5, 100000.00, 18, 1, 12, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 13:51:31', '1', 0),
(280, 'UwlhKQEBAMZxD', '1861695501494', '00000000251', 2, 40000.00, 18, 0, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 13:55:01', '1', 0),
(281, 'lx3aksUTb6t7f', '1861695538197', '00000000252', 1, 20000.00, 18, 47, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 13:55:38', '1', 0),
(282, '1yqY8Hh75nUOk', '18616102319623', '00000000253', 5, 100000.00, 18, 21, 32, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 14:23:19', '1', 0),
(283, 'DPhdtJ05rQ2La', '18616104500060', '00000000254', 5, 100000.00, 18, 21, 32, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 14:45:00', '1', 0),
(284, 'ymotIpBrDjfAs', '18616104750008', '00000000255', 5, 100000.00, 18, 54, 65, 76, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 14:47:50', '1', 0),
(285, 'VE3f4KycSFrIs', '18616104750008', '00000000255', 5, 150000.00, 18, 73, 75, 45, 33, 23, NULL, NULL, NULL, NULL, '2018-06-16 14:47:50', '1', 0),
(286, 'BOJyLMuT4DxAY', '18616105218094', '00000000256', 5, 100000.00, 18, 43, 53, 64, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 14:52:18', '1', 0),
(287, 'u02RZUosjkhvE', '18616105937094', '00000000257', 5, 100000.00, 18, 10, 11, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 14:59:37', '1', 0),
(288, 'U3ZqP7GDVOLyp', '18616110025596', '00000000258', 1, 20000.00, 18, 23, 34, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 15:00:25', '1', 0),
(289, 'qFlP6aSJrM2Rb', '18616110025596', '00000000258', 5, 100000.00, 18, 95, 65, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 15:00:25', '1', 0),
(290, 'RclJGztreO8bm', '18616110249737', '00000000259', 5, 100000.00, 18, 33, 44, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 15:02:49', '1', 0),
(291, 'bwp4icSKInX1Q', '18616112722787', '00000000260', 5, 100000.00, 18, 31, 42, 53, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-16 15:27:22', '1', 0),
(292, 'xRB8uL5gWJF3D', '1861885811790', '00000000261', 1, 30000.00, 18, 33, 51, 55, 37, 66, 77, NULL, NULL, NULL, '2018-06-18 12:58:11', '1', 0),
(293, 'Kh4IDwnPELHeT', '1861890551508', '00000000262', 1, 30000.00, 18, 25, 31, 21, 13, 15, 27, 47, NULL, NULL, '2018-06-18 13:05:51', '1', 0),
(294, 'Tu9gVzDXHJAh7', '1861891510144', '00000000263', 1, 30000.00, 18, 12, 34, 57, 51, 31, NULL, NULL, NULL, NULL, '2018-06-18 13:15:10', '1', 0),
(295, 'AXajJ2HPDLNes', '1861891530150', '00000000264', 1, 40000.00, 18, 33, 36, 52, 65, NULL, NULL, NULL, NULL, NULL, '2018-06-18 13:15:30', '1', 0),
(296, 'hPAF0GVDvgBmp', '1861893039230', '00000000265', 1, 30000.00, 18, 0, 1, 2, 4, 6, 27, NULL, NULL, NULL, '2018-06-18 13:30:39', '1', 0),
(297, 'IDBwRjXuxsp4H', '1861893204831', '00000000266', 1, 30000.00, 18, 23, 45, 53, 42, NULL, NULL, NULL, NULL, NULL, '2018-06-18 13:32:04', '1', 0),
(298, 'cE3GruIskg8xw', '1861894021301', '00000000267', 1, 30000.00, 18, 12, 24, 43, 42, 41, NULL, NULL, NULL, NULL, '2018-06-18 13:40:21', '1', 0),
(299, 'dnrhZFjE0Qg7b', '1861894156885', '00000000268', 1, 30000.00, 18, 5, 44, 58, 26, 12, 41, NULL, NULL, NULL, '2018-06-18 13:41:56', '1', 0),
(300, 'dGcSlYEviNUwD', '1861894507782', '00000000269', 1, 30000.00, 18, 11, 0, 15, 36, 41, 14, NULL, NULL, NULL, '2018-06-18 13:45:07', '1', 0),
(301, 'n15MkrA2faNVy', '1861894839785', '00000000270', 1, 10000.00, 18, 10, 24, 34, 11, NULL, NULL, NULL, NULL, NULL, '2018-06-18 13:48:39', '1', 0),
(302, 'k2CTGurfn5YzW', '1861894913414', '00000000271', 1, 20000.00, 18, 0, 11, 3, 15, 25, 12, 14, 23, NULL, '2018-06-18 13:49:13', '1', 0),
(303, 'lNqrm2gQGE1e0', '18618100826451', '00000000272', 1, 20000.00, 18, 14, 27, 33, 22, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:08:26', '1', 0),
(304, '8CtxaEFzZ720l', '18618100914231', '00000000273', 1, 20000.00, 18, 11, 24, 21, 12, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:09:14', '1', 0),
(305, 'LQl6SftGbBcze', '18618101029065', '00000000274', 1, 20000.00, 18, 0, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:10:29', '1', 0),
(306, 'yOxkXEW0pwa7u', '18618101543006', '00000000275', 1, 30000.00, 18, 0, 12, 22, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:15:43', '1', 0),
(307, '28E3Rrop067UW', '18618102013509', '00000000276', 1, 30000.00, 18, 23, 21, 13, 16, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:20:13', '1', 0),
(308, 'yjs96mnaBJX13', '18618102124576', '00000000277', 1, 20000.00, 18, 0, 4, 14, 24, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:21:24', '1', 0),
(309, 'CvQKiZP7uENbt', '18618102245084', '00000000278', 1, 20000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:22:45', '1', 0),
(310, 'EaSmQ2At7HfkJ', '18618102410723', '00000000279', 1, 20000.00, 18, 11, 23, 38, 16, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:24:10', '1', 0),
(311, '8prK2ysZW0oL9', '18618102637731', '00000000280', 1, 20000.00, 18, 5, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:26:37', '1', 0),
(312, 'YoWOjLTK74FeX', '18618103024965', '00000000281', 1, 20000.00, 18, 0, 13, 34, 20, 11, 26, NULL, NULL, NULL, '2018-06-18 14:30:24', '1', 0),
(313, 'uaLspBCQ7Kcow', '18618103147849', '00000000282', 1, 30000.00, 18, 12, 24, 23, 21, 15, NULL, NULL, NULL, NULL, '2018-06-18 14:31:47', '1', 0),
(314, 'OV3Cw6RBNKAkF', '18618103431463', '00000000283', 1, 30000.00, 18, 0, 16, 39, 54, 20, NULL, NULL, NULL, NULL, '2018-06-18 14:34:31', '1', 0),
(315, 's4DagwXx3Umb0', '18618103449489', '00000000284', 1, 20000.00, 18, 31, 34, 46, 44, 13, NULL, NULL, NULL, NULL, '2018-06-18 14:34:49', '1', 0),
(316, 'Fq9izsdmOwkc6', '18618103558314', '00000000285', 1, 20000.00, 18, 33, 35, 43, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:35:58', '1', 0),
(317, '23WL8qBr1AtOi', '18618104031775', '00000000286', 1, 20000.00, 18, 0, 2, 15, 25, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:40:31', '1', 0),
(318, '5mld1GRXSJZb9', '18618104502269', '00000000287', 1, 20000.00, 18, 34, 36, 54, 41, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:45:02', '1', 0),
(319, 'Ar4LU7sFVCWQa', '18618104851571', '00000000288', 1, 30000.00, 18, 11, 14, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:48:51', '1', 0),
(320, 'Uw3kbPs8LuvXO', '18618104949941', '00000000289', 1, 20000.00, 18, 1, 3, 21, 0, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:49:49', '1', 0),
(321, 'UvXEs5iW8mJB4', '18618105027307', '00000000290', 1, 20000.00, 18, 32, 26, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:50:27', '1', 0),
(322, '19PjnV4bJhkEv', '18618105122865', '00000000291', 1, 20000.00, 18, 23, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:51:22', '1', 0),
(323, 'VvmaW93pkfMtF', '18618105216443', '00000000292', 1, 20000.00, 18, 1, 4, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 14:52:16', '1', 0),
(324, '95pQICgfMwXmx', '18618105527509', '00000000293', 1, 20000.00, 18, 2, 16, 36, 32, 20, NULL, NULL, NULL, NULL, '2018-06-18 14:55:27', '1', 0),
(325, 'YAKP6tpwyfesc', '18618105629782', '00000000294', 1, 20000.00, 18, 31, 25, 46, 32, 12, NULL, NULL, NULL, NULL, '2018-06-18 14:56:29', '1', 0),
(326, 'UQCRgL2I5k9bG', '18618110400486', '00000000295', 1, 30000.00, 18, 2, 35, 54, 43, 24, NULL, NULL, NULL, NULL, '2018-06-18 15:04:00', '1', 0),
(327, 'SGrhJB0N2tkMd', '18618110937158', '00000000296', 1, 20000.00, 18, 21, 39, 57, 31, 13, NULL, NULL, NULL, NULL, '2018-06-18 15:09:37', '1', 0),
(328, 'XGSI7VR8o1wC2', '18618111558205', '00000000297', 1, 30000.00, 18, 2, 15, 33, 22, 13, NULL, NULL, NULL, NULL, '2018-06-18 15:15:58', '1', 0),
(329, 'LhvadiuWGg9o5', '18618112437876', '00000000298', 1, 20000.00, 18, 20, 34, 44, 31, 12, NULL, NULL, NULL, NULL, '2018-06-18 15:24:37', '1', 0),
(330, '2PeTUJlupmYkB', '18618113208738', '00000000299', 1, 20000.00, 18, 22, 25, 46, 54, 53, NULL, NULL, NULL, NULL, '2018-06-18 15:32:08', '1', 0),
(331, 'A83mo5NLlhyOX', '18618114403154', '00000000300', 1, 30000.00, 18, 21, 35, 55, 52, 24, NULL, NULL, NULL, NULL, '2018-06-18 15:44:03', '1', 0),
(332, 'qgNx53f1Lj8pE', '18618114504850', '00000000301', 1, 20000.00, 18, 55, 41, 12, 34, 33, NULL, NULL, NULL, NULL, '2018-06-18 15:45:04', '1', 0),
(333, 'DlGw7znM6y3Je', '18618115328344', '00000000302', 1, 20000.00, 18, 11, 25, 45, 42, 13, NULL, NULL, NULL, NULL, '2018-06-18 15:53:28', '1', 0),
(334, 'tSf6wTlZ0QVyk', '18618115404061', '00000000303', 1, 20000.00, 18, 35, 22, 14, 25, NULL, NULL, NULL, NULL, NULL, '2018-06-18 15:54:04', '1', 0),
(335, 'QjWNXMocH4KdC', '18618115429293', '00000000304', 1, 20000.00, 18, 22, 28, 46, 32, NULL, NULL, NULL, NULL, NULL, '2018-06-18 15:54:29', '1', 0),
(336, 'QjSARmuGtr1z6', '18618115455421', '00000000305', 1, 30000.00, 18, 35, 69, 74, 43, NULL, NULL, NULL, NULL, NULL, '2018-06-18 15:54:55', '1', 0),
(337, 'uadycgeKFkLX6', '18618130731843', '00000000306', 1, 30000.00, 18, 0, 21, 35, 52, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:07:31', '1', 0),
(338, 'ZMOvJi2mQ0uUc', '18618130950497', '00000000307', 1, 20000.00, 18, 25, 33, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:09:50', '1', 0),
(339, 'OBNAkZSqRQP4v', '18618131021031', '00000000308', 1, 20000.00, 18, 2, 24, 32, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:10:21', '1', 0),
(340, 'YirFZSyNOmMD8', '18618131110104', '00000000309', 1, 20000.00, 18, 2, 26, 33, 22, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:11:10', '1', 0),
(341, 'X7m5lf0is93jV', '18618131146727', '00000000310', 1, 20000.00, 18, 1, 15, 34, 33, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:11:46', '1', 0),
(342, 'eaNvcG7gn8jDz', '18618131352159', '00000000311', 1, 20000.00, 18, 0, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:13:52', '1', 0),
(343, 'K6ckPLEbyMoRX', '18618131524315', '00000000312', 1, 20000.00, 18, 22, 25, 44, 31, 21, NULL, NULL, NULL, NULL, '2018-06-18 17:15:24', '1', 0),
(344, 'D9n8VNjSzwygE', '18618131555435', '00000000313', 1, 20000.00, 18, 33, 46, 42, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:15:55', '1', 0),
(345, '7A6a8hEncPozV', '18618131728836', '00000000314', 1, 20000.00, 18, 20, 24, 45, 3, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:17:28', '1', 0),
(346, 'oiypJXwZDFc75', '18618131816177', '00000000315', 1, 20000.00, 18, 13, 35, 21, 11, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:18:16', '1', 0),
(347, 'Zdk7DuNlKXhj6', '18618132209318', '00000000316', 1, 20000.00, 18, 11, 24, 34, 13, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:22:09', '1', 0),
(348, '10NQlXch8aZtR', '18618132716797', '00000000317', 1, 20000.00, 18, 2, 35, 42, 13, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:27:16', '1', 0),
(349, 'hRpKrPX3gTNui', '18618133059658', '00000000318', 1, 20000.00, 18, 0, 26, 32, 13, 15, NULL, NULL, NULL, NULL, '2018-06-18 17:30:59', '1', 0);
INSERT INTO `tickets` (`id`, `codigo`, `serial`, `numero`, `veces_apostado`, `monto`, `id_usuario`, `1_numero`, `2_numero`, `3_numero`, `4_numero`, `5_numero`, `6_numero`, `7_numero`, `8_numero`, `9_numero`, `fecha`, `estatus`, `premiado`) VALUES
(350, 'OHaWxSqDRPrb2', '18618133327734', '00000000319', 1, 20000.00, 18, 2, 19, 26, 23, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:33:27', '1', 0),
(351, '0iWJMch6pFoS8', '18618133421549', '00000000320', 1, 20000.00, 18, 13, 26, 44, 15, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:34:21', '1', 0),
(352, 'avtIugoFDJwQM', '18618133534294', '00000000321', 1, 20000.00, 18, 10, 14, 26, 33, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:35:34', '1', 0),
(353, 'aN2gq9GKp7rV6', '18618133646791', '00000000322', 1, 20000.00, 18, 23, 26, 36, 33, 20, NULL, NULL, NULL, NULL, '2018-06-18 17:36:46', '1', 0),
(354, 'IGe62iHxSOgkV', '18618133825600', '00000000323', 1, 20000.00, 18, 22, 26, 44, 21, 12, NULL, NULL, NULL, NULL, '2018-06-18 17:38:25', '1', 0),
(355, 'NAQy8M4eTkzVX', '18618133910683', '00000000324', 1, 20000.00, 18, 12, 46, 54, 32, 25, NULL, NULL, NULL, NULL, '2018-06-18 17:39:10', '1', 0),
(356, '4LQrkgCpJWKTu', '18618134244814', '00000000325', 1, 20000.00, 18, 14, 37, 66, 53, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:42:44', '1', 0),
(357, '4ytf0TwJYE6hp', '18618134335790', '00000000326', 1, 30000.00, 18, 15, 44, 32, 29, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:43:35', '1', 0),
(358, 'IBtNids6qW3rH', '18618134921572', '00000000327', 1, 10000.00, 18, 38, 33, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:49:21', '1', 0),
(359, 'SdWm2QpfhEiBD', '18618134959880', '00000000328', 1, 10000.00, 18, 0, 3, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:49:59', '1', 0),
(360, 'krxEs8UTRm1hN', '18618135100899', '00000000329', 1, 20000.00, 18, 32, 37, 16, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:51:00', '1', 0),
(361, 'SvG9bnNqjZr2d', '18618135220353', '00000000330', 1, 10000.00, 18, 12, 16, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:52:20', '1', 0),
(362, 'HhfxzBAy2ULWl', '18618135300265', '00000000331', 1, 10000.00, 18, 12, 17, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 17:53:00', '1', 0),
(363, 'dzUZrv6jX4hm1', '18618140928881', '00000000332', 1, 10000.00, 18, 20, 37, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:09:28', '1', 0),
(364, 'Fu10pbjxIYsaA', '18618141548105', '00000000333', 1, 30000.00, 18, 32, 45, 55, 25, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:15:48', '1', 0),
(365, 'xV35aQ8fSYu2e', '18618141743386', '00000000334', 1, 20000.00, 18, 10, 25, 32, 21, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:17:43', '1', 0),
(366, 'm7Zolqt4wKUcE', '18618141914831', '00000000335', 1, 10000.00, 18, 24, 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:19:14', '1', 0),
(367, 'lFTwQ1EDv0Afb', '18618141939351', '00000000336', 1, 10000.00, 18, 1, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:19:39', '1', 0),
(368, 'BoOUkyw658lur', '18618142216163', '00000000337', 1, 10000.00, 18, 22, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:22:16', '1', 0),
(369, 'Dr76WzdK9kp2s', '18618143154187', '00000000338', 1, 20000.00, 18, 5, 23, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:31:54', '1', 0),
(370, 'cJkIjigFuU37G', '18618143305693', '00000000339', 1, 20000.00, 18, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:33:05', '1', 0),
(371, 'wDfkCjLN1m49x', '18618143429475', '00000000340', 1, 20000.00, 18, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:34:29', '1', 0),
(372, '8iTxtf5myVkPY', '18618144811987', '00000000341', 1, 10000.00, 18, 0, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:48:11', '1', 0),
(373, '46PIBNQMHXUSx', '18618145008404', '00000000342', 1, 10000.00, 18, 25, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:50:08', '1', 0),
(374, 'aH3vD9IhcZBJV', '18618145631225', '00000000343', 1, 10000.00, 18, 12, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:56:31', '1', 0),
(375, 'NCSldX9FE12BQ', '18618145739394', '00000000344', 1, 10000.00, 18, 10, 15, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:57:39', '1', 0),
(376, 'spKycxLMBCTJ2', '18618145836963', '00000000345', 1, 10000.00, 18, 23, 34, 22, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:58:36', '1', 0),
(377, 'N1ntUzh2sF4yH', '18618145907661', '00000000346', 1, 10000.00, 18, 21, 12, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:59:07', '1', 0),
(378, 'g8lPUkbHVBzYs', '18618151039913', '00000000347', 1, 10000.00, 18, 23, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:10:39', '1', 0),
(379, 'veKiYWOEFXAsj', '18618151137391', '00000000348', 1, 10000.00, 18, 21, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:11:37', '1', 0),
(380, 'kSvil4D2LW7cU', '18618151211240', '00000000349', 1, 10000.00, 18, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:12:11', '1', 0),
(381, 'mZMRTPEbJ57q0', '18618151416411', '00000000350', 1, 10000.00, 18, 41, 42, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:14:16', '1', 0),
(382, 'vRHap6smIYPoj', '18618151458877', '00000000351', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:14:58', '1', 0),
(383, 'qQ6Gngk3L2PNr', '18618151720226', '00000000352', 1, 10000.00, 18, 22, 26, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:17:20', '1', 0),
(384, 'zoDjnstmRw1Ck', '18618151759319', '00000000353', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:17:59', '1', 0),
(385, '17i09rYFsJIgx', '18618152117772', '00000000354', 1, 10000.00, 18, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:21:17', '1', 0),
(386, 'qZJ7V9QAWu0rb', '18618152152729', '00000000355', 1, 10000.00, 18, 21, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:21:52', '1', 0),
(387, 'HM9TKqUdxeAfg', '18618152250794', '00000000356', 1, 10000.00, 18, 31, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:22:50', '1', 0),
(388, 'YNt6vUw8lJf0d', '18618152400158', '00000000357', 1, 10000.00, 18, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:24:00', '1', 0),
(389, '7c9rBZ0NiEyqK', '18618152704601', '00000000358', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:27:04', '1', 0),
(390, 'jZT7a9rSnNJuD', '18618153451281', '00000000359', 1, 10000.00, 18, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:34:51', '1', 0),
(391, 'MK8TSVIHPQnjz', '18618154021258', '00000000360', 1, 10000.00, 18, 13, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:40:21', '1', 0),
(392, 'xXF0TdbhCalDV', '18618154745027', '00000000361', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:47:45', '1', 0),
(393, 'NvyYd9DS23rjf', '18618154816154', '00000000362', 1, 10000.00, 18, 13, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:48:16', '1', 0),
(394, 'WPKtaXgIdbi1C', '18618155725659', '00000000363', 1, 10000.00, 18, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:57:25', '1', 0),
(395, 'xyNiIuKgs73EU', '18618155835382', '00000000364', 1, 10000.00, 18, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 19:58:35', '1', 0),
(396, 'QdbxJ4vmnEgA6', '18618160655039', '00000000365', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:06:55', '1', 0),
(397, 'yAG52VmgC0tix', '18618161213470', '00000000366', 1, 10000.00, 18, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:12:13', '1', 0),
(398, 'npCsGWAZ39laY', '18618161343052', '00000000367', 1, 20000.00, 18, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:13:43', '1', 0),
(399, 'yMmoHcKwZgDIU', '18618161534315', '00000000368', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:15:34', '1', 0),
(400, 'PZqjoBkvgbnLU', '18618161733325', '00000000369', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:17:33', '1', 0),
(401, 'JCFWgU5Q7qT0E', '18618161923431', '00000000370', 1, 10000.00, 18, 20, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:19:23', '1', 0),
(402, '49bHC2ujzpBY6', '18618162159173', '00000000371', 1, 10000.00, 18, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:21:59', '1', 0),
(403, 'FYjfqZ4moGLRC', '18618162232159', '00000000372', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:22:32', '1', 0),
(404, 'iYbZT9OXIHLRu', '18618162336702', '00000000373', 1, 10000.00, 18, 22, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:23:36', '1', 0),
(405, 'ySTBM9UIKeFju', '18618162448388', '00000000374', 1, 10000.00, 18, 52, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:24:48', '1', 0),
(406, 'lvXKWQ0Ehm5RY', '18618162659740', '00000000375', 1, 10000.00, 18, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:26:59', '1', 0),
(407, '0EbSqHfLCiOpc', '18618163007224', '00000000376', 1, 10000.00, 18, 0, 11, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:30:07', '1', 0),
(408, 'K7iYOCygGLQNn', '18618163047518', '00000000377', 1, 10000.00, 18, 22, 37, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:30:47', '1', 0),
(409, 'j483rLMJAbfGp', '18618163333804', '00000000378', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:33:33', '1', 0),
(410, 'tAFlvuD3S5LEy', '18618163355944', '00000000379', 1, 20000.00, 18, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:33:55', '1', 0),
(411, '12Pnh0SLA3emG', '18618163537376', '00000000380', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:35:37', '1', 0),
(412, '7TXVwOLcfuWF4', '18618163709197', '00000000381', 1, 10000.00, 18, 23, 43, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:37:09', '1', 0),
(413, 'r6q9P0lyO8sgD', '18618163757319', '00000000382', 1, 10000.00, 18, 2, 13, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:37:57', '1', 0),
(414, 'UgJwfDVKmu6l7', '18618163857299', '00000000383', 1, 10000.00, 18, 21, 24, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:38:57', '1', 0),
(415, 'guGxFykmpqMYT', '18618163952038', '00000000384', 1, 10000.00, 18, 44, 46, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:39:52', '1', 0),
(416, 'fg9XZY41WnALu', '18618164214040', '00000000385', 1, 20000.00, 18, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:42:14', '1', 0),
(417, '2PILwRpxj3QsM', '18618164454828', '00000000386', 1, 10000.00, 18, 14, 26, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:44:54', '1', 0),
(418, 'H8K2yB43gQ9XS', '18618164830044', '00000000387', 1, 30000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:48:30', '1', 0),
(419, 'RPd1GmsKQtX8o', '18618164915700', '00000000388', 1, 30000.00, 18, 12, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:49:15', '1', 0),
(420, 'ObA6t5MBKuTiE', '18618165550450', '00000000389', 1, 10000.00, 18, 43, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:55:50', '1', 0),
(421, 'tABPRbul9YeTh', '18618165657762', '00000000390', 1, 20000.00, 18, 35, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:56:57', '1', 0),
(422, 'UGgDBJsLpu2oW', '18618165742234', '00000000391', 1, 20000.00, 18, 24, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:57:42', '1', 0),
(423, 'ns5rcdzwpyVQC', '18618165758575', '00000000392', 1, 10000.00, 18, 23, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:57:58', '1', 0),
(424, 'SZJzTpms48tjB', '18618165842138', '00000000393', 1, 10000.00, 18, 34, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 20:58:42', '1', 0),
(425, 'jqi9ZsULMAaCH', '18618170027762', '00000000394', 1, 10000.00, 18, 15, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 21:00:27', '1', 0),
(426, 'oTSg6zDGf2Luy', '18618170200325', '00000000395', 1, 10000.00, 18, 44, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 21:02:00', '1', 0),
(427, 'ebOfwi5Ca92Ho', '18618170238998', '00000000396', 1, 30000.00, 18, 1, 0, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 21:02:38', '1', 0),
(428, 'AXJ8vLh97u2Zn', '1861982233230', '00000000397', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:22:33', '1', 0),
(429, 'TxQYcb8CW16R5', '1861982426144', '00000000398', 1, 10000.00, 18, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:24:26', '1', 0),
(430, 'z4mKpIOD9ZnSx', '1861983304956', '00000000399', 1, 10000.00, 18, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:33:04', '1', 0),
(431, 'QiqfTL1oIvCmh', '1861984751738', '00000000400', 1, 10000.00, 18, 34, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:47:51', '1', 0),
(432, 'FGWZzMUjng1a5', '1861985027418', '00000000401', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:50:27', '1', 0),
(433, '0t21NuHWloYpT', '1861985118532', '00000000402', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:51:18', '1', 0),
(434, 'WfYSaqXMKdGLE', '1861985504740', '00000000403', 1, 10000.00, 18, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:55:04', '1', 0),
(435, 'XhlCN4tP7TeYU', '1861985526007', '00000000404', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 12:55:26', '1', 0),
(436, '6JdETNpOfjL7U', '1861990830089', '00000000405', 1, 10000.00, 18, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:08:30', '1', 0),
(437, '6O2ZDeTChQAtr', '1861991044078', '00000000406', 1, 10000.00, 18, 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:10:44', '1', 0),
(438, 'WEz5fAZlQeRCn', '1861991112154', '00000000407', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:11:12', '1', 0),
(439, '6zHWyc7gGABZl', '1861991538281', '00000000408', 1, 10000.00, 18, 20, 24, 33, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:15:38', '1', 0),
(440, 'wAWzO2sphVexy', '1861991538281', '00000000408', 1, 30000.00, 18, 42, 44, 45, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:15:38', '1', 0),
(441, 'hCuXRLkxVObWU', '1861991850413', '00000000409', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:18:50', '1', 0),
(442, 'nBKZrCcGiXFaN', '1861992009302', '00000000410', 1, 10000.00, 18, 15, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:20:09', '1', 0),
(443, 'FiqdEXNhgWufy', '1861992142488', '00000000411', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:21:42', '1', 0),
(444, 'WcPeINSbRw7GB', '1861992911022', '00000000412', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:29:11', '1', 0),
(445, 'IUKMgaOxFBSfE', '1861993208185', '00000000413', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:32:08', '1', 0),
(446, 'nmFgQtIAVbesC', '1861993424308', '00000000414', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:34:24', '1', 0),
(447, 'u94x6Pc7EoHa2', '1861993525638', '00000000415', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:35:25', '1', 0),
(448, 'esExrAFiItBHb', '1861995709442', '00000000416', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:57:09', '1', 0),
(449, 'ZOezSVcTrHXo9', '1861995747366', '00000000417', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 13:57:47', '1', 0),
(450, 'QIblHdsm8w2eO', '18619100903378', '00000000418', 1, 10000.00, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:09:03', '1', 0),
(451, 'wJ3KEPZeICrkb', '18619100903378', '00000000418', 1, 10000.00, 18, 37, 33, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:09:03', '1', 0),
(452, 'VD426SnKzGMmX', '18619101313968', '00000000419', 1, 20000.00, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:13:13', '1', 0),
(453, 'tSeZlE9jnvzQJ', '18619101833579', '00000000420', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:18:33', '1', 0),
(454, 'PUltchwHfTxQB', '18619101833579', '00000000420', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:18:33', '1', 0),
(455, 'eMOSIiVAyRnZw', '18619102030953', '00000000421', 1, 10000.00, 18, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:20:30', '1', 0),
(456, 'V8KdiSLmUvOoY', '18619102120202', '00000000422', 1, 10000.00, 18, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:21:20', '1', 0),
(457, 'oKVhpiFf0LUjz', '18619103343497', '00000000423', 1, 20000.00, 18, 3, 36, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:33:43', '1', 0),
(458, 'kWmoN1zvnTd7D', '18619103533795', '00000000424', 1, 10000.00, 18, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:35:33', '1', 0),
(459, 'fiR4PMpkzC6El', '18619103552515', '00000000425', 1, 10000.00, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:35:52', '1', 0),
(460, 'nRNbrZQ5BEKIV', '18619103603687', '00000000426', 1, 10000.00, 18, 45, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:36:03', '1', 0),
(461, '1venzXKAG4yxm', '18619103622032', '00000000427', 1, 10000.00, 18, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:36:22', '1', 0),
(462, 'SAILr7ZXCOfng', '18619103638877', '00000000428', 1, 20000.00, 18, 46, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:36:38', '1', 0),
(463, 'oCWIPvX3cnqOi', '18619105231729', '00000000429', 1, 20000.00, 18, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 14:52:31', '1', 0),
(464, 'MC8mer3EZbkYo', '18619110819085', '00000000430', 1, 10000.00, 18, 33, 21, 0, 10, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:08:19', '1', 0),
(465, 'KNshiAZmLx1H5', '18619110938339', '00000000431', 1, 10000.00, 18, 26, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:09:38', '1', 0),
(466, 'i5esIrNcQdbfB', '18619111120327', '00000000432', 1, 10000.00, 18, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:11:20', '1', 0),
(467, 'ORMo3vwnBz4Ja', '18619111328991', '00000000433', 1, 10000.00, 18, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:13:28', '1', 0),
(468, '1R2vcnJbuSBog', '18619111413671', '00000000434', 1, 10000.00, 18, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:14:13', '1', 0),
(469, 'XCfzB3p2YsnvQ', '18619111515059', '00000000435', 1, 10000.00, 18, 3, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 15:15:15', '1', 0),
(470, '8kS7NhrqUY2H5', '18619140158406', '00000000436', 5, 200000.00, 18, 22, 33, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 18:01:58', '1', 0),
(471, 'qgcU6suStP4hT', '18619140234209', '00000000437', 5, 100000.00, 18, 66, 56, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 18:02:34', '1', 0),
(472, 'waxXpc4m7r2dP', '18619140824471', '00000000438', 5, 200000.00, 18, 22, 33, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 18:08:24', '1', 0),
(473, 'COKSb962i7tG5', '18619140917645', '00000000439', 5, 100000.00, 18, 42, 43, 53, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-19 18:09:17', '1', 0),
(474, 'puRL4JGE7NqVt', '18619141042782', '00000000440', 5, 150000.00, 18, 22, 33, 44, 54, NULL, NULL, NULL, NULL, NULL, '2018-06-19 18:10:42', '1', 0),
(475, 'gCsDe2jANxB8F', '18619163405576', '00000000441', 2, 40000.00, 18, 7, 21, 14, 28, 35, 42, NULL, NULL, NULL, '2018-06-19 20:34:05', '1', 0),
(476, 'nrZXI4Ba8YMeO', '18619163659088', '00000000442', 2, 40000.00, 18, 7, 14, 21, 28, 35, 42, NULL, NULL, NULL, '2018-06-19 20:36:59', '1', 0),
(477, 'J9MuBWjmlLI8a', '18620154021382', '00000000443', 5, 50000.00, 18, 10, 17, 8, 12, 23, 25, 35, 13, 28, '2018-06-20 19:40:21', '1', 0),
(478, 'CtYykoJ8TZxdz', '18622103315176', '00000000444', 2, 40000.00, 18, 3, 14, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:33:15', '1', 0),
(479, 'sNcPtRGor4zIX', '18622103418497', '00000000445', 4, 120000.00, 18, 95, 96, 86, 43, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:34:18', '1', 0),
(480, 'uBvKgUI02ESxz', '18622103418497', '00000000445', 2, 60000.00, 18, 35, 55, 65, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:34:18', '1', 0),
(481, 'B9OhseHqd0iMX', '18622103418497', '00000000445', 5, 100000.00, 18, 41, 52, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:34:18', '1', 0),
(482, 's64juBNnAP1mL', '18622103528463', '00000000446', 1, 20000.00, 18, 37, 27, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:35:28', '1', 0),
(483, '1vcM9mgTX5loe', '18622103523369', '00000000446', 5, 100000.00, 18, 55, 56, 92, 83, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:35:23', '1', 0),
(484, 'Wxry568wMJpVN', '18622103623710', '00000000447', 5, 100000.00, 18, 25, 45, 41, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:36:23', '1', 0),
(485, 'jNnu859QZJShV', '18622103658077', '00000000448', 5, 100000.00, 18, 30, 31, 32, 67, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:36:58', '1', 0),
(486, 'X08D5eHZQqyRd', '18622103728505', '00000000449', 4, 120000.00, 18, 94, 84, 74, 75, 65, NULL, NULL, NULL, NULL, '2018-06-22 14:37:28', '1', 0),
(487, '3ZCkBa0VLerh4', '18622103728505', '00000000449', 1, 30000.00, 18, 86, 76, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:37:28', '1', 0),
(488, 'VnxAfI4tqsXKj', '18622103825702', '00000000450', 5, 150000.00, 18, 35, 66, 52, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:38:25', '1', 0),
(489, 'akfGomib3H9N6', '18622103851583', '00000000451', 5, 150000.00, 18, 33, 45, 76, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:38:51', '1', 0),
(490, 'EQDsk2I307NbC', '18622103917120', '00000000452', 5, 150000.00, 18, 2, 13, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 14:39:17', '1', 0),
(491, '2RJV53SDsEpou', '18622110951671', '00000000453', 1, 10000.00, 18, 43, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 15:09:51', '1', 0),
(492, 'fTLk2HMgjrD3U', '18622111959648', '00000000454', 1, 20000.00, 18, 53, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 15:19:59', '0', 0),
(493, 'SAPM5ZfLbmdIw', '18622112258520', '00000000455', 1, 10000.00, 18, 38, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 15:22:58', '1', 0),
(494, 'Fhk28Lux3pvo4', '18622112421448', '00000000456', 1, 10000.00, 18, 48, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 15:24:21', '1', 0),
(495, '46azBO9KmbZI7', '18622112940242', '00000000457', 3, 60000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 15:29:40', '0', 0),
(496, 'Dc1xjUY26Mrme', '18622140819630', '00000000458', 4, 80000.00, 18, 22, 66, 63, 51, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:08:19', '0', 0),
(497, 'TBXvMfk0SIK4F', '18622140719797', '00000000459', 3, 30000.00, 18, 35, 44, 51, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:07:19', '1', 0),
(498, 'WlmItXYJyiBzV', '18622140743245', '00000000460', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:07:43', '1', 0),
(499, 'YEcw4x5Oq7afp', '18622140751640', '00000000461', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:07:51', '1', 0),
(500, 'Q45afjzFEWAys', '18622140803795', '00000000462', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:08:03', '1', 0),
(501, 'oGn2plSJ4m1TN', '18622140903659', '00000000463', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:09:03', '1', 0),
(502, 'Mw0A4yzcs75Fq', '18622140911240', '00000000464', 1, 10000.00, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:09:11', '1', 0),
(503, 'mhPojuDSxM5Ts', '18622141530862', '00000000465', 1, 10000.00, 18, 84, 74, 64, 66, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:15:30', '1', 0),
(504, 'gQpqJ50ItLhnj', '18622141551306', '00000000466', 1, 10000.00, 18, 41, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:15:51', '1', 0),
(505, 'QoEkzDgpCsU94', '18622145946403', '00000000467', 1, 10000.00, 18, 44, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 18:59:46', '1', 0),
(506, 'KkgxNZdVMUR7t', '18622152048778', '00000000468', 1, 10000.00, 18, 21, 24, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:20:48', '1', 0),
(507, 'nDbA1aOQlSwGf', '18622152056307', '00000000469', 1, 10000.00, 18, 11, 24, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:20:56', '1', 0),
(508, 'R06FVntv49rzA', '18622152109257', '00000000470', 1, 10000.00, 18, 24, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:21:09', '1', 0),
(509, 'GyVSDQR7hAHL9', '18622153328573', '00000000471', 3, 60000.00, 18, 84, 85, 75, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:33:28', '1', 0),
(510, 'oc10aBxVfZSOt', '18622153433484', '00000000472', 1, 10000.00, 18, 21, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:34:33', '1', 0),
(511, 'NCGpaSFmV9I10', '18622153451635', '00000000473', 2, 20000.00, 18, 82, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:34:51', '0', 0),
(512, 'mzlvK2ToMCW9x', '18622153817348', '00000000474', 1, 20000.00, 18, 22, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:38:17', '1', 0),
(513, '4ZLqrjC1nVAp0', '18622153817348', '00000000474', 2, 20000.00, 18, 53, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:38:17', '1', 0),
(514, 'o0Esn4zPKXJ8S', '18622153817348', '00000000474', 1, 20000.00, 18, 21, 11, 12, 13, 15, NULL, NULL, NULL, NULL, '2018-06-22 19:38:17', '1', 0),
(515, 'sIobyDiBJaLvF', '18622154509699', '00000000475', 1, 10000.00, 18, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-22 19:45:09', '1', 0),
(516, 'ZoHBJEf2vFgmG', '18625103805923', '00000000476', 5, 50000.00, 18, 35, 55, 42, 32, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:38:05', '1', 0),
(517, 'QboWDTnICk8OR', '18625104733299', '00000000477', 5, 150000.00, 18, 12, 23, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:47:33', '0', 0),
(518, 'iL9bAWI8SnxET', '18625104823468', '00000000478', 5, 150000.00, 18, 27, 64, 43, 63, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:48:23', '1', 0),
(519, 'aBspG63EuUQlX', '18625104910940', '00000000479', 5, 150000.00, 18, 42, 53, 64, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:49:10', '0', 0),
(520, 'uCZdBYMnL5XJN', '18625105249043', '00000000480', 3, 90000.00, 18, 21, 42, 77, 95, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:52:49', '1', 0),
(521, 'SI4ZFzxArlnMG', '18625105249043', '00000000480', 5, 150000.00, 18, 64, 43, 36, 53, 82, NULL, NULL, NULL, NULL, '2018-06-25 14:52:49', '1', 0),
(522, 'SgXMjT2EnbLlo', '18625105249043', '00000000480', 5, 100000.00, 18, 71, 32, 76, 74, 99, 28, 15, 10, 55, '2018-06-25 14:52:49', '1', 0),
(523, 'fZsY8UtQGaPVK', '18625105612102', '00000000481', 1, 10000.00, 18, 28, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:56:12', '1', 0),
(524, 'yLfPO6t4suBHZ', '18625105625248', '00000000482', 5, 100000.00, 18, 43, 64, 72, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:56:25', '1', 0),
(525, 'gf14Y2envAMal', '18625105731210', '00000000483', 4, 120000.00, 18, 33, 44, 54, 65, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:57:31', '1', 0),
(526, '4ZnxV1Ugiqlmk', '18625105808412', '00000000484', 1, 10000.00, 18, 73, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 14:58:08', '1', 0),
(527, 'eYs52mgb7t0UT', '18625112636022', '00000000485', 5, 50000.00, 18, 23, 33, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 15:26:36', '1', 0),
(528, 'c8iV6vGy4rEhm', '18625113021917', '00000000486', 3, 30000.00, 18, 26, 45, 71, 65, NULL, NULL, NULL, NULL, NULL, '2018-06-25 15:30:21', '1', 0),
(529, 'VptP8k1wqQTC0', '18625113053014', '00000000487', 5, 50000.00, 18, 32, 63, 54, 26, 65, 67, NULL, NULL, NULL, '2018-06-25 15:30:53', '1', 0),
(530, 'iX96hfsgMU8uk', '18625113137739', '00000000488', 4, 40000.00, 18, 64, 32, 18, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 15:31:37', '1', 0),
(531, '9ofeIBPSNOrCd', '18625113211830', '00000000489', 1, 10000.00, 18, 64, 52, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 15:32:11', '1', 0),
(532, 'B0QMwd7OTYm8H', '18625113327347', '00000000490', 1, 10000.00, 18, 51, 46, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 15:33:27', '1', 0),
(533, 'W39EAJw6PXLNy', '18625143027118', '00000000491', 4, 40000.00, 18, 21, 32, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 18:30:27', '1', 0),
(534, 'c1dl4A85EI2Sj', '18625145107545', '00000000492', 1, 10000.00, 18, 21, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 18:51:07', '1', 0),
(535, '4mI3M9LVUw8i0', '18625151105062', '00000000494', 1, 20000.00, 18, 31, 45, 58, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 19:07:16', '1', 0),
(536, 'IUv5VGF0oBgJR', '18625151105062', '00000000494', 1, 10000.00, 18, 0, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 19:11:05', '1', 1),
(537, 'LOFqJUzGmnAvB', '18625155012090', '00000000495', 1, 10000.00, 18, 43, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 19:50:12', '1', 0),
(538, 'AskfRZ9GQ0J78', '18625163341025', '00000000496', 1, 10000.00, 18, 28, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 20:33:41', '1', 0),
(539, 'cL1helUoBzPSu', '18625170910966', '00000000497', 1, 10000.00, 18, 67, 37, 33, 54, NULL, NULL, NULL, NULL, NULL, '2018-06-25 21:09:10', '1', 0),
(540, 'tbCeVo2gkWlKA', '18626100639217', '00000000498', 3, 30000.00, 18, 0, 2, 1, 3, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:06:39', '2', 0),
(541, '3d8KF4COMe6ZB', '18626101249842', '00000000499', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:12:49', '1', 0),
(542, 'fJUzQW2tOrivq', '18626101501163', '00000000500', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:15:01', '1', 0),
(543, 'fumBKlPbYD9cj', '18626101501163', '00000000500', 1, 10000.00, 18, 0, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:15:01', '1', 0),
(544, 's2dngbFNpIWRC', '18626102517180', '00000000501', 1, 10000.00, 18, 0, 10, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:25:17', '0', 0),
(545, 'GC49AJdgTUpsB', '18626102517180', '00000000501', 2, 20000.00, 18, 24, 55, 60, 64, NULL, NULL, NULL, NULL, NULL, '2018-06-26 14:25:17', '0', 0),
(546, 'cgoIEFb4Ks5xy', '18628133631926', '00000000502', 1, 20000.00, 18, 43, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:36:31', '1', 0),
(547, 'KOVN7vSbpQusj', '18628133631926', '00000000502', 1, 30000.00, 18, 11, 37, 56, 53, 33, NULL, NULL, NULL, NULL, '2018-06-28 17:36:31', '1', 0),
(548, 'IzNUO6GybeJXp', '18628133631926', '00000000502', 1, 30000.00, 18, 36, 46, 43, 32, 23, 26, 28, NULL, NULL, '2018-06-28 17:36:31', '1', 0),
(549, 'eVukidJCBwQSM', '18628133818127', '00000000503', 1, 10000.00, 18, 43, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:38:18', '1', 0),
(550, 'WukEIBKH1hX8s', '18628133818127', '00000000503', 1, 10000.00, 18, 11, 37, 56, 53, 33, NULL, NULL, NULL, NULL, '2018-06-28 17:38:18', '1', 0),
(551, 'IFkrYyGOedRxj', '18628133818127', '00000000503', 1, 20000.00, 18, 36, 46, 43, 32, 23, 26, 28, NULL, NULL, '2018-06-28 17:38:18', '1', 0),
(552, 'nUEY3C1HyB0J8', '18628133818127', '00000000503', 1, 10000.00, 18, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:38:18', '1', 0),
(553, 'tlqg8icdIKoAX', '18628133903085', '00000000504', 1, 20000.00, 18, 43, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:39:03', '1', 0),
(554, 'ReiE6CpAzSZju', '18628133903085', '00000000504', 1, 10000.00, 18, 11, 37, 56, 53, 33, NULL, NULL, NULL, NULL, '2018-06-28 17:39:03', '1', 0),
(555, 'pz2t8qVkZboDR', '18628133903085', '00000000504', 1, 10000.00, 18, 36, 46, 43, 32, 23, 26, 28, NULL, NULL, '2018-06-28 17:39:03', '1', 0),
(556, 'QORk3ruFvlJ48', '18628133903085', '00000000504', 1, 10000.00, 18, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:39:03', '1', 0),
(557, 'UzdyNCqsDLnQh', '18628134012385', '00000000505', 1, 20000.00, 18, 10, 11, 34, 44, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:12', '1', 0),
(558, 'Z5SQVB2wXIWTL', '18628134012385', '00000000505', 30, 300000.00, 18, 45, 36, 37, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:12', '1', 0),
(559, 'ktaCUwjPToJ0m', '18628134012385', '00000000505', 10, 100000.00, 18, 44, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:12', '1', 0),
(560, 'GLXwv95hNTPmz', '18628134049432', '00000000506', 1, 10000.00, 18, 10, 11, 34, 44, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:49', '1', 0),
(561, 'aMLxov7qFg1EA', '18628134049432', '00000000506', 30, 300000.00, 18, 45, 36, 37, 74, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:49', '1', 0),
(562, 'ETfYg4zovC762', '18628134049432', '00000000506', 10, 100000.00, 18, 44, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:40:49', '1', 0),
(563, '829CzbPSQ6aB1', '18628135555008', '00000000507', 1, 10000.00, 18, 30, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:55:55', '1', 0),
(564, 'wMFotdhTgHcVY', '18628135646251', '00000000508', 1, 10000.00, 18, 30, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:56:46', '1', 0),
(565, 'pOWEXPfnb5cgs', '18628135646251', '00000000508', 1, 10000.00, 18, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:56:46', '1', 0),
(566, 'gnQ1H8TtAqKej', '18628135646251', '00000000508', 1, 10000.00, 18, 0, 1, 2, 3, 13, NULL, NULL, NULL, NULL, '2018-06-28 17:56:46', '1', 0),
(567, 'VOUuRnPMg8lrj', '18628135646251', '00000000508', 1, 10000.00, 18, 55, 34, 21, 41, NULL, NULL, NULL, NULL, NULL, '2018-06-28 17:56:46', '1', 0),
(568, 'LhkZ2eArF3WQx', '18628140315053', '00000000509', 1, 10000.00, 18, 31, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:15', '1', 0),
(569, 'ZXYqvyu0grEW1', '18628140315053', '00000000509', 1, 10000.00, 18, 46, 34, 22, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:15', '1', 0),
(570, 'w2RP0ndae7gEy', '18628140315053', '00000000509', 1, 30000.00, 18, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:15', '1', 0),
(571, 'yCOUgZJDIKFAn', '18628140345741', '00000000510', 1, 10000.00, 18, 31, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:45', '1', 0),
(572, 'r7ewjNDuXih9m', '18628140345741', '00000000510', 1, 20000.00, 18, 46, 34, 22, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:45', '1', 0),
(573, 'JAE0GiXwkDNB8', '18628140345741', '00000000510', 1, 10000.00, 18, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:03:45', '1', 0),
(574, '0x9eRSysUWMC6', '18628142406098', '00000000511', 1, 10000.00, 18, 58, 35, 44, 99, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:24:06', '1', 0),
(575, 'aLk1SIN6HiB4t', '18628142406098', '00000000511', 1, 30000.00, 18, 52, 37, 67, 75, 73, NULL, NULL, NULL, NULL, '2018-06-28 18:24:06', '1', 0),
(576, 'ziE4SjWL0N6Kw', '18628142406098', '00000000511', 7, 210000.00, 18, 78, 85, 63, 57, 64, 84, NULL, NULL, NULL, '2018-06-28 18:24:06', '1', 0),
(577, 'sRld83DHXfNgr', '18628142453601', '00000000512', 1, 20000.00, 18, 58, 35, 44, 99, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:24:53', '1', 0),
(578, 'ltZDciQ3p6wCr', '18628142453601', '00000000512', 1, 10000.00, 18, 52, 37, 67, 75, 73, NULL, NULL, NULL, NULL, '2018-06-28 18:24:53', '1', 0),
(579, '5lUFLD9txmIWn', '18628142453601', '00000000512', 7, 140000.00, 18, 78, 85, 63, 57, 64, 84, NULL, NULL, NULL, '2018-06-28 18:24:53', '1', 0),
(580, 'lb1GE0NinF6SK', '18628142827536', '00000000513', 1, 10000.00, 18, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:28:27', '0', 0),
(581, 'riM9n3JRC0ghb', '18628142827536', '00000000513', 1, 10000.00, 18, 55, 74, 53, 44, 37, 68, NULL, NULL, NULL, '2018-06-28 18:28:27', '0', 0),
(582, 'EaDFhejB0U4Ag', '18628142827536', '00000000513', 1, 10000.00, 18, 83, 74, 33, 81, 51, 68, NULL, NULL, NULL, '2018-06-28 18:28:27', '0', 0),
(583, 'rdY4XKwiJe0CZ', '18628144000343', '00000000514', 1, 30000.00, 18, 30, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:40:00', '1', 0),
(584, '7Ndql81QMtPkw', '18628144109301', '00000000515', 1, 10000.00, 18, 58, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 18:41:09', '1', 0),
(585, 'w3xLBmh1cuFMp', '18628150905961', '00000000516', 1, 10000.00, 18, 27, 45, 77, 0, 3, 6, NULL, NULL, NULL, '2018-06-28 19:09:05', '0', 0),
(586, 'UurDChpaO7oB6', '18628150905961', '00000000516', 3, 30000.00, 18, 55, 34, 26, 5, 1, 6, NULL, NULL, NULL, '2018-06-28 19:09:05', '0', 0),
(587, 'P6tZUF2u5g9db', '18628152250376', '00000000517', 1, 10000.00, 18, 23, 24, 35, 45, NULL, NULL, NULL, NULL, NULL, '2018-06-28 19:22:50', '1', 0),
(588, 'jky37sExXQNZU', '18725152922355', '00000000518', 1, 10000.00, 18, 2, 3, 5, 25, NULL, NULL, NULL, NULL, NULL, '2018-07-25 19:29:22', '1', 0),
(589, 'GsRNax8WOKLg4', '18725153215407', '00000000519', 6, 120000.00, 18, 0, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-25 19:32:15', '1', 0),
(590, 'R9qpctgG7Trb1', '18725153229326', '00000000520', 4, 80000.00, 18, 22, 34, 44, 52, NULL, NULL, NULL, NULL, NULL, '2018-07-25 19:32:29', '1', 0),
(591, 'AEC3wak6RuXxr', '18725153241700', '00000000521', 5, 100000.00, 18, 32, 65, 74, 72, 46, 26, 25, NULL, NULL, '2018-07-25 19:32:41', '1', 0),
(592, 'y8nLHFJgqOPVC', '18725153303844', '00000000522', 6, 120000.00, 18, 13, 14, 34, 42, 55, 66, NULL, NULL, NULL, '2018-07-25 19:33:03', '1', 0),
(593, 'LjR9x4hv2Wbfk', '18725153328523', '00000000523', 6, 120000.00, 18, 22, 46, 63, 61, 37, 67, 75, NULL, NULL, '2018-07-25 19:33:28', '1', 0),
(594, 'qnPtYO0yhiRQD', '18725153355566', '00000000524', 7, 140000.00, 18, 1, 3, 42, 62, 64, 68, 47, 44, NULL, '2018-07-25 19:33:55', '1', 0),
(595, 'pQIm5sJ0nrg7i', '18726171141599', '00000000525', 5, 100000.00, 18, 0, 1, 2, 12, 23, 34, 44, NULL, NULL, '2018-07-26 21:11:41', '0', 0),
(596, 'oIZdSFCJDT1H9', '18726164722865', '00000000526', 5, 200000.00, 18, 11, 22, 33, 54, NULL, NULL, NULL, NULL, NULL, '2018-07-26 20:47:22', '1', 0),
(597, 'IWcm6KEXZCoMN', '18726164958092', '00000000527', 5, 200000.00, 18, 32, 43, 54, 65, NULL, NULL, NULL, NULL, NULL, '2018-07-26 20:49:58', '1', 0),
(598, 'T1CQmGOI7XWRj', '18726164958092', '00000000527', 2, 80000.00, 18, 21, 32, 43, 54, NULL, NULL, NULL, NULL, NULL, '2018-07-26 20:49:58', '1', 0),
(599, '8KsNVMIRnaLHF', '18726165103462', '00000000528', 4, 160000.00, 18, 24, 64, 81, 86, 32, 29, NULL, NULL, NULL, '2018-07-26 20:51:03', '1', 0),
(600, 'ywzHGV0SXar6W', '18726165228565', '00000000529', 5, 200000.00, 18, 45, 55, 75, 95, NULL, NULL, NULL, NULL, NULL, '2018-07-26 20:52:28', '1', 0),
(601, 'UxgDmj63hY7r8', '', '', 4, 0.40, 18, 4, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-10 19:03:57', '1', 0),
(602, 'pM1YbQAk3DcjU', '', '', 20, 2.00, 18, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-10 19:03:57', '1', 0),
(603, 'KuCfFG67b8kwe', '', '', 50, 5.00, 18, 46, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-10 19:03:57', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_sorteo`
--

CREATE TABLE `ticket_sorteo` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_sorteo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_sorteo`
--

INSERT INTO `ticket_sorteo` (`id`, `id_ticket`, `id_sorteo`) VALUES
(1, 1, 25),
(2, 1, 18),
(3, 1, 24),
(4, 2, 25),
(5, 2, 24),
(6, 3, 25),
(7, 3, 24),
(8, 3, 18),
(9, 4, 25),
(10, 5, 25),
(11, 6, 25),
(12, 6, 24),
(13, 7, 8),
(14, 7, 9),
(15, 7, 25),
(16, 8, 8),
(17, 8, 9),
(18, 9, 8),
(19, 9, 25),
(20, 10, 8),
(21, 10, 9),
(22, 11, 8),
(23, 11, 25),
(24, 12, 24),
(25, 12, 25),
(26, 12, 20),
(27, 13, 8),
(28, 13, 25),
(29, 14, 8),
(30, 14, 9),
(31, 14, 25),
(32, 15, 8),
(33, 15, 9),
(34, 15, 25),
(35, 16, 8),
(36, 16, 9),
(37, 16, 25),
(38, 17, 8),
(39, 17, 25),
(40, 17, 24),
(41, 18, 8),
(42, 18, 9),
(43, 18, 25),
(44, 19, 8),
(45, 19, 25),
(46, 19, 9),
(47, 20, 8),
(48, 20, 9),
(49, 20, 25),
(50, 21, 8),
(51, 21, 25),
(52, 22, 8),
(53, 22, 9),
(54, 22, 64),
(55, 23, 8),
(56, 23, 9),
(57, 23, 64),
(58, 24, 8),
(59, 24, 25),
(60, 25, 8),
(61, 25, 25),
(62, 26, 8),
(63, 26, 25),
(64, 27, 8),
(65, 27, 25),
(66, 27, 20),
(67, 28, 8),
(68, 28, 25),
(69, 28, 21),
(70, 29, 8),
(71, 29, 25),
(72, 29, 64),
(73, 30, 8),
(74, 30, 64),
(75, 30, 23),
(76, 31, 8),
(77, 31, 25),
(78, 32, 8),
(79, 32, 25),
(80, 32, 64),
(81, 33, 8),
(82, 33, 25),
(83, 33, 64),
(84, 34, 25),
(85, 34, 8),
(86, 35, 8),
(87, 35, 64),
(88, 36, 8),
(89, 36, 25),
(90, 36, 64),
(91, 37, 8),
(92, 37, 64),
(93, 38, 8),
(94, 38, 64),
(95, 39, 25),
(96, 39, 8),
(97, 39, 64),
(98, 40, 8),
(99, 40, 64),
(100, 41, 8),
(101, 41, 25),
(102, 42, 8),
(103, 42, 64),
(104, 43, 8),
(105, 43, 64),
(106, 44, 8),
(107, 44, 25),
(108, 45, 8),
(109, 45, 25),
(110, 46, 8),
(111, 46, 9),
(112, 46, 64),
(113, 47, 8),
(114, 47, 25),
(115, 48, 8),
(116, 48, 25),
(117, 48, 64),
(118, 49, 8),
(119, 49, 64),
(120, 50, 8),
(121, 50, 64),
(122, 51, 64),
(123, 52, 64),
(124, 53, 64),
(125, 53, 24),
(126, 53, 25),
(127, 54, 64),
(128, 54, 24),
(129, 54, 25),
(130, 54, 17),
(131, 55, 64),
(132, 55, 24),
(133, 55, 25),
(134, 56, 64),
(135, 56, 24),
(136, 56, 25),
(137, 57, 64),
(138, 57, 24),
(139, 57, 25),
(140, 58, 64),
(141, 58, 24),
(142, 58, 25),
(143, 59, 64),
(144, 59, 24),
(145, 59, 25),
(146, 60, 64),
(147, 60, 24),
(148, 61, 64),
(149, 61, 20),
(150, 61, 25),
(151, 61, 19),
(152, 62, 64),
(153, 62, 24),
(154, 62, 25),
(155, 63, 22),
(156, 63, 20),
(157, 63, 19),
(158, 63, 23),
(159, 64, 64),
(160, 64, 24),
(161, 64, 25),
(162, 65, 64),
(163, 65, 24),
(164, 66, 64),
(165, 66, 24),
(166, 67, 64),
(167, 67, 24),
(168, 67, 25),
(169, 68, 21),
(170, 68, 22),
(171, 68, 20),
(172, 69, 64),
(173, 69, 24),
(174, 69, 25),
(175, 70, 64),
(176, 70, 24),
(177, 71, 64),
(178, 71, 24),
(179, 71, 25),
(180, 72, 64),
(181, 72, 24),
(182, 72, 25),
(183, 73, 64),
(184, 73, 24),
(185, 73, 25),
(186, 74, 64),
(187, 74, 24),
(188, 74, 25),
(189, 75, 64),
(190, 75, 24),
(191, 75, 25),
(192, 75, 19),
(193, 76, 64),
(194, 76, 25),
(195, 76, 19),
(196, 77, 64),
(197, 77, 24),
(198, 78, 64),
(199, 78, 24),
(200, 79, 64),
(201, 79, 25),
(202, 79, 24),
(203, 80, 64),
(204, 80, 24),
(205, 81, 64),
(206, 82, 64),
(207, 83, 64),
(208, 84, 64),
(209, 85, 64),
(210, 85, 24),
(211, 85, 25),
(212, 86, 64),
(213, 86, 24),
(214, 86, 25),
(215, 87, 64),
(216, 87, 24),
(217, 87, 25),
(218, 88, 64),
(219, 88, 24),
(220, 88, 25),
(221, 89, 64),
(222, 89, 24),
(223, 89, 25),
(224, 90, 64),
(225, 90, 25),
(226, 90, 24),
(227, 91, 64),
(228, 91, 20),
(229, 91, 25),
(230, 91, 19),
(231, 92, 64),
(232, 92, 25),
(233, 92, 19),
(234, 93, 19),
(235, 93, 21),
(236, 94, 22),
(237, 94, 23),
(238, 94, 16),
(239, 95, 64),
(240, 95, 25),
(241, 95, 24),
(242, 96, 24),
(243, 96, 20),
(244, 97, 64),
(245, 97, 24),
(246, 97, 25),
(247, 98, 64),
(248, 98, 25),
(249, 98, 19),
(250, 99, 64),
(251, 99, 24),
(252, 99, 25),
(253, 100, 64),
(254, 100, 24),
(255, 100, 25),
(256, 101, 64),
(257, 101, 24),
(258, 101, 25),
(259, 102, 25),
(260, 102, 24),
(261, 102, 64),
(262, 103, 64),
(263, 103, 24),
(264, 103, 20),
(265, 104, 64),
(266, 104, 24),
(267, 104, 25),
(268, 105, 64),
(269, 105, 24),
(270, 105, 19),
(271, 105, 25),
(272, 106, 15),
(273, 106, 17),
(274, 107, 15),
(275, 107, 17),
(276, 107, 16),
(277, 108, 15),
(278, 108, 17),
(279, 108, 16),
(280, 109, 15),
(281, 109, 16),
(282, 110, 15),
(283, 110, 16),
(284, 111, 15),
(285, 111, 17),
(286, 111, 16),
(287, 112, 15),
(288, 112, 16),
(289, 113, 15),
(290, 113, 17),
(291, 114, 15),
(292, 114, 17),
(293, 114, 16),
(294, 115, 15),
(295, 115, 17),
(296, 116, 15),
(297, 116, 17),
(298, 117, 15),
(299, 117, 16),
(300, 118, 15),
(301, 119, 17),
(302, 119, 15),
(303, 120, 17),
(304, 120, 15),
(305, 120, 16),
(306, 121, 15),
(307, 121, 17),
(308, 121, 16),
(309, 122, 15),
(310, 122, 17),
(311, 122, 16),
(312, 123, 15),
(313, 123, 17),
(314, 123, 16),
(315, 124, 15),
(316, 124, 16),
(317, 124, 17),
(318, 125, 16),
(319, 125, 15),
(320, 125, 17),
(321, 126, 15),
(322, 126, 17),
(323, 127, 16),
(324, 127, 15),
(325, 128, 17),
(326, 128, 16),
(327, 129, 16),
(328, 129, 17),
(329, 130, 16),
(330, 130, 17),
(331, 131, 16),
(332, 131, 17),
(333, 132, 16),
(334, 132, 17),
(335, 133, 16),
(336, 134, 16),
(337, 134, 17),
(338, 135, 16),
(339, 135, 17),
(340, 136, 16),
(341, 136, 17),
(342, 137, 16),
(343, 137, 17),
(344, 138, 16),
(345, 139, 16),
(346, 139, 17),
(347, 140, 15),
(348, 140, 6),
(349, 140, 25),
(350, 141, 15),
(351, 141, 6),
(352, 141, 16),
(353, 141, 25),
(354, 141, 24),
(355, 141, 17),
(356, 141, 18),
(357, 141, 19),
(358, 141, 20),
(359, 141, 21),
(360, 141, 22),
(361, 141, 23),
(362, 142, 15),
(363, 142, 16),
(364, 143, 15),
(365, 143, 6),
(366, 144, 15),
(367, 145, 15),
(368, 146, 15),
(369, 147, 15),
(370, 148, 15),
(371, 148, 6),
(372, 148, 16),
(373, 148, 25),
(374, 148, 24),
(375, 148, 17),
(376, 148, 18),
(377, 148, 19),
(378, 148, 20),
(379, 148, 21),
(380, 148, 22),
(381, 148, 23),
(382, 149, 15),
(383, 149, 6),
(384, 149, 16),
(385, 149, 25),
(386, 149, 24),
(387, 149, 17),
(388, 149, 18),
(389, 149, 19),
(390, 149, 20),
(391, 149, 21),
(392, 149, 22),
(393, 149, 23),
(394, 150, 16),
(395, 150, 25),
(396, 151, 22),
(397, 151, 23),
(398, 151, 21),
(399, 151, 20),
(400, 151, 19),
(401, 151, 18),
(402, 151, 17),
(403, 151, 24),
(404, 151, 25),
(405, 151, 16),
(406, 152, 16),
(407, 152, 25),
(408, 153, 16),
(409, 153, 25),
(410, 154, 16),
(411, 154, 25),
(412, 155, 16),
(413, 156, 16),
(414, 156, 25),
(415, 157, 18),
(416, 158, 16),
(417, 158, 25),
(418, 159, 25),
(419, 160, 17),
(420, 160, 19),
(421, 161, 16),
(422, 161, 25),
(423, 161, 24),
(424, 161, 17),
(425, 161, 18),
(426, 161, 19),
(427, 161, 20),
(428, 161, 21),
(429, 161, 22),
(430, 161, 23),
(431, 162, 16),
(432, 162, 25),
(433, 162, 24),
(434, 162, 17),
(435, 162, 18),
(436, 162, 19),
(437, 162, 20),
(438, 162, 21),
(439, 162, 22),
(440, 162, 23),
(441, 163, 16),
(442, 163, 25),
(443, 163, 24),
(444, 163, 17),
(445, 163, 18),
(446, 163, 19),
(447, 163, 20),
(448, 163, 21),
(449, 163, 22),
(450, 163, 23),
(451, 164, 16),
(452, 164, 25),
(453, 164, 24),
(454, 164, 17),
(455, 164, 18),
(456, 164, 19),
(457, 164, 20),
(458, 164, 21),
(459, 164, 22),
(460, 164, 23),
(461, 165, 25),
(462, 166, 25),
(463, 166, 17),
(464, 167, 25),
(465, 168, 18),
(466, 168, 25),
(467, 168, 24),
(468, 169, 23),
(469, 169, 21),
(470, 170, 23),
(471, 170, 21),
(472, 171, 18),
(473, 171, 24),
(474, 171, 25),
(475, 172, 24),
(476, 172, 19),
(477, 172, 18),
(478, 172, 25),
(479, 173, 24),
(480, 173, 19),
(481, 173, 18),
(482, 173, 25),
(483, 174, 25),
(484, 174, 24),
(485, 174, 21),
(486, 175, 25),
(487, 176, 25),
(488, 176, 24),
(489, 176, 21),
(490, 177, 25),
(491, 178, 25),
(492, 179, 25),
(493, 179, 21),
(494, 179, 24),
(495, 180, 25),
(496, 180, 21),
(497, 180, 24),
(498, 181, 21),
(499, 181, 24),
(500, 181, 25),
(501, 182, 21),
(502, 182, 24),
(503, 182, 22),
(504, 182, 25),
(505, 183, 25),
(506, 183, 21),
(507, 183, 24),
(508, 184, 25),
(509, 184, 24),
(510, 184, 21),
(511, 184, 23),
(512, 185, 22),
(513, 185, 24),
(514, 185, 25),
(515, 186, 22),
(516, 186, 21),
(517, 186, 25),
(518, 186, 24),
(519, 187, 24),
(520, 187, 25),
(521, 187, 21),
(522, 188, 25),
(523, 188, 21),
(524, 188, 24),
(525, 189, 25),
(526, 189, 21),
(527, 189, 24),
(528, 190, 25),
(529, 190, 21),
(530, 191, 25),
(531, 191, 21),
(532, 192, 22),
(533, 192, 21),
(534, 192, 25),
(535, 193, 25),
(536, 193, 23),
(537, 193, 21),
(538, 194, 25),
(539, 194, 21),
(540, 194, 24),
(541, 195, 25),
(542, 195, 21),
(543, 196, 24),
(544, 196, 25),
(545, 196, 21),
(546, 197, 25),
(547, 197, 21),
(548, 198, 24),
(549, 198, 25),
(550, 199, 25),
(551, 199, 21),
(552, 199, 24),
(553, 200, 22),
(554, 200, 21),
(555, 201, 22),
(556, 201, 24),
(557, 202, 25),
(558, 202, 24),
(559, 203, 24),
(560, 203, 25),
(561, 204, 24),
(562, 204, 25),
(563, 205, 25),
(564, 205, 24),
(565, 206, 21),
(566, 206, 25),
(567, 206, 24),
(568, 207, 25),
(569, 207, 24),
(570, 207, 21),
(571, 208, 25),
(572, 208, 21),
(573, 208, 24),
(574, 209, 24),
(575, 209, 25),
(576, 209, 21),
(577, 210, 25),
(578, 210, 24),
(579, 211, 25),
(580, 211, 21),
(581, 211, 24),
(582, 212, 25),
(583, 212, 24),
(584, 213, 24),
(585, 213, 25),
(586, 214, 24),
(587, 214, 22),
(588, 215, 25),
(589, 215, 24),
(590, 215, 21),
(591, 216, 24),
(592, 216, 25),
(593, 216, 21),
(594, 217, 25),
(595, 217, 24),
(596, 218, 24),
(597, 218, 25),
(598, 219, 25),
(599, 219, 24),
(600, 219, 21),
(601, 220, 24),
(602, 220, 25),
(603, 221, 25),
(604, 221, 24),
(605, 222, 25),
(606, 222, 24),
(607, 223, 24),
(608, 224, 24),
(609, 225, 24),
(610, 226, 24),
(611, 227, 24),
(612, 227, 25),
(613, 228, 24),
(614, 228, 25),
(615, 229, 24),
(616, 230, 24),
(617, 230, 25),
(618, 231, 24),
(619, 231, 25),
(620, 232, 24),
(621, 232, 25),
(622, 233, 22),
(623, 233, 21),
(624, 234, 24),
(625, 234, 25),
(626, 235, 25),
(627, 235, 24),
(628, 235, 21),
(629, 236, 25),
(630, 236, 24),
(631, 237, 24),
(632, 237, 25),
(633, 238, 25),
(634, 238, 24),
(635, 238, 21),
(636, 239, 24),
(637, 239, 25),
(638, 239, 21),
(639, 240, 25),
(640, 240, 24),
(641, 240, 21),
(642, 241, 25),
(643, 241, 21),
(644, 241, 24),
(645, 242, 24),
(646, 242, 25),
(647, 243, 22),
(648, 243, 21),
(649, 244, 25),
(650, 244, 24),
(651, 245, 25),
(652, 245, 24),
(653, 246, 24),
(654, 246, 25),
(655, 247, 24),
(656, 247, 21),
(657, 248, 24),
(658, 248, 25),
(659, 248, 22),
(660, 249, 24),
(661, 250, 24),
(662, 251, 24),
(663, 252, 21),
(664, 253, 21),
(665, 254, 24),
(666, 255, 24),
(667, 256, 24),
(668, 257, 24),
(669, 258, 24),
(670, 259, 24),
(671, 260, 21),
(672, 261, 24),
(673, 262, 23),
(674, 263, 24),
(675, 264, 24),
(676, 264, 25),
(677, 265, 25),
(678, 266, 24),
(679, 266, 25),
(680, 267, 24),
(681, 267, 25),
(682, 268, 24),
(683, 268, 25),
(684, 269, 24),
(685, 269, 25),
(686, 270, 24),
(687, 270, 25),
(688, 271, 21),
(689, 272, 21),
(690, 272, 22),
(691, 272, 25),
(692, 273, 23),
(693, 274, 21),
(694, 275, 21),
(695, 275, 20),
(696, 276, 24),
(697, 276, 21),
(698, 277, 21),
(699, 278, 50),
(700, 278, 51),
(701, 279, 50),
(702, 279, 51),
(703, 280, 50),
(704, 280, 51),
(705, 281, 50),
(706, 281, 51),
(707, 282, 50),
(708, 282, 51),
(709, 283, 54),
(710, 283, 55),
(711, 284, 55),
(712, 284, 56),
(713, 285, 56),
(714, 285, 58),
(715, 285, 60),
(716, 286, 59),
(717, 286, 61),
(718, 287, 58),
(719, 287, 60),
(720, 288, 58),
(721, 288, 57),
(722, 289, 57),
(723, 289, 60),
(724, 290, 59),
(725, 290, 58),
(726, 291, 63),
(727, 291, 64),
(728, 292, 25),
(729, 292, 24),
(730, 292, 18),
(731, 293, 25),
(732, 293, 24),
(733, 293, 18),
(734, 294, 24),
(735, 294, 25),
(736, 294, 18),
(737, 295, 24),
(738, 295, 18),
(739, 295, 19),
(740, 295, 25),
(741, 296, 24),
(742, 296, 25),
(743, 296, 18),
(744, 297, 24),
(745, 297, 25),
(746, 297, 18),
(747, 298, 25),
(748, 298, 24),
(749, 298, 18),
(750, 299, 25),
(751, 299, 24),
(752, 299, 18),
(753, 300, 25),
(754, 300, 24),
(755, 300, 18),
(756, 301, 25),
(757, 302, 25),
(758, 302, 24),
(759, 303, 24),
(760, 303, 25),
(761, 304, 24),
(762, 304, 25),
(763, 305, 25),
(764, 305, 24),
(765, 306, 24),
(766, 306, 25),
(767, 306, 18),
(768, 307, 24),
(769, 307, 25),
(770, 307, 18),
(771, 308, 25),
(772, 308, 24),
(773, 309, 19),
(774, 309, 24),
(775, 310, 24),
(776, 310, 25),
(777, 311, 24),
(778, 311, 25),
(779, 312, 24),
(780, 312, 25),
(781, 313, 24),
(782, 313, 25),
(783, 313, 18),
(784, 314, 25),
(785, 314, 24),
(786, 314, 18),
(787, 315, 24),
(788, 315, 25),
(789, 316, 24),
(790, 316, 25),
(791, 317, 24),
(792, 317, 25),
(793, 318, 24),
(794, 318, 25),
(795, 319, 24),
(796, 319, 25),
(797, 319, 18),
(798, 320, 25),
(799, 320, 24),
(800, 321, 25),
(801, 321, 24),
(802, 322, 24),
(803, 322, 25),
(804, 323, 24),
(805, 323, 25),
(806, 324, 24),
(807, 324, 25),
(808, 325, 25),
(809, 325, 24),
(810, 326, 24),
(811, 326, 25),
(812, 326, 18),
(813, 327, 25),
(814, 327, 24),
(815, 328, 24),
(816, 328, 25),
(817, 328, 18),
(818, 329, 24),
(819, 329, 25),
(820, 330, 19),
(821, 330, 24),
(822, 331, 24),
(823, 331, 25),
(824, 331, 18),
(825, 332, 24),
(826, 332, 25),
(827, 333, 24),
(828, 333, 25),
(829, 334, 24),
(830, 334, 25),
(831, 335, 24),
(832, 335, 25),
(833, 336, 19),
(834, 336, 24),
(835, 336, 25),
(836, 337, 25),
(837, 337, 24),
(838, 337, 18),
(839, 338, 24),
(840, 338, 25),
(841, 339, 24),
(842, 339, 25),
(843, 340, 25),
(844, 340, 24),
(845, 341, 25),
(846, 341, 24),
(847, 342, 24),
(848, 342, 25),
(849, 343, 25),
(850, 343, 24),
(851, 344, 24),
(852, 344, 25),
(853, 345, 25),
(854, 345, 24),
(855, 346, 25),
(856, 346, 24),
(857, 347, 24),
(858, 347, 25),
(859, 348, 25),
(860, 348, 24),
(861, 349, 24),
(862, 349, 25),
(863, 350, 25),
(864, 350, 24),
(865, 351, 25),
(866, 351, 24),
(867, 352, 24),
(868, 352, 25),
(869, 353, 24),
(870, 353, 25),
(871, 354, 24),
(872, 354, 25),
(873, 355, 25),
(874, 355, 24),
(875, 356, 24),
(876, 356, 25),
(877, 357, 25),
(878, 357, 24),
(879, 357, 18),
(880, 358, 25),
(881, 359, 25),
(882, 360, 25),
(883, 360, 24),
(884, 361, 25),
(885, 362, 24),
(886, 363, 25),
(887, 364, 25),
(888, 364, 24),
(889, 364, 18),
(890, 365, 24),
(891, 365, 25),
(892, 366, 24),
(893, 367, 24),
(894, 368, 24),
(895, 369, 24),
(896, 369, 25),
(897, 370, 25),
(898, 370, 24),
(899, 371, 24),
(900, 371, 25),
(901, 372, 25),
(902, 373, 24),
(903, 374, 24),
(904, 375, 25),
(905, 376, 24),
(906, 377, 24),
(907, 378, 24),
(908, 379, 24),
(909, 380, 24),
(910, 381, 24),
(911, 382, 25),
(912, 383, 24),
(913, 384, 24),
(914, 385, 24),
(915, 386, 24),
(916, 387, 24),
(917, 388, 19),
(918, 389, 24),
(919, 390, 24),
(920, 391, 24),
(921, 392, 24),
(922, 393, 24),
(923, 394, 19),
(924, 395, 24),
(925, 396, 24),
(926, 397, 24),
(927, 398, 25),
(928, 398, 24),
(929, 399, 25),
(930, 400, 24),
(931, 401, 24),
(932, 402, 24),
(933, 403, 25),
(934, 404, 24),
(935, 405, 23),
(936, 406, 25),
(937, 407, 25),
(938, 408, 24),
(939, 409, 25),
(940, 410, 24),
(941, 410, 25),
(942, 411, 24),
(943, 412, 24),
(944, 413, 24),
(945, 414, 24),
(946, 415, 24),
(947, 416, 25),
(948, 416, 24),
(949, 417, 24),
(950, 419, 25),
(951, 419, 24),
(952, 419, 17),
(953, 420, 19),
(954, 421, 19),
(955, 421, 24),
(956, 422, 24),
(957, 422, 25),
(958, 423, 24),
(959, 424, 24),
(960, 425, 24),
(961, 426, 24),
(962, 427, 25),
(963, 427, 24),
(964, 427, 17),
(965, 428, 17),
(966, 429, 17),
(967, 430, 17),
(968, 431, 17),
(969, 432, 17),
(970, 433, 17),
(971, 434, 17),
(972, 435, 17),
(973, 436, 17),
(974, 437, 17),
(975, 438, 17),
(976, 439, 17),
(977, 440, 25),
(978, 440, 24),
(979, 440, 17),
(980, 441, 24),
(981, 442, 24),
(982, 443, 24),
(983, 444, 24),
(984, 445, 24),
(985, 446, 24),
(986, 447, 24),
(987, 448, 24),
(988, 449, 24),
(989, 450, 24),
(990, 451, 21),
(991, 452, 24),
(992, 452, 25),
(993, 453, 24),
(994, 454, 24),
(995, 455, 24),
(996, 456, 21),
(997, 457, 25),
(998, 457, 24),
(999, 458, 24),
(1000, 601, 9),
(1001, 602, 9),
(1002, 603, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rango` int(2) NOT NULL DEFAULT '6',
  `cedula` varchar(10) NOT NULL,
  `creado` timestamp NULL DEFAULT NULL,
  `actualizado` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `correo`, `password`, `id_rango`, `cedula`, `creado`, `actualizado`) VALUES
(1, 'Roberto', 'veliausca@gmail.com', 'prueba@gmail.com', '0b62c626c9081cb206af474e22373b97a6725a65', 1, '', '2018-03-13 01:03:02', '2018-04-03 23:34:26'),
(10, 'Agencia1', 'agencia1', 'agencia@gmail.com', '0b62c626c9081cb206af474e22373b97a6725a65', 3, '', '2018-03-28 23:58:49', '2018-04-05 18:59:58'),
(11, 'Subagent', 'prueba51', 'prueba5@gmail.com', '318eb8ae716fef46c995838be5deeac6775d5f35', 4, '', '2018-04-07 00:13:57', '2018-04-07 00:13:57'),
(12, 'Cliente Uno', 'cliente1', 'cliente@gmail.com', '0b62c626c9081cb206af474e22373b97a6725a65', 6, '', NULL, NULL),
(13, 'harold', 'helios', 'INFO@PRAXISCREATIVA.COM', '318eb8ae716fef46c995838be5deeac6775d5f35', 6, '', '2018-04-13 00:57:26', '2018-04-13 00:57:26'),
(14, 'administrador 1', 'niveladmin', 'admin@gmail.com', '318eb8ae716fef46c995838be5deeac6775d5f35', 2, '', '2018-04-26 01:24:50', '2018-04-26 01:24:50'),
(15, 'alejandro', 'alejandro', 'alejaramillo@gmail.com', '318eb8ae716fef46c995838be5deeac6775d5f35', 6, '123', '2018-04-26 17:56:31', '2018-04-26 17:59:10'),
(16, 'Prueba', 'prueba_ag', 'pruebaag@gmail.com', '123456', 3, '', '2018-04-05 08:00:00', NULL),
(17, 'Sub Agencias', 'subagencia', 'subagencia@gamil.com', '123456', 4, '', '2018-04-05 08:00:00', NULL),
(18, 'Taquilla', 'taquilla', 'taquilla@gmail.com', '123456', 5, '', '2018-04-05 08:00:00', NULL),
(19, 'Taquilla 2', 'taquilla2', 'taquilla2@taquilla2.com', '123456', 6, '11222333', '2018-05-14 04:00:00', '2018-05-14 04:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balances_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `configuracion_impresora`
--
ALTER TABLE `configuracion_impresora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dividendos`
--
ALTER TABLE `dividendos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historico_transacciones`
--
ALTER TABLE `historico_transacciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugadas`
--
ALTER TABLE `jugadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `oauth`
--
ALTER TABLE `oauth`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `rangos`
--
ALTER TABLE `rangos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recargas`
--
ALTER TABLE `recargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sorteos`
--
ALTER TABLE `sorteos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sub_agencias`
--
ALTER TABLE `sub_agencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_agencia` (`id_agencia`);

--
-- Indices de la tabla `taquillas`
--
ALTER TABLE `taquillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo` (`codigo`),
  ADD KEY `id_subagencia` (`id_subagencia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_sorteo`
--
ALTER TABLE `ticket_sorteo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencias`
--
ALTER TABLE `agencias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT de la tabla `configuracion_impresora`
--
ALTER TABLE `configuracion_impresora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `dividendos`
--
ALTER TABLE `dividendos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `historico_transacciones`
--
ALTER TABLE `historico_transacciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `jugadas`
--
ALTER TABLE `jugadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
--
-- AUTO_INCREMENT de la tabla `oauth`
--
ALTER TABLE `oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `rangos`
--
ALTER TABLE `rangos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `recargas`
--
ALTER TABLE `recargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sorteos`
--
ALTER TABLE `sorteos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `sub_agencias`
--
ALTER TABLE `sub_agencias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `taquillas`
--
ALTER TABLE `taquillas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
--
-- AUTO_INCREMENT de la tabla `ticket_sorteo`
--
ALTER TABLE `ticket_sorteo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agencias`
--
ALTER TABLE `agencias`
  ADD CONSTRAINT `agencias_usuario_id_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sub_agencias`
--
ALTER TABLE `sub_agencias`
  ADD CONSTRAINT `subagencias_agencia_id_foreign` FOREIGN KEY (`id_agencia`) REFERENCES `agencias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subagencias_usuario_id_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `taquillas`
--
ALTER TABLE `taquillas`
  ADD CONSTRAINT `taquillas_subagencia_id_foreign` FOREIGN KEY (`id_subagencia`) REFERENCES `sub_agencias` (`id`),
  ADD CONSTRAINT `taquillas_usuario_id_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
