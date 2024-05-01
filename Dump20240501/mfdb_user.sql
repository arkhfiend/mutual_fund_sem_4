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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rajesh','$2b$12$tB/Uf8rMXkiYx7X9b4/4uuKAcERQDZrwtDTro.06B6QiCTFVoMfKa',0),(2,'aarya','$2b$12$zPu1cR9Tv/7BkghbJBj6Weym8dPeqHFbywRN4.7H4K0X4f2zT0v1u',0),(3,'madhura','$2b$12$PVlthNiAyTsyVJ8csqdZLe8m2omQ9DUTMNnL.LgTNZeYRgQqYYO7e',1),(4,'ratan','scrypt:32768:8:1$FwWiVd4kGObpVZcj$28e409a0cccd3be6fadbe4000fdef3c524edc6b5f9fa235b8a6a7523c5f6be101e25ac7aabf58d393fccb5c76e814d1dac6827ae2f235472e238a8cddf1525e3',0),(5,'lara','scrypt:32768:8:1$CLChGSew2ASWnCkK$52538f24c26057f52563b5ea83cc10ac281e05a1aef4873a93af80b74d7a10861afcd33ce358e1e005c18c702407592fe5ceecf56bc675a3cf2904cfc554eb0b',1),(6,'dada','$2b$12$mIVBzPmTxgi4EP5z.B76sOV6J8/FP2CDmTL7H/G7FvmM3ISGIRMlu',0),(7,'modi','$2b$12$l6RL90DO0W7IhPU7GDG3gubN3nWqpNDXmMBridgdYv3e11Nbi2wWq',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
