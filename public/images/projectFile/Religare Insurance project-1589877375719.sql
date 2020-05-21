-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2020 at 03:12 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementtbl`
--

INSERT INTO `announcementtbl` (`announcementId`, `announcementTitle`, `announcementMessage`, `announcementTime`) VALUES
(2, 'WORK FROM HOME', 'Work from home and submit it before deadline', '2020-03-30 10:27:35'),
(4, 'Checking Project', 'okay  i am checking a project so everyone should be present tomorrow,\nstay home stay safe', '2020-05-15 15:49:54');

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(9, 'smit', 'father', 'shah', 's@gmail.com', '9925721607', 'ABC', 'C-7,Nirav Flat,Pladi,Ahmedabad');

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
  `otp` int(11) NOT NULL,
  PRIMARY KEY (`empId`),
  KEY `empTypeId` (`empTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptbl`
--

INSERT INTO `emptbl` (`empId`, `empFirstName`, `empMiddleName`, `empLastName`, `empEmailId`, `empContactNo`, `empPassword`, `empProfile`, `empTypeId`, `otp`) VALUES
(1, 'Varshil', 'Falgunbhai', 'Shah', 'varshilshah44@gmail.com', '9428712306', 'varshilshah', 'varshil.JPG', 2, 7091),
(2, 'Kavish', 'PrafulBhai', 'Shah', 'kavishshah84@gmail.com', '9812074570', 'kavish4746', 'varshil.JPG', 2, 7203),
(3, 'Anish', 'Father', 'shah', 'anishshah@gmail.com', '9323467002', 'anishshah', 'varshil.JPG', 1, 0),
(4, 'Dixit', 'Father', 'Jain', 'dixitjain@gmail.com', '9545123400', 'dixitjain', 'varshil.JPG', 2, 0),
(5, 'Vishal', 'Father', 'Rana', 'vishalrana@gmail.com', '9812303356', 'vishalrana', 'varshil.JPG', 2, 0),
(6, 'Akash', 'Father', 'Dubey', 'akashdubey@gmail.com', '9576309123', 'akashdubey', 'varshil.JPG', 2, 0),
(7, 'Keerthika', 'Father', 'nair', 'keerthikanair@gmail.com', '9458145632', 'keerthikanair', 'varshil.JPG', 2, 0),
(8, 'Priyal', 'Father', 'Shah', 'priyalshah@gmail.com', '9109276231', 'priyalshah', 'varshil.JPG', 2, 0),
(9, 'snehaa', 'Father', 'Tomarr', 'snehatomar@gmail.com', '9800211498', 'snehatomar', 'varshil.JPG', 2, 0);

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
(4, 1, 4),
(5, 1, 5),
(6, 4, 6),
(7, 2, 7),
(8, 5, 8),
(9, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `issuereplytbl`
--

DROP TABLE IF EXISTS `issuereplytbl`;
CREATE TABLE IF NOT EXISTS `issuereplytbl` (
  `issueReplyId` int(11) NOT NULL AUTO_INCREMENT,
  `issueId` int(11) NOT NULL,
  `issueReplyData` varchar(4000) NOT NULL,
  `issueReplyTime` datetime NOT NULL,
  `empId` int(11) NOT NULL,
  `issueReplyFile` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`issueReplyId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuetbl`
--

DROP TABLE IF EXISTS `issuetbl`;
CREATE TABLE IF NOT EXISTS `issuetbl` (
  `issueId` int(11) NOT NULL AUTO_INCREMENT,
  `issueData` varchar(200) NOT NULL,
  `issueFile` varchar(150) DEFAULT NULL,
  `issueStatus` varchar(30) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  `issueTime` datetime NOT NULL,
  `issuePriority` varchar(8) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `issueTitle` varchar(40) NOT NULL,
  `projectId` int(11) NOT NULL,
  PRIMARY KEY (`issueId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuetbl`
--

INSERT INTO `issuetbl` (`issueId`, `issueData`, `issueFile`, `issueStatus`, `empId`, `issueTime`, `issuePriority`, `moduleId`, `issueTitle`, `projectId`) VALUES
(1, 'Login Component', 'image1', 'pending', 1, '2020-03-09 05:15:09', 'high', 1, 'Login Error', 31),
(2, 'qqqq', 'image2', 'resolved', 2, '2020-03-18 07:16:35', 'medium', 2, 'qqqq Error', 31),
(3, 'ss', 'image3', 'pending', 3, '2020-03-18 03:16:22', 'high', 2, 'ss error', 31),
(4, 'Project View Component', 'image4', 'pending', 1, '2020-03-31 03:13:15', 'high', 1, 'project view error', 31),
(5, 'yy', 'image5', 'resolved', 5, '2020-03-24 03:10:14', 'low', 3, 'yy error', 35),
(15, 'So basically i am stuck in this page and i send to you the photo of the error', 'error.jpg-1589694457810.jpg', 'pending', 1, '2020-04-17 11:17:37', 'high', 21, 'Login Error', 38),
(18, 'I am stuck in this page', 'error.jpg-1589695825086.jpg', 'pending', 1, '2020-04-17 11:40:25', 'medium', 21, 'Validation Error', 38),
(19, 'So basically i am stuck in this page', NULL, 'resolved', 2, '2020-04-17 11:42:40', 'low', 21, 'Forgot Error', 38),
(26, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 'issueFile-1589709402858.sql-1589724679328.sql-1589725110120.sql', 'pending', 1, '2020-05-17 19:48:30', 'high', 21, 'Demo', 38);

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

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
(21, 9, 3),
(22, 12, 1),
(24, 12, 5),
(25, 13, 4),
(26, 13, 5),
(40, 21, 2),
(39, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `moduletbl`
--

DROP TABLE IF EXISTS `moduletbl`;
CREATE TABLE IF NOT EXISTS `moduletbl` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(30) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `moduleStartDate` date NOT NULL,
  `moduleDeadline` date NOT NULL,
  `moduleStatus` varchar(20) NOT NULL,
  `moduleDescription` varchar(4000) NOT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moduletbl`
