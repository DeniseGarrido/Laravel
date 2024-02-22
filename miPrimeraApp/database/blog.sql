-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-02-2024 a las 19:07:15
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
(1, 'Recusandae magni est voluptates fugit amet.', 'Esse eos ad aspernatur. Minima repellat dolores labore in iusto ad nemo. Assumenda magnam ut quia.\n\nRatione aut at possimus hic. Laudantium itaque eaque beatae. Natus accusantium at voluptate dolor libero alias quos. Velit qui id incidunt illum enim.\n\nNulla maxime omnis perspiciatis eum eius minima. Dicta tenetur qui laudantium in. Recusandae dicta facilis velit. Eos dignissimos libero velit sit nisi molestias.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 1),
(2, 'Titulo modificado con API', 'Contenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con APIContenido conseguido con API', '2024-02-22 16:10:29', '2024-02-22 17:04:22', 1),
(3, 'Eos atque vel est voluptas.', 'Est odio non consequuntur molestias sunt quia. Quisquam qui error optio autem soluta. Nihil qui eligendi aut ratione corporis rem.\n\nMaxime esse nostrum tempora placeat accusamus et numquam. Suscipit culpa eos architecto earum suscipit. Et ullam provident ab odit aspernatur qui eius saepe. Dolore culpa et accusantium quae voluptas fugit quibusdam magni.\n\nIste repellat ut est dolorum veniam. Facere provident hic eaque aut officia. Et consequatur fugiat consectetur eos laboriosam magnam. Totam nemo cumque omnis consequatur et et nulla qui.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 1),
(4, 'Consequatur pariatur omnis aperiam aliquid nobis consectetur.', 'Excepturi repudiandae quisquam voluptatem doloremque consequatur. Quaerat et et velit. Vitae rerum non qui ad inventore. Vel explicabo voluptas laboriosam aliquid natus placeat rerum. Necessitatibus autem et accusamus nostrum incidunt.\n\nNeque sit neque et nisi vero aperiam. Autem et maxime aspernatur impedit non non delectus. Ipsam accusantium vel praesentium pariatur.\n\nUt corrupti qui quae consequuntur. Eum voluptatem reprehenderit autem qui. At dolorem impedit est facere commodi earum. Quaerat nobis sit possimus et.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 2),
(5, 'Corrupti amet dignissimos perferendis dignissimos natus sint assumenda.', 'Inventore eaque eaque sed et molestiae animi. In repudiandae enim ut cumque. Corrupti a quia dolorem animi magni ut.\n\nVel molestiae quam sint doloribus doloremque et. Consequatur voluptas voluptatibus quia aspernatur deserunt eos.\n\nMinus vitae eius voluptatibus nostrum. Ea quia voluptas consequatur mollitia dolorem in molestiae. Nisi rerum cupiditate itaque nihil. Inventore dolorem tenetur accusantium id sit cum aut voluptates.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 2),
(6, 'Dolorum non sunt consequatur corporis qui.', 'Molestiae voluptatem et ad officia earum id voluptatem. Corporis odit tempore ducimus velit voluptatem unde. Nihil voluptates quis delectus.\n\nAccusantium nihil sit corrupti fugiat. Consequatur itaque assumenda repellat nesciunt aut. Blanditiis aliquam similique occaecati sed id. Enim tempore eaque sit mollitia ut.\n\nEt doloremque reiciendis dolor ratione voluptatem. Quis eaque natus ipsum aut aut sit id vel. Ipsa esse necessitatibus qui qui eum. Nulla cumque perferendis et nostrum.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 2),
(7, 'Temporibus molestiae autem consequatur animi culpa quia consequuntur.', 'Temporibus voluptates architecto temporibus est ipsa velit tempore commodi. Quo explicabo iusto ut officia. Ducimus inventore quam est sint sit consectetur ut.\n\nId veritatis laudantium maxime asperiores libero ab. Nesciunt hic reprehenderit repellat rerum voluptatem. Earum veniam consequuntur et quo eum. Numquam eaque dolorem nam eaque quisquam et expedita.\n\nEst nesciunt omnis ratione rerum labore. Non totam animi nihil molestias voluptate eveniet atque. Molestiae illum animi quia atque magni. Asperiores delectus nihil ullam aliquam a sequi assumenda.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 3),
(8, 'Dolore enim voluptate deleniti porro ut dolorem in.', 'Est reprehenderit quibusdam et illo et et eum. Nam ducimus accusantium autem accusantium voluptatem rerum occaecati. Et quam officiis repudiandae nobis sint dolores eaque doloremque. Iusto ut aut et ut. Temporibus corporis ut error.\n\nNecessitatibus ea molestias eos ducimus rerum voluptatibus praesentium. Et dolor inventore consequatur vitae dignissimos porro. Hic et distinctio exercitationem voluptatem beatae laboriosam.\n\nNostrum ab ut optio ipsum facilis. Qui est est impedit accusamus et.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 3),
(9, 'Atque reiciendis autem repellendus eaque.', 'Expedita est dolor modi qui ut voluptas. Et officia repudiandae temporibus. Delectus quaerat voluptas nihil dolore velit. Nostrum quia ut doloremque.\n\nNon harum labore molestiae quas aperiam. Sunt odio nihil consequuntur eum. Nam consequatur magni minus enim rerum. Necessitatibus incidunt accusantium quae enim vel consectetur aut.\n\nCupiditate debitis excepturi sed voluptate labore ducimus est. Cumque ea quia id suscipit quidem earum dolore consequatur. Quis aut aliquam sunt deleniti veniam pariatur labore. Modi eos eum eos unde culpa rerum et est.', '2024-02-22 16:10:29', '2024-02-22 16:10:29', 3),
(10, 'Prueba API Post', 'Esto es una prueba de insertar un Post mediante la API', '2024-02-22 16:54:57', '2024-02-22 16:54:57', 1);

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
(1, 'magnam', '$2y$12$MgP9SzVGV0E4nUKEheKm6edrkIJIRErT2E9tPgi3JG.5EvYTgwCYW', '2024-02-22 16:10:28', '2024-02-22 16:10:28'),
(2, 'vel', '$2y$12$GhQ3vf01tHxRj6IWb36YHOCZGptMhA4h1HjXOoDm.P0SbqUvWrF0m', '2024-02-22 16:10:28', '2024-02-22 16:10:28'),
(3, 'a', '$2y$12$AIa9jyF8EP..PPHBOEzUeOMz9WZwvsnLTH7/HVnGAAZlgZsSSqRYe', '2024-02-22 16:10:28', '2024-02-22 16:10:28');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
