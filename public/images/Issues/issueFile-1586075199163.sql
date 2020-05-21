-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2020 at 06:32 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementtbl`
--

INSERT INTO `announcementtbl` (`announcementId`, `announcementTitle`, `announcementMessage`, `announcementTime`) VALUES
(3, 'COVID-19', 'LOCKDOWN OFFICES AS WELL', '2020-03-30 17:29:32'),
(2, 'WORK FROM HOME', 'Work from home and submit it before deadline', '2020-03-30 10:27:35');

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
  `clientContactNo` varchar(10) NOT NULL,
  `clientOrgName` varchar(35) DEFAULT NULL,
  `clientAddress` varchar(400) NOT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienttbl`
--

INSERT INTO `clienttbl` (`clientId`, `clientFirstName`, `clientMiddleName`, `clientLastName`, `clientEmailId`, `clientContactNo`, `clientOrgName`, `clientAddress`) VALUES
(1, 'Prakash', 'Father', 'Shah', 'prakash@gmail.com', '9412321064', 'P&Q', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(2, 'Ruturaj', 'Father ', 'Patel', 'ruturaj@gmail.com', '9428712306', 'P&Q', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(3, 'Wasim', 'Father', 'Shah', 'wasim@gmail.com', '9123006732', 'Muskan', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(4, 'Himani', 'JayeshBhai', 'Shah', 'himanishah@gmail.com', '9428712444', 'A1', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(5, 'Aman', 'Umeshbhai', 'Mistry', 'aman@gmail.com', '9023465123', 'Harmy', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(6, 'Prakash', 'Father', 'Shah', 'prakash@gmail.com', '9412321063', 'A&B', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(8, 'varshil', 'falgunbhai', 'shah', 'varshil@gmail.com', '9428712306', 'PQR', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(9, 'smit', 'father', 'shah', 's@gmail.com', '9925721607', 'ABC', 'C-7,Nirav Flat,Pladi,Ahmedabad'),
(14, '', 'abc', 'abc', 'abc', '123', 'abc', 'abc'),
(13, '', 'abc', 'abc', 'abc', '123', 'abc', 'abc'),
(15, '', 'abcd', 'abc', 'abc', '123', 'abc', 'abc');

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
  `empContactNo` varchar(10) NOT NULL,
  `empPassword` varchar(15) NOT NULL,
  `empProfile` varchar(300) NOT NULL,
  `empTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `empTypeId` (`empTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptbl`
--

INSERT INTO `emptbl` (`empId`, `empFirstName`, `empMiddleName`, `empLastName`, `empEmailId`, `empContactNo`, `empPassword`, `empProfile`, `empTypeId`) VALUES
(1, 'Varshil', 'Falgunbhai', 'Shah', 'varshilshah44@gmail.com', '9428712306', 'varshilshah', 'varshil.JPG', 2),
(2, 'Kavish', 'PrafulBhai', 'Shah', 'kavishshah@gmail.com', '9812074570', 'kavishshah', 'varshil.JPG', 2),
(3, 'Anish', 'Father', 'shah', 'anishshah@gmail.com', '9323467002', 'anishshah', 'varshil.JPG', 1),
(4, 'Dixit', 'Father', 'Jain', 'dixitjain@gmail.com', '9545123400', 'dixitjain', 'varshil.JPG', 2),
(5, 'Vishal', 'Father', 'Rana', 'vishalrana@gmail.com', '9812303356', 'vishalrana', 'varshil.JPG', 2),
(6, 'Akash', 'Father', 'Dubey', 'akashdubey@gmail.com', '9576309123', 'akashdubey', 'varshil.JPG', 2),
(7, 'Keerthika', 'Father', 'nair', 'keerthikanair@gmail.com', '9458145632', 'keerthikanair', 'varshil.JPG', 2),
(8, 'Priyal', 'Father', 'Shah', 'priyalshah@gmail.com', '9109276231', 'priyalshah', 'varshil.JPG', 2),
(9, 'snehaa', 'Father', 'Tomarr', 'snehatomar@gmail.com', '9800211498', 'snehatomar', 'varshil.JPG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `emptypetbl`
--

DROP TABLE IF EXISTS `emptypetbl`;
CREATE TABLE IF NOT EXISTS `emptypetbl` (
  `empTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `empTypeName` varchar(30) NOT NULL,
  PRIMARY KEY (`empTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptypetbl`
--

INSERT INTO `emptypetbl` (`empTypeId`, `empTypeName`) VALUES
(1, 'ProjectManager'),
(2, 'TeamMember');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empworkareatbl`
--

INSERT INTO `empworkareatbl` (`empWorkAreaId`, `workAreaId`, `empId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 4, 6),
(7, 2, 7),
(8, 5, 8),
(9, 3, 9);

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
  `issuePriority` varchar(8) NOT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `issuetitle` varchar(40) NOT NULL,
  PRIMARY KEY (`issueId`),
  KEY `empId` (`empId`),
  KEY `projectId` (`projectId`),
  KEY `moduleId` (`moduleId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuetbl`
--

INSERT INTO `issuetbl` (`issueId`, `issueData`, `issueImg`, `issueStatus`, `empId`, `issueTime`, `projectId`, `issuePriority`, `moduleId`, `issuetitle`) VALUES
(1, 'Login Component', 'image1', 'pending', 1, '2020-03-09 05:15:09', 39, 'high', 1, 'abc'),
(2, 'qqqq', 'image2', 'resolved', 2, '2020-03-18 07:16:35', 1, 'medium', 1, 'pqr'),
(3, 'ss', 'image3', 'pending', 3, '2020-03-18 03:16:22', 31, 'high', 1, 'spq'),
(4, 'Project View Component', 'image4', 'pending', 1, '2020-03-31 03:13:15', 31, 'high', 2, 'mnq'),
(5, 'yy', 'image5', 'responded', 5, '2020-03-24 03:10:14', 35, 'low', 2, 'hlm');

-- --------------------------------------------------------

--
-- Table structure for table `moduleassigntbl`
--

DROP TABLE IF EXISTS `moduleassigntbl`;
CREATE TABLE IF NOT EXISTS `moduleassigntbl` (
  `moduleAssignId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  PRIMARY KEY (`moduleAssignId`),
  KEY `moduleId` (`moduleId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moduleassigntbl`
--

INSERT INTO `moduleassigntbl` (`moduleAssignId`, `moduleId`, `empId`) VALUES
(1, 1, 5),
(2, 1, 4),
(3, 1, 1),
(4, 2, 5),
(5, 2, 4),
(15, 3, 1),
(14, 3, 2),
(13, 3, 3),
(12, 4, 1),
(11, 4, 2),
(16, 4, 3),
(17, 8, 4),
(18, 8, 1),
(19, 8, 3),
(20, 9, 4),
(21, 9, 3);

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
  `moduleDeadline` date NOT NULL,
  `moduleStatus` varchar(20) NOT NULL,
  `moduleDescription` varchar(4000) NOT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moduletbl`
--

INSERT INTO `moduletbl` (`moduleId`, `moduleName`, `projectId`, `moduleTimeAllocated`, `moduleStartDate`, `moduleDeadline`, `moduleStatus`, `moduleDescription`) VALUES
(1, 'Module1', 31, '5', '2020-02-01', '2020-02-04', 'inprogress', 'module1'),
(2, 'Login', 31, '5', '2020-02-01', '2020-02-04', 'completed', 'login module che aa'),
(3, 'login', 35, '5', '2020-03-29', '2020-04-08', 'inprogress', 'Login for hotel'),
(4, 'forget password', 35, '2', '2020-03-29', '2020-03-31', 'inprogress', 'Forget password for Hotel'),
(5, 'project View', 39, '5', '2020-03-29', '2020-04-03', 'completed', 'Project view in Tables'),
(6, 'project Details', 39, '3', '2020-04-04', '2020-04-07', 'ideal', 'Create Project Details'),
(7, 'Issue Module', 39, '3', '2020-03-29', '2020-04-01', 'inprogress', 'Create Module for issue'),
(9, 'Report Generation', 39, '5', '2020-03-05', '2020-02-10', 'idle', 'Create Project Report Generation');

-- --------------------------------------------------------

--
-- Table structure for table `projectannouncementtbl`
--

DROP TABLE IF EXISTS `projectannouncementtbl`;
CREATE TABLE IF NOT EXISTS `projectannouncementtbl` (
  `projectAnnouncementId` int(11) NOT NULL AUTO_INCREMENT,
  `projectAnnouncementTitle` varchar(50) NOT NULL,
  `projectAnnouncementMessage` varchar(200) NOT NULL,
  `projectAnnouncementTime` datetime DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  PRIMARY KEY (`projectAnnouncementId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectannouncementtbl`
--

INSERT INTO `projectannouncementtbl` (`projectAnnouncementId`, `projectAnnouncementTitle`, `projectAnnouncementMessage`, `projectAnnouncementTime`, `projectId`) VALUES
(1, 'COVID-19', 'Office Will be closed till further notice', '2020-03-30 16:48:19', 35),
(3, 'DO YOUR DUE WORK BEFORE DEADLINE', 'Please complete your project work before deadline and submit it ', '2020-03-30 16:57:54', 38);

-- --------------------------------------------------------

--
-- Table structure for table `projecttbl`
--

DROP TABLE IF EXISTS `projecttbl`;
CREATE TABLE IF NOT EXISTS `projecttbl` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(60) NOT NULL,
  `projectDescription` varchar(4000) NOT NULL,
  `projectDomain` varchar(50) NOT NULL,
  `projectStartDate` date NOT NULL,
  `projectEndDate` date NOT NULL,
  `projectDeadline` date NOT NULL,
  `projectReceiveDate` date NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `projectStatus` varchar(15) NOT NULL,
  `projectFile` varchar(4000) NOT NULL,
  PRIMARY KEY (`projectId`),
  KEY `clientId` (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projecttbl`
--

INSERT INTO `projecttbl` (`projectId`, `projectName`, `projectDescription`, `projectDomain`, `projectStartDate`, `projectEndDate`, `projectDeadline`, `projectReceiveDate`, `clientId`, `projectStatus`, `projectFile`) VALUES
(39, 'tempproject', 'abc', 'Static Website', '2020-03-25', '2020-04-10', '2020-04-20', '2020-03-21', 1, 'inprogress', 'projectFile-1584772725424.sql'),
(38, 'Clothes', 'varshil shah', 'Ecommerce', '2020-06-24', '2020-08-21', '2020-08-31', '2020-07-09', 3, 'closed', 'projectFile-1584770474080.pdf'),
(37, 'Lemon', 'abc', 'Static Website', '2020-03-15', '2020-03-25', '2020-03-31', '2020-03-01', 9, 'closed', 'projectFile-1584770379341.cpp'),
(36, 'Glory', 'abc', 'Ecommerce', '2020-03-26', '2020-04-26', '2020-04-27', '2020-03-14', 2, 'inprogress', 'projectFile-1584769643013.sql'),
(34, 'Software For calculating Tax', 'Software for Calculating Tax', 'ERP System', '2020-03-20', '2020-04-08', '2020-04-13', '2015-03-11', 5, 'completed', 'projectFile-1584699243224.sql'),
(33, 'Shoping Store Website', 'Static Website for Online Shop', 'Static Website', '2020-03-20', '2020-04-08', '2020-04-13', '2015-03-11', 6, 'inprogress', 'projectFile-1584699086190.sql'),
(32, 'Food Delivery', 'Mobile Application for Food Delivery', 'Android App', '2020-03-20', '2020-04-08', '2020-04-13', '2018-03-11', 1, 'inprogress', 'projectFile-1584698944425.sql'),
(35, 'Hotel Booking', 'abc', 'Static Website', '2020-03-21', '2020-05-29', '2020-06-01', '2020-03-07', 4, 'inprogress', 'projectFile-1584765477168.docx'),
(31, 'Grofers ', 'Ecommerce WebApplication For selling Vegetables and Fruits online', 'Ecommerce', '2020-03-20', '2020-04-08', '2020-04-13', '2019-03-11', 2, 'inprogress', 'projectFile-1584698856897.sql');

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
  `subModuleDeadline` date NOT NULL,
  `subModuleTimeAllocated` varchar(10) NOT NULL,
  `subModuleStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`subModuleId`),
  KEY `moduleId` (`moduleId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submoduletbl`
--

INSERT INTO `submoduletbl` (`subModuleId`, `moduleId`, `subModuleName`, `subModuleDescription`, `subModuleStartDate`, `subModuleDeadline`, `subModuleTimeAllocated`, `subModuleStatus`) VALUES
(1, 1, 'sub1', 'model1', '2020-02-10', '2020-02-14', '5', 'completed'),
(2, 1, 'sub2', 'model2', '2020-02-24', '2020-02-26', '3', 'idle'),
(3, 2, 'validations', 'validation', '2020-02-01', '2020-02-02', '2', 'completed'),
(4, 2, 'forgot', 'forgot', '2020-02-01', '2020-02-05', '3', 'completed'),
(5, 1, 'login', 'login submodule', '2020-02-05', '2020-02-24', '20', 'completed'),
(7, 1, 'submodule', 'submodule', '2020-02-01', '2020-02-02', '1', 'idle'),
(8, 1, 'submodule1', 'submodule1', '2020-02-01', '2020-02-02', '1', 'inprogress'),
(9, 1, 'varshilSubmodule', 'varshil', '2020-02-01', '2020-02-02', '1', 'idle'),
(10, 1, 'hey', 'hey', '2020-02-23', '2020-02-24', '1', 'idle'),
(16, 5, 'Designing', 'Make Design for Project view module', '2020-03-29', '2020-03-31', '3', 'completed'),
(11, 3, 'Design For Login', 'Do Designing for login page', '2020-03-30', '2020-04-02', '4', 'completed'),
(12, 3, 'validation', 'Make perfect Validation for login page', '2020-03-03', '2020-03-04', '1', 'inprogress'),
(13, 3, 'Testing', 'Do Testing if its works fine or not', '2020-03-05', '2020-03-06', '1', 'idle'),
(14, 4, 'forgetPage Design', 'Do Designing for Forget password', '2020-03-29', '2020-03-30', '1', 'completed'),
(15, 4, 'validation', 'validate forget password', '2020-03-31', '2020-04-01', '1', 'inprogress'),
(17, 5, 'Coding', 'coding for project view', '2020-04-01', '2020-04-04', '4', 'completed'),
(18, 6, 'Designing', 'make design for project details', '2020-03-29', '2020-03-31', '3', 'completed'),
(19, 6, 'validation', 'validate design', '2020-03-30', '2020-03-31', '1', 'completed'),
(20, 7, 'Designing', 'make design', '2020-03-29', '2020-03-30', '1', 'completed'),
(21, 7, 'validation', 'validate design', '2020-03-31', '2020-04-03', '4', 'idle'),
(22, 9, 'Design for Report Generation', 'Please Make Suitable design for Report generation', '2020-03-06', '2020-02-08', '2', 'idle');

-- --------------------------------------------------------

--
-- Table structure for table `teammembertbl`
--

DROP TABLE IF EXISTS `teammembertbl`;
CREATE TABLE IF NOT EXISTS `teammembertbl` (
  `teamMemberId` int(11) NOT NULL AUTO_INCREMENT,
  `teamId` int(11) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamMemberId`),
  KEY `teamId` (`teamId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teammembertbl`
--

INSERT INTO `teammembertbl` (`teamMemberId`, `teamId`, `empId`) VALUES
(108, 38, 3),
(107, 38, 4),
(106, 38, 1),
(105, 37, 4),
(104, 37, 3),
(103, 37, 1),
(102, 36, 4),
(101, 36, 1),
(100, 35, 5),
(99, 35, 3),
(98, 35, 1),
(97, 34, 5),
(96, 34, 2),
(95, 34, 3),
(94, 34, 1),
(93, 33, 8),
(92, 33, 1),
(91, 33, 4),
(90, 32, 5),
(89, 32, 4),
(88, 31, 1),
(87, 31, 5),
(86, 31, 3),
(85, 31, 4),
(84, 30, 5),
(83, 30, 4),
(82, 30, 3),
(81, 30, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamtbl`
--

INSERT INTO `teamtbl` (`teamId`, `projectId`, `teamSize`, `leaderId`) VALUES
(38, 39, 3, 1),
(37, 38, 3, 1),
(36, 37, 2, 1),
(35, 36, 3, 1),
(34, 35, 4, 1),
(33, 34, 3, 4),
(32, 33, 2, 4),
(31, 32, 4, 4),
(30, 31, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `workareatbl`
--

DROP TABLE IF EXISTS `workareatbl`;
CREATE TABLE IF NOT EXISTS `workareatbl` (
  `workAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `workAreaType` varchar(30) NOT NULL,
  PRIMARY KEY (`workAreaId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workareatbl`
--

INSERT INTO `workareatbl` (`workAreaId`, `workAreaType`) VALUES
(1, 'WebDeveloper'),
(2, 'Tester'),
(3, 'SoftwareDeveloper'),
(4, 'DesktopDeveloper'),
(5, 'MobileDeveloper');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
