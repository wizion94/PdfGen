-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2022 г., 19:08
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cert_generator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cert_number` int(11) NOT NULL,
  `course_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_date` date NOT NULL,
  `qr_code_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `certificates`
--

INSERT INTO `certificates` (`id`, `cert_number`, `course_name`, `user_name`, `final_date`, `qr_code_url`, `created_at`, `updated_at`) VALUES
(5, 1, 'test', 'test', '2022-05-10', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAvhSURBVHja7V1dbFxXEV5jr72JUzubBIFdYpO1mgD5AZzw0zZQbWQLpEixI0WIqgJbScUDNO4TP2tEkYDarVIJZCJUEKaJVMlJURXbbZ8cNUIkpaiOIxFHETG1ZRdiFNLYLt7Ym9heXnzPnGqHuefuPfd6bX3zNJo5M2fut3tHc3bPmROJ2KKr2VyqJ/Ugo05yfpqZgRdJnVTCFs66nrG+ausRPxIBASyABbAAFsACWCCABbBWmErsu8z8TlTff9HF/teW1N8ps/1kRRo/7t08OUrLnV3LzMxGzmVVdJlJb8gjzIHtDlfLqfs+x6inK5eZ4d1Klrjgfe5a/ptVY/1b9mCxJUdOaPdl9aKpH3OaQM5CggdYAAtgASwQwLJYwU/KRrG4qftbtuKc9KVmaGpe1leZgjVZLTtKdZiGVO0dluYvMsJGbiRF0aS4+iOKlVc7JzrlMG5WhbI29EupXNEldmBb+TJzuV20Rs5CggdYAAtggQAWwAJYq3K5s5L0p02mI7euAbAqs4rdOyQPvef8i3Ge1jNT3MCBhlxZ62m8hshZAAtggQAWwAJYAAsV/P+rNF+273PiDw5X9sSaAmvuGPE35KFRWa2sb+1XsqQC62c/DvtNCXhtmPC15WhrzAGL09aE/s1CzgJYAAtgASyABQJYhVNnTSsurj6W90m9OQ+X7+daL9FP0UWbwgYr5rIVZYex+y2KG9y7zKS3aCujqJmbSgqok8xnnV00V/YpWf1lw8h2uDxjzBSseEeBff93qYDud1py2YKchQQPsAAWwAIBLIAFsApyuZMMcqJvcMJPGRq/9S1OuodbX9Up9koFo68rDNhVS6hpTbiwtEx9Wu3syJa0T+eiI5vTrOe4llDKWqvB+xzZgo6b9ZZQQW9mKzKU8cKIdWvkLCR4gAWwABYIYAGslajgA6A/2nd5hpHdPRMOWNbK24c44eOKG1RHlvPo1PRZinI39SlSwsw+OTJbz1iyK6zvsJ+JNihjvcvRNnVGWrYus/WMyFkAC2ABLIAFsEAAy0udNcNWJmoPiaauZAZ+kDWeSXkqNu69mcnYecgZWb2uVBwYU1V0yUZO36H242yjrU83mBr986OM9VOcSyqyW0453MM7qexUUJL1P7nYkjvFpVr9I7lqrU8pS91HHY4Fo+u48pgN4Odrpklt/0lm3LOMLErGh02de1D7y1lFSEVI8ABrpcHKAgPkLLyGAAtgrUniUxZdiDY2xQgP/dTh6kZF68g7zofR38Sp/5pbhGeoBI8Myc65gXRo4Ptvin5Yl0OyumSBUd+qliP6Gi2BmHGz2qIhK/rh1Fk24AFnd9JSKafuO5j74c9zjhJMwKPqyodI/D+56n9p1zL4uzehOKw3wJloyWccxX7UyFlI8AALYAEsgAUCWB7I55aj16nu2c+dTn7DUph3+2V9v6kjGvj1Us9+fIL1tHaxGgdWEyNrUX8AcF2OYoOMybzW5egEo5e3HEV61F8t+yig28xp9iku3q5HLIGVF+31rL0k6y+bzpj1Fy9yFhI8wAJYAAtggQBWeBW8TumCchMaWFG2qw3X2D/5FcXSvh6XnjifFLXzedycHGvhgiRhhS20sqbUTTYpRt1D6qeyPmjOJd6kaM2ekSbSf8G/7QhdGs9GupQ5chYSPMACWAALYIEAFsAKqII/wEmbnna4Bm4nxtsHRJ/XSH1e/DCeoOufO79kGjE5f329OPCwJYjOnZP1HapojfubaEGst/UuR0p4TybN+Szjkgay5zwSpM8yFXxcaTsCXkhbIrkp7n1f1q76KHKWtQSPffAewMI+eHyz8M3CNwvfrDVawQfr/oIdN7f+JqrvDNmK97wvsF5T3N/pvrTUQcO52xrtPMMI+Un+XLFqtTPmMk2PunGae48+QV1Q95OjixxYLmekHyWwWGn49Khtm3WsNlGFnOUvwQMCgIU6C98sFKX4ZqGC5+useUPzDKW8WEgRz1syjnmfp+Rws+J7FdfezljTQDoe8Bnt0IDc4LKZkc2YroZKtSDXic57RT9Zzfi2fAUee/KZfuvvcon4BvP/QILUVxm1dvp70PQPC5nusaH1cVuOtOWOuOVII+QsJHiABbAAFsACASyAtTLLHfONOT+Q1T+R1b9Q3I7nGPULLzDCs84x5nf8XT989iwjfNIfcONzEnWzNkrdYzxNC1fB886Zi9XyqeCJEipe9hrpuFJrn06XEn7o35081sJlq+wnnlge6hhyFhI8wAJYAAtggQBWPhW8xr/3nnf7t/KY85LpwMuFBtaAYq/vz8PexUZ5v0v9g06fzlVHGmXn7EASbpej6NnicFRCHzkgz82C1UBgBfBZJJ3Gn3xjqsecTfrn3Rw5YeqHBh4uNw2jIVdE/6WMIGchwQMsgAWwABYIYAVdwQdAS0sF8ZRUnUX9WGtgxegncZetQEnTaWZKZWtVUEddXKpnLOKsNZGmpoegC5oT7+baFCeZ92w9CdvaFMvt67npgkHKtGURe+FESzYU4s9Ie/czjpyFBA+wABbAAlgggAWwAl/utBLfWWVodLNVVH/6h57D+MtvFfvx56SBi3T4OPJi7jaOpaPeIZh4hhYALznc79027ozLFfyN2WW67eKH+pSmHZPZPrmCp/8eIs3GhwZm5T6lphW83uVICfkuRx7ukXb+HzA/PbN+jeUsHKFDggdYKw4WzkgjZ+E1BFirqYI3H/qB9x1AV9j/K8iPfBHWVapAt20qCLC00lo+NKzdXpb6sjiQeps+yfVq0rYc3RP/bHmmV7EDDd4fjZ6sSRz3MRroksBLDuUD8aHV8NI8VrnMDMvjKoyfBjkLCR5gASyABbBAAMtLUbpIfLF3c3/WH7IXZbzQkvNi01lKtPXOeI3zdaPdL2NTovl2ucvRZm4bjVbV044kGthbwggbGZlbvb2RkY1yy7vuo8zir97lkxhnfs1nr2VImXY54miWnfsid7Ead0ba/GI1Y+rmuhzdZLwjZyHBAyyABbAAFghgAayAljv2XaZ/RHyXU2X/+RXZ6MyZAgOG20ZTMk18JaMf4xzRKuVKNtd64SSN/JWz7po6KcdG6uZTivXXVHda1D7faRqQBlalbOOirgjgM60sOEfIWQALYAEsgAWwQAArnwp+2Janh8oYYT79bSgi+e6CkYxiq8UdSRnqNlO00xdYu22BxV7LkIf33l7FzjklfA11QaWP5FnautQnboQZoSi4M9Ia0TRjdDFF10cDXBsGQFu/Gc48NE0nJ0XOQoIHWAALYAEsEMDyUpQWdHTcKayikOfTpDpYiTzcjzJPk+DUCckkwkfB3aGWfNNzjFpAD+TxnlGXIx2sCzWe46hjZBW0pNCOm7zi8OkNsss95xzu8Kid78vOd5GzkOABFsACWCCABbAA1upb7kydkI12tHif6NVXTUe2+1ITPW868B+mLvWVljphMVktG6XU5qU6+YTF3iHZEdcvaUse6gecTVCL/ta6cebWgXRtgSykK3IPlOstlMpzN2jp1zLEyq0HxJypTyNnIcEDLIAFsAAWCGDZq+B90oh3k9lJPxNmJqw/w7//Gw5YM9o1Z9x9yscY2duNfmYcpgZM9d8znDEiB/mStuWoPKQKviX3TH76WKAzMi1wh/OwYdXIWUjwAAtgrSqw0NTVA1ho6orXEK/hii93AngNuWY//U32nW9ghFQEHz8pBhSZMp2H33JkiSrvBPjhRsl5K52wOCW3Gv0Nc+agXT4jnUo53EQtchZyFkoHlA4ACzkLhJyF1zDoCt6+y/lf2vJEjg7uWWaW2I1E164Zeuw0nbr3uilYVS53I8vdhzLsdqdBtY2J28/0VW7G75KjLzjMIuvcdINVVhtIM3LHLq5rf1gckb9ZVQF8hx2faU5ZWhX6O1W62WvkyFlI8AALRSmKUryGILyGnip4/TWcCHt2bqNR8YP25+EeLM0VfDXGy53acIrBLsWe42ZsVsd+mw5EpKo/0sXI2jj145w1N3f8TthrQxeKHiew5JGtLp6O5h4aWNTA+rbhxWrIWSgdUDoALNRZAAs5C68hwFpp+h+0d66XBHRDTAAAAABJRU5ErkJggg==', '2022-05-10 13:24:51', '2022-05-10 14:05:28'),
(6, 1, 'test', 'test', '2022-05-10', 'data:image/png;base64,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', '2022-05-10 13:25:46', '2022-05-10 13:25:46'),
(7, 1, 'test', 'test', '2022-05-10', 'data:image/png;base64,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', '2022-05-10 13:26:00', '2022-05-10 13:26:00'),
(8, 8, 'test1', 'test', '2022-05-10', 'data:image/png;base64,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', '2022-05-10 13:29:06', '2022-05-10 13:39:02'),
(9, 9, 'Course', 'Serhii', '2022-05-10', 'data:image/png;base64,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', '2022-05-10 14:05:59', '2022-05-10 14:05:59');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_10_112042_create_certificates_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `users`
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;