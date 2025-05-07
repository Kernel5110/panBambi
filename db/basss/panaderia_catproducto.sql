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
-- Table structure for table `catproducto`
--

DROP TABLE IF EXISTS `catproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catproducto` (
  `ID_CatProducto` int NOT NULL AUTO_INCREMENT,
  `Nombre_prod` varchar(100) NOT NULL,
  `Descripcion` text,
  `Precio` decimal(10,2) NOT NULL,
  `Stock` int NOT NULL DEFAULT '0',
  `Imagen` varchar(255) DEFAULT NULL,
  `Caducidad` date NOT NULL,
  `Sabor` varchar(50) DEFAULT NULL,
  `IVA` decimal(4,2) NOT NULL DEFAULT '0.16',
  `Estado` varchar(20) NOT NULL DEFAULT 'Disponible',
  PRIMARY KEY (`ID_CatProducto`),
  UNIQUE KEY `Nombre_prod` (`Nombre_prod`),
  CONSTRAINT `catproducto_chk_1` CHECK ((`Precio` > 0)),
  CONSTRAINT `catproducto_chk_2` CHECK ((`Stock` >= 0)),
  CONSTRAINT `catproducto_chk_3` CHECK ((`IVA` >= 0)),
  CONSTRAINT `catproducto_chk_4` CHECK ((`Estado` in (_utf8mb4'Disponible',_utf8mb4'Agotado',_utf8mb4'Descontinuado')))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproducto`
--

LOCK TABLES `catproducto` WRITE;
/*!40000 ALTER TABLE `catproducto` DISABLE KEYS */;
INSERT INTO `catproducto` VALUES (7,'Concha de vainilla','Pan dulce tradicional con cobertura de vainilla',10.00,50,'imagenes/concha.png','2025-12-31','Vainilla',0.16,'Disponible'),(8,'Baguette rústica','Pan salado ideal para sándwiches',15.00,40,'imagenes/baguette.png','2025-10-15','salado',0.16,'Disponible'),(9,'Pastel cumple Choco','Pastel de chocolate con velitas',250.00,10,'imagenes/pastel_choco.png','2025-09-01','Chocolate',0.16,'Disponible'),(10,'Pastel boda 3 pisos','Decorado con flores blancas',800.00,2,'imagenes/pastel_boda.png','2025-12-25','Fresa',0.16,'Disponible'),(11,'Galleta choco chip','Crujiente y dulce',5.00,100,'imagenes/galleta_choco.png','2025-08-20','Chocolate',0.16,'Disponible'),(12,'Galleta avena','Galletas saludables con avena y pasas',6.50,80,'imagenes/galleta_avena.png','2025-08-22','Avena',0.16,'Disponible'),(25,'Pan Francés','Pan tradicional francés',15.00,100,'imagenes/pan_frances.png','2023-12-31','Salado',0.16,'Disponible'),(26,'Pastel de Chocolate','Pastel de chocolate con cobertura',150.00,50,'imagenes/pastel_chocolate.png','2023-12-31','Chocolate',0.16,'Disponible'),(33,'bolillo','bolillo',3.00,300,'imagenes/bolillo.png','2025-05-20','salado',16.00,'Disponible');
/*!40000 ALTER TABLE `catproducto` ENABLE KEYS */;
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
