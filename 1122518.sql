-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2016 at 01:44 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `1122518`
--
CREATE DATABASE `1122518` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `1122518`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `AMID` varchar(50) NOT NULL,
  `AMName` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`AMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AMID`, `AMName`, `Username`, `Password`) VALUES
('23', 'Satish', 'satish', 'satish');

-- --------------------------------------------------------

--
-- Table structure for table `assumptions`
--

CREATE TABLE IF NOT EXISTS `assumptions` (
  `Project_id` varchar(5) NOT NULL,
  `Assumptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_id` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL,
  PRIMARY KEY (`Assumptions_id`),
  KEY `Project_id` (`Project_id`),
  KEY `Employee_id` (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `baseline`
--

CREATE TABLE IF NOT EXISTS `baseline` (
  `Emp_id` varchar(50) NOT NULL,
  `Project_id` varchar(10) NOT NULL,
  `R_id` varchar(10) NOT NULL,
  `Description` text NOT NULL,
  `Pm_id` varchar(50) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(10) NOT NULL DEFAULT 'incomplete',
  `TypeID` varchar(10) NOT NULL,
  PRIMARY KEY (`Project_id`,`R_id`),
  KEY `Emp_id` (`Emp_id`),
  KEY `Project_id` (`Project_id`),
  KEY `R_id` (`R_id`),
  KEY `Timestamp` (`Timestamp`),
  KEY `Pm_id` (`Pm_id`),
  KEY `Type` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baseline`
--

INSERT INTO `baseline` (`Emp_id`, `Project_id`, `R_id`, `Description`, `Pm_id`, `Timestamp`, `Status`, `TypeID`) VALUES
('13BCE0166', 'S12', 'S12FR1', 'use login diagram(sequenece)', '13BCE0558', '2016-05-04 05:15:57', 'complete', '2'),
('13BCE0303', 'S12', 'S12FR10', 'add or modify(statechart)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCB0017', 'S12', 'S12FR11', 'Status diagram(state chart)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0558', 'S12', 'S12FR2', 'Approve and disapprove(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0042', 'S12', 'S12FR3', 'Status diagram(sequence)', '13BCE0558', '2016-05-04 06:07:02', 'complete', '2'),
('13BCE0567', 'S12', 'S12FR4', 'View reports diagram(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0166', 'S12', 'S12FR5', 'Add or modify(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12FR6', 'login diagrams(activity)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12FR7', 'approve disapprove(activity)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0558', 'S12', 'S12FR8', 'Admin functionalities', '13BCE0558', '2016-05-04 06:25:51', 'complete', '2'),
('13BCE0819', 'S12', 'S12FR9', 'approve disapprove statechart', '13BCE0558', '2016-05-03 17:45:50', 'complete', '2'),
('13BCE0567', 'S12', 'S12NFR1', 'Usability requirements', '13BCE0558', '2016-05-03 16:10:45', 'complete', '2'),
('13BCE0567', 'S12', 'S12NFR10', 'Privacy requirements', '13BCE0558', '2016-05-03 16:10:56', 'incomplete', '2'),
('13BCE0567', 'S12', 'S12NFR2', 'Security requirements\n', '13BCE0558', '2016-05-03 16:11:28', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR3', 'Password requirements \n', '13BCE0558', '2016-05-03 16:06:16', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR4', 'Inactivity timeouts', '13BCE0558', '2016-05-03 16:06:40', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR5', 'Response time\n', '13BCE0558', '2016-05-03 16:07:11', 'incomplete', '2'),
('13BCE0567', 'S12', 'S12NFR6', 'Throughput functions ', '13BCE0558', '2016-05-03 16:09:08', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR7', 'Storage requirements', '13BCE0558', '2016-05-03 16:09:38', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR8', 'Availability requirements', '13BCE0558', '2016-05-03 16:10:03', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR9', 'Portability requirements', '13BCE0558', '2016-05-03 16:10:24', 'incomplete', '2'),
('13BCE0456', 'S13', 'S13FR1', 'baseline', '13BCE0075', '2016-05-04 06:43:41', 'complete', '2'),
('13BCE0274', 'S13', 'S13FR10', 'project manager diagrams', '13BCE0075', '2016-05-04 06:12:58', 'complete', '2'),
('13BCE0075', 'S13', 'S13FR15', 'CODE FOR FUNCTION MAPPING', '13BCE0075', '2016-05-02 07:37:30', 'complete', '1'),
('13BCE0702', 'S13', 'S13FR2', 'baseline', '13BCE0075', '2016-05-04 06:38:40', 'complete', '2'),
('13BCE0231', 'S13', 'S13FR20', 'AUDIO', '13BCE0075', '2016-05-05 03:21:29', 'complete', '3'),
('13BCE0231', 'S13', 'S13FR21', 'VIDEO', '13BCE0075', '2016-05-05 03:22:03', 'complete', '4'),
('13BCE0325', 'S13', 'S13FR3', 'view details status', '13BCE0075', '2016-05-03 17:27:05', 'complete', '2'),
('13BCE0482', 'S13', 'S13FR4', 'add modify upload project diagrams', '13BCE0075', '2016-05-04 08:02:49', 'incomplete', '2'),
('13BCE0231', 'S13', 'S13FR5', 'upload requirement diagrams', '13BCE0075', '2016-05-04 05:10:29', 'complete', '2'),
('13BCE0651', 'S13', 'S13FR6', 'view requirements', '13BCE0075', '2016-05-02 13:14:08', 'complete', '2'),
('13BCE0291', 'S13', 'S13FR7', 'admin diagrams', '13BCE0075', '2016-05-02 16:56:52', 'complete', '2'),
('13BCE0609', 'S13', 'S13FR8', 'report generation', '13BCE0075', '2016-05-03 17:17:15', 'complete', '2'),
('13BCE0075', 'S13', 'S13FR9', 'function mapping', '13BCE0075', '2016-05-02 07:25:03', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR1', 'usability requirements', '13BCE0075', '2016-05-04 07:43:02', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR10', 'privacy requirements', '13BCE0075', '2016-05-04 07:42:51', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR2', 'login requirements', '13BCE0075', '2016-05-04 07:42:45', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR3', 'Password requirements', '13BCE0075', '2016-05-05 16:10:36', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR4', 'inactivity timeouts requirements', '13BCE0558', '2016-05-04 07:42:34', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR5', 'response time requirements', '13BCE0075', '2016-05-04 07:42:27', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR6', 'throughput requirements', '13BCE0075', '2016-05-04 07:42:21', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR7', 'storage requirements', '13BCE0075', '2016-05-04 07:42:14', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR8', 'availability requirements', '13BCE0075', '2016-05-04 07:42:07', 'complete', '2'),
('13BCE0702', 'S13', 'S13NFR9', 'portability requirements', '13BCE0075', '2016-05-04 07:41:57', 'complete', '2');

-- --------------------------------------------------------

--
-- Table structure for table `constraints`
--

CREATE TABLE IF NOT EXISTS `constraints` (
  `Project_id` varchar(5) NOT NULL,
  `Constraint_id` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL,
  PRIMARY KEY (`Constraint_id`),
  KEY `Project_id` (`Project_id`),
  KEY `Employee_id` (`Employee_id`),
  KEY `Constraint_id` (`Constraint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `defect`
--

CREATE TABLE IF NOT EXISTS `defect` (
  `Test_Id` int(5) NOT NULL,
  `Defect_Id` int(5) NOT NULL,
  `Programmer_Id` varchar(50) NOT NULL,
  `Open_Date` date NOT NULL,
  `Modified_Date` date DEFAULT NULL,
  `Status` enum('open','in-progress','closed') NOT NULL,
  `Defect_Description` varchar(200) NOT NULL,
  `Defect_Solution` varchar(200) DEFAULT NULL,
  `Upload_File` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Test_Id`,`Defect_Id`),
  KEY `Test_Id` (`Test_Id`),
  KEY `Programmer_Id` (`Programmer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diagram`
--

CREATE TABLE IF NOT EXISTS `diagram` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `empid` varchar(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'complete',
  PRIMARY KEY (`fileid`),
  KEY `pid` (`pid`),
  KEY `empid` (`empid`),
  KEY `empid_2` (`empid`),
  KEY `pid_2` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `diagram`
--

INSERT INTO `diagram` (`fileid`, `fileName`, `pid`, `image`, `hours`, `comment`, `date`, `empid`, `status`) VALUES
(89, 'class diagram', 'S13', 'check/images.jpg', 0, 'Comment:\r\n', '2016-05-03', '13BCE0482', 'complete'),
(92, 'class diagram', 'S12', 'check/class.jpg', 30, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(73, 'architecture diagram', 'S13', 'check/images.jpg', 30, 'Comment:\r\ncomplete', '2016-05-03', '13BCE0482', 'complete'),
(74, 'structure diagram', 'S13', 'check/struct.png', 50, 'Comment:\r\nComplete', '2016-05-03', '13BCE0482', 'complete'),
(93, 'ER diagram', 'S12', 'check/ER.png', 10, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(94, 'structure diagram', 'S12', 'check/Structure.png', 10, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(95, 'architecture diagram', 'S12', 'check/arch.jpg', 2, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(96, 'ER diagram', 'S13', 'check/ER.png', 3, 'Comment:\r\nComplete', '2016-05-04', '13BCE0482', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Emp_id` varchar(50) NOT NULL,
  `Emp_Name` varchar(20) NOT NULL,
  `Emp_Email` varchar(50) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Emp_Designation` varchar(20) NOT NULL,
  `login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Emp_id`),
  UNIQUE KEY `Emp_Email` (`Emp_Email`),
  UNIQUE KEY `User_Name` (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `Emp_Name`, `Emp_Email`, `User_Name`, `Password`, `Emp_Designation`, `login`, `logout`) VALUES
('13BCB0017', 'Amulya', 'amulya@software.com', '13BCB0017', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0042', 'Aparajita', 'apara@software.com', '13BCE0042', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0070', 'Anushka', 'anushka@software.com', '13BCE0070', 'welcome1', 'use case', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0075', 'Angad', 'nandwaniangad@gmail.com', '13BCE0075', 'welcome1', 'Project Manager', '2016-05-11 07:51:36', '2016-05-04 14:25:11'),
('13BCE0166', 'Vivek', 'Vivek@software.com', '13BCE0166', 'welcome1', 'functional', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0231', 'Krishna', 'krishna@software.com', '13BCE0231', 'welcome1', 'Upload requirments f', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0274', 'Pradheesh', 'pradheesh@software.com', '13BCE0274', 'welcome1', 'admin', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0291', 'Tanya', 'tanya@software.com', '13BCE0291', 'welcome1', 'PM LOGIN', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0303', 'Udita', 'Udita@software.com', '13BCE0303', 'welcome1', 'Project Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0325', 'Abhishek', 'abhishek@software.com', '13BCE0325', 'welcome1', 'VIEW Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0348', 'Harsh', 'harsh@software.com', '13BCE0348', 'welcome1', 'Project Management', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0359', 'Sanyukta', 'sanyukta@software.com', '13BCE0359', 'welcome1', 'Maintaing Versions', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0456', 'Ankit', 'ankit@software.com', '13BCE0456', 'welcome1', 'Baseline', '2016-05-03 20:30:07', '2016-01-21 09:00:00'),
('13BCE0473', 'Anan', 'anan@software.com', '13BCE0473', 'welcome1', 'Login', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0482', 'Parth', 'parth@software.com', '13BCE0482', 'welcome1', 'upload files for pro', '2016-01-21 10:00:00', '2016-05-03 14:00:16'),
('13BCE0558', 'Anya', 'anya@software.com', '13BCE0558', 'welcome1', 'Project Manager', '2016-05-06 11:14:45', '2016-05-06 11:20:42'),
('13BCE0567', 'Ashutosh', 'ashutosh@software.com', '13BCE0567', 'welcome1', 'Project Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0609', 'Nishant', 'nishant@software.com', '13BCE0609', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0651', 'Prakhar', 'prakhar@software.com', '13BCE0651', 'welcome1', 'View Requirments', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0702', 'Sukriti', 'sukriti@software.com', '13BCE0702', 'welcome1', 'filter in baseline', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0819', 'Shannon', 'shannon@software.com', '13BCE0819', 'welcome1', 'USE CASE', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0863', 'Mitesh', 'mitesh@software.com', '13BCE0863', 'welcome1', 'admin', '2016-01-21 10:00:00', '2016-01-21 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `fileid` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reqid` varchar(10) NOT NULL,
  `hours` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `timestamp` datetime NOT NULL,
  `empid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`fileid`, `filename`, `image`, `reqid`, `hours`, `comment`, `timestamp`, `empid`, `status`) VALUES
(1, 'sequenceDiagramS13FR8', 'check/2016-05-02 (2).png', 'S13FR8', 1, '', '2016-05-02 01:52:55', '13BCE0609', 'completed'),
(2, '2016-05-02 (1).pngS13FR8', 'check/2016-05-02 (1).png', 'S13FR8', 1, '', '2016-05-02 01:53:38', '13BCE0609', 'completed'),
(3, 'DataFlowDiagramS13FR8', 'check/2016-05-02 (5).png', 'S13FR8', 1, '', '2016-05-02 01:54:04', '13BCE0609', 'completed'),
(4, '2016-05-02 (6).pngS13FR8', 'check/2016-05-02 (6).png', 'S13FR8', 1, '', '2016-05-02 01:55:34', '13BCE0609', 'completed'),
(5, 'activityDiagramS13FR8', 'check/2016-05-02 (3).png', 'S13FR8', 1, '', '2016-05-02 01:56:15', '13BCE0609', 'completed'),
(6, 'stateChartS13FR8', 'check/2016-05-02 (4).png', 'S13FR8', 2, '', '2016-05-02 01:57:06', '13BCE0609', 'completed'),
(7, 'sequenceDiagramS13FR9', 'check/sequence.png', 'S13FR9', 1, '', '2016-05-02 01:58:07', '13BCE0075', 'completed'),
(8, 'stateChartS13FR9', 'check/statechart.png', 'S13FR9', 2, '', '2016-05-02 01:58:30', '13BCE0075', 'completed'),
(9, 'UseCaseDiagramS13FR9', 'check/usecase.png', 'S13FR9', 3, '', '2016-05-02 01:59:02', '13BCE0075', 'completed'),
(10, 'activityDiagramS13FR9', 'check/activity.png', 'S13FR9', 3, '', '2016-05-02 01:59:35', '13BCE0075', 'completed'),
(12, 'stateChartS12FR10', 'check/2016-05-02 (7).png', 'S12FR10', 3, '', '2016-05-02 02:05:30', '13BCE0303', 'completed'),
(13, '2016-05-02 (8).pngS12FR10', 'check/2016-05-02 (8).png', 'S12FR10', 1, 'State Chart (6.1)', '2016-05-02 02:07:29', '13BCE0303', 'completed'),
(14, 'DataFlowDiagramS13FR9', 'check/dataflow.png', 'S13FR9', 2, '', '2016-05-02 02:08:08', '13BCE0075', 'completed'),
(15, '2016-05-02 (9).pngS12FR10', 'check/2016-05-02 (9).png', 'S12FR10', 1, 'State Chart 6.2', '2016-05-02 02:08:25', '13BCE0303', 'completed'),
(16, '2016-05-02 (10).pngS12FR10', 'check/2016-05-02 (10).png', 'S12FR10', 1, 'State Chart 6.3', '2016-05-02 02:08:45', '13BCE0303', 'completed'),
(19, '2016-05-02 (11).pngS12FR11', 'check/2016-05-02 (11).png', 'S12FR11', 3, 'ER Diagram', '2016-05-02 02:18:56', '13BCB0017', 'completed'),
(20, 'stateChartS12FR11', 'check/2016-05-02 (7).png', 'S12FR11', 3, '', '2016-05-02 02:19:15', '13BCB0017', 'completed'),
(21, '2016-05-02 (8).pngS12FR11', 'check/2016-05-02 (8).png', 'S12FR11', 1, '6.1 State Chart', '2016-05-02 02:19:56', '13BCB0017', 'completed'),
(22, '2016-05-02 (9).pngS12FR11', 'check/2016-05-02 (9).png', 'S12FR11', 1, '6.2 State Chart', '2016-05-02 02:20:18', '13BCB0017', 'completed'),
(23, '2016-05-02 (10).pngS12FR11', 'check/2016-05-02 (10).png', 'S12FR11', 1, '6.3 State Chart', '2016-05-02 02:20:41', '13BCB0017', 'completed'),
(24, 'code.pngS13FR15', 'check/code.png', 'S13FR15', 2, '', '2016-05-02 02:37:30', '13BCE0075', 'completed'),
(25, 'sequenceDiagramS13FR1', 'check/sequencediagram13bceo456.JPG', 'S13FR1', 1, '', '2016-05-02 04:13:17', '13BCE0456', 'completed'),
(26, 'sequenceDiagramS13FR6', 'check/sequence dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:05:17', '13BCE0651', 'completed'),
(27, 'activityDiagramS13FR6', 'check/activity dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:08:57', '13BCE0651', 'completed'),
(28, 'stateChartS13FR6', 'check/state dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:11:06', '13BCE0651', 'completed'),
(29, 'sequence dig.JPGS13FR6', 'check/sequence dig.JPG', 'S13FR6', 1, '', '2016-05-02 08:14:07', '13BCE0651', 'completed'),
(30, 'activityDiagramS12FR4', 'check/activity dig.JPG', 'S12FR4', 2, '', '2016-05-02 08:16:31', '13BCE0567', 'completed'),
(31, '12400599_10207905949317256_5811925632026968898_n.jpgS13FR4', 'check/12400599_10207905949317256_5811925632026968898_n.jpg', 'S13FR4', 1, '123', '2016-05-02 11:38:01', '13BCE0482', 'completed'),
(32, 'jordan-belfort-quotes-wolf-wall-street12.jpgS13FR4', 'check/jordan-belfort-quotes-wolf-wall-street12.jpg', 'S13FR4', 1, '123', '2016-05-02 11:50:21', '13BCE0482', 'completed'),
(33, 'activityDiagramS13FR7', 'check/2.jpg', 'S13FR7', 1, '', '2016-05-02 11:56:51', '13BCE0291', 'completed'),
(37, 'sequenceDiagramS13FR10', 'check/seq.jpg', 'S13FR10', 1, '', '2016-05-03 02:24:54', '13BCE0274', 'completed'),
(40, 'jordan-belfort-quotes-wolf-wall-street.jpgS12NFR1', 'check/jordan-belfort-quotes-wolf-wall-street.jpg', 'S12NFR1', 3, '', '2016-05-03 10:49:04', '13BCE0567', 'completed'),
(41, 'stateChartS12NFR1', 'check/jordan-belfort-quotes-wolf-wall-street.jpg', 'S12NFR1', 3, '', '2016-05-03 10:50:08', '13BCE0567', 'completed'),
(44, 'stateChartS13FR1', 'check/statechartdiagram13bce0456.JPG', 'S13FR1', 1, '', '2016-05-03 12:01:14', '13BCE0456', 'completed'),
(45, 'dfd.JPGS13FR1', 'check/dfd.JPG', 'S13FR1', 1, '', '2016-05-03 12:09:19', '13BCE0456', 'completed'),
(47, 'activityDiagramS13FR3', 'check/activityDiagramStatus.png', 'S13FR3', 2, 'Activity Diagram for detailed Status', '2016-05-03 12:25:15', '13BCE0325', 'completed'),
(48, 'DataFlowDiagramS13FR3', 'check/dataflowdiagramStatus.png', 'S13FR3', 2, 'Data flow diagram for detailed status', '2016-05-03 12:25:48', '13BCE0325', 'completed'),
(49, 'sequenceDiagramS13FR3', 'check/sequence diagram.png', 'S13FR3', 2, 'Sequence diagram for detailed status', '2016-05-03 12:26:22', '13BCE0325', 'completed'),
(50, 'stateChartS13FR3', 'check/statechartdiagram.png', 'S13FR3', 2, 'state chart diagram for detailed status', '2016-05-03 12:27:05', '13BCE0325', 'completed'),
(51, 'stateChartS12FR9', 'check/statechart.png', 'S12FR9', 2, 'statechart for approve disapprove ', '2016-05-03 12:45:50', '13BCE0819', 'completed'),
(52, 'UseCaseDiagramS13FR1', 'check/UsecaseId12.JPG', 'S13FR1', 1, '', '2016-05-03 12:47:07', '13BCE0456', 'completed'),
(53, 'DataFlowDiagramS13FR2', 'check/DataFlowDiagram.png', 'S13FR2', 1, 'Data Flow Diagram for Baseline.', '2016-05-03 12:59:30', '13BCE0702', 'completed'),
(54, 'activityDiagramS13FR2', 'check/ActivityDiagram.png', 'S13FR2', 1, 'Activity Diagram for Baseline.', '2016-05-03 13:02:40', '13BCE0702', 'completed'),
(58, 'stateChartS13FR5', 'check/state.PNG', 'S13FR5', 2, 'SC Diagram for upload portal', '2016-05-04 00:02:33', '13BCE0231', 'completed'),
(59, 'sequenceDiagramS13FR5', 'check/Seq.PNG', 'S13FR5', 2, 'Sequence Diagram for upload portal', '2016-05-04 00:03:04', '13BCE0231', 'completed'),
(60, 'UseCaseDiagramS13FR5', 'check/use case.PNG', 'S13FR5', 2, 'Use case Diagram for upload portal', '2016-05-04 00:03:36', '13BCE0231', 'completed'),
(61, 'DataFlowDiagramS13FR5', 'check/DFD.PNG', 'S13FR5', 2, 'Data flow Diagram for upload portal', '2016-05-04 00:04:06', '13BCE0231', 'completed'),
(62, 'activityDiagramS13FR5', 'check/Act.PNG', 'S13FR5', 2, 'Activity Diagram for upload portal', '2016-05-04 00:06:55', '13BCE0231', 'completed'),
(63, 'DFD level0.PNGS13FR5', 'check/DFD level0.PNG', 'S13FR5', 2, 'DFD0 Diagram for upload portal', '2016-05-04 00:07:39', '13BCE0231', 'completed'),
(64, 'DFD level2.PNGS13FR5', 'check/DFD level2.PNG', 'S13FR5', 2, 'DFD2 Diagram for upload portal', '2016-05-04 00:08:52', '13BCE0231', 'completed'),
(65, 'DFD level2.2.PNGS13FR5', 'check/DFD level2.2.PNG', 'S13FR5', 2, 'DFD2.2 Diagram for upload portal', '2016-05-04 00:09:19', '13BCE0231', 'completed'),
(66, 'DFD level2.3.PNGS13FR5', 'check/DFD level2.3.PNG', 'S13FR5', 2, 'DFD2.3 Diagram for upload portal', '2016-05-04 00:10:29', '13BCE0231', 'completed'),
(67, 'activityDiagramS12FR1', 'check/Act.PNG', 'S12FR1', 2, 'act', '2016-05-04 00:13:43', '13BCE0166', 'completed'),
(68, 'DataFlowDiagramS12FR1', 'check/DFD.PNG', 'S12FR1', 2, 'dfd', '2016-05-04 00:14:26', '13BCE0166', 'completed'),
(69, 'sequenceDiagramS12FR1', 'check/Seq.PNG', 'S12FR1', 2, 'Seq', '2016-05-04 00:14:51', '13BCE0166', 'completed'),
(70, 'stateChartS12FR1', 'check/state.PNG', 'S12FR1', 2, 'State Chart', '2016-05-04 00:15:21', '13BCE0166', 'completed'),
(71, 'UseCaseDiagramS12FR1', 'check/use case.PNG', 'S12FR1', 2, 'UC', '2016-05-04 00:15:57', '13BCE0166', 'completed'),
(72, 'stateChartS12FR3', 'check/Capture.JPG', 'S12FR3', 1, '', '2016-05-04 01:07:02', '13BCE0042', 'completed'),
(73, 'stateChartS13FR10', 'check/state.png', 'S13FR10', 1, '', '2016-05-04 01:07:30', '13BCE0274', 'completed'),
(74, 'activityDiagramS13FR10', 'check/activity274.png', 'S13FR10', 1, '', '2016-05-04 01:09:47', '13BCE0274', 'completed'),
(75, 'DataFlowDiagramS13FR10', 'check/dfd.png', 'S13FR10', 1, '', '2016-05-04 01:10:56', '13BCE0274', 'completed'),
(76, 'sequenceDiagramS12FR2', 'check/Capture.JPG', 'S12FR2', 1, '', '2016-05-04 01:11:31', '13BCE0558', 'completed'),
(77, 'UseCaseDiagramS13FR10', 'check/usecase.png', 'S13FR10', 1, '', '2016-05-04 01:12:58', '13BCE0274', 'completed'),
(78, 'DataFlowDiagramS12FR8', 'check/Capture.JPG', 'S12FR8', 2, '', '2016-05-04 01:18:08', '13BCE0558', 'completed'),
(79, 'stateChartS12FR8', 'check/Capture.JPG', 'S12FR8', 2, '', '2016-05-04 01:20:26', '13BCE0558', 'completed'),
(80, 'activityDiagramS12FR8', 'check/Capture.JPG', 'S12FR8', 2, '', '2016-05-04 01:25:51', '13BCE0558', 'completed'),
(81, 'Handel Royal Fireworks - 07.mp3S13FR20', 'check/Handel Royal Fireworks - 07.mp3', 'S13FR20', 1, '', '2016-05-04 01:28:09', '13BCE0231', 'completed'),
(82, 'video.mp4', 'check/video.mp4', 'S13FR21', 2, '', '2016-05-04 01:30:03', '13BCE0231', 'completed'),
(83, 'Usability.pngS13NFR1', 'check/Usability.png', 'S13NFR1', 1, 'Usability non-functional requirement.', '2016-05-04 01:34:46', '13BCE0702', 'completed'),
(84, 'UseCaseDiagramS13FR2', 'check/Use-case.png', 'S13FR2', 1, 'Use case description for Baseline Filter.', '2016-05-04 01:38:40', '13BCE0702', 'completed'),
(85, 'login.pngS13NFR2', 'check/login.png', 'S13NFR2', 1, 'Login non-functional requirement.', '2016-05-04 01:51:41', '13BCE0702', 'completed'),
(86, 'response.pngS13NFR5', 'check/response.png', 'S13NFR5', 1, 'Response time non-functional requirement.', '2016-05-04 01:53:00', '13BCE0702', 'completed'),
(87, 'portability.jpgS13NFR9', 'check/portability.jpg', 'S13NFR9', 1, 'Portability non-functional requirement.', '2016-05-04 01:54:42', '13BCE0702', 'completed'),
(88, 'storage.pngS13NFR7', 'check/storage.png', 'S13NFR7', 1, 'Storage non-functional requirement.', '2016-05-04 01:57:42', '13BCE0702', 'completed'),
(89, 'availability.pngS13NFR8', 'check/availability.png', 'S13NFR8', 1, 'Availability non-functional requirement.', '2016-05-04 01:59:40', '13BCE0702', 'completed'),
(90, 'privacy.pngS13NFR10', 'check/privacy.png', 'S13NFR10', 1, 'Privacy non-functional requirement.', '2016-05-04 02:03:40', '13BCE0702', 'completed'),
(91, 'throughput.pngS13NFR6', 'check/throughput.png', 'S13NFR6', 1, 'Throughput non-functional requirement.', '2016-05-04 02:05:05', '13BCE0702', 'completed'),
(95, 'AlbumArt_{58F58414-F253-4BD1-9DE7-C0BB66A79050}_Large.jpgS13FR4', 'check/AlbumArt_{58F58414-F253-4BD1-9DE7-C0BB66A79050}_Large.jpg', 'S13FR4', 0, '', '2016-05-04 03:01:30', '13BCE0482', 'completed'),
(97, 'pass.pngS13NFR3', 'check/pass.png', 'S13NFR3', 1, 'Password non-functional requirement.', '2016-05-05 11:10:36', '13BCE0702', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `functional`
--

CREATE TABLE IF NOT EXISTS `functional` (
  `Project_id` varchar(10) NOT NULL,
  `FR_id` varchar(10) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` enum('pending','complete','approved','disapproved') NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Project_id`,`FR_id`),
  KEY `Project_id` (`Project_id`),
  KEY `Emp_id` (`Emp_id`),
  KEY `FR_id` (`FR_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functional`
--

INSERT INTO `functional` (`Project_id`, `FR_id`, `Emp_id`, `Type`, `Description`, `Status`, `Timestamp`) VALUES
('S12', 'S12FR1', '13BCE0166', 'Authentication', 'Use Login Diagrams(Sequrence)', 'complete', '2016-04-30 07:53:29'),
('S12', 'S12FR10', '13BCE0303', 'Legal/Regulatory', 'Add/MODIFY(state Chart)', 'complete', '2016-03-24 07:00:00'),
('S12', 'S12FR11', '13BCB0017', 'Audict Tracking', 'Status Diagrams(State Chart)', 'complete', '2016-03-02 07:00:00'),
('S12', 'S12FR2', '13BCE0558', 'Administrative Functions', 'Approve/Disapprove(Sequence)', 'complete', '2016-04-30 07:53:35'),
('S12', 'S12FR3', '13BCE0042', 'Audit Tracking', 'Status Diagrams(Sequence)', 'complete', '2016-04-30 07:53:42'),
('S12', 'S12FR4', '13BCE0567', 'Reporting Requirements', 'View Reports Digrams(Sequence)', 'complete', '2016-04-30 07:53:49'),
('S12', 'S12FR5', '13BCE0166', 'Legal or Regulatory', 'Add/Modify Diagrams(Sequence)', 'complete', '2016-04-30 07:53:54'),
('S12', 'S12FR6', '13BCE0348', 'Authentication', 'Login Diagrams(Activity)', 'complete', '2016-02-18 12:00:00'),
('S12', 'S12FR7', '13BCE0348', 'Administrative Functions', 'Approve/Disapprove(Activity)', 'complete', '2016-02-26 09:00:00'),
('S12', 'S12FR8', '13BCE0558', 'Administrative FUnctions', 'Admin Functionalities(Activity)', 'complete', '2016-02-20 09:00:00'),
('S12', 'S12FR9', '13BCE0819', 'Administrative Functions', 'Approve/Disapprove(State Chart)', 'complete', '2016-02-29 09:00:00'),
('S13', 'S13FR1', '13BCE0456', 'External Interface', 'Baseline', 'complete', '2016-03-30 07:00:00'),
('S13', 'S13FR10', '13BCE0274', 'Authorization levels', 'Project Manager DIagrams', 'pending', '2016-05-04 06:00:33'),
('S13', 'S13FR11', '13BCE0231', '', 'Audio requirements test', 'approved', '2016-05-03 17:01:36'),
('S13', 'S13FR15', '13BCE0075', 'Historical data', 'Code for function mapping', 'complete', '2016-05-02 07:14:40'),
('S13', 'S13FR2', '13BCE0702', 'External Interface', 'Baseline', 'complete', '2016-03-23 09:00:00'),
('S13', 'S13FR20', '13BCE0231', 'AUDIO', 'AUDIO', 'pending', '2016-05-04 05:28:48'),
('S13', 'S13FR21', '13BCE0231', 'VIDEO', 'VIDEO', 'pending', '2016-05-04 05:29:19'),
('S13', 'S13FR3', '13BCE0325', 'Audit Tracking', 'View Detailed Status', 'complete', '2016-03-30 07:00:00'),
('S13', 'S13FR4', '13BCE0482', 'Legal/Regulatory', 'Add/Modify(UPLOAD PROJECT DIAGRAMS)', 'complete', '2016-03-30 11:00:00'),
('S13', 'S13FR5', '13BCE0231', 'Legal/Regulatory', 'Upload DIagrams For Requirments', 'complete', '2016-03-31 11:00:00'),
('S13', 'S13FR6', '13BCE0651', 'Reporting Requirements', 'View Requirments', 'complete', '2016-03-16 09:00:00'),
('S13', 'S13FR7', '13BCE0291', 'Adminitrative Functions', 'Admin Diagrams', 'complete', '2016-03-23 12:00:00'),
('S13', 'S13FR8', '13BCE0609', 'Transcation/Corrections', 'Report Generastion', 'complete', '2016-03-17 09:00:00'),
('S13', 'S13FR9', '13BCE0075', 'Historical Data', 'Function Mapping', 'complete', '2016-03-23 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `interface`
--

CREATE TABLE IF NOT EXISTS `interface` (
  `Project_id` varchar(5) NOT NULL,
  `Interface_id` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL,
  PRIMARY KEY (`Interface_id`),
  KEY `Project_id` (`Project_id`),
  KEY `Employee_id` (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE IF NOT EXISTS `mapping` (
  `callername` varchar(20) NOT NULL,
  `comment1` varchar(40) NOT NULL,
  `calledname` varchar(20) NOT NULL,
  `comment2` varchar(40) NOT NULL,
  `pmpassed` varchar(30) NOT NULL,
  `fileid` varchar(20) NOT NULL,
  KEY `fileid` (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapping`
--

INSERT INTO `mapping` (`callername`, `comment1`, `calledname`, `comment2`, `pmpassed`, `fileid`) VALUES
('main', 'The main display\r\n                      ', 'ajaxfunction2', 'using ajax to display function called me', 'NOParameter', '24'),
('main', 'The main display\r\n                      ', 'ajaxfunction1', 'using ajax to display function caller me', 'NOParameter', '24'),
('Odd', 'Calculates odd\r\n                        ', 'Even', 'Calculates even\r\n                       ', 'Number', '31'),
('prime', 'calculate prime\r\n                       ', 'factorial', 'calculate factorial\r\n                   ', 'Number', '31');

-- --------------------------------------------------------

--
-- Table structure for table `non_functional`
--

CREATE TABLE IF NOT EXISTS `non_functional` (
  `Project_id` varchar(10) NOT NULL,
  `NFR_id` varchar(10) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` enum('pending','complete','approved','disapproved') NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subtype` text NOT NULL,
  PRIMARY KEY (`Project_id`,`NFR_id`),
  KEY `Project_id` (`Project_id`),
  KEY `NFR_id` (`NFR_id`),
  KEY `Emp_id` (`Emp_id`),
  KEY `NFR_id_2` (`NFR_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_functional`
--

INSERT INTO `non_functional` (`Project_id`, `NFR_id`, `Emp_id`, `Type`, `Description`, `Status`, `Timestamp`, `subtype`) VALUES
('S12', 'S12NFR1', '13BCE0567', 'Usability', '9.1.1	The system shall allow the users to access the system from the Internet using HTML or its derivative technologies like XML/CSS. The system uses a web browser as an interface. \r\n\r\n9.1.2	Online help will be available for the system in the form of sample project, video tutorial and Help document. Also the user shall have the option of clarifying the functionalities of the tools through mail id provided on the website.\r\n9.1.3	The end users will be able to able to adapt to the system with a minimum training of 1 hour. \r\n\r\n\r\n9.1.4	The employees and project managers shall be able to view the pages in English\r\n', 'complete', '2016-02-09 04:00:00', ''),
('S12', 'S12NFR10', '13BCE0567', '\r\nPrivacy', 'Employees and Project Managers shall be able to view and modify only the projects they are working on. \r\n9.7.2	The completed projects will be shifted to Baseline and would only be viewed and not modified.\r\n\r\n9.7.3	All the project content will be confidential and will not be available to general public without prior approval from Project Manager.\r\n9.7.4	Only Project Managers will have the option of viewing notifications about changes.', 'complete', '2016-04-30 06:51:41', ''),
('S12', 'S12NFR2', '13BCE0567', 'Security', '9.2.1.1	Employees and Project Managers will be provided access to the system after they are registered in the Project Management Tool \r\n\r\n9.2.1.2	 Employees and Project Managers will be logging into the system using their ID and password as registered under Project Management Tool. \r\n\r\n9.2.1.3	All users will have the option to change their current password whenever necessary. \r\n', 'complete', '2016-03-22 02:00:00', 'Login Requirements'),
('S12', 'S12NFR3', '13BCE0863', 'Security', '9.2.2.1	Passwords must have a minimum length of 8 characters\r\n9.2.2.2	Passwords must meet at least 3 out of the 4 requirements for quality: \r\no	at least 1 lower case letter \r\no	at least 1 upper case letter \r\no	at least 1 number \r\no	At least 1 special character (?, *, %) \r\n', 'complete', '2016-04-30 06:56:59', 'Password Requirements'),
('S12', 'S12NFR4', '13BCE0348', 'SEcurity', '9.2.3.1	System should timeout when there is no activity for ten minutes. ', 'complete', '2016-03-30 04:00:00', 'Inactivity Timeours'),
('S12', 'S12NFR5', '13BCE0863', 'Performance', '\r\n9.3.1.1 The response time will be less than 30 seconds for 95% requests made to the system. \r\n', 'complete', '2016-04-30 06:54:21', ''),
('S12', 'S12NFR6', '13BCE0567', ' Capacity', '\r\n9.4.1.1	The application shall be able to successfully handle 50 requests per hour. \r\n', 'complete', '2016-04-04 05:00:00', '9.4.1	Throughput '),
('S12', 'S12NFR7', '13BCE0863', 'Capacity', 'Hard disk space –  20 GB – Content ', 'complete', '2016-03-23 08:00:00', '9.4.2	Storage '),
('S12', 'S12NFR8', '13BCE0348', '9.5	Availability', '9.5.1.1	The system will be available on all days 24*7.', 'complete', '2016-04-12 08:00:00', '9.5.1	Hours of operation '),
('S12', 'S12NFR9', '13BCE0348', 'Portability', '9.6.1	The system will run on windows XP/Windows7/Windows 8/Windows 8.1/Windows 10', 'complete', '2016-02-01 03:00:00', ''),
('S13', 'S13NFR1', '13BCE0702', 'Usability', '9.1.1	The system shall allow the users to access the system from the Internet using HTML or its derivative technologies like XML/CSS. The system uses a web browser as an interface. \r\n\r\n9.1.2	Online help will be available for the system in the form of sample project, video tutorial and Help document. Also the user shall have the option of clarifying the functionalities of the tools through mail id provided on the website.\r\n9.1.3	The end users will be able to able to adapt to the system with a minimum training of 1 hour. \r\n\r\n\r\n9.1.4	The employees and project managers shall be able to view the pages in English\r\n', 'complete', '2016-02-09 05:00:00', ''),
('S13', 'S13NFR10', '13BCE0702', '\r\nPrivacy', 'Employees and Project Managers shall be able to view and modify only the projects they are working on. \r\n9.7.2	The completed projects will be shifted to Baseline and would only be viewed and not modified.\r\n\r\n9.7.3	All the project content will be confidential and will not be available to general public without prior approval from Project Manager.\r\n9.7.4	Only Project Managers will have the option of viewing notifications about changes.', 'complete', '2016-04-30 08:51:41', ''),
('S13', 'S13NFR2', '13BCE0702', 'Security', '9.2.1.1	Employees and Project Managers will be provided access to the system after they are registered in the Project Management Tool \r\n\r\n9.2.1.2	 Employees and Project Managers will be logging into the system using their ID and password as registered under Project Management Tool. \r\n\r\n9.2.1.3	All users will have the option to change their current password whenever necessary. \r\n', 'complete', '2016-03-22 03:00:00', 'Login Requirements'),
('S13', 'S13NFR3', '13BCE0702', 'Security', '9.2.2.1	Passwords must have a minimum length of 8 characters\r\n9.2.2.2	Passwords must meet at least 3 out of the 4 requirements for quality: \r\no	at least 1 lower case letter \r\no	at least 1 upper case letter \r\no	at least 1 number \r\no	At least 1 special character (?, *, %) \r\n', 'complete', '2016-04-30 08:56:59', 'Password Requirements'),
('S13', 'S13NFR4', '13BCE0702', 'SEcurity', '9.2.3.1	System should timeout when there is no activity for ten minutes. ', 'complete', '2016-03-30 06:00:00', 'Inactivity Timeours'),
('S13', 'S13NFR5', '13BCE0702', 'Performance', '\r\n9.3.1.1 The response time will be less than 30 seconds for 95% requests made to the system. \r\n', 'complete', '2016-04-30 08:54:21', ''),
('S13', 'S13NFR6', '13BCE0702', ' Capacity', '\r\n9.4.1.1	The application shall be able to successfully handle 50 requests per hour. \r\n', 'complete', '2016-04-04 07:00:00', '9.4.1	Throughput '),
('S13', 'S13NFR7', '13BCE0702', 'Capacity', 'Hard disk space –  20 GB – Content ', 'complete', '2016-03-23 09:00:00', '9.4.2	Storage '),
('S13', 'S13NFR8', '13BCE0702', '9.5	Availability', '9.5.1.1	The system will be available on all days 24*7.', 'complete', '2016-04-12 10:00:00', '9.5.1	Hours of operation '),
('S13', 'S13NFR9', '13BCE0702', 'Portability', '9.6.1	The system will run on windows XP/Windows7/Windows 8/Windows 8.1/Windows 10', 'complete', '2016-04-13 10:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `pm_emp`
--

CREATE TABLE IF NOT EXISTS `pm_emp` (
  `Emp_id` varchar(10) NOT NULL,
  `Pm_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Emp_id`,`Pm_id`),
  KEY `Emp_id` (`Emp_id`),
  KEY `Pm_id` (`Pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pm_emp`
--

INSERT INTO `pm_emp` (`Emp_id`, `Pm_id`) VALUES
('13BCB0017', '13BCE0558'),
('13BCE0042', '13BCE0558'),
('13BCE0070', '13BCE0558'),
('13BCE0166', '13BCE0558'),
('13BCE0231', '13BCE0075'),
('13BCE0274', '13BCE0075'),
('13BCE0291', '13BCE0075'),
('13BCE0303', '13BCE0558'),
('13BCE0325', '13BCE0075'),
('13BCE0348', '13BCE0558'),
('13BCE0359', '13BCE0075'),
('13BCE0456', '13BCE0075'),
('13BCE0473', '13BCE0558'),
('13BCE0482', '13BCE0075'),
('13BCE0567', '13BCE0558'),
('13BCE0609', '13BCE0075'),
('13BCE0651', '13BCE0075'),
('13BCE0702', '13BCE0075'),
('13BCE0819', '13BCE0558'),
('13BCE0863', '13BCE0558');

-- --------------------------------------------------------

--
-- Table structure for table `proj_task`
--

CREATE TABLE IF NOT EXISTS `proj_task` (
  `ProId` varchar(50) NOT NULL,
  `TaskId` varchar(50) NOT NULL,
  `TaskName` varchar(50) NOT NULL,
  `TaskDesc` varchar(100) NOT NULL,
  `TaskStartDate` date NOT NULL,
  `TaskEndDate` date NOT NULL,
  `Hours` int(11) NOT NULL,
  `Members` int(11) NOT NULL,
  `Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskId`),
  KEY `ProId` (`ProId`),
  KEY `ProId_2` (`ProId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `Sys_Id` varchar(5) NOT NULL,
  `Proj_Id` varchar(5) NOT NULL,
  `Proj_Name` varchar(50) NOT NULL,
  `Proj_Desc` text NOT NULL,
  `StartDate` datetime NOT NULL,
  `EnDate` datetime NOT NULL,
  `NoOfHrs` int(11) NOT NULL,
  `NoOfMembers` int(11) NOT NULL,
  `Status` enum('pending','complete') NOT NULL,
  PRIMARY KEY (`Proj_Id`),
  KEY `Sys_Id` (`Sys_Id`),
  KEY `Sys_Id_2` (`Sys_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Sys_Id`, `Proj_Id`, `Proj_Name`, `Proj_Desc`, `StartDate`, `EnDate`, `NoOfHrs`, `NoOfMembers`, `Status`) VALUES
('S1', 'S11', 'Project Management System', 'A Tool to create and Manage Projects with task assignment', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 10, 'pending'),
('S1', 'S12', 'Requirements Management System', 'A Tool to assign functional,nonfunctional and use case requirements ', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 11, 'pending'),
('S1', 'S13', 'Design Management System', 'A Tool to upload files for all set of projects and requirements ', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 11, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE IF NOT EXISTS `project_details` (
  `Project_id` varchar(10) NOT NULL,
  `Ref` text NOT NULL,
  `revision_history` text NOT NULL,
  `scope` text NOT NULL,
  KEY `Project_id` (`Project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`Project_id`, `Ref`, `revision_history`, `scope`) VALUES
('S11', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'System Creation\r\nProject Creation – Take project details and necessary team details as input and create a project with these inputs\r\nAssignment of TMs to projects. \r\nCreation of tasks for each project.   \r\nAssignment of tasks to TMs in a project. \r\nStatus view and upload - Check how much percentage of a particular task has been done.\r\nFile upload - Include option to upload necessary documents.  \r\nReviews and review status for all processes.  \r\nProject Closure - Close your project quickly and efficiently with required details.Project cost estimation analysis.\r\n'),
('S12', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'The user has the right to update and add new requirements.\r\nKeeping track of different versions of the requirements documents.\r\nProject manager has the rights to approve the requirements.\r\nFind out how much work is done in a particular period of time.\r\nEvery person involved in the process can view reports at each stage.\r\nThe user can see the requirements that are approved/ disapproved.\r\n'),
('S13', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'Online project registration.Employees can submit their reports online.Different versions of a document can be submitted, highlighting the updates.Project managers can track the status of the project and contribution of other team members.Admins will have view permission for all systems .Project Managers can delete files if required.Reports for completed projects can be generated by project managers.All completed project s can be viewed under the baseline.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `project_pm`
--

CREATE TABLE IF NOT EXISTS `project_pm` (
  `Proj_Id` varchar(10) NOT NULL,
  `Emp_Id` varchar(50) NOT NULL,
  PRIMARY KEY (`Emp_Id`,`Proj_Id`),
  KEY `Proj_Id` (`Proj_Id`),
  KEY `Emp_Id` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_pm`
--

INSERT INTO `project_pm` (`Proj_Id`, `Emp_Id`) VALUES
('S12', '13BCB0017'),
('S12', '13BCE0042'),
('S12', '13BCE0070'),
('S12', '13BCE0166'),
('S12', '13BCE0303'),
('S12', '13BCE0348'),
('S12', '13BCE0473'),
('S12', '13BCE0558'),
('S12', '13BCE0567'),
('S12', '13BCE0819'),
('S12', '13BCE0863'),
('S13', '13BCE0075'),
('S13', '13BCE0231'),
('S13', '13BCE0274'),
('S13', '13BCE0291'),
('S13', '13BCE0325'),
('S13', '13BCE0359'),
('S13', '13BCE0456'),
('S13', '13BCE0482'),
('S13', '13BCE0609'),
('S13', '13BCE0651'),
('S13', '13BCE0702');

-- --------------------------------------------------------

--
-- Table structure for table `project_task_cost`
--

CREATE TABLE IF NOT EXISTS `project_task_cost` (
  `PTC_TaskId` varchar(45) NOT NULL,
  `PTC_ActualStartDate` date NOT NULL,
  `PTC_ActualEndDate` date NOT NULL,
  `PTC_ActualTaskCost` varchar(45) DEFAULT NULL,
  `PTC_NoOfmembers` varchar(70) DEFAULT NULL,
  `PTC_NoOfHours` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`PTC_TaskId`),
  KEY `PTC_TaskId` (`PTC_TaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_testcase`
--

CREATE TABLE IF NOT EXISTS `project_testcase` (
  `Test_Id` int(5) NOT NULL,
  `Project_Id` varchar(5) NOT NULL,
  `Requirement_Id` varchar(5) NOT NULL,
  `Testcase_Id` int(5) NOT NULL,
  PRIMARY KEY (`Test_Id`),
  KEY `Project_Id` (`Project_Id`),
  KEY `Requirement_Id` (`Requirement_Id`),
  KEY `Testcase_Id` (`Testcase_Id`),
  KEY `Project_Id_2` (`Project_Id`),
  KEY `Requirement_Id_2` (`Requirement_Id`),
  KEY `Testcase_Id_2` (`Testcase_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prototype`
--

CREATE TABLE IF NOT EXISTS `prototype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PROJECT_ID` varchar(5) NOT NULL,
  `FILE_NAME` varchar(100) NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `FILE_TYPE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PROJECT_ID` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requirement_emp`
--

CREATE TABLE IF NOT EXISTS `requirement_emp` (
  `Project_Id` varchar(5) NOT NULL,
  `Requirement_Id` varchar(5) NOT NULL,
  `Tester_Id` varchar(50) NOT NULL,
  PRIMARY KEY (`Project_Id`,`Requirement_Id`,`Tester_Id`),
  KEY `Requirement_Id` (`Requirement_Id`),
  KEY `Tester_Id` (`Tester_Id`),
  KEY `Project_Id` (`Project_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `Project_id` varchar(10) NOT NULL,
  `R_id` varchar(10) NOT NULL,
  `Pm_id` varchar(50) NOT NULL,
  `Status` enum('approved','disapproved') NOT NULL,
  `Comments` text NOT NULL,
  PRIMARY KEY (`Project_id`,`R_id`),
  KEY `R_id` (`R_id`),
  KEY `Pm_id` (`Pm_id`),
  KEY `Project_id` (`Project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Project_id`, `R_id`, `Pm_id`, `Status`, `Comments`) VALUES
('S12', 'S12FR1', '13BCE0558', 'approved', ''),
('S12', 'S12FR10', '13BCE0558', 'approved', ''),
('S12', 'S12FR11', '13BCE0558', 'approved', ''),
('S12', 'S12FR2', '13BCE0558', 'approved', ''),
('S12', 'S12FR3', '13BCE0558', 'approved', ''),
('S12', 'S12FR4', '13BCE0558', 'approved', ''),
('S12', 'S12FR5', '13BCE0558', 'approved', ''),
('S12', 'S12FR6', '13BCE0558', 'approved', ''),
('S12', 'S12FR7', '13BCE0558', 'approved', ''),
('S12', 'S12FR8', '13BCE0558', 'approved', ''),
('S12', 'S12FR9', '13BCE0558', 'approved', ''),
('S12', 'S12NFR1', '13BCE0558', 'approved', ''),
('S12', 'S12NFR10', '13BCE0558', 'approved', ''),
('S12', 'S12NFR2', '13BCE0558', 'approved', ''),
('S12', 'S12NFR3', '13BCE0558', 'approved', ''),
('S12', 'S12NFR4', '13BCE0558', 'approved', ''),
('S12', 'S12NFR5', '13BCE0558', 'approved', ''),
('S12', 'S12NFR6', '13BCE0558', 'approved', ''),
('S12', 'S12NFR7', '13BCE0558', 'approved', ''),
('S12', 'S12NFR8', '13BCE0558', 'approved', ''),
('S12', 'S12NFR9', '13BCE0558', 'approved', ''),
('S13', 'S13FR1', '13BCE0075', 'approved', ''),
('S13', 'S13FR10', '13BCE0075', 'approved', ''),
('S13', 'S13FR15', '13BCE0075', 'approved', ''),
('S13', 'S13FR2', '13BCE0075', 'approved', ''),
('S13', 'S13FR20', '13BCE0075', 'approved', ''),
('S13', 'S13FR21', '13BCE0075', 'approved', ''),
('S13', 'S13FR3', '13BCE0075', 'approved', ''),
('S13', 'S13FR4', '13BCE0075', 'approved', ''),
('S13', 'S13FR5', '13BCE0075', 'approved', ''),
('S13', 'S13FR6', '13BCE0075', 'approved', ''),
('S13', 'S13FR7', '13BCE0075', 'approved', ''),
('S13', 'S13FR8', '13BCE0075', 'approved', ''),
('S13', 'S13FR9', '13BCE0075', 'approved', ''),
('S13', 'S13NFR1', '13BCE0075', 'approved', ''),
('S13', 'S13NFR10', '13BCE0075', 'approved', ''),
('S13', 'S13NFR2', '13BCE0075', 'approved', ''),
('S13', 'S13NFR3', '13BCE0075', 'approved', ''),
('S13', 'S13NFR4', '13BCE0075', 'approved', ''),
('S13', 'S13NFR5', '13BCE0075', 'approved', ''),
('S13', 'S13NFR6', '13BCE0075', 'approved', ''),
('S13', 'S13NFR7', '13BCE0075', 'approved', ''),
('S13', 'S13NFR8', '13BCE0075', 'approved', ''),
('S13', 'S13NFR9', '13BCE0075', 'approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `SM_SystemID` varchar(5) NOT NULL,
  `SM_SysName` varchar(50) NOT NULL,
  `SM_SysDesc` varchar(50) NOT NULL,
  PRIMARY KEY (`SM_SystemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`SM_SystemID`, `SM_SysName`, `SM_SysDesc`) VALUES
('S1', 'CSE325', 'Six  teams in Software Engineering Class working i');

-- --------------------------------------------------------

--
-- Table structure for table `task_employee`
--

CREATE TABLE IF NOT EXISTS `task_employee` (
  `Task_ID` varchar(50) NOT NULL,
  `Emp_Id` varchar(5) NOT NULL,
  PRIMARY KEY (`Task_ID`,`Emp_Id`),
  KEY `Task_ID` (`Task_ID`),
  KEY `Emp_Id` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testcase`
--

CREATE TABLE IF NOT EXISTS `testcase` (
  `Test_Id` int(5) NOT NULL,
  `Testcase_Description` varchar(200) NOT NULL,
  `Input` varchar(200) NOT NULL,
  `Expected_Output` varchar(200) NOT NULL,
  `Actual_Output` varchar(200) DEFAULT NULL,
  `Tester_Id` varchar(50) NOT NULL,
  `status` enum('open','success','failure','approved') NOT NULL,
  PRIMARY KEY (`Test_Id`),
  KEY `Test_Id` (`Test_Id`),
  KEY `Tester_Id` (`Tester_Id`),
  KEY `Tester_Id_2` (`Tester_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `typeid` varchar(10) NOT NULL,
  `typename` varchar(10) NOT NULL,
  PRIMARY KEY (`typeid`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `typename`) VALUES
('1', 'code'),
('2', 'image'),
('3', 'audio'),
('4', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `use_case`
--

CREATE TABLE IF NOT EXISTS `use_case` (
  `Project_id` varchar(5) NOT NULL,
  `UR_id` varchar(5) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `Preconditions` text NOT NULL,
  `Success_condition` text NOT NULL,
  `Fail_condition` text NOT NULL,
  `Usecase_diag` blob NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` text NOT NULL,
  `status` enum('pending','complete','approved','disapproved') NOT NULL,
  PRIMARY KEY (`Project_id`,`UR_id`),
  KEY `Project_id` (`Project_id`),
  KEY `UR_id` (`UR_id`),
  KEY `Emp_id` (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usecase_actors`
--

CREATE TABLE IF NOT EXISTS `usecase_actors` (
  `UR_id` varchar(5) NOT NULL,
  `Actors` text NOT NULL,
  PRIMARY KEY (`UR_id`),
  KEY `UR_id` (`UR_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assumptions`
--
ALTER TABLE `assumptions`
  ADD CONSTRAINT `assumptions_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `assumptions_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `baseline`
--
ALTER TABLE `baseline`
  ADD CONSTRAINT `baseline_ibfk_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `baseline_ibfk_2` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `baseline_ibfk_3` FOREIGN KEY (`R_id`) REFERENCES `status` (`R_id`),
  ADD CONSTRAINT `baseline_ibfk_4` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `baseline_ibfk_5` FOREIGN KEY (`TypeID`) REFERENCES `type` (`typeid`);

--
-- Constraints for table `constraints`
--
ALTER TABLE `constraints`
  ADD CONSTRAINT `constraints_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `constraints_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `defect`
--
ALTER TABLE `defect`
  ADD CONSTRAINT `defect_ibfk_1` FOREIGN KEY (`Test_Id`) REFERENCES `project_testcase` (`Test_Id`),
  ADD CONSTRAINT `defect_ibfk_2` FOREIGN KEY (`Programmer_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `functional`
--
ALTER TABLE `functional`
  ADD CONSTRAINT `functional_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `functional_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `interface`
--
ALTER TABLE `interface`
  ADD CONSTRAINT `interface_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `interface_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `non_functional`
--
ALTER TABLE `non_functional`
  ADD CONSTRAINT `non_functional_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `non_functional_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `pm_emp`
--
ALTER TABLE `pm_emp`
  ADD CONSTRAINT `pm_emp_ibfk_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `pm_emp_ibfk_2` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `proj_task`
--
ALTER TABLE `proj_task`
  ADD CONSTRAINT `proj_task_ibfk_1` FOREIGN KEY (`ProId`) REFERENCES `project` (`Proj_Id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Sys_Id`) REFERENCES `system` (`SM_SystemID`);

--
-- Constraints for table `project_pm`
--
ALTER TABLE `project_pm`
  ADD CONSTRAINT `project_pm_ibfk_1` FOREIGN KEY (`Proj_Id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `project_pm_ibfk_2` FOREIGN KEY (`Emp_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `project_task_cost`
--
ALTER TABLE `project_task_cost`
  ADD CONSTRAINT `project_task_cost_ibfk_1` FOREIGN KEY (`PTC_TaskId`) REFERENCES `proj_task` (`TaskId`);

--
-- Constraints for table `project_testcase`
--
ALTER TABLE `project_testcase`
  ADD CONSTRAINT `project_testcase_ibfk_1` FOREIGN KEY (`Project_Id`) REFERENCES `requirement_emp` (`Project_Id`),
  ADD CONSTRAINT `project_testcase_ibfk_2` FOREIGN KEY (`Requirement_Id`) REFERENCES `requirement_emp` (`Requirement_Id`);

--
-- Constraints for table `prototype`
--
ALTER TABLE `prototype`
  ADD CONSTRAINT `prototype_ibfk_1` FOREIGN KEY (`PROJECT_ID`) REFERENCES `project` (`Proj_Id`);

--
-- Constraints for table `requirement_emp`
--
ALTER TABLE `requirement_emp`
  ADD CONSTRAINT `requirement_emp_ibfk_1` FOREIGN KEY (`Project_Id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `requirement_emp_ibfk_2` FOREIGN KEY (`Requirement_Id`) REFERENCES `baseline` (`R_id`),
  ADD CONSTRAINT `requirement_emp_ibfk_3` FOREIGN KEY (`Tester_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `task_employee`
--
ALTER TABLE `task_employee`
  ADD CONSTRAINT `task_employee_ibfk_1` FOREIGN KEY (`Task_ID`) REFERENCES `proj_task` (`TaskId`),
  ADD CONSTRAINT `task_employee_ibfk_2` FOREIGN KEY (`Emp_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `testcase`
--
ALTER TABLE `testcase`
  ADD CONSTRAINT `testcase_ibfk_1` FOREIGN KEY (`Test_Id`) REFERENCES `project_testcase` (`Test_Id`),
  ADD CONSTRAINT `testcase_ibfk_2` FOREIGN KEY (`Tester_Id`) REFERENCES `requirement_emp` (`Tester_Id`);

--
-- Constraints for table `use_case`
--
ALTER TABLE `use_case`
  ADD CONSTRAINT `use_case_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `use_case_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);
--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('utf8mb4', 'utf8mb4_general_ci', 'UTF-8 Unicode', 4),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('utf16', 'utf16_general_ci', 'UTF-16 Unicode', 4),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('utf32', 'utf32_general_ci', 'UTF-32 Unicode', 4),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('cp1250_polish_ci', 'cp1250', 99, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('utf8_sinhala_ci', 'utf8', 211, '', 'Yes', 8),
('utf8_general_mysql500_ci', 'utf8', 223, '', 'Yes', 1),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('ucs2_sinhala_ci', 'ucs2', 147, '', 'Yes', 8),
('ucs2_general_mysql500_ci', 'ucs2', 159, '', 'Yes', 1),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('utf8mb4_general_ci', 'utf8mb4', 45, 'Yes', 'Yes', 1),
('utf8mb4_bin', 'utf8mb4', 46, '', 'Yes', 1),
('utf8mb4_unicode_ci', 'utf8mb4', 224, '', 'Yes', 8),
('utf8mb4_icelandic_ci', 'utf8mb4', 225, '', 'Yes', 8),
('utf8mb4_latvian_ci', 'utf8mb4', 226, '', 'Yes', 8),
('utf8mb4_romanian_ci', 'utf8mb4', 227, '', 'Yes', 8),
('utf8mb4_slovenian_ci', 'utf8mb4', 228, '', 'Yes', 8),
('utf8mb4_polish_ci', 'utf8mb4', 229, '', 'Yes', 8),
('utf8mb4_estonian_ci', 'utf8mb4', 230, '', 'Yes', 8),
('utf8mb4_spanish_ci', 'utf8mb4', 231, '', 'Yes', 8),
('utf8mb4_swedish_ci', 'utf8mb4', 232, '', 'Yes', 8),
('utf8mb4_turkish_ci', 'utf8mb4', 233, '', 'Yes', 8),
('utf8mb4_czech_ci', 'utf8mb4', 234, '', 'Yes', 8),
('utf8mb4_danish_ci', 'utf8mb4', 235, '', 'Yes', 8),
('utf8mb4_lithuanian_ci', 'utf8mb4', 236, '', 'Yes', 8),
('utf8mb4_slovak_ci', 'utf8mb4', 237, '', 'Yes', 8),
('utf8mb4_spanish2_ci', 'utf8mb4', 238, '', 'Yes', 8),
('utf8mb4_roman_ci', 'utf8mb4', 239, '', 'Yes', 8),
('utf8mb4_persian_ci', 'utf8mb4', 240, '', 'Yes', 8),
('utf8mb4_esperanto_ci', 'utf8mb4', 241, '', 'Yes', 8),
('utf8mb4_hungarian_ci', 'utf8mb4', 242, '', 'Yes', 8),
('utf8mb4_sinhala_ci', 'utf8mb4', 243, '', 'Yes', 8),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('utf16_general_ci', 'utf16', 54, 'Yes', 'Yes', 1),
('utf16_bin', 'utf16', 55, '', 'Yes', 1),
('utf16_unicode_ci', 'utf16', 101, '', 'Yes', 8),
('utf16_icelandic_ci', 'utf16', 102, '', 'Yes', 8),
('utf16_latvian_ci', 'utf16', 103, '', 'Yes', 8),
('utf16_romanian_ci', 'utf16', 104, '', 'Yes', 8),
('utf16_slovenian_ci', 'utf16', 105, '', 'Yes', 8),
('utf16_polish_ci', 'utf16', 106, '', 'Yes', 8),
('utf16_estonian_ci', 'utf16', 107, '', 'Yes', 8),
('utf16_spanish_ci', 'utf16', 108, '', 'Yes', 8),
('utf16_swedish_ci', 'utf16', 109, '', 'Yes', 8),
('utf16_turkish_ci', 'utf16', 110, '', 'Yes', 8),
('utf16_czech_ci', 'utf16', 111, '', 'Yes', 8),
('utf16_danish_ci', 'utf16', 112, '', 'Yes', 8),
('utf16_lithuanian_ci', 'utf16', 113, '', 'Yes', 8),
('utf16_slovak_ci', 'utf16', 114, '', 'Yes', 8),
('utf16_spanish2_ci', 'utf16', 115, '', 'Yes', 8),
('utf16_roman_ci', 'utf16', 116, '', 'Yes', 8),
('utf16_persian_ci', 'utf16', 117, '', 'Yes', 8),
('utf16_esperanto_ci', 'utf16', 118, '', 'Yes', 8),
('utf16_hungarian_ci', 'utf16', 119, '', 'Yes', 8),
('utf16_sinhala_ci', 'utf16', 120, '', 'Yes', 8),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('utf32_general_ci', 'utf32', 60, 'Yes', 'Yes', 1),
('utf32_bin', 'utf32', 61, '', 'Yes', 1),
('utf32_unicode_ci', 'utf32', 160, '', 'Yes', 8),
('utf32_icelandic_ci', 'utf32', 161, '', 'Yes', 8),
('utf32_latvian_ci', 'utf32', 162, '', 'Yes', 8),
('utf32_romanian_ci', 'utf32', 163, '', 'Yes', 8),
('utf32_slovenian_ci', 'utf32', 164, '', 'Yes', 8),
('utf32_polish_ci', 'utf32', 165, '', 'Yes', 8),
('utf32_estonian_ci', 'utf32', 166, '', 'Yes', 8),
('utf32_spanish_ci', 'utf32', 167, '', 'Yes', 8),
('utf32_swedish_ci', 'utf32', 168, '', 'Yes', 8),
('utf32_turkish_ci', 'utf32', 169, '', 'Yes', 8),
('utf32_czech_ci', 'utf32', 170, '', 'Yes', 8),
('utf32_danish_ci', 'utf32', 171, '', 'Yes', 8),
('utf32_lithuanian_ci', 'utf32', 172, '', 'Yes', 8),
('utf32_slovak_ci', 'utf32', 173, '', 'Yes', 8),
('utf32_spanish2_ci', 'utf32', 174, '', 'Yes', 8),
('utf32_roman_ci', 'utf32', 175, '', 'Yes', 8),
('utf32_persian_ci', 'utf32', 176, '', 'Yes', 8),
('utf32_esperanto_ci', 'utf32', 177, '', 'Yes', 8),
('utf32_hungarian_ci', 'utf32', 178, '', 'Yes', 8),
('utf32_sinhala_ci', 'utf32', 179, '', 'Yes', 8),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('cp1250_polish_ci', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('utf8_sinhala_ci', 'utf8'),
('utf8_general_mysql500_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('ucs2_sinhala_ci', 'ucs2'),
('ucs2_general_mysql500_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('utf8mb4_general_ci', 'utf8mb4'),
('utf8mb4_bin', 'utf8mb4'),
('utf8mb4_unicode_ci', 'utf8mb4'),
('utf8mb4_icelandic_ci', 'utf8mb4'),
('utf8mb4_latvian_ci', 'utf8mb4'),
('utf8mb4_romanian_ci', 'utf8mb4'),
('utf8mb4_slovenian_ci', 'utf8mb4'),
('utf8mb4_polish_ci', 'utf8mb4'),
('utf8mb4_estonian_ci', 'utf8mb4'),
('utf8mb4_spanish_ci', 'utf8mb4'),
('utf8mb4_swedish_ci', 'utf8mb4'),
('utf8mb4_turkish_ci', 'utf8mb4'),
('utf8mb4_czech_ci', 'utf8mb4'),
('utf8mb4_danish_ci', 'utf8mb4'),
('utf8mb4_lithuanian_ci', 'utf8mb4'),
('utf8mb4_slovak_ci', 'utf8mb4'),
('utf8mb4_spanish2_ci', 'utf8mb4'),
('utf8mb4_roman_ci', 'utf8mb4'),
('utf8mb4_persian_ci', 'utf8mb4'),
('utf8mb4_esperanto_ci', 'utf8mb4'),
('utf8mb4_hungarian_ci', 'utf8mb4'),
('utf8mb4_sinhala_ci', 'utf8mb4'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('utf16_general_ci', 'utf16'),
('utf16_bin', 'utf16'),
('utf16_unicode_ci', 'utf16'),
('utf16_icelandic_ci', 'utf16'),
('utf16_latvian_ci', 'utf16'),
('utf16_romanian_ci', 'utf16'),
('utf16_slovenian_ci', 'utf16'),
('utf16_polish_ci', 'utf16'),
('utf16_estonian_ci', 'utf16'),
('utf16_spanish_ci', 'utf16'),
('utf16_swedish_ci', 'utf16'),
('utf16_turkish_ci', 'utf16'),
('utf16_czech_ci', 'utf16'),
('utf16_danish_ci', 'utf16'),
('utf16_lithuanian_ci', 'utf16'),
('utf16_slovak_ci', 'utf16'),
('utf16_spanish2_ci', 'utf16'),
('utf16_roman_ci', 'utf16'),
('utf16_persian_ci', 'utf16'),
('utf16_esperanto_ci', 'utf16'),
('utf16_hungarian_ci', 'utf16'),
('utf16_sinhala_ci', 'utf16'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('utf32_general_ci', 'utf32'),
('utf32_bin', 'utf32'),
('utf32_unicode_ci', 'utf32'),
('utf32_icelandic_ci', 'utf32'),
('utf32_latvian_ci', 'utf32'),
('utf32_romanian_ci', 'utf32'),
('utf32_slovenian_ci', 'utf32'),
('utf32_polish_ci', 'utf32'),
('utf32_estonian_ci', 'utf32'),
('utf32_spanish_ci', 'utf32'),
('utf32_swedish_ci', 'utf32'),
('utf32_turkish_ci', 'utf32'),
('utf32_czech_ci', 'utf32'),
('utf32_danish_ci', 'utf32'),
('utf32_lithuanian_ci', 'utf32'),
('utf32_slovak_ci', 'utf32'),
('utf32_spanish2_ci', 'utf32'),
('utf32_roman_ci', 'utf32'),
('utf32_persian_ci', 'utf32'),
('utf32_esperanto_ci', 'utf32'),
('utf32_hungarian_ci', 'utf32'),
('utf32_sinhala_ci', 'utf32'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(27)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'ENGINE', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'SUPPORT', 2, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'COMMENT', 3, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'TRANSACTIONS', 4, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'XA', 5, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'SAVEPOINTS', 6, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_CATALOG', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'DEFINER', 4, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'TIME_ZONE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_BODY', 6, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_DEFINITION', 7, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_TYPE', 8, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EXECUTE_AT', 9, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'INTERVAL_VALUE', 10, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'INTERVAL_FIELD', 11, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'SQL_MODE', 12, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'STARTS', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ENDS', 14, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'STATUS', 15, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ON_COMPLETION', 16, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'CREATED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'LAST_ALTERED', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'LAST_EXECUTED', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_COMMENT', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ORIGINATOR', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'CHARACTER_SET_CLIENT', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'COLLATION_CONNECTION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'DATABASE_COLLATION', 24, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_NAME', 2, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_TYPE', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLESPACE_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_CATALOG', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_SCHEMA', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_NAME', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LOGFILE_GROUP_NAME', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LOGFILE_GROUP_NUMBER', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'ENGINE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FULLTEXT_KEYS', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DELETED_ROWS', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'UPDATE_COUNT', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FREE_EXTENTS', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TOTAL_EXTENTS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'EXTENT_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'INITIAL_SIZE', 17, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'MAXIMUM_SIZE', 18, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'AUTOEXTEND_SIZE', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CREATION_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LAST_UPDATE_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LAST_ACCESS_TIME', 22, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'RECOVER_TIME', 23, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TRANSACTION_COUNTER', 24, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'VERSION', 25, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'ROW_FORMAT', 26, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_ROWS', 27, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'AVG_ROW_LENGTH', 28, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DATA_LENGTH', 29, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'MAX_DATA_LENGTH', 30, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'INDEX_LENGTH', 31, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DATA_FREE', 32, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CREATE_TIME', 33, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'UPDATE_TIME', 34, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CHECK_TIME', 35, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CHECKSUM', 36, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'STATUS', 37, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'EXTRA', 38, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'ORDINAL_POSITION', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'PARAMETER_MODE', 5, NULL, 'YES', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'PARAMETER_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'DATA_TYPE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_MAXIMUM_LENGTH', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_OCTET_LENGTH', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'NUMERIC_PRECISION', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'NUMERIC_SCALE', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_SET_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'COLLATION_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'DTD_IDENTIFIER', 14, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'ROUTINE_TYPE', 15, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_NAME', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_ORDINAL_POSITION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_METHOD', 8, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_METHOD', 9, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_EXPRESSION', 10, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_EXPRESSION', 11, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_DESCRIPTION', 12, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_ROWS', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'AVG_ROW_LENGTH', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'DATA_LENGTH', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'MAX_DATA_LENGTH', 16, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'INDEX_LENGTH', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'DATA_FREE', 18, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CREATE_TIME', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'UPDATE_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CHECK_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CHECKSUM', 22, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_COMMENT', 23, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'NODEGROUP', 24, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLESPACE_NAME', 25, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_VERSION', 2, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_STATUS', 3, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_TYPE', 4, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_TYPE_VERSION', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY_VERSION', 7, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_AUTHOR', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_DESCRIPTION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LICENSE', 10, NULL, 'YES', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'LOAD_OPTION', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(7)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', 4, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', 9, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DATA_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_MAXIMUM_LENGTH', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_OCTET_LENGTH', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'NUMERIC_PRECISION', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'NUMERIC_SCALE', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_SET_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'COLLATION_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 13, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 14, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 15, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 16, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 17, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 18, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 19, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_PATH', 21, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 22, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CREATED', 23, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'LAST_ALTERED', 24, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_MODE', 25, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 26, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DEFINER', 27, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_SET_CLIENT', 28, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'COLLATION_CONNECTION', 29, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DATABASE_COLLATION', 30, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_COMMENT', 16, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'ENGINE', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_TYPE', 3, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'LOGFILE_GROUP_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'EXTENT_SIZE', 5, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'AUTOEXTEND_SIZE', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'MAXIMUM_SIZE', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'NODEGROUP_ID', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_COMMENT', 9, NULL, 'YES', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'DEFINER', 19, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'CHARACTER_SET_CLIENT', 20, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'COLLATION_CONNECTION', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'DATABASE_COLLATION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'CHARACTER_SET_CLIENT', 9, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'COLLATION_CONNECTION', 10, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'BLOCK_ID', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'SPACE', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_NUMBER', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_TYPE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FLUSH_TYPE', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FIX_COUNT', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IS_HASHED', 8, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'NEWEST_MODIFICATION', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'OLDEST_MODIFICATION', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'ACCESS_TIME', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'TABLE_NAME', 12, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'INDEX_NAME', 13, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'NUMBER_RECORDS', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'DATA_SIZE', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'COMPRESSED_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_STATE', 17, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IO_FIX', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IS_OLD', 19, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FREE_PAGE_CLOCK', 20, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_id', 1, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_state', 2, '', 'NO', 'varchar', 13, 39, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(13)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_started', 3, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_requested_lock_id', 4, NULL, 'YES', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_wait_started', 5, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_weight', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_mysql_thread_id', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_query', 8, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_operation_state', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_tables_in_use', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_tables_locked', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_lock_structs', 12, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_lock_memory_bytes', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_rows_locked', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_rows_modified', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_concurrency_tickets', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_isolation_level', 17, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_unique_checks', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_foreign_key_checks', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_last_foreign_key_error', 20, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_adaptive_hash_latched', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_adaptive_hash_timeout', 22, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'POOL_SIZE', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'FREE_BUFFERS', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'DATABASE_PAGES', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'OLD_DATABASE_PAGES', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'MODIFIED_DATABASE_PAGES', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_DECOMPRESS', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_READS', 8, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LRU', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LIST', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_NOT_MADE_YOUNG', 12, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG_RATE', 13, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_NOT_YOUNG_RATE', 14, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_CREATED', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_WRITTEN', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_READ_RATE', 18, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_CREATE_RATE', 19, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_WRITTEN_RATE', 20, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_GET', 21, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'HIT_RATE', 22, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'YOUNG_MAKE_PER_THOUSAND_GETS', 23, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NOT_YOUNG_MAKE_PER_THOUSAND_GETS', 24, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ_AHEAD', 25, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_READ_AHEAD_EVICTED', 26, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_RATE', 27, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_EVICTED_RATE', 28, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'LRU_IO_TOTAL', 29, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'LRU_IO_CURRENT', 30, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_TOTAL', 31, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_CURRENT', 32, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'requesting_trx_id', 1, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'requested_lock_id', 2, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'blocking_trx_id', 3, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'blocking_lock_id', 4, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'buffer_pool_instance', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'pages_used', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'pages_free', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'relocation_ops', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'relocation_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_ops', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_ops_ok', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_time', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'uncompress_ops', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'uncompress_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_id', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_trx_id', 2, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_mode', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_type', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_table', 5, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_index', 6, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_space', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_page', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_rec', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_data', 10, NULL, 'YES', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'buffer_pool_instance', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'pages_used', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'pages_free', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'relocation_ops', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'relocation_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_ops', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_ops_ok', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_time', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'uncompress_ops', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'uncompress_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'LRU_POSITION', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'SPACE', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'PAGE_NUMBER', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'PAGE_TYPE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FLUSH_TYPE', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FIX_COUNT', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IS_HASHED', 8, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'NEWEST_MODIFICATION', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'OLDEST_MODIFICATION', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'ACCESS_TIME', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'TABLE_NAME', 12, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'INDEX_NAME', 13, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'NUMBER_RECORDS', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'DATA_SIZE', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'COMPRESSED_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'COMPRESSED', 17, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IO_FIX', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IS_OLD', 19, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FREE_PAGE_CLOCK', 20, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', '1122518', 'admin', 'AMID', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'admin', 'AMName', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'admin', 'Username', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'admin', 'Password', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'Project_id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'Assumptions_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'Employee_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'Description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'LastModified', 5, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'assumptions', 'Minutes', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Emp_id', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Project_id', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'R_id', 3, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Pm_id', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', 'MUL', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'Status', 7, 'incomplete', 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'baseline', 'TypeID', 8, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Project_id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Constraint_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Employee_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Type', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Description', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Status', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'LastModified', 7, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'constraints', 'Minutes', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Test_Id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Defect_Id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Programmer_Id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Open_Date', 4, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Modified_Date', 5, NULL, 'YES', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Status', 6, NULL, 'NO', 'enum', 11, 11, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''open'',''in-progress'',''closed'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Defect_Description', 7, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Defect_Solution', 8, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'defect', 'Upload_File', 9, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'fileid', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'fileName', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'pid', 3, NULL, 'NO', 'varchar', 11, 33, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(11)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'image', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'hours', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'comment', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'date', 7, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'empid', 8, NULL, 'NO', 'varchar', 11, 33, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(11)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'diagram', 'status', 9, 'complete', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'Emp_id', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'Emp_Name', 2, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'Emp_Email', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'UNI', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'User_Name', 4, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'UNI', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'Password', 5, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'Emp_Designation', 6, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'login', 7, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'employee', 'logout', 8, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'fileid', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'filename', 2, NULL, 'NO', 'varchar', 1000, 1000, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(1000)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'image', 3, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'reqid', 4, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'hours', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'comment', 6, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'timestamp', 7, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'empid', 8, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'file', 'status', 9, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Project_id', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'FR_id', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Emp_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Type', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Description', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Status', 6, NULL, 'NO', 'enum', 11, 11, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''pending'',''complete'',''approved'',''disapproved'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'functional', 'Timestamp', 7, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Project_id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Interface_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Employee_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Type', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Description', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Status', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'LastModified', 7, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'interface', 'Minutes', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'callername', 1, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'comment1', 2, NULL, 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(40)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'calledname', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'comment2', 4, NULL, 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(40)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'pmpassed', 5, NULL, 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'mapping', 'fileid', 6, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Project_id', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'NFR_id', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Emp_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Type', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Description', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Status', 6, NULL, 'NO', 'enum', 11, 11, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''pending'',''complete'',''approved'',''disapproved'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'Timestamp', 7, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'non_functional', 'subtype', 8, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'pm_emp', 'Emp_id', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'pm_emp', 'Pm_id', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'ProId', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'TaskId', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'TaskName', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'TaskDesc', 4, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'TaskStartDate', 5, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'TaskEndDate', 6, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'Hours', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'Members', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'proj_task', 'Status', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'Sys_Id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'Proj_Id', 2, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'Proj_Name', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'Proj_Desc', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
('def', '1122518', 'project', 'StartDate', 5, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'EnDate', 6, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'NoOfHrs', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'NoOfMembers', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project', 'Status', 9, NULL, 'NO', 'enum', 8, 8, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''pending'',''complete'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_details', 'Project_id', 1, NULL, 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_details', 'Ref', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_details', 'revision_history', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_details', 'scope', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_pm', 'Proj_Id', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_pm', 'Emp_Id', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_TaskId', 1, NULL, 'NO', 'varchar', 45, 45, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(45)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_ActualStartDate', 2, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_ActualEndDate', 3, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_ActualTaskCost', 4, NULL, 'YES', 'varchar', 45, 45, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_NoOfmembers', 5, NULL, 'YES', 'varchar', 70, 70, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(70)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_task_cost', 'PTC_NoOfHours', 6, NULL, 'YES', 'varchar', 70, 70, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(70)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_testcase', 'Test_Id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_testcase', 'Project_Id', 2, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_testcase', 'Requirement_Id', 3, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'project_testcase', 'Testcase_Id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'ID', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'USER_ID', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'PROJECT_ID', 3, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'FILE_NAME', 4, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'FILE_SIZE', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'prototype', 'FILE_TYPE', 6, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'requirement_emp', 'Project_Id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'requirement_emp', 'Requirement_Id', 2, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'requirement_emp', 'Tester_Id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'status', 'Project_id', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'status', 'R_id', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'status', 'Pm_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'status', 'Status', 4, NULL, 'NO', 'enum', 11, 11, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''approved'',''disapproved'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'status', 'Comments', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'system', 'SM_SystemID', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'system', 'SM_SysName', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'system', 'SM_SysDesc', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'task_employee', 'Task_ID', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'task_employee', 'Emp_Id', 2, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Test_Id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Testcase_Description', 2, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Input', 3, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Expected_Output', 4, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Actual_Output', 5, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'Tester_Id', 6, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'testcase', 'status', 7, NULL, 'NO', 'enum', 8, 8, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''open'',''success'',''failure'',''approved'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'type', 'typeid', 1, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'type', 'typename', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Project_id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'UR_id', 2, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Emp_id', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Name', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Preconditions', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Success_condition', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Fail_condition', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Usecase_diag', 8, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Timestamp', 9, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'Description', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'use_case', 'status', 11, NULL, 'NO', 'enum', 11, 11, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'enum(''pending'',''complete'',''approved'',''disapproved'')', '', '', 'select,insert,update,references', ''),
('def', '1122518', 'usecase_actors', 'UR_id', 1, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', 'PRI', '', 'select,insert,update,references', ''),
('def', '1122518', 'usecase_actors', 'Actors', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ENGINES`
--

CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENGINES`
--

INSERT INTO `ENGINES` (`ENGINE`, `SUPPORT`, `COMMENT`, `TRANSACTIONS`, `XA`, `SAVEPOINTS`) VALUES
('InnoDB', 'YES', 'Supports transactions, row-level locking, and foreign keys', 'YES', 'YES', 'YES'),
('MRG_MYISAM', 'YES', 'Collection of identical MyISAM tables', 'NO', 'NO', 'NO'),
('MyISAM', 'DEFAULT', 'MyISAM storage engine', 'NO', 'NO', 'NO'),
('BLACKHOLE', 'YES', '/dev/null storage engine (anything you write to it disappears)', 'NO', 'NO', 'NO'),
('CSV', 'YES', 'CSV storage engine', 'NO', 'NO', 'NO'),
('MEMORY', 'YES', 'Hash based, stored in memory, useful for temporary tables', 'NO', 'NO', 'NO'),
('ARCHIVE', 'YES', 'Archive storage engine', 'NO', 'NO', 'NO'),
('FEDERATED', 'NO', 'Federated MySQL storage engine', NULL, NULL, NULL),
('PERFORMANCE_SCHEMA', 'YES', 'Performance Schema', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FILES`
--

CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(64) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_STATUS`
--

CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_STATUS`
--

INSERT INTO `GLOBAL_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '843'),
('ABORTED_CONNECTS', '3202'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BINLOG_STMT_CACHE_DISK_USE', '0'),
('BINLOG_STMT_CACHE_USE', '0'),
('BYTES_RECEIVED', '508213612'),
('BYTES_SENT', '26653635362'),
('COM_ADMIN_COMMANDS', '28951'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '1'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '1636'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BEGIN', '319'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '112376'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '452'),
('COM_CREATE_DB', '7'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '527'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '19884'),
('COM_DELETE_MULTI', '18'),
('COM_DO', '0'),
('COM_DROP_DB', '66'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '10'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '8'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '37775'),
('COM_INSERT_SELECT', '36'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '22'),
('COM_LOAD', '0'),
('COM_LOCK_TABLES', '25'),
('COM_OPTIMIZE', '14'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '84'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '2486'),
('COM_REPLACE_SELECT', '2'),
('COM_RESET', '0'),
('COM_RESIGNAL', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '84'),
('COM_SELECT', '652494'),
('COM_SET_OPTION', '355411'),
('COM_SIGNAL', '0'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '55'),
('COM_SHOW_CHARSETS', '12'),
('COM_SHOW_COLLATIONS', '2'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '237'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '89'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '6106'),
('COM_SHOW_FUNCTION_STATUS', '2'),
('COM_SHOW_GRANTS', '30'),
('COM_SHOW_KEYS', '158'),
('COM_SHOW_MASTER_STATUS', '35'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '30'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '2'),
('COM_SHOW_PROCESSLIST', '2137'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '23'),
('COM_SHOW_RELAYLOG_EVENTS', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '35'),
('COM_SHOW_STATUS', '10'),
('COM_SHOW_STORAGE_ENGINES', '5'),
('COM_SHOW_TABLE_STATUS', '487'),
('COM_SHOW_TABLES', '3011'),
('COM_SHOW_TRIGGERS', '39'),
('COM_SHOW_VARIABLES', '256'),
('COM_SHOW_WARNINGS', '11'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '4275'),
('COM_STMT_EXECUTE', '4416'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '4416'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '1595'),
('COM_STMT_SEND_LONG_DATA', '1'),
('COM_TRUNCATE', '113'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '26'),
('COM_UPDATE', '153134'),
('COM_UPDATE_MULTI', '23'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '336746'),
('CREATED_TMP_DISK_TABLES', '26486'),
('CREATED_TMP_FILES', '1046'),
('CREATED_TMP_TABLES', '58917'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '22'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '278410'),
('HANDLER_DELETE', '18563'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '59289'),
('HANDLER_READ_KEY', '21840568'),
('HANDLER_READ_LAST', '3048'),
('HANDLER_READ_NEXT', '1034124670'),
('HANDLER_READ_PREV', '3877552'),
('HANDLER_READ_RND', '164970839'),
('HANDLER_READ_RND_NEXT', '1011355609'),
('HANDLER_ROLLBACK', '64'),
('HANDLER_SAVEPOINT', '84'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '1691308'),
('HANDLER_WRITE', '5312043'),
('INNODB_BUFFER_POOL_PAGES_DATA', '31999'),
('INNODB_BUFFER_POOL_BYTES_DATA', '524271616'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_BYTES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '57060'),
('INNODB_BUFFER_POOL_PAGES_FREE', '0'),
('INNODB_BUFFER_POOL_PAGES_MISC', '768'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '32767'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '0'),
('INNODB_BUFFER_POOL_READ_AHEAD', '5260'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '466'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '57850170'),
('INNODB_BUFFER_POOL_READS', '58727'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '268658'),
('INNODB_DATA_FSYNCS', '49567'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1051414528'),
('INNODB_DATA_READS', '66706'),
('INNODB_DATA_WRITES', '103295'),
('INNODB_DATA_WRITTEN', '1913079296'),
('INNODB_DBLWR_PAGES_WRITTEN', '57060'),
('INNODB_DBLWR_WRITES', '1467'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '44513'),
('INNODB_LOG_WRITES', '43360'),
('INNODB_OS_LOG_FSYNCS', '44339'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '42932224'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '1083'),
('INNODB_PAGES_READ', '64039'),
('INNODB_PAGES_WRITTEN', '57060'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '647'),
('INNODB_ROW_LOCK_TIME_AVG', '26'),
('INNODB_ROW_LOCK_TIME_MAX', '78'),
('INNODB_ROW_LOCK_WAITS', '24'),
('INNODB_ROWS_DELETED', '4715'),
('INNODB_ROWS_INSERTED', '6800'),
('INNODB_ROWS_READ', '67049213'),
('INNODB_ROWS_UPDATED', '39929'),
('INNODB_TRUNCATED_STATUS_WRITES', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '207385'),
('KEY_BLOCKS_USED', '114104'),
('KEY_READ_REQUESTS', '129726575'),
('KEY_READS', '193143'),
('KEY_WRITE_REQUESTS', '516018'),
('KEY_WRITES', '125640'),
('LAST_QUERY_COST', '0.000000'),
('MAX_USED_CONNECTIONS', '251'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '21631'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '11783'),
('OPEN_TABLES', '12288'),
('OPENED_FILES', '209977'),
('OPENED_TABLE_DEFINITIONS', '33493'),
('OPENED_TABLES', '34907'),
('PERFORMANCE_SCHEMA_COND_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_COND_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_LOCKER_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_INSTANCES_LOST', '0'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '9212'),
('QCACHE_FREE_MEMORY', '29081096'),
('QCACHE_HITS', '2652902'),
('QCACHE_INSERTS', '602658'),
('QCACHE_LOWMEM_PRUNES', '103487'),
('QCACHE_NOT_CACHED', '50185'),
('QCACHE_QUERIES_IN_CACHE', '63591'),
('QCACHE_TOTAL_BLOCKS', '161538'),
('QUERIES', '4346195'),
('QUESTIONS', '4335909'),
('RPL_STATUS', 'AUTH_MASTER'),
('SELECT_FULL_JOIN', '1555'),
('SELECT_FULL_RANGE_JOIN', '231'),
('SELECT_RANGE', '48824'),
('SELECT_RANGE_CHECK', '334'),
('SELECT_SCAN', '93795'),
('SLAVE_HEARTBEAT_PERIOD', '0.000'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RECEIVED_HEARTBEATS', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '19'),
('SORT_MERGE_PASSES', '506'),
('SORT_RANGE', '156079'),
('SORT_ROWS', '168504436'),
('SORT_SCAN', '51469'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '1032209'),
('TABLE_LOCKS_WAITED', '346'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '5'),
('THREADS_CONNECTED', '4'),
('THREADS_CREATED', '2004'),
('THREADS_RUNNING', '3'),
('UPTIME', '11426'),
('UPTIME_SINCE_FLUSH_STATUS', '11426');

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_VARIABLES`
--

CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_VARIABLES`
--

INSERT INTO `GLOBAL_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('INNODB_BUFFER_POOL_SIZE', '536870912'),
('HAVE_CRYPT', 'YES'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_LONG_SIZE', '10000'),
('INNODB_VERSION', '5.5.32'),
('QUERY_PREALLOC_SIZE', '16384'),
('DELAYED_QUEUE_SIZE', '1000'),
('PERFORMANCE_SCHEMA_MAX_COND_INSTANCES', '1000'),
('SSL_CIPHER', ''),
('COLLATION_SERVER', 'utf8_general_ci'),
('SECURE_FILE_PRIV', ''),
('TIMED_MUTEXES', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_INSTANCES', '1000000'),
('LC_TIME_NAMES', 'en_US'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_INSTANCES', '1000000'),
('TIME_FORMAT', '%H:%i:%s'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_CLASSES', '30'),
('BASEDIR', '/usr'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_CLASSES', '200'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('BACK_LOG', '50'),
('SLOW_LAUNCH_TIME', '2'),
('EVENT_SCHEDULER', 'OFF'),
('MAX_SEEKS_FOR_KEY', '18446744073709551615'),
('PERFORMANCE_SCHEMA_MAX_THREAD_CLASSES', '50'),
('RELAY_LOG_INDEX', ''),
('FT_STOPWORD_FILE', '(built-in)'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('PERFORMANCE_SCHEMA', 'OFF'),
('QUERY_CACHE_SIZE', '402653184'),
('BINLOG_FORMAT', 'STATEMENT'),
('WAIT_TIMEOUT', '25'),
('LONG_QUERY_TIME', '4.000000'),
('PERFORMANCE_SCHEMA_MAX_TABLE_HANDLES', '100000'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('LOWER_CASE_TABLE_NAMES', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('REPORT_HOST', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('MYISAM_SORT_BUFFER_SIZE', '33554432'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('INNODB_ROLLBACK_SEGMENTS', '128'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LARGE_FILES_SUPPORT', 'ON'),
('MAX_WRITE_LOCK_COUNT', '18446744073709551615'),
('SQL_SAFE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('NET_BUFFER_LENGTH', '16384'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MAX_WORD_LEN', '84'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('MAX_SP_RECURSION_DEPTH', '0'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('SYNC_RELAY_LOG', '0'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '104857600'),
('DELAY_KEY_WRITE', 'ON'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '25'),
('MYISAM_RECOVER_OPTIONS', 'DEFAULT'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('PROTOCOL_VERSION', '10'),
('DELAYED_INSERT_LIMIT', '100'),
('LOW_PRIORITY_UPDATES', 'ON'),
('COMPLETION_TYPE', 'NO_CHAIN'),
('REPORT_PASSWORD', ''),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('SQL_BIG_SELECTS', 'ON'),
('AUTO_INCREMENT_OFFSET', '1'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('JOIN_BUFFER_SIZE', '1048576'),
('THREAD_CACHE_SIZE', '8'),
('CONNECT_TIMEOUT', '10'),
('INNODB_DOUBLEWRITE', 'ON'),
('SQL_LOW_PRIORITY_UPDATES', 'ON'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('INIT_FILE', ''),
('DEFAULT_WEEK_FORMAT', '0'),
('LARGE_PAGES', 'OFF'),
('LOG_OUTPUT', 'FILE'),
('LARGE_PAGE_SIZE', '0'),
('INNODB_IO_CAPACITY', '200'),
('INIT_SLAVE', ''),
('INNODB_USE_NATIVE_AIO', 'ON'),
('MAX_BINLOG_SIZE', '1073741824'),
('HAVE_SYMLINK', 'DISABLED'),
('MAX_ERROR_COUNT', '64'),
('TIME_ZONE', 'SYSTEM'),
('MAX_CONNECTIONS', '250'),
('INNODB_TABLE_LOCKS', 'ON'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('READ_BUFFER_SIZE', '2097152'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SQL_AUTO_IS_NULL', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('SORT_BUFFER_SIZE', '4194304'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('MAX_HEAP_TABLE_SIZE', '67108864'),
('SYNC_RELAY_LOG_INFO', '0'),
('LOCK_WAIT_TIMEOUT', '31536000'),
('INNODB_REPLICATION_DELAY', '0'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('NET_RETRY_COUNT', '10'),
('INNODB_STATS_ON_METADATA', 'ON'),
('LOG_WARNINGS', '1'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('FLUSH', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_LONG_DATA_SIZE', '3145728'),
('INNODB_CHANGE_BUFFERING', 'all'),
('CHARACTER_SET_SERVER', 'utf8'),
('READ_RND_BUFFER_SIZE', '4194304'),
('SLAVE_MAX_ALLOWED_PACKET', '1073741824'),
('INNODB_FILE_FORMAT', 'Antelope'),
('FLUSH_TIME', '0'),
('BIG_TABLES', 'OFF'),
('CHARACTER_SET_DATABASE', 'utf8'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('BULK_INSERT_BUFFER_SIZE', '25165824'),
('DATE_FORMAT', '%Y-%m-%d'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('READ_ONLY', 'OFF'),
('BINLOG_STMT_CACHE_SIZE', '32768'),
('MAX_BINLOG_CACHE_SIZE', '18446744073709547520'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('PERFORMANCE_SCHEMA_MAX_FILE_CLASSES', '50'),
('INNODB_PURGE_THREADS', '0'),
('MAX_SORT_LENGTH', '1024'),
('PROFILING', 'OFF'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_SIZE', '10'),
('INNODB_STRICT_MODE', 'OFF'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('OLD_PASSWORDS', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/maximus.log'),
('NET_WRITE_TIMEOUT', '60'),
('PERFORMANCE_SCHEMA_MAX_COND_CLASSES', '80'),
('QUERY_CACHE_TYPE', 'ON'),
('AUTO_INCREMENT_INCREMENT', '1'),
('METADATA_LOCKS_CACHE_SIZE', '1024'),
('TMPDIR', '/tmp'),
('QUERY_CACHE_LIMIT', '2097152'),
('EXPIRE_LOGS_DAYS', '0'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_PARTITIONING', 'YES'),
('LOG_ERROR', '/var/log/mysqld.log'),
('FOREIGN_KEY_CHECKS', 'ON'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('THREAD_STACK', '262144'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('NEW', 'OFF'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('SKIP_NAME_RESOLVE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('PID_FILE', '/var/run/mysqld/mysqld.pid'),
('INNODB_PURGE_BATCH_SIZE', '20'),
('MAX_ALLOWED_PACKET', '3145728'),
('VERSION', '5.5.32'),
('CONCURRENT_INSERT', 'ALWAYS'),
('INNODB_SUPPORT_XA', 'ON'),
('TABLE_DEFINITION_CACHE', '400'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('VERSION_COMPILE_MACHINE', 'x86_64'),
('SYSTEM_TIME_ZONE', 'CEST'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('DIV_PRECISION_INCREMENT', '4'),
('SYNC_FRM', 'ON'),
('STORED_PROGRAM_CACHE', '256'),
('TMP_TABLE_SIZE', '67108864'),
('INNODB_DATA_HOME_DIR', ''),
('PERFORMANCE_SCHEMA_MAX_THREAD_INSTANCES', '1000'),
('INNODB_READ_IO_THREADS', '4'),
('MULTI_RANGE_COUNT', '256'),
('INNODB_WRITE_IO_THREADS', '4'),
('SERVER_ID', '0'),
('INNODB_BUFFER_POOL_INSTANCES', '1'),
('SKIP_NETWORKING', 'OFF'),
('INNODB_FORCE_RECOVERY', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('INIT_CONNECT', ''),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('AUTOCOMMIT', 'ON'),
('SYNC_BINLOG', '0'),
('SSL_CAPATH', ''),
('INNODB_PRINT_ALL_DEADLOCKS', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('GENERAL_LOG', 'OFF'),
('INNODB_FILE_FORMAT_CHECK', 'ON'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('HOSTNAME', 'maximus.freewha.com'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('OLD', 'OFF'),
('KEY_BUFFER_SIZE', '402653184'),
('REPORT_PORT', '3306'),
('HAVE_NDBCLUSTER', 'NO'),
('SQL_LOG_BIN', 'ON'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_STATS_METHOD', 'nulls_equal'),
('LOG_BIN', 'OFF'),
('INNODB_FAST_SHUTDOWN', '1'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SSL_CA', ''),
('MAX_USER_CONNECTIONS', '0'),
('INNODB_THREAD_CONCURRENCY', '32'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('SLAVE_NET_TIMEOUT', '3600'),
('TABLE_OPEN_CACHE', '12288'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('SQL_BIG_TABLES', 'OFF'),
('LOCAL_INFILE', 'ON'),
('SQL_BUFFER_RESULT', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('HAVE_PROFILING', 'YES'),
('LC_MESSAGES_DIR', '/usr/share/mysql/'),
('OLD_ALTER_TABLE', 'OFF'),
('HAVE_INNODB', 'YES'),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('SQL_MODE', ''),
('PERFORMANCE_SCHEMA_MAX_FILE_HANDLES', '32768'),
('RELAY_LOG_RECOVERY', 'OFF'),
('REPORT_USER', ''),
('MAX_DELAYED_THREADS', '20'),
('HAVE_GEOMETRY', 'YES'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('LC_MESSAGES', 'en_US'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG', 'OFF'),
('INNODB_RANDOM_READ_AHEAD', 'OFF'),
('OPEN_FILES_LIMIT', '25000'),
('HAVE_CSV', 'YES'),
('DATADIR', '/var/lib/mysql/'),
('PORT', '3306'),
('FT_MIN_WORD_LEN', '4'),
('INNODB_CONCURRENCY_TICKETS', '2000'),
('VERSION_COMPILE_OS', 'Linux'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('INNODB_FORCE_LOAD_CORRUPTED', 'OFF'),
('SQL_WARNINGS', 'OFF'),
('HAVE_OPENSSL', 'DISABLED'),
('RELAY_LOG', ''),
('MAX_BINLOG_STMT_CACHE_SIZE', '18446744073709547520'),
('PLUGIN_DIR', '/usr/lib64/mysql/plugin/'),
('PERFORMANCE_SCHEMA_MAX_FILE_INSTANCES', '10000'),
('LOG_SLOW_QUERIES', 'OFF'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('MAX_TMP_TABLES', '32'),
('INNODB_FILE_FORMAT_MAX', 'Antelope'),
('SQL_LOG_OFF', 'OFF'),
('DEFAULT_STORAGE_ENGINE', 'MyISAM'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/maximus-slow.log'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('SQL_SLAVE_SKIP_COUNTER', '0'),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SECURE_AUTH', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('NET_READ_TIMEOUT', '30'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on,engine_condition_pushdown=on'),
('MAX_CONNECT_ERRORS', '5'),
('LOCKED_IN_MEMORY', 'OFF'),
('INNODB_FLUSH_METHOD', ''),
('INNODB_LARGE_PREFIX', 'OFF'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('SSL_KEY', ''),
('HAVE_SSL', 'DISABLED'),
('MYISAM_USE_MMAP', 'OFF'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('LOG_SLAVE_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('SYNC_MASTER_INFO', '0'),
('COLLATION_DATABASE', 'utf8_general_ci'),
('INNODB_FILE_PER_TABLE', 'ON'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('SSL_CERT', ''),
('INNODB_LOG_BUFFER_SIZE', '12582912'),
('SOCKET', '/var/lib/mysql/mysql.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('INNODB_MAX_PURGE_LAG', '0'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('MYISAM_MAX_SORT_FILE_SIZE', '9223372036853727232'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('SLAVE_TYPE_CONVERSIONS', ''),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '20971520'),
('SQL_NOTES', 'ON'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('LICENSE', 'GPL'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('PERFORMANCE_SCHEMA_MAX_TABLE_INSTANCES', '50000'),
('THREAD_CONCURRENCY', '16'),
('UNIQUE_CHECKS', 'ON'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('HAVE_COMPRESS', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
('def', '1122518', 'PRIMARY', 'def', '1122518', 'admin', 'AMID', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'assumptions', 'Assumptions_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'assumptions_ibfk_1', 'def', '1122518', 'assumptions', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'assumptions_ibfk_2', 'def', '1122518', 'assumptions', 'Employee_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'baseline', 'Project_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'baseline', 'R_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'baseline_ibfk_1', 'def', '1122518', 'baseline', 'Emp_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'baseline_ibfk_2', 'def', '1122518', 'baseline', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'baseline_ibfk_3', 'def', '1122518', 'baseline', 'R_id', 1, 1, '1122518', 'status', 'R_id'),
('def', '1122518', 'baseline_ibfk_4', 'def', '1122518', 'baseline', 'Pm_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'baseline_ibfk_5', 'def', '1122518', 'baseline', 'TypeID', 1, 1, '1122518', 'type', 'typeid'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'constraints', 'Constraint_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'constraints_ibfk_1', 'def', '1122518', 'constraints', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'constraints_ibfk_2', 'def', '1122518', 'constraints', 'Employee_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'defect', 'Test_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'defect', 'Defect_Id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'defect_ibfk_1', 'def', '1122518', 'defect', 'Test_Id', 1, 1, '1122518', 'project_testcase', 'Test_Id'),
('def', '1122518', 'defect_ibfk_2', 'def', '1122518', 'defect', 'Programmer_Id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'diagram', 'fileid', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'employee', 'Emp_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'Emp_Email', 'def', '1122518', 'employee', 'Emp_Email', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'User_Name', 'def', '1122518', 'employee', 'User_Name', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'file', 'fileid', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'functional', 'Project_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'functional', 'FR_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'functional_ibfk_1', 'def', '1122518', 'functional', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'functional_ibfk_2', 'def', '1122518', 'functional', 'Emp_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'interface', 'Interface_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'interface_ibfk_1', 'def', '1122518', 'interface', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'interface_ibfk_2', 'def', '1122518', 'interface', 'Employee_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'non_functional', 'Project_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'non_functional', 'NFR_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'non_functional_ibfk_1', 'def', '1122518', 'non_functional', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'non_functional_ibfk_2', 'def', '1122518', 'non_functional', 'Emp_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'pm_emp', 'Emp_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'pm_emp', 'Pm_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'pm_emp_ibfk_1', 'def', '1122518', 'pm_emp', 'Emp_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'pm_emp_ibfk_2', 'def', '1122518', 'pm_emp', 'Pm_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'proj_task', 'TaskId', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'proj_task_ibfk_1', 'def', '1122518', 'proj_task', 'ProId', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'project', 'Proj_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'project_ibfk_1', 'def', '1122518', 'project', 'Sys_Id', 1, 1, '1122518', 'system', 'SM_SystemID'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'project_pm', 'Emp_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'project_pm', 'Proj_Id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'project_pm_ibfk_1', 'def', '1122518', 'project_pm', 'Proj_Id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'project_pm_ibfk_2', 'def', '1122518', 'project_pm', 'Emp_Id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'project_task_cost', 'PTC_TaskId', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'project_task_cost_ibfk_1', 'def', '1122518', 'project_task_cost', 'PTC_TaskId', 1, 1, '1122518', 'proj_task', 'TaskId'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'project_testcase', 'Test_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'project_testcase_ibfk_1', 'def', '1122518', 'project_testcase', 'Project_Id', 1, 1, '1122518', 'requirement_emp', 'Project_Id'),
('def', '1122518', 'project_testcase_ibfk_2', 'def', '1122518', 'project_testcase', 'Requirement_Id', 1, 1, '1122518', 'requirement_emp', 'Requirement_Id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'prototype', 'ID', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'prototype_ibfk_1', 'def', '1122518', 'prototype', 'PROJECT_ID', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'requirement_emp', 'Project_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'requirement_emp', 'Requirement_Id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'requirement_emp', 'Tester_Id', 3, NULL, NULL, NULL, NULL),
('def', '1122518', 'requirement_emp_ibfk_1', 'def', '1122518', 'requirement_emp', 'Project_Id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'requirement_emp_ibfk_2', 'def', '1122518', 'requirement_emp', 'Requirement_Id', 1, 1, '1122518', 'baseline', 'R_id'),
('def', '1122518', 'requirement_emp_ibfk_3', 'def', '1122518', 'requirement_emp', 'Tester_Id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'status', 'Project_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'status', 'R_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'status_ibfk_1', 'def', '1122518', 'status', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'status_ibfk_2', 'def', '1122518', 'status', 'Pm_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'system', 'SM_SystemID', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'task_employee', 'Task_ID', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'task_employee', 'Emp_Id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'task_employee_ibfk_1', 'def', '1122518', 'task_employee', 'Task_ID', 1, 1, '1122518', 'proj_task', 'TaskId'),
('def', '1122518', 'task_employee_ibfk_2', 'def', '1122518', 'task_employee', 'Emp_Id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'testcase', 'Test_Id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'testcase_ibfk_1', 'def', '1122518', 'testcase', 'Test_Id', 1, 1, '1122518', 'project_testcase', 'Test_Id'),
('def', '1122518', 'testcase_ibfk_2', 'def', '1122518', 'testcase', 'Tester_Id', 1, 1, '1122518', 'requirement_emp', 'Tester_Id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'type', 'typeid', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'use_case', 'Project_id', 1, NULL, NULL, NULL, NULL),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'use_case', 'UR_id', 2, NULL, NULL, NULL, NULL),
('def', '1122518', 'use_case_ibfk_1', 'def', '1122518', 'use_case', 'Project_id', 1, 1, '1122518', 'project', 'Proj_Id'),
('def', '1122518', 'use_case_ibfk_2', 'def', '1122518', 'use_case', 'Emp_id', 1, 1, '1122518', 'employee', 'Emp_id'),
('def', '1122518', 'PRIMARY', 'def', '1122518', 'usecase_actors', 'UR_id', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PARAMETERS`
--

CREATE TEMPORARY TABLE `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` int(21) NOT NULL DEFAULT '0',
  `PARAMETER_MODE` varchar(5) DEFAULT NULL,
  `PARAMETER_NAME` varchar(64) DEFAULT NULL,
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext NOT NULL,
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PARTITIONS`
--

CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(18) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTITIONS`
--

INSERT INTO `PARTITIONS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `PARTITION_NAME`, `SUBPARTITION_NAME`, `PARTITION_ORDINAL_POSITION`, `SUBPARTITION_ORDINAL_POSITION`, `PARTITION_METHOD`, `SUBPARTITION_METHOD`, `PARTITION_EXPRESSION`, `SUBPARTITION_EXPRESSION`, `PARTITION_DESCRIPTION`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `PARTITION_COMMENT`, `NODEGROUP`, `TABLESPACE_NAME`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 384, 0, 65739264, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLLATIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 231, 0, 66819522, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 195, 0, 65431080, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLUMNS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLUMN_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2565, 0, 67028580, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'ENGINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 490, 0, 66297000, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'EVENTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'FILES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2677, 0, 67032080, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'GLOBAL_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 67026680, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'GLOBAL_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 67026680, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'KEY_COLUMN_USAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4637, 0, 67064931, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PARAMETERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PARTITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PLUGINS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PROCESSLIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PROFILING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 308, 0, 66248336, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4814, 0, 67078276, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'ROUTINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SCHEMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3464, 0, 66952192, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2179, 0, 66954133, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SESSION_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 67026680, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SESSION_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 67026680, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5753, 0, 67022450, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9450, 0, 67057200, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLESPACES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6951, 0, 67098003, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLE_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2504, 0, 66894360, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLE_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2372, 0, 66994768, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TRIGGERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'USER_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1986, 0, 66906354, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'VIEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-05-11 06:45:21', '2016-05-11 06:45:21', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6852, 0, 67067376, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_TRX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4534, 0, 67075996, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 257, 0, 65329400, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_LOCK_WAITS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 599, 0, 66996952, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMPMEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 0, 60817408, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 0, 52428800, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_LOCKS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 31244, 0, 67080868, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 0, 60817408, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMP_RESET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 0, 52428800, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6669, 0, 67076802, 0, 0, '2016-05-11 06:45:21', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16384, 16384, NULL, 0, 0, '2016-04-19 18:24:41', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'assumptions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 0, '2016-04-19 18:24:52', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'baseline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 372, 16384, NULL, 98304, 0, '2016-05-02 18:27:22', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'constraints', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 49152, 0, '2016-04-19 18:24:53', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'defect', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 0, '2016-04-19 18:24:54', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'diagram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 102, 1204, 281474976710655, 6144, 388, '2016-04-21 15:05:10', '2016-05-04 05:33:32', NULL, NULL, '', '', NULL),
('def', '1122518', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 744, 16384, NULL, 32768, 0, '2016-04-20 18:57:25', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 207, 16384, NULL, 0, 0, '2016-04-19 18:24:43', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'functional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 655, 16384, NULL, 49152, 0, '2016-04-30 07:27:09', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'interface', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 0, '2016-04-19 18:24:56', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'mapping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 125, 528, 281474976710655, 2048, 28, '2016-04-19 18:24:45', '2016-05-03 19:30:41', NULL, NULL, '', '', NULL),
('def', '1122518', 'non_functional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 819, 16384, NULL, 65536, 0, '2016-04-30 08:39:30', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'pm_emp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 819, 16384, NULL, 32768, 0, '2016-04-30 07:18:08', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'proj_task', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 0, '2016-04-19 18:25:00', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'project', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5461, 16384, NULL, 32768, 0, '2016-04-30 05:44:31', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'project_details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 790, 2372, 281474976710655, 2048, 0, '2016-04-30 06:33:45', '2016-04-30 07:07:56', '2016-04-30 06:33:45', NULL, '', '', NULL),
('def', '1122518', 'project_pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 744, 16384, NULL, 32768, 0, '2016-04-30 07:17:27', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'project_task_cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 0, '2016-04-19 18:24:58', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'project_testcase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 98304, 0, '2016-04-19 18:24:59', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'prototype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 0, '2016-04-19 18:25:01', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'requirement_emp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 49152, 0, '2016-04-19 18:25:01', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 372, 16384, NULL, 49152, 0, '2016-04-30 09:15:33', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16384, 16384, NULL, 0, 0, '2016-04-19 18:24:49', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'task_employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 0, '2016-04-19 18:25:02', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'testcase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 49152, 0, '2016-04-19 18:25:03', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4096, 16384, NULL, 16384, 0, '2016-04-19 18:24:50', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'use_case', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 49152, 0, '2016-04-30 06:36:19', NULL, NULL, NULL, '', '', NULL),
('def', '1122518', 'usecase_actors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 0, '2016-04-19 18:24:51', NULL, NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PLUGINS`
--

CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLUGINS`
--

INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`, `LOAD_OPTION`) VALUES
('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'MySQL AB', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL', 'FORCE'),
('mysql_native_password', '1.0', 'ACTIVE', 'AUTHENTICATION', '1.0', NULL, NULL, 'R.J.Silk, Sergei Golubchik', 'Native MySQL authentication', 'GPL', 'FORCE'),
('mysql_old_password', '1.0', 'ACTIVE', 'AUTHENTICATION', '1.0', NULL, NULL, 'R.J.Silk, Sergei Golubchik', 'Old MySQL-4.0 authentication', 'GPL', 'FORCE'),
('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Brian Aker, MySQL AB', 'CSV storage engine', 'GPL', 'FORCE'),
('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'MySQL AB', 'MyISAM storage engine', 'GPL', 'FORCE'),
('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'MySQL AB', 'Hash based, stored in memory, useful for temporary tables', 'GPL', 'FORCE'),
('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'MySQL AB', 'Collection of identical MyISAM tables', 'GPL', 'FORCE'),
('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Brian Aker, MySQL AB', 'Archive storage engine', 'GPL', 'ON'),
('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'MySQL AB', '/dev/null storage engine (anything you write to it disappears)', 'GPL', 'ON'),
('InnoDB', '5.5', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Oracle Corporation', 'Supports transactions, row-level locking, and foreign keys', 'GPL', 'ON'),
('INNODB_TRX', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB transactions', 'GPL', 'ON'),
('INNODB_LOCKS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB conflicting locks', 'GPL', 'ON'),
('INNODB_LOCK_WAITS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB which lock is blocking which', 'GPL', 'ON'),
('INNODB_CMP', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression', 'GPL', 'ON'),
('INNODB_CMP_RESET', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression; reset cumulated counts', 'GPL', 'ON'),
('INNODB_CMPMEM', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool', 'GPL', 'ON'),
('INNODB_CMPMEM_RESET', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool; reset cumulated counts', 'GPL', 'ON'),
('INNODB_BUFFER_PAGE', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page Information', 'GPL', 'ON'),
('INNODB_BUFFER_PAGE_LRU', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page in LRU', 'GPL', 'ON'),
('INNODB_BUFFER_POOL_STATS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50532.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Pool Statistics Information ', 'GPL', 'ON'),
('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Patrick Galbraith and Brian Aker, MySQL AB', 'Federated MySQL storage engine', 'GPL', 'OFF'),
('PERFORMANCE_SCHEMA', '0.1', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Marc Alff, Oracle', 'Performance Schema', 'GPL', 'FORCE'),
('partition', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50532.0', NULL, NULL, 'Mikael Ronstrom, MySQL AB', 'Partition Storage Engine Helper', 'GPL', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(16) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` (`ID`, `USER`, `HOST`, `DB`, `COMMAND`, `TIME`, `STATE`, `INFO`) VALUES
(336497, '1122518', 'localhost', '1122518', 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`');

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `REFERENTIAL_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REFERENTIAL_CONSTRAINTS`
--

INSERT INTO `REFERENTIAL_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `UNIQUE_CONSTRAINT_CATALOG`, `UNIQUE_CONSTRAINT_SCHEMA`, `UNIQUE_CONSTRAINT_NAME`, `MATCH_OPTION`, `UPDATE_RULE`, `DELETE_RULE`, `TABLE_NAME`, `REFERENCED_TABLE_NAME`) VALUES
('def', '1122518', 'assumptions_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'assumptions', 'project'),
('def', '1122518', 'assumptions_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'assumptions', 'employee'),
('def', '1122518', 'baseline_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'baseline', 'employee'),
('def', '1122518', 'baseline_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'baseline', 'project'),
('def', '1122518', 'baseline_ibfk_3', 'def', '1122518', 'R_id', 'NONE', 'RESTRICT', 'RESTRICT', 'baseline', 'status'),
('def', '1122518', 'baseline_ibfk_4', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'baseline', 'employee'),
('def', '1122518', 'baseline_ibfk_5', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'baseline', 'type'),
('def', '1122518', 'constraints_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'constraints', 'project'),
('def', '1122518', 'constraints_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'constraints', 'employee'),
('def', '1122518', 'defect_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'defect', 'project_testcase'),
('def', '1122518', 'defect_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'defect', 'employee'),
('def', '1122518', 'functional_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'functional', 'project'),
('def', '1122518', 'functional_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'functional', 'employee'),
('def', '1122518', 'interface_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'interface', 'project'),
('def', '1122518', 'interface_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'interface', 'employee'),
('def', '1122518', 'non_functional_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'non_functional', 'project'),
('def', '1122518', 'non_functional_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'non_functional', 'employee'),
('def', '1122518', 'pm_emp_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'pm_emp', 'employee'),
('def', '1122518', 'pm_emp_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'pm_emp', 'employee'),
('def', '1122518', 'proj_task_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'proj_task', 'project'),
('def', '1122518', 'project_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'project', 'system'),
('def', '1122518', 'project_pm_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'project_pm', 'project'),
('def', '1122518', 'project_pm_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'project_pm', 'employee'),
('def', '1122518', 'project_task_cost_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'project_task_cost', 'proj_task'),
('def', '1122518', 'project_testcase_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'project_testcase', 'requirement_emp'),
('def', '1122518', 'project_testcase_ibfk_2', 'def', '1122518', 'Requirement_Id', 'NONE', 'RESTRICT', 'RESTRICT', 'project_testcase', 'requirement_emp'),
('def', '1122518', 'prototype_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'prototype', 'project'),
('def', '1122518', 'requirement_emp_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'requirement_emp', 'project'),
('def', '1122518', 'requirement_emp_ibfk_2', 'def', '1122518', 'R_id', 'NONE', 'RESTRICT', 'RESTRICT', 'requirement_emp', 'baseline'),
('def', '1122518', 'requirement_emp_ibfk_3', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'requirement_emp', 'employee'),
('def', '1122518', 'status_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'status', 'project'),
('def', '1122518', 'status_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'status', 'employee'),
('def', '1122518', 'task_employee_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'task_employee', 'proj_task'),
('def', '1122518', 'task_employee_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'task_employee', 'employee'),
('def', '1122518', 'testcase_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'testcase', 'project_testcase'),
('def', '1122518', 'testcase_ibfk_2', 'def', '1122518', 'Tester_Id', 'NONE', 'RESTRICT', 'RESTRICT', 'testcase', 'requirement_emp'),
('def', '1122518', 'use_case_ibfk_1', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'use_case', 'project'),
('def', '1122518', 'use_case_ibfk_2', 'def', '1122518', 'PRIMARY', 'NONE', 'RESTRICT', 'RESTRICT', 'use_case', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` longtext NOT NULL,
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL DEFAULT '',
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
('def', 'information_schema', 'utf8', 'utf8_general_ci', NULL),
('def', '1122518', 'utf8', 'utf8_general_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''1122518''@''localhost''', 'def', '1122518', 'SELECT', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'INSERT', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'UPDATE', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'DELETE', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'CREATE', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'DROP', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'REFERENCES', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'INDEX', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'ALTER', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'CREATE TEMPORARY TABLES', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'LOCK TABLES', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'CREATE VIEW', 'NO'),
('''1122518''@''localhost''', 'def', '1122518', 'SHOW VIEW', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_STATUS`
--

CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_STATUS`
--

INSERT INTO `SESSION_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '843'),
('ABORTED_CONNECTS', '3204'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BINLOG_STMT_CACHE_DISK_USE', '0'),
('BINLOG_STMT_CACHE_USE', '0'),
('BYTES_RECEIVED', '15515'),
('BYTES_SENT', '422134'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '0'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '2'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '0'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '0'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESIGNAL', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '51'),
('COM_SET_OPTION', '53'),
('COM_SIGNAL', '0'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '0'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '49'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '1'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '0'),
('COM_SHOW_FUNCTION_STATUS', '2'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_KEYS', '0'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '0'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '2'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_RELAYLOG_EVENTS', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '94'),
('COM_SHOW_TABLES', '2'),
('COM_SHOW_TRIGGERS', '48'),
('COM_SHOW_VARIABLES', '1'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '336797'),
('CREATED_TMP_DISK_TABLES', '124'),
('CREATED_TMP_FILES', '1046'),
('CREATED_TMP_TABLES', '415'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '22'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '25'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '31'),
('HANDLER_READ_KEY', '25'),
('HANDLER_READ_LAST', '0'),
('HANDLER_READ_NEXT', '42'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '2564'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '2280'),
('INNODB_BUFFER_POOL_PAGES_DATA', '31999'),
('INNODB_BUFFER_POOL_BYTES_DATA', '524271616'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_BYTES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '57060'),
('INNODB_BUFFER_POOL_PAGES_FREE', '0'),
('INNODB_BUFFER_POOL_PAGES_MISC', '768'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '32767'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '0'),
('INNODB_BUFFER_POOL_READ_AHEAD', '5260'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '466'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '57851992'),
('INNODB_BUFFER_POOL_READS', '58727'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '268658'),
('INNODB_DATA_FSYNCS', '49567'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1051414528'),
('INNODB_DATA_READS', '66706'),
('INNODB_DATA_WRITES', '103295'),
('INNODB_DATA_WRITTEN', '1913079296'),
('INNODB_DBLWR_PAGES_WRITTEN', '57060'),
('INNODB_DBLWR_WRITES', '1467'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '44513'),
('INNODB_LOG_WRITES', '43360'),
('INNODB_OS_LOG_FSYNCS', '44339'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '42932224'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '1083'),
('INNODB_PAGES_READ', '64039'),
('INNODB_PAGES_WRITTEN', '57060'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '647'),
('INNODB_ROW_LOCK_TIME_AVG', '26'),
('INNODB_ROW_LOCK_TIME_MAX', '78'),
('INNODB_ROW_LOCK_WAITS', '24'),
('INNODB_ROWS_DELETED', '4715'),
('INNODB_ROWS_INSERTED', '6800'),
('INNODB_ROWS_READ', '67049217'),
('INNODB_ROWS_UPDATED', '39929'),
('INNODB_TRUNCATED_STATUS_WRITES', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '207373'),
('KEY_BLOCKS_USED', '114104'),
('KEY_READ_REQUESTS', '129729471'),
('KEY_READS', '193155'),
('KEY_WRITE_REQUESTS', '516050'),
('KEY_WRITES', '125657'),
('LAST_QUERY_COST', '10.499000'),
('MAX_USED_CONNECTIONS', '251'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '21633'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '11785'),
('OPEN_TABLES', '12288'),
('OPENED_FILES', '210297'),
('OPENED_TABLE_DEFINITIONS', '28'),
('OPENED_TABLES', '56'),
('PERFORMANCE_SCHEMA_COND_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_COND_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_LOCKER_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_INSTANCES_LOST', '0'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '9136'),
('QCACHE_FREE_MEMORY', '28778472'),
('QCACHE_HITS', '2653175'),
('QCACHE_INSERTS', '602764'),
('QCACHE_LOWMEM_PRUNES', '103487'),
('QCACHE_NOT_CACHED', '50210'),
('QCACHE_QUERIES_IN_CACHE', '63643'),
('QCACHE_TOTAL_BLOCKS', '161585'),
('QUERIES', '4346855'),
('QUESTIONS', '305'),
('RPL_STATUS', 'AUTH_MASTER'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '200'),
('SLAVE_HEARTBEAT_PERIOD', '0.000'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RECEIVED_HEARTBEATS', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '1032472'),
('TABLE_LOCKS_WAITED', '346'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '6'),
('THREADS_CONNECTED', '3'),
('THREADS_CREATED', '2006'),
('THREADS_RUNNING', '2'),
('UPTIME', '11432'),
('UPTIME_SINCE_FLUSH_STATUS', '11432');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_VARIABLES`
--

CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_VARIABLES`
--

INSERT INTO `SESSION_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('INNODB_BUFFER_POOL_SIZE', '536870912'),
('HAVE_CRYPT', 'YES'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_LONG_SIZE', '10000'),
('INNODB_VERSION', '5.5.32'),
('QUERY_PREALLOC_SIZE', '16384'),
('DELAYED_QUEUE_SIZE', '1000'),
('PERFORMANCE_SCHEMA_MAX_COND_INSTANCES', '1000'),
('SSL_CIPHER', ''),
('COLLATION_SERVER', 'utf8_general_ci'),
('SECURE_FILE_PRIV', ''),
('TIMED_MUTEXES', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_INSTANCES', '1000000'),
('LC_TIME_NAMES', 'en_US'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_INSTANCES', '1000000'),
('TIME_FORMAT', '%H:%i:%s'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_CLASSES', '30'),
('BASEDIR', '/usr'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_CLASSES', '200'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('BACK_LOG', '50'),
('SLOW_LAUNCH_TIME', '2'),
('EVENT_SCHEDULER', 'OFF'),
('MAX_SEEKS_FOR_KEY', '18446744073709551615'),
('PERFORMANCE_SCHEMA_MAX_THREAD_CLASSES', '50'),
('RELAY_LOG_INDEX', ''),
('FT_STOPWORD_FILE', '(built-in)'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('PERFORMANCE_SCHEMA', 'OFF'),
('QUERY_CACHE_SIZE', '402653184'),
('BINLOG_FORMAT', 'STATEMENT'),
('WAIT_TIMEOUT', '25'),
('LONG_QUERY_TIME', '4.000000'),
('PERFORMANCE_SCHEMA_MAX_TABLE_HANDLES', '100000'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('LOWER_CASE_TABLE_NAMES', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('REPORT_HOST', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('MYISAM_SORT_BUFFER_SIZE', '33554432'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('INNODB_ROLLBACK_SEGMENTS', '128'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LARGE_FILES_SUPPORT', 'ON'),
('MAX_WRITE_LOCK_COUNT', '18446744073709551615'),
('SQL_SAFE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('NET_BUFFER_LENGTH', '16384'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MAX_WORD_LEN', '84'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('MAX_SP_RECURSION_DEPTH', '0'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('SYNC_RELAY_LOG', '0'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '104857600'),
('DELAY_KEY_WRITE', 'ON'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '25'),
('MYISAM_RECOVER_OPTIONS', 'DEFAULT'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('PROTOCOL_VERSION', '10'),
('DELAYED_INSERT_LIMIT', '100'),
('LOW_PRIORITY_UPDATES', 'ON'),
('COMPLETION_TYPE', 'NO_CHAIN'),
('REPORT_PASSWORD', ''),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('SQL_BIG_SELECTS', 'ON'),
('AUTO_INCREMENT_OFFSET', '1'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('JOIN_BUFFER_SIZE', '1048576'),
('THREAD_CACHE_SIZE', '8'),
('CONNECT_TIMEOUT', '10'),
('INNODB_DOUBLEWRITE', 'ON'),
('SQL_LOW_PRIORITY_UPDATES', 'ON'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('INIT_FILE', ''),
('DEFAULT_WEEK_FORMAT', '0'),
('LARGE_PAGES', 'OFF'),
('LOG_OUTPUT', 'FILE'),
('LARGE_PAGE_SIZE', '0'),
('INNODB_IO_CAPACITY', '200'),
('INIT_SLAVE', ''),
('INNODB_USE_NATIVE_AIO', 'ON'),
('MAX_BINLOG_SIZE', '1073741824'),
('HAVE_SYMLINK', 'DISABLED'),
('MAX_ERROR_COUNT', '64'),
('TIME_ZONE', '+00:00'),
('MAX_CONNECTIONS', '250'),
('INNODB_TABLE_LOCKS', 'ON'),
('PROXY_USER', ''),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('READ_BUFFER_SIZE', '2097152'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('PSEUDO_THREAD_ID', '336497'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SQL_AUTO_IS_NULL', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('SORT_BUFFER_SIZE', '4194304'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('MAX_HEAP_TABLE_SIZE', '67108864'),
('SYNC_RELAY_LOG_INFO', '0'),
('LOCK_WAIT_TIMEOUT', '31536000'),
('INNODB_REPLICATION_DELAY', '0'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('NET_RETRY_COUNT', '10'),
('INNODB_STATS_ON_METADATA', 'ON'),
('LOG_WARNINGS', '1'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('FLUSH', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_LONG_DATA_SIZE', '3145728'),
('INNODB_CHANGE_BUFFERING', 'all'),
('CHARACTER_SET_SERVER', 'utf8'),
('READ_RND_BUFFER_SIZE', '4194304'),
('SLAVE_MAX_ALLOWED_PACKET', '1073741824'),
('INNODB_FILE_FORMAT', 'Antelope'),
('FLUSH_TIME', '0'),
('BIG_TABLES', 'OFF'),
('CHARACTER_SET_DATABASE', 'utf8'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('BULK_INSERT_BUFFER_SIZE', '25165824'),
('DATE_FORMAT', '%Y-%m-%d'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('READ_ONLY', 'OFF'),
('BINLOG_STMT_CACHE_SIZE', '32768'),
('RAND_SEED1', '0'),
('MAX_BINLOG_CACHE_SIZE', '18446744073709547520'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('PERFORMANCE_SCHEMA_MAX_FILE_CLASSES', '50'),
('INNODB_PURGE_THREADS', '0'),
('MAX_SORT_LENGTH', '1024'),
('PROFILING', 'OFF'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_SIZE', '10'),
('INNODB_STRICT_MODE', 'OFF'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('OLD_PASSWORDS', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/maximus.log'),
('NET_WRITE_TIMEOUT', '60'),
('PERFORMANCE_SCHEMA_MAX_COND_CLASSES', '80'),
('QUERY_CACHE_TYPE', 'ON'),
('AUTO_INCREMENT_INCREMENT', '1'),
('METADATA_LOCKS_CACHE_SIZE', '1024'),
('TMPDIR', '/tmp'),
('QUERY_CACHE_LIMIT', '2097152'),
('EXPIRE_LOGS_DAYS', '0'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_PARTITIONING', 'YES'),
('LOG_ERROR', '/var/log/mysqld.log'),
('FOREIGN_KEY_CHECKS', 'ON'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('THREAD_STACK', '262144'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('NEW', 'OFF'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('SKIP_NAME_RESOLVE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('PID_FILE', '/var/run/mysqld/mysqld.pid'),
('INNODB_PURGE_BATCH_SIZE', '20'),
('MAX_ALLOWED_PACKET', '3145728'),
('VERSION', '5.5.32'),
('CONCURRENT_INSERT', 'ALWAYS'),
('INNODB_SUPPORT_XA', 'ON'),
('TABLE_DEFINITION_CACHE', '400'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('VERSION_COMPILE_MACHINE', 'x86_64'),
('SYSTEM_TIME_ZONE', 'CEST'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('DIV_PRECISION_INCREMENT', '4'),
('SYNC_FRM', 'ON'),
('STORED_PROGRAM_CACHE', '256'),
('TMP_TABLE_SIZE', '67108864'),
('INNODB_DATA_HOME_DIR', ''),
('PERFORMANCE_SCHEMA_MAX_THREAD_INSTANCES', '1000'),
('INNODB_READ_IO_THREADS', '4'),
('MULTI_RANGE_COUNT', '256'),
('INNODB_WRITE_IO_THREADS', '4'),
('SERVER_ID', '0'),
('INNODB_BUFFER_POOL_INSTANCES', '1'),
('SKIP_NETWORKING', 'OFF'),
('INNODB_FORCE_RECOVERY', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('INIT_CONNECT', ''),
('ERROR_COUNT', '0'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('AUTOCOMMIT', 'ON'),
('SYNC_BINLOG', '0'),
('SSL_CAPATH', ''),
('INNODB_PRINT_ALL_DEADLOCKS', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('GENERAL_LOG', 'OFF'),
('INNODB_FILE_FORMAT_CHECK', 'ON'),
('LAST_INSERT_ID', '0'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('HOSTNAME', 'maximus.freewha.com'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('OLD', 'OFF'),
('KEY_BUFFER_SIZE', '402653184'),
('REPORT_PORT', '3306'),
('HAVE_NDBCLUSTER', 'NO'),
('SQL_LOG_BIN', 'ON'),
('PSEUDO_SLAVE_MODE', 'OFF'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_STATS_METHOD', 'nulls_equal'),
('LOG_BIN', 'OFF'),
('INNODB_FAST_SHUTDOWN', '1'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SSL_CA', ''),
('MAX_USER_CONNECTIONS', '0'),
('INNODB_THREAD_CONCURRENCY', '32'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('SLAVE_NET_TIMEOUT', '3600'),
('TABLE_OPEN_CACHE', '12288'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('SQL_BIG_TABLES', 'OFF'),
('LOCAL_INFILE', 'ON'),
('SQL_BUFFER_RESULT', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('HAVE_PROFILING', 'YES'),
('LC_MESSAGES_DIR', '/usr/share/mysql/'),
('OLD_ALTER_TABLE', 'OFF'),
('HAVE_INNODB', 'YES'),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('SQL_MODE', ''),
('PERFORMANCE_SCHEMA_MAX_FILE_HANDLES', '32768'),
('TIMESTAMP', '1462949125'),
('RELAY_LOG_RECOVERY', 'OFF'),
('REPORT_USER', ''),
('MAX_DELAYED_THREADS', '20'),
('HAVE_GEOMETRY', 'YES'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('LC_MESSAGES', 'en_US'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG', 'OFF'),
('INNODB_RANDOM_READ_AHEAD', 'OFF'),
('OPEN_FILES_LIMIT', '25000'),
('HAVE_CSV', 'YES'),
('DATADIR', '/var/lib/mysql/'),
('PORT', '3306'),
('FT_MIN_WORD_LEN', '4'),
('INNODB_CONCURRENCY_TICKETS', '2000'),
('VERSION_COMPILE_OS', 'Linux'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('INNODB_FORCE_LOAD_CORRUPTED', 'OFF'),
('SQL_WARNINGS', 'OFF'),
('HAVE_OPENSSL', 'DISABLED'),
('RELAY_LOG', ''),
('MAX_BINLOG_STMT_CACHE_SIZE', '18446744073709547520'),
('PLUGIN_DIR', '/usr/lib64/mysql/plugin/'),
('PERFORMANCE_SCHEMA_MAX_FILE_INSTANCES', '10000'),
('LOG_SLOW_QUERIES', 'OFF'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('MAX_TMP_TABLES', '32'),
('INNODB_FILE_FORMAT_MAX', 'Antelope'),
('SQL_LOG_OFF', 'OFF'),
('DEFAULT_STORAGE_ENGINE', 'MyISAM'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/maximus-slow.log'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('SQL_SLAVE_SKIP_COUNTER', '0'),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SECURE_AUTH', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('NET_READ_TIMEOUT', '30'),
('WARNING_COUNT', '0'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on,engine_condition_pushdown=on'),
('MAX_CONNECT_ERRORS', '5'),
('LOCKED_IN_MEMORY', 'OFF'),
('INNODB_FLUSH_METHOD', ''),
('EXTERNAL_USER', ''),
('INNODB_LARGE_PREFIX', 'OFF'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('SSL_KEY', ''),
('HAVE_SSL', 'DISABLED'),
('MYISAM_USE_MMAP', 'OFF'),
('RAND_SEED2', '0'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('INSERT_ID', '0'),
('LOG_SLAVE_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('SYNC_MASTER_INFO', '0'),
('COLLATION_DATABASE', 'utf8_general_ci'),
('INNODB_FILE_PER_TABLE', 'ON'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('SSL_CERT', ''),
('INNODB_LOG_BUFFER_SIZE', '12582912'),
('SOCKET', '/var/lib/mysql/mysql.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('IDENTITY', '0'),
('INNODB_MAX_PURGE_LAG', '0'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('MYISAM_MAX_SORT_FILE_SIZE', '9223372036853727232'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('SLAVE_TYPE_CONVERSIONS', ''),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '20971520'),
('SQL_NOTES', 'ON'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('LICENSE', 'GPL'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('PERFORMANCE_SCHEMA_MAX_TABLE_INSTANCES', '50000'),
('THREAD_CONCURRENCY', '16'),
('UNIQUE_CHECKS', 'ON'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('HAVE_COMPRESS', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL,
  `INDEX_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`, `INDEX_COMMENT`) VALUES
('def', '1122518', 'admin', 0, '1122518', 'PRIMARY', 1, 'AMID', 'A', 1, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'assumptions', 0, '1122518', 'PRIMARY', 1, 'Assumptions_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'assumptions', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'assumptions', 1, '1122518', 'Employee_id', 1, 'Employee_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 0, '1122518', 'PRIMARY', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 0, '1122518', 'PRIMARY', 2, 'R_id', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'Emp_id', 1, 'Emp_id', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'R_id', 1, 'R_id', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'Timestamp', 1, 'Timestamp', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'Pm_id', 1, 'Pm_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'baseline', 1, '1122518', 'Type', 1, 'TypeID', 'A', 8, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'constraints', 0, '1122518', 'PRIMARY', 1, 'Constraint_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'constraints', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'constraints', 1, '1122518', 'Employee_id', 1, 'Employee_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'constraints', 1, '1122518', 'Constraint_id', 1, 'Constraint_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'defect', 0, '1122518', 'PRIMARY', 1, 'Test_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'defect', 0, '1122518', 'PRIMARY', 2, 'Defect_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'defect', 1, '1122518', 'Test_Id', 1, 'Test_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'defect', 1, '1122518', 'Programmer_Id', 1, 'Programmer_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'diagram', 0, '1122518', 'PRIMARY', 1, 'fileid', 'A', 8, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'diagram', 1, '1122518', 'pid', 1, 'pid', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'diagram', 1, '1122518', 'empid', 1, 'empid', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'diagram', 1, '1122518', 'empid_2', 1, 'empid', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'diagram', 1, '1122518', 'pid_2', 1, 'pid', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'employee', 0, '1122518', 'PRIMARY', 1, 'Emp_id', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'employee', 0, '1122518', 'Emp_Email', 1, 'Emp_Email', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'employee', 0, '1122518', 'User_Name', 1, 'User_Name', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'file', 0, '1122518', 'PRIMARY', 1, 'fileid', 'A', 79, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'functional', 0, '1122518', 'PRIMARY', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'functional', 0, '1122518', 'PRIMARY', 2, 'FR_id', 'A', 25, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'functional', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'functional', 1, '1122518', 'Emp_id', 1, 'Emp_id', 'A', 25, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'functional', 1, '1122518', 'FR_id', 1, 'FR_id', 'A', 25, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'interface', 0, '1122518', 'PRIMARY', 1, 'Interface_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'interface', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'interface', 1, '1122518', 'Employee_id', 1, 'Employee_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'mapping', 1, '1122518', 'fileid', 1, 'fileid', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 0, '1122518', 'PRIMARY', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 0, '1122518', 'PRIMARY', 2, 'NFR_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 1, '1122518', 'NFR_id', 1, 'NFR_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 1, '1122518', 'Emp_id', 1, 'Emp_id', 'A', 10, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'non_functional', 1, '1122518', 'NFR_id_2', 1, 'NFR_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'pm_emp', 0, '1122518', 'PRIMARY', 1, 'Emp_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'pm_emp', 0, '1122518', 'PRIMARY', 2, 'Pm_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'pm_emp', 1, '1122518', 'Emp_id', 1, 'Emp_id', 'A', 20, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'pm_emp', 1, '1122518', 'Pm_id', 1, 'Pm_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'proj_task', 0, '1122518', 'PRIMARY', 1, 'TaskId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'proj_task', 1, '1122518', 'ProId', 1, 'ProId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'proj_task', 1, '1122518', 'ProId_2', 1, 'ProId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project', 0, '1122518', 'PRIMARY', 1, 'Proj_Id', 'A', 3, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project', 1, '1122518', 'Sys_Id', 1, 'Sys_Id', 'A', 3, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project', 1, '1122518', 'Sys_Id_2', 1, 'Sys_Id', 'A', 3, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_details', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', NULL, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_pm', 0, '1122518', 'PRIMARY', 1, 'Emp_Id', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_pm', 0, '1122518', 'PRIMARY', 2, 'Proj_Id', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_pm', 1, '1122518', 'Proj_Id', 1, 'Proj_Id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_pm', 1, '1122518', 'Emp_Id', 1, 'Emp_Id', 'A', 22, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_task_cost', 0, '1122518', 'PRIMARY', 1, 'PTC_TaskId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_task_cost', 1, '1122518', 'PTC_TaskId', 1, 'PTC_TaskId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 0, '1122518', 'PRIMARY', 1, 'Test_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Project_Id', 1, 'Project_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Requirement_Id', 1, 'Requirement_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Testcase_Id', 1, 'Testcase_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Project_Id_2', 1, 'Project_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Requirement_Id_2', 1, 'Requirement_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'project_testcase', 1, '1122518', 'Testcase_Id_2', 1, 'Testcase_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'prototype', 0, '1122518', 'PRIMARY', 1, 'ID', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'prototype', 1, '1122518', 'PROJECT_ID', 1, 'PROJECT_ID', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 0, '1122518', 'PRIMARY', 1, 'Project_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 0, '1122518', 'PRIMARY', 2, 'Requirement_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 0, '1122518', 'PRIMARY', 3, 'Tester_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 1, '1122518', 'Requirement_Id', 1, 'Requirement_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 1, '1122518', 'Tester_Id', 1, 'Tester_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'requirement_emp', 1, '1122518', 'Project_Id', 1, 'Project_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'status', 0, '1122518', 'PRIMARY', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'status', 0, '1122518', 'PRIMARY', 2, 'R_id', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'status', 1, '1122518', 'R_id', 1, 'R_id', 'A', 44, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'status', 1, '1122518', 'Pm_id', 1, 'Pm_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'status', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'system', 0, '1122518', 'PRIMARY', 1, 'SM_SystemID', 'A', 1, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'task_employee', 0, '1122518', 'PRIMARY', 1, 'Task_ID', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'task_employee', 0, '1122518', 'PRIMARY', 2, 'Emp_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'task_employee', 1, '1122518', 'Task_ID', 1, 'Task_ID', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'task_employee', 1, '1122518', 'Emp_Id', 1, 'Emp_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'testcase', 0, '1122518', 'PRIMARY', 1, 'Test_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'testcase', 1, '1122518', 'Test_Id', 1, 'Test_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'testcase', 1, '1122518', 'Tester_Id', 1, 'Tester_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'testcase', 1, '1122518', 'Tester_Id_2', 1, 'Tester_Id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'type', 0, '1122518', 'PRIMARY', 1, 'typeid', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'type', 1, '1122518', 'typeid', 1, 'typeid', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'use_case', 0, '1122518', 'PRIMARY', 1, 'Project_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'use_case', 0, '1122518', 'PRIMARY', 2, 'UR_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'use_case', 1, '1122518', 'Project_id', 1, 'Project_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'use_case', 1, '1122518', 'UR_id', 1, 'UR_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'use_case', 1, '1122518', 'Emp_id', 1, 'Emp_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'usecase_actors', 0, '1122518', 'PRIMARY', 1, 'UR_id', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', '1122518', 'usecase_actors', 1, '1122518', 'UR_id', 1, 'UR_id', 'A', 0, NULL, NULL, '', 'BTREE', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 384, 0, 65739264, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=174762', ''),
('def', 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 231, 0, 66819522, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=290514', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 195, 0, 65431080, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=344148', ''),
('def', 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=11210', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2565, 0, 67028580, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=26163', ''),
('def', 'information_schema', 'ENGINES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 490, 0, 66297000, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=136956', ''),
('def', 'information_schema', 'EVENTS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=2475', ''),
('def', 'information_schema', 'FILES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2677, 0, 67032080, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=25068', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 67026680, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20535', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 67026680, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20535', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4637, 0, 67064931, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=14472', ''),
('def', 'information_schema', 'PARAMETERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=24200', ''),
('def', 'information_schema', 'PARTITIONS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=22317', ''),
('def', 'information_schema', 'PLUGINS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=45313', ''),
('def', 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=95596', ''),
('def', 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 308, 0, 66248336, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=217885', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4814, 0, 67078276, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=13940', ''),
('def', 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=2334', ''),
('def', 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3464, 0, 66952192, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=19373', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2179, 0, 66954133, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=30798', ''),
('def', 'information_schema', 'SESSION_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 67026680, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20535', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 67026680, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20535', ''),
('def', 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 5753, 0, 67022450, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=11665', ''),
('def', 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 9450, 0, 67057200, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7101', ''),
('def', 'information_schema', 'TABLESPACES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6951, 0, 67098003, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=9654', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2504, 0, 66894360, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=26800', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2372, 0, 66994768, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=28292', ''),
('def', 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=2277', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1986, 0, 66906354, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=33790', ''),
('def', 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-05-11 06:45:27', '2016-05-11 06:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=27742', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6852, 0, 67067376, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=9794', ''),
('def', 'information_schema', 'INNODB_TRX', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4534, 0, 67075996, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=14801', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 257, 0, 65329400, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=261123', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 599, 0, 66996952, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=112034', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 29, 0, 60817408, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2314098', ''),
('def', 'information_schema', 'INNODB_CMP', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 25, 0, 52428800, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2684354', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 31244, 0, 67080868, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2147', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 29, 0, 60817408, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2314098', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 25, 0, 52428800, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2684354', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6669, 0, 67076802, 0, 0, NULL, '2016-05-11 06:45:27', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=10062', ''),
('def', '1122518', 'admin', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1, 16384, 16384, 0, 0, 0, NULL, '2016-04-19 18:24:41', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'assumptions', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, 1, '2016-04-19 18:24:52', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'baseline', 'BASE TABLE', 'InnoDB', 10, 'Compact', 44, 372, 16384, 0, 98304, 0, NULL, '2016-05-02 18:27:22', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'constraints', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 49152, 0, 1, '2016-04-19 18:24:53', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'defect', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, NULL, '2016-04-19 18:24:54', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'diagram', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 8, 102, 1204, 281474976710655, 6144, 388, 97, '2016-04-21 15:05:10', '2016-05-04 05:33:32', NULL, 'utf8_general_ci', NULL, '', ''),
('def', '1122518', 'employee', 'BASE TABLE', 'InnoDB', 10, 'Compact', 22, 744, 16384, 0, 32768, 0, NULL, '2016-04-20 18:57:25', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'file', 'BASE TABLE', 'InnoDB', 10, 'Compact', 79, 207, 16384, 0, 0, 0, 98, '2016-04-19 18:24:43', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'functional', 'BASE TABLE', 'InnoDB', 10, 'Compact', 25, 655, 16384, 0, 49152, 0, NULL, '2016-04-30 07:27:09', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'interface', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, 1, '2016-04-19 18:24:56', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'mapping', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 125, 528, 281474976710655, 2048, 28, NULL, '2016-04-19 18:24:45', '2016-05-03 19:30:41', NULL, 'utf8_general_ci', NULL, '', ''),
('def', '1122518', 'non_functional', 'BASE TABLE', 'InnoDB', 10, 'Compact', 20, 819, 16384, 0, 65536, 0, NULL, '2016-04-30 08:39:30', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'pm_emp', 'BASE TABLE', 'InnoDB', 10, 'Compact', 20, 819, 16384, 0, 32768, 0, NULL, '2016-04-30 07:18:08', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'proj_task', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, NULL, '2016-04-19 18:25:00', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'project', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 32768, 0, NULL, '2016-04-30 05:44:31', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'project_details', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 790, 2372, 281474976710655, 2048, 0, NULL, '2016-04-30 06:33:45', '2016-04-30 07:07:56', '2016-04-30 06:33:45', 'utf8_general_ci', NULL, '', ''),
('def', '1122518', 'project_pm', 'BASE TABLE', 'InnoDB', 10, 'Compact', 22, 744, 16384, 0, 32768, 0, NULL, '2016-04-30 07:17:27', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'project_task_cost', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, NULL, '2016-04-19 18:24:58', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'project_testcase', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 98304, 0, NULL, '2016-04-19 18:24:59', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'prototype', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, 1, '2016-04-19 18:25:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'requirement_emp', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 49152, 0, NULL, '2016-04-19 18:25:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'status', 'BASE TABLE', 'InnoDB', 10, 'Compact', 44, 372, 16384, 0, 49152, 0, NULL, '2016-04-30 09:15:33', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'system', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1, 16384, 16384, 0, 0, 0, NULL, '2016-04-19 18:24:49', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'task_employee', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, NULL, '2016-04-19 18:25:02', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'testcase', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 49152, 0, NULL, '2016-04-19 18:25:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'type', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 16384, 0, NULL, '2016-04-19 18:24:50', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'use_case', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 49152, 0, NULL, '2016-04-30 06:36:19', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', '1122518', 'usecase_actors', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, NULL, '2016-04-19 18:24:51', NULL, NULL, 'latin1_swedish_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLESPACES`
--

CREATE TEMPORARY TABLE `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `TABLESPACE_TYPE` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `EXTENT_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `NODEGROUP_ID` bigint(21) unsigned DEFAULT NULL,
  `TABLESPACE_COMMENT` varchar(2048) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
('def', '1122518', 'PRIMARY', '1122518', 'admin', 'PRIMARY KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'assumptions', 'PRIMARY KEY'),
('def', '1122518', 'assumptions_ibfk_1', '1122518', 'assumptions', 'FOREIGN KEY'),
('def', '1122518', 'assumptions_ibfk_2', '1122518', 'assumptions', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'baseline', 'PRIMARY KEY'),
('def', '1122518', 'baseline_ibfk_1', '1122518', 'baseline', 'FOREIGN KEY'),
('def', '1122518', 'baseline_ibfk_2', '1122518', 'baseline', 'FOREIGN KEY'),
('def', '1122518', 'baseline_ibfk_3', '1122518', 'baseline', 'FOREIGN KEY'),
('def', '1122518', 'baseline_ibfk_4', '1122518', 'baseline', 'FOREIGN KEY'),
('def', '1122518', 'baseline_ibfk_5', '1122518', 'baseline', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'constraints', 'PRIMARY KEY'),
('def', '1122518', 'constraints_ibfk_1', '1122518', 'constraints', 'FOREIGN KEY'),
('def', '1122518', 'constraints_ibfk_2', '1122518', 'constraints', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'defect', 'PRIMARY KEY'),
('def', '1122518', 'defect_ibfk_1', '1122518', 'defect', 'FOREIGN KEY'),
('def', '1122518', 'defect_ibfk_2', '1122518', 'defect', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'diagram', 'PRIMARY KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'employee', 'PRIMARY KEY'),
('def', '1122518', 'Emp_Email', '1122518', 'employee', 'UNIQUE'),
('def', '1122518', 'User_Name', '1122518', 'employee', 'UNIQUE'),
('def', '1122518', 'PRIMARY', '1122518', 'file', 'PRIMARY KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'functional', 'PRIMARY KEY'),
('def', '1122518', 'functional_ibfk_1', '1122518', 'functional', 'FOREIGN KEY'),
('def', '1122518', 'functional_ibfk_2', '1122518', 'functional', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'interface', 'PRIMARY KEY'),
('def', '1122518', 'interface_ibfk_1', '1122518', 'interface', 'FOREIGN KEY'),
('def', '1122518', 'interface_ibfk_2', '1122518', 'interface', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'non_functional', 'PRIMARY KEY'),
('def', '1122518', 'non_functional_ibfk_1', '1122518', 'non_functional', 'FOREIGN KEY'),
('def', '1122518', 'non_functional_ibfk_2', '1122518', 'non_functional', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'pm_emp', 'PRIMARY KEY'),
('def', '1122518', 'pm_emp_ibfk_1', '1122518', 'pm_emp', 'FOREIGN KEY'),
('def', '1122518', 'pm_emp_ibfk_2', '1122518', 'pm_emp', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'proj_task', 'PRIMARY KEY'),
('def', '1122518', 'proj_task_ibfk_1', '1122518', 'proj_task', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'project', 'PRIMARY KEY'),
('def', '1122518', 'project_ibfk_1', '1122518', 'project', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'project_pm', 'PRIMARY KEY'),
('def', '1122518', 'project_pm_ibfk_1', '1122518', 'project_pm', 'FOREIGN KEY'),
('def', '1122518', 'project_pm_ibfk_2', '1122518', 'project_pm', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'project_task_cost', 'PRIMARY KEY'),
('def', '1122518', 'project_task_cost_ibfk_1', '1122518', 'project_task_cost', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'project_testcase', 'PRIMARY KEY'),
('def', '1122518', 'project_testcase_ibfk_1', '1122518', 'project_testcase', 'FOREIGN KEY'),
('def', '1122518', 'project_testcase_ibfk_2', '1122518', 'project_testcase', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'prototype', 'PRIMARY KEY'),
('def', '1122518', 'prototype_ibfk_1', '1122518', 'prototype', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'requirement_emp', 'PRIMARY KEY'),
('def', '1122518', 'requirement_emp_ibfk_1', '1122518', 'requirement_emp', 'FOREIGN KEY'),
('def', '1122518', 'requirement_emp_ibfk_2', '1122518', 'requirement_emp', 'FOREIGN KEY'),
('def', '1122518', 'requirement_emp_ibfk_3', '1122518', 'requirement_emp', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'status', 'PRIMARY KEY'),
('def', '1122518', 'status_ibfk_1', '1122518', 'status', 'FOREIGN KEY'),
('def', '1122518', 'status_ibfk_2', '1122518', 'status', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'system', 'PRIMARY KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'task_employee', 'PRIMARY KEY'),
('def', '1122518', 'task_employee_ibfk_1', '1122518', 'task_employee', 'FOREIGN KEY'),
('def', '1122518', 'task_employee_ibfk_2', '1122518', 'task_employee', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'testcase', 'PRIMARY KEY'),
('def', '1122518', 'testcase_ibfk_1', '1122518', 'testcase', 'FOREIGN KEY'),
('def', '1122518', 'testcase_ibfk_2', '1122518', 'testcase', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'type', 'PRIMARY KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'use_case', 'PRIMARY KEY'),
('def', '1122518', 'use_case_ibfk_1', '1122518', 'use_case', 'FOREIGN KEY'),
('def', '1122518', 'use_case_ibfk_2', '1122518', 'use_case', 'FOREIGN KEY'),
('def', '1122518', 'PRIMARY', '1122518', 'usecase_actors', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''1122518''@''localhost''', 'def', 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_PAGE`
--

CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `BLOCK_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_STATE` varchar(64) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_TRX`
--

CREATE TEMPORARY TABLE `INNODB_TRX` (
  `trx_id` varchar(18) NOT NULL DEFAULT '',
  `trx_state` varchar(13) NOT NULL DEFAULT '',
  `trx_started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trx_requested_lock_id` varchar(81) DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_weight` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_mysql_thread_id` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_query` varchar(1024) DEFAULT NULL,
  `trx_operation_state` varchar(64) DEFAULT NULL,
  `trx_tables_in_use` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_tables_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_structs` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_memory_bytes` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_modified` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_concurrency_tickets` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_isolation_level` varchar(16) NOT NULL DEFAULT '',
  `trx_unique_checks` int(1) NOT NULL DEFAULT '0',
  `trx_foreign_key_checks` int(1) NOT NULL DEFAULT '0',
  `trx_last_foreign_key_error` varchar(256) DEFAULT NULL,
  `trx_adaptive_hash_latched` int(1) NOT NULL DEFAULT '0',
  `trx_adaptive_hash_timeout` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_POOL_STATS`
--

CREATE TEMPORARY TABLE `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POOL_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FREE_BUFFERS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLD_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_DECOMPRESS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_READS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LRU` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LIST` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_NOT_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `PAGES_MADE_NOT_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_CREATED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_WRITTEN` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_READ_RATE` double NOT NULL DEFAULT '0',
  `PAGES_CREATE_RATE` double NOT NULL DEFAULT '0',
  `PAGES_WRITTEN_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_GET` bigint(21) unsigned NOT NULL DEFAULT '0',
  `HIT_RATE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `READ_AHEAD_RATE` double NOT NULL DEFAULT '0',
  `READ_AHEAD_EVICTED_RATE` double NOT NULL DEFAULT '0',
  `LRU_IO_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_IO_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_LOCK_WAITS`
--

CREATE TEMPORARY TABLE `INNODB_LOCK_WAITS` (
  `requesting_trx_id` varchar(18) NOT NULL DEFAULT '',
  `requested_lock_id` varchar(81) NOT NULL DEFAULT '',
  `blocking_trx_id` varchar(18) NOT NULL DEFAULT '',
  `blocking_lock_id` varchar(81) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMPMEM`
--

CREATE TEMPORARY TABLE `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMP`
--

CREATE TEMPORARY TABLE `INNODB_CMP` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_LOCKS`
--

CREATE TEMPORARY TABLE `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL DEFAULT '',
  `lock_trx_id` varchar(18) NOT NULL DEFAULT '',
  `lock_mode` varchar(32) NOT NULL DEFAULT '',
  `lock_type` varchar(32) NOT NULL DEFAULT '',
  `lock_table` varchar(1024) NOT NULL DEFAULT '',
  `lock_index` varchar(1024) DEFAULT NULL,
  `lock_space` bigint(21) unsigned DEFAULT NULL,
  `lock_page` bigint(21) unsigned DEFAULT NULL,
  `lock_rec` bigint(21) unsigned DEFAULT NULL,
  `lock_data` varchar(8192) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMPMEM_RESET`
--

CREATE TEMPORARY TABLE `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMP_RESET`
--

CREATE TEMPORARY TABLE `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_PAGE_LRU`
--

CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED` varchar(3) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
