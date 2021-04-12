CREATE DATABASE  IF NOT EXISTS `zoo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zoo`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: zoo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `idanimals` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `age` int DEFAULT '0',
  `art` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nutrition` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `area` varchar(90) DEFAULT NULL,
  `idstaff` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idanimals`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (3,'Mona',12,'Cat','white',2,'female','carnivore','20 cm','1','1'),(4,'Edgar',5,'Wild boar','brown',170,'male','omnivore','1.4 m','3','3'),(5,'Shir Khan',8,'Tiger','orange, white, black',210,'male','carnivore','1.2 m','4','4'),(7,'Kvina',3,'Wolf','white',55,'female','carnivore','66 cm','6','6'),(9,'Azul',12,'Peacock','green, blue',4,'male','omivore','53 cm','4','4'),(11,'Pauline',7,'Goat','white, beige',88,'female','herbivore','58 cm','4','4'),(12,'Lila',3,'Pig ','whie',160,'female','omnivore','1.1 m','5','5'),(13,'Frankie',6,'Kangaroo','brown',66,'male','herbivore','2.1 m','2','2'),(16,'Winona',1,'Otter','brown',7,'female','carnivore','51 cm','7','7'),(17,'Kahari',7,'Giraffe','light brown',800,'male','herbivore','6 m','5','5'),(18,'Marlia',5,'Red Fox','red, white, black',6.5,'female','carnivore','42 cm','4','4'),(19,'Nalu',9,'Grizzly Bear','brown',470,'female','carnivore','2.3 m','6','6'),(20,'Brooke',12,'Nile Crocodile','green',1000,'male','carnivore','6.6 m','3','3'),(21,'Nicky',3,'Llama','brown',130,'female','herbivore','1.7 m','4','4'),(22,'Levi',4,'Fox','Red',122,'male','herbivore','0.29','2','3');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoo_areas`
--

DROP TABLE IF EXISTS `zoo_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoo_areas` (
  `idarea` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `area` int NOT NULL,
  `number_of_animals` int NOT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoo_areas`
--

LOCK TABLES `zoo_areas` WRITE;
/*!40000 ALTER TABLE `zoo_areas` DISABLE KEYS */;
INSERT INTO `zoo_areas` VALUES (1,'Africa Wing',10330,178),(2,'Tropical Forest',5750,52),(3,'Sahara',9780,65),(4,'Domestic Animals Habitat',1020,196),(5,'Australia',8647,113),(6,'Artic Wing',2256,32);
/*!40000 ALTER TABLE `zoo_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoo_staff`
--

DROP TABLE IF EXISTS `zoo_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoo_staff` (
  `idstaff` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `job` varchar(100) NOT NULL,
  `zoo_area` varchar(90) NOT NULL,
  `age` varchar(45) NOT NULL,
  `employee_since` date DEFAULT NULL,
  PRIMARY KEY (`idstaff`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoo_staff`
--

LOCK TABLES `zoo_staff` WRITE;
/*!40000 ALTER TABLE `zoo_staff` DISABLE KEYS */;
INSERT INTO `zoo_staff` VALUES (1,'Adriana Alec','animal caretaker','Africa Wing','19','2019-01-01'),(2,'Rachman Blake','animal caretaker','Tropical Forest','35','2006-03-04'),(3,'Shawn Darwin','animal caretaker','Sahara','44','1997-12-19'),(4,'Viola Morten','animal caretaker','Domestic Animals Habitat','52','2015-08-10'),(5,'Marliah Wolf','vet','Animal Hospital','31','2002-09-06'),(6,'Ross Johnson ','vet','Animal Hospital','20','2011-02-22'),(7,'Liv Maddie ','chief animal caretaker ','Australia','42','2014-05-31'),(8,'Dana di Bendetto','head of caretaking department','Headquarters','38','2010-04-15'),(9,'Riven Rousey','animal caretaker','Arctic Wing','25','2018-06-01'),(10,'Anita Clove ','animal caretaker','European Forests','27','2020-03-17'),(13,'Lou','vet','Animal Hospital','28','2020-12-17');
/*!40000 ALTER TABLE `zoo_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 14:25:53
