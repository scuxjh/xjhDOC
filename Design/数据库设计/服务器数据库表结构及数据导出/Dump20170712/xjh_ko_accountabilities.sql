CREATE DATABASE  IF NOT EXISTS `xjh` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `xjh`;
-- MySQL dump 10.13  Distrib 5.6.18, for Win32 (x86)
--
-- Host: 202.115.103.23    Database: xjh
-- ------------------------------------------------------
-- Server version	5.6.19-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ko_accountabilities`
--

DROP TABLE IF EXISTS `ko_accountabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ko_accountabilities` (
  `CATEGORY` varchar(31) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `IS_PRINCIPAL` tinyint(1) DEFAULT NULL,
  `commissioner_id` bigint(20) DEFAULT NULL,
  `responsible_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK779E2936B4258FA9` (`commissioner_id`),
  KEY `FK779E29366D0466CB` (`responsible_id`),
  CONSTRAINT `FK779E29366D0466CB` FOREIGN KEY (`responsible_id`) REFERENCES `ko_parties` (`ID`),
  CONSTRAINT `FK779E2936B4258FA9` FOREIGN KEY (`commissioner_id`) REFERENCES `ko_parties` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ko_accountabilities`
--

LOCK TABLES `ko_accountabilities` WRITE;
/*!40000 ALTER TABLE `ko_accountabilities` DISABLE KEYS */;
INSERT INTO `ko_accountabilities` VALUES ('ORGANIZATIONLINEMANAGEMENT',1,0,'2017-01-13','8888-01-01',NULL,NULL,1),('EMPLOYEEPOSTHOLDING',2,0,'2017-01-19','8888-01-01',1,3,4);
/*!40000 ALTER TABLE `ko_accountabilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 19:27:19
