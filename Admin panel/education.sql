-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2016 at 12:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fedenaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence` (
  `attendence_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendence_date` date NOT NULL,
  `attended` int(11) NOT NULL,
  `attendence_reason` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`attendence_id`, `school_id`, `standard_id`, `student_id`, `attendence_date`, `attended`, `attendence_reason`, `on_date`) VALUES
(1, 7, 13, 7, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(2, 7, 13, 15, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(3, 7, 13, 8, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(4, 8, 8, 1, '2016-04-18', 1, '', '2016-04-18 06:04:27'),
(5, 8, 8, 2, '2016-04-18', 1, '', '2016-04-18 06:04:27'),
(6, 8, 8, 3, '2016-04-18', 0, 'not well', '2016-04-18 06:04:27'),
(7, 8, 9, 4, '2016-04-25', 1, '', '2016-04-24 06:35:00'),
(8, 8, 9, 20, '2016-04-25', 1, '', '2016-04-24 06:35:00'),
(9, 7, 13, 7, '2016-04-25', 1, '', '2016-04-24 07:57:43'),
(10, 7, 13, 8, '2016-04-25', 1, '', '2016-04-24 07:57:43'),
(11, 7, 13, 15, '2016-04-25', 0, 'not well', '2016-04-24 07:57:43'),
(12, 7, 14, 9, '2016-04-25', 1, '', '2016-04-24 07:58:02'),
(13, 7, 14, 13, '2016-04-25', 0, 'not good', '2016-04-24 07:58:02'),
(14, 7, 14, 16, '2016-04-25', 1, '', '2016-04-24 07:58:02'),
(21, 7, 13, 7, '2016-04-26', 1, '', '2016-04-24 08:29:47'),
(22, 7, 13, 8, '2016-04-26', 1, '', '2016-04-24 08:29:47'),
(23, 7, 13, 15, '2016-04-26', 0, 'not well', '2016-04-24 08:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `demo_enquiry`
--

DROP TABLE IF EXISTS `demo_enquiry`;
CREATE TABLE `demo_enquiry` (
  `demo_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_enquiry`
--

INSERT INTO `demo_enquiry` (`demo_id`, `name`, `email`, `phone`, `subject`, `message`, `on_date`) VALUES
(1, 'nirav', 'test@gmail.com', '9825858585', 'test', 'test', '2016-04-30 14:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `event_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `event_description` longtext CHARACTER SET utf8 NOT NULL,
  `event_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `event_start` date NOT NULL,
  `event_end` date NOT NULL,
  `event_status` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `school_id`, `event_title`, `event_description`, `event_image`, `event_start`, `event_end`, `event_status`, `on_date`) VALUES
(1, 7, 'Exam paper written seminar', 'we are organize on student exam paper writing seminar at our school and we organize all type of examination preparation of all of student.', '', '2016-04-15', '2016-04-30', 1, '2016-04-12 15:01:53'),
(2, 7, 'annual program', 'we organize in annual function in our school..participated student please come to one day before you come in the school.', '', '2016-04-13', '2016-04-13', 1, '2016-04-12 15:04:07'),
(4, 8, 'fairwell party', 'we organize annual function and fair well party for detained student . so please come to our school and attain all program.', '', '2016-04-20', '2016-04-21', 1, '2016-04-13 05:00:09'),
(5, 8, 'test', 'test event', '', '2016-04-20', '2016-04-23', 1, '2016-04-13 05:00:26'),
(6, 7, 'test', 'test event for school1', '', '2016-04-25', '2016-04-27', 1, '2016-04-13 05:03:03'),
(9, 7, 'vegetable event', '1test vegetable event for all student in sayona school', 'slider2.jpg', '2016-04-14', '2016-04-15', 1, '2016-04-23 08:23:19'),
(10, 7, 'test', 'test', '', '2016-04-25', '2016-04-28', 1, '2016-04-23 13:41:28'),
(11, 8, 'test today event', 'test today event', '', '2016-04-24', '2016-04-24', 1, '2016-04-24 11:32:03'),
(12, 8, 'test today  and tommoro', 'teoday and tomorrow', '', '2016-04-24', '2016-04-26', 1, '2016-04-24 11:38:37'),
(13, 7, 'Diwali Rangoli Festival', 'Date : 25/10/2016 Rangoli function at play area at 11:00 Am.', 'ic_logo.png', '2016-10-25', '2016-10-26', 1, '2016-10-20 13:18:14'),
(14, 7, 'Diwali Rangoli Festival  Woman', 'Date : 25/10/2016 Rangoli function at play area at 11:00 Am.', 'casva.png', '2016-10-25', '2016-10-26', 1, '2016-10-20 13:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `exam_note` varchar(100) CHARACTER SET utf8 NOT NULL,
  `exam_status` int(11) NOT NULL,
  `exam_standard` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `school_id`, `exam_title`, `exam_note`, `exam_status`, `exam_standard`, `exam_date`, `on_date`) VALUES
(1, 8, 'monthaly test', 'monthaly test', 0, 9, '2016-01-12', '2016-04-15 06:13:37'),
(2, 8, 'english test', 'english test', 0, 8, '2016-04-13', '2016-04-15 06:16:14'),
(3, 7, 'monthaly test', 'we can held this exam on next month', 0, 13, '2016-05-12', '2016-04-15 06:22:40'),
(4, 7, 'math test', 'this test held on any time and any date because this is test exam in surprice test', 0, 3, '2016-12-12', '2016-04-15 06:24:38'),
(5, 7, 'test exam', 'test exam', 0, 3, '2016-04-23', '2016-04-15 06:30:46'),
(6, 7, 'first test', 'first test for h.k.g in sayona school.', 0, 14, '2012-02-12', '2016-04-15 08:23:58'),
(7, 7, 'second test', 'second test for h.k.g in sayona school', 0, 1, '2012-12-12', '2016-04-15 10:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result` (
  `exam_result_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mark_obtain` varchar(100) CHARACTER SET utf8 NOT NULL,
  `total_mark` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`exam_result_id`, `exam_id`, `student_id`, `subject`, `mark_obtain`, `total_mark`, `on_date`) VALUES
