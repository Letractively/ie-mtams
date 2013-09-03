-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ACCOUNTROLE"
--

-- DROP TABLE  "ACCOUNTROLE";
CREATE TABLE "ACCOUNTROLE" (
  "IDUSERROLES" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ACCOUNTID" INT DEFAULT NULL,
  "ROLEID" INT DEFAULT NULL,
  PRIMARY KEY ("IDUSERROLES"),
  CONSTRAINT "FK_USERROLES_1" FOREIGN KEY ("ROLEID") REFERENCES "ROLE" ("IDROLES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_USERROLES_2" FOREIGN KEY ("ACCOUNTID") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ACCOUNTROLE"
--
-- ORDER BY:  "IDUSERROLES"

-- LOCK TABLE "ACCOUNTROLE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03