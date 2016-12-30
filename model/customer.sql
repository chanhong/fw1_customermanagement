-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.28-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for homeplacedb
CREATE DATABASE IF NOT EXISTS `homeplacedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `homeplacedb`;


-- Dumping structure for table homeplacedb.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(75) DEFAULT NULL,
  `lastname` varchar(75) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postalcode` varchar(36) DEFAULT NULL,
  `phone` varchar(36) DEFAULT NULL,
  `sourcecode` varchar(36) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Dumping data for table homeplacedb.customer: ~1 rows (approximately)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `address`, `city`, `state`, `postalcode`, `phone`, `sourcecode`, `notes`) VALUES
	(1, 'first', 'last', '123 street', 'seattle', 'MN', '98125', '2065987878', '', '');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table homeplacedb.service
CREATE TABLE IF NOT EXISTS `service` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `amount` varchar(75) DEFAULT NULL,
  `dateofservice` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `technician` varchar(75) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Dumping data for table homeplacedb.service: ~1 rows (approximately)
DELETE FROM `service`;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` (`serviceid`, `customerid`, `amount`, `dateofservice`, `note`, `technician`, `description`) VALUES
	(1, 1, '10', '2016-12-29 11:01:18', 'x', 'Service Call', 'test');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;


-- Dumping structure for table homeplacedb.user
CREATE TABLE IF NOT EXISTS `user` (
  `pkid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `firstname` varchar(75) DEFAULT NULL,
  `lastname` varchar(75) DEFAULT NULL,
  `passwordsalt` varchar(36) DEFAULT NULL,
  `isactive` set('true','false') DEFAULT 'true',
  `datecreated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelastmodified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Dumping data for table homeplacedb.user: ~4 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`pkid`, `username`, `password`, `emailaddress`, `firstname`, `lastname`, `passwordsalt`, `isactive`, `datecreated`, `datelastmodified`) VALUES
	(1, 'admin@website.com', '30956BE03DD16E0D994980A7CD2291E4EDC932113DC221BC35FFD9BC9D41D2FE6B3BE9EBA297F901C26851A29C094F3FC395DD15E638EC1A0750CA4CEBCABF37', 'admin@website.com', 'Chanh', 'Ong', '8AE49CDC-93BB-4E0B-91A177A7FACC5975', 'true', '2016-12-29 15:26:13', '2016-12-29 15:26:13');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
