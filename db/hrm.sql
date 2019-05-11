-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2019 at 05:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--
CREATE DATABASE IF NOT EXISTS `hrm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hrm`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_pass` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_rank`
--

CREATE TABLE `tbl_academic_rank` (
  `rank_id` int(3) NOT NULL,
  `rank_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_academic_rank`
--

INSERT INTO `tbl_academic_rank` (`rank_id`, `rank_name`) VALUES
(1, 'Giao su'),
(2, 'Pho giao su'),
(3, 'Tien si'),
(9, 'Thac si');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(2, 'HUST'),
(8, 'NEU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(7) NOT NULL,
  `file_name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `per_id` int(6) NOT NULL,
  `filetype` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_name`, `per_id`, `filetype`, `date_uploaded`) VALUES
(32, 'uploads/1.jpg', 74, 'jpg', '0000-00-00'),
(33, 'uploads/1..5.png', 68, 'png', '0000-00-00'),
(34, 'uploads/', 69, '', '0000-00-00'),
(35, 'uploads/', 68, '', '0000-00-00'),
(36, 'uploads/evaluation-for-capstone.docx', 68, 'docx', '2017-02-03'),
(37, 'uploads/[fmovies.to] The Flash 3 - 06.srt', 67, 'srt', '2017-02-03'),
(38, 'uploads/activity_sheet3 (1).docx', 99, 'docx', '2017-02-04'),
(39, 'uploads/amCharts (1).csv', 100, 'csv', '2017-02-04'),
(40, 'uploads/Penguins.jpg', 99, 'jpg', '2017-02-04'),
(41, 'uploads/FlowchartApplication 2.docx', 106, 'docx', '2017-02-04'),
(42, 'uploads/evaluation-for-capstone.docx', 111, 'docx', '2017-02-04'),
(43, 'uploads/Koala.jpg', 100, 'jpg', '2017-02-04'),
(44, 'uploads/Jellyfish.jpg', 100, 'jpg', '2017-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gass_rank`
--

CREATE TABLE `tbl_gass_rank` (
  `gass_id` int(3) NOT NULL,
  `gass_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gass_rank`
--

INSERT INTO `tbl_gass_rank` (`gass_id`, `gass_name`) VALUES
(1, 'Van thu'),
(2, 'Thu quy'),
(3, 'Ke toan'),
(4, 'Vien truong'),
(5, 'Pho vien truong'),
(6, 'Truong bo mon'),
(7, 'Pho truong bo mon'),
(43, 'Giang vien'),
(44, 'Chu tich cong doan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `per_id` int(6) NOT NULL,
  `per_firstname` varchar(20) CHARACTER SET utf32 NOT NULL,
  `per_middlename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_lastname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `per_status` varchar(8) CHARACTER SET utf8 NOT NULL,
  `per_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_campus` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_employee_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ms_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ms_with_unit` varchar(12) CHARACTER SET utf8 NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_with_unit` varchar(12) CHARACTER SET utf8 NOT NULL,
  `dr_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_degree` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_image` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_campus`, `dept_id`, `per_employee_status`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_year`, `dr_with_unit`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(176, 'Chu      ', 'Xuan', 'Cuong', 41, 'Male', 'Single', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan mem', 2, 'Bien che', 0, '+84 342-054-333', 9, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', 'Tháº¡c sÄ© khoa há»c', 0000, '', '', '', 0000, '', '', '2019-05-11', 43),
(177, 'Pham', 'vÄƒn ', 'duong', 0, '', '', '', '0000-00-00', '', '0000-00-00', 'He thong thong tin', 0, 'Hop dong', 0, '+84   -   -   ', 0, '', 0000, '', '', '', 0000, '', '', 0000, '', '', '', 0000, '', '', '2019-05-11', 0),
(178, 'Mai ', 'Khanh', 'Linh', 0, 'Male', 'Single', 'Ha Noi', '1998-02-10', 'Thai Binh', '2014-03-23', 'He thong thong tin', 2, 'Hop dong', 0, '+84556-464-465', 9, '', 0000, '', '', '', 0000, '', '', 0000, '', '', '', 0000, '', '', '2019-05-11', 43),
(179, 'Pham', 'Van', 'duong', 0, 'Male', 'Single', 'Ha Noi', '0000-00-00', 'Thai Binh', '2015-12-08', 'Khoa hoc may tinh', 2, 'Bien che', 0, '+84   -   -   ', 3, '', 0000, '', '', '', 0000, '', '', 0000, '', '', '', 0000, '', '', '2019-05-11', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel_master_file`
--

CREATE TABLE `tbl_personnel_master_file` (
  `per_id` int(7) NOT NULL,
  `per_firstname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_middlename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `per_lastname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `per_status` varchar(8) CHARACTER SET utf8 NOT NULL,
  `per_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) CHARACTER SET utf8 NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_campus` varchar(14) CHARACTER SET utf8 NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(50) CHARACTER SET utf8 NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ms_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ms_with_unit` varchar(12) CHARACTER SET utf8 NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dr_with_unit` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_degree` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_image` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel_master_file`
--

INSERT INTO `tbl_personnel_master_file` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_campus`, `dept_id`, `per_designation`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_with_unit`, `dr_year`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(165, 'Chu', ' Xuân', 'Cường', 41, 'Male', 'Single', 'Hà Nội', '1998-12-07', 'Bắc Giang', '2016-08-07', 'Talisay', 2, 'Permanent', 0, '+639 055-555-555', 1, 'Cử nhân công nghệ', 2016, 'Đại học Bách Khoa', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2019-05-10', 4),
(175, 'Chu', '', '', 0, '', '', '', '0000-00-00', '', '0000-00-00', '', 0, '', 0, '+84    -   -   ', 0, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2019-05-11', 0),
(175, 'Chu ', 'xuan', '', 0, '', '', '', '0000-00-00', '', '0000-00-00', '', 0, '', 0, '+84    -   -   ', 0, '', 0000, '', '', '', 0000, '', '', '0', 0000, '', '', 0000, '', '', '2019-05-11', 0),
(176, 'Chu', 'Xuan', 'Cuong', 41, 'Male', 'Äá»™c t', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'He thong thong', 2, 'Há»£p Ä‘á»“ng', 0, '+84342-054-333', 10, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', '', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43),
(176, 'Chu ', 'Xuan', 'Cuong', 41, 'Male', 'Äá»™c t', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan', 2, 'Há»£p Ä‘á»“ng', 0, '+84 342-054-333', 10, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', 'Tháº¡c sÄ© khoa há»c', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43),
(176, 'Chu  ', 'Xuan', 'Cuong', 41, 'Male', 'Äá»™c t', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan', 2, 'Há»£p Ä‘á»“ng', 0, '+84 342-054-333', 10, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', '', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43),
(176, 'Chu   ', 'Xuan', 'Cuong', 41, 'Male', 'Single', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan', 2, 'Há»£p Ä‘á»“ng', 0, '+84 342-054-333', 10, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', 'Tháº¡c sÄ© khoa há»c', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43),
(176, 'Chu    ', 'Xuan', 'Cuong', 41, 'Male', 'Single', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan', 2, 'Bien che', 0, '+84 342-054-333', 10, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', 'Tháº¡c sÄ© khoa há»c', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43),
(176, 'Chu     ', 'Xuan', 'Cuong', 41, 'Male', 'Single', '', '1998-12-07', 'Báº¯c Giang', '2005-02-01', 'Cong nghe phan', 2, 'Notice: Undefined variable: per_designation in C:\\', 0, '+84 342-054-333', 9, '', 0000, '', 'Tháº¡c sÄ© khoa há»c', 'CÃ´ng nghá»‡', 2000, 'HUST', 'Tháº¡c sÄ© khoa há»c', '0', 0000, '', '', 0000, '', '', '2019-05-11', 43);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `pos_id` int(3) NOT NULL,
  `pos_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`pos_id`, `pos_name`) VALUES
(41, 'Chairperson'),
(42, 'PME, Coordinator'),
(43, 'SSG Adviser'),
(44, 'Chair, BSIS'),
(45, 'Chair, BSE'),
(46, 'Chair, Graduate School'),
(47, 'CIMD Coordinator'),
(48, 'Chair, SAS'),
(49, 'Coordinator, Extension'),
(50, 'PPDM, IGP'),
(51, 'OSA Coordinator'),
(52, 'SSD In-Charge'),
(53, 'Criminology Chairperson'),
(54, 'Chair, BS Industrial Technology'),
(55, 'Chair, Extension'),
(56, 'Student Teaching Supervisor'),
(57, 'Discipline Officer'),
(58, 'Dean, Fortune Towne'),
(59, 'Fisheries Chairperson'),
(60, 'Business Administration Chairperson'),
(61, 'NSTP Coordinator'),
(62, 'Executive Director'),
(63, 'Dean. College of Fisheries'),
(64, 'Research Coordinator, Technopacer Adviser'),
(65, 'IGP Coordinator'),
(66, 'Chair, BSIS                                  ICT C'),
(67, 'Acting Registrar'),
(68, 'Assistant Discipline Officer'),
(69, 'Chair, BSOA'),
(70, 'Alumni Coordinator'),
(71, 'Dean IT'),
(72, 'Education Chairperson, Student Teaching Supervisor'),
(73, 'ECS Coordinator'),
(74, 'Director, PME'),
(75, 'Chair, BSA'),
(76, 'Chairperson, Information Technology'),
(77, 'Adviser, SSG'),
(78, 'Chair, BSACT'),
(79, 'Sports Coordinator'),
(80, 'Guidance Counselor'),
(81, 'SUC President');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promote_id` int(5) NOT NULL,
  `per_id` int(6) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `date_promoted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  ADD PRIMARY KEY (`gass_id`);

--
-- Indexes for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  MODIFY `rank_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  MODIFY `gass_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `per_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `pos_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promote_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hrm\",\"table\":\"tbl_academic_rank\"},{\"db\":\"hrm\",\"table\":\"tbl_personnel\"},{\"db\":\"hrm\",\"table\":\"tbl_position\"},{\"db\":\"hrm\",\"table\":\"tbl_promotion\"},{\"db\":\"hrm\",\"table\":\"tbl_personnel_master_file\"},{\"db\":\"hrm\",\"table\":\"tbl_gass_rank\"},{\"db\":\"hrm\",\"table\":\"tbl_files\"},{\"db\":\"hrm\",\"table\":\"tbl_department\"},{\"db\":\"hrm\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-05-11 15:35:12', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
