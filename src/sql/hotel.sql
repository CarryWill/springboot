/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.27 : Database - hotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hotel`;

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `commodityName` varchar(20) DEFAULT NULL,
  `commodityTypeID` int(20) NOT NULL,
  `salePrice` double DEFAULT NULL,
  `uOMID` int(20) DEFAULT NULL,
  PRIMARY KEY (`commodityTypeID`),
  KEY `commodityName` (`commodityName`),
  CONSTRAINT `commodity_ibfk_1` FOREIGN KEY (`commodityTypeID`) REFERENCES `commoditytype` (`commodityTypeID`),
  CONSTRAINT `commodity_ibfk_2` FOREIGN KEY (`commodityName`) REFERENCES `predetermine` (`commodityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

/*Table structure for table `commoditytype` */

DROP TABLE IF EXISTS `commoditytype`;

CREATE TABLE `commoditytype` (
  `commodityTypeID` int(20) NOT NULL,
  `commodityTypeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commodityTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commoditytype` */

/*Table structure for table `passenger` */

DROP TABLE IF EXISTS `passenger`;

CREATE TABLE `passenger` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `genderID` varchar(10) DEFAULT NULL,
  `birthDate` varchar(20) DEFAULT NULL,
  `nationID` varchar(10) DEFAULT NULL,
  `licenceIssuingAuthorty` varchar(20) DEFAULT NULL,
  `papersValidity` varchar(20) DEFAULT NULL,
  `profession` varchar(10) DEFAULT NULL,
  `educationDegreeID` varchar(20) DEFAULT NULL,
  `passengerLevelID` varchar(20) DEFAULT NULL,
  `papersID` varchar(20) DEFAULT NULL,
  `papersNumber` int(255) DEFAULT NULL,
  `unitsOrAddress` varchar(20) DEFAULT NULL,
  `thingReasonID` varchar(20) DEFAULT NULL,
  `whereAreFrom` varchar(20) DEFAULT NULL,
  `whereToGo` varchar(20) DEFAULT NULL,
  `contactPhoneNumber` int(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `passenger` */

/*Table structure for table `predetermine` */

DROP TABLE IF EXISTS `predetermine`;

CREATE TABLE `predetermine` (
  `commodityName` varchar(20) NOT NULL,
  `predetermineDay` int(10) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `payWayID` varchar(10) DEFAULT NULL,
  `arriveTime` datetime DEFAULT NULL,
  PRIMARY KEY (`commodityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `predetermine` */

/*Table structure for table `receivetarget` */

DROP TABLE IF EXISTS `receivetarget`;

CREATE TABLE `receivetarget` (
  `targetTypeID` varchar(10) DEFAULT NULL,
  `principal` varchar(20) DEFAULT NULL,
  `teamName` varchar(20) DEFAULT NULL,
  `teamCode` int(20) NOT NULL,
  `registerTime` datetime DEFAULT NULL,
  `contactPhoneNUmber` int(20) DEFAULT NULL,
  PRIMARY KEY (`teamCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `receivetarget` */

/*Table structure for table `roomset` */

DROP TABLE IF EXISTS `roomset`;

CREATE TABLE `roomset` (
  `roomNumber` int(20) NOT NULL,
  `roomStateID` varchar(10) DEFAULT NULL,
  `roomAmount` int(10) DEFAULT NULL,
  `guestRoomLevelID` varchar(10) DEFAULT NULL,
  `standardPriceDay` double DEFAULT NULL,
  `standardPrice` double DEFAULT NULL,
  `maxDuration` int(10) DEFAULT NULL,
  `firstPrice` double DEFAULT NULL,
  `firstDuration` int(10) DEFAULT NULL,
  PRIMARY KEY (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roomset` */

/*Table structure for table `uom` */

DROP TABLE IF EXISTS `uom`;

CREATE TABLE `uom` (
  `uOMID` int(20) NOT NULL,
  `uOMName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uOMID`),
  CONSTRAINT `uom_ibfk_1` FOREIGN KEY (`uOMID`) REFERENCES `commodity` (`commodityTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `uom` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
