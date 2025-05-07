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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `Id_Empleado` int NOT NULL AUTO_INCREMENT,
  `Nombre_emple` varchar(50) NOT NULL,
  `Ap_Paterno_emple` varchar(50) NOT NULL,
  `Ap_Materno_emple` varchar(50) NOT NULL,
  `CURP_emple` varchar(18) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `RFC_emple` varchar(13) NOT NULL,
  `NSS` bigint NOT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Telefono_emple` bigint NOT NULL,
  `Padecimientos` text,
  `Calle` varchar(100) NOT NULL,
  `Colonia` varchar(100) NOT NULL,
  `Cod_Postal` int NOT NULL,
  `stoPuesto` varchar(50) NOT NULL,
  `Fecha_Contratacion` date NOT NULL DEFAULT (curdate()),
  `Estado_emple` varchar(20) NOT NULL DEFAULT 'Activo',
  `Contrasena_emple` varchar(255) NOT NULL DEFAULT '12345',
  PRIMARY KEY (`Id_Empleado`),
  UNIQUE KEY `CURP_emple` (`CURP_emple`),
  UNIQUE KEY `RFC_emple` (`RFC_emple`),
  UNIQUE KEY `Correo_Electronico` (`Correo_Electronico`),
  CONSTRAINT `empleado_chk_1` CHECK ((`Sexo` in (_utf8mb4'M',_utf8mb4'F',_utf8mb4'O'))),
  CONSTRAINT `empleado_chk_2` CHECK ((`Estado_emple` in (_utf8mb4'Activo',_utf8mb4'Inactivo',_utf8mb4'Vacaciones',_utf8mb4'Baja')))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Bernardo Adonai','Vasquez','Hernandez','VEHB010101HOCRSR09','M','VAHB010101XXX',9513060854,'ado@gmail.com',5551234567,NULL,'Calle Ejemplo 123','Centro',68000,'Panadero','2025-04-20','Activo','12345'),(4,'Tania Mishell','Castillo','Serna','TCSE040503MORA2','F','TMC040503MOR',1234567,'mishell@gmail.com',951123456,'Ninguno','Real','Oaxaca',71234,'GERENTE','2025-04-24','Activo','12345'),(5,'adonai','vasquez','hernandez','1adger434','M','12ehbdfbntr',134134345235,'d4512161b3@gmail.com',12341365,'ninguno','real','no falsa',12345,'vendedor','2025-04-26','Activo','AVYeA4ueMU'),(6,'bernardo','vasquez','hernandez','fadbae442','M','gggreg556',43436356,'admin@correo.com',25452452,'ninguno','flasa','real',1234,'ventas','2025-04-26','Activo','$2b$12$7y4RZwK/qGhGhjJibFJPae9D8R2XvOnRXiU5lAlL1Z67B4X3/jk3W'),(7,'Sebastián','Vásquez','Sánchez','VASJ010101HOCRSB08','M','VASJ010101HOC',98765432101,'sebastian@email.com',9511234567,'Ninguno','Av. Panaderos #123','Centro',68000,'vendedor','2025-04-29','Activo','$2b$12$dtAO7yk.qTCHnWy05iT.lueRSUWa4TrQx47t5YJeUK2Ej.5E5rq3W');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 19:04:41