--

INSERT INTO `moduletbl` (`moduleId`, `moduleName`, `projectId`, `moduleStartDate`, `moduleDeadline`, `moduleStatus`, `moduleDescription`) VALUES
(1, 'Module1', 31, '2020-02-01', '2020-02-04', 'inprogress', 'module1'),
(2, 'Login', 31, '2020-02-01', '2020-02-04', 'Ready to deploy', 'login module che aa'),
(3, 'login', 35, '2020-03-29', '2020-04-08', 'Deployed', 'Login for hotel'),
(4, 'forget password', 35, '2020-03-29', '2020-03-31', 'Deployed', 'Forget password for Hotel'),
(5, 'project View', 39, '2020-03-29', '2020-04-03', 'Ready to deploy', 'Project view in Tables'),
(6, 'project Details', 39, '2020-04-04', '2020-04-07', 'Ready to deploy', 'Create Project Details'),
(7, 'Issue Module', 39, '2020-03-29', '2020-04-01', 'inprogress', 'Create Module for issue'),
(9, 'Report Generation', 39, '2020-03-05', '2020-02-10', 'idle', 'Create Project Report Generation'),
(10, 'Login', 32, '2020-05-04', '2020-05-09', 'idle', 'login component'),
(11, 'login2', 32, '2020-05-01', '2020-05-21', 'idle', 'login2'),
(12, 'Login', 41, '2020-05-02', '2020-05-21', 'Ready to deploy', 'emailid and password is used in login module'),
(13, 'Profile', 41, '2020-05-05', '2020-05-07', 'Ready to deploy', 'profile module created for you'),
(21, 'Module1', 38, '2020-05-01', '2020-05-02', 'Ready to deploy', 'module1');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectannouncementtbl`
--

INSERT INTO `projectannouncementtbl` (`projectAnnouncementId`, `projectAnnouncementTitle`, `projectAnnouncementMessage`, `projectAnnouncementTime`, `projectId`) VALUES
(1, 'COVID-19', 'Office Will be closed till further notice', '2020-03-30 16:48:19', 35),
(3, 'DO YOUR DUE WORK BEFORE DEADLINE', 'Please complete your project work before deadline and submit it ', '2020-03-30 16:57:54', 38),
(5, 'today\'s submission', 'give me the project because today\'s is the submission', '2020-05-15 17:03:18', 39);

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
  `projectEndDate` date DEFAULT NULL,
  `projectDeadline` date NOT NULL,
  `projectReceiveDate` date NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `projectStatus` varchar(15) NOT NULL,
  `projectFile` varchar(4000) NOT NULL,
  PRIMARY KEY (`projectId`),
  KEY `clientId` (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projecttbl`
