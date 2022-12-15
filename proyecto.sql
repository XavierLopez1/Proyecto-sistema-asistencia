-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2022 a las 05:28:49
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Cveprof` int(11) NOT NULL,
  `Escuela` varchar(255) NOT NULL,
  `Docente` varchar(255) NOT NULL,
  `Grado` int(3) NOT NULL,
  `Materia` varchar(255) NOT NULL,
  `Ano` int(4) NOT NULL,
  `Mes` varchar(255) NOT NULL,
  `Asistencia` int(11) NOT NULL,
  `Ausencia` int(11) NOT NULL,
  `Tardanza` int(11) NOT NULL,
  `Justificacion` int(11) NOT NULL,
  `Activo` char(1) NOT NULL,
  `Creado` timestamp NULL DEFAULT current_timestamp(),
  `Modificado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `Nombre`, `Apellidos`, `Cveprof`, `Escuela`, `Docente`, `Grado`, `Materia`, `Ano`, `Mes`, `Asistencia`, `Ausencia`, `Tardanza`, `Justificacion`, `Activo`, `Creado`, `Modificado`) VALUES
(1, 'xavier de jesus', 'lopez velasco', 19350302, 'ITTUX', 'Julio Aguilar', 0, '', 7, 'Enero', 10, 2, 1, 1, 'S', '2022-12-02 02:36:15', '2022-12-29 02:36:15'),
(2, 'Jose Fernando', 'Navarrete Valladares', 19350311, 'Ittux', 'Jose Alberto Villalobos Serrano', 8, 'Administracion de Redes', 2022, 'Noviembre', 12, 2, 2, 2, '1', '2022-12-03 03:14:26', '2022-12-16 03:14:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
