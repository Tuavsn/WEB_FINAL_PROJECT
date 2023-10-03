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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(500) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `ImageLink` varchar(500) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID_idx` (`CategoryID`),
  CONSTRAINT `CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Gel rửa mặt tạo bọt cho da dầu nhạy cảm La Roche Posay Effaclar Foaming 400ml','Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin là dòng sản phẩm sữa rửa mặt chuyên biệt dành cho làn da dầu, mụn, nhạy cảm đến từ thương hiệu dược mỹ phẩm La Roche-Posay nổi tiếng của Pháp, với kết cấu dạng gel tạo bọt nhẹ nhàng giúp loại bỏ bụi bẩn, tạp chất và bã nhờn dư thừa trên da hiệu quả, mang đến làn da sạch mịn, thoáng nhẹ và tươi mát. Công thức sản phẩm an toàn, lành tính, giảm thiểu tình trạng kích ứng đối với làn da nhạy cảm.',539000,'https://down-vn.img.susercontent.com/file/vn-11134201-23030-pom5ss4ds6nv5b',NULL,200),(2,'Gel Rửa Mặt Tạo Bọt Cho Da Dầu Nhạy Cảm La Roche Posay Effaclar Foaming Gel 50ml','Gel rửa mặt tạo bọt làm sạch &amp; giảm nhờn cho da dầu nhạy cảm La Roche-Posay Effaclar Purifying Foaming Gel 50ml sẽ giúp ngăn ngừa và hỗ trợ điều trị mụn tối đa với kết cấu dạng gel trong dễ dàng tạo bọt cùng công thức không chứa dầu, không cồn, an toàn cho làn da. Sản phẩm nhẹ nhàng làm sạch da từ sâu trong lỗ chân lông, loại bỏ bụi bẩn cùng dầu thừa, đồng thời giữ độ pH luôn ở mức cân bằng 5.5 nên sau khi rửa mặt xong, da không hề khô rít, căng rát, mà vẫn mềm mịn, sạch thoáng và đầy sức sống.',194000,'https://down-vn.img.susercontent.com/file/vn-11134201-23030-6kiz5i8es6nv9a',NULL,150),(3,'Sữa Rửa Mặt Dành Cho Da Dầu 473ml | Cerave Foaming Cleanser','CeraVe Foaming cleanser – Sữa rửa mặt tạo bọt là sản phẩm lý tưởng để loại bỏ dầu thừa, bụi bẩn và lớp trang điểm và chọn loại nhẹ nhàng, không phá vỡ hàng rào bảo vệ tự nhiên của da và chứa các thành phần giúp duy trì cân bằng độ ẩm có thể tạo nên sự khác biệt. CeraVe Foaming Facial Cleanser có ceramides, acid Hyaluronic và niacinamide giúp khôi phục hàng rào bảo vệ da, thu hút hydrat hóa và làm dịu da.',399000,'https://product.hstatic.net/200000605707/product/cerave-foaming-cleanser-gel-moussant-473_d71d7a63b2c04df69a6ad7568be0e979_grande.jpg',NULL,100),(4,'Sữa rửa mặt dành cho da mụn từ Bija innisfree Bija Trouble Facial Foam 150g','Sữa Rửa Mặt Trị Mụn Khẩn Cấp Innisfree Jeju Bija Trouble Facial Foam là sữa rửa mặt thuộc thương hiệu Innisfree, với chiết xuất từ quả nhục đậu khấu, sản phẩm giúp kiểm soát lượng dầu thừa, đồng thời sát khuẩn nhẹ làm se mụn nhanh, hỗ trợ cho điều trị mụn và ngăn ngừa mụn quay trở lại',147000,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSO1ZxHQ_CCCmD3PTc0HOFOnCoJ0SAlxptMAN5oRC6MPih1jH-Le6iYvrHL95HfpS-F7ffJtiut7PUjpAhyNo7KM6EVFlQJ0lczkQbEqkuVFvt6a2bL1xan&usqp=CAE',NULL,110),(5,'Sữa Rửa Mặt Dưỡng Ẩm Kiểm Soát Dầu Làm Sạch Sâu Làm Trắng Da','Sữa rửa mặt axit amin 60g, Sữa rửa mặt trị mụn 60g, Sữa rửa mặt Collagen 60g, Sữa rửa mặt làm trắng tàn nhang 60g, Sữa rửa mặt làm trắng tàn nhang 60g (Baizhengtang), Sữa rửa mặt làm trắng 60g (Mới), Sữa rửa mặt 60g (Yixiangyuan), Tẩy tế bào chết Collagen 60g, Tẩy tế bào chết Curddew 60g',170000,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRQpGXXA8hChpR42zwWKr_5t7qY9j4oPJfZII3cKEfo_Z6HclWrVNwIskf4VE-XTKr9m9tqv-K3h-u5bSBm4PQOM3kwb7Td8qA6jbiHSCz4Xtg0VzfWMb34pA&usqp=CAE',NULL,30),(6,'Sữa Rửa Mặt L\'Oreal Làm Sáng Da, Giảm Thâm Nám 100ml','Sữa Rửa Mặt L\'Oreal Aura Perfect Milky Foam thuộc dòng sản phẩm dưỡng sáng da Aura Perfect, được nghiên cứu bởi viện nghiên cứu L\'oreal Paris sẽ là lựa chọn đúng đắn để nuôi dưỡng và chăm sóc làn da sáng mịn rạng ngời hơn mỗi ngày. Với thành phần tinh thể đá quý Tourmaline và Vitamin C được nghiên cứu giúp làm dịu và ngăn ngừa hắc tố melanin là nguyên nhân chính gây sạm da, nuôi dưỡng da khỏe mạnh và sáng bóng, sản phẩm là bước khởi đầu hoàn hảo cho quá trình dưỡng da sáng mịn của bạn.',102000,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT_q-1k2Niud9jzpxgAqOV-AUqBJGX-YzaSEUeSMSqnFj8pxKav4S-QLBSgT7PkTIdMyZQJ90RwZswueDSbjkAW1Wklx1khU7RQUtLqEqATAXtoNic0j-RN&usqp=CAE',NULL,300),(7,'Nước Tẩy Trang L\'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml','Nước Tẩy Trang L\'Oréal là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu L\'Oreal Paris, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông thoáng, mềm mượt mà không hề khô căng.',159000,'https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684995866_img_358x358_843626_fit_center.jpg',NULL,500),(8,'Nước Tẩy Trang La Roche-Posay Cho Da Dầu, Nhạy Cảm 400ml','Nước Tẩy Trang Sạch Sâu & Kiểm Soát Nhờn Cho Da Dầu La Roche-Posay Effaclar Micellar Water Ultra Oily Skin là sản phẩm nước tẩy trang đến từ thương hiệu dược mỹ phẩm La Roche-Posay, với công nghệ cải tiến Glyco Micellar mang lại hiệu quả làm sạch sâu vượt trội, giúp lấy đi lớp trang điểm, bã nhờn và các hạt bụi siêu nhỏ có trong khói xe và môi trường ô nhiễm nhưng vẫn an toàn cho làn da dầu nhạy cảm & dễ kích ứng.',359000,'https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-nuoc-tay-trang-la-roche-posay-cho-da-dau-nhay-cam-400ml-1663665955_img_358x358_843626_fit_center.jpg',NULL,400),(9,'Nước Tẩy Trang Bioderma Dành Cho Da Dầu & Hỗn Hợp 500ml','Nước Tẩy Trang Bioderma Sébium H2O là sản phẩm tẩy trang dành cho da dầu, da hỗn hợp đến từ thương hiệu dược mỹ phẩm Bioderma, được ứng dụng công nghệ Micellar đình đám giúp loại bỏ lớp trang điểm cùng bụi bẩn và dầu thừa trên da hiệu quả mà không gây khô căng hay nhờn rít, tạo cảm giác thông thoáng cho da sau một ngày dài mệt mỏi.',389000,'https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-500ml-1690274181_img_358x358_843626_fit_center.jpg',NULL,390);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 14:44:20
