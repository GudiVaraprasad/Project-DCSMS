-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 05:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

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
  `aid` int(200) NOT NULL,
  `posttype` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`aid`, `posttype`, `subject`, `text`, `timestamp`) VALUES
(1, 'Announcement', 'Franklin DC- Winter Student Employment', 'Winter employment opportunities are limited at UMass Dining. Franklin, Berkshire, and Hampshire are closed, Harvest has limited hours, and Blue Wall and Worcester are closed until mid-January. Worcester is unsure about winter positions. The week after finals may have some shifts, and efforts are being made to allow students to work concessions events during winter. Interested individuals can email Vara Prasad for information, but it doesn\'t guarantee a position. Attendance and willingness to work in various departments will be considered if only a few positions are available. Students are advised not to directly approach Worcester for jobs.', '2023-11-30 17:57:46'),
(2, 'Warning', 'Irregular Punch-in Punch-out', 'Irregular Punch-in Punch-out Practices Detected! Please Adhere to Dining Policies and Ensure Timely Attendance. Failure to Comply May Result in Disciplinary Action.', '2023-11-30 17:57:46'),
(3, 'Warning', 'Test Email', 'warning sent', '2023-11-30 17:57:46'),
(4, 'Announcement', 'Test Email', 'Mullins Event Remainder', '2023-11-30 17:57:46'),
(5, 'Announcement', 'fgdfdfdgedt', 'dfsghtjhrgjhryhjheuiljbkljnkljn ksjhgknk gvjngnkln', '2023-12-08 16:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `sid` int(10) DEFAULT NULL,
  `scid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schid`, `day`, `starttime`, `endtime`, `cid`, `sid`, `scid`) VALUES
