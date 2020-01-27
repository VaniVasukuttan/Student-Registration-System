-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 11:24 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `slno` int(11) NOT NULL,
  `regno` int(11) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `mark` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`slno`, `regno`, `s_name`, `dep`, `sem`, `subject`, `mark`, `total`) VALUES
(1, 1001, 'Leena', 'Computer', 's1', 'cpp', 40, 50),
(2, 1002, 'Nikhil', 'Mechanical', 's3', 'Thermodynamics', 80, 100);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(30) NOT NULL,
  `no_student` int(11) NOT NULL,
  `incharge` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `no_student`, `incharge`) VALUES
(1, 'Electronics & Communication', 60, 'Ambili'),
(2, 'Mechanical Engineering', 120, 'Ramesh'),
(3, 'Computer Science', 120, 'Indhu'),
(4, 'Electrical Engineering', 100, 'Suresh Babu');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `f_id` int(11) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `f_email` varchar(30) NOT NULL,
  `f_dob` date NOT NULL,
  `f_mobile` int(11) NOT NULL,
  `f_password` varchar(30) NOT NULL,
  `f_qualification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `f_name`, `f_id`, `dep`, `f_email`, `f_dob`, `f_mobile`, `f_password`, `f_qualification`) VALUES
(1, 'Amitha', 5246, 'EC', 'Amithag@gmail.com', '1994-12-10', 2147483647, 'amitha', 'MCA'),
(2, 'Ananthu', 3589, 'Mechanical', 'Ananathu@gmail.com', '1994-08-04', 2147483647, 'ananthu', 'Btech'),
(3, 'Vijith', 8954, 'Computer', 'vijith@gmail.com', '1994-09-10', 2147483647, 'vijith', 'BCA'),
(7, 'Ambili', 1009, 'EC', 'ambili', '1991-01-01', 845512121, 'ambili', 'Mtech'),
(12, 'sruthi', 9874, 'Mechanical', 'sruthi@gmail.com', '1991-12-10', 2147483647, 'sruthi', 'mtech'),
(14, 'Aswathy', 1004, 'Computer', 'aswathy@gmail.com', '1991-12-10', 2147483647, 'aswathy', 'Msc');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `slno` int(11) NOT NULL,
  `n_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date NOT NULL,
  `descp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`slno`, `n_id`, `title`, `s_date`, `e_date`, `descp`) VALUES
(1, 1001, 'semester exam', '2020-01-28', '2020-02-06', 'First semester exam is scheduled to conduct from jan-feb');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `regno` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(11) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `regno`, `password`, `dep`, `year`, `sem`, `email`, `mobile`, `dob`) VALUES
(1, 'Leena', 1001, 'leena', 'Computer', 2020, 's1', 'leena@gmail.com', 2147483647, '1997-12-10'),
(2, 'Nikhil A', 1002, 'nikhil', 'Mechanical', 2018, 's3', 'Nikhilchennithala@gmail.com', 2147483647, '1995-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `sub_code` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `dep`, `sem`, `sub_code`, `subject`) VALUES
(1, 'EC', 's3', 3008, 'Signals'),
(2, 'Computer', 's2', 2004, 'Cryptography'),
(3, 'Mechanical', 's2', 2004, 'MOS');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `dep` varchar(30) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `day` varchar(30) NOT NULL,
  `h1` varchar(30) NOT NULL,
  `h2` varchar(30) NOT NULL,
  `h3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`dep`, `sem`, `year`, `day`, `h1`, `h2`, `h3`) VALUES
('Mechanical', 's1', 2020, 'Monday', 'CNC', 'Thermodynamics', 'Mechatronics'),
('Mechanical', 's1', 2020, 'Tuesday', 'maths', 'Engineering drawing', 'Fluid mechanics'),
('Mechanical', 's1', 2020, 'Wednesday', 'thermodynamics', 'CPN', 'maths'),
('EC', 's2', 2019, 'Monday', 'signals', 'AC', 'maths'),
('EC', 's2', 2019, 'Tuesday', 'maths', 'SSD', 'DC'),
('EC', 's2', 2019, 'Tuesday', 'maths', 'SSD', 'DC'),
('EC', 's2', 2019, 'Tuesday', 'maths', 'SSD', 'DC'),
('EC', 's2', 2019, 'Tuesday', 'maths', 'SSD', 'DC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
