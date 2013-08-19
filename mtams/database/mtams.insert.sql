-- Very basic insert script template
-- Created by Aaron
-- using squirrel sql client 
-- http://squirrel-sql.sourceforge.net/

-- There are multiple insert files, that do small increamental inserts
-- This file combines most of the inserts for the other files
-- mtams.insert.datalookup.sql  just data and lookup tables
-- mtams.insert.app.sql  just the main application

-- It will create a junk application, and all foreign keys requirements satisfied.
-- Section title APPLICATION
-- The data used is the bare minimum required for each feild.
-- This script template works to insert a single entry into most tables. 
-- To satisfy foreign key constraints you may need to change the input values where commments are shown
-- 	/* Not nullable */
-- To simplyfy this proces foreign tables names are added to the comments. 
-- For autogenerated primary keys the inserts have been modifed by removeing the primary key
-- Due to the way autogenerated primary keys work, the squence my not start at 1 if there have been failed insert attempts.

-- ******************************************************
--  DATA AND LOOKUPS
-- ******************************************************

-- The top section of inserts are conisered safe as they do not have any foreign key 
-- constraints
-- The section of inserts OTHER is unsafe and left commented
-- You can uses these inserts as templates for creating your own insert statements.
-- There is a simple application insert script to do just enough initialisation
-- of the system for most simple operations to work. It is also incomplete
-- mtams.insert.app.sql

--role inserts
--pulled down from netbeans so not optimal


INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (11, 'Applicant', DEFAULT);
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (12, 'Authorizer', DEFAULT);
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (21, 'Admin', DEFAULT);
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (22, 'SuperAdmin', DEFAULT);
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (99, 'Deactivated', DEFAULT);
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (911, 'Applicant', 'Deactivated Applicant');
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (912, 'Authorizer', 'Deactivated Authorizer');
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (921, 'Admin', 'Deactivated Admin');
INSERT INTO "ROLE" (IDROLES, "ROLE", DESCRIPTION) 
	VALUES (922, 'SuperAdmin', 'Deactivated SuperAdmin');



-- Position inserts
INSERT INTO "POSITION" (POSITION) VALUES ('Lecturer' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Professor' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Assistant Lecturer' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Tutor' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Secretary' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Head of Department' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Administrator' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Manager' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Pro vice Chancellor' /*not nullable*/);
INSERT INTO "POSITION" (POSITION) VALUES ('Chancellor' /*not nullable*/);

