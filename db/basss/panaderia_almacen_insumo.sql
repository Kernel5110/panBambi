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
-- Table structure for table `almacen_insumo`
--

DROP TABLE IF EXISTS `almacen_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_insumo` (
  `FK_ID_Almacen` int NOT NULL,
  `FK_ID_Insumo` int NOT NULL,
  `Unidades` int NOT NULL,
  `Fecha_Actualizacion` date NOT NULL DEFAULT (curdate()),
  `Minimo_Stock` int NOT NULL,
  PRIMARY KEY (`FK_ID_Almacen`,`FK_ID_Insumo`),
  KEY `FK_ID_Insumo` (`FK_ID_Insumo`),
  CONSTRAINT `almacen_insumo_ibfk_1` FOREIGN KEY (`FK_ID_Almacen`) REFERENCES `almacen` (`ID_Almacen`) ON DELETE CASCADE,
  CONSTRAINT `almacen_insumo_ibfk_2` FOREIGN KEY (`FK_ID_Insumo`) REFERENCES `insumo` (`ID_Insumo`) ON DELETE CASCADE,
  CONSTRAINT `almacen_insumo_chk_1` CHECK ((`Unidades` >= 0)),
  CONSTRAINT `almacen_insumo_chk_2` CHECK ((`Minimo_Stock` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_insumo`
--

LOCK TABLES `almacen_insumo` WRITE;
/*!40000 ALTER TABLE `almacen_insumo` DISABLE KEYS */;
INSERT INTO `almacen_insumo` VALUES (1,1,50,'2023-01-01',10),(2,2,30,'2023-01-02',5),(3,3,100,'2023-01-03',20),(4,4,150,'2023-01-04',30),(5,5,200,'2023-01-05',40),(6,6,50,'2023-01-06',10);
/*!40000 ALTER TABLE `almacen_insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:25
