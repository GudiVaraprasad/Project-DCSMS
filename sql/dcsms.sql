-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 04:43 PM
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
                            `starttime` int(4) NOT NULL,
                            `endtime` int(4) NOT NULL,
                            `cid` int(10) NOT NULL,
                            `sid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schid`, `day`, `starttime`, `endtime`, `cid`, `sid`) VALUES
                                                                                  (1, 'wednesday', 800, 1130, 1000, 30234567),
                                                                                  (2, 'sunday', 730, 1330, 3000, 31789012),
                                                                                  (3, 'sunday', 1130, 1500, 1000, 31789012),
                                                                                  (4, 'sunday', 800, 1130, 1000, 30000123),
                                                                                  (5, 'sunday', 1200, 1530, 2000, 30123456),
                                                                                  (6, 'sunday', 1630, 2000, 3000, 30234567),
                                                                                  (7, 'monday', 900, 1230, 4000, 30345678),
                                                                                  (8, 'monday', 1300, 1630, 1000, 30456789),
                                                                                  (9, 'monday', 1730, 2130, 2000, 30567890),
                                                                                  (10, 'tuesday', 830, 1200, 3000, 30678901),
                                                                                  (11, 'tuesday', 1300, 1700, 4000, 30789012),
                                                                                  (12, 'tuesday', 1800, 2130, 1000, 30890123),
                                                                                  (13, 'wednesday', 930, 1330, 2000, 31012345),
                                                                                  (14, 'wednesday', 1400, 1800, 3000, 31123456),
                                                                                  (15, 'wednesday', 1900, 2230, 4000, 31234567),
                                                                                  (16, 'thursday', 800, 1130, 1000, 31345678),
                                                                                  (17, 'thursday', 1200, 1530, 2000, 31456789),
                                                                                  (18, 'thursday', 1630, 2000, 3000, 31567890),
                                                                                  (19, 'friday', 900, 1230, 4000, 31678901),
                                                                                  (20, 'friday', 1300, 1630, 1000, 31789012),
                                                                                  (21, 'friday', 1730, 2130, 2000, 31901234),
                                                                                  (22, 'saturday', 830, 1200, 3000, 32012345),
                                                                                  (23, 'saturday', 1300, 1700, 4000, 32123456),
                                                                                  (24, 'saturday', 1800, 2130, 1000, 32234567),
                                                                                  (25, 'sunday', 900, 1230, 2000, 32345678),
                                                                                  (26, 'sunday', 1300, 1630, 3000, 32456789),
                                                                                  (27, 'sunday', 1730, 2130, 4000, 32567890),
                                                                                  (28, 'monday', 800, 1130, 1000, 32678901),
                                                                                  (29, 'monday', 1200, 1530, 2000, 32789012),
                                                                                  (30, 'monday', 1630, 2000, 3000, 32890123),
                                                                                  (31, 'tuesday', 900, 1230, 4000, 30000123),
                                                                                  (32, 'tuesday', 1300, 1630, 1000, 30123456),
                                                                                  (33, 'tuesday', 1730, 2130, 2000, 30234567),
                                                                                  (34, 'wednesday', 830, 1200, 3000, 30345678),
                                                                                  (35, 'wednesday', 1300, 1700, 4000, 30456789),
                                                                                  (36, 'wednesday', 1800, 2130, 1000, 30567890),
                                                                                  (37, 'thursday', 930, 1330, 2000, 30678901),
                                                                                  (38, 'thursday', 1400, 1800, 3000, 30789012),
                                                                                  (39, 'thursday', 1900, 2230, 4000, 30890123),
                                                                                  (40, 'friday', 800, 1130, 1000, 31012345),
                                                                                  (41, 'friday', 1200, 1530, 2000, 31123456),
                                                                                  (42, 'friday', 1630, 2000, 3000, 31234567),
                                                                                  (43, 'saturday', 900, 1230, 4000, 31345678),
                                                                                  (44, 'saturday', 1300, 1630, 1000, 31456789),
                                                                                  (45, 'saturday', 1730, 2130, 2000, 31567890),
                                                                                  (46, 'sunday', 830, 1200, 3000, 31678901),
                                                                                  (47, 'sunday', 1300, 1700, 4000, 31789012),
                                                                                  (48, 'sunday', 1800, 2130, 1000, 31901234),
                                                                                  (49, 'monday', 900, 1230, 2000, 32012345),
                                                                                  (50, 'monday', 1300, 1630, 3000, 32123456),
                                                                                  (51, 'monday', 1730, 2130, 4000, 32234567),
                                                                                  (52, 'tuesday', 800, 1130, 1000, 32345678),
                                                                                  (53, 'tuesday', 1200, 1530, 2000, 32456789),
                                                                                  (54, 'tuesday', 1630, 2000, 3000, 32567890),
                                                                                  (55, 'wednesday', 900, 1230, 4000, 32678901),
                                                                                  (56, 'wednesday', 1300, 1630, 1000, 32789012),
                                                                                  (57, 'wednesday', 1730, 2130, 2000, 32890123),
                                                                                  (58, 'thursday', 800, 1130, 1000, 30000123),
                                                                                  (59, 'thursday', 1200, 1530, 2000, 30123456),
                                                                                  (60, 'thursday', 1630, 2000, 3000, 30234567),
                                                                                  (61, 'friday', 900, 1230, 4000, 30345678),
                                                                                  (62, 'friday', 1300, 1630, 1000, 30456789),
                                                                                  (63, 'friday', 1730, 2130, 2000, 30567890),
                                                                                  (64, 'saturday', 830, 1200, 3000, 30678901),
                                                                                  (65, 'saturday', 1300, 1700, 4000, 30789012),
                                                                                  (66, 'saturday', 1800, 2130, 1000, 30890123),
                                                                                  (67, 'sunday', 930, 1330, 2000, 31012345),
                                                                                  (68, 'sunday', 1400, 1800, 3000, 31123456),
                                                                                  (69, 'sunday', 1900, 2230, 4000, 31234567),
                                                                                  (70, 'monday', 800, 1130, 1000, 31345678),
                                                                                  (71, 'monday', 1200, 1530, 2000, 31456789),
                                                                                  (72, 'monday', 1630, 2000, 3000, 31567890),
                                                                                  (73, 'tuesday', 900, 1230, 4000, 31678901),
                                                                                  (74, 'tuesday', 1300, 1630, 1000, 31789012),
                                                                                  (75, 'tuesday', 1730, 2130, 2000, 31901234),
                                                                                  (76, 'wednesday', 830, 1200, 3000, 32012345),
                                                                                  (77, 'wednesday', 1300, 1700, 4000, 32123456),
                                                                                  (78, 'wednesday', 1800, 2130, 1000, 32234567),
                                                                                  (79, 'thursday', 930, 1330, 2000, 32345678),
                                                                                  (80, 'thursday', 1400, 1800, 3000, 32456789),
                                                                                  (81, 'thursday', 1900, 2230, 4000, 32567890),
                                                                                  (82, 'friday', 800, 1130, 1000, 32678901),
                                                                                  (83, 'friday', 1200, 1530, 2000, 32789012),
                                                                                  (84, 'friday', 1630, 2000, 3000, 32890123),
                                                                                  (85, 'saturday', 900, 1230, 2000, 30000123),
                                                                                  (86, 'saturday', 1300, 1630, 3000, 30123456),
                                                                                  (87, 'saturday', 1730, 2130, 4000, 30234567),
                                                                                  (88, 'sunday', 800, 1130, 1000, 30345678),
                                                                                  (89, 'sunday', 1200, 1530, 2000, 30456789),
                                                                                  (90, 'sunday', 1630, 2000, 3000, 30567890),
                                                                                  (91, 'monday', 900, 1230, 4000, 30678901),
                                                                                  (92, 'monday', 1300, 1630, 1000, 30789012),
                                                                                  (93, 'monday', 1730, 2130, 2000, 30890123),
                                                                                  (94, 'tuesday', 830, 1200, 3000, 31012345),
                                                                                  (95, 'tuesday', 1300, 1700, 4000, 31123456),
                                                                                  (96, 'tuesday', 1800, 2130, 1000, 31234567),
                                                                                  (97, 'wednesday', 930, 1330, 2000, 31345678),
                                                                                  (98, 'wednesday', 1400, 1800, 3000, 31456789),
                                                                                  (99, 'wednesday', 1900, 2230, 4000, 31567890),
                                                                                  (100, 'thursday', 800, 1130, 1000, 31678901),
                                                                                  (101, 'thursday', 1200, 1530, 2000, 31789012),
                                                                                  (102, 'thursday', 1630, 2000, 3000, 31901234),
                                                                                  (103, 'friday', 900, 1230, 4000, 32012345),
                                                                                  (104, 'friday', 1300, 1630, 1000, 32123456),
                                                                                  (105, 'friday', 1730, 2130, 2000, 32234567),
                                                                                  (106, 'saturday', 830, 1200, 3000, 32345678),
                                                                                  (107, 'saturday', 1300, 1700, 4000, 32456789),
                                                                                  (108, 'saturday', 1800, 2130, 1000, 32567890),
                                                                                  (109, 'sunday', 930, 1330, 2000, 32678901),
                                                                                  (110, 'sunday', 1400, 1800, 3000, 32789012),
                                                                                  (111, 'sunday', 1900, 2230, 4000, 32890123),
                                                                                  (112, 'monday', 800, 1130, 1000, 30345678),
                                                                                  (113, 'monday', 1200, 1530, 2000, 30456789),
                                                                                  (114, 'monday', 1630, 2000, 3000, 30567890),
                                                                                  (115, 'tuesday', 900, 1230, 4000, 30678901),
                                                                                  (116, 'tuesday', 1300, 1630, 1000, 30789012),
                                                                                  (117, 'tuesday', 1730, 2130, 2000, 30890123),
                                                                                  (118, 'wednesday', 830, 1200, 3000, 31012345),
                                                                                  (119, 'wednesday', 1300, 1700, 4000, 31123456),
                                                                                  (120, 'wednesday', 1800, 2130, 1000, 31234567),
                                                                                  (121, 'thursday', 930, 1330, 2000, 31345678),
                                                                                  (122, 'thursday', 1400, 1800, 3000, 31456789),
                                                                                  (123, 'thursday', 1900, 2230, 4000, 31567890),
                                                                                  (124, 'friday', 800, 1130, 1000, 31678901),
                                                                                  (125, 'friday', 1200, 1530, 2000, 31789012),
                                                                                  (126, 'friday', 1630, 2000, 3000, 31901234),
                                                                                  (127, 'saturday', 900, 1230, 4000, 32012345),
                                                                                  (128, 'saturday', 1300, 1630, 1000, 32123456),
                                                                                  (129, 'saturday', 1730, 2130, 2000, 32234567),
                                                                                  (130, 'sunday', 830, 1200, 3000, 32345678),
                                                                                  (131, 'sunday', 1300, 1700, 4000, 32456789),
                                                                                  (132, 'sunday', 1800, 2130, 1000, 32567890),
                                                                                  (133, 'monday', 900, 1230, 2000, 32678901),
                                                                                  (134, 'monday', 1300, 1630, 3000, 32789012),
                                                                                  (135, 'monday', 1730, 2130, 4000, 32890123),
                                                                                  (136, 'tuesday', 830, 1200, 3000, 30000123),
                                                                                  (137, 'tuesday', 1300, 1700, 4000, 30123456),
                                                                                  (138, 'tuesday', 1800, 2130, 1000, 30234567),
                                                                                  (139, 'wednesday', 930, 1330, 2000, 30345678),
                                                                                  (140, 'wednesday', 1400, 1800, 3000, 30456789),
                                                                                  (141, 'wednesday', 1900, 2230, 4000, 30567890),
                                                                                  (142, 'thursday', 800, 1130, 1000, 30678901),
                                                                                  (143, 'thursday', 1200, 1530, 2000, 30789012),
                                                                                  (144, 'thursday', 1630, 2000, 3000, 30890123),
                                                                                  (145, 'friday', 900, 1230, 4000, 31012345),
                                                                                  (146, 'friday', 1300, 1630, 1000, 31123456),
                                                                                  (147, 'friday', 1730, 2130, 2000, 31234567),
                                                                                  (148, 'saturday', 830, 1200, 3000, 31345678),
                                                                                  (149, 'saturday', 1300, 1700, 4000, 31456789),
                                                                                  (150, 'saturday', 1800, 2130, 1000, 31567890),
                                                                                  (151, 'sunday', 930, 1330, 2000, 31678901),
                                                                                  (152, 'sunday', 1400, 1800, 3000, 31789012),
                                                                                  (153, 'sunday', 1900, 2230, 4000, 31901234),
                                                                                  (154, 'monday', 800, 1130, 1000, 32012345),
                                                                                  (155, 'monday', 1200, 1530, 2000, 32123456),
                                                                                  (156, 'monday', 1630, 2000, 3000, 32234567),
                                                                                  (157, 'tuesday', 900, 1230, 4000, 32345678),
                                                                                  (158, 'tuesday', 1300, 1630, 1000, 32456789),
                                                                                  (159, 'tuesday', 1730, 2130, 2000, 32567890),
                                                                                  (160, 'wednesday', 830, 1200, 3000, 32678901),
                                                                                  (161, 'wednesday', 1300, 1700, 4000, 32789012),
                                                                                  (162, 'wednesday', 1800, 2130, 1000, 32890123);

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
                                                                                               (30123456, 'Alice', 'Smith', 30, 'asmith@umass.edu', 'asmith', '9876543210', 1),
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
                                                                                               (32789012, 'Yara', 'Gonzalez', 41, 'ygonzalez@umass.edu', 'ygonzalez', '3210987654', 1),
                                                                                               (32890123, 'Zack', 'Lopez', 25, 'zlopez@umass.edu', 'zlopez', '2109876543', 1),
                                                                                               (34015607, 'Tushar', 'Budhwani', 22, 'tbudhwani@gmail.com', 'tbudhwani', '4134661100', 1),
                                                                                               (34027125, 'Rishika', 'Dendi', 25, 'rdendi@umass.edu', 'rdendi', '4134668871', 1),
                                                                                               (34028209, 'Vara Prasad', 'Gudi', 22, 'vgudi@umass.edu', 'vgudi', '4134661186', 0),
                                                                                               (34028210, 'Bob', 'Marley', 49, 'bob@umass.edu', 'bob', '4712559985', 1),
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
    MODIFY `schid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
    MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39789013;

--
-- AUTO_INCREMENT for table `staffshift`
--
ALTER TABLE `staffshift`
    MODIFY `ssid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
    MODIFY `scid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
