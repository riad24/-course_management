-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2019 at 11:21 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) UNSIGNED NOT NULL,
  `semestarID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `credit` decimal(11,0) NOT NULL,
  `course` varchar(60) NOT NULL,
  `departmentID` int(10) NOT NULL,
  `course_author` varchar(100) DEFAULT NULL,
  `course_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `semestarID`, `type`, `credit`, `course`, `departmentID`, `course_author`, `course_code`, `teacher_name`, `create_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 1, 1, '3', 'Computer and Programming Concepts	', 0, 'Kazi Nazrul Islam', '101', '', '2019-01-23 04:14:50', 1, 'admin', 'Admin'),
(2, 1, 1, '3', 'Algorithms', 0, 'Md Harun Ahmed', '102', '', '2019-01-23 04:16:59', 1, 'admin', 'Admin'),
(3, 1, 1, '2', 'Operating Systems	', 0, 'Md Rabiul Islam', '103', '', '2019-01-23 04:17:50', 1, 'admin', 'Admin'),
(4, 1, 0, '3', 'System Analysis and Design	', 0, 'Hasin Hayder', '104', '', '2019-01-23 04:18:41', 1, 'admin', 'Admin'),
(5, 1, 0, '3', 'System Analysis and Design Lab	', 0, 'Mahbub Alom', '105', '', '2019-01-23 04:19:31', 1, 'admin', 'Admin'),
(6, 2, 1, '3', 'Bangla', 0, 'Kazi Nazrul Islam', '201', '', '2019-01-23 04:20:16', 1, 'admin', 'Admin'),
(7, 2, 1, '3', 'Math', 0, 'Md Harun Ahmed', '202', '', '2019-01-23 04:21:04', 1, 'admin', 'Admin'),
(8, 2, 1, '2', 'English', 0, 'Md Rabiul Islam', '203', '', '2019-01-23 04:21:44', 1, 'admin', 'Admin'),
(9, 2, 0, '3', 'Computer', 0, 'Hasin Hayder', '204', '', '2019-01-23 04:22:13', 1, 'admin', 'Admin'),
(10, 2, 0, '3', 'Social', 0, 'Mahbub Alom', '205', '', '2019-01-23 04:23:15', 1, 'admin', 'Admin'),
(14, 3, 0, '3', 'Computer', 0, 'Hasin Hayder', '304', '', '2019-01-23 04:34:36', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'CSE'),
(2, 'EEE'),
(3, 'RAC'),
(4, 'ENGLISH');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `routineID` int(11) UNSIGNED NOT NULL,
  `intekID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`routineID`, `intekID`, `sectionID`, `courseID`, `teacherID`, `day`, `start_time`, `end_time`, `room`) VALUES
