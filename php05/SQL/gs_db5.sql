-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-10-01 04:45:17
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db5`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `booklists`
--

CREATE TABLE `booklists` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `amount` int(6) NOT NULL,
  `number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `booklists`
--

INSERT INTO `booklists` (`id`, `name`, `amount`, `number`) VALUES
(1, 'HTML基礎', 1000, 10),
(2, 'HTML応用', 1500, 100),
(3, 'HTML応用', 1000, 10),
(4, 'PHP基礎', 2000, 10),
(5, 'PHP応用', 2000, 10),
(6, 'Laravel基礎', 3000, 10),
(7, 'Laravel応用', 4000, 5),
(8, 'DB基礎', 2000, 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `books`
--

CREATE TABLE `books` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `name` varchar(128) NOT NULL,
  `amount` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `books`
--

INSERT INTO `books` (`id`, `user_id`, `name`, `amount`) VALUES
(1, 1, 'PHP基礎', 1000),
(2, 2, 'Laravel基礎', 2000),
(3, 3, 'DB基礎', 3000),
(4, 3, 'HTML基礎', 1000);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `naiyou` text DEFAULT NULL,
  `indate` datetime NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`, `age`) VALUES
(1, '山崎大助', 'test0@test.jp', '教室ちょっと暑いです。', '2020-09-22 07:28:23', 40),
(2, '織田信長', 'test1@test.jp', 'メモ', '2020-09-22 16:02:47', 20),
(3, '徳川家康', 'test2@test.jp', 'メモ', '2020-09-22 16:06:42', 30),
(4, '伊達政宗', 'test4@test.jp', 'メモ', '2020-09-22 16:07:48', 30),
(5, 'デンゼル・ワシントン', 'test5@test.jp', 'メモ', '2020-09-22 16:07:48', 40),
(6, 'ディカプリオ', 'test6@test.jp', 'メモ', '2020-09-22 16:07:48', 40),
(7, '山田太郎', 'test7@test.jp', 'テスト', '2020-09-22 17:14:36', 20),
(8, '服部半蔵', 'test8@test.jp', '服部くん', '2020-09-22 17:59:31', 10),
(9, 'テスト９', 'test9@test.jp', '自分', '2020-09-22 18:13:28', 20),
(10, 'TEST10', 'test10@test.jp', 'ウイスキー', '2020-09-29 05:19:42', 20),
(11, 'TEST11', 'test11@test.jp', 'テスト', '2020-09-29 05:20:05', 20);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$WTyN2q/6vENTODEBvc3fSOaXQYMUkzugEeW7b8jq8m/7CVXpZ2YlO', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$aVqYAsfUg4vBDRrN5OY05Owfn24J7YS2ibmzF4AlxMkD2VrTnpTPW', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `purchases`
--

CREATE TABLE `purchases` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `book_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 0),
(4, 2, 3),
(5, 2, 4),
(6, 3, 4),
(7, 3, 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `useralls`
--

CREATE TABLE `useralls` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `github_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `useralls`
--

INSERT INTO `useralls` (`id`, `name`, `email`, `password`, `address`, `phone`, `github_url`) VALUES
(1, 'YamazakiDsisu', 'test1@example.com', '11111', '東京都港区', '090-0000-0000', 'https://github.com/yamazakidaisuke/'),
(2, 'Suzukisan', 'test2@example.com', '2222222', '神奈川県横浜市', '090-1111-1111', 'https://github.com/suzukisanxxx'),
(3, 'watanabesan', 'test3@example.com', '2223222', '千葉県千葉市', '090-2222-2222', 'https://github.com/aaaaa');

-- --------------------------------------------------------

--
-- テーブルの構造 `userprofs`
--

CREATE TABLE `userprofs` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `github_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `userprofs`
--

INSERT INTO `userprofs` (`id`, `user_id`, `address`, `phone`, `github_url`) VALUES
(1, 1, '東京都港区', '090-0000-0000', 'https://github.com/yamazakidaisuke'),
(2, 2, '神奈川県横浜市', '090-1111-1111', 'https://github.com/suzukisanaaa'),
(3, 3, '千葉県千葉市', '090-2222-2222', 'https://github.com/aaaaaaaaa');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Yamazakisan', 'test1@example.com', '111111'),
(2, 'Susukisan', 'test2@example.com', '222222'),
(3, 'watanabesan', 'test3@example.com', '222222');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `booklists`
--
ALTER TABLE `booklists`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `useralls`
--
ALTER TABLE `useralls`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `userprofs`
--
ALTER TABLE `userprofs`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `booklists`
--
ALTER TABLE `booklists`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルの AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `useralls`
--
ALTER TABLE `useralls`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `userprofs`
--
ALTER TABLE `userprofs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
