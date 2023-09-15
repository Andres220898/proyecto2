-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2023 a las 04:19:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appvicola2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance`
--

CREATE TABLE `balance` (
  `referencia_balance` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `n_venta` int(10) UNSIGNED NOT NULL,
  `n_egresos` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `balance`
--

INSERT INTO `balance` (`referencia_balance`, `fecha`, `n_venta`, `n_egresos`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
('1', '2001-01-23', 1, 1, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
('10', '2002-01-23', 10, 10, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
('11', '2003-01-23', 11, 11, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
('12', '2001-01-23', 12, 12, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
('13', '2012-03-23', 13, 13, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
('14', '2020-06-23', 14, 14, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
('15', '2002-01-23', 15, 15, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
('2', '2012-03-23', 2, 2, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
('3', '2020-06-23', 3, 3, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
('4', '2002-01-23', 4, 4, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
('5', '2003-01-23', 5, 5, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
('6', '2030-01-23', 6, 6, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
('7', '2001-01-23', 7, 7, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
('8', '2012-03-23', 8, 8, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
('9', '2020-06-23', 9, 9, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `n_cliente` int(10) UNSIGNED NOT NULL,
  `tipo_cliete` varchar(10) DEFAULT NULL,
  `documento_cliente` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL,
  `registro_direccion` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`n_cliente`, `tipo_cliete`, `documento_cliente`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`, `registro_direccion`) VALUES