(1, 1, 1, 1, 1, 'SUNDAY', '9:15 AM', '10:15 PM', '101'),
(2, 1, 1, 1, 1, 'TUESDAY', '8:30 AM', '9:30 AM', '101'),
(3, 1, 1, 3, 3, 'WEDNESDAY', '8:00 AM', '8:00 AM', '101'),
(4, 1, 2, 4, 4, 'WEDNESDAY', '8:00 AM', '9:00 AM', '103'),
(5, 1, 3, 3, 3, 'MONDAY', '9:00 AM', '10:00 AM', '105'),
(6, 1, 3, 2, 2, 'MONDAY', '10:00 AM', '11:00 AM', '103'),
(7, 1, 2, 4, 4, 'WEDNESDAY', '10:00 AM', '11:00 AM', '103'),
(8, 1, 1, 4, 4, 'TUESDAY', '11:00 AM', '12:00 AM', '103'),
(9, 1, 1, 1, 1, 'MONDAY', '8:00 AM', '9:00 PM', '101'),
(10, 1, 2, 4, 4, 'THURSDAY', '11:15 AM', '11:15 AM', '103'),
(11, 1, 3, 3, 3, 'THURSDAY', '10:15 AM', '11:15 AM', '101'),
(12, 2, 4, 6, 1, 'MONDAY', '10:00 AM', '11:00 AM', '200'),
(13, 2, 4, 7, 2, 'MONDAY', '11:00 AM', '12:00 PM', '200'),
(14, 2, 4, 9, 4, 'WEDNESDAY', '8:30 PM', '8:30 PM', '201'),
(15, 2, 4, 7, 2, 'WEDNESDAY', '9:30 PM', '10:30 PM', '205'),
(16, 2, 5, 6, 1, 'TUESDAY', '9:30 AM', '10:30 AM', '200'),
(17, 2, 5, 9, 4, 'TUESDAY', '7:30 PM', '8:30 PM', '201'),
(18, 2, 5, 9, 4, 'THURSDAY', '8:30 PM', '8:30 PM', '200'),
(19, 2, 5, 7, 2, 'THURSDAY', '6:30 PM', '7:30 PM', '201'),
(20, 2, 6, 6, 1, 'FRIDAY', '8:45 AM', '9:45 AM', '205'),
(21, 2, 6, 9, 4, 'FRIDAY', '10:45 AM', '11:45 AM', '205'),
(22, 3, 7, 14, 4, 'MONDAY', '8:45 AM', '9:45 AM', '300'),
(23, 3, 8, 14, 4, 'THURSDAY', '8:45 AM', '9:30 AM', '302'),
(24, 3, 8, 14, 4, 'THURSDAY', '10:45 AM', '11:45 AM', '302'),
(25, 3, 9, 13, 3, 'FRIDAY', '11:45 AM', '1:00 AM', '302'),
(26, 3, 8, 15, 5, 'MONDAY', '6:30 PM', '8:45 PM', '302'),
(27, 3, 7, 13, 3, 'SATURDAY', '8:45 PM', '9:45 PM', '200'),
(28, 3, 9, 14, 4, 'TUESDAY', '10:00 AM', '10:30 AM', '302'),
(29, 4, 10, 16, 1, 'MONDAY', '9:00 PM', '10:00 PM', '400'),
(30, 4, 11, 18, 3, 'WEDNESDAY', '9:00 AM', '10:00 AM', '402'),
(31, 4, 11, 16, 1, 'WEDNESDAY', '10:00 AM', '11:00 AM', '403'),
(32, 4, 12, 19, 4, 'THURSDAY', '8:00 AM', '9:00 PM', '400'),
(33, 4, 12, 20, 5, 'TUESDAY', '8:00 AM', '9:00 AM', '403'),
(34, 4, 11, 19, 4, 'TUESDAY', '9:00 PM', '9:00 PM', '402'),
(35, 4, 10, 19, 4, 'THURSDAY', '11:00 AM', '12:00 AM', '405'),
(36, 5, 13, 22, 2, 'TUESDAY', '8:00 AM', '9:00 AM', '501'),
(37, 5, 14, 22, 2, 'WEDNESDAY', '9:00 AM', '10:00 AM', '501'),
(38, 5, 13, 24, 4, 'FRIDAY', '10:00 AM', '11:00 AM', '501'),
(39, 5, 14, 22, 2, 'THURSDAY', '9:00 AM', '10:00 AM', '501'),
(40, 5, 13, 23, 3, 'TUESDAY', '9:00 AM', '10:00 AM', '502'),
(41, 5, 15, 23, 3, 'WEDNESDAY', '8:00 AM', '9:00 AM', '503'),
(42, 5, 15, 23, 3, 'FRIDAY', '10:00 AM', '11:00 AM', '503');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionID` int(11) UNSIGNED NOT NULL,
  `section` varchar(60) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionID`, `section`, `note`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'A', '', '2019-08-09 04:07:47', '2019-01-23 04:07:47', 1, 'admin', 'Admin'),
