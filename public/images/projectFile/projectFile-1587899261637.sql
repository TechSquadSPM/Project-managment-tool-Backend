-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2020 at 08:53 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcementtbl`
--

DROP TABLE IF EXISTS `announcementtbl`;
CREATE TABLE IF NOT EXISTS `announcementtbl` (
  `announcementId` int(11) NOT NULL AUTO_INCREMENT,
  `announcementTitle` varchar(60) NOT NULL,
  `announcementMessage` varchar(200) NOT NULL,
  `announcementTime` datetime NOT NULL,
  PRIMARY KEY (`announcementId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clienttbl`
--

DROP TABLE IF EXISTS `clienttbl`;
CREATE TABLE IF NOT EXISTS `clienttbl` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `clientFirstName` varchar(30) NOT NULL,
  `clientMiddleName` varchar(30) NOT NULL,
  `clientLastName` varchar(30) NOT NULL,
  `clientEmailId` varchar(40) NOT NULL,
  `clientContactNo` int(11) NOT NULL,
  `clientOrgName` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emptbl`
--

DROP TABLE IF EXISTS `emptbl`;
CREATE TABLE IF NOT EXISTS `emptbl` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empFirstName` varchar(30) NOT NULL,
  `empMiddleName` varchar(30) NOT NULL,
  `empLastName` varchar(30) NOT NULL,
  `empEmailId` varchar(40) NOT NULL,
  `empContactNo` int(11) NOT NULL,
  `empPassword` varchar(15) NOT NULL,
  `empProfile` varchar(300) NOT NULL,
  `empTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `empTypeId` (`empTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emptypetbl`
--

DROP TABLE IF EXISTS `emptypetbl`;
CREATE TABLE IF NOT EXISTS `emptypetbl` (
  `empTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `empTypeName` varchar(30) NOT NULL,
  PRIMARY KEY (`empTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empworkareatbl`
--

DROP TABLE IF EXISTS `empworkareatbl`;
CREATE TABLE IF NOT EXISTS `empworkareatbl` (
  `empWorkAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `workAreaId` int(11) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`empWorkAreaId`),
  KEY `workAreaId` (`workAreaId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuetbl`
--

DROP TABLE IF EXISTS `issuetbl`;
CREATE TABLE IF NOT EXISTS `issuetbl` (
  `issueId` int(11) NOT NULL AUTO_INCREMENT,
  `issueData` varchar(200) NOT NULL,
  `issueImg` varchar(150) DEFAULT NULL,
  `issueStatus` varchar(30) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  `issueTime` datetime NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  PRIMARY KEY (`issueId`),
  KEY `empId` (`empId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `moduletbl`
--

DROP TABLE IF EXISTS `moduletbl`;
CREATE TABLE IF NOT EXISTS `moduletbl` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(30) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `moduleTimeAllocated` varchar(10) NOT NULL,
  `moduleStartDate` date NOT NULL,
  `moduleEndDate` date NOT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projecttbl`
--

DROP TABLE IF EXISTS `projecttbl`;
CREATE TABLE IF NOT EXISTS `projecttbl` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(60) NOT NULL,
  `projectDescription` varchar(200) NOT NULL,
  `projectDomain` varchar(50) NOT NULL,
  `projectStartDate` date NOT NULL,
  `projectEndDate` date NOT NULL,
  `projectDeadline` date NOT NULL,
  `projectReceiveDate` date NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  PRIMARY KEY (`projectId`),
  KEY `clientId` (`clientId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submoduletbl`
--

DROP TABLE IF EXISTS `submoduletbl`;
CREATE TABLE IF NOT EXISTS `submoduletbl` (
  `subModuleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleId` int(11) DEFAULT NULL,
  `subModuleName` varchar(40) NOT NULL,
  `subModuleDescription` varchar(100) NOT NULL,
  `subModuleStartDate` date NOT NULL,
  `subModuleEndDate` date NOT NULL,
  `subModuleTimeAllocated` varchar(10) NOT NULL,
  `subModuleStatus` varchar(10) NOT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`subModuleId`),
  KEY `moduleId` (`moduleId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teammembertbl`
--

DROP TABLE IF EXISTS `teammembertbl`;
CREATE TABLE IF NOT EXISTS `teammembertbl` (
  `teamMemberId` int(11) NOT NULL AUTO_INCREMENT,
  `teamId` int(11) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  `empWorkAreaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamMemberId`),
  KEY `teamId` (`teamId`),
  KEY `empId` (`empId`),
  KEY `empWorkAreaId` (`empWorkAreaId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teamtbl`
--

DROP TABLE IF EXISTS `teamtbl`;
CREATE TABLE IF NOT EXISTS `teamtbl` (
  `teamId` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `teamSize` int(11) NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamId`),
  KEY `projectId` (`projectId`),
  KEY `leaderId` (`leaderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workareatbl`
--

DROP TABLE IF EXISTS `workareatbl`;
CREATE TABLE IF NOT EXISTS `workareatbl` (
  `workAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `workAreaType` varchar(30) NOT NULL,
  PRIMARY KEY (`workAreaId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
