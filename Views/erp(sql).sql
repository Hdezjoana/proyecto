CREATE DATABASE  IF NOT EXISTS `erp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `erp`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `idcolor` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`idcolor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES ('A','azul'),('B','blanco'),('C','cafe'),('N','negro'),('R','rosa'),('RV','rojo (vino)');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumentos`
--

DROP TABLE IF EXISTS `instrumentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrumentos` (
  `idinstrumentos` varchar(45) NOT NULL,
  `intrumento` varchar(45) NOT NULL,
  PRIMARY KEY (`idinstrumentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumentos`
--

LOCK TABLES `instrumentos` WRITE;
/*!40000 ALTER TABLE `instrumentos` DISABLE KEYS */;
INSERT INTO `instrumentos` VALUES ('C1','contrabajo'),('C2','clarinete'),('F1','flauta traversal'),('G1','guitarra acustica'),('P1','piano'),('V1','violin'),('V2','viola'),('V3','violonchello');
/*!40000 ALTER TABLE `instrumentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idLogin` varchar(45) NOT NULL,
  `idregistro` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idLogin`),
  UNIQUE KEY `contraseña_UNIQUE` (`contraseña`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('L1','1','1234','joana');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiales` (
  `idmaterial` varchar(45) NOT NULL,
  `material` varchar(45) NOT NULL,
  PRIMARY KEY (`idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES ('M1','madera'),('M2','metal'),('M3','ebano'),('M4','bomices'),('M5','acero'),('M6','fieltro'),('M7','plastico');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelos` (
  `idmodelos` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  PRIMARY KEY (`idmodelos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES ('E1v1','VL80'),('E2v2','VA80'),('E3v3','VC80'),('E4p','EP10'),('E5g','CL10'),('E6c1','VB80'),('S11v1v3','Student 1'),('S12v1','Conservatorie 2'),('S13v2v3','Student 2'),('S14p','118 Student Upright '),('S15g','Student ST'),('S16c1','Student Standard Double Bass'),('S17f','Student 2 '),('S18c2','Student Bb  '),('S21v1','Antonio Stradivari'),('S22v2','Paganini'),('S23v3','Davidov'),('S24p','Grand Piano'),('SS1p','Model S'),('SS2p','Model M'),('SS3p','Model D'),('Y10g','CG182S'),('Y11c1','SVC-110SK (silent Bass)'),('Y12f','YFL-222'),('Y13c2','YCL-255'),('Y1v1','V5'),('Y2v1','V7'),('Y3v2','VA5'),('Y4v2','VA7'),('Y5v3','VC5'),('Y6v3','VC7'),('Y7p','U1'),('Y8p','U3'),('Y9g','CG102');
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numventas`
--

DROP TABLE IF EXISTS `numventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numventas` (
  `idbetalle` varchar(45) NOT NULL,
  `idventa` int NOT NULL,
  PRIMARY KEY (`idbetalle`),
  KEY `idventa_idx` (`idventa`),
  CONSTRAINT `idventa` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numventas`
--

LOCK TABLES `numventas` WRITE;
/*!40000 ALTER TABLE `numventas` DISABLE KEYS */;
INSERT INTO `numventas` VALUES ('D1',1);
/*!40000 ALTER TABLE `numventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertacajas`
--

DROP TABLE IF EXISTS `ofertacajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertacajas` (
  `idcaja` varchar(45) NOT NULL,
  `tipocaja` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL,
  PRIMARY KEY (`idcaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertacajas`
--

LOCK TABLES `ofertacajas` WRITE;
/*!40000 ALTER TABLE `ofertacajas` DISABLE KEYS */;
INSERT INTO `ofertacajas` VALUES ('C10','Reloj Contrabajo',0),('C11','Concierto ',0),('C1v1v2','Reloj',0),('C2v1v2','Pera',0),('C3v2','Viola',0),('C4v3','Violonchello',0),('C5','Horizontal',0),('C6','Vertical',0),('C7','Acorazada',0),('C8','Concreto',0),('C9','Pera Contrabajo',0),('NS','N/S',0);
/*!40000 ALTER TABLE `ofertacajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertasindividuales`
--

DROP TABLE IF EXISTS `ofertasindividuales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertasindividuales` (
  `idind` varchar(45) NOT NULL,
  `tipooferta` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL,
  PRIMARY KEY (`idind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertasindividuales`
--

LOCK TABLES `ofertasindividuales` WRITE;
/*!40000 ALTER TABLE `ofertasindividuales` DISABLE KEYS */;
INSERT INTO `ofertasindividuales` VALUES ('I10f','Cabeza',0),('I11c2','Cuerpo',0),('I12c2','Boquilla',0),('I1v1v2v3','Mango',0),('I2p','Teclado',0),('I3p','martillo',0),('I4p','Pedal',0),('I5v1v2v3','Cuerdas (4)',0),('I6g','Cuerdas (6)',0),('I7g','Mango',0),('I8c1','Mango',0),('I9f','Cuerpo',0),('NS','N/S',0);
/*!40000 ALTER TABLE `ofertasindividuales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertaspaquetes`
--

DROP TABLE IF EXISTS `ofertaspaquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertaspaquetes` (
  `idpaquete` varchar(45) NOT NULL,
  `paquete` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL,
  PRIMARY KEY (`idpaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertaspaquetes`
--

LOCK TABLES `ofertaspaquetes` WRITE;
/*!40000 ALTER TABLE `ofertaspaquetes` DISABLE KEYS */;
INSERT INTO `ofertaspaquetes` VALUES ('NS','N/S',0),('P1v1v2v3','Cuerdas (4) Puente Alma Boton',0),('P2p','Cuerdas (88) ',0),('P3g','Cuerdas (6) Puente Clavijas',0),('P4c1','Cuerdas (4) Puente Clavijero',0),('P5f','Cabeza Pie',0),('P6c3','Boquilla Caña Llaves Anillo ligero',0);
/*!40000 ALTER TABLE `ofertaspaquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertaventas`
--

DROP TABLE IF EXISTS `ofertaventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertaventas` (
  `idventaoferta` varchar(45) NOT NULL,
  `idpaquete` varchar(45) DEFAULT NULL,
  `idind` varchar(45) DEFAULT NULL,
  `idcaja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventaoferta`),
  KEY `idx_ofertaventas_idpaquete` (`idpaquete`),
  KEY `idind_idx` (`idind`),
  KEY `idcaja_idx` (`idcaja`),
  CONSTRAINT `idcaja` FOREIGN KEY (`idcaja`) REFERENCES `ofertacajas` (`idcaja`),
  CONSTRAINT `idind` FOREIGN KEY (`idind`) REFERENCES `ofertasindividuales` (`idind`),
  CONSTRAINT `idpaquete` FOREIGN KEY (`idpaquete`) REFERENCES `ofertaspaquetes` (`idpaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertaventas`
--

LOCK TABLES `ofertaventas` WRITE;
/*!40000 ALTER TABLE `ofertaventas` DISABLE KEYS */;
INSERT INTO `ofertaventas` VALUES ('OV1','NS','NS','NS'),('OV2','NS','NS','NS');
/*!40000 ALTER TABLE `ofertaventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `idregistro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `repitecontraseña` varchar(45) NOT NULL,
  PRIMARY KEY (`idregistro`),
  UNIQUE KEY `contraseña_UNIQUE` (`contraseña`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,'Joana','Herrera','joana','1234','1234');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idtipo` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES ('T1','Estandar'),('T2','Electrico/a'),('T3','Acustico/a'),('T4','Alto'),('T5','Bajo');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idventa` int NOT NULL,
  `idinstrumentos` varchar(45) DEFAULT NULL,
  `idtipo` varchar(45) DEFAULT NULL,
  `idmaterial` varchar(45) DEFAULT NULL,
  `idmodelos` varchar(45) DEFAULT NULL,
  `idcolor` varchar(45) DEFAULT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idinstrumentos_idx` (`idinstrumentos`),
  KEY `idtipo_idx` (`idtipo`),
  KEY `idmodelos_idx` (`idmodelos`),
  KEY `idmaterial_idx` (`idmaterial`),
  KEY `idcolor_idx` (`idcolor`),
  CONSTRAINT `idcolor` FOREIGN KEY (`idcolor`) REFERENCES `color` (`idcolor`),
  CONSTRAINT `idinstrumentos` FOREIGN KEY (`idinstrumentos`) REFERENCES `instrumentos` (`idinstrumentos`),
  CONSTRAINT `idmaterial` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`idmaterial`),
  CONSTRAINT `idmodelos` FOREIGN KEY (`idmodelos`) REFERENCES `modelos` (`idmodelos`),
  CONSTRAINT `idtipo` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'C1','T1','M1','E1v1','B','0');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-11 18:06:52
