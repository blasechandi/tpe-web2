-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 00:20:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_perifericos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periferico`
--

CREATE TABLE `periferico` (
  `id` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL,
  `id_tipo_periferico` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `periferico`
--

INSERT INTO `periferico` (`id`, `marca`, `nombre`, `color`, `descripcion`, `precio`, `id_tipo_periferico`) VALUES
(8, 'Razer', 'Huntsman V2 Tenkeyless', 'Negro', 'Teclado  mecanico con switches razer lineal optical.', 35000, 'Teclado'),
(9, 'Razer', 'BlackShark V2 X', 'Rosa', 'Auriculares multi-plataforma con cable diseñados para E-sports', 18000, 'Auricular'),
(11, 'Razer', 'Barracuda X', 'Blanco', 'Auriculares wireless multiplataforma ', 32000, 'Auricular'),
(12, 'Razer', 'Deathadder V2 Pro', 'Negro', 'Mouse gaming wireless - 16k dpi ', 22000, 'Mouse'),
(14, 'Logitech', 'G PRO Wireless', 'Blanco', 'Mouse Logitech Wireless 16.000 dpi sensor Hero diseñado para e-sports', 18290, 'Mouse'),
(15, 'HyperX', 'Pulsefire Haste', 'Negro', 'Mouse con diseño de agujeros de panal de abeja, sensor PAW3335 1000hz 16k dpi', 7890, 'Mouse'),
(16, 'Logitech', 'G240', 'Negro', 'Pad Logitech 280mm x 340mm ', 3000, 'Pad'),
(17, 'Redragon', 'Kumara  K552', 'Blanco', 'Teclado mecanico redragon switches blue', 9500, 'Teclado'),
(20, 'Logitech', 'G440 ', 'Negro', 'Pad Logitech XL para Gaming', 6430, 'Pad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_periferico`
--

CREATE TABLE `tipo_periferico` (
  `id` int(11) NOT NULL,
  `id_tipo_periferico` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_periferico`
--

INSERT INTO `tipo_periferico` (`id`, `id_tipo_periferico`) VALUES
(3, 'Auricular'),
(6, 'Mouse'),
(7, 'Pad'),
(5, 'Teclado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', '$2a$12$KSIOLuQoViaAiZQkpw3QEud8Jry08ZM/gxZdvVG9UkXbTLa69Pj8K');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_periferico` (`id_tipo_periferico`);

--
-- Indices de la tabla `tipo_periferico`
--
ALTER TABLE `tipo_periferico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_periferico` (`id_tipo_periferico`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `periferico`
--
ALTER TABLE `periferico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tipo_periferico`
--
ALTER TABLE `tipo_periferico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD CONSTRAINT `periferico_ibfk_1` FOREIGN KEY (`id_tipo_periferico`) REFERENCES `tipo_periferico` (`id_tipo_periferico`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
