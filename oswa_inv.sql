-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2025 a las 22:18:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oswa_inv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(11, '0,5%'),
(2, '1%'),
(7, '11%'),
(8, '12%'),
(9, '14%'),
(3, '2%'),
(4, '4%'),
(5, '6%'),
(6, '8%'),
(10, 'XKILO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(2, 'cria levante x40.png', 'image/png'),
(5, 'LEVANTE 6.png', 'image/png'),
(6, 'CEBA LECHE 8.png', 'image/png'),
(7, 'super 11.png', 'image/png'),
(8, 'lecheex .png', 'image/png'),
(9, 'equino 8.png', 'image/png'),
(10, 'SAL LECHE.png', 'image/png'),
(11, 'PROTEINADA CEBA .png', 'image/png'),
(12, 'bloque.png', 'image/png'),
(13, 'SUPLEMENTO X40.png', 'image/png'),
(14, 'SM 40X1.png', 'image/png'),
(15, 'SM 40X5.png', 'image/png'),
(16, 'FOSFOR.jpeg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(2, 'CRIA LEVANTE X40K', '169996', 38000.00, 52500.00, 2, 2, '2025-05-14 19:31:50'),
(3, 'SABANERA X40K', '169980', 40000.00, 57750.00, 3, 0, '2025-05-14 19:38:47'),
(4, 'CRIA LEVANTE CEBA 4X40K', '169262', 45000.00, 59850.00, 4, 0, '2025-05-14 19:46:22'),
(5, 'CRIA LEVANTE CEBA 6X40', '169900', 47000.00, 61950.00, 5, 5, '2025-05-14 19:49:40'),
(6, 'CEBA LECHE X 40K', '169107', 50000.00, 64050.00, 6, 6, '2025-05-14 20:00:28'),
(7, 'SUPER LECHE X40K ', '169470', 52000.00, 66150.00, 7, 7, '2025-05-14 21:42:03'),
(9, 'EQUINO X40K', '170000', 55000.00, 68250.00, 6, 9, '2025-05-14 21:52:46'),
(10, 'CRIA LEVANTE 50X1KILO', '169994', 48000.00, 63000.00, 2, 2, '2025-05-14 22:18:14'),
(11, 'CRIA LEVANTE CEBA 50X1KILO', '169986', 52000.00, 65625.00, 4, 2, '2025-05-14 22:21:46'),
(12, 'CRIA LEVANTE CEBA 50X1K', '169958', 50000.00, 68250.00, 5, 5, '2025-05-14 22:24:25'),
(13, 'CEBA LECHE 50 X 1 KILO', '169939', 58000.00, 70875.00, 6, 6, '2025-05-14 22:25:20'),
(14, 'SUPER LECHE 50X1KILO', '169942', 60000.00, 73500.00, 7, 7, '2025-05-14 22:26:18'),
(15, 'LECHE EXPOSICION 50X1KILO', '170000', 65000.00, 76125.00, 8, 8, '2025-05-14 22:27:13'),
(16, 'EQUINO 50X1KILO', '169998', 65000.00, 81375.00, 6, 9, '2025-05-14 22:27:52'),
(17, 'CRIA LEVANTE 10X5KILOS', '170000', 50000.00, 63000.00, 2, 2, '2025-05-16 15:50:04'),
(18, 'CRIA LEVANTE CEBA 10 X 5KILOS', '169988', 55000.00, 65625.00, 4, 0, '2025-05-16 15:51:57'),
(19, 'CRIA LEVANCE CEB 10X5KILOS', '170000', 53000.00, 68250.00, 5, 5, '2025-05-16 16:04:31'),
(20, 'CEBA LECHE 10X 5KILOS', '169940', 58000.00, 70875.00, 6, 6, '2025-05-16 16:05:12'),
(21, 'SUPER LECHE 10 X 5KILOS', '169976', 60000.00, 73500.00, 7, 7, '2025-05-16 16:06:36'),
(22, 'LECHE EXPOSICION 10X5KILOS', '170000', 65000.00, 76125.00, 8, 8, '2025-05-16 16:14:36'),
(23, 'EQUINO 10X5KILOS', '170000', 68000.00, 81375.00, 6, 9, '2025-05-16 16:16:28'),
(24, 'CRIA LEVANTE MARUZA 10KILOS', '169840', 12000.00, 17850.00, 2, 2, '2025-05-16 16:19:04'),
(25, 'CRIA LEVANTE CEBA MARUZA 10KILOS', '169720', 13000.00, 18900.00, 4, 0, '2025-05-16 16:19:52'),
(26, 'CRIA LEVANTE CEBA X10KILOS (MARUZA)', '170000', 15000.00, 19950.00, 5, 5, '2025-05-16 16:22:11'),
(27, 'CEBA LECHE MARUZA 10KILOS', '169920', 15000.00, 21000.00, 6, 6, '2025-05-16 16:23:12'),
(28, 'SUPER LECHE MARUZA 10KILOS', '169720', 16500.00, 22050.00, 7, 7, '2025-05-16 16:24:16'),
(29, 'LECHE EXPOSICION MARUZA 10KILOS', '170000', 17000.00, 23100.00, 8, 8, '2025-05-16 16:25:45'),
(30, 'EQUINO MARUZA 10KILOS', '170000', 14000.00, 18900.00, 6, 9, '2025-05-16 16:26:12'),
(31, 'CRIA LEVANTE MARUZA POLIPROPILENO ', '170000', 10000.00, 15750.00, 2, 2, '2025-05-16 16:27:14'),
(32, 'CRIA LEVANTE CEBA MARUZA POLIPROPILENO ', '170000', 12000.00, 16800.00, 4, 2, '2025-05-16 16:29:15'),
(33, 'CRIA LEVANTE CEBA MARUZA POLIPRO', '170000', 12000.00, 17850.00, 5, 5, '2025-05-16 16:49:18'),
(34, 'CEBA LECHE MARUZA POLIPROPILENO', '170000', 13000.00, 18900.00, 6, 6, '2025-05-16 17:10:19'),
(35, 'SUPER LECHE MARUZA POLIPROPILENO ', '170000', 13000.00, 19950.00, 7, 7, '2025-05-16 17:10:55'),
(36, 'LECHE EXPOSICION MARUZA POLIPROPILENO', '170000', 15000.00, 21000.00, 8, 8, '2025-05-16 17:11:26'),
(37, 'SAL PROTEINADA LECHE X40KILOS', '170000', 72000.00, 94500.00, 10, 10, '2025-05-16 17:16:25'),
(38, 'SAL PROTEINADA CEBA X 40KILOS', '170000', 65000.00, 84000.00, 10, 11, '2025-05-16 17:16:47'),
(39, 'BLOQUE NUTRICIONAL EQUINO X10KILOS', '170000', 19000.00, 26250.00, 10, 12, '2025-05-16 17:40:26'),
(40, 'BLOQUE NUTRICIONAL EQUINO X20KILOS', '170000', 40200.00, 52500.00, 10, 12, '2025-05-16 17:40:53'),
(41, 'BLOQUE NUTRIONAL BOVINO X10KILOS', '170000', 18000.00, 26250.00, 10, 12, '2025-05-16 17:44:41'),
(42, 'BLOQUE NUTRIONAL BOVINO X20KILOS', '170000', 38000.00, 52500.00, 10, 12, '2025-05-16 17:45:39'),
(43, 'MELAZA 30X1KILO', '170000', 55000.00, 73500.00, 10, 0, '2025-05-16 17:46:40'),
(44, 'MELAZA 30X2KILO', '170000', 58000.00, 73500.00, 10, 0, '2025-05-16 17:47:09'),
(45, 'SUPLEMENTO MINERAL X40KILOS', '170000', 100000.00, 126000.00, 9, 13, '2025-05-16 17:50:17'),
(46, 'SUPLEMENTO MINERAL 40X1KILO', '170000', 140000.00, 168000.00, 10, 14, '2025-05-16 18:10:59'),
(47, 'SUPLEMTENTO MINERAL 10X5KILOS', '170000', 140000.00, 168000.00, 10, 15, '2025-05-16 18:11:37'),
(48, 'SULFATO DE MAGNESIO 50X1KILO', '170000', 100000.00, 136500.00, 10, 0, '2025-05-16 18:12:06'),
(49, 'CARBONATO DE CALCIO 50X1KILO', '170000', 40000.00, 57750.00, 10, 0, '2025-05-16 18:12:30'),
(50, 'AZUFRE 50X1KILO', '170000', 100000.00, 136500.00, 10, 0, '2025-05-16 18:12:57'),
(51, 'COSMOSALES X40K', '170000', 35000.00, 50400.00, 11, 0, '2025-05-16 18:16:31'),
(53, 'COSMOSALES X40KL', '170000', 45000.00, 58800.00, 5, 0, '2025-05-16 18:18:02'),
(54, 'COMOSALES X40KIL', '170000', 42000.00, 56700.00, 4, 0, '2025-05-16 18:18:59'),
(55, 'COSMOSALES X40KLO', '170000', 48000.00, 60900.00, 6, 0, '2025-05-16 18:20:06'),
(56, 'COMOSAL X40K', '170000', 50000.00, 63000.00, 7, 0, '2025-05-16 18:20:36'),
(57, 'COMOSALES MARUZAX10', '170000', 9000.00, 14175.00, 11, 0, '2025-05-16 18:21:23'),
(58, 'COSMOSAL MARUZAX10', '170000', 11000.00, 14700.00, 4, 0, '2025-05-16 18:21:54'),
(59, 'COSMOSALES MARUXA X10', '170000', 12000.00, 15225.00, 5, 0, '2025-05-16 18:22:41'),
(60, 'COSMOSAL MARU X10KLO', '170000', 13000.00, 15750.00, 6, 0, '2025-05-16 18:23:23'),
(61, 'COSMOSALES MARU X10', '170000', 13500.00, 16275.00, 7, 0, '2025-05-16 18:24:42'),
(62, 'FOSFOR CHINO', '102000', 60000.00, 75000.00, 10, 16, '2025-05-16 18:30:04'),
(64, 'LECHE EXPOSICION X40K', '169450', 55000.00, 68250.00, 8, 8, '2025-05-16 18:41:48'),
(65, 'EQUNO X5KILOS', '169998', 70000.00, 81750.00, 6, 9, '2025-05-16 22:14:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 62, 34000, 2550000000.00, '2025-01-08'),
(2, 4, 150, 8977500.00, '2025-01-08'),
(3, 16, 1, 81375.00, '2025-01-10'),
(4, 2, 2, 105000.00, '2025-01-10'),
(5, 25, 30, 567000.00, '2025-01-10'),
(6, 5, 4, 247800.00, '2025-01-10'),
(7, 6, 4, 256200.00, '2025-01-10'),
(8, 28, 25, 551250.00, '2025-01-10'),
(9, 4, 100, 5985000.00, '2025-01-10'),
(10, 6, 175, 11208750.00, '2025-01-10'),
(11, 64, 250, 17062500.00, '2025-01-10'),
(12, 11, 2, 131250.00, '2025-01-10'),
(13, 24, 80, 1428000.00, '2025-01-10'),
(14, 7, 15, 992250.00, '2025-01-10'),
(15, 5, 15, 929250.00, '2025-01-10'),
(16, 28, 15, 330750.00, '2025-01-10'),
(17, 25, 15, 283500.00, '2025-01-10'),
(18, 21, 6, 441000.00, '2025-01-10'),
(19, 14, 3, 220500.00, '2025-01-10'),
(20, 18, 6, 393750.00, '2025-01-10'),
(21, 11, 3, 196875.00, '2025-01-10'),
(22, 7, 10, 661500.00, '2025-01-10'),
(23, 5, 10, 619500.00, '2025-01-10'),
(24, 28, 15, 330750.00, '2025-01-10'),
(25, 12, 15, 1023750.00, '2025-01-10'),
(26, 21, 6, 441000.00, '2025-01-10'),
(27, 14, 3, 220500.00, '2025-01-10'),
(28, 12, 6, 409500.00, '2025-01-10'),
(29, 10, 3, 189000.00, '2025-01-10'),
(30, 7, 40, 2646000.00, '2025-01-11'),
(31, 6, 20, 1281000.00, '2025-01-11'),
(32, 5, 11, 681450.00, '2025-01-11'),
(33, 4, 4, 239400.00, '2025-01-11'),
(34, 6, 150, 9607500.00, '2025-01-13'),
(35, 14, 20, 1470000.00, '2025-01-13'),
(36, 20, 10, 708750.00, '2025-01-13'),
(37, 13, 10, 708750.00, '2025-01-13'),
(38, 3, 10, 577500.00, '2025-01-13'),
(39, 4, 10, 598500.00, '2025-01-13'),
(40, 5, 10, 619500.00, '2025-01-13'),
(41, 64, 20, 1365000.00, '2025-01-13'),
(42, 6, 5, 320250.00, '2025-01-14'),
(43, 7, 100, 6615000.00, '2025-01-14'),
(44, 6, 50, 3202500.00, '2025-01-14'),
(45, 13, 20, 1417500.00, '2025-01-14'),
(46, 20, 20, 1417500.00, '2025-01-14'),
(47, 4, 75, 4488750.00, '2025-01-14'),
(48, 4, 25, 1496250.00, '2025-01-15'),
(49, 6, 40, 2562000.00, '2025-01-15'),
(50, 7, 60, 3969000.00, '2025-01-15'),
(51, 11, 2, 131250.00, '2025-01-15'),
(52, 14, 3, 220500.00, '2025-01-15'),
(53, 28, 40, 882000.00, '2025-01-15'),
(54, 25, 40, 756000.00, '2025-01-15'),
(55, 25, 40, 756000.00, '2025-01-15'),
(56, 7, 40, 2646000.00, '2025-01-15'),
(57, 27, 40, 840000.00, '2025-01-15'),
(58, 28, 40, 882000.00, '2025-01-15'),
(59, 4, 10, 598500.00, '2025-05-16'),
(60, 6, 5, 320250.00, '2025-05-16'),
(61, 64, 10, 682500.00, '2025-05-16'),
(62, 65, 2, 163500.00, '2025-05-16'),
(63, 13, 1, 70875.00, '2025-05-16'),
(64, 28, 10, 220500.00, '2025-05-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'pzg9wa7o1.jpg', 1, '2025-05-16 15:07:21'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2017-06-16 07:11:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(3, 'User', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
