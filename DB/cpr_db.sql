-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2015 at 05:41 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cpr_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE IF NOT EXISTS `assignments` (
  `id_assignments` int(11) NOT NULL COMMENT 'รหัสมอบหมายงาน',
  `title_assignments` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้องานที่มอบหมาย',
  `detail_assignments` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รายละเอียดงานที่มอบหมาย',
  `id_major` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสปีการศึกษาภาคเรียน Fk ตาราง semater_trem',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสครู Fk ตาราง reg_teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางมอบหมายงาน';

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id_documents` int(11) NOT NULL COMMENT 'รหัสเอกสารการสอน',
  `title_documents` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อเอกสารการสอน',
  `detail_documents` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รายละเอียดเอกสารการสอน',
  `id_major` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสภาคเรียนปีการศึกษา Fk ตาราง semater_trem',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัวครู Fk ตาราง reg_teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ข้อมูลเอกสารการสอน';

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `id_major` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสวิชา',
  `name_major_th` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อวิชาภาษาไทย',
  `name_major_en` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อวิชาภาษาอังกฤษ',
  `unit_major` int(1) DEFAULT NULL COMMENT 'หน่วยกิต',
  `detail_major` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำอธิบายรายวิชา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางรายวิชา';

-- --------------------------------------------------------

--
-- Stand-in structure for view `miss_study`
--
CREATE TABLE IF NOT EXISTS `miss_study` (
`id_study` int(11)
,`study` varchar(10)
,`date_study` date
,`id_reg_student` varchar(15)
,`id_major` varchar(10)
,`id_semater_trem` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(11) NOT NULL COMMENT 'รหัสข่าว',
  `title_news` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อข่าว',
  `detail_news` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ข้อมูลข่าว',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสครู Fk ตาราง reg_teacher',
  `date_news` date DEFAULT NULL COMMENT 'วันที่ประกาศ',
  `time_news` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เวลา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางข่าวประชาสัมพันธ์';

-- --------------------------------------------------------

--
-- Table structure for table `reg_student`
--

CREATE TABLE IF NOT EXISTS `reg_student` (
  `id_reg_student` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสนักเรียน',
  `title_reg_student` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำนำหน้า',
  `fname_reg_student` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อนักเรียน',
  `lname_reg_student` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'นามสกุลนักเรียน',
  `gender_reg_student` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เพศ',
  `ssn_reg_student` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เลขบัตรประจำตัวประชาชน',
  `birthday_reg_student` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'วัน/เดือน/ปีเกิด',
  `address_reg_student` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่',
  `province_reg_student` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'จังหวัด',
  `district_reg_student` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อำเภอ',
  `subdistrict_reg_student` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำบล',
  `postcode_reg_student` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสไปรษณีย์',
  `tell_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `email_reg_student` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email นักเรียน',
  `semester_reg_student` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ปีที่เข้าศึกษา',
  `class_reg_student` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชั้น ม.',
  `room_reg_student` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ห้องนักเรียน',
  `oldschool_reg_student` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สถานศึกษาเดิมที่จบ',
  `address1_reg_student` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `father_reg_student` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อบิดา',
  `prof_reg_student` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อาชีพ',
  `father_tell_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรบิดา',
  `mother_reg_student` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อมารดา',
  `prom_reg_student` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อาชีพ',
  `mother_tell_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรมารดา',
  `password_reg_student` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'Not Null' COMMENT 'รหัสผ่านนักเรียน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางข้อมูลนักเรียน';

--
-- Dumping data for table `reg_student`
--

INSERT INTO `reg_student` (`id_reg_student`, `title_reg_student`, `fname_reg_student`, `lname_reg_student`, `gender_reg_student`, `ssn_reg_student`, `birthday_reg_student`, `address_reg_student`, `province_reg_student`, `district_reg_student`, `subdistrict_reg_student`, `postcode_reg_student`, `tell_reg_student`, `email_reg_student`, `semester_reg_student`, `class_reg_student`, `room_reg_student`, `oldschool_reg_student`, `address1_reg_student`, `father_reg_student`, `prof_reg_student`, `father_tell_reg_student`, `mother_reg_student`, `prom_reg_student`, `mother_tell_reg_student`, `password_reg_student`) VALUES
('13811', 'เด็กหญิง', 'ปนิดา', 'คำพิเนตร', 'หญิง', '1234567890987', '13/10/2534', '123 ม.3', 'หนองคาย', 'เมือง', 'หนองคาย', '45554', '0987654321', 'bung@mail.com', '2558', '1', '1', 'โรงเรียนหนองคายวิทยาคม', '123 ม.3', 'นายแดง เขียว', 'ทำนา', '0987654321', 'นางเขียว เหลืองแดง', 'ทำนา', '0987654321', '1234567890987'),
('13821', 'เด็กชาย', 'ธัญวุฒ', 'อุทัยคราม', 'ชาย', '145992233443', '24/10/2542', '395 ม.1', 'ร้อยเอ็ด', 'จตุรพักตรพิมาน', 'หัวช้าง', '45180', '0987654321', 'ter@mail.com', '2556', '3', '10', 'โรงเรียนพระกุมารร้อยเอ็ด', '395 ม.1 ต.หัวช้าง อ.จตุรพักตรพิมาน จ.ร้อยเอ็ด 45180', 'นายอำนาจ อุทัยคราม', 'ทำนา', '0801772526', 'วริศรา อุทัยคราม', 'พนักงานบัญชี', '0987654321', '145992233443'),
('13823', 'เด็กหญิง', 'เสาวลักษ์', 'ยรรยงค์', 'หญิง', '1234567890987', '04/01/2535', '1234555', 'หนองคาย', 'เมือง', 'หนองคาย', '45554', '0987654321', 'ying@mail.com', '2558', '2', '1', 'โรงเรียนหนองคายวิทยาคม', '12345', 'นายแดง แป๊ดแล๊ด', 'ทำนา', '0987654321', 'นางเขียน เหลืองแดง', 'ทำนา', '0987654321', '1234567890987'),
('138230', 'นางสาว', 'ลัคนา', 'วรแสง', 'หญิง', '1234567890987', '04/01/2535', '1234555', 'ขอนแก่น', 'ชุมแพร', 'ชุมแพร', '45554', '0987654321', 'ploy@mail.com', '2558', '5', '1', 'โรงเรียนชุมแพรวิทยาคม', '12345', 'นายแดง แป๊ดแล๊ด', 'ทำนา', '0987654321', 'นางเขียน เหลืองแดง', 'ทำนา', '0987654321', '1234567890987'),
('138240', 'นาย', 'อวิรุทธิ์', 'หล้าดวงดี', 'ชาย', '1234567890987', '04/01/2535', '1234555', 'ขอนแก่น', 'บ้านไผ่', 'บ้านไผ่', '45554', '0987654321', 'ploy@mail.com', '2558', '6', '1', 'โรงเรียนบ้านไผ่วิทยาคม', '12345', 'นายแดง แป๊ดแล๊ด', 'ทำนา', '0987654321', 'นางเขียน เหลืองแดง', 'ทำนา', '0987654321', '1234567890987'),
('13829', 'นาย', 'เกษมสันต์', 'อุทัยคราม', 'ชาย', '1450400136826', '16/10/2535', '12 ม.1', 'ร้อยเอ็ด', 'จตุรพักตรพิมาน', 'หัวช้าง', '45180', '0807557387', 'mkasameson@gmail.com', '2558', '4', '1', 'โรงเรียนจตุรพักตรพิมานรัชดาภิเษก', '38/1 ม.1 ต.หัวช้าง อ.จตุรพักตรพิมาน จ.ร้อยเอ็ด\n45180', 'นายสัมภาษณ์ พลมนตรี', 'ทำนา', '0987654321', 'นางวาสนา เบาว์ยิ่ง', 'ทำนา', '0833341294', '1450400136826'),
('14599', 'เด็กหญิง', 'พรรณธิชา', 'ด่านวันดี', 'หญิง', '1234567890987', '24/01/2539', '134 ม.9', 'ร้อยเอ็ด', 'จตุรพักตรพิมาน', 'หัวช้าง', '45180', '0987654321', 'vvv@mail.com', '2558', '4', '2', 'โรงเรียน', '11222', 'asdf', 'asas', 'ssa', 'asa', 'asa', 'sasa', '1234567890987');

-- --------------------------------------------------------

--
-- Table structure for table `reg_teather`
--

CREATE TABLE IF NOT EXISTS `reg_teather` (
  `id_reg_teather` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสครู',
  `title_reg_teather` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำนำหน้าชื่อ',
  `fname_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ',
  `lname_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'นามสกุล',
  `rank_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำแหน่ง',
  `education_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ระดับการศึกษา',
  `ssn_reg_teather` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เลขที่บัตรประชาชน',
  `address_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่',
  `province_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'จังหวัด',
  `district_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อำเภอ',
  `subdistrict_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำบล',
  `tell_reg_teather` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `address1_reg_teather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `birthday_reg_teathercol` date DEFAULT NULL COMMENT 'วัน/เดือน/ปีเกิด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางข้อมูลครู';

-- --------------------------------------------------------

--
-- Table structure for table `semater_trem`
--

CREATE TABLE IF NOT EXISTS `semater_trem` (
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสปีการศึกษา',
  `semater` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ปีการศึกษา',
  `trem` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ภาคเรียน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ภาคเรียนปีการศึกษา';

-- --------------------------------------------------------

--
-- Table structure for table `sent_assignments`
--

CREATE TABLE IF NOT EXISTS `sent_assignments` (
  `id_sent_assignments` int(11) NOT NULL COMMENT 'รหัสการส่งงาน',
  `data_sent_assignments` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ข้อมูลการส่งงาน',
  `date_sent_assignments` date DEFAULT NULL COMMENT 'วันที่ส่งงาน',
  `id_assignments` int(11) DEFAULT NULL COMMENT 'รหัสการสั่งงาน Fk ตาราง assignments',
  `id_semate_tremr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสปีการศึกษาภาคเรียน Fk ตาราง semater_trem',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสครู Fk ตาราง reg_teacher',
  `id_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสนักเรียน Fk ตาราง reg_student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางการส่งงาน';

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE IF NOT EXISTS `study` (
  `id_study` int(11) NOT NULL COMMENT 'ลำดับ',
  `study` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'การมาเรียน',
  `date_study` date DEFAULT NULL COMMENT 'วันที่มาเรียน',
  `id_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสนักเรียน Fk ตาราง reg_student',
  `id_major` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสภาคเรียนปีการศึกษา Fk ตาราง semater_trem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางการมาเรียน';

-- --------------------------------------------------------

--
-- Table structure for table `subject_student`
--

CREATE TABLE IF NOT EXISTS `subject_student` (
  `id_subject_student` int(11) NOT NULL COMMENT 'ลำดับ',
  `id_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสนักเรียน Fk ตาราง reg_student',
  `id_major` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสปีการศึกษาภาคเรียน Fk ตาราง semater_trem',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสครู Fk ตาราง reg_teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางวิชาที่เรียน';

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher`
--

CREATE TABLE IF NOT EXISTS `subject_teacher` (
  `id_subject_teacher` int(11) NOT NULL COMMENT 'ลำดับ',
  `id_reg_teacher` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสครู Fk ตาราง reg_teacher',
  `id_major` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสภาคเรียนปีการศึกษา Fk ตาราง semater_trem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางวิชาที่สอน';

-- --------------------------------------------------------

--
-- Table structure for table `sumgrade`
--

CREATE TABLE IF NOT EXISTS `sumgrade` (
  `id_sum_grade` int(11) NOT NULL COMMENT 'ลำดับ',
  `id_major` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสวิชา Fk ตาราง major',
  `id_semater_trem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ปีการศึกษา',
  `grades` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ผลการเรียน',
  `id_reg_student` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสนักเรียน Fk ตารางนักเรียน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ผลการเรียน';

-- --------------------------------------------------------

--
-- Table structure for table `test_img`
--

CREATE TABLE IF NOT EXISTS `test_img` (
  `id_img` int(11) NOT NULL,
  `img_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_img`
--

INSERT INTO `test_img` (`id_img`, `img_name`, `img_file`) VALUES
(1, '12344', '1440637655Capture.PNG'),
(2, '4444', '1440637956Capture.PNG'),
(3, 'wwwww', '1440642720Capture.PNG'),
(4, 'aaaaa', '1440986055ssss.PNG'),
(5, '157', '1441121685ssss.PNG');

-- --------------------------------------------------------

--
-- Structure for view `miss_study`
--
DROP TABLE IF EXISTS `miss_study`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `miss_study` AS select `study`.`id_study` AS `id_study`,`study`.`study` AS `study`,`study`.`date_study` AS `date_study`,`study`.`id_reg_student` AS `id_reg_student`,`study`.`id_major` AS `id_major`,`study`.`id_semater_trem` AS `id_semater_trem` from `study`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id_assignments`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_documents`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id_major`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `reg_student`
--
ALTER TABLE `reg_student`
  ADD PRIMARY KEY (`id_reg_student`);

--
-- Indexes for table `reg_teather`
--
ALTER TABLE `reg_teather`
  ADD PRIMARY KEY (`id_reg_teather`);

--
-- Indexes for table `semater_trem`
--
ALTER TABLE `semater_trem`
  ADD PRIMARY KEY (`id_semater_trem`);

--
-- Indexes for table `sent_assignments`
--
ALTER TABLE `sent_assignments`
  ADD PRIMARY KEY (`id_sent_assignments`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`id_study`);

--
-- Indexes for table `subject_student`
--
ALTER TABLE `subject_student`
  ADD PRIMARY KEY (`id_subject_student`);

--
-- Indexes for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD PRIMARY KEY (`id_subject_teacher`);

--
-- Indexes for table `sumgrade`
--
ALTER TABLE `sumgrade`
  ADD PRIMARY KEY (`id_sum_grade`);

--
-- Indexes for table `test_img`
--
ALTER TABLE `test_img`
  ADD PRIMARY KEY (`id_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_documents` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสเอกสารการสอน';
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสข่าว';
--
-- AUTO_INCREMENT for table `sent_assignments`
--
ALTER TABLE `sent_assignments`
  MODIFY `id_sent_assignments` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการส่งงาน';
--
-- AUTO_INCREMENT for table `study`
--
ALTER TABLE `study`
  MODIFY `id_study` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ';
--
-- AUTO_INCREMENT for table `subject_student`
--
ALTER TABLE `subject_student`
  MODIFY `id_subject_student` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ';
--
-- AUTO_INCREMENT for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `id_subject_teacher` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ';
--
-- AUTO_INCREMENT for table `sumgrade`
--
ALTER TABLE `sumgrade`
  MODIFY `id_sum_grade` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ';
--
-- AUTO_INCREMENT for table `test_img`
--
ALTER TABLE `test_img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
