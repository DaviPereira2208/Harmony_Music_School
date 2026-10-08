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
-- Table structure for table `Alunos`
--

DROP TABLE IF EXISTS `Alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `id_plano` int DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_plano` (`id_plano`),
  CONSTRAINT `Alunos_ibfk_1` FOREIGN KEY (`id_plano`) REFERENCES `Planos` (`id_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alunos`
--

LOCK TABLES `Alunos` WRITE;
/*!40000 ALTER TABLE `Alunos` DISABLE KEYS */;
INSERT INTO `Alunos` VALUES (1,'Lucas Silva Santos','11122233344','11988881111','lucas.silva@email.com','Rua das Flores, 123 - SP',1),(2,'Mariana Costa Lima','22233344455','11988882222','mariana.costa@email.com','Av. Paulista, 1000 - SP',2),(3,'Gabriel Oliveira','33344455566','11988883333','gabriel.oliveira@email.com','Rua Augusta, 500 - SP',3),(4,'Beatriz Souza Filho','44455566677','11988884444','beatriz.souza@email.com','Rua Domingos de Morais, 200 - SP',4),(5,'Matheus Pereira','55566677788','11988885555','matheus.pereira@email.com','Alameda Santos, 800 - SP',5);
/*!40000 ALTER TABLE `Alunos` ENABLE KEYS */;
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

-- Dump completed on 2026-10-08 10:33:33
