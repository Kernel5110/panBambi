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
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `Id_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_prov_proveedor` varchar(50) NOT NULL,
  `Ap_paterno_prov` varchar(50) DEFAULT NULL,
  `Ap_materno_prov` varchar(50) DEFAULT NULL,
  `Razon_Social` varchar(100) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Correo_prov` varchar(100) NOT NULL,
  `Telefono_prov` bigint NOT NULL,
  `Direccion` text NOT NULL,
  `Estado` varchar(20) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`Id_Proveedor`),
  UNIQUE KEY `RFC` (`RFC`),
  CONSTRAINT `proveedor_chk_1` CHECK ((`Estado` in (_utf8mb4'Activo',_utf8mb4'Inactivo',_utf8mb4'Suspendido')))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Juan','Pérez','García','Harinas Pérez S.A. de C.V.','HAPG890101A12','juan.perez@harinas.com',5512345678,'Calle Falsa 123, Colonia Centro, CDMX','Activo'),(2,'María','López','Hernández','Insumos López S.A. de C.V.','ILHM900202B34','maria.lopez@insumos.com',5587654321,'Av. Siempre Viva 456, Colonia Nueva, CDMX','Activo'),(17,'Luis','Martínez','Ramírez','Productos Martínez S.A. de C.V.','PMRM910304A56','luis.martinez@productos.com',5511223344,'Calle Real 789, Colonia Falsa, CDMX','Activo'),(18,'Ana','Gómez','Sánchez','Distribuidora Gómez S.A. de C.V.','DGSA920405B8','ana.gomez@distribuidora.com',5555667788,'Av. Principal 321, Colonia Nueva, CDMX','Activo'),(19,'Carlos','Ramírez','López','Alimentos Ramírez S.A. de C.V.','ARLR930506A0','carlos.ramirez@alimentos.com',5599887766,'Calle Falsa 456, Colonia Centro, CDMX','Activo'),(20,'Laura','Pérez','García','Bebidas Pérez S.A. de C.V.','BPGAL940607B2','laura.perez@bebidas.com',5544332211,'Av. Siempre Viva 654, Colonia Falsa, CDMX','Activo');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
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
