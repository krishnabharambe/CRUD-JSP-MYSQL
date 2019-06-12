/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 8.0.15 : Database - wap2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wap2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `wap2`;

/*Table structure for table `pmanager` */

DROP TABLE IF EXISTS `pmanager`;

CREATE TABLE `pmanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `contact` text,
  `pincode` text,
  `dob` text,
  `cname` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pmanager` */

insert  into `pmanager`(`id`,`name`,`contact`,`pincode`,`dob`,`cname`) values 
(2,'werwer','weqrwqer','weqrwqer','2019-06-14','null'),
(3,'werwer','weqrwqer','weqrwqer','2019-06-14','null'),
(4,'hdsjkhjdshfjkh','hjhjk','hjk','2019-06-12','null'),
(5,'fghh','fdghfdgh','fhfdgh','2019-06-12','null'),
(7,'erwtewrt','ewtewrt','ewrtewrt','2019-06-12','ewrtewrtewrt ertewrtw');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
