-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 juin 2022 à 12:09
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, '6eme', NULL, NULL),
(2, '5eme', NULL, NULL),
(3, '4eme', NULL, NULL),
(4, '3eme', NULL, NULL),
(5, 'Seconde', NULL, NULL),
(6, 'Premiere', NULL, NULL),
(7, 'Terminal', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `classe_id`, `created_at`, `updated_at`) VALUES
(1, 'Rath', 'Annabel', 5, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(2, 'Orn', 'Oleta', 5, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(3, 'Paucek', 'Esmeralda', 3, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(4, 'Hilpert', 'Humberto', 3, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(5, 'Torphy', 'Santino', 7, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(6, 'Steuber', 'Gilda', 7, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(7, 'Hyatt', 'Casimir', 2, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(8, 'Kunde', 'Bell', 3, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(9, 'Schroeder', 'Damian', 6, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(10, 'Bergnaum', 'Sally', 4, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(11, 'Davis', 'Carmel', 4, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(12, 'Lynch', 'Leonel', 1, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(13, 'Mayer', 'Maverick', 1, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(14, 'Torp', 'Jaycee', 3, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(15, 'Reilly', 'Jade', 4, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(16, 'McKenzie', 'Eleazar', 3, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(17, 'Auer', 'Kendrick', 7, '2022-04-21 11:53:56', '2022-04-25 11:41:34'),
(18, 'Kreiger', 'Marisol', 4, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(19, 'Pacocha', 'Adolph', 4, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(20, 'Hermiston', 'Orlando', 2, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(21, 'Dooley', 'Reymundo', 2, '2022-04-21 11:53:56', '2022-04-21 11:53:56'),
(22, 'McDermott', 'Arch', 2, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(23, 'Braun', 'Jaydon', 5, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(24, 'Bogisich', 'Kamren', 4, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(25, 'Gibson', 'Kaitlin', 2, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(26, 'Ullrich', 'Denis', 1, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(27, 'Reichel', 'Hassie', 3, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(28, 'Schneider', 'Jose', 1, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(29, 'Schoen', 'Izaiah', 3, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(30, 'Kris', 'Lisette', 4, '2022-04-21 11:53:57', '2022-04-21 11:53:57'),
(31, 'dan', 'david', 7, '2022-04-22 11:20:14', '2022-04-25 11:41:10'),
(32, 'zana', 'david', 2, '2022-04-22 11:34:12', '2022-04-22 11:34:12'),
(33, 'zaidi', 'david', 3, '2022-04-22 11:35:44', '2022-04-22 11:35:44');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_21_093119_create_classes_table', 1),
(6, '2022_04_21_093229_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