(1, 6, 9, 'gujarati', '23', '50', '2016-04-15 09:21:06'),
(2, 6, 13, 'gujarati', '26', '50', '2016-04-15 09:22:32'),
(3, 6, 13, 'hindi', '27', '50', '2016-04-15 09:25:11'),
(10, 6, 9, 'hindi', '25', '50', '2016-04-15 09:46:29'),
(11, 2, 1, 'gujarati', '36', '50', '2016-04-15 10:31:10'),
(12, 2, 2, 'gujarati', '23', '50', '2016-04-15 10:31:23'),
(13, 2, 3, 'gujarati', '23', '50', '2016-04-15 10:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `holiday_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `holiday_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `school_id`, `holiday_title`, `holiday_date`) VALUES
(1, 8, 'gandhi jayanti', '2016-04-25'),
(2, 8, 'krismas day', '2016-06-16'),
(3, 8, 'test holiday', '2016-04-26'),
(4, 7, 'gandhi jayanti', '2016-04-25'),
(5, 7, 'monson start', '2016-06-30'),
(6, 7, 'mehta bhuvan', '2016-05-02'),
(7, 7, 'makar sankraanti', '2016-06-23'),
(8, 7, 'testing day', '2016-06-12'),
(9, 7, 'modiji birthday', '2016-05-25'),
(10, 8, 'test holiday', '2016-04-01'),
(11, 8, 'shitla satam', '2016-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

DROP TABLE IF EXISTS `notice_board`;
CREATE TABLE `notice_board` (
  `notice_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `notice_description` longtext CHARACTER SET utf8 NOT NULL,
  `notice_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `notice_status` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `school_id`, `notice_description`, `notice_type`, `notice_status`, `on_date`) VALUES
(1, 7, 'tomorrow 20-04-2016 is holiday because tomorrow is Gandhi jay anti.so please inform all student and all parent', 'holiday', 1, '2016-04-18 07:15:05'),
(2, 7, 'our school organize meting on 25-04-2016.\r\nso all parent must be prensent on that dat.\r\ntime: 12:10 am\r\ndate: 25-04-2016', 'meating', 1, '2016-04-18 07:16:39'),
(3, 7, 'please present all student to next sunday', 'other', 0, '2016-04-18 07:17:15'),
(4, 7, 'all student please verify your exam result in 25-04-2016 to 28-04-2016.', 'circular', 1, '2016-04-18 08:38:51'),
(5, 8, 'date: 25-04-2016 is holiday because that day is our school mainatin on server side and lab releted', 'holiday', 1, '2016-04-18 08:40:20'),
(7, 8, 'this is notice for only standard 10 student..plase present all standard student for next sunday itsw an surprice test held for any subject', 'other', 1, '2016-04-18 08:53:11'),
(8, 8, 'test other notice', 'other', 1, '2016-04-18 09:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `school_detail`
--

DROP TABLE IF EXISTS `school_detail`;
CREATE TABLE `school_detail` (
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_state` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_postal_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_phone1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_phone2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_fax` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_logo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_person_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_detail`
--

INSERT INTO `school_detail` (`school_id`, `user_id`, `school_name`, `school_address`, `school_state`, `school_city`, `school_postal_code`, `school_phone1`, `school_phone2`, `school_email`, `school_fax`, `school_logo`, `school_person_name`) VALUES
(1, 7, 'sayona school', 'nr.st bus stand, sanala road, morbi', '', 'morbi', '', '9125896325', '9696589630', 'sayonaschoolmorbi@gmail.com', '', 'school.jpg', 'mahavis sinh'),
(4, 8, 'navyug vidhyalay', 'nr. chitrakut society, b/h st bus stand, morbi', '', 'morbi', '', '9615896320', '', 'navyugvidhyalay@yahoo.com', '', '14454012981436168479.jpg', 'ansoya ben');

-- --------------------------------------------------------

--
-- Table structure for table `school_student_chat`
--

DROP TABLE IF EXISTS `school_student_chat`;
CREATE TABLE `school_student_chat` (
  `chat_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reply` varchar(200) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_student_chat`
--

INSERT INTO `school_student_chat` (`chat_id`, `student_id`, `school_id`, `message`, `subject`, `reply`, `on_date`) VALUES
(1, 5, 7, 'tomorrow is my birthday..so i celebrate my birthday in school..?', 'birthday', '', '2016-04-24 08:52:24'),
(2, 1, 8, 'hi this is my test message', 'test', '', '2016-04-24 08:54:48'),
(3, 6, 7, 'can we celabrate all event in next week..?', 'event week', '<p>yes we celebrate</p>', '2016-04-24 08:55:25'),
(5, 7, 7, 'i am not good today so i will not come to the school. please inform to my class teacher', 'not well today', '<p>okay, care your heath.</p>', '2016-04-24 09:20:01'),
(6, 9, 7, 'hi this is my firs birthday to celebrat in school..?', 'celebrate birthdat', '<p>okay you can celebrate your birthday in school</p>', '2016-04-25 09:24:38'),
(7, 20, 8, 'my school bus is not come to the time in morning can you help and solve my problem please...?', 'school bus', '<p>oky..your school bus will be come to the time to time on tomorrow.</p>', '2016-04-24 09:36:28'),
(8, 7, 7, 'exam time and date with subject name.', 'sir, final exam date?', '<p>Exam start Next Monday 9:30 To 11:00 Mathas paper.</p>', '2016-10-20 10:13:24'),
(9, 7, 7, 'my family plan to visit Singapore summer holiday.', 'summer holiday date.?', '<p>Summer holiday start Date : 02/02/2016 To 08/02/2016.</p>', '2016-10-20 10:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard` (
  `standard_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `standard_title` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard`
--

INSERT INTO `standard` (`standard_id`, `school_id`, `standard_title`) VALUES
(1, 7, '1'),
(2, 7, '2'),
(3, 7, '3'),
(4, 7, '4'),
(5, 7, '5'),
(6, 7, '6'),
(7, 7, '7'),
(8, 8, '8'),
(9, 8, '9'),
(10, 8, '10'),
(12, 8, '7'),
(13, 7, 'L.K.G'),
(14, 7, 'H.K.G'),
(15, 7, '8'),
(16, 7, '9'),
(17, 7, '10');

-- --------------------------------------------------------

--
-- Table structure for table `student_detail`
--

DROP TABLE IF EXISTS `student_detail`;
CREATE TABLE `student_detail` (
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_user_name` varchar(100) NOT NULL,
  `student_status` int(11) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_orgpassword` varchar(100) NOT NULL,
  `student_unique_no` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_birthdate` date NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `student_standard` int(11) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_city` varchar(100) NOT NULL,
  `student_phone` varchar(50) NOT NULL,
  `student_parent_phone` varchar(50) NOT NULL,
  `student_enr_no` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_photo` varchar(100) NOT NULL,
  `student_branch` varchar(100) NOT NULL,
  `student_semester` varchar(100) NOT NULL,
  `student_division` varchar(50) NOT NULL,
  `student_batch` varchar(50) NOT NULL,
  `gcm_code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_detail`
--

INSERT INTO `student_detail` (`student_id`, `school_id`, `student_user_name`, `student_status`, `student_password`, `student_orgpassword`, `student_unique_no`, `student_name`, `student_birthdate`, `student_roll_no`, `student_standard`, `student_address`, `student_city`, `student_phone`, `student_parent_phone`, `student_enr_no`, `student_email`, `student_photo`, `student_branch`, `student_semester`, `student_division`, `student_batch`, `gcm_code`) VALUES
(1, 8, 'nirav', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e22dc364ac', 'nirav patel', '2016-04-21', '1', 8, 'b/h vardhman apartment, alap road, satadhar park-2, morbi', 'morbi', '9696569630', '9696963652', '1', 'patelnirav@gmail.com', '14454052651436169016.png', 'computer', '1', 'a', 'morning', ''),
(2, 8, 'jayesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e231a92a07', 'jayesh kotadiya', '2016-04-08', '2', 8, 'b/h vardhman apartment, alap road, satadhar park-2, morbi', 'morbi', '9696569630', '', '', '', '', '', '', '', '', ''),
(3, 8, 'subhash', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e2483ae0b8', 'subhash sanghani', '2016-04-19', '3', 8, 'nr. bypass road,  sanala road, morbi', 'morbi', '9659636541', '', '', '', '144540526514361690161.png', '', '', '', '', ''),
(4, 8, 'gautam', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e2516a1dd4', 'gautam chadasana', '2016-04-21', '1', 9, 'chitrkut society, morbi', 'morbi', '9612596320', '', '', '', '', '', '', '', '', ''),
(5, 7, 'jagruti', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e254bf19cf', 'jagruti patel', '2016-04-09', '1', 1, 'behind vardhman apartment, alap road, morbi', 'morbi', '9612596256', '9636987563', '1', 'pateljagruti@gmail.com', '144540526514361690162.png', 'gujarati', '1', 'b', 'afternoon', ''),
(6, 7, 'manish', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f1d9307be8', 'manish pandya', '2016-04-18', '2', 1, 'at-mahendra nagar, nr cng petrol pump, morbi-2', 'morbi', '9636859630', '', '', '', '14454038951436170152.jpg', '', '', '', '', ''),
(7, 7, 'daxa', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f20d29a9c4', 'Daxa Parmar', '2016-04-10', '1', 13, 'sanala road, nr bypass road, morbi', 'morbi', '9258965230', '9869635696', '1', 'daxaparmar@gmail.com', '', '', '', '', '', 'eTAX_MFw8Y0:APA91bGBWC6C6A5mF_JtjZ6Pa3Rn3qqIk0-_Zl5JYN4jxVBuw2d8BpCg2cxGqmhKLqbKwO0-zft8hV__CYTg3GYGehhsY9uqjjbKzP_UwzMSmrWN99biQ6coJBSPK4sUPx4bumwaYXP6'),
(8, 7, 'meet', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f215b1f619', 'meet khavadiya', '2016-04-27', '2', 13, 'mahendranagar, morbi-2', 'morbi', '9696569630', '', '', '', '', '', '', '', '', ''),
(9, 7, 'akash', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f21ef8dbcd', 'akash patel', '2016-04-20', '1', 14, 'sakta sanala, morbi', 'morbi', '9612596256', '9636585630', '1', 'akashpatel@gmail.com', '14454012981436168479.jpg', 'gujarati', '1', 'a', 'morning', ''),
(10, 7, 'amit', 0, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f4cf672f74', 'amit panara', '1991-04-11', '1', 7, 'morbi-tankara road, tankara', 'morbi', '6935698560', '', '', '', '', '', '', '', '', ''),
(11, 7, 'test', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_57106dcf00a4c', 'test', '1991-12-31', '1', 2, 'morbi', 'morbi', '9696569630', '9696963652', '12', 'test@gmail.com', '144540389514361701521.jpg', 'hindi', '1', 'b', 'morning', ''),
(12, 7, 'gautam1', 0, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710741574633', 'gautam chadasana', '1991-12-12', '1', 16, 'morbi', 'morbi', '9621526963', '', '', '', '', '', '', '', '', ''),
(13, 7, 'nitish', 0, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710a56e706c1', 'nitish kumar', '1963-12-12', '2', 14, 'ravapar road, nr managlam medical , morbi', 'morbi', '9636859630', '', '', '', '', '', '', '', '', ''),
(14, 7, 'reshma', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710b0a9bd560', 'reshma patel', '1991-11-01', '1', 3, 'morbi-sanala road, lajai', 'morbi', '9369632587', '', '', '', '', '', '', '', '', ''),
(15, 7, 'nilesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160417_571311053cda1', 'nilesh goladhra', '1996-12-12', '5', 13, 'morbi', 'morbi', '9536985696', '', '', '', '', '', '', '', '', ''),
(16, 7, 'hitesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160417_571311296d1e0', 'hitesh virja', '1963-12-10', '6', 14, 'morbi', 'morbi', '9536985696', '', '', '', '', '', '', '', '', ''),
(17, 8, 'jayesh1', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714a58c326dc', 'jayesh sutariya', '1996-10-01', '5', 8, 'morbi', 'morbi', '9636961485', '', '', '', '', '', '', '', '', ''),
(18, 8, 'mahesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714a87bd8f0f', 'mahesh sitapara', '1996-03-01', '4', 8, 'at- lajai ravpar villege, morbi', 'morbi', '9364785963', '', '', '', '', '', '', '', '', ''),
(20, 8, 'chintan', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714bde01663b', 'chitan patel', '1996-03-06', '5', 9, 'morbi', 'morbi', '6935698560', '', '', '', '', '', '', '', '', ''),
(21, 8, 'test1', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714c2bf77de5', 'tets1', '2016-09-06', '1', 10, 'ravapr road morbi', 'morbi', '9625696325', '8956962478', '1', 'test@gmail.com', '', 'hindi', '1', 'b', 'morning', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_growth`
--

DROP TABLE IF EXISTS `student_growth`;
CREATE TABLE `student_growth` (
  `growth_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `month` varchar(100) NOT NULL,
  `growth` varchar(100) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_growth`
--

INSERT INTO `student_growth` (`growth_id`, `student_id`, `standard_id`, `month`, `growth`, `percentage`, `on_date`) VALUES
(1, 10, 7, 'January', 'average', '40', '2016-04-23 08:41:34'),
(9, 9, 14, 'February', 'good', '60', '2016-04-23 08:41:41'),
(11, 6, 1, 'February', 'average', '40', '2016-04-23 08:41:44'),
(12, 4, 9, 'January', 'excellent', '80', '2016-04-23 08:41:47'),
(13, 18, 8, 'January', 'everage', '40', '2016-04-23 08:41:50'),
(14, 18, 8, 'February', 'everage', '40', '2016-04-23 08:41:54'),
(17, 2, 8, 'April', 'everage', '40', '2016-04-23 08:41:57'),
(18, 2, 8, 'March', 'good', '60', '2016-04-23 08:42:00'),
(19, 1, 8, 'April', 'good', '60', '2016-04-23 08:42:03'),
(20, 1, 8, 'February', 'everage', '40', '2016-04-23 08:42:06'),
(21, 3, 8, 'April', 'good', '60', '2016-04-23 08:42:09'),
(23, 5, 1, 'April', 'best', '80', '2016-10-15 09:08:53'),
(24, 7, 13, 'January', 'good', '60', '2016-04-23 08:42:15'),
(26, 5, 1, 'January', 'Good', '60', '2016-10-15 09:08:11'),
(28, 8, 13, 'January', 'average', '40', '2016-04-23 08:50:12'),
(29, 16, 14, 'January', 'Bad', '15', '2016-04-25 10:18:50'),
(31, 16, 14, 'February', 'Medium', '28', '2016-04-25 10:14:46'),
(32, 16, 14, 'April', 'Good', '65', '2016-04-25 10:15:15'),
(33, 16, 14, 'May', 'Excellent', '85', '2016-04-25 10:16:02'),
(35, 5, 1, 'February', 'Average', '65', '2016-10-15 09:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_detail`
--

DROP TABLE IF EXISTS `teacher_detail`;
CREATE TABLE `teacher_detail` (
  `teacher_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL,
  `teacher_birthdate` date NOT NULL,
  `teacher_detail` longtext NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_phone` varchar(50) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `teacher_education` varchar(100) NOT NULL,
  `teacher_address` varchar(100) NOT NULL,
  `teacher_exp` varchar(100) NOT NULL,
  `teacher_notes` varchar(100) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_detail`
--

INSERT INTO `teacher_detail` (`teacher_id`, `school_id`, `teacher_name`, `gender`, `maritalstatus`, `teacher_birthdate`, `teacher_detail`, `teacher_image`, `teacher_phone`, `teacher_email`, `teacher_education`, `teacher_address`, `teacher_exp`, `teacher_notes`, `on_date`) VALUES
(1, 7, 'jagruti motka', 'female', 'single', '1991-04-09', '<p>standar : 8,9,10</p>\r\n\r\n<p>subject: gujarati, hindi and sanskrit..</p>\r\n\r\n<p>this is jagruti patel is good teacher for sanskrit and gujarati subject..she is special in extral all achivenent for our school</p>\r\n\r\n<p>&nbsp;</p>', '14454052651436169016.png', '9596254896', 'pateljagruti@gmail.com', 'M.A., B.ed', 'satadhar park-2, alap rasod, morbi', '2 year 6 month', 'paper taps in Gujarat board for Gujarati and Hindi subject', '2016-04-23 10:22:36'),
(2, 7, 'nirav patel', 'male', 'single', '1991-01-11', '<p>standard: 1 to 8</p>\r\n\r\n<p>subject : computer</p>\r\n\r\n<p>this is only one teacher in computer education he is very good knowledge of computer</p>', '14454012981436168479.jpg', '9692584596', '', 'bca,mca', 'sanala road, morbi', '1 year and 6 month', '', '2016-04-23 10:26:01'),
(3, 8, 'gautam ladani', 'male', 'married', '1990-11-01', '<p>standard: 1 to 6</p>\r\n\r\n<p>subject : gujarati</p>', '14454012981436168479.jpg', '9562587412', 'gautamladani@gmail.com', 'b.a', 'chitrakut society , morbi', '6 month', '', '2016-04-23 11:01:44'),
(4, 8, 'monika savani', 'female', 'married', '1998-09-15', '<p>standard: 11, 12 arts</p>\r\n\r\n<p>subject: english, social samaj</p>', '', '9632596858', '', 'M.A., B.ed', 'at- lajai, tankar road, morbi', '2 year 8 month', '', '2016-04-23 11:03:57'),
(6, 7, 'test1', 'female', 'married', '2016-02-21', '<p>test1</p>', '14454038951436170152.jpg', '96325968581', 'test1@gmail.com', 'ba, ma', 'morbi1', '1 year 6 month', 'extra1', '2016-04-23 12:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `top_student`
--

DROP TABLE IF EXISTS `top_student`;
CREATE TABLE `top_student` (
  `top_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_rank` varchar(50) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_student`
--

INSERT INTO `top_student` (`top_id`, `student_id`, `standard_id`, `school_id`, `student_rank`, `on_date`) VALUES
(22, 9, 14, 7, '3', '2016-05-02 04:19:27'),
(23, 13, 14, 7, '2', '2016-05-02 04:19:27'),
(24, 16, 14, 7, '1', '2016-05-02 04:19:27'),
(28, 7, 13, 7, '1', '2016-05-02 04:21:57'),
(29, 8, 13, 7, '3', '2016-05-02 04:21:57'),
(30, 15, 13, 7, '2', '2016-05-02 04:21:57'),
(35, 1, 8, 8, '3', '2016-05-02 04:23:16'),
(36, 2, 8, 8, '2', '2016-05-02 04:23:16'),
(37, 3, 8, 8, '1', '2016-05-02 04:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(300) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_type_id`, `user_status`, `user_image`, `on_date`) VALUES
(1, 'admin', 'ede997b0caf2ec398110d79d9eba38bb', 0, 1, 'women_gym_workout_wallpaper1.jpg', '2016-04-11 12:04:28'),
(7, 'school', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-11 12:04:28'),
(8, 'school of commerce', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-12 05:49:57'),
(9, 'school of arts', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-18 06:22:43'),
(10, 'school of computer', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:48:20'),
(11, 'school of pharmacy', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:49:03'),
(12, 'school of management', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:49:25'),
(13, 'school of engineering', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:50:31'),
(14, 'school of primary', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:51:11'),
(15, 'school  of higher secondary', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type_title` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_title`) VALUES
(1, 'School');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_access`
--

DROP TABLE IF EXISTS `user_type_access`;
CREATE TABLE `user_type_access` (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `method` varchar(30) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_access`
--

INSERT INTO `user_type_access` (`user_type_id`, `class`, `method`, `access`) VALUES
(0, 'admin', '*', 1),
(0, 'requestdemo', '*', 1),
(0, 'users', '*', 1),
(1, 'attendence', '*', 1),
(1, 'chat', '*', 1),
(1, 'event', '*', 1),
(1, 'exam', '*', 1),
(1, 'examresult', '*', 1),
(1, 'growth', '*', 1),
(1, 'holiday', '*', 1),
(1, 'noticeboard', '*', 1),
(1, 'school', '*', 1),
(1, 'standard', '*', 1),
(1, 'student', '*', 1),
(1, 'teacher', '*', 1),
(1, 'topstudent', '*', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`attendence_id`),
  ADD UNIQUE KEY `standard_id` (`standard_id`,`student_id`,`attendence_date`);

--
-- Indexes for table `demo_enquiry`
--
ALTER TABLE `demo_enquiry`
  ADD PRIMARY KEY (`demo_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`exam_result_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `school_detail`
--
ALTER TABLE `school_detail`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `school_student_chat`
--
ALTER TABLE `school_student_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`standard_id`);

--
-- Indexes for table `student_detail`
--
ALTER TABLE `student_detail`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_roll_no` (`student_roll_no`,`student_standard`),
  ADD UNIQUE KEY `student_roll_no_2` (`student_roll_no`,`student_standard`),
  ADD UNIQUE KEY `student_user_name` (`student_user_name`);

--
-- Indexes for table `student_growth`
--
ALTER TABLE `student_growth`
  ADD PRIMARY KEY (`growth_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`month`);

--
-- Indexes for table `teacher_detail`
--
ALTER TABLE `teacher_detail`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `top_student`
--
ALTER TABLE `top_student`
  ADD PRIMARY KEY (`top_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`standard_id`,`school_id`,`student_rank`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `user_type_access`
--
ALTER TABLE `user_type_access`
  ADD UNIQUE KEY `user_type_id` (`user_type_id`,`class`,`method`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `attendence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `demo_enquiry`
--
ALTER TABLE `demo_enquiry`
  MODIFY `demo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `exam_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `school_detail`
--
ALTER TABLE `school_detail`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school_student_chat`
--
ALTER TABLE `school_student_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `standard`
--
ALTER TABLE `standard`
  MODIFY `standard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `student_detail`
--
ALTER TABLE `student_detail`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `student_growth`
--
ALTER TABLE `student_growth`
  MODIFY `growth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `teacher_detail`
--
ALTER TABLE `teacher_detail`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `top_student`
--
ALTER TABLE `top_student`
  MODIFY `top_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
