-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 16. 11:23
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kutyakozmetika_2019n`
--
CREATE DATABASE IF NOT EXISTS `kutyakozmetika_2019n` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `kutyakozmetika_2019n`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `felhasznaloID` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonszam` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `felhasznalonev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`felhasznaloID`, `nev`, `cim`, `email`, `telefonszam`, `felhasznalonev`, `jelszo`) VALUES
(1, 'sass', 'ass', 'assa', 'sasas', 'saas', '$2y$10$YnbHI7H/YPDNnn5bcbrUC.9iHEN7MjKNobZBUS.4MBHqHSv3exw5q'),
(2, 'sas', 'sas', 'sas', 'sas', 'sas', '$2y$10$e2Cmu0TgDIERNNbYhIzApuLHKGHk5C2im2rARj3J3I.EN0mGBgY6O'),
(3, 'sas', 'sas', 'sas', 'sas', 'sas', '$2y$10$jcYrkFgdZms90odFkiQ6teFr96Hr4HLR.D1x4irYx6VH2CM5/M1Je'),
(5, 'dezs', 'dezshaza', 'barnasas@gmail.com', '+36309315377', 'barna', '$2y$10$hB4EBkhb8FuDVhon4memyuhtIfx7dmQEr09Q6.EH5Bu1.HE.d.zF2');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kutya`
--

CREATE TABLE `kutya` (
  `kutyaID` int(11) NOT NULL,
  `agresszivE` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `eletkor` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `fajta` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `tulajNev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megrendeles`
--

CREATE TABLE `megrendeles` (
  `megrendelesID` int(11) NOT NULL,
  `foglalasNapja` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `foglalasOraja` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `felhasznalonev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `szolgaltatasNev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `megrendeles`
--

INSERT INTO `megrendeles` (`megrendelesID`, `foglalasNapja`, `foglalasOraja`, `felhasznalonev`, `szolgaltatasNev`) VALUES
(1, 'HÃ©tfÅ‘', '10:00', '', ''),
(2, 'Kedd', '10:00', '', ''),
(3, 'Szerda', '13:00', '', ''),
(4, 'Szerda', '13:00', '', ''),
(5, 'HÃ©tfÅ‘', '10:00', '', ''),
(6, 'HÃ©tfÅ‘', '10:00', '', ''),
(7, 'CsÃ¼tÃ¶rtÃ¶k', '10:00', 'felhasznalo', ''),
(8, 'HÃ©tfÅ‘', '10:00', 'alma', ''),
(9, 'HÃ©tfÅ‘', '10:00', 'jÃ³ska', ''),
(11, 'HÃ©tfÅ‘', '10:00', 'lajos', ''),
(12, 'Szombat', '15:00', 'sas', ''),
(13, 'HÃ©tfÅ‘', '10:00', 'sas', ''),
(14, 'VasÃ¡rnap', '14:00', 'sas', ''),
(15, 'HÃ©tfÅ‘', '10:00', 'sas', ''),
(16, 'Szerda', '13:00', 'andriska', ''),
(17, 'Szombat', '15:00', 'barna', ''),
(18, 'VasÃ¡rnap', '16:00', '', ''),
(20, 'VasÃ¡rnap', '15:00', 'Kriszs', ''),
(21, 'Csütörtök', '13:00', 'sasmadar', 'Fürdetés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szolgaltatas`
--

CREATE TABLE `szolgaltatas` (
  `szolgaltatasID` int(11) NOT NULL,
  `szolgaltatasNev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `idotartam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szolgaltatas`
--

INSERT INTO `szolgaltatas` (`szolgaltatasID`, `szolgaltatasNev`, `idotartam`) VALUES
(1, 'Szőrzetkezelés', 60),
(2, 'Fürdetés', 40),
(3, 'Körömvágás', 30);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`felhasznaloID`);

--
-- A tábla indexei `kutya`
--
ALTER TABLE `kutya`
  ADD PRIMARY KEY (`kutyaID`);

--
-- A tábla indexei `megrendeles`
--
ALTER TABLE `megrendeles`
  ADD PRIMARY KEY (`megrendelesID`);

--
-- A tábla indexei `szolgaltatas`
--
ALTER TABLE `szolgaltatas`
  ADD PRIMARY KEY (`szolgaltatasID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `felhasznaloID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `kutya`
--
ALTER TABLE `kutya`
  MODIFY `kutyaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `megrendeles`
--
ALTER TABLE `megrendeles`
  MODIFY `megrendelesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
