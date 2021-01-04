-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2019 a las 23:28:30
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Quesos', '2019-08-09 19:58:59'),
(2, 'YOGURES', '2019-08-09 19:59:32'),
(3, 'Leches', '2019-08-09 19:59:56'),
(4, 'Mantequillas', '2019-08-09 20:00:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'carlos Araujo', 10496374, 'carlos@gmail.com', '(304) 482-5483', 'manzana a1 casa 8', '1992-02-25', 10, '2019-08-13 17:36:35', '2019-08-13 22:36:35'),
(2, 'Angélica López', 456789, 'angelica@gmail.com', '(304) 569-4878', 'carrera 34 #25-28', '1991-02-05', 5, '2019-08-14 17:04:26', '2019-08-14 22:04:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Queso Doble Crema', 'vistas/img/productos/101/405.png', 20, 1500, 2100, 0, '2019-08-13 22:36:00'),
(2, 1, '102', 'Queso Pera', 'vistas/img/productos/102/802.png', 20, 4500, 6300, 0, '2019-08-12 20:17:43'),
(3, 1, '103', 'Queso Parmesano', 'vistas/img/productos/103/756.png', 20, 3000, 4200, 0, '2019-08-12 20:17:59'),
(4, 1, '104', 'Queso Mozarrella', 'vistas/img/productos/104/559.jpg', 20, 4000, 5600, 0, '2019-08-12 20:18:14'),
(5, 1, '105', 'Queso Crema', 'vistas/img/productos/105/398.png', 10, 1540, 2156, 10, '2019-08-13 22:36:35'),
(6, 2, '201', 'Yogurt Mora', 'vistas/img/productos/201/921.png', 20, 5600, 7840, 0, '2019-08-12 20:21:18'),
(7, 2, '202', 'Yogurt Fresa', 'vistas/img/productos/202/165.jpg', 20, 9600, 13440, 0, '2019-08-12 20:21:34'),
(8, 2, '203', 'Yogurt Melocotón', 'vistas/img/productos/203/417.jpg', 20, 3850, 5390, 0, '2019-08-12 20:21:47'),
(9, 2, '204', 'Yogurt Vainilla', 'vistas/img/productos/204/338.png', 20, 9600, 13440, 0, '2019-08-12 20:22:01'),
(10, 2, '205', 'Yogurt Guanabana', 'vistas/img/productos/205/581.jpg', 20, 8000, 11200, 0, '2019-08-12 20:22:18'),
(11, 3, '301', 'Leche Entera', 'vistas/img/productos/301/306.jpg', 20, 1440, 2016, 0, '2019-08-13 17:02:41'),
(12, 3, '302', 'Leche Deslactosada', 'vistas/img/productos/302/837.jpg', 20, 1600, 2240, 0, '2019-08-13 17:04:39'),
(13, 3, '303', 'Leche Descremada', 'vistas/img/productos/303/600.jpg', 20, 900, 1260, 0, '2019-08-13 17:07:13'),
(14, 3, '304', 'Leche Deslactosada Descremada', 'vistas/img/productos/304/982.jpg', 15, 100, 140, 5, '2019-08-14 22:04:23'),
(15, 3, '305', 'Leche Almedras', 'vistas/img/productos/305/210.jpg', 20, 162, 226, 0, '2019-08-13 19:35:06'),
(16, 4, '401', 'Mantequilla Con Sal', 'vistas/img/productos/401/592.jpg', 20, 3500, 4900, 0, '2019-08-13 19:45:53'),
(17, 4, '402', 'Mantequilla Sin Sal', 'vistas/img/productos/402/331.png', 20, 3550, 4970, 0, '2019-08-13 19:47:40'),
(18, 4, '403', 'Mantequilla Extra Salada', 'vistas/img/productos/403/601.jpg', 20, 3600, 5040, 0, '2019-08-13 19:49:59'),
(19, 4, '404', 'Mantequilla nata dulce', 'vistas/img/productos/404/671.jpg', 20, 3650, 5110, 0, '2019-08-13 19:51:59'),
(20, 4, '405', 'Mantequilla Natural', 'vistas/img/productos/405/174.jpg', 20, 3700, 5180, 0, '2019-08-13 19:54:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(3, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auia1mVQcfGnHbxgvsMbUgrxcI9fwgAFS', 'Administrador', 'vistas/img/usuarios/admin/333.jpg', 1, '2019-08-15 16:21:16', '2019-08-15 21:21:18'),
(5, 'julio Gomez', 'julio', '$2a$07$asxx54ahjppf45sd87a5au5a6M9V.6OP.d9WxhqBqEwSX/Ub40lSG', 'Vendedor', 'vistas/img/usuarios/julio/123.jpg', 0, '0000-00-00 00:00:00', '2019-08-07 22:29:01'),
(6, 'ana leal', 'ana', '$2a$07$asxx54ahjppf45sd87a5auzGfz9GaOjSPJ5jEDpHii9vSQEEqY1Zm', 'Vendedor', 'vistas/img/usuarios/ana/237.png', 1, '2019-08-15 15:45:38', '2019-08-15 20:45:39'),
(9, 'Gerardo Martinez', 'gerardo', '$2a$07$asxx54ahjppf45sd87a5auS6XO8Zr//T/0gdqF3AE5nVk.pf9eypq', 'Especial', 'vistas/img/usuarios/gerardo/491.png', 1, '2019-08-15 15:56:02', '2019-08-15 20:56:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(3, 10001, 1, 6, '[{\"id\":\"5\",\"descripcion\":\"Queso Crema\",\"cantidad\":\"10\",\"stock\":\"10\",\"precio\":\"2156\",\"total\":\"21560\"}]', 4096.4, 21560, 25656.4, 'Efectivo', '2019-08-13 22:36:35'),
(4, 10002, 2, 3, '[{\"id\":\"14\",\"descripcion\":\"Leche Deslactosada Descremada\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"140\",\"total\":\"700\"}]', 133, 700, 833, 'Efectivo', '2019-08-14 22:04:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
