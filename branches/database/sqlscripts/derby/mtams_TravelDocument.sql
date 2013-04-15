-- CREATE SCHEMA "mtams" ;
-- SET SCHEMA  "mtams";
-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mtams
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2


--
-- Table structure for table "TravelDocument"
--

-- DROP TABLE IF EXISTS "TravelDocument";
CREATE TABLE "TravelDocument" (
  "idTravelDocuments" int NOT NULL,
  "PassportNumber" varchar(12) DEFAULT NULL,
  "Country" varchar(45) DEFAULT NULL,
  "DateOfIssue" timestamp  DEFAULT NULL,
  "ExpiryDate" timestamp  DEFAULT NULL,
  "ValidVisa" varchar(45) DEFAULT NULL,
  "TravlerProfile_idTravlerProfile" int NOT NULL,
  PRIMARY KEY ("idTravelDocuments"),
  CONSTRAINT "fk_TravelDocuments_TravelerProfile1" FOREIGN KEY ("TravlerProfile_idTravlerProfile") REFERENCES "TravelerProfile" ("idTravelerProfile") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Dumping data for table "TravelDocument"
--
-- ORDER BY:  "idTravelDocuments"

LOCK TABLE "TravelDocument" IN EXCLUSIVE MODE;


-- Dump completed on 2013-04-15 22:28:43
