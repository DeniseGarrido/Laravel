-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-02-2024 a las 18:14:28
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
(1, 'Nemo porro et consectetur earum repellat.', 'Ex quia commodi harum beatae. Sed modi quisquam est sint libero dolores eaque. Fugiat dolor quia id. Autem cumque iste nulla nihil.\n\nMinima illum officiis architecto a dolores. Excepturi cupiditate impedit vel ea expedita necessitatibus delectus. Qui repudiandae asperiores sed quibusdam odit aut. Sunt ab atque sequi aut.\n\nUt fugiat quibusdam odio at fugit. Odit labore a ex id consequatur et dolorem. Sint velit deserunt aliquam qui. Deserunt quia enim ut aut iste aut tenetur.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 1),
(2, 'Ratione dolores magnam nobis.', 'Sunt ut corporis harum aspernatur ad. Quod quaerat doloribus in ex aut. Aut velit culpa quia et.\n\nPraesentium dicta eos accusantium mollitia. Labore tempore nesciunt corporis doloremque eum inventore. Laboriosam dolor aspernatur in aut voluptates. Omnis delectus alias et reprehenderit. Et dignissimos voluptatem non omnis ut eos natus.\n\nUt minima voluptatem quidem sunt culpa. Vitae non aut perspiciatis unde et ipsa veniam sapiente. Facilis occaecati expedita fugit tenetur enim eos. Ut libero sit fugit ea ea.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 1),
(3, 'Ut et vitae modi enim.', 'Et eos non corporis et. Minus quam fuga officia totam et sunt maiores ea. Quam fugiat reprehenderit eaque non debitis corrupti eligendi id. Aut vero soluta a.\n\nNon pariatur aliquam expedita. Repellat quis nisi minus voluptatum. Voluptatibus et necessitatibus rem fuga facere est. Voluptatum quis et omnis quia sequi minima dicta.\n\nArchitecto amet velit qui sed voluptates molestiae. Et aut sequi ullam enim. Officiis nesciunt eaque et maiores. Veritatis blanditiis qui quam quas. Quo sit et totam soluta sed tenetur esse ullam.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 1),
(4, 'Aut expedita quia sapiente officia totam.', 'Iste ut eum earum culpa qui non nulla voluptatem. Quia rerum ullam quo et et mollitia sint. Nihil maiores dolorem asperiores et unde. Ipsam reprehenderit ea modi qui.\n\nQuia fugiat aut ut sed officia. Temporibus omnis aspernatur molestiae. Et tempore omnis in. Ea voluptatem rerum voluptatem sit eveniet doloribus autem.\n\nTotam fugit et tempore ratione facere voluptatem dignissimos quia. Quisquam vel corrupti labore libero qui quos sit. Quo beatae consequuntur molestiae. Et est eum aut ullam non tenetur aut.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 2),
(5, 'Amet odio molestiae est omnis.', 'Magni dolorum error odio facere aspernatur commodi suscipit. Non sunt libero ut quibusdam et. Ipsum et similique necessitatibus voluptas soluta qui. Doloribus dolorem voluptatem aut et.\n\nSaepe quia quia dolorem maiores quis. Quia aut enim voluptatem nesciunt. Aperiam exercitationem aut voluptates deleniti.\n\nSoluta impedit eveniet consequatur saepe. Temporibus dolore ullam voluptatibus aut quisquam adipisci voluptatem. Suscipit atque inventore assumenda nam.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 2),
(6, 'Cumque est quod eaque voluptatem.', 'In quibusdam commodi odio voluptates. Minima non earum id. Aut velit mollitia dolor. Nam unde quasi recusandae.\n\nDebitis consequuntur optio sunt et voluptatem nostrum dolores dolor. Atque est dolorum reprehenderit et vel sint. Ut dolores voluptatem cum. Porro beatae et eos dolor similique corporis deleniti.\n\nFacere eum ut numquam quam molestias et nemo. Quo magni tempore itaque aliquid est. Dolore doloribus earum perspiciatis itaque et maiores nobis. Aut unde saepe consequatur consequatur cum.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 2),
(7, 'Incidunt molestiae cupiditate rerum omnis perferendis voluptates distinctio.', 'Ipsa adipisci recusandae est eius alias et est. A odit id excepturi consectetur.\n\nPossimus odit minima iusto repellat et temporibus ad. Et nulla sint dignissimos. Sint recusandae expedita quidem enim tempore qui.\n\nAut unde in enim nihil distinctio. Quod necessitatibus aut sequi ut laudantium ea. Voluptatem unde neque sapiente dolores enim neque expedita.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 3),
(8, 'Dolorem delectus similique commodi libero expedita provident.', 'Expedita tenetur perferendis quo distinctio dolore voluptas exercitationem. Ut ut est accusamus explicabo. Similique similique est autem iste mollitia sint ea.\n\nAssumenda repudiandae quaerat magnam. Voluptas ab non deserunt qui quidem. Sapiente ut natus vel nisi quis ea quibusdam. Aspernatur repudiandae ut rerum est.\n\nIusto quo quidem officia incidunt voluptatum autem sunt. Voluptas est aut ad est. Ratione magni sed dignissimos eos praesentium reprehenderit et. Sapiente aliquam et vero eius. Nobis molestias eum id ratione voluptatem.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 3),
(9, 'Odit doloribus doloremque minus quia natus.', 'Molestiae consequatur voluptates sint debitis sint ut veniam. Nulla ab voluptas tempora enim maiores. Ad est voluptatem maxime perspiciatis laudantium alias. Aperiam est porro cumque rem asperiores. Minus quasi ut ut molestiae repellat aut ratione.\n\nLaboriosam reiciendis in perferendis consequatur sed. Consequuntur quidem iure voluptatum qui earum. Non eaque nesciunt animi officia illo. Ad ea eaque libero et. Sequi facere est beatae et.\n\nCupiditate est exercitationem eius eum quaerat explicabo. Vel ex labore mollitia beatae. Aperiam accusantium consequuntur soluta vel voluptas at saepe quod.', '2024-02-13 16:00:11', '2024-02-13 16:00:11', 3);

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
(1, 'quae', 'vel', '2024-02-13 15:59:42', '2024-02-13 15:59:42'),
(2, 'quo', 'veniam', '2024-02-13 15:59:42', '2024-02-13 15:59:42'),
(3, 'provident', 'ea', '2024-02-13 15:59:42', '2024-02-13 15:59:42');

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
