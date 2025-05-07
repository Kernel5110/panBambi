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
-- Table structure for table `materiaprima`
--

DROP TABLE IF EXISTS `materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaprima` (
  `ID_MateriaPrima` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Cantidad` int NOT NULL,
  `Descripcion` text,
  `Precio` decimal(10,2) NOT NULL,
  `IVA` decimal(4,2) NOT NULL DEFAULT '0.16',
  `Stock` int NOT NULL DEFAULT '0',
  `Estado` varchar(20) NOT NULL DEFAULT 'Disponible',
  `FK_ID_MedidaCantidad` int NOT NULL,
  `FK_ID_TipoMateriaPrima` int NOT NULL,
  PRIMARY KEY (`ID_MateriaPrima`),
  UNIQUE KEY `Nombre` (`Nombre`),
  KEY `FK_ID_MedidaCantidad` (`FK_ID_MedidaCantidad`),
  KEY `FK_ID_TipoMateriaPrima` (`FK_ID_TipoMateriaPrima`),
  CONSTRAINT `materiaprima_ibfk_1` FOREIGN KEY (`FK_ID_MedidaCantidad`) REFERENCES `medidacantidad` (`ID_MedidaCantidad`),
  CONSTRAINT `materiaprima_ibfk_2` FOREIGN KEY (`FK_ID_TipoMateriaPrima`) REFERENCES `tipomateriaprima` (`ID_TipoMateriaPrima`),
  CONSTRAINT `materiaprima_chk_1` CHECK ((`Cantidad` > 0)),
  CONSTRAINT `materiaprima_chk_2` CHECK ((`Precio` > 0)),
  CONSTRAINT `materiaprima_chk_3` CHECK ((`IVA` >= 0)),
  CONSTRAINT `materiaprima_chk_4` CHECK ((`Stock` >= 0)),
  CONSTRAINT `materiaprima_chk_5` CHECK ((`Estado` in (_utf8mb4'Disponible',_utf8mb4'Agotado',_utf8mb4'Descontinuado')))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima`
--

LOCK TABLES `materiaprima` WRITE;
/*!40000 ALTER TABLE `materiaprima` DISABLE KEYS */;
INSERT INTO `materiaprima` VALUES (1,'Leche',100,'Leche entera',10.00,0.16,50,'Disponible',1,1),(2,'Manzana',200,'Manzana roja',5.00,0.16,100,'Disponible',2,2),(3,'Zanahoria',300,'Zanahoria fresca',3.00,0.16,150,'Disponible',3,3),(4,'Pollo',50,'Pecho de pollo',50.00,0.16,20,'Disponible',1,4),(5,'Arroz',500,'Arroz blanco',20.00,0.16,250,'Disponible',1,5),(6,'Sal',1000,'Sal de mesa',5.00,0.16,500,'Disponible',4,6);
/*!40000 ALTER TABLE `materiaprima` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:42
