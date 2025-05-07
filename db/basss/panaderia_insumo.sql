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
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `ID_Insumo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Stock` int NOT NULL DEFAULT '0',
  `Descripcion` text,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` int NOT NULL,
  `IVA` decimal(4,2) NOT NULL DEFAULT '0.16',
  `Estado` varchar(20) NOT NULL DEFAULT 'Disponible',
  `FK_ID_TipoInsumo` int NOT NULL,
  PRIMARY KEY (`ID_Insumo`),
  UNIQUE KEY `Nombre` (`Nombre`),
  KEY `FK_ID_TipoInsumo` (`FK_ID_TipoInsumo`),
  CONSTRAINT `insumo_ibfk_1` FOREIGN KEY (`FK_ID_TipoInsumo`) REFERENCES `tipoinsumo` (`ID_TipoInsumo`),
  CONSTRAINT `insumo_chk_1` CHECK ((`Stock` >= 0)),
  CONSTRAINT `insumo_chk_2` CHECK ((`Precio` > 0)),
  CONSTRAINT `insumo_chk_3` CHECK ((`Cantidad` > 0)),
  CONSTRAINT `insumo_chk_4` CHECK ((`IVA` >= 0)),
  CONSTRAINT `insumo_chk_5` CHECK ((`Estado` in (_utf8mb4'Disponible',_utf8mb4'Agotado',_utf8mb4'Descontinuado')))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'Harina de Trigo',50,'Harina de trigo para panadería',20.00,100,0.16,'Disponible',1),(2,'Azúcar Blanca',30,'Azúcar blanca para repostería',15.00,50,0.16,'Disponible',2),(3,'Limones',100,'Limones frescos',5.00,200,0.16,'Disponible',3),(4,'Papas',150,'Papas para freír',10.00,300,0.16,'Disponible',4),(5,'Leche Entera',100,'Leche entera',12.00,200,0.16,'Disponible',5),(6,'Pollo Entero',50,'Pollo entero',50.00,100,0.16,'Disponible',6);
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:24
