-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Oca 2024, 11:16:22
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `chat`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `sender` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `room_id`, `text`, `sender`, `created_at`) VALUES
(91, 4, 'bmFiZXI=', 'batu', '2023-12-31 18:43:47'),
(92, 4, 'aXlpZGlyIGthbmthIHNlbmRlbiBuYWJlcg==', 'miko', '2023-12-31 18:43:52'),
(93, 4, 'ZXl2YWxsYWggc2HEn29sYXPEsW4=', 'batu', '2023-12-31 18:44:01'),
(94, 4, 'bmUgeWFwxLF5b24=', 'batu', '2023-12-31 18:44:06'),
(95, 4, 'cHJvamUgeWFwxLF5b20ga2Fua2Egc2VuIG5lIHlhcMSxeW9u', 'miko', '2023-12-31 18:44:18'),
(96, 4, 'b2hhIGxhbiDFn2Fuc2EgYmFrIGJlbiBkZSBwcm9qZXkgeWFwxLF5b20=', 'batu', '2023-12-31 18:44:31'),
(97, 4, 'dmF5IGJlIGNpZGRlbiDDp29rIMWfYcWfxLFyZMSxbQ==', 'miko', '2023-12-31 18:44:39'),
(98, 4, 'Z2FsaWJhIGthZmF5xLF5ZWRpbSBiZW4=', 'batu', '2023-12-31 18:44:48'),
(99, 4, 'YmVuY2UgZGUgw7Z5bGUgZ8O2csO8bsO8eW8=', 'miko', '2023-12-31 18:44:55'),
(100, 4, 'xZ91IG1lc2FqIGxpbWl0aW5pIGRvbGR1cm1heWEgw6dhbMSxxZ/EsXlvbSBrYW5rYQ==', 'batu', '2023-12-31 18:45:08'),
(101, 4, 'c2VuZGUgbWkgw7Z5bGUgeWFwxLF5b24=', 'miko', '2023-12-31 18:45:15'),
(102, 4, 'ZXZldA==', 'miko', '2023-12-31 18:47:30'),
(103, 4, 'aGF5IGFtaw==', 'miko', '2023-12-31 18:47:32'),
(104, 4, 'c3Jnd2d3', 'miko', '2023-12-31 18:47:42'),
(105, 4, 'c2dzZ3Nncmc=', 'miko', '2023-12-31 18:47:45'),
(106, 4, 'ZHJoZXRoZXRo', 'batu', '2023-12-31 18:49:06'),
(107, 5, 'c2VsYW0=', 'batu', '2023-12-31 19:19:53'),
(108, 4, 'c3Jncndncndn', 'batu', '2023-12-31 19:24:21'),
(109, 4, 'aGV5', 'batu', '2023-12-31 19:24:47'),
(110, 4, 'aGV5', 'batu', '2023-12-31 19:25:27'),
(111, 4, 'c2VsYW0=', 'batu', '2023-12-31 19:25:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_by`, `created_at`) VALUES
(1, 'Oda 1', 'batu', '2023-12-31 17:26:32'),
(2, 'Oda 1', 'batu', '2023-12-31 17:26:51'),
(3, 'Oda 2', 'batu', '2023-12-31 17:27:15'),
(4, 'miko ve batu', 'batu', '2023-12-31 18:43:30'),
(5, 'batu ve mikal', 'batu', '2023-12-31 19:19:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_members`
--

CREATE TABLE `room_members` (
  `room_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_room_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room_members`
--

INSERT INTO `room_members` (`room_id`, `username`, `room_name`, `added_by`, `added_at`, `is_room_admin`) VALUES
(4, 'batu', 'miko ve batu', 'batu', '2023-12-31 18:43:30', 1),
(4, 'miko', 'miko ve batu', 'batu', '2023-12-31 18:43:30', 0),
(5, 'batu', 'batu ve mikal', 'batu', '2023-12-31 19:19:49', 1),
(5, 'miko', 'batu ve mikal', 'batu', '2023-12-31 19:19:49', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'batu', 'batu@gmail.com', 'scrypt:32768:8:1$Ulb6rXJDgSfrWZYK$1c2624cda088cd2611d0afc53a3cb1c4339a1ad3411a451ff68353ef703cf3572549048eb941762e9a0062cca2de72d8c2be26f805f16d41dbb010b030120f78'),
(2, 'ebu', 'ebu@gmail.com', 'scrypt:32768:8:1$qZBYvPvYDu21aCpb$1e1e723733b8b3468c3e4ae43043ec013680bee1d4c2758c758baffe16b4f97759cdee863ef9198626f36d2d278bb0d8cd14a36fca584ba9aa8a629d24c21be9'),
(3, 'miko', 'miko@gmail.com', 'scrypt:32768:8:1$8VAxOIS1UsHyJE3s$ff19d5c2dee26b95704cf3caa30700fc93c81328fbf38b879ba2e74489077fcd6c20597245e4ff2d8ec97b94edc15fabe6aad5a4d3131d1054e61e2b7255f795'),
(4, 'adem', 'adem@gmail.com', 'scrypt:32768:8:1$hD1zXwYHC2ChjPth$fddf2f5d7ae502d0cbb0100be3da8c9ad9beeb75c2bbc2716c2eac2fd07d17fd053e664c735bc535d2aac8d40bfd738345788eea89b9f3e11121bbd473e15b36'),
(5, 'can', 'can@gmail.com', 'scrypt:32768:8:1$NejJ7W1iMtA5Nj8w$8b949417088c9540adc0ef81f506c159b3e68bb596f906d7f06ca076778cb6dbc6e89388399e112cdbb100c599f4f2fa50eca837e05c72ec0c70b7381ea9d867');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room_members`
--
ALTER TABLE `room_members`
  ADD PRIMARY KEY (`room_id`,`username`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Tablo için AUTO_INCREMENT değeri `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `room_members`
--
ALTER TABLE `room_members`
  ADD CONSTRAINT `room_members_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
