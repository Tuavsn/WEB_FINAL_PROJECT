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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` bigint NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  `ImageLink` varchar(300) DEFAULT NULL,
  `Icon` varchar(100) DEFAULT NULL,
  `ParentID` bigint NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Chăm sóc da mặt','https://evprincessbichlien.com/wp-content/uploads/2019/11/tai-sao-phai-cham-soc-da-mat.jpg','<i class=\"fa fa-user\"></i>',0),(2,'Chăm sóc cơ thể','https://cdn.tgdd.vn/Files/2020/09/09/1288510/sua-tam-puri-co-tot-khong-dac-diem-huong-thom-va-gia-thanh-cua-tung-loai-202212020807178476.jpg','<i class=\"fa fa-child\"></i>',0),(3,'Trang điểm','https://worldnail.edu.vn/Upload/images/khoa-hoc-trang-diem-ca-nhan.jpg','<i class=\"fab fa-gitlab\"></i>',0),(4,'Thực phẩm chức năng','https://medlatec.vn/media/11756/content/20210309_thuc-pham-chuc-nang-la-gi1.jpg','<i class=\"fa fa-pills\"></i>',0),(5,'Dược mỹ phẩm','https://images2.thanhnien.vn/Uploaded/dieutrang-qc/2021_10_22/mai-han-duoc-my-pham-2-4439.png','<i class=\"fa fa-capsules\"></i>',0),(6,'Phụ kiện','https://cdn.vuahanghieu.com/unsafe/1200x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/2021/01/hoa-my-pham-la-gi-phan-tich-uu-nhuoc-diem-cua-hoa-my-pham-12012021112958.jpg','<i class=\"fa fa-list\"></i>',0),(7,'Tẩy trang','',NULL,1),(8,'Sữa rửa mặt','',NULL,1),(9,'Serum','',NULL,1),(10,'Xịt khoáng','',NULL,1),(11,'Mặt nạ','',NULL,1),(12,'Dưỡng mắt','',NULL,1),(13,'Dưỡng môi','',NULL,1),(14,'Sữa tắm','',NULL,2),(15,'Xà phòng','',NULL,2),(16,'Tẩy tế bào chết body','',NULL,2),(17,'Dưỡng thể','',NULL,2),(18,'Khử mùi','',NULL,2),(19,'Kem chống nắng','',NULL,1),(20,'Kem dưỡng da','',NULL,1),(21,'Kem lót','',NULL,3),(22,'Kem nền','',NULL,3),(23,'Son','',NULL,3),(24,'Kẻ mắt','',NULL,3),(25,'Hỗ trợ da','',NULL,4),(26,'Hỗ trợ tóc',NULL,NULL,4),(27,'Hỗ trợ giảm cân',NULL,NULL,4),(28,'Vitamin/ Khoáng chất',NULL,NULL,4),(29,'Bổ gan',NULL,NULL,5),(30,'Bổ mắt',NULL,NULL,5),(31,'Hoạt huyết dưỡng não',NULL,NULL,5),(32,'Bông tẩy trang',NULL,NULL,6),(33,'Cọ trang điểm',NULL,NULL,6),(34,'Khẩu trang',NULL,NULL,6);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24  7:58:21
