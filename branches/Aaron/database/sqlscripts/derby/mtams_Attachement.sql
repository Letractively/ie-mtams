-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ATTACHEMENT"
--

-- DROP TABLE  "ATTACHEMENT";
CREATE TABLE "ATTACHEMENT" (
  "IDATTACHEMENT" INT NOT NULL,
  "DISCRIPTION" VARCHAR(45) DEFAULT NULL,
  "DOCUMENTLOCATION" VARCHAR(45) DEFAULT NULL,
  "CONFERENCE_IDCONFERENCE" INT DEFAULT NULL,
  "ITINERARY_IDITINERARY" INT DEFAULT NULL,
  "APPROVAL_IDAPPROVAL" INT DEFAULT NULL,
  "APPLICATION_IDAPPLICATION" INT DEFAULT NULL,
  "TRAVEL_IDTRAVEL" INT DEFAULT NULL,
  "FINALCOSTING_IDFINALCOSTING" INT DEFAULT NULL,
  "CARQUOTES_IDCARQUOTES" INT DEFAULT NULL,
  "QUOTES_IDQUOTES" INT DEFAULT NULL,
  "ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES" INT DEFAULT NULL,
  "FLIGHTQUOTES_IDFLIGHTQUOTES" INT DEFAULT NULL,
  "TRAVELDOCUMENT_IDTRAVELDOCUMENTS" INT DEFAULT NULL,
  "TRAVELERPROFILE_IDTRAVELERPROFILE" INT DEFAULT NULL,
  "REWARDSPROGRAM_IDREWARDSPROGRAM" INT DEFAULT NULL,
  "FOREXORDER_IDFOREXORDER" INT DEFAULT NULL,
  "MOTIVATION_IDMOTIVATION" INT DEFAULT NULL,
  PRIMARY KEY ("IDATTACHEMENT"),
  CONSTRAINT "FK_ATTACHEMENT_CONFERENCE1" FOREIGN KEY ("CONFERENCE_IDCONFERENCE") REFERENCES "CONFERENCE" ("IDCONFERENCE") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_ITINERARY1" FOREIGN KEY ("ITINERARY_IDITINERARY") REFERENCES "ITINERARY" ("IDITINERARY") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_APPROVAL1" FOREIGN KEY ("APPROVAL_IDAPPROVAL") REFERENCES "APPROVAL" ("IDAPPROVAL") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_APPLICATION1" FOREIGN KEY ("APPLICATION_IDAPPLICATION") REFERENCES "APPLICATION" ("IDAPPLICATION") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVEL1" FOREIGN KEY ("TRAVEL_IDTRAVEL") REFERENCES "TRAVEL" ("IDTRAVEL") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FINALCOSTING1" FOREIGN KEY ("FINALCOSTING_IDFINALCOSTING") REFERENCES "FINALCOSTING" ("IDFINALCOSTING") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_CARQUOTES1" FOREIGN KEY ("CARQUOTES_IDCARQUOTES") REFERENCES "CARQUOTES" ("IDCARQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_ACCOMODATIONQUOTES1" FOREIGN KEY ("ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES") REFERENCES "ACCOMODATIONQUOTES" ("IDACCOMODATIONQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FLIGHTQUOTES1" FOREIGN KEY ("FLIGHTQUOTES_IDFLIGHTQUOTES") REFERENCES "FLIGHTQUOTES" ("IDFLIGHTQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVELDOCUMENT1" FOREIGN KEY ("TRAVELDOCUMENT_IDTRAVELDOCUMENTS") REFERENCES "TRAVELDOCUMENT" ("IDTRAVELDOCUMENTS") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVELERPROFILE1" FOREIGN KEY ("TRAVELERPROFILE_IDTRAVELERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_REWARDSPROGRAM1" FOREIGN KEY ("REWARDSPROGRAM_IDREWARDSPROGRAM") REFERENCES "REWARDSPROGRAM" ("IDREWARDSPROGRAM") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FOREXORDER1" FOREIGN KEY ("FOREXORDER_IDFOREXORDER") REFERENCES "FOREXORDER" ("IDFOREXORDER") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_MOTIVATION1" FOREIGN KEY ("MOTIVATION_IDMOTIVATION") REFERENCES "MOTIVATION" ("IDMOTIVATION") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ATTACHEMENT"
--
-- ORDER BY:  "IDATTACHEMENT"

-- LOCK TABLE "ATTACHEMENT" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02