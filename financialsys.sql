/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 8.0.19 : Database - financialsys
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`financialsys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `financialsys`;

/*Table structure for table `budgetapplyform` */

DROP TABLE IF EXISTS `budgetapplyform`;

CREATE TABLE `budgetapplyform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `payAccount` text,
  `payAccountId` text,
  `applicantremarks` text,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `budgetapplyform` */

/*Table structure for table `budgetfinishedform` */

DROP TABLE IF EXISTS `budgetfinishedform`;

CREATE TABLE `budgetfinishedform` (
  `id` int NOT NULL,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `appliedSum` decimal(10,0) DEFAULT NULL,
  `realSum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `projectEvidence` text,
  `diffSum` decimal(10,0) DEFAULT NULL,
  `status` int DEFAULT '2' COMMENT '已完成的预算申请',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `budgetfinishedform` */

/*Table structure for table `budgetpayedform` */

DROP TABLE IF EXISTS `budgetpayedform`;

CREATE TABLE `budgetpayedform` (
  `id` int NOT NULL,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `payAccount` text,
  `payAccountId` text,
  `projectEvidence` text,
  `payedTime` text,
  `status` int DEFAULT '1' COMMENT '待结算',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `budgetpayedform` */

/*Table structure for table `budgetunpayedform` */

DROP TABLE IF EXISTS `budgetunpayedform`;

CREATE TABLE `budgetunpayedform` (
  `id` int NOT NULL,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `reason` text,
  `unpayedTime` text,
  `status` int DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `budgetunpayedform` */

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `buynum` int DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `orderitem` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `orders` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `products` */

/*Table structure for table `reimapplyform` */

DROP TABLE IF EXISTS `reimapplyform`;

CREATE TABLE `reimapplyform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `applyTime` text,
  `payAccount` text,
  `payAccountId` text,
  `projectEvidence` text,
  `expectPayedTime` text,
  `applicantremarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ststus` int DEFAULT '0' COMMENT '0表示正在申请中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `reimapplyform` */

/*Table structure for table `reimpayedform` */

DROP TABLE IF EXISTS `reimpayedform`;

CREATE TABLE `reimpayedform` (
  `id` int NOT NULL,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `payAccount` text,
  `payAccountId` text,
  `projectEvidence` text,
  `settleRemarks` text,
  `payedTime` text,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `reimpayedform` */

/*Table structure for table `reimunpayedform` */

DROP TABLE IF EXISTS `reimunpayedform`;

CREATE TABLE `reimunpayedform` (
  `id` int NOT NULL,
  `projectId` text,
  `projectName` text,
  `applicant` text,
  `applyTime` text,
  `applySum` decimal(10,0) DEFAULT NULL,
  `abstract` text,
  `settleRemarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `unpayedTime` text,
  `status` int DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `reimunpayedform` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identity` int NOT NULL DEFAULT '1',
  `accountNumber` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chineseName` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '是否为第一次登陆',
  `phoneNumber` tinytext,
  `payAccount` tinytext,
  `payAccountId` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
