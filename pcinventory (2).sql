-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2015 at 09:57 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL,
  `empfirstname` varchar(100) NOT NULL,
  `emplastname` varchar(100) NOT NULL,
  `empcompanyid` varchar(50) NOT NULL,
  `empphoto` varchar(250) NOT NULL,
  `empstatus` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `empfirstname`, `emplastname`, `empcompanyid`, `empphoto`, `empstatus`) VALUES
(3, 'Kate', 'Edoloverio', 'FDC0812067', 'ROG_TYTAN_CG8480.jpg', 1),
(13, 'Karen Kate', 'Gepanaga', 'ererer', 'picture.jpg', 2),
(14, 'John Robert', 'Jerodiaz', 'asds', 'img.jpg', 2),
(15, 'John Mart', 'Belamide', 'dfd', 'user.png', 2),
(35, 'test', 'test', 'test', 'dog.jpg', 1),
(37, 'Tsuchiya', 'Tsuchiya', 'FDC-CH017', 'flow colour hd abstract desktop wallpaper.jpg', 1),
(39, 'katesss', 'Tsuchiya', 'FDC-CH017', 'abstract-hd-wallpapers-1920x1080.jpg', 2),
(41, 'katesss', 'Tsuchiya', 'FDC-CH017', 'flow colour hd abstract desktop wallpaper.jpg', 1),
(42, 'test', 'test', 'test', 'download.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE IF NOT EXISTS `gadgets` (
  `id` int(11) NOT NULL,
  `ggpropertyno` varchar(100) NOT NULL,
  `ggdescription` text NOT NULL,
  `ggserial` varchar(100) NOT NULL,
  `ggstatus` tinyint(4) NOT NULL,
  `ggavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gadgets`
--

INSERT INTO `gadgets` (`id`, `ggpropertyno`, `ggdescription`, `ggserial`, `ggstatus`, `ggavailability`) VALUES
(18, 'q', 'q', 'q', 1, 1),
(19, 'df', 'dfd', 'dfdf', 1, 1),
(30, '', 'g', 'g', 1, 1),
(31, '', 'g', 'g', 1, 1),
(33, 'h', 'h', 'h', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `headsets`
--

CREATE TABLE IF NOT EXISTS `headsets` (
  `id` int(11) NOT NULL,
  `hspropertyno` varchar(100) NOT NULL,
  `hsdescription` text NOT NULL,
  `hsstatus` tinyint(4) NOT NULL,
  `hstype` tinyint(4) NOT NULL,
  `hsavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headsets`
--

INSERT INTO `headsets` (`id`, `hspropertyno`, `hsdescription`, `hsstatus`, `hstype`, `hsavailability`) VALUES
(2, 'fg', 'fgfgfg', 1, 1, 1),
(3, 'rock in roll', 'fgfgf', 0, 1, 1),
(4, 'test', 'test', 1, 2, 1),
(7, 'hjhj', 'hjhjh', 1, 1, 1),
(8, 'dfgdf', 'dfgdfgdfg', 1, 1, 1),
(11, 'l', 'l', 1, 1, 1),
(12, 'u', 'u', 1, 1, 1),
(13, 'p', 'p', 1, 1, 1),
(14, 'n', 'n', 1, 1, 1),
(15, 'e', 'h', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `systemunit_id` int(11) NOT NULL,
  `monitor_id` varchar(50) NOT NULL,
  `videocard_id` int(11) NOT NULL,
  `mouse_id` int(11) NOT NULL,
  `keyboard_id` int(11) NOT NULL,
  `headset_id` int(11) NOT NULL,
  `speaker_id` int(11) NOT NULL,
  `up_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `pcosserialno` varchar(100) NOT NULL,
  `pcadditionalinfo` varchar(200) NOT NULL,
  `pcstatus` tinyint(4) NOT NULL,
  `pctype` tinyint(4) NOT NULL,
  `pcavailability` tinyint(4) NOT NULL,
  `pcreceivedate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `employee_id`, `systemunit_id`, `monitor_id`, `videocard_id`, `mouse_id`, `keyboard_id`, `headset_id`, `speaker_id`, `up_id`, `os_id`, `pcosserialno`, `pcadditionalinfo`, `pcstatus`, `pctype`, `pcavailability`, `pcreceivedate`) VALUES
(3, 3, 2, '3,2', 2, 1, 2, 0, 0, 0, 0, 'none', 'none', 2, 0, 1, '2015-04-04'),
(5, 15, 2, '3', 2, 0, 2, 0, 0, 3, 0, 'none', 'none', 2, 1, 1, '2015-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `keyboards`
--

CREATE TABLE IF NOT EXISTS `keyboards` (
  `id` int(11) NOT NULL,
  `kbpropertyno` varchar(100) NOT NULL,
  `kbdescription` text NOT NULL,
  `kbstatus` tinyint(4) NOT NULL,
  `kbtype` tinyint(4) NOT NULL,
  `kbavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyboards`
--

INSERT INTO `keyboards` (`id`, `kbpropertyno`, `kbdescription`, `kbstatus`, `kbtype`, `kbavailability`) VALUES
(1, 'FDC-KB001', 'Logitech Wireless K270 ', 1, 1, 1),
(3, 'FDC-KB003', 'Logitech Wireless K270 ', 1, 1, 1),
(4, 'FDC-KB004', 'Dell KB212-B', 1, 1, 1),
(5, 'FDC-KB005', 'Genius KB 110', 1, 1, 1),
(6, 'FDC-KB006', 'Logitech Wireless K260', 1, 1, 1),
(7, 'FDC-KB007', 'Toshiba KU40M USB', 1, 1, 1),
(8, 'FDC-KB008', 'A4Tech KRS-85', 1, 2, 1),
(9, 'FDC-KB009', 'Genius KB 110', 1, 1, 1),
(10, 'FDC-KB010', 'Toshiba KU40M USB', 1, 1, 1),
(11, 'FDC-KB011', 'Toshiba KU40M USB', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mice`
--

CREATE TABLE IF NOT EXISTS `mice` (
  `id` int(11) NOT NULL,
  `mspropertyno` varchar(100) NOT NULL,
  `msdescription` text NOT NULL,
  `msstatus` tinyint(4) NOT NULL,
  `mstype` tinyint(4) NOT NULL,
  `msavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mice`
--

INSERT INTO `mice` (`id`, `mspropertyno`, `msdescription`, `msstatus`, `mstype`, `msavailability`) VALUES
(1, 'FDC-MS001', 'Genius Netscroll 110X Black', 1, 2, 1),
(2, 'FDC-MS002', 'A4Tech USB Optical Black', 1, 2, 1),
(3, 'FDC-MS003', 'Genius Netscroll 110X Black', 1, 1, 1),
(4, 'FDC-MS004', 'Toshiba USB Optical Black', 1, 1, 1),
(5, 'FDC-MS005', 'Genius Netscroll 110X Black', 1, 1, 1),
(6, 'FDC-MS006', 'Genius Netscroll 110X Black', 1, 1, 1),
(7, 'FDC-MS007', 'Toshiba USB Optical Black', 1, 1, 2),
(8, 'FDC-MS008', 'Toshiba USB Optical Black', 1, 1, 1),
(9, 'FDC-MS009', 'Logitech Wireless M260 ', 1, 1, 1),
(10, 'FDC-MS010', 'Logitech Wireless M260 ', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `monitors`
--

CREATE TABLE IF NOT EXISTS `monitors` (
  `id` int(11) NOT NULL,
  `mopropertyno` varchar(100) NOT NULL,
  `modescription` text NOT NULL,
  `mostatus` tinyint(4) NOT NULL,
  `motype` tinyint(4) NOT NULL,
  `moavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitors`
--

INSERT INTO `monitors` (`id`, `mopropertyno`, `modescription`, `mostatus`, `motype`, `moavailability`) VALUES
(3, 'FDC-MO001', 'Samsung LS23C350HS/XP 23 inches LED Monitor Black w/ HDMI', 2, 0, 1),
(5, 'FDC-MO002', 'Samsung LS23C350HS/XP 23 inches LED Monitor Black w/ HDMI', 1, 0, 1),
(6, 'FDC-MO003', 'Samsung LS22D390HS/XP 21.5 inches LED Monitor Black w/ HDMI', 1, 1, 1),
(7, 'FDC-MO004', 'Samsung LS22D390HS/XP 21.5 inches LED Monitor Black w/ HDMI', 1, 1, 1),
(8, 'FDC-MO005', 'Samsung LS22D390HS/XP 21.5 inches LED Monitor Black w/ HDMI', 1, 1, 1),
(9, 'FDC-MO006', 'Acer V236HL 23 LED Backlight Desktop Monitor (Black)', 1, 1, 1),
(11, 'FDC-MO008', 'Samsung LS22D390HS/XP 21.5 inches LED Monitor Black w/ HDMI', 1, 1, 1),
(12, 'FDC-MO009', 'Samsung LS22D390HS/XP 21.5 inches LED Monitor Black w/ HDMI', 1, 1, 1),
(13, 'FDC-MO0101', 'Acer V236HL 23 LED Backlight Desktop Monitor (Black)', 1, 0, 1),
(14, 'FDC-MO011', 'Viewsonic 20 VA2046A LED Widescreen Black', 1, 1, 1),
(15, 'FDC-MO012', 'Dell E Series E2011H 20 Widescreen Flat Panel Monitor with LED Display', 1, 1, 1),
(16, 'FDC-MO013', 'ACER S191HQL 18.5 WIDESCREEN LED MONITOR', 2, 1, 1),
(17, 'FDC-MO014', 'Samsung LS19A100 18.5 LED Monitor', 1, 2, 1),
(18, '', '', 1, 1, 1),
(19, '', '', 1, 1, 1),
(20, '', '', 1, 1, 1),
(21, '', '', 1, 1, 1),
(22, 'cvcv', '', 1, 1, 1),
(23, 'rrrr', 'fg', 1, 1, 1),
(24, '', '', 1, 1, 1),
(25, '', '', 1, 1, 1),
(26, 'o', 'o', 1, 1, 1),
(27, 'FDC-MO0011', 'dfdfd', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `firstname`, `photo`) VALUES
(1, 'kate', 'download.jpg'),
(2, 'kate', 'download (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` text,
  `available` int(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `available`) VALUES
('535c49d9-917c-4eab-854f-743801314e03', 'Helpers', 'Helping you all the way', 1),
('55d140f7-2228-4e47-8cd1-0d3c512f9e12', 'hkjhk', '4', 1),
('55d14cff-e740-46fe-a1d4-0d3c512f9e12', 'ewrewr', '3', 1),
('55d16bf3-9498-4b4e-b4e4-0d3c512f9e12', 'ioi', '1', 2),
('55d1805d-4bdc-4501-a89d-0d3c512f9e12', 'rty', 'tyt', 2),
('55d18080-0c94-4aec-946e-0d3c512f9e12', 'rty', 'tyt', 2),
('55d18088-51f4-4bea-8e95-0d3c512f9e12', 'sdsad', 'd', 1),
('55d18090-daa0-4b9a-88e6-0d3c512f9e12', 'gjkjhkg', 'ghg', 1),
('55d18095-3b4c-4373-8725-0d3c512f9e12', 'dfd', 'dfdf', 1),
('55d1809a-bc34-4f32-88b9-0d3c512f9e12', 'fgf', 'gh', 1),
('55d1809f-4450-4336-bd35-0d3c512f9e12', 'fgf', 'fgfg', 1),
('55d180a5-f68c-4777-b679-0d3c512f9e12', 'fgf', 'fgf', 1),
('55d291c7-28a0-498d-a3ac-13c8512f9e12', 'greencrossss', 'wewe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE IF NOT EXISTS `speakers` (
  `id` int(11) NOT NULL,
  `sppropertyno` varchar(100) NOT NULL,
  `spdescription` text NOT NULL,
  `spstatus` tinyint(4) NOT NULL,
  `sptype` tinyint(4) NOT NULL,
  `spavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `sppropertyno`, `spdescription`, `spstatus`, `sptype`, `spavailability`) VALUES
(1, 'fdc11', 'dfdfdf', 2, 2, 2),
(2, 'test', 'test', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `systemunits`
--

CREATE TABLE IF NOT EXISTS `systemunits` (
  `id` int(11) NOT NULL,
  `supropertyno` varchar(100) NOT NULL,
  `sudescription` text NOT NULL,
  `sustatus` tinyint(4) NOT NULL,
  `sutype` tinyint(4) NOT NULL,
  `suavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemunits`
--

INSERT INTO `systemunits` (`id`, `supropertyno`, `sudescription`, `sustatus`, `sutype`, `suavailability`) VALUES
(3, 'FDC-SU002', 'Biostar H81MHV3', 1, 1, 1),
(4, 'FDC-SU003', 'Gigabyte GA-H61M-DS2', 1, 1, 1),
(5, 'FDC-SU004', 'ASRock B75M', 1, 1, 1),
(6, 'FDC-SU005', 'Biostar H81MHV3', 1, 1, 1),
(7, 'FDC-SU006', 'Gigabyte GA-H61M-DS2', 1, 1, 1),
(8, 'FDC-SU007', 'Biostar H81MHV3', 1, 1, 1),
(9, 'FDC-SU008', 'ASUSTek COMPUTER INC. P8H61-M LX3 PLUS R2.0', 1, 2, 2),
(10, '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ups`
--

CREATE TABLE IF NOT EXISTS `ups` (
  `id` int(11) NOT NULL,
  `uppropertyno` varchar(100) NOT NULL,
  `updescription` text NOT NULL,
  `upstatus` tinyint(4) NOT NULL,
  `uptype` tinyint(4) NOT NULL,
  `upavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `image`) VALUES
(1, 'admin', '134fce0a485ed890c14d7cc1b1014b08a37866db', ''),
(2, 'admin', 'b51d7154680c4251ee13429ad072f0be38700a2d', ''),
(3, 'kate', 'ed105f7a6f6006c61e348229cf54f78b70b08954', ''),
(4, 'new', '44407ecdd1a1071d38669c464fb93f1c2a8eca51', ''),
(5, 'test', '74970804d10f2ac4edef548756f397c522b92b8f', ''),
(6, ',', 'd88d3fa4cf028e09dcd6f43d3ce33fb7367e3a52', '');

-- --------------------------------------------------------

--
-- Table structure for table `videocards`
--

CREATE TABLE IF NOT EXISTS `videocards` (
  `id` int(11) NOT NULL,
  `vcpropertyno` varchar(100) NOT NULL,
  `vcdescription` text NOT NULL,
  `vcstatus` tinyint(4) NOT NULL,
  `vctype` tinyint(4) NOT NULL,
  `vcavailability` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videocards`
--

INSERT INTO `videocards` (`id`, `vcpropertyno`, `vcdescription`, `vcstatus`, `vctype`, `vcavailability`) VALUES
(2, 'FDC-VC002', 'good', 2, 1, 1),
(3, '', '', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headsets`
--
ALTER TABLE `headsets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyboards`
--
ALTER TABLE `keyboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mice`
--
ALTER TABLE `mice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitors`
--
ALTER TABLE `monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemunits`
--
ALTER TABLE `systemunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ups`
--
ALTER TABLE `ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videocards`
--
ALTER TABLE `videocards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `headsets`
--
ALTER TABLE `headsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `keyboards`
--
ALTER TABLE `keyboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `mice`
--
ALTER TABLE `mice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `monitors`
--
ALTER TABLE `monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `systemunits`
--
ALTER TABLE `systemunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ups`
--
ALTER TABLE `ups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `videocards`
--
ALTER TABLE `videocards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
