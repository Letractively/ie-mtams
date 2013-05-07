-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "FOREXORDER"
--

-- DROP TABLE  "FOREXORDER";
CREATE TABLE "FOREXORDER" (
  "IDFOREXORDER" INT NOT NULL,
  "DATEOFDELIVERY" TIMESTAMP  DEFAULT NULL,
  "CURRENCY" VARCHAR(45) DEFAULT NULL,
  "TRAVELERSCHEQUES" VARCHAR(45) DEFAULT NULL,
  "CASH" VARCHAR(45) DEFAULT NULL,
  "CASHPASSPORT" VARCHAR(45) DEFAULT NULL,
  "CCTYPE" VARCHAR(45) DEFAULT NULL,
  "CCNUMBER" VARCHAR(45) DEFAULT NULL,
  "CCEXPIRYDATE" TIMESTAMP  DEFAULT NULL,
  "CCPAYMENTAMOUNT" VARCHAR(45) DEFAULT NULL,
  "FLIGHTNUMBER" VARCHAR(45) DEFAULT NULL,
  "COMPANYNAME" VARCHAR(45) DEFAULT NULL,
  "COMPANYREGISTRATION" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDFOREXORDER")
);

--
-- DUMPING DATA FOR TABLE "FOREXORDER"
--
-- ORDER BY:  "IDFOREXORDER"

-- LOCK TABLE "FOREXORDER" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03