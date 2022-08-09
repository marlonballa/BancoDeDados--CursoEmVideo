CREATE DATABASE  IF NOT EXISTS `cadastromarlon` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cadastromarlon`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastromarlon
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `cursosprepara`
--

DROP TABLE IF EXISTS `cursosprepara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursosprepara` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(40) NOT NULL,
  `descricaoCurso` text,
  `cargaHorariaCurso` int(10) unsigned DEFAULT NULL,
  `totalAulasCurso` int(10) unsigned DEFAULT NULL,
  `anoLancamentoCurso` year(4) DEFAULT '2022',
  PRIMARY KEY (`idCurso`),
  UNIQUE KEY `nomeCurso` (`nomeCurso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursosprepara`
--

LOCK TABLES `cursosprepara` WRITE;
/*!40000 ALTER TABLE `cursosprepara` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursosprepara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoasprepara`
--

DROP TABLE IF EXISTS `pessoasprepara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoasprepara` (
  `idPessoas` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profession02` varchar(20) NOT NULL DEFAULT 'Profissão',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`idPessoas`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoasprepara`
--

LOCK TABLES `pessoasprepara` WRITE;
/*!40000 ALTER TABLE `pessoasprepara` DISABLE KEYS */;
INSERT INTO `pessoasprepara` VALUES (1,'Marlon','','1993-09-10','M',96.00,1.80,'Brasil'),(2,'Marcelle','','1999-10-12','F',88.00,1.74,'Brasil'),(3,'Marcelle','','1999-10-12','F',88.00,1.74,'Brasil'),(4,'Marcelle','','1999-10-12','F',88.00,1.74,'Brasil'),(5,'Marcelle Balla','','1999-10-12','F',88.00,1.74,'Brasil'),(6,'Marcelle Balla','','1999-10-12','F',88.00,1.74,'Brasil'),(7,'Marcelle Balla 02','','1999-10-12','F',88.00,1.74,'Brasil'),(8,'Marcelle Balla 02','','1999-10-12','F',88.00,1.74,'Brasil'),(9,'Ana Laura Matos','','1994-07-12','F',58.00,1.55,'Argentina'),(10,'Ana Laura Matos - 002','','1994-07-12','F',58.00,1.55,'Argentina');
/*!40000 ALTER TABLE `pessoasprepara` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-02 10:17:54
