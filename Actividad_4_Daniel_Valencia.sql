-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for lugares_del_mundo
DROP DATABASE IF EXISTS `lugares_del_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_del_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_del_mundo`;

-- Dumping structure for table lugares_del_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los datos de cuidades';

-- Dumping data for table lugares_del_mundo.cities: ~11 rows (approximately)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'chicago'),
	(2, 'yarumal'),
	(3, 'sídney'),
	(4, 'leticia'),
	(5, 'cuidad de méxico'),
	(6, 'buenos aires'),
	(7, 'moscú'),
	(8, 'tokyo'),
	(9, 'madrid'),
	(10, 'el cairo'),
	(11, 'brasilia');

-- Dumping structure for table lugares_del_mundo.cities_continet_countries
DROP TABLE IF EXISTS `cities_continet_countries`;
CREATE TABLE IF NOT EXISTS `cities_continet_countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(6) NOT NULL DEFAULT 0,
  `city_id` smallint(6) NOT NULL DEFAULT 0,
  `continent_id` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='Aqui se almacenarán la unión de los registros';

-- Dumping data for table lugares_del_mundo.cities_continet_countries: ~11 rows (approximately)
DELETE FROM `cities_continet_countries`;
INSERT INTO `cities_continet_countries` (`id`, `country_id`, `city_id`, `continent_id`) VALUES
	(1, 8, 1, 1),
	(2, 10, 3, 5),
	(3, 1, 2, 1),
	(4, 7, 8, 2),
	(5, 2, 9, 4),
	(6, 3, 10, 3),
	(7, 4, 6, 1),
	(8, 6, 5, 1),
	(9, 5, 1, 1),
	(10, 1, 4, 1),
	(11, 9, 7, 2);

-- Dumping structure for table lugares_del_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los datos de los continentes';

-- Dumping data for table lugares_del_mundo.continents: ~5 rows (approximately)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'américa'),
	(2, 'asía'),
	(3, 'áfrica'),
	(4, 'europa'),
	(5, 'oceanía');

-- Dumping structure for table lugares_del_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los daros de países';

-- Dumping data for table lugares_del_mundo.countries: ~10 rows (approximately)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'españa'),
	(3, 'egypto'),
	(4, 'argentina'),
	(5, 'brazil'),
	(6, 'méxico'),
	(7, 'japón'),
	(8, 'estados unidos'),
	(9, 'rusia'),
	(10, 'australia');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
