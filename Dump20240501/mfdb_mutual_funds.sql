-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mfdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `mutual_funds`
--

DROP TABLE IF EXISTS `mutual_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mutual_funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_rank` varchar(255) DEFAULT NULL,
  `morningstar_rating` varchar(255) DEFAULT NULL,
  `nav` varchar(255) DEFAULT NULL,
  `fund_return` varchar(255) DEFAULT NULL,
  `category_return` varchar(255) DEFAULT NULL,
  `risk` varchar(255) DEFAULT NULL,
  `fund_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutual_funds`
--

LOCK TABLES `mutual_funds` WRITE;
/*!40000 ALTER TABLE `mutual_funds` DISABLE KEYS */;
INSERT INTO `mutual_funds` VALUES (1,'Bank of India Flexi Cap Fund Direct Growth','2Out of 33','5','₹34.39','64.00%','40.23%','Very High Risk','₹743.44 Cr'),(2,'JM Flexicap Fund (Direct) Growth Option','1Out of 33','5','₹103.28','67.37%','40.23%','Very High Risk','₹1,773.87 Cr'),(3,'Quant Flexi Cap Fund Growth Option Direct Plan','3Out of 33','5','₹108.23','60.47%','40.23%','Very High Risk','₹4,616.85 Cr'),(4,'Motilal Oswal Flexicap Fund Direct Plan Growth','5Out of 33','2','₹55.01','54.91%','40.23%','Very High Risk','₹9,660.38 Cr'),(5,'ITI Flexi Cap Fund Direct Growth','4Out of 33','--','₹16.34','56.01%','40.23%','Very High Risk','₹860.00 Cr'),(6,'Invesco India Flexi Cap Fund Direct Growth','6Out of 33','--','₹16.30','50.79%','40.23%','Very High Risk','₹1,502.20 Cr'),(7,'Franklin India Flexi Cap Fund Direct Growth','7Out of 33','4','₹1,598.16','46.19%','40.23%','Very High Risk','₹14,623.45 Cr'),(8,'HDFC Flexi Cap Fund -Direct Plan - Growth Option','12Out of 33','4','₹1,798.29','43.98%','40.23%','Very High Risk','₹50,839.90 Cr'),(9,'Edelweiss Flexi Cap Fund Direct Growth','10Out of 33','4','₹37.89','44.36%','40.23%','Very High Risk','₹1,690.09 Cr'),(10,'WhiteOak Capital Flexi Cap Fund Direct Growth','11Out of 33','--','₹15.12','44.06%','40.23%','Very High Risk','₹3,237.34 Cr'),(11,'Shriram Flexi Cap Fund Direct Growth','9Out of 33','2','₹23.25','44.67%','40.23%','Very High Risk','₹83.51 Cr'),(12,'HSBC Flexi Cap Fund Growth Direct','8Out of 33','3','₹210.59','45.03%','40.23%','Very High Risk','₹4,199.70 Cr'),(13,'ICICI Prudential Flexicap Fund Direct Growth','14Out of 33','--','₹17.05','43.40%','40.23%','Very High Risk','₹14,571.31 Cr'),(14,'Nippon India Flexi Cap Fund Direct Growth','13Out of 33','--','₹15.74','43.48%','40.23%','Very High Risk','₹6,306.47 Cr'),(15,'Baroda BNP Paribas Flexi Cap Fund Direct Growth','15Out of 33','--','₹14.53','42.77%','40.23%','Very High Risk','₹1,254.23 Cr'),(16,'Mahindra Manulife Flexi Cap Fund Direct Growth','17Out of 33','--','₹15.41','41.01%','40.23%','Very High Risk','₹1,232.22 Cr'),(17,'Union Flexi Cap Fund Direct Growth Option','18Out of 33','4','₹50.91','39.94%','40.23%','Very High Risk','₹1,986.67 Cr'),(18,'Aditya Birla Sun Life Flexi Cap Fund Direct Plan Growth','21Out of 33','4','₹1,711.51','38.35%','40.23%','Very High Risk','₹19,967.06 Cr'),(19,'Parag Parikh Flexi Cap Direct Growth','22Out of 33','5','₹76.96','37.45%','40.23%','Very High Risk','₹60,559.43 Cr'),(20,'Tata Flexi Cap Fund Direct Growth','20Out of 33','3','₹23.08','38.50%','40.23%','Very High Risk','₹2,641.58 Cr'),(21,'Taurus Flexi Cap Fund - Direct Plan-Growth Option','16Out of 33','2','₹220.87','41.21%','40.23%','Very High Risk','₹329.48 Cr'),(22,'Bandhan Flexi Cap Fund-Direct Plan-Growth','19Out of 33','3','₹200.82','38.82%','40.23%','Very High Risk','₹6,807.21 Cr'),(23,'Kotak Flexicap Fund Direct Growth','23Out of 33','4','₹83.18','37.30%','40.23%','Very High Risk','₹45,911.90 Cr'),(24,'LIC MF Flexi Cap Fund Direct Plan Growth Option','25Out of 33','2','₹97.15','35.50%','40.23%','Very High Risk','₹942.29 Cr'),(25,'Mirae Asset Flexi Cap Fund Direct Growth','24Out of 33','--','₹14.10','35.63%','40.23%','Very High Risk','₹1,699.82 Cr'),(26,'Axis Flexi Cap Fund Direct Growth','26Out of 33','3','₹25.32','34.82%','40.23%','Very High Risk','₹11,670.37 Cr'),(27,'Canara Robeco Flexi Cap Fund Direct Plan Growth Option','28Out of 33','3','₹327.14','33.04%','40.23%','Very High Risk','₹12,068.45 Cr'),(28,'Sundaram Flexi Cap Fund Direct Growth','27Out of 33','--','₹13.38','33.06%','40.23%','Very High Risk','₹2,084.21 Cr'),(29,'Navi Flexi Cap Fund Direct Growth','29Out of 33','4','₹23.42','31.25%','40.23%','Very High Risk','₹243.97 Cr'),(30,'SBI Flexicap Fund Direct Growth','30Out of 33','4','₹109.80','31.69%','41.58%','Very High Risk','₹20,283.05 Cr'),(31,'PGIM India Flexi Cap Fund Direct Growth','30Out of 33','5','₹36.46','31.15%','40.31%','Very High Risk','₹9,977.36 Cr'),(32,'Samco Flexi Cap Fund Direct Growth','30Out of 33','--','₹12.13','30.56%','40.23%','Very High Risk','₹718.69 Cr');
/*!40000 ALTER TABLE `mutual_funds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 22:01:52
