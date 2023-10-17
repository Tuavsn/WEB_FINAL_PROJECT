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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `ImageID` bigint NOT NULL AUTO_INCREMENT,
  `ProductID` bigint NOT NULL,
  `ImageLink` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ImageID`),
  KEY `ProductID_idx` (`ProductID`),
  CONSTRAINT `fk_image_productid` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,1,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-1671700141_img_358x358_843626_fit_center.jpg'),(2,1,'https://media.hcdn.vn/catalog/product/t/e/tem-phu-gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-1663661433_img_358x358_843626_fit_center.jpg'),(3,1,'https://media.hcdn.vn/catalog/product/g/e/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-1671700144_img_358x358_843626_fit_center.jpg'),(4,2,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-gel-rua-mat-tao-bot-la-roche-posay-danh-cho-da-dau-nhay-cam-200ml-1693988261_img_358x358_843626_fit_center.jpg'),(5,2,'https://media.hcdn.vn/catalog/product/t/e/tem-phu-gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-200ml-1663663318_img_358x358_843626_fit_center.jpg'),(6,2,'https://media.hcdn.vn/catalog/product/g/e/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-200ml-2-1663663649_img_358x358_843626_fit_center.jpg'),(7,3,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-422208975-1696325917_img_358x358_843626_fit_center.png'),(8,3,'https://media.hcdn.vn/catalog/product/s/u/sua-rua-mat-cerave-cho-da-thuong-den-kho-473ml-1-1660553029_img_358x358_843626_fit_center.jpg'),(9,4,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-422209139-1693816121_img_358x358_843626_fit_center.png'),(10,4,'https://media.hcdn.vn/catalog/product/s/u/sua-rua-mat-innisfree-danh-cho-da-mun-150g-2-1661754804_img_358x358_843626_fit_center.jpg'),(11,4,'https://media.hcdn.vn/catalog/product/s/u/sua-rua-mat-innisfree-danh-cho-da-mun-150g-1-1661754804_img_358x358_843626_fit_center.jpg'),(12,5,'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00503423_sua_rua_mat_tao_bot_diu_nhe_eucerin_acne_oil_control_pro_acne_solution_soft_cleansing_foam_50g_3995_63f7_large_ad5f79653e.jpg'),(13,5,'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00503423_sua_rua_mat_tao_bot_diu_nhe_eucerin_acne_oil_control_pro_acne_solution_soft_cleansing_foam_50g_7729_63f7_large_950c8b1ec6.jpg'),(14,5,'https://cdn.nhathuoclongchau.com.vn/unsafe/636x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00503423_sua_rua_mat_tao_bot_diu_nhe_eucerin_acne_oil_control_pro_acne_solution_soft_cleansing_foam_50g_3742_63f7_large_f200ae072e.jpg'),(15,6,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-100190025-1695971202_img_358x358_843626_fit_center.png'),(16,6,'https://media.hcdn.vn/catalog/product/s/u/sua-rua-mat-l-oreal-lam-sang-da-giam-tham-nam-100ml-1-1644286882_img_358x358_843626_fit_center.jpg'),(17,6,'https://media.hcdn.vn/catalog/product/g/o/google-shopping-sua-rua-mat-l-oreal-lam-sang-da-giam-tham-nam-100ml-1644286681_img_358x358_843626_fit_center.jpg'),(18,7,'https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-205100137-1695896128_img_358x358_843626_fit_center.png'),(19,7,'https://media.hcdn.vn/catalog/product/n/u/nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339_img_358x358_843626_fit_center.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 17:44:39
