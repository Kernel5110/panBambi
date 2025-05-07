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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Id_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre_Cliente_cliente` varchar(50) NOT NULL,
  `Ap_Paterno_cliente_cli` varchar(50) NOT NULL,
  `Ap_Materno_cleinte_cli` varchar(50) NOT NULL,
  `Telefono_cli` bigint NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Calle` varchar(100) NOT NULL,
  `Colonia` varchar(100) NOT NULL,
  `Cod_Postal` int NOT NULL,
  `Fecha_Registro` date NOT NULL DEFAULT (curdate()),
  `Estado` varchar(20) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`Id_Cliente`),
  CONSTRAINT `cliente_chk_1` CHECK ((`Estado` in (_utf8mb4'Activo',_utf8mb4'Inactivo')))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos','Ramírez','Sánchez',5511223344,'carlos.ramirez@example.com','RASA910304A56','Calle Falsa 789','Colonia Falsa',12345,'2023-01-01','Activo'),(2,'Ana','Gómez','Martínez',5555667788,'ana.gomez@example.com','GOMT920405B78','Av. Siempre Viva 321','Colonia Nueva',67890,'2023-02-01','Activo'),(9,'Carlos','Ramírez','Sánchez',5511223344,'carlos.ramirez@example.com','RASA910304A5','Calle Falsa 789','Colonia Falsa',12345,'2023-01-01','Activo'),(10,'Ana','Gómez','Martínez',5555667788,'ana.gomez@example.com','GOMT920405B8','Av. Siempre Viva 321','Colonia Nueva',67890,'2023-02-01','Activo'),(11,'Luis','Hernández','López',5599887766,'luis.hernandez@example.com','HELU930506A0','Calle Real 456','Colonia Centro',54321,'2023-03-01','Activo'),(12,'Laura','Pérez','García',5544332211,'laura.perez@example.com','PEGAL940607B2','Av. Principal 654','Colonia Falsa',98765,'2023-04-01','Activo'),(13,'Miguel','Torres','Ramírez',5533221100,'miguel.torres@example.com','MTRR950708A3','Calle Falsa 123','Colonia Centro',12345,'2023-05-01','Activo'),(14,'Sofía','López','Gómez',5522113344,'sofia.lopez@example.com','SLGOM960809A4','Av. Siempre Viva 456','Colonia Nueva',67890,'2023-06-01','Activo');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
