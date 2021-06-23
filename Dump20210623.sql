-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: Catalog
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cpu_catalogue`
--

DROP TABLE IF EXISTS `cpu_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu_catalogue` (
  `idcpu_catalogue` int NOT NULL AUTO_INCREMENT,
  `cpu` varchar(45) DEFAULT NULL,
  `cpu_price` double NOT NULL,
  PRIMARY KEY (`idcpu_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu_catalogue`
--

LOCK TABLES `cpu_catalogue` WRITE;
/*!40000 ALTER TABLE `cpu_catalogue` DISABLE KEYS */;
INSERT INTO `cpu_catalogue` VALUES (1,'i3',150.8),(2,'i5',240.3),(3,'i7',600.6),(4,'i9',2000),(5,'pentium',70);
/*!40000 ALTER TABLE `cpu_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpu_catalogue`
--

DROP TABLE IF EXISTS `gpu_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu_catalogue` (
  `idgpu_catalogue` int NOT NULL AUTO_INCREMENT,
  `gpu` varchar(45) DEFAULT NULL,
  `gpu_price` double NOT NULL,
  PRIMARY KEY (`idgpu_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu_catalogue`
--

LOCK TABLES `gpu_catalogue` WRITE;
/*!40000 ALTER TABLE `gpu_catalogue` DISABLE KEYS */;
INSERT INTO `gpu_catalogue` VALUES (1,'GTX 1050 ti',400.99),(2,'GTX 2080',2000.99),(3,'GT 730',130),(4,'GT 740',100);
/*!40000 ALTER TABLE `gpu_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hdd_catalogue`
--

DROP TABLE IF EXISTS `hdd_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hdd_catalogue` (
  `idnew_table` int NOT NULL AUTO_INCREMENT,
  `hdd` varchar(45) DEFAULT NULL,
  `hdd_price` double NOT NULL,
  PRIMARY KEY (`idnew_table`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hdd_catalogue`
--

LOCK TABLES `hdd_catalogue` WRITE;
/*!40000 ALTER TABLE `hdd_catalogue` DISABLE KEYS */;
INSERT INTO `hdd_catalogue` VALUES (1,'1TB 7200rpm 3.5inch',78),(2,'2TB 7200rpm 3.5inch',121),(3,'4TB 7200rpm 3.5inch',339),(4,'2TB Seagate',150);
/*!40000 ALTER TABLE `hdd_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobo_catalogue`
--

DROP TABLE IF EXISTS `mobo_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobo_catalogue` (
  `idmobo_catalogue` int NOT NULL AUTO_INCREMENT,
  `mobo` varchar(45) DEFAULT NULL,
  `mobo_price` double NOT NULL,
  PRIMARY KEY (`idmobo_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobo_catalogue`
--

LOCK TABLES `mobo_catalogue` WRITE;
/*!40000 ALTER TABLE `mobo_catalogue` DISABLE KEYS */;
INSERT INTO `mobo_catalogue` VALUES (1,'MSI H310M PRO-M2 PLUS',115),(2,'ASRock Z590M Pro4',359),(3,'Gigabyte Z490 VISION D',609);
/*!40000 ALTER TABLE `mobo_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psu_catalogue`
--

DROP TABLE IF EXISTS `psu_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psu_catalogue` (
  `idpsu_catalogue` int NOT NULL AUTO_INCREMENT,
  `psu` varchar(45) DEFAULT NULL,
  `psu_price` double NOT NULL,
  `effeciency` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpsu_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psu_catalogue`
--

LOCK TABLES `psu_catalogue` WRITE;
/*!40000 ALTER TABLE `psu_catalogue` DISABLE KEYS */;
INSERT INTO `psu_catalogue` VALUES (1,'ASUS TUF Gaming 550W',180,'80 Plus Bronze'),(2,'DeepCool DN450 450W',78,'80 Plus'),(3,'Super Flower Leadex III 650W',209,'80 Plus Gold');
/*!40000 ALTER TABLE `psu_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram_catalogue`
--

DROP TABLE IF EXISTS `ram_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram_catalogue` (
  `idram_catalogue` int NOT NULL AUTO_INCREMENT,
  `ram` varchar(45) DEFAULT NULL,
  `ram_price` double NOT NULL,
  PRIMARY KEY (`idram_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram_catalogue`
--

LOCK TABLES `ram_catalogue` WRITE;
/*!40000 ALTER TABLE `ram_catalogue` DISABLE KEYS */;
INSERT INTO `ram_catalogue` VALUES (1,'8GB DDR4 2666MHz',89),(2,'8GB DDR4 3200MHz',99),(3,'16GB (2x8GB) DDR4 3200MHz',170);
/*!40000 ALTER TABLE `ram_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssd_catalogue`
--

DROP TABLE IF EXISTS `ssd_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ssd_catalogue` (
  `idssd_catalogue` int NOT NULL AUTO_INCREMENT,
  `ssd` varchar(45) DEFAULT NULL,
  `ssd_price` double NOT NULL,
  PRIMARY KEY (`idssd_catalogue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssd_catalogue`
--

LOCK TABLES `ssd_catalogue` WRITE;
/*!40000 ALTER TABLE `ssd_catalogue` DISABLE KEYS */;
INSERT INTO `ssd_catalogue` VALUES (1,'250GB WD M.2 SATA',75),(2,'250GB Samsung PCIe 3.0 NVMe',105),(3,'500GB Crucial P2 M.2 NVMe',169);
/*!40000 ALTER TABLE `ssd_catalogue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 10:26:43
