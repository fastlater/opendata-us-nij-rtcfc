/*
+----------------------------------------------------------+
|                                                          |
| This script was produced by the OpenDataForge SQL Script |
| Generator.                                               |
|                                                          |
| For more information on our products or services visit   |
| http://www.mtna.us.                                      |
|                                                          |
+----------------------------------------------------------+
*/

/*DROP SCHEMA NIJ_CFS_PORTLAND CASCADE ;*/

CREATE SCHEMA NIJ_CFS_PORTLAND ;

SET SCHEMA NIJ_CFS_PORTLAND;

DROP TABLE IF EXISTS NIJ_CFS_PORTLAND_category;

CREATE TABLE NIJ_CFS_PORTLAND_category (
"code" CHARACTER(19),
"value" CHARACTER(255),
PRIMARY KEY (code)
);
INSERT INTO NIJ_CFS_PORTLAND_category VALUES ('STC', 'STREET CRIMES');
INSERT INTO NIJ_CFS_PORTLAND_category VALUES ('OTH', 'OTHER');
INSERT INTO NIJ_CFS_PORTLAND_category VALUES ('MVT', 'MOTOR VEHICLE THEFT');
INSERT INTO NIJ_CFS_PORTLAND_category VALUES ('BUR', 'BURGLARY');

DROP TABLE IF EXISTS NIJ_CFS_PORTLAND_call_group;

CREATE TABLE NIJ_CFS_PORTLAND_call_group (
"code" CHARACTER(18),
"value" CHARACTER(255),
PRIMARY KEY (code)
);
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('DISORDER', 'DISORDER');
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('PERSON CRIME', 'PERSON CRIME');
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('SUSPICIOUS', 'SUSPICIOUS');
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('NON CRIMINAL/ADMIN', 'NON CRIMINAL/ADMIN');
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('PROPERTY CRIME', 'PROPERTY CRIME');
INSERT INTO NIJ_CFS_PORTLAND_call_group VALUES ('TRAFFIC', 'TRAFFIC');

DROP TABLE IF EXISTS NIJ_CFS_PORTLAND_final_case_type;

CREATE TABLE NIJ_CFS_PORTLAND_final_case_type (
"code" CHARACTER(6),
"value" CHARACTER(255),
PRIMARY KEY (code)
);
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('DISTP', 'DISTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('DISTW', 'DISTW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VICE', 'VICE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ASSLTP', 'ASSLTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ASSLTW', 'ASSLTW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ROBP', 'ROBP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ROBW', 'ROBW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SHOOTW', 'SHOOTW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SHOTS', 'SHOTS');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('STABW', 'STABW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THRETP', 'THRETP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THRETW', 'THRETW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('GANG', 'GANG');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('AREACK', 'AREACK');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('PREMCK', 'PREMCK');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SUSP', 'SUSP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SUSPP', 'SUSPP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SUSPW', 'SUSPW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ANIML', 'ANIML');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ANIMLP', 'ANIMLP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('BOMBTH', 'BOMBTH');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('DIST', 'DIST');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ESCAPE', 'ESCAPE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FWB', 'FWB');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FWH', 'FWH');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FWI', 'FWI');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('CHEM', 'CHEM');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FWN', 'FWN');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('NOISE', 'NOISE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('PARK', 'PARK');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('PARTY', 'PARTY');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('POLINV', 'POLINV');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SCHL', 'SCHL');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SCHLP', 'SCHLP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SCHLW', 'SCHLW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THRET', 'THRET');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TMET', 'TMET');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TMETP', 'TMETP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TMETW', 'TMETW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TRASH', 'TRASH');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TRASHP', 'TRASHP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('UNWNT', 'UNWNT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FPURS', 'FPURS');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('UNWNTW', 'UNWNTW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('W26', 'W26');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('77', '77');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ASSIST', 'ASSIST');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('CIVIL', 'CIVIL');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('EVICT', 'EVICT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FLAG', 'FLAG');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FOLLOW', 'FOLLOW');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('MSG', 'MSG');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('PROP', 'PROP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('GREAT', 'GREAT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('RED', 'RED');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('RIVPOL', 'RIVPOL');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SCHLET', 'SCHLET');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SERVE', 'SERVE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('STNDBY', 'STNDBY');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SUBSTP', 'SUBSTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TRANS', 'TRANS');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('WARR', 'WARR');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('WELCK', 'WELCK');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('WARRC', 'WARRC');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('WELCKP', 'WELCKP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ASSLT', 'ASSLT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('DEVICE', 'DEVICE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ROB', 'ROB');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('SHOOT', 'SHOOT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('STAB', 'STAB');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('BURG', 'BURG');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FRAUD', 'FRAUD');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('FRAUDP', 'FRAUDP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THEFT', 'THEFT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('IDENT', 'IDENT');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THEFTC', 'THEFTC');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('THEFTP', 'THEFTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VAND', 'VAND');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VANDP', 'VANDP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VEHST', 'VEHST');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ACCHR', 'ACCHR');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ACCHRP', 'ACCHRP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ACCINJ', 'ACCINJ');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('HOSTGE', 'HOSTGE');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ACCNON', 'ACCNON');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('ACCUNK', 'ACCUNK');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('DUII', 'DUII');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('HAZARD', 'HAZARD');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TRASTP', 'TRASTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('WRONG', 'WRONG');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('TPURS', 'TPURS');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('RSTLN', 'RSTLN');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VEHREC', 'VEHREC');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('VEHSTP', 'VEHSTP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('PROWLP', 'PROWLP');
INSERT INTO NIJ_CFS_PORTLAND_final_case_type VALUES ('BURGP', 'BURGP');

DROP TABLE IF EXISTS NIJ_CFS_PORTLAND_CSV;

CREATE TEXT TABLE NIJ_CFS_PORTLAND_CSV(
"category" CHARACTER(19),
"call_group" CHARACTER(18),
"final_case_type" CHARACTER(6),
"case_desc" CHARACTER(45),
"occ_date" CHARACTER(10),
"x_coordinate" INTEGER,
"y_coordinate" INTEGER,
"census_tract" CHARACTER(6)
);

SET TABLE NIJ_CFS_PORTLAND_CSV SOURCE "NIJ_CFS_PORTLAND.sql.csv" ;

DROP TABLE IF EXISTS NIJ_CFS_PORTLAND;

CREATE CACHED TABLE NIJ_CFS_PORTLAND(
"category" CHARACTER(19),
"call_group" CHARACTER(18),
"final_case_type" CHARACTER(6),
"case_desc" CHARACTER(45),
"occ_date" CHARACTER(10),
"x_coordinate" INTEGER,
"y_coordinate" INTEGER,
"census_tract" CHARACTER(6)
);

INSERT INTO NIJ_CFS_PORTLAND (
"category",
"call_group",
"final_case_type",
"case_desc",
"occ_date",
"x_coordinate",
"y_coordinate",
"census_tract"
) SELECT 
"category",
"call_group",
"final_case_type",
"case_desc",
"occ_date",
"x_coordinate",
"y_coordinate",
"census_tract"
 FROM NIJ_CFS_PORTLAND_CSV ;