CREATE DATABASE  IF NOT EXISTS `panaderia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `panaderia`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: panaderia
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_Pedido` int NOT NULL AUTO_INCREMENT,
  `Plazo` int NOT NULL,
  `Fecha` date NOT NULL DEFAULT (curdate()),
  `Exigencia` text,
  `Estado` varchar(20) NOT NULL DEFAULT 'Pendiente',
  `Total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `FK_ID_Proveedor` int NOT NULL,
  PRIMARY KEY (`ID_Pedido`),
  KEY `FK_ID_Proveedor` (`FK_ID_Proveedor`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`FK_ID_Proveedor`) REFERENCES `proveedor` (`Id_Proveedor`),
  CONSTRAINT `pedido_chk_1` CHECK ((`Plazo` > 0)),
  CONSTRAINT `pedido_chk_2` CHECK ((`Estado` in (_utf8mb4'Pendiente',_utf8mb4'En proceso',_utf8mb4'Completado',_utf8mb4'Cancelado'))),
  CONSTRAINT `pedido_chk_3` CHECK ((`Total` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (7,7,'2023-01-01','Entrega en 7 días','Pendiente',1000.00,1),(8,14,'2023-01-02','Entrega en 14 días','Pendiente',2000.00,2),(9,5,'2023-01-03','Entrega en 5 días','En proceso',1500.00,17),(10,10,'2023-01-04','Entrega en 10 días','Completado',1200.00,18),(11,8,'2023-01-05','Entrega en 8 días','Pendiente',1800.00,19),(12,6,'2023-01-06','Entrega en 6 días','En proceso',1300.00,20);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:22
