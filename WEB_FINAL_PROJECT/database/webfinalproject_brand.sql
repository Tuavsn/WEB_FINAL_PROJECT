-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: webfinalproject
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `BrandID` bigint NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(500) NOT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `ImageLink` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`BrandID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Annessa',NULL,'https://media.hcdn.vn//hsk/brandAnessa1320x250default1678267104_img_1320x250_c0e985_fit_center.jpg'),(2,'Acnes',NULL,'https://media.hcdn.vn/hsk/brand/acnes1320x2501659423076_img_1320x250_c0e985_fit_center.jpg'),(3,'Bioderma',NULL,'https://media.hcdn.vn//hsk/brandBioderma1320x2501911221668829047_img_1320x250_c0e985_fit_center.jpg'),(4,'Cerave',NULL,'https://media.hcdn.vn//hsk/brandCerave1320-x-250---861680493038_img_1320x250_c0e985_fit_center.jpg'),(5,'DHC',NULL,'https://media.hcdn.vn//hsk/brandDHC1320x250nopromo1678094996_img_1320x250_c0e985_fit_center.jpg'),(6,'L\'Oreal',NULL,'https://media.hcdn.vn//hsk/brandLoreal-CPD-1320x2501695882654_img_1320x250_c0e985_fit_center.jpg'),(7,'La Roche-Posay ',NULL,'https://media.hcdn.vn/hsk/brand/1320x250brand1696414412_img_1320x250_c0e985_fit_center.jpg');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26  8:25:50
