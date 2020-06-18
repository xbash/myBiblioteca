-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2020 a las 05:32:18
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mybibliodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aut_lib`
--

CREATE TABLE `aut_lib` (
  `libro_id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera`
--

CREATE TABLE `cabecera` (
  `id_cabecera` int(11) NOT NULL,
  `id_tipo_docto` int(11) DEFAULT NULL,
  `folio_docto` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `mto_total` int(11) DEFAULT NULL,
  `id_transaccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `des_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estado`
--

CREATE TABLE `cat_estado` (
  `id_cat_est` int(11) NOT NULL,
  `des_cat_est` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_lib`
--

CREATE TABLE `cat_lib` (
  `libro_id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) DEFAULT NULL,
  `id_region` int(11) DEFAULT NULL,
  `id_region1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int(11) NOT NULL,
  `nombre_comuna` varchar(50) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `id_ciudad1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `id_resumen` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL,
  `nro_serie` int(11) DEFAULT NULL,
  `mto_unitario` int(11) DEFAULT NULL,
  `mto_neto` int(11) DEFAULT NULL,
  `mto_iva` int(11) DEFAULT NULL,
  `mto_total` int(11) DEFAULT NULL,
  `id_resumen1` int(11) NOT NULL,
  `id_lib_nser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pago`
--

CREATE TABLE `detalle_pago` (
  `id_det_pago` int(11) NOT NULL,
  `des_detalle_pago` varchar(30) DEFAULT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `id_pago1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_lib`
--

CREATE TABLE `det_lib` (
  `libro_id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_dire` int(11) NOT NULL,
  `tipo_calle` int(11) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `nro_calle` varchar(10) DEFAULT NULL,
  `depto` varchar(10) DEFAULT NULL,
  `piso` varchar(10) DEFAULT NULL,
  `anexo` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `id_comuna` int(11) DEFAULT NULL,
  `tipo_direccion` int(11) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_tipo_dire` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_comuna1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL,
  `nombre_editorial` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_persona` int(11) NOT NULL,
  `id_estado1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `des_estado` varchar(30) DEFAULT NULL,
  `id_cat_est` int(11) DEFAULT NULL,
  `id_cat_est2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id_idioma` int(11) NOT NULL,
  `des_idioma` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idio_lib`
--

CREATE TABLE `idio_lib` (
  `libro_id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `nro_paginas` int(11) DEFAULT NULL,
  `precio_ref` int(11) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `id_editorial` int(11) DEFAULT NULL,
  `id_editorial1` int(11) NOT NULL,
  `id_lib_nser` int(11) NOT NULL,
  `nro_serie` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `des_pago` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `rut` int(11) DEFAULT NULL,
  `dv` varchar(1) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_transaccion` int(11) NOT NULL,
  `id_transaccion1` int(11) NOT NULL,
  `id_transaccion2` int(11) NOT NULL,
  `id_tipo1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL,
  `nombre_region` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen`
--

CREATE TABLE `resumen` (
  `id_resumen` int(11) NOT NULL,
  `id_cabecera` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `folio_docto` int(11) DEFAULT NULL,
  `mto_neto` int(11) DEFAULT NULL,
  `mto_iva` int(11) DEFAULT NULL,
  `mto_total` int(11) DEFAULT NULL,
  `mto_multa` int(11) DEFAULT NULL,
  `id_cabecera1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `tipo_telefono` int(11) DEFAULT NULL,
  `est_telefono` int(11) DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_calle`
--

CREATE TABLE `tipo_calle` (
  `id_tipo` int(11) NOT NULL,
  `des_calle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_direccion`
--

CREATE TABLE `tipo_direccion` (
  `id_tipo_dire` int(11) NOT NULL,
  `des_tipo_dire` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo` int(11) NOT NULL,
  `des_tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE `tipo_transaccion` (
  `id_tipo_transaccion` int(11) NOT NULL,
  `des_tipo_transaccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `id_transaccion` int(11) NOT NULL,
  `id_tipo_transaccion` int(11) DEFAULT NULL,
  `id_distribuidor` int(11) DEFAULT NULL,
  `id_trabajador` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `folio_docto` int(11) DEFAULT NULL,
  `id_det_pago` int(11) DEFAULT NULL,
  `id_det_pago1` int(11) NOT NULL,
  `id_cabecera` int(11) DEFAULT NULL,
  `id_cabecera1` int(11) NOT NULL,
  `id_tipo_transaccion1` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_persona1` int(11) NOT NULL,
  `id_persona2` int(11) NOT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_estado1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aut_lib`
--
ALTER TABLE `aut_lib`
  ADD PRIMARY KEY (`libro_id_libro`);

--
-- Indices de la tabla `cat_lib`
--
ALTER TABLE `cat_lib`
  ADD PRIMARY KEY (`libro_id_libro`);

--
-- Indices de la tabla `det_lib`
--
ALTER TABLE `det_lib`
  ADD PRIMARY KEY (`libro_id_libro`);

--
-- Indices de la tabla `idio_lib`
--
ALTER TABLE `idio_lib`
  ADD PRIMARY KEY (`libro_id_libro`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
