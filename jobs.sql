-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 04:43 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `mobile`, `active`, `isdelete`, `created_by`, `created_at`, `updated_at`, `updated_by`, `user_id`) VALUES
(1, 'محمد غالي', 'mhd@gmail.com', '0599535535', 1, 0, 0, '0000-00-00 00:00:00', '2018-04-25 13:23:39', 1, 0),
(2, 'ياسر أبو زهري', 'yaser@abuzuhri.com', '0599747474', 0, 0, 1, '2018-04-25 13:17:19', '2018-04-25 13:23:41', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `admin_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`, `isdelete`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'ادارة', 1, 0, '2018-04-23 13:22:57', '2018-04-25 12:47:23', 1, 1),
(2, 'محاسبة', 1, 0, '2018-04-23 13:29:57', '2018-04-25 12:46:16', 1, 1),
(3, 'هندسة', 1, 0, '2018-04-23 13:30:06', '2018-04-25 12:46:54', 1, 1),
(4, 'تكنولوجيا معلومات', 1, 0, '2018-04-23 13:30:19', '2018-04-25 12:46:57', 1, 1),
(5, 'علوم', 1, 0, '2018-04-23 13:30:23', '2018-04-23 13:52:41', 1, 1),
(6, 'طب', 1, 0, '2018-04-23 13:30:27', '2018-04-23 13:52:40', 1, 1),
(7, 'تبريد وتكييف', 1, 1, '2018-04-25 12:53:23', '2018-04-25 13:02:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `details`, `logo`, `email`, `mobile`, `address`, `created_at`, `updated_at`, `active`, `updated_by`, `user_id`) VALUES
(1, 'Vision Plus', 'وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا ', '', 'info@visionplus.ps', '082884888', 'غزة الرمال', '2018-04-25 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `company_id`, `details`, `category_id`, `job_type_id`, `from_date`, `to_date`, `active`, `isdelete`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'محاسب قانوني', 1, 'مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب ', 1, 1, '2018-04-25', '2018-04-30', 1, 0, '2018-04-25 00:00:00', '2018-04-25 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `name`) VALUES
(1, 'دوام كامل'),
(2, 'دوام جزئي');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `showinmenu` tinyint(1) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `link_type`
--

CREATE TABLE `link_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link_type`
--

INSERT INTO `link_type` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'company'),
(3, 'seeker');

-- --------------------------------------------------------

--
-- Table structure for table `seeker`
--

CREATE TABLE `seeker` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seeker`
--

INSERT INTO `seeker` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `created_at`, `updated_at`, `updated_by`, `active`, `address`, `cv`, `user_id`) VALUES
(1, 'محمد', 'mhd@aa.com', '0599626226', 'M', '1982-04-02', '2018-04-25 00:00:00', NULL, NULL, 1, 'غزة الصبرة', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_link`
--
ALTER TABLE `admin_link`
  ADD PRIMARY KEY (`admin_id`,`link_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_type`
--
ALTER TABLE `link_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeker`
--
ALTER TABLE `seeker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link_type`
--
ALTER TABLE `link_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seeker`
--
ALTER TABLE `seeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
