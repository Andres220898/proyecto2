-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2023 a las 22:52:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appvico2`
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
  `n_proveedor` int(10) UNSIGNED NOT NULL,
  `imagen` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`n_producto`, `nombre_producto`, `precio_venta`, `precio_compra`, `fecha_caducidad`, `id_categoria`, `fyh_creacion`, `fyh_actualizacion`, `habilitado`, `n_proveedor`, `imagen`) VALUES
(2, 'Hígado de pollo', 5000, 4000, '2023-04-20', NULL, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4, 0x52494646044b00005745425056503820f84a000010de019d012a58028c013e6d329547a422a22525314b98a00d89636d70a2836065937cd70d22f3fa48840d93755949bffde0cf7fac5d529b0f1b3e93feef9f9fb6f765f5a9facba877abbf38fe70de6c5e8e5d54dd0c3eb4bfbc3912f2f3706b91f7e8f9df06bf2d668bfe9f1e7f28eeb1e7f945b750f94fd02ea01f54d1a5a3d1baf9d66f540c31f4f6b9df68de92305873c78d1dc4fc9a1c8262e1919372ef99f2885de26416faed215c021fc5f25f110504ff1f10fb4f044acd8ca3f58ce303e05b691a37e8dadc51ef0d99b0cf8882b01b6da7824130c8ba102963b4d100327b8a5d96c325ff6dc9d450d56b999db2b874f517177e271e9c4924a038ed451abd15fba22b2e5b80b383d8e8a59087b918b7deef5e0a042837e02c2357bed80701a4791c20e9b892db8a965f733e5a6851e8bd04334da6542611d7a67ae23247e7f4c20e1e92bf508167d0246272cb2024bc28434d0b3e59f44e1e97f1e317ea820deeaced7079a4c3441a00868506b1192e57b5307947a7ec29dcbb143207c673f21d72c626f209290328c842af6e5b60acfd11fceecf1a867d3f86d5864a171859506bcfc6b70fbd2e5944017f2f2dcb5d10ba3aa52253d16fef16e60ee04a245dcb28a17d95f4c039d24e0a8d8f81f7954ae1391964a169cc542950ffe0a35d4f966a36b68663242498b0d6f7ca9c246cad8671e3c0c1949f69322d803cb81e5334f26f14bb5c38e4b83ce5ceb70c272cfd5ee12479140cf171286a17a5d7ad718b9ec75371738a5a2cc734e3f648d3e9fa01cfdefd5635e460bcdc0e03102303ce41a1a5e6e54bf33d4dcf44b8d1c00c690963385eac92ebeda3f9774d618ae49b0f847df5db7fdfc0a428c932be28890cb40e5a5ecea6b474a7eb374df04344f3daa4cd1705ff728d50f8865fa664e850183a017ce8053dc70c65369fed383b88b174272c21f234f7a471cc0dcd1615895c13c38eefcfad703b087b1c8dd1924e9978cc10fccb74c083b50ab0218667eda4363333007bceac6805614d75b28ae632a77c900a87e75b92b684a8ccb22b89d5deb742f5d902de19bcfd91b64887d2ecaa24284f848f1f7402c14f5299d7b25020c10145d1a8696471f55e0168040d8f4ff369b32e0eda4a73f55bb0dcb1c79e37d3f7e9aa1f21e3a4f4b1a3ea1623c726934b90e6eb8d4c24b68897391870572055a6769c6b73c8ec48e918e04a0c05072b6b916b943555444b8eb6be61a275ca1d961405733a338d6c1aa204bd612c30a7eacec86fb9506bea8d7597c9ef508288eca588b2b6595ad7f7aa3049473497a6e28f71a73d6adf3bcf27691e5512d00bb5923163da030687e86ab8888473e92d1740b39ee8e144794945cb76acb98646e50cff1c054ee194dfacfe27fd4463f5b3019f999e256ec97a1fa7df9bd1722981b982467d4f8eec960a948fa000497f3dc470f6d13f3ec2af5f0c8678bf9aa53b5f6b9f5833dd3032b46b9bc1c1e731dce6f6975d2b3125b27aad84bfec8542f18d6f12f794d17fc5e6e446ea6f830977150972ea6112a3f7cc709d4a1fe8a5f2a6484d1164d5f96db9e7ae5b02b3ac459e50647a5aba2556ca7b0b1a2d56ff14199f965df46bfcf690bfef95c49daf8a8cfeb9ddbc518fb52e20525012d44e60127ae6379b6ce8f9673cefc541131ae21e2ae5fa6cb9b251ac86443582318b7bc163e2a1a83b8b0e8c50d93d8b8a704d8a166c20f2898c08b2093681285a212ee846c44cf2aee522f721eaf19379d2d9288f62023bd9e91bacfc93fefc21e3ca12a13f30fb1584505aa23a2051e822a8cf3a34e91f9250b4182e8204082c1856b8064f401a324c5ebb38df631aaa1007ab67bf7a1ec304ef36a49383fbd8ccd5d1e5c06d2e3d536ad1b5326a8a7aa9dad9e8614dd13edf88af6f7fa419798d71b2c3ab3ccf6e638453c16efb4deb87620c9952647014f1975c19ddba48000720b5873fdfb77e9dff2616f90449b069b9f0de91298eaab53cc9e15228f8f4e6ecc8e1a8ac6474644e41fe9fe2c03419c78bb1b9b619e507f51693edcbffef889e1fdbb13adb86d9bcf496169e834c73ab9c676cd754ee3cca664469397ab8b5091c42efc6f84bb610df114ed551c1b0f7005a0c4d85cc1d42ca4ae03e8a1285e3b7013783cdda2e847a7e894eb152d57e5aaa6f8d0231d55563a2d073e9bcc2cc7412d9946755df38d0a7a6432872c35eefc35510e8484e55d7f5ff3aa1727ffb305d55672bfece0d1ebf0cb7fa99eac7e87c077be0ed8f9b854a16c9fa426f92df8e0a37322fd0f61502929a48e658f8cae45f14212e491afea6448b9f7086f70d60ca130c6e060b99b41a46f70c6a70658fefb54dace4cfcb976bc91cdbdd08d53050ee56b650e0e185567ad9de45cd3e77d1e19aee1c024959185abfe7fb95402b5c5f47a7b3269e1457223bdc07f205889ca5fc7ace907865e2345c583b7615805f9f17635fac25b5c7fb67e88306e430b87fbb49e534ca6eee2d75165d5380e563336023da2690bd8c44b33a843a708a248707157629adb706ab65f9f1b27b4a0b36bbe24be9d5139e02fede90200c27ed9a6bc8f464691e1f2c2123a1f0a66951c8d4b405fae8f5244ba75119d985bf3f005b38ff1bfb4a34efd0fc8c888c91969201220c82aa45c5db68c6eca04102432ae8ea6977eb8277e0e3b51a8ca783973e300cf8778b3dd560abb020b6fec0f17afadbd7242784f1beed7e36fd527655c82ec7d129ebd8addeac666394e475591761d7ad7d1d61157dd2437d41b40c33fde3c720af00169c00d7b0044bd75fcb81824e9ed9e8cd7b02cc4d89e00c1e0fe5007ffec38a0b678e23a59bd762076c035cd066011c2a5a7c44483138ab329f966d8e4890319106e64f743f93a1a4210c6c6519f36f3dda3791e7a50e9134d289e78902269841838fc21c5b54e481128d66ffe8598d11074f0f1d1b1c63cde5197626cbf601c6a7ba9c0425e0e475256a63ba0c911c4d1db0cc3d2e16165fa27db644df4a3ab540d6b4fb14f53719c529851b44066d416258d6e22d6f590ee4b433671d4a5b8be8c37e6637a7c66ec2c569829eeb4c3b85aa43df25aee8438b52eae7a48ec2aadb3ac14466cb2d1c815acdd0337b676bd41fbd9feb3a5fe883b450e9bd5604dfadb3b85b86a2ce78bda4ed90ef23cd3ad8fb235514a6e3a841e6af66b7fdce0d7ba7c973cbcd74b35d22ef455fc4ad142be125a7dc5037dec13a1299470909e6f1b23651a42ed2a8c23bdba315f3ed5e2425141359198b9fe57ca739753d5baeadb6fcd54d3613bdd5118fb402f404da94d7ba964f06ff10ea7ce14f6b9c16a77efbbec970553f2baa410a6868f4a7badab379dd26dc904d513fedcac8fb09f439db92092a9d2d4a57e4bd0994ef1d26f905b3ab412496be1faa6702a72b660efffe95c1450bb608e12de774df43ddcdda6646505061ce78b01fe2eb2b0ec97411bb97381af9e8544805af9fc091349f25efc082a690dcf877eb47f91e0e2085aef03dfb30ba67f352af59872fc4cae1b0c2851b0065694d23dfbc61c9ceed4fb560fde851666fa40a03a750faf6785338bc6879fe5cd1e3748c2db22705a14f5bfa5ab6111b787a94d049a7813f2350fe8da14b037ac2d5b2294687450bc4b166a7340fbe6e943a29a28c12af3fac3d49f4c33f052e75e796c37021a6a241bbeec541749a3e0e3000cf49fcc18a5e87612ce9b4a17d3a06ff47f7319f53a6f2553e9606acd818a5a15487ba319baf5a07f761657b74615a119976f8451a1f2799b2a8dad9599345d60d17f40320bafe691f799d7458a2f0d66908ae9a613a9b3fe93e06947f021913bb4502d9539e9ef5adaf7ce30b9ff3e21c1fe6145526a2eb3922b550a622a87ae83ba812a13cb914900d3e832bff1fa99f4b95be4f35c8d9a3613d63c0c15b9d843e9e0cbbb87d9ff38942e70708cb9fde995b823f16c9d4445738b72ee3de46835ec6c78e5e2d1699dc43281fe6265241daed23730a6c215f2e588f0e66318f76643c21a5c37833d8f6b7ce9bdf524adb0edf1eace22d26ef7e8bec0379e9db9022d7e4413a096e3e07b6c2d0529455c75fc3c709e78dfcf827bbcd8d8b771bf3f3765ca4f91e4acf6d5b36995bf220957ff0721336e6dade06a4fd038620c2ac5f3a4666f7a6ddc3e8d27b0d8a3afb8e2d749e0fdc5536552934d6c1e460c56d755d7242967261906e83f07db9387c706011c767d2bdc875fe5a5e499d97c433b9b58fc48474753a98d8150c7a1c8f5211cd75da2378848b8de904b0efa3524c6e1be223936fd0adba3ba596923fc80ec2ba5cea6cbf3f1d6a86286df05c0804617f191649f94269b7dd2a76473158b9996fc45aa056e6ff7968c4c8ebf6b59c4237762055a050ac22b4a476dfd0d410370f902ff6c45d1eb6b61b1f47d02b5391786a141bb27f57904dee820694b248ea53b188d081d87fe6e1c3f21476ef8b497d57e1f1346036f52b20cf00263e7eb328d159f5b1b3048069e58823fa4b9e9caf9fcfe1148f8fa281c4fbce504f27bd7d49fc2177d9bb8e1eb00b74a4c7ea0575472b046ab6e5754f3fffaa2f078fec7367c54aaacf425e85564598bc25b2924eea8c64e98a9aee9dd7b29451e5b86ce74ffe948493e82e2e798f3f56c35dcf4579bb2d5e8d7abb70489335bf08abab02e5a431f6b25f70c84f348281cde8453bc7676a835ee99fd61974bfd5f6f42b5bf171fe41fd22981e2c7ef09b0077869aa4b7a856a50bfcaf66921d69ab3f2d0ed54acc839a89187acb13cc87a5fd6d4ba3743e8e3a075994372647c868d81a79f348ba1903b7b804ab3096e159ff40f6f55b423008c4fe1dce287f1918aebecb6fdff6dcf5dbf425f1c73dc7f69316f95a9a4a6d44de141d8c3d7c9d7ebae24c9196d70f93fa6ef672b1abbd9ef2356bfeabd7ff820c98eada05b55efd11b97d48f9e9f7c4eba9d977056d6dcdb0bc299cd78869a19c336bf5535912ea1b8bf099ad16a2eaea28794dd956f52730998bda1681d7eff41c60fb901502a7d91176396d3b498229693115a412729b2230fe8c93d7110b4c8cb67c580ad7f1325931fcd8db462ddfbf89633d5ee92867a0b7619eb8fae4ff2d5550dda100048d1917e2c7c05e0f22fb9cbaf54457e7582c292190579153d19775ca9280a9db21b4ffdee670b64649a98be10e6b88e221c0e25d8c36cbfd55992f2a90ad63590cb34523f35ace4b8860a23a8f0ba64a80b7ecea762733e3f94995937ce0b1b82893ac65d028df040d8cf77dc0668aa45e053d857f3b3935cbd2fc66ca0cc7fb82a42cdc68d9860475959e21addc30971b16447af100cc89be5c75a762e415de103105a9e701467c93e7a629e5c1d30d8bfc880b2abab7db3024af5ed8c000feecd47ae18c9020bc12398003974e00007218fa6622b2ed9996edb5fd6b130ccbeeb19cab3d196284a339692852584eaad3c7a2f3a5bf7400ac04631c8e629ad825e66a56a12dff516f36ac1c850b2c1810554dde15d1bb9b9c18757f8bb639aa47f20e60f26cffbbf680f072cc12a70c3ca77a44f4be474bc15638f3aebc730c3c3639d3567ec9fc8c6d31214cf6a3718eddd4f63c5bea7f3bc11eb2c0da62ccba5f0330971755365f46baec04c6958db1022c0e86598ba7430aeac2a20302bf1c76d9a298d1fe4898f82ea2d7f8648bad4771bb0f9bb0e77b968af6e337da19c1256970122d2b1b8eb1363a8ce60b61141b09694a61641427539d76712831de3deed63b571a2dd2fa67fab4a67a5c97ebca83e0b2b2e91f660bf133dc2057ad95528a99a392f4f86547dc40280576f18ff4a2b164dcf248609f3ba5600158016909577110688004cef85b94cf43aaf011771006ce928e0711c7106028fc7dbe6f2342c28fca14fdffa7b5d8644f5f370257e9fe1350f82f6d49257f9dfdf58b05fa75ff30d64d38e439d2ba82de44ff1a80aed61cf607c31d4d9e58a42a3ab0d86fc128541dedc1459c6f64c94e276bf6b527807462662c8c84e8ba7694da4bcd767a7234bf998d7bdfdbd3843f3c24c44201ad4f60987e398ed4ccbc989f370896dae03f63315ee1f979312b0254ff3544e73d5b011b0788b26dc3a5e29f765a7c6da08cbe1f7733eee841e04229c70e8dfd5b25f58129fbd6c0116fc44793ee3bf20dee47c4510ad33530458ae98c6806fa70d8b405501403e8e7b52c798b332a4d86e377f2ff6af9a97eae2b98a5b8e071e8cba94f95342551ad074cb5080d2eb2cd212f378fd8ed76ee31a1b7e4bbc977a86c6b32a2cc9930fc1ca51cb05225dce44484fd1436b9d06885a25f7051d65a8009625a85cc3e969f663513c9a6419c914fdbe7b5599e6b879259e6b93b96db2fda643afc91771be1d195be5a53d7e77057a850e18f5b36b131e5e1b6f45a47232b931c98e0c502a9473e9e53319f68de8a5e1aee8664103e00001a424290057e04dfed7498cef0f0c33d515e48e9dbcf65ebecbfafc81f6fff897579f114c32fc3c1d7b9951b0153e6386f90f1d6df0ffe6934ba73f046d3a22b2034c9c100ab18988c9832343e0ae510e71c99b4482beea5a06a00a54c72aa107c7674304683952f88590f3c2f768126bd2adc3aa690da3f20e3f3da0cec8b920266a378fdae6a62727dd76eb3e4530a4bffbf91c9cd6e2d7b606a44f27d4e2469f6e0aa4ad5cc30447aa97f17f30c5b46f05061718b81833d64c3c810a4463786ab618fcf6ab273d88f7a5d1f5cf29e3efd0f44f38a31ca359d81c7dd1810c47ea120c26d8b086a642578b91e2dc903ce1ec3c3bca75e5343f63c64797f6084e8b63aba8945043eee41cead73aeabea06e19415695cf816c829cdfa58089c537d14e2515344b266f34e1ed59c20dc0a1fda7e393aca64d5272d7587ec1cab3e00afc4d4f13ff45e23349eb88301094237ce3da539db2d9914a625dfd8fe882ebd4c3e7d20e4d68c29edb5fe289ecd3fd28ec09cad94e7e49b9a2ac5f253d61c4bff6e6902b675c9d37e02cc2442c4b52dc02b3c55dedd9edcc3a5e46a84f56b1f6dd306f1e4288d3f597f4135c1da8671eb2b63b4725aabf234f9d2254e0baf978d172fad551c6675c7dff89e5980d1d9b0d18b0f76bfaa0b55e5c902f9cc16f9d59f86cacc60ca2f97e8faa6ddce065b889a0c00d60129fe514aa8180c3f47e6e693adc97fd9d26def09c42ac647fde174f4e74a8b63a7189cac4fc82eb9f5952b637fd38f5054acd499dc706c0f9aec192f9500000ba181e6990f83628e0784e9293bbabb8492b201a269793bff3cf7ff41f9c97ebd191fd9fb4f59831f59692bda25d2962f39e394b30c2ad9bc76d0de2f2bf5736bc35f605e4e2f4e0dc1944d057f9827d7f3574eb72ba9e4ae841e7b2d118f682d03173ddc41edd7bf0b4d5910a8bfcddd3b9eb1792e90155503fccecf6d9d2558caf400750974dd0ca7ef38db7a417c0c85ed4137f3b9c32c1b08b2bc5c879d7181ec95fcbc57799a9bd5b79a024aaf4e38c2e0bc6658b9caba21cabee48581d43878e2ce36fd2343cf8f4523b973d14ed2b484c6488ea0ba32fe078839eddd9b232e233fb2f88a7683fe8ea490f0a71dc97520c7b36259dc8a1daab1e3422b449f8bdc07ba7bab47e76d90734f697aa67c6698b2bf21bc518ad6ed33545723eaceb6eb111ff2ac726006ba19f74bbe864433d28eb00648333059ccb49bbf558ab24e397d33370cac840497de45be1f1016af199d63e56daafb73d28af351c1fed5ea44d4280845cce52bdeea2adff9a2b5bfb86d602eba260d1948b5aae9f32d6e912587c916a3ceb6a6a740b910d39dbad1b81a3af7e6106cd644e8eeacc22e82e673736854466afdbe407944473f752679fe5e130bbd08b0512449a5165554baa25d9f6080fccfa9ff32cbe49fc858d494f9f7c920d970801ca45e363c684f933e5368947762085e1cf03a4cb6e2429dc04548249aa2ab3c7dcf4b053900254d557e452dd24ffdf3679766d81b7c099b5a4e5c7184f56adb6235f831be6ee3fce2e31515cd6b73f37235b3dcb37f9f0a15589a73886808816bd73a7ffd4be8650a9c527eb119c15e49df747689dff6ff8d7b8efb061831c34b73ff5f585b0af02d2d254f769543198dafe27ec95c5640dc3cf30b7440041515d3d1ba8a89ace109ecc3993daa221af3f889bf22283247d0d795a1adde27185d13aed07b03a24fb78de9b76af4b8c0dd5b030daac7d86481f6f133e68effedf76a4af24faa3b0aea33a636c6905f6d82f5226f018863de13265b3304227091e89cf6e06b1b592b90547d325ddf1aec9d6b36021b6b96fc77d7f5b08eb3910c5e13a97b4537e1335b2396637d5b09ac2542ddaa2313f1b5d5a030368bcfb3fbefc276c272ab97c6ec1685bf4dd9c09aaabe76ac608b58108a4c92b87b2ac26f5f2d7a82f707daf22ed926926973e554d396ca0e72f8c17c98703c9941e11efaa9f9c39823e3e6ba0d23a2e8deac27ea70b986fa733e60c79f23bd8dd82554374442fee3ed00fe4a4c510b41c16946bf141e13b0beb337d9e5fde51fa6ab91b413ea9e79d95f4942efe7a71bdebc62f8939187777428bb2a637b32e91ca243a9c1a7432bc1dbb962525bb8d1110757e7556b723e2a7c599175ffe90c2a4b67d122622e6078d86c84714bb52a2e74bd77fa8672d82ee336a3cbacbacbc469d4bc36cbd17f6572ff0cbbd8a0d1c7f53dc7fef506558bdc4ce41d4c9e83355b37461c8d154287585048179e87cd7fa84bb6233c5124867198ea38aa97c9527db84f2297d4780c8c869cee10c4e021d2bc6cc1e5aafa646afb171757047b3634f53e4d1ace8c662cf9abbeda74a26772e1400abf17345c12eaffa3f1ee6dcdf7f779275ae51893d122342fa74ba9bc5f17664090b7b20df5d7602825b4a6ba9f9239ca9ed212aa337b1fd849729d1855c4b5af8124c2b1d514a2f164e77a93f0e2670cfdfaeeb7101251741284d66573f7b213b65b214d5c40c17d74f82a1202767fccdc3e0a89bbf05d94249d1b574cb35ddd5678c3b380ac4456ebbd458245452fb32bd050e9cf2d9dad029a196fffc8d985e66d9ea4ae0f7d4bb4241b14efd54268d8e95775fd4554f9c49988d53fa5207029abb75a8cb6ffdd8917aed3cd7936575f412b741ba86e4ac58a5750aaab5ac36e6857b4b0565e17e431f39ff658bd85c50528d40af78f753f404d3ecc0cca205732d53f347f462e798031044f81cc08515afed5c8a7d5ec77f79e6d9cb462a7ff6df430fa4534800003562efbc2444457d395a9b701be06ed07367974ed7d950d215cf1cec9cf847508a0e8fcbacb14a4cb7b4e8fbdea631aeb360d357867744a97fb6432bcb2fcad270509d47664ecf174afbe360f0b5c269b2e555d2f9efb41a1eea9954462fdfbc585a76a3beb93c03f195b6b796212f7c672105d9241fa6dd60b00124451037637e7fb3133efcab89f905d047b1225fa2df469ee80d4421b5bd7074b09de38b278478e5ac5af1cb43dab56447ac3cb2e580a7bafc695250699c087f75a4d178fcc38633dfb2da141d110473c7c6bddecb6ea231ad3e622a8534ef450ee81f64722f51cf29e3bb0952ca5b2e13dc2ce56303a711426fc5bd5c34b8a7f2cc2c408325d8d3e540b140ca39ddda15e65dbd276f5779c6e0394d006ccd184c67e72e04f958439e94e43d7ff0d5e641f947baf977ca83c76053e91bf59811ef7d1afd9f2ffa44d7760ea0194abbc1b8484e15b0dbe4c180c91afd2068f75dd35c15aa39ad24a497a619c01f2b926b2313e1bac6d0d68a3df0a0af3fcd48d701a305efe8105af30ab3e9d2ba20945d948cabdcc9ce8c9bba8a57c5d7c2fdcf8308a6ac07844a67bf98e12fc31b25d0ae02f1baf29f4e7f6e1d7222079531ad0744aa1d56147ac2a6e29d7df9a57020c3a3d5334c9eed47ba2328cc2690ceb2dc7bfb27532d9b380809058e960130601c6e1928aba34bfedd317959851891d2eda71077a09350d5518c4434e0e952cfd1f7e0558549b1ba4a0301719e533456c72dd84f049c883b175ff4773fa30ca1b51677b71bd8e39e1b381a2d7f8f181dde54422729b5dcb01dbb390182706c09c41d6d5ade5a1b29e9ddd611926bafe64e00d58d117c22d39a54674ffdc62811caefb1f91c05af3d600f20cbaae83064f1e51427b3e089dcf7c8374c02a3695ff4f10cb64c064a2a2140b183d9d0142c706da1a3398f767519603332ad1032209a63980b1cc5430ced8b7af0197f90a0e06ea5d3124d356618555ba83bda8a5f57d1a81a2510b40e02516610e7321c9e819df1a478b72e8220f51bf53aad2f38da7c14d44566259c1d3965cd2a66d679eb7a977843137e79d449777d12dd37bd97b4c20dda87c52fffda3afaff0a11ecd57f3e07cce0fdfc778cbcf5feb0c547a3c72ea4f769776d4b53ecd38fb3258125eae86049f493a475664e272ad8bd87dadeb16694d4304d378fa0bd9f0fbd890c3e0b7b1fc48f371e754f1a05f88a0befdb29a7a0421cdac65d17c596a9465348f868490745466d7ba5c65b3eabc8a912ed0ee6c0f7c79f7de55e9648c0a3bf0113d63744b341725ddf7de1e5eb14824e44ee05187268ce8488e91073be6db2b2726f1e097cd342b8b008fb5f2a0d91c59b91d95c021b814063b638d2c4e6cff54e96362e69407af41330235bf9431959a94f325e3e912717234d9db316c69e84723e67c2155bcf5f8e1533186cbb11017388e45d7e56939d4d38b308a8d676fb3a44a631804ad6eddc9d82dbaca0802755aa5235fc18c2e31d29d7df1762d1dbe2b063f4c9c3f613fcfd5e091b01286ac2ba1b617f80d0ee0dac29d813309eeb06f11b878e51f222949376e5351e1e066e11ad22828bb7301fcc79a27f77dfcc082e23eb6f5177c64563f8e45254b1cb44119a20ba0380bd78b18f5cdfaaf0c640981e7eb09ff3fe3b1aa62db418429a5e92b88652596a1fcd72a2c9e92996211a64f0db637c03e2ad0095961693f1b887fb73b27bb9cd886ef490fecf3fec3f6ec58586191ab85918c24f1f56873d64573a1337e097cf228881dd1bca5b98baf4f63429a7fd617f601c7ba2ef681fe0866b5e3a48619559e4c084b51ca720daaf9ef38cb5da26a12b4f1ea97378d27e933a9c6a3b5ee785e92448028eb070f0bef6f8c4b3dcdce242702f57c8800c1ad26e8aa3e4c919cf111255f5b6318f21b25b8b950034a1f532d3205a116056babe262eaabac0c1e098b811abe361545f9f6c34ae71cc08074a80b86c4d9724f35147019e38a6e6576824962b1d045e0fa5f99fab67418cee690ad9d7ac3ecb962572c9216146df2a17999b9c82786c394db9594b126d913802cb32884f9c26666dfc968e0e7ca893919e90be082b5980fe271e2a65c45fc1a1cc51ebac2414177b95afd8e0a7abf8898b87139ec803a1781729492ac12e464696081e501c0609f8a5139a93f7b057e7426e632554156dc2b9972226528dd3ec7df3a93489b42f57600680635c93671a969199c4d85d80f7ce1fcfee8b9b65996b64e6995bd46ad31e2ed7ca8f5502fa38549e72c2185c3a3df329b2aa8c8dba08a5f79ae2f9ca5f458ffb73bebe8fc950d96200b8e57802f3e254fea02d117d9128ddf7f3f286aad5c906010e49eebab68a15a2f5eb254ea717e2630d7f2f24ca45178b7b2c5152c5d6e9c52c36fc7164241f078969b2cf5985e811010ff169c452950eceda322106d5bf5e094fccb23880eb4f9258db1b3b5e18be639c69137fbe0c565da322a009b2a9a9c82a8211456c6db32ec790cc73c8de61f9d50172e002cac23415f32d9efc310aae830b46e505f61c97d6e1307d4bd367b8b616402cfbc7105abdca3fd141f66cdcbeb40147b07cc0466ee1ec6f86d11597150ecaaa779a9662c36da23288c34f348d8d66f084f170c601c5e0fed872d4f363ed41ba35ca6bba6b1167652c71bee341da11e1882fc383123b79f005ef4290793ad6d66aaa42265de52bea8e51499c6d26476fb2666581032d2cfbc9ceb546ff29ee3572237397762bef6ceba4619381025d042705bcd2256f61e1dba169ac61cb8fa63162673ec252d944561e83fd5c7a6a3917bc974512cc2a7442c14eafc343b42a066c257cedbf0127b5d27c8b0a04914241fb84b0aab8acfb1451cb4252306a9b6e171171f3619f1c4053be810019dde0eb29dea5703be1e833fe4adbf7cc59ba7e946561292235fa2c61e1373ca071eea5366a6a6a1951eb34d6f7a9a248294b9e24156bf635768a40517e6167d7ce2394a0ebf92479e0f1387606a4a40665cd5a8332457084d5db2044d94a9520de02f2fd7773fc193f561c4622ff4fd87682b4cfd14333192f916dea84f3f40dde63e79492ce9fa097624338d9e29fa981d2490e51cfa5d0f9bbc1c581f056c0f3ec75f207f3535b06c4498ecbfca3a81ba2eaac099385ac77d21dfe463ae8cb349a231371db1b1b31e5f1a012089a021351a7287e1bee02671205f813e92a8f80ff9c64b99f5fa0fbb79cc46e81bfd029040759c0175f023aa9f84b9c83a41ee5a7e89fb7e7361fd42798dc45610441b0dc54cc276b6e513324683e5ee8aae0a170e648f7f57ce98816501ea94d511e9eca71e1fa81f3830f20df588600fb679bee1e8640795bceb2cf86ae3cce121b54cdf9d316de77158982c1318c4cbcfb114c0c144b9483c983994a374237d3e942f75368135037f45b6bf76d2e438bceaf1e8cc179f93775aa70396005d7793ef0011bb26143fd4a7325c12711988e6a76543ed7b1642ba963a66f6dcd06e4739d7741b0b0042bdee95f3dbbad3a5da635a1f703ce67ebe46e371de94a46b278b5e9f4d55bd70463600079a7d90141dd7410c9c2aba7a483c21564c7433f67cafb84a42c19966d70921926c685b04695697242d29ec29218d3c4089f56da4a342f5084cbd70b6f62b87d71db266ebcbd1fe3531db16058c2658ea32eb49c2c4c28d910192764da6e3d8f8e58d67501ecb8855306cbd7894c905dea70451909aca8485b192944766d830fb686d6b0eda0001b2b6b52677d3c74d4d07ab9dd948546bc074f852123ac077ad955f9119d9cc0105c9d31b2823aafcff99c90cf9ad0b006a307a173d64a36794f3864cb9673bf029e009be37a63182b2a01dc75367eeb2077aa968155a0fbbf8c7aad07c9d9b07fbde9204b23d2dedfea1fe37018bc2f364b9cab38e5f8148e7023aff2a72b0293b91c12ee61184b2d9fb0207713db9cefd89a35bac8ec56b3ad0eaa55b78639203ba061b14af76fda301bf1d0eca2f75c001ef8dfb6e61e0f5e1bd251bd008f3559be3a2b2cde19b5e636acea42dd07ea51c1241db175b5de8d8f8d2f2d32efffa8ab6a38b2446893a2ee05ee1632c4b18c2f02274bc78caff47eec5ce6e4b4326396224c836b54ced835ea0fb5c055e7f757e06c559d29e3a6df96107e5854149e86288e4197073662ef12cd663207da20c2b05edff59eca99075c856c5660befc89a4151f55b9afd0e0ea451cb72612fd6857d1499b2a542a545364e8ad3d15cba33924a36c29de016d84315e1aa830f76a957a35c4c6d2e59b6f975d4f59ead81d0c819660f947a29000314891fdb1b92decb426a2ae73f1b24ebe7e1c8f9e25ddef7116aec0edda40ad8b3c4aa194e60c3fd7f8109d0a9e258a67123600892dfc3457fbdf9d389b9f43cd685196bf1c6c052c03ddb5276f323f68c56207fcbe191ecccffe89a2981b95195d84f958c11c03a805ee324f9dc7747b22b18d93df57285243a9877e31782112c7c60f06ac5cea44f77832e062a1b57369541a2792dfb26b5b4fc9cb800081966aa49ed08ca12755043a0ae96583dc95278c7009d4329aa60b775aaf51323991abe2fa40d62b78d1177a941f840b4169b12e1ac2c113745ccc04a7753d7b1412e3906b9ac16ede59886159ae29af813a8b27b781c029113ca48611f3c1e21880ab332f1da75007e2d266ba68de689dd33e5717e98e85c21b107607a4ced577e2c3e397ccf2025af8497632decaeec66a53a5e8f5f9073a27d0a9b19276eed4e3e8a04dfc95bccd5d2b75a562f5b21d35cbec11f20b35a1382d107b89b96c02e82ea4194946123dbaf419678852adf80dddc7c0d02867d1b4aa177f63ccc0ee973b3708549264366eef0069dd1c88352b9ffd723c6150dbfa51095efb2c02a7ecd3051c7b5fe83ca06c9af58500be160939efd4c361d12176d290b130110cdeab03137a7ba282fa4f9341fe56d07872adc1dcde4f90bf973803e9a19fa1dd7e5e78cec4946f57b2248d2ee624acf2f7cd91da88ed3b9f36d5f131416f3fd1bb77daff6efd5b059511621dddfc2d9167103c421bb3ac4e7ca3c6113ca7f3b67aee897da42a43bfd0c6c292ac24744dc5827e9d38227f636f9ef8c88980418a81ccfc532821d37c62cf236ac6f18c4929f84214fa560357a505b4f43ec8df89d0f0e376018a2b9d1ace2454f6fdf97e07159f8bfac075ff94224acab8389f5bb640b1c0023c5523b9a9bd1e6d48444da5fdd90d64208717f83a3e6675741232a47e4d87b626e7dfc9f93e579c48e39bd52315322a1c8e786173ef6f9d0488c93014eeb1a6b4b1ae60c0bd9184a6db5d2618ba968ee8b5909b7bb1ba08d0b75c31f1cee079ecbab278d6372cd8711c2e4822fd9a03567ddefe181017522c574df66255434cf9201e94a7b80c2c6e5dcf521c90b5cf8dd78af4a27436c570c5c60da67bba7cd33e814f5671892028ce3a83cd52dd459bddbbe3d0b7f241d29f0831f487f8c4096dda91fedceef11ce90b8c977d5ba6a2c6fbaad3431f55ade7f48cb07e9bbe0c999f68d2adc9316c7e225c2808ec78e352fe787b5f7d9b6ad3b749cc8fbda7ada578b45c9a4066ab05201776d0a533a0c74059b413569da7d04cb38e0d2d3ff2bd131e879063d58225c0605110461e452924cda61ab91d3a66f02fbcc69988ecf989da3ac0655fe0df196871fd916bc9df5e7c30ae8250e47bc696fb091db35c85c71b50e776193e8bb68d0f925f16e8baa6261a61ee237aec1fc7e90b6f168370450110f75ab6f639d9bfd976b9c4a3c5028dc278104e634098a195d79eba5b0165a768bc66a4ee2db3482432f2ed88b7cb63273ceff2c0577963604b919dc0b401697e17d68dd61372658a3798038ffee562773dbf69bb103fbcbc9158cca23f6eb8c7be42e0488f6aaa2723612eebef3161a0dc66dc24e05efa7d112fb745e69057609d58af38bbd41dbbc255715dc9552d08d8010f86870eabb81edfead0ce4f2d8cb05b0efb8071d7a046482c7fa46a9572fe731d0b63f591839fd8169fbde9fffca3db095b9896ee00c63ab403634c09c19f5bc2094f7bb0d772e3641cc4cafa50431b9eda1d6131d655ef362ac010dca97a1eb30a07354347292cf001e57669bd29af05ecf0e8f5ac7206294cbd4e60bbfd32cdb3a156ee711eccd4def0c11144664e64456933b34c61092ea695cbf1140d8eaf2a3b5994ebdfa25e657bbe2401651b73357bfe345901652477ac73159a683e630e059c494ff3ec20bd3bf2984c26e72a804cde6b84f6db9cb70563fdb685fb234d3be2a74ce4a5fed09a3d6a94943a3007563613ac5de5a57d70b338cdf1fafd28c1e411807d0f4dc305b5e2c5f932f0b1251459cf5b756d52052fe6b7cc4bdec5183462eb9bac03252e79aacbf00b99c8936a4cf22552c8ff697153accac2515afabf2d15705e262c76e9ade3d076ba6f5221080b05bbf60170e137c82d236104ba486cb91dca074cd043f258ab3a421b70555db10dcd6ba9094fcbda52dcae54a102373717230459f5664256d029ec0553bacc1d57d7b0e5e5177b788e7079c224ada8b221c7155e85c75dd26c78d8ddcb27a42301b9640fb4679bc2dbe58fe75ca0374b738d6ab3107dd411b1814f4e254a4d503df1537b59afc804767321f669677e16e7f5d4f3cb6ad111cb66a8e2d349711af7e4a6e5921d15081bad8a5cd8c2b31dfd17eae1a67a85969fb37a4341271028cf14243375db73101e68d806f5dbdbfee8da0ca05e977a5d42003f945e63cab6b05f5d308ca977b44d1223699757fd68b6dd0890cece5e0ba19cbbc41451c82f75b7fb5e3377a8c7990e8f55d31e20d97531d4fc7195159e39dbba49087dcd142fb51aab64c0a3d7b07799bac3a677d21e94a1a2b854bec1de3753ca08dbfffcfbbd836cfa9f1a77533583188024fd5be7fe021a9042f733781de98e8d64692ff392898bf58a586a60d27c7c20d1d72bff67e241d1018fe362dfd8284e617c4a79654bd2c6a9eb95cb51637cf2db1c893d1b0aa9a80fadc234b0cbb1886dd76360d2c09a1113b3093e63eae83b23594306a5c2a4ad1560698c44ee213a53d8b573eb5742b9b50c645da7e7ce0953953e5320de78b23729e69ddba6f51956096b92b4c11153e44eb1372c17cf0df5fe09f4d7abc96aea1ea92ae08d3dd6c75536287a09f3e09cb311b00c7a4f9f621263e54ddcf7b18a1a499d39de29cfc74679a4f885545a8c60d71ca18e3cfc7a438d2ddc0b2fabcf2ca36eb38c2436d72e6143f6e4e5e61fc224de5636c56fa4b78772399b94f44d4ed3179b1b3138639e31b68d60abfcd5f9c6ff2b8b61d062e39027f98e67687907830562e14922d40ac94571a59beb8dc30465dfd0711af741a85b8dfc84367cafa4c4ba1df62a927f7dd88ac2f980b0578f22f54bf1e429834d9693dba4f9a4fc525f28a119ecec0e49ca6b7ae0830b3765e98e4c6f946ea750ad5d2e44ac03e87433d1bafafa410a1f50280a21834e2c56d0cadf028ff0052cac0e6aea0ba9fe3351468f9abc9c62064b6b98cab2023361a0a081f1292b99bead089a1af053ec08eb9dc14b0e1433bc58706390f098c8a51e9ba05d3a1978ce8329b62d195a5d4f3ba0cfb8b101c4064a873d65521ba159527b12320250a89d2521bb36a7a5d07f108f13ddb355ce064bb531ad2a5f49880df02039a055d9623a73a43ec397190aec859ffcc44c701b252e46d97430987998ffdb19085308d6a8a439b5e052b7b67ba28fb69bf4569b69234db9cb646e3315ce8b3bb00e4048a80132aa7d23983f7ebc54896b798bf3c7da042d90c3262278cb4dbde2d2dde8369c5f772f2319d0a2c6360c603832ca2b3a9ba941113284157db2fb739f3d1a5abd3bd659a123ebc4b1840849699c29ab8558c16d9552c60a7004ccabc274ab3338597a967a556e9f511a122ebda1e2c74e8427f9caa393fdadb2abf2ad114ad23b97e27d4f019dfb720b9b595af60c115a6cd7fc506d22425bc560435e87784a97edada53af674cab4c6ab3be27f825b0dffb19512b8df7064ffdfc7b03ba5a4d021ace47db0752290de6294e3bf14263a573e87db4a78ff9588cd18f4fc13f642fe7d89fd88aebe54df14d0571f4c0048ace9b38515b470588bebe95fab12926c347b172379a45f25acb9c4a4062922de0fab330a67d1b8ff4d41a67b0f5b421305684ae173b96fb6808350784bbc1eb0ea0f3b0692ee0911889fc87de6601a12c728242fd1c40ccfada924c071ff515df6df27acdab7eab0d47ff10c68eac68eb43dd583f8293a04331a350109fa7b669d92e05795f4e9b2c977ca6f66df7c67bd96211b1ed644e906e32bbcd6e72eed1d1288819b68d723c07d324edd4d8ae736126fbdc6af0d9d1e859d8424a8fbe34074df40b7194c6805ab250b617035ea65e4e892f1ec578783a969050cc2964914d2d8d733a19727d7ae9320a29410a6f8cd6266305d47862e39f4e8ae51bb39fdf41bb3db10ec97459d65fb870513fb4a70a5dc5bab82164fcad7484c5fd6a7e1a683c7bf48f26df8cffda7cb111d37db91095cbdaa53d0819b404205d7fe5e5f06ebad5000dfe37e238ecd26919212b98c28fb55cfa085769b0f98d2d23ae74eb9c264e6c9581a0dcd82c47b206ec1e73c87733b182ee75f10e74a114541799cc372054163388dbc0841da15b857736cdae1ed21fb1c4fb477979bdc7fda6c751581302563c45fe3cbce8fc98193827d3b8bdecf95e03e4860886098e2624c4f61c3dce1b725c6195152089c3d70c1e6988d83d212d59aa4a27e75fea9fb12fb5da4753a2210bb11453ed99669cff470848e10dd935633f1c8191c16d34bb18e40aa47284190234cdde8532c427a675d9edc148efa759643556843c9f34c9b3d319755184cb34eac9f789786a9658668c60ad67ae44b8f8c631d5e8ae29201d7091c844cdac3a3646ab39c5c35cd91280a163e71ed7a836744d256ac7c68643b03e16752613a2126489b84daf4dec75eb942df444cbf9bf130b9dee31d2087ad0f93dce3efa17ed0c3de4f4e380102187696079a2a3159997d0b702f736f1afe69ec16665f1e4c96c732b896f87a7b13e5066efc8ca34b1d95e5852a8ef723eb07e536ef412f57ecfad035136f7529abe7bdff51aeacd4886fbb7faf3dcb2da96f333ab673149fba61b9113f2fa9de56adfdbb854df62098b8af0b651a904d6646041b6f7cd04429b224d325c839985ddaafdd1d985d4af465144ff185b06104daa53c60679d4a2b56df873b06e5fea23cc06929511e6b3b16471acafd7632700d0d4b167e3a9c32d09aac9b15e1b914d20eedf59b7016d7fff3f7c4fbfeb8c90ada156ea0dcef679865e3b09e60a662bb8c8edde37d8f73c7b165afeb137af0afa8b9ffd2a85f7ce9904e785427f5cdd11f9719ed61a83fc756a40a5c4243daaaaa1df4f8b7e7d768a08f5fdadb4b4d1cc87afc98cceebb317d74afff77f2a66f34617209a1d05e9854fcb495f2c51fac19286e0eda566207c6c990829b6a03e8aa911f5cdccff7c77d46c3328f7bceeeccec62c9e10417c4e1706d420e526413bd02110b86f5bdd37505dcedab3421dbcb031a34114c0d8c26929f633c68470ce472f14b8ea0e42f5142abed2d478e6459352ab21eca92fea8b182fcbd6080b9fffef6904156a7fd6adf87cfd9bfa72ad816d723aef5a3c4800176d7d276d4fb61d0fb902ebf16ea96f9d29cd7bc2b99b1013121ffe6bda0396d10860dfca2511c8d09e6ba2cc427e336b503e27d6300f68deabb66e06eef99ca19b81b3f3f9ac2cdd59e70e299f2cf21ef9e781f7e6b3879eb310da7212c3f2965210ec6c8e888b544f9d342e3bc6e058f2edfdb21e46afbe491009a3f3564e806abc00046a13aad467ce1aabed89497b4a923323e2fc6200f49e61c53236385c9bd5145d5de8e6d0b78463b9b4944fdb0ede090b24b779e06aaeeb5f33263dc8bf32f410ada99adc8c48d41f7f9732dfa412225f12c618f9eb5e041f2a397ab4b92970f86d9453d73c900d92cc25987716a2ec87af66eb37af89488813dd008a78f7bf84860aeb4a07002669ed9d267961b3bbe13444938f1c8f4f04d06e18e6647f35136779f92dc4e1fc2be5beb98bbc2c8139f6c9db0ea23dd6366f5f57dcb0454eb0444aa2c29d0bfe262a9aa73a56f64e9f4d3bbfbe82cdefc54e211a46b5359b2d526d44cece5d8574f5049de81a8b1d8507f6be0ba58620d8491a1d56c4f36e802b4f5f221e4736e4458198c0f6ad58f53d058a06f674b04c7ec79b87bb0634bb5985008720837258849a515d2cf532de0e428f3acc3723ac64e694b4bd8af832ddda01ac6d4a9a3784968073f22467cbf2ebd9563fde7a1b6781b21c39a9a7dfb6f8cd0e854ee6213f41244e98e0a951f8b08430727cf0c0b21ab44e9d46ca340ee89da89a1c97fb948205d71dd9697945ad46e314e4c83f9a4727b86a4643832e483f1d6353310b6ff4be634a3676465f96eece0daaa968ca75e6600c52c718247315362eef2f9722095aab4956219985eae6a5ce327bb0b4090ca1fafb9b7dfbd58cfa37bb33bfcd5d67695cb28c0db4a2b3abc61ffb36379b5e5017c17e0191ea56656c01a182146d43d03dad7c9724060d19894afaae0dcb918a9a118e7baf5cf9b7e744ae1f56f2f2e52f60dd507782c1a7fe9668741d7a249ee5812c872410b51414ac21dcb1a2b76f3a35512b7ba16a34ffb9f9afae6930b5ffa5d01cddb56a3cef66c6e0db69d9322a870b2bdb130f3fecae9658b3939d0dc3be466d052be9940784bb5c39707c3066c46a9da031673ad75af1e093532e3da8e5676bba3d6fd68888c96a28214754bb3006cd06db44b40b50c7ddc73a3c15efb4acfd52dd2b3971ea7166596260e028e36691046b3717d4477d38b4a67c56a520a3d74696194d4b52f268f7566556549e7700b014d1e06e289b0e33c256e9bf49638b1e9b5db9e8a3221caa5fac477309ea881a77f4b742c2ad6a02736f6c89dc1c45202b401935e06df95b8a1be67cc68a97f4ef435cf9f466ae2a2e7f111b99e826afacbe1f0474ef7c0b2b771718324decd8a5f8ded29b2cfccbb47644818b6f9b4bf1fa1a41496ddcaa63d195ac0c75cae17c852310e43b3fcf5f230e591a9e7da61376b30651ff3369ad1e1904f90ce99cc9ccb2b9416aa28c161e95554b6f17444eb46ac779cf76faa7a7e090cce30db049e17be5b7afcedeb8212c07837dfbe5a387205eca0659e904a43e9e6408a24ca0462e0d9730670eabdd14cfc2ba07877f435d2349c3620f41d71232f2e958dc558768702f74ab0d88fa3d797a26d97af8ec6302330f0216f50773954d4d8c9d2c85d83cbb7ac964cf191239e2af879992fb1d2171c489e4780399f0ae6f8895cb080c09bfb486ddf5f79b23bce5d1cf48e477fed9c29a762a36fd9209700b694bcc93ae400adf004eb4752bda15364bc35272420508a39a1f8b0043937727b3b708ad6bdaea242e92e52739799685d5b4c72149dce8677f1ab84f18471eb8ff6540de0c43a3eaea4caf8fb99b1ae71d71eca1ad5a81380ebb2b810c62f997791b08212ace9d89a1b7212d0b376c5debf431cedd411a881e7c5cd57948b6cd7795724cfed7be674043bc073db1449ebdfd72b203d9538a1b56d9ee1187ed8030c996a03ca994e2efa2e072401d63f0861960cbbcb7325c8b5b8a122906c9a22b1b84dec1b826e1b0869953aa7ced45e59df0d0ccfc0ba416c32cc08254d23190779839023d2763e9ae062d4612bbfee085c19dca551c04d7cd2f8015ce6e1d85f5b7373656494c9bc2328a0fee5d73b057e6170063d465619a4a60be696d755103c591c0d4b5418d851fbd533a96e8988d93f7c61a489e2bac06694ebf0ee1f8b181a690f9a679bcc9fd8c9e72c43d777afb96e83ddcc238c4ec0f4e6b374aeb9d9785e297e61040cb4a94e8876147ced4c9a84faa1fbcfb556b690cf7ff219dd6dff4aba344263237cfc0b4d53835182802173dfbd05bbf8f88f473c5a3e55bce0b6fc6c29e58a6d7bd1f70d720a08c080aa221174bae53c9eadad9f943c368184cf638aa7a8d04089733d3b4c87529190062a5caa74f93245239feec7e20ef41893ba03c177fd746a9de68b3b97cb4732379e46ede35fc0e09248e71320e5706b8a4ca39eaf46145dc2ca77b74c702bbfc3dc4a122a2fa3f789e0ec8046b1409036110fd48fa52320988ab4d115d7c6c56c4d039063680cd41179075d222f2ba95f765380825b33a9fb83586120cc33ee3e6224098f5c98cbcf5f99b8e7d1ff839d4f134088328b94e27e03a9e78f8ab217420a69d2c6d8b795c2aba2a8684ed163cc2818052ca0a6d6eca37a49d4eef3dda349914004e1ca7fec5d61191591efff24e8f81bc8bb0975111a9f81c59113eb67e7242d89531bae0726ff539fbbcc3dd735a70543ba9f0de87362cb18c92459b51ad7f1739da58d9d9a1027f28ca1902e297f2014ee133a1e02420aec5ffd221d25001c9676e4a64094c6222ab729cfa221d5875af14f5fc56cdfaedc3cee94a06cfc165bbef11f08ccfffd8915575a748025da053d8813568a3da17cf3c1c8188da1c38cc183632aa6da4e0b371d61281b9e6415a07b4d086d520b1c19767cdcce14c16f73373defaf0a190a4e567ecf082f7f5af9eb128f6b9b0c3ebe98b65b8f7751117d46cecf891c1a804366d0bc81d430b731b3e2aaff56fec6b31f3b3166fe46f396b89e6a44c7dca851dcb00854d02ae7126bebc15d3b9e33d702f124481d267a33b4320813167818bda6b96088939132a2204a58ea5ac551b0ece13cb647e14e8592b5a75ed2e0ff6fb7c8069103e0e1f7000b5b0d597a872f5416db2bc2fb140acc11d79bded5ba03b5f0a7b1a966b49f0102da4ec5ad742a1cd006a09a1c327c00742a23693fdfd212a38d3d4a65ae3d5291c54853077b6f17d14102300e6710ab2f705b04833f81c29fdcc1db78c2fac01d39e8ea407b36033184c92ae0e4c5ef990b51b644ba5ebe33e6b3a86eed90101c3fde2ac978ecdb88831c9a23a5431ed2e02718e5c6b41f48570adacb290be8f80465fc9bdc0d33ae246fcf1461e998de7b5f49c734213819b74784baea947fe76a81e67bf777e2e2bf3a3460c25c79b9c98c233c84e9d2ad1b163c5fb4852034a27c9addfe493a5dc7df1e7f5d433200013258450b01749f72326865c189e477271b657c1cf4d5ca4aa36423542e72a55ed9e6a8a065f7f2ff0067d069aabfc4d073991ee145a34e9a9e4c25ef51b3cb5cfbb52e4e219e15a470cd8b8c13ba76f378bcb631e0583a4fc0e0b40ad8b1358f0775255cdcd1a0fa20ad2695f230710e2f21e43ce6fa08ecbbf323b7f059b681e32fd5a88d548609ceb879a1f309b958a937717fce28548fa8e24a5665e5a52338e3fe63fc41010bc572100345dc7836bbd55324db31e6e20ebb96b55fe371e0df8bf6df9e93ab1590aba6d7d45e27bf5a89fe6410e34b173d12b83260946b2227effdf8c6a852337d646d5292ae4db67ee5d4702cb1cafb9be99d44443a2ad0cc5c3cefdf5b93df3696564d8a85973cdd549c782329331bf347ca7a0b4e7ff5b027fd700d2ea6d282d60fa8ea9416d003ac6b849fb480f3decb49a9c6f08a125966752a28df63bab020493a24216ed7f8a881d0cce92bef669ba4998bb8ad0494520299f54702d4bef484f5cc87923d9a54d55061ce18ef022ccc8f031eb995fc536f8d7835759e4a96e986599c0796f5efd0edf30ba8187a09e1a1021e64d46d1206317ed4c5bb7eae195c1c22fb85b7beea5e3b66fa579c0252770331a3060021f782db0082d7daf4a6235a899446fa06a7d139ab5d0792eee166d4bc5689d31a9f09033c70d7ec625fbc05f95b421019bbb349f96dfebada5690ca98fe9d5504f338862441f5f60a882168d7bd0b58cb3291c0054c59dfc1c5a533b0fae828a8a8129bda85111e3ab9671dd722acc39e6c3ce1c4567dfc14af1b79f5192b7b8b906d013f516e1aa379807e5a4c20e2cefaf2211df218d320d3853c1fad08f3ca075a2858ac0380a1bd4512ff8dc67c8f19d3a3e8e908343cfa2ec18d02b638c377d8710646f66ae06f1a0970337fdcadd0726a6e168ec05a2717ca6edf5e0136ff99f81ae1139e666ec08e065b93e4327c45874e4e55afd946995c117e68714892d6edbc28c25ea00278b802c0fc560a047407304f3d6ffcb6c956a585bfa21fc4e337fdf8eda6446ed610b12afd3ddfa7a07979edac38ef44bea0112b2d6f0fa03b0cd39279d153568067c1d449f5d8f474a0abd87a65896eb31c0107b5085ccf92c59f3ad359f58574214f32cfd53fca8792e7c6fe242a4bba43e2320ec3338609f79005be4785613c8ec13cc406c846ba4f8f1743997e55a85bb37a875a752859d7496977ee2b3f084583ce73092567f2259a6e481f30c71fd77bdb75fd87985d6ee2f77513b90dfa926de879d8916a216b0c97bc6f70e7df8e15f027d8490e79b8d9506d6e933d9ab3a0cd3fe9891ae973071ced9e061dd156380707de0859fa9169a57ebd9516eff29159e835e8785bdb7e04c234bf9d325e9d99cc7a6101f87f3ca63e3a06aec3ebb607ce0a4ca88de3362acc956bbcdc7bbbce4b68fd3f35d30cb2fd6a0a7191b4ab03d746267f0f1ab8cb9860bcea80af88b668d11c3dcfb7cc34a1c55f19da47e80ca501e4159b75d74988d6a5f68b03e2366e013677d19156baaa501d8ac8ac7a4d4228c5015ba92bbd0fff9eb6ab3d8e17e8ecd20ecbbb7c00da36bef2af6b2c910a4457e6722536464c1827c4240cd9c8b285657bd494ae69ed69f8247ab48452cfd7e65c3752e4497f38b07a086b3d8df18c0c52a23ca1ee569c23c7562ed32e9278a6dea02e900b95d203c34deb16dfb33bfc49e7d4e48c09edb970b1718f18a39dbd6ea5f6cea7d4fe0063e8b56a0f11c9536b94219cd104d7b6a656bc9f0014da48092a199e13162e85c0894ce73063404a7411ba5c48bbf77ed04afbfad48f7432a31a3831698dab573fe22eea87beae45bdc979cf403e27791c527d8678e4ad67d0f6d64846e0139d107ff318a2467963a5477bf6ff0b47a7baea9d75b598f6ec28775d701177011635e89670fee428117e86c48f89be4e80a9668616473dc11d8a824926abcc89634e26e0a2b694158ee6c0f3aba000fff7505d012af929c838a0fa0cd84bacc2ecb936184e9b1cc31f24a68e77bec3354f1daf93ddfdabbbeb77282d3b5a3ec6ea0d40751e1fbe9ea5cc068de9deada19f79c11191030a18f3499cf7247670938b73e60016d044772263f07bfcb0b2e0f3a2d0098152f36d44ab8b795a36dca59ed7a3eeea0bb7a242bdb27fca8c2f61790851024d31e976303ebd97e3a9b72481bee23ffdee93f473378ca7c649f59c5d4cbf46c7896c7f8cc78467838454f2db21c886cdd96e0b5723a44f84f88b01d659e94c4c542a735d1b19c6400a4a5917c8d29a717e58b8142776f8eeff4586bbbea107ee36bcff341d0f511b37910c3b76b6e3ed813320d649fa3110dfdf6a485b44b78425dbfb804cf70d4bc7b7542600332b221a468fd1ad966e2a323e5194a09857841daece9698ca57f592a8ac768ea1c9ebf31951dc3b237eed16b1d93ee4e08e27b5b78686c7c46b2ea592772efbeccb819aa17943e6ac8915b3ec6f535f7e3d2c90575dd354b3b916fe4302cd78e34b74aeae9e4bfba29f8110a793da5848994c769a8e941d900a97bbc90e7043d77d086e3a1e226c2142dde94bbaa2faabd945134a479305d37eb153b21c49f731cef7cb56092979e250d2a5f24058a2b9e08ebcf6eeb5b936f2c1b5c95250665f6b5531dc902752c8135b72493eb9f118f766b55cba4cdcdf7c375723b5454a578a8e849fe429f579f548cc6b4ac761b756fedd547527b004ee92f9c9c6ecc9bca167ca310e014ec6812e38e8b0944d3dd1f7cb6cc30b247b4dfb066bbd96d041bde2585c24fbf9faa17764555d56c68cb6c14ae85f7a5c87e8f0cd8f82368cd9cbb0dcd1da4958f43dbe844aaa137dc0cea9b0acb849e81d6bd895a8da1f851e6007b9b6e6d37ff897942e94f246dccf41340d9749ce0d7bdd37634c546a6caebb3a4379406ba2b0f63d8072f75fed555ab98bb630d2428ed564caad820077fdfdc33793e82b138e701b00f7879871c8b3a33fdd0e81efbf9a552687327897fd0236fcdc9bae6c3bbdcdcaf4e40316f94dd172da6bc46a7973e6b9486a2b707ff25e08e2eb5a781a50987b023a99a0b94b2a2ac8ddfa5a84bebf45003681fc9db274738666e85e2819bf53b68d6269f8c732b54ab191d05672edc6c5f7e5a8059bf22c72c1f8f8d7fa9a50f0d7ce91b1f6b5aa9cd184020ac552a1dcf24af07871fe45a52ce1876d3c37be0f56fe6e26095af0e69850b89e9db26341878e7cf570d0e49f4ddd86708ad3dd944d883358108d8c08e4dbe42487a02d5c0b75c2c684af5155431d6991b5bd73e3470bac6fe808f241e9ca1854f630e6a4bf4fdeb12ccfdea3ce58bb24af83c02adaf68a4114f40247f1bc7e3965a78e1bca899d8b430dd8e338bec91087aef60b8cff840cca68d56f3bdd61a04cb5b63d3763f675b3a961631796f499ed2ddd1da2140f2405b76f0abdf7352beb57530ec415c45ba74434f8b601f6714938060b28d90b933d6984fc433076b2bee17996942f4eee451a23c5e3132869a5007a17905a7e2bf220b4ae956a8abc3524238d02e9327a3bf872638932529f372ca148b8d48fd98df3862e0aba6395ccbc914f664f385cf20d24c7166bc309470c47d971addb7f376e9b9506b0e1023ca9354861212bcedcd83e646ccc1a1d236472c57d4098906bcdf01d89ad7371e476b1a8ee86be9be4ac7943c2f7f6a36231e1ee97c9876b14df2b84a1e2328a00125c37f61a750f64816a54fedb4a59583f862a43258cdb80a101440efa9867a376a04d11b8072902f2d485ff553d2e8f55ab3756b89c8d36a481880e4b5c6c533c7ca414c47a86e838869d3981bcec6f72e01d98f7da9f92672423481460a95b9352aca573530d69bd662f41cc248ce9219d639dff096c376c3f704364da93260d5eb573d17334e15a790b70c1306b7287339c366283decb36962bf111eaf748b229efc22833df4120fa21b68883533aaf2a8e5f35244e9e3e698ee401e89c8c3d8dad5567cc0a50033e1a4c27349b660d93cb85b7f3921a0b5f4bb45d0858aa1f7a902688e1630526d092979cdaa16dd764a8c79c9790cc4e201ae40805ad11f891139c85ef1b99ee4a2db0ed5ecb62188e83262c31a98d2186cee07d10fbb06623afe25af7158959225652de124b5f4c6c2fa3092597e75ee7e3e440c11d8a2194bb0bcf85308c3d3a27964e67b4f8c10f3766d1c1e059f43ee6649ca3094d640d92f837881cef5bbb05de277f5d3104797764efb07727148802b5ac96cee128cc005e460a61d2cca42df9cf52e4823f282654751dd742e50851b73fff211fa20ee53fd55b350a952bda4d80cc70091ba5c9fe33f78419c34788dad5d024decfec04257070fbe27fd2486c9149dbfdc4fb1fd423221db80e6e3a40a7bba243e88f2485eb291e101ab9f95744c7a17e617e7615b013308104f7add80e615b3caab510905aa2c4e2e7212a6498107389f4585390ddbc4d0299e46554a9187ae308c188006887f0eea44076c868c411ead63a158af0cf0b81813c4b53dc78acd553fb77bbc6b6c6613a2cb96000000),
(3, 'Mollejas de pollo', 9000, 7000, '2023-05-30', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 4, ''),
(4, 'Pechuga de pollo', 5000, 4500, '2023-05-01', NULL, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 4, ''),
(5, 'Muslos de pollo', 16000, 11000, '2023-05-20', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 4, ''),
(6, 'Pollo entero', 22000, 15000, '2023-04-28', NULL, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 4, ''),
(7, 'pechuga de pavo', 10000, 5000, '2023-04-20', NULL, '2030-01-23 00:00:00', '2030-01-23 00:00:00', 'S', 4, ''),
(8, 'Cerdo en trozos', 24000, 20000, '2023-05-30', NULL, '2001-01-23 00:00:00', '2001-01-23 00:00:00', 'S', 1, ''),
(9, 'Chorizo', 16000, 12000, '2023-05-01', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 2, ''),
(10, 'Salchichón', 24000, 20000, '2023-05-20', NULL, '2020-06-23 00:00:00', '2020-06-23 00:00:00', 'S', 3, ''),
(11, 'Jamón de cerdo', 20000, 18000, '2023-04-28', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 2, ''),
(12, 'Queso campesino', 30000, 29000, '2023-04-20', NULL, '2003-01-23 00:00:00', '2003-01-23 00:00:00', 'S', 3, ''),
(13, 'Queso doble crema', 16000, 11000, '2023-05-30', NULL, '2001-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 1, ''),
(14, 'Muslos de pavo', 20000, 16000, '2023-05-01', NULL, '2012-03-23 00:00:00', '2012-03-23 00:00:00', 'S', 2, ''),
(15, 'Jamon de pavo', 30000, 24000, '2023-05-20', NULL, '2020-06-23 00:00:00', '2028-06-23 00:00:00', 'S', 4, ''),
(16, 'Pavo entero', 10000, 7500, '2023-04-28', NULL, '2002-01-23 00:00:00', '2002-01-23 00:00:00', 'S', 3, '');

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
