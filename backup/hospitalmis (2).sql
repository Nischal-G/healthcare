-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 06:41 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'admin', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Active', 'Admin'),
(2, 'admin1', 'admin1', '25f9e794323b453885f5181f1b624d0b', 'Active', 'Admin'),
(3, 'admin2', 'admin2', '25f9e794323b453885f5181f1b624d0b', 'Active', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `roomid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(44, 'Online', 22, 15, 13, '2021-05-05', '14:03:00', 37, 'Approved', 'This is test appoitnment'),
(48, 'Online', 22, 0, 0, '2021-05-08', '17:46:00', 38, 'Approved', 'This is test appoitnment'),
(50, 'Offline', 7, 0, 0, '2021-05-05', '16:05:00', 39, 'Approved', 'This is test appoitnment'),
(51, 'Online', 9, 15, 12, '2021-05-13', '15:04:00', 37, 'Approved', 'This is test appoitnment'),
(53, 'Online', 0, 15, 14, '2021-05-08', '23:58:00', 36, '', 'This is test appoitnment'),
(56, 'Online', 22, 15, 11, '2021-05-12', '00:00:00', 39, 'Approved', 'This is test appoitnment'),
(57, 'Online', 0, 15, 13, '2021-05-04', '23:58:00', 37, '', 'This is test appoitnment'),
(58, 'Out Patient', 22, 18, 14, '2021-05-12', '12:59:00', 37, 'Approved', 'This is test appoitnment'),
(60, 'Online', 37, 16, 16, '2021-05-16', '12:00:00', 42, 'Approved', 'This is test appoitnment'),
(61, 'Online', 22, 15, 13, '2021-05-13', '05:00:00', 42, 'Approved', 'This is test appoitnment'),
(62, 'InPatient', 23, 15, 13, '2021-05-03', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(63, 'Online', 0, 16, 14, '2021-05-14', '16:04:00', 38, '', 'This is test appoitnment'),
(65, 'Out Patient', 23, 15, 13, '2021-05-16', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(67, 'Online', 0, 15, 13, '2021-05-06', '13:59:00', 43, '', 'This is test appoitnment'),
(68, 'Online', 36, 15, 13, '2021-05-09', '12:59:00', 43, 'Approved', 'This is test appoitnment'),
(70, '', 38, 0, 0, '2021-05-12', '12:59:00', 0, 'Approved', 'This is test appoitnment'),
(71, 'Offline', 7, 17, 11, '2021-05-03', '13:04:00', 44, 'Active', 'This is test appoitnment'),
(72, 'InPatient', 0, 15, 12, '2021-05-04', '00:00:00', 43, '', 'This is test appoitnment'),
(73, 'InPatient', 0, 15, 12, '2021-05-07', '00:00:00', 43, '', 'This is test appoitnment'),
(74, 'Online', 39, 15, 12, '2021-05-09', '01:00:00', 43, 'Approved', 'This is test appoitnment'),
(75, 'OutPatient', 0, 15, 11, '2021-05-05', '13:59:00', 37, '', 'This is test appoitnment'),
(76, 'Out Patient', 22, 16, 11, '2021-05-09', '11:00:00', 35, 'Approved', 'This is test appoitnment'),
(77, 'Out Patient', 22, 0, 11, '2021-05-14', '11:00:00', 39, 'Approved', 'This is test appoitnment'),
(78, 'Offline', 7, 15, 12, '2021-05-13', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(79, 'Out Patient', 40, 0, 11, '2021-05-06', '00:00:00', 45, 'Approved', 'This is test appoitnment'),
(80, 'Out Patient', 22, 0, 11, '2021-05-03', '00:00:00', 45, 'Approved', 'This is test appoitnment'),
(81, 'Out Patient', 22, 15, 13, '2021-05-08', '02:00:00', 37, 'Approved', 'This is test appoitnment'),
(82, 'Out Patient', 22, 16, 11, '2021-05-15', '02:00:00', 35, 'Approved', 'This is test appoitnment'),
(83, '', 22, 0, 12, '2021-05-05', '02:00:00', 0, 'Approved', 'This is test appoitnment'),
(84, '', 0, 0, 11, '2021-05-08', '12:59:00', 39, 'Approved', 'This is test appoitnment'),
(85, 'ONLINE', 0, 0, 11, '2021-05-06', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(86, 'ONLINE', 0, 0, 11, '2021-05-04', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(87, 'ONLINE', 41, 0, 11, '2021-05-14', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(88, 'ONLINE', 0, 0, 19, '2021-05-12', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(89, 'ONLINE', 0, 0, 19, '2021-05-15', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(90, 'Out Patient', 42, 0, 19, '2021-05-08', '12:59:00', 40, 'Approved', 'This is test appoitnment'),
(91, 'InPatient', 43, 15, 11, '2021-05-06', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(92, 'InPatient', 441, 15, 11, '2021-05-05', '12:59:00', 36, 'Approved', 'This is test appoitnment'),
(93, 'InPatient', 47, 15, 12, '2021-05-16', '01:00:00', 36, 'Approved', 'This is test appoitnment'),
(94, 'InPatient', 47, 15, 12, '2021-05-09', '01:00:00', 36, 'Active', 'This is test appoitnment'),
(95, 'InPatient', 7, 15, 12, '2021-05-10', '01:01:00', 44, 'Active', 'This is test appoitnment'),
(96, 'InPatient', 45, 15, 12, '2021-05-04', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(97, 'InPatient', 48, 15, 13, '2021-05-04', '01:00:00', 35, 'Approved', 'This is test appoitnment'),
(98, 'ONLINE', 7, 0, 11, '2021-05-04', '11:11:00', 0, 'Pending', 'This is test appoitnment'),
(99, '', 0, 0, 0, '2021-05-07', '00:00:00', 0, '', 'This is test appoitnment'),
(100, '', 0, 0, 0, '2021-05-05', '00:00:00', 0, '', 'This is test appoitnment'),
(101, 'Out Patient', 50, 15, 11, '2021-05-03', '03:33:00', 0, 'Approved', 'This is test appoitnment'),
(102, 'Online', 0, 0, 0, '2021-05-10', '00:00:00', 0, '', 'This is test appoitnment'),
(103, 'Out Patient', 0, 0, 11, '2021-05-11', '08:41:00', 45, 'Approved', 'This is test appoitnment'),
(104, 'Out Patient', 7, 15, 11, '2021-05-10', '08:41:00', 35, 'Approved', 'This is test appoitnment'),
(105, '', 7, 0, 11, '2021-05-14', '11:11:00', 35, 'Approved', 'This is test appoitnment'),
(106, 'Out Patient', 53, 15, 11, '2021-05-08', '10:00:00', 35, 'Approved', 'This is test appoitnment'),
(107, 'Out Patient', 9, 15, 11, '2021-05-09', '11:11:00', 35, 'Approved', 'This is test appoitnment'),
(108, 'Out Patient', 7, 15, 11, '2021-05-05', '05:05:00', 35, 'Approved', 'This is test appoitnment'),
(109, 'InPatient', 54, 16, 15, '2021-05-12', '03:00:00', 0, 'Approved', 'This is test appoitnment'),
(110, 'InPatient', 56, 16, 11, '2021-05-12', '02:22:00', 42, 'Approved', 'This is test appoitnment'),
(111, 'InPatient', 44, 16, 12, '2021-05-08', '13:00:00', 36, 'Approved', 'This is test appoitnment'),
(112, 'Out Patient', 44, 0, 12, '2021-05-15', '01:02:00', 36, 'Approved', 'This is test appoitnment'),
(113, 'Out Patient', 7, 0, 11, '2021-05-09', '00:02:00', 35, 'Approved', 'This is test appoitnment'),
(114, 'Out Patient', 7, 0, 11, '2021-05-10', '11:11:00', 35, 'Approved', 'This is test appoitnment'),
(115, 'ONLINE', 7, 0, 12, '2021-05-07', '11:22:00', 0, 'Pending', 'This is test appoitnment'),
(116, 'Out Patient', 7, 0, 11, '2021-05-16', '08:08:00', 35, 'Approved', 'This is test appoitnment'),
(117, 'Out Patient', 7, 0, 12, '2021-05-14', '01:01:00', 46, 'Approved', 'This is test appoitnment'),
(118, 'Out Patient', 9, 0, 11, '2021-05-05', '14:01:00', 35, 'Approved', 'This is test appoitnment'),
(119, 'Out Patient', 56, 0, 11, '2021-05-09', '03:02:00', 35, 'Approved', 'This is test appoitnment'),
(120, '', 57, 0, 11, '2021-05-14', '09:00:00', 35, 'Approved', 'This is test appoitnment'),
(121, '', 59, 0, 17, '2021-05-11', '13:07:00', 41, 'Active', 'This is test appoitnment'),
(122, '', 43, 0, 15, '2021-06-01', '11:43:00', 36, 'Approved', 'test'),
(123, 'ONLINE', 45, 0, 11, '0000-00-00', '00:00:00', 35, 'Pending', ''),
(124, '', 43, 0, 11, '2021-06-10', '13:53:00', 35, 'Active', 'test'),
(125, '', 60, 0, 12, '2021-06-10', '14:13:00', 36, 'Approved', 'test'),
(126, '', 60, 0, 11, '2021-06-18', '14:28:00', 0, 'Approved', 'tst'),
(127, '', 62, 0, 11, '2021-06-12', '19:31:00', 35, 'Approved', 'dfdf'),
(128, 'ONLINE', 64, 0, 12, '2021-06-03', '20:30:00', 62, 'Pending', 'test'),
(129, '', 65, 0, 11, '2021-06-03', '20:46:00', 35, 'Approved', 'pat'),
(130, 'ONLINE', 65, 0, 12, '2021-06-10', '20:51:00', 36, 'Pending', 'g'),
(131, '', 63, 0, 11, '2021-06-10', '20:54:00', 35, 'Approved', 'g'),
(132, '', 66, 0, 11, '2021-06-16', '21:19:00', 35, 'Approved', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`, `discharge_time`, `discharge_date`) VALUES
(5, 47, 94, '2021-05-08', '10:12:38', 0.00, 0.00, 'test Discount Reason ', '12:54:04', '2021-05-11'),
(6, 7, 78, '2021-05-13', '08:21:22', 0.00, 0.00, 'test Discount Reason ', '06:54:04', '2021-05-17'),
(7, 7, 95, '2021-05-14', '08:54:33', 0.00, 0.00, 'test Discount Reason ', '04:54:04', '2021-05-16'),
(8, 45, 96, '2021-05-13', '08:56:38', 0.00, 0.00, 'test Discount Reason ', '01:54:04', '2021-05-18'),
(9, 22, 61, '2021-05-08', '09:57:39', 0.00, 0.00, 'test Discount Reason ', '10:54:04', '2021-05-22'),
(10, 48, 97, '2021-05-13', '10:06:57', 1370.00, 0.00, 'test Discount Reason ', '01:54:04', '2021-05-20'),
(11, 42, 90, '2021-05-11', '10:11:59', 0.00, 0.00, 'test Discount Reason ', '06:54:04', '2021-05-10'),
(12, 0, 0, '2021-05-11', '00:00:00', 100.00, 0.00, 'test Discount Reason ', '09:54:04', '2021-05-09'),
(13, 0, 0, '2021-05-06', '00:00:00', 100.00, 0.00, 'test Discount Reason ', '14:54:04', '2021-05-19'),
(14, 7, 105, '2021-05-11', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '02:54:04', '2021-05-21'),
(15, 53, 106, '2021-05-03', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '08:54:04', '2021-05-09'),
(16, 50, 101, '2021-05-08', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '04:54:04', '2021-05-17'),
(17, 22, 76, '2021-05-03', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '11:54:04', '2021-05-21'),
(18, 9, 107, '2021-05-13', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '02:54:04', '2021-05-16'),
(19, 7, 108, '2021-05-14', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '04:54:04', '2021-05-22'),
(20, 54, 109, '2021-05-15', '00:00:00', 0.00, 0.00, 'test Discount Reason ', '12:54:04', '2021-05-14'),
(21, 23, 65, '2021-05-16', '13:29:51', 0.00, 0.00, 'test Discount Reason ', '05:54:04', '2021-05-09'),
(22, 22, 77, '2021-05-04', '14:53:12', 0.00, 0.00, 'test Discount Reason ', '04:54:04', '2021-05-20'),
(23, 0, 103, '2021-05-13', '14:53:45', 0.00, 0.00, 'test Discount Reason ', '04:54:04', '2021-05-12'),
(24, 43, 91, '2021-05-06', '15:19:16', 0.00, 0.00, 'test Discount Reason ', '06:54:04', '2021-05-16'),
(25, 56, 110, '2021-05-16', '09:44:13', 0.00, 0.00, 'test Discount Reason ', '06:54:04', '2021-05-10'),
(26, 40, 79, '2021-05-03', '15:12:42', 0.00, 0.00, 'test Discount Reason ', '09:54:04', '2021-05-20'),
(27, 22, 80, '2021-05-09', '09:44:21', 0.00, 0.00, 'test Discount Reason ', '13:54:04', '2021-05-20'),
(28, 22, 81, '2021-05-06', '09:52:34', 0.00, 0.00, 'test Discount Reason ', '08:54:04', '2021-05-18'),
(29, 22, 82, '2021-05-14', '15:10:46', 0.00, 0.00, 'test Discount Reason ', '03:54:04', '2021-05-21'),
(30, 44, 111, '2021-05-08', '09:06:39', 0.00, 0.00, 'test Discount Reason ', '05:54:04', '2021-05-15'),
(31, 44, 112, '2021-05-07', '09:47:26', 0.00, 0.00, 'test Discount Reason ', '01:54:04', '2021-05-16'),
(32, 7, 113, '2021-05-09', '09:57:00', 0.00, 0.00, 'test Discount Reason ', '03:54:04', '2021-05-14'),
(33, 7, 114, '2021-05-07', '10:02:46', 0.00, 0.00, 'test Discount Reason ', '12:54:04', '2021-05-14'),
(34, 7, 116, '2021-05-07', '10:11:49', 0.00, 0.00, 'test Discount Reason ', '09:54:04', '2021-05-19'),
(35, 7, 117, '2021-05-11', '12:03:12', 0.00, 0.00, 'test Discount Reason ', '08:54:04', '2021-05-17'),
(36, 9, 118, '2021-05-16', '13:20:28', 0.00, 0.00, 'test Discount Reason ', '13:54:04', '2021-05-18'),
(37, 56, 119, '2021-05-16', '03:26:19', 0.00, 0.00, 'test Discount Reason ', '10:54:04', '2021-05-16'),
(38, 57, 120, '2021-05-03', '21:13:33', 0.00, 0.00, 'test Discount Reason ', '13:54:04', '2021-05-20'),
(39, 22, 83, '2021-06-03', '10:18:55', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(40, 60, 125, '2021-06-03', '10:38:05', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(41, 62, 127, '2021-06-03', '15:49:06', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(42, 60, 126, '2021-06-03', '15:52:10', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(43, 43, 124, '2021-06-03', '16:43:17', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(44, 65, 129, '2021-06-03', '17:02:15', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(45, 63, 131, '2021-06-03', '17:10:01', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(46, 66, 132, '2021-06-03', '17:35:20', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE `billing_records` (
  `billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 6, 0, 'Room Rent', 690.00, '2021-05-16', 'Active'),
(2, 6, 0, 'Consultancy Charge', 690.00, '2021-05-13', 'Active'),
(3, 6, 0, 'Treatment Charge', 690.00, '2021-05-11', 'Active'),
(4, 6, 0, 'Service Charge', 690.00, '2021-05-03', 'Active'),
(5, 6, 0, 'Prescription Charge', 690.00, '2021-05-05', 'Active'),
(6, 7, 0, 'Room Rent', 690.00, '2021-05-15', 'Active'),
(7, 7, 0, 'Consultancy Charge', 690.00, '2021-05-15', 'Active'),
(8, 7, 0, 'Treatment Charge', 690.00, '2021-05-14', 'Active'),
(9, 7, 0, 'Service Charge', 690.00, '2021-05-08', 'Active'),
(10, 7, 0, 'Prescription Charge', 690.00, '2021-05-09', 'Active'),
(11, 8, 0, 'Room Rent', 690.00, '2021-05-06', 'Active'),
(12, 8, 0, 'Consultancy Charge', 690.00, '2021-05-12', 'Active'),
(13, 8, 0, 'Treatment Charge', 690.00, '2021-05-14', 'Active'),
(14, 8, 0, 'Service Charge', 690.00, '2021-05-03', 'Active'),
(15, 8, 0, 'Prescription Charge', 690.00, '2021-05-13', 'Active'),
(16, 9, 15, 'Room Rent', 500.00, '2021-05-10', 'Active'),
(17, 9, 15, 'Room Rent', 500.00, '2021-05-07', 'Active'),
(18, 9, 0, 'Room Rent', 690.00, '2021-05-05', 'Active'),
(19, 9, 0, 'Room Rent', 690.00, '2021-05-16', 'Active'),
(20, 9, 0, 'Room Rent', 690.00, '2021-05-05', 'Active'),
(21, 9, 15, 'Room Rent', 500.00, '2021-05-05', 'Active'),
(22, 9, 18, 'Room Rent', 150.00, '2021-05-07', 'Active'),
(23, 9, 18, 'Room Rent', 150.00, '2021-05-15', 'Active'),
(24, 10, 15, 'Room Rent', 500.00, '2021-05-11', 'Active'),
(25, 10, 35, 'Consultancy Charge', 600.00, '2021-05-06', 'Active'),
(26, 10, 35, 'Treatment Cost', 450.00, '2021-05-10', 'Active'),
(27, 10, 35, 'Consultancy Charge', 600.00, '2021-05-03', 'Active'),
(28, 10, 13, 'Treatment Cost', 450.00, '2021-05-10', 'Active'),
(30, 10, 28, 'Prescription Charge for Treatment for Malaria', 1190.00, '2021-05-08', 'Active'),
(31, 10, 11, 'Service Charge', 450.00, '2021-05-09', 'Active'),
(32, 10, 11, 'Service Charge', 450.00, '2021-05-05', 'Active'),
(33, 10, 11, 'Service Charge', 450.00, '2021-05-08', 'Active'),
(34, 10, 12, 'Service Charge', 300.00, '2021-05-10', 'Active'),
(35, 10, 12, 'Service Charge', 550.00, '2021-05-11', 'Active'),
(36, 10, 12, 'Service Charge', 550.00, '2021-05-05', 'Active'),
(37, 9, 11, 'Service Charge', 1105.00, '2021-05-06', 'Active'),
(38, 9, 11, 'Service Charge', 1105.00, '2021-05-13', 'Active'),
(39, 9, 11, 'Service Charge', 1105.00, '2021-05-14', 'Active'),
(40, 9, 36, 'Prescription Charge', 0.00, '2021-05-14', 'Active'),
(41, 9, 37, 'Prescription Charge', 20.00, '2021-05-11', 'Active'),
(42, 9, 38, 'Prescription Charge', 444.00, '2021-05-12', 'Active'),
(43, 7, 39, 'Prescription Charge', 100.00, '2021-05-10', 'Active'),
(44, 7, 40, 'Prescription Charge', 20.00, '2021-05-10', 'Active'),
(45, 9, 41, 'Prescription Charge', 0.00, '2021-05-05', 'Active'),
(46, 9, 42, 'Prescription Charge', 20.00, '2021-05-06', 'Active'),
(47, 9, 43, 'Prescription Charge', 20.00, '2021-05-14', 'Active'),
(48, 9, 44, 'Prescription Charge', 444.00, '2021-05-08', 'Active'),
(49, 9, 45, 'Prescription Charge', 0.00, '2021-05-09', 'Active'),
(50, 9, 46, 'Prescription Charge', 11111.00, '2021-05-16', 'Active'),
(51, 15, 15, 'Room Rent', 500.00, '2021-05-11', 'Active'),
(52, 15, 35, 'Consultancy Charge', 700.00, '2021-05-16', 'Active'),
(53, 15, 13, 'Treatment', 450.00, '2021-05-06', 'Active'),
(54, 12, 15, 'Room Rent', 500.00, '2021-05-05', 'Active'),
(55, 12, 15, 'Room Rent', 500.00, '2021-05-03', 'Active'),
(56, 12, 15, 'Room Rent', 500.00, '2021-05-14', 'Active'),
(57, 15, 35, 'Consultancy Charge', 700.00, '2021-05-04', 'Active'),
(58, 15, 14, 'Treatment', 20000.00, '2021-05-15', 'Active'),
(59, 15, 35, 'Consultancy Charge', 700.00, '2021-05-04', 'Active'),
(60, 15, 13, 'Treatment', 450.00, '2021-05-03', 'Active'),
(61, 16, 15, 'Room Rent', 500.00, '2021-05-12', 'Active'),
(62, 16, 35, 'Consultancy Charge', 700.00, '2021-05-08', 'Active'),
(63, 16, 13, 'Treatment', 450.00, '2021-05-03', 'Active'),
(64, 17, 16, 'Room Rent', 100.00, '2021-05-14', 'Active'),
(65, 14, 15, 'Room Rent', 500.00, '2021-05-16', 'Active'),
(66, 12, 15, 'Room Rent', 500.00, '2021-05-08', 'Active'),
(67, 17, 47, 'Prescription Charge', 231.00, '2021-05-03', 'Active'),
(68, 18, 15, 'Room Rent', 500.00, '2021-05-03', 'Active'),
(69, 14, 48, 'Prescription Charge', 0.00, '2021-05-05', 'Active'),
(70, 14, 49, 'Prescription Charge', 70.00, '2021-05-11', 'Active'),
(71, 19, 15, 'Room Rent', 500.00, '2021-05-10', 'Active'),
(72, 19, 35, 'Consultancy Charge', 700.00, '2021-05-03', 'Active'),
(73, 19, 13, 'Treatment', 450.00, '2021-05-08', 'Active'),
(74, 17, 50, 'Prescription Charge', 50.00, '2021-05-16', 'Active'),
(75, 17, 51, 'Prescription Charge', 30.00, '2021-05-10', 'Active'),
(76, 19, 52, 'Prescription Charge', 20.00, '2021-05-14', 'Active'),
(77, 5, 53, 'Prescription Charge', 50.00, '2021-05-09', 'Active'),
(78, 19, 54, 'Prescription Charge', 30.00, '2021-05-16', 'Active'),
(79, 5, 55, 'Prescription Charge', 45.00, '2021-05-08', 'Active'),
(80, 19, 37, 'Consultancy Charge', 20.00, '2021-05-05', 'Active'),
(81, 19, 15, 'Treatment', 554.00, '2021-05-11', 'Active'),
(82, 19, 38, 'Consultancy Charge', 200.00, '2021-05-09', 'Active'),
(83, 19, 14, 'Treatment', 20000.00, '2021-05-10', 'Active'),
(84, 12, 16, 'Room Rent', 100.00, '2021-05-05', 'Active'),
(85, 20, 38, 'Consultancy Charge', 200.00, '2021-05-07', 'Active'),
(86, 20, 14, 'Treatment', 20000.00, '2021-05-03', 'Active'),
(87, 20, 11, 'Service Charge', 1000.00, '2021-05-05', 'Active'),
(88, 20, 57, 'Prescription Charge', 80.00, '2021-05-13', 'Active'),
(89, 19, 37, 'Consultancy Charge', 20.00, '2021-05-08', 'Active'),
(90, 19, 14, 'Treatment', 20000.00, '2021-05-11', 'Active'),
(91, 19, 38, 'Consultancy Charge', 200.00, '2021-05-14', 'Active'),
(92, 19, 14, 'Treatment', 20000.00, '2021-05-09', 'Active'),
(93, 19, 38, 'Consultancy Charge', 200.00, '2021-05-12', 'Active'),
(94, 19, 14, 'Treatment', 20000.00, '2021-05-03', 'Active'),
(95, 19, 38, 'Consultancy Charge', 200.00, '2021-05-04', 'Active'),
(96, 19, 14, 'Treatment', 20000.00, '2021-05-07', 'Active'),
(97, 19, 38, 'Consultancy Charge', 200.00, '2021-05-08', 'Active'),
(98, 19, 14, 'Treatment', 20000.00, '2021-05-03', 'Active'),
(99, 19, 38, 'Consultancy Charge', 200.00, '2021-05-15', 'Active'),
(100, 19, 14, 'Treatment', 20000.00, '2021-05-09', 'Active'),
(101, 21, 35, 'Consultancy Charge', 700.00, '2021-05-10', 'Active'),
(102, 21, 13, 'Treatment', 450.00, '2021-05-07', 'Active'),
(103, 24, 35, 'Consultancy Charge', 700.00, '2021-05-03', 'Active'),
(104, 24, 14, 'Treatment', 20000.00, '2021-05-04', 'Active'),
(105, 21, 60, 'Prescription Charge', 75.00, '2021-05-10', 'Active'),
(106, 24, 35, 'Consultancy Charge', 700.00, '2021-05-05', 'Active'),
(107, 24, 13, 'Treatment', 450.00, '2021-05-09', 'Active'),
(108, 24, 37, 'Prescription Charge', 20.00, '2021-05-15', 'Active'),
(109, 25, 16, 'Room Rent', 100.00, '2021-05-15', 'Active'),
(110, 25, 42, 'Consultancy Charge', 20.00, '2021-05-14', 'Active'),
(111, 25, 14, 'Treatment', 20000.00, '2021-05-07', 'Active'),
(112, 25, 42, 'Consultancy Charge', 20.00, '2021-05-04', 'Active'),
(113, 25, 19, 'Treatment', 4000.00, '2021-05-10', 'Active'),
(114, 8, 35, 'Consultancy Charge', 700.00, '2021-05-09', 'Active'),
(115, 8, 15, 'Treatment', 554.00, '2021-05-14', 'Active'),
(116, 19, 35, 'Consultancy Charge', 700.00, '2021-05-11', 'Active'),
(117, 19, 13, 'Treatment', 450.00, '2021-05-12', 'Active'),
(118, 5, 38, 'Prescription Charge', 0.00, '2021-05-08', 'Active'),
(119, 18, 37, 'Consultancy Charge', 300.00, '2021-05-04', 'Active'),
(120, 18, 14, 'Treatment', 20000.00, '2021-05-05', 'Active'),
(121, 18, 39, 'Prescription Charge', 100.00, '2021-05-13', 'Active'),
(122, 18, 40, 'Prescription Charge', 20.00, '2021-05-04', 'Active'),
(123, 18, 41, 'Prescription Charge', 0.00, '2021-05-09', 'Active'),
(124, 18, 37, 'Consultancy Charge', 300.00, '2021-05-14', 'Active'),
(125, 18, 13, 'Treatment', 450.00, '2021-05-15', 'Active'),
(126, 18, 42, 'Prescription Charge', 20.00, '2021-05-13', 'Active'),
(127, 5, 36, 'Consultancy Charge', 500.00, '2021-05-07', 'Active'),
(128, 5, 13, 'Treatment', 450.00, '2021-05-05', 'Active'),
(129, 5, 43, 'Prescription Charge', 20.00, '2021-05-15', 'Active'),
(130, 19, 46, 'Prescription Charge', 0.00, '2021-05-15', 'Active'),
(131, 19, 48, 'Prescription Charge', 0.00, '2021-05-14', 'Active'),
(132, 19, 49, 'Prescription Charge', 70.00, '2021-05-08', 'Active'),
(133, 19, 50, 'Prescription Charge', 50.00, '2021-05-09', 'Active'),
(134, 19, 51, 'Prescription Charge', 30.00, '2021-05-04', 'Active'),
(135, 19, 52, 'Prescription Charge', 20.00, '2021-05-07', 'Active'),
(136, 19, 53, 'Prescription Charge', 50.00, '2021-05-05', 'Active'),
(137, 19, 54, 'Prescription Charge', 30.00, '2021-05-03', 'Active'),
(138, 12, 55, 'Prescription Charge', 45.00, '2021-05-12', 'Active'),
(139, 12, 56, 'Prescription Charge', 50.00, '2021-05-07', 'Active'),
(140, 12, 57, 'Prescription Charge', 80.00, '2021-05-10', 'Active'),
(141, 25, 58, 'Prescription Charge', 70.00, '2021-05-12', 'Active'),
(142, 25, 59, 'Prescription Charge', 100.00, '2021-05-15', 'Active'),
(143, 20, 60, 'Prescription Charge', 75.00, '2021-05-08', 'Active'),
(144, 19, 61, 'Prescription Charge', 20.00, '2021-05-06', 'Active'),
(145, 19, 63, 'Prescription Charge', 20.00, '2021-05-16', 'Active'),
(146, 10, 64, 'Prescription Charge', 25.00, '2021-05-06', 'Active'),
(147, 19, 68, 'Prescription Charge', 70.00, '2021-05-05', 'Active'),
(148, 28, 15, 'Room Rent', 500.00, '2021-05-04', 'Active'),
(149, 28, 15, 'Room Rent', 500.00, '2021-05-04', 'Active'),
(150, 28, 15, 'Room Rent', 500.00, '2021-05-07', 'Active'),
(151, 28, 15, 'Room Rent', 500.00, '2021-05-03', 'Active'),
(152, 29, 16, 'Room Rent', 100.00, '2021-05-09', 'Active'),
(153, 29, 16, 'Room Rent', 100.00, '2021-05-05', 'Active'),
(154, 29, 16, 'Room Rent', 100.00, '2021-05-08', 'Active'),
(155, 29, 69, 'Prescription Charge', 70.00, '2021-05-09', 'Active'),
(156, 19, 70, 'Prescription Charge', 75.00, '2021-05-03', 'Active'),
(157, 19, 71, 'Prescription Charge', 50.00, '2021-05-13', 'Active'),
(158, 19, 74, 'Prescription Charge', 0.00, '2021-05-13', 'Active'),
(159, 19, 75, 'Prescription Charge', 50.00, '2021-05-07', 'Active'),
(160, 23, 16, 'Room Rent', 100.00, '2021-05-11', 'Active'),
(161, 18, 35, 'Consultancy Charge', 700.00, '2021-05-03', 'Active'),
(162, 18, 15, 'Treatment', 554.00, '2021-05-07', 'Active'),
(163, 19, 76, 'Prescription Charge', 225.00, '2021-05-10', 'Active'),
(164, 19, 35, 'Consultancy Charge', 700.00, '2021-05-10', 'Active'),
(165, 19, 13, 'Treatment', 450.00, '2021-05-06', 'Active'),
(166, 5, 77, 'Prescription Charge', 965.00, '2021-05-09', 'Active'),
(167, 30, 16, 'Room Rent', 100.00, '2021-05-12', 'Active'),
(168, 30, 36, 'Consultancy Charge', 500.00, '2021-05-14', 'Active'),
(169, 30, 14, 'Treatment', 20000.00, '2021-05-07', 'Active'),
(170, 30, 36, 'Consultancy Charge', 500.00, '2021-05-04', 'Active'),
(171, 30, 17, 'Treatment', 5653.00, '2021-05-10', 'Active'),
(172, 30, 78, 'Prescription Charge', 320.00, '2021-05-09', 'Active'),
(173, 30, 79, 'Prescription Charge', 0.00, '2021-05-11', 'Active'),
(174, 31, 36, 'Consultancy Charge', 500.00, '2021-05-12', 'Active'),
(175, 31, 13, 'Treatment', 450.00, '2021-05-11', 'Active'),
(176, 31, 10, 'Service Charge', 250.00, '2021-05-03', 'Active'),
(177, 34, 35, 'Consultancy Charge', 700.00, '2021-05-07', 'Active'),
(178, 34, 14, 'Treatment', 20000.00, '2021-05-09', 'Active'),
(179, 34, 80, 'Prescription Charge', 250.00, '2021-05-07', 'Active'),
(180, 35, 35, 'Consultancy Charge', 700.00, '2021-05-08', 'Active'),
(181, 35, 13, 'Treatment', 450.00, '2021-05-15', 'Active'),
(182, 37, 35, 'Consultancy Charge', 700.00, '2021-05-07', 'Active'),
(183, 37, 13, 'Treatment', 450.00, '2021-05-13', 'Active'),
(184, 37, 81, 'Prescription Charge', 100.00, '2021-05-15', 'Active'),
(185, 35, 82, 'Prescription Charge', 0.00, '2021-05-07', 'Active'),
(186, 35, 83, 'Prescription Charge', 50.00, '2021-05-16', 'Active'),
(187, 35, 84, 'Prescription Charge', 40.00, '2021-05-12', 'Active'),
(188, 12, 85, 'Prescription Charge', 40.00, '2021-05-10', 'Active'),
(189, 15, 86, 'Prescription Charge', 325.00, '2021-05-13', 'Active'),
(190, 15, 87, 'Prescription Charge', 800.00, '2021-05-04', 'Active'),
(191, 12, 88, 'Prescription Charge', 150.00, '2021-05-05', 'Active'),
(192, 29, 89, 'Prescription Charge', 550.00, '2021-05-12', 'Active'),
(193, 35, 90, 'Prescription Charge', 0.00, '2021-05-13', 'Active'),
(194, 29, 91, 'Prescription Charge', 450.00, '2021-05-13', 'Active'),
(195, 29, 92, 'Prescription Charge', 1125.00, '2021-05-10', 'Active'),
(196, 29, 93, 'Prescription Charge', 0.00, '2021-05-10', 'Active'),
(197, 29, 94, 'Prescription Charge', 1700.00, '2021-05-14', 'Active'),
(198, 29, 95, 'Prescription Charge', 0.00, '2021-05-13', 'Active'),
(199, 29, 96, 'Prescription Charge', 1450.00, '2021-05-04', 'Active'),
(200, 29, 97, 'Prescription Charge', 650.00, '2021-05-06', 'Active'),
(201, 38, 35, 'Consultancy Charge', 700.00, '2021-05-05', 'Active'),
(202, 38, 14, 'Treatment', 20000.00, '2021-05-15', 'Active'),
(203, 38, 98, 'Prescription Charge', 0.00, '2021-05-16', 'Active'),
(204, 38, 99, 'Prescription Charge', 350.00, '2021-05-03', 'Active'),
(205, 45, 100, 'Prescription Charge', 0.00, '2021-06-03', 'Active'),
(206, 45, 35, 'Consultancy Charge', 700.00, '2021-06-03', 'Active'),
(207, 45, 14, 'Treatment', 20000.00, '2021-06-03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(11, 'Physician', 'All type of disease', 'Active'),
(12, 'Children doctor', 'All kinds of disease', 'Active'),
(13, 'General Medicne1', 'General doctor', 'Active'),
(14, 'ENT Specialist', 'Ear, Nose and Tongue Doctor', 'Active'),
(15, 'Neurologist', 'Related neurons, bones', 'Active'),
(16, 'Surgery', 'Includes plastic surgery, brain and neurology surgery', 'Active'),
(17, 'Pediatrics', 'Pediatrics doctor', 'Active'),
(18, 'Pharmacy', 'Providing patients with medicines prescribed by specialist physicians', 'Active'),
(19, 'Laboratory and Blood bank', 'Includes detailed lab investigations and blood bank are developing considerably as per international standards  ', 'Active'),
(20, 'Physiotherapy', 'Includes services to specialized clinic inpatients who are referred by hospital physicians or primary health care clinics.', 'Active'),
(25, 'physician', 'All type', ''),
(46, 'test', 'test', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(35, 'Ram Kumar Thapa', '1234567890', 11, 'doctor', '123456789', 'Active', 'MBBS,MD,IDCCM', 7.0, 700.00),
(36, 'Biraj KC', '1234567890', 12, 'doctor1', '123456789', 'Active', 'MBBS,MD', 5.0, 500.00),
(37, 'Pukar Chhetri', '1234567890', 13, 'doctor2', '123456789', 'Active', 'MBBS,DNB(ORTHO)', 9.0, 300.00),
(38, 'Dinesh Bogati', '1234567890', 14, 'doctor3', '123456789', 'Active', 'MBBS,DLO,DNB', 4.0, 200.00),
(39, 'Prakriti Budathoki', '1234567890', 15, 'doctor4', '123456789', 'Active', 'MBBS,DNB', 5.0, 250.00),
(62, 'Suman Thapa', '123', 12, 'suman', '123456789', 'Active', 'MBBS', 2.0, 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '2021-03-26', 'Active'),
(18, 36, '13:30:00', '17:00:00', '2021-03-26', 'Active'),
(19, 37, '14:00:00', '18:00:00', '2021-03-26', 'Active'),
(20, 38, '17:00:00', '21:00:00', '2021-03-26', 'Active'),
(21, 39, '13:00:00', '19:00:00', '2021-03-26', 'Active'),
(22, 40, '07:00:00', '11:00:00', '2021-03-26', 'Active'),
(23, 41, '13:30:00', '16:30:00', '2021-03-26', 'Active'),
(24, 42, '11:30:00', '14:30:00', '2021-03-26', 'Active'),
(25, 43, '12:30:00', '16:30:00', '2021-03-26', 'Active'),
(26, 44, '21:30:00', '12:30:00', '2021-03-26', 'Active'),
(27, 36, '01:03:00', '13:03:00', '2021-03-26', 'Active'),
(28, 61, '11:11:00', '19:07:00', '2021-03-26', 'Active'),
(29, 35, '11:11:00', '16:44:00', '2021-03-26', 'Active'),
(30, 35, '01:10:00', '16:11:00', '2021-03-26', 'Active'),
(31, 35, '01:02:00', '15:04:00', '2021-03-26', 'Active'),
(32, 35, '09:22:00', '23:23:00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'medidine 1', 20.00, 'test abc', 'Active'),
(3, 'medicine 2', 25.00, 'test abc', 'Active'),
(4, 'medicine 3', 50.00, 'test abc', 'Active'),
(5, 'medicine 5', 30.00, 'test abc', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `prescriptionid` int(10) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv_no` varchar(5) NOT NULL,
  `expdate` date NOT NULL,
  `card_holder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `patientid`, `doctorid`, `prescriptionid`, `orderdate`, `deliverydate`, `address`, `mobileno`, `note`, `status`, `payment_type`, `card_no`, `cvv_no`, `expdate`, `card_holder`) VALUES
(17, 7, 0, 0, '2021-05-23', '2021-05-25', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'DEBIT CARD', '1234567899776543232', '354', '2021-05-15', 'Name 1'),
(18, 9, 0, 0, '2021-05-15', '2021-05-17', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'CREDIT CARD', '1234567899776543232', '354', '2021-05-22', 'Name 1'),
(19, 22, 0, 0, '2021-05-20', '2021-05-25', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'VISA', '1234567899776543232', '354', '2021-05-24', 'Name 1'),
(20, 23, 0, 0, '2021-05-19', '2021-05-20', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'DEBIT CARD', '1234567899776543232', '354', '2021-05-14', 'Name 1'),
(21, 36, 0, 0, '2021-05-24', '2021-05-13', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'VISA', '1234567899776543232', '354', '2021-05-14', 'Name 1'),
(22, 36, 0, 72, '2021-05-21', '2021-05-23', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'CREDIT CARD', '1234567899776543232', '354', '2021-05-17', 'Name 1'),
(23, 48, 0, 73, '2021-05-24', '2021-05-22', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'DEBIT CARD', '1234567899776543232', '354', '2021-05-18', 'Name 1'),
(24, 48, 0, 0, '2021-05-14', '2021-05-15', 'Kathmandu', '1234567890', 'Test Notes', 'Pending', 'CREDIT CARD', '1234567899776543232', '354', '2021-05-13', 'Name 1'),
(25, 48, 37, 32, '2021-05-17', '2021-05-12', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'VISA', '1234567899776543232', '354', '2021-05-12', 'Name 1'),
(26, 48, 37, 33, '2021-05-18', '2021-05-17', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-12', 'Name 1'),
(27, 48, 37, 35, '2021-05-13', '2021-05-25', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'CREDIT CARD', '1234567899776543232', '354', '2021-05-12', 'Name 1'),
(28, 7, 35, 56, '2021-05-14', '2021-05-18', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-12', 'Name 1'),
(29, 7, 35, 58, '2021-05-19', '2021-05-17', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-12', 'Name 1'),
(30, 7, 35, 59, '2021-05-14', '2021-05-22', 'Kathmandu', '1234567890', 'Test Notes', 'Active', 'VISA', '1234567899776543232', '354', '2021-05-25', 'Name 1'),
(31, 22, 35, 44, '2021-05-15', '2021-05-17', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-25', 'Name 1'),
(32, 7, 35, 45, '2021-05-22', '2021-05-21', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-23', 'Name 1'),
(33, 41, 35, 47, '2021-05-13', '2021-05-14', 'Kathmandu', '1234567890', 'Test Notes', 'Delivered', '', '1234567899776543232', '354', '2021-05-14', 'Name 1'),
(36, 7, 35, 62, '2021-05-15', '2021-05-23', 'Kathmandu', '1234567890', 'Test Notes', 'Active', '', '1234567899776543232', '354', '2021-05-18', 'Name 1'),
(38, 7, 0, 71, '2021-05-22', '2021-05-21', 'Kathmandu', '1234567890', 'Test Notes', 'Delivered', '', '1234567899776543232', '354', '2021-05-21', 'Name 1'),
(40, 7, 0, 75, '2021-05-14', '2021-05-12', 'Kathmandu', '1234567890', 'Test Notes', 'Pending', '', '1234567899776543232', '354', '2021-05-14', 'Name 1'),
(42, 7, 0, 90, '2021-05-18', '2021-05-12', 'Kathmandu', '1234567890', 'Test Notes', 'Pending', '', '1234567899776543232', '354', '2021-05-22', 'Name 1'),
(43, 7, 0, 83, '2021-05-12', '2021-05-25', 'Kathmandu', '1234567890', 'Test Notes', 'Delivered', 'VISA', '1234567899776543232', '354', '2021-05-15', 'Name 1');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(43, 'Patient Name', '2021-05-05', '00:00:00', 'Kathmandu', '1234561234', 'Kathmandu', '53535', 'user7', '123456789', '', 'Male', '2004-12-31', 'Active'),
(44, 'Patient Name', '2021-05-04', '08:17:55', 'Kathmandu', '1234561234', 'Kathmandu', '35353', 'user6', '123456789', '', 'Male', '2022-12-31', 'Active'),
(45, 'Patient Name', '2021-05-04', '08:50:46', 'Kathmandu', '1234561234', 'Kathmandu', '575001', 'user5', '123456789', 'A+', 'MALE', '2008-12-31', 'Active'),
(46, 'Patient Name', '2021-05-06', '08:53:44', 'Kathmandu', '1234561234', 'Kathmandu', '456789', 'user4', '123123123', 'A-', 'MALE', '2015-12-31', 'Active'),
(47, 'Patient Name', '2021-05-16', '08:55:15', 'Kathmandu', '1234561234', 'Kathmandu', '456789', 'user3', '556677123', 'A-', 'MALE', '2015-12-31', 'Active'),
(52, 'Patient Name', '2021-05-13', '00:00:00', 'Kathmandu', '1234561234', 'Kathmandu', '66567', 'user2', '123456789', 'A+', 'MALE', '2018-02-01', 'Active'),
(53, 'Patient Name', '2021-05-11', '15:58:07', 'Kathmandu', '1234561234', 'Kathmandu', '', 'uesr1', '9148167875', '', 'Male', '2018-01-10', 'Active'),
(54, 'Patient Name', '2021-05-03', '00:00:00', 'Kathmandu', '1234561234', 'Kathmandu', '575002', 'user', '123456789', 'A+', 'Female', '2010-03-02', 'Active'),
(60, 'Nischal Ghimire', '2021-06-03', '10:26:56', 'test', '44444', 'hjj', '23', 'nischal', 'nischal123', 'B+', 'MALE', '2021-06-01', 'Active'),
(61, 'test test', '2021-06-03', '15:40:48', 'test', '212', 'sdf', '21', 'test23', '123456789', 'A+', 'MALE', '2021-06-02', 'Active'),
(62, 'nabin ghimire', '2021-06-03', '15:44:40', 'test', '123', 'dfj', '67', 'nabin', '123456789', 'A+', 'MALE', '2021-06-02', 'Active'),
(63, 'helo', '2021-06-03', '16:38:53', 'helo', '12', 'helo', '12', 'helo', '12345678', 'A+', 'MALE', '2010-08-12', 'Active'),
(64, 'hhelo', '2021-06-03', '16:44:41', 'hhelo', '12', 'hhelo', '', 'hhelo', '1234567890', '', 'Male', '2021-06-02', 'Pending'),
(65, 'pat', '2021-06-03', '17:00:32', 'ktm', '12', 'ktm', '', 'pat', '123456789', '', 'Male', '2008-02-03', 'Active'),
(66, 'Suman Thapa', '2021-06-03', '17:28:00', 'Kathmandu, Nepal', '1234567890', 'Nepal', '12345678', 'sunam123', 'suman123', 'A+', 'MALE', '2007-07-13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `cvvno` int(5) NOT NULL,
  `expdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`, `cardholder`, `cardnumber`, `cvvno`, `expdate`) VALUES
(12, 48, 97, '2016-03-25', '01:00:00', 2000.00, '', '', 0, 0, '0000-00-00'),
(16, 48, 97, '2016-03-25', '01:00:00', 2000.00, '', '', 0, 0, '0000-00-00'),
(17, 48, 97, '2016-03-25', '01:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(18, 48, 97, '2016-03-25', '01:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(19, 48, 97, '2016-03-25', '10:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(20, 48, 97, '2016-03-25', '10:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(21, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(22, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(23, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(24, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(25, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(26, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(27, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(28, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(29, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active', '', 0, 0, '0000-00-00'),
(30, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active', '', 0, 0, '0000-00-00'),
(31, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active', '', 0, 0, '0000-00-00'),
(32, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active', '', 0, 0, '0000-00-00'),
(33, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(34, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(35, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(36, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(37, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(38, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(39, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(40, 48, 97, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(41, 22, 611, '2016-03-27', '01:00:00', 5000.00, 'Active', '', 0, 0, '0000-00-00'),
(42, 22, 61, '2016-03-27', '01:00:00', 5000.00, 'Active', '', 0, 0, '0000-00-00'),
(43, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(44, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(45, 7, 108, '2018-03-17', '13:46:10', 26568.58, 'Active', '', 0, 0, '0000-00-00'),
(46, 7, 108, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(47, 55, 0, '2018-04-03', '16:13:39', 2504.88, 'Active', '', 0, 0, '0000-00-00'),
(48, 56, 110, '2018-04-03', '16:14:18', 27834.95, 'Active', '', 0, 0, '0000-00-00'),
(49, 53, 106, '2018-04-03', '19:46:18', 26907.50, 'Active', '', 0, 0, '0000-00-00'),
(50, 44, 111, '2018-04-04', '09:11:20', 100.00, 'Active', '', 0, 0, '0000-00-00'),
(51, 44, 111, '0000-00-00', '00:00:00', 2504.88, 'Active', 'Raj kiran', 2147483647, 874, '0000-00-00'),
(52, 44, 111, '2018-04-04', '09:27:29', 2504.88, 'Active', 'Raj kiran', 2147483647, 874, '2019-01-01'),
(53, 44, 111, '2018-04-04', '09:29:19', 888.00, 'Active', 'Raj kiran', 2147483647, 854, '2019-01-01'),
(54, 7, 108, '2018-04-04', '09:53:54', 140000.00, 'Active', 'shricharan', 2147483647, 221, '2018-04-01'),
(55, 7, 108, '2018-04-04', '09:54:39', 5000.00, 'Active', 'shricharan', 2147483647, 552, '2018-04-01'),
(56, 7, 116, '2018-04-04', '10:15:38', 100.00, 'Active', 'Raj kiran', 1246, 6565, '2019-02-01'),
(57, 56, 119, '2018-04-06', '03:30:57', 1000.00, 'Active', 'Raj kiran', 2147483647, 221, '2018-04-01'),
(58, 56, 119, '2018-04-06', '03:31:30', 431.25, 'Active', 'shricharan', 2147483647, 252, '2018-04-01'),
(59, 0, 103, '2018-04-07', '09:39:12', 115.00, 'Active', 'Raj kiran', 2147483647, 533, '2018-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(15, 0, 35, 7, '', 0, '2021-05-03', 'Active', 0),
(16, 0, 36, 9, '', 0, '2021-05-16', 'Active', 0),
(17, 0, 37, 22, '', 0, '2021-05-14', 'Active', 0),
(18, 0, 38, 23, '', 0, '2021-05-16', 'Active', 0),
(19, 0, 40, 36, '', 0, '2021-05-10', 'Active', 0),
(20, 14, 36, 22, '', 0, '2021-05-12', 'Active', 0),
(21, 44, 36, 22, '', 0, '2021-05-13', 'Active', 0),
(22, 14, 35, 47, '', 0, '2021-05-15', 'Active', 0),
(23, 14, 35, 47, '', 0, '2021-05-05', 'Active', 0),
(24, 13, 35, 47, '', 0, '2021-05-06', 'Active', 0),
(25, 13, 37, 47, '', 0, '2021-05-13', 'Active', 0),
(26, 13, 36, 48, '', 0, '2021-05-16', 'Active', 0),
(27, 13, 35, 48, '', 0, '2021-05-09', 'Active', 0),
(28, 13, 35, 48, '', 0, '2021-05-08', 'Active', 0),
(29, 0, 0, 48, '', 0, '2021-05-10', 'Active', 0),
(30, 0, 0, 48, '', 0, '2021-05-09', 'Active', 0),
(31, 0, 0, 48, '', 0, '2021-05-15', 'Active', 0),
(32, 0, 0, 48, '', 0, '2021-05-15', 'Active', 0),
(33, 0, 37, 48, '', 0, '2021-05-16', 'Active', 0),
(34, 0, 37, 48, '', 0, '2021-05-16', 'Active', 0),
(35, 0, 37, 48, '', 0, '2021-05-04', 'Active', 0),
(36, 14, 35, 43, '', 0, '2021-05-08', 'Pending', 0),
(37, 13, 35, 43, '', 0, '2021-05-15', 'Pending', 0),
(38, 14, 36, 47, '', 0, '2021-05-06', 'Pending', 0),
(39, 14, 37, 9, '', 0, '2021-05-09', 'Pending', 0),
(40, 14, 37, 9, '', 0, '2021-05-10', 'Pending', 0),
(41, 14, 37, 9, '', 0, '2021-05-07', 'Pending', 0),
(42, 13, 37, 9, '', 0, '2021-05-03', 'Active', 0),
(43, 13, 36, 47, '', 0, '2021-05-07', 'Pending', 0),
(44, 0, 35, 22, '', 0, '2021-05-06', 'Active', 0),
(45, 0, 35, 7, '', 0, '2021-05-10', 'Active', 0),
(46, 13, 35, 7, '', 0, '2021-05-13', 'Active', 0),
(47, 0, 35, 41, '', 0, '2021-05-04', 'Active', 0),
(48, 44, 35, 7, '', 0, '2021-05-09', 'Active', 0),
(49, 13, 35, 7, '', 0, '2021-05-14', 'Active', 0),
(50, 13, 35, 7, '', 0, '2021-05-13', 'Active', 0),
(51, 13, 35, 7, '', 0, '2021-05-05', 'Active', 0),
(52, 13, 35, 7, '', 0, '2021-05-15', 'Active', 0),
(53, 13, 35, 7, '', 0, '2021-05-13', 'Active', 0),
(54, 13, 35, 7, '', 0, '2021-05-03', 'Active', 0),
(57, 0, 38, 41, '', 0, '2021-05-14', 'Active', 0),
(58, 19, 37, 56, '', 0, '2021-05-05', 'Active', 0),
(59, 19, 38, 56, '', 0, '2021-05-07', 'Active', 0),
(60, 14, 38, 54, '', 0, '2021-05-06', 'Active', 0),
(61, 0, 35, 7, '', 0, '2021-05-03', 'Active', 0),
(62, 0, 35, 7, '', 0, '2021-05-12', 'Active', 0),
(63, 13, 35, 7, '', 0, '2021-05-04', 'Active', 0),
(64, 13, 35, 48, '', 0, '2021-05-09', 'Active', 0),
(65, 0, 35, 7, '', 0, '2021-05-05', 'Active', 0),
(66, 0, 35, 41, '', 0, '2021-05-10', 'Active', 0),
(67, 0, 35, 41, '', 0, '2021-05-05', 'Active', 0),
(68, 13, 35, 7, '', 0, '2021-05-04', 'Active', 0),
(69, 14, 35, 22, '', 0, '2021-05-05', 'Active', 0),
(70, 44, 35, 7, '', 0, '2021-05-07', 'Active', 0),
(71, 0, 35, 7, '', 0, '2021-05-07', 'Active', 0),
(72, 0, 0, 36, '', 0, '2021-05-10', 'Active', 0),
(73, 0, 0, 48, '', 0, '2021-05-11', 'Active', 0),
(74, 0, 36, 7, '', 0, '2021-05-08', 'Active', 0),
(75, 0, 36, 7, '', 0, '2021-05-05', 'Active', 0),
(76, 13, 35, 7, '', 0, '2021-05-14', 'Active', 0),
(77, 13, 36, 47, '', 0, '2021-05-10', 'Active', 0),
(78, 14, 36, 44, '', 0, '2021-05-05', 'Active', 0),
(79, 14, 35, 44, '', 0, '2021-05-07', 'Active', 0),
(80, 14, 35, 7, '', 0, '2021-05-03', 'Active', 0),
(81, 13, 35, 56, '', 0, '2021-05-05', 'Active', 0),
(82, 0, 35, 7, '', 0, '2021-05-14', 'Active', 0),
(83, 0, 35, 7, '', 0, '2021-05-10', 'Active', 0),
(84, 0, 35, 7, '', 0, '2021-05-06', 'Active', 0),
(85, 0, 35, 52, '', 0, '2021-05-10', 'Active', 0),
(86, 0, 35, 53, '', 0, '2021-05-15', 'Active', 0),
(87, 0, 35, 53, '', 47, '2021-05-15', 'Active', 0),
(88, 0, 35, 52, '', 48, '2021-05-15', 'Active', 0),
(89, 0, 36, 22, '', 49, '2021-05-12', 'Active', 0),
(90, 0, 35, 7, '', 42, '2021-05-11', 'Active', 0),
(91, 0, 35, 22, '', 50, '2021-05-04', 'Active', 0),
(92, 0, 35, 22, '', 51, '2021-05-14', 'Active', 0),
(93, 0, 36, 22, '', 49, '2021-05-11', 'Active', 0),
(94, 0, 35, 22, '', 52, '2021-05-11', 'Active', 0),
(95, 0, 35, 22, '', 53, '2021-05-06', 'Active', 0),
(96, 0, 35, 22, '', 54, '2021-05-10', 'Active', 0),
(97, 0, 35, 22, '', 55, '2021-05-16', 'Active', 0),
(98, 0, 35, 57, '', 0, '2021-05-04', 'Active', 120),
(99, 0, 35, 57, '', 0, '2021-05-12', 'Active', 120),
(100, 0, 35, 63, '', 0, '2021-06-04', 'Active', 131);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(26, 15, 'Arthopan', 30.00, 10, '1-0-1', 'Active'),
(27, 16, 'Ecospirin', 11.00, 10, '1-1-1', 'Active'),
(28, 17, 'Dolo-60', 15.00, 5, '0-0-1', 'Active'),
(29, 18, 'Fenon-650', 500.00, 20, '0-1-1', 'Active'),
(30, 19, 'Rantac', 10.00, 10, '0-1-0', 'Active'),
(31, 20, 'Colpol', 25.00, 6, '1-1-1', ''),
(32, 20, 'Cinox', 85.00, 5, '1-1-1', ''),
(33, 21, 'Crosin DS', 45.00, 10, '0-1-1', ''),
(34, 23, 'glocu', 500.00, 6, '1-0-1', ''),
(35, 23, 'diodine', 60.00, 10, '1-1-1', ''),
(36, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(37, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(38, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(39, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(40, 24, 'glocu', 500.00, 4, '1-0-1', ''),
(41, 24, 'diodine', 500.00, 34, '1-0-1', ''),
(42, 24, 'diodine', 0.00, 4, '1-1-1', ''),
(43, 22, 'tin', 3.00, 5, '1-1-1', ''),
(44, 28, 'appsa', 500.00, 3, '1-0-1', ''),
(45, 28, 'novas', 30.00, 4, '1-1-1', ''),
(46, 28, 'kanal', 60.00, 6, '1-1-0', ''),
(47, 28, 'JITEL', 100.00, 6, '1-0-1', ''),
(48, 28, '24', 500.00, 10, '1-1-1', ''),
(49, 32, 'xyz', 39.00, 4, '1-0-1', ''),
(50, 32, 'Bcc', 99.00, 1, '1-1-1', ''),
(51, 32, 'ppr', 900.00, 4, '1-1-0', ''),
(52, 33, 'abc', 90.00, 3, '1-0-1', ''),
(53, 33, 'xyz', 500.00, 90, '1-1-1', ''),
(54, 35, 'omani', 900.00, 3, '1-0-1', ''),
(62, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(63, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(64, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(65, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(66, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(67, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(68, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(69, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(70, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(71, 37, '1', 20.00, 5, '0-1-0', 'Active'),
(72, 39, '1', 20.00, 1, '1-1-1', 'Active'),
(73, 39, '5', 30.00, 4, '1-1-0', 'Active'),
(74, 39, '4', 50.00, 1, '1-1-1', 'Active'),
(75, 40, '1', 20.00, 9, '1-1-0', 'Active'),
(76, 42, '1', 20.00, 1, '1-1-0', 'Active'),
(77, 43, '1', 20.00, 12, '0-1-1', 'Active'),
(78, 44, 'eeee', 55.00, 3, '1-1-1', ''),
(79, 45, 'ddd', 33.00, 2, '1-1-1', ''),
(80, 49, '1', 20.00, 3, '1-1-0', 'Active'),
(81, 49, '6', 50.00, 8, '1-0-1', 'Active'),
(82, 50, '1', 20.00, 8, '', 'Active'),
(83, 50, '5', 30.00, 7, '', 'Active'),
(84, 51, '5', 30.00, 7, '1-1-1', 'Active'),
(85, 52, '1', 20.00, 2, '0-0-1', 'Active'),
(86, 53, '6', 50.00, 3, '1-1-1', 'Active'),
(87, 54, '5', 30.00, 4, '1-1-1', 'Active'),
(88, 55, '1', 20.00, 10, '0-0-1', 'Active'),
(89, 55, '3', 25.00, 4, '1-0-1', 'Active'),
(92, 57, '4', 50.00, 1, '0-1-1', 'Active'),
(93, 57, '5', 30.00, 10, '0-1-1', 'Active'),
(94, 58, '1', 20.00, 1, '0-1-1', 'Active'),
(95, 58, '4', 50.00, 1, '1-1-1', 'Active'),
(96, 59, '4', 50.00, 3, '1-1-0', 'Active'),
(97, 59, '6', 50.00, 4, '1-0-1', 'Active'),
(98, 60, '4', 50.00, 3, '0-1-1', 'Active'),
(99, 60, '3', 25.00, 4, '0-1-1', 'Active'),
(100, 61, '1', 20.00, 3, '1-1-1', 'Active'),
(101, 63, '1', 20.00, 2, '1-1-0', 'Active'),
(102, 64, '3', 25.00, 1, '0-1-1', 'Active'),
(103, 66, 'eeee', 20.00, 5, '0-1-1', ''),
(104, 68, '1', 20.00, 2, '1-1-0', 'Active'),
(105, 69, '1', 20.00, 10, '0-0-1', 'Active'),
(106, 69, '4', 50.00, 1, '1-1-1', 'Active'),
(107, 68, '4', 50.00, 13, '1-0-1', 'Active'),
(108, 70, '4', 50.00, 1, '1-1-0', 'Active'),
(109, 70, '3', 25.00, 3, '0-1-1', 'Active'),
(110, 71, '6', 50.00, 2, '1-1-0', 'Active'),
(111, 75, '6', 50.00, 2, '0-1-1', 'Active'),
(112, 76, '3', 25.00, 2, '0-1-0', 'Active'),
(113, 77, '1', 20.00, 10, '0-1-1', 'Active'),
(114, 77, '6', 50.00, 10, '1-1-0', 'Active'),
(115, 77, '3', 25.00, 3, '1-1-1', 'Active'),
(116, 77, '5', 30.00, 3, '1-1-0', 'Active'),
(117, 77, '6', 50.00, 2, '0-1-1', 'Active'),
(118, 78, '1', 20.00, 1, '0-1-1', 'Active'),
(119, 78, '5', 30.00, 10, '0-1-1', 'Active'),
(120, 76, '3', 25.00, 7, '1-1-0', 'Active'),
(121, 80, '4', 50.00, 5, '1-0-1', 'Active'),
(122, 81, '3', 25.00, 4, '1-1-0', 'Active'),
(123, 83, '3', 25.00, 2, '0-1-1', 'Active'),
(124, 84, '1', 20.00, 2, '1-0-1', 'Active'),
(125, 85, '1', 20.00, 2, '1-0-1', 'Active'),
(126, 86, '3', 25.00, 1, '0-1-1', 'Active'),
(127, 86, '4', 50.00, 5, '1-1-1', 'Active'),
(128, 86, '6', 50.00, 1, '1-0-0', 'Active'),
(129, 87, '5', 30.00, 10, '0-1-1', 'Active'),
(130, 87, '6', 50.00, 10, '1-1-0', 'Active'),
(131, 88, '3', 25.00, 6, '1-0-1', 'Active'),
(132, 89, '6', 50.00, 6, '0-1-1', 'Active'),
(133, 89, '6', 50.00, 5, '0-1-0', 'Active'),
(134, 91, '1', 20.00, 10, '0-1-1', 'Active'),
(135, 91, '4', 50.00, 2, '1-1-0', 'Active'),
(136, 91, '6', 50.00, 3, '1-1-1', 'Active'),
(137, 92, '1', 20.00, 10, '0-1-1', 'Active'),
(138, 92, '4', 50.00, 10, '1-1-1', 'Active'),
(139, 92, '6', 50.00, 2, '0-1-1', 'Active'),
(140, 92, '3', 25.00, 13, '1-0-1', 'Active'),
(141, 94, '1', 20.00, 10, '0-1-1', 'Active'),
(142, 94, '6', 50.00, 15, '1-1-0', 'Active'),
(143, 94, '6', 50.00, 15, '0-1-0', 'Active'),
(144, 96, '1', 20.00, 10, '0-1-1', 'Active'),
(145, 96, '4', 50.00, 10, '1-1-1', 'Active'),
(146, 96, '6', 50.00, 15, '0-1-0', 'Active'),
(147, 97, '1', 20.00, 10, '0-1-1', 'Active'),
(148, 97, '5', 30.00, 15, '1-1-0', 'Active'),
(149, 99, '1', 20.00, 10, '1-0-1', 'Active'),
(150, 99, '4', 50.00, 3, '1-1-0', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(10) NOT NULL,
  `roomtype` varchar(25) NOT NULL,
  `roomno` int(10) NOT NULL,
  `noofbeds` int(10) NOT NULL,
  `room_tariff` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomtype`, `roomno`, `noofbeds`, `room_tariff`, `status`) VALUES
(15, 'GENERAL WARD', 1, 20, 500.00, 'Active'),
(16, 'SPECIAL WARD', 2, 10, 100.00, 'Active'),
(17, 'GENERAL WARD', 2, 10, 500.00, 'Active'),
(18, 'GENERAL WARD', 121, 13, 150.00, 'Active'),
(19, 'GENERAL WARD', 850, 11, 500.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(13, 'Treatment for Malaria', '450.00', ' Providing medicine and tonic with injection  ', 'Active'),
(14, 'Treatment for Dengue', '20000.00', ' Providing massage and home made tips', 'Active'),
(15, 'test', '554.00', ' Treatment note', 'Active'),
(16, 'test', '55.00', ' Treatment note', 'Active'),
(17, 'test', '5653.00', ' Treatment note', 'Active'),
(18, 'Treanment Gastritis', '54.00', 'Pantroprazol', 'Active'),
(19, 'Dengue', '4000.00', 'Dengue treatment', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(10, 44, 13, 22, 61, 'High Fever', 'nill', '2016-03-02', '00:00:16', 'Active'),
(12, 44, 13, 7, 35, 'detecting disease', '-', '2016-03-10', '00:00:13', 'Active'),
(13, 44, 13, 22, 36, 'Emergency treatment provided', '22192Drawing1.eddx', '2016-03-11', '00:00:13', 'Active'),
(14, 14, 44, 22, 37, 'Emergency treatement', '14633DB.docx', '2016-03-11', '00:00:01', 'Active'),
(15, 13, 52, 36, 37, 'blood test', '13774Drawing5.eddx', '2016-03-19', '00:00:12', 'Active'),
(16, 13, 93, 47, 36, 'Test treatment', '14018JS81.jpg', '2016-03-19', '00:00:01', 'Active'),
(17, 14, 93, 47, 35, 'test desc', '7379jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(18, 14, 93, 47, 35, 'test desc', '16400jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(19, 14, 93, 47, 35, 'test desc', '15957jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(20, 14, 93, 47, 35, 'test desc', '29975jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(21, 13, 97, 48, 35, 'Test treatment description', '18597RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(22, 13, 97, 48, 35, 'Test treatment description', '3114RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(23, 13, 97, 48, 35, 'Test treatment description', '25722RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(24, 13, 97, 48, 35, 'Test treatment description', '11889RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(25, 13, 97, 48, 35, 'Test treatment description', '25686RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(26, 13, 97, 48, 35, 'Test treatment description', '9259RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(27, 13, 106, 53, 35, 'xxxxxxx', '2011083154KHADI JACKETS .jpg', '2018-02-23', '11:11:00', 'Active'),
(28, 14, 106, 53, 35, 'uuuuuu', '1863993785KHADI JACKETS .jpg', '0000-00-00', '23:11:00', 'Active'),
(29, 13, 106, 53, 35, 'ppppppppp', '644184310KHADI JACKETS .jpg', '2018-02-28', '11:11:00', 'Active'),
(30, 13, 101, 50, 35, 'vvvvvvvvv', '2017717432KHADI JACKETS .jpg', '0000-00-00', '11:11:00', 'Active'),
(31, 13, 108, 7, 35, 'tttthh', '60065616ap.txt', '2018-03-09', '03:00:00', 'Active'),
(32, 15, 108, 7, 37, 'test', '839109672a1.jpg', '2018-03-21', '00:01:00', 'Active'),
(33, 14, 108, 7, 38, 'Hello description', '2018467285customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(34, 14, 109, 54, 38, 'test', '427964865a1.jpg', '2018-02-28', '03:00:00', 'Active'),
(35, 14, 108, 7, 37, 'test record', '1929378190image_01.jpg', '2018-03-16', '03:00:00', 'Active'),
(36, 14, 108, 7, 38, 'Hello description', '285590447customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(37, 14, 108, 7, 38, 'Hello description', '1833779312customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(38, 14, 108, 7, 38, 'Hello description', '1342615406customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(39, 14, 108, 7, 38, 'Hello description', '455422977customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(40, 14, 108, 7, 38, 'Hello description', '576126584customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(41, 13, 65, 23, 35, 'Maleria', '355037251KHADI JACKETS .jpg', '2018-03-24', '01:02:00', 'Active'),
(42, 14, 91, 43, 35, 'test description', '1590682007insertbillingrecord.php', '2018-03-24', '01:01:00', 'Active'),
(43, 13, 91, 43, 35, 'sssss', '1907664847KHADI JACKETS .jpg', '2018-03-26', '02:22:00', 'Active'),
(44, 14, 110, 56, 42, 'vvvvvv', '42355443316kidney beans.jpg', '2018-03-27', '07:07:00', 'Active'),
(45, 19, 110, 56, 42, 'nghnghh', '442362209718bestadvicehero.jpg', '2018-03-27', '18:06:00', 'Active'),
(46, 15, 96, 45, 35, 'gfgfg', '975774499718bestadvicehero.jpg', '2018-03-07', '11:11:00', 'Active'),
(47, 13, 108, 7, 35, 'cdcdxcd', '166134465816kidney beans.jpg', '2018-03-27', '06:06:00', 'Active'),
(48, 14, 107, 9, 37, 'yhjnghj', '1230555574835dried peach.jpg', '2018-03-27', '16:04:00', 'Active'),
(49, 13, 107, 9, 37, 'dccdcdc', '75568598796sage.jpg', '2018-03-27', '13:02:00', 'Active'),
(50, 13, 94, 47, 36, 'hhhh', '1592053307KHADI JACKETS .jpg', '2018-03-27', '02:22:00', 'Active'),
(51, 15, 107, 9, 35, 'xsxsx', '451077804KHADI JACKETS .jpg', '2018-04-03', '11:11:00', 'Active'),
(52, 13, 108, 7, 35, 'cccccc', '1679719013KHADI JACKETS .jpg', '2018-04-03', '14:00:00', 'Active'),
(53, 14, 111, 44, 36, 'test', '2069066935KHADI JACKETS .jpg', '2018-04-04', '22:10:00', 'Active'),
(54, 17, 111, 44, 36, 'tes descr', '1598481294WIN_20171226_22_50_41_Pro.jpg', '2018-04-04', '10:10:00', 'Active'),
(55, 13, 112, 44, 36, 'vvvvv', '1111631338KHADI JACKETS .jpg', '2018-04-04', '03:01:00', 'Active'),
(56, 14, 116, 7, 35, 'bvbvb', '1969598381KHADI JACKETS .jpg', '2018-04-04', '02:02:00', 'Active'),
(57, 13, 117, 7, 35, 'gbgv', '2002948154KHADI JACKETS .jpg', '2018-04-04', '01:02:00', 'Active'),
(58, 13, 119, 56, 35, 'mm', '430203084KHADI JACKETS .jpg', '2018-04-06', '02:02:00', 'Active'),
(59, 14, 120, 57, 35, 'Treatment given for dengue fever', '29112image011.png', '2018-07-12', '01:00:00', 'Active'),
(60, 14, 131, 63, 35, 'ffff', '648400969', '2021-06-03', '09:01:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
  ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
  MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
