-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-02-2024 a las 14:02:52
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
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_02_12_104619_crear_tabla_posts', 1),
(4, '2024_02_12_104753_add_usuario_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `contenido`, `created_at`, `updated_at`, `usuario_id`) VALUES
(3, 'Aut repudiandae velit ea id et et sed.', 'Est et id et ut in sapiente. At voluptatem non soluta eaque reiciendis. Voluptatum est fugit soluta vel.\n\nNatus et qui sint sequi. Et quae consequatur ipsum quae sapiente. Voluptatem enim molestiae perspiciatis nobis ut. Pariatur autem est ex adipisci ut explicabo. Veritatis quo expedita voluptas velit quod doloribus ullam.\n\nOfficia ullam quis placeat saepe ut laboriosam. Aliquam eum sed nisi veritatis. Culpa aperiam earum animi non.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 1),
(4, 'Natus reprehenderit cupiditate nihil consequatur.', 'Aut magnam qui dicta non impedit asperiores. Sunt sit maiores corrupti quasi voluptatem. Voluptas nihil aut voluptatem est.\n\nId non et blanditiis tempore minima. Voluptas et maiores reiciendis. Est iste quo deserunt cum nemo.\n\nAut voluptas at pariatur consequuntur esse et eos. Nesciunt quam necessitatibus dolores. Qui ut vel est ex voluptas amet eum.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 2),
(5, 'Pariatur et beatae nostrum culpa.', 'Quasi et fugiat vitae. Ipsum rem quia nisi deleniti repellat dolores tenetur. Neque voluptatem nemo ipsa quia ut qui vitae. Sit nisi reiciendis at.\n\nCommodi aliquid consequuntur aspernatur eveniet quam corrupti. Qui magni error aut ducimus.\n\nId ullam repellat vel ratione et eos. Et doloribus natus dolore et. Corrupti et aut et sit doloribus est sapiente. Laudantium omnis ut consectetur corrupti et cupiditate corporis.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 2),
(7, 'Possimus dolorem repellat consequatur laboriosam qui aut.', 'Ab reprehenderit et omnis maiores quos ullam. Distinctio et ut voluptatibus aperiam assumenda. Consequatur et quo qui rerum possimus unde.\n\nNon laboriosam accusamus voluptas nisi delectus sint earum inventore. Cupiditate qui quia sed omnis beatae voluptatem. Soluta aliquid nostrum eaque ut dolor qui. Totam et ea facilis eveniet quia et.\n\nEligendi quia hic voluptas dolor similique neque ab. Quae et et dignissimos et. Et veniam aut non omnis a molestiae. Est autem sit rerum ullam in ut nisi harum.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 3),
(8, 'Quia iste non consequuntur repudiandae.', 'Et saepe fuga unde minima deserunt. Quia praesentium quisquam itaque aut rerum. Molestias quo saepe recusandae aut. Enim suscipit quia dolorem deserunt.\n\nIusto est esse voluptas explicabo ipsam rem nesciunt ea. Quidem vitae et nisi est. Id dicta at voluptatem. Dolor commodi aut sed eius quam.\n\nQuae omnis quis facere. Qui repudiandae incidunt ut enim laboriosam. Sed aut hic at quia officia nam impedit qui.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 3),
(9, 'Nihil et et animi repudiandae eius et pariatur.', 'Quod quo nihil quidem non repudiandae. Voluptatem sed id rerum ratione. Voluptates voluptates sed vitae perferendis dolorem magni corrupti. Asperiores nam aliquam commodi.\n\nQui ut deleniti et est iusto. Delectus similique dolorem suscipit eaque maiores ratione sit. Dignissimos ea cumque vel quia voluptatibus adipisci. Minus provident consectetur omnis nesciunt.\n\nQuae voluptatem fugit numquam voluptatem harum quidem numquam. Omnis et quas deserunt aut.', '2024-02-19 10:36:24', '2024-02-19 10:36:24', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `password`, `created_at`, `updated_at`) VALUES
(1, 'accusamus', '$2y$12$YpBC6l2h2qISJBa/phXICe7Ch1JiqJpkKhMWTBb05Uu9Home1eN0a', '2024-02-19 10:36:19', '2024-02-19 10:36:19'),
(2, 'quia', '$2y$12$BBKvKXxFBS9oUTxdnhthMO8f4UKu4EV.VyPuGbTjqW3VCdsXQgKQq', '2024-02-19 10:36:19', '2024-02-19 10:36:19'),
(3, 'cupiditate', '$2y$12$JWU5lUapMVeB0suRQ18tqeSI.JnNoq0xS6ywBYY/0ygOGUlh4oanW', '2024-02-19 10:36:19', '2024-02-19 10:36:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_login_unique` (`login`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
