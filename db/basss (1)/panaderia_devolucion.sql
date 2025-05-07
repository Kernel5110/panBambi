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
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion` (
  `ID_Devolucion` int NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fecha` date NOT NULL DEFAULT (curdate()),
  `Estado` varchar(20) NOT NULL DEFAULT 'Pendiente',
  `FK_ID_Pedido` int DEFAULT NULL,
  `FK_ID_Venta` int DEFAULT NULL,
  `FK_ID_Usuario` int NOT NULL,
  PRIMARY KEY (`ID_Devolucion`),
  KEY `FK_ID_Pedido` (`FK_ID_Pedido`),
  KEY `FK_ID_Venta` (`FK_ID_Venta`),
  KEY `FK_ID_Usuario` (`FK_ID_Usuario`),
  CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`FK_ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`),
  CONSTRAINT `devolucion_ibfk_2` FOREIGN KEY (`FK_ID_Venta`) REFERENCES `venta` (`ID_Venta`),
  CONSTRAINT `devolucion_ibfk_3` FOREIGN KEY (`FK_ID_Usuario`) REFERENCES `empleado` (`Id_Empleado`),
  CONSTRAINT `devolucion_chk_1` CHECK ((`Estado` in (_utf8mb4'Pendiente',_utf8mb4'Aprobada',_utf8mb4'Rechazada',_utf8mb4'Procesada'))),
  CONSTRAINT `devolucion_chk_2` CHECK (((`FK_ID_Pedido` is not null) or (`FK_ID_Venta` is not null)))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:43
