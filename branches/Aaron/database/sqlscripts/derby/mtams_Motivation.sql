-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "MOTIVATION"
--

-- DROP TABLE  "MOTIVATION";
CREATE TABLE "MOTIVATION" (
  "IDMOTIVATION" INT NOT NULL,
  "SUPPLIER" VARCHAR(45) DEFAULT NULL,
  "AMOUNT" VARCHAR(45) DEFAULT NULL,
  "COSTCENTER" VARCHAR(45) DEFAULT NULL,
  "MOTIVATION" VARCHAR(255) DEFAULT NULL,
  "BUDGET" INT DEFAULT NULL,
  "RECOMMENDED" VARCHAR(45) DEFAULT NULL,
  "REQUESTEDBY" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDMOTIVATION")
);

--
-- DUMPING DATA FOR TABLE "MOTIVATION"
--
-- ORDER BY:  "IDMOTIVATION"

-- LOCK TABLE "MOTIVATION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03