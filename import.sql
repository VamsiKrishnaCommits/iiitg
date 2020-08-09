-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 04:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `Name` varchar(15) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`Name`, `Password`, `Role`) VALUES
('admin', 'F367550EEDC6286A5C3C5BB5794035C1A6391961', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `Sno` int(15) NOT NULL,
  `CourseNumber` varchar(11) NOT NULL,
  `CouseName` varchar(30) NOT NULL,
  `LecturesPerWeek` int(11) NOT NULL,
  `TutorialsPerWeek` int(11) NOT NULL,
  `PracticalsPerWeek` int(11) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`Sno`, `CourseNumber`, `CouseName`, `LecturesPerWeek`, `TutorialsPerWeek`, `PracticalsPerWeek`, `Credits`) VALUES
(1, 'CS101', 'Computer Programming', 2, 1, 0, 6),
(2, 'CS110', 'Computer Programming Lab', 0, 1, 3, 5),
(3, 'CS102', 'IT Workshop I', 2, 0, 3, 7),
(4, 'CS103', 'Data Structures', 3, 1, 0, 8),
(5, 'CS111', 'Data Structures Lab', 0, 0, 3, 3),
(6, 'CS104', 'Computer Organization', 3, 1, 0, 8),
(7, 'CS201', 'Algorithms', 3, 0, 0, 6),
(8, 'CS210', 'Algorithms Lab', 0, 0, 3, 3),
(9, 'CS202', 'IT Workshop I', 2, 0, 3, 7),
(10, 'CS251', 'IT Workshop II', 0, 1, 3, 5),
(11, 'CS231', 'Operating Systems', 3, 0, 0, 6),
(12, 'CS232', 'Operating Systems Lab', 0, 0, 4, 4),
(13, 'CS205', 'Formal Languages and Automata', 3, 0, 0, 6),
(14, 'CS240', 'Database Management Systems', 3, 0, 0, 6),
(15, 'CS241', 'DBMS Lab', 0, 0, 4, 4),
(16, 'CS352', 'Computer Networks', 3, 0, 0, 6),
(17, 'CS353', 'Computer Networks Lab', 0, 0, 4, 4),
(18, 'CS235', 'Artificial Intelligence', 3, 0, 0, 6),
(19, 'CS301', 'Theory of Computation', 3, 0, 0, 6),
(20, 'CS320', 'Compilers', 3, 1, 0, 8),
(21, 'CS321', 'Compilers Lab', 0, 0, 3, 3),
(22, 'CS221', 'Data Communication', 3, 0, 0, 6),
(23, 'CS303', 'Distributed Systems', 3, 0, 0, 6),
(24, 'CS351', 'IT Workshop III: Cloud Computi', 1, 0, 3, 5),
(25, 'CS330', 'Software Engineering', 3, 0, 0, 6),
(26, 'CS331', 'Software Engineering Lab', 0, 0, 3, 3),
(27, 'CS340', 'Computer Graphics', 3, 0, 0, 6),
(28, 'CS341', 'Computer Graphics Lab', 0, 0, 3, 3),
(29, 'CS306', 'Machine Learning', 3, 0, 0, 6),
(30, 'CS360', 'Machine Learning Lab', 0, 0, 3, 3),
(31, 'CS361', 'Computer and Network Security', 3, 0, 0, 6),
(32, 'CS362', 'Topics in Algorithms', 3, 0, 0, 6),
(33, 'CS450', 'Internet Protocol', 3, 0, 0, 6),
(34, 'CS401', 'Number Theory in Cryptography', 3, 0, 0, 6),
(35, 'CS402', 'Advanced Graph Algorithms', 3, 0, 0, 6),
(36, 'CS430', 'Parallel Programming', 3, 0, 0, 6),
(37, 'CS440', 'Image and Video Processing', 3, 0, 0, 6),
(38, 'CS412', 'Game Theory', 3, 0, 0, 6),
(39, 'CS414', 'Advance Architecture', 3, 0, 0, 6),
(40, 'CS415', 'Ubiquitous Computing', 3, 0, 0, 6),
(41, 'CS418', 'Real Time Systems', 3, 0, 0, 6),
(42, 'CS460', 'Financial Engineering', 3, 0, 0, 6),
(43, 'CS451', 'Design of Internet of Things', 3, 0, 0, 6),
(44, 'CS470', 'Network Science', 3, 0, 0, 6),
(45, 'CS461', 'Learning and Inference', 3, 0, 0, 6),
(46, 'CS401', 'Data Analytics', 3, 0, 0, 6),
(47, 'CS673', 'Evolutionary Computation', 3, 0, 0, 6),
(48, 'CS471', 'Deep Learning', 3, 0, 0, 6),
(49, 'CS671', 'Introduction to Graph Theory', 3, 0, 0, 6),
(50, 'CS672', 'Semantic Web Technologies', 3, 0, 0, 6),
(51, 'CS674', 'Advanced Computer Architecture', 3, 0, 0, 6),
(52, 'CS675', 'Introduction to Blockchain and', 3, 0, 0, 6),
(53, 'CS601', 'Algorithm and Data Structure', 3, 0, 0, 6),
(54, 'CS610', 'Programming Lab', 0, 0, 3, 3),
(55, 'CS603', 'Formal Language and Computatio', 3, 0, 0, 6),
(56, 'CS602', 'Computer Systems', 3, 0, 0, 6),
(57, 'CS620', 'Computer Systems Lab', 0, 0, 3, 3),
(58, 'CS604', 'Machine Learning', 3, 0, 0, 6),
(59, 'CS640', 'Machine Learning Lab', 0, 0, 3, 3),
(60, 'CS605', 'Data Management', 3, 0, 3, 9),
(61, 'CS612', 'Game Theory', 3, 0, 0, 6),
(62, 'CS651', 'Cloud Computing', 2, 0, 3, 7),
(63, 'CS606', 'Data Analytics', 3, 0, 0, 6),
(64, 'CS660', 'Data Analytics Lab', 0, 0, 3, 3),
(65, 'EC101', 'Digital Design', 3, 1, 0, 8),
(66, 'EC110', 'Digital Design Lab', 0, 0, 3, 3),
(67, 'EC102', 'Electrical Circuit Analysis', 3, 1, 0, 8),
(68, 'EC103', 'Basic Electronic Circuits', 3, 1, 0, 8),
(69, 'EC111', 'Basic Electronics Lab', 0, 0, 3, 3),
(70, 'EC201', 'Analog Circuits', 3, 1, 0, 8),
(71, 'EC202', 'Analog Circuits Lab', 0, 0, 3, 3),
(72, 'EC241', 'Signals and Systems', 3, 0, 0, 6),
(73, 'EC242', 'Signals and Systems Lab', 0, 0, 3, 3),
(74, 'EC251', 'Principles of Communication', 3, 1, 0, 8),
(75, 'EC252', 'Communications Lab', 0, 0, 3, 3),
(76, 'EC243', 'Digital Signal Processing', 3, 0, 0, 6),
(77, 'EC244', 'Digital Signal Processing Lab', 0, 0, 3, 3),
(78, 'EC260', 'Semiconductor Devices', 3, 0, 0, 6),
(79, 'EC351', 'Digital Communication', 3, 1, 0, 8),
(80, 'EC352', 'Digital Communication Lab', 0, 0, 3, 3),
(81, 'EC301', 'Analog Integrated Circuits', 3, 0, 0, 6),
(82, 'EC302', 'Analog Integrated Circuit Lab', 0, 0, 3, 3),
(83, 'EC370', 'Electromagnetics', 3, 1, 0, 8),
(84, 'EC380', 'Control Systems', 3, 1, 0, 8),
(85, 'EC353', 'Information Theory and Coding', 3, 0, 0, 6),
(86, 'EC361', 'VLSI Design', 3, 0, 0, 6),
(87, 'EC362', 'VLSI Design Lab', 0, 0, 3, 3),
(88, 'EC371', 'Microwave Engineering', 3, 0, 0, 6),
(89, 'EC372', 'Microwave Engineering Lab', 0, 0, 3, 3),
(90, 'EC381', 'Embedded Systems', 3, 0, 0, 6),
(91, 'EC382', 'Embedded Systems Lab', 0, 0, 3, 3),
(92, 'EC354', 'Communication Networks', 3, 0, 0, 6),
(93, 'EC451', 'Mobile Communication', 3, 0, 0, 6),
(94, 'EC455', 'Wireless Sensor Networks', 3, 0, 0, 6),
(95, 'EC441', 'Image Processing', 3, 0, 0, 6),
(96, 'EC461', 'VLSI Technology', 3, 0, 0, 6),
(97, 'EC454', 'Communication Systems', 3, 0, 0, 6),
(98, 'EC281', 'Measurement and Instrumentatio', 3, 0, 0, 6),
(99, 'EC471', 'Antenna and Wave Propagation', 3, 0, 0, 6),
(100, 'EC480', 'Digital Control Systems', 3, 0, 0, 6),
(101, 'EC482', 'Systems on Chip with Internet ', 3, 0, 0, 6),
(102, 'EC453', 'Error Control Codes', 3, 0, 0, 6),
(103, 'EC442', 'Pattern Recoognition and Machi', 3, 0, 0, 6),
(104, 'EC456', 'Communication Network', 3, 0, 0, 6),
(105, 'EC460', 'Architectural Design of Digita', 3, 0, 0, 6),
(106, 'EC644', 'Biomedical Signal Processing', 3, 0, 0, 6),
(107, 'EC657', 'Cognitive Radio', 3, 0, 0, 6),
(108, 'EC681', 'Advanced Control Systems', 3, 0, 0, 6),
(109, 'MA101', 'Mathematics I', 3, 1, 0, 8),
(110, 'MA102', 'Mathematics II', 3, 1, 0, 8),
(111, 'MA203', 'Mathematics III', 3, 0, 0, 6),
(112, 'MA205', 'Discrete Mathematics', 3, 0, 0, 6),
(113, 'MA204', 'Mathematics IV', 3, 0, 0, 6),
(114, 'MA305', 'Optimization Techniques', 3, 0, 0, 6),
(115, 'SC201', 'Physics I', 3, 0, 0, 6),
(116, 'SC202', 'Chemistry', 3, 0, 0, 6),
(117, 'SC301', 'Biology', 3, 0, 0, 6),
(118, 'SC401', 'Physics II', 3, 0, 0, 6),
(119, 'HS101', 'English', 1, 0, 2, 4),
(120, 'HS102', 'Economics', 3, 0, 0, 6),
(121, 'HS201', 'Introduction to Linguistics', 3, 0, 0, 6),
(122, 'HS202', 'Language and Society', 3, 0, 0, 6),
(123, 'HS203', 'Science Fiction', 3, 0, 0, 6),
(124, 'HS204', 'Introduction to Politics', 3, 0, 0, 6),
(125, 'HS205', 'Consumer Behaviour and Welfare', 3, 0, 0, 6),
(126, 'HS206', 'M. K. Gandhi: Tradition and Mo', 3, 0, 0, 6),
(127, 'HS301', 'Macroeconomic Problems and Pol', 3, 0, 0, 6),
(128, 'HS302', 'Language, Cognition And Cultur', 3, 0, 0, 6),
(129, 'HS303', 'Indian Writing in English', 3, 0, 0, 6),
(130, 'HS304', 'Science,Technology and Society', 3, 0, 0, 6),
(131, 'HS305', 'Public Finance', 3, 0, 0, 6),
(132, 'HS306', 'Introduction to Film Studies', 3, 0, 0, 6),
(133, 'HS402', 'Understanding Democracy and Go', 3, 0, 0, 6),
(134, 'HS403', 'Science Fiction II', 3, 0, 0, 6),
(135, 'HS404', 'Language, Cognition and Cultur', 3, 0, 0, 6),
(136, 'HS405', 'Issues in International Trade ', 3, 0, 0, 6),
(137, 'HS406', 'Basic Econometrics', 3, 0, 0, 6),
(138, 'HS407', 'Introduction to Folklore', 3, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `courseofferingsineverysemester`
--

CREATE TABLE `courseofferingsineverysemester` (
  `number` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` varchar(11) NOT NULL,
  `CourseNumber` varchar(11) NOT NULL,
  `BatchType` int(3) NOT NULL,
  `CourseType` varchar(11) NOT NULL,
  `Programme` varchar(11) NOT NULL,
  `Department` varchar(11) NOT NULL,
  `Teachers` int(11) NOT NULL,
  `Teacher2` int(5) NOT NULL,
  `Teacher3` int(5) NOT NULL,
  `Teacher4` int(5) NOT NULL,
  `Tutors` int(11) NOT NULL,
  `Tutor2` int(11) NOT NULL,
  `Tutor3` int(11) NOT NULL,
  `Tutor4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseofferingsineverysemester`
--

INSERT INTO `courseofferingsineverysemester` (`number`, `Year`, `Semester`, `CourseNumber`, `BatchType`, `CourseType`, `Programme`, `Department`, `Teachers`, `Teacher2`, `Teacher3`, `Teacher4`, `Tutors`, `Tutor2`, `Tutor3`, `Tutor4`) VALUES
(1, 2020, 'winter', 'CS103', 1, 'Compulsory', 'B.Tech', 'CSE', 71, 78, 0, 0, 71, 78, 40, 54),
(2, 2020, 'winter', 'MA102', 1, 'Compulsory', 'B.Tech', 'ECE', 84, 8, 0, 0, 8, 84, 0, 0),
(3, 2020, 'winter', 'CS104', 1, 'Compulsory', 'B.Tech', 'CSE', 80, 61, 0, 0, 80, 61, 0, 0),
(4, 2020, 'winter', 'CS111', 1, 'Compulsory', 'B.Tech', 'CSE', 71, 40, 54, 78, 0, 0, 0, 0),
(5, 2020, 'winter', 'EC103', 1, 'Compulsory', 'B.Tech', 'ECE', 36, 82, 0, 0, 87, 94, 59, 69),
(6, 2020, 'winter', 'EC111', 1, 'Compulsory', 'B.Tech', 'ECE', 69, 60, 94, 68, 0, 0, 0, 0),
(7, 2020, 'winter', 'HS102', 1, 'Elective', 'B.Tech', 'ECE', 26, 0, 0, 0, 0, 0, 0, 0),
(8, 2020, 'winter', 'HS204', 1, 'Elective', 'B.Tech', 'ECE', 58, 0, 0, 0, 0, 0, 0, 0),
(9, 2020, 'winter', 'CS205', 2, 'Compulsory', 'B.Tech', 'CSE', 200, 0, 0, 0, 0, 0, 0, 0),
(10, 2020, 'winter', 'CS240', 2, 'Compulsory', 'B.Tech', 'CSE', 70, 2, 0, 0, 0, 0, 0, 0),
(11, 2020, 'winter', 'CS231', 2, 'Compulsory', 'B.Tech', 'CSE', 66, 35, 0, 0, 0, 0, 0, 0),
(12, 2020, 'winter', 'CS235', 2, 'Compulsory', 'B.Tech', 'CSE', 76, 22, 0, 0, 0, 0, 0, 0),
(13, 2020, 'winter', 'CS232', 2, 'Compulsory', 'B.Tech', 'CSE', 66, 35, 0, 0, 0, 0, 0, 0),
(14, 2020, 'winter', 'CS241', 2, 'Compulsory', 'B.Tech', 'CSE', 70, 2, 0, 0, 0, 0, 0, 0),
(15, 2020, 'winter', 'EC251', 2, 'Compulsory', 'B.Tech', 'ECE', 55, 0, 0, 0, 55, 0, 0, 0),
(16, 2020, 'winter', 'EC252', 2, 'Compulsory', 'B.Tech', 'ECE', 59, 87, 0, 0, 0, 0, 0, 0),
(17, 2020, 'winter', 'EC243', 2, 'Compulsory', 'B.Tech', 'ECE', 1, 0, 0, 0, 0, 0, 0, 0),
(18, 2020, 'winter', 'EC244', 2, 'Compulsory', 'B.Tech', 'ECE', 1, 82, 0, 0, 0, 0, 0, 0),
(19, 2020, 'winter', 'MA204', 2, 'Compulsory', 'B.Tech', 'ECE', 85, 0, 0, 0, 0, 0, 0, 0),
(20, 2020, 'winter', 'SC202', 2, 'Compulsory', 'B.Tech', 'ECE', 201, 0, 0, 0, 0, 0, 0, 0),
(21, 2020, 'winter', 'HS206', 2, 'Elective', 'B.Tech', 'ECE', 83, 0, 0, 0, 0, 0, 0, 0),
(22, 2020, 'winter', 'HS301', 2, 'Elective', 'B.Tech', 'ECE', 57, 0, 0, 0, 0, 0, 0, 0),
(23, 2020, 'winter', 'CS330', 3, 'Compulsory', 'B.Tech', 'CSE', 81, 0, 0, 0, 0, 0, 0, 0),
(24, 2020, 'winter', 'CS320', 3, 'Compulsory', 'B.Tech', 'CSE', 79, 0, 0, 0, 0, 0, 0, 0),
(25, 2020, 'winter', 'CS304', 3, 'Compulsory', 'B.Tech', 'CSE', 13, 0, 0, 0, 0, 0, 0, 0),
(26, 2020, 'winter', 'CS321', 3, 'Compulsory', 'B.Tech', 'CSE', 79, 0, 0, 0, 0, 0, 0, 0),
(27, 2020, 'winter', 'CS331', 3, 'Compulsory', 'B.Tech', 'CSE', 81, 0, 0, 0, 0, 0, 0, 0),
(28, 2020, 'winter', 'MA305', 3, 'Compulsory', 'B.Tech', 'ECE', 51, 0, 0, 0, 0, 0, 0, 0),
(29, 2020, 'winter', 'EC353', 3, 'Compulsory', 'B.Tech', 'ECE', 73, 0, 0, 0, 0, 0, 0, 0),
(30, 2020, 'winter', 'EC361', 3, 'Compulsory', 'B.Tech', 'ECE', 15, 0, 0, 0, 0, 0, 0, 0),
(31, 2020, 'winter', 'EC362', 3, 'Compulsory', 'B.Tech', 'ECE', 15, 74, 0, 0, 0, 0, 0, 0),
(32, 2020, 'winter', 'EC371', 3, 'Compulsory', 'B.Tech', 'ECE', 12, 0, 0, 0, 0, 0, 0, 0),
(33, 2020, 'winter', 'EC372', 3, 'Compulsory', 'B.Tech', 'ECE', 12, 0, 0, 0, 0, 0, 0, 0),
(34, 2020, 'winter', 'EC381', 3, 'Compulsory', 'B.Tech', 'ECE', 49, 0, 0, 0, 0, 0, 0, 0),
(35, 2020, 'winter', 'EC382', 3, 'Compulsory', 'B.Tech', 'ECE', 49, 0, 0, 0, 0, 0, 0, 0),
(36, 2020, 'winter', 'SC302', 3, 'Compulsory', 'B.Tech', 'ECE', 202, 0, 0, 0, 0, 0, 0, 0),
(37, 2020, 'winter', 'HS402', 3, 'Elective', 'B.Tech', 'HSS', 58, 0, 0, 0, 0, 0, 0, 0),
(38, 2020, 'winter', 'HS305', 3, 'Elective', 'B.Tech', 'HSS', 45, 83, 0, 0, 0, 0, 0, 0),
(39, 2020, 'winter', 'CS404', 4, 'Compulsory', 'B.Tech', 'CSE', 13, 0, 0, 0, 0, 0, 0, 0),
(40, 2020, 'winter', 'CS675', 4, 'Elective', 'B.Tech', 'CSE', 40, 0, 0, 0, 0, 0, 0, 0),
(41, 2020, 'winter', 'CS462', 4, 'Elective', 'B.Tech', 'CSE', 54, 0, 0, 0, 0, 0, 0, 0),
(42, 2020, 'winter', 'CS471', 4, 'Elective', 'B.Tech', 'CSE', 22, 76, 0, 0, 0, 0, 0, 0),
(43, 2020, 'winter', 'CS451', 4, 'Elective', 'B.Tech', 'CSE', 7, 13, 0, 0, 0, 0, 0, 0),
(44, 2020, 'winter', 'EC460', 4, 'Elective', 'B.Tech', 'ECE', 74, 0, 0, 0, 0, 0, 0, 0),
(45, 2020, 'winter', 'EC481', 4, 'Elective', 'B.Tech', 'ECE', 39, 0, 0, 0, 0, 0, 0, 0),
(46, 2020, 'winter', 'EC644', 4, 'Elective', 'B.Tech', 'ECE', 60, 0, 0, 0, 0, 0, 0, 0),
(47, 2020, 'winter', 'EC442', 4, 'Elective', 'B.Tech', 'ECE', 53, 0, 0, 0, 0, 0, 0, 0),
(48, 2020, 'winter', 'MA401', 4, 'Elective', 'B.Tech', 'ECE', 52, 0, 0, 0, 0, 0, 0, 0),
(49, 2020, 'winter', 'HS303', 4, 'Elective', 'B.Tech', 'HSS', 45, 0, 0, 0, 0, 0, 0, 0),
(50, 2020, 'winter', 'HS302', 4, 'Elective', 'B.Tech', 'HSS', 17, 0, 0, 0, 0, 0, 0, 0),
(51, 2020, 'winter', 'CS604', 1, 'Compulsory', 'M.Tech', 'CSE', 67, 0, 0, 0, 0, 0, 0, 0),
(52, 2020, 'winter', 'CS640', 1, 'Compulsory', 'M.Tech', 'CSE', 67, 0, 0, 0, 0, 0, 0, 0),
(53, 2020, 'winter', 'CS605', 1, 'Compulsory', 'M.Tech', 'CSE', 7, 0, 0, 0, 0, 0, 0, 0),
(54, 2020, 'winter', 'CS675', 1, 'Compulsory', 'M.Tech', 'CSE', 40, 0, 0, 0, 0, 0, 0, 0),
(55, 2020, 'winter', 'CS677', 1, 'Compulsory', 'M.Tech', 'CSE', 54, 0, 0, 0, 0, 0, 0, 0),
(56, 2020, 'winter', 'CS676', 1, 'Compulsory', 'M.Tech', 'CSE', 7, 13, 0, 0, 0, 0, 0, 0),
(57, 2020, 'winter', 'EC646', 1, 'Compulsory', 'M.Tech', 'ECE', 69, 0, 0, 0, 0, 0, 0, 0),
(58, 2020, 'winter', 'EC653', 1, 'Compulsory', 'M.Tech', 'ECE', 9, 0, 0, 0, 0, 0, 0, 0),
(59, 2020, 'winter', 'EC654', 1, 'Compulsory', 'M.Tech', 'ECE', 94, 0, 0, 0, 0, 0, 0, 0),
(60, 2020, 'winter', 'MA601', 1, 'Compulsory', 'M.Tech', 'ECE', 52, 0, 0, 0, 0, 0, 0, 0),
(61, 2020, 'winter', 'EC658', 1, 'Compulsory', 'M.Tech', 'ECE', 68, 0, 0, 0, 0, 0, 0, 0),
(62, 2020, 'winter', 'EC644', 1, 'Compulsory', 'M.Tech', 'ECE', 60, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courseregistrationsineverysemester`
--

CREATE TABLE `courseregistrationsineverysemester` (
  `S.No` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` varchar(11) NOT NULL,
  `CourseNumber` varchar(11) NOT NULL,
  `CourseType` varchar(11) NOT NULL,
  `RollNo` int(11) NOT NULL,
  `Approved` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fees_information`
--

CREATE TABLE `fees_information` (
  `Sno` int(15) NOT NULL,
  `Fee_type` varchar(20) NOT NULL,
  `Programme` varchar(20) NOT NULL,
  `Year_of_admission` varchar(20) NOT NULL,
  `Frequency` varchar(20) NOT NULL,
  `Fee_amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fee_and_fine`
--

CREATE TABLE `fee_and_fine` (
  `Date` varchar(30) NOT NULL,
  `RollNumber` int(15) NOT NULL,
  `TutionFee` int(10) NOT NULL,
  `HostelRent` int(15) NOT NULL,
  `MessAdvance` int(15) NOT NULL,
  `MessDues` int(15) NOT NULL,
  `Fines` int(10) NOT NULL,
  `CautionMoney` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `RollNumber` int(15) NOT NULL,
  `FineType` varchar(20) NOT NULL,
  `FineAmount` int(15) NOT NULL,
  `partial` varchar(11) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `RollNumber` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Email Address` varchar(255) NOT NULL,
  `Guardian's Name` varchar(255) NOT NULL,
  `Guardian's PhoneNumber` varchar(255) NOT NULL,
  `Guardian's EmailID` varchar(255) NOT NULL,
  `Age` int(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `StudentProgramme` varchar(255) NOT NULL,
  `StudentDepartment` varchar(255) NOT NULL,
  `Student Hostel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`RollNumber`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email Address`, `Guardian's Name`, `Guardian's PhoneNumber`, `Guardian's EmailID`, `Age`, `Gender`, `Category`, `StudentProgramme`, `StudentDepartment`, `Student Hostel`) VALUES
(1503002, 'Arvind ', 'Kumar', '', '', 'arvind221@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1503006, 'Anamiya ', 'Bhattacharya', '', '', 'anamiya2007@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1601032, 'MRIDUSMITH ', 'BASUMATARY', '', '', 'stylesm478@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2016', 'CSE', 'BOYS'),
(1601046, 'SANJAY KUMAR ', 'KEWAT', '', '', 'xunjaykewat@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2016', 'ECE', 'BOYS'),
(1603002, 'Alokojjwal ', 'Das', '', '', 'alokojjwal.2007@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1603003, 'Anakhi ', 'Hazarika', '', '', 'anakhi22@gmail.com', '', '', '', 0, 'Female', 'OBC', 'PhD', 'ECE', 'GIRLS'),
(1603004, 'Anupam ', 'Pattanayak', '', '', 'anupam.pk@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1603005, 'Arjun Singh  ', 'Chetry', '', '', 'achetry52@gmail.com', '', '', '', 0, 'Male', 'OBC', 'PhD', 'Mathematics', 'BOYS'),
(1603006, 'Arup ', 'Baruah', '', '', 'arup.baruah@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1603007, 'Barnana ', 'Baruah', '', '', 'barnanabaruah12.13@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'GIRLS'),
(1603008, 'Bindu ', 'Agarwalla', '', '', 'bindu.agarwl@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'BOYS'),
(1603009, 'Dimple ', 'Choudhury', '', '', 'choudimple6@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'HSS', 'GIRLS'),
(1603010, 'Khanjan Changmai ', 'Baruah', '', '', 'khanjan099@yahoo.com', '', '', '', 0, 'Male', 'OBC', 'PhD', 'CSE', 'BOYS'),
(1603012, 'Nikumani ', 'Choudhury', '', '', 'nikumani.choudhury.2014@ieee.org', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1603015, 'Ranjan ', 'Patowary', '', '', 'r.patowary@cit.ac.in', '', '', '', 0, 'Male', 'SC', 'PhD', 'CSE', 'BOYS'),
(1603016, 'Richa ', 'Sarma', '', '', 'richasarma201090@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'GIRLS'),
(1603017, 'Rupak Kumar  ', 'Borah', '', '', 'padumecofriendship011@gmail.com', '', '', '', 0, 'Male', 'OBC', 'PhD', 'HSS', 'BOYS'),
(1603019, 'Sourav  ', 'Bhowmick', '', '', 'sourav.bhowmick1@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1701001, 'ADITYA ', 'JOLLY', '', '', 'adijuztoocool@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701002, 'AILNENI SAI ', 'SHISHIR', '', '', 'saishishir9999@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701003, 'AKANSHA', '', '', '', 'mini.akansha007@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'CSE', 'GIRLS'),
(1701004, 'AMAN ', 'SHEEL', '', '', 'amansheel100@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'CSE', 'BOYS'),
(1701005, 'AMARTYA ', 'DUTTA', '', '', 'amartya17f.h.s.s@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701006, 'AMBER ', 'SINGH', '', '', 'ambersinghraghuvanshi@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701007, 'AMRITANSHU', '', '', '', 'amritanshukumar8@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701008, 'ANIVRAT ', 'GOEL', '', '', 'goelanivrat@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701009, 'ANKIT', '', '', '', 'ankitjaglan66@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701010, 'ANKUR ', 'SINGH', '', '', 'ankur1660@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701011, 'ANKUSH RAMCHANDRA ', 'RODEWAD', '', '', 'rodewad.ankush29@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2017', 'CSE', 'BOYS'),
(1701012, 'ARJITA ', 'JAISWAL', '', '', 'jaiswalarjita1510@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'CSE', 'GIRLS'),
(1701013, 'AVINASH ', 'TOPPO', '', '', 'atoppo267@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2017', 'CSE', 'BOYS'),
(1701014, 'AYUSH ', 'RAJ', '', '', 'rayush1309@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701015, 'BIKRANT ', 'SARMAH', '', '', 'sarma.bikrant12@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701016, 'CHEKURTHI ', 'MANVITH', '', '', 'chekurthimanvith32@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701017, 'DIVYANSHU ', 'BHARDWAJ', '', '', 'bhardwaj007.d@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701018, 'DOKALA ', 'JAYACHANDRA', '', '', 'jayachandradokala@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701019, 'DOLI ', 'NARZARY', '', '', 'dolinarzary123@gmail.com', '', '', '', 0, 'Female', 'ST', 'Btech 2017', 'ECE', 'GIRLS'),
(1701020, 'GARGEE', '', '', '', 'srivastava.gargee@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'CSE', 'GIRLS'),
(1701021, 'GATTU ', 'SAVANTH', '', '', 'savanthgattu123@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701022, 'GAURAO NATTHU ', 'NANDEKAR', '', '', 'gauraonandekar99@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701023, 'GAURAV KUMAR ', 'RUHELA', '', '', 'gaurav.ruhela07@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701024, 'HALANI PARTH ', 'VINAYCHANDRA', '', '', 'parthhalani05@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701025, 'HARSH ', 'VISHWAKARMA', '', '', 'vishwakarmaharsh54@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701026, 'JOGANANDA ', 'DEURI', '', '', 'zedideuri@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2017', 'CSE', 'BOYS'),
(1701027, 'KOTHAPALLI JACOB ', 'VISHAL', '', '', 'jacobvishal.k7@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'ECE', 'BOYS'),
(1701029, 'KRISHNAM ', 'VAJRA', '', '', 'vajrak9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701030, 'KUNDRAPU ', 'SWAROOP', '', '', 'kundrapu.swaroop1727@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701031, 'KUSHAGRA ', 'YADAV', '', '', 'kushagrayadav1234@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701033, 'MANORANJAN ', 'KUMAR', '', '', 'mano7632844@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701034, 'MARYARADHIYA ', 'DAIMARI', '', '', 'maryaradhiya@gmail.com', '', '', '', 0, 'Female', 'ST', 'Btech 2017', 'ECE', 'GIRLS'),
(1701035, 'MEGAVATH DILEEP ', 'KUMAR', '', '', 'dileepvickydillu@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2017', 'ECE', 'BOYS'),
(1701036, 'MOHIT ', 'MISHRA', '', '', 'mohitmishra2022@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701037, 'MONISHA ', 'RANJAN', '', '', 'ranjan.monisha233@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'CSE', 'GIRLS'),
(1701038, 'NEELAVDEEP ', 'BHAGABATI', '', '', 'neelavdeep10@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701039, 'NISHANT ', 'DWIVEDI', '', '', 'nishantdwivedi1998@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701040, 'NISHANT ', 'SHRIVASTAVA', '', '', 'nishantshri97@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701041, 'NISHU ', 'KUMARI', '', '', 'nishukumari13598@gmail.com', '', '', '', 0, 'Female', 'OBC', 'Btech 2017', 'ECE', 'GIRLS'),
(1701042, 'OM PRAKASH ', 'KUMAR', '', '', 'op4pcc@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701044, 'PRADHUMAN ', 'SINGH', '', '', 'pradhumansingh021@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701045, 'PRAJAWAL KUMAR ', 'PANDEY', '', '', 'prajwalkp@hotmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701046, 'PRAKHAR ', 'TIWARI', '', '', 'guru3.98@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701047, 'PRATEEK ', 'JAISWAL', '', '', 'anshjaiswal001@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701048, 'PRINCE KUMAR ', 'SHARMA', '', '', 'prince30sharma52@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2017', 'ECE', 'BOYS'),
(1701049, 'R LOGA ', 'VIGNESH', '', '', 'rlvignesh2000@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'ECE', 'BOYS'),
(1701050, 'RAJ ', 'ARYAN', '', '', 'ankuthebest553@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701051, 'RAJAT ', 'BHATTACHARJYA', '', '', 'rajatbh21@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701052, 'RATANJEET PRATAP ', 'CHAUHAN', '', '', 'ratanjeetpratap223@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701053, 'RISHABH ', 'BAGHEL', '', '', 'baghelrishabha@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701054, 'RUNKU NIKHIL ', 'SAI KUMAR', '', '', 'nikhilrunku@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701055, 'RUSHIKESH RAJESH ', 'SHIMPI', '', '', 'rushikeshshimpi746@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701056, 'SAHIL ', 'BAJAJ', '', '', 'sahilbajaj82@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701057, 'SAHIL ', 'KALAMKAR', '', '', 'sahil.kalamkar@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701058, 'SAHIL KUMAR ', 'JAISWAL', '', '', 'sunnjaiswal@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701059, 'SAMEER ', 'ROY', '', '', 'sroy08694@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'CSE', 'BOYS'),
(1701060, 'SAURABH KUMAR ', 'BHARTIA', '', '', 's.bhartia.sb98@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701061, 'SHASHANK RAJESH ', 'DHARGAWE', '', '', 'shashankdhargawe123456@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'CSE', 'BOYS'),
(1701062, 'SHIVAM ', 'ANAND', '', '', 'shivamanand0823@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701063, 'SHIVARASI ', 'SHASHANK', '', '', 'shashank0234@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'CSE', 'BOYS'),
(1701064, 'SHIVIKA ', 'AGRAWAL', '', '', 'shivika1398@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'ECE', 'GIRLS'),
(1701065, 'SHUBHAM KAILASH ', 'KHOBRAGADE', '', '', 'engshubham7@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'ECE', 'BOYS'),
(1701066, 'SRIJAN ', 'WADHWA', '', '', 'wadhwasrijan@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701067, 'SUBHASH KUMAR ', 'SUMAN', '', '', 'sksuman2186@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701068, 'SUNAND ', 'SHARMA', '', '', 'sunandsharma619@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701069, 'SUSHANT ', 'AGGARWAL', '', '', 'aggarwalsushant27@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701070, 'SUSHANTH ', 'VALLAPUDAS', '', '', 'sushanthvallapudas@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2017', 'CSE', 'BOYS'),
(1701071, 'SUSHIL ', 'KUMAR', '', '', 'sushil9616655680@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701072, 'SWAPNIL ', 'RAJ', '', '', 'hansrajswapnil@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'CSE', 'BOYS'),
(1701073, 'TUSHAR ', 'BHARTI', '', '', 'tusharbharti854301@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2017', 'ECE', 'BOYS'),
(1701074, 'VARUN ', 'PARASHAR', '', '', 'parasharvarun202@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701075, 'VIKRAMADITYA ', 'SINGH', '', '', 'vikramaditya.bhadoria@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701076, 'VINEET', '', '', '', 'vinfbdplw@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'ECE', 'BOYS'),
(1701077, 'VISHAL ', 'DEKA', '', '', 'vishaldeka@outlook.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701078, 'YASHASVI ', 'GOEL', '', '', 'yashasvigoel@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2017', 'CSE', 'BOYS'),
(1701079, 'ZINEA ', 'DAS', '', '', 'zineadas3398@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2017', 'CSE', 'GIRLS'),
(1703002, 'Anirban ', 'Das', '', '', 'anirbanfuture@gmail.com', '', '', '', 0, 'Male', 'OBC', 'PhD', 'CSE', 'BOYS'),
(1703003, 'Ankita ', 'Das', '', '', 'ankita13614@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'HSS', 'GIRLS'),
(1703004, 'Arijit ', 'Jana', '', '', 'jana94arijit@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'Mathematics', 'BOYS'),
(1703007, 'Indrajit ', 'Kalita', '', '', 'indrakalita09@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1703008, 'Jitumani ', 'Sarma', '', '', 'jitusarma18@yahoo.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1703009, 'Kalyanee  ', 'Devi', '', '', 'kalyanee_devi@yahoo.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'GIRLS'),
(1703010, 'Lipika ', 'Kalita', '', '', 'lipika_kalita@yahoo.in', '', '', '', 0, 'Female', 'General', 'PhD', 'HSS', 'GIRLS'),
(1703011, 'Mridul ', 'Haque', '', '', 'mridulh7@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1703012, 'Parthana ', 'Sarma', '', '', 'parthana.sarma28@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'GIRLS'),
(1703014, 'Sabyasachi ', 'Bhattacharyya', '', '', 'sabya005@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1703015, 'Sekhar Suman ', 'Borah', '', '', 'borahsumanshekhar90@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1801001, 'ABHIMANYU KUMAR ', 'GUPTA', '', '', 'abhimanyu8862800@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801002, 'ABHINAV', '', '', '', 'abhinavjha66451@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801004, 'ABHINAV ', 'KUMAR', '', '', 'tanishq9798@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801005, 'ABHISHEK ', 'KUMAR', '', '', 'abhishekabs15895@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801006, 'ABHISHEK KUMAR ', 'GUPTA', '', '', 'gupta.abhishek373@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801007, 'ACHAL ', 'DIXIT', '', '', 'achaldixit22@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801008, 'ADITYA RAJ ', 'CHAUHAN', '', '', 'aditya16061999@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801009, 'ADITYA ', 'VIKRAM', '', '', 'adityavikram.amb@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801010, 'AJIT ASHOK ', 'SINGH', '', '', 'iamajit41@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801011, 'AKASH', '', '', '', 'akashanuragi71@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801012, 'AKASH ', 'KAPIL', '', '', 'akashkapil01@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801013, 'AKSHAY ', 'JAIN', '', '', 'akshayjain1999.aj18@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801014, 'ALOK ', 'GARG', '', '', 'alk.grg7@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801015, 'ALUGUBELLI ', 'HEMANTH', '', '', 'hemanthalugubelli@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801016, 'AMAR ', 'KUMAR', '', '', 'amark0982@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801019, 'ANISHA ', 'PANDEY', '', '', 'anishapandey135@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2018', 'CSE', 'GIRLS'),
(1801021, 'ANKIT ', 'KUMAR', '', '', 'ankitnobi2000@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801022, 'ANUGUNJ ', 'NAMAN', '', '', 'anugunjjha@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801023, 'ANUJ ASHOK ', 'NARWADE', '', '', 'anujnarwade89@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801024, 'ANURANAN RAI ', 'DEKA', '', '', 'rondeka.anuranan@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801025, 'ARKADEEP ', 'HALDER', '', '', 'arkadeephalder86@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801026, 'ARPIT ', 'KUMAR', '', '', 'arpitfriendsforever@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801027, 'ARYAN', '', '', '', 'aryanpanchal.1999@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801028, 'ARYAN ', 'SHARMA', '', '', 'sharmaaryan0717@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801029, 'ASHISH ', 'GOSWAMI', '', '', 'ashish.iiitg.ece@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801030, 'ASHISH KUMAR ', 'MISHRA', '', '', 'ashishmishrajune2000@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801031, 'ASHISH KUMAR ', 'SAINI', '', '', 'saini.ashish021@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801032, 'ASHMIT ', 'AYUSH', '', '', 'aspking.ash.aa@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801033, 'ASHUTOSH ', 'CHAUBEY', '', '', 'ashutoshchaubey200@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801034, 'ASHUTOSH ', 'GUPTA', '', '', 'guptaashutosh427@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801035, 'ASHWANI ', 'KUMAR', '', '', 'ashmsdbigfan@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801036, 'ATHARV ', 'DABHADE', '', '', 'atharvd2077@outlook.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801037, 'ATMAKURU VENKATA SUBRAMANYA ', 'DHATRISH', '', '', 'dhathrishu.1947@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801038, 'ATUL ', 'PRAKASH', '', '', 'atulprakash1492@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801039, 'AVNEESH ', 'YADAV', '', '', 'avneeshyadav0101@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801040, 'AYUSH ', 'NARAYAN', '', '', 'ayushnarayan22@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801041, 'AYUSHMAN ', 'SINGH', '', '', 'singhayushman13@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801042, 'AZMEERA RAJ ', 'KUMAR', '', '', 'azmeerarajkumar222@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801043, 'BADGUNA ', 'SANDEEP', '', '', 'sandeepbadguna@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801044, 'CHANDUPATLA VIPIN ', 'REDDY', '', '', 'vipin8900@rediff.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801045, 'CHAYAN ', 'GURELE', '', '', 'chayan.g101@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801046, 'CHETAN ', 'SINHA', '', '', 'chetan99sinha@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801047, 'DEEPAK ', 'KUMAR', '', '', 'kumardeepak06169@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801048, 'DEEPAK KUMAR ', 'YADAV', '', '', 'deepakyadav56617@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801049, 'DEEPAK ', 'SHARMA', '', '', 'deepkshrma777@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801050, 'DEEPAK ', 'SIDAR', '', '', 'deepaksidar6@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801051, 'DEV ', 'ASWAL', '', '', 'devaswal625@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801052, 'DHEERAJ ', 'KUMAR', '', '', 'dheeraj.kr1729@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801053, 'DHIRAJ KUMAR ', 'SAH', '', '', 'dhiraj.kumar2990@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801054, 'DHRUV NARAYAN ', 'GUPTA', '', '', 'dhruvnarayangupta7171@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801055, 'DIALI ', 'KUNDU', '', '', 'kundudiali1999@yahoo.com', '', '', '', 0, 'Female', 'General', 'Btech 2018', 'CSE', 'GIRLS'),
(1801056, 'DIVY ', 'PANDEY', '', '', 'divyrlb@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801057, 'DIVYAM', '', '', '', 'divyam21bro98@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801058, 'DIVYANSH SINGH ', 'MAURA', '', '', 'mauradivyansh@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801059, 'DIWAKAR ', 'BHARTI', '', '', 'diwakarbharti4@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801060, 'DUMPALA ', 'RAVITEJA', '', '', 'ravitejadumpala888@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801061, 'DWARKA PRASAD ', 'BAIRWA', '', '', 'dprasadbairwa1997@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801062, 'GAURAV SHEKHAR ', 'SINGH', '', '', 'gaurav.bn.singh@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801063, 'GOVIND ', 'AGARWAL', '', '', 'govindagarwal24@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801064, 'GUNNAM ', 'SURYAKANTH', '', '', 'suryakanth777.sk@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801065, 'GURNOOR', 'SINGH', '', '', 'singhgurnoor080@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801066, 'GURPREET ', 'SINGH', '', '', 'gurdaspur9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801067, 'HALAVATH ', 'VENU', '', '', 'venunaik4@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801068, 'HARINKHEDE ASHMIK ', 'AJAY', '', '', 'ashmik.harinkhede@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801069, 'HARSH ', 'PRAKASH', '', '', 'sharshp550@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801070, 'HARSHIT ', 'DIXIT', '', '', 'harshitdxt3004@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801071, 'HARSHIT ', 'JAIN', '', '', 'jainharshit518@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801072, 'HARSHIT ', 'JOSHI', '', '', 'harshddudejoshi@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801073, 'HARSHIT ', 'KARAN', '', '', 'harsheet2020@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801074, 'HIMANSHU', '', '', '', 'lordhimanshu19@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801075, 'HRITHIK EDWARD ', 'SAMPSON', '', '', 'hrithikedwardsampson@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801076, 'ISHAN ', 'ARYA', '', '', 'ishanarya0@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801077, 'ISHAN ', 'CHAUDHARY', '', '', 'ishan1vibhu@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801078, 'JANMAYJAY ', 'SINGH', '', '', 'janmayjaysingh16@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801079, 'JAY ', 'PANDEY', '', '', 'jaypandey689@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801080, 'PARIKIRT', 'JHA', '', '', 'parikirtj424@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801081, 'KANDADI VENKATA ', 'SHRAVAN', '', '', 'kandadishravan@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801082, 'KANIKELLA DUNDI SAI ', 'AVINASH', '', '', 'saiavinash3666@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801083, 'KARTIK ', 'GUPTA', '', '', 'kartik.dpsg@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801084, 'KARTIK ', 'VERMA', '', '', 'annu.s1979@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801085, 'KARUNESH ', 'RAJ', '', '', 'karuneshraj992@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801086, 'KATIPALLY YAGNESH ', 'REDDY', '', '', 'yagneshreddyjeemains2018@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801087, 'KAUSTAV ', 'BHATTACHARJEE', '', '', 'kaustav.bhattacharjee2000@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801088, 'KONDAKINDI DHEERAJ ', 'REDDY', '', '', 'kdheerureddy@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801089, 'KONGAMUDI KAMAL ', 'SAI', '', '', 'kamalsai.kongamudi@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801090, 'KORRA ', 'SANGEETH', '', '', 'sonu.sangeeth7@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801093, 'KULDEEP ', 'RAVALIYA', '', '', 'kuldeep0ravliya@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801094, 'KUMAR ', 'BADAL', '', '', 'kumarbadal208@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801095, 'KUNAL ', 'YADAV', '', '', 'kunaly389@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801096, 'KUSHAGRA ', 'AGARWAL', '', '', 'kushagraagggarwal@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801097, 'LAKSHMI PRIYA ', 'PAMPATI', '', '', 'priyapampati18@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2018', 'CSE', 'GIRLS'),
(1801098, 'LENKA ', 'AYYAPPA', '', '', 'ayyappa01122@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801099, 'LOKESH ', 'DAGA', '', '', 'loci20031999@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801100, 'M VAMSI ', 'KRISHNA', '', '', 'vamsi.scientist@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801101, 'MANJEET ', 'KUMAR', '', '', 'manjeetiiitg9521@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801102, 'MANSI ', 'SAHU', '', '', 'mansisahu2332@gmail.com', '', '', '', 0, 'Female', 'OBC', 'Btech 2018', 'CSE', 'GIRLS'),
(1801103, 'MANUL SINGH ', 'PARIHAR', '', '', 'manul.singh.parihar@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801104, 'MD AURANGJEB', '', '', '', 'mdaurangjeb36@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801105, 'MUKUND KUMAR ', 'JHA', '', '', 'eemkjha@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801106, 'NAKKA ', 'NAVYA', '', '', 'connectwithnavya@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2018', 'ECE', 'GIRLS'),
(1801107, 'NAMAN ', 'GERA', '', '', 'namangera15@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801108, 'NAMAN ', 'PATIDAR', '', '', 'pnaman03@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801109, 'NAMIT ', 'GOEL', '', '', 'namitgoel523@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801110, 'NEELABH ', 'SHUKLA', '', '', 'neelabhshukla00@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801111, 'NEERAV ', 'BHARATI', '', '', 'neeravb1261@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801112, 'NIHAR ', 'PAWAR', '', '', 'niharpawar99@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801113, 'NIMISH ', 'AGRAWAL', '', '', 'realnimish@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801114, 'NISHANT ', 'KUMAR', '', '', 'nishantkumar3006@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801115, 'NITESH KUMAR ', 'DUBEY', '', '', 'niteshdubey100@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801116, 'OJASV ', 'SINGH', '', '', 'singhtejasv9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801117, 'OM PRAKASH ', 'YADAV', '', '', 'omprakash7007845@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801118, 'OMKAR YESHVANT ', 'CHUTE', '', '', 'omkarchute13414557@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801119, 'PADALA PRADEEP ', 'KUMAR', '', '', 'padalapradeep227@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801121, 'PATNAM ', 'MANIDEEP', '', '', 'manideeppatnam123@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801122, 'PAYAM NIKHIL ', 'KUMAR', '', '', 'pym324@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'ECE', 'BOYS'),
(1801123, 'PIYUSH ', 'UPADHYAYA', '', '', 'piyupa1997@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801124, 'PRADYUMNA ', 'BHARDWAJ', '', '', 'bhardwaj.pradyumn.pb@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801125, 'PRANAMI ', 'HAZARIKA', '', '', 'pranami.hazarika44@gmail.com', '', '', '', 0, 'Female', 'ST', 'Btech 2018', 'ECE', 'GIRLS'),
(1801126, 'PRASUN ', 'KUMAR', '', '', 'prasunkumar.edu@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801127, 'PRATEEK ', 'JAIN', '', '', 'prateek93a@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801128, 'PRATYUSH ', 'PRADHAN', '', '', 'pratyushpradhan169@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801129, 'PRATYUSH ', 'SRIVASTAVA', '', '', 'praty1811@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801130, 'PREMCHANDRA ', 'SINGH', '', '', 'premchandra.singh.5268@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801131, 'PRINCE ', 'KUMAR', '', '', 'princzraj0@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801132, 'PRIYANSHU ', 'ANAND', '', '', 'www.roh0n11@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801133, 'PUNEET ', 'VERMA', '', '', 'puneetverma951761@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801134, 'RAHUL ', 'GUPTA', '', '', 'rg3222000@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801135, 'RAJ ', 'ARYAN', '', '', 'rajaryan9923@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801136, 'RAJ ', 'RANJAN', '', '', 'rranjan01234@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801137, 'RAKESH KUMAR ', 'SINGH', '', '', 'rakeshsinghsuratkal@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801138, 'RAVINDRA SINGH ', 'SISODIYA', '', '', 'ravi16122001@yahoo.co.in', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801139, 'RICHIK ', 'CHANDA', '', '', 'richikchanda1999@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801140, 'RISHABH ', 'NIRANJAN', '', '', 'rn43191@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801141, 'RISHABH ', 'YADAV', '', '', 'rtgjc22@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801142, 'RISHAV ', 'RAJ', '', '', 'imrishavraj2001@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801143, 'RISHU ', 'RAJ', '', '', 'rishuraj99058111@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801144, 'ROBIN', '', '', '', 'robinkhilery960@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801145, 'ROSHAN ', 'KUMAR', '', '', 'rk722579@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801146, 'SACHIN ', 'AGARWAL', '', '', 'sachinagarwal0499@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801147, 'SACHIN ', 'KUMAR', '', '', 'sachinsspandit0503@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801148, 'SAHIL ', 'KHAN', '', '', 'sahil.almindia@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801149, 'SAJAL ', 'GUPTA', '', '', 'sajal07091999@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801150, 'SAKSHAM ', 'TOMAR', '', '', 'sakshamtomar29@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801151, 'SAMEER KUMAR ', 'KUSHWAHA', '', '', 'kushwahasameerkumar@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801152, 'SAMIDHA ', 'SINGH', '', '', 'samidhasinghss1111@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2018', 'CSE', 'GIRLS'),
(1801153, 'SAMIR ', 'BORO', '', '', 'samirboro92@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801154, 'SAMRIDH ', 'SINGH', '', '', 'samridh1002@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801155, 'Sanchit ', 'KUMAR', '', '', 'kumarsanchit1192081@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801156, 'SANJEEV ', 'KUMAR', '', '', 'sanjeevkumar30798@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801157, 'SARGUNJIT ', 'SINGH', '', '', 'sargunjitsingh@yahoo.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801159, 'SATYAM', '', '', '', 'satyam10173@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801160, 'SAURABH ', 'SINGH', '', '', 'saurabh.s99100@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801161, 'SAURAV ', 'SUMAN', '', '', 'suman.rockstarsaurav82@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801162, 'SAYAN ', 'KAR', '', '', 'sayankar1308@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801163, 'SHANTANU ', 'SINGH', '', '', 'shantanuchaudhary0903@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801164, 'SHANTNU ', 'BHALLA', '', '', 'shantanubhallakkb@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801165, 'SHIVAM ', 'KUMAR', '', '', 'shivam.k.srivastav9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801166, 'SHIVAM ', 'KUMAR', '', '', 'shivam6522@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801167, 'SHIVANG ', 'MISHRA', '', '', 'shivang2872000@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801168, 'SHOBHIT ', 'SINGH', '', '', 'singhshobhit11.ss@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801169, 'SHREYANSH SINGH ', 'TOMAR', '', '', 'shreyanshtomar99@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801170, 'SHUBAM ', 'BHAGAT', '', '', 'shubambhagat8492@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'ECE', 'BOYS'),
(1801171, 'SHUBHAM ', 'YADAV', '', '', 'shubhamyadav086@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801172, 'SIDDHANT ', 'JHA', '', '', 'sonujha573@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801173, 'SIDDHARTH ', 'RAJAWAT', '', '', 'rajawatsiddharth@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801174, 'SIDDHARTHA AVIJIT ', 'BOSE', '', '', 'bose.sid2001@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801175, 'SOHAN LAL ', 'GUPTA', '', '', 'sohanlalgupta022@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801176, 'SOUMYAJIT ', 'DEB', '', '', 'debsoumyajit100@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801177, 'SOURAV ', 'KUMAR', '', '', 'kumar.sourav.1801@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801178, 'SUDESH', '', '', '', 'sudeshjoshi915@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801179, 'SUDHANSHU ', 'RAI', '', '', 'sudhanshurai234@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801180, 'SUMESH ', 'THAKUR', '', '', 'sumeshthakur402@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801181, 'SURYANSH ', 'SINGH', '', '', 'suryanshthegreat1@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801182, 'SWAPNIL ', 'AMAN', '', '', 'swapnil1.aman@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801183, 'TANMAY ', 'GOEL', '', '', 'tanmaygoel972@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801184, 'TEJAVATH NAIK RAHUL ', 'ROY', '', '', 'tnrr.2129@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2018', 'CSE', 'BOYS'),
(1801185, 'THIRUMURUGAN R', '', '', '', 'rthirumurugan2000@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801186, 'THORTHI NIVAS ', 'REDDY', '', '', 'nivasreddy912@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801187, 'TUSHAR ', 'AHIRWAR', '', '', 'ahirwartushar3@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801188, 'TUSHAR ', 'BHARTIYA', '', '', 'nishu123tushar@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801190, 'UTKARSH ', 'KUMAR', '', '', 'utkarshkumar9649@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801191, 'UTKARSH ', 'MISHRA', '', '', 'utk.mishra29@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801194, 'VIKAS ', 'KUMAR', '', '', 'vikask9835@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801195, 'VIKAS ', 'PASWAN', '', '', 'yrvikaspaswan@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2018', 'CSE', 'BOYS'),
(1801196, 'VIPPARLA ', 'DHARANTEJA', '', '', 'dharantejansst@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2018', 'ECE', 'BOYS'),
(1801197, 'VISHAL ', 'CHOUDHARY', '', '', 'vishalchoudhary14141@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Btech 2018', 'CSE', 'BOYS'),
(1801198, 'VISHESH ', 'MISHRA', '', '', 'kavivisheshmishra@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'ECE', 'BOYS'),
(1801199, 'YASH ', 'AGARWAL', '', '', 'yashaggarwal6@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801200, 'YASH ', 'KOTHARI', '', '', 'yashkothari9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1801202, 'YASHWANTH ', 'MANIVANNAN', '', '', 'nadalyashwanth99@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2018', 'CSE', 'BOYS'),
(1802027, 'Tapas Kumar ', 'Mishra', '', '', 'tapasmishra359@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2018', 'CSE', 'BOYS'),
(1803001, 'Bondita ', 'Paul', '', '', 'bonditapaul00@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'GIRLS'),
(1803002, 'Nirmali ', 'Roy', '', '', 'nirmaliroy2011@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'Mathematics', 'GIRLS'),
(1803004, 'Rima ', 'Deka', '', '', 'rimadekas@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'GIRLS'),
(1803005, 'Shatadal ', 'Chatterjee', '', '', 'chatterjeeshatadal@yahoo.in', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1803006, 'Shyana ', 'Boruah', '', '', 'shyanaboruah27@gmail.com', '', '', '', 0, 'Female', 'OBC', 'PhD', 'HSS', 'GIRLS'),
(1901001, 'AASHISH', '', '', '', 'rrajaaashish@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901002, 'AAYUSH ', 'MAURYA', '', '', 'mauryagolu99@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901003, 'ABHAY KUMAR ', 'ANAND', '', '', 'abhay13901@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'ECE', 'BOYS'),
(1901004, 'ABHINANDAN ', 'KUMAR', '', '', 'abhinandank626@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901005, 'ABHINAV ', 'KUMAR', '', '', 'abhinavkumar54840@gmail.com ', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901006, 'ABHINAV ', 'SHARMA', '', '', 'pass.abhinav@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901007, 'ABHISHEK ', 'JAIN', '', '', 'jabhishek2323@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901008, 'ABHISHEK ', 'KUMAR', '', '', 'abhishekk0333333@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901009, 'ABHISHEK ', 'KUMAR', '', '', 'a1981999@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901010, 'ABHISHEK ', 'RAUT', '', '', 'abhishek.raut1372@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901011, 'ADITI ', 'ROY', '', '', 'aditiroy.21.ar@gmail.com ', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901012, 'ADITYA ARUN ', 'SHARMA', '', '', 'chiragarunsharma@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901013, 'ADUDODLA ANKITH ', 'REDDY', '', '', 'ankithreddy2001@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901014, 'AKSHAY ', 'TRIPATHI', '', '', 'tripathiakshay009@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901015, 'AKSHIT ', 'RAO', '', '', 'akshitrao.21@hotmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901016, 'ALMAS ', 'AHMAD', '', '', 'ahmadalmas.786.aa@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901017, 'AMAN ', 'AGARWAL', '', '', 'amanaglmbd@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901018, 'AMAN ', 'JAIN', '', '', 'amanj13508@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901019, 'AMAN ', 'KUSHWAHA', '', '', 'amankushwaha008@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901020, 'AMARESH CHAUDHARY ', 'NARA', '', '', 'amareshnara2@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901021, 'AMARTYA ', 'CHOUDHARY', '', '', 'amartya.dps@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901022, 'AMIRTHALINGAM SHUBHAM ', 'SAI', '', '', 'shubham.sai1327@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'ECE', 'BOYS'),
(1901023, 'AMITESH ', 'KUMAR', '', '', 'amitesh46237242@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901025, 'ANANYA', '', '', '', 'ananyabhushan118@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901026, 'ANANYA ', 'PATHAK', '', '', 'ananyasomu@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901027, 'ANIRUDDH ', 'SHARMA', '', '', 'anantsharma0201@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901028, 'ANISH KUMAR ', 'CHAUDHARY', '', '', 'anishchaudhary908@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901029, 'ANISHA ', 'PRAJAPATI', '', '', 'anishaprajapati1004@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901030, 'ANJALI ', 'BHARTI', '', '', 'bhartianjali553@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'ECE', 'GIRLS'),
(1901031, 'ANKIT ', 'KUMAR', '', '', 'ankitamuniverse@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901032, 'ANKIT ', 'KUMAR', '', '', 'majorankits136@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901034, 'ANKIT ', 'RAJPUT', '', '', 'Ankitr9981@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901035, 'ANKIT ', 'SINGH', '', '', 'mr.ankitsingh1921@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'ECE', 'BOYS'),
(1901036, 'ANSHUL ', 'VERMA', '', '', '2000anshverma@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901037, 'ANSHUMAN', '', '', '', 'Anshuman8800@gmail.com ', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901038, 'ANURAG ', 'BAUNDWAL', '', '', 'abaundwal@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901039, 'ANUSHREE ', 'ANIL', '', '', 'anu200anil@gmail.com ', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901040, 'APARNA ', 'RAJ', '', '', 'aparna232001@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901041, 'ARNAV DILIP ', 'SHINDOLKAR', '', '', 'arnav.shindolkar0505@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901042, 'ARPIT ', 'PRATAP', '', '', 'arpit.pratap11@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901043, 'ARSH ', 'KUMAR', '', '', 'Arshkr07@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901044, 'ARYAN ', 'LAL', '', '', 'aryanlal12345@gmail.com ', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901045, 'ASHNA ', 'BASOTIA', '', '', 'basotiaashna51299@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901046, 'ATIK KAMLESHWARDAS ', 'NAGESHWAR', '', '', 'atiknageshwar07@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901047, 'AYUSH ', 'CHOUDHURY', '', '', 'choudhuryaayush@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901048, 'AYUSH ', 'DAS', '', '', 'ayushdas6602@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901049, 'AYUSHMAN SINGH ', 'CHAUHAN', '', '', 'ascb508@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901050, 'BADAGALA ', 'SRIHARSHA', '', '', 'sriharshabadagala02@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901051, 'BHASKAR ', 'MISHRA', '', '', 'bhaskarmishra2014bm@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901052, 'BHAVYA ', 'AGARWAL', '', '', 'bhavya.aru19@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901053, 'BHUVAN ', 'GUMBER', '', '', 'bhuvangumber786vimb@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901054, 'CHARITHA RAM NIRMAL ', 'KONDRU', '', '', 'charitharam02@gmail.com ', '', '', '', 0, 'Female', 'SC', 'Btech 2019', 'CSE', 'GIRLS'),
(1901055, 'CHIKKE ', 'SRUJAN', '', '', 'srujanchikke@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901056, 'DEBALEENA ', 'CHAKRABORTY', '', '', 'debaleena82001@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901057, 'DEBIKRUPA DIBYAJIT ', 'NANDA', '', '', 'devikrupananda@hotmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901058, 'DEVANSH ', 'PANT', '', '', 'devansh.pant02@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901059, 'DHARAVATH ', 'ANVESH', '', '', 'dharavathanvesh89@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901060, 'DHARAVATH GOURI ', 'PRANAY', '', '', 'gouripranay22@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901061, 'DINESH ', 'DEWASI', '', '', '123987dineshdewasidd@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901062, 'DIPTO ', 'MANDAL', '', '', 'diptomandal4@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'ECE', 'BOYS'),
(1901063, 'DIVYANSH ', 'BARANWAL', '', '', 'bhaibaranwal@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901064, 'DIVYANSH ', 'RAJPUT', '', '', 'divyansh19r@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901065, 'DIVYANSHU ', 'GULATY', '', '', 'divyanshugulatyji2001@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'ECE', 'BOYS'),
(1901066, 'DURGESH KUMAR ', 'SINGH', '', '', 'durgeshdk012@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901067, 'DUSHYANT ', 'RAI', '', '', 'dushyantrai1941@gmail.com ', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901068, 'GAURAV ', 'GUPTA', '', '', 'gaurav1122gupta@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901069, 'GAURAV ', 'KUMAR', '', '', 'kumargaurav89018955@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901070, 'GOTTUMUKKALA SOURAV ', 'VARMA', '', '', 'souravvarmago@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901071, 'HARMANJEET ', 'SINGH', '', '', 'lapy113@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901072, 'HARSH ', 'CHENANI', '', '', 'Harshchenani04@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901073, 'HARSH ', 'GAUD', '', '', 'harsh.gaud18@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901074, 'HARSH ', 'TIWARI', '', '', 'harshtiwarirock@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901075, 'HARSH ', 'YADAV', '', '', 'harshyadav1965@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901076, 'HIMANSHU ', 'KAUSHIK', '', '', 'Kaushikhimanshu303@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901077, 'ISHAN ', 'ACHARYYA', '', '', 'ishanacharyya6@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901078, 'ISLAWATHU ', 'PAVANI', '', '', 'pavanipamar22@gmail.com ', '', '', '', 0, 'Female', 'ST', 'Btech 2019', 'CSE', 'GIRLS'),
(1901079, 'JADI ', 'PUJITA', '', '', 'jadipujita@gmail.com', '', '', '', 0, 'Female', 'SC', 'Btech 2019', 'CSE', 'GIRLS'),
(1901080, 'JASMINE ', 'BAJAJ', '', '', 'jasmineb2599@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901081, 'JAI PRAKASH ', 'YADAV', '', '', 'yjaiprakash323@gmai.co.', '', '', '', 0, '', '', 'Btech 2019', 'ECE', 'GIRLS'),
(1901082, 'JISHU ', 'YADAV', '', '', 'jishuyadavcute88@gmail.com ', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901083, 'JITENDRA ', 'MEENA', '', '', 'jitendrameenamalakhera482@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901084, 'KAMRAN ', 'AYESH', '', '', 'kamranayeshs@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901085, 'KANISHK ', 'VATS', '', '', '24.kanishkvats@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901086, 'KARAN ', 'GUPTA', '', '', 'kargupta13@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS');
INSERT INTO `general` (`RollNumber`, `FirstName`, `LastName`, `Address`, `PhoneNumber`, `Email Address`, `Guardian's Name`, `Guardian's PhoneNumber`, `Guardian's EmailID`, `Age`, `Gender`, `Category`, `StudentProgramme`, `StudentDepartment`, `Student Hostel`) VALUES
(1901087, 'KARAVADI ', 'TEJESH', '', '', 'tejeshkaravadi12@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901088, 'KENGUVA ', 'VINAY', '', '', 'vinay.kenguva20@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901089, 'KHUSHI ', 'GARG', '', '', 'khushigarg94@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901090, 'KRISHNAM ', 'ANAND', '', '', 'krishnam1999@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901091, 'KRISHNAV ', 'GARG', '', '', 'krishnav.garg@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901092, 'KSHITIJ', '', '', '', 'KSHITIJSINGH13MAR@GMAIL.COM', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901093, 'KUMMAJELLA ', 'SUCHETHAN', '', '', 'kummajellasuchethan@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901094, 'KURRA CHANDRA ', 'SHEKAR', '', '', 'Kurrachandrashekar2@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901095, 'KUSH ', 'JAISWAL', '', '', 'kushjaiswal1836@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901096, 'KUSHAGRA ', 'SINGH', '', '', 'Kushagra.19991998@gmail.com ', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901097, 'LAXIT SINGH ', 'PARMAR', '', '', 'laxitrajput2000@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901098, 'MADHUMITA', '', '', '', 'madhumita131000@gmail.com', '', '', '', 0, 'Female', 'SC', 'Btech 2019', 'CSE', 'GIRLS'),
(1901099, 'MAKAM VENKATA SUBBA SAI ', 'ABHIRAM', '', '', 'abhirammakam1729@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901100, 'MALIGI ', 'BINDU', '', '', 'bindumaligi@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901101, 'MANAN ', 'GYANCHANDANI', '', '', 'manan.co.in@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901102, 'MANSI ', 'THAKARE', '', '', 'mansithakare1605@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'ECE', 'GIRLS'),
(1901103, 'MANU ', 'SHARMA', '', '', 'manusharma.grm7@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901104, 'MAURYA NIKHIL PRADEEP ', 'KUMAR', '', '', 'nikhilmaurya682000@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901105, 'MAYANK ', 'SINGH', '', '', 'mayanksingh5399@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901106, 'MD ADNAN ', 'MAHFOOZ', '', '', 'adnanmd448@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901107, 'MEDA ', 'SAIKUMAR', '', '', 'Saimedaiiitg19@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901108, 'MEGAVATH BHARADWAJ ', 'RATHOD', '', '', 'Bharadwajrathod24@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901109, 'MEGHNA ', 'SINGH', '', '', 'aparna72msingh@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901110, 'MOGILI ', 'HARIKRISHNA', '', '', 'mogiliharikrishna2@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901111, 'MOHIT ', 'BAKSHI', '', '', 'Mohit19bakshi@gmail.com ', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901112, 'MOHIT ', 'MANDLOI', '', '', 'mohitmandloiks@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901113, 'MOHIT ', 'YADAV', '', '', 'mohitmehla893@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901114, 'MRIDUL ', 'MAYANK', '', '', 'mridulmayank027@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901115, 'MRITUNJAY ', 'KUMAR', '', '', 'mritunjay7065@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901116, 'N TUN SIAN ', 'ZAI', '', '', 'zaipitunsian@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'ECE', 'BOYS'),
(1901117, 'NARENDRA SINGH ', 'GURJAR', '', '', 'narendraawana116@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901118, 'NAVNEET ', 'RANJAN', '', '', 'navneet.ranjan014@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901119, 'NENAVATH ', 'PARAMESH', '', '', 'nenavathparamesh123456@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'CSE', 'BOYS'),
(1901120, 'NIKHIL ', 'MISHRA', '', '', 'nikhilmishra1211@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901121, 'NIKITA ', 'GUPTA', '', '', 'nikitagupta3rmc@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901122, 'NISHANT ', 'JAIN', '', '', 'nishantjain1972@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901123, 'NITIN ', 'ARYA', '', '', 'aryanit2001@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901124, 'NOONETY MANI ', 'MOKSHITH', '', '', 'mokshith0507@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901125, 'OM ', 'PRAKASH', '', '', 'rajp41948@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901126, 'OMANG ', 'RAWAT', '', '', 'omangrawat1990@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901127, 'PALAK ', 'YASH', '', '', 'palakyash20@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'ECE', 'GIRLS'),
(1901128, 'PALISETTI ', 'MUKESH', '', '', 'palisettimukesh@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901130, 'PAMARTHI HEMANTH ', 'SRINIVAS', '', '', 'pamarthy.hemanth@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901131, 'PANKAJ KUMAR ', 'SINGH', '', '', 'pankajchbs007@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901132, 'PARAS ', 'ASIJA', '', '', 'parasasija007@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'ECE', 'BOYS'),
(1901133, 'PARTH ', 'DUBEY', '', '', 'thepdk23@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901134, 'PASUMARTHI ', 'SREEKAR', '', '', 'sreekar.pasumarthi@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901135, 'PATOLE RUTUJA ', 'RAJARAM', '', '', 'rutujarpatole@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901136, 'PAWAN ', 'KUMAR', '', '', 'pawanpilaniya16062001@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901137, 'PAWAR AYUSH ', 'ANJUMAN', '', '', 'ayushpawar2001@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901138, 'PAWAR AYUSH ', 'JITENDRA', '', '', 'i.yush.004@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901139, 'PRABHAT KUMAR ', 'RAJAK', '', '', 'prabhatkumarrajak123@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901140, 'PRAJAKTA ', 'BISARIA', '', '', 'bisariaprajakta@gmail.com', '', '', '', 0, 'Female', 'SC', 'Btech 2019', 'ECE', 'GIRLS'),
(1901141, 'PRAKHAR ', 'GUPTA', '', '', 'prakhar.gu01@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901142, 'PRAKHAR ', 'GUPTA', '', '', 'prakhargupta496@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901143, 'PRASHANT MILAN ', 'KATIYAR', '', '', 'prashantkatiyar9777@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901144, 'PRINCE ', 'SIDDHARTH', '', '', 'Princesiddharthbrh@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901145, 'PRITAM ', 'PATEL', '', '', 'pritelkhusboo7 @gmail.com ', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'ECE', 'GIRLS'),
(1901146, 'PRIYAM ', 'DAS', '', '', 'priyamdas009@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901147, 'PRIYAM ', 'RAJ', '', '', 'priyamraj2001@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901148, 'PRIYANKA ', 'KUMARI', '', '', 'pk3201134@gmail.com', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901149, 'PRIYANSHI', '', '', '', 'priyanshi1704@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901150, 'PRIYANSHU ', 'SAHU', '', '', 'priyanshusahu99@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901151, 'PURVI ', 'DAS', '', '', 'purvikuhi@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901152, 'RAHUL ', 'KUMAR', '', '', 'rahulksh12345@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901153, 'RAHUL ', 'MAHOTRA', '', '', 'rahulmahotra707@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901154, 'RAHUL ', 'SONI', '', '', 'rsoni953804@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901155, 'RAJESH ', 'KUMAR', '', '', 'rajeshk4506@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'ECE', 'BOYS'),
(1901156, 'RANVIJAY PATEL ', 'AMARNATH', '', '', 'ranvijayid76@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901157, 'RICHA ', 'SINGH', '', '', 'richa.cse.iiit@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901158, 'RISHAB ', 'KEDIA', '', '', 'rishab86515@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901159, 'RISHAV ', 'ADARSH', '', '', 'rishavadarsh0612@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901160, 'RITIK ', 'DHASMANA', '', '', 'ritikdhasmana22@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901161, 'RITIK ', 'LALOTRA', '', '', 'Ritiklalotra.bhanu@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901162, 'RITU RAJ ', 'SHANDILYA', '', '', 'riturajyo147147@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901163, 'ROHAN ', 'KUMAR', '', '', 'rkkvbksc3@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901164, 'SAKSHAM ', 'YADAV', '', '', 'sakshamyadav751@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901165, 'SAMARTH ', 'PRAJAPATI', '', '', 'prajapatisamarth4@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901166, 'SAMPRITI ', 'PATEL', '', '', 'sampritipatel@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901167, 'SANDEEP ', 'RAJ', '', '', 'Sraj92917@gmail.com ', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901168, 'SANGAJA ', 'PATEL', '', '', 'patelsangaja06@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901169, 'SANIAL ', 'DAS', '', '', 'sanial2001@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901170, 'SANIT ', 'ROY', '', '', 'roylandrock@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901171, 'SANJAY SINGH ', 'SOLANKI', '', '', 'sanjaysinghsolanki2000@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901172, 'SANJULI ', 'TRIVEDI', '', '', 'enlightenedsanjuli@gmail.com ', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901173, 'SANU ', 'KUMAR', '', '', 'sanugupta4970@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'ECE', 'BOYS'),
(1901174, 'SANVED SANJAY ', 'BHOYAR', '', '', 'sanbho776912@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901175, 'SARTHAK ', 'GUPTA', '', '', 'sarthakgupta0809@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901176, 'SATYAM ', 'SHARMA', '', '', 'satyamsharma3008@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901178, 'SAVANI DAINIL ', 'THAKARSHIBHAI', '', '', 'savanidainil@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901179, 'SAYANTANI ', 'DUTTA', '', '', 'Sayantanidutta54@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901180, 'SETTIPALLI SAI ', 'TEJA', '', '', 'ssaiteja168@gmail.com ', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901181, 'SHAILESH KUMAR ', 'RAO', '', '', 'raoshailesh41@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901182, 'SHANTANU ', 'AGRAWAL', '', '', 'shantanua9@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901183, 'SHANTANU ', 'RAJ', '', '', 'rshantanu22@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901184, 'SHEVYA ', 'TRIPATHI', '', '', 'shevyatripathi01@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901185, 'SHIRISH ', 'KUMAR', '', '', 'kshirish721@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901186, 'SHIVA ', 'AGARWAL', '', '', 'shivaaggrawal2000@gmail.com ', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901187, 'SHIVAM KUMAR ', 'SINGH', '', '', 'shivamsinghyadav070@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901188, 'SHIVAM ', 'SAHU', '', '', 'shivshivamsahu@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901189, 'SHIVENDRA ', 'GIRI', '', '', 'shivendra1999giri@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901190, 'SHIVI ', 'GUPTA', '', '', 'shivig2312@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'CSE', 'GIRLS'),
(1901191, 'SHOBHIT ', 'BELWAL', '', '', 'shobhitbelwal02@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901192, 'SHREEDHAR ', 'MATHIALAGAN', '', '', 'shreedhar29b@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901193, 'SHUBHAM ', 'JAIN', '', '', 'Shubhamjain1922@gmail.fom', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901194, 'SHUBHAM ', 'JHAWAR', '', '', 'jhawarshubhamcs@gmail.com ', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901195, 'SHYAM ', 'MARJIT', '', '', 'sujaykumarmarjit@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901196, 'SIMRAN ', 'JAKHODIA', '', '', 'simranjakhodia22986@gmail.com', '', '', '', 0, 'Female', 'General', 'Btech 2019', 'ECE', 'GIRLS'),
(1901197, 'SINGH SHANTANU ', 'SANJAY', '', '', '2107shantanu@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901198, 'SOLINA ', 'BASAK', '', '', 'basak2580solina@gmail.com', '', '', '', 0, 'Female', 'SC', 'Btech 2019', 'CSE', 'GIRLS'),
(1901199, 'SOPPA ', 'PRASUNNA', '', '', 'prasunnasoppa@gmail.com ', '', '', '', 0, 'Female', 'OBC-NCL', 'Btech 2019', 'CSE', 'GIRLS'),
(1901200, 'SOUMYAJIT ', 'KARMAKAR', '', '', 'karmakar.soumyajit@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901201, 'SUMAN ', 'KUMAR', '', '', 'sumankumar7542845565@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901203, 'SUVIR SHIVAJI ', 'KATKE', '', '', 'suvir212002@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901205, 'SWARAJ ', 'PARTH', '', '', 'swaraj.parth@outlook.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901206, 'SWASTIK ', 'MARDI', '', '', 'swastikmardi@gmail.com', '', '', '', 0, 'Male', 'ST', 'Btech 2019', 'ECE', 'BOYS'),
(1901207, 'TRIJRAJ ', 'KALITA', '', '', 'trijrajkalita@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901208, 'UDIT ', 'RAGHUWANSHI', '', '', 'uditraghu619@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901209, 'UJJWAL ', 'GOEL', '', '', 'ujjwal234goel@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901210, 'UTKARSH', '', '', '', 'utk.akt@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901211, 'VAGGAIAHGARI ', 'VEERANJINEYULU', '', '', 'veeranjaneya10602@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901212, 'VAIBHAV ', 'KESARWANI', '', '', 'vaibhav14091999@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901213, 'VAIBHAV ', 'RAJ', '', '', 'mauryavaibhavraj@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901214, 'VALLURU ', 'VINAY', '', '', 'haswanth0007@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901215, 'VIKAS ', 'DHAYAL', '', '', 'dhayalvikas07@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901216, 'VIKASH ', 'RAJPUT', '', '', 'vr28433@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901217, 'VISHESH ', 'SHARMA', '', '', 'vishesh1207@gmail.com', '', '', '', 0, 'Male', 'General-EWS', 'Btech 2019', 'CSE', 'BOYS'),
(1901218, 'VIVEK ', 'SRIVASTAVA', '', '', 'viveksrivastava6180@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'ECE', 'BOYS'),
(1901219, 'YAKASH', '', '', '', 'thaparyakash@gmail.com', '', '', '', 0, 'Male', 'SC', 'Btech 2019', 'CSE', 'BOYS'),
(1901220, 'YARABABUGARI MOHAMMED ', 'JAVEED', '', '', 'javeedymd.iiitg@gmail.com', '', '', '', 0, 'Male', 'OBC-NCL', 'Btech 2019', 'CSE', 'BOYS'),
(1901221, 'YASHRAJ SINGH ', 'RATHORE', '', '', 'yashraj.per@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1901222, 'YATN SANJEEV ', 'BANGAD', '', '', 'byatin2005@gmail.com', '', '', '', 0, 'Male', 'General', 'Btech 2019', 'CSE', 'BOYS'),
(1902001, 'Abhishek', 'Baba', '', '', 'abhishek.baba1997@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'ECE', 'BOYS'),
(1902002, 'Akanksha Singh', 'Rajput', '', '', 'rajputakanksha157@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902003, 'Ananya', 'Hazarika', '', '', 'ananyahazarika1995@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902004, 'Anindita', 'Das', '', '', 'aninditadas323@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902005, 'Anwesha', 'Kashyap', '', '', 'anwesha12021997@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902006, 'Arindam', 'Debnath', '', '', 'arindamraj1511@gmail.com', '', '', '', 0, 'Male', 'OBC', 'Mtech 2019', 'CSE', 'BOYS'),
(1902007, 'Arunabh', 'Arjun', '', '', 'sunnyarj114@gmail.com', '', '', '', 0, 'Male', 'SC', 'Mtech 2019', 'CSE', 'BOYS'),
(1902008, 'Biswajit', 'Das', '', '', 'b1729d@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'CSE', 'BOYS'),
(1902009, 'Bitumani', 'Talukdar', '', '', 'bitumanitalukdar1993@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'CSE', 'BOYS'),
(1902010, 'Chandra Mohan', 'Behera', '', '', 'spaceofchandra@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'CSE', 'BOYS'),
(1902011, 'Debarati', 'Roy', '', '', 'rainaroy885@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902012, 'Dipamani', 'Pathak', '', '', 'dipamani97@gmail.com', '', '', '', 0, 'Female', 'OBC', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902013, 'Gargee', 'Thakuria', '', '', 'gargeethakuria11@gmail.com', '', '', '', 0, 'Female', 'SC', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902014, 'Jinendra', 'Sipani', '', '', 'jinendra1609@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902015, 'Kaustav Kumar', 'Nath', '', '', 'kknb75253@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'CSE', 'BOYS'),
(1902017, 'Manashi', 'Saharia', '', '', 'msaharia02@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902018, 'Prajwalita', 'Saikia', '', '', 'mitalisaikiajist@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902019, 'Prithwish', 'Sen', '', '', 'senprithwish1994@gmail.com', '', '', '', 0, 'Male', 'General', 'Mtech 2019', 'CSE', 'BOYS'),
(1902020, 'Shilpishikha', 'Das', '', '', 'shilpishikhadas7@gmail.com', '', '', '', 0, 'Female', 'SC', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902021, 'Sucheta', 'Biswas', '', '', 'suchetab1093@gmail.com', '', '', '', 0, 'Female', 'SC', 'Mtech 2019', 'ECE', 'GIRLS'),
(1902022, 'Tapasi', 'Das', '', '', 'tapasi1995das@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'CSE', 'GIRLS'),
(1902023, 'Mridul', 'Saraogi', '', '', 'mridulsaraogi611@gmail.com', '', '', '', 0, 'Female', 'General', 'Mtech 2019', 'ECE', 'GIRLS'),
(1903002, 'Bonty ', 'Halo', '', '', 'bonty.by@gmail.com', '', '', '', 0, 'Female', 'ST', 'PhD', 'ECE', 'BOYS'),
(1903003, 'Dewan Imdadul ', 'Islam', '', '', 'dewanimdadulislam@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903005, 'Rakesh Kumar ', 'Sehgal', '', '', 'rks@cdac.in, rakeshsehgal93@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903006, 'Saurabh ', 'Chamotra', '', '', 'saurabhc@cdac.in, Saurabh.chamotra83@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903007, 'Sumona ', 'Biswas', '', '', 'sumona.biswas88b@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'GIRLS'),
(1903008, 'Anand ', 'Shankar', '', '', 'ananddd14@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1903010, 'Barshapriya ', 'Dutta', '', '', 'barshapriyadutta@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'HSS', 'GIRLS'),
(1903011, 'Charu ', 'Guleria', '', '', 'guleriacharu21@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'BOYS'),
(1903012, 'Dilip Kumar ', 'Tiwari', '', '', 'diliptiwari999@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1903013, 'Mehbub ', 'Alam', '', '', 'mehbub.nehu@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903014, 'Neeraj Kumar ', 'Dubey', '', '', 'neerajdubey@iert.ac.in', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903015, 'Srinivasa Rao ', 'Jajula', '', '', 'jajulasrinivasarao@gmail.com', '', '', '', 0, 'Male', 'OBC', 'PhD', 'ECE', 'BOYS'),
(1903016, 'Ved ', 'Prakash', '', '', 'johnvedprakash@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903017, 'Veronica ', 'Naosekpam', '', '', 'venaosekpam11@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'GIRLS'),
(1903018, 'Gitimoni ', 'Talukdar', '', '', 'talukdargitimoni@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'BOYS'),
(1903019, 'Nilufar ', 'Zaman', '', '', 'zamannilufar1234@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'BOYS'),
(1903020, 'Aditi Biswas ', 'Das', '', '', 'aditibiswas329@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'BOYS'),
(1903021, 'Avishek ', 'Paul', '', '', 'avishekpaulcse@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'CSE', 'BOYS'),
(1903022, 'Seema ', 'Nagar', '', '', 'nagar.seema@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'CSE', 'BOYS'),
(1903023, 'Ramesh ', 'Singh', '', '', 'ramesh@nagalanduniversity.ac.in', '', '', '', 0, 'Male', 'SC', 'PhD', 'CSE', 'BOYS'),
(1903024, 'Moumita ', 'Acharya', '', '', 'moumita.vlsi@gmail.com', '', '', '', 0, 'Female', 'General', 'PhD', 'ECE', 'GIRLS'),
(1903025, 'Basab Bijoy ', 'Purkayastha', '', '', 'basab@iitg.ac.in', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1903026, 'Jugul ', 'Pasha', '', '', 'jugulpasha@gmail.com', '', '', '', 0, 'Male', 'General', 'PhD', 'ECE', 'BOYS'),
(1903027, 'Susan ', 'Das', '', '', 'susan.das3@gmail.com', '', '', '', 0, 'Female', 'SC', 'PhD', 'CSE', 'GIRLS'),
(1903028, 'Tridib ', 'Bharali', '', '', 'tridibsixmile@rediff.com', '', '', '', 0, 'Male', 'General', 'PhD', 'HSS', 'BOYS');

-- --------------------------------------------------------

--
-- Table structure for table `gradeinformationsofstudents`
--

CREATE TABLE `gradeinformationsofstudents` (
  `RollNumber` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` varchar(20) NOT NULL,
  `CourseNumber` varchar(20) NOT NULL,
  `Grade` int(11) NOT NULL,
  `RC` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentdues`
--

CREATE TABLE `studentdues` (
  `RollNumber` varchar(15) NOT NULL,
  `MessDues` int(15) NOT NULL,
  `FeesDues` int(15) NOT NULL,
  `FinesDues` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacherdetails`
--

CREATE TABLE `teacherdetails` (
  `PfNumber` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Department` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherdetails`
--

INSERT INTO `teacherdetails` (`PfNumber`, `Name`, `Department`) VALUES
(1, 'Mohd. Mansoor  Khan', 'ECE'),
(2, 'Sanjay  Moulik', 'CSE'),
(7, 'Ferdous Ahmed Barbhuiya', 'CSE'),
(8, 'Gautam  Kalita', 'S&M'),
(9, 'G  Aruna', 'ECE'),
(12, 'Bidisha  Dasgupta', 'ECE'),
(13, 'Rakesh  Matam', 'CSE'),
(15, 'Sounak  Roy', 'ECE'),
(17, 'Suranjana  Barua', 'HSS'),
(22, 'Moumita  Roy', 'CSE'),
(26, 'Hari Kanta Choudhury', 'HSS'),
(35, 'Rohit  Tripathi', 'CSE'),
(36, 'Mourina  Ghosh', 'ECE'),
(39, 'SURAJIT  PANJA', 'ECE'),
(40, 'SUBHASISH  DHAL', 'CSE'),
(45, 'RAJARSHI  MITRA', 'HSS'),
(49, 'SOUMYAJIT  PODDAR', 'ECE'),
(50, 'GAUTAM BARUA', 'CSE'),
(51, 'AMITA  SHARMA', 'S&M'),
(52, 'ANURADHA  JHA', 'S&M'),
(53, 'RUSHA  PATRA', 'ECE'),
(54, 'NILKANTA  SAHU', 'CSE'),
(55, 'SANYA  ANEES', 'ECE'),
(57, 'KAVERI  DEB', 'HSS'),
(58, 'L DAVID  LAL', 'HSS'),
(59, 'SHILPA DINKAR RAO', 'ECE'),
(60, 'SHOVAN  BARMA', 'ECE'),
(61, 'DIP SANKAR  BANERJEE', 'CSE'),
(66, 'SUCHETANA CHAKRABORTY', 'CSE'),
(67, 'SHYJU WILSON', 'CSE'),
(68, 'KUKIL KHANIKAR', 'ECE'),
(69, 'BIJIT DAS', 'ECE'),
(70, 'RADHIKA SUKAPURAM', 'CSE'),
(71, 'SUMIT MISHRA', 'CSE'),
(73, 'KOMAL JANGHEL', 'ECE'),
(74, 'RAKESH BISWAS', 'ECE'),
(76, 'SOUMI CHATTOPADHYAY', 'CSE'),
(78, 'KAUSTUV NAG', 'CSE'),
(79, 'SRNIBAS SWAIN', 'CSE'),
(80, 'MANOJIT GHOSE', 'CSE'),
(81, 'ANGSHUMAN JANA', 'CSE'),
(82, 'BABITA JAJODIA', 'ECE'),
(83, 'ARJAB ROY', 'HSS'),
(84, 'SARANYA G NAIR', 'S&M'),
(85, 'DIPENDU MAITY', 'S&M'),
(87, 'SUDIP BISWAS', 'ECE'),
(94, 'RUIPUDMAN SINGH', 'ECE'),
(200, 'Malay Dutta', 'CSE'),
(201, 'Shanta Bhar', 'S&M'),
(202, 'Archana Kushwaha', 'S&M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `courseofferingsineverysemester`
--
ALTER TABLE `courseofferingsineverysemester`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `courseregistrationsineverysemester`
--
ALTER TABLE `courseregistrationsineverysemester`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `fees_information`
--
ALTER TABLE `fees_information`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`RollNumber`);

--
-- Indexes for table `studentdues`
--
ALTER TABLE `studentdues`
  ADD PRIMARY KEY (`RollNumber`);

--
-- Indexes for table `teacherdetails`
--
ALTER TABLE `teacherdetails`
  ADD PRIMARY KEY (`PfNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursedetails`
--
ALTER TABLE `coursedetails`
  MODIFY `Sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `courseofferingsineverysemester`
--
ALTER TABLE `courseofferingsineverysemester`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `courseregistrationsineverysemester`
--
ALTER TABLE `courseregistrationsineverysemester`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `fees_information`
--
ALTER TABLE `fees_information`
  MODIFY `Sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