(2, 'B', '', '2019-09-08 04:08:12', '2019-09-08 04:08:12', 1, 'admin', 'Admin'),
(3, 'C', '', '2019-09-08 04:08:38', '2019-09-08 04:08:38', 1, 'admin', 'Admin'),
(4, 'A', '', '2019-09-08 04:09:08', '2019-09-08 04:10:03', 1, 'admin', 'Admin'),
(5, 'B', '', '2019-09-08 04:09:22', '2019-09-08 04:10:11', 1, 'admin', 'Admin'),
(6, 'C', '', '2019-09-08 04:09:48', '2019-01-23 04:10:17', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `sectionID` int(11) NOT NULL,
  `departmentID` int(10) NOT NULL,
  `roll` int(11) NOT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `intekID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `sectionID`, `departmentID`, `roll`, `bloodgroup`, `country`, `registerNO`, `state`, `photo`, `intekID`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Shabbir Rahman', '2000-02-01', 'Male', 'Islam', 'sabbir@inilabs.net', '0123456789', 'mirpur,dhaka', 1, 0, 1, 'B+', 'BD', 'INI101', 'Dhaka', 'default.png', 27, 'student1', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 17:48:58', '2019-01-27 11:42:06', 1, 'admin', 'Admin'),
(2, 'Nasir Hossain', '2001-06-13', 'Male', 'Islam', 'nasir@inilabs.net', '0123456789', 'mirpur,dhaka', 1, 0, 2, 'A-', 'BD', 'INI102', 'Dhaka', 'default.png', 27, 'nasir', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 17:51:32', '2019-01-23 17:51:32', 1, 'admin', 'Admin'),
(3, 'Mosaddek Hossain', '2000-02-01', 'Male', 'Islam', 'mosaddek@inilabs.net', '0123456789', 'mirpur,dhaka', 1, 0, 3, 'B+', '0', 'INI103', 'Dhaka', 'default.png', 1, 'mosaddek', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 17:54:52', '2019-01-23 17:54:52', 1, 'admin', 'Admin'),
(4, 'Mohor Sheikh', '2005-07-13', 'Male', 'Islam', 'mohor@inilabs.net', '0123456789', 'mirpur,dhaka', 2, 0, 4, 'B-', 'BD', 'INI104', 'Dhaka', 'default.png', 1, 'mohor', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 17:58:19', '2019-01-23 17:58:19', 1, 'admin', 'Admin'),
(5, 'Shamsur Rahman', '1990-01-30', 'Male', 'Islam', 'shamsur@inilabs.net', '0123456789', 'mirpur,dhaka', 2, 0, 5, 'O+', 'BD', 'INI105', 'Dhaka', 'default.png', 1, 'shamsur', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 17:59:42', '2019-01-23 17:59:42', 1, 'admin', 'Admin'),
(6, 'Ziaur Rahman', '1995-06-14', 'Male', 'Islam', 'ziaur@inilabs.net', '0123456789', 'mirpur,dhaka', 2, 0, 6, 'AB+', 'BD', 'INI106', 'Dhaka', 'default.png', 1, 'ziaur', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:01:07', '2019-01-23 18:03:18', 1, 'admin', 'Admin'),
(7, 'Rubel hossain', '1990-07-18', 'Male', 'Islam', 'rubel@inilabs.net', '0123456789', 'mirpur,dhaka', 3, 0, 7, 'AB-', 'BD', 'INI107', 'Dhaka', 'default.png', 1, 'rubel', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:02:08', '2019-01-23 18:02:08', 1, 'admin', 'Admin'),
(8, 'Shohag gazi', '2009-01-05', 'Male', 'Islam', 'shohag@inilabs.net', '0123456789', 'mirpur,dhaka', 3, 0, 8, 'B-', 'BD', 'INI108', 'Dhaka', 'default.png', 1, 'shohag', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:04:49', '2019-01-23 18:04:49', 1, 'admin', 'Admin'),
(9, 'Arafat Sunny', '1999-06-16', 'Male', 'Islam', 'arafat@inilabs.net', '0123456789', 'mirpur,dhaka', 3, 0, 9, 'AB+', 'BD', 'INI109', 'Dhaka', 'default.png', 1, 'arafat', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:06:19', '2019-01-23 18:06:19', 1, 'admin', 'Admin'),
(10, 'Kamran Akmal', '2011-03-03', 'Male', 'Islam', 'mamunbangladesh@gmail.com', '0123456789', 'mirpur,dhaka', 4, 0, 1, 'B+', 'BD', 'INI201', 'Dhaka', 'default.png', 1, 'kamran', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:26:57', '2019-01-23 18:26:57', 1, 'admin', 'Admin'),
(11, 'Adnan akmal', '2004-08-19', 'Male', 'Islam', 'adnan@inilabs.net', '0123456789', 'mirpur,dhaka', 4, 0, 2, 'AB+', 'BD', 'INI202', 'Dhaka', 'default.png', 1, 'adnan', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:28:05', '2019-01-23 18:28:05', 1, 'admin', 'Admin'),
(12, 'Umar Akmal', '2006-08-18', 'Male', 'Islam', 'umar@inilabs.net', '0123456789', 'mirpur,dhaka', 4, 0, 3, 'AB-', 'BD', 'INI203', 'dhaka', 'default.png', 1, 'umar', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:29:48', '2019-01-23 18:29:48', 1, 'admin', 'Admin'),
(13, 'Mahmmed Hafiz', '2001-07-12', 'Male', 'Islam', 'hafiz@inilabs.net', '0123456789', 'mirpur,dhaka', 5, 0, 4, 'B+', 'BD', 'INI204', 'Dhaka', 'default.png', 1, 'hafiz', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:31:17', '2019-01-23 18:31:17', 1, 'admin', 'Admin'),
(14, 'Abdur Rahman', '2000-02-08', 'Male', 'Islam', 'abdurrahman@inilabs.net', '0123456789', 'mirpur,dhaka', 5, 0, 5, 'AB-', 'BD', 'INI205', 'dhaka', 'default.png', 1, 'abdur', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:36:16', '2019-01-23 18:36:16', 1, 'admin', 'Admin'),
(15, 'Shahid Afridi', '2000-02-01', 'Male', 'Islam', 'afridi@inilabs.net', '0123456789', 'mirpur,dhaka', 5, 0, 6, 'AB-', 'BD', 'INI206', 'Dhaka', 'default.png', 1, 'afridi', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:37:34', '2019-01-23 18:37:34', 1, 'admin', 'Admin'),
(16, 'Salman But', '2001-03-14', 'Male', 'Islam', 'salman@inilabs.net', '0123456789', 'mirpur,dhaka', 6, 0, 7, 'A+', 'BD', 'INI207', 'dhaka', 'default.png', 1, 'salman', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:39:02', '2019-01-23 18:39:02', 1, 'admin', 'Admin'),
(17, 'Mohammed Amir', '2013-01-30', 'Male', 'Islam', 'amir@inilabs.net', '0123456789', 'mirpur,dhaka', 6, 0, 8, 'O+', 'BD', 'INI208', 'dhaka', 'default.png', 1, 'amir', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:40:43', '2019-01-23 18:40:43', 1, 'admin', 'Admin'),
(18, 'Imran Tahir', '2004-11-18', 'Male', 'Islam', 'tahir@inilabs.net', '0123456789', 'mirpur,dhaka', 6, 0, 9, 'B+', 'BD', 'INI209', 'dhaka', 'default.png', 1, 'tahir', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:42:17', '2019-01-23 18:42:37', 1, 'admin', 'Admin'),
(19, 'Umar Gul', '2000-02-01', 'Male', 'Islam', 'umargul@inilabs.net', '0123456789', 'mirpur,dhaka', 7, 0, 1, 'A-', 'BD', 'INI301', 'dhaka', 'default.png', 1, 'umargul', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:45:11', '2019-01-23 20:36:18', 1, 'admin', 'Admin'),
(20, 'Wasim Akram', '2011-06-07', 'Male', 'Islam', 'wasim@inilabs.net', '0123456789', 'mirpur,dhaka', 7, 0, 2, 'A-', 'BD', 'INI302', 'dhaka', 'default.png', 1, 'wasim', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:48:24', '2019-01-23 20:36:16', 1, 'admin', 'Admin'),
(21, 'Imran Khan', '2003-05-12', 'Male', 'Islam', 'imrankhan@inilabs.net', '0123456789', 'mirpur,dhaka', 7, 0, 3, 'A-', 'BD', 'INI303', 'dhaka', 'default.png', 1, 'imran', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:50:30', '2019-01-23 20:36:14', 1, 'admin', 'Admin'),
(22, 'Mahmmed Asraful', '2000-02-02', 'Male', 'Islam', 'asraful@inilabs.net', '0123456789', 'mirpur,dhaka', 8, 0, 4, 'O+', 'BD', 'INI304', 'dhaka', 'default.png', 1, 'asraful', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:52:37', '2019-01-23 20:36:11', 1, 'admin', 'Admin'),
(23, 'Muftafizur Rahman', '2000-02-01', 'Male', 'Islam', 'mustafizur@inilabs.net', '0123456789', 'mirpur,dhaka', 8, 0, 5, 'B+', '0', 'INI305', 'dhaka', 'default.png', 1, 'mustafizur', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:53:55', '2019-01-23 20:36:09', 1, 'admin', 'Admin'),
(24, 'Elias Sunny', '1994-06-14', 'Male', 'Islam', 'elias@inilabs.net', '0123456789', 'mirpur,dhaka', 8, 0, 6, 'B-', 'BD', 'INI306', 'Dhaka', 'default.png', 1, 'elias', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:57:13', '2019-01-23 20:36:05', 1, 'admin', 'Admin'),
(25, 'Abu Hader Rony', '2007-01-31', 'Male', 'Islam', 'rony@inilabs.net', '0123456789', 'mirpur,dhaka', 9, 0, 7, 'O+', 'BD', 'INI307', 'Dhaka', 'default.png', 1, 'rony', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 18:59:37', '2019-01-23 20:35:59', 1, 'admin', 'Admin'),
(26, 'Saifuddin', '2004-06-15', 'Male', 'Islam', 'saiuddin@inilabs.net', '0123456789', 'mirpur,dhaka', 9, 0, 8, 'B+', 'BD', 'INI308', 'dhaka', 'default.png', 1, 'saifuddin', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:00:41', '2019-01-23 20:35:55', 1, 'admin', 'Admin'),
(27, 'Shafiul Islam', '2000-02-01', 'Male', 'Islam', 'shafiul@inilabs.net', '0123456789', 'mirpur,dhaka', 9, 0, 9, 'B-', 'BD', 'INI309', 'dhaka', 'default.png', 1, 'shafiul', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:07:28', '2019-01-23 20:35:49', 1, 'admin', 'Admin'),
(28, 'Sharukh Khan', '2000-02-01', 'Male', 'Islam', 'sharukh@inilabs.net', '0123456789', 'mirpur,dhaka', 10, 0, 1, 'B-', 'BD', 'INI401', 'dhaka', 'default.png', 1, 'sharukh', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:08:37', '2019-01-23 20:38:54', 1, 'admin', 'Admin'),
(29, 'Salman Khan', '2000-02-01', 'Male', 'Islam', 'salmankhan@inilabs.net', '0123456789', 'mirpur,dhaka', 10, 0, 2, 'A+', 'BD', 'INI402', 'dhaka', 'default.png', 1, 'salmankhan', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:10:38', '2019-01-23 20:38:52', 1, 'admin', 'Admin'),
(30, 'Amir Khan', '2000-02-01', 'Male', 'Islam', 'amirkhan@inilabs.net', '0123456789', 'mirpur,dhaka', 10, 0, 3, 'AB+', 'BD', 'INI403', 'dhaka', 'default.png', 1, 'amirkhan', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:12:34', '2019-01-23 20:38:49', 1, 'admin', 'Admin'),
(31, 'Irfan Khan', '2000-02-01', 'Male', 'Islam', 'irfan@inilabs.net', '0123456789', 'mirpur,dhaka', 11, 0, 4, 'A-', 'BD', 'INI404', 'dhaka', 'default.png', 1, 'irfan', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:17:12', '2019-01-23 20:38:46', 1, 'admin', 'Admin'),
(32, 'Akshay Kumar', '1990-01-01', 'Male', 'Islam', 'akshaykumar@inilabs.net', '0123456789', 'mirpur,dhaka', 11, 0, 5, 'B+', '0', 'INI405', '', 'default.png', 1, 'kumar', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:23:09', '2019-01-23 20:38:44', 1, 'admin', 'Admin'),
(33, 'Ranbeer Singh', '1994-06-07', 'Male', 'Islam', 'ranbeersingh@gmail.com', '0123456789', 'mirpur,dhaka', 11, 0, 6, 'B+', '0', 'INI406', 'dhaka', 'default.png', 1, 'ranbeersingh', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:25:29', '2019-01-23 20:38:42', 1, 'admin', 'Admin'),
(34, 'Ranbeer Kapoor', '2000-02-01', 'Male', 'Islam', 'ranbeerkapoor@inilabs.net', '0123456789', 'mirpur,dhaka', 12, 0, 7, 'B+', 'BD', 'INI407', 'dhaka', 'default.png', 1, 'ranbeerkapoor', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:29:10', '2019-01-23 20:38:41', 1, 'admin', 'Admin'),
(35, 'Allu Arjun', '2000-02-01', 'Male', 'Hindu', 'allu@inilabs.net', '0123456789', 'mirpur,dhaka', 12, 0, 8, 'B-', 'BD', 'INI408', 'dhaka', 'default.png', 1, 'allu', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:36:29', '2019-01-23 20:38:38', 1, 'admin', 'Admin'),
(36, 'Ram Charan', '2000-02-01', 'Male', 'Hindu', 'charan@inilabs.net', '0123456789', 'mirpur,dhaka', 12, 0, 9, 'AB-', 'BD', 'INI409', 'dhaka', 'default.png', 1, 'charan', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:38:03', '2019-01-23 20:38:36', 1, 'admin', 'Admin'),
(37, 'Virat Kholi', '2000-02-01', 'Male', 'Hindu', 'viratkholi@inilabs.net', '0123456789', 'mirpur,dhaka', 13, 0, 1, 'O-', 'IN', 'INI501', 'dhaka', 'default.png', 1, 'virat', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:39:54', '2019-01-23 20:52:27', 1, 'admin', 'Admin'),
(38, 'Rohit Sharma', '2000-02-01', 'Male', 'Hindu', 'rohit@inilabs.net', '0123456789', 'mirpur,dhaka', 13, 0, 2, 'O+', 'BD', 'INI502', 'dhaka', 'default.png', 1, 'rohit', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 19:41:15', '2019-01-23 20:52:24', 1, 'admin', 'Admin'),
(39, 'Ms Dhoni', '2000-02-01', 'Male', 'Hindu', 'dhoni@inilabs.net', '0123456789', 'mirpur,dhaka', 13, 0, 3, 'O-', 'BD', 'INI503', 'dhaka', 'default.png', 1, 'dhoni', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:10:46', '2019-01-23 20:52:22', 1, 'admin', 'Admin'),
(40, 'Kartina Kapoor', '2000-02-01', 'Female', 'Hindu', 'katrina@inilabs.net', '0123456789', 'mirpur,dhaka', 14, 0, 4, 'B+', 'BD', 'INI504', 'dhaka', 'default.png', 1, 'katrina', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:12:20', '2019-01-23 20:52:19', 1, 'admin', 'Admin'),
(41, 'Saif Ali', '2000-02-01', 'Male', 'Islam', 'saif@inilabs.net', '0123456789', 'mirpur,dhaka', 14, 0, 5, 'B+', 'BD', 'INI505', 'dhaka', 'default.png', 1, 'saif', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:14:06', '2019-01-23 20:52:16', 1, 'admin', 'Admin'),
(42, 'Kareena Kapoor', '2000-02-01', 'Female', 'Hindu', 'kareena@inilabs.net', '0123456789', 'mirpur,dhaka', 14, 0, 6, 'B-', 'BD', 'INI506', 'dhaka', 'default.png', 1, 'kareena', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:15:41', '2019-01-23 20:52:14', 1, 'admin', 'Admin'),
(43, 'Suresh Raina', '2000-02-01', 'Male', 'Hindu', 'raina@inilabs.net', '0123456789', 'mirpur,dhaka', 15, 0, 7, 'B-', 'BD', 'INI507', 'dhaka', 'default.png', 1, 'raina', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:16:48', '2019-01-23 20:52:11', 1, 'admin', 'Admin'),
(44, 'Mohammed Shami', '2000-02-01', 'Male', 'Islam', 'shami@inilabs.net', '0123456789', 'mirpur,dhaka', 15, 0, 8, 'A-', 'BD', 'INI508', 'dhaka', 'default.png', 1, 'shami', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:29:39', '2019-01-23 20:52:09', 1, 'admin', 'Admin'),
(45, 'Ankit Kumar', '2001-03-22', 'Male', 'Hindu', 'ankit@inilabs.net', '0123456789', 'mirpur,dhaka', 15, 0, 9, 'B+', 'BD', 'INI509', 'dhaka', 'default.png', 1, 'ankit', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 3, '2019-01-23 20:30:45', '2019-01-23 20:52:07', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabusID` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `semesterID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherID`, `name`, `designation`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, 'Dipok Kumar Haldar', 'Chief Instructor', '1990-01-01', 'Male', 'Hindu', 'dipok@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-02-06', 'default.png', 'teacher1', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 2, '2019-01-23 03:32:21', '2019-01-27 11:42:25', 1, 'admin', 'Admin', 1),
(2, 'Md Rid Islam', 'Instructor', '1990-03-01', 'Male', 'Islam', 'ridislam@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-23', 'default.png', 'teacher2', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 2, '2019-01-23 03:44:09', '2019-01-23 03:45:51', 1, 'admin', 'Admin', 1),
(3, 'Md Rostom Ali', 'Instructor', '1996-02-10', 'Male', 'Islam', 'rostomali@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-23', 'default.png', 'teacher3', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 2, '2019-01-23 03:45:17', '2019-01-23 03:45:17', 1, 'admin', 'Admin', 1),
(4, 'Riad Hossain', 'Instructor', '1990-03-01', 'Male', 'Islam', 'riadhossain@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-23', 'default.png', 'teacher4', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 2, '2019-01-23 03:46:49', '2019-01-23 03:46:49', 1, 'admin', 'Admin', 1),
(5, 'Shanon Bepari', 'Instructor', '1990-01-01', 'Male', 'Islam', 'shanon@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-23', 'default.png', 'teacher5', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 2, '2019-01-23 03:47:59', '2019-01-23 03:47:59', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, 'Rajib Hasan', '1990-06-12', 'Male', 'Islam', 'rajib@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-16', 'default.png', 'moderator', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 8, '2019-01-23 05:20:42', '2019-01-23 05:20:42', 1, 'admin', 'Admin', 1),
(2, 'Aflatun Kawser', '1994-06-14', 'Male', 'Islam', 'aflatun@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-29', 'default.png', 'receptionist', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 7, '2019-01-23 05:21:31', '2019-01-23 05:21:31', 1, 'admin', 'Admin', 1),
(3, 'Amadadul Haque', '2018-06-12', 'Male', 'Islam', 'amdadul@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-08', 'default.png', 'librarian', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 6, '2019-01-23 05:22:39', '2019-01-23 05:22:39', 1, 'admin', 'Admin', 1),
(4, 'Sumon Ahmed', '1995-07-12', 'Male', 'Islam', 'sumon@inilabs.net', '0123456789', 'mirpur,dhaka', '2019-01-15', 'default.png', 'accountant', '1488b54dbfe214090d42b91ba48f5a94e9933454532b7742eceb3c5b3cccabc53bac91ac2e8f3c04fed93f4c7685bba6f3dda5643fc966bdb0bee6e69b61c33c', 5, '2019-01-23 05:23:32', '2019-01-23 05:23:32', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2016-06-24 07:12:49', '2016-06-24 07:12:49', 1, 'admin', 'Super Admin'),
(2, 'Teacher', '2016-06-24 07:13:13', '2016-06-24 07:13:13', 1, 'admin', 'Super Admin'),
(3, 'Student', '2016-06-24 07:13:27', '2016-06-24 07:13:27', 1, 'admin', 'Super Admin'),
(4, 'Parents', '2016-06-24 07:13:42', '2016-10-25 01:12:52', 1, 'admin', 'Super Admin'),
(5, 'Accountant', '2016-06-24 07:13:54', '2016-06-24 07:13:54', 1, 'admin', 'Super Admin'),
(6, 'Librarian', '2016-06-24 09:09:43', '2016-06-24 09:09:43', 1, 'admin', 'Super Admin'),
(7, 'Receptionist', '2016-10-30 06:24:41', '2016-10-30 06:24:41', 1, 'admin', 'Admin'),
(8, 'Moderator', '2016-10-30 07:00:20', '2016-12-06 06:08:38', 1, 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routineID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabusID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `routineID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sectionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabusID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
