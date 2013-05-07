CREATE DATABASE  IF NOT EXISTS `mtams` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mtams`;
-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mtams
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `FlightQuotes`
--

DROP TABLE IF EXISTS `FlightQuotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FlightQuotes` (
  `idFlightQuotes` int(11) NOT NULL,
  `FlightNumber` varchar(45) DEFAULT NULL,
  `FlightFrom` varchar(45) DEFAULT NULL,
  `FlightTo` varchar(45) DEFAULT NULL,
  `DateDeparture` timestamp NULL DEFAULT NULL,
  `DateArrival` timestamp NULL DEFAULT NULL,
  `QuoteSourceDiscription` varchar(45) DEFAULT NULL,
  `QuoteSource` varchar(45) DEFAULT NULL,
  `QuoteCost` varchar(45) DEFAULT NULL,
  `Quotes_idQuotes` int(11) NOT NULL,
  PRIMARY KEY (`idFlightQuotes`),
  KEY `fk_FlightQuotes_Quotes1` (`Quotes_idQuotes`),
  CONSTRAINT `fk_FlightQuotes_Quotes1` FOREIGN KEY (`Quotes_idQuotes`) REFERENCES `Quotes` (`idQuotes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlightQuotes`
--
-- ORDER BY:  `idFlightQuotes`

LOCK TABLES `FlightQuotes` WRITE;
/*!40000 ALTER TABLE `FlightQuotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FlightQuotes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-26 19:33:03