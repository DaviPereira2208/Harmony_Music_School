-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: mysql-7cdeed8-davipereirasantos2208-92df.g.aivencloud.com    Database: harmony_music_school
-- ------------------------------------------------------
-- Server version	8.4.8

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '71ffaac5-c30c-11f1-ac40-22f3ca4c7d02:1-82';

--
-- Table structure for table `Pagamentos`
--

DROP TABLE IF EXISTS `Pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pagamentos` (
  `id_pagamento` int NOT NULL AUTO_INCREMENT,
  `id_aluno` int DEFAULT NULL,
  `id_responsavel` int DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `mes_referencia` date DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  `forma_pagamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `id_aluno` (`id_aluno`),
  KEY `id_responsavel` (`id_responsavel`),
  CONSTRAINT `Pagamentos_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `Alunos` (`id_aluno`),
  CONSTRAINT `Pagamentos_ibfk_2` FOREIGN KEY (`id_responsavel`) REFERENCES `Responsavel` (`id_responsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pagamentos`
--

LOCK TABLES `Pagamentos` WRITE;
/*!40000 ALTER TABLE `Pagamentos` DISABLE KEYS */;
INSERT INTO `Pagamentos` VALUES (1,1,1,'2026-03-05','2026-03-01',250.00,'PIX'),(2,2,2,'2026-03-07','2026-03-01',220.00,'Cartão de Crédito'),(3,3,3,'2026-03-10','2026-03-01',190.00,'Boleto'),(4,4,4,'2026-03-02','2026-03-01',300.00,'PIX'),(5,5,5,'2026-03-01','2026-03-01',450.00,'Transferência');
/*!40000 ALTER TABLE `Pagamentos` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-08 10:33:57
