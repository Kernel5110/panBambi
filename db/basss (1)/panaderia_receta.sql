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
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `ID_Receta` int NOT NULL AUTO_INCREMENT,
  `Nombre_receta` varchar(100) NOT NULL,
  `Descripcion` text,
  `Tiempo_Preparacion` int NOT NULL,
  `Instrucciones` text NOT NULL,
  PRIMARY KEY (`ID_Receta`),
  UNIQUE KEY `Nombre_receta` (`Nombre_receta`),
  CONSTRAINT `receta_chk_1` CHECK ((`Tiempo_Preparacion` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,'Receta Pan Dulce','Pan suave con cobertura dulce',60,'Mezclar ingredientes, amasar, hornear 30 min.'),(2,'Receta Pastel Cumpleaños','Pastel de vainilla con betún',90,'Preparar mezcla, hornear, decorar.'),(3,'Receta Galleta Choco','Galletas con chispas de chocolate',45,'Mezclar, formar bolitas, hornear.'),(4,'Receta Pan Salado','Pan estilo baguette',70,'Fermentar masa, formar baguettes, hornear.'),(5,'Receta Pastel Boda','Pastel de tres pisos',120,'Preparar por capas, armar y decorar.'),(6,'Receta Galleta Avena','Galletas con avena y pasas',50,'Mezclar ingredientes y hornear.'),(13,'Pan Francés','Receta tradicional de pan francés',120,'Mezclar ingredientes, amasar, dejar reposar y hornear.'),(14,'Pastel de Chocolate','Receta de pastel de chocolate',180,'Mezclar ingredientes, hornear y decorar.');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
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
