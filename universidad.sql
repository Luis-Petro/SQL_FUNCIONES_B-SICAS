-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2022 a las 14:44:40
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
-- Base de datos: `universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(5) NOT NULL,
  `valor` float NOT NULL,
  `id_estudiante` int(5) NOT NULL,
  `id_curso` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `valor`, `id_estudiante`, `id_curso`) VALUES
(1, 3, 4, 4),
(2, 0, 9, 8),
(7, 6, 1, 11),
(12, 4.5, 5, 8),
(13, 4.6, 1, 11),
(14, 3.9, 10, 12),
(15, 2.9, 5, 5),
(16, 4.1, 6, 4),
(17, 5, 1, 7),
(18, 3.1, 3, 8),
(19, 4, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(5) NOT NULL,
  `refencia` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `id_materia` int(5) NOT NULL,
  `id_profesor` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `refencia`, `id_materia`, `id_profesor`) VALUES
(3, 'CALCULO I 2019', 4, 5),
(4, 'CALCULO II 2019', 2, 8),
(5, 'LOGICA COMPUTAC', 5, 6),
(6, 'PROGRAMACIÓN II', 7, 1),
(7, 'LOGICA COMPUTAC', 5, 3),
(8, 'IGLES II 2019', 10, 10),
(9, 'INGLES I 2019', 9, 9),
(10, 'PROGRAMACIÓN II', 8, 3),
(11, 'CALCULO III 201', 3, 4),
(12, 'CALCULO I 2019', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(5) NOT NULL,
  `document` bigint(15) NOT NULL,
  `name` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `document`, `name`, `email`) VALUES
(1, 1070821776, 'Luis Petro Herrera', 'luispetro1994@cosa.com'),
(2, 1089037266, 'Ana Maria Doria', 'ana@gmail.com'),
(3, 1903038263, 'Javier Romero', 'Jacho@gmail.com'),
(4, 1089032663, NULL, 'Jose@gmail.com'),
(5, 1908326453, 'Eddy Peña', 'Eddy@gmail.com'),
(6, 1070832773, 'Emanuel Guzman ', 'Emanuel@gmail.com'),
(7, 1090835633, 'Santiago de la Hoz', 'Santiago@gmail.com'),
(8, 1909212343, 'Amaury', 'amaury@gmail.com'),
(9, 1093043233, 'Kathy Muñoz', 'Kathy@gmail.com'),
(10, 1239874562, 'Luis González', 'gonzalez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(5) NOT NULL,
  `name` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `credits` int(2) NOT NULL,
  `Categoria` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `name`, `credits`, `Categoria`) VALUES
(1, 'Calculo I', 3, 'Matematicas'),
(2, 'Calculo II', 3, 'Matematicas'),
(3, 'Calculo III', 3, 'Matematicas'),
(4, 'Ecuaciones', 3, 'Matematicas'),
(5, 'Lógica Comunicacional', 3, 'Programación'),
(6, 'Programación I', 4, 'Programación'),
(7, 'Programación II', 4, 'Programación'),
(8, 'Programación III', 4, 'Programación'),
(9, 'Ingles I', 2, 'Lenguas extranjeras'),
(10, 'Ingles II', 2, 'Lenguas extranjeras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(5) NOT NULL,
  `document` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `document`, `name`, `titulo`) VALUES
(1, 1234567890, 'Isaac Caicedo', 'Ingeniero de sistemas'),
(2, 1098765432, 'Ruben Bahena', 'Ingeniero de sistemas'),
(3, 1097987678, 'Francisco', 'Ingeniero industrial'),
(4, 1098765456, 'Luis Petro Herrera', 'Ingeniero de sistemas'),
(5, 6789064324, 'Ricardo Guzman', 'Matematico'),
(6, 678906544, 'Pier Peña', 'Ingeniero de sistemas'),
(7, 1234567890, 'Antonio Barrios', 'Ingeniero de sistemas'),
(8, 987654320, 'Damit Vergara', 'Matemático'),
(9, 1234567760, 'Jorge Blanco', 'Ingles'),
(10, 653543542, 'Aura Pinzon', 'Ingles');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_materia` (`id_materia`,`id_profesor`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