-- Title inserts
-- simple quick inserts
--INSERT INTO "TITLE" (TITLE) VALUES ('s' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Mr' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Mrs' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Miss' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Dr' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Phd' /*not nullable*/);
INSERT INTO "TITLE" (TITLE) VALUES ('Sir' /*not nullable*/);


-- Department inserts
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('school of Information Technology' /*not nullable*/,1);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('school of Arts' /*not nullable*/,2);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('Finance' /*not nullable*/,3);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('Administration' /*not nullable*/,4);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('School of Business' /*not nullable*/,5);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('Student Services' /*not nullable*/,6);
INSERT INTO "DEPARTMENT" (DEPARTMENT,IDDEPARTMENT) VALUES ('School of Health Sciences' /*not nullable*/,7);

INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Annual Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Maternity Leave - Paid' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Paternity Leave - Paid' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Compassionate Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Sick Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Injury on Duty Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Conference Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Consultancy Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Research Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - full pay' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - half pay' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Long Service Leave - double pay' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Leave without pay' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Adoption Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Family Leave' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Outside Studies Program International' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Outside Studies Program Domestic' /*not nullable*/);
INSERT INTO "LEAVELOOKUP" (LEAVETYPE) VALUES ('Other' /*not nullable*/);


-- ******************************************************
--  APPLICATION
-- ******************************************************
--

-- 
 INSERT INTO "ACCOUNT" (USERNAME,PASSWORD,SALT,DATECREATED,DATELOGIN) VALUES ('admin' /*not nullable*/,'admin' /*not nullable*/,'s',current_timestamp,null);
 INSERT INTO "ACCOUNTROLE" (ACCOUNTID,ROLEID) VALUES (1,21);
-- select idaccount from mtams.account where username = 'admin';

-- first no role user. Similar to creating a user through admin.
INSERT INTO "ACCOUNT" (USERNAME,PASSWORD,SALT,DATECREATED,DATELOGIN) 
	VALUES ('s' /*not nullable*/,'s' /*not nullable*/,'s',current_timestamp,null);

INSERT INTO "ACCOUNT" (USERNAME,PASSWORD,SALT,DATECREATED,DATELOGIN) 
	VALUES ('MrT' /*not nullable*/,'mrt' /*not nullable*/,'s',current_timestamp,null);



--INSERT INTO "QUOTES" (AMENDED,COSTCENTER,DESCRIPTION) 	VALUES (0,'s','s');

--INSERT INTO "ACCOMODATIONQUOTES" (DATECHECKIN,DATECHECKOUT,COUNTRY,CITY,DESCRIPTION,ACCOMODATIONPROVIDER,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:20:30.363000'},{ts '2013-05-08 12:20:30.363000'},'s','s','s','s','s','s',1);
--
--INSERT INTO "CARQUOTES" (DATECOLLECT,DATERETURN,PROVIDER,DESCRIPTION,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:21:02.184000'},{ts '2013-05-08 12:21:02.184000'},'s','s','s',1);
--
--
--INSERT INTO "FLIGHTQUOTES" (FLIGHTNUMBER,FLIGHTFROM,FLIGHTTO,DATEDEPARTURE,DATEARRIVAL,QUOTESOURCEDESCRIPTION,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ('s','s','s',{ts '2013-05-08 12:24:17.284000'},{ts '2013-05-08 12:24:17.284000'},'s','s','s',1);


--INSERT INTO "TRAVELERPROFILE" (ACCOUNTID,STAFFID,DEPARTMENT,POSITION,TRAVELBOOKER,FIRSTNAME,FAMILYNAME,MIDDLENAME,TITLE,IDNUMBER,BUSINESSADDRESS,BUSINESSPHONE,BUSINESSFAX,HOMEADDRESS,MOBILEPHONE,HOMEPHONE,HOMEEMAIL,SPOUSENAME,SPOUSECONTACTNUMBER,SPOUSEEMAIL,DOCTORSNAME,DOCTORSCONCTACTNUMBER,DOCTORSEMAIL,KNOWNMEDICALCONDITIONS,CARPREFERENCE1,CARPREFERENCE2,CARGROUP,MANUALAUTOMATIC,AIRCON,CARADDITIONALREQUIREMENTS,HOTELPREFRENCE,FREQUENTGUESTNUM,SMOKING,HOTELADDITIONALREQUIREMENTS,SEATINGPOSITION,SEATINGLOCATION,CLASSDOMESTIC,CLASSINTERNATIONAL,MEALREQUIREMENTS,AIRADDITIONALREQUIREMENTS,ATTACHMENTID,DATECREATED,DATEMODIFIED)	VALUES (1 /*not nullable*/,'s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s','s',{ts '2013-05-08 11:46:31.770000'},{ts '2013-05-08 11:46:31.770000'});


--INSERT INTO "TRAVELERPROFILE" (ACCOUNTID,STAFFID,DEPARTMENT,POSITION,TRAVELBOOKER,FIRSTNAME,FAMILYNAME,MIDDLENAME,TITLE,IDNUMBER,BUSINESSADDRESS,BUSINESSPHONE,BUSINESSFAX,HOMEADDRESS,MOBILEPHONE,HOMEPHONE,HOMEEMAIL,SPOUSENAME,SPOUSECONTACTNUMBER,SPOUSEEMAIL,DOCTORSNAME,DOCTORSCONCTACTNUMBER,DOCTORSEMAIL,KNOWNMEDICALCONDITIONS,CARPREFERENCE1,CARPREFERENCE2,CARGROUP,MANUALAUTOMATIC,AIRCON,CARADDITIONALREQUIREMENTS,HOTELPREFRENCE,FREQUENTGUESTNUM,SMOKING,HOTELADDITIONALREQUIREMENTS,SEATINGPOSITION,SEATINGLOCATION,CLASSDOMESTIC,CLASSINTERNATIONAL,MEALREQUIREMENTS,AIRADDITIONALREQUIREMENTS,ATTACHMENTID,DATECREATED,DATEMODIFIED) 
--    VALUES (2,'12345678','Financial','Lecturer','booker','Mrt','barackus','BA','Mr.','1234567890123','16 Somewhere','1234567890','1234567890','17 Nowhere','1234567890','1234567890','mrt@team.com','mrsT','1234567890','mrst@team.com','murdoc','1234567890','murdoc@team.com','fear of flying','fastcars','slowcars','fast','Manual','Yes','must be a van','ground floor','223344556','No','TV','Aisle','Middle','First','First','beef','lots of beef',null,{ts '2013-05-08 11:46:31'},{ts '2013-05-08 11:46:31'});
--INSERT INTO REWARDSPROGRAM (DESCRIPTION,MEMBERSHIPTYPE,PROVIDER,MEMBERSHIPNUMBER,TRAVELERPROFILE_IDTRAVELERPROFILE) 
--    VALUES ('nofoolsallowed','bus service','goldmember','1234567890',1);
--INSERT INTO TRAVELDOCUMENT (PASSPORTNUMBER,COUNTRY,DATEOFISSUE,EXPIRYDATE,VALIDVISA,TRAVLERPROFILE_IDTRAVLERPROFILE) 
--    VALUES ('0123456789','South Africa',{ts '2013-05-08 11:46:31'},{ts '2017-05-08 11:46:31'},'every where',1);

--INSERT INTO "FOREXORDER" (DATEOFREQUIRED,DATEWILLBECONFIRMED,TICKETNUM,VOYAGERNUM,DATEOFDEPART,DATEOFRETURN,TRAVELERSCHEQUES,CASH,CASHPASSPORT,CCTYPE,CCNUMBER,CCLAST3,CCEXPIRYDATE,CCPAYMENTAMOUNT,REASONFORTRAVEL) 	VALUES ({ts '2013-05-08 11:54:01.749000'},{ts '2013-05-08 11:54:01.749000'},'s','s',{ts '2013-05-08 11:54:01.749000'},{ts '2013-05-08 11:54:01.749000'},'s','s','s','s','s','s',{ts '2013-05-08 11:54:01.749000'},'s','s');

-- INSERT INTO "MOTIVATION" (SUPPLIER,AMOUNT,COSTCENTER,MOTIVATION,BUDGET,RECOMMENDED,REQUESTEDBY) 	VALUES ('s','s','s','s',0,'s','s');


--INSERT INTO "FINALCOSTING" (NAME,ADMINISTRATIVEUNIT,ABSENCEBUSSINESS,ABSENCEPRIVATE,COUNTRIES,CITYS,CHECKS,AIRFAREBUDGET,AIRFARECOST,CARRENTALBUDGET,CARRENTALCOST,ACCOMMODATIONBUDGET,ACCOMMODATIONCOST,ACCOMMODATEDAYS,PERDIEMBUDGET,PERDIEMCOST,PERDIEMDAYS,CONFERENCEBUDGET,CONFERENCECOST,VISABUDGET,VISACOST,OTHERBUDGET,OTHERCOST,OTHERDISCRIPTION,APPROVEDBUDGET,APPROVEDCOST,QUOTES_IDQUOTES,FROMOZ,OZNAME,OZTEL,OZEMAIL) 	VALUES ('s','s',0,0,'s','s',0,0,0,0,0,0,0,0 /*not nullable*/,0,0,0 /*not nullable*/,0,0,0,0,0,0,'s',0,0,1 /*not nullable Quotes*/,0,'s','s','s');


-- INSERT INTO "CONFERENCE" (CONFERENCENAME,WEBPAGE,COUNTRY,CITY,PRESENTING,PRESENTATIONTITLE,AUTHORS,OTHERREASONATTENDANCE,DATEMSAPRESENTATION,CONFERENCEDURATION,DATEFROM,DATETO,REPLACEMENT,REPLACEMENTARRANGMENTS,FUNDINGSOURCES,OTHERFUNDINGSOURCES,FUNDNAME) VALUES ('s','s','s','s',0,'s','s','s',{ts '2013-05-08 12:10:09.414000'},0,{ts '2013-05-08 12:10:09.414000'},{ts '2013-05-08 12:10:09.414000'},'s','s','Other','Test','Fundname');


--INSERT INTO "TRAVEL" (DATEDEPARTURE,DATERETURN,DESCRIPTION,CONFERENCE_IDCONFERENCE) 	VALUES ({ts '2013-05-08 12:03:50.834000'},{ts '2013-05-08 12:03:50.834000'},'s',1 /*not nullable*/);

--INSERT INTO "ITINERARY" (DATE,DATEFROM,DATETO,LEAVETYPE,LEAVEDESCRIPTION,TRAVELDAY,TRAVEL_IDTRAVEL,DESTINATION) 
--	VALUES ({ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},'s','s','s',1,'s');
--INSERT INTO TRAVEL (DATEDEPARTURE,DATERETURN,DESCRIPTION,CONFERENCE_IDCONFERENCE) 
--	VALUES ({ts '2013-06-13 12:03:50'},{ts '2013-06-21 12:03:50'},'I don''t like flying',1);
--INSERT INTO TRAVEL (DATEDEPARTURE,DATERETURN,DESCRIPTION,CONFERENCE_IDCONFERENCE) 
--	VALUES ({ts '2014-06-13 12:03:50'},{ts '2014-06-21 12:03:50'},'I don''t like flying',1);
--INSERT INTO ITINERARY (DATE,DATEFROM,DATETO,LEAVETYPE,LEAVEDESCRIPTION,TRAVELDAY,TRAVEL_IDTRAVEL,DESTINATION) 
--	VALUES ({ts '2013-06-13 12:24:23'},{ts '2014-05-21 12:24:23'},{ts '2014-05-08 12:24:23'},'other','s','travel',2,'Paris');

--INSERT INTO "APPLICATION" (DESCRIPTION,TRAVELERPROFILE_IDTRAVELERPROFILE,QUOTES_IDQUOTES,FINALCOSTING_IDFINALCOSTING,TRAVEL_IDTRAVEL,ACCOUNT_IDACCOUNT,FOREXORDER_IDFOREXORDER,MOTIVATION_IDMOTIVATION,DATEMODIFIED) 	VALUES ('s',1 /*not nullable Travelerprofile*/,1 /*not nullable Quotes*/,1 /*not nullable Finalcostin*/,1 /*not nullable Travel*/,1 /*not nullable Account*/,1 /*not nullable Forex*/,1 /*not nullable Motivation*/,{ts '2013-05-08 11:44:59.528000'});

--INSERT INTO "APPROVAL" (FROMSECTION,SECTIONID,SECTIONAPPROVED,NOTES,DATE,APPLICATION_IDAPPLICATION,ACCOUNT_IDACCOUNT) 	VALUES ('s',0,0,'s',current_timestamp,1 /*not nullable*/,2 /*not nullable*/);


-- ******************************************************
--  OTHER
-- ******************************************************


--INSERT INTO "TASK" (IDTASKS,TASK,DESCRIPTION) VALUES (1 /*not nullable*/,'s','s');
--
--INSERT INTO "PERMISSION" (PERMISSION,DESCRIPTION,CREATEPERM,DELETEPERM,UPDATEPERM,READPERM,GRANTPERM,TASKS_IDTASKS,ROLES_IDROLES) 
--	VALUES ('s','s',0,0,0,0,0,0 /*not nullable*/,0 /*not nullable*/);
--
--
--INSERT INTO "APPROVAL" (FROMSECTION,SECTIONID,SECTIONAPPROVED,NOTES,DATE,APPLICATION_IDAPPLICATION,ACCOUNT_IDACCOUNT) 
--	VALUES ('s',0,0,'s',{ts '2013-05-08 12:20:42.839000'},0 /*not nullable*/,0 /*not nullable*/);
--
--
--INSERT INTO "ATTACHEMENT" (DESCRIPTION,DOCUMENTLOCATION,CONFERENCE_IDCONFERENCE,ITINERARY_IDITINERARY,APPROVAL_IDAPPROVAL,APPLICATION_IDAPPLICATION,TRAVEL_IDTRAVEL,FINALCOSTING_IDFINALCOSTING,CARQUOTES_IDCARQUOTES,QUOTES_IDQUOTES,ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES,FLIGHTQUOTES_IDFLIGHTQUOTES,TRAVELDOCUMENT_IDTRAVELDOCUMENTS,TRAVELERPROFILE_IDTRAVELERPROFILE,REWARDSPROGRAM_IDREWARDSPROGRAM,FOREXORDER_IDFOREXORDER,MOTIVATION_IDMOTIVATION) 
--	VALUES ('s','s',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
--
--INSERT INTO "ACCOMODATIONQUOTES" (DATECHECKIN,DATECHECKOUT,COUNTRY,CITY,DESCRIPTION,ACCOMODATIONPROVIDER,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:20:30.363000'},{ts '2013-05-08 12:20:30.363000'},'s','s','s','s','s','s',0 /*not nullable*/);
--
--INSERT INTO "CARQUOTES" (DATECOLLECT,DATERETURN,PROVIDER,DESCRIPTION,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ({ts '2013-05-08 12:21:02.184000'},{ts '2013-05-08 12:21:02.184000'},'s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "FLIGHTQUOTES" (FLIGHTNUMBER,FLIGHTFROM,FLIGHTTO,DATEDEPARTURE,DATEARRIVAL,QUOTESOURCEDESCRIPTION,QUOTESOURCE,QUOTECOST,QUOTES_IDQUOTES) 
--	VALUES ('s','s','s',{ts '2013-05-08 12:24:17.284000'},{ts '2013-05-08 12:24:17.284000'},'s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "ITINERARY" (DATE,DATEFROM,DATETO,LEAVETYPE,LEAVEDESCRIPTION,TRAVELDAY,TRAVEL_IDTRAVEL,DESTINATION) 
--	VALUES ({ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},{ts '2013-05-08 12:24:23.370000'},'s','s','s',0 /*not nullable*/,'s');
--
--
--INSERT INTO "REWARDSPROGRAM" (DESCRIPTION,MEMBERSHIPTYPE,PROVIDER,MEMBERSHIPNUMBER,TRAVELERPROFILE_IDTRAVELERPROFILE) 
--      VALUES ('s','s','s','s',0 /*not nullable*/);
--
--
--INSERT INTO "SESSION" (ACCOUNTID,DATE,EXPIRES) VALUES (0 /*not nullable*/,{ts '2013-05-08 12:24:59.450000'},{ts '2013-05-08 12:24:59.450000'});
--INSERT INTO "TRAVELDOCUMENT" (PASSPORTNUMBER,COUNTRY,DATEOFISSUE,EXPIRYDATE,VALIDVISA,TRAVLERPROFILE_IDTRAVLERPROFILE) 
--	VALUES ('s','s',{ts '2013-05-08 12:25:22.150000'},{ts '2013-05-08 12:25:22.150000'},'s',0 /*not nullable*/);

