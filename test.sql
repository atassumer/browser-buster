-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. Dec 21. 10:22
-- Szerver verzió: 5.5.34
-- PHP verzió: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `check`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `malware`
--

CREATE TABLE IF NOT EXISTS `malware` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `spotter` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `malware`
--

INSERT INTO `malware` (`id`, `name`, `spotter`, `date`, `md5`) VALUES
(1, 'Zblob.w32', 'AVAST', '2013-12-03', 'd7835bcccbc466f609275c38edde99ea'),
(2, 'Zblob.w32', 'Kaspersky Labs.', '2013-12-04', 'd7835bcccbc466f609275c38edde99ea'),
(3, 'Zblob.w32', 'Nod32', '2013-12-03', 'd7835bcccbc466f609275c38edde99ea'),
(4, 'Troy.w32', 'Panda', '2013-12-03', '524514ede31ec7577d93717c0adcb680'),
(5, 'Troy.w32', 'F-prot', '2013-12-04', '524514ede31ec7577d93717c0adcb680'),
(6, 'Troy.w32', 'VirusBuster', '2013-12-03', '524514ede31ec7577d93717c0adcb680');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
