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
-- Table structure for table `almacen_materiaprima`
--

DROP TABLE IF EXISTS `almacen_materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_materiaprima` (
  `FK_ID_Almacen` int NOT NULL,
  `FK_ID_MateriaPrima` int NOT NULL,
  `Unidades` int NOT NULL,
  `FechaVencimiento` date NOT NULL,
  `Lote` varchar(50) NOT NULL,
  `Minimo_Stock` int NOT NULL,
  PRIMARY KEY (`FK_ID_Almacen`,`FK_ID_MateriaPrima`),
  KEY `FK_ID_MateriaPrima` (`FK_ID_MateriaPrima`),
  CONSTRAINT `almacen_materiaprima_ibfk_1` FOREIGN KEY (`FK_ID_Almacen`) REFERENCES `almacen` (`ID_Almacen`) ON DELETE CASCADE,
  CONSTRAINT `almacen_materiaprima_ibfk_2` FOREIGN KEY (`FK_ID_MateriaPrima`) REFERENCES `materiaprima` (`ID_MateriaPrima`) ON DELETE CASCADE,
  CONSTRAINT `almacen_materiaprima_chk_1` CHECK ((`Unidades` >= 0)),
  CONSTRAINT `almacen_materiaprima_chk_2` CHECK ((`Minimo_Stock` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_materiaprima`
--

LOCK TABLES `almacen_materiaprima` WRITE;
/*!40000 ALTER TABLE `almacen_materiaprima` DISABLE KEYS */;
INSERT INTO `almacen_materiaprima` VALUES (1,1,100,'2023-12-31','Lote001',20),(2,2,200,'2023-12-31','Lote002',30),(3,3,300,'2023-12-31','Lote003',40),(4,4,50,'2023-12-31','Lote004',10),(5,5,500,'2023-12-31','Lote005',50),(6,6,1000,'2023-12-31','Lote006',100);
/*!40000 ALTER TABLE `almacen_materiaprima` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:23
