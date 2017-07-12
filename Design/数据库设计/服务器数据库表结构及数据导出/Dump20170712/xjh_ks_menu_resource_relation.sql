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
-- Table structure for table `ks_menu_resource_relation`
--

DROP TABLE IF EXISTS `ks_menu_resource_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ks_menu_resource_relation` (
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `CHILD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CHILD_ID`),
  KEY `FKA4E3D4E4C6FAEA04` (`CHILD_ID`),
  KEY `FKA4E3D4E4DF7783B6` (`PARENT_ID`),
  CONSTRAINT `FKA4E3D4E4C6FAEA04` FOREIGN KEY (`CHILD_ID`) REFERENCES `ks_securityresources` (`ID`),
  CONSTRAINT `FKA4E3D4E4DF7783B6` FOREIGN KEY (`PARENT_ID`) REFERENCES `ks_securityresources` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ks_menu_resource_relation`
--

LOCK TABLES `ks_menu_resource_relation` WRITE;
/*!40000 ALTER TABLE `ks_menu_resource_relation` DISABLE KEYS */;
INSERT INTO `ks_menu_resource_relation` VALUES (1,2),(1,3),(1,4),(5,6),(5,7),(5,8),(9,10),(9,11),(9,12),(9,13),(184,185);
/*!40000 ALTER TABLE `ks_menu_resource_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 19:27:15