(2, 'PASIVO', 1002365478, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 1),
(3, 'PASIVO', 1013215478, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 2),
(4, 'ACTIVO', 1000036598, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 3),
(5, 'ACTIVO', 1000107462, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4),
(6, 'PASIVO', 1001741963, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 5),
(7, 'ACTIVO', 1002124578, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S', 6),
(8, 'ACTIVO', 1001236598, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S', 7),
(9, 'PASIVO', 1000003265, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 8),
(10, 'ACTIVO', 79546872, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S', 9),
(11, 'ACTIVO', 78965232, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 10),
(12, 'PASIVO', 4294967295, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `n_despacho` int(10) UNSIGNED NOT NULL,
  `estado_entrega` varchar(20) DEFAULT NULL,
  `n_domiciliarion` int(10) UNSIGNED NOT NULL,
  `n_ruta` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `despacho`
--

INSERT INTO `despacho` (`n_despacho`, `estado_entrega`, `n_domiciliarion`, `n_ruta`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(2, 'ENTREGADO', 4, 1, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(3, 'EN CAMINO', 5, 2, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(4, 'ALISTANDO', 6, 3, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(5, 'EN CAMINO', 4, 4, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(6, 'EN CAMINO', 4, 5, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(7, 'ALISTANDO', 5, 6, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(8, 'ENTREGADO', 6, 7, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(9, 'ALISTANDO', 6, 8, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(10, 'EN CAMINO', 4, 9, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(11, 'ENTREGADO', 5, 10, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(12, 'ALISTANDO', 6, 11, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(13, 'ALISTANDO', 5, 12, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(14, 'EN CAMINO', 4, 13, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(15, 'ALISTANDO', 4, 14, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(16, 'ENTREGADO', 6, 15, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `n_venta` int(10) UNSIGNED NOT NULL,
  `cantidad` smallint(6) NOT NULL,
  `total_impuesto` decimal(10,0) UNSIGNED NOT NULL,
  `valo_unitario` decimal(10,0) UNSIGNED NOT NULL,
  `total_venta` decimal(10,0) UNSIGNED NOT NULL,
  `n_producto` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`n_venta`, `cantidad`, `total_impuesto`, `valo_unitario`, `total_venta`, `n_producto`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 10, 19000, 5000, 100000, 2, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, 15, 23454, 9000, 123441, 3, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, 6, 66017, 5000, 347456, 4, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, 4, 1099068, 16000, 5784567, 5, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, 3, 86805, 22000, 456867, 6, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(6, 8, 10789, 10000, 56785, 7, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(7, 7, 6568, 24000, 34566, 8, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(8, 11, 657, 16000, 3456, 9, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, 12, 2345, 24000, 12344, 10, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(10, 13, 129004, 20000, 678967, 11, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, 7, 6559, 30000, 34522, 12, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(12, 8, 12630, 16000, 66473, 13, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(13, 6, 166379, 20000, 875678, 14, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(14, 5, 2516, 30000, 13242, 15, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(15, 1, 867074, 10000, 4563546, 16, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domiciliario`
--

CREATE TABLE `domiciliario` (
  `n_domiciliarion` int(10) UNSIGNED NOT NULL,
  `n_licencia` bigint(20) UNSIGNED NOT NULL,
  `documento_domiciliario` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `domiciliario`
--

INSERT INTO `domiciliario` (`n_domiciliarion`, `n_licencia`, `documento_domiciliario`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(4, 70156452, 764521036, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, 90011467, 84963251, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(6, 60123123, 92658132, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio_cliente`
--

CREATE TABLE `domicilio_cliente` (
  `registro_direccion` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `localidad` varchar(20) DEFAULT NULL,
  `barrio` varchar(20) DEFAULT NULL,
  `avenida` varchar(20) DEFAULT NULL,
  `calle` varchar(10) DEFAULT NULL,
  `carrera` varchar(10) DEFAULT NULL,
  `tranversal` varchar(10) DEFAULT NULL,
  `diagonal` varchar(10) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `domicilio_cliente`
--

INSERT INTO `domicilio_cliente` (`registro_direccion`, `ciudad`, `localidad`, `barrio`, `avenida`, `calle`, `carrera`, `tranversal`, `diagonal`, `numero`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 'bogota', 'usaqen', 'Veraguas', 'NULL', 'calle27 d ', 'NULL', 'NULL', 'NULL', '27 c 51', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, 'bogota', 'chapinero', 'El Progreso', 'NULL', 'NULL', 'NULL', 'NULL', 'diagonal 4', '41 61', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, 'bogota', 'santa fe', 'Eduardo Santos', 'NULL', 'NULL', 'carrera 23', 'NULL', 'NULL', '35-48', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, 'bogota', 'san critobal', 'El Vergel', 'NULL', 'calle 35', 'NULL', 'NULL', 'NULL', '33-29', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, 'bogota', 'usme', 'Santa Isabel', 'NULL', 'NULL', 'carrera 53', 'NULL', 'NULL', '70-56', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(6, 'bogota', 'tunjuelito', 'La Pepita', 'avenida el dorado', 'NULL', 'NULL', 'NULL', 'NULL', '68d-33', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(7, 'bogota', 'bosa', 'Santa Fe', 'NULL', 'NULL', 'NULL', 'transversa', 'NULL', '41a-85sur', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(8, 'bogota', 'kennedy', 'Florida', 'NULL', 'calle35est', 'NULL', 'NULL', 'NULL', '38d-33sur', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, 'bogota', 'usme', 'Usatama', 'avenida 6 a', 'NULL', 'NULL', 'NULL', 'NULL', '20norte-06', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(10, 'bogota', 'suba', 'Panamericano', 'NULL', 'NULL', 'carrera 8', 'NULL', 'NULL', '93-03', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, 'bogota', 'bosa', 'La Sabana', 'NULL', 'calle 11', 'NULL', 'NULL', 'NULL', '8-17', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `n_egresos` int(10) UNSIGNED NOT NULL,
  `nombre_egreso` varchar(30) NOT NULL,
  `valor` decimal(10,0) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `egresos`
--

INSERT INTO `egresos` (`n_egresos`, `nombre_egreso`, `valor`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 'POLLO', 110000, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, 'HUEVOS', 45000, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, 'LECHE', 312200, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, 'QUESO', 458800, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, 'POLLO', 63200, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(6, 'HUEVOS', 315000, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(7, 'LECHE', 100000, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(8, 'BOLSA', 50000, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, 'POLLO', 500000, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(10, 'HUEVOS', 150000, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, 'LECHE', 48600, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(12, 'HUEVOS', 560500, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(13, 'POLLO', 498200, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(14, 'RECIBO', 1020500, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(15, 'QUESO', 30000, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo_stock`
--

CREATE TABLE `flujo_stock` (
  `n_flujo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `saldo` int(10) UNSIGNED NOT NULL,
  `tipo_flujo` char(1) DEFAULT NULL,
  `n_producto` int(10) UNSIGNED DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `flujo_stock`
--

INSERT INTO `flujo_stock` (`n_flujo`, `cantidad`, `saldo`, `tipo_flujo`, `n_producto`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(3, 10, 0, 'E', 2, '2023-04-01 00:00:00', '2023-04-01 00:00:00', 'S'),
(4, 5, 10, 'E', 3, '2023-04-03 00:00:00', '2023-04-03 00:00:00', 'S'),
(5, 15, 0, 'E', 4, '2023-04-15 00:00:00', '2023-04-15 00:00:00', 'S'),
(6, 5, 15, 'E', 5, '2023-04-12 00:00:00', '2023-04-12 00:00:00', 'S'),
(7, 16, 0, 'E', 6, '2023-04-15 00:00:00', '2023-04-15 00:00:00', 'S'),
(8, 2, 16, 'E', 7, '2023-04-01 00:00:00', '2023-04-01 00:00:00', 'S'),
(9, 3, 0, 'E', 8, '2023-05-03 00:00:00', '2023-05-03 00:00:00', 'S'),
(10, 6, 3, 'E', 9, '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'S'),
(11, 2, 20, 'S', 10, '2023-04-04 00:00:00', '2023-04-04 00:00:00', 'S'),
(12, 4, 15, 'S', 11, '2023-04-20 00:00:00', '2023-04-20 00:00:00', 'S'),
(13, 3, 18, 'S', 12, '2023-04-03 00:00:00', '2023-04-03 00:00:00', 'S'),
(14, 1, 9, 'S', 13, '2023-04-15 00:00:00', '2023-04-15 00:00:00', 'S'),
(15, 13, 0, 'E', 14, '2023-04-12 00:00:00', '2023-04-12 00:00:00', 'S'),
(16, 6, 0, 'E', 15, '2023-04-15 00:00:00', '2023-04-15 00:00:00', 'S'),
(17, 9, 0, 'E', 16, '2023-04-01 00:00:00', '2023-04-01 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

CREATE TABLE `gerente` (
  `n_gerente` int(10) UNSIGNED NOT NULL,
  `rut` varchar(15) DEFAULT NULL,
  `documento_gerente` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gerente`
--

INSERT INTO `gerente` (`n_gerente`, `rut`, `documento_gerente`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, '09-0011467', 1001077496, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id_metodo` int(10) UNSIGNED NOT NULL,
  `tipo_pago` varchar(15) NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id_metodo`, `tipo_pago`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 'EFECTIVO', '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(2, 'TRANSACCION', '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(3, 'PSE', '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_venta`
--

CREATE TABLE `orden_venta` (
  `n_orden` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `id_metodo` int(10) UNSIGNED NOT NULL,
  `n_venta` int(10) UNSIGNED NOT NULL,
  `n_pedido` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_venta`
--

INSERT INTO `orden_venta` (`n_orden`, `fecha`, `id_metodo`, `n_venta`, `n_pedido`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, '2023-04-02', 1, 1, 1, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, '2023-04-02', 1, 2, 2, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, '2023-04-03', 1, 3, 3, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, '2023-04-03', 2, 4, 4, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, '2023-04-05', 2, 5, 5, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(6, '2023-04-05', 1, 6, 6, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(7, '2023-04-06', 1, 7, 7, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(8, '2023-04-08', 1, 8, 8, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, '2023-04-08', 3, 9, 9, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(10, '2023-04-09', 1, 10, 10, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, '2023-04-09', 1, 11, 11, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(12, '2023-04-09', 3, 12, 12, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(13, '2023-04-10', 1, 13, 13, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(14, '2023-04-15', 2, 14, 14, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(15, '2023-04-16', 1, 15, 15, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `n_pedido` int(10) UNSIGNED NOT NULL,
  `estado_pedido` varchar(10) DEFAULT NULL,
  `valor_envio` decimal(10,0) UNSIGNED DEFAULT NULL,
  `n_cliente` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`n_pedido`, `estado_pedido`, `valor_envio`, `n_cliente`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 'BUENO', 3000, 2, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, 'BUENO', 4000, 4, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, 'BUENO', 5000, 6, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, 'BUENO', 8000, 7, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, 'BUENO', 10000, 8, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(6, 'BUENO', 6000, 9, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(7, 'BUENO', 2000, 4, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(8, 'BUENO', 3000, 5, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, 'BUENO', 4000, 10, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(10, 'BUENO', 5000, 7, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, 'BUENO', 8000, 6, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(12, 'BUENO', 10000, 2, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(13, 'BUENO', 6000, 2, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(14, 'BUENO', 2000, 12, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(15, 'BUENO', 4000, 12, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `documento` int(10) UNSIGNED NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `primer_nombre` varchar(10) NOT NULL,
  `segundo_nombre` varchar(10) DEFAULT NULL,
  `primer_apellido` varchar(10) NOT NULL,
  `segundo_apellido` varchar(10) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL,
  `contraseña` varchar(40) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`documento`, `tipo_documento`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`, `contraseña`, `id_rol`, `direccion`, `correo`, `celular`) VALUES
(78965232, 'CC', 'Harrison', 'Stiven', 'Sierra', 'Rodriguez', '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(79546872, 'CC', 'Valentina', 'Marcela', 'Caceres', 'Martinez', '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(84963251, 'CC', 'Juan', 'Felipe', 'Tellez', 'Vega', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(92658132, 'CC', 'Jerson', 'Duvan', 'Stick', 'Sanchez', '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(764521036, 'CC', 'Jean', 'Carlos', 'Prieto', 'Martinez', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1000003265, 'CC', 'Laura', 'Daniela', 'Rodriguez', 'Rodriguez', '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1000036598, 'CC', 'Cindy', 'Juan', 'Bedoya', 'Mejia', '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1000107462, 'CC', 'David', 'Manuel', 'Perez', 'Garcia', '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1001077496, 'CC', 'Daniela', 'Valentina', 'Perez', 'Martinez', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1001236598, 'CC', 'Lorena', 'Stefanya', 'Rodriguez', 'Guaqueta', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1001741963, 'CC', 'Jonathan', 'Alejandro', 'Dueñas', 'Velasquez', '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1002124578, 'CC', 'Johana', 'Stefania', 'Puerta', 'Niño', '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1002365478, 'CC', 'Alejandro', 'Stiven', 'Rodriguez', 'Rodriguez', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1013215478, 'CC', 'Manuel', 'Alejandro', 'Mora', 'Garcia', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL),
(1080290640, '', 'Diego', 'Andres', 'Joven', 'Velasquez', NULL, NULL, NULL, '123456', NULL, '', 'diego@gmail.com', '3153262616'),
(4294967295, 'CC', 'Andrea', 'Esperanza', 'Bueno', 'Camargo', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `n_producto` int(10) UNSIGNED NOT NULL,
  `nombre_producto` varchar(40) NOT NULL,
  `precio_venta` decimal(10,0) UNSIGNED NOT NULL,
  `precio_compra` decimal(10,0) UNSIGNED NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `id_categoria` int(10) UNSIGNED DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL,
  `n_proveedor` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`n_producto`, `nombre_producto`, `precio_venta`, `precio_compra`, `fecha_caducidad`, `id_categoria`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`, `n_proveedor`) VALUES
(2, 'Hígado de pollo', 5000, 4000, '2023-04-20', NULL, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4),
(3, 'Mollejas de pollo', 9000, 7000, '2023-05-30', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 4),
(4, 'Pechuga de pollo', 5000, 4500, '2023-05-01', NULL, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 4),
(5, 'Muslos de pollo', 16000, 11000, '2023-05-20', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4),
(6, 'Pollo entero', 22000, 15000, '2023-04-28', NULL, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 4),
(7, 'pechuga de pavo', 10000, 5000, '2023-04-20', NULL, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S', 4),
(8, 'Cerdo en trozos', 24000, 20000, '2023-05-30', NULL, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S', 1),
(9, 'Chorizo', 16000, 12000, '2023-05-01', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 2),
(10, 'Salchichón', 24000, 20000, '2023-05-20', NULL, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S', 3),
(11, 'Jamón de cerdo', 20000, 18000, '2023-04-28', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 2),
(12, 'Queso campesino', 30000, 29000, '2023-04-20', NULL, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 3),
(13, 'Queso doble crema', 16000, 11000, '2023-05-30', NULL, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 1),
(14, 'Muslos de pavo', 20000, 16000, '2023-05-01', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 2),
(15, 'Jamon de pavo', 30000, 24000, '2023-05-20', NULL, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 4),
(16, 'Pavo entero', 10000, 7500, '2023-04-28', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `n_proveedor` int(10) UNSIGNED NOT NULL,
  `nombre_proveedor` varchar(30) NOT NULL,
  `telefono` bigint(20) UNSIGNED NOT NULL,
  `empresa` varchar(40) NOT NULL,
  `documento_proveedor` int(10) UNSIGNED NOT NULL,
  `ubicacion` varchar(40) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`n_proveedor`, `nombre_proveedor`, `telefono`, `empresa`, `documento_proveedor`, `ubicacion`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, 'Joan ', 3015647956, 'Carnicos SAS', 4294967295, 'Bogota', '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, 'Daniel', 3035627156, 'LacteosAndre', 764521036, 'Bogota', '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, 'Walter', 3126283576, 'MataderoRES', 84963251, 'Bogota', '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, 'Andres', 3133691475, 'GranjaHuevos', 92658132, 'Bogota', '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(20) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `n_ruta` int(10) UNSIGNED NOT NULL,
  `fecha_domicilio` date NOT NULL,
  `hora_salida` time NOT NULL,
  `hora_llegada` time NOT NULL,
  `distancia` float NOT NULL,
  `n_orden` int(10) UNSIGNED NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`n_ruta`, `fecha_domicilio`, `hora_salida`, `hora_llegada`, `distancia`, `n_orden`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`) VALUES
(1, '2023-04-20', '10:32:00', '10:48:00', 10, 1, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(2, '2023-05-30', '14:53:00', '15:26:00', 26, 2, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(3, '2023-05-01', '14:12:00', '14:18:00', 7, 3, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(4, '2023-05-20', '09:08:00', '09:24:00', 14, 4, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(5, '2023-04-28', '10:32:00', '10:48:00', 10, 5, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(6, '2023-04-20', '14:53:00', '15:27:00', 26, 6, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S'),
(7, '2023-05-30', '14:12:00', '14:18:00', 7, 7, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S'),
(8, '2023-05-01', '09:08:00', '09:24:00', 14, 8, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(9, '2023-05-20', '10:32:00', '10:48:00', 10, 9, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S'),
(10, '2023-04-28', '14:53:00', '15:28:00', 26, 10, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(11, '2023-04-20', '14:12:00', '14:18:00', 7, 11, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S'),
(12, '2023-05-30', '09:08:00', '09:24:00', 14, 12, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S'),
(13, '2023-05-01', '10:32:00', '10:48:00', 10, 13, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S'),
(14, '2023-05-20', '14:53:00', '15:29:00', 26, 14, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S'),
(15, '2023-04-28', '14:12:00', '14:18:00', 7, 15, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL,
  `documento` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_domiciliario`
--

CREATE TABLE `vehiculo_domiciliario` (
  `n_vehiculo` int(10) UNSIGNED NOT NULL,
  `tipo_vehiculo` varchar(20) DEFAULT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` smallint(6) DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime DEFAULT NULL,
  `habilitado` char(1) DEFAULT NULL,
  `n_domiciliario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo_domiciliario`
--

INSERT INTO `vehiculo_domiciliario` (`n_vehiculo`, `tipo_vehiculo`, `marca`, `modelo`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`, `n_domiciliario`) VALUES
(0, 'MOTO', 'AKT', 2023, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4),
(1, 'MOTO', 'AKT', 2023, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4),
(2, 'MOTO', 'PULSAR', 2023, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 5),
(3, 'MOTO', 'APACHE', 2023, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`referencia_balance`),
  ADD KEY `n_venta` (`n_venta`),
  ADD KEY `n_egresos` (`n_egresos`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`n_cliente`),
  ADD KEY `documento_cliente` (`documento_cliente`),
  ADD KEY `registro_direccion` (`registro_direccion`);

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`n_despacho`),
  ADD KEY `n_ruta` (`n_ruta`),
  ADD KEY `n_domiciliarion` (`n_domiciliarion`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`n_venta`),
  ADD KEY `n_producto` (`n_producto`);

--
-- Indices de la tabla `domiciliario`
--
ALTER TABLE `domiciliario`
  ADD PRIMARY KEY (`n_domiciliarion`),
  ADD KEY `documento_domiciliario` (`documento_domiciliario`);

--
-- Indices de la tabla `domicilio_cliente`
--
ALTER TABLE `domicilio_cliente`
  ADD PRIMARY KEY (`registro_direccion`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`n_egresos`);

--
-- Indices de la tabla `flujo_stock`
--
ALTER TABLE `flujo_stock`
  ADD PRIMARY KEY (`n_flujo`),
  ADD KEY `n_producto` (`n_producto`);

--
-- Indices de la tabla `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`n_gerente`),
  ADD KEY `documento_gerente` (`documento_gerente`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id_metodo`);

--
-- Indices de la tabla `orden_venta`
--
ALTER TABLE `orden_venta`
  ADD PRIMARY KEY (`n_orden`),
  ADD KEY `id_metodo` (`id_metodo`),
  ADD KEY `n_venta` (`n_venta`),
  ADD KEY `n_pedido` (`n_pedido`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`n_pedido`),
  ADD KEY `n_cliente` (`n_cliente`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `fk_id_rol` (`id_rol`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`n_producto`),
  ADD KEY `n_proveedor` (`n_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`n_proveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`n_ruta`),
  ADD KEY `n_orden` (`n_orden`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`),
  ADD KEY `documento` (`documento`);

--
-- Indices de la tabla `vehiculo_domiciliario`
--
ALTER TABLE `vehiculo_domiciliario`
  ADD PRIMARY KEY (`n_vehiculo`),
  ADD KEY `n_domiciliario` (`n_domiciliario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `n_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `despacho`
--
ALTER TABLE `despacho`
  MODIFY `n_despacho` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `n_venta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `domiciliario`
--
ALTER TABLE `domiciliario`
  MODIFY `n_domiciliarion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `n_egresos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `flujo_stock`
--
ALTER TABLE `flujo_stock`
  MODIFY `n_flujo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `gerente`
--
ALTER TABLE `gerente`
  MODIFY `n_gerente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id_metodo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orden_venta`
--
ALTER TABLE `orden_venta`
  MODIFY `n_orden` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `n_pedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `n_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `n_proveedor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `n_ruta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `balance`
--
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_ibfk_1` FOREIGN KEY (`n_venta`) REFERENCES `detalle_venta` (`n_venta`),
  ADD CONSTRAINT `balance_ibfk_2` FOREIGN KEY (`n_egresos`) REFERENCES `egresos` (`n_egresos`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`documento_cliente`) REFERENCES `persona` (`documento`),
  ADD CONSTRAINT `registro_direccion` FOREIGN KEY (`registro_direccion`) REFERENCES `domicilio_cliente` (`registro_direccion`);

--
-- Filtros para la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD CONSTRAINT `despacho_ibfk_1` FOREIGN KEY (`n_ruta`) REFERENCES `ruta` (`n_ruta`),
  ADD CONSTRAINT `n_domiciliarion` FOREIGN KEY (`n_domiciliarion`) REFERENCES `domiciliario` (`n_domiciliarion`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`n_producto`) REFERENCES `producto` (`n_producto`);

--
-- Filtros para la tabla `domiciliario`
--
ALTER TABLE `domiciliario`
  ADD CONSTRAINT `domiciliario_ibfk_1` FOREIGN KEY (`documento_domiciliario`) REFERENCES `persona` (`documento`);

--
-- Filtros para la tabla `flujo_stock`
--
ALTER TABLE `flujo_stock`
  ADD CONSTRAINT `flujo_stock_ibfk_1` FOREIGN KEY (`n_producto`) REFERENCES `producto` (`n_producto`);

--
-- Filtros para la tabla `gerente`
--
ALTER TABLE `gerente`
  ADD CONSTRAINT `gerente_ibfk_1` FOREIGN KEY (`documento_gerente`) REFERENCES `persona` (`documento`);

--
-- Filtros para la tabla `orden_venta`
--
ALTER TABLE `orden_venta`
  ADD CONSTRAINT `orden_venta_ibfk_1` FOREIGN KEY (`id_metodo`) REFERENCES `metodo_pago` (`id_metodo`),
  ADD CONSTRAINT `orden_venta_ibfk_2` FOREIGN KEY (`n_venta`) REFERENCES `detalle_venta` (`n_venta`),
  ADD CONSTRAINT `orden_venta_ibfk_3` FOREIGN KEY (`n_pedido`) REFERENCES `pedido` (`n_pedido`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`n_cliente`) REFERENCES `cliente` (`n_cliente`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_id_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`n_orden`) REFERENCES `orden_venta` (`n_orden`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
