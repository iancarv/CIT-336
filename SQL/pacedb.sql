DROP SCHEMA IF EXISTS Pace;
CREATE SCHEMA Pace;
USE Pace;
SET AUTOCOMMIT=0;

DROP TABLE IF EXISTS `Courses`;

CREATE TABLE `Courses` (
    `CRN` int(6) NOT NULL DEFAULT 0,
    `Subject` varchar(3) NOT NULL DEFAULT '',
    `CourseNumber` varchar(4) NOT NULL DEFAULT '',
    `Title` varchar(255) NOT NULL DEFAULT '',
    PRIMARY KEY (`CRN`)
);

INSERT INTO `Courses` VALUES (21996,'CIT','366','Web Scripting');
INSERT INTO `Courses` VALUES (22786,'CIT','322','Distributed Computing');
INSERT INTO `Courses` VALUES (21635,'CIT','110','Intro to Inform Technology');
INSERT INTO `Courses` VALUES (20140,'CS', '122', 'Computer Programming II');
INSERT INTO `Courses` VALUES (20142,'CS', '232','Computer Organization');
INSERT INTO `Courses` VALUES (20146,'CS', '312','Research Methods');
INSERT INTO `Courses` VALUES (22104,'CS', '325','Introduction to Data Mining');
INSERT INTO `Courses` VALUES (22853,'CS', '361','Programming Lang/Implementatn');
INSERT INTO `Courses` VALUES (21921,'CS', '389','Software Engineering');
INSERT INTO `Courses` VALUES (21804,'CS', '488','Computer Netwrk & the Internet');
INSERT INTO `Courses` VALUES (23865,'CS', '396Y','Human/Computer Interaction');
INSERT INTO `Courses` VALUES (22641,'CS', '241','Data Structures/Algorithms');
INSERT INTO `Courses` VALUES (20143,'CS', '242','Algorithms & Computing Theory');
INSERT INTO `Courses` VALUES (20811,'CS', '271','Fundmntls of Unix and C Prgmng');
INSERT INTO `Courses` VALUES (23483,'CS', '387','Database Design');

DROP TABLE IF EXISTS `Students`;

CREATE TABLE `Students` (
    `ID` int(8) NOT NULL AUTO_INCREMENT, -- UID #
    `Name` char(35) NOT NULL DEFAULT '',
    PRIMARY KEY (`ID`)
);

INSERT INTO `Students` (`Name`)
VALUES ('Ian Carvalho');
INSERT INTO `Students` (`Name`)
VALUES ('Filipe Vieira');
INSERT INTO `Students` (`Name`)
VALUES ('Alphonse Daren');
INSERT INTO `Students` (`Name`)
VALUES ('Pedro Pio');
INSERT INTO `Students` (`Name`)
VALUES ('Vinicius Assis');
INSERT INTO `Students` (`Name`)
VALUES ('Luiz Cieslak');
INSERT INTO `Students` (`Name`)
VALUES ('Melanie Greene');
INSERT INTO `Students` (`Name`)
VALUES ('Ali Hajihaidari');
INSERT INTO `Students` (`Name`)
VALUES ('Erik Duran');
INSERT INTO `Students` (`Name`)
VALUES ('Denis Cappelini');
INSERT INTO `Students` (`Name`)
VALUES ('Kendra Jackman');
INSERT INTO `Students` (`Name`)
VALUES ('Victor Presumido');
INSERT INTO `Students` (`Name`)
VALUES ('Jonatas Oliveira');
INSERT INTO `Students` (`Name`)
VALUES ('Lucas Souza');
INSERT INTO `Students` (`Name`)
VALUES ('Lucia Barneche');


DROP TABLE IF EXISTS `Grades`;

CREATE TABLE `Grades` (
    `CourseCRN` int(6) NOT NULL DEFAULT 0,
    `StudentID` int(8) NOT NULL DEFAULT 0,
    `Midterm` varchar(2) NOT NULL DEFAULT '',
    `Final` varchar(2) NOT NULL DEFAULT '',
    PRIMARY KEY (`CourseCRN`,`StudentID`),
    KEY `CourseCRN` (`CourseCRN`),
    CONSTRAINT `grades_fk_1` FOREIGN KEY (`CourseCRN`) REFERENCES `Courses` (`CRN`),
    KEY `StudentID` (`StudentID`),
    CONSTRAINT `grades_fk_2` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`ID`)
);

INSERT INTO `Grades` VALUES (21996, 1, 'A', 'A+');
INSERT INTO `Grades` VALUES (22786, 1, 'A', 'A');
INSERT INTO `Grades` VALUES (21635, 2, 'B', 'B');
INSERT INTO `Grades` VALUES (20140, 2, 'A', 'B+');
INSERT INTO `Grades` VALUES (20142, 3, 'C', 'B+');
INSERT INTO `Grades` VALUES (21996, 3, 'B', 'C');
INSERT INTO `Grades` VALUES (22786, 4, 'C', 'C');
INSERT INTO `Grades` VALUES (21635, 4, 'A+', 'A');
INSERT INTO `Grades` VALUES (20140, 5, 'B', 'A');
INSERT INTO `Grades` VALUES (20142, 5, 'B', 'C+');
INSERT INTO `Grades` VALUES (20146, 6, 'A+', 'C');
INSERT INTO `Grades` VALUES (22104, 6, 'B', 'C');
INSERT INTO `Grades` VALUES (22853, 7, 'C', 'C');
INSERT INTO `Grades` VALUES (21921, 7, 'A+', 'A');
INSERT INTO `Grades` VALUES (21804, 8, 'B', 'A');
INSERT INTO `Grades` VALUES (23865, 8, 'B', 'C+');
INSERT INTO `Grades` VALUES (22641, 9, 'A+', 'C');
INSERT INTO `Grades` VALUES (20143, 9, 'A', 'A+');
INSERT INTO `Grades` VALUES (20811, 10, 'A', 'A+');
INSERT INTO `Grades` VALUES (23483, 10, 'A', 'A+');
INSERT INTO `Grades` VALUES (20146, 11, 'A', 'A+');
INSERT INTO `Grades` VALUES (22104, 11, 'B', 'C');
INSERT INTO `Grades` VALUES (22853, 12, 'C', 'C');
INSERT INTO `Grades` VALUES (21921, 12, 'A+', 'A');
INSERT INTO `Grades` VALUES (21804, 13, 'B', 'A');
INSERT INTO `Grades` VALUES (23865, 13, 'B', 'C+');
INSERT INTO `Grades` VALUES (22641, 14, 'A+', 'C');
INSERT INTO `Grades` VALUES (20143, 14, 'A', 'A');
INSERT INTO `Grades` VALUES (20811, 15, 'A', 'B+');
INSERT INTO `Grades` VALUES (23483, 15, 'C', 'B');


COMMIT;

SET AUTOCOMMIT=1;