-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2023 a las 15:05:34
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecosuelos_cbc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_suelo`
--

CREATE TABLE `datos_de_suelo` (
  `Pendiente` int(10) NOT NULL,
  `Erosion` varchar(20) NOT NULL,
  `Movimiento_en_masa` varchar(20) NOT NULL,
  `Drenaje_natural` varchar(20) NOT NULL,
  `Inundaciones` varchar(20) NOT NULL,
  `Encharcamientos` varchar(20) NOT NULL,
  `Profundidad_efectiva` varchar(10) NOT NULL,
  `Textura` varchar(20) NOT NULL,
  `Fragmentos_en_el_suelo` int(10) NOT NULL,
  `Pedregosidad_superficial` int(10) NOT NULL,
  `Afloramiento_rocoso` int(10) NOT NULL,
  `Fertilidad` varchar(20) NOT NULL,
  `Contenido_de_sales` varchar(20) NOT NULL,
  `Contenido_de_sodio` varchar(20) NOT NULL,
  `Sales_de_sodio` varchar(20) NOT NULL,
  `Ca_/_Mg` varchar(20) NOT NULL,
  `Saturación_de_aluminio` int(10) NOT NULL,
  `Distribución_de_lluvias` int(10) NOT NULL,
  `Piso_térmico` varchar(20) NOT NULL,
  `Condición_de_humedad` varchar(20) NOT NULL,
  `Temperatura/helada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(11) NOT NULL,
  `Nom_usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `Nom_usuario`, `Contraseña`) VALUES
(1, 'ADMIN', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
