-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2019 г., 13:17
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `radio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(21, 'Rock'),
(15, 'R&B/Soul'),
(6, 'Country'),
(22, 'Christian & Gospel'),
(14, 'Pop'),
(17, 'Dance'),
(20, 'Alternative'),
(16, 'Soundtrack'),
(18, 'Hip-Hop/Rap'),
(12, 'Latino'),
(10, 'Singer/Songwriter'),
(4, 'Children\'s Music'),
(1119, 'Urbano latino'),
(51, 'K-Pop');

-- --------------------------------------------------------

--
-- Структура таблицы `donations`
--

DROP TABLE IF EXISTS `donations`;
CREATE TABLE IF NOT EXISTS `donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `donations`
--

INSERT INTO `donations` (`id`, `sum`) VALUES
(1, 75),
(2, 50),
(30, 75),
(29, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `album` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `track`
--

INSERT INTO `track` (`id`, `position`, `name`, `artist`, `album`, `category_id`, `img`) VALUES
(1434371887, 101, 'Shallow', 'Lady Gaga & Bradley Cooper', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1445949267, 102, 'Sunflower (Spider-Man: Into the Spider-Verse)', 'Post Malone & Swae Lee', 'Spider-Man: Into the Spider-Verse (Soundtrack From & Inspired by the Motion Picture)', 18, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/69/09/dd/6909dd4a-81fc-69ef-2c48-031b1ec2b141/00602577203794.rgb.jpg/60x60bb-85.png'),
(1450149270, 103, 'Song Request (feat. SUGA)', 'Lee Sora', 'Song Request (feat. SUGA) - Single', 51, 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/f3/e1/8e/f3e18e88-7aed-8ba3-d6ad-05c2fc1b093a/jacket-843552.jpg/60x60bb-85.png'),
(1361152303, 104, 'High Hopes', 'Panic! At the Disco', 'Pray For the Wicked', 20, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/7c/8e/b5/7c8eb59b-e421-079e-92bb-ea1dabaeca80/075679875136.jpg/60x60bb-85.png'),
(1416169818, 105, 'I Hate This', 'Tenille Arts', 'I Hate This - Single', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/0d/d9/de/0dd9def6-4c44-0c47-d575-386b44c4d3d7/192562790083.jpg/60x60bb-85.png'),
(1424704480, 106, 'Happier', 'Marshmello & Bastille', 'Happier - Single', 17, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/76/56/8e/76568e0a-ca3f-3be7-c4dd-10264f25ef18/00602567973409.rgb.jpg/60x60bb-85.png'),
(1447184844, 107, 'You Say', 'Lauren Daigle', 'Look Up Child', 22, 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/ac/3a/5d/ac3a5d41-5bce-4ec2-b795-51d1436c88b4/829619167054.jpg/60x60bb-85.png'),
(1386719031, 108, 'Sweet but Psycho', 'Ava Max', 'Sweet but Psycho - Single', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/82/96/33/829633d2-e11f-6f2b-3f33-d4e205ff15df/075679872401.jpg/60x60bb-85.png'),
(1448966698, 109, 'GIRL', 'Maren Morris', 'GIRL - Single', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/a9/cf/0d/a9cf0df2-697d-b5c6-bb3a-815030a05aca/886447507216.jpg/60x60bb-85.png'),
(1434372043, 110, 'Always Remember Us This Way', 'Lady Gaga', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1383989668, 111, 'Speechless', 'Dan + Shay', 'Dan + Shay', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/76/b6/e4/76b6e4e2-5d85-1d5c-d524-c3b1f9cb8f8f/093624906407.jpg/60x60bb-85.png'),
(1445069692, 112, 'Eastside', 'benny blanco, Halsey & Khalid', 'FRIENDS KEEP SECRETS', 14, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/fd/48/5a/fd485ac9-c00a-b6f4-e55b-31ed923f8ef4/00602577317491.rgb.jpg/60x60bb-85.png'),
(1437948973, 113, 'Natural', 'Imagine Dragons', 'Origins (Deluxe)', 20, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/55/c4/7d/55c47dec-56b9-4f9b-fab4-0f7f394a10a8/00602577199219.rgb.jpg/60x60bb-85.png'),
(1376707066, 114, 'Beautiful Crazy', 'Luke Combs', 'This One’s for You Too (Deluxe Edition)', 6, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/fa/8d/22/fa8d22a8-4525-e073-46f7-7f6026578ea6/886447048443.jpg/60x60bb-85.png'),
(1444462574, 115, 'Nothing Breaks Like a Heart (feat. Miley Cyrus)', 'Mark Ronson', 'Nothing Breaks Like a Heart (feat. Miley Cyrus) - Single', 14, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/ca/56/a2/ca56a23a-e073-d18c-2057-59c317908c38/886447407875.jpg/60x60bb-85.png'),
(1438913057, 116, 'Better', 'Khalid', 'Suncity', 15, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/19/e1/2a/19e12a66-bbd7-bd72-e752-c53c39e2b444/886447357385.jpg/60x60bb-85.png'),
(1439113154, 117, 'On My Way to You', 'Cody Johnson', 'Ain\'t Nothin\' to It', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/d3/6c/89/d36c8932-b1ba-b6db-c000-d73562c5e4c9/093624903604.jpg/60x60bb-85.png'),
(1449157221, 118, 'Make It Sweet', 'Old Dominion', 'Old Dominion - Single', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/55/bb/25/55bb25a8-7cc3-489f-04c9-d0d90d7ac540/886447507384.jpg/60x60bb-85.png'),
(1291862008, 119, 'Come Along', 'Cosmo Sheldrake', 'Come Along - Single', 20, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/61/8d/94/618d948d-b79e-5e5c-e378-e06d6af21a4a/5054526097858_1.jpg/60x60bb-85.png'),
(467980724, 120, 'A Thousand Years', 'Christina Perri', 'The Twilight Saga: Breaking Dawn, Pt. 1 (Original Motion Picture Soundtrack) [Deluxe Version]', 16, 'https://is5-ssl.mzstatic.com/image/thumb/Music/3a/f4/0c/mzi.staekbjw.jpg/60x60bb-85.png'),
(1369109322, 121, 'Youngblood', '5 Seconds of Summer', 'Youngblood (Deluxe)', 14, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/b4/e2/08/b4e20858-295d-ecef-c9ba-30789773beb3/00602567483625.rgb.jpg/60x60bb-85.png'),
(1447334978, 122, 'Dancing with a Stranger', 'Sam Smith & Normani', 'Dancing with a Stranger - Single', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/e6/59/13/e6591333-e1e3-ba13-b63c-da743e015162/00602577394164.rgb.jpg/60x60bb-85.png'),
(1437575238, 123, 'Without Me', 'Halsey', 'Without Me - Single', 20, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/eb/77/ea/eb77ea72-123f-4d37-bec1-9541943f9867/00602577081941.rgb.jpg/60x60bb-85.png'),
(932648449, 124, 'Bohemian Rhapsody', 'Queen', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(1383989661, 125, 'Tequila', 'Dan + Shay', 'Dan + Shay', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/76/b6/e4/76b6e4e2-5d85-1d5c-d524-c3b1f9cb8f8f/093624906407.jpg/60x60bb-85.png'),
(1449022694, 126, 'Big Plans', 'Why Don\'t We', 'Big Plans - Single', 14, 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/e1/eb/ea/e1ebea72-43b9-6ea3-9aef-61ce3dce749d/075679855244.jpg/60x60bb-85.png'),
(980335925, 127, 'Tennessee Whiskey', 'Chris Stapleton', 'Traveller', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music1/v4/9b/a8/17/9ba81759-35a4-ea52-38cb-09b98b96077f/UMG_cvrart_00602547223838_01_RGB72_1500x1500_15UMGIM11405.jpg/60x60bb-85.png'),
(1449165459, 128, '7 rings', 'Ariana Grande', '7 rings - Single', 14, 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/f9/cf/3a/f9cf3ae2-e93f-f15e-5371-46cac6409587/00602577432835.rgb.jpg/60x60bb-85.png'),
(1411629089, 129, 'Thunder', 'Imagine Dragons', 'Evolve', 20, 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/40/46/80/404680b2-9f25-ae64-66ab-91b09666028b/00602567491255.rgb.jpg/60x60bb-85.png'),
(1278567741, 130, 'Rumor', 'Lee Brice', 'Lee Brice', 6, 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/c2/3d/30/c23d3012-4ef0-d436-11ea-fd413b119370/79452_-_Lee_Brice.png/60x60bb-85.png'),
(1444855034, 131, 'Face My Fears (English Version)', 'Hikaru Utada & Skrillex', 'Face My Fears - EP', 17, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/7b/d7/22/7bd722a6-e92f-f7a7-adc5-5c3bb0098303/886447445648.jpg/60x60bb-85.png'),
(1376707081, 132, 'She Got the Best of Me', 'Luke Combs', 'This One’s for You Too (Deluxe Edition)', 6, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/fa/8d/22/fa8d22a8-4525-e073-46f7-7f6026578ea6/886447048443.jpg/60x60bb-85.png'),
(1268028562, 133, 'Miss Me More', 'Kelsea Ballerini', 'Unapologetically', 6, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/87/77/12/8777126f-3261-b495-aca5-9e81d9c3aee6/886446679501.jpg/60x60bb-85.png'),
(1448967237, 134, 'Almost (Sweet Music)', 'Hozier', 'Wasteland, Baby!', 20, 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/cc/4f/2e/cc4f2e39-c807-5158-7abf-ccaf4acbdf7b/886447495391.jpg/60x60bb-85.png'),
(1435652093, 135, 'This Feeling (feat. Kelsea Ballerini)', 'The Chainsmokers', 'Sick Boy...This Feeling', 17, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/74/aa/a4/74aaa4f5-dfef-0084-1b6e-8038438f7e5d/886447319291.jpg/60x60bb-85.png'),
(1419758422, 136, 'Beautiful (feat. Camila Cabello)', 'Bazzi', 'Beautiful (feat. Camila Cabello) - Single', 14, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/e6/12/71/e61271a5-1b0d-6526-7fca-c7382086c53a/075679864895.jpg/60x60bb-85.png'),
(1193701400, 137, 'Perfect', 'Ed Sheeran', '÷ (Deluxe)', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/9a/35/95/9a3595c7-c675-fd74-352f-44e3638ac123/190295851286.jpg/60x60bb-85.png'),
(1434372132, 138, 'I\'ll Never Love Again (Extended Version)', 'Lady Gaga', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1293899674, 139, 'Millionaire', 'Chris Stapleton', 'From A Room, Volume 2', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/93/d3/b4/93d3b48c-bf25-abb2-0831-4cb813387c8c/UMG_cvrart_00602557970661_01_RGB72_3000x3000_17UM1IM30649.jpg/60x60bb-85.png'),
(1438445674, 140, 'MIA (feat. Drake)', 'Bad Bunny', 'MIA (feat. Drake) - Single', 12, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/d7/57/43/d75743fa-5e69-3315-3eee-3f885baffebb/054391947369.jpg/60x60bb-85.png'),
(1369348544, 141, 'Burning Man (feat. Brothers Osborne)', 'Dierks Bentley', 'The Mountain', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/f7/8c/ae/f78cae8e-588e-0720-e3ad-dfea8df264b5/00602567573449.rgb.jpg/60x60bb-85.png'),
(1411628233, 142, 'Believer', 'Imagine Dragons', 'Evolve', 20, 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/40/46/80/404680b2-9f25-ae64-66ab-91b09666028b/00602567491255.rgb.jpg/60x60bb-85.png'),
(1328808164, 143, 'This Is It', 'Scotty McCreery', 'Seasons Change', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/db/94/cb/db94cb7b-2e90-5510-2ba3-7ca2f6a41963/886446885094.jpg/60x60bb-85.png'),
(1411628148, 144, 'Whatever It Takes', 'Imagine Dragons', 'Evolve', 20, 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/40/46/80/404680b2-9f25-ae64-66ab-91b09666028b/00602567491255.rgb.jpg/60x60bb-85.png'),
(1354570156, 145, 'Girl Like You', 'Jason Aldean', 'Rearview Town', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/97/87/8c/97878c51-f420-eb73-4f81-fdebf688c79c/4050538376074.jpg/60x60bb-85.png'),
(1435336327, 146, 'Love Someone', 'Lukas Graham', '3 (The Purple Album)', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/06/bb/15/06bb15fc-09e1-64ab-0b49-d1d42438c8c7/093624903284.jpg/60x60bb-85.png'),
(1261185923, 147, 'Sixteen', 'Thomas Rhett', 'Life Changes', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/67/c6/61/67c6617d-c2cc-fa7b-afb6-40c54ccb60ba/UMG_cvrart_00843930032334_01_RGB72_1800x1800_17UM1IM16267.jpg/60x60bb-85.png'),
(1251713725, 148, 'Meant to Be', 'Bebe Rexha & Florida Georgia Line', 'All Your Fault, Pt. 2 - EP', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/4a/a1/37/4aa13719-baa1-57f1-cf05-88de49672b9a/093624910763.jpg/60x60bb-85.png'),
(1435351497, 149, 'You\'re the One', 'Greta Van Fleet', 'Anthem of the Peaceful Army', 21, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/be/97/03/be970386-b928-1dfc-e779-12c0b8f44bcb/00602577023286.rgb.jpg/60x60bb-85.png'),
(1439113009, 150, 'Ain\'t Nothin\' to It', 'Cody Johnson', 'Ain\'t Nothin\' to It', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/d3/6c/89/d36c8932-b1ba-b6db-c000-d73562c5e4c9/093624903604.jpg/60x60bb-85.png'),
(1299856916, 151, 'This Is Me', 'Keala Settle & The Greatest Showman Ensemble', 'The Greatest Showman (Original Motion Picture Soundtrack)', 16, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/c1/7b/a9/c17ba975-34aa-ee68-d3c9-e1db840fa06b/075679886613.jpg/60x60bb-85.png'),
(1321217034, 152, 'Consequences', 'Camila Cabello', 'Camila', 14, 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/32/53/40/325340a2-c77e-777d-c391-64ed74434f2d/886446870298.jpg/60x60bb-85.png'),
(1440111980, 153, 'Whiskey Glasses', 'Morgan Wallen', 'If I Know Me', 6, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/be/9d/e6/be9de62d-d780-de18-f355-da4029f4829c/842812106569_01_img001.jpg/60x60bb-85.png'),
(1449291388, 154, 'Secreto', 'Anuel AA & Karol G', 'Secreto - Single', 1119, 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/6a/ef/f2/6aeff2c7-46a6-cb10-deb8-5db3af1c7f4a/00602577443893.rgb.jpg/60x60bb-85.png'),
(1331589486, 155, 'Shotgun', 'George Ezra', 'Staying at Tamara\'s', 10, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c8/94/b2/c894b2c1-f07f-8850-fed3-be31c7f3bf86/886446561875.jpg/60x60bb-85.png'),
(932648605, 156, 'Don\'t Stop Me Now', 'Queen', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(1446769768, 157, 'Talk You Out of It', 'Florida Georgia Line', 'Can\'t Say I Ain\'t Country', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/bb/49/ad/bb49ad92-4035-81ca-9624-fc1958cf37ec/00843930038275.rgb.jpg/60x60bb-85.png'),
(1374242655, 158, 'Good Girl', 'Dustin Lynch', 'Good Girl - Single', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/a1/35/0a/a1350ae0-3cbb-8455-90cb-cb4d1af9cb52/4050538395891.jpg/60x60bb-85.png'),
(1434745795, 159, 'Electricity (feat. Diplo & Mark Ronson)', 'Silk City, Dua Lipa', 'Electricity (feat. Diplo & Mark Ronson) - Single', 17, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/e1/2a/42/e12a4271-66c3-5e3a-5492-8e0f3d07cf73/886447284360.jpg/60x60bb-85.png'),
(1434371882, 160, 'Maybe It\'s Time', 'Bradley Cooper', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1264976429, 161, 'Baby Shark', 'Pinkfong', 'Pinkfong Animal Songs', 4, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/a7/e9/59/a7e95986-b956-897b-ebab-0d6d38f1f710/859721673396_cover.jpg/60x60bb-85.png'),
(1439343348, 162, 'A Million Dreams', 'P!nk', 'The Greatest Showman: Reimagined', 14, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/93/92/f2/9392f23e-ab11-89c1-9bff-61132e917d08/075679877116.jpg/60x60bb-85.png'),
(1437448494, 163, 'Light On', 'Maggie Rogers', 'Heard It In A Past Life', 20, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/da/85/94/da859408-611a-949e-3bf8-839494bd6ca5/00602567800941.rgb.jpg/60x60bb-85.png'),
(932648779, 164, 'We Will Rock You', 'Queen', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(1449157223, 165, 'One Man Band', 'Old Dominion', 'Old Dominion - Single', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/55/bb/25/55bb25a8-7cc3-489f-04c9-d0d90d7ac540/886447507384.jpg/60x60bb-85.png'),
(1369380479, 166, 'lovely', 'Billie Eilish & Khalid', 'lovely - Single', 20, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/f6/d4/c9/f6d4c958-45e9-4b87-8ce1-0ed66fb0d266/00602567150954.rgb.jpg/60x60bb-85.png'),
(1434372069, 167, 'I\'ll Never Love Again (Film Version)', 'Lady Gaga & Bradley Cooper', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1291596953, 168, 'What Makes You Country', 'Luke Bryan', 'What Makes You Country', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/d6/e1/40/d6e1406e-1a8d-9d58-cc39-1f568ec55aea/UMG_cvrart_00602557705188_01_RGB72_3000x3000_17UM1IM32363.jpg/60x60bb-85.png'),
(1449591179, 169, 'Awaken', 'League of Legends, Valerie Broussard & Ray Chen', 'Awaken - Single', 20, 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/db/cf/5c/dbcf5ca5-3986-6b9c-4bdd-d3156cfc8fec/8718857592679.png/60x60bb-85.png'),
(1438144676, 170, 'when the party\'s over', 'Billie Eilish', 'when the party\'s over - Single', 20, 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/90/94/28/909428e7-3ff5-0677-6aa5-706117ccf8af/00602577125522.rgb.jpg/60x60bb-85.png'),
(1448369873, 171, 'Change Your Mind (feat. Zach Callison)', 'Steven Universe', 'Change Your Mind (feat. Zach Callison) - Single', 16, 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/6b/19/ec/6b19ec81-3b3d-dc5e-14d5-f2d787980022/859730222684_cover.jpg/60x60bb-85.png'),
(1296233048, 172, 'Body (feat. brando)', 'Loud Luxury', 'Body (feat. brando) - Single', 17, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/53/77/63/537763ad-3dac-6ea8-6ce7-081b712303f7/dj.xrmomtnt.jpg/60x60bb-85.png'),
(932648686, 173, 'Somebody to Love', 'Queen', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(1439113027, 174, 'Nothin\' on You', 'Cody Johnson', 'Ain\'t Nothin\' to It', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/d3/6c/89/d36c8932-b1ba-b6db-c000-d73562c5e4c9/093624903604.jpg/60x60bb-85.png'),
(1411052214, 175, 'you should see me in a crown', 'Billie Eilish', 'you should see me in a crown - Single', 20, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/b8/b8/17/b8b81792-cc05-4751-d5a0-65c82b33ae15/00602567869610.rgb.jpg/60x60bb-85.png'),
(1116233236, 176, 'Night Shift', 'Jon Pardi', 'California Sunrise', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music18/v4/15/d4/fe/15d4fe67-5c83-1b82-22f8-49f68de614f2/UMG_cvrart_00602547824486_01_RGB72_1500x1500_16UMGIM11343.jpg/60x60bb-85.png'),
(1306096840, 177, 'Black Smoke Rising', 'Greta Van Fleet', 'From the Fires', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/cd/63/e3/cd63e386-bd35-46cc-ffa4-9b4426596537/UMG_cvrart_00602567126010_01_RGB72_3000x3000_17UM1IM39373.jpg/60x60bb-85.png'),
(1447184158, 178, 'Land of the Free', 'The Killers', 'Land of the Free - Single', 20, 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/cf/85/30/cf8530a8-cfd2-e08c-b660-d2583d61dc81/00602577364150.rgb.jpg/60x60bb-85.png'),
(1321217032, 179, 'Havana (feat. Young Thug)', 'Camila Cabello', 'Camila', 14, 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/32/53/40/325340a2-c77e-777d-c391-64ed74434f2d/886446870298.jpg/60x60bb-85.png'),
(1299856915, 180, 'Never Enough', 'Loren Allred', 'The Greatest Showman (Original Motion Picture Soundtrack)', 16, 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/c1/7b/a9/c17ba975-34aa-ee68-d3c9-e1db840fa06b/075679886613.jpg/60x60bb-85.png'),
(1277176588, 181, 'Heaven', 'Kane Brown', 'Kane Brown (Deluxe Edition)', 6, 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/54/d5/34/54d53483-528f-efeb-5a8a-2642a82f8b7f/886446714837.jpg/60x60bb-85.png'),
(932648493, 182, 'Another One Bites the Dust', 'Queen', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(932648796, 183, 'Under Pressure', 'Queen & David Bowie', 'The Platinum Collection (Greatest Hits I, II & III)', 21, 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/db/a3/9a/dba39a3c-03fc-94a4-8f94-a8a69d9cdf5c/UMG_cvrart_00050087319090_01_RGB72_1500x1500_14DMGIM05632.jpg/60x60bb-85.png'),
(1446769763, 184, 'Simple', 'Florida Georgia Line', 'Can\'t Say I Ain\'t Country', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/bb/49/ad/bb49ad92-4035-81ca-9624-fc1958cf37ec/00843930038275.rgb.jpg/60x60bb-85.png'),
(1440110703, 185, 'I Don\'t Know About You', 'Chris Lane', 'Laps Around the Sun', 6, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/6c/f3/b8/6cf3b8a5-ce22-51a1-8f94-caedd9563dfe/842812106682_01_img001.jpg/60x60bb-85.png'),
(1436555518, 186, 'Trip', 'Ella Mai', 'Ella Mai', 15, 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/d5/74/93/d57493d9-68e3-a71f-718a-820b31a8ef4a/00602577107870.rgb.jpg/60x60bb-85.png'),
(1154239184, 187, 'CAN\'T STOP THE FEELING!', 'Justin Timberlake', 'Trolls (Original Motion Picture Soundtrack)', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music71/v4/24/0e/9d/240e9d71-9861-e7b5-a4f5-ef9fe856048d/886445915211.jpg/60x60bb-85.png'),
(1448434232, 188, '7 Minutes', 'Dean Lewis', '7 Minutes - Single', 10, 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c2/06/0e/c2060ed6-015f-4871-6663-3bbd4d787815/00602577384738.rgb.jpg/60x60bb-85.png'),
(1448304414, 189, 'We Are the Crystal Gems (Change Your Mind Version) [feat. Za', 'Steven Universe', 'We Are the Crystal Gems (Change Your Mind Version) [feat. Zach Callison] - Single', 16, 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/77/15/1f/77151f51-48af-1e76-b377-beb11c5971b6/859730222653_cover.jpg/60x60bb-85.png'),
(1441177474, 190, 'thank u, next', 'Ariana Grande', 'thank u, next - Single', 14, 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/e3/34/c1/e334c1e9-706d-2048-dce1-c3437fa8392f/00602577298400.rgb.jpg/60x60bb-85.png'),
(1441728727, 191, 'Let Me Down Slowly', 'Alec Benjamin', 'Narrated for You', 14, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/ee/85/4d/ee854dfd-b4c1-14f5-dd14-7fb24698b3a2/075679859518.jpg/60x60bb-85.png'),
(1434750233, 192, 'Lose It', 'Kane Brown', 'Experiment', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/51/cd/f6/51cdf669-d810-cb4f-d170-016a5b760f0b/886447273807.jpg/60x60bb-85.png'),
(1435072869, 193, 'Head Above Water', 'Avril Lavigne', 'Head Above Water - Single', 14, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/3a/e4/5f/3ae45fae-f333-411a-02cb-adb49aadc623/4050538438949.jpg/60x60bb-85.png'),
(1438028675, 194, 'Drunk Me', 'Mitchell Tenpenny', 'Telling All My Secrets', 6, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/ec/8a/b3/ec8ab3a8-46b1-0f72-6440-2ce6f31b80f8/886447352113.jpg/60x60bb-85.png'),
(1282658109, 195, 'Broken', 'lovelytheband', 'Everything I Could Never Say... - EP', 20, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/df/cb/d2/dfcbd288-d755-1a24-ac8c-4a748d04364f/886446757919.jpg/60x60bb-85.png'),
(1423281707, 196, '8 Letters', 'Why Don\'t We', '8 Letters', 14, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/9f/a0/aa/9fa0aaf2-4622-c382-6086-f86d683688d7/075679865298.jpg/60x60bb-85.png'),
(1434372059, 197, 'Is That Alright?', 'Lady Gaga', 'A Star Is Born Soundtrack', 16, 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/14/52/12/145212ba-1fa2-5924-2268-8652cc693c22/00602577014284.rgb.jpg/60x60bb-85.png'),
(1435520678, 198, 'Here Tonight', 'Brett Young', 'Ticket to L.A.', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/69/15/cf/6915cf7c-a730-3130-4b3e-34026509f984/00843930036905.rgb.jpg/60x60bb-85.png'),
(1434367891, 199, 'Shallow', 'Lady Gaga & Bradley Cooper', 'A Star Is Born Soundtrack', 16, 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/d0/53/bb/d053bbf3-a6f8-95d2-8572-4489417b959a/00602577020759.rgb.jpg/60x60bb-85.png'),
(1434750230, 200, 'Good As You', 'Kane Brown', 'Experiment', 6, 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/51/cd/f6/51cdf669-d810-cb4f-d170-016a5b760f0b/886447273807.jpg/60x60bb-85.png');

-- --------------------------------------------------------

--
-- Структура таблицы `track_like`
--

DROP TABLE IF EXISTS `track_like`;
CREATE TABLE IF NOT EXISTS `track_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `track_like`
--

INSERT INTO `track_like` (`id`, `track_id`, `user_id`) VALUES
(24, 1447184844, 1),
(19, 1361152303, 1),
(23, 1445949267, 1),
(26, 1424704480, 1),
(21, 1386719031, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(1, 'test', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
