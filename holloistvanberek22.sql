-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 15. 11:44
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `holloistvanberek22`
--
CREATE DATABASE IF NOT EXISTS `holloistvanberek22` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `holloistvanberek22`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `istvandolgozok`
--

CREATE TABLE `istvandolgozok` (
  `dolgozoid` int(3) NOT NULL,
  `nev` varchar(18) DEFAULT NULL,
  `neme` varchar(5) DEFAULT NULL,
  `reszlegid` int(1) DEFAULT NULL,
  `belepes` int(4) DEFAULT NULL,
  `ber` int(6) DEFAULT NULL,
  `lakhely` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `istvandolgozok`
--

INSERT INTO `istvandolgozok` (`dolgozoid`, `nev`, `neme`, `reszlegid`, `belepes`, `ber`, `lakhely`) VALUES
(1, 'Beri Dániel', 'férfi', 2, 1979, 317532, 'Vámospércs'),
(2, 'Csavar Pista', 'férfi', 6, 1995, 391788, 'Vámospércs'),
(3, 'Lakatos Pál', 'férfi', 2, 1986, 241446, 'Vámospércs'),
(4, 'Devon Mihály', 'férfi', 1, 2007, 193840, 'Vámospércs'),
(5, 'Él Ilona', 'nő', 2, 1982, 349865, 'Vámospércs'),
(6, 'Gábor Gizella', 'nő', 3, 2003, 217330, 'Vámospércs'),
(7, 'Kálvin Ödömér', 'férfi', 5, 1976, 371959, 'Vámospércs'),
(8, 'Kolompár Gáspár', 'férfi', 1, 2003, 253794, 'Vámospércs'),
(9, 'Sörös Sándor', 'férfi', 5, 2012, 242659, 'Vámospércs'),
(10, 'Léc Elek', 'férfi', 1, 2001, 264607, 'Vámospércs'),
(11, 'Vonal Deodát', 'férfi', 2, 1997, 225304, 'Vámospércs'),
(12, 'Sipos Gábor', 'férfi', 4, 1982, 272857, 'Vámospércs'),
(13, 'Szigeti Sándor', 'férfi', 4, 1971, 365764, 'Vámospércs'),
(14, 'Volga Olga', 'nő', 8, 2009, 236508, 'Vámospércs'),
(15, 'Körte Vilmos', 'férfi', 8, 2016, 256051, 'Vámospércs'),
(16, 'Nagy Zoltán', 'nő', 7, 1979, 251514, 'Vámospércs'),
(17, 'Sunyi Béla', 'férfi', 4, 2010, 294523, 'Vámospércs'),
(18, 'Tiszai József', 'férfi', 8, 2001, 305412, 'Vámospércs'),
(19, 'Fül Elek', 'férfi', 3, 2017, 135108, 'Vámospércs'),
(20, 'Puli Sándor', 'férfi', 5, 1984, 197338, 'Vámospércs'),
(21, 'Seres András', 'férfi', 3, 1985, 307396, 'Vámospércs'),
(22, 'Vígh József', 'férfi', 6, 1986, 353701, 'Vámospércs'),
(23, 'Alsófalvi Amália', 'nő', 1, 2017, 156108, 'Vámospércs'),
(24, 'Mayer Tamás', 'férfi', 6, 1998, 263764, 'Vámospércs'),
(25, 'Végh József', 'férfi', 4, 1999, 224932, 'Vámospércs'),
(26, 'Szokai Kinga', 'nő', 3, 2000, 121798, 'Vámospércs'),
(27, 'Kondor Katalin', 'nő', 6, 2013, 348146, 'Vámospércs'),
(28, 'Kovács János', 'férfi', 2, 1993, 396023, 'Vámospércs'),
(29, 'Fityeházi Ágoston', 'férfi', 7, 2017, 306860, 'Vámospércs'),
(30, 'Karap Béla', 'férfi', 6, 1974, 340631, 'Vámospércs'),
(31, 'Pán Péter', 'férfi', 2, 2017, 226915, 'Vámospércs'),
(32, 'Pintér Sándor', 'férfi', 6, 1977, 365489, 'Vámospércs'),
(33, 'Sarkadi Csaba', 'férfi', 7, 1992, 325338, 'Vámospércs'),
(34, 'Horváth Dezső', 'férfi', 6, 1991, 449530, 'Vámospércs'),
(35, 'Kónya Anett', 'nő', 3, 1992, 274222, 'Vámospércs'),
(36, 'Pataki Aladár', 'férfi', 8, 2003, 290248, 'Vámospércs'),
(37, 'William Clinton', 'férfi', 4, 2004, 285206, 'Vámospércs'),
(38, 'Céhes Eszter', 'nő', 6, 2012, 357188, 'Vámospércs'),
(39, 'Gaz Julianna', 'nő', 3, 2006, 157944, 'Vámospércs'),
(40, 'Tóth Imre', 'férfi', 1, 1988, 335381, 'Vámospércs'),
(41, 'Higli Jolán', 'nő', 5, 1987, 254350, 'Vámospércs'),
(42, 'Égerházi Zsanett', 'nő', 1, 1993, 345283, 'Vámospércs'),
(43, 'Lakodalom Lajos', 'férfi', 8, 1970, 325449, 'Vámospércs'),
(44, 'Nem Tamás', 'férfi', 4, 2016, 264665, 'Vámospércs'),
(45, 'Németh Noémi', 'nő', 4, 1983, 332454, 'Vámospércs'),
(46, 'Kiss Csilla', 'nő', 2, 2009, 337231, 'Vámospércs'),
(47, 'Lapos Elemér', 'férfi', 5, 1972, 356860, 'Vámospércs'),
(48, 'Szokai Barbara', 'nő', 6, 2013, 282454, 'Vámospércs'),
(49, 'Károly Zoltán', 'férfi', 3, 1984, 217676, 'Vámospércs'),
(50, 'Kozlovszky Jenő', 'férfi', 1, 2018, 297847, 'Vámospércs'),
(51, 'Kuti Kamilla', 'nő', 4, 1977, 331336, 'Vámospércs'),
(52, 'Présinger Tamás', 'férfi', 2, 2001, 297147, 'Vámospércs'),
(53, 'Szokai Kinga', 'nő', 2, 1979, 345981, 'Vámospércs'),
(54, 'Kovács Béla', 'férfi', 8, 2005, 269895, 'Vámospércs'),
(55, 'Rizi Gizi', 'nő', 8, 2016, 343616, 'Vámospércs'),
(56, 'Vagyok Ibolya', 'nő', 4, 2000, 254515, 'Vámospércs'),
(57, 'Dávid Ilona', 'nő', 3, 1970, 188781, 'Vámospércs'),
(58, 'Turpis Imre', 'férfi', 8, 1999, 455582, 'Vámospércs'),
(59, 'Világi Virág', 'nő', 2, 1999, 347147, 'Vámospércs'),
(60, 'Gerecsény Eszter', 'nő', 8, 1975, 310777, 'Vámospércs'),
(61, 'Győri Tímea', 'nő', 8, 2014, 168775, 'Vámospércs'),
(62, 'Kiss Ágnes', 'nő', 5, 1969, 200964, 'Vámospércs'),
(63, 'Kovács Helga', 'nő', 6, 1985, 436257, 'Vámospércs'),
(64, 'Morvay Levente', 'férfi', 7, 2011, 476449, 'Vámospércs'),
(65, 'Szűcs Gábor', 'férfi', 7, 1975, 315928, 'Vámospércs'),
(66, 'Varga Dóra', 'nő', 4, 2009, 173939, 'Vámospércs'),
(67, 'Zsák Judit', 'nő', 6, 2006, 327399, 'Vámospércs'),
(68, 'Nagy Kálmán', 'férfi', 5, 1979, 329136, 'Vámospércs'),
(69, 'Szalacsi Sándor', 'férfi', 4, 1977, 271454, 'Vámospércs'),
(70, 'Tavi József', 'férfi', 8, 1979, 422182, 'Vámospércs'),
(71, 'Torgyán Andrea', 'nő', 6, 2015, 522066, 'Vámospércs'),
(72, 'Bomberra Krisztina', 'nő', 6, 2018, 340409, 'Vámospércs'),
(73, 'Fehér Jakab', 'férfi', 3, 1973, 340272, 'Vámospércs'),
(74, 'Szabó Péter', 'férfi', 6, 2010, 332376, 'Vámospércs'),
(75, 'Torgyán Attila', 'férfi', 8, 1987, 392561, 'Vámospércs'),
(76, 'Kárai Kata', 'nő', 6, 1994, 257593, 'Vámospércs'),
(77, 'Kötö Irma', 'nő', 5, 1990, 334049, 'Vámospércs'),
(78, 'Nem János', 'férfi', 6, 1990, 282596, 'Vámospércs'),
(79, 'Presser Gábor', 'férfi', 3, 2016, 208510, 'Vámospércs'),
(80, 'Szép Kálmán', 'férfi', 8, 1986, 254796, 'Vámospércs'),
(81, 'Azér Lázár', 'férfi', 5, 1995, 340729, 'Vámospércs'),
(82, 'Faragó Viktor', 'férfi', 8, 1970, 342099, 'Vámospércs'),
(83, 'Kicsi Misi', 'férfi', 8, 1978, 274058, 'Vámospércs'),
(84, 'Németh Sára', 'nő', 4, 1985, 303524, 'Vámospércs'),
(85, 'Polgár Jenő', 'férfi', 4, 1987, 314165, 'Vámospércs'),
(86, 'Szabó Balázs', 'férfi', 7, 1983, 401304, 'Vámospércs'),
(87, 'Fritz Attila', 'férfi', 6, 1969, 378800, 'Vámospércs'),
(88, 'Kodály Zoltán', 'férfi', 3, 1975, 532961, 'Vámospércs'),
(89, 'Pastinszky Tamás', 'férfi', 7, 2006, 325980, 'Vámospércs'),
(90, 'Czeczei Zsolt', 'férfi', 2, 1981, 502042, 'Vámospércs'),
(91, 'Habos Helén', 'nő', 8, 2004, 264754, 'Vámospércs'),
(92, 'Hegedűs Ilona', 'nő', 8, 1981, 288529, 'Vámospércs'),
(93, 'Kecskés Mária', 'nő', 8, 1978, 229951, 'Vámospércs'),
(94, 'Kovács Beáta', 'nő', 7, 2013, 386887, 'Vámospércs'),
(95, 'Prezma Aurora', 'nő', 6, 1991, 275547, 'Vámospércs'),
(96, 'Sörös Leopold', 'férfi', 5, 1972, 379999, 'Vámospércs'),
(97, 'Bodor Enikő', 'nő', 6, 2012, 335680, 'Vámospércs'),
(98, 'Kolompár Frigyes', 'férfi', 5, 1978, 393403, 'Vámospércs'),
(99, 'Makrai Dezső', 'férfi', 8, 2016, 262470, 'Vámospércs'),
(100, 'Morvay Jenő', 'férfi', 6, 1972, 408153, 'Vámospércs'),
(101, 'Éliás Tóbiás', 'férfi', 6, 1998, 364001, 'Vámospércs'),
(102, 'Halász Júlia', 'nő', 8, 2003, 147024, 'Vámospércs'),
(103, 'Kiss Borbála', 'nő', 5, 1971, 241730, 'Vámospércs'),
(104, 'Czeczei Zsolt', 'férfi', 6, 2005, 446925, 'Vámospércs'),
(105, 'Szabó Attila', 'férfi', 4, 2006, 254153, 'Vámospércs'),
(106, 'Budai Antal', 'férfi', 3, 2017, 172928, 'Vámospércs'),
(107, 'Dávid Izaura', 'nő', 7, 1989, 350039, 'Vámospércs'),
(108, 'Horváth Kinga', 'nő', 4, 1969, 271867, 'Vámospércs'),
(109, 'Mekk Elek Tihamér', 'férfi', 8, 1988, 318099, 'Vámospércs'),
(110, 'Nájt Mihály', 'férfi', 1, 2004, 344839, 'Vámospércs'),
(111, 'Szabó Dénes', 'férfi', 3, 2004, 269537, 'Vámospércs'),
(112, 'Fritz Géza', 'férfi', 2, 2009, 288983, 'Vámospércs'),
(113, 'Gomb Sára', 'nő', 6, 1995, 424209, 'Vámospércs'),
(114, 'Méh Erika', 'nő', 6, 2011, 356250, 'Vámospércs'),
(115, 'Víz Gizella', 'nő', 6, 2012, 185967, 'Vámospércs'),
(116, 'Fogarasi Árpád', 'férfi', 4, 1996, 357855, 'Vámospércs'),
(117, 'Hűtő Béla', 'férfi', 6, 1988, 537038, 'Vámospércs'),
(118, 'Kiss Rozália', 'nő', 8, 1982, 348612, 'Vámospércs'),
(119, 'Kun Béla', 'férfi', 4, 1969, 315384, 'Vámospércs'),
(120, 'Lepési Mária', 'nő', 5, 2006, 272479, 'Vámospércs'),
(121, 'Mária Terézia', 'nő', 6, 1987, 487364, 'Vámospércs'),
(122, 'Balogh Éva', 'nő', 3, 1983, 572899, 'Vámospércs'),
(123, 'Kapros Lajos', 'férfi', 8, 2006, 241132, 'Vámospércs'),
(124, 'Nehéz Teréz', 'nő', 8, 1973, 324799, 'Vámospércs'),
(125, 'Bán Mihály', 'férfi', 1, 1983, 279876, 'Vámospércs'),
(126, 'Inger Rozália', 'nő', 6, 1989, 455290, 'Vámospércs'),
(127, 'Magyar Erzsébet', 'nő', 7, 1973, 337814, 'Vámospércs'),
(128, 'Nagy Gyula', 'férfi', 5, 1981, 303836, 'Vámospércs'),
(129, 'Szabó Éva', 'nő', 4, 2005, 219209, 'Vámospércs'),
(130, 'Takács Lilla', 'nő', 6, 2002, 386765, 'Vámospércs'),
(131, 'Czeczei András', 'férfi', 6, 2005, 307432, 'Vámospércs'),
(132, 'Gép Béla', 'férfi', 6, 1980, 388559, 'Vámospércs'),
(133, 'Gulág Tóbiás', 'férfi', 2, 2013, 131848, 'Vámospércs'),
(134, 'Medgyessi Pál', 'férfi', 1, 1999, 282749, 'Vámospércs'),
(135, 'Wesselényi Brúnó', 'férfi', 2, 1975, 206130, 'Vámospércs'),
(136, 'Alsófalvi Amália', 'nő', 1, 1998, 343647, 'Vámospércs'),
(137, 'Sarkadi Csaba', 'férfi', 6, 1976, 387252, 'Vámospércs'),
(138, 'Asztal Sándor', 'férfi', 6, 1970, 389004, 'Vámospércs'),
(139, 'Prézli János', 'férfi', 6, 2016, 263919, 'Vámospércs'),
(140, 'Brazil Béla', 'férfi', 1, 2001, 299524, 'Vámospércs'),
(141, 'Határ Hugó', 'férfi', 8, 1980, 306155, 'Vámospércs'),
(142, 'Varga Tamás', 'férfi', 4, 1988, 306338, 'Vámospércs'),
(143, 'Balogh Gábor', 'férfi', 1, 1988, 281743, 'Vámospércs'),
(144, 'Barna Ágota', 'nő', 3, 1985, 302032, 'Vámospércs'),
(145, 'Béna Béla', 'férfi', 8, 1972, 273277, 'Vámospércs'),
(146, 'Bödön Ödön', 'férfi', 8, 1993, 249780, 'Vámospércs'),
(147, 'Takács Nándor', 'férfi', 2, 2007, 343382, 'Vámospércs'),
(148, 'Vaal Máté', 'férfi', 6, 1969, 375770, 'Vámospércs'),
(149, 'Gold Mária', 'nő', 1, 1998, 286186, 'Vámospércs'),
(150, 'Lakatos Lujza', 'nő', 1, 2005, 316271, 'Vámospércs'),
(151, 'Ormosi Teréz', 'nő', 1, 1971, 175605, 'Vámospércs'),
(152, 'Sipos Károly', 'férfi', 4, 2002, 278778, 'Vámospércs'),
(153, 'Tóth Gyula', 'férfi', 7, 1981, 311433, 'Vámospércs'),
(154, 'Átlagos Ákos', 'férfi', 8, 1983, 313437, 'Vámospércs'),
(155, 'Fekete Frigyes', 'férfi', 1, 1997, 156162, 'Vámospércs'),
(156, 'Farkas Károly', 'férfi', 5, 1995, 301212, 'Vámospércs'),
(157, 'Nagy Antal', 'férfi', 4, 1986, 359611, 'Vámospércs'),
(158, 'Oláh Gáspár', 'férfi', 4, 1988, 214590, 'Vámospércs'),
(159, 'Öregh Amália', 'nő', 7, 2016, 315782, 'Vámospércs'),
(160, 'Somogyi Erika', 'nő', 4, 2016, 232036, 'Vámospércs'),
(161, 'Izmos Vilmos', 'férfi', 8, 2011, 298796, 'Vámospércs'),
(162, 'Kovács János', 'férfi', 1, 1986, 305438, 'Vámospércs'),
(163, 'Pokol Petúnia', 'nő', 2, 1973, 306368, 'Vámospércs'),
(164, 'Bak Dániel', 'férfi', 6, 1983, 607005, 'Vámospércs'),
(165, 'Fekete Andrea', 'nő', 3, 1989, 199856, 'Vámospércs'),
(166, 'Gáspár Olga', 'nő', 4, 2010, 298381, 'Vámospércs'),
(167, 'Ináncsi József', 'férfi', 4, 2001, 239665, 'Vámospércs'),
(168, 'Szabó András', 'férfi', 2, 2009, 269287, 'Vámospércs'),
(169, 'Erdős Árpád', 'férfi', 8, 2009, 264424, 'Vámospércs'),
(170, 'Kiss Jenő', 'férfi', 4, 1973, 374666, 'Vámospércs');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `istvanreszlegek`
--

CREATE TABLE `istvanreszlegek` (
  `reszlegid` int(1) NOT NULL,
  `reszleg` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `istvanreszlegek`
--

INSERT INTO `istvanreszlegek` (`reszlegid`, `reszleg`) VALUES
(1, 'asztalosműhely'),
(2, 'beszerzés'),
(3, 'értékesítés'),
(4, 'karbantartás'),
(5, 'lakatosműhely'),
(6, 'pénzügy'),
(7, 'személyzeti'),
(8, 'szerelőműhely');

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `osztalyatlagok`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `osztalyatlagok` (
`oazon` int(1)
,`onev` varchar(14)
,`oatlag` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Nézet szerkezete `osztalyatlagok`
--
DROP TABLE IF EXISTS `osztalyatlagok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `osztalyatlagok`  AS  (select `istvanreszlegek`.`reszlegid` AS `oazon`,`istvanreszlegek`.`reszleg` AS `onev`,avg(`istvandolgozok`.`ber`) AS `oatlag` from (`istvanreszlegek` join `istvandolgozok` on(`istvanreszlegek`.`reszlegid` = `istvandolgozok`.`reszlegid`)) group by `istvanreszlegek`.`reszleg`) ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `istvandolgozok`
--
ALTER TABLE `istvandolgozok`
  ADD PRIMARY KEY (`dolgozoid`),
  ADD KEY `reszlegid` (`reszlegid`);

--
-- A tábla indexei `istvanreszlegek`
--
ALTER TABLE `istvanreszlegek`
  ADD PRIMARY KEY (`reszlegid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `istvanreszlegek`
--
ALTER TABLE `istvanreszlegek`
  ADD CONSTRAINT `istvanreszlegek_ibfk_1` FOREIGN KEY (`reszlegid`) REFERENCES `istvandolgozok` (`reszlegid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