--

INSERT INTO `projecttbl` (`projectId`, `projectName`, `projectDescription`, `projectDomain`, `projectStartDate`, `projectEndDate`, `projectDeadline`, `projectReceiveDate`, `clientId`, `projectStatus`, `projectFile`) VALUES
(39, 'tempproject', 'abc', 'Static Website', '2020-03-25', '2020-04-10', '2020-04-20', '2020-03-21', 1, 'inprogress', 'projectFile-1584772725424.sql'),
(38, 'Clothes', 'varshil shah', 'Ecommerce', '2020-06-24', '2020-05-17', '2020-08-31', '2020-07-09', 3, 'Ready to deploy', 'projectFile-1584770474080.pdf'),
(37, 'Lemon', 'abc', 'Static Website', '2020-03-15', '2020-03-25', '2020-03-31', '2020-03-01', 9, 'cancelled', 'projectFile-1584770379341.cpp'),
(36, 'Glory', 'abc', 'Ecommerce', '2020-03-26', '2020-05-14', '2020-04-27', '2020-03-14', 2, 'Deployed', 'projectFile-1584769643013.sql'),
(34, 'Software For calculating Tax', 'Software for Calculating Tax', 'ERP System', '2020-03-20', '2020-04-08', '2020-04-13', '2015-03-11', 5, 'idle', 'projectFile-1584699243224.sql'),
(33, 'Shoping Store Website', 'Static Website for Online Shop', 'Static Website', '2020-03-20', '2020-04-08', '2020-04-13', '2015-03-11', 6, 'idle', 'projectFile-1584699086190.sql'),
(32, 'Food Delivery', 'Mobile Application for Food Delivery', 'Android App', '2020-03-20', '2020-04-08', '2020-04-13', '2018-03-11', 1, 'idle', 'projectFile-1584698944425.sql'),
(35, 'Hotel Booking', 'abc', 'Static Website', '2020-03-21', '2020-05-16', '2020-06-01', '2020-03-07', 4, 'Deployed', 'projectFile-1584765477168.docx'),
(31, 'Grofers ', 'Ecommerce WebApplication For selling Vegetables and Fruits online', 'Ecommerce', '2020-03-20', '2020-05-14', '2020-04-13', '2019-03-11', 2, 'Deployed', 'projectFile-1584698856897.sql'),
(41, 'Electronics', 'project description ', 'Static Website', '2020-05-06', '2020-05-16', '2020-05-31', '2020-05-01', 3, 'Deployed', 'Electronics-1589552156272.sql');

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
  `subModuleStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`subModuleId`),
  KEY `moduleId` (`moduleId`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submoduletbl`
--

