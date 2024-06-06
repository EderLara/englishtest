CREATE DATABASE  IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `quiz`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quiz
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `idcategory` varchar(1) NOT NULL,
  `NomCateg` varchar(45) NOT NULL,
  `DesCateg` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('A','CONVERSACIÓN','“Personal Information”. (ABOUT ME)'),('B','AVISOS','“Public Signs” (PLACES)'),('C','ACOPLAMIENTO ','“WH- Questions” '),('D','DESCRIPCIONES','“Common Expressions” (SENTENCES)'),('E','COMPLETAR UN TEXTO ','“Fill-in the blank” (EVERYDAY LIFE)'),('F','COMPRENSIÓN DE LECTURA ','“Yes/no questions” (BASIC READING)');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detaquiz`
--

DROP TABLE IF EXISTS `detaquiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detaquiz` (
  `idquiz` int(11) NOT NULL AUTO_INCREMENT,
  `idEstudiante` varchar(20) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `FechQuiz` date NOT NULL,
  `Respuesta` varchar(45) NOT NULL,
  `Audit` datetime NOT NULL,
  PRIMARY KEY (`idquiz`,`idEstudiante`,`idQuestion`),
  KEY `fk_DetaQuiz_student1_idx` (`idEstudiante`),
  KEY `fk_DetaQuiz_Question1_idx` (`idQuestion`),
  CONSTRAINT `fk_DetaQuiz_Question1` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`idQuestion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_DetaQuiz_student1` FOREIGN KEY (`idEstudiante`) REFERENCES `student` (`idEstudiante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detaquiz`
--

LOCK TABLES `detaquiz` WRITE;
/*!40000 ALTER TABLE `detaquiz` DISABLE KEYS */;
INSERT INTO `detaquiz` VALUES (1,'1111',13,'2017-10-13','b','2017-10-13 16:27:50'),(2,'1000099222',19,'2017-10-13','b','2017-10-13 08:37:25'),(2,'1111',40,'2017-10-13','a','2017-10-13 16:27:53'),(3,'1111',22,'2017-10-13','b','2017-10-13 16:27:55'),(4,'1000099222',26,'2017-10-13','c','2017-10-13 08:37:52'),(4,'1111',14,'2017-10-13','b','2017-10-13 16:27:58'),(5,'1001010939',27,'2017-10-13','c','2017-10-13 08:38:19'),(5,'1111',25,'2017-10-13','b','2017-10-13 16:28:02'),(6,'1007350833',27,'2017-10-13','c','2017-10-13 08:38:34'),(6,'1111',21,'2017-10-13','c','2017-10-13 16:28:05'),(7,'1111',34,'2017-10-13','b','2017-10-13 16:28:15'),(8,'1111',1,'2017-10-13','b','2017-10-13 16:28:17'),(9,'1001233082',23,'2017-10-13','b','2017-10-13 08:39:46'),(9,'1111',12,'2017-10-13','b','2017-10-13 16:28:20'),(10,'1007227098',28,'2017-10-13','a','2017-10-13 08:39:49'),(10,'1111',19,'2017-10-13','b','2017-10-13 16:28:27'),(11,'1001025819',11,'2017-10-13','b','2017-10-13 08:39:49'),(11,'1111',7,'2017-10-13','c','2017-10-13 16:28:31'),(12,'1001233082'