-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2023 at 11:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-dcsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `posttype` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`posttype`, `subject`, `text`, `timestamp`) VALUES
('Announcement', 'Franklin DC- Winter Student Employment', 'Hi Everyone,\r\n\r\nI have been getting a lot of emails/questions regarding winter employment, so I just want to make sure everyone is on the same page so no one feels like they are missing anything.\r\n\r\nWinter positions are incredibly limited, I am still not sure if any exist at all. Franklin, Berkshire and Hampshire are all closed for winter break. Harvest is running limited hours so they are not able to take any more employees, Blue Wall and Worcester will be closed until the middle of January. Blue Wall has already said they are unable to take any more student employees for winter break. Worcester is still waiting to hear back from our directors to see if they are able to keep any students over break, and if so, how many. Please do not go directly to Worcester to ask for a job. This is causing a lot of issues at their location as students from Franklin, Berkshire and Hampshire have all been going to that location asking for work. If they have positions available their hiring manager will let me know and I will relay the message.\r\n\r\n \r\n\r\nThat being said, we will have a few shifts available the week after finals (December 18-21), and we are trying to get permission for students to work concessions events during the winter.\r\n\r\n \r\n\r\nIf you are interested in receiving any information about winter break employment, please send me an email. This does not guarantee you a position, but if opportunities arise I can let you know. If only a few people are going to be able to work, attendance and willingness to work in all departments (ex. kitchen, dish room and pot room) will be reviewed.\r\nLet me know if you have any questions,\r\n\r\nVara Prasad\r\nAssistant Manager\r\nUMass Dining\r\nUniversity of Massachusetts Amherst', '2023-11-30 17:57:46'),
('Warning', 'Irregular Punch-in Punch-out', 'Irregular Punch-in Punch-out Practices Detected! Please Adhere to Dining Policies and Ensure Timely Attendance. Failure to Comply May Result in Disciplinary Action.', '2023-11-30 17:57:46'),
('', 'Test Email', 'warning sent', '2023-11-30 17:57:46'),
('Warning', 'Test Email', 'warning guys', '2023-11-30 17:57:46'),
('Announcement', '', '', '2023-12-03 00:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1000, 'Line'),
(2000, 'GrabnGo'),
(3000, 'Dishroom'),
(4000, 'Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schid` int(10) NOT NULL,
  `day` varchar(15) NOT NULL,
  `starttime` varchar(200) NOT NULL,
  `endtime` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `sid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schid`, `day`, `starttime`, `endtime`, `cid`, `sid`) VALUES
(167, 'Sunday', '08:00', '12:00', 1000, 1),
(168, 'Sunday', '10:00', '14:00', 2000, 1),
(169, 'Sunday', '10:00', '18:00', 3000, 1),
(170, 'Sunday', '10:00', '14:00', 4000, 1),
(171, 'Sunday', '10:00', '16:00', 1000, 1),
(172, 'Sunday', '10:00', '16:00', 2000, 1),
(173, 'Sunday', '12:00', '16:00', 3000, 1),
(174, 'Sunday', '12:00', '16:00', 4000, 1),
(175, 'Sunday', '12:00', '16:00', 1000, 1),
(176, 'Sunday', '12:00', '18:00', 2000, 1),
(177, 'Sunday', '12:00', '20:00', 3000, 1),
(178, 'Sunday', '14:00', '21:30', 4000, 1),
(179, 'Sunday', '14:00', '21:30', 1000, 1),
(180, 'Sunday', '14:00', '18:00', 2000, 1),
(181, 'Sunday', '14:00', '18:00', 3000, 1),
(182, 'Sunday', '14:00', '21:30', 4000, 1),
(183, 'Sunday', '14:00', '21:30', 1000, 1),
(184, 'Sunday', '17:30', '21:30', 2000, 1),
(185, 'Sunday', '17:30', '21:30', 3000, 1),
(186, 'Sunday', '17:30', '21:30', 4000, 1),
(187, 'Sunday', '17:30', '21:30', 1000, 1),
(188, 'Sunday', '17:30', '21:30', 2000, 1),
(189, 'Sunday', '17:30', '21:30', 3000, 1),
(190, 'Sunday', '17:30', '21:30', 4000, 1),
(191, 'Sunday', '17:30', '21:30', 1000, 1),
(192, 'Monday', '08:00', '12:00', 1000, 1),
(193, 'Monday', '10:00', '14:00', 2000, 1),
(194, 'Monday', '10:00', '18:00', 3000, 1),
(195, 'Monday', '10:00', '14:00', 4000, 1),
(196, 'Monday', '10:00', '16:00', 1000, 1),
(197, 'Monday', '10:00', '16:00', 2000, 1),
(198, 'Monday', '12:00', '16:00', 3000, 1),
(199, 'Monday', '12:00', '16:00', 4000, 1),
(200, 'Monday', '12:00', '16:00', 1000, 1),
(201, 'Monday', '12:00', '18:00', 2000, 1),
(202, 'Monday', '12:00', '20:00', 3000, 1),
(203, 'Monday', '14:00', '21:30', 4000, 1),
(204, 'Monday', '14:00', '21:30', 1000, 1),
(205, 'Monday', '14:00', '18:00', 2000, 1),
(206, 'Monday', '14:00', '18:00', 3000, 1),
(207, 'Monday', '14:00', '21:30', 4000, 1),
(208, 'Monday', '14:00', '21:30', 1000, 1),
(209, 'Monday', '17:30', '21:30', 2000, 1),
(210, 'Monday', '17:30', '21:30', 3000, 1),
(211, 'Monday', '17:30', '21:30', 4000, 1),
(212, 'Monday', '17:30', '21:30', 1000, 1),
(213, 'Monday', '17:30', '21:30', 2000, 1),
(214, 'Monday', '17:30', '21:30', 3000, 1),
(215, 'Monday', '17:30', '21:30', 4000, 1),
(216, 'Monday', '17:30', '21:30', 1000, 1),
(217, 'Tuesday', '08:00', '12:00', 1000, 1),
(218, 'Tuesday', '10:00', '14:00', 2000, 1),
(219, 'Tuesday', '10:00', '18:00', 3000, 1),
(220, 'Tuesday', '10:00', '14:00', 4000, 1),
(221, 'Tuesday', '10:00', '16:00', 1000, 1),
(222, 'Tuesday', '10:00', '16:00', 2000, 1),
(223, 'Tuesday', '12:00', '16:00', 3000, 1),
(224, 'Tuesday', '12:00', '16:00', 4000, 1),
(225, 'Tuesday', '12:00', '16:00', 1000, 1),
(226, 'Tuesday', '12:00', '18:00', 2000, 1),
(227, 'Tuesday', '12:00', '20:00', 3000, 1),
(228, 'Tuesday', '14:00', '21:30', 4000, 1),
(229, 'Tuesday', '14:00', '21:30', 1000, 1),
(230, 'Tuesday', '14:00', '18:00', 2000, 1),
(231, 'Tuesday', '14:00', '18:00', 3000, 1),
(232, 'Tuesday', '14:00', '21:30', 4000, 1),
(233, 'Tuesday', '14:00', '21:30', 1000, 1),
(234, 'Tuesday', '17:30', '21:30', 2000, 1),
(235, 'Tuesday', '17:30', '21:30', 3000, 1),
(236, 'Tuesday', '17:30', '21:30', 4000, 1),
(237, 'Tuesday', '17:30', '21:30', 1000, 1),
(238, 'Tuesday', '17:30', '21:30', 2000, 1),
(239, 'Tuesday', '17:30', '21:30', 3000, 1),
(240, 'Tuesday', '17:30', '21:30', 4000, 1),
(241, 'Tuesday', '17:30', '21:30', 1000, 1),
(242, 'Wednesday', '08:00', '12:00', 1000, 1),
(243, 'Wednesday', '10:00', '14:00', 2000, 1),
(244, 'Wednesday', '10:00', '18:00', 3000, 1),
(245, 'Wednesday', '10:00', '14:00', 4000, 1),
(246, 'Wednesday', '10:00', '16:00', 1000, 1),
(247, 'Wednesday', '10:00', '16:00', 2000, 1),
(248, 'Wednesday', '12:00', '16:00', 3000, 1),
(249, 'Wednesday', '12:00', '16:00', 4000, 1),
(250, 'Wednesday', '12:00', '16:00', 1000, 1),
(251, 'Wednesday', '12:00', '18:00', 2000, 1),
(252, 'Wednesday', '12:00', '20:00', 3000, 1),
(253, 'Wednesday', '14:00', '21:30', 4000, 1),
(254, 'Wednesday', '14:00', '21:30', 1000, 1),
(255, 'Wednesday', '14:00', '18:00', 2000, 1),
(256, 'Wednesday', '14:00', '18:00', 3000, 1),
(257, 'Wednesday', '14:00', '21:30', 4000, 1),
(258, 'Wednesday', '14:00', '21:30', 1000, 1),
(259, 'Wednesday', '17:30', '21:30', 2000, 1),
(260, 'Wednesday', '17:30', '21:30', 3000, 1),
(261, 'Wednesday', '17:30', '21:30', 4000, 1),
(262, 'Wednesday', '17:30', '21:30', 1000, 1),
(263, 'Wednesday', '17:30', '21:30', 2000, 1),
(264, 'Wednesday', '17:30', '21:30', 3000, 1),
(265, 'Wednesday', '17:30', '21:30', 4000, 1),
(266, 'Wednesday', '17:30', '21:30', 1000, 1),
(267, 'Thursday', '08:00', '12:00', 1000, 1),
(268, 'Thursday', '10:00', '14:00', 2000, 1),
(269, 'Thursday', '10:00', '18:00', 3000, 1),
(270, 'Thursday', '10:00', '14:00', 4000, 1),
(271, 'Thursday', '10:00', '16:00', 1000, 1),
(272, 'Thursday', '10:00', '16:00', 2000, 1),
(273, 'Thursday', '12:00', '16:00', 3000, 1),
(274, 'Thursday', '12:00', '16:00', 4000, 1),
(275, 'Thursday', '12:00', '16:00', 1000, 1),
(276, 'Thursday', '12:00', '18:00', 2000, 1),
(277, 'Thursday', '12:00', '20:00', 3000, 1),
(278, 'Thursday', '14:00', '21:30', 4000, 1),
(279, 'Thursday', '14:00', '21:30', 1000, 1),
(280, 'Thursday', '14:00', '18:00', 2000, 1),
(281, 'Thursday', '14:00', '18:00', 3000, 1),
(282, 'Thursday', '14:00', '21:30', 4000, 1),
(283, 'Thursday', '14:00', '21:30', 1000, 1),
(284, 'Thursday', '17:30', '21:30', 2000, 1),
(285, 'Thursday', '17:30', '21:30', 3000, 1),
(286, 'Thursday', '17:30', '21:30', 4000, 1),
(287, 'Thursday', '17:30', '21:30', 1000, 1),
(288, 'Thursday', '17:30', '21:30', 2000, 1),
(289, 'Thursday', '17:30', '21:30', 3000, 1),
(290, 'Thursday', '17:30', '21:30', 4000, 1),
(291, 'Thursday', '17:30', '21:30', 1000, 1),
(292, 'Friday', '08:00', '12:00', 1000, 1),
(293, 'Friday', '10:00', '14:00', 2000, 1),
(294, 'Friday', '10:00', '18:00', 3000, 1),
(295, 'Friday', '10:00', '14:00', 4000, 1),
(296, 'Friday', '10:00', '16:00', 1000, 1),
(297, 'Friday', '10:00', '16:00', 2000, 1),
(298, 'Friday', '12:00', '16:00', 3000, 1),
(299, 'Friday', '12:00', '16:00', 4000, 1),
(300, 'Friday', '12:00', '16:00', 1000, 1),
(301, 'Friday', '12:00', '18:00', 2000, 1),
(302, 'Friday', '12:00', '20:00', 3000, 1),
(303, 'Friday', '14:00', '21:30', 4000, 1),
(304, 'Friday', '14:00', '21:30', 1000, 1),
(305, 'Friday', '14:00', '18:00', 2000, 1),
(306, 'Friday', '14:00', '18:00', 3000, 1),
(307, 'Friday', '14:00', '21:30', 4000, 1),
(308, 'Friday', '14:00', '21:30', 1000, 1),
(309, 'Friday', '17:30', '21:30', 2000, 1),
(310, 'Friday', '17:30', '21:30', 3000, 1),
(311, 'Friday', '17:30', '21:30', 4000, 1),
(312, 'Friday', '17:30', '21:30', 1000, 1),
(313, 'Friday', '17:30', '21:30', 2000, 1),
(314, 'Friday', '17:30', '21:30', 3000, 1),
(315, 'Friday', '17:30', '21:30', 4000, 1),
(316, 'Friday', '17:30', '21:30', 1000, 1),
(317, 'Saturday', '08:00', '12:00', 1000, 1),
(318, 'Saturday', '10:00', '14:00', 2000, 1),
(319, 'Saturday', '10:00', '18:00', 3000, 1),
(320, 'Saturday', '10:00', '14:00', 4000, 1),
(321, 'Saturday', '10:00', '16:00', 1000, 1),
(322, 'Saturday', '10:00', '16:00', 2000, 1),
(323, 'Saturday', '12:00', '16:00', 3000, 1),
(324, 'Saturday', '12:00', '16:00', 4000, 1),
(325, 'Saturday', '12:00', '16:00', 1000, 1),
(326, 'Saturday', '12:00', '18:00', 2000, 1),
(327, 'Saturday', '12:00', '20:00', 3000, 1),
(328, 'Saturday', '14:00', '21:30', 4000, 1),
(329, 'Saturday', '14:00', '21:30', 1000, 1),
(330, 'Saturday', '14:00', '18:00', 2000, 1),
(331, 'Saturday', '14:00', '18:00', 3000, 1),
(332, 'Saturday', '14:00', '21:30', 4000, 1),
(333, 'Saturday', '14:00', '21:30', 1000, 1),
(334, 'Saturday', '17:30', '21:30', 2000, 1),
(335, 'Saturday', '17:30', '21:30', 3000, 1),
(336, 'Saturday', '17:30', '21:30', 4000, 1),
(337, 'Saturday', '17:30', '21:30', 1000, 1),
(338, 'Saturday', '17:30', '21:30', 2000, 1),
(339, 'Saturday', '17:30', '21:30', 3000, 1),
(340, 'Saturday', '17:30', '21:30', 4000, 1),
(341, 'Saturday', '17:30', '21:30', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `fname`, `lname`, `age`, `email`, `password`, `phone`, `role`) VALUES
(30234567, 'Bob', 'Johnson', 40, 'bjohnson@umass.edu', 'bjohnson', '8765432109', 1),
(30345678, 'Catherine', 'Jones', 22, 'cjones@umass.edu', 'cjones', '7654321098', 1),
(30456789, 'David', 'Lee', 32, 'dlee@umass.edu', 'dlee', '6543210987', 1),
(30567890, 'Emma', 'Garcia', 28, 'egarcia@umass.edu', 'egarcia', '5432109876', 1),
(30678901, 'Frank', 'Martinez', 45, 'fmartinez@umass.edu', 'fmartinez', '4321098765', 1),
(30789012, 'Grace', 'Taylor', 21, 'gtaylor@umass.edu', 'gtaylor', '3210987654', 1),
(30890123, 'Henry', 'Clark', 38, 'hclark@umass.edu', 'hclark', '2109876543', 1),
(31012345, 'Ivy', 'Anderson', 27, 'ianderson@umass.edu', 'ianderson', '1098765432', 1),
(31024796, 'Vyshnavi', 'Shah', 22, 'vshah@umass.edu', 'vshah', '4134889965', 1),
(31123456, 'Jack', 'White', 34, 'jwhite@umass.edu', 'jwhite', '9876543210', 1),
(31234567, 'Kelly', 'Wing', 23, 'kwing@umass.edu', 'kwang', '8765432109', 1),
(31456789, 'Mia', 'Zhang', 29, 'mzhang@umass.edu', 'mzhang', '6543210987', 1),
(31678901, 'Olivia', 'Nguyen', 26, 'onguyen@umass.edu', 'onguyen', '4321098765', 1),
(31789012, 'Peter', 'Liu', 33, 'pliu@umass.edu', 'pliu', '3210987654', 1),
(31901234, 'Quinn', 'Brown', 24, 'qbrown@umass.edu', 'qbrown', '2109876543', 1),
(32012345, 'Ryan', 'Gupta', 36, 'rgupta@umass.edu', 'rgupta', '1098765432', 1),
(32123456, 'Sara', 'Patel', 19, 'spatel@umass.edu', 'spatel', '9876543210', 1),
(32234567, 'Tom', 'Williams', 37, 'twilliams@umass.edu', 'twilliams', '8765432109', 1),
(32456789, 'Victor', 'Jones', 39, 'vjones@umass.edu', 'vjones', '6543210987', 1),
(32567890, 'Wendy', 'Brown', 30, 'wbrown@umass.edu', 'wbrown', '5432109876', 1),
(32678901, 'Xavier', 'Miller', 28, 'xmiller@umass.edu', 'xmiller', '4321098765', 1),
(32890123, 'Zack', 'Lopez', 25, 'zlopez@umass.edu', 'zlopez', '2109876543', 1),
(34015607, 'Tushar', 'Budhwani', 22, 'tbudhwani@gmail.com', 'tbudhwani', '4134661100', 1),
(34027125, 'Rishika', 'Dendi', 25, 'rdendi@umass.edu', 'rdendi', '4134668871', 1),
(34028209, 'Vara Prasad', 'Gudi', 22, 'vgudi@umass.edu', 'vgudi', '4134661186', 0),
(34028210, 'Bob', 'Marshal', 49, 'bob@umass.edu', 'bob', '4712559985', 1),
(38915720, 'Pranav', 'Sesha', 24, 'psesha@umass.edu', 'psesha', '6127449853', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffshift`
--

CREATE TABLE `staffshift` (
  `ssid` int(10) NOT NULL,
  `scid` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `schid` int(10) NOT NULL,
  `cid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffshift`
--

INSERT INTO `staffshift` (`ssid`, `scid`, `sid`, `schid`, `cid`) VALUES
(1, 1, 38915720, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `scname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`scid`, `cid`, `scname`) VALUES
(1010, 1000, 'Line - Asian'),
(1011, 1000, 'Line - Stir Fry'),
(1012, 1000, 'Line - Latin'),
(1013, 1000, 'Line - Deli'),
(2010, 2000, 'GrabnGo - Pack'),
(2011, 2000, 'GrabnGo - Supply'),
(2012, 2000, 'GrabnGo - Cashier'),
(3010, 3000, 'Dishroom - Dishroom'),
(3011, 3000, 'Dishroom - Potroom'),
(3012, 3000, 'Dishroom - Tables'),
(4010, 4000, 'Kitchen - AM Prep'),
(4011, 4000, 'Kitchen - Pizza'),
(4012, 4000, 'Kitchen - PM Prep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staffshift`
--
ALTER TABLE `staffshift`
  ADD PRIMARY KEY (`ssid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`scid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4001;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39789013;

--
-- AUTO_INCREMENT for table `staffshift`
--
ALTER TABLE `staffshift`
  MODIFY `ssid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `scid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
