-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2022 at 01:39 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appoid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  PRIMARY KEY (`appoid`),
  KEY `pid` (`pid`),
  KEY `scheduleid` (`scheduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(1, 1, 1, 1, '2022-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `specialties` (`specialties`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Ikti', '123', '000000000', '0110000000', 1),
(2, 'doctor@eaoc.com', 'Olivia Nguyen', '123', '000000000', '0110000000', 2),
(3, 'doctor@eboc.com', 'Alexander Patel', '123', '000000000', '0110000000', 3),
(4, 'doctor@ecoc.com', 'Sophia Rodriguez', '123', '000000000', '0110000000', 4),
(5, 'doctor@eeoc.com', 'Ethan Smith', '123', '000000000', '0110000000', 5),
(6, 'doctor@efoc.com', 'Mia Garcia', '123', '000000000', '0110000000', 6),
(7, 'doctor@egoc.com', 'Jacob Lee', '123', '000000000', '0110000000', 7),
(8, 'doctor@ehoc.com', 'Ava Martinez', '123', '000000000', '0110000000', 8),
(9, 'doctor@eioc.com', 'William Taylor', '123', '000000000', '0110000000', 9),
(10, 'doctor@ejoc.com', 'Isabella Thomas', '123', '000000000', '0110000000',10),
(11, 'doctor@ekoc.com', 'James Brown', '123', '000000000', '0110000000', 11),
(12, 'doctor@eloc.com', 'Emily Wilson', '123', '000000000', '0110000000', 12),
(13, 'doctor@emoc.com', 'Michael Anderson', '123', '000000000', '0110000000', 13),
(14, 'doctor@enoc.com', 'Charlotte Clark', '123', '000000000', '0110000000', 14),
(15, 'doctor@eooc.com', 'Daniel Baker', '123', '000000000', '0110000000', 15),
(16, 'doctor@epoc.com', 'Grace White', '123', '000000000', '0110000000', 16),
(17, 'doctor@eqoc.com', 'Lucas Lewis', '123', '000000000', '0110000000', 17),
(18, 'doctor@eroc.com', 'Lily Johnson', '123', '000000000', '0110000000', 18),
(19, 'doctor@esoc.com', 'Samuel Harris', '123', '000000000', '0110000000', 19),
(20, 'doctor@etoc.com', 'Madison Young', '123', '000000000', '0110000000', 20),
(21, 'doctor@euoc.com', 'Noah Evans', '123', '000000000', '0110000000', 21),
(22, 'doctor@evoc.com', 'Amelia King', '123', '000000000', '0110000000', 22),
(23, 'doctor@ewoc.com', 'Ethan Carter', '123', '000000000', '0110000000', 23),
(24, 'doctor@edxc.com', 'Harper Moore', '123', '000000000', '0110000000', 24),
(25, 'doctor@eyoc.com', 'Lucas Rivera', '123', '000000000', '0110000000', 25),
(26, 'doctor@ezoc.com', 'Evelyn Scott', '123', '000000000', '0110000000', 26),
(27, 'doctor@edoa.com', 'Gabriel Adams', '123', '000000000', '0110000000', 27),
(28, 'doctor@edob.com', 'Harper Cooper', '123', '000000000', '0110000000', 28),
(29, 'doctor@edoc.com', 'Sophia Bailey', '123', '000000000', '0110000000', 29),
(30, 'doctor@edod.com', 'Logan Hill', '123', '000000000', '0110000000', 30),
(31, 'doctor@edoe.com', 'Zoe Wright', '123', '000000000', '0110000000', 31),
(32, 'doctor@edof.com', 'Mason Ward', '123', '000000000', '0110000000', 32),
(33, 'doctor@edog.com', 'Natalie Hughes', '123', '000000000', '0110000000', 33),
(34, 'doctor@edoh.com', 'Elijah Morris', '123', '000000000', '0110000000', 34),
(35, 'doctor@edoi.com', 'Mia Foster', '123', '000000000', '0110000000', 35),
(36, 'doctor@edoj.com', 'Alexander Gray', '123', '000000000', '0110000000', 36),
(37, 'doctor@edok.com', 'Layla Parker', '123', '000000000', '0110000000', 37),
(38, 'doctor@edol.com', 'Matthew Stewart', '123', '000000000', '0110000000', 38),
(39, 'doctor@edom.com', 'Ava Reed', '123', '000000000', '0110000000', 39),
(40, 'doctor@edon.com', 'Jacob Turner', '123', '000000000', '0110000000', 40),
(41, 'doctor@edoo.com', 'Chloe Rogers', '123', '000000000', '0110000000', 41),
(42, 'doctor@edop.com', 'Samuel Mitchell', '123', '000000000', '0110000000', 42),
(43, 'doctor@edoq.com', 'Victoria Nelson', '123', '000000000', '0110000000', 43),
(44, 'doctor@edor.com', 'Christopher Coleman', '123', '000000000', '0110000000', 44),
(45, 'doctor@edos.com', 'Sophia Foster', '123', '000000000', '0110000000', 45);
-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(1, 'patient@edoc.com', 'Daniel', '123', 'Uttara', '0000000000', '2000-01-01', '0120000000'),
(2, 'emhashenudara@gmail.com', 'Abdul', '123', 'Gazipur', '0110000000', '2022-06-03', '0700000000');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleid` int(11) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  PRIMARY KEY (`scheduleid`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(1, '1', 'Test Session', '2050-01-01', '18:00:00', 50),
(2, '1', '1', '2022-06-10', '20:36:00', 1),
(3, '1', '12', '2022-06-10', '20:33:00', 1),
(4, '1', '1', '2022-06-10', '12:32:00', 1),
(5, '1', '1', '2022-06-10', '20:35:00', 1),
(6, '1', '12', '2022-06-10', '20:35:00', 1),
(7, '1', '1', '2022-06-24', '20:36:00', 1),
(8, '1', '12', '2022-06-10', '13:33:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Engine Repair'),
(2, 'Transmission Repair'),
(3, 'Brake System Maintenance'),
(4, 'Suspension and Steering Repair'),
(5, 'Electrical System Diagnosis and Repair'),
(6, 'Air Conditioning Service and Repair'),
(7, 'Fuel System Troubleshooting'),
(8, 'Exhaust System Repair'),
(9, 'Wheel Alignment and Balancing'),
(10, 'Oil Change and Lubrication'),
(11, 'Cooling System Maintenance'),
(12, 'Timing Belt Replacement'),
(13, 'Ignition System Repair'),
(14, 'Tire Rotation and Replacement'),
(15, 'Battery Inspection and Replacement'),
(16, 'Diagnostic Services (OBD-II)'),
(17, 'Engine Tune-Up'),
(18, 'Differential Repair'),
(19, 'Clutch Replacement'),
(20, 'Emissions Testing and Repair'),
(21, 'Starter and Alternator Replacement'),
(22, 'Heater and Defroster Repair'),
(23, 'Suspension System Alignment'),
(24, 'Radiator and Cooling Fan Repair'),
(25, 'Windshield Wiper System Maintenance'),
(26, 'Power Steering System Repair'),
(27, 'Turbocharger and Supercharger Maintenance'),
(28, 'Drive Belt Inspection and Replacement'),
(29, 'Catalytic Converter Diagnosis and Replacement'),
(30, 'Wheel Bearing Replacement'),
(31, 'Shock Absorber Replacement'),
(32, 'Valve Adjustment and Replacement'),
(33, 'Brake Pad and Rotor Replacement'),
(34, 'Fuel Injector Cleaning and Calibration'),
(35, 'Timing Chain Replacement'),
(36, 'Alternator Belt Replacement'),
(37, 'Fuel Pump Diagnosis and Repair'),
(38, 'Oxygen Sensor Replacement'),
(39, 'Coolant Flush and Refill'),
(40, 'Ignition Coil Replacement'),
(41, 'Muffler and Exhaust Pipe Repair'),
(42, 'Spark Plug Replacement'),
(43, 'Thermostat Replacement'),
(44, 'Brake Fluid Flush and Replacement'),
(45, 'Wheel Hub Assembly Replacement'),
(46, 'Drive Shaft Replacement'),
(47, 'Head Gasket Repair'),
(48, 'Carburetor Adjustment and Overhaul'),
(49, 'Engine Rebuilding'),
(50, 'Transmission Fluid Flush and Replacement'),
(51, 'Air Filter Replacement'),
(52, 'Cabin Air Filter Replacement'),
(53, 'PCV Valve Replacement'),
(54, 'Wheel Stud Replacement'),
(55, 'Serpentine Belt Replacement'),
(56, 'Valve Cover Gasket Replacement');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
CREATE TABLE IF NOT EXISTS `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('emhashenudara@gmail.com', 'p');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
