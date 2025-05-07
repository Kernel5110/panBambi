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
-- Table structure for table `pedido_insumo`
--

DROP TABLE IF EXISTS `pedido_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_insumo` (
  `ID_Pedido_Insumo` int NOT NULL AUTO_INCREMENT,
  `Precio` decimal(10,2) NOT NULL,
  `Unidades` int NOT NULL,
  `Cancelado` tinyint(1) NOT NULL DEFAULT '0',
  `FK_ID_Pedido` int NOT NULL,
  `FK_ID_Insumo` int NOT NULL,
  PRIMARY KEY (`ID_Pedido_Insumo`),
  KEY `FK_ID_Pedido` (`FK_ID_Pedido`),
  KEY `FK_ID_Insumo` (`FK_ID_Insumo`),
  CONSTRAINT `pedido_insumo_ibfk_1` FOREIGN KEY (`FK_ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`) ON DELETE CASCADE,
  CONSTRAINT `pedido_insumo_ibfk_2` FOREIGN KEY (`FK_ID_Insumo`) REFERENCES `insumo` (`ID_Insumo`),
  CONSTRAINT `pedido_insumo_chk_1` CHECK ((`Precio` > 0)),
  CONSTRAINT `pedido_insumo_chk_2` CHECK ((`Unidades` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_insumo`
--

LOCK TABLES `pedido_insumo` WRITE;
/*!40000 ALTER TABLE `pedido_insumo` DISABLE KEYS */;
INSERT INTO `pedido_insumo` VALUES (13,20.00,50,0,8,1),(14,15.00,30,0,9,2),(15,5.00,100,0,10,3),(16,10.00,150,0,11,4),(17,12.00,200,0,12,5),(18,50.00,50,0,7,6);
/*!40000 ALTER TABLE `pedido_insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:40
