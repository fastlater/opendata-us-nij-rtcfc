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

DROP DATABASE IF EXISTS `NIJ_CFS_PORTLAND`;

CREATE DATABASE IF NOT EXISTS `NIJ_CFS_PORTLAND`;

USE `NIJ_CFS_PORTLAND`;

DROP TABLE IF EXISTS `NIJ_CFS_PORTLAND_category`;

CREATE TABLE `NIJ_CFS_PORTLAND_category` (
`code` VARCHAR(19),
`value` VARCHAR(255),
`missing` CHAR(1),
`missing_type` VARCHAR(20),
PRIMARY KEY (code)
);
INSERT INTO `NIJ_CFS_PORTLAND_category` VALUES ('STC', 'STREET CRIMES', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_category` VALUES ('OTH', 'OTHER', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_category` VALUES ('MVT', 'MOTOR VEHICLE THEFT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_category` VALUES ('BUR', 'BURGLARY', 'F', '');

DROP TABLE IF EXISTS `NIJ_CFS_PORTLAND_call_group`;

CREATE TABLE `NIJ_CFS_PORTLAND_call_group` (
`code` VARCHAR(18),
`value` VARCHAR(255),
`missing` CHAR(1),
`missing_type` VARCHAR(20),
PRIMARY KEY (code)
);
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('DISORDER', 'DISORDER', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('PERSON CRIME', 'PERSON CRIME', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('SUSPICIOUS', 'SUSPICIOUS', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('NON CRIMINAL/ADMIN', 'NON CRIMINAL/ADMIN', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('PROPERTY CRIME', 'PROPERTY CRIME', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_call_group` VALUES ('TRAFFIC', 'TRAFFIC', 'F', '');

DROP TABLE IF EXISTS `NIJ_CFS_PORTLAND_final_case_type`;

CREATE TABLE `NIJ_CFS_PORTLAND_final_case_type` (
`code` VARCHAR(6),
`value` VARCHAR(255),
`missing` CHAR(1),
`missing_type` VARCHAR(20),
PRIMARY KEY (code)
);
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('DISTP', 'DISTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('DISTW', 'DISTW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VICE', 'VICE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ASSLTP', 'ASSLTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ASSLTW', 'ASSLTW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ROBP', 'ROBP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ROBW', 'ROBW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SHOOTW', 'SHOOTW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SHOTS', 'SHOTS', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('STABW', 'STABW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THRETP', 'THRETP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THRETW', 'THRETW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('GANG', 'GANG', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('AREACK', 'AREACK', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('PREMCK', 'PREMCK', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SUSP', 'SUSP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SUSPP', 'SUSPP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SUSPW', 'SUSPW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ANIML', 'ANIML', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ANIMLP', 'ANIMLP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('BOMBTH', 'BOMBTH', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('DIST', 'DIST', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ESCAPE', 'ESCAPE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FWB', 'FWB', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FWH', 'FWH', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FWI', 'FWI', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('CHEM', 'CHEM', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FWN', 'FWN', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('NOISE', 'NOISE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('PARK', 'PARK', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('PARTY', 'PARTY', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('POLINV', 'POLINV', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SCHL', 'SCHL', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SCHLP', 'SCHLP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SCHLW', 'SCHLW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THRET', 'THRET', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TMET', 'TMET', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TMETP', 'TMETP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TMETW', 'TMETW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TRASH', 'TRASH', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TRASHP', 'TRASHP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('UNWNT', 'UNWNT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FPURS', 'FPURS', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('UNWNTW', 'UNWNTW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('W26', 'W26', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('77', '77', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ASSIST', 'ASSIST', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('CIVIL', 'CIVIL', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('EVICT', 'EVICT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FLAG', 'FLAG', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FOLLOW', 'FOLLOW', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('MSG', 'MSG', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('PROP', 'PROP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('GREAT', 'GREAT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('RED', 'RED', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('RIVPOL', 'RIVPOL', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SCHLET', 'SCHLET', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SERVE', 'SERVE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('STNDBY', 'STNDBY', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SUBSTP', 'SUBSTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TRANS', 'TRANS', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('WARR', 'WARR', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('WELCK', 'WELCK', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('WARRC', 'WARRC', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('WELCKP', 'WELCKP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ASSLT', 'ASSLT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('DEVICE', 'DEVICE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ROB', 'ROB', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('SHOOT', 'SHOOT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('STAB', 'STAB', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('BURG', 'BURG', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FRAUD', 'FRAUD', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('FRAUDP', 'FRAUDP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THEFT', 'THEFT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('IDENT', 'IDENT', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THEFTC', 'THEFTC', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('THEFTP', 'THEFTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VAND', 'VAND', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VANDP', 'VANDP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VEHST', 'VEHST', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ACCHR', 'ACCHR', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ACCHRP', 'ACCHRP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ACCINJ', 'ACCINJ', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('HOSTGE', 'HOSTGE', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ACCNON', 'ACCNON', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('ACCUNK', 'ACCUNK', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('DUII', 'DUII', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('HAZARD', 'HAZARD', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TRASTP', 'TRASTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('WRONG', 'WRONG', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('TPURS', 'TPURS', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('RSTLN', 'RSTLN', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VEHREC', 'VEHREC', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('VEHSTP', 'VEHSTP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('PROWLP', 'PROWLP', 'F', '');
INSERT INTO `NIJ_CFS_PORTLAND_final_case_type` VALUES ('BURGP', 'BURGP', 'F', '');

DROP TABLE IF EXISTS `NIJ_CFS_PORTLAND`;

CREATE TABLE `NIJ_CFS_PORTLAND`(
`category` VARCHAR(19),
`call_group` VARCHAR(18),
`final_case_type` VARCHAR(6),
`case_desc` VARCHAR(45),
`occ_date` VARCHAR(10),
`x_coordinate` INTEGER,
`y_coordinate` INTEGER,
`census_tract` VARCHAR(6)
/*Data being inserted/imported into the table may
  not be formatted to comply with the following
  foreign key constraints. If you would like to use
  the constraints uncomment the following lines and
  be sure to add a comma (,) after the last variable.
FOREIGN KEY (
`category`) REFERENCES NIJ_CFS_PORTLAND_category (code),
FOREIGN KEY (
`call_group`) REFERENCES NIJ_CFS_PORTLAND_call_group (code),
FOREIGN KEY (
`final_case_type`) REFERENCES NIJ_CFS_PORTLAND_final_case_type (code)*/
);

LOAD DATA LOCAL INFILE 'NIJ_CFS_PORTLAND.sql.csv'
INTO TABLE `NIJ_CFS_PORTLAND`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY'"' ;