INSERT INTO `submoduletbl` (`subModuleId`, `moduleId`, `subModuleName`, `subModuleDescription`, `subModuleStartDate`, `subModuleDeadline`, `subModuleStatus`) VALUES
(1, 1, 'sub1', 'model1', '2020-02-10', '2020-02-14', 'Ready to deploy'),
(2, 1, 'sub2', 'model2', '2020-02-24', '2020-02-26', 'Ready to deploy'),
(3, 2, 'validations', 'validation', '2020-02-01', '2020-02-02', 'Ready to deploy'),
(4, 2, 'forgot', 'forgot', '2020-02-01', '2020-02-05', 'Ready to deploy'),
(5, 1, 'login', 'login submodule', '2020-02-05', '2020-02-24', 'Ready to deploy'),
(7, 1, 'submodule', 'submodule', '2020-02-01', '2020-02-02', 'Ready to deploy'),
(8, 1, 'submodule1', 'submodule1', '2020-02-01', '2020-02-02', 'Ready to deploy'),
(9, 1, 'varshilSubmodule', 'varshil', '2020-02-01', '2020-02-02', 'Ready to deploy'),
(10, 1, 'hey', 'hey', '2020-02-23', '2020-02-24', 'Ready to deploy'),
(16, 5, 'Designing', 'Make Design for Project view module', '2020-03-29', '2020-03-31', 'Ready to deploy'),
(11, 3, 'Design For Login', 'Do Designing for login page', '2020-03-30', '2020-04-02', 'Ready to deploy'),
(12, 3, 'validation', 'Make perfect Validation for login page', '2020-03-03', '2020-03-04', 'Ready to deploy'),
(13, 3, 'Testing', 'Do Testing if its works fine or not', '2020-03-05', '2020-03-06', 'Ready to deploy'),
(14, 4, 'forgetPage Design', 'Do Designing for Forget password', '2020-03-29', '2020-03-30', 'Ready to deploy'),
(15, 4, 'validation', 'validate forget password', '2020-03-31', '2020-04-01', 'Ready to deploy'),
(17, 5, 'Coding', 'coding for project view', '2020-04-01', '2020-04-04', 'Ready to deploy'),
(18, 6, 'Designing', 'make design for project details', '2020-03-29', '2020-03-31', 'Ready to deploy'),
(19, 6, 'validation', 'validate design', '2020-03-30', '2020-03-31', 'Ready to deploy'),
(20, 7, 'Designing', 'make design', '2020-03-29', '2020-03-30', 'Ready to deploy'),
(21, 7, 'validation', 'validate design', '2020-03-31', '2020-04-03', 'idle'),
(22, 9, 'Design for Report Generation', 'Please Make Suitable design for Report generation', '2020-03-06', '2020-02-08', 'idle'),
(23, 12, 'forgotpassword', 'OTP generation in forgotpassword', '2020-05-01', '2020-05-05', 'Ready to deploy'),
(24, 12, 'routing ', 'routing is done in this module', '2020-05-13', '2020-05-19', 'Ready to deploy'),
(25, 12, 'validations', 'all validations done in this module', '2020-05-05', '2020-05-07', 'Ready to deploy'),
(26, 12, 'login design', 'do proper login design', '2020-04-07', '2020-04-13', 'Ready to deploy'),
(29, 13, 'view profile', 'this is the submodule for creating the view of profile', '2020-04-05', '2020-04-05', 'Ready to deploy'),
(28, 13, 'edit profile', 'this is the submodule for editing the profile', '2020-05-06', '2020-05-07', 'Ready to deploy'),
(32, 21, 'sub1', 'sub1', '2020-04-01', '2020-04-01', 'Ready to deploy'),
(33, 21, 'sub2', 'sub2', '2020-04-01', '2020-04-01', 'Ready to deploy');

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
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teammembertbl`
--

INSERT INTO `teammembertbl` (`teamMemberId`, `teamId`, `empId`) VALUES
(128, 40, 5),
(107, 38, 4),
(106, 38, 1),
(105, 37, 4),
(104, 37, 2),
(109, 37, 1),
(102, 36, 4),
(101, 36, 1),
(100, 35, 5),
(99, 35, 2),
(98, 35, 1),
(97, 34, 5),
(96, 34, 2),
(95, 34, 8),
(94, 34, 1),
(93, 33, 8),
(92, 33, 1),
(91, 33, 4),
(90, 32, 5),
(89, 32, 4),
(88, 31, 1),
(87, 31, 5),
(86, 31, 2),
(85, 31, 4),
(84, 30, 5),
(83, 30, 4),
(82, 30, 2),
(81, 30, 1),
(110, 32, 5),
(122, 40, 4),
(129, 40, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamtbl`
--

INSERT INTO `teamtbl` (`teamId`, `projectId`, `teamSize`, `leaderId`) VALUES
(38, 39, 2, 1),
(37, 38, 3, 1),
(36, 37, 2, 1),
(35, 36, 3, 1),
(34, 35, 4, 1),
(33, 34, 3, 4),
(32, 33, 3, 4),
(31, 32, 4, 4),
(30, 31, 4, 1),
(40, 41, 3, 1);

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
