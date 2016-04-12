-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2016 at 11:54 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP SCHEMA IF EXISTS `Midterm_CIan`;
CREATE SCHEMA `Midterm_CIan`;
USE `Midterm_CIan`;
SET AUTOCOMMIT=0;

--
-- Database: `Midterm_CIan`
--

-- --------------------------------------------------------

--
-- Table structure for table `Flavors`
--

DROP TABLE IF EXISTS `Flavors`;
CREATE TABLE `Flavors` (
	`ID` int(10) NOT NULL AUTO_INCREMENT,
	`Name` varchar(255) NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Flavors` (`Name`) VALUES ('vanilla');
INSERT INTO `Flavors` (`Name`) VALUES ('chocolate');
INSERT INTO `Flavors` (`Name`) VALUES ('strawberry');
INSERT INTO `Flavors` (`Name`) VALUES ('mint chocolate chip');
INSERT INTO `Flavors` (`Name`) VALUES ('cotton candy');

-- --------------------------------------------------------

--
-- Table structure for table `Flavors`
--

DROP TABLE IF EXISTS `Sizes`;
CREATE TABLE `Sizes` (
  `Size` int(10) NOT NULL,
  PRIMARY KEY (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Sizes` (`Size`) VALUES (1);
INSERT INTO `Sizes` (`Size`) VALUES (2);
INSERT INTO `Sizes` (`Size`) VALUES (3);

--
-- Table structure for table `Sales`
--
DROP TABLE IF EXISTS `Sales`;
CREATE TABLE `Sales` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Flavor_id` int(10) NOT NULL,
  `Scoops_size` int(10) NOT NULL,
  `Time` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Flavor_id` (`Flavor_id`),
  CONSTRAINT `sales_fk_1` FOREIGN KEY (`Flavor_id`) REFERENCES `Flavors` (`ID`),
  KEY `Scoops_size` (`Scoops_size`),
  CONSTRAINT `sales_fk_2` FOREIGN KEY (`Scoops_size`) REFERENCES `Sizes` (`Size`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


COMMIT;

SET AUTOCOMMIT=1;