(2, 'Sunday', '08:00', '12:00', 1000, NULL, 1010),
(400, 'Sunday', '08:00', '12:00', 1000, NULL, 1010),
(401, 'Monday', '08:00', '12:00', 1000, NULL, 1010),
(402, 'Tuesday', '08:00', '12:00', 1000, NULL, 1010),
(403, 'Wednesday', '08:00', '12:00', 1000, NULL, 1010),
(404, 'Thursday', '08:00', '12:00', 1000, NULL, 1010),
(405, 'Friday', '08:00', '12:00', 1000, NULL, 1010),
(406, 'Saturday', '08:00', '12:00', 1000, NULL, 1010),
(407, 'Sunday', '10:00', '14:00', 1000, NULL, 1010),
(408, 'Monday', '10:00', '14:00', 1000, NULL, 1010),
(409, 'Tuesday', '10:00', '14:00', 1000, NULL, 1010),
(410, 'Wednesday', '10:00', '14:00', 1000, NULL, 1010),
(411, 'Thursday', '10:00', '14:00', 1000, NULL, 1010),
(412, 'Friday', '10:00', '14:00', 1000, NULL, 1010),
(413, 'Saturday', '10:00', '14:00', 1000, NULL, 1010),
(414, 'Sunday', '10:00', '14:00', 1000, NULL, 1010),
(415, 'Monday', '10:00', '14:00', 1000, NULL, 1010),
(416, 'Tuesday', '10:00', '14:00', 1000, NULL, 1010),
(417, 'Wednesday', '10:00', '14:00', 1000, NULL, 1010),
(418, 'Thursday', '10:00', '14:00', 1000, NULL, 1010),
(419, 'Friday', '10:00', '14:00', 1000, NULL, 1010),
(420, 'Saturday', '10:00', '14:00', 1000, NULL, 1010),
(421, 'Sunday', '10:00', '16:00', 1000, NULL, 1010),
(422, 'Monday', '10:00', '16:00', 1000, NULL, 1010),
(423, 'Tuesday', '10:00', '16:00', 1000, NULL, 1010),
(424, 'Wednesday', '10:00', '16:00', 1000, NULL, 1010),
(425, 'Thursday', '10:00', '16:00', 1000, NULL, 1010),
(426, 'Friday', '10:00', '16:00', 1000, NULL, 1010),
(427, 'Saturday', '10:00', '16:00', 1000, NULL, 1010),
(428, 'Sunday', '10:00', '16:00', 1000, NULL, 1010),
(429, 'Monday', '10:00', '16:00', 1000, NULL, 1010),
(430, 'Tuesday', '10:00', '16:00', 1000, NULL, 1010),
(431, 'Wednesday', '10:00', '16:00', 1000, NULL, 1010),
(432, 'Thursday', '10:00', '16:00', 1000, NULL, 1010),
(433, 'Friday', '10:00', '16:00', 1000, NULL, 1010),
(434, 'Saturday', '10:00', '16:00', 1000, NULL, 1010),
(435, 'Sunday', '12:00', '16:00', 1000, NULL, 1010),
(436, 'Monday', '12:00', '16:00', 1000, NULL, 1010),
(437, 'Tuesday', '12:00', '16:00', 1000, NULL, 1010),
(438, 'Wednesday', '12:00', '16:00', 1000, NULL, 1010),
(439, 'Thursday', '12:00', '16:00', 1000, NULL, 1010),
(440, 'Friday', '12:00', '16:00', 1000, NULL, 1010),
(441, 'Saturday', '12:00', '16:00', 1000, NULL, 1010),
(442, 'Sunday', '12:00', '16:00', 1000, NULL, 1010),
(443, 'Monday', '12:00', '16:00', 1000, NULL, 1010),
(444, 'Tuesday', '12:00', '16:00', 1000, NULL, 1010),
(445, 'Wednesday', '12:00', '16:00', 1000, NULL, 1010),
(446, 'Thursday', '12:00', '16:00', 1000, NULL, 1010),
(447, 'Friday', '12:00', '16:00', 1000, NULL, 1010),
(448, 'Saturday', '12:00', '16:00', 1000, NULL, 1010),
(449, 'Sunday', '12:00', '16:00', 1000, NULL, 1010),
(450, 'Monday', '12:00', '16:00', 1000, NULL, 1010),
(451, 'Tuesday', '12:00', '16:00', 1000, NULL, 1010),
(452, 'Wednesday', '12:00', '16:00', 1000, NULL, 1010),
(453, 'Thursday', '12:00', '16:00', 1000, NULL, 1010),
(454, 'Friday', '12:00', '16:00', 1000, NULL, 1010),
(455, 'Saturday', '12:00', '16:00', 1000, NULL, 1010),
(456, 'Sunday', '12:00', '18:00', 1000, NULL, 1010),
(457, 'Monday', '12:00', '18:00', 1000, NULL, 1010),
(458, 'Tuesday', '12:00', '18:00', 1000, NULL, 1010),
(459, 'Wednesday', '12:00', '18:00', 1000, NULL, 1010),
(460, 'Thursday', '12:00', '18:00', 1000, NULL, 1010),
(461, 'Friday', '12:00', '18:00', 1000, NULL, 1010),
(462, 'Saturday', '12:00', '18:00', 1000, NULL, 1010),
(463, 'Sunday', '12:00', '18:00', 1000, NULL, 1010),
(464, 'Monday', '12:00', '18:00', 1000, NULL, 1010),
(465, 'Tuesday', '12:00', '18:00', 1000, NULL, 1010),
(466, 'Wednesday', '12:00', '18:00', 1000, NULL, 1010),
(467, 'Thursday', '12:00', '18:00', 1000, NULL, 1010),
(468, 'Friday', '12:00', '18:00', 1000, NULL, 1010),
(469, 'Saturday', '12:00', '18:00', 1000, NULL, 1010),
(470, 'Sunday', '12:00', '18:00', 1000, NULL, 1010),
(471, 'Monday', '12:00', '18:00', 1000, NULL, 1010),
(472, 'Tuesday', '12:00', '18:00', 1000, NULL, 1010),
(473, 'Wednesday', '12:00', '18:00', 1000, NULL, 1010),
(474, 'Thursday', '12:00', '18:00', 1000, NULL, 1010),
(475, 'Friday', '12:00', '18:00', 1000, NULL, 1010),
(476, 'Saturday', '12:00', '18:00', 1000, NULL, 1010),
(477, 'Sunday', '12:00', '20:00', 1000, NULL, 1010),
(478, 'Monday', '12:00', '20:00', 1000, NULL, 1010),
(479, 'Tuesday', '12:00', '20:00', 1000, NULL, 1010),
(480, 'Wednesday', '12:00', '20:00', 1000, NULL, 1010),
(481, 'Thursday', '12:00', '20:00', 1000, NULL, 1010),
(482, 'Friday', '12:00', '20:00', 1000, NULL, 1010),
(483, 'Saturday', '12:00', '20:00', 1000, NULL, 1010),
(484, 'Sunday', '14:00', '21:30', 1000, NULL, 1010),
(485, 'Monday', '14:00', '21:30', 1000, NULL, 1010),
(486, 'Tuesday', '14:00', '21:30', 1000, NULL, 1010),
(487, 'Wednesday', '14:00', '21:30', 1000, NULL, 1010),
(488, 'Thursday', '14:00', '21:30', 1000, NULL, 1010),
(489, 'Friday', '14:00', '21:30', 1000, NULL, 1010),
(490, 'Saturday', '14:00', '21:30', 1000, NULL, 1010),
(491, 'Sunday', '14:00', '21:30', 1000, NULL, 1010),
(492, 'Monday', '14:00', '21:30', 1000, NULL, 1010),
(493, 'Tuesday', '14:00', '21:30', 1000, NULL, 1010),
(494, 'Wednesday', '14:00', '21:30', 1000, NULL, 1010),
(495, 'Thursday', '14:00', '21:30', 1000, NULL, 1010),
(496, 'Friday', '14:00', '21:30', 1000, NULL, 1010),
(497, 'Saturday', '14:00', '21:30', 1000, NULL, 1010),
(498, 'Sunday', '14:00', '21:30', 1000, NULL, 1010),
(499, 'Monday', '14:00', '21:30', 1000, NULL, 1010),
(500, 'Tuesday', '14:00', '21:30', 1000, NULL, 1010),
(501, 'Wednesday', '14:00', '21:30', 1000, NULL, 1010),
(502, 'Thursday', '14:00', '21:30', 1000, NULL, 1010),
(503, 'Friday', '14:00', '21:30', 1000, NULL, 1010),
(504, 'Saturday', '14:00', '21:30', 1000, NULL, 1010),
(505, 'Sunday', '14:00', '21:30', 1000, NULL, 1010),
(506, 'Monday', '14:00', '21:30', 1000, NULL, 1010),
(507, 'Tuesday', '14:00', '21:30', 1000, NULL, 1010),
(508, 'Wednesday', '14:00', '21:30', 1000, NULL, 1010),
(509, 'Thursday', '14:00', '21:30', 1000, NULL, 1010),
(510, 'Friday', '14:00', '21:30', 1000, NULL, 1010),
(511, 'Saturday', '14:00', '21:30', 1000, NULL, 1010),
(512, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(513, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(514, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(515, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(516, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(517, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(518, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(519, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(520, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(521, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(522, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(523, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(524, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(525, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(526, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(527, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(528, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(529, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(530, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(531, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(532, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(533, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(534, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(535, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(536, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(537, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(538, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(539, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(540, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(541, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(542, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(543, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(544, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(545, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(546, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(547, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(548, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(549, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(550, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(551, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(552, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(553, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(554, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(555, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(556, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(557, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(558, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(559, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(560, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(561, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(562, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(563, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(564, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(565, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(566, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(567, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(568, 'Sunday', '17:30', '21:30', 1000, NULL, 1010),
(569, 'Monday', '17:30', '21:30', 1000, NULL, 1010),
(570, 'Tuesday', '17:30', '21:30', 1000, NULL, 1010),
(571, 'Wednesday', '17:30', '21:30', 1000, NULL, 1010),
(572, 'Thursday', '17:30', '21:30', 1000, NULL, 1010),
(573, 'Friday', '17:30', '21:30', 1000, NULL, 1010),
(574, 'Saturday', '17:30', '21:30', 1000, NULL, 1010),
(575, 'Sunday', '', '', 1000, NULL, 1010);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffshift`
--

INSERT INTO `staffshift` (`ssid`, `scid`, `sid`, `schid`, `cid`) VALUES
(25, 1010, 30890123, 0, 0),
(26, 1010, 38915720, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `scname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`aid`);

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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `aid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4001;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39789013;

--
-- AUTO_INCREMENT for table `staffshift`
--
ALTER TABLE `staffshift`
  MODIFY `ssid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `scid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
