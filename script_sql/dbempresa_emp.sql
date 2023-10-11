-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dbempresa
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EMPNO` int NOT NULL,
  `NOME` varchar(25) DEFAULT NULL,
  `CARGO` varchar(25) DEFAULT NULL,
  `GERENTE` int DEFAULT NULL,
  `DATACONTRATACAO` datetime DEFAULT NULL,
  `SALARIO` decimal(10,0) DEFAULT NULL,
  `COMISSAO` decimal(10,0) DEFAULT NULL,
  `DEPTNO` int DEFAULT NULL,
  PRIMARY KEY (`EMPNO`),
  KEY `FK_DEPT` (`DEPTNO`),
  CONSTRAINT `FK_DEPT` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','BALCONISTA',7902,'2014-12-17 00:00:00',3500,NULL,20),(7499,'ALLEN','VENDEDOR',7698,'2020-02-16 00:00:00',5051,300,30),(7521,'WARD','VENDEDOR',7698,'2022-02-15 00:00:00',4251,500,30),(7566,'JONES','GERENTE',7839,'2004-04-16 00:00:00',7600,NULL,20),(7654,'MARTIN','VENDEDOR',7698,'2013-09-28 00:00:00',4250,1400,30),(7698,'BLAKE','GERENTE',7839,'2016-05-01 00:00:00',7850,NULL,30),(7782,'CLARK','GERENTE',7839,'2012-06-09 00:00:00',9450,NULL,10),(7788,'SCOTT','ANALISTA',7566,'2011-12-22 00:00:00',5000,NULL,20),(7839,'Daniel Paiva','PRESIDENTE',NULL,'2010-01-17 00:00:00',25000,NULL,10),(7844,'TURNER','VENDEDOR',7698,'2015-09-08 00:00:00',4500,0,30),(7876,'ADAMS','BALCONISTA',7788,'2013-01-12 00:00:00',1100,NULL,20),(7900,'JAMES','BALCONISTA',7698,'2011-12-01 00:00:00',1950,NULL,30),(7902,'FORD','ANALISTA',7566,'2010-10-01 00:00:00',4800,NULL,20),(7934,'MILLER','BALCONISTA',7782,'2007-01-12 00:00:00',2300,NULL,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 16:48:07