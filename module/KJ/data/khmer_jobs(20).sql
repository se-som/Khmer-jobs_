-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2013 at 06:28 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `khmer_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_calendar`
--

CREATE TABLE IF NOT EXISTS `a_calendar` (
  `id_cal` int(11) NOT NULL DEFAULT '0',
  `cal_date` date DEFAULT NULL,
  `cal_event` text,
  `user_id` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cal`),
  KEY `user_id` (`user_id`),
  KEY `com_id` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `a_company`
--

CREATE TABLE IF NOT EXISTS `a_company` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `approve` tinyint(1) NOT NULL,
  `com_name` varchar(1000) NOT NULL,
  `com_location` varchar(1000) NOT NULL,
  `com_phone` varchar(15) NOT NULL,
  `com_email` varchar(1000) NOT NULL,
  `com_web` varchar(1000) NOT NULL,
  PRIMARY KEY (`com_id`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `a_company`
--

INSERT INTO `a_company` (`com_id`, `user_id`, `approve`, `com_name`, `com_location`, `com_phone`, `com_email`, `com_web`) VALUES
(211, 479, 0, 'mapring', 'phnom penh', '012 32 12 13', 'mapringinfo@gmail.com', 'www.mapring.com'),
(214, 586, 1, 'ABC', 'PP', '098 76 98 90', 'abc@info.com', 'www.abc.com'),
(218, 592, 1, 'kaka.co.ltd', 'Kch', '098 78 79 80', 'kaka@info.com', 'www.kaka.com');

-- --------------------------------------------------------

--
-- Table structure for table `a_cover`
--

CREATE TABLE IF NOT EXISTS `a_cover` (
  `cover_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `cover_name` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `organize` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `sign_name` varchar(1000) NOT NULL,
  `cover_desc` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cover_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data for table `a_cover`
--

INSERT INTO `a_cover` (`cover_id`, `date`, `cover_name`, `title`, `organize`, `address`, `sign_name`, `cover_desc`, `user_id`) VALUES
(241, '2012-10-10', 'kirikou', 'no title', 'Mapring Com', 'pp', 'kirikou', 'Dear Kagnara\r\n\r\nI am writing in response to your posting on the State of Michigan Vacancy Posting site \r\nfor the Human Resources Analyst position. I believe my qualifications make me an <br />excellent candidate for the position.I possess more than seven years of human resources experience in recruitment and staffing, benefits administration, and workforce planning. Throughout my career I have <br />demonstrated the ability to establish excellent client relationships and to develop and <br />implement innovative solutions to address a wide variety of human resources <br />challenges. \r\n\r\nI have excellent organizational abilities and strong decision-making skills.<br />Enclosed is my résumé for your review. I would appreciate the chance to meet with you <br />to discuss the ways in which I can help the Department of ABC achieve its goals and <br />objectives. I can be reached at the phone numbers listed on my résumé.<br />Thank you for your time and consideration.\r\n\r\nSincerely', 589),
(242, '2012-12-12', 'apple', 'no apple', 'Allweb', 'phnom penyh', 'apple', '<p>Dear Ms. Smith:<br />I am writing in response to your posting on the State of Michigan Vacancy Posting site <br />for the Human Resources Analyst position. I believe my qualifications make me an <br />excellent candidate for the position.<br />I possess more than seven years of human resources experience in recruitment and <br />staffing, benefits administration, and workforce planning. Throughout my career I have <br />demonstrated the ability to establish excellent client relationships and to develop and <br />implement innovative solutions to address a wide variety of human resources <br />challenges. I have excellent organizational abilities and strong decision-making skills.<br />Enclosed is my résumé for your review. I would appreciate the chance to meet with you <br />to discuss the ways in which I can help the Department of ABC achieve its goals and <br />objectives. I can be reached at the phone numbers listed on my résumé.<br />Thank you for your time and consideration.<br />Sincerely</p>', 608),
(307, '2012-01-13', 'kol kagnara', 'no title', 'Mapring', 'pnhom ppp', 'kol kagnara', 'Dear Ms. Smith:\r\nI am writing in response to your posting on the State of Michigan Vacancy Posting site \r\nfor the Human Resources Analyst position. I believe my qualifications make me an \r\nexcellent candidate for the position.\r\nI possess more than seven years of human resources experience in recruitment and \r\nstaffing, benefits administration, and workforce planning. Throughout my career I have \r\ndemonstrated the ability to establish excellent client relationships and to develop and \r\nimplement innovative solutions to address a wide variety of human resources \r\nchallenges. I have excellent organizational abilities and strong decision-making skills.\r\nEnclosed is my résumé for your review. I would appreciate the chance to meet with you \r\nto discuss the ways in which I can help the Department of ABC achieve its goals and \r\nobjectives. I can be reached at the phone numbers listed on my résumé.\r\nThank you for your time and consideration.\r\nSincerely,', 591);

-- --------------------------------------------------------

--
-- Table structure for table `a_cv`
--

CREATE TABLE IF NOT EXISTS `a_cv` (
  `cv_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `interest` text NOT NULL,
  `pic_url` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jobs_cate` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`cv_id`),
  UNIQUE KEY `js_id_2` (`user_id`),
  KEY `provider_id` (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `a_cv`
--

INSERT INTO `a_cv` (`cv_id`, `provider_id`, `last_name`, `first_name`, `interest`, `pic_url`, `user_id`, `jobs_cate`) VALUES
(60, '', 'sasa', 'sasa', 'vvvvvvvv', 'http://khmer.jobs/', 608, '3'),
(67, '', 'Som', 'Se', '', 'http://m3.licdn.com/mpr/mprx/0_OEI5XzZIX292WEasYDUnXBRwXfCGIE7spw0VXBsRR2n-qaZVtuRWEcazobGjeSmn0WdUIre8MDaS', 616, '3'),
(68, '', 'mani', 'mani', 'no', 'http://khmer.jobs/', 617, '3'),
(70, '', 'pisit', 'cn', '', 'http://m3.licdn.com/mpr/mprx/0_Y7bJr-mH79F0HjN1YwFQrKZXSBtfERN1yDPQrleZtNQ0vx_P-WBzYApn_0-rdpv0xu5F09sckzn-', 619, '3'),
(71, '', 'pisit', 'cn', '', 'http://m3.licdn.com/mpr/mprx/0_Y7bJr-mH79F0HjN1YwFQrKZXSBtfERN1yDPQrleZtNQ0vx_P-WBzYApn_0-rdpv0xu5F09sckzn-', 591, '1');

-- --------------------------------------------------------

--
-- Table structure for table `a_cv_edu`
--

CREATE TABLE IF NOT EXISTS `a_cv_edu` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `edu_schoolName` varchar(1000) DEFAULT NULL,
  `edu_field` varchar(1000) DEFAULT NULL,
  `edu_date` date DEFAULT NULL,
  `edu_degree` varchar(1000) DEFAULT NULL,
  `edu_notes` text,
  `edu_activities` text,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `a_cv_edu`
--

INSERT INTO `a_cv_edu` (`edu_id`, `edu_schoolName`, `edu_field`, `edu_date`, `edu_degree`, `edu_notes`, `edu_activities`, `user_id`) VALUES
(2, 'ITC', 'IT', '2012-12-02', 'engineer', 'no', 'no', 608),
(20, 'ITC', '', '0000-00-00', '', '', '', 616),
(23, 'Institute of Technology of Cambodia', '', '0000-00-00', '', '', '', 619),
(24, 'company', 'Information Technology', '0000-00-00', 'Engineer', '', '', 619),
(25, 'Institute of Technology of Cambodia', '', '0000-00-00', '', '', '', 619),
(26, 'company', 'Information Technology', '0000-00-00', 'Engineer', '', '', 619),
(27, 'Institute of Technology of Cambodia', '', '0000-00-00', '', '', '', 619),
(28, 'company', 'Information Technology', '0000-00-00', 'Engineer', '', '', 619),
(29, 'Institute of Technology of Cambodia', '', '0000-00-00', '', '', '', 591),
(30, 'company', 'Information Technology', '0000-00-00', 'Engineer', '', '', 591);

-- --------------------------------------------------------

--
-- Table structure for table `a_cv_exp`
--

CREATE TABLE IF NOT EXISTS `a_cv_exp` (
  `exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_position` varchar(1000) DEFAULT NULL,
  `exp_company` varchar(1000) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `exp_summary` text,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exp_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `a_cv_exp`
--

INSERT INTO `a_cv_exp` (`exp_id`, `exp_position`, `exp_company`, `exp_date`, `exp_summary`, `user_id`) VALUES
(1, 'web', 'Mapring', '0000-00-00', 'no', 591),
(22, 'web', 'Mapring', '0000-00-00', 'no sum', 591),
(23, 'web developer', 'Mapring', '0000-00-00', 'Nothing', 591);

-- --------------------------------------------------------

--
-- Table structure for table `a_cv_skill`
--

CREATE TABLE IF NOT EXISTS `a_cv_skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `a_cv_skill`
--

INSERT INTO `a_cv_skill` (`skill_id`, `skill_name`, `user_id`) VALUES
(10, '', 616),
(12, '', 619),
(13, '', 619),
(14, '', 619),
(15, '', 591);

-- --------------------------------------------------------

--
-- Table structure for table `a_jobs_com`
--

CREATE TABLE IF NOT EXISTS `a_jobs_com` (
  `com_id` int(11) DEFAULT NULL,
  `jobs_id` int(11) DEFAULT NULL,
  `jobs_catid` int(11) DEFAULT NULL,
  KEY `com_id` (`com_id`),
  KEY `jobs_id` (`jobs_id`),
  KEY `jobs_catid` (`jobs_catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `a_jobs_jseeker`
--

CREATE TABLE IF NOT EXISTS `a_jobs_jseeker` (
  `jobs_id` int(10) NOT NULL DEFAULT '0',
  `jobs_catid` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `com_id` int(10) NOT NULL DEFAULT '0',
  `apply` tinyint(1) NOT NULL,
  PRIMARY KEY (`jobs_id`,`jobs_catid`,`user_id`,`com_id`),
  KEY `jobs_catid` (`jobs_catid`),
  KEY `js_id` (`user_id`),
  KEY `com_id` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `a_jobs_jseeker`
--

INSERT INTO `a_jobs_jseeker` (`jobs_id`, `jobs_catid`, `user_id`, `com_id`, `apply`) VALUES
(3, 3, 591, 214, 0),
(3, 3, 608, 214, 0),
(3, 3, 614, 214, 0),
(3, 3, 616, 214, 0),
(3, 3, 617, 214, 0),
(3, 3, 618, 214, 0),
(3, 3, 619, 214, 0),
(4, 3, 591, 211, 0),
(4, 3, 608, 211, 0),
(4, 3, 614, 211, 0),
(4, 3, 616, 211, 0),
(4, 3, 617, 211, 0),
(4, 3, 618, 211, 0),
(4, 3, 619, 211, 0);

-- --------------------------------------------------------

--
-- Table structure for table `b_category`
--

CREATE TABLE IF NOT EXISTS `b_category` (
  `cat_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `b_category`
--

INSERT INTO `b_category` (`cat_id`, `cat_name`) VALUES
(1, 'HR'),
(2, 'Account'),
(3, 'web developer'),
(4, 'software developer'),
(5, 'marketing'),
(6, 'Sell');

-- --------------------------------------------------------

--
-- Table structure for table `b_catsubject`
--

CREATE TABLE IF NOT EXISTS `b_catsubject` (
  `csub_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) unsigned NOT NULL,
  `sub_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`csub_id`),
  KEY `cat_id` (`cat_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `b_catsubject`
--

INSERT INTO `b_catsubject` (`csub_id`, `cat_id`, `sub_id`) VALUES
(1, 3, 2),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `b_job`
--

CREATE TABLE IF NOT EXISTS `b_job` (
  `job_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) DEFAULT '',
  `job_salary` varchar(100) DEFAULT '',
  `job_location` varchar(250) NOT NULL,
  `job_deadline` varchar(250) NOT NULL,
  `job_benefit` varchar(250) DEFAULT '',
  `job_description` text,
  `about_company` varchar(250) DEFAULT '',
  `job_apply` varchar(250) NOT NULL,
  `jcat_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `jcat_id` (`jcat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `b_jobcategory`
--

CREATE TABLE IF NOT EXISTS `b_jobcategory` (
  `jcat_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NOT NULL,
  `cat_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`jcat_id`),
  KEY `com_id` (`com_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `b_jobcategory`
--

INSERT INTO `b_jobcategory` (`jcat_id`, `com_id`, `cat_id`) VALUES
(1, 211, 3),
(2, 214, 3),
(3, 218, 3),
(6, 211, 4);

-- --------------------------------------------------------

--
-- Table structure for table `b_percentage`
--

CREATE TABLE IF NOT EXISTS `b_percentage` (
  `per_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jcat_id` int(11) unsigned NOT NULL,
  `sub_id` int(11) unsigned NOT NULL,
  `percentage` int(11) unsigned NOT NULL,
  PRIMARY KEY (`per_id`),
  KEY `jcat_id` (`jcat_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `b_subject`
--

CREATE TABLE IF NOT EXISTS `b_subject` (
  `sub_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `b_subject`
--

INSERT INTO `b_subject` (`sub_id`, `sub_name`) VALUES
(1, 'HTML'),
(2, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_assets`
--

CREATE TABLE IF NOT EXISTS `jobs_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `jobs_assets`
--

INSERT INTO `jobs_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 189, 0, 'root.1', 'Root Asset', '{"core.login.site":{"11":1,"9":1,"10":1,"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 116, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 117, 118, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 119, 120, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 121, 122, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 123, 124, 1, 'com_login', 'com_login', '{}'),
(13, 1, 125, 126, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 127, 128, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 129, 130, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 131, 132, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 133, 134, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 135, 136, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 137, 140, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 141, 142, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 143, 144, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 145, 146, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 147, 148, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 149, 152, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 153, 158, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 138, 139, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 154, 155, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 150, 151, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 165, 166, 1, 'com_gantry', 'gantry', '{}'),
(36, 1, 167, 168, 1, 'com_roksprocket', 'roksprocket', '{}'),
(37, 1, 169, 170, 1, 'com_rokgallery', 'rokgallery', '{}'),
(38, 1, 171, 172, 1, 'com_rokcandy.category.8', 'Basic', ''),
(39, 1, 173, 174, 1, 'com_rokcandy.category.9', 'Typography', ''),
(40, 1, 175, 176, 1, 'com_rokcandy.category.10', 'Uncategorised', ''),
(41, 1, 177, 178, 1, 'com_rokcandy', 'rokcandy', '{}'),
(42, 8, 28, 49, 2, 'com_content.category.11', 'Demo Articles', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(43, 8, 50, 67, 2, 'com_content.category.12', 'Sample Content', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(44, 8, 68, 87, 2, 'com_content.category.13', 'RokSprocket Mosaic', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 8, 88, 101, 2, 'com_content.category.14', 'RokSprocket Tabs', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(46, 8, 102, 109, 2, 'com_content.category.15', 'RokSprocket Lists', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 8, 110, 113, 2, 'com_content.category.16', 'Frontpage Content', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(48, 25, 156, 157, 2, 'com_weblinks.category.17', 'RocketTheme', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(49, 42, 29, 30, 3, 'com_content.article.1', 'Template Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 42, 31, 32, 3, 'com_content.article.2', 'Module Positions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 42, 33, 34, 3, 'com_content.article.3', 'Module Variations', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 42, 35, 36, 3, 'com_content.article.4', 'Template Typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 42, 37, 38, 3, 'com_content.article.5', 'Menu Options', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 42, 39, 40, 3, 'com_content.article.6', 'Integrated Extensions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 42, 41, 42, 3, 'com_content.article.7', 'Tutorials and Guides', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 42, 43, 44, 3, 'com_content.article.8', 'Installation Instructions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 42, 45, 46, 3, 'com_content.article.9', 'Logo Editing', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 42, 47, 48, 3, 'com_content.article.10', 'Preset Styles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 27, 19, 20, 3, 'com_content.article.11', 'About Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 43, 51, 52, 3, 'com_content.article.12', 'Donec Nunc Magna Posuere', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 43, 53, 54, 3, 'com_content.article.13', 'Lorem Ipsum Dolor Sit Amet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 43, 55, 56, 3, 'com_content.article.14', 'Maecenas Varius Neque Nec', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 43, 57, 58, 3, 'com_content.article.15', 'Massa Diam Tristique Urna', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 43, 59, 60, 3, 'com_content.article.16', 'Nec Libero Laoreet Faucibus', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 43, 61, 62, 3, 'com_content.article.17', 'Sapien Eros Consetur Dolor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 43, 63, 64, 3, 'com_content.article.18', 'Sed Imperdiet Ligula Nisi', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 43, 65, 66, 3, 'com_content.article.19', 'Vestibulum Dapibus Est Nulla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 44, 69, 70, 3, 'com_content.article.20', 'Flexible Layouts', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 44, 71, 72, 3, 'com_content.article.21', 'Core Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 44, 73, 74, 3, 'com_content.article.22', 'Site Performance', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 44, 75, 76, 3, 'com_content.article.23', 'Preset Styles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 44, 77, 78, 3, 'com_content.article.24', 'Menu System', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 44, 79, 80, 3, 'com_content.article.25', 'K2 Styling', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 44, 81, 82, 3, 'com_content.article.26', 'Module Positions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 44, 83, 84, 3, 'com_content.article.27', 'RokSprocket', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 44, 85, 86, 3, 'com_content.article.28', 'Suffixes', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 45, 89, 90, 3, 'com_content.article.29', 'CV', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 45, 91, 92, 3, 'com_content.article.30', 'Cover Letter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 45, 93, 94, 3, 'com_content.article.31', 'Job Opportunity', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 45, 95, 96, 3, 'com_content.article.32', 'Calendar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 46, 103, 104, 3, 'com_content.article.33', 'Grid System', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 46, 105, 106, 3, 'com_content.article.34', 'Stunning Interface', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 46, 107, 108, 3, 'com_content.article.35', 'Integrated Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 47, 111, 112, 3, 'com_content.article.36', 'Top Template of the Year', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 27, 23, 24, 3, 'com_content.article.37', 'Jobs Seeker', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 1, 179, 180, 1, 'com_socialloginandsocialshare', 'socialloginandsocialshare', '{}'),
(96, 45, 97, 98, 3, 'com_content.article.38', 'Statues', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 27, 21, 22, 3, 'com_content.article.39', 'List of HR', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 1, 181, 182, 1, 'com_jevents.category.18', 'DEFAULT', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(100, 1, 183, 186, 1, 'com_jevents', 'jevents', '{"core.manage":{"10":1},"core.create":{"10":1},"core.edit.own":{"10":1},"core.edit":{"10":1},"core.edit.state":{"10":1},"core.deleteall":{"10":1},"core.admin":{"10":1}}'),
(101, 100, 184, 185, 2, 'com_jevents.category.19', 'DEFAULT', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(102, 27, 25, 26, 3, 'com_content.article.40', 'dashboard', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 8, 114, 115, 2, 'com_content.category.20', 'cal', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(104, 45, 99, 100, 3, 'com_content.article.41', 'calendar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 1, 187, 188, 1, 'com_gcalendar', 'com_gcalendar', '{"core.admin":{"10":1},"core.manage":{"10":1},"core.create":{"10":1},"core.delete":{"10":1},"core.edit":{"10":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_associations`
--

CREATE TABLE IF NOT EXISTS `jobs_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_banners`
--

CREATE TABLE IF NOT EXISTS `jobs_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jobs_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jobs_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE IF NOT EXISTS `jobs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 39, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 459, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 459, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 38, 1, 13, 14, 1, 'basic', 'com_rokcandy', 'Basic', 'basic', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 459, '2012-12-12 15:11:25', 0, '0000-00-00 00:00:00', 0, ''),
(9, 39, 1, 15, 16, 1, 'typography', 'com_rokcandy', 'Typography', 'typography', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 459, '2012-12-12 15:11:25', 0, '0000-00-00 00:00:00', 0, ''),
(10, 40, 1, 17, 18, 1, 'uncategorised', 'com_rokcandy', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 459, '2012-12-12 15:11:25', 0, '0000-00-00 00:00:00', 0, ''),
(11, 42, 1, 19, 20, 1, 'demo-articles', 'com_content', 'Demo Articles', 'demo-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:18:13', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 43, 1, 21, 22, 1, 'sample-content', 'com_content', 'Sample Content', 'sample-content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:18:21', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 44, 1, 23, 24, 1, 'roksprocket-mosaic', 'com_content', 'RokSprocket Mosaic', 'roksprocket-mosaic', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:19:04', 0, '0000-00-00 00:00:00', 0, '*'),
(14, 45, 1, 25, 26, 1, 'roksprocket-tabs', 'com_content', 'RokSprocket Tabs', 'roksprocket-tabs', '', '', 1, 459, '2013-04-24 09:46:42', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:19:19', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 46, 1, 27, 28, 1, 'roksprocket-lists', 'com_content', 'RokSprocket Lists', 'roksprocket-lists', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:19:27', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 47, 1, 29, 30, 1, 'frontpage-content', 'com_content', 'Frontpage Content', 'frontpage-content', '', '', 1, 459, '2013-04-24 09:55:16', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:20:10', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 48, 1, 31, 32, 1, 'rockettheme', 'com_weblinks', 'RocketTheme', 'rockettheme', '', '<div class="rt-image rt-floatleft">\r\n    <img class="rt-noborder" alt="RocketTheme WebLinks" src="images/rocketlauncher/weblinks/rockettheme.png" />\r\n</div>\r\n\r\n<p>RocketTheme provides Premium Professional Themes and Templates for OpenSource Platforms: Joomla, Wordpress, phpBB3, Magento &amp; More</p>\r\n\r\n<p>The RocketTheme Template Club features exclusive access to professional templates to help transform your site &amp; set you apart from the competition.</p>\r\n\r\n<div class="clear"></div>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2012-12-12 15:24:41', 0, '0000-00-00 00:00:00', 0, '*'),
(19, 101, 1, 35, 36, 1, '', 'com_jevents', 'DEFAULT', '', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"catcolor":"#CCCCFF","admin":0,"overlaps":0,"image":""}', '', '', '', 459, '2013-05-16 04:56:12', 0, '0000-00-00 00:00:00', 0, '*'),
(20, 103, 1, 37, 38, 1, 'cal', 'com_content', 'cal', 'cal', '', 'test calendar.', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 459, '2013-05-17 03:55:16', 459, '2013-05-17 04:08:53', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_contact_details`
--

CREATE TABLE IF NOT EXISTS `jobs_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_content`
--

CREATE TABLE IF NOT EXISTS `jobs_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `jobs_content`
--

INSERT INTO `jobs_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 49, 'Template Features', 'template-features', '', '<div class="rt-center largemargintop largemarginbottom">\r\n  <span class="promo2">Inside <strong>Leviathan</strong> Template</span><br />\r\n  <span class="promo3">The next generation layout and structure compliments the beautiful and intricate design of the template in conjunction with its many features and integrated extensions</span>\r\n</div>\r\n\r\n<br />\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-1.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117" target="_blank"><span>Preset Styles</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-2.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=109" target="_blank"><span>Modules Position</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-3.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=110" target="_blank"><span>Module Variations</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-4.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112" target="_blank"><span>Dropdown Menu</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-5.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111" target="_blank"><span>Typography</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-6.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113" target="_blank"><span>Integrated Extensions</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-7.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=116" target="_blank"><span>Logo Picker</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-8.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113" target="_blank"><span>K2 (3rd Party)</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/features/feature-9.jpg" alt="image" />\r\n      <h3><a href="index.php?option=com_content&amp;view=article&amp;id=11&amp;Itemid=118" target="_blank"><span>Joomla Stuff</span></a></h3>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div class="rt-center largemargintop largemarginbottom">\r\n  <span class="promo2"><strong>Interested</strong>? Want to try <strong>Leviathan</strong>?</span><br />\r\n  <a class="readon promo1 medmargintop" href="http://www.rockettheme.com/joomla-templates/leviathan" target="_blank"><span><span class="icon-download-alt largepaddingtop"></span> <span>Download</span></span></a>\r\n</div>\r\n\r\n<div class="clear"></div><br />', '', 1, 0, 0, 11, '2012-12-12 15:43:54', 459, '', '2012-12-28 19:28:23', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:43:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 10, '', '', 1, 111, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 50, 'Module Positions', 'module-positions', '', '<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Top</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Header</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Drawer</h4></th>\r\n    </tr>\r\n  </thead>\r\n</table>\r\n\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Showcase</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Feature</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Utility</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Breadcrumb</h4></th>\r\n    </tr>\r\n  </thead>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>MainTop</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginleft">\r\n    <table class="table table-bordered gantry-center">\r\n      <thead>\r\n        <tr>\r\n          <th colspan="3"><h4>Content Top</h4></th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>A</td>\r\n          <td>B</td>\r\n          <td>C</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n    <table class="table table-bordered gantry-center">\r\n      <thead>\r\n        <tr>\r\n          <th colspan="3"><h4>Mainbody</h4></th>\r\n        </tr>\r\n      </thead>\r\n    </table>\r\n    <table class="table table-bordered gantry-center">\r\n      <thead>\r\n        <tr>\r\n          <th colspan="3"><h4>Content Bottom</h4></th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>A</td>\r\n          <td>B</td>\r\n          <td>C</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginright">\r\n    <table class="table table-bordered gantry-center">\r\n      <thead>\r\n        <tr>\r\n          <th colspan="3"><h4>Sidebar</h4></th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td style="height: 213px;vertical-align: middle">A</td>\r\n          <td style="height: 213px;vertical-align: middle">B</td>\r\n          <td style="height: 213px;vertical-align: middle">C</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>MainBottom</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Extension</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Bottom</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Footer</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Copyright</h4></th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>A</td>\r\n      <td>B</td>\r\n      <td>C</td>\r\n      <td>D</td>\r\n      <td>E</td>\r\n      <td>F</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Debug</h4></th>\r\n    </tr>\r\n  </thead>\r\n</table>\r\n\r\n<table class="table table-bordered gantry-center">\r\n  <thead>\r\n    <tr>\r\n      <th colspan="6"><h4>Analytics</h4></th>\r\n    </tr>\r\n  </thead>\r\n</table> \r\n\r\n<div class="clear largemarginbottom">&nbsp;</div>\r\n\r\n<div class="rt-center medpaddingtop smallpaddingbottom"><a class="readon"  href="http://www.gantry-framework.org/documentation/joomla/configure/layouts"><span>Documentation: Gantry Framework Layouts</span></a></div>', '', 1, 0, 0, 11, '2012-12-12 15:45:27', 459, '', '2012-12-17 15:18:58', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:45:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 9, '', '', 1, 64, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 51, 'Module Variations', 'module-variations', '', '<p>There are <strong>11 stylistic module class suffixes</strong>, these add a unique style variation to the module: <strong>title1-5</strong> and <strong>box1-6</strong>; and various additional structural suffixes, these affect the layout and metrics of the module.</p>\r\n\r\n<p class="info nomarginbottom">Furthermore, you can also add <a href="http://fortawesome.github.com/Font-Awesome/" target="blank">FontAwesome</a> icons into the Module Class Suffix.  You will get a medium sized icon to the left of the title. Suffixes are in the <strong>icon-NAME</strong> format such as <strong>icon-star</strong>, as shown on the <a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111">Typography</a> page.</p>', '', 1, 0, 0, 11, '2012-12-12 15:46:21', 459, '', '2012-12-29 15:17:04', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:46:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 8, '', '', 1, 83, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jobs_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(4, 52, 'Template Typography', 'template-typography', '', '<!-- Typography\r\n================================================== -->\r\n<section id="typography">\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h2 id="headings">Headings</h2>\r\n  <p>All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code> are available.</p>\r\n  <div class="gantry-example">\r\n    <h1>h1. Heading 1</h1>\r\n    <h2>h2. Heading 2</h2>\r\n    <h3>h3. Heading 3</h3>\r\n    <h4>h4. Heading 4</h4>\r\n    <h5>h5. Heading 5</h5>\r\n    <h6>h6. Heading 6</h6>\r\n  </div>\r\n\r\n  <h3>Built with Less</h3>\r\n  <p>The typographic scale is based on two LESS variables in <strong>variables.less</strong>: <code>@baseFontSize</code> and <code>@baseLineHeight</code>. The first is the base font-size used throughout and the second is the base line-height. We use those variables and some simple math to create the margins, paddings, and line-heights of all our type and more. Customize them and Bootstrap adapts.</p>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h2 id="body-copy">Body copy</h2>\r\n  <p>Bootstrap''s global default <code>font-size</code> is <strong>14px</strong>, with a <code>line-height</code> of <strong>1.7em</strong>. This is applied to the <code>&lt;body&gt;</code> and all paragraphs. In addition, <code>&lt;p&gt;</code> (paragraphs) receive a bottom margin of half their line-height (9px by default).</p>\r\n  <div class="gantry-example">\r\n    <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;p&gt;...&lt;/p&gt;</pre>\r\n\r\n  <h3>Lead body copy</h3>\r\n  <p>Make a paragraph stand out by adding <code>.lead</code>.</p>\r\n  <div class="gantry-example">\r\n    <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;p class=&quot;lead&quot;&gt;...&lt;/p&gt;</pre>\r\n\r\n\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n\r\n  <h2 id="emphasis">Emphasis</h2>\r\n  <p>Make use of HTML''s default emphasis tags with lightweight styles.</p>\r\n\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h4><code>&lt;em&gt;</code></h4>\r\n  <p>For emphasizing a snippet of text with <em>stress</em></p>\r\n  <div class="gantry-example">\r\n    <p>The following snippet of text is <em>rendered as italicized text</em>.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;em&gt;rendered as italicized text&lt;/em&gt;</pre>\r\n\r\n  <h4><code>&lt;strong&gt;</code></h4>\r\n  <p>For emphasizing a snippet of text with <strong>important</strong></p>\r\n  <div class="gantry-example">\r\n    <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;strong&gt;rendered as bold text&lt;/strong&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h4><code>&lt;small&gt;</code></h4>\r\n  <p>For de-emphasizing inline or blocks of text, <small>use the small tag.</small></p>\r\n  <div class="gantry-example">\r\n    <p><small>This line of text is meant to be treated as fine print.</small></p>\r\n  </div>\r\n<pre class="prettyprint">&lt;p&gt;\r\n  &lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;\r\n&lt;/p&gt;</pre><br />\r\n\r\n  <p><strong>Note:</strong> Feel free to use <code>&lt;b&gt;</code> and <code>&lt;i&gt;</code> in HTML5. <code>&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance while <code>&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<h3>Notice Styles</h3>\r\n\r\n<p>Use the <code>&lt;p&gt;</code> tag with <code>.success</code>, <code>.warning</code>, <code>.info</code> or <code>.error</code> classes.</p>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n<div class="gantry-example"><p class="success">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p></div>\r\n<pre class="prettyprint">&lt;p class=&quot;success&quot;&gt;...&lt;/p&gt;</pre>\r\n\r\n<div class="gantry-example"><p class="info">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p></div>\r\n<pre class="prettyprint">&lt;p class=&quot;info&quot;&gt;...&lt;/p&gt;</pre>\r\n</div></div>    \r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n<div class="gantry-example"><p class="warning">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p></div>\r\n<pre class="prettyprint">&lt;p class=&quot;warning&quot;&gt;...&lt;/p&gt;</pre>\r\n\r\n<div class="gantry-example"><p class="error">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p></div>\r\n<pre class="prettyprint">&lt;p class=&quot;error&quot;&gt;...&lt;/p&gt;</pre>\r\n</div></div>\r\n\r\n<div class="clear"></div>\r\n\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left" style="float: none;">\r\n  <h2 id="abbreviations">Abbreviations</h2>\r\n  <p>Stylized implementation of HTML''s <code>&lt;abbr&gt;</code> element for abbreviations and acronyms to show the expanded version on hover. Abbreviations with a <code>title</code> attribute have a light dotted bottom border and a help cursor on hover, providing additional context on hover.</p>\r\n\r\n  <h4><code>&lt;abbr&gt;</code></h4>\r\n  <p>For expanded text on long hover of an abbreviation, include the <code>title</code> attribute.</p>\r\n  <div class="gantry-example">\r\n    <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;</pre>\r\n\r\n  <h4><code>&lt;abbr class="initialism"&gt;</code></h4>\r\n  <p>Add <code>.initialism</code> to an abbreviation for a slightly smaller font-size.</p>\r\n  <div class="gantry-example">\r\n    <p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr> is the best thing since sliced bread.</p>\r\n  </div>\r\n  <pre class="prettyprint">&lt;abbr title=&quot;attribute&quot; class=&quot;initialism&quot;&gt;attr&lt;/abbr&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h2 id="addresses">Addresses</h2>\r\n  <p>Stylized implementation of HTML''s element to present contact information for the nearest ancestor or the entire body of work.</p>\r\n\r\n  <h4><code>&lt;address&gt;</code></h4>\r\n  <p>Preserve formatting by ending all lines with <code>&lt;br&gt;</code>.</p>\r\n  <div class="gantry-example">\r\n    <address>\r\n      <strong>Twitter, Inc.</strong><br>\r\n      795 Folsom Ave, Suite 600<br>\r\n      San Francisco, CA 94107<br>\r\n      <abbr title="Phone">P:</abbr> (123) 456-7890\r\n    </address>\r\n    <address>\r\n      <strong>Full Name</strong><br>\r\n      <a href="mailto:#">first.last@gmail.com</a>\r\n    </address>\r\n  </div>\r\n<pre class="prettyprint linenums">\r\n&lt;address&gt;\r\n  &lt;strong&gt;Twitter, Inc.&lt;/strong&gt;&lt;br&gt;\r\n  795 Folsom Ave, Suite 600&lt;br&gt;\r\n  San Francisco, CA 94107&lt;br&gt;\r\n  &lt;abbr title=&quot;Phone&quot;&gt;P:&lt;/abbr&gt; (123) 456-7890\r\n&lt;/address&gt;\r\n&lt;address&gt;\r\n  &lt;strong&gt;Full Name&lt;/strong&gt;&lt;br&gt;\r\n  &lt;a href=&quot;mailto:#&quot;&gt;first.last&#64;gmail.com&lt;/a&gt;\r\n&lt;/address&gt;\r\n</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n\r\n  <h2 id="blockquotes">Blockquotes</h2>\r\n  <p>For quoting blocks of content from another source within your document.</p>\r\n\r\n  <h3>Default blockqoute</h3>\r\n  <p>Wrap <code>&lt;blockquote&gt;</code> around any <abbr title="HyperText Markup Language">HTML</abbr> as the quote. For straight quotes we recommend a <code>&lt;p&gt;</code>.</p>\r\n  <div class="gantry-example">\r\n    <blockquote>\r\n      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n    </blockquote>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;blockquote&gt;\r\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;/blockquote&gt;</pre>\r\n\r\n  <h3>Blockquote options</h3>\r\n  <span>Style and content changes for simple variations on a standard blockquote.</span><br />\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h4>Naming a source</h4>\r\n  <p>Add <code>&lt;small&gt;</code> tag for identifying the source. Wrap the name of the source work in <code>&lt;cite&gt;</code>.</p>\r\n  <div class="gantry-example">\r\n    <blockquote>\r\n      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n      <small>Someone famous in <cite title="Source Title">Source Title</cite></small>\r\n    </blockquote>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;blockquote&gt;\r\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n  &lt;small&gt;Someone famous &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;\r\n&lt;/blockquote&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h4>Alternate displays</h4>\r\n  <p>Use <code>.pull-right</code> for a floated, right-aligned blockquote.</p>\r\n  <div class="gantry-example" style="overflow: hidden;">\r\n    <blockquote class="pull-right">\r\n      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n      <small>Someone famous in <cite title="Source Title">Source Title</cite></small>\r\n    </blockquote>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;blockquote class=&quot;pull-right&quot;&gt;\r\n  ...\r\n&lt;/blockquote&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n\r\n  <!-- Lists -->\r\n<h2 id="lists" class="nomarginbottom">Lists</h2>\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-block gantry-width-33">\r\n<div class="gantry-left">\r\n  <h3>Unordered</h3>\r\n  <p>A list of items in which the order does <em>not</em> explicitly matter.</p>\r\n  <div class="gantry-example">\r\n    <ul>\r\n      <li>Lorem ipsum dolor sit amet</li>\r\n      <li>Nulla volutpat aliquam velit\r\n        <ul>\r\n          <li>Phasellus iaculis neque</li>\r\n          <li>Purus sodales ultricies</li>\r\n          <li>Vestibulum laoreet porttitor sem</li>\r\n          <li>Ac tristique libero volutpat at</li>\r\n        </ul>\r\n      </li>\r\n      <li>Faucibus porta lacus fringilla vel</li>\r\n      <li>Eget porttitor lorem</li>\r\n    </ul>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;ul&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ul&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-33">\r\n<div class="gantry-left">\r\n  <h3>Ordered</h3>\r\n  <p>A list of items in which the order <em>does</em> explicitly matter.</p>\r\n  <div class="gantry-example">\r\n    <ol>\r\n      <li>Lorem ipsum dolor sit amet</li>\r\n      <li>Consectetur adipiscing elit</li>\r\n      <li>Integer molestie lorem at massa</li>\r\n      <li>Facilisis in pretium nisl aliquet</li>\r\n      <li>Nulla volutpat aliquam velit</li>\r\n      <li>Faucibus porta lacus fringilla vel</li>\r\n      <li>Aenean sit amet erat nunc</li>\r\n      <li>Eget porttitor lorem</li>\r\n    </ol>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;ol&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ol&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-33">\r\n<div class="gantry-left">\r\n<h3>Unstyled</h3>\r\n<p>A list of items with no <code>list-style</code> or additional left padding.</p>\r\n<div class="gantry-example">\r\n  <ul class="unstyled">\r\n      <li>Lorem ipsum dolor sit amet</li>\r\n      <li>Nulla volutpat aliquam velit\r\n        <ul>\r\n          <li>Phasellus iaculis neque</li>\r\n          <li>Purus sodales ultricies</li>\r\n          <li>Vestibulum laoreet porttitor sem</li>\r\n          <li>Ac tristique libero volutpat at</li>\r\n        </ul>\r\n      </li>\r\n      <li>Faucibus porta lacus fringilla vel</li>\r\n      <li>Eget porttitor lorem</li>\r\n  </ul>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;ul class=&quot;unstyled&quot;&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ul&gt;</pre>\r\n</div></div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n<h3>Description</h3>\r\n<p>A list of terms with their associated descriptions.</p>\r\n<div class="gantry-example">\r\n  <dl>\r\n    <dt>Description lists</dt>\r\n    <dd>A description list is perfect for defining terms.</dd>\r\n    <dt>Euismod</dt>\r\n    <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\r\n    <dd>Donec id elit non mi porta gravida at eget metus.</dd>\r\n    <dt>Malesuada porta</dt>\r\n    <dd>Etiam porta sem malesuada magna mollis euismod.</dd>\r\n  </dl>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;dl&gt;\r\n  &lt;dt&gt;...&lt;/dt&gt;\r\n  &lt;dd&gt;...&lt;/dd&gt;\r\n&lt;/dl&gt;</pre><br />\r\n<p>\r\n  <strong>Note:</strong>\r\n  Horizontal description lists will truncate terms that are too long to fit in the left column fix <code>text-overflow</code>. In narrower viewports, they will change to the default stacked layout.\r\n</p>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n<h3>Horizontal description</h3>\r\n<p>Make terms and descriptions in <code>&lt;dl&gt;</code> line up side-by-side.</p>\r\n<div class="gantry-example">\r\n  <dl class="dl-horizontal">\r\n    <dt>Description lists</dt>\r\n    <dd>A description list is perfect for defining terms.</dd>\r\n    <dt>Euismod</dt>\r\n    <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\r\n    <dd>Donec id elit non mi porta gravida at eget metus.</dd>\r\n    <dt>Malesuada porta</dt>\r\n    <dd>Etiam porta sem malesuada magna mollis euismod.</dd>\r\n    <dt>Felis euismod semper eget lacinia</dt>\r\n    <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>\r\n  </dl>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;dl class=&quot;dl-horizontal&quot;&gt;\r\n  &lt;dt&gt;...&lt;/dt&gt;\r\n  &lt;dd&gt;...&lt;/dd&gt;\r\n&lt;/dl&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n</section>\r\n\r\n\r\n\r\n<!-- Code\r\n================================================== -->\r\n<section id="code">\r\n  <div class="page-header">\r\n    <h1>Code</h1>\r\n  </div>\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h2>Inline</h2>\r\n  <p>Wrap inline snippets of code with <code>&lt;code&gt;</code>.</p>\r\n<div class="gantry-example">\r\nFor example, <code>&lt;section&gt;</code> should be wrapped as inline.\r\n</div>\r\n<pre class="prettyprint linenums">For example, &lt;code&gt;&lt;section&gt;&lt;/code&gt; should be wrapped as inline.</pre>\r\n<p><strong>Note:</strong> Be sure to keep code within <code>&lt;pre&gt;</code> tags as close to the left as possible; it will render all tabs.</p>\r\n<p>You may optionally add the <code>.pre-scrollable</code> class which will set a max-height of 350px and provide a y-axis scrollbar.</p>\r\n\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h2>Basic block</h2>\r\n  <p>Use <code>&lt;pre&gt;</code> for multiple lines of code. Be sure to escape any angle brackets in the code for proper rendering.</p>\r\n<div class="gantry-example">\r\n<pre>&lt;p&gt;Sample text here...&lt;/p&gt;</pre>\r\n</div>\r\n<pre class="prettyprint linenums" style="margin-bottom: 9px;">&lt;pre&gt;\r\n  &amp;lt;p&amp;gt;Sample text here...&amp;lt;/p&amp;gt;\r\n&lt;/pre&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<h2>Prettify</h2>\r\n<p>To add colored syntax highlight to the <code>&lt;pre&gt;</code> tag, then use the <code>.prettyprint</code> class or the <code>.prettyprint linenums</code> class.</p>\r\n\r\n<div class="gantry-example">\r\n<pre class="prettyprint linenums">&lt;?php /** Begin Debug **/ if ($gantry-&gt;countModules(&#x27;debug&#x27;)) : ?&gt;\r\n    &lt;div id=&quot;rt-debug&quot;&gt;\r\n    &lt;div class=&quot;rt-container&quot;&gt;\r\n      &lt;?php echo $gantry-&gt;displayModules(&#x27;debug&#x27;,&#x27;standard&#x27;,&#x27;standard&#x27;); ?&gt;\r\n      &lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n  &lt;?php /** End Debug **/ endif; ?&gt;</pre>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;pre class=&quot;prettyprint linenums&quot;&gt;&lt;?php /** Begin Debug **/ if ($gantry-&gt;countModules(&#x27;debug&#x27;)) : ?&gt;\r\n  &lt;div id=&quot;rt-debug&quot;&gt;\r\n    &lt;div class=&quot;rt-container&quot;&gt;\r\n      &lt;?php echo $gantry-&gt;displayModules(&#x27;debug&#x27;,&#x27;standard&#x27;,&#x27;standard&#x27;); ?&gt;\r\n      &lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n  &lt;?php /** End Debug **/ endif; ?&gt;&lt;/pre&gt;</pre>\r\n</section>\r\n\r\n\r\n\r\n<!-- Tables\r\n================================================== -->\r\n<section id="tables">\r\n  <div class="page-header">\r\n    <h1>Tables</h1>\r\n  </div>\r\n\r\n  <h2>Default styles</h2>\r\n  <p>For basic stylingÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½light padding and only horizontal dividersÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>\r\n  <div class="gantry-example">\r\n    <table class="table">\r\n      <thead>\r\n        <tr>\r\n          <th>#</th>\r\n          <th>First Name</th>\r\n          <th>Last Name</th>\r\n          <th>Username</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@mdo</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2</td>\r\n          <td>Jacob</td>\r\n          <td>Thornton</td>\r\n          <td>@fat</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3</td>\r\n          <td>Larry</td>\r\n          <td>the Bird</td>\r\n          <td>@twitter</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;table class=&quot;table&quot;&gt;\r\n  &hellip;\r\n&lt;/table&gt;</pre>\r\n\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n  <h2>Optional classes</h2>\r\n  <p>Add any of the follow classes to the <code>.table</code> base class.</p>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h4><code>.table-striped</code></h4>\r\n  <p>Adds zebra-striping to any table row within the <code>&lt;tbody&gt;</code> via the <code>:nth-child</code> CSS selector (not available in IE7-IE8).</p>\r\n  <div class="gantry-example">\r\n    <table class="table table-striped">\r\n      <thead>\r\n        <tr>\r\n          <th>#</th>\r\n          <th>First Name</th>\r\n          <th>Last Name</th>\r\n          <th>Username</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@mdo</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2</td>\r\n          <td>Jacob</td>\r\n          <td>Thornton</td>\r\n          <td>@fat</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3</td>\r\n          <td>Larry</td>\r\n          <td>the Bird</td>\r\n          <td>@twitter</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n<pre class="prettyprint linenums" style="margin-bottom: 18px;">&lt;table class=&quot;table table-striped&quot;&gt;\r\n  &hellip;\r\n&lt;/table&gt;</pre>\r\n  <h4><code>.table-hover</code></h4>\r\n  <p>Enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.</p>\r\n  <div class="gantry-example">\r\n    <table class="table table-hover">\r\n      <thead>\r\n        <tr>\r\n          <th>#</th>\r\n          <th>First Name</th>\r\n          <th>Last Name</th>\r\n          <th>Username</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@mdo</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2</td>\r\n          <td>Jacob</td>\r\n          <td>Thornton</td>\r\n          <td>@fat</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3</td>\r\n          <td colspan="2">Larry the Bird</td>\r\n          <td>@twitter</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n<pre class="prettyprint linenums" style="margin-bottom: 18px;">&lt;table class=&quot;table table-hover&quot;&gt;\r\n  &hellip;\r\n&lt;/table&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right" style="float: none;">\r\n  <h4><code>.table-bordered</code></h4>\r\n  <p>Add borders and rounded corners to the table.</p>\r\n  <div class="gantry-example">\r\n    <table class="table table-bordered">\r\n      <thead>\r\n        <tr>\r\n          <th>#</th>\r\n          <th>First Name</th>\r\n          <th>Last Name</th>\r\n          <th>Username</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td rowspan="2">1</td>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@mdo</td>\r\n        </tr>\r\n        <tr>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@TwBootstrap</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2</td>\r\n          <td>Jacob</td>\r\n          <td>Thornton</td>\r\n          <td>@fat</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3</td>\r\n          <td colspan="2">Larry the Bird</td>\r\n          <td>@twitter</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;table class=&quot;table table-bordered&quot;&gt;\r\n  &hellip;\r\n&lt;/table&gt;</pre>\r\n  <h4><code>.table-condensed</code></h4>\r\n  <p>Makes tables more compact by cutting cell padding in half.</p>\r\n  <div class="gantry-example">\r\n    <table class="table table-condensed">\r\n      <thead>\r\n        <tr>\r\n          <th>#</th>\r\n          <th>First Name</th>\r\n          <th>Last Name</th>\r\n          <th>Username</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>Mark</td>\r\n          <td>Otto</td>\r\n          <td>@mdo</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2</td>\r\n          <td>Jacob</td>\r\n          <td>Thornton</td>\r\n          <td>@fat</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3</td>\r\n          <td colspan="2">Larry the Bird</td>\r\n          <td>@twitter</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n  </div>\r\n<pre class="prettyprint linenums" style="margin-bottom: 18px;">&lt;table class=&quot;table table-condensed&quot;&gt;\r\n  &hellip;\r\n&lt;/table&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n  <h2>Optional row classes</h2>   \r\n  <p>Use contextual classes to color table rows.</p>\r\n     <table class="table table-bordered table-striped">\r\n        <colgroup>\r\n          <col class="span1">\r\n          <col class="span7">\r\n        </colgroup>\r\n        <thead>\r\n          <tr>\r\n            <th>Class</th>\r\n            <th>Description</th>\r\n          </tr>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n              <code>.success</code>\r\n            </td>\r\n            <td>Indicates a successful or positive action.</td>\r\n          </tr>\r\n          <tr>\r\n            <td>\r\n              <code>.error</code>\r\n            </td>\r\n            <td>Indicates a dangerous or potentially negative action.</td>\r\n          </tr>\r\n          <tr>\r\n            <td>\r\n              <code>.info</code>\r\n            </td>\r\n            <td>Used as an alternative to the default styles.</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n\r\n  <div class="gantry-example">\r\n       <table class="table">\r\n         <thead>\r\n           <tr>\r\n             <th>#</th>\r\n             <th>Product</th>\r\n             <th>Payment Taken</th>\r\n             <th>Status</th>\r\n           </tr>\r\n         </thead>\r\n         <tbody>\r\n           <tr class="success">\r\n             <td>1</td>\r\n             <td>TB - Monthly</td>\r\n             <td>01/04/2012</td>\r\n             <td>Approved</td>\r\n           </tr>\r\n           <tr class="error">\r\n             <td>2</td>\r\n             <td>TB - Monthly</td>\r\n             <td>02/04/2012</td>\r\n             <td>Declined</td>\r\n           </tr>\r\n           <tr class="warning">\r\n             <td>3</td>\r\n             <td>TB - Monthly</td>\r\n             <td>03/04/2012</td>\r\n             <td>Pending</td>\r\n           </tr>\r\n           <tr class="info">\r\n             <td>4</td>\r\n             <td>TB - Monthly</td>\r\n             <td>04/04/2012</td>\r\n             <td>Call in to confirm</td>\r\n           </tr>\r\n         </tbody>\r\n       </table>\r\n     </div>\r\n<pre class="prettyprint linenums">...\r\n  &lt;tr class=&quot;success&quot;&gt;\r\n    &lt;td&gt;1&lt;/td&gt;\r\n    &lt;td&gt;TB - Monthly&lt;/td&gt;\r\n    &lt;td&gt;01/04/2012&lt;/td&gt;\r\n    &lt;td&gt;Approved&lt;/td&gt;\r\n  &lt;/tr&gt;\r\n...</pre>\r\n\r\n  <h2>Supported table markup</h2>\r\n  <p>List of supported table HTML elements and how they should be used.</p>\r\n  <table class="table table-bordered table-striped">\r\n    <colgroup>\r\n      <col class="span1">\r\n      <col class="span7">\r\n    </colgroup>\r\n    <thead>\r\n      <tr>\r\n        <th>Tag</th>\r\n        <th>Description</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;table&gt;</code>\r\n        </td>\r\n        <td>\r\n          Wrapping element for displaying data in a tabular format\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;thead&gt;</code>\r\n        </td>\r\n        <td>\r\n          Container element for table header rows (<code>&lt;tr&gt;</code>) to label table columns\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;tbody&gt;</code>\r\n        </td>\r\n        <td>\r\n          Container element for table rows (<code>&lt;tr&gt;</code>) in the body of the table\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;tr&gt;</code>\r\n        </td>\r\n        <td>\r\n          Container element for a set of table cells (<code>&lt;td&gt;</code> or <code>&lt;th&gt;</code>) that appears on a single row\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;td&gt;</code>\r\n        </td>\r\n        <td>\r\n          Default table cell\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;th&gt;</code>\r\n        </td>\r\n        <td>\r\n          Special table cell for column (or row, depending on scope and placement) labels<br>\r\n          Must be used within a <code>&lt;thead&gt;</code>\r\n        </td>\r\n      </tr>\r\n      <tr>\r\n        <td>\r\n          <code>&lt;caption&gt;</code>\r\n        </td>\r\n        <td>\r\n          Description or summary of what the table holds, especially useful for screen readers\r\n        </td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n<pre class="prettyprint linenums">&lt;table&gt;\r\n  &lt;caption&gt;...&lt;/caption&gt;\r\n  &lt;thead&gt;\r\n    &lt;tr&gt;\r\n      &lt;th&gt;...&lt;/th&gt;\r\n      &lt;th&gt;...&lt;/th&gt;\r\n    &lt;/tr&gt;\r\n  &lt;/thead&gt;\r\n  &lt;tbody&gt;\r\n    &lt;tr&gt;\r\n      &lt;td&gt;...&lt;/td&gt;\r\n      &lt;td&gt;...&lt;/td&gt;\r\n    &lt;/tr&gt;\r\n  &lt;/tbody&gt;\r\n&lt;/table&gt;</pre>\r\n\r\n</section>\r\n\r\n\r\n\r\n<!-- Forms\r\n================================================== -->\r\n<section id="forms">\r\n  <div class="page-header">\r\n    <h1>Forms</h1>\r\n  </div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left" style="float: none;">                \r\n  <h2>Default styles</h2>\r\n  <p>Individual form controls receive styling, but without any required base class on the <code>&lt;form&gt;</code> or large changes in markup. Results in stacked, left-aligned labels on top of form controls.</p>\r\n\r\n  <form class="gantry-example"><fieldset>\r\n    <legend>Legend</legend>\r\n    <label>Label name</label>\r\n    <input type="text" placeholder="Type somethingÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦">\r\n    <span class="help-block">Example block-level help text here.</span>\r\n    <label class="checkbox">\r\n      <input type="checkbox"> Check me out\r\n    </label>\r\n    <button type="submit" class="btn">Submit</button>\r\n  </fieldset></form>\r\n\r\n<pre class="prettyprint linenums">&lt;form&gt;\r\n  &lt;legend&gt;Legend&lt;/legend&gt;\r\n  &lt;label&gt;Label name&lt;/label&gt;\r\n  &lt;input type=&quot;text&quot; placeholder=&quot;Type something&hellip;&quot;&gt;\r\n  &lt;span class=&quot;help-block&quot;&gt;Example block-level help text here.&lt;/span&gt;\r\n  &lt;label class=&quot;checkbox&quot;&gt;\r\n    &lt;input type=&quot;checkbox&quot;&gt; Check me out\r\n  &lt;/label&gt;\r\n  &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Submit&lt;/button&gt;\r\n&lt;/form&gt;</pre><br />\r\n\r\n  <h2>Optional layouts</h2>\r\n  <p>Included with Bootstrap are three optional form layouts for common use cases.</p>\r\n\r\n  <h3>Search form</h3>\r\n  <p>Add <code>.form-search</code> to the form and <code>.search-query</code> to the <code>&lt;input&gt;</code> for an extra-rounded text input.</p>\r\n  <form class="gantry-example form-search">\r\n    <input type="text" class="input-medium search-query">\r\n    <button type="submit" class="btn">Search</button>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;form class=&quot;form-search&quot;&gt;\r\n  &lt;input type=&quot;text&quot; class=&quot;input-medium search-query&quot;&gt;\r\n  &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Search&lt;/button&gt;\r\n&lt;/form&gt;</pre>\r\n\r\n  <h3>Inline form</h3>\r\n  <p>Add <code>.form-inline</code> for left-aligned labels and inline-block controls for a compact layout.</p>\r\n  <form class="gantry-example form-inline">\r\n    <input type="text" class="input-small" placeholder="Email">\r\n    <input type="password" class="input-small" placeholder="Password">\r\n    <label class="checkbox">\r\n      <input type="checkbox"> Remember me\r\n    </label>\r\n    <button type="submit" class="btn">Sign in</button>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;form class=&quot;form-inline&quot;&gt;\r\n  &lt;input type=&quot;text&quot; class=&quot;input-small&quot; placeholder=&quot;Email&quot;&gt;\r\n  &lt;input type=&quot;password&quot; class=&quot;input-small&quot; placeholder=&quot;Password&quot;&gt;\r\n  &lt;label class=&quot;checkbox&quot;&gt;\r\n    &lt;input type=&quot;checkbox&quot;&gt; Remember me\r\n  &lt;/label&gt;\r\n  &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Sign in&lt;/button&gt;\r\n&lt;/form&gt;</pre>\r\n\r\n  <h3>Horizontal form</h3>\r\n  <p>Right align labels and float them to the left to make them appear on the same line as controls. Requires the most markup changes from a default form:</p>\r\n  <ul>\r\n    <li>Add <code>.form-horizontal</code> to the form</li>\r\n    <li>Wrap labels and controls in <code>.control-group</code></li>\r\n    <li>Add <code>.control-label</code> to the label</li>\r\n    <li>Wrap any associated controls in <code>.controls</code> for proper alignment</li>\r\n  </ul>\r\n  <form class="gantry-example form-horizontal"><fieldset class="hidden-tablet">\r\n    <legend>Legend</legend>\r\n    <div class="control-group">\r\n      <label class="control-label" for="inputEmail">Email</label>\r\n      <div class="controls">\r\n        <input type="text" id="inputEmail" placeholder="Email">\r\n      </div>\r\n    </div>\r\n    <div class="control-group">\r\n      <label class="control-label" for="inputPassword">Password</label>\r\n      <div class="controls">\r\n        <input type="password" id="inputPassword" placeholder="Password">\r\n      </div>\r\n    </div>\r\n    <div class="control-group">\r\n      <div class="controls">\r\n        <label class="checkbox">\r\n          <input type="checkbox"> Remember me\r\n        </label>\r\n        <button type="submit" class="btn">Sign in</button>\r\n      </div>\r\n    </div></fieldset>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;form class=&quot;form-horizontal&quot;&gt;\r\n  &lt;div class=&quot;control-group&quot;&gt;\r\n    &lt;label class=&quot;control-label&quot; for=&quot;inputEmail&quot;&gt;Email&lt;/label&gt;\r\n    &lt;div class=&quot;controls&quot;&gt;\r\n      &lt;input type=&quot;text&quot; id=&quot;inputEmail&quot; placeholder=&quot;Email&quot;&gt;\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n  &lt;div class=&quot;control-group&quot;&gt;\r\n    &lt;label class=&quot;control-label&quot; for=&quot;inputPassword&quot;&gt;Password&lt;/label&gt;\r\n    &lt;div class=&quot;controls&quot;&gt;\r\n      &lt;input type=&quot;password&quot; id=&quot;inputPassword&quot; placeholder=&quot;Password&quot;&gt;\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n  &lt;div class=&quot;control-group&quot;&gt;\r\n    &lt;div class=&quot;controls&quot;&gt;\r\n      &lt;label class=&quot;checkbox&quot;&gt;\r\n        &lt;input type=&quot;checkbox&quot;&gt; Remember me\r\n      &lt;/label&gt;\r\n      &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Sign in&lt;/button&gt;\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n&lt;/form&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h2>Supported form controls</h2>\r\n  <p>Examples of standard form controls supported in an example form layout.</p>\r\n\r\n  <h3>Inputs</h3>\r\n  <p>Most common form control, text-based input fields. Includes support for all HTML5 types: text, password, datetime, datetime-local, date, month, time, week, number, email, url, search, tel, and color.</p>\r\n  <p>Requires the use of a specified <code>type</code> at all times.</p>\r\n  <form class="gantry-example form-inline">\r\n    <input type="text" placeholder="Text input">\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input type=&quot;text&quot; placeholder=&quot;Text input&quot;&gt;</pre>\r\n\r\n  <h3>Textarea</h3>\r\n  <p>Form control which supports multiple lines of text. Change <code>row</code> attribute as necessary.</p>\r\n  <form class="gantry-example form-inline">\r\n    <textarea rows="3"></textarea>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;textarea rows=&quot;3&quot;&gt;&lt;/textarea&gt;</pre>\r\n\r\n  <h3>Checkboxes and radios</h3>\r\n  <p>Checkboxes are for selecting one or several options in a list while radios are for selecting one option from many.</p>\r\n  <h4>Default (stacked)</h4>\r\n  <form class="gantry-example">\r\n    <label class="checkbox">\r\n      <input type="checkbox" value="">\r\n      Option one is this and thatÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½be sure to include why it''s great\r\n    </label>\r\n    <br>\r\n    <label class="radio">\r\n      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">\r\n      Option one is this and thatÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½be sure to include why it''s great\r\n    </label>\r\n    <label class="radio">\r\n      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">\r\n      Option two can be something else and selecting it will deselect option one\r\n    </label>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;label class=&quot;checkbox&quot;&gt;\r\n  &lt;input type=&quot;checkbox&quot; value=&quot;&quot;&gt;\r\n  Option one is this and that&mdash;be sure to include why it&#x27;s great\r\n&lt;/label&gt;\r\n\r\n&lt;label class=&quot;radio&quot;&gt;\r\n  &lt;input type=&quot;radio&quot; name=&quot;optionsRadios&quot; id=&quot;optionsRadios1&quot; value=&quot;option1&quot; checked&gt;\r\n  Option one is this and that&mdash;be sure to include why it&#x27;s great\r\n&lt;/label&gt;\r\n&lt;label class=&quot;radio&quot;&gt;\r\n  &lt;input type=&quot;radio&quot; name=&quot;optionsRadios&quot; id=&quot;optionsRadios2&quot; value=&quot;option2&quot;&gt;\r\n  Option two can be something else and selecting it will deselect option one\r\n&lt;/label&gt;</pre>\r\n\r\n  <h4>Inline checkboxes</h4>\r\n  <p>Add the <code>.inline</code> class to a series of checkboxes or radios for controls appear on the same line.</p>\r\n  <form class="gantry-example">\r\n    <label class="checkbox inline">\r\n      <input type="checkbox" id="inlineCheckbox1" value="option1"> 1\r\n    </label>\r\n    <label class="checkbox inline">\r\n      <input type="checkbox" id="inlineCheckbox2" value="option2"> 2\r\n    </label>\r\n    <label class="checkbox inline">\r\n      <input type="checkbox" id="inlineCheckbox3" value="option3"> 3\r\n    </label>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;label class=&quot;checkbox inline&quot;&gt;\r\n  &lt;input type=&quot;checkbox&quot; id=&quot;inlineCheckbox1&quot; value=&quot;option1&quot;&gt; 1\r\n&lt;/label&gt;\r\n&lt;label class=&quot;checkbox inline&quot;&gt;\r\n  &lt;input type=&quot;checkbox&quot; id=&quot;inlineCheckbox2&quot; value=&quot;option2&quot;&gt; 2\r\n&lt;/label&gt;\r\n&lt;label class=&quot;checkbox inline&quot;&gt;\r\n  &lt;input type=&quot;checkbox&quot; id=&quot;inlineCheckbox3&quot; value=&quot;option3&quot;&gt; 3\r\n&lt;/label&gt;</pre>\r\n\r\n  <h3>Selects</h3>\r\n  <p>Use the default option or specify a <code>multiple="multiple"</code> to show multiple options at once.</p>\r\n  <form class="gantry-example">\r\n    <select>\r\n      <option>1</option>\r\n      <option>2</option>\r\n      <option>3</option>\r\n      <option>4</option>\r\n      <option>5</option>\r\n    </select>\r\n    <br>\r\n    <select multiple="multiple">\r\n      <option>1</option>\r\n      <option>2</option>\r\n      <option>3</option>\r\n      <option>4</option>\r\n      <option>5</option>\r\n    </select>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;select&gt;\r\n  &lt;option&gt;1&lt;/option&gt;\r\n  &lt;option&gt;2&lt;/option&gt;\r\n  &lt;option&gt;3&lt;/option&gt;\r\n  &lt;option&gt;4&lt;/option&gt;\r\n  &lt;option&gt;5&lt;/option&gt;\r\n&lt;/select&gt;\r\n\r\n&lt;select multiple=&quot;multiple&quot;&gt;\r\n  &lt;option&gt;1&lt;/option&gt;\r\n  &lt;option&gt;2&lt;/option&gt;\r\n  &lt;option&gt;3&lt;/option&gt;\r\n  &lt;option&gt;4&lt;/option&gt;\r\n  &lt;option&gt;5&lt;/option&gt;\r\n&lt;/select&gt;</pre>\r\n</div></div>\r\n\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n\r\n  <h2>Extending form controls</h2>\r\n  <p>Adding on top of existing browser controls, Bootstrap includes other useful form components.</p>\r\n\r\n  <h3>Prepended and appended inputs</h3>\r\n  <span>Add text or buttons before or after any text-based input. Do note that <code>select</code> elements are not supported here.</span><br />\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left" style="float: none;">\r\n  <h4>Default options</h4>\r\n  <p>Wrap an <code>.add-on</code> and an <code>input</code> with one of two classes to prepend or append text to an input.</p>\r\n  <form class="gantry-example">\r\n    <div class="input-prepend">\r\n      <span class="add-on">@</span>\r\n      <input class="span2" id="prependedInput" size="16" type="text" placeholder="Username">\r\n    </div>\r\n    <br>\r\n    <div class="input-append">\r\n      <input class="span2" id="appendedInput" size="16" type="text">\r\n      <span class="add-on">.00</span>\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;div class=&quot;input-prepend&quot;&gt;\r\n  &lt;span class=&quot;add-on&quot;&gt;@&lt;/span&gt;&lt;input class=&quot;span2&quot; id=&quot;prependedInput&quot; size=&quot;16&quot; type=&quot;text&quot; placeholder=&quot;Username&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;input-append&quot;&gt;\r\n  &lt;input class=&quot;span2&quot; id=&quot;appendedInput&quot; size=&quot;16&quot; type=&quot;text&quot;&gt;&lt;span class=&quot;add-on&quot;&gt;.00&lt;/span&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n  <h4>Search form</h4>\r\n  <form class="gantry-example form-search">\r\n    <div class="input-append">\r\n      <input type="text" class="span2 search-query">\r\n      <button type="submit" class="btn">Search</button>\r\n    </div>\r\n    <br /><br /><div class="input-prepend">\r\n      <button type="submit" class="btn">Search</button>\r\n      <input type="text" class="span2 search-query">\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;form class=&quot;form-search&quot;&gt;\r\n  &lt;div class=&quot;input-append&quot;&gt;\r\n    &lt;input type=&quot;text&quot; class=&quot;span2 search-query&quot;&gt;\r\n    &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Search&lt;/button&gt;\r\n  &lt;/div&gt;\r\n  &lt;div class=&quot;input-prepend&quot;&gt;\r\n    &lt;button type=&quot;submit&quot; class=&quot;btn&quot;&gt;Search&lt;/button&gt;\r\n    &lt;input type=&quot;text&quot; class=&quot;span2 search-query&quot;&gt;\r\n  &lt;/div&gt;\r\n&lt;/form&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right" style="float: none;">\r\n  <h4>Combined</h4>\r\n  <p>Use both classes and two instances of <code>.add-on</code> to prepend and append an input.</p>\r\n  <form class="gantry-example form-inline">\r\n    <div class="input-prepend input-append">\r\n      <span class="add-on">$</span>\r\n      <input class="span2" id="appendedPrependedInput" size="16" type="text">\r\n      <span class="add-on">.00</span>\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;div class=&quot;input-prepend input-append&quot;&gt;\r\n  &lt;span class=&quot;add-on&quot;&gt;$&lt;/span&gt;&lt;input class=&quot;span2&quot; id=&quot;appendedPrependedInput&quot; size=&quot;16&quot; type=&quot;text&quot;&gt;&lt;span class=&quot;add-on&quot;&gt;.00&lt;/span&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n  <h4>Buttons instead of text</h4>\r\n  <p>Instead of a <code>&lt;span&gt;</code> with text, use a <code>.btn</code> to attach a button (or two) to an input.</p>\r\n  <form class="gantry-example">\r\n    <div class="input-append">\r\n      <input class="span2" id="appendedInputButton" size="16" type="text">\r\n      <button class="btn" type="button">Go!</button>\r\n    </div>\r\n    <br>\r\n    <div class="input-append">\r\n      <input class="span2" id="appendedInputButtons" size="16" type="text">\r\n      <button class="btn" type="button">Search</button>\r\n      <button class="btn" type="button">Options</button>\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;div class=&quot;input-append&quot;&gt;\r\n  &lt;input class=&quot;span2&quot; id=&quot;appendedInputButton&quot; size=&quot;16&quot; type=&quot;text&quot;&gt;&lt;button class=&quot;btn&quot; type=&quot;button&quot;&gt;Go!&lt;/button&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;input-append&quot;&gt;\r\n  &lt;input class=&quot;span2&quot; id=&quot;appendedInputButtons&quot; size=&quot;16&quot; type=&quot;text&quot;&gt;&lt;button class=&quot;btn&quot; type=&quot;button&quot;&gt;Search&lt;/button&gt;&lt;button class=&quot;btn&quot; type=&quot;button&quot;&gt;Options&lt;/button&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h3>Form actions</h3>\r\n  <p>End a form with a group of actions (buttons). When placed within a <code>.form-horizontal</code>, the buttons will automatically indent to line up with the form controls.</p>\r\n  <form class="gantry-example">\r\n    <div class="form-actions">\r\n      <button type="submit" class="btn btn-primary">Save changes</button>\r\n      <button type="button" class="btn">Cancel</button>\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;div class=&quot;form-actions&quot;&gt;\r\n  &lt;button type=&quot;submit&quot; class=&quot;btn btn-primary&quot;&gt;Save changes&lt;/button&gt;\r\n  &lt;button type=&quot;button&quot; class=&quot;btn&quot;&gt;Cancel&lt;/button&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n  <h3>Help text</h3>\r\n  <p>Inline and block level support for help text that appears around form controls.</p>\r\n  <h4>Inline help</h4>\r\n  <form class="gantry-example form-inline">\r\n    <input type="text"> <span class="help-inline">Inline help text</span>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input type=&quot;text&quot;&gt;&lt;span class=&quot;help-inline&quot;&gt;Inline help text&lt;/span&gt;</pre>\r\n\r\n  <h4>Block help</h4>\r\n  <form class="gantry-example form-inline">\r\n    <input type="text">\r\n    <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input type=&quot;text&quot;&gt;&lt;span class=&quot;help-block&quot;&gt;A longer block of help text that breaks onto a new line and may extend beyond one line.&lt;/span&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right" style="float: none;">\r\n  <h3>Control sizing</h3>\r\n  <p>Use relative sizing classes like <code>.input-large</code> or match your inputs to the grid column sizes using <code>.span*</code> classes.</p>\r\n\r\n  <h4>Relative sizing</h4>\r\n  <form class="gantry-example" style="padding-bottom: 15px;">\r\n    <div class="controls docs-input-sizes">\r\n      <input class="input-mini" type="text" placeholder=".input-mini"><br />\r\n      <input class="input-small" type="text" placeholder=".input-small"><br />\r\n      <input class="input-medium" type="text" placeholder=".input-medium"><br />\r\n      <input class="input-large" type="text" placeholder=".input-large"><br />\r\n      <input class="input-xlarge" type="text" placeholder=".input-xlarge"><br />\r\n      <input class="input-xxlarge" type="text" placeholder=".input-xxlarge">\r\n    </div>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input class=&quot;input-mini&quot; type=&quot;text&quot; placeholder=&quot;.input-mini&quot;&gt;\r\n&lt;input class=&quot;input-small&quot; type=&quot;text&quot; placeholder=&quot;.input-small&quot;&gt;\r\n&lt;input class=&quot;input-medium&quot; type=&quot;text&quot; placeholder=&quot;.input-medium&quot;&gt;\r\n&lt;input class=&quot;input-large&quot; type=&quot;text&quot; placeholder=&quot;.input-large&quot;&gt;\r\n&lt;input class=&quot;input-xlarge&quot; type=&quot;text&quot; placeholder=&quot;.input-xlarge&quot;&gt;\r\n&lt;input class=&quot;input-xxlarge&quot; type=&quot;text&quot; placeholder=&quot;.input-xxlarge&quot;&gt;</pre><br />\r\n  <p>\r\n    <strong>Note:</strong> In future versions, we''ll be altering the use of these relative input classes to match our button sizes. For example, <code>.input-large</code> will increase the padding and font-size of an input.\r\n  </p>\r\n\r\n  <h3>Uneditable inputs</h3>\r\n  <p>Present data in a form that''s not editable without using actual form markup.</p>\r\n  <form class="gantry-example">\r\n    <span class="input-xlarge uneditable-input">Some value here</span>\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;span class=&quot;input-xlarge uneditable-input&quot;&gt;Some value here&lt;/span&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n<br /><!-- SEPARATOR -->\r\n\r\n\r\n  <h2>Form control states</h2>\r\n  <p>Provide feedback to users or visitors with basic feedback states on form controls and labels.</p>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h3>Input focus</h3>\r\n  <p>We remove the default <code>outline</code> styles on some form controls and apply a <code>box-shadow</code> in its place for <code>:focus</code>.</p>\r\n  <form class="gantry-example form-inline">\r\n    <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused...">\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input class=&quot;input-xlarge&quot; id=&quot;focusedInput&quot; type=&quot;text&quot; value=&quot;This is focused...&quot;&gt;</pre>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h3>Disabled inputs</h3>\r\n  <p>Add the <code>disabled</code> attribute on an input to prevent user input and trigger a slightly different look.</p>\r\n  <form class="gantry-example form-inline">\r\n    <input class="input-xlarge" id="disabledInput" type="text" placeholder="Disabled input hereÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦" disabled="">\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;input class=&quot;input-xlarge&quot; id=&quot;disabledInput&quot; type=&quot;text&quot; placeholder=&quot;Disabled input here...&quot; disabled&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>       \r\n\r\n<h3>Validation states</h3>\r\n<p>Bootstrap includes validation styles for error, warning, and success messages. To use, add the appropriate class to the surrounding <code>.control-group</code>.</p>\r\n\r\n<form class="gantry-example form-horizontal">\r\n  <div class="control-group warning">\r\n    <label class="control-label" for="inputWarning">Input with warning</label>\r\n    <div class="controls">\r\n      <input type="text" id="inputWarning">\r\n      <span class="help-inline">Something may have gone wrong</span>\r\n    </div>\r\n  </div>\r\n  <div class="control-group error">\r\n    <label class="control-label" for="inputError">Input with error</label>\r\n    <div class="controls">\r\n      <input type="text" id="inputError">\r\n      <span class="help-inline">Please correct the error</span>\r\n    </div>\r\n  </div>\r\n  <div class="control-group info">\r\n    <label class="control-label" for="inputError">Input with info</label>\r\n    <div class="controls">\r\n      <input type="text" id="inputError">\r\n      <span class="help-inline">Username is taken</span>\r\n    </div>\r\n  </div>\r\n  <div class="control-group success">\r\n    <label class="control-label" for="inputSuccess">Input with success</label>\r\n    <div class="controls">\r\n      <input type="text" id="inputSuccess">\r\n      <span class="help-inline">Woohoo!</span>\r\n    </div>\r\n  </div>\r\n</form>   \r\n<pre class="prettyprint linenums">&lt;div class=&quot;control-group warning&quot;&gt;\r\n  &lt;label class=&quot;control-label&quot; for=&quot;inputWarning&quot;&gt;Input with warning&lt;/label&gt;\r\n  &lt;div class=&quot;controls&quot;&gt;\r\n    &lt;input type=&quot;text&quot; id=&quot;inputWarning&quot;&gt;\r\n    &lt;span class=&quot;help-inline&quot;&gt;Something may have gone wrong&lt;/span&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;control-group error&quot;&gt;\r\n  &lt;label class=&quot;control-label&quot; for=&quot;inputError&quot;&gt;Input with error&lt;/label&gt;\r\n  &lt;div class=&quot;controls&quot;&gt;\r\n    &lt;input type=&quot;text&quot; id=&quot;inputError&quot;&gt;\r\n    &lt;span class=&quot;help-inline&quot;&gt;Please correct the error&lt;/span&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;control-group info&quot;&gt;\r\n  &lt;label class=&quot;control-label&quot; for=&quot;inputError&quot;&gt;Input with info&lt;/label&gt;\r\n  &lt;div class=&quot;controls&quot;&gt;\r\n    &lt;input type=&quot;text&quot; id=&quot;inputError&quot;&gt;\r\n    &lt;span class=&quot;help-inline&quot;&gt;Username is taken&lt;/span&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;control-group success&quot;&gt;\r\n  &lt;label class=&quot;control-label&quot; for=&quot;inputSuccess&quot;&gt;Input with success&lt;/label&gt;\r\n  &lt;div class=&quot;controls&quot;&gt;\r\n    &lt;input type=&quot;text&quot; id=&quot;inputSuccess&quot;&gt;\r\n    &lt;span class=&quot;help-inline&quot;&gt;Woohoo!&lt;/span&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n</section>\r\n\r\n\r\n\r\n<!-- Buttons\r\n================================================== -->\r\n<section id="buttons">\r\n  <div class="page-header">\r\n    <h1>Buttons</h1>\r\n  </div>\r\n\r\n  <h2>Default buttons</h2>\r\n  <p>Button styles can be applied to anything with the <code>.btn</code> class applied. However, typically you''ll want to apply these to only <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements for the best rendering.</p>\r\n<table class="table table-bordered table-striped">\r\n  <thead>\r\n    <tr>\r\n      <th>Button</th>\r\n      <th>class=""</th>\r\n      <th>Description</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td><button type="button" class="btn">Default</button></td>\r\n      <td><code>btn</code></td>\r\n      <td>Standard gray button with gradient</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-primary">Primary</button></td>\r\n      <td><code>btn btn-primary</code></td>\r\n      <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-info">Info</button></td>\r\n      <td><code>btn btn-info</code></td>\r\n      <td>Used as an alternative to the default styles</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-success">Success</button></td>\r\n      <td><code>btn btn-success</code></td>\r\n      <td>Indicates a successful or positive action</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-warning">Warning</button></td>\r\n      <td><code>btn btn-warning</code></td>\r\n      <td>Indicates caution should be taken with this action</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-danger">Danger</button></td>\r\n      <td><code>btn btn-danger</code></td>\r\n      <td>Indicates a dangerous or potentially negative action</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-inverse">Inverse</button></td>\r\n      <td><code>btn btn-inverse</code></td>\r\n      <td>Alternate dark gray button, not tied to a semantic action or use</td>\r\n    </tr>\r\n    <tr>\r\n      <td><button type="button" class="btn btn-link">Link</button></td>\r\n      <td><code>btn btn-link</code></td>\r\n      <td>Deemphasize a button by making it look like a link while maintaining button behavior</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n  <h4>Cross browser compatibility</h4>\r\n  <p>IE9 doesn''t crop background gradients on rounded corners, so we remove it. Related, IE9 jankifies disabled <code>button</code> elements, rendering text gray with a nasty text-shadow that we cannot fix.</p>\r\n\r\n\r\n  <h2>Button sizes</h2>\r\n  <p>Fancy larger or smaller buttons? Add <code>.btn-large</code>, <code>.btn-small</code>, or <code>.btn-mini</code> for additional sizes.</p>\r\n  <div class="gantry-example">\r\n    <p>\r\n      <button type="button" class="btn btn-large btn-primary">Large button</button>\r\n      <button type="button" class="btn btn-large">Large button</button>\r\n    </p>\r\n    <p>\r\n      <button type="button" class="btn btn-primary">Default button</button>\r\n      <button type="button" class="btn">Default button</button>\r\n    </p>\r\n    <p>\r\n      <button type="button" class="btn btn-small btn-primary">Small button</button>\r\n      <button type="button" class="btn btn-small">Small button</button>\r\n    </p>\r\n    <p>\r\n      <button type="button" class="btn btn-mini btn-primary">Mini button</button>\r\n      <button type="button" class="btn btn-mini">Mini button</button>\r\n    </p>\r\n  </div>\r\n<pre class="prettyprint linenums">&lt;p&gt;\r\n  &lt;button class=&quot;btn btn-large btn-primary&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt;\r\n  &lt;button class=&quot;btn btn-large&quot; type=&quot;button&quot;&gt;Large button&lt;/button&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt;\r\n  &lt;button class=&quot;btn&quot; type=&quot;button&quot;&gt;Default button&lt;/button&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  &lt;button class=&quot;btn btn-small btn-primary&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt;\r\n  &lt;button class=&quot;btn btn-small&quot; type=&quot;button&quot;&gt;Small button&lt;/button&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  &lt;button class=&quot;btn btn-mini btn-primary&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt;\r\n  &lt;button class=&quot;btn btn-mini&quot; type=&quot;button&quot;&gt;Mini button&lt;/button&gt;\r\n&lt;/p&gt;</pre>\r\n<p>Create block level buttonsÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½those that span the full width of a parentÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½ by adding <code>.btn-block</code>.</p>\r\n<div class="gantry-example">\r\n  <div class="well" style="max-width: 400px; margin: 0 auto 10px;">\r\n    <button type="button" class="btn btn-large btn-block btn-primary">Block level button</button>\r\n    <button type="button" class="btn btn-large btn-block">Block level button</button>\r\n  </div>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;button class=&quot;btn btn-large btn-block btn-primary&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt;\r\n&lt;button class=&quot;btn btn-large btn-block&quot; type=&quot;button&quot;&gt;Block level button&lt;/button&gt;</pre>\r\n  \r\n  <h2>Disabled state</h2>\r\n  <p>Make buttons look unclickable by fading them back 50%.</p>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-left">\r\n  <h3>Anchor element</h3>\r\n  <p>Add the <code>.disabled</code> class to <code>&lt;a&gt;</code> buttons.</p>\r\n  <p class="gantry-example">\r\n    <a href="#" class="btn btn-large btn-primary disabled">Primary link</a>\r\n    <a href="#" class="btn btn-large disabled">Link</a>\r\n  </p>\r\n<pre class="prettyprint linenums">&lt;a href=&quot;#&quot; class=&quot;btn btn-large btn-primary disabled&quot;&gt;Primary link&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;btn btn-large disabled&quot;&gt;Link&lt;/a&gt;</pre><br />\r\n  <p>\r\n    <strong>Note:</strong>\r\n    We use <code>.disabled</code> as a utility class here, similar to the common <code>.active</code> class, so no prefix is required.\r\n  </p>\r\n</div></div>\r\n\r\n<div class="gantry-width-block gantry-width-50">\r\n<div class="gantry-right">\r\n  <h3>Button element</h3>\r\n  <p>Add the <code>disabled</code> attribute to <code>&lt;button&gt;</code> buttons.</p>\r\n  <p class="gantry-example">\r\n    <button type="button" class="btn btn-large btn-primary disabled" disabled="disabled">Primary button</button>\r\n    <button type="button" class="btn btn-large" disabled="">Button</button>\r\n  </p>\r\n<pre class="prettyprint linenums">&lt;button type=&quot;button&quot; class=&quot;btn btn-large btn-primary disabled&quot; disabled=&quot;disabled&quot;&gt;Primary button&lt;/button&gt;\r\n&lt;button type=&quot;button&quot; class=&quot;btn btn-large&quot; disabled&gt;Button&lt;/button&gt;</pre>\r\n</div></div>\r\n<div class="clear"></div>\r\n\r\n\r\n  <h2>One class, multiple tags</h2>\r\n  <p>Use the <code>.btn</code> class on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.</p>\r\n  <form class="gantry-example">\r\n    <a class="btn" href="">Link</a>\r\n    <button class="btn" type="submit">Button</button>\r\n    <input class="btn" type="button" value="Input">\r\n    <input class="btn" type="submit" value="Submit">\r\n  </form>\r\n<pre class="prettyprint linenums">&lt;a class=&quot;btn&quot; href=&quot;&quot;&gt;Link&lt;/a&gt;\r\n&lt;button class=&quot;btn&quot; type=&quot;submit&quot;&gt;Button&lt;/button&gt;\r\n&lt;input class=&quot;btn&quot; type=&quot;button&quot; value=&quot;Input&quot;&gt;\r\n&lt;input class=&quot;btn&quot; type=&quot;submit&quot; value=&quot;Submit&quot;&gt;</pre><br />\r\n  <p>As a best practice, try to match the element for your context to ensure matching cross-browser rendering. If you have an <code>input</code>, use an <code>&lt;input type="submit"&gt;</code> for your button.</p>\r\n\r\n</section>\r\n\r\n<!-- Icons\r\n================================================== -->\r\n<h1>Icons</h1>\r\n<h2>Font Awesome</h2>\r\n\r\n  <p>Font Awesome is a pictographic language of web-related actions which delivers 220 icons. The Font Awesome webfont, CSS, and LESS files are licensed under CC BY 3.0 and you can find the full examples of usage at <a href="http://fortawesome.github.com/Font-Awesome" target="_blank">Font Awesome - http://fortawesome.github.com/Font-Awesome</a></p>\r\n\r\n<p>Add <code>.icon-CLASS_NAME</code> to any element, best used with a <code>&lt;span&gt;</code>.</p>\r\n\r\n<div class="gantry-example">\r\n<h3>Web Icons</h3>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-adjust"> icon-adjust</span><br /><br />\r\n      <span class="icon-asterisk"> icon-asterisk</span><br /><br />\r\n      <span class="icon-ban-circle"> icon-ban-circle</span><br /><br />\r\n      <span class="icon-bar-chart"> icon-bar-chart</span><br /><br />\r\n      <span class="icon-barcode"> icon-barcode</span><br /><br />\r\n      <span class="icon-beaker"> icon-beaker</span><br /><br />\r\n      <span class="icon-bell"> icon-bell</span><br /><br />\r\n      <span class="icon-bolt"> icon-bolt</span><br /><br />\r\n      <span class="icon-book"> icon-book</span><br /><br />\r\n      <span class="icon-bookmark"> icon-bookmark</span><br /><br />\r\n      <span class="icon-bookmark-empty"> icon-bookmark-empty</span><br /><br />\r\n      <span class="icon-briefcase"> icon-briefcase</span><br /><br />\r\n      <span class="icon-bullhorn"> icon-bullhorn</span><br /><br />\r\n      <span class="icon-calendar"> icon-calendar</span><br /><br />\r\n      <span class="icon-camera"> icon-camera</span><br /><br />\r\n      <span class="icon-camera-retro"> icon-camera-retro</span><br /><br />\r\n      <span class="icon-certificate"> icon-certificate</span><br /><br />\r\n      <span class="icon-check"> icon-check</span><br /><br />\r\n      <span class="icon-check-empty"> icon-check-empty</span><br /><br />\r\n      <span class="icon-cloud"> icon-cloud</span><br /><br />\r\n      <span class="icon-cog"> icon-cog</span><br /><br />\r\n      <span class="icon-cogs"> icon-cogs</span><br /><br />\r\n      <span class="icon-comment"> icon-comment</span><br /><br />\r\n      <span class="icon-comment-alt"> icon-comment-alt</span><br /><br />\r\n      <span class="icon-comments"> icon-comments</span><br /><br />\r\n      <span class="icon-comments-alt"> icon-comments-alt</span><br /><br />\r\n      <span class="icon-credit-card"> icon-credit-card</span><br /><br />\r\n      <span class="icon-dashboard"> icon-dashboard</span><br /><br />\r\n      <span class="icon-download"> icon-download</span><br /><br />\r\n      <span class="icon-download-alt"> icon-download-alt</span><br /><br />\r\n      <span class="icon-edit"> icon-edit</span><br /><br />\r\n      <span class="icon-envelope"> icon-envelope</span><br /><br />\r\n      <span class="icon-envelope-alt"> icon-envelope-alt</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-exclamation-sign"> icon-exclamation-sign</span><br /><br />\r\n      <span class="icon-external-link"> icon-external-link</span><br /><br />\r\n      <span class="icon-eye-close"> icon-eye-close</span><br /><br />\r\n      <span class="icon-eye-open"> icon-eye-open</span><br /><br />\r\n      <span class="icon-facetime-video"> icon-facetime-video</span><br /><br />\r\n      <span class="icon-film"> icon-film</span><br /><br />\r\n      <span class="icon-filter"> icon-filter</span><br /><br />\r\n      <span class="icon-fire"> icon-fire</span><br /><br />\r\n      <span class="icon-flag"> icon-flag</span><br /><br />\r\n      <span class="icon-folder-close"> icon-folder-close</span><br /><br />\r\n      <span class="icon-folder-open"> icon-folder-open</span><br /><br />\r\n      <span class="icon-gift"> icon-gift</span><br /><br />\r\n      <span class="icon-glass"> icon-glass</span><br /><br />\r\n      <span class="icon-globe"> icon-globe</span><br /><br />\r\n      <span class="icon-group"> icon-group</span><br /><br />\r\n      <span class="icon-hdd"> icon-hdd</span><br /><br />\r\n      <span class="icon-headphones"> icon-headphones</span><br /><br />\r\n      <span class="icon-heart"> icon-heart</span><br /><br />\r\n      <span class="icon-heart-empty"> icon-heart-empty</span><br /><br />\r\n      <span class="icon-home"> icon-home</span><br /><br />\r\n      <span class="icon-inbox"> icon-inbox</span><br /><br />\r\n      <span class="icon-info-sign"> icon-info-sign</span><br /><br />\r\n      <span class="icon-key"> icon-key</span><br /><br />\r\n      <span class="icon-leaf"> icon-leaf</span><br /><br />\r\n      <span class="icon-legal"> icon-legal</span><br /><br />\r\n      <span class="icon-lemon"> icon-lemon</span><br /><br />\r\n      <span class="icon-lock"> icon-lock</span><br /><br />\r\n      <span class="icon-unlock"> icon-unlock</span><br /><br />\r\n      <span class="icon-magic"> icon-magic</span><br /><br />\r\n      <span class="icon-magnet"> icon-magnet</span><br /><br />\r\n      <span class="icon-map-marker"> icon-map-marker</span><br /><br />\r\n      <span class="icon-minus"> icon-minus</span><br /><br />\r\n      <span class="icon-minus-sign"> icon-minus-sign</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-money"> icon-money</span><br /><br />\r\n      <span class="icon-move"> icon-move</span><br /><br />\r\n      <span class="icon-music"> icon-music</span><br /><br />\r\n      <span class="icon-off"> icon-off</span><br /><br />\r\n      <span class="icon-ok"> icon-ok</span><br /><br />\r\n      <span class="icon-ok-circle"> icon-ok-circle</span><br /><br />\r\n      <span class="icon-ok-sign"> icon-ok-sign</span><br /><br />\r\n      <span class="icon-pencil"> icon-pencil</span><br /><br />\r\n      <span class="icon-picture"> icon-picture</span><br /><br />\r\n      <span class="icon-plane"> icon-plane</span><br /><br />\r\n      <span class="icon-plus"> icon-plus</span><br /><br />\r\n      <span class="icon-plus-sign"> icon-plus-sign</span><br /><br />\r\n      <span class="icon-print"> icon-print</span><br /><br />\r\n      <span class="icon-pushpin"> icon-pushpin</span><br /><br />\r\n      <span class="icon-qrcode"> icon-qrcode</span><br /><br />\r\n      <span class="icon-question-sign"> icon-question-sign</span><br /><br />\r\n      <span class="icon-random"> icon-random</span><br /><br />\r\n      <span class="icon-refresh"> icon-refresh</span><br /><br />\r\n      <span class="icon-remove"> icon-remove</span><br /><br />\r\n      <span class="icon-remove-circle"> icon-remove-circle</span><br /><br />\r\n      <span class="icon-remove-sign"> icon-remove-sign</span><br /><br />\r\n      <span class="icon-reorder"> icon-reorder</span><br /><br />\r\n      <span class="icon-resize-horizontal"> icon-resize-horizontal</span><br /><br />\r\n      <span class="icon-resize-vertical"> icon-resize-vertical</span><br /><br />\r\n      <span class="icon-retweet"> icon-retweet</span><br /><br />\r\n      <span class="icon-road"> icon-road</span><br /><br />\r\n      <span class="icon-rss"> icon-rss</span><br /><br />\r\n      <span class="icon-screenshot"> icon-screenshot</span><br /><br />\r\n      <span class="icon-search"> icon-search</span><br /><br />\r\n      <span class="icon-share"> icon-share</span><br /><br />\r\n      <span class="icon-share-alt"> icon-share-alt</span><br /><br />\r\n      <span class="icon-shopping-cart"> icon-shopping-cart</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-signal"> icon-signal</span><br /><br />\r\n      <span class="icon-signin"> icon-signin</span><br /><br />\r\n      <span class="icon-signout"> icon-signout</span><br /><br />\r\n      <span class="icon-sitemap"> icon-sitemap</span><br /><br />\r\n      <span class="icon-sort"> icon-sort</span><br /><br />\r\n      <span class="icon-sort-down"> icon-sort-down</span><br /><br />\r\n      <span class="icon-sort-up"> icon-sort-up</span><br /><br />\r\n      <span class="icon-star"> icon-star</span><br /><br />\r\n      <span class="icon-star-empty"> icon-star-empty</span><br /><br />\r\n      <span class="icon-star-half"> icon-star-half</span><br /><br />\r\n      <span class="icon-tag"> icon-tag</span><br /><br />\r\n      <span class="icon-tags"> icon-tags</span><br /><br />\r\n      <span class="icon-tasks"> icon-tasks</span><br /><br />\r\n      <span class="icon-thumbs-down"> icon-thumbs-down</span><br /><br />\r\n      <span class="icon-thumbs-up"> icon-thumbs-up</span><br /><br />\r\n      <span class="icon-time"> icon-time</span><br /><br />\r\n      <span class="icon-tint"> icon-tint</span><br /><br />\r\n      <span class="icon-trash"> icon-trash</span><br /><br />\r\n      <span class="icon-trophy"> icon-trophy</span><br /><br />\r\n      <span class="icon-truck"> icon-truck</span><br /><br />\r\n      <span class="icon-umbrella"> icon-umbrella</span><br /><br />\r\n      <span class="icon-upload"> icon-upload</span><br /><br />\r\n      <span class="icon-upload-alt"> icon-upload-alt</span><br /><br />\r\n      <span class="icon-user"> icon-user</span><br /><br />\r\n      <span class="icon-user-md"> icon-user-md</span><br /><br />\r\n      <span class="icon-volume-off"> icon-volume-off</span><br /><br />\r\n      <span class="icon-volume-down"> icon-volume-down</span><br /><br />\r\n      <span class="icon-volume-up"> icon-volume-up</span><br /><br />\r\n      <span class="icon-warning-sign"> icon-warning-sign</span><br /><br />\r\n      <span class="icon-wrench"> icon-wrench</span><br /><br />\r\n      <span class="icon-zoom-in"> icon-zoom-in</span><br /><br />\r\n      <span class="icon-zoom-out"> icon-zoom-out</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="clear"></div>\r\n  <div>\r\n    <h3>Text Editor Icons</h3>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-file"> icon-file</span><br /><br />\r\n      <span class="icon-cut"> icon-cut</span><br /><br />\r\n      <span class="icon-copy"> icon-copy</span><br /><br />\r\n      <span class="icon-paste"> icon-paste</span><br /><br />\r\n      <span class="icon-save"> icon-save</span><br /><br />\r\n      <span class="icon-undo"> icon-undo</span><br /><br />\r\n      <span class="icon-repeat"> icon-repeat</span><br /><br />\r\n      <span class="icon-paper-clip"> icon-paper-clip</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-text-height"> icon-text-height</span><br /><br />\r\n      <span class="icon-text-width"> icon-text-width</span><br /><br />\r\n      <span class="icon-align-left"> icon-align-left</span><br /><br />\r\n      <span class="icon-align-center"> icon-align-center</span><br /><br />\r\n      <span class="icon-align-right"> icon-align-right</span><br /><br />\r\n      <span class="icon-align-justify"> icon-align-justify</span><br /><br />\r\n      <span class="icon-indent-left"> icon-indent-left</span><br /><br />\r\n      <span class="icon-indent-right"> icon-indent-right</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-font"> icon-font</span><br /><br />\r\n      <span class="icon-bold"> icon-bold</span><br /><br />\r\n      <span class="icon-italic"> icon-italic</span><br /><br />\r\n      <span class="icon-strikethrough"> icon-strikethrough</span><br /><br />\r\n      <span class="icon-underline"> icon-underline</span><br /><br />\r\n      <span class="icon-link"> icon-link</span><br /><br />\r\n      <span class="icon-columns"> icon-columns</span><br /><br />\r\n      <span class="icon-table"> icon-table</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-th-large"> icon-th-large</span><br /><br />\r\n      <span class="icon-th"> icon-th</span><br /><br />\r\n      <span class="icon-th-list"> icon-th-list</span><br /><br />\r\n      <span class="icon-list"> icon-list</span><br /><br />\r\n      <span class="icon-list-ol"> icon-list-ol</span><br /><br />\r\n      <span class="icon-list-ul"> icon-list-ul</span><br /><br />\r\n      <span class="icon-list-alt"> icon-list-alt</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="clear"></div>\r\n  <div>\r\n    <h3>Directional Icons</h3>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-arrow-down"> icon-arrow-down</span><br /><br />\r\n      <span class="icon-arrow-left"> icon-arrow-left</span><br /><br />\r\n      <span class="icon-arrow-right"> icon-arrow-right</span><br /><br />\r\n      <span class="icon-arrow-up"> icon-arrow-up</span><br /><br />\r\n      <span class="icon-chevron-down"> icon-chevron-down</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-circle-arrow-down"> icon-circle-arrow-down</span><br /><br />\r\n      <span class="icon-circle-arrow-left"> icon-circle-arrow-left</span><br /><br />\r\n      <span class="icon-circle-arrow-right"> icon-circle-arrow-right</span><br /><br />\r\n      <span class="icon-circle-arrow-up"> icon-circle-arrow-up</span><br /><br />\r\n      <span class="icon-chevron-left"> icon-chevron-left</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-caret-down"> icon-caret-down</span><br /><br />\r\n      <span class="icon-caret-left"> icon-caret-left</span><br /><br />\r\n      <span class="icon-caret-right"> icon-caret-right</span><br /><br />\r\n      <span class="icon-caret-up"> icon-caret-up</span><br /><br />\r\n      <span class="icon-chevron-right"> icon-chevron-right</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-hand-down"> icon-hand-down</span><br /><br />\r\n      <span class="icon-hand-left"> icon-hand-left</span><br /><br />\r\n      <span class="icon-hand-right"> icon-hand-right</span><br /><br />\r\n      <span class="icon-hand-up"> icon-hand-up</span><br /><br />\r\n      <span class="icon-chevron-up"> icon-chevron-up</span><br /><br />\r\n    </div>\r\n  </div>\r\n<div class="clear"></div>\r\n  <div>\r\n    <h3>Video Player Icons</h3>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-play-circle"> icon-play-circle</span><br /><br />\r\n      <span class="icon-play"> icon-play</span><br /><br />\r\n      <span class="icon-pause"> icon-pause</span><br /><br />\r\n      <span class="icon-stop"> icon-stop</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-step-backward"> icon-step-backward</span><br /><br />\r\n      <span class="icon-fast-backward"> icon-fast-backward</span><br /><br />\r\n      <span class="icon-backward"> icon-backward</span><br /><br />\r\n      <span class="icon-forward"> icon-forward</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-fast-forward"> icon-fast-forward</span><br /><br />\r\n      <span class="icon-step-forward"> icon-step-forward</span><br /><br />\r\n      <span class="icon-eject"> icon-eject</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-fullscreen"> icon-fullscreen</span><br /><br />\r\n      <span class="icon-resize-full"> icon-resize-full</span><br /><br />\r\n      <span class="icon-resize-small"> icon-resize-small</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="clear"></div>\r\n  <div>\r\n    <h3>Social Icons</h3>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-phone"> icon-phone</span><br /><br />\r\n      <span class="icon-phone-sign"> icon-phone-sign</span><br /><br />\r\n      <span class="icon-facebook"> icon-facebook</span><br /><br />\r\n      <span class="icon-facebook-sign"> icon-facebook-sign</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-twitter"> icon-twitter</span><br /><br />\r\n      <span class="icon-twitter-sign"> icon-twitter-sign</span><br /><br />\r\n      <span class="icon-github"> icon-github</span><br /><br />\r\n      <span class="icon-github-sign"> icon-github-sign</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-linkedin"> icon-linkedin</span><br /><br />\r\n      <span class="icon-linkedin-sign"> icon-linkedin-sign</span><br /><br />\r\n      <span class="icon-pinterest"> icon-pinterest</span><br /><br />\r\n      <span class="icon-pinterest-sign"> icon-pinterest-sign</span><br /><br />\r\n    </div>\r\n  </div>\r\n  <div class="gantry-width-25 gantry-width-block">\r\n    <div class="gantry-width-spacer">\r\n      <span class="icon-google-plus"> icon-google-plus</span><br /><br />\r\n      <span class="icon-google-plus-sign"> icon-google-plus-sign</span><br /><br />\r\n      <span class="icon-sign-blank"> icon-sign-blank</span><br /><br />\r\n    </div>\r\n  </div>\r\n<div class="clear"></div>\r\n</div>\r\n<pre class="prettyprint linenums">&lt;span class="icon-CLASS_NAME"&gt;\r\n  ...\r\n&lt;/span&gt;\r\n&lt;span class="icon-download"&gt;\r\n  ...\r\n&lt;/span&gt;</pre>\r\n\r\n<div class="clear"></div>\r\n\r\n<!-- Notice\r\n================================================== -->\r\n<p><em>The documented typography above is a modified version of the reference guide available at: <a href="http://twitter.github.com/bootstrap/base-css.html">http://twitter.github.com/bootstrap/base-css.html</a></em></p>', '', 1, 0, 0, 11, '2012-12-12 15:48:34', 459, '', '2012-12-30 14:44:00', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:48:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 7, '', '', 1, 44, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jobs_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(5, 53, 'Menu Options', 'menu-options', '', '<p class="error">RokNavMenu is the core of all the powerful Leviathan menu system. Please ensure you are using the latest version of RokNavMenu, available <a href="http://www.rockettheme.com/extensions-joomla/roknavmenu" target="_blank">here</a>.</p>\r\n\r\n<h2>Dropdown Menu</h2>\r\n\r\n<p>The <strong>Dropdown Menu</strong> is an advanced CSS drive dropdown menu system. It offers advanced structural features such as multiple columns, inline icons and text, inline modules and positions, custom column widths, item distribution and menu offset. All of these are configurable for each menu item.</p>\r\n\r\n<div class="rt-image">\r\n  <img src="images/rocketlauncher/menu-options/dropdownmenu.jpg" alt="Dropdown Menu" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div><br />\r\n\r\n<h2>SplitMenu</h2>\r\n\r\n<p>A static menu system that displays 1st level items in the main horizontal menu and further children in the Sidebar.</p>\r\n\r\n<div class="rt-image">\r\n  <img src="images/rocketlauncher/menu-options/splitmenu.jpg" alt="SplitMenu" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div><br />\r\n\r\n<p class="notice">All Menu Items can be edited from <strong>Admin &rarr; Menu &rarr; <em>Menu Name</em> &rarr; <em>Menu Item</em></strong>.</p>\r\n\r\n<br />\r\n\r\n<p class="rt-image rt-floatleft nomarginbottom">\r\n<img class="rt-noborder" src="images/rocketlauncher/features/responsive-nav.png" alt="image" width="200"  />\r\n</p>\r\n\r\n<h2>Responsive Mode: Smartphone</h2>\r\n\r\n<p>For mobile devices, there are two options, a dropdown panel menu with items in a tree format or a select box using the browsers own UI elements. Chose a format in the template''s menu settings.</p>\r\n\r\n<p>The mobile menu is active for both the Dropdown Menu and SplitMenu.</p>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<h2>Creating child menu items</h2>\r\n\r\n<p>Go to <strong>Admin &rarr; Menu &rarr; <em>A Menu</em> &rarr; <em>A Menu Item</em> &rarr; Select a <em>Parent Item</em></strong>, and it will appear as a child of it.</p>\r\n\r\n<div class="rt-demo-block gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/menu-options/childmenu-1.jpg" alt="image" />\r\n    </div> \r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-block gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/menu-options/childmenu-2.jpg" alt="image" />\r\n    </div>  \r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n', '', 1, 0, 0, 11, '2012-12-12 15:49:58', 459, '', '2012-12-23 15:04:03', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:49:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 6, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 54, 'Integrated Extensions', 'integrated-extensions', '', '<div class="rt-center largemargintop largemarginbottom">\r\n  <span class="promo2">Integrated Extensions</span><br />\r\n  <span class="promo3">Enhance Your Website with the <strong>Powerful Tools</strong></span>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="rt-center">\r\n<a target="_blank" href="http://www.rockettheme.com/joomla-templates/leviathan" class="readon promo1 medmargintop"><span class="largemarginall"><span class="icon-download-alt"></span>&nbsp;Download</span></a>\r\n</div>', '', 1, 0, 0, 11, '2012-12-12 15:50:38', 459, '', '2012-12-17 14:22:32', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:50:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 5, '', '', 1, 96, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 55, 'Tutorials and Guides', 'tutorials-and-guides', '', '<p>Leviathan for Joomla is a RocketTheme Joomla Template Club release featuring the revolutionary Gantry Joomla Template Framework. Gantry is a comprehensive set of building blocks to enable the rapid development and realization of a design into a flexible and powerful web platform theme.</p>\r\n\r\n<p class="info">To configure the template, navigate to <strong>Extensions &rarr; Template Manager &rarr; <em>rt_leviathan</em></strong>. Mouseover the labels to view a description of each parameter.</p>', '', 1, 0, 0, 11, '2012-12-12 15:51:09', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 15:51:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 41, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 56, 'Installation Instructions', 'installation-instructions', '', '<p>The following is a guide that covers how to set up your new <strong>Leviathan</strong> template on your Joomla! site. Here you can find an overview of the files included in the Leviathan release and instructions on installing and activating the template in your Joomla! install.</p>\r\n\r\n<p class="info nomarginbottom"><strong>Note:</strong> The <strong>Bundle</strong> Template is only necessary if the Gantry Library is not installed at <strong>/libraries/gantry directory</strong>.</p>\r\n\r\n<br />\r\n\r\n<h3>Step 1 - Installation</h3>\r\n\r\n<ol class="largemarginbottom">\r\n  <li>Install from <strong>Admin &rarr; Extensions &rarr; Extensions Manager</strong></li>\r\n  <li>Browse for <strong>rt_leviathan.zip</strong> and click <strong>Upload &amp; Install</strong></li>  \r\n</ol>\r\n\r\n<div class="rt-image">\r\n  <img alt="Image" src="images/rocketlauncher/installation/installation-1.jpg" />\r\n</div>\r\n<br />\r\n<div class="rt-image">\r\n  <img alt="Image" src="images/rocketlauncher/installation/installation-j30-1.jpg" />\r\n</div>\r\n\r\n<div class="clear">&nbsp;</div>\r\n\r\n<br />\r\n\r\n<h3>Step 2 - Template Default</h3>\r\n\r\n<ol class="largemarginbottom">\r\n  <li>Make the template default at <strong>Admin &rarr; Extensions &rarr; Template Manager</strong></li>\r\n  <li>Select <strong>rt_leviathan</strong></li>\r\n  <li>Press <strong>Make Default</strong></li>\r\n</ol>\r\n\r\n<div class="rt-image">\r\n  <img alt="Image" src="images/rocketlauncher/installation/installation-2.jpg" />\r\n</div>\r\n<br />\r\n<div class="rt-image">\r\n  <img alt="Image" src="images/rocketlauncher/installation/installation-j30-2.jpg" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div><br />\r\n\r\n<h2>RocketLauncher Instructions</h2>\r\n\r\n<p class="nomarginbottom">We always recommend installing a <strong>RocketLauncher</strong> first to trial and understand the template more effectively. It must be installed as <strong>new</strong>, and <strong>not</strong> over an existing Joomla install.</p>\r\n\r\n<br />\r\n\r\n<h3>Step 1 - Upload</h3>\r\n\r\n<ul class="medmarginbottom">\r\n  <li><strong>Download</strong> the RocketLauncher</li>\r\n  <li><strong>Unzip</strong> the file</li>\r\n  <li><strong>Upload</strong> the created folder to your server</li>\r\n</ul>\r\n\r\n<p class="info nomarginbottom"><strong>Note:</strong> You can upload all the files via FTP, or use cPanel or SSH to upload the zip and unzip directly onto the server. Enquire with your hosting provider.</p>\r\n\r\n<br />\r\n\r\n<h3>Step 2 - Installation</h3>\r\n\r\n<ul>\r\n  <li>Go to <a href="#">www.yoursite.com/<em>*folder name*</em></a></li>\r\n  <li>Follow the Installation instructions</li>\r\n  <li>Ensure you click <em class="bold2">Install Sample Data</em> during installation</li>\r\n  <li>Remove the installation folder in the Installation interface</li>\r\n</ul>\r\n', '', 1, 0, 0, 11, '2012-12-12 15:52:01', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 15:52:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 50, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 57, 'Logo Editing', 'logo-editing', '', '<h3>1. The Logo Picker</h3>\r\n\r\n<ol>\r\n  <li>Enable <strong>Logo</strong> and set to <strong>Custom</strong> at <em>Admin &rarr; Extensions &rarr; Templates Manager &rarr; rt_leviathan &rarr; Features.</em></li>\r\n  <li>Set <strong>Logo Picker</strong> to either <strong>RokGallery</strong> or <strong>MediaManager</strong>.</li>\r\n  <li><strong>Select</strong> your logo, <strong>Insert</strong> and <strong>Save</strong></li>\r\n</ol>\r\n\r\n<br />\r\n\r\n<div class="rt-image">\r\n  <img src="images/rocketlauncher/logo-editing/logo-panel.jpg" alt="Logo Panel" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div><br />\r\n\r\n<div class="rt-image">\r\n  <img src="images/rocketlauncher/logo-editing/select-logo.jpg" alt="Select Logo" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div><br />\r\n\r\n<h3>2. Manual Change</h3>\r\n\r\n<ol>\r\n  <li>Enable <strong>Logo</strong> and set <strong>Type</strong> to <strong>Leviathan</strong>.</li>\r\n  <li>Upload <strong>logo.png</strong> to the <br /><strong> /templates/rt_leviathan/images/logo/</strong> directory</li>\r\n  <li>Clear your browser cache and refresh.</li>\r\n</ol>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p>If you cannot see your new logo, ensure you have uploaded it to the right directory and the directory permissions are writeable. Enquire with your hosting provider.</p>\r\n\r\n<a target="_blank" href="http://www.rockettheme.com/joomla-templates/leviathan" class="readon"><span>Download Sources Here</span></a>\r\n\r\n<div class="clear"></div>\r\n', '', 1, 0, 0, 11, '2012-12-12 15:52:35', 459, '', '2012-12-27 17:17:42', 872, 0, '0000-00-00 00:00:00', '2012-12-12 15:52:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 2, '', '', 1, 37, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 58, 'Preset Styles', 'preset-styles', '', '<p>The <strong>Style Settings</strong> panel in the Gantry based theme administration interface provides several options for configuring the main built in stylistic aspects of the template.</p>\r\n\r\n<div class="rt-image">\r\n  <img src="images/rocketlauncher/styles/admin-style-panel.jpg" alt="Style" />\r\n</div>\r\n\r\n<br />\r\n\r\n<p>Gantry also provides the ability for you to create your own custom presets based on any parameter in the theme administrator. You should determine which parameters you wish to configure to be a part of the presets.</p>\r\n\r\n<div class="clear"></div>\r\n\r\n<br />\r\n\r\n<h2>Assigning a Style</h2>\r\n\r\n<p>With Gantry, the ability to assign a certain style to an individual page has never been easier and/or more efficient. Just follow these simple steps:</p>\r\n\r\n<ul>\r\n  <li>Go to <strong>Extensions ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Template Manager ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ rt_leviathan &rarr; Assignments &rarr; <em>*Menu Item*</em></strong></li>  \r\n  <li>Select your preset from <strong>Show Presets</strong>, configure and save.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<p>After setting your defaults to the desired values, select the Menu Items button and choose the menu item you wish to modify the parameters for. You will then see a series of checkboxes on the left of all the supported parameters.</p>\r\n\r\n<p>Select the checkbox next to the parameter you wish to modify, it will then become active, and you can modify as you wish. Clicking ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“<strong>Save</strong>ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¯Ã‚Â¿Ã‚Â½ in the toolbar will then save this configuration.</p>\r\n\r\n<a href="http://gantry-framework.org/documentation/joomla/configure/style" class="readon largemargintop"><span>Gantry Framework: Style Configuration</span></a>\r\n', '', 1, 0, 0, 11, '2012-12-12 15:53:01', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 15:53:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 59, 'About Joomla!', 'about-joomla', '', '<h3>What is Joomla?</h3>\r\n<p>Joomla is an award-winning content management system (CMS), which enables you to build Web sites and powerful online applications. Many aspects, including its ease-of-use and extensibility, have made Joomla the most popular Web site software available. Best of all, Joomla is an open source solution that is freely available to everyone.</p>\r\n\r\n<p>With millions of websites running on Joomla, the software is used by individuals, small &amp; medium-sized businesses, and large organizations worldwide to easily create &amp; build a variety of websites &amp; web-enabled applications.</p>\r\n\r\n<h3>What Joomla! can do?</h3>\r\n<p>Joomla is used all over the world to power Web sites of all shapes and sizes. For example:</p>\r\n<ul>\r\n  <li>Corporate Web sites or portals</li>\r\n  <li>Corporate intranets and extranets</li>\r\n  <li>Online magazines, newspapers, and publications</li>\r\n  <li>E-commerce and online reservations</li>\r\n  <li>Government applications</li>\r\n  <li>Small business Web sites</li>\r\n  <li>Non-profit and organizational Web sites</li>\r\n  <li>Community-based portals</li>\r\n  <li>School and church Web sites</li>\r\n  <li>Personal or family homepages</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n\r\n<h3>Learn More</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>\r\n\r\n<a href="http://www.joomla.org/" target="_blank" class="readon"><span>Visit Joomla!</span></a>', '', 1, 0, 0, 2, '2012-12-12 15:53:35', 459, '', '2013-04-25 08:17:29', 459, 0, '0000-00-00 00:00:00', '2012-12-12 15:53:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 985, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 60, 'Donec Nunc Magna Posuere', 'donec-nunc-magna-posuere', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:08:13', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:08:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 61, 'Lorem Ipsum Dolor Sit Amet', 'lorem-ipsum-dolor-sit-amet', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:09:57', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:09:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 62, 'Maecenas Varius Neque Nec', 'maecenas-varius-neque-nec', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:10:56', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:10:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 63, 'Massa Diam Tristique Urna', 'massa-diam-tristique-urna', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:11:49', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:11:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 64, 'Nec Libero Laoreet Faucibus', 'nec-libero-laoreet-faucibus', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:13:35', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:13:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 65, 'Sapien Eros Consetur Dolor', 'sapien-eros-consetur-dolor', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:14:31', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:14:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 66, 'Sed Imperdiet Ligula Nisi', 'sed-imperdiet-ligula-nisi', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:15:07', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:15:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 67, 'Vestibulum Dapibus Est Nulla', 'vestibulum-dapibus-est-nulla', '', '<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consecetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-12-12 16:15:40', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:15:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 68, 'Flexible Layouts', 'flexible-layouts', '', '<p>Leviathan has a responsive layout, it adapts to the widths of the viewing device, as powered by the responsive Gantry 4 Framework.</p>', '', 1, 0, 0, 13, '2012-12-16 16:26:27', 459, '', '2012-12-21 20:12:40', 872, 0, '0000-00-00 00:00:00', '2012-12-16 16:26:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 8, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 69, 'Core Framework', 'core-framework', '', '<p>The Gantry Framework sits at the core of the template, providing the base for the major features and functions, such as the responsive grid.</p>', '', 1, 0, 0, 13, '2012-12-12 16:26:52', 459, '', '2012-12-21 20:22:02', 872, 0, '0000-00-00 00:00:00', '2012-12-12 16:26:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 70, 'Site Performance', 'site-performance', '', '<p>Increase the speed of your site by enabling the RokBooster plug-in which will compress and combine your CSS &amp; JavaScript into as few files as possible.</p>', '', 1, 0, 0, 13, '2012-12-14 16:27:22', 459, '', '2012-12-21 20:11:40', 872, 0, '0000-00-00 00:00:00', '2012-12-14 16:27:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 71, 'Preset Styles', 'preset-styles', '', '<p>Leviathan has multiple stunning style variations to choose from, as well as configure from the Gantry administrator, in addition to custom module variations.</p>', '', 1, 0, 0, 13, '2012-12-12 16:29:25', 459, '', '2012-12-12 16:32:07', 308, 0, '0000-00-00 00:00:00', '2012-12-12 16:29:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 72, 'Menu System', 'menu-system', '', '<p>show the cover letter form</p>', '', 1, 0, 0, 13, '2012-12-12 16:31:25', 459, '', '2013-04-24 10:34:14', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:31:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 73, 'K2 Styling', 'k2-styling', '', '<p>Leviathan has styled, including responsive, support for the popular third party content / CCK extension, K2.</p>', '', 1, 0, 0, 13, '2012-12-12 16:31:51', 459, '', '2012-12-12 20:35:17', 308, 0, '0000-00-00 00:00:00', '2012-12-12 16:31:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 74, 'Module Positions', 'module-positions', '', '<p>A vast module positions assortment, spread over Gantry Grid Rows, split into groupings of six, for maximum flexibility</p>', '', 1, 0, 0, 13, '2012-12-12 16:32:59', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:32:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 75, 'RokSprocket', 'roksprocket', '', '<p>A powerful switchblade content extension, that provides an array of display options, all within one single modular framework with an intuitive interface.</p>', '', 1, 0, 0, 13, '2012-12-12 16:33:25', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:33:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jobs_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(28, 76, 'Suffixes', 'suffixes', '', '<p>Leviathan has a range of module class suffixes, both stylistic and structural that allow you to individualize a module to create unique layouts &amp; appearances.</p>', '', 1, 0, 0, 13, '2012-12-12 16:34:22', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:34:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 77, 'CV', 'cv', '', '<!DOCTYPE html>\n<html>\n<body>\n\n  <iframe src="http://khmer.jobs/userdata?sess=<?php echo $_SESSION[''sess''][''0''][''session_id''];?>" frameborder="0" style="width:100%; height:100%; min-height:800px; margin-bottom:0">\n  <p>Your browser does not support iframes.</p>\n    \n  </iframe>\n  \n</body>\n</html>\n\n\n', '', 1, 0, 0, 14, '2012-12-12 16:36:33', 459, '', '2013-05-16 05:56:41', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:36:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 115, 0, 4, '', '', 6, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 78, 'Cover Letter', 'cover', '', '[module-214]', '', 1, 0, 0, 14, '2012-12-12 16:37:09', 459, '', '2013-05-23 01:09:37', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:37:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 0, 3, '', '', 6, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 79, 'Job Opportunity', 'job-oppotunity', '', '[module-209]', '', 1, 0, 0, 14, '2012-12-12 16:37:38', 459, '', '2013-05-08 09:11:54', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:37:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 25, 0, 2, '', '', 6, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 80, 'Calendar', 'calendar', '', '{component url=''index.php?option=com_jevents&view=month&layout=calendar''}\r\n', '', 1, 0, 0, 14, '2012-12-12 16:38:04', 459, '', '2013-05-22 04:16:19', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:38:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 61, 0, 1, '', '', 6, 32, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 81, 'Grid System', 'grid-system', '', '<p>CSS grid framework to construct content by providing commonly used dimensions</p>', '', 1, 0, 0, 15, '2012-12-12 16:40:32', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:40:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 82, 'Stunning Interface', 'stunning-interface', '', '<p>Gantry provides a unique intuitive interface to control all design aspects</p>', '', 1, 0, 0, 15, '2012-12-12 16:40:57', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-12 16:40:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 83, 'Integrated Features', 'integrated-features', '', '<p>Integrated with a lot of built-in features such as Date, Font-Sizer, To-Top Scroller, Google Analytics, etc</p>', '', 1, 0, 0, 15, '2012-12-12 16:41:48', 459, '', '2012-12-17 17:52:53', 872, 0, '0000-00-00 00:00:00', '2012-12-12 16:41:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 84, 'Top Template of the Year', 'top-template-of-the-year', '', '<div class="rt-tagline"><small>Written by</small> <strong>Author</strong></div>\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomargintop nomarginleft">\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/frontpage/featured/img1.jpg" alt="image">\r\n    </span>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomargintop">\r\n    <p><strong>Leviathan</strong>, the January 2013 template release, is a visually enriched design with stunning graphics, contrasts and tones. Its sidebar adds focus and boldness, that complements and contrasts with the mainbody area to great effect.</p>\r\n    <p class="visible-large">The core of the template is based on the Gantry Framework, which provides a plethora of standardized features and functions. Also included is support for extensions such as RokSprocket.</p>\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=108" class="readon"><span>Read More</span></a>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>', '', 0, 0, 0, 16, '2012-12-12 16:48:36', 459, '', '2012-12-27 13:38:46', 872, 0, '0000-00-00 00:00:00', '2012-12-12 16:48:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"1","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 85, 'Jobs Seeker', 'popular-features', '', '[module-164]', '', 1, 0, 0, 2, '2012-12-12 16:48:36', 459, '', '2013-05-10 09:32:35', 459, 0, '0000-00-00 00:00:00', '2012-12-12 16:48:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 0, 1, '', '', 6, 1966, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 96, 'Statues', 'statues', '', '<h2>Hello From Statues Page.</h2>', '', -2, 0, 0, 14, '2013-04-24 10:27:19', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-04-24 10:27:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 97, 'List of HR', 'list-of-hr', '', '[module-208]', '', 1, 0, 0, 2, '2013-04-29 07:32:28', 459, '', '2013-05-17 02:55:29', 459, 0, '0000-00-00 00:00:00', '2013-04-29 07:32:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 2, '', '', 4, 296, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 102, 'dashboard', 'dashboard', '', 'This Page will show dashboard of number of company and number of job seeker that register in our websit.', '', 1, 0, 0, 2, '2013-05-17 03:11:51', 459, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-17 03:11:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 4, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 104, 'calendar', 'cal', '', 'hello', '', -2, 0, 0, 14, '2013-05-17 04:06:07', 459, '', '2013-05-17 04:19:24', 459, 459, '2013-05-17 05:03:28', '2013-05-17 04:06:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 0, '', '', 6, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jobs_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_content_rating`
--

CREATE TABLE IF NOT EXISTS `jobs_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jobs_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_events_rec`
--

CREATE TABLE IF NOT EXISTS `jobs_events_rec` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `text` varchar(255) NOT NULL,
  `rec_type` varchar(64) NOT NULL,
  `event_pid` int(11) NOT NULL,
  `event_length` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_events_rec`
--

INSERT INTO `jobs_events_rec` (`event_id`, `start_date`, `end_date`, `text`, `rec_type`, `event_pid`, `event_length`, `user`, `lat`, `lng`) VALUES
(1, '2013-04-18 10:30:07', '2013-04-18 10:35:07', 'The Scheduler Calendar was installed!', '', 0, 0, 0, 0.000000, 0.000000);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_extensions`
--

CREATE TABLE IF NOT EXISTS `jobs_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10135 ;

--
-- Dumping data for table `jobs_extensions`
--

INSERT INTO `jobs_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","count_clicks":"1","icons":2,"link_icons":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"0","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"11":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"6":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"10","guest_usergroup":"1","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 1, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 1, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jobs_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 459, '2013-04-11 01:36:57', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.9","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"February 6, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.7","description":"Gantry Starting Template for Joomla! v4.1.7","group":""}', '{}', '{"last_update":1368173516}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"February 6, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.7","description":"Gantry System Plugin for Joomla","group":""}', '{"debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10005, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php,\\/modules\\/mod_rokminievents\\/lib\\/RokMiniEventsPlugin.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10006, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'System - RokCommon', 'plugin', 'rokcommon', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokCommon","type":"plugin","creationDate":"February 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.1.5","description":"RokCommon System Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'RokSprocket', 'component', 'com_roksprocket', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokSprocket","type":"component","creationDate":"February 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.8.3","description":"RokSprocket Component for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'RokSprocket Module', 'module', 'mod_roksprocket', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokSprocket Module","type":"module","creationDate":"February 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.8.3","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'System - RokSprocket', 'plugin', 'roksprocket', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokSprocket","type":"plugin","creationDate":"February 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.8.3","description":"RokSprocket System Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10013, 'Content - RokInjectModule', 'plugin', 'rokinjectmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - RokInjectModule","type":"plugin","creationDate":"October 29, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.3","description":"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10015, 'Editor - RokPad', 'plugin', 'rokpad', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"Editor - RokPad","type":"plugin","creationDate":"November 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.1","description":"\\n        <div class=\\"rokpad-description\\">\\n        <img src=\\"..\\/plugins\\/editors\\/rokpad\\/assets\\/admin\\/images\\/rokpad.jpg\\" class=\\"img-padding\\" \\/><h1>RokPad<\\/h1>\\n        <h2>The Power of Desktop Text Editor in a Joomla!<\\/h2>\\n        <p>Ever wished you could use a powerful desktop text editor such as Textmate, SublimeText, or UltraEdit directly on a Joomla! web site?  Now with RokPad we provide many features and capabilities that traditionally would only be found in a powerful desktop editor.  RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, configurable themes, multiple cursors and selections, shortcut keys, multiple language support, and many other incredible features.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n\\t\\t\\t<li>Code Highlighter built on the great ACE Editor<\\/li>\\n\\t        <li>Support for CSS, HTML, JavaScript, JSON, LESS, Markdown, PHP, SQL, Plain Text, Textile, XML and more...<\\/li>\\n\\t        <li>Ajax save and Automatic Save options. You''ll never loose your content again, nor wait until the page has finished reloading after a save!<\\/li>\\n\\t        <li>Save, Undo, Redo, Goto line, Advanced Search and Search &amp; Replace, Full Screen. Settings like Themes, Font Size, Code Folding, Wrap Mode, Invisible Characters, Print Margin, Highlight of selected word<\\/li>\\n\\t        <li>26 Themes to choose from<\\/li>\\n\\t        <li>Resizable Editor by dragging the Statusbar<\\/li>\\n\\t        <li>Keyboard shortcuts<\\/li>\\n\\t        <li>Brackets match<\\/li>\\n\\t        <li>Multiple cursors and selections<\\/li>\\n\\t        <li>Vertical Selection<\\/li>\\n\\t        <li>Ability to insert at multiple locations xtd-buttons shortcodes, all at once.<\\/li>\\n\\t        <li>Shortcodes and Universal Tag Insertion<\\/li>\\n\\t        <li>Drag &amp; Drop of text from external applications such as other Browser Tabs\\/windows or Native Applications (Supported on Firefox, Chrome, IE10 and Safari)<\\/li>\\n\\t        <li>Import local files by Drag &amp; Drop directly from your desktop! (Supported on Firefox, Chrome, IE10 and Safari 6+)<\\/li>\\n\\t        <li>And much more!<\\/li>\\n        <\\/ul>\\n        <\\/div>\\n        ","group":""}', '{"autosave-enabled":"0","autosave-time":"5","theme":"fluidvision","font-size":"12px","fold-style":"markbeginend","use-wrap-mode":"free","selection-style":"1","highlight-active-line":"1","highlight-selected-word":"1","show-invisibles":"0","show-gutter":"1","show-print-margin":"1","fade-fold-widgets":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10017, 'System - RokBooster', 'plugin', 'rokbooster', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - RokBooster","type":"plugin","creationDate":"February 7, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.1.5","description":"\\n        \\n        <div class=\\"booster-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\" class=\\"img-padding\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won''t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    ","group":""}', '{"cache_time":"60","minify_css":"1","style_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_css":"1","imported_css":"1","minify_js":"1","script_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_js":"1","max_data_uri_image_size":"21612","convert_css_images":"1","convert_page_images":"1","ignored_files":"\\/media\\/editors\\/tinymce\\/jscripts\\/tiny_mce\\/tiny_mce.js","scan_method":"header","use_background_processing":"1","disable_for_ie":"1","debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 100, 0),
(10019, 'RokCommon', 'library', 'lib_rokcommon', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokCommon","type":"library","creationDate":"February 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.1.5","description":"RokCommon Shared Library","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'RokGallery', 'component', 'com_rokgallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokGallery","type":"component","creationDate":"November 26, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.22","description":"A Gallery component for Joomla 1.6 from RocketTheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'RokGallery Module', 'module', 'mod_rokgallery', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokGallery Module","type":"module","creationDate":"November 26, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.22","description":"Module for displaying RokGallery","group":""}', '{"link":"0","default_menuitem":"0","title":"false","caption":"false","sort_by":"gallery_ordering","sort_direction":"ASC","limit_count":"10","css_style":"light","layout":"grid","columns":"1","arrows":"onhover","navigation":"thumbnails","animation_type":"random","animation_duration":"500","autoplay_enabled":"0","autoplay_delay":"7","showcase_arrows":"onhover","showcase_image_position":"left","showcase_imgpadding":"0","showcase_animation_type":"random","showcase_captionsanimation":"crossfade","showcase_animation_duration":"500","showcase_autoplay_enabled":"0","showcase_autoplay_delay":"7","showcase_responsive_arrows":"onhover","showcase_responsive_image_position":"left","showcase_responsive_imgpadding":"0","showcase_responsive_animation_type":"random","showcase_responsive_captionsanimation":"crossfade","showcase_responsive_animation_duration":"500","showcase_responsive_autoplay_enabled":"0","showcase_responsive_autoplay_delay":"7","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Button - RokGallery', 'plugin', 'rokgallery', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Button - RokGallery","type":"plugin","creationDate":"November 26, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.22","description":"This is an Editor Button to allow selection of RokGallery Slices","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10023, 'System - RokGallery', 'plugin', 'rokgallery', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokGallery","type":"plugin","creationDate":"November 26, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.22","description":"A system level support plugin for RokGallery.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10025, 'System - RokBox', 'plugin', 'rokbox', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokBox","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.4.0","description":"RokBox System Plugin","group":""}', '{"theme":"light","custom-theme":"sample","custom-legacy":"0","width":"640","height":"460","transition":"Quad.easeOut","duration":"200","chase":"40","effect":"quicksilver","frame-border":"20","content-padding":"0","arrows-height":"35","captions":"1","captionsDelay":"800","scrolling":"0","keyEvents":"1","overlay_background":"#000000","overlay_opacity":"0.85","overlay_duration":"200","overlay_transition":"Quad.easeInOut","autoplay":"true","ytautoplay":"0","ythighquality":"0","controller":"false","bgcolor":"#f3f3f3","vimeoColor":"00adef","vimeoPortrait":"0","vimeoTitle":"0","vimeoFullScreen":"1","vimeoByline":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10026, 'Content - RokBox', 'plugin', 'rokbox', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - RokBox","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.4.0","description":"To be used with a RokBox enabled RocketTheme Joomla! template.  Syntax is {rokbox}link{\\/rokbox}.  If you want the image to be part of an ''album'', you can use the syntax {rokbox album=|albumname|}link{\\/rokbox}.  To provide text descriptions, please use the syntax {rokbox title=|your description|}link{\\/rokbox}. To specify a thumbnail, use the syntax {rokbox thumb=|thumbnail_link.jpg|}link{\\/rokbox}. If you want to use a text link, you can specify the text using syntax: {rokbox text=|your link text here|}link{\\/rokbox}. You can also use album, title, thumb and text in the same tag.","group":""}', '{"remote_sizes":"0","thumb_ext":"_thumb","thumb_class":"album","thumb_custom":"0","thumb_dir":"cache","thumb_width":"150","thumb_height":"100","thumb_quality":"90"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10028, 'RokCandy', 'component', 'com_rokcandy', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokCandy","type":"component","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"\\n\\t\\tRokCandy is a simple yet powerful macro system for Joomla 1.6.  It provides the ability to create and categorize macros that can be used throughout your site.\\n\\t","group":""}', '{"forcecache":"0","adminenabled":"0","editenabled":"0","contentPlugin":"0","disabled":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'Button - RokCandy', 'plugin', 'rokcandy', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Button - RokCandy","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"This is an Editor Button to allow selection of RokCandy macros","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10030, 'System - RokCandy', 'plugin', 'rokcandy', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokCandy","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"This is the RokCandy system plugin that performs the macro replacement","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10032, 'RokAjaxSearch', 'module', 'mod_rokajaxsearch', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokAjaxSearch","type":"module","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.3.0","description":"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    ","group":""}', '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"1","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'com_gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"November 22, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.4","description":"Gantry Starting Template for Joomla! v4.1.4","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10034, 'rt_leviathan', 'template', 'rt_leviathan', '', 0, 1, 1, 0, '{"legacy":false,"name":"rt_leviathan","type":"template","creationDate":"February 13, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.1","description":"Parent for all PHP based projects","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'mod_userdata', 'module', 'mod_userdata', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_userdata","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A simple Hello, World! module.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10098, 'Social Login', 'module', 'mod_socialloginandsocialshare', '', 0, 1, 0, 0, '{"legacy":false,"name":"Social Login","type":"module","creationDate":"2012-01-01","author":"LoginRadius","copyright":"Copyright (C) 2012 - till Open Source Matters. All rights reserved.","authorEmail":"developers@loginradius.com","authorUrl":"www.LoginRadius.com","version":"3.0.1","description":"LoginRadius enables social login and social share for your joomla websites.","group":""}', '{"usesecure":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10099, 'System - Social Login And Social Share', 'plugin', 'socialloginandsocialshare', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Social Login And Social Share","type":"plugin","creationDate":"2012-01-01","author":"LoginRadius","copyright":"2012 to till","authorEmail":"developers@loginradius.com","authorUrl":"http:\\/\\/www.loginradius.com","version":"3.0.1","description":"\\n\\tLoginRadius enables social login for your joomla websites.\\n","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10100, 'Content - Social Share', 'plugin', 'socialshare', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - Social Share","type":"plugin","creationDate":"2012-01-01","author":"LoginRadius","copyright":"2012 to till","authorEmail":"developers@loginradius.com","authorUrl":"http:\\/\\/www.loginradius.com","version":"3.0.1","description":"\\n\\tLoginRadius enables social share for your joomla websites.\\n","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10101, 'socialloginandsocialshare', 'component', 'com_socialloginandsocialshare', '', 1, 1, 0, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10103, 'RokMiniEvents', 'module', 'mod_rokminievents', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokMiniEvents","type":"module","creationDate":"April 4, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"RokMiniEvents allows to share your Joomla! website Google Calendar Events","group":""}', '{"builtin_css":"1","set_widths":"1","wrapper_width":"750","item_number":"3","sortorder":"ascending","time_range":"predefined_ranges","startmin":"","startmax":"","rangespan":"current_month","show_description":"1","strip_tags":"a,i,br","trim_description":"1","trim_count":"200","localtime":"local","timezone":"0","dayformat":"%d","monthformat":"%b","yearformat":"%Y","timeformat":"%I:%M %p","datedisplay":"badge","showyear":"0","limit_count":"0","events_pane":"3","timeline":"arrows","timeline_dates":"inline","transition":"Expo.easeInOut","duration":"500","offset_x":"0","cache":"0","module_cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10104, 'mod_calendar', 'module', 'mod_calendar', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_calendar","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A simple Hello, World! module.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10106, 'mod_hello', 'module', 'mod_hello', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_hello","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A simple Hello, World! module.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10107, 'DirectPHP', 'plugin', 'DirectPHP', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"DirectPHP","type":"plugin","creationDate":"Oct 2011","author":"kksou","copyright":"(C) kksou.com. All Rights Reserved.","authorEmail":"support@kksou.com","authorUrl":"www.kksou.com\\/php-gtk2\\/","version":"2.5","description":"This plugin allows direct embedding of PHP commands right inside Joomla content page for dynamic contents. To see examples of using this plugin, please refer to: http:\\/\\/www.kksou.com\\/php-gtk2\\/Joomla\\/DirectPHP-plugin.php","group":""}', '{"using_no_editor":"0","block_list":"basename, chgrp, chmod, chown, clearstatcache, copy, delete, dirname, disk_free_space, disk_total_space, diskfreespace, fclose, feof, fflush, fgetc, fgetcsv, fgets, fgetss, file_exists, file_get_contents, file_put_contents, file, fileatime, filectime, filegroup, fileinode, filemtime, fileowner, fileperms, filesize, filetype, flock, fnmatch, fopen, fpassthru, fputcsv, fputs, fread, fscanf, fseek, fstat, ftell, ftruncate, fwrite, glob, lchgrp, lchown, link, linkinfo, lstat, move_uploaded_file, opendir, parse_ini_file, pathinfo, pclose, popen, readfile, readdir, readllink, realpath, rename, rewind, rmdir, set_file_buffer, stat, symlink, tempnam, tmpfile, touch, umask, unlink, fsockopen, system, exec, passthru, escapeshellcmd, pcntl_exec, proc_open, proc_close, mkdir, rmdir"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10108, 'showCA', 'module', 'showCA', '', 0, 1, 0, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10109, 'mod_showCA', 'module', 'mod_showCA', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_showCA","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A simple Hello, World! module.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10110, 'select_company', 'module', 'select_company', '', 0, 1, 0, 0, '{"legacy":false,"name":"select_company","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A cover letter Form.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10117, 'cover_form', 'module', 'cover_form', '', 0, 1, 0, 0, '{"legacy":false,"name":"cover_form","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"A cover letter Form.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10118, 'jevents', 'component', 'com_jevents', '', 1, 1, 0, 0, '{"legacy":false,"name":"JEvents","type":"component","creationDate":"April 2013","author":"GWE Systems Ltd ","copyright":"(C) 2009-2012 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Events, meetings and more","group":""}', '{"com_calViewName":"ext","darktemplate":"0","com_dateformat":"0","com_calHeadline":"none","com_calUseIconic":"1","iconstoshow":["bymonth"],"com_navbarcolor":"green","com_earliestyear":"2000","com_latestyear":"2015","com_starday":"0","com_print_icon_view":"0","com_email_icon_view":"0","com_copyright":"0","showPanelNews":"1","mergemenus":"1","show_adminpanel":"1","icaltimezonelive":"","regexsearch":"1","catseparator":"|","com_cache":"2","newsef":"1","com_blockRobots":"1","robotprior":"-1 month","robotpost":"+1 month","redirectrobots":"0","robotmenuitem":"","blockall":"0","largeDataSetLimit":"100000","jevadmin":"0","authorisedonly":"0","jevpublishown":"0","rules":{"core.manage":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.create":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.edit.own":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.edit":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.edit.state":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.deleteall":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""},"core.admin":{"1":"","11":"","9":"","10":"1","6":"","7":"","2":"","3":"","4":"","5":"","8":""}},"icaltimezone":"","icalkey":"SECRET_PHRASE","showicalicon":"0","disableicalexport":"0","icalmultiday":"0","icalmultiday24h":"0","feimport":"0","allowedit":"1","icalformatted":"0","com_calUseStdTime":"1","multicategory":"1","com_editdateformat":"Y-m-d","editpopup":"1","disablerepeats":"1","popupw":"800","popuph":"500","defaultcat":"0","forcepopupcalendar":"1","com_calForceCatColorEventForm":"2","com_single_pane_edit":"1","timebeforedescription":"1","com_show_editor_buttons":"1","com_editor_button_exceptions":"pagebreak,readmore","com_notifyboth":"0","com_notifyallevents":"0","com_notifyauthor":"0","showpriority":"1","multiday":"1","checkclashes":"1","noclashes":"1","skipreferrer":"0","defaultstarttime":"08:00","defaultendtime":"17:00","allowraw":"0","com_byview":"1","com_mailview":"1","com_hitsview":"1","com_repeatview":"1","contact_display_name":"0","redirect_detail":"0","com_calCutTitle":"15","com_calMaxDisplay":"15","com_calDisplayStarttime":"1","com_enableToolTip":"1","tooltiptype":"joomla","com_calTTBackground":"1","com_calTTPosX":"LEFT","com_calTTPosY":"BELOW","com_calTTShadow":"0","com_calTTShadowX":"0","com_calTTShadowY":"0","com_calShowLegend":"1","com_calEventListRowsPpg":"10","showyearpast":"1","com_showrepeats":"1","showyeardate":"0","com_rss_cache":"1","com_rss_cache_time":"3600","com_rss_count":"5","com_rss_live_bookmarks":"1","com_rss_modid":"0","com_rss_title":"JEvents RSS Feed for Joomla","com_rss_description":"Powered by JEvents!","com_rss_limit_text":"0","com_rss_text_length":"20","com_rss_logo":"","modcal_DispLastMonth":"NO","modcal_DispLastMonthDays":"0","modcal_DispNextMonth":"NO","modcal_DispNextMonthDays":"0","modcal_LinkCloaking":"0","modlatest_MaxEvents":"10","modlatest_Mode":"0","modlatest_Days":"5","startnow":"0","modlatest_NoRepeat":"1","modlatest_multiday":"0","modlatest_DispLinks":"1","modlatest_DispYear":"0","modlatest_DisDateStyle":"0","modlatest_DisTitleStyle":"0","modlatest_LinkToCal":"0","modlatest_LinkCloaking":"0","modlatest_SortReverse":"0","modlatest_CustFmtStr":"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br \\/>${title}","modlatest_RSS":"0","modlatest_contentplugins":"0","notifymessage":"Title : {TITLE}<br\\/><br\\/>\\r\\n{DESCRIPTION}<br\\/><br\\/>\\r\\nEvent submitted from [ {LIVESITE} ] by [ {AUTHOR} ]<br\\/>\\r\\nView this event : {VIEWLINK}<br\\/>\\r\\nEdit this event : {EDITLINK}<br\\/>\\r\\nManage your events : <a href=''{MANAGEEVENTS}''>Manage Events<\\/a><br\\/>"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10119, 'JEvents Calendar', 'module', 'mod_jevents_cal', '', 0, 1, 0, 0, '{"legacy":false,"name":"JEvents Calendar","type":"module","creationDate":"April 2013","author":"GWE Systems Ltd","copyright":"(C) 2009-2013 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Shows up to 3 different monthly calendar for JEvents component","group":""}', '{"@spacer":"JEV_LATEST_EXTRAS_TAB_LABEL","com_calViewName":"","target_itemid":"","catidnew":"","modcal_useLocalParam":"0","noeventcheck":"0","ignorecatfilter":"0","ignorefiltermodule":"1","minical_showlink":"1","minical_prevyear":"1","minical_prevmonth":"1","minical_actmonth":"1","minical_actyear":"1","minical_nextmonth":"1","minical_nextyear":"1","minical_usedate":"0","modcal_DispLastMonth":"NO","modcal_DispLastMonthDays":"0","modcal_DispNextMonth":"NO","modcal_DispNextMonthDays":"0","extras0":"","extras1":"","extras2":"","extras3":"","extras4":"","extras5":"","extras6":"","extras7":"","extras8":"","extras9":"","extras10":"","extras11":"","extras12":"","extras13":"","moduleclass_sfx":"","inc_ec_css":"1","cache":"1","mod_cal_width":"","mod_cal_height":"","modcal_LinkCloaking":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10120, 'JEvents Legend', 'module', 'mod_jevents_legend', '', 0, 1, 0, 0, '{"legacy":false,"name":"JEvents Legend","type":"module","creationDate":"April 2013","author":"GWE Systems Ltd","copyright":"(C) 2009-2013 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Shows legend for JEvents categories","group":""}', '{"cache":"0","moduleclass_sfx":"","show_admin":"0","modlegend_inccss":"1","nonjeventsdisable":"1","target_itemid":"","catidnew":"","hideinactivekids":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10121, 'Latest JEvents', 'module', 'mod_jevents_latest', '', 0, 1, 0, 0, '{"legacy":false,"name":"Latest JEvents","type":"module","creationDate":"April 2013","author":"GWE Systems Ltd","copyright":"(C) 2009-2013 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Show latest events for Events component","group":""}', '{"@spacer":"ADDITIONAL_CONSTRAINTS","com_calViewName":"","cache":"0","moduleclass_sfx":"","catidnew":"","ignorecatfilter":"0","ignorefiltermodule":"1","target_itemid":"","modlatest_inccss":"1","layout":"","modlatest_useLocalParam":"1","modlatest_CustFmtStr":"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br \\/>${title}","modlatest_MaxEvents":"10","modlatest_Mode":"3","modlatest_Days":"30","startnow":"0","pastonly":"0","modlatest_NoRepeat":"0","modlatest_multiday":"0","modlatest_DispLinks":"1","modlatest_DispYear":"0","modlatest_DisDateStyle":"0","modlatest_DisTitleStyle":"0","modlatest_LinkToCal":"0","modlatest_LinkCloaking":"0","modlatest_SortReverse":"0","modlatest_RSS":"0","modlatest_rss_title":"","modlatest_rss_description":"","extras0":"","extras1":"","extras2":"","extras3":"","extras4":"","extras5":"","extras6":"","extras7":"","extras8":"","extras9":"","extras10":"","extras11":"","extras12":"","extras13":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10122, 'JEvents Filter', 'module', 'mod_jevents_filter', '', 0, 1, 0, 0, '{"legacy":false,"name":"JEvents Filter","type":"module","creationDate":"April 2013","author":"GWE Systems Ltd","copyright":"(C) 2009-2013 GWE Systems Ltd","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Shows JEvents Filter","group":""}', '{"filters":"search","target_itemid":"","resetfilters":"none","disablenonjeventspages":"0","showindetails":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10123, 'JEvents View Switcher', 'module', 'mod_jevents_switchview', '', 0, 1, 0, 0, '{"legacy":false,"name":"JEvents View Switcher","type":"module","creationDate":"April 2013","author":"GWE Systems Ltd","copyright":"(C) 2009-2013 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"http:\\/\\/www.jevents.net","version":"3.0.13","description":"Switch views for JEvents component and modules","group":""}', '{"cache":"0","show_preview":"0","target_itemid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jobs_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10124, 'plg_finder_jevents', 'plugin', 'jevents', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_jevents","type":"plugin","creationDate":"April 2013","author":"Geraint Edwards","copyright":"(C) 2010-2013 GWE Systems Ltd. All rights reserved.","authorEmail":"","authorUrl":"www.gwesystems.com","version":"3.0.13","description":"PLG_FINDER_JEVENTS_XML_DESCRIPTION","group":""}', '{"target_itemid":""}', '', '', 459, '2013-05-16 06:24:18', 0, 0),
(10125, 'Search - JEvents', 'plugin', 'eventsearch', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"Search - JEvents","type":"plugin","creationDate":"April 2013","author":"JEvents Project Group","copyright":"(C) 2008-2013 GWE Systems Ltd, 2006-2008 JEvents Project Group","authorEmail":"","authorUrl":"www.jevents.net","version":"3.0.13","description":"Events Search is a plugin to allow searching events of the Events component.","group":""}', '{"search_limit":"50","date_format":"%Y-%m-%d","target_itemid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10126, 'jevents', 'package', 'pkg_jevents', '', 0, 1, 1, 0, '{"legacy":false,"name":"JEvents Package","type":"package","creationDate":"April 2013","author":"Geraint Edwards","copyright":"(C) 2012-2013 GWE Systems Ltd","authorEmail":"","authorUrl":"www.gwesystems.com","version":"3.0.13","description":"JEvents  - Events, Meetings, Calendars and More","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10127, 'Plugin Include Component', 'plugin', 'plugin_component', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Plugin Include Component","type":"plugin","creationDate":"28 May 2012","author":"Mike Reumer","copyright":"Copyright (C) 2012 Mike Reumer","authorEmail":"tech@reumer.net","authorUrl":"http:\\/\\/tech.reumer.net","version":"1.13","description":"<h1>Plugin include component<\\/h1><p><br\\/>\\n\\tInclude any component in a article (without iframe).<br \\/>Code is {component url=''url'' }<br \\/> Replace url with the url to your component and include index.php?<br \\/>For example:<br \\/>{component url=''index.php?option=com_component&amp;Itemid=73&amp;parameters....'' }<br \\/><br \\/>You maybe  need to change the url when using an SEF component. If you get a component not found when using normal url then use the SEF url. So not:<br \\/>index.php?option=com_contact&amp;lang=en&amp;view=category<br \\/>but:<br \\/>Contact-Us\\/category\\/<\\/p>","group":""}', '{"ignore_script":"","ignore_allscripts":"0","ignore_style":"","ignore_allstyles":"0","method":"file_get_contents","closesession":"0","ignoresef":"0","cbreplace":"0","urlprint":"1","replprint":"1","repltmpl":"1","runadmin":"0","caching":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10128, 'com_gcalendar', 'component', 'com_gcalendar', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_GCALENDAR","type":"component","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"COM_GCALENDAR_XML_DESCRIPTION","group":""}', '{"google_apps_domain":"","timezone":"Asia\\/Phnom_Penh","gc_cache":"1","gc_cache_time":"900","show_selection":"1","defaultView":"month","weekstart":"1","weekend":"1","calendar_height":"0","titleformat_month":"F Y","titleformat_week":"M j[ Y]{ ''-''[ M] j o}","titleformat_day":"l, M j, Y","titleformat_list":"M j Y","timeformat_month":"g:i a{ - g:i a}","timeformat_week":"g:i a{ - g:i a}","timeformat_day":"g:i a{ - g:i a}","timeformat_list":"g:i a{ - g:i a}","axisformat":"g:i a","description_date_format":"m.d.Y","description_time_format":"g:i a","description_format":"{{#events}}<p>{{date}}<br\\/>{{{description}}}<\\/p>{{\\/events}}","textbefore":"","textafter":"","show_event_as_popup":"1","popup_width":"650","popup_height":"500","theme":"","first_hour":"6","min_time":"0","max_time":"24","event_description_format":"1","event_date_format":"m.d.Y","event_time_format":"g:i a"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10129, 'MOD_GCALENDAR', 'module', 'mod_gcalendar', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_GCALENDAR","type":"module","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"MOD_GCALENDAR_XML_DESCRIPTION","group":""}', '{"calendarids":"","weekstart":"1","titleformat_month":"M Y","calendar_height":"","event_color":"135CAE","theme":"","@spacer":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10130, 'MOD_GCALENDAR_UPCOMING', 'module', 'mod_gcalendar_upcoming', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_GCALENDAR_UPCOMING","type":"module","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com\\n\\t","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"MOD_GCALENDAR_UPCOMING_XML_DESCRIPTION","group":""}', '{"calendarids":"","max_events":"5","order":"1","find":"","@spacer":"","output":"","output_grouping":"","start_date":"","end_date":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10131, 'MOD_GCALENDAR_NEXT', 'module', 'mod_gcalendar_next', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_GCALENDAR_NEXT","type":"module","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com\\n\\t","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"MOD_GCALENDAR_NEXT_XML_DESCRIPTION","group":""}', '{"calendarids":"","style_parameters":"","moduleclass_sfx":"","offset":"0","output":"","past_events":"1","output_now":"","find":"","title_filter":".*","max_events":"10"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10132, 'plg_search_gcalendar', 'plugin', 'gcalendar', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"plg_search_gcalendar","type":"plugin","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com\\n\\t","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"PLG_SEARCH_GCALENDAR_XML_DESCRIPTION","group":""}', '{"calendarids":"","search_limit":"50","pastevents":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10133, 'plg_gcalendar_next', 'plugin', 'gcalendar_next', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_gcalendar_next","type":"plugin","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"PLG_GCALENDAR_NEXT_XML_DESCRIPTION","group":""}', '{"calendarids":"","find":"","max_events":"2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10134, 'GCalendar', 'package', 'pkg_GCalendar', '', 0, 1, 1, 0, '{"legacy":false,"name":"GCalendar","type":"package","creationDate":"May 2013","author":"G4J Project","copyright":"This extension is released under the GNU\\/GPL License.","authorEmail":"info@digital-peak.com","authorUrl":"g4j.digital-peak.com","version":"3.0.2","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_finder_links`
--

INSERT INTO `jobs_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_jevents&task=icalevent.detail&evid=&Itemid=0', 'index.php?option=com_jevents&task=icalevent.detail&evid=&Itemid=0', 'wwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', '2013-05-17 13:55:59', 'f3522945debb5236763364b0777d1063', 1, 1, 0, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 6, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31373a7b733a383a2265766465745f6964223b733a323a223139223b733a373a2273756d6d617279223b733a31383a22777777777777777777777777777777777777223b733a343a22626f6479223b733a31383a22777777777777777777777777777777777777223b733a383a226d6f646966696564223b733a31393a22323031332d30352d31372030363a35353a3539223b733a353a2272705f6964223b4e3b733a373a226576656e746964223b4e3b733a353a226361746964223b4e3b733a353a226963736964223b4e3b733a31303a22637265617465645f6279223b4e3b733a383a2263617465676f7279223b4e3b733a393a226361745f7374617465223b4e3b733a31303a226361745f616363657373223b4e3b733a363a22617574686f72223b4e3b733a363a226c61796f7574223b733a353a226576656e74223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3132353a7b733a31353a22636f6d5f63616c566965774e616d65223b733a333a22657874223b733a31323a226461726b74656d706c617465223b733a313a2230223b733a31343a22636f6d5f64617465666f726d6174223b733a313a2230223b733a31353a22636f6d5f63616c486561646c696e65223b733a343a226e6f6e65223b733a31363a22636f6d5f63616c55736549636f6e6963223b733a313a2231223b733a31313a2269636f6e73746f73686f77223b613a313a7b693a303b733a373a2262796d6f6e7468223b7d733a31353a22636f6d5f6e6176626172636f6c6f72223b733a353a22677265656e223b733a31363a22636f6d5f6561726c6965737479656172223b733a343a2232303030223b733a31343a22636f6d5f6c617465737479656172223b733a343a2232303135223b733a31313a22636f6d5f73746172646179223b733a313a2230223b733a31393a22636f6d5f7072696e745f69636f6e5f76696577223b733a313a2230223b733a31393a22636f6d5f656d61696c5f69636f6e5f76696577223b733a313a2230223b733a31333a22636f6d5f636f70797269676874223b733a313a2230223b733a31333a2273686f7750616e656c4e657773223b733a313a2231223b733a31303a226d657267656d656e7573223b733a313a2231223b733a31353a2273686f775f61646d696e70616e656c223b733a313a2231223b733a31363a226963616c74696d657a6f6e656c697665223b733a303a22223b733a31313a227265676578736561726368223b733a313a2231223b733a31323a22636174736570617261746f72223b733a313a227c223b733a393a22636f6d5f6361636865223b693a303b733a363a226e6577736566223b733a313a2230223b733a31353a22636f6d5f626c6f636b526f626f7473223b733a313a2231223b733a31303a22726f626f747072696f72223b733a383a222d31206d6f6e7468223b733a393a22726f626f74706f7374223b733a383a222b31206d6f6e7468223b733a31343a227265646972656374726f626f7473223b733a313a2230223b733a31333a22726f626f746d656e756974656d223b733a303a22223b733a383a22626c6f636b616c6c223b733a313a2230223b733a31373a226c61726765446174615365744c696d6974223b733a363a22313030303030223b733a383a226a657661646d696e223b733a313a2230223b733a31343a22617574686f72697365646f6e6c79223b733a313a2230223b733a31333a226a65767075626c6973686f776e223b733a313a2230223b733a353a2272756c6573223b4f3a383a22737464436c617373223a373a7b733a31313a22636f72652e6d616e616765223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a303a22223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a31313a22636f72652e637265617465223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a31333a22636f72652e656469742e6f776e223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a393a22636f72652e65646974223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a31353a22636f72652e656469742e7374617465223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a31343a22636f72652e64656c657465616c6c223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d733a31303a22636f72652e61646d696e223b4f3a383a22737464436c617373223a31313a7b733a313a2231223b733a303a22223b733a323a223131223b733a303a22223b733a313a2239223b733a303a22223b733a323a223130223b733a313a2231223b733a313a2236223b733a303a22223b733a313a2237223b733a303a22223b733a313a2232223b733a303a22223b733a313a2233223b733a303a22223b733a313a2234223b733a303a22223b733a313a2235223b733a303a22223b733a313a2238223b733a303a22223b7d7d733a31323a226963616c74696d657a6f6e65223b733a303a22223b733a373a226963616c6b6579223b733a31333a225345435245545f504852415345223b733a31323a2273686f776963616c69636f6e223b733a313a2230223b733a31373a2264697361626c656963616c6578706f7274223b733a313a2230223b733a31323a226963616c6d756c7469646179223b733a313a2230223b733a31353a226963616c6d756c7469646179323468223b733a313a2230223b733a383a226665696d706f7274223b733a313a2230223b733a393a22616c6c6f7765646974223b733a313a2231223b733a31333a226963616c666f726d6174746564223b733a313a2230223b733a31373a22636f6d5f63616c55736553746454696d65223b733a313a2231223b733a31333a226d756c746963617465676f7279223b733a313a2231223b733a31383a22636f6d5f6564697464617465666f726d6174223b733a353a22592d6d2d64223b733a393a2265646974706f707570223b733a313a2231223b733a31343a2264697361626c6572657065617473223b733a313a2231223b733a363a22706f70757077223b733a333a22383030223b733a363a22706f70757068223b733a333a22353030223b733a31303a2264656661756c74636174223b733a313a2230223b733a31383a22666f726365706f70757063616c656e646172223b733a313a2231223b733a32393a22636f6d5f63616c466f726365436174436f6c6f724576656e74466f726d223b733a313a2232223b733a32303a22636f6d5f73696e676c655f70616e655f65646974223b733a313a2231223b733a32313a2274696d656265666f72656465736372697074696f6e223b733a313a2231223b733a32333a22636f6d5f73686f775f656469746f725f627574746f6e73223b733a313a2231223b733a32383a22636f6d5f656469746f725f627574746f6e5f657863657074696f6e73223b733a31383a2270616765627265616b2c726561646d6f7265223b733a31343a22636f6d5f6e6f74696679626f7468223b733a313a2230223b733a31393a22636f6d5f6e6f74696679616c6c6576656e7473223b733a313a2230223b733a31363a22636f6d5f6e6f74696679617574686f72223b733a313a2230223b733a31323a2273686f777072696f72697479223b733a313a2231223b733a383a226d756c7469646179223b733a313a2231223b733a31323a22636865636b636c6173686573223b733a313a2231223b733a393a226e6f636c6173686573223b733a313a2231223b733a31323a22736b69707265666572726572223b733a313a2230223b733a31363a2264656661756c74737461727474696d65223b733a353a2230383a3030223b733a31343a2264656661756c74656e6474696d65223b733a353a2231373a3030223b733a383a22616c6c6f77726177223b733a313a2230223b733a31303a22636f6d5f627976696577223b733a313a2231223b733a31323a22636f6d5f6d61696c76696577223b733a313a2231223b733a31323a22636f6d5f6869747376696577223b733a313a2231223b733a31343a22636f6d5f72657065617476696577223b733a313a2231223b733a32303a22636f6e746163745f646973706c61795f6e616d65223b733a313a2230223b733a31353a2272656469726563745f64657461696c223b733a313a2230223b733a31353a22636f6d5f63616c4375745469746c65223b733a323a223135223b733a31373a22636f6d5f63616c4d6178446973706c6179223b733a323a223135223b733a32333a22636f6d5f63616c446973706c6179537461727474696d65223b733a313a2231223b733a31373a22636f6d5f656e61626c65546f6f6c546970223b733a313a2231223b733a31313a22746f6f6c74697074797065223b733a363a226a6f6f6d6c61223b733a31393a22636f6d5f63616c54544261636b67726f756e64223b733a313a2231223b733a31333a22636f6d5f63616c5454506f7358223b733a343a224c454654223b733a31333a22636f6d5f63616c5454506f7359223b733a353a2242454c4f57223b733a31353a22636f6d5f63616c5454536861646f77223b733a313a2230223b733a31363a22636f6d5f63616c5454536861646f7758223b733a313a2230223b733a31363a22636f6d5f63616c5454536861646f7759223b733a313a2230223b733a31373a22636f6d5f63616c53686f774c6567656e64223b733a313a2231223b733a32333a22636f6d5f63616c4576656e744c697374526f7773507067223b733a323a223130223b733a31323a2273686f777965617270617374223b733a313a2231223b733a31353a22636f6d5f73686f7772657065617473223b733a313a2231223b733a31323a2273686f777965617264617465223b733a313a2230223b733a31333a22636f6d5f7273735f6361636865223b733a313a2231223b733a31383a22636f6d5f7273735f63616368655f74696d65223b733a343a2233363030223b733a31333a22636f6d5f7273735f636f756e74223b733a313a2235223b733a32323a22636f6d5f7273735f6c6976655f626f6f6b6d61726b73223b733a313a2231223b733a31333a22636f6d5f7273735f6d6f646964223b733a313a2230223b733a31333a22636f6d5f7273735f7469746c65223b733a32373a224a4576656e747320525353204665656420666f72204a6f6f6d6c61223b733a31393a22636f6d5f7273735f6465736372697074696f6e223b733a31393a22506f7765726564206279204a4576656e747321223b733a31383a22636f6d5f7273735f6c696d69745f74657874223b733a313a2230223b733a31393a22636f6d5f7273735f746578745f6c656e677468223b733a323a223230223b733a31323a22636f6d5f7273735f6c6f676f223b733a303a22223b733a32303a226d6f6463616c5f446973704c6173744d6f6e7468223b733a323a224e4f223b733a32343a226d6f6463616c5f446973704c6173744d6f6e746844617973223b733a313a2230223b733a32303a226d6f6463616c5f446973704e6578744d6f6e7468223b733a323a224e4f223b733a32343a226d6f6463616c5f446973704e6578744d6f6e746844617973223b733a313a2230223b733a31393a226d6f6463616c5f4c696e6b436c6f616b696e67223b733a313a2230223b733a31393a226d6f646c61746573745f4d61784576656e7473223b733a323a223130223b733a31343a226d6f646c61746573745f4d6f6465223b733a313a2230223b733a31343a226d6f646c61746573745f44617973223b733a313a2235223b733a383a2273746172746e6f77223b733a313a2230223b733a31383a226d6f646c61746573745f4e6f526570656174223b733a313a2231223b733a31383a226d6f646c61746573745f6d756c7469646179223b733a313a2230223b733a31393a226d6f646c61746573745f446973704c696e6b73223b733a313a2231223b733a31383a226d6f646c61746573745f4469737059656172223b733a313a2230223b733a32323a226d6f646c61746573745f446973446174655374796c65223b733a313a2230223b733a32333a226d6f646c61746573745f4469735469746c655374796c65223b733a313a2230223b733a31393a226d6f646c61746573745f4c696e6b546f43616c223b733a313a2230223b733a32323a226d6f646c61746573745f4c696e6b436c6f616b696e67223b733a313a2230223b733a32313a226d6f646c61746573745f536f727452657665727365223b733a313a2230223b733a32303a226d6f646c61746573745f43757374466d74537472223b733a35333a22247b6576656e74446174657d5b21613a202d20247b656e64446174652825493a254d2570297d5d3c6272202f3e247b7469746c657d223b733a31333a226d6f646c61746573745f525353223b733a313a2230223b733a32343a226d6f646c61746573745f636f6e74656e74706c7567696e73223b733a313a2230223b733a31333a226e6f746966796d657373616765223b733a3234383a225469746c65203a207b5449544c457d3c62722f3e3c62722f3e0d0a7b4445534352495054494f4e7d3c62722f3e3c62722f3e0d0a4576656e74207375626d69747465642066726f6d205b207b4c495645534954457d205d206279205b207b415554484f527d205d3c62722f3e0d0a566965772074686973206576656e74203a207b564945574c494e4b7d3c62722f3e0d0a456469742074686973206576656e74203a207b454449544c494e4b7d3c62722f3e0d0a4d616e61676520796f7572206576656e7473203a203c6120687265663d277b4d414e4147454556454e54537d273e4d616e616765204576656e74733c2f613e3c62722f3e223b733a31303a22706167655f7469746c65223b733a31303a224b686d6572204a6f6273223b733a31363a22706167655f6465736372697074696f6e223b733a303a22223b733a31313a22706167655f726967687473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a31323a22706167655f68656164696e67223b733a303a22223b7d7d733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d7d733a343a2270617468223b733a36363a22696e6465782e7068702f636f6d706f6e656e742f6a6576656e74732f6963616c6576656e742e64657461696c2f323031332f30352f31372f2d3f4974656d69643d30223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a333a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a353a224576656e74223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224576656e74223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a303a22223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b693a303b7d7d7d733a333a2275726c223b733a36353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6a6576656e7473267461736b3d6963616c6576656e742e64657461696c26657669643d264974656d69643d30223b733a353a22726f757465223b733a36353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6a6576656e7473267461736b3d6963616c6576656e742e64657461696c26657669643d264974656d69643d30223b733a353a227469746c65223b733a31383a22777777777777777777777777777777777777223b733a31313a226465736372697074696f6e223b733a31383a22777777777777777777777777777777777777223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b733a313a2231223b733a363a22616363657373223b4e3b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a363b7d);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_links_terms3`
--

INSERT INTO `jobs_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(1, 10, 0.9334),
(1, 11, 3.1334);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_links_terms4`
--

INSERT INTO `jobs_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 1.2),
(1, 2, 3.1334),
(1, 3, 3.8);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_links_terms8`
--

INSERT INTO `jobs_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(1, 6, 1.2),
(1, 7, 0.6666),
(1, 8, 2.6),
(1, 9, 3.2666),
(1, 12, 0.4),
(1, 13, 2.8666),
(1, 14, 3.4);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_links_termse`
--

INSERT INTO `jobs_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(1, 4, 0.39996);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_links_termsf`
--

INSERT INTO `jobs_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(1, 54, 3.1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jobs_finder_taxonomy`
--

INSERT INTO `jobs_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'Event', 1, 1, 0),
(4, 1, 'Category', 1, 1, 0),
(5, 4, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_taxonomy_map`
--

INSERT INTO `jobs_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `jobs_finder_terms`
--

INSERT INTO `jobs_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(1, 'component', 'component', 0, 0, 0.6, 'C5153', 15),
(2, 'component jevents', 'component jevents', 0, 1, 1.5667, 'C515321532', 15),
(3, 'component jevents icalevent', 'component jevents icalevent', 0, 1, 1.9, 'C5153215324153', 15),
(4, 'event', 'event', 0, 0, 0.3333, 'E153', 15),
(5, 'hi', 'hi', 0, 0, 0.1333, 'H000', 1),
(6, 'icalevent', 'icalevent', 0, 0, 0.6, 'I24153', 15),
(7, 'index', 'index', 0, 0, 0.3333, 'I532', 15),
(8, 'index php', 'index php', 0, 1, 1.3, 'I5321', 15),
(9, 'index php component', 'index php component', 0, 1, 1.6333, 'I532125153', 15),
(10, 'jevents', 'jevents', 0, 0, 0.4667, 'J1532', 15),
(11, 'jevents icalevent', 'jevents icalevent', 0, 1, 1.5667, 'J15324153', 15),
(12, 'php', 'php', 0, 0, 0.2, 'P000', 15),
(13, 'php component', 'php component', 0, 1, 1.4333, 'P25153', 15),
(14, 'php component jevents', 'php component jevents', 0, 1, 1.7, 'P2515321532', 15),
(15, 'sadfsfsdfasdf', 'sadfsfsdfasdf', 0, 0, 0.8667, 'S3121231231', 1),
(16, 'dfjfgjdfhj', 'dfjfgjdfhj', 0, 0, 0.6667, 'D1212312', 1),
(17, 'dghjghjghj', 'dghjghjghj', 0, 0, 0.6667, 'D200', 1),
(19, 'dsfdsgdfgsdg', 'dsfdsgdfgsdg', 0, 0, 0.8, 'D213231232', 1),
(20, 'gsdgdsfg', 'gsdgdsfg', 0, 0, 0.5333, 'G323212', 1),
(22, 'dfgsdfgdfgsdfg', 'dfgsdfgdfgsdfg', 0, 0, 0.9333, 'D12312312312', 1),
(23, 'dsgdfgdfg', 'dsgdfgdfg', 0, 0, 0.6, 'D2312312', 1),
(25, 'kkkkkkkkkkkk', 'kkkkkkkkkkkk', 0, 0, 0.8, 'K000', 1),
(26, 'kkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkk', 0, 0, 1, 'K000', 1),
(27, 'ssssssssssss', 'ssssssssssss', 0, 0, 0.8, 'S000', 1),
(28, 'sssssssssssssssssssssssssssssss', 'sssssssssssssssssssssssssssssss', 0, 0, 1, 'S000', 1),
(30, 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 0, 0, 0.8667, 'A000', 1),
(31, 'aaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa', 0, 0, 1, 'A000', 1),
(33, 'bbbbbbbb', 'bbbbbbbb', 0, 0, 0.5333, 'B000', 1),
(34, 'bbbbbbbbbbbbbb', 'bbbbbbbbbbbbbb', 0, 0, 0.9333, 'B000', 1),
(36, 'dddddddddd', 'dddddddddd', 0, 0, 0.6667, 'D000', 1),
(37, 'dddddddddddddddddddd', 'dddddddddddddddddddd', 0, 0, 1, 'D000', 1),
(39, 'aaaaaaaaaaasssss', 'aaaaaaaaaaasssss', 0, 0, 1, 'A200', 1),
(40, 'asasasasasasasasasasaasasasas', 'asasasasasasasasasasaasasasas', 0, 0, 1, 'A200', 1),
(42, 'asdfasd', 'asdfasd', 0, 0, 0.4667, 'A23123', 1),
(43, 'sdafsdfsdfsdf', 'sdafsdfsdfsdf', 0, 0, 0.8667, 'S31231231231', 1),
(45, 'dsgsdfgdfgdfs', 'dsgsdfgdfgdfs', 0, 0, 0.8667, 'D2312312312', 1),
(46, 'sdgdfgdfsgdfsdfg', 'sdgdfgdfsgdfsdfg', 0, 0, 1, 'S32312312312312', 1),
(48, 'dfsgdfgdfgsdfgdfg', 'dfsgdfgdfgsdfgdfg', 0, 0, 1, 'D12312312312312', 1),
(49, 'sdgdsgdfgsdfgdf', 'sdgdsgdfgsdfgdf', 0, 0, 1, 'S323231231231', 1),
(51, 'dfffffffffffffffffffffffff', 'dfffffffffffffffffffffffff', 0, 0, 1, 'D100', 1),
(52, 'fdddddddddddddddddddddddd', 'fdddddddddddddddddddddddd', 0, 0, 1, 'F300', 1),
(54, 'wwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', 0, 0, 1, 'W000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_finder_terms_common`
--

INSERT INTO `jobs_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_finder_types`
--

CREATE TABLE IF NOT EXISTS `jobs_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jobs_finder_types`
--

INSERT INTO `jobs_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', ''),
(6, 'Event', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_gcalendar`
--

CREATE TABLE IF NOT EXISTS `jobs_gcalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_id` text NOT NULL,
  `name` text NOT NULL,
  `magic_cookie` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text,
  `color` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `access_content` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_gcalendar`
--

INSERT INTO `jobs_gcalendar` (`id`, `calendar_id`, `name`, `magic_cookie`, `username`, `password`, `color`, `access`, `access_content`) VALUES
(1, 'b3ndap9i49969vrvjm5c2glugo@group.calendar.google.com', 'CalendarGoogle', '', 'admin', '55545B 6414158174048', '1B887A', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_categories`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_categories` (
  `id` int(12) NOT NULL DEFAULT '0',
  `color` varchar(8) NOT NULL DEFAULT '',
  `overlaps` tinyint(3) NOT NULL DEFAULT '0',
  `admin` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_catmap`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_catmap` (
  `evid` int(12) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '1',
  `ordering` int(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `key_event_category` (`evid`,`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobs_jevents_catmap`
--

INSERT INTO `jobs_jevents_catmap` (`evid`, `catid`, `ordering`) VALUES
(5, 19, 0),
(6, 19, 0),
(8, 19, 0),
(15, 19, 0),
(10, 19, 0),
(11, 19, 0),
(19, 19, 0),
(16, 19, 0),
(18, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_exception`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_exception` (
  `ex_id` int(12) NOT NULL AUTO_INCREMENT,
  `rp_id` int(12) NOT NULL DEFAULT '0',
  `eventid` int(12) NOT NULL DEFAULT '1',
  `eventdetail_id` int(12) NOT NULL DEFAULT '0',
  `exception_type` int(2) NOT NULL DEFAULT '0',
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oldstartrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempfield` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ex_id`),
  KEY `eventid` (`eventid`),
  KEY `rp_id` (`rp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_icsfile`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_icsfile` (
  `ics_id` int(12) NOT NULL AUTO_INCREMENT,
  `srcURL` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(120) NOT NULL DEFAULT '',
  `icaltype` tinyint(3) NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) NOT NULL DEFAULT '0',
  `ignoreembedcat` tinyint(3) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autorefresh` tinyint(3) NOT NULL DEFAULT '0',
  `overlaps` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ics_id`),
  UNIQUE KEY `label` (`label`),
  KEY `stateidx` (`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_jevents_icsfile`
--

INSERT INTO `jobs_jevents_icsfile` (`ics_id`, `srcURL`, `label`, `filename`, `icaltype`, `isdefault`, `ignoreembedcat`, `state`, `access`, `catid`, `created`, `created_by`, `created_by_alias`, `modified_by`, `refreshed`, `autorefresh`, `overlaps`) VALUES
(1, '', 'Default', 'Initial ICS File', 2, 1, 0, 1, 1, 18, '0000-00-00 00:00:00', 0, '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_repbyday`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_repbyday` (
  `rptday` date NOT NULL DEFAULT '0000-00-00',
  `rp_id` int(12) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '1',
  KEY `rptday` (`rptday`),
  KEY `daycat` (`rptday`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_repetition`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_repetition` (
  `rp_id` int(12) NOT NULL AUTO_INCREMENT,
  `eventid` int(12) NOT NULL DEFAULT '1',
  `eventdetail_id` int(12) NOT NULL DEFAULT '0',
  `duplicatecheck` varchar(32) NOT NULL DEFAULT '',
  `startrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endrepeat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`rp_id`),
  UNIQUE KEY `duplicatecheck` (`duplicatecheck`),
  KEY `eventid` (`eventid`),
  KEY `eventstart` (`eventid`,`startrepeat`),
  KEY `eventend` (`eventid`,`endrepeat`),
  KEY `eventdetail` (`eventdetail_id`),
  KEY `startrepeat` (`startrepeat`),
  KEY `startend` (`startrepeat`,`endrepeat`),
  KEY `endrepeat` (`endrepeat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobs_jevents_repetition`
--

INSERT INTO `jobs_jevents_repetition` (`rp_id`, `eventid`, `eventdetail_id`, `duplicatecheck`, `startrepeat`, `endrepeat`) VALUES
(1, 1, 1, 'f373f6ac9fb0914017d38df40bd5d5ef', '2013-05-10 08:00:00', '2013-05-10 17:00:00'),
(2, 2, 2, '79c18fb51e0adb68702dd176652db1fd', '2013-05-13 08:00:00', '2013-05-13 17:00:00'),
(3, 3, 3, 'd1ac807250f67592ef67af63a3a8f2dc', '2013-05-13 08:00:00', '2013-05-13 17:00:00'),
(4, 4, 4, '96908045d0698b78fac6e29d26334b2e', '2013-05-13 08:00:00', '2013-05-13 17:00:00'),
(5, 5, 5, '34b8d2267af62e79d794665deea6ad27', '2013-05-16 08:00:00', '2013-05-16 17:00:00'),
(6, 6, 6, '232af805377f0b31b308b14a0e253b1b', '2013-05-21 08:00:00', '2013-05-21 17:00:00'),
(8, 8, 8, '041fa39ba78ea30136125667d59cd3b0', '2013-05-24 08:00:00', '2013-05-24 17:00:00'),
(15, 15, 15, '3cca4658acc4d9c4200f60adf8181039', '2013-05-30 08:00:00', '2013-05-30 17:00:00'),
(10, 10, 10, 'e6c7680c66bbb805e3dfe5210efb6a76', '2013-05-29 08:00:00', '2013-05-29 17:00:00'),
(11, 11, 11, 'beb2bb35c47a8e1013b0072f1b3bae3a', '2013-05-25 08:00:00', '2013-05-25 17:00:00'),
(19, 19, 19, '837a04ec627b129a69ce44397d482439', '2013-05-28 08:00:00', '2013-05-28 17:00:00'),
(16, 16, 16, '25b613baeff3b8d2a31dc452d271f595', '2013-05-23 08:00:00', '2013-05-23 17:00:00'),
(18, 18, 18, 'e8c328ee0670febaa43fe0d9ac2a13df', '2013-05-27 08:00:00', '2013-05-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_rrule`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_rrule` (
  `rr_id` int(12) NOT NULL AUTO_INCREMENT,
  `eventid` int(12) NOT NULL DEFAULT '1',
  `freq` varchar(30) NOT NULL DEFAULT '',
  `until` int(12) NOT NULL DEFAULT '1',
  `untilraw` varchar(30) NOT NULL DEFAULT '',
  `count` int(6) NOT NULL DEFAULT '1',
  `rinterval` int(6) NOT NULL DEFAULT '1',
  `bysecond` varchar(50) NOT NULL DEFAULT '',
  `byminute` varchar(50) NOT NULL DEFAULT '',
  `byhour` varchar(50) NOT NULL DEFAULT '',
  `byday` varchar(50) NOT NULL DEFAULT '',
  `bymonthday` varchar(50) NOT NULL DEFAULT '',
  `byyearday` varchar(50) NOT NULL DEFAULT '',
  `byweekno` varchar(50) NOT NULL DEFAULT '',
  `bymonth` varchar(50) NOT NULL DEFAULT '',
  `bysetpos` varchar(50) NOT NULL DEFAULT '',
  `wkst` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rr_id`),
  KEY `eventid` (`eventid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobs_jevents_rrule`
--

INSERT INTO `jobs_jevents_rrule` (`rr_id`, `eventid`, `freq`, `until`, `untilraw`, `count`, `rinterval`, `bysecond`, `byminute`, `byhour`, `byday`, `bymonthday`, `byyearday`, `byweekno`, `bymonth`, `bysetpos`, `wkst`) VALUES
(1, 1, 'none', 0, '', 1, 1, '', '', '', 'FR', '', '', '', '', '', ''),
(2, 2, 'none', 0, '', 1, 1, '', '', '', 'MO', '', '', '', '', '', ''),
(3, 3, 'none', 0, '', 1, 1, '', '', '', 'MO', '', '', '', '', '', ''),
(4, 4, 'none', 0, '', 1, 1, '', '', '', 'MO', '', '', '', '', '', ''),
(5, 5, 'none', 0, '', 1, 1, '', '', '', 'TH', '', '', '', '', '', ''),
(6, 6, 'none', 0, '', 1, 1, '', '', '', 'TU', '', '', '', '', '', ''),
(8, 8, 'none', 0, '', 1, 1, '', '', '', 'FR', '', '', '', '', '', ''),
(15, 15, 'none', 0, '', 1, 1, '', '', '', 'TH', '', '', '', '', '', ''),
(10, 10, 'none', 0, '', 1, 1, '', '', '', 'WE', '', '', '', '', '', ''),
(11, 11, 'none', 0, '', 1, 1, '', '', '', 'SA', '', '', '', '', '', ''),
(19, 19, 'none', 0, '', 1, 1, '', '', '', 'TU', '', '', '', '', '', ''),
(16, 16, 'none', 0, '', 1, 1, '', '', '', 'TH', '', '', '', '', '', ''),
(18, 18, 'none', 0, '', 1, 1, '', '', '', 'MO', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_vevdetail`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_vevdetail` (
  `evdet_id` int(12) NOT NULL AUTO_INCREMENT,
  `rawdata` longtext NOT NULL,
  `dtstart` int(11) NOT NULL DEFAULT '0',
  `dtstartraw` varchar(30) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `durationraw` varchar(30) NOT NULL DEFAULT '',
  `dtend` int(11) NOT NULL DEFAULT '0',
  `dtendraw` varchar(30) NOT NULL DEFAULT '',
  `dtstamp` varchar(30) NOT NULL DEFAULT '',
  `class` varchar(10) NOT NULL DEFAULT '',
  `categories` varchar(120) NOT NULL DEFAULT '',
  `color` varchar(20) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `geolon` float NOT NULL DEFAULT '0',
  `geolat` float NOT NULL DEFAULT '0',
  `location` varchar(120) NOT NULL DEFAULT '',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `contact` varchar(120) NOT NULL DEFAULT '',
  `organizer` varchar(120) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `extra_info` varchar(240) NOT NULL DEFAULT '',
  `created` varchar(30) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT '1',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `multiday` tinyint(3) NOT NULL DEFAULT '1',
  `hits` int(11) NOT NULL DEFAULT '0',
  `noendtime` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`evdet_id`),
  FULLTEXT KEY `searchIdx` (`summary`,`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobs_jevents_vevdetail`
--

INSERT INTO `jobs_jevents_vevdetail` (`evdet_id`, `rawdata`, `dtstart`, `dtstartraw`, `duration`, `durationraw`, `dtend`, `dtendraw`, `dtstamp`, `class`, `categories`, `color`, `description`, `geolon`, `geolat`, `location`, `priority`, `status`, `summary`, `contact`, `organizer`, `url`, `extra_info`, `created`, `sequence`, `state`, `modified`, `multiday`, `hits`, `noendtime`) VALUES
(1, '', 1368172800, '', 0, '', 1368205200, '', '', '', '', '', 'hello joomla', 0, 0, '', 0, '', 'hello', '', '', '', '', '', 0, 1, '2013-05-10 03:07:39', 1, 0, 0),
(2, '', 1368432000, '', 0, '', 1368464400, '', '', '', '', '', '', 0, 0, '', 0, '', 'asfasdfasdfsaf', '', '', '', '', '', 0, 1, '2013-05-16 04:19:01', 1, 0, 0),
(3, '', 1368432000, '', 0, '', 1368464400, '', '', '', '', '', '<p>sdafsdafsdf</p>', 0, 0, '', 0, '', 'asfasf', '', '', '', '', '', 0, 1, '2013-05-16 04:19:23', 1, 0, 0),
(4, '', 1368432000, '', 0, '', 1368464400, '', '', '', '', '', '<p>safasdf</p>', 0, 0, '', 0, '', 'asfsd', '', '', '', '', '', 0, 1, '2013-05-16 04:20:11', 1, 0, 0),
(5, '', 1368691200, '', 0, '', 1368723600, '', '', '', '', '', 'sadfsfsdfasdf', 0, 0, '', 0, '', 'hi', '', '', '', '', '', 0, 1, '2013-05-16 05:08:16', 1, 2, 0),
(6, '', 1369123200, '', 0, '', 1369155600, '', '', '', '', '', 'dfjfgjdfhj', 0, 0, '', 0, '', 'dghjghjghj', '', '', '', '', '', 0, 1, '2013-05-16 06:25:50', 1, 0, 0),
(8, '', 1369382400, '', 0, '', 1369414800, '', '', '', '', '', 'dsgdfgdfg', 0, 0, '', 0, '', 'dfgsdfgdfgsdfg', '', '', '', '', '', 0, 1, '2013-05-16 06:38:31', 1, 3, 0),
(16, '', 1369296000, '', 0, '', 1369328400, '', '', '', '', '', 'sdgdfgdfsgdfsdfg', 0, 0, '', 0, '', 'dsgsdfgdfgdfs', '', '', '', '', '', 0, 1, '2013-05-17 06:28:33', 1, 1, 0),
(15, '', 1369900800, '', 0, '', 1369933200, '', '', '', '', '', 'sdafsdfsdfsdf', 0, 0, '', 0, '', 'asdfasd', '', '', '', '', '', 0, 1, '2013-05-17 06:25:58', 1, 1, 0),
(10, '', 1369814400, '', 0, '', 1369846800, '', '', '', '', '', 'sssssssssssssssssssssssssssssss', 0, 0, '', 0, '', 'ssssssssssss', '', '', '', '', '', 0, 1, '2013-05-17 02:28:33', 1, 6, 0),
(11, '', 1369468800, '', 0, '', 1369501200, '', '', '', '', '', 'aaaaaaaaaaaaaaaaaaaaa', 0, 0, '', 0, '', 'aaaaaaaaaaaaa', '', '', '', '', '', 0, 1, '2013-05-17 05:06:37', 1, 1, 0),
(19, '', 1369728000, '', 0, '', 1369760400, '', '', '', '', '', 'wwwwwwwwwwwwwwwwww', 0, 0, '', 0, '', 'wwwwwwwwwwwwwwwwww', '', '', '', '', '', 0, 1, '2013-05-17 06:55:59', 1, 1, 0),
(18, '', 1369641600, '', 0, '', 1369674000, '', '', '', '', '', 'fdddddddddddddddddddddddd', 0, 0, '', 0, '', 'dfffffffffffffffffffffffff', '', '', '', '', '', 0, 1, '2013-05-17 06:55:12', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jevents_vevent`
--

CREATE TABLE IF NOT EXISTS `jobs_jevents_vevent` (
  `ev_id` int(12) NOT NULL AUTO_INCREMENT,
  `icsid` int(12) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '1',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `refreshed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `rawdata` longtext NOT NULL,
  `recurrence_id` varchar(30) NOT NULL DEFAULT '',
  `detail_id` int(12) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `lockevent` tinyint(3) NOT NULL DEFAULT '0',
  `author_notified` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `icsid` (`icsid`),
  KEY `stateidx` (`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobs_jevents_vevent`
--

INSERT INTO `jobs_jevents_vevent` (`ev_id`, `icsid`, `catid`, `uid`, `refreshed`, `created`, `created_by`, `created_by_alias`, `modified_by`, `rawdata`, `recurrence_id`, `detail_id`, `state`, `lockevent`, `author_notified`, `access`) VALUES
(1, 1, 18, '5a114ebb056335ad8d524f593fd439c4', '0000-00-00 00:00:00', '2013-05-10 03:07:39', 459, '', 459, 'a:18:{s:3:"UID";s:32:"5a114ebb056335ad8d524f593fd439c4";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:12:"hello joomla";s:12:"publish_down";s:10:"2013-05-10";s:10:"publish_up";s:10:"2013-05-10";s:7:"SUMMARY";s:5:"hello";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:459;s:7:"DTSTART";i:1368172800;s:5:"DTEND";i:1368205200;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"FR";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 1, 1, 0, 0, 1),
(2, 1, 0, '1ef2a847c1ea8c662dc5219cd4b9680b', '0000-00-00 00:00:00', '2013-05-16 04:19:00', 591, '', 591, 'a:17:{s:3:"UID";s:32:"1ef2a847c1ea8c662dc5219cd4b9680b";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:0:"";s:12:"publish_down";s:10:"2013-05-13";s:10:"publish_up";s:10:"2013-05-13";s:7:"SUMMARY";s:14:"asfasdfasdfsaf";s:3:"URL";s:0:"";s:7:"DTSTART";i:1368432000;s:5:"DTEND";i:1368464400;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"MO";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 2, 0, 0, 0, 1),
(3, 1, 0, 'a53290a5519eac58f562769c7ff4e92a', '0000-00-00 00:00:00', '2013-05-16 04:19:23', 591, '', 591, 'a:17:{s:3:"UID";s:32:"a53290a5519eac58f562769c7ff4e92a";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:18:"<p>sdafsdafsdf</p>";s:12:"publish_down";s:10:"2013-05-13";s:10:"publish_up";s:10:"2013-05-13";s:7:"SUMMARY";s:6:"asfasf";s:3:"URL";s:0:"";s:7:"DTSTART";i:1368432000;s:5:"DTEND";i:1368464400;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"MO";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 3, 0, 0, 0, 6),
(4, 1, 0, 'c4a2c7c0d90db958618d749092ab3bd3', '0000-00-00 00:00:00', '2013-05-16 04:20:11', 591, '', 591, 'a:17:{s:3:"UID";s:32:"c4a2c7c0d90db958618d749092ab3bd3";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:14:"<p>safasdf</p>";s:12:"publish_down";s:10:"2013-05-13";s:10:"publish_up";s:10:"2013-05-13";s:7:"SUMMARY";s:5:"asfsd";s:3:"URL";s:0:"";s:7:"DTSTART";i:1368432000;s:5:"DTEND";i:1368464400;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"MO";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 4, 0, 0, 0, 6),
(5, 1, 19, 'f231209563cb55def466da6b01b7adf9', '0000-00-00 00:00:00', '2013-05-16 05:08:16', 459, '', 459, 'a:20:{s:3:"UID";s:32:"f231209563cb55def466da6b01b7adf9";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:13:"sadfsfsdfasdf";s:12:"publish_down";s:9:"2013-5-16";s:10:"publish_up";s:9:"2013-5-16";s:13:"publish_down2";s:9:"2013-5-16";s:11:"publish_up2";s:9:"2013-5-16";s:7:"SUMMARY";s:2:"hi";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:459;s:7:"DTSTART";i:1368691200;s:5:"DTEND";i:1368723600;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"TH";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 5, 1, 0, 0, 1),
(6, 1, 19, 'd6f5d5ec1a08e92e1e0c825071102b84', '0000-00-00 00:00:00', '2013-05-16 06:25:50', 591, '', 591, 'a:19:{s:3:"UID";s:32:"d6f5d5ec1a08e92e1e0c825071102b84";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:10:"dfjfgjdfhj";s:12:"publish_down";s:9:"2013-5-21";s:10:"publish_up";s:9:"2013-5-21";s:13:"publish_down2";s:9:"2013-5-21";s:11:"publish_up2";s:9:"2013-5-21";s:7:"SUMMARY";s:10:"dghjghjghj";s:3:"URL";s:0:"";s:7:"DTSTART";i:1369123200;s:5:"DTEND";i:1369155600;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"TU";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 6, 0, 0, 0, 1),
(8, 1, 19, '0ba7adfe221639c594bf9571387b13de', '0000-00-00 00:00:00', '2013-05-16 06:38:31', 588, '', 591, 'a:20:{s:3:"UID";s:32:"0ba7adfe221639c594bf9571387b13de";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:9:"dsgdfgdfg";s:12:"publish_down";s:9:"2013-5-24";s:10:"publish_up";s:9:"2013-5-24";s:13:"publish_down2";s:9:"2013-5-24";s:11:"publish_up2";s:9:"2013-5-24";s:7:"SUMMARY";s:14:"dfgsdfgdfgsdfg";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:588;s:7:"DTSTART";i:1369382400;s:5:"DTEND";i:1369414800;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"FR";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 8, 1, 0, 0, 1),
(15, 1, 19, 'a1f4e3a09621ae16696d1148430c35bb', '0000-00-00 00:00:00', '2013-05-17 06:25:58', 591, '', 591, 'a:20:{s:3:"UID";s:32:"a1f4e3a09621ae16696d1148430c35bb";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:13:"sdafsdfsdfsdf";s:12:"publish_down";s:9:"2013-5-30";s:10:"publish_up";s:9:"2013-5-30";s:13:"publish_down2";s:9:"2013-5-30";s:11:"publish_up2";s:9:"2013-5-30";s:7:"SUMMARY";s:7:"asdfasd";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369900800;s:5:"DTEND";i:1369933200;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"TH";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 15, 1, 0, 0, 1),
(10, 1, 19, '2e9c5cc985a3a200fdac71b61e275277', '0000-00-00 00:00:00', '2013-05-17 02:28:33', 591, '', 591, 'a:20:{s:3:"UID";s:32:"2e9c5cc985a3a200fdac71b61e275277";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:31:"sssssssssssssssssssssssssssssss";s:12:"publish_down";s:9:"2013-5-29";s:10:"publish_up";s:9:"2013-5-29";s:13:"publish_down2";s:9:"2013-5-29";s:11:"publish_up2";s:9:"2013-5-29";s:7:"SUMMARY";s:12:"ssssssssssss";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369814400;s:5:"DTEND";i:1369846800;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"WE";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 10, 1, 0, 0, 1),
(11, 1, 19, '505892b5b938c7182f706dbddb88b687', '0000-00-00 00:00:00', '2013-05-17 05:06:37', 591, '', 591, 'a:20:{s:3:"UID";s:32:"505892b5b938c7182f706dbddb88b687";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:21:"aaaaaaaaaaaaaaaaaaaaa";s:12:"publish_down";s:9:"2013-5-25";s:10:"publish_up";s:9:"2013-5-25";s:13:"publish_down2";s:9:"2013-5-25";s:11:"publish_up2";s:9:"2013-5-25";s:7:"SUMMARY";s:13:"aaaaaaaaaaaaa";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369468800;s:5:"DTEND";i:1369501200;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"SA";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 11, 1, 0, 0, 1),
(19, 1, 19, 'a6d0d9da5ade7b213e93259d6669d573', '0000-00-00 00:00:00', '2013-05-17 06:55:59', 591, '', 591, 'a:20:{s:3:"UID";s:32:"a6d0d9da5ade7b213e93259d6669d573";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:18:"wwwwwwwwwwwwwwwwww";s:12:"publish_down";s:9:"2013-5-28";s:10:"publish_up";s:9:"2013-5-28";s:13:"publish_down2";s:9:"2013-5-28";s:11:"publish_up2";s:9:"2013-5-28";s:7:"SUMMARY";s:18:"wwwwwwwwwwwwwwwwww";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369728000;s:5:"DTEND";i:1369760400;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"TU";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 19, 1, 0, 0, 1),
(16, 1, 19, 'b12ebbc3f1afb2d2f7bfe6fd78c58297', '0000-00-00 00:00:00', '2013-05-17 06:28:33', 591, '', 591, 'a:20:{s:3:"UID";s:32:"b12ebbc3f1afb2d2f7bfe6fd78c58297";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:16:"sdgdfgdfsgdfsdfg";s:12:"publish_down";s:9:"2013-5-23";s:10:"publish_up";s:9:"2013-5-23";s:13:"publish_down2";s:9:"2013-5-23";s:11:"publish_up2";s:9:"2013-5-23";s:7:"SUMMARY";s:13:"dsgsdfgdfgdfs";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369296000;s:5:"DTEND";i:1369328400;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"TH";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 16, 1, 0, 0, 6),
(18, 1, 19, 'adcb10dbff1caf8bc817904401d54ffb', '0000-00-00 00:00:00', '2013-05-17 06:55:12', 591, '', 591, 'a:20:{s:3:"UID";s:32:"adcb10dbff1caf8bc817904401d54ffb";s:11:"X-EXTRAINFO";s:0:"";s:8:"LOCATION";s:0:"";s:11:"allDayEvent";s:3:"off";s:7:"CONTACT";s:0:"";s:11:"DESCRIPTION";s:25:"fdddddddddddddddddddddddd";s:12:"publish_down";s:9:"2013-5-27";s:10:"publish_up";s:9:"2013-5-27";s:13:"publish_down2";s:9:"2013-5-27";s:11:"publish_up2";s:9:"2013-5-27";s:7:"SUMMARY";s:26:"dfffffffffffffffffffffffff";s:3:"URL";s:0:"";s:11:"X-CREATEDBY";i:591;s:7:"DTSTART";i:1369641600;s:5:"DTEND";i:1369674000;s:5:"RRULE";a:4:{s:4:"FREQ";s:4:"none";s:5:"COUNT";i:1;s:8:"INTERVAL";s:1:"1";s:5:"BYDAY";s:2:"MO";}s:8:"MULTIDAY";s:1:"1";s:9:"NOENDTIME";s:1:"0";s:7:"X-COLOR";s:0:"";s:9:"LOCKEVENT";s:1:"0";}', '', 18, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jev_defaults`
--

CREATE TABLE IF NOT EXISTS `jobs_jev_defaults` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `subject` text NOT NULL,
  `value` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobs_jev_defaults`
--

INSERT INTO `jobs_jev_defaults` (`id`, `title`, `name`, `subject`, `value`, `state`, `params`, `language`) VALUES
(1, 'JEV_EVENT_DETAIL_PAGE', 'icalevent.detail_body', '', '', 0, '', '*'),
(2, 'JEV_EVENT_LIST_ROW', 'icalevent.list_row', '', '', 0, '', '*'),
(3, 'JEV_EVENT_MONTH_CALENDAR_CELL', 'month.calendar_cell', '', '', 0, '', '*'),
(4, 'JEV_EVENT_MONTH_CALENDAR_TIP', 'month.calendar_tip', '', '', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_jev_users`
--

CREATE TABLE IF NOT EXISTS `jobs_jev_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(2) NOT NULL DEFAULT '0',
  `canuploadimages` tinyint(2) NOT NULL DEFAULT '0',
  `canuploadmovies` tinyint(2) NOT NULL DEFAULT '0',
  `cancreate` tinyint(2) NOT NULL DEFAULT '0',
  `canedit` tinyint(2) NOT NULL DEFAULT '0',
  `canpublishown` tinyint(2) NOT NULL DEFAULT '0',
  `candeleteown` tinyint(2) NOT NULL DEFAULT '0',
  `canpublishall` tinyint(2) NOT NULL DEFAULT '0',
  `candeleteall` tinyint(2) NOT NULL DEFAULT '0',
  `cancreateown` tinyint(2) NOT NULL DEFAULT '0',
  `cancreateglobal` tinyint(2) NOT NULL DEFAULT '0',
  `eventslimit` int(11) NOT NULL DEFAULT '0',
  `extraslimit` int(11) NOT NULL DEFAULT '0',
  `categories` varchar(255) NOT NULL DEFAULT '',
  `calendars` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_languages`
--

CREATE TABLE IF NOT EXISTS `jobs_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_languages`
--

INSERT INTO `jobs_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_loginradius_settings`
--

CREATE TABLE IF NOT EXISTS `jobs_loginradius_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting` varchar(255) NOT NULL,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting` (`setting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=564 ;

--
-- Dumping data for table `jobs_loginradius_settings`
--

INSERT INTO `jobs_loginradius_settings` (`id`, `setting`, `value`) VALUES
(530, 'apikey', '4af4e88f-7b86-43ca-9518-faec9b94bf6c'),
(531, 'apisecret', 'efe08cb6-97a0-4034-bbf6-7602e872a6b3'),
(532, 'useapi', '1'),
(533, 'setredirct', '219'),
(534, 'linkaccount', '1'),
(535, 'sendemail', '1'),
(536, 'dummyemail', '1'),
(537, 'emailtitle', 'You are trying to connect with %s account'),
(538, 'emailrequiredmessage', 'Unfortunatly we could not retrieve any email from your %s account. Please enter your email address in the form below in order to continue.'),
(539, 'emailinvalidmessage', 'This email is invalid. Please enter a valid email'),
(540, 'showname', '1'),
(541, 'showwithicons', '1'),
(542, 'showicons', '1'),
(543, 'showlogout', '1'),
(544, 'enableshare', '0'),
(545, 'beforesharetitle', 'Share it now!'),
(546, 'chooseshare', '0'),
(547, 'choosesharepos', '0'),
(548, 'verticalsharetopoffset', ''),
(549, 'enablefb', 'facebook'),
(550, 'enabletwitter', 'twitter'),
(551, 'enablepin', 'pinterest'),
(552, 'enablegplus', 'googleplus'),
(553, 'enablelinkedin', 'linkedin'),
(554, 'sharepos', '0'),
(555, 'enablecounter', '0'),
(556, 'beforecountertitle', 'Be a fan!'),
(557, 'choosecounter', '0'),
(558, 'choosecounterpos', '0'),
(559, 'verticalcountertopoffset', ''),
(560, 'counterpos', '0'),
(561, 's_articles', ''),
(562, 'c_articles', ''),
(563, 'rearrange_settings', 'a:5:{i:0;s:8:"facebook";i:1;s:10:"googleplus";i:2;s:7:"twitter";i:3;s:8:"linkedin";i:4;s:9:"pinterest";}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_loginradius_users`
--

CREATE TABLE IF NOT EXISTS `jobs_loginradius_users` (
  `id` int(11) DEFAULT NULL,
  `LoginRadius_id` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `lr_picture` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_loginradius_users`
--

INSERT INTO `jobs_loginradius_users` (`id`, `LoginRadius_id`, `provider`, `lr_picture`) VALUES
(459, '0-Cjqh2ecL', 'linkedin', '0-Cjqh2ecL.jpg'),
(479, 'VZPYRnwLf2', 'linkedin', 'kolkanika479.jpg'),
(459, '100001321634714', 'facebook', '100001321634714.jpg'),
(590, '100001181617699', 'facebook', 'CnPisit590.jpg'),
(619, 'qeVUQ7BWVS', 'linkedin', 'cnpisit619.jpg'),
(616, 'XP5l6VAC-f', 'linkedin', 'SeSom616.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_menu`
--

CREATE TABLE IF NOT EXISTS `jobs_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

--
-- Dumping data for table `jobs_menu`
--

INSERT INTO `jobs_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 265, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 43, 44, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 35, 36, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 37, 42, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 38, 39, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 40, 41, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, 459, '2013-04-29 20:40:20', 0, 1, '', 9, '{"show_title":"0","link_titles":"0","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Leviathan - January 2013 Template Demo","show_page_heading":0,"page_heading":"","pageclass_sfx":" jan13-home","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"92","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 29, 30, 1, '*', 0),
(104, 'main', 'RokGallery', 'rokgallery', '', 'rokgallery', 'index.php?option=com_rokgallery', 'component', 0, 1, 1, 10020, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokgallery/assets/images/rokgallery_16x16.png', 0, '', 47, 48, 0, '', 1),
(105, 'main', 'COM_ROKCANDY', 'com-rokcandy', '', 'com-rokcandy', 'index.php?option=com_rokcandy', 'component', 0, 1, 1, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 49, 54, 0, '', 1),
(106, 'main', 'COM_ROKCANDY_SUBMENU_MACROS', 'com-rokcandy-submenu-macros', '', 'com-rokcandy/com-rokcandy-submenu-macros', 'index.php?option=com_rokcandy', 'component', 0, 105, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 50, 51, 0, '', 1),
(107, 'main', 'COM_ROKCANDY_SUBMENU_CATEGORIES', 'com-rokcandy-submenu-categories', '', 'com-rokcandy/com-rokcandy-submenu-categories', 'index.php?option=com_categories&extension=com_rokcandy', 'component', 0, 105, 2, 10028, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/icon-16-category.png', 0, '', 52, 53, 0, '', 1),
(108, 'mainmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=1', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"200","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 55, 86, 0, '*', 0),
(109, 'mainmenu', 'Module Positions', 'module-positions', '', 'features/module-positions', 'index.php?option=com_content&view=article&id=2', 'component', 0, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 56, 57, 0, '*', 0),
(110, 'mainmenu', 'Module Variations', 'module-variations', '', 'features/module-variations', 'index.php?option=com_content&view=article&id=3', 'component', 0, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 58, 59, 0, '*', 0),
(111, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_content&view=article&id=4', 'component', 0, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 60, 61, 0, '*', 0),
(112, 'mainmenu', 'Menu Options', 'menu-options', '', 'features/menu-options', 'index.php?option=com_content&view=article&id=5', 'component', 0, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"2","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"360","dropdown_column_widths":"180,180","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 62, 79, 0, '*', 0),
(113, 'mainmenu', 'Extensions', 'extensions', '', 'features/extensions', 'index.php?option=com_content&view=article&id=6', 'component', 0, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 80, 81, 0, '*', 0),
(114, 'mainmenu', 'Tutorials', 'tutorials', '', 'tutorials', 'index.php?option=com_content&view=article&id=7', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"200","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 87, 96, 0, '*', 0),
(115, 'mainmenu', 'Installation', 'installation', '', 'tutorials/installation', 'index.php?option=com_content&view=article&id=8', 'component', 0, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 88, 89, 0, '*', 0),
(116, 'mainmenu', 'Logo Editing', 'logo-editing', '', 'tutorials/logo-editing', 'index.php?option=com_content&view=article&id=9', 'component', 1, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 90, 91, 0, '*', 0),
(117, 'mainmenu', 'Styles', 'styles', '', 'styles', 'index.php?option=com_content&view=article&id=10', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"200","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"modules","dropdown_modules":"161","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 97, 98, 0, '*', 0),
(118, 'mainmenu', 'J! Stuff', 'j-stuff', '', 'j-stuff', 'index.php?option=com_content&view=article&id=11', 'component', 0, 1, 1, 22, 0, 459, '2013-04-25 11:14:31', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"200","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 99, 104, 0, '*', 0),
(119, 'login-form', 'Sign In/Sign Up', 'member-access', '', 'member-access', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 459, '2013-04-25 11:17:34', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Member Access","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 225, 226, 0, '*', 0),
(120, 'mainmenu', 'Category Blog', 'category-blog', '', 'j-stuff/category-blog', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 0, 118, 2, 22, 0, 459, '2013-04-25 11:14:51', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"5","num_columns":"","num_links":"3","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"1","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"1","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 100, 101, 0, '*', 0),
(121, 'mainmenu', 'Web Links', 'web-links', '', 'j-stuff/web-links', 'index.php?option=com_weblinks&view=category&id=17', 'component', 0, 118, 2, 21, 0, 459, '2013-04-25 11:14:44', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 102, 103, 0, '*', 0),
(122, 'mainmenu', 'Menu Examples', 'menu-examples', '', 'features/menu-options/menu-examples', 'index.php?Itemid=', 'alias', 0, 112, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"1","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 63, 70, 0, '*', 0),
(123, 'mainmenu', 'Menu Types', 'menu-types', '', 'features/menu-options/menu-types', 'index.php?Itemid=', 'alias', 0, 112, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"1","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 71, 78, 0, '*', 0),
(124, 'mainmenu', 'Child Item', 'child-item', '', 'features/menu-options/menu-examples/child-item', 'index.php?Itemid=', 'alias', 0, 122, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 64, 65, 0, '*', 0),
(125, 'mainmenu', 'Menu Icon', 'menu-icon', '', 'features/menu-options/menu-examples/menu-icon', 'index.php?Itemid=', 'alias', 0, 122, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"icon-list-ul","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 66, 67, 0, '*', 0),
(126, 'mainmenu', 'Module Menu', 'module-menu', '', 'features/menu-options/menu-examples/module-menu', 'index.php?Itemid=', 'alias', 0, 122, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"250","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"modulepos","dropdown_modules":"17","dropdown_module_positions":"menu-mod","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 68, 69, 0, '*', 0),
(127, 'mainmenu', 'Dropdown Menu', 'module-menu', '', 'features/menu-options/menu-types/module-menu', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=dropdownmenu', 'url', 0, 123, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 72, 73, 0, '*', 0),
(128, 'mainmenu', 'Split Menu', 'module-menu-2', '', 'features/menu-options/menu-types/module-menu-2', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=splitmenu', 'url', 0, 123, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 74, 75, 0, '*', 0),
(129, 'mainmenu', 'No Menu', 'module-menu-3', '', 'features/menu-options/menu-types/module-menu-3', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=nomenu', 'url', 0, 123, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 76, 77, 0, '*', 0),
(130, 'mainmenu', '404 Error Page', '2012-12-12-15-37-05', '', 'features/2012-12-12-15-37-05', 'index.php/404', 'url', 0, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 82, 83, 0, '*', 0),
(131, 'mainmenu', 'More Details', '2012-12-12-15-37-27', '', 'features/2012-12-12-15-37-27', 'http://www.rockettheme.com/joomla-templates/leviathan', 'url', 0, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 84, 85, 0, '*', 0),
(132, 'mainmenu', 'Forum Guides', '2012-12-12-15-37-44', '', 'tutorials/2012-12-12-15-37-44', 'http://www.rockettheme.com/forum/index.php?f=691&rb_v=viewforum', 'url', 0, 114, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 92, 93, 0, '*', 0),
(133, 'mainmenu', 'Gantry Framework', '2012-12-12-15-38-09', '', 'tutorials/2012-12-12-15-38-09', 'http://www.gantry-framework.org/documentation', 'url', 0, 114, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 94, 95, 0, '*', 0),
(134, 'quickmenularge', 'Home Page', 'homepage', '', 'homepage', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 105, 106, 0, '*', 0),
(135, 'quickmenularge', 'Spotlight', 'spotlight', '', 'spotlight', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 107, 116, 0, '*', 0),
(136, 'quickmenularge', 'Module Positions', 'spotlight-module-positions', '', 'spotlight/spotlight-module-positions', 'index.php?Itemid=', 'alias', 1, 135, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"109","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 108, 109, 0, '*', 0),
(137, 'quickmenularge', 'Module Variations', 'spotlight-module-variations', '', 'spotlight/spotlight-module-variations', 'index.php?Itemid=', 'alias', 1, 135, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 110, 111, 0, '*', 0),
(138, 'quickmenularge', 'Typography', 'spotlight-module-typography', '', 'spotlight/spotlight-module-typography', 'index.php?Itemid=', 'alias', 1, 135, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"111","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 112, 113, 0, '*', 0),
(139, 'quickmenularge', 'Menu System', 'spotlight-module-menu-system', '', 'spotlight/spotlight-module-menu-system', 'index.php?Itemid=', 'alias', 1, 135, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 114, 115, 0, '*', 0),
(140, 'quickmenularge', 'Template Guides', 'template-guides', '', 'template-guides', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 117, 122, 0, '*', 0),
(141, 'quickmenularge', 'Forum Tutorials', 'template-guides-gantry-documentation', '', 'template-guides/template-guides-gantry-documentation', 'http://www.rockettheme.com/forum/index.php?f=691&rb_v=viewforum', 'url', 1, 140, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 118, 119, 0, '*', 0),
(142, 'quickmenularge', 'Gantry Documentation', 'template-guides-gantry-documentation-2', '', 'template-guides/template-guides-gantry-documentation-2', 'http://www.gantry-framework.org/documentation', 'url', 1, 140, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 120, 121, 0, '*', 0),
(143, 'quickmenularge', 'Style Variations', 'style-variations', '', 'style-variations', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 127, 144, 0, '*', 0),
(144, 'quickmenularge', 'Joomla Stuff', 'joomla-stuff', '', 'joomla-stuff', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"118","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 123, 124, 0, '*', 0),
(145, 'quickmenularge', 'K2 Styling', 'k2-styling', '', 'k2-styling', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"113","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 125, 126, 0, '*', 0),
(147, 'quickmenularge', 'Download Leviathan', '2012-12-12-19-27-30', '', '2012-12-12-19-27-30', 'http://www.rockettheme.com/joomla-templates/leviathan', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 145, 146, 0, '*', 0),
(148, 'quickmenularge', 'Preset 1 (Blue + Orange)', '2012-12-12-20-10-36', '', 'style-variations/2012-12-12-20-10-36', '?presets=preset1', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 128, 129, 0, '*', 0),
(149, 'quickmenularge', 'Preset 2 (Orange + Green)', '2012-12-12-20-10-37', '', 'style-variations/2012-12-12-20-10-37', '?presets=preset2', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 130, 131, 0, '*', 0),
(150, 'quickmenularge', 'Preset 3 (Red + Blue)', '2012-12-12-20-10-38', '', 'style-variations/2012-12-12-20-10-38', '?presets=preset3', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 132, 133, 0, '*', 0),
(151, 'quickmenularge', 'Preset 4 (Green + Yellow)', '2012-12-12-20-10-39', '', 'style-variations/2012-12-12-20-10-39', '?presets=preset4', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 134, 135, 0, '*', 0),
(152, 'quickmenularge', 'Preset 5 (Purple + Blue)', '2012-12-12-20-10-40', '', 'style-variations/2012-12-12-20-10-40', '?presets=preset5', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 136, 137, 0, '*', 0),
(153, 'quickmenularge', 'Preset 6 (Navy + Orange)', '2012-12-12-20-10-41', '', 'style-variations/2012-12-12-20-10-41', '?presets=preset6', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 138, 139, 0, '*', 0),
(154, 'quickmenularge', 'Preset 7 (Cyan + Red)', '2012-12-12-20-10-42', '', 'style-variations/2012-12-12-20-10-42', '?presets=preset7', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 140, 141, 0, '*', 0),
(155, 'quickmenularge', 'Preset 8 (Blue + Navy)', '2012-12-12-20-10-43', '', 'style-variations/2012-12-12-20-10-43', '?presets=preset8', 'url', 1, 143, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 142, 143, 0, '*', 0);
INSERT INTO `jobs_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(156, 'quickmenudesktop', 'Home Page', 'homepage-2', '', 'homepage-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 147, 148, 0, '*', 0),
(157, 'quickmenudesktop', 'Spotlight', 'spotlight-2', '', 'spotlight-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 149, 156, 0, '*', 0),
(158, 'quickmenudesktop', 'Module Positions', 'spotlight-module-positions', '', 'spotlight-2/spotlight-module-positions', 'index.php?Itemid=', 'alias', 1, 157, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"109","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 150, 151, 0, '*', 0),
(159, 'quickmenudesktop', 'Module Variations', 'spotlight-module-variations', '', 'spotlight-2/spotlight-module-variations', 'index.php?Itemid=', 'alias', 1, 157, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 152, 153, 0, '*', 0),
(160, 'quickmenudesktop', 'Typography', 'spotlight-module-typography', '', 'spotlight-2/spotlight-module-typography', 'index.php?Itemid=', 'alias', 1, 157, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"111","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 154, 155, 0, '*', 0),
(162, 'quickmenudesktop', 'Template Guides', 'template-guides-2', '', 'template-guides-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 157, 162, 0, '*', 0),
(163, 'quickmenudesktop', 'Forum Tutorials', 'template-guides-gantry-documentation', '', 'template-guides-2/template-guides-gantry-documentation', 'http://www.rockettheme.com/forum/index.php?f=691&rb_v=viewforum', 'url', 1, 162, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 158, 159, 0, '*', 0),
(164, 'quickmenudesktop', 'Gantry Documentation', 'template-guides-gantry-documentation-2', '', 'template-guides-2/template-guides-gantry-documentation-2', 'http://www.gantry-framework.org/documentation', 'url', 1, 162, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 160, 161, 0, '*', 0),
(165, 'quickmenudesktop', 'Joomla Stuff', 'joomla-stuff-2', '', 'joomla-stuff-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"118","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 163, 164, 0, '*', 0),
(168, 'quickmenudesktop', 'Style Variations', 'style-variations-2', '', 'style-variations-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 165, 182, 0, '*', 0),
(169, 'quickmenudesktop', '1 (Blue + Orange)', '2012-12-12-20-10-36', '', 'style-variations-2/2012-12-12-20-10-36', '?presets=preset1', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 166, 167, 0, '*', 0),
(170, 'quickmenudesktop', '2 (Orange + Green)', '2012-12-12-20-10-37', '', 'style-variations-2/2012-12-12-20-10-37', '?presets=preset2', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 168, 169, 0, '*', 0),
(171, 'quickmenudesktop', '3 (Red + Blue)', '2012-12-12-20-10-38', '', 'style-variations-2/2012-12-12-20-10-38', '?presets=preset3', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 170, 171, 0, '*', 0),
(172, 'quickmenudesktop', '4 (Green + Yellow)', '2012-12-12-20-10-39', '', 'style-variations-2/2012-12-12-20-10-39', '?presets=preset4', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 172, 173, 0, '*', 0),
(173, 'quickmenudesktop', '5 (Purple + Blue)', '2012-12-12-20-10-40', '', 'style-variations-2/2012-12-12-20-10-40', '?presets=preset5', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 174, 175, 0, '*', 0),
(174, 'quickmenudesktop', '6 (Navy + Orange)', '2012-12-12-20-10-41', '', 'style-variations-2/2012-12-12-20-10-41', '?presets=preset6', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 176, 177, 0, '*', 0),
(175, 'quickmenudesktop', '7 (Cyan + Red)', '2012-12-12-20-10-42', '', 'style-variations-2/2012-12-12-20-10-42', '?presets=preset7', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 178, 179, 0, '*', 0),
(176, 'quickmenudesktop', '8 (Blue + Navy)', '2012-12-12-20-10-43', '', 'style-variations-2/2012-12-12-20-10-43', '?presets=preset8', 'url', 1, 168, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 180, 181, 0, '*', 0),
(177, 'quickmenudesktop', 'Download Leviathan', '2012-12-12-19-27-31', '', '2012-12-12-19-27-31', 'http://www.rockettheme.com/joomla-templates/leviathan', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 183, 184, 0, '*', 0),
(178, 'quickmenutablet', 'Home Page', 'homepage-3', '', 'homepage-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 185, 186, 0, '*', 0),
(179, 'quickmenutablet', 'Spotlight', 'spotlight-3', '', 'spotlight-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 187, 194, 0, '*', 0),
(180, 'quickmenutablet', 'Layouts', 'spotlight-module-positions', '', 'spotlight-3/spotlight-module-positions', 'index.php?Itemid=', 'alias', 1, 179, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"109","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 188, 189, 0, '*', 0),
(181, 'quickmenutablet', 'Suffixes', 'spotlight-module-variations', '', 'spotlight-3/spotlight-module-variations', 'index.php?Itemid=', 'alias', 1, 179, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 190, 191, 0, '*', 0),
(182, 'quickmenutablet', 'Typography', 'spotlight-module-typography', '', 'spotlight-3/spotlight-module-typography', 'index.php?Itemid=', 'alias', 1, 179, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"111","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 192, 193, 0, '*', 0),
(184, 'quickmenutablet', 'Theme Guides', 'template-guides-3', '', 'template-guides-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 195, 200, 0, '*', 0),
(185, 'quickmenutablet', 'Forum Tutorials', 'template-guides-gantry-documentation', '', 'template-guides-3/template-guides-gantry-documentation', 'http://www.rockettheme.com/forum/index.php?f=691&rb_v=viewforum', 'url', 1, 184, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 196, 197, 0, '*', 0),
(186, 'quickmenutablet', 'Gantry Docs', 'template-guides-gantry-documentation-2', '', 'template-guides-3/template-guides-gantry-documentation-2', 'http://www.gantry-framework.org/documentation', 'url', 1, 184, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 198, 199, 0, '*', 0),
(187, 'quickmenutablet', 'Joomla Stuff', 'joomla-stuff-3', '', 'joomla-stuff-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"118","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 201, 202, 0, '*', 0),
(188, 'quickmenutablet', 'K2 Styling', 'k2-styling-3', '', 'k2-styling-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"113","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 203, 204, 0, '*', 0),
(190, 'quickmenutablet', 'Variations', 'style-variations-3', '', 'style-variations-3', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 205, 222, 0, '*', 0),
(191, 'quickmenutablet', 'Style 1', '2012-12-12-20-10-36', '', 'style-variations-3/2012-12-12-20-10-36', '?presets=preset1', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 206, 207, 0, '*', 0),
(192, 'quickmenutablet', 'Style 2', '2012-12-12-20-10-37', '', 'style-variations-3/2012-12-12-20-10-37', '?presets=preset2', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 208, 209, 0, '*', 0),
(193, 'quickmenutablet', 'Style 3', '2012-12-12-20-10-38', '', 'style-variations-3/2012-12-12-20-10-38', '?presets=preset3', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 210, 211, 0, '*', 0),
(194, 'quickmenutablet', 'Style 4', '2012-12-12-20-10-39', '', 'style-variations-3/2012-12-12-20-10-39', '?presets=preset4', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 212, 213, 0, '*', 0),
(195, 'quickmenutablet', 'Style 5', '2012-12-12-20-10-40', '', 'style-variations-3/2012-12-12-20-10-40', '?presets=preset5', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 214, 215, 0, '*', 0),
(196, 'quickmenutablet', 'Style 6', '2012-12-12-20-10-41', '', 'style-variations-3/2012-12-12-20-10-41', '?presets=preset6', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 216, 217, 0, '*', 0),
(197, 'quickmenutablet', 'Style 7', '2012-12-12-20-10-42', '', 'style-variations-3/2012-12-12-20-10-42', '?presets=preset7', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 218, 219, 0, '*', 0),
(198, 'quickmenutablet', 'Style 8', '2012-12-12-20-10-43', '', 'style-variations-3/2012-12-12-20-10-43', '?presets=preset8', 'url', 1, 190, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"115","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 220, 221, 0, '*', 0),
(199, 'quickmenutablet', 'Download', '2012-12-12-19-27-32', '', '2012-12-12-19-27-32', 'http://www.rockettheme.com/joomla-templates/leviathan', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"138","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 223, 224, 0, '*', 0),
(212, 'main', 'COM_SOCIALLOGINANDSOCIALSHARE', 'com-socialloginandsocialshare', '', 'com-socialloginandsocialshare', 'index.php?option=com_socialloginandsocialshare', 'component', 0, 1, 1, 10101, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_socialloginandsocialshare/images/favicon.png', 0, '', 227, 228, 0, '', 1),
(213, 'mainmenu', 'CV', 'hello', '', 'hello', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 1, 1, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"url":"http:\\/\\/khmer.jobs\\/userdata","scrolling":"auto","width":"100%","height":"650","height_auto":"0","add_scheme":"1","frameborder":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 229, 232, 0, '*', 0),
(214, 'mainmenu', 'Calendar', 'calendar', '', 'calendar', 'index.php?option=com_content&view=article&id=11', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 5, '', 9, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 233, 234, 0, '*', 0),
(216, 'mainmenu', 'CV Form', 'cv-form', '', 'hello/cv-form', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 213, 2, 2, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"url":"http:\\/\\/khmer.jobs\\/userdata","scrolling":"auto","width":"100%","height":"650","height_auto":"0","add_scheme":"1","frameborder":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 230, 231, 0, '*', 0),
(217, 'mainmenu', 'Candidate List', 'candidate-list', '', 'candidate-list', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 1, 1, 2, 0, 0, '0000-00-00 00:00:00', 0, 5, '', 0, '{"url":"http:\\/\\/khmer.jobs\\/showdb","scrolling":"auto","width":"100%","height":"650","height_auto":"0","add_scheme":"1","frameborder":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 239, 240, 0, '*', 0),
(218, 'mainmenu', 'ListHR', 'listhr', '', 'listhr', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 235, 236, 0, '*', 0),
(219, 'mainmenu', 'Job Seeker', 'job-seeker', '', 'job-seeker', 'index.php?option=com_content&view=article&id=37', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 241, 248, 0, '*', 0),
(220, 'mainmenu', 'Job Oppotunity', 'job-oppotunity', '', 'job-oppotunity', 'index.php?option=com_content&view=article&id=31', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 249, 250, 0, '*', 0),
(222, 'mainmenu', 'cal', 'cal', '', 'job-seeker/cal', 'index.php?option=com_jevents&view=month&layout=calendar', 'component', -2, 219, 2, 10111, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"com_calViewName":"ext","com_calUseIconic":"1","iconstoshow":["byyear","bymonth","byweek","byday","search"],"showyearpast":"1","overridelayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"212","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 242, 243, 0, '*', 0),
(224, 'mainmenu', 'calendar', 'calendar', '', 'job-seeker/calendar', 'index.php?option=com_jevents&view=month&layout=calendar', 'component', 1, 219, 2, 10118, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"com_calViewName":"ext","com_calUseIconic":"0","iconstoshow":["byyear","bymonth","byweek","byday","search"],"showyearpast":"1","overridelayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"218","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 244, 245, 0, '*', 0),
(225, 'main', 'com_jevents', 'com-jevents', '', 'com-jevents', 'index.php?option=com_jevents', 'component', 0, 1, 1, 10118, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 251, 252, 0, '', 1),
(226, 'mainmenu', 'ListHR (2)', 'listhr-2', '', 'listhr-2', 'index.php?option=com_content&view=article&id=39', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"178","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 237, 238, 0, '*', 0),
(227, 'mainmenu', 'Dashboard', 'dashboard', '', 'dashboard', 'index.php?option=com_content&view=article&id=40', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"218","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 31, 32, 0, '*', 0),
(228, 'mainmenu', 'Cal', 'cale', '', 'job-seeker/cale', 'index.php?option=com_jevents&view=month&layout=calendar', 'component', 0, 219, 2, 10118, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"com_calViewName":"global","com_calUseIconic":"1","iconstoshow":["byyear","bymonth","byweek","byday","search"],"showyearpast":"1","overridelayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"214","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 246, 247, 0, '*', 0),
(229, 'main', 'COM_GCALENDAR', 'com-gcalendar', '', 'com-gcalendar', 'index.php?option=com_gcalendar', 'component', 0, 1, 1, 10128, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 253, 262, 0, '', 1),
(230, 'main', 'COM_GCALENDAR_SUBMENU_CPANEL', 'com-gcalendar-submenu-cpanel', '', 'com-gcalendar/com-gcalendar-submenu-cpanel', 'index.php?option=com_gcalendar&view=cpanel', 'component', 0, 229, 2, 10128, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 254, 255, 0, '', 1),
(231, 'main', 'COM_GCALENDAR_SUBMENU_GCALENDARS', 'com-gcalendar-submenu-gcalendars', '', 'com-gcalendar/com-gcalendar-submenu-gcalendars', 'index.php?option=com_gcalendar&view=gcalendars', 'component', 0, 229, 2, 10128, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 256, 257, 0, '', 1),
(232, 'main', 'COM_GCALENDAR_SUBMENU_TOOLS', 'com-gcalendar-submenu-tools', '', 'com-gcalendar/com-gcalendar-submenu-tools', 'index.php?option=com_gcalendar&view=tools', 'component', 0, 229, 2, 10128, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 258, 259, 0, '', 1),
(233, 'main', 'COM_GCALENDAR_SUBMENU_SUPPORT', 'com-gcalendar-submenu-support', '', 'com-gcalendar/com-gcalendar-submenu-support', 'index.php?option=com_gcalendar&view=support', 'component', 0, 229, 2, 10128, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 260, 261, 0, '', 1),
(234, 'mainmenu', 'Gcalendar', 'gcalendar', '', 'gcalendar', 'index.php?option=com_gcalendar&view=gcalendar', 'component', 1, 1, 1, 10128, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"calendarids":["1"],"show_selection":"3","defaultView":"month","weekstart":"0","weekend":"","calendar_height":"","titleformat_month":"","titleformat_week":"","titleformat_day":"","titleformat_list":"","timeformat_month":"","timeformat_week":"","timeformat_day":"","timeformat_list":"","axisformat":"","description_date_format":"","description_time_format":"","description_format":"","textbefore":"","textafter":"","show_event_as_popup":"","popup_width":"","popup_height":"","theme":"","first_hour":"","min_time":"","max_time":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"221","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 263, 264, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_menu_types`
--

CREATE TABLE IF NOT EXISTS `jobs_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jobs_menu_types`
--

INSERT INTO `jobs_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'quickmenularge', 'Quick Menu (Large)', 'Quick Menu (Large)'),
(3, 'quickmenudesktop', 'Quick Menu (Desktop)', 'Quick Menu (Desktop)'),
(4, 'quickmenutablet', 'Quick Menu (Tablet)', 'Quick Menu (Tablet)'),
(5, 'login-form', 'LoginForm', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_messages`
--

CREATE TABLE IF NOT EXISTS `jobs_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=285 ;

--
-- Dumping data for table `jobs_messages`
--

INSERT INTO `jobs_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(14, 477, 477, 0, '2013-04-26 01:09:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(15, 479, 479, 0, '2013-04-26 01:09:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(16, 484, 484, 0, '2013-04-26 01:09:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(17, 485, 485, 0, '2013-04-26 01:09:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(18, 486, 486, 0, '2013-04-26 01:09:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(20, 477, 477, 0, '2013-04-26 01:11:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(21, 479, 479, 0, '2013-04-26 01:11:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(22, 487, 487, 0, '2013-04-26 01:11:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdadssda'),
(24, 477, 477, 0, '2013-04-26 01:42:52', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(25, 479, 479, 0, '2013-04-26 01:42:52', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(26, 487, 487, 0, '2013-04-26 01:42:52', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(27, 488, 488, 0, '2013-04-26 01:42:52', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(29, 477, 477, 0, '2013-04-26 01:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(30, 479, 479, 0, '2013-04-26 01:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(31, 487, 487, 0, '2013-04-26 01:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(32, 489, 489, 0, '2013-04-26 01:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqq'),
(34, 477, 477, 0, '2013-04-26 01:46:02', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(35, 479, 479, 0, '2013-04-26 01:46:02', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(36, 487, 487, 0, '2013-04-26 01:46:02', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(37, 489, 489, 0, '2013-04-26 01:46:02', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(38, 490, 490, 0, '2013-04-26 01:46:02', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(40, 477, 477, 0, '2013-04-26 02:11:59', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(41, 479, 479, 0, '2013-04-26 02:11:59', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(42, 487, 487, 0, '2013-04-26 02:11:59', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(43, 491, 491, 0, '2013-04-26 02:11:59', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(45, 477, 477, 0, '2013-04-26 02:29:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(46, 479, 479, 0, '2013-04-26 02:29:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(47, 487, 487, 0, '2013-04-26 02:29:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(48, 492, 492, 0, '2013-04-26 02:29:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(50, 477, 477, 0, '2013-04-26 02:32:31', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(51, 479, 479, 0, '2013-04-26 02:32:31', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(52, 487, 487, 0, '2013-04-26 02:32:31', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(53, 493, 493, 0, '2013-04-26 02:32:31', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(55, 477, 477, 0, '2013-04-26 02:34:45', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(56, 479, 479, 0, '2013-04-26 02:34:45', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(57, 487, 487, 0, '2013-04-26 02:34:45', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(58, 494, 494, 0, '2013-04-26 02:34:45', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(60, 477, 477, 0, '2013-04-26 02:35:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(61, 479, 479, 0, '2013-04-26 02:35:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(62, 487, 487, 0, '2013-04-26 02:35:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(63, 495, 495, 0, '2013-04-26 02:35:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(65, 477, 477, 0, '2013-04-26 02:36:43', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(66, 479, 479, 0, '2013-04-26 02:36:43', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(67, 487, 487, 0, '2013-04-26 02:36:43', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(68, 496, 496, 0, '2013-04-26 02:36:43', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(70, 477, 477, 0, '2013-04-26 02:37:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(71, 479, 479, 0, '2013-04-26 02:37:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(72, 487, 487, 0, '2013-04-26 02:37:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(73, 497, 497, 0, '2013-04-26 02:37:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(75, 477, 477, 0, '2013-04-26 02:42:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(76, 479, 479, 0, '2013-04-26 02:42:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(77, 487, 487, 0, '2013-04-26 02:42:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(78, 498, 498, 0, '2013-04-26 02:42:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(80, 477, 477, 0, '2013-04-26 02:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(81, 479, 479, 0, '2013-04-26 02:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(82, 487, 487, 0, '2013-04-26 02:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(83, 499, 499, 0, '2013-04-26 02:45:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(85, 477, 477, 0, '2013-04-26 02:50:26', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(86, 479, 479, 0, '2013-04-26 02:50:26', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(87, 487, 487, 0, '2013-04-26 02:50:26', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(88, 500, 500, 0, '2013-04-26 02:50:26', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(90, 477, 477, 0, '2013-04-26 03:05:18', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(91, 479, 479, 0, '2013-04-26 03:05:18', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(92, 487, 487, 0, '2013-04-26 03:05:18', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(93, 501, 501, 0, '2013-04-26 03:05:18', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(95, 477, 477, 0, '2013-04-26 03:08:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(96, 479, 479, 0, '2013-04-26 03:08:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(97, 487, 487, 0, '2013-04-26 03:08:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(98, 502, 502, 0, '2013-04-26 03:08:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(100, 477, 477, 0, '2013-04-26 03:11:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(101, 479, 479, 0, '2013-04-26 03:11:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(102, 487, 487, 0, '2013-04-26 03:11:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(103, 503, 503, 0, '2013-04-26 03:11:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(105, 477, 477, 0, '2013-04-26 03:13:53', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(106, 479, 479, 0, '2013-04-26 03:13:53', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(107, 487, 487, 0, '2013-04-26 03:13:53', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(108, 504, 504, 0, '2013-04-26 03:13:53', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(110, 477, 477, 0, '2013-04-26 03:29:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(111, 479, 479, 0, '2013-04-26 03:29:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(112, 487, 487, 0, '2013-04-26 03:29:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(113, 505, 505, 0, '2013-04-26 03:29:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(115, 477, 477, 0, '2013-04-26 03:29:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(116, 479, 479, 0, '2013-04-26 03:29:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(117, 487, 487, 0, '2013-04-26 03:29:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(118, 506, 506, 0, '2013-04-26 03:29:42', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(120, 477, 477, 0, '2013-04-26 03:31:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(121, 479, 479, 0, '2013-04-26 03:31:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(122, 487, 487, 0, '2013-04-26 03:31:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(123, 507, 507, 0, '2013-04-26 03:31:28', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(125, 477, 477, 0, '2013-04-26 03:33:57', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(126, 479, 479, 0, '2013-04-26 03:33:57', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(127, 487, 487, 0, '2013-04-26 03:33:57', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(128, 508, 508, 0, '2013-04-26 03:33:57', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(130, 477, 477, 0, '2013-04-26 03:43:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(131, 479, 479, 0, '2013-04-26 03:43:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(132, 487, 487, 0, '2013-04-26 03:43:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(133, 509, 509, 0, '2013-04-26 03:43:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(135, 477, 477, 0, '2013-04-26 03:47:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(136, 479, 479, 0, '2013-04-26 03:47:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(137, 487, 487, 0, '2013-04-26 03:47:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(138, 510, 510, 0, '2013-04-26 03:47:30', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaa'),
(140, 477, 477, 0, '2013-04-26 07:42:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(141, 479, 479, 0, '2013-04-26 07:42:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(142, 487, 487, 0, '2013-04-26 07:42:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(143, 511, 511, 0, '2013-04-26 07:42:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(145, 477, 477, 0, '2013-04-26 07:43:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(146, 479, 479, 0, '2013-04-26 07:43:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(147, 487, 487, 0, '2013-04-26 07:43:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(148, 512, 512, 0, '2013-04-26 07:43:35', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(150, 477, 477, 0, '2013-04-26 07:44:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(151, 479, 479, 0, '2013-04-26 07:44:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(152, 487, 487, 0, '2013-04-26 07:44:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(153, 513, 513, 0, '2013-04-26 07:44:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(155, 477, 477, 0, '2013-04-26 07:54:15', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(156, 479, 479, 0, '2013-04-26 07:54:15', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(157, 487, 487, 0, '2013-04-26 07:54:15', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(158, 514, 514, 0, '2013-04-26 07:54:15', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaaa'),
(160, 477, 477, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(161, 479, 479, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(162, 487, 487, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(163, 514, 514, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(164, 515, 515, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(165, 516, 516, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(166, 517, 517, 0, '2013-04-26 08:16:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzz'),
(168, 477, 477, 0, '2013-04-26 08:37:40', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asas'),
(169, 479, 479, 0, '2013-04-26 08:37:40', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asas'),
(170, 487, 487, 0, '2013-04-26 08:37:40', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asas'),
(171, 518, 518, 0, '2013-04-26 08:37:40', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asas'),
(173, 477, 477, 0, '2013-04-26 08:54:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaa'),
(174, 479, 479, 0, '2013-04-26 08:54:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaa'),
(175, 487, 487, 0, '2013-04-26 08:54:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaa'),
(176, 518, 518, 0, '2013-04-26 08:54:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaa'),
(177, 519, 519, 0, '2013-04-26 08:54:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: aaaaaa'),
(179, 477, 477, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(180, 479, 479, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(181, 487, 487, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(182, 518, 518, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(183, 519, 519, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(184, 520, 520, 0, '2013-04-26 09:07:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(186, 477, 477, 0, '2013-04-26 09:10:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(187, 479, 479, 0, '2013-04-26 09:10:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(188, 487, 487, 0, '2013-04-26 09:10:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(189, 518, 518, 0, '2013-04-26 09:10:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(190, 521, 521, 0, '2013-04-26 09:10:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(192, 477, 477, 0, '2013-04-26 09:11:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(193, 479, 479, 0, '2013-04-26 09:11:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(194, 487, 487, 0, '2013-04-26 09:11:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(195, 518, 518, 0, '2013-04-26 09:11:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(196, 521, 521, 0, '2013-04-26 09:11:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(198, 477, 477, 0, '2013-04-26 09:13:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(199, 479, 479, 0, '2013-04-26 09:13:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(200, 487, 487, 0, '2013-04-26 09:13:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(201, 518, 518, 0, '2013-04-26 09:13:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(202, 521, 521, 0, '2013-04-26 09:13:37', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: You must provide at least one recipient email address. The user who attempted to register is: '),
(204, 477, 477, 0, '2013-04-26 09:32:38', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(205, 479, 479, 0, '2013-04-26 09:32:38', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(206, 487, 487, 0, '2013-04-26 09:32:38', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(207, 518, 518, 0, '2013-04-26 09:32:38', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(208, 522, 522, 0, '2013-04-26 09:32:38', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqqq'),
(210, 477, 477, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(211, 479, 479, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(212, 487, 487, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(213, 518, 518, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(214, 522, 522, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(215, 523, 523, 0, '2013-04-26 09:37:32', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asdfas'),
(217, 477, 477, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(218, 479, 479, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(219, 487, 487, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(220, 518, 518, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(221, 522, 522, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(222, 523, 523, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(223, 524, 524, 0, '2013-04-26 09:38:39', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafas'),
(225, 477, 477, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(226, 479, 479, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(227, 487, 487, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(228, 518, 518, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(229, 522, 522, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(230, 523, 523, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(231, 524, 524, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(232, 525, 525, 0, '2013-04-26 10:04:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: asfsafasaaa'),
(234, 477, 477, 0, '2013-04-26 10:34:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqq'),
(235, 479, 479, 0, '2013-04-26 10:34:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqq'),
(236, 487, 487, 0, '2013-04-26 10:34:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqq'),
(237, 518, 518, 0, '2013-04-26 10:34:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqq'),
(238, 526, 526, 0, '2013-04-26 10:34:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: qqqqqqqqqqq'),
(240, 477, 477, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(241, 479, 479, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(242, 540, 540, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(243, 541, 541, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(244, 542, 542, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(245, 543, 543, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(246, 544, 544, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(247, 545, 545, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(248, 546, 546, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(249, 547, 547, 0, '2013-04-29 02:29:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: zzzzzzz'),
(251, 477, 477, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(252, 479, 479, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(253, 540, 540, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(254, 541, 541, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(255, 542, 542, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(256, 543, 543, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(257, 544, 544, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(258, 545, 545, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(259, 546, 546, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(260, 547, 547, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(261, 548, 548, 0, '2013-04-29 02:30:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cccccc'),
(262, 459, 459, 0, '2013-05-17 07:07:57', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(263, 459, 459, 0, '2013-05-17 07:55:00', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(264, 459, 459, 0, '2013-05-17 07:57:19', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(265, 459, 459, 0, '2013-05-17 07:58:50', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit');
INSERT INTO `jobs_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(266, 459, 459, 0, '2013-05-17 08:01:17', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(267, 459, 459, 0, '2013-05-17 08:03:22', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(268, 459, 459, 0, '2013-05-17 08:05:10', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(269, 459, 459, 0, '2013-05-17 08:07:15', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(270, 459, 459, 0, '2013-05-17 08:12:23', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(271, 459, 459, 0, '2013-05-17 08:13:06', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(272, 459, 459, 0, '2013-05-17 08:15:14', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(273, 459, 459, 0, '2013-05-17 08:17:09', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(274, 459, 459, 0, '2013-05-17 08:18:13', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(275, 459, 459, 0, '2013-05-20 02:56:47', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(276, 459, 459, 0, '2013-05-20 02:59:54', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(277, 459, 459, 0, '2013-05-20 03:38:11', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(278, 459, 459, 0, '2013-05-20 03:40:22', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(279, 459, 459, 0, '2013-05-20 03:44:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(280, 459, 459, 0, '2013-05-20 03:45:34', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(281, 459, 459, 0, '2013-05-20 03:49:25', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: SeSom'),
(282, 459, 459, 0, '2013-05-20 03:51:07', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: SeSom'),
(283, 459, 459, 0, '2013-05-23 01:21:41', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit'),
(284, 459, 459, 0, '2013-05-23 01:27:04', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: cnpisit');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jobs_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_modules`
--

CREATE TABLE IF NOT EXISTS `jobs_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `jobs_modules`
--

INSERT INTO `jobs_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(91, 'Module in Menu', '', '<p>This is an example of a module being displayed inside the menu <strong>dropdowns</strong>.</p>\r\n<p><a href="#" class="readon"><span>Read More</span></a></p>', 0, 'menu-mod', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'Responsive Layouts Showcase', '', '<div class="rt-center largemargintop largemarginbottom">\r\n  <span class="promo2"><strong>Responsive</strong> Layout</span><br />\r\n  <span class="promo3">A responsive design automatically adapts itself to a particular viewing environment such as desktop, tablet or mobile, without the need for separate layouts for varying platforms</span>\r\n</div>\r\n\r\n<div class="rt-image rt-center largemargintop largemarginbottom">\r\n  <img class="rt-noborder" alt="image" src="images/rocketlauncher/features/responsive.png" />\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <h4 class="smallmarginbottom"><i class="icon-columns"></i>&nbsp;Responsive Frameworks</h4>\r\n    <p>We use the responsive layout based on <a target="_blank" href="http://twitter.github.com/bootstrap/" class="external"><strong>Twitter''s Bootstrap Framework</strong></a>, with its collection of utility classes, to provide a flexible responsive design.</p>\r\n    <a href="http://www.rockettheme.com/blog/team/1550-responsive-design-and-gantry4" class="readon"><span class="icon-external-link"></span><span> Read Blog</span></a>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <h4 class="smallmarginbottom"><i class="icon-cogs"></i>&nbsp;RocketTheme Extensions</h4>\r\n    <p>The RokSprocket and RokGallery extensions are built to work with a responsive layout and support mobile touch events, such as <strong>''swipe''</strong>.</p>\r\n    <a href="http://www.rockettheme.com/blog/team/1555-responsive-design-rocketthemes-extensions" class="readon"><span class="icon-external-link"></span><span> Read Blog</span></a>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <h4 class="smallmarginbottom"><i class="icon-th"></i>&nbsp;Media Queries in JavaScript</h4>\r\n    <p>We have created a new helper class, <strong>RokMediaQueries.js</strong>, which provides a unified system that enables extensions to add media query listeners.</p>\r\n    <a href="http://www.rockettheme.com/blog/team/1555-responsive-design-rocketthemes-extensions" class="readon"><span class="icon-external-link"></span><span> Read Blog</span></a>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>', 4, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Responsive Layouts', '', '<div class="rt-image">\r\n  <img class="rt-noborder" alt="image" src="images/rocketlauncher/features/responsive-1.jpg" />\r\n</div>\r\n\r\n<br />\r\n\r\n<span>Leviathan''s responsive grid system is designed for desktop, tablet and smartphone systems, each with minor modifications to ensure compatibility in each mode. The table above shows the breakdown of screen resolutions and associated devices, and what layout characters are then applied to each.</span>', 1, 'utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 icon-th","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'Responsive Classes', '', '<div class="rt-image">\r\n  <img class="rt-noborder" alt="image" src="images/rocketlauncher/features/responsive-2.jpg" />\r\n</div>\r\n\r\n<br />\r\n\r\n<span>Another useful feature available, via Bootstrap, is the collection of responsive utility classes that can be used to help tweak layouts by providing a simple method of showing or hiding modules. Insert the above module class suffixes into your settings to show/hide a module for a particular mode.</span>', 1, 'utility-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 icon-table hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(95, 'Media Queries', '', '<p>In terms of media queries, the breakdown is:</p>\r\n<pre class="lines rt-pre-col2">\r\n/* Smartphones */\r\n@media (max-width: 480px) { ... }\r\n\r\n/* Smartphones to Tablets */\r\n@media (min-width: 481px) and (max-width: 767px) { ... }\r\n\r\n/* Tablets */\r\n@media (min-width: 768px) and (max-width: 959px) { ... }\r\n\r\n/* Desktop */\r\n@media (min-width: 960px) and (max-width: 1199px) { ... }\r\n\r\n/* Large Display */\r\n@media (min-width: 1200px) { ... }\r\n</pre>', 1, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-th-list hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'Navigation', '', '<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n   <div class="rt-image rt-center">\r\n        <img class="rt-noborder" src="images/rocketlauncher/features/responsive-nav.png" alt="image" />\r\n   </div>    \r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n   <p>For mobile devices, there are two options, a dropdown panel menu with items in a tree format or a select box using the browsers own UI elements. Chose a format in the template''s menu settings.</p>\r\n\r\n    <p class="hidden-tablet">The <strong>Dropdown Menu</strong> is a CSS driven dropdown menu, offering such features as multiple columns<span class="hidden-large hidden-desktop">, inline icons, subtext, modules and positions, custom column widths, item distribution</span> and menu offsets. </p>\r\n\r\n    <p><strong>SplitMenu</strong> displays 1st level items in the navigation bar and children in the Sidebar.</p> \r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-align-justify","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 'All the Features - in One Complete List', '', '<div class="gantry-width-66 gantry-width-block">\r\n  <div class="gantry-width-space">\r\n    <h4>Leviathan Template</h4>\r\n    \r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-space">\r\n        <ul class="circle">\r\n          <li>8 Preset Styles</li>\r\n          <li>76 Module Positions</li>\r\n          <li>Powered by Gantry 4 Framework</li>\r\n          <li>Dropdown Menu</li>\r\n          <li>SplitMenu</li>\r\n          <li>Custom Typography</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-space">\r\n        <ul class="circle">\r\n          <li>RokAjaxSearch Styling</li>\r\n          <li>RokSprocket Styling</li>\r\n          <li>K2 Styling</li>\r\n          <li>Various Module Variations</li>\r\n          <li>Major Browsers Support</li>\r\n          <li>HTML5, CSS3, LESS CSS</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class="clear"></div>\r\n    \r\n    <h4>Gantry Framework</h4>\r\n\r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-space">\r\n        <ul class="circle">\r\n          <li>CSS Grid Framework</li>\r\n          <li>Responsive HTML5 base template</li>\r\n          <li>Stunning Admin Interface</li>\r\n          <li>Source Ordered Mainbody</li>\r\n          <li>Extensive Administrator Interface</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-space">\r\n        <ul class="circle">\r\n          <li>Built-in Less Compiler</li>\r\n          <li>Versatile Layout</li>\r\n          <li>Grid RTL Support</li>\r\n          <li>Google Web Fonts Support</li>   \r\n          <li>Per Browser based CSS / JS control</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class="clear"></div>\r\n\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-space">\r\n    <h3>Requirements</h3>\r\n    <ul class="checkmark">\r\n      <li><strong>Apache 2.x or Microsoft IIS 7</strong><br />\r\n        <em>Most widely deployed web server software, required for Joomla!</em></li>\r\n      <li><strong>PHP 5.3+</strong> &amp; <strong>MySQL 5.0.4+</strong><br />\r\n        <em>General-purpose server-side scripting language for web development and a popular open-source database system.</em></li>\r\n      <li><strong>Joomla! 2.5.x</strong> or <strong>Joomla! 3.0.x</strong><br />\r\n        <em>Please download the latest version at <a class="normalfont nobold" href="http://www.joomla.org" target="_blank">www.joomla.org</a>.</em></li>\r\n      <li><strong>Gantry Framework</strong><br />\r\n        <em>Please ensure you are using the latest version of <a class="normalfont nobold" href="http://www.gantry-framework.org" target="_blank">Gantry</a>.</em></li>\r\n      <li><strong>RokNavMenu Module</strong><br />\r\n        <em>Core <a class="normalfont nobold" href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112">menu system</a> for RocketTheme templates.</em></li>\r\n    </ul>\r\n  <div class="clear"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-flag hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(98, 'Collapsible', '', '<p>If no modules are published to a position, the entire area or row will not appear or collapse.</p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-info-sign","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Injected Features', '', '<div class="rt-image">\r\n  <img alt="Non-Standard Elements" src="images/rocketlauncher/module-positions/injected-features.jpg" />\r\n</div>\r\n\r\n<div class="clear largemarginbottom">&nbsp;</div>\r\n\r\n<!-- <p class="hidden-tablet">In the Gantry framework we use the term Feature to mean a specific bit of functionality. Features are flexible enough that they can be used to perform almost any kind of logic you would need.</p> -->\r\n\r\n<p class="nomarginbottom">There are <strong>Features</strong> that are injected into a position when enabled, and are stacked vertically; which includes: Social Buttons, Date, Font Sizer, Login Panel, Popup Module, Branding, Copyright, To-Top Scroller, System Messages, Reset Settings, and Google Analytics.</p>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5 icon-signin","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'MainBody / Sidebar Layouts', '', '<p>Configure at <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_leviathan</strong>, then go to <strong>Layouts</strong> tab and set the varying Mainbody/Sidebar layout possibilities.</p>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/module-positions/position-config-mb1.jpg" alt="image"/>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/module-positions/position-config-mb2.jpg" alt="image"/>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/module-positions/position-config-mb3.jpg" alt="image"/>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p class="attention">Note: If no modules are assigned to the Sidebar positions, the Mainbody will become full width.</p>\r\n\r\n<div class="rt-image">\r\n  <img alt="Module Positions" src="images/rocketlauncher/module-positions/gantry-layout.jpg" />\r\n</div>\r\n', 1, 'mainbottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 icon-th-large hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Basic: Using Gantry Layouts', '', '<div class="gantry-width-25 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <a rel="rokbox[745 505]" title="Video Tutorial :: Using Gantry Layouts" href="http://www.gantry-framework.org/videos/joomla/g4-module-widths.mp4">\r\n      <span class="rt-image">\r\n        <img src="images/rocketlauncher/module-positions/using-layouts.jpg" alt="Using Layouts" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-75 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <p>To find out about <strong>Gantry Layouts</strong> and <strong>Module Widths</strong>, check out this screencast which covers basic concepts of configuring layout with a combination of module setting and the Gantry layout control.</p>\r\n\r\n    <a class="readon smallmargintop" href="http://www.gantry-framework.org/documentation/joomla/configure/layouts" target="_blank"><span>View : Using Layouts</span></a>\r\n  </div>    \r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-facetime-video hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 'Advanced: Adding Positions', '', '<div class="gantry-width-25 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <a rel="rokbox[745 505]" title="Video Tutorial :: Module Positions" href="http://www.gantry-framework.org/videos/joomla/g4-module-positions.mp4">\r\n      <span class="rt-image">\r\n      <img src="images/rocketlauncher/module-positions/adding-module-positions.jpg" alt="Adding Module Positions" />\r\n      </span>  \r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-75 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <p>Check out this quick screencast on <strong>Module Positions</strong> to get an overview of how module positions work within Gantry Framework. Click below button to learn how to <strong>add a new row of module positions</strong>.</p>\r\n\r\n    <a class="readon smallmargintop" href="http://www.gantry-framework.org/documentation/joomla/customize/adding-module-positions" target="_blank"><span>Learn : Adding Positions</span></a>\r\n  </div>    \r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-facetime-video hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Using a Suffix', '', '<p>Enter any available suffixes at <strong>Extensions &rarr; Module Manager &rarr; <em>Module</em> &rarr; Module Class Suffix</strong>.</p>\r\n<p class="notice nomarginbottom">You can compound multiple suffixes together such as: <strong><em>box1 title3</em></strong>.</p>', 14, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-tags","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'Standard Variations: Additional Module Class Suffixes', '', '<ul>\r\n  <li><strong>rt-center:</strong> centres the content of the module.</li>\r\n  <li><strong>shadow2-10</strong> adds varying shadows around the module.</li>\r\n  <li><strong>square and basic:</strong> changes the border style of the module.</li>\r\n  <li><strong>standardcase, uppercase, lowercase:</strong> change the case of the module title.</li>  \r\n  <li><strong>nomargintop, nomarginright, nomarginbottom, nomarginleft, nomarginall:</strong> removes the various margins around the module.</li>    \r\n  <li><strong>nopaddingtop, nopaddingright, nopaddingbottom, nopaddingleft, nopaddingall:</strong> removes the various paddings around the module.</li>    \r\n  <li><strong>(small/med/large)paddingtop, (small/med/large)paddingright, (small/med/large)paddingbottom, (small/med/large)paddingleft:</strong> increase the paddings around the module.</li>\r\n  <li><strong>(small/med/large)margintop, (small/med/large)marginright, (small/med/large)marginbottom, (small/med/large)marginleft:</strong> increase the paddings around the module.</li>\r\n  <li><strong>(subsmall/submed/sublarge)paddingtop, (subsmall/submed/sublarge)paddingright, (subsmall/submed/sublarge)paddingbottom, (subsmall/submed/sublarge)paddingleft, (subsmall/submed/sublarge)paddingall:</strong> decrease the paddings around the module.</li>\r\n  <li><strong>(subsmall/submed/sublarge)margintop, (subsmall/submed/sublarge)marginright, (subsmall/submed/sublarge)marginbottom, (subsmall/submed/sublarge)marginleft, (subsmall/submed/sublarge)marginall:</strong> decrease the paddings around the module.</li>  \r\n</ul>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-cloud","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'Why Use RokCandy', '', '<p><strong>RokCandy</strong> is the ideal solution for those with <strong>limited coding skills</strong> or those who implement our templates for their clients.</p>\r\n\r\n<p>It is <strong>free</strong> from the WYSIWYG editors horrific filtering habits and can be easily pre-configured for your <strong>personal needs</strong> or the needs of your client.</p>\r\n\r\n<a href="http://www.rockettheme.com/extensions-joomla/rokcandy" class="readon" target="_blank"><span>Download : RokCandy</span></a>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-magic","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'Video : Using Typography', '', '<div class="gantry-width-25 gantry-width-block">\r\n  <div class="gantry-width-spacer nomargintop">\r\n    <a href="http://www.rockettheme.com/video/joomla15/using-typography-joomla15.mov" title="Video Tutorial :: Joomla Using Typography Video Tutorial" rel="rokbox[540 380]">\r\n      <span class="rt-image">\r\n        <img src="images/rocketlauncher/typography/using-typography.jpg" alt="Using Typography" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-75 gantry-width-block">\r\n  <div class="gantry-width-spacer nomargintop">\r\n    <p>Check out this quick screencast to learn how to use RokCandy to enhance your Joomla! content. The tags are very easy to learn and this guide shows you how to use all the styles.</p>\r\n    <a href="http://www.rockettheme.com/video/joomla15/using-typography-joomla15.mov" title="Video Tutorial :: Joomla Using Typography Video Tutorial" rel="rokbox[540 380]" class="readon"><span>Watch : Using Typography</span></a>\r\n  </div>    \r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-facetime-video hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Set Menu Type', '', '<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n      <p class="visible-large">RokNavMenu provides a feature rich platform for extending the menu, allowing for overrides and plugins for the menu itself, in addition to versatile theming capabilities and so much more.</p>\r\n      \r\n    <p>To find all the parameters for Dropdown Menu &amp; SplitMenu on Leviathan template, such as position, please navigate to:</p>\r\n    \r\n    <ul class="dots">\r\n      <li><strong>Extensions &rarr; Template Manager &rarr; rt_leviathan</strong></li>\r\n      <li>Then go to <strong>Menu</strong> tab, and set the Menu parameters</li>\r\n    </ul>\r\n    \r\n    <p class="largemargintop attention">Descriptions of each template parameter can be seen when you mouseover the label of each option.</p>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img src="images/rocketlauncher/menu-options/menu-setting.jpg" alt="Set Menu" />\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 title1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 'Dropdown Menu', '', '<div>\r\n    <p>A CSS driven dropdown menu, with subtext line, multi-columns, icons and more.</p>\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112&amp;menu-type=dropdownmenu" class="readon"><span>Switch to Dropdown Menu</span></a>\r\n</div>', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 icon-reorder nomargintop hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 'Split Menu', '', '<div>\r\n    <p>A static menu system that displays 1st level items in the main horizontal menu and all children in the Sidebar.</p>\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112&amp;menu-type=splitmenu" class="readon"><span>Switch to SplitMenu</span></a>\r\n</div>', 12, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 icon-list-ul hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'No Menu', '', '<p>An option to disable the menu, allowing for normal module use of the navigation position.</p>', 13, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 title5 hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 'SubText Line', '', '<p>The option that allows you to insert additional text to the Menu Item Title, including the SubMenu Item Title. There is separate styling for this, making it useful for adding snippets to menu items.</p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-sort","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 'Menu Icon', '', '<p>RokNavMenu provides the option to display a small icon image, powered by FontAwesome, for the menu item. The menu icon can be displayed both for the parent items and the child items.</p>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-fire","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'Multi-Columns', '', '<p>Who needs a single dropdown column when you can have as many as you want? Using the built-in configurable parameters, you can make up to four incredible multi column dropdowns.</p>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-th-large hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, 'K2 (3rd Party) Styling Support', '', '<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/ext-k2-1.png" alt="image" />\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/ext-k2-2.png" alt="image" />\r\n    </div>\r\n  </div> \r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-spacer">\r\n  <p>K2 is the popular powerful content extension for Joomla! with CCK-like features. The version used in this Demo site is <strong>2.6.2</strong>. K2 was built as a complete replacement of the default article system in Joomla!. Install it like any Joomla! extension, import your articles from the default Joomla! article system and you instantly get a host of new features for your existing content.</p>\r\n  <p class="info">The 3rd party component K2 is NOT included in RocketLauncher. You will need to download them from <a target="_blank" href="http://getk2.org/">Get K2</a> and configure them on your site.</p>\r\n</div>', 1, 'utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5 icon-gift","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 'RokBooster', '', '<p>Increase the speed of your site by enabling the RokBooster plug-in. RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load.</p>\r\n<p><a class="readon" href="http://www.rockettheme.com/extensions-joomla/rokbooster" target="_blank">Download: RokBooster</a></p>', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-bolt","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'RokPad', '', '<p>RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, multiple cursors and selections, shortcut keys, and many other incredible features that traditionally would only be found in a powerful desktop editor.</p>\r\n<a class="readon" href="http://www.rockettheme.com/extensions-joomla/rokpad" target="_blank">Download: RokPad</a>', 1, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-file","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(117, 'All RocketTheme Extensions', '', '<div class="gantry-width-70 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <p>Many of our extensions were developed to accompany RocketTheme templates but we have now created versions that are intended to work independently of our templates if you wish.</p>\r\n\r\n    <h4 class="nomarginbottom">Club Extensions</h4>\r\n    \r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokgallery" target="_blank">RokGallery</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokstock" target="_blank">RokStock</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokpad" target="_blank">RokPad</a></li>     \r\n        </ul>\r\n      </div>\r\n    </div>\r\n    \r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">  \r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokminievents" target="_blank">RokMiniEvents</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokweather" target="_blank">RokWeather</a></li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n\r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/roktwittie" target="_blank">RokTwittie</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokfeaturetable" target="_blank">RokFeatureTable</a></li>\r\n        </ul>  \r\n      </div>\r\n    </div>    \r\n    \r\n    <div class="clear"></div>\r\n    \r\n    <h4 class="nomargintop nomarginbottom">Free Extensions</h4>\r\n\r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/roksprocket" target="_blank">RokSprocket</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokbox" target="_blank">RokBox</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokbooster" target="_blank">RokBooster</a></li>\r\n        </ul>\r\n      </div>\r\n    </div>   \r\n\r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/roknavmenu" target="_blank">RokNavMenu</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokquickcart" target="_blank">RokQuickCart</a></li>\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokcandy" target="_blank">RokCandy</a></li>\r\n        </ul>\r\n      </div>\r\n    </div>   \r\n\r\n    <div class="gantry-width-33 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="circle">\r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokajaxsearch" target="_blank">RokAjaxSearch</a></li>      \r\n          <li><a href="http://www.rockettheme.com/extensions-joomla/rokcomments" target="_blank">RokComments</a></li>\r\n        </ul>  \r\n      </div>\r\n    </div>            \r\n\r\n    <div class="clear"></div>\r\n  </div>\r\n</div>\r\n\r\n\r\n<div class="gantry-width-30 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <h3>Download</h3>\r\n    \r\n    <p>Please ensure you are using the latest version of the extensions. You can download all RocketTheme extensions from:</p>\r\n    \r\n    <ul class="normalfont nomarginbottom largemarginleft">\r\n      <li class="nomarginbottom"><strong>RocketTheme Extensions Page</strong><br />Contains all individual extensions which are available from the Extensions section of RokDownloads.</li>\r\n    </ul>\r\n    \r\n    <a href="http://www.rockettheme.com/extensions-downloads/" target="_blank" class="readon largemargintop"><span>Download : Extensions</span></a>\r\n  <div class="clear"></div>\r\n  </div>\r\n</div>\r\n<div class="clear"></div>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-cogs hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 'Installation', '', '<div>\r\n    <p>Download and install the <strong>Bundle</strong> file if Gantry is not installed, use the Standard Template file if <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=109">Gantry</a> is already present.</p>\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=109" class="readon"><span>More Information</span></a>\r\n</div>    ', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-cog","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(119, 'Demo Replica', '', '<div>\r\n    <p>You may deploy a <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=109">replica</a> of this month''s demo with ease, using the readily available <strong>RocketLauncher</strong> package.</p>\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=109" class="readon"><span>More Information</span></a>\r\n</div>', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-beaker","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 'Configuration', '', '<p>An overview of template files and instructions for installing &amp; configuring Leviathan template.</p>\r\n<a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=109"><span>Read More</span></a>', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5 icon-tasks","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 'Logo Editing', '', '<p>An overview for customizing your logo with your organization or company name and logo.</p>\r\n<a class="readon" href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=110"><span>Read More</span></a>', 1, 'content-top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box6 icon-gift","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(122, 'Video Documentation', '', '<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginbottom nomargintop">\r\n    <ul class="nomarginbottom">\r\n        <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-install.mp4" title="Video Tutorial :: Gantry Installation" rel="rokbox[503 356]">Install Gantry</a></li>\r\n        <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-features.mp4" title="Video Tutorial :: Gantry Features" rel="rokbox[504 336]">Gantry Features</a></li>\r\n        <li><a class="nobold" href="http://www.gantry-framework.org/media/videos/module_widths.mov" title="Video Tutorial :: Using Layouts" rel="rokbox[503 356]">Gantry Layout</a></li>\r\n        <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-module-positions.mp4" title="Video Tutorial :: Module Positions" rel="rokbox[503 356]">Module Positions</a></li>  \r\n    </ul>   \r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginall">\r\n    <ul class="nomarginbottom">\r\n        <li><a class="nobold" rel="rokbox[503 356]" title="Video Tutorial :: Module Width" href="http://www.gantry-framework.org/videos/joomla/g4-module-widths.mp4">Module Width</a></li>\r\n        <li><a class="nobold" rel="rokbox[504 336]" title="Video Tutorial :: Module Variations" href="http://www.gantry-framework.org/videos/joomla/g4-module-variations.mp4">Module Variations</a></li>\r\n    <li><a class="nobold" rel="rokbox[504 336]" title="Video Tutorial :: Force Module Positionsr" href="http://www.gantry-framework.org/videos/joomla/g4-forcepos.mp4">Force<span class="visible-large"> Module</span> Positions</a></li>\r\n   <li><a class="nobold" rel="rokbox[504 336](joomla15basic)" title="Video Tutorial :: Template Overrides" href="http://www.gantry-framework.org/videos/joomla/g4-overrides.mp4">Template Overrides</a></li>\r\n </ul>   \r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<a href="http://www.gantry-framework.org/documentation" target="_blank" class="readon largemargintop smallmarginbottom"><span>View All</span></a>', 2, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 icon-film hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 'Forum Tutorials', '', '<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginbottom nomargintop">\r\n    <ul class="nomarginbottom">\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184680&amp;rb_v=viewtopic" target="_blank">Editing the Logo</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184681&amp;rb_v=viewtopic" target="_blank">Template Text</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184682&amp;rb_v=viewtopic" target="_blank">RokBox Login</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184683&amp;rb_v=viewtopic" target="_blank">Popup Module</a></li>\r\n    </ul>   \r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-50 gantry-width-block">\r\n  <div class="gantry-width-spacer nomarginall">\r\n    <ul class="nomarginbottom">\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184684&amp;rb_v=viewtopic" target="_blank">Template Guide</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184687&amp;rb_v=viewtopic" target="_blank">Template FAQs</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184688&amp;rb_v=viewtopic" target="_blank">Responsive Classes</a></li>\r\n      <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184694&amp;rb_v=viewtopic" target="_blank">Demo Content</a></li>\r\n    </ul>   \r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<a class="readon largemargintop smallmarginbottom" target="_blank" href="http://www.rockettheme.com/forum/index.php?f=691&amp;rb_v=viewforum"><span>View All</span></a>', 2, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box4 icon-comments-alt hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(124, 'Joomla Docs', '', '<p>Joomla.org is an invaluable resource for general information on how to use, configure and modify Joomla.</p>\r\n<a href="http://docs.joomla.org" class="readon" target="_blank"><span>Read More</span></a>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-book hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(125, 'Theme Help', '', '<p>We provide tutorials of RocketTheme template installation, RocketLauncher and other template related topics.</p>\r\n<a href="http://www.rockettheme.com/joomla-tutorials" class="readon" target="_blank"><span>Read More</span></a>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-bullhorn hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(126, 'Gantry Info', '', '<p>More extensive details of the Gantry Framework, inclusive of both written and video tutorials, please visit the Gantry Site.</p>\r\n<a href="http://www.gantry-framework.org/" target="_blank" class="readon"><span>Learn More</span></a>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-info-sign","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(127, 'Requirements', '', '<ul class="checkmark nomarginbottom">\r\n  <li><strong>Apache 2.x or Microsoft IIS 7</strong></li>\r\n  <li><strong>PHP 5.3.x</strong></li>\r\n  <li><strong>MySQL 5.0.4 or higher</strong></li>\r\n  <li><strong>Joomla! 2.5.x / 3.0.x</strong></li> \r\n  <li><strong>Gantry Framework</strong></li>\r\n  <li class="nomarginbottom"><strong>RokNavMenu Module</strong></li>\r\n</ul>', 7, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-check","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 'RocketLauncher', '', '<p class="medmarginbottom"><strong>RocketLauncher</strong> is a customized <strong>Joomla</strong> install, that installs a <strong>replica</strong> of the <strong>demo</strong>.</p>\r\n<p class="alert nomarginbottom"><strong>Note</strong>: All sample content images will be replaced with blank versions in the RocketLauncher.</p>', 8, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-asterisk hidden-tablet hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(129, 'Forum Guides', '', '<ul>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184680&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">How to </span>Edit the Logo</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184681&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">How to Change </span>Template Text</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184682&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">How to Enable </span>RokBox Login</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184683&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">How to Activate </span>Popup Module</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184684&amp;rb_v=viewtopic" target="_blank">Template Guide<span class="visible-large"> and Information</span></a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184687&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">Leviathan </span>Template FAQs</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184691&amp;rb_v=viewtopic" target="_blank">Responsive Classes<span class="visible-large"> in Leviathan</span></a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=691&amp;t=184694&amp;rb_v=viewtopic" target="_blank"><span class="visible-large">How to Replicate </span>Demo Content</a></li>\r\n</ul>   \r\n\r\n<a class="readon largemargintop smallmarginbottom" target="_blank" href="http://www.rockettheme.com/forum/index.php?f=691&amp;rb_v=viewforum"><span>View All</span></a>', 17, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5 icon-comments-alt hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `jobs_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(130, 'Video Docs', '', '<ul>\r\n  <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-install.mp4" title="Video Tutorial :: Gantry Installation"><span class="visible-large">How to </span>Install Gantry</a></li>\r\n  <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-features.mp4" title="Video Tutorial :: Gantry Features"><span class="visible-large">Find Out </span>Gantry Features</a></li>\r\n  <li><a class="nobold" href="http://www.gantry-framework.org/media/videos/module_widths.mov" title="Video Tutorial :: Using Layouts"><span class="visible-large">Learn </span>Gantry Layout</a></li>\r\n  <li><a class="nobold" href="http://www.gantry-framework.org/videos/joomla/g4-module-positions.mp4" title="Video Tutorial :: Module Positions"><span class="visible-large">Check Gantry </span>Module Positions</a></li>  \r\n  <li><a class="nobold" title="Video Tutorial :: Module Width" href="http://www.gantry-framework.org/videos/joomla/g4-module-widths.mp4"><span class="visible-large">How to Adjust </span>Module Width</a></li>\r\n  <li><a class="nobold" title="Video Tutorial :: Module Variations" href="http://www.gantry-framework.org/videos/joomla/g4-module-variations.mp4"><span class="visible-large">View Gantry </span>Module Variations</a></li>\r\n  <li><a class="nobold"  title="Video Tutorial :: Force Module Positionsr" href="http://www.gantry-framework.org/videos/joomla/g4-forcepos.mp4"><span class="visible-large">How to </span>Force Module Positions</a></li>\r\n  <li><a class="nobold" title="Video Tutorial :: Template Overrides" href="http://www.gantry-framework.org/videos/joomla/g4-overrides.mp4"><span class="visible-large">How to Do </span>Template Overrides</a></li>\r\n</ul>\r\n<a href="http://www.gantry-framework.org/documentation" target="_blank" class="readon largemargintop smallmarginbottom"><span>View All</span></a>', 20, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box6 icon-film hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(131, 'Essential Files', '', '<ul class="list-icon checkmark normalfont nomarginbottom">\r\n  <li><strong>Gantry Framework</strong> - Download the latest version of Gantry Framework from <a href="" target="_blank">http://www.gantry-framework.org/</a> for update</li>\r\n  <li><strong>Template (Standalone)</strong> <em>rt_leviathan.zip</em> - Standalone template file without the Gantry Framework (If Gantry is already installed)</li>\r\n  <li><strong>Template (Bundle)</strong> <em>leviathan-bundle.zip</em> - Template plus the Gantry Framework (If Gantry is not installed)</li>\r\n  <li><strong>RokNavMenu</strong> <em>Download the latest version of RokNavMenu <a href="http://www.rockettheme.com/extensions-joomla/roknavmenu" target="_blank">here</a></em> - Required for the menu to work</li>\r\n</ul>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-cogs","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(132, 'Additional Files', '', '<ul class="list-icon checkmark normalfont nomarginbottom">\r\n  <li><strong>Source PNG(s)</strong> <em>rt_leviathan-sources.zip</em> - AdobeÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â® Fireworks PNG source file(s) and any applicable fonts</li>\r\n  <li><strong>Source BG PNG(s)</strong> <em>rt_leviathan-sources-bg.zip</em> - AdobeÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â® Fireworks PNG BG source file(s) ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã¯Â¿Â½ <em>Only distributed if the template has complex BGs</em></li>\r\n  <li><strong>Extensions</strong> - <em>Download the latest version of the extensions <a href="http://www.rockettheme.com/extensions">here</a></em></li>  \r\n  <li><strong>RocketLauncher</strong> <em>leviathan-rocketlauncher.zip</em> - Demo replica installer. It needs a fresh Joomla! installation</li>\r\n</ul>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-plus-sign","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(133, '8 Preset Styles - Preview Live', '', '<div>\r\n    <p class="notice">View all styles live by appending <strong>?presets=preset#</strong> or <strong>&amp;presets=preset#</strong> to the end of your URL such as <strong><a href="#">http://yoursite.com/index.php?presets=preset4</a></strong>.</p>\r\n\r\n    <p>In sequential order, <strong>Preset 1 - Preset 6</strong>. Please click on the image to load a live example of each style variation.</p>\r\n</div>\r\n\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset1">\r\n      <span class="rt-image">\r\n        <img alt="Preset 1" src="images/rocketlauncher/styles/ss1.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset2">\r\n      <span class="rt-image">\r\n        <img alt="Preset 2" src="images/rocketlauncher/styles/ss2.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset3">\r\n      <span class="rt-image">\r\n        <img alt="Preset 3" src="images/rocketlauncher/styles/ss3.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset4">\r\n      <span class="rt-image">\r\n        <img alt="Preset 4" src="images/rocketlauncher/styles/ss4.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset5">\r\n      <span class="rt-image">\r\n        <img alt="Preset 5" src="images/rocketlauncher/styles/ss5.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset6">\r\n      <span class="rt-image">\r\n        <img alt="Preset 6" src="images/rocketlauncher/styles/ss6.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset7">\r\n      <span class="rt-image">\r\n        <img alt="Preset 7" src="images/rocketlauncher/styles/ss7.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n<div class="gantry-width-25 gantry-width-block rt-center">\r\n  <div class="gantry-width-spacer">\r\n    <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset8">\r\n      <span class="rt-image">\r\n        <img alt="Preset 8" src="images/rocketlauncher/styles/ss8.jpg" />\r\n      </span>\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 title2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(134, 'Custom Presets', '', '<p class="hidden-tablet">Gantry provides the ability for you to create your own custom presets based on any parameter in the template administrator.</p>\r\n\r\n<ul class="circle-large">\r\n  <li>Go to <strong>Extensions &rarr; Template Manager &rarr; rt_leviathan</strong></li>\r\n  <li>Click "<strong>Presets</strong>"</li>\r\n  <li>Configure the Settings</li>\r\n  <li>Click <strong>Save &rarr; Save Preset</strong></li>\r\n  <li>Follow the <strong>Preset Saver procedure</strong></li>\r\n</ul>\r\n\r\n<div class="hidden-tablet">\r\n<p class="notice">You can edit the prebuilt presets in the <strong>gantry.config.php</strong> file, or use the User Interface method outlined above.</p>\r\n</div>\r\n\r\n<p>When you create a new custom preset, there is a default image used in the preset chooser to represent this. You can create your own thumbnail for each style by creating a png file that is the ''short'' name of the preset with the dimensions of 180px x 100px.</p>\r\n\r\n<a class="readon" href="http://www.gantry-framework.org/documentation/joomla/customize/custom-presets" target="_blank">Gantry Framework: Custom Presets</a>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-leaf","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(135, 'Preset Footer', '', '<div class="rt-image largemarginbottom"><img alt="image" src="images/rocketlauncher/styles/presets-save.jpg" /></div>\r\n<div class="clear"></div>\r\n<div class="rt-image"><img alt="image" src="images/rocketlauncher/styles/presets-create.jpg" /></div>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-check-empty hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(136, '[span class="visible-large"]RocketTheme [/span]Clubs', '', '<div>\r\n  <h4 class="nomarginbottom">Joomla Templates Club</h4>\r\n  <p>Best known template club in JoomlaSphere</p>\r\n</div>\r\n\r\n<div>\r\n  <h4 class="nomarginbottom">Wordpress Themes Club</h4>\r\n  <p>Provides a stunningly unique blog design</p>\r\n</div>\r\n\r\n<div>\r\n  <h4 class="nomarginbottom">Magento Templates Club</h4>\r\n  <p>eCommerce template platform for growth</p>\r\n</div>  \r\n\r\n<div>\r\n  <h4 class="nomarginbottom">phpBB3 Styles Club</h4>\r\n  <p>Transform phpBB3 into a professional forum</p>\r\n</div>  \r\n\r\n<a href="https://www.rockettheme.com/join-a-club" class="readon" target="_blank"><span>Join Now</span></a>', 7, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5 title2 nomargintop hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(137, 'title1', '', '<p>An example module using the <strong>title1</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 3, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(138, 'title3', '', '<p>An example module using the <strong>title3</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 4, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title3","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(139, 'box1', '', '<p>An example module using the <strong>box1</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 6, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(140, 'box3', '', '<p>An example module using the <strong>box3</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 7, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 'title2', '', '<p>An example module using the <strong>title2</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 3, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(142, 'title4', '', '<p>An example module using the <strong>title4</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 4, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(143, 'box2', '', '<p>An example module using the <strong>box2</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 6, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(144, 'box4', '', '<p>An example module using the <strong>box4</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 7, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(145, 'box2 title4', '', '<p>An example module using the <strong>box2 title4</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>\r\n\r\n<a href="#" class="readon">Read More ...</a>', 21, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 title4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(146, 'box4 title5', '', '<p>An example module using the <strong>box4 title5</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>\r\n\r\n<a href="#" class="readon">Read More ...</a>', 19, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box4 title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(147, 'box3 title3', '', '<p>An example module using the <strong>box3 title3</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>\r\n\r\n<a href="#" class="readon">Read More ...</a>', 18, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 title3","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(151, 'FP Footer A', '', '<p>\r\n    <img class="rt-noborder" src="images/rocketlauncher/frontpage/footer/logo-footer.png" alt="Logo" />\r\n</p>\r\n\r\n<span>All demo content is for <strong>sample</strong> purposes only, intended to show a live site. All images are licensed from <a href="http://www.shutterstock.com" target="_blank"><strong>ShutterStock</strong></a> for  exclusive use on this <strong>demo</strong> site.</span>\r\n', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"nomarginbottom nopaddingbottom","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(153, 'Follow Us', '', '<div class="rt-social-buttons">\r\n  <a class="social-button rt-facebook-btn" href="http://www.facebook.com/RocketTheme"><span></span></a>\r\n  <a class="social-button rt-twitter-btn" href="https://twitter.com/rockettheme"><span></span></a>\r\n  <a class="social-button rt-google-btn" href="https://plus.google.com/114430407008695950828/posts"><span></span></a>\r\n  <a class="social-button rt-rss-btn" href="http://www.rockettheme.com/blog?format=feed&amp;type=rss"><span></span></a>\r\n</div>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title1 nomarginbottom nopaddingbottom hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(154, 'Forced Positions', '', '<p>There are times when you just don''t want to have your modules taking up all the room in a horizontal row no matter what the layout. For example you might want to have a module on the left and a module on the right, with nothing in the middle.</p>\r\n\r\n<p>This is made easy with Gantry Force Positions parameter for each layout, allowing you to set the count to a specific row, such as 4, even if 4 modules are not published for that row.</p>\r\n', 5, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box4 icon-external-link visible-large","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(155, 'Gantry Grid', '', '<div class="custombox2 title1">\r\n  <p>Configure at <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_leviathan</strong>, then go to <strong>Layouts</strong> to set the grid widths and allocated positions.</p>\r\n\r\n<div class="rt-image">\r\n  <img alt="image" src="images/rocketlauncher/module-positions/grid-distribution.jpg">\r\n</div></div>', 4, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 icon-th","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(156, 'Grid Sizes', '', '<p>Configure at <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_leviathan</strong>, then go to <strong>Layouts</strong> to set the grid widths and allocated positions.</p>\r\n\r\n<p>By default, each grid is given an <strong>equal</strong> distribution, but this can be modified to a <strong>custom</strong> distribution between modules, such as <strong>3/4/5</strong> instead of <strong>4/4/4</strong>. These options are available for when <strong>2-6</strong> modules are present.</p>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 icon-columns hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(157, 'box1 title2', '', '<p>An example module using the <strong>box1 title2</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>\r\n\r\n<a href="#" class="readon">Read More ...</a>', 16, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 title2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(158, 'box5', '', '<p>An example module using the <strong>box5</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 8, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(159, 'RokSprocket Showcase', '', '<div class="gantry-width-66 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <span class="promo2">Rok<strong>Sprocket</strong></span><br />\r\n    <span class="promo3">A Revolutionary Content Module <span class="rt-extra-desc">with Multiple Layout Options</span></span><br />\r\n    <p class="largemargintop">RokSprocket is a revolutionary new extension for Joomla designed to give you an incredible level of control over how you present your content. Sophisticated content filters, robust layout modes and options, integration with multiple content providers, and a streamlined no-nonsense interface all contribute to a powerful yet user friendly experience from start to finish.</p>\r\n  </div>\r\n  <div class="gantry-width-spacer">\r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="checkmark">\r\n          <li><span>Multiple Layout Options</span></li>\r\n          <li><span>Multiple Content Providers</span></li>\r\n          <li><span>Advanced Cumulative Filters</span></li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    <div class="gantry-width-50 gantry-width-block">\r\n      <div class="gantry-width-spacer">\r\n        <ul class="checkmark">\r\n          <li><span>Advanced Sorting Rules</span></li>\r\n          <li><span>Custom Article Configuration</span></li>\r\n          <li><span>RokGallery/MediaManager Support</span></li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  <p>To learn more about the implementation details of supporting responsive design for RocketTheme''s Extensions, please visit the following link.</p>\r\n  <a href="http://www.rockettheme.com/blog/team/1555-responsive-design-rocketthemes-extensions" target="_blank" class="readon"><span class="icon-external-link"></span><span> Responsive Design: Part 3 - RocketTheme''s Extensions</span></a>        \r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-25 gantry-width-block rt-block box5">\r\n  <div class="gantry-width-spacer">\r\n    <h4>Mobile Touch Events</h4>\r\n    <p>From the very genesis of it''s development, <strong>RokSprocket</strong> was designed with responsive layouts in mind. We also implemented <strong>touch events</strong> to allow you to ''swipe'' to change tabs, headlines, features and lists. This makes RokSprocket an <strong>excellent solution</strong> for <strong>responsive</strong> site building.</p>\r\n    <div class="rt-image largemargintop">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/swipe.png" alt="image" />\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/ext-roksprocket-1.png" alt="image" />\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/ext-roksprocket-2.png" alt="image" />\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="gantry-width-33 gantry-width-block">\r\n  <div class="gantry-width-spacer">\r\n    <div class="rt-image">\r\n      <img class="rt-noborder" src="images/rocketlauncher/extensions/ext-roksprocket-3.png" alt="image" />\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div><br />', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 title4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(161, 'Menu Presets', '', '<div class="rt-center">\r\n  <a href="?presets=preset1" class="rt-floatleft largemarginbottom largemargintop">\r\n    <p>Preset 1</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset1.jpg" width="75" height="120" alt="Preset 1" />\r\n    </span>\r\n  </a>\r\n  <a href="?presets=preset2" class="rt-floatleft largemarginbottom largemargintop nomarginright">\r\n    <p>Preset 2</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset2.jpg" width="75" height="120" alt="Preset 2" />\r\n    </span>\r\n  </a>\r\n  \r\n  <div class="clear"></div>\r\n  \r\n  <a href="?presets=preset3" class="rt-floatleft largemarginbottom">\r\n    <p>Preset 3</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset3.jpg" width="75" height="120" alt="Preset 3" />\r\n    </span>\r\n  </a>\r\n  <a href="?presets=preset4" class="rt-floatleft largemarginbottom nomarginright">\r\n    <p>Preset 4</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset4.jpg" width="75" height="120" alt="Preset 4" />\r\n    </span>\r\n  </a>\r\n  \r\n  <div class="clear"></div>\r\n  \r\n  <a href="?presets=preset5" class="rt-floatleft largemarginbottom">\r\n    <p>Preset 5</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset5.jpg" width="75" height="120" alt="Preset 5" />\r\n    </span>\r\n  </a>\r\n  <a href="?presets=preset6" class="rt-floatleft largemarginbottom nomarginright">\r\n    <p>Preset 6</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset6.jpg" width="75" height="120" alt="Preset 6" />\r\n    </span>\r\n  </a>\r\n    \r\n  <div class="clear"></div>\r\n\r\n  <a href="?presets=preset7" class="rt-floatleft largemarginbottom">\r\n    <p>Preset 7</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset7.jpg" width="75" height="120" alt="Preset 7" />\r\n    </span>\r\n  </a>\r\n  <a href="?presets=preset8" class="rt-floatleft nomarginright">\r\n    <p>Preset 8</p>\r\n    <span class="rt-image">\r\n      <img src="images/rocketlauncher/styles/preset8.jpg" width="75" height="120" alt="Preset 8" />\r\n    </span>\r\n  </a>\r\n    \r\n  <div class="clear"></div>\r\n\r\n</div>', 1, 'menu-presets', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(162, 'FP RokSprocket - Features - Showcase', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 0, '{"provider":"joomla","layout":"features","joomla_articles":{"1":{"root":{"article":"1"}},"2":{"root":{"article":"6"}},"3":{"root":{"article":"10"}},"4":{"root":{"article":"21"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","tabs_position":"top","lists_enable_accordion":"1","display_limit":"\\u221e","features_themes":"showcase","headlines_label_text":"","features_show_title":"1","lists_previews_length":"20","headlines_previews_length":"20","tabs_animation":"slideandfade","lists_strip_html_tags":"1","lists_items_per_page":"5","mosaic_columns":"3","tabs_autoplay":"0","features_show_article_text":"1","headlines_show_arrows":"show","features_previews_length":"\\u221e","features_strip_html_tags":"0","headlines_animation":"slideandfade","lists_show_arrows":"show","mosaic_previews_length":"20","tabs_autoplay_delay":"5","features_show_arrows":"show","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","lists_show_pagination":"1","features_show_pagination":"1","headlines_autoplay":"0","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","mosaic_article_details":"0","features_animation":"crossfade","headlines_autoplay_delay":"5","tabs_previews_length":"0","lists_autoplay":"0","tabs_strip_html_tags":"0","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"0","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","headlines_description_default":"primary","features_title_default":"title","tabs_title_default":"title","headlines_image_default":"primary","lists_title_default":"title","features_description_default":"primary","lists_description_default":"primary","headlines_image_default_custom":"","lists_image_default":"primary","tabs_icon_default":"primary","features_image_default":"primary","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","lists_link_default":"primary","headlines_link_default_custom":"","features_image_default_custom":"","tabs_link_default":"primary","lists_link_default_custom":"","features_link_default":"primary","tabs_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","tabs_description_default":"primary","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"nomarginall nopaddingall","module_cache":"1","cache_time":"900"}', 0, '*'),
(163, 'FP RokSprocket - Mosaic', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_roksprocket', 1, 0, '{"provider":"joomla","layout":"mosaic","joomla_filters":{"1":{"root":{"category":"13"}}},"joomla_sort":"manual","joomla_sort_manual_append":"after","tabs_themes":"default","mosaic_themes":"default","headlines_themes":"default","lists_themes":"default","display_limit":"\\u221e","lists_enable_accordion":"1","tabs_position":"top","headlines_label_text":"","features_themes":"slideshow","lists_previews_length":"20","features_show_title":"1","tabs_animation":"slideandfade","headlines_previews_length":"20","lists_strip_html_tags":"1","tabs_autoplay":"0","lists_items_per_page":"5","features_show_article_text":"1","headlines_show_arrows":"show","mosaic_columns":"3","features_previews_length":"\\u221e","features_strip_html_tags":"1","mosaic_previews_length":"16","headlines_animation":"slideandfade","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","mosaic_strip_html_tags":"1","features_show_pagination":"1","mosaic_items_per_page":"3","headlines_autoplay":"0","lists_show_pagination":"1","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","features_animation":"crossfade","lists_autoplay":"0","tabs_previews_length":"0","mosaic_article_details":"0","headlines_autoplay_delay":"5","features_autoplay":"1","lists_autoplay_delay":"5","tabs_strip_html_tags":"0","mosaic_animations":["fade","scale","rotate"],"headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","headlines_description_default":"primary","headlines_image_default":"primary","tabs_title_default":"title","features_title_default":"title","lists_title_default":"title","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default":"primary","lists_image_default":"primary","lists_description_default":"primary","features_image_default":"primary","lists_image_default_custom":"","tabs_icon_default_custom":"","headlines_link_default":"primary","features_image_default_custom":"","lists_link_default":"primary","headlines_link_default_custom":"","tabs_link_default":"primary","lists_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","tabs_description_default":"primary","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"nomarginbottom nopaddingbottom","module_cache":"1","cache_time":"900"}', 0, '*'),
(164, 'Popular Features', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_roksprocket', 6, 0, '{"provider":"joomla","layout":"tabs","joomla_filters":{"1":{"root":{"category":"14"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","tabs_position":"top","lists_enable_accordion":"1","display_limit":"\\u221e","features_themes":"slideshow","headlines_label_text":"","features_show_title":"1","lists_previews_length":"20","headlines_previews_length":"20","tabs_animation":"slideandfade","lists_strip_html_tags":"1","lists_items_per_page":"5","mosaic_columns":"3","tabs_autoplay":"0","features_show_article_text":"1","headlines_show_arrows":"show","features_previews_length":"\\u221e","features_strip_html_tags":"1","headlines_animation":"slideandfade","lists_show_arrows":"show","mosaic_previews_length":"20","tabs_autoplay_delay":"5","features_show_arrows":"show","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","lists_show_pagination":"1","features_show_pagination":"1","headlines_autoplay":"0","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","mosaic_article_details":"0","features_animation":"crossfade","headlines_autoplay_delay":"5","tabs_previews_length":"0","lists_autoplay":"0","tabs_strip_html_tags":"0","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"1","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","headlines_description_default":"primary","features_title_default":"title","tabs_title_default":"title","headlines_image_default":"primary","lists_title_default":"title","features_description_default":"primary","lists_description_default":"primary","headlines_image_default_custom":"","lists_image_default":"primary","tabs_icon_default":"primary","features_image_default":"primary","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","lists_link_default":"primary","headlines_link_default_custom":"","features_image_default_custom":"","tabs_link_default":"none","lists_link_default_custom":"","features_link_default":"primary","tabs_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","tabs_description_default":"primary","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(166, 'Features', '', '<div class="gantry-width-25 gantry-width-block">\r\n  <span class="rt-image"><img alt="image" src="images/rocketlauncher/frontpage/sidebar-a/img1.jpg" /></span>\r\n</div>\r\n\r\n<div class="gantry-width-75 gantry-width-block rt-condensed-text">\r\n  <div class="gantry-width-spacer nomargintop nomarginbottom nomarginright nopaddingright">\r\n    <small class="medmarginbottom">Gantry 4 Framework</small>\r\n  </div>\r\n</div>	\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="gantry-width-25 gantry-width-block largemargintop">\r\n  <span class="rt-image"><img alt="image" src="images/rocketlauncher/frontpage/sidebar-a/img2.jpg" /></span>\r\n</div>\r\n\r\n<div class="gantry-width-75 gantry-width-block rt-condensed-text largemargintop">\r\n  <div class="gantry-width-spacer nomargintop nomarginbottom nomarginright nopaddingright">\r\n    <small class="nomarginbottom">HTML5 and CSS3</small>\r\n  </div>\r\n</div>', 3, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"fp-topfeature icon-star visible-tablet","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(168, 'Gantry [span class="hidden-tablet"]Extras[/span]', '', '', 23, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_roksprocket', 1, 1, '{"provider":"joomla","layout":"lists","joomla_filters":{"1":{"root":{"category":"15"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","tabs_themes":"default","mosaic_themes":"default","headlines_themes":"default","lists_themes":"default","display_limit":"\\u221e","lists_enable_accordion":"1","tabs_position":"top","headlines_label_text":"","features_themes":"slideshow","lists_previews_length":"20","features_show_title":"1","tabs_animation":"slideandfade","headlines_previews_length":"20","lists_strip_html_tags":"1","tabs_autoplay":"0","lists_items_per_page":"5","features_show_article_text":"1","headlines_show_arrows":"show","mosaic_columns":"3","features_previews_length":"\\u221e","features_strip_html_tags":"1","mosaic_previews_length":"20","headlines_animation":"slideandfade","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","mosaic_strip_html_tags":"1","features_show_pagination":"1","mosaic_items_per_page":"5","headlines_autoplay":"0","lists_show_pagination":"1","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","features_animation":"crossfade","lists_autoplay":"0","tabs_previews_length":"0","mosaic_article_details":"0","headlines_autoplay_delay":"5","features_autoplay":"1","lists_autoplay_delay":"5","tabs_strip_html_tags":"0","mosaic_animations":["fade","scale","rotate"],"headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","headlines_description_default":"primary","headlines_image_default":"primary","tabs_title_default":"title","features_title_default":"title","lists_title_default":"title","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default":"primary","lists_image_default":"primary","lists_description_default":"primary","features_image_default":"primary","lists_image_default_custom":"","tabs_icon_default_custom":"","headlines_link_default":"primary","features_image_default_custom":"","lists_link_default":"none","headlines_link_default_custom":"","tabs_link_default":"primary","lists_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","tabs_description_default":"primary","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"title1 rt-flush rt-large-sidebar-title rt-stackbox nomarginbottom nopaddingbottom","module_cache":"1","cache_time":"900"}', 0, '*'),
(171, 'title5', '', '<p>An example module using the <strong>title5</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 5, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(173, 'box6', '', '<p>An example module using the <strong>box6</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 7, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box6","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(174, 'Main Menu', '', '', 6, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"title1 rt-large-sidebar-title nomargintop nopaddingtop hidden-phone","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(175, 'Who''s Online', '', '', 24, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"title4 icon-group hidden-tablet hidden-phone","cache":"0","filter_groups":"0"}', 0, '*'),
(176, 'Member Access', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"box4 title5 icon-user nomargintop visible-large","cache":"0"}', 0, '*'),
(177, 'Newsflash', '', '', 1, 'content-bottom-a', 459, '2013-05-21 03:02:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_news', 1, 1, '{"catid":["12"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"box6 icon-bolt","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(178, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(179, 'Logo', '', '<p>There are two methods of changing the Leviathan logo: via the <strong>logo picker</strong> and <strong>manual</strong> change.</p>', 0, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title4 icon-adjust hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(180, 'icon-star', '', '<p>An example module using the <strong>icon-star</strong> suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 4, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-star","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(181, 'box6 title1', '', '<p>An example module using the <strong>box6 title1</strong> module suffix.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consecetur adipiscing elit donec sit amet nibh.</p>', 21, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box6 title1 hidden-phone hidden-tablet hidden-large","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(182, 'FP Showcase Divider', '', '<div class="rt-solid-divider"></div>', 2, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"nomarginall nopaddingall hidden-tablet hidden-phone","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(183, 'Quick Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"quickmenularge","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"fp-menu title1 rt-small-sidebar-title nomargintop nopaddingtop visible-large","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(184, 'Site Search', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_rokajaxsearch', 1, 1, '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"0","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","moduleclass_sfx":"fp-rokajaxsearch icon-search nomarginbottom nopaddingbottom hidden-tablet hidden-phone nomarginright nomarginleft","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(185, '[span class="hidden-large"]Top Feature[/span][span class="visible-large"]Top Features[/span]', '', '<div class="visible-large">\r\n	<div class="gantry-width-25 gantry-width-block">\r\n	  <span class="rt-image"><img alt="image" src="images/rocketlauncher/frontpage/sidebar-a/img1.jpg" /></span>\r\n	</div>\r\n\r\n	<div class="gantry-width-75 gantry-width-block rt-condensed-text">\r\n	  <div class="largemarginleft">\r\n	    <h4 class="normalfont nomargintop nomarginbottom">Responsive Layout</h4>\r\n	    <small>Multiple device support, for mobile, tablet or desktop displays, that are automatically adjusted to.</small>\r\n	  </div>\r\n	</div>\r\n	<div class="clear"></div>	\r\n	<div class="gantry-width-25 gantry-width-block largemargintop">\r\n	  <span class="rt-image"><img alt="image" src="images/rocketlauncher/frontpage/sidebar-a/img2.jpg" /></span>\r\n	</div>\r\n\r\n	<div class="gantry-width-75 gantry-width-block rt-condensed-text largemargintop">\r\n	  <div class="largemarginleft">\r\n	    <h4 class="normalfont nomargintop nomarginbottom">Integrated Extensions</h4>\r\n	    <small>Template specific styling for several extensions such as RokSprocket and K2.</small>\r\n	  </div>\r\n	</div>	\r\n\r\n</div>\r\n\r\n<div class="hidden-phone hidden-tablet hidden-large">\r\n	<div class="gantry-width-30 gantry-width-block">\r\n	  <span class="rt-image"><img alt="image" src="images/rocketlauncher/frontpage/sidebar-a/img1.jpg" /></span>\r\n	</div>\r\n\r\n	<div class="gantry-width-70 gantry-width-block rt-condensed-text">\r\n	  <div class="largemarginleft">\r\n	    <h4 class="normalfont nomargintop nomarginbottom">Responsive</h4>\r\n	    <small>Multiple device support, for mobile, tablet or desktop displays.</small>\r\n	  </div>\r\n	</div>	\r\n</div>                            ', 3, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"fp-topfeature icon-star hidden-tablet hidden-phone smallpaddingtop nopaddingbottom medpaddingleft medpaddingright smallmarginleft smallmarginright","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(186, 'Quick Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"quickmenudesktop","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"fp-menu title1 rt-small-sidebar-title nomargintop nopaddingtop hidden-phone hidden-tablet hidden-large","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');
INSERT INTO `jobs_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(187, 'Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"quickmenutablet","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"fp-menu title1 rt-small-sidebar-title nomargintop nopaddingtop visible-tablet","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(188, 'Theme Info', '', '<p><strong>Leviathan</strong>, January 2013 template release, is a visually enriched design with stunning graphics, contrasts, great effect and tones.</p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 icon-info-sign","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(192, 'Login', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"login-form","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(193, 'For Job Seeker Login By', 'For Job Seeker Login By', '', 1, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_userdata', 1, 1, '', 0, '*'),
(200, 'Social Login', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_socialloginandsocialshare', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"101","usesecure":"0","layout":"_:default","moduleclass_sfx":""}', 0, '*'),
(201, 'Helloo', '', '', 0, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 1, '{"display_text":1,"text":"","format":"rss","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(202, 'Helo', '', '', 0, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(204, 'calendar', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_rokminievents', 1, 1, '{"builtin_css":"1","set_widths":"1","wrapper_width":"750","item_number":"3","sortorder":"ascending","time_range":"predefined_ranges","startmin":"","startmax":"","rangespan":"current_month","show_description":"1","strip_tags":"a,i,br","trim_description":"1","trim_count":"200","localtime":"local","timezone":"Africa\\/Abidjan","dayformat":"%d","monthformat":"%b","yearformat":"%Y","timeformat":"%I:%M %p","datedisplay":"badge","showyear":"0","limit_count":"0","events_pane":"3","timeline":"arrows","timeline_dates":"inline","transition":"Expo.easeInOut","duration":"500","offset_x":"0","google":"0","google_gid":"b3ndap9i49969vrvjm5c2glugo@group.calendar.google.com","google_past":"1","google_maxresults":"25","google_gcache":"3600","google_links":"link_no","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(205, 'mod_calendar', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_calendar', 1, 1, '', 0, '*'),
(206, 'mod_hello', '', '', 1, 'content-top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_hello', 1, 1, '', 0, '*'),
(207, 'showCA', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'showCA', 1, 1, '', 0, '*'),
(208, 'mod_showCA', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_showCA', 4, 0, '', 0, '*'),
(209, 'select_company', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'select_company', 6, 1, '', 0, '*'),
(214, 'cover_form', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'cover_form', 1, 1, '', 0, '*'),
(215, 'JEvents Calendar', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jevents_cal', 6, 0, '{"com_calViewName":"ext","target_itemid":"224","modcal_useLocalParam":"0","noeventcheck":"0","ignorecatfilter":"0","ignorefiltermodule":"1","minical_showlink":"2","minical_prevyear":"1","minical_prevmonth":"1","minical_actmonth":"1","minical_actyear":"1","minical_nextmonth":"1","minical_nextyear":"1","minical_usedate":"0","modcal_DispLastMonth":"NO","modcal_DispLastMonthDays":"0","modcal_DispNextMonth":"NO","modcal_DispNextMonthDays":"0","moduleclass_sfx":"","inc_ec_css":"1","cache":"1","mod_cal_width":"","mod_cal_height":"","modcal_LinkCloaking":"0"}', 0, '*'),
(216, 'JEvents Legend', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jevents_legend', 6, 0, '{"cache":"0","moduleclass_sfx":"","show_admin":"0","modlegend_inccss":"1","nonjeventsdisable":"1","target_itemid":"","hideinactivekids":"1"}', 0, '*'),
(217, 'Latest JEvents', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jevents_latest', 6, 0, '{"com_calViewName":"global","cache":"0","moduleclass_sfx":"","ignorecatfilter":"0","ignorefiltermodule":"1","target_itemid":"","modlatest_inccss":"1","layout":"","modlatest_useLocalParam":"1","modlatest_CustFmtStr":"${eventDate}[!a: - ${endDate(%I:%M%p)}]<br \\/>${title}","modlatest_MaxEvents":"10","modlatest_Mode":"3","modlatest_Days":"30","startnow":"0","pastonly":"0","modlatest_NoRepeat":"0","modlatest_multiday":"0","modlatest_DispLinks":"1","modlatest_DispYear":"0","modlatest_DisDateStyle":"0","modlatest_DisTitleStyle":"0","modlatest_LinkToCal":"0","modlatest_LinkCloaking":"0","modlatest_SortReverse":"0","modlatest_RSS":"0","modlatest_rss_title":"","modlatest_rss_description":""}', 0, '*'),
(218, 'JEvents Filter', '', '', 1, '', 459, '2013-05-21 02:58:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jevents_filter', 1, 0, '{"filters":"search","target_itemid":"","resetfilters":"none","disablenonjeventspages":"0","showindetails":"0","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(219, 'JEvents View Switcher', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jevents_switchview', 1, 0, '{"cache":"0","show_preview":"0","target_itemid":""}', 0, '*'),
(220, 'GCalendar Overview', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gcalendar', 1, 1, '', 0, '*'),
(221, 'GCalendar Upcoming', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gcalendar_upcoming', 1, 1, '', 0, '*'),
(222, 'GCalendar Next', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gcalendar_next', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jobs_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_modules_menu`
--

INSERT INTO `jobs_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(91, 0),
(92, 108),
(93, 108),
(94, 108),
(95, 108),
(96, 108),
(97, 108),
(98, 109),
(99, 109),
(100, 109),
(101, 109),
(102, 109),
(103, 110),
(104, 110),
(105, 111),
(106, 111),
(107, 112),
(108, 112),
(109, 112),
(110, 112),
(111, 112),
(112, 112),
(113, 112),
(114, 113),
(115, 113),
(116, 113),
(117, 113),
(118, 114),
(118, 118),
(118, 119),
(118, 121),
(119, 114),
(119, 118),
(119, 119),
(119, 121),
(120, 114),
(121, 114),
(122, 114),
(123, 114),
(124, 114),
(124, 118),
(124, 119),
(124, 120),
(124, 121),
(125, 114),
(125, 116),
(125, 118),
(125, 119),
(125, 120),
(125, 121),
(126, 114),
(126, 116),
(126, 118),
(126, 119),
(126, 120),
(126, 121),
(127, 115),
(128, 115),
(129, 112),
(129, 115),
(129, 116),
(129, 117),
(129, 118),
(129, 120),
(129, 121),
(130, 112),
(130, 115),
(130, 116),
(130, 117),
(130, 118),
(130, 120),
(131, 115),
(132, 115),
(133, 117),
(134, 117),
(135, 117),
(136, 119),
(137, 110),
(138, 110),
(139, 110),
(140, 110),
(141, 110),
(142, 110),
(143, 110),
(144, 110),
(145, 110),
(146, 110),
(147, 110),
(151, 101),
(153, 101),
(154, 109),
(155, 109),
(156, 109),
(157, 110),
(158, 110),
(159, 113),
(161, 0),
(162, 0),
(163, 101),
(164, 219),
(166, 101),
(168, 101),
(171, 110),
(173, 110),
(174, 120),
(175, 112),
(175, 115),
(175, 117),
(175, 119),
(175, 120),
(175, 121),
(176, 115),
(176, 116),
(176, 120),
(177, 119),
(178, 118),
(178, 119),
(178, 120),
(178, 121),
(179, 116),
(180, 110),
(181, 110),
(182, 101),
(183, 101),
(184, 101),
(185, 101),
(186, 101),
(187, 101),
(188, 117),
(188, 118),
(188, 121),
(192, 0),
(193, 119),
(200, 0),
(201, 0),
(202, 213),
(204, 214),
(205, 214),
(206, 214),
(207, 218),
(208, 218),
(209, 119),
(209, 134),
(209, 135),
(209, 136),
(209, 137),
(209, 138),
(209, 139),
(209, 140),
(209, 141),
(209, 142),
(209, 143),
(209, 144),
(209, 145),
(209, 147),
(209, 148),
(209, 149),
(209, 150),
(209, 151),
(209, 152),
(209, 153),
(209, 154),
(209, 155),
(209, 156),
(209, 157),
(209, 158),
(209, 159),
(209, 160),
(209, 162),
(209, 163),
(209, 164),
(209, 165),
(209, 168),
(209, 169),
(209, 170),
(209, 171),
(209, 172),
(209, 173),
(209, 174),
(209, 175),
(209, 176),
(209, 177),
(209, 178),
(209, 179),
(209, 180),
(209, 181),
(209, 182),
(209, 184),
(209, 185),
(209, 186),
(209, 187),
(209, 188),
(209, 190),
(209, 191),
(209, 192),
(209, 193),
(209, 194),
(209, 195),
(209, 196),
(209, 197),
(209, 198),
(209, 199),
(209, 220),
(215, 0),
(216, 119);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jobs_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobs_newsfeeds`
--

INSERT INTO `jobs_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(5, 1, 'Hello', 'hello', 'https://www.loginradius.com/product/user-profile-data', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, '*', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2013-04-12 04:47:52', 459, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_overrider`
--

CREATE TABLE IF NOT EXISTS `jobs_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jobs_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `jobs_redirect_links`
--

INSERT INTO `jobs_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/khmer_jobs/index?tp=2', '', '', '', 1, 0, '2013-04-05 04:49:24', '0000-00-00 00:00:00'),
(2, 'http://localhost/khmer_jobs/index.php/features/extensions', '', 'http://localhost/khmer_jobs/', '', 1, 0, '2013-04-05 07:38:19', '0000-00-00 00:00:00'),
(3, 'http://localhost/khmer_jobs/index.php/j-stuff/member-access', '', '', '', 1, 0, '2013-04-05 09:30:07', '0000-00-00 00:00:00'),
(4, 'http://localhost/khmer_jobs/index.php/j-stuff/member-access?tp=2', '', '', '', 2, 0, '2013-04-05 09:30:12', '0000-00-00 00:00:00'),
(5, 'http://localhost/khmer_jobs/index.php/profile', '', 'http://localhost/khmer_jobs/', '', 8, 0, '2013-04-11 02:35:36', '0000-00-00 00:00:00'),
(6, 'http://localhost/khmer_jobs/index.php/component/content/?id=1&Itemid=108', '', 'http://localhost/khmer_jobs/', '', 2, 0, '2013-04-12 08:51:21', '0000-00-00 00:00:00'),
(7, 'http://localhost/khmer_jobs/index.php/userdata', '', 'http://localhost/khmer_jobs/', '', 2, 0, '2013-04-18 01:31:58', '0000-00-00 00:00:00'),
(8, 'http://localhost/khmer_jobs/index.php/calendar', '', 'http://localhost/khmer_jobs/index.php/hello', '', 4, 0, '2013-04-18 03:20:35', '0000-00-00 00:00:00'),
(9, 'http://localhost/khmer_jobs/index.php/tmpl/default.php', '', 'http://localhost/khmer_jobs/index.php/calendar', '', 1, 0, '2013-04-18 07:06:43', '0000-00-00 00:00:00'),
(10, 'http://localhost/khmer_jobs/index.php/insert', '', 'http://localhost/khmer_jobs/index.php/calendar', '', 1, 0, '2013-04-18 10:15:13', '0000-00-00 00:00:00'),
(11, 'http://localhost/khmer_jobs/index.php/listhr/test', '', '', '', 1, 0, '2013-04-30 03:40:13', '0000-00-00 00:00:00'),
(12, 'http://localhost/khmer_jobs/index.php/home/candidate', '', '', '', 1, 0, '2013-04-30 04:06:51', '0000-00-00 00:00:00'),
(13, 'http://localhost/khmer_jobs/index.php/hello/cv-form', '', 'http://localhost/khmer_jobs/index.php/job-seeker', '', 1, 0, '2013-04-30 10:37:56', '0000-00-00 00:00:00'),
(14, 'http://localhost/khmer_jobs/index.php/job-seeker/cv', '', '', '', 2, 0, '2013-05-08 09:06:04', '0000-00-00 00:00:00'),
(15, 'http://localhost/khmer_jobs/index.php/job-seeker/month.calendar/2013/05/10/-', '', '', '', 1, 0, '2013-05-10 03:49:10', '0000-00-00 00:00:00'),
(16, 'http://192.168.1.21/khmer_jobs/index.php/component/content/?id=5&Itemid=112', '', 'http://192.168.1.21/khmer_jobs/', '', 1, 0, '2013-05-10 06:10:10', '0000-00-00 00:00:00'),
(17, 'http://localhost/khmer_jobs/index.php/job-seeker/index.php/component/jevents/month.calendar/2013/05/16/-?Itemid=0', '', 'http://localhost/khmer_jobs/index.php/job-seeker/calendar', '', 1, 0, '2013-05-16 01:19:47', '0000-00-00 00:00:00'),
(18, 'http://localhost/khmer_jobs/index.php/khmer_jobs/index.php/component/jevents/month.calendar/2013/05/16/-?Itemid=0', '', 'http://localhost/khmer_jobs/index.php/component/jevents/month.calendar/2013/05/16/-?Itemid=0', '', 3, 0, '2013-05-16 01:45:00', '0000-00-00 00:00:00'),
(19, 'http://localhost/khmer_jobs/index.php/job-seeker/calendar/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vyd7c2f6998ee7aabb3f5e6757b06ecc6c=ftlm4p99ok4vmql420pbm2ei43&ba0c4edad67937ba7864ce9ba9f', '', '', '', 1, 0, '2013-05-17 03:33:52', '0000-00-00 00:00:00'),
(20, 'http://localhost/khmer_jobs/index.php/job-seeker/calendar/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vy', '', '', '', 7, 0, '2013-05-17 03:33:54', '0000-00-00 00:00:00'),
(25, 'http://localhost/khmer_jobs/index.php/job-seeker/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vyd7c2f6998ee7aabb3f5e6757b06ecc6c=ftlm4p99ok4vmql420pbm2ei43&ba0c4edad67937ba7864ce9ba9fe3bd0=46f', '', '', '', 1, 0, '2013-05-17 03:47:04', '0000-00-00 00:00:00'),
(26, 'http://localhost/khmer_jobs/index.php/job-seeker/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vy', '', '', '', 1, 0, '2013-05-17 03:47:05', '0000-00-00 00:00:00'),
(28, 'http://localhost/khmer_jobs//index.php/job-seeker/calendar/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vy565e8304911b8d67273a47a1fed74e80=40ap2khgnle190rjbjakfg74e1&0379d5b7d1d81b904b61538982', '', '', '', 1, 0, '2013-05-17 04:07:10', '0000-00-00 00:00:00'),
(29, 'http://localhost/khmer_jobs//index.php/job-seeker/calendar/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vy', '', '', '', 1, 0, '2013-05-17 04:07:11', '0000-00-00 00:00:00'),
(30, 'http://localhost/khmer_jobs/index.php/job-seeker/calendar/month.calendar/?tmpl=component&print=1&origin=aHR0cDovL2xvY2FsaG9zdC9raG1lcl9qb2JzL2luZGV4LnBocC9qb2Itc2Vla2Vy0379d5b7d1d81b904b61538982735afd=sogufbl8c9tn0bh2l2v4ltb0u7&565e8304911b8d67273a47a1fed', '', '', '', 1, 0, '2013-05-17 04:21:26', '0000-00-00 00:00:00'),
(31, 'http://localhost/khmer_jobs/index.php/job-seeker/cale/month.calendar/2013/05/17/-', '', 'http://localhost/khmer_jobs/index.php/job-seeker/calendar/month.calendar/2013/05/17/-', '', 1, 0, '2013-05-20 01:54:09', '0000-00-00 00:00:00'),
(32, 'http://localhost/khmer_jobs/index.php/job-seeker]', '', '', '', 1, 0, '2013-05-21 11:09:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokcandy`
--

CREATE TABLE IF NOT EXISTS `jobs_rokcandy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `macro` text NOT NULL,
  `html` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jobs_rokcandy`
--

INSERT INTO `jobs_rokcandy` (`id`, `catid`, `macro`, `html`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(20, 8, '[h1]{text}[/h1]', '<h1>{text}</h1>', 1, 0, '0000-00-00 00:00:00', 1, ''),
(21, 8, '[h2]{text}[/h2]', '<h2>{text}</h2>', 1, 0, '0000-00-00 00:00:00', 2, ''),
(22, 8, '[h3]{text}[/h3]', '<h3>{text}</h3>', 1, 0, '0000-00-00 00:00:00', 3, ''),
(23, 8, '[h4]{text}[/h4]', '<h4>{text}</h4>', 1, 0, '0000-00-00 00:00:00', 4, ''),
(24, 8, '[h5]{text}[/h5]', '<h5>{text}</h5>', 1, 0, '0000-00-00 00:00:00', 5, ''),
(25, 8, '[b]{text}[/b]', '<strong>{text}</strong>', 1, 0, '0000-00-00 00:00:00', 6, ''),
(26, 8, '[i]{text}[/i]', '<em>{text}</em>', 1, 0, '0000-00-00 00:00:00', 7, ''),
(27, 8, '[code]{text}[/code]', '<code>{text}</code>', 1, 0, '0000-00-00 00:00:00', 8, ''),
(28, 8, '[span class="{class}"]{text}[/span]', '<span class="{class}">{text}</span> ', 1, 0, '0000-00-00 00:00:00', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokcommon_configs`
--

CREATE TABLE IF NOT EXISTS `jobs_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobs_rokcommon_configs`
--

INSERT INTO `jobs_rokcommon_configs` (`id`, `extension`, `type`, `file`, `priority`) VALUES
(1, 'roksprocket', 'container', '/components/com_roksprocket/container.xml', 10),
(2, 'roksprocket', 'library', '/components/com_roksprocket/lib', 10),
(3, 'rokgallery', 'container', '/components/com_rokgallery/container.xml', 10),
(4, 'rokgallery', 'library', '/components/com_rokgallery/lib', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_files`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `guid` char(36) NOT NULL,
  `md5` char(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `license` varchar(255) DEFAULT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `type` char(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `jobs_files_sluggable_idx` (`slug`),
  KEY `jobs_rokgallery_files_published_idx` (`published`),
  KEY `jobs_rokgallery_files_md5_idx` (`md5`),
  KEY `jobs_rokgallery_files_guid_idx` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_files_index`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_files_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `jobs_rokgallery_files_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_file_loves`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_file_loves` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_file_tags`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_file_tags` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`,`tag`),
  KEY `jobs_rokgallery_file_tags_file_id_idx` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_file_views`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_file_views` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_filters`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `query` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_galleries`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `filetags` longtext,
  `width` int(10) unsigned NOT NULL DEFAULT '910',
  `height` int(10) unsigned NOT NULL DEFAULT '500',
  `keep_aspect` tinyint(1) DEFAULT '0',
  `force_image_size` tinyint(1) DEFAULT '0',
  `thumb_xsize` int(10) unsigned NOT NULL DEFAULT '190',
  `thumb_ysize` int(10) unsigned NOT NULL DEFAULT '150',
  `thumb_background` varchar(12) DEFAULT NULL,
  `thumb_keep_aspect` tinyint(1) DEFAULT '0',
  `auto_publish` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `jobs_rokgallery_galleries_auto_publish_idx` (`auto_publish`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_jobs`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_jobs` (
  `id` char(36) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `properties` text,
  `state` varchar(255) NOT NULL,
  `status` text,
  `percent` bigint(20) unsigned DEFAULT NULL,
  `sm` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_profiles`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `profile` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `jobs_rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_schema_version`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_schema_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_rokgallery_schema_version`
--

INSERT INTO `jobs_rokgallery_schema_version` (`version`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_slices`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_slices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `caption` text,
  `link` text,
  `filesize` int(10) unsigned NOT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `admin_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `manipulations` longtext,
  `palette` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb_xsize` int(10) unsigned NOT NULL,
  `thumb_ysize` int(10) unsigned NOT NULL,
  `thumb_keep_aspect` tinyint(1) NOT NULL DEFAULT '1',
  `thumb_background` varchar(12) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `jobs_rokgallery_slices_sluggable_idx` (`slug`,`gallery_id`),
  KEY `rokgallery_slices_published_idx` (`published`),
  KEY `rokgallery_slices_guid_idx` (`guid`),
  KEY `file_id_idx` (`file_id`),
  KEY `gallery_id_idx` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_slices_index`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_slices_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `rokgallery_slices_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rokgallery_slice_tags`
--

CREATE TABLE IF NOT EXISTS `jobs_rokgallery_slice_tags` (
  `slice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`slice_id`,`tag`),
  KEY `rokgallery_slice_tags_slice_id_idx` (`slice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_roksprocket_items`
--

CREATE TABLE IF NOT EXISTS `jobs_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=465 ;

--
-- Dumping data for table `jobs_roksprocket_items`
--

INSERT INTO `jobs_roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(320, '168', 'joomla', '33', 0, '{"lists_item_title":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"-default-","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(321, '168', 'joomla', '34', 1, '{"lists_item_title":"<span class=\\"hidden-tablet\\">Stunning<\\/span> Interface","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"-default-","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(322, '168', 'joomla', '35', 2, '{"lists_item_title":"<span class=\\"hidden-tablet\\">Integrated<\\/span> Features","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"-default-","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(336, '163', 'joomla', '20', 0, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_20__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=1&Itemid=108","mosaic_item_tags":"sports, photos","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(337, '163', 'joomla', '22', 1, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_22__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=1&Itemid=108","mosaic_item_tags":"sports, travel","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(338, '163', 'joomla', '21', 2, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img3.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_21__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=1&Itemid=108","mosaic_item_tags":"travel, photos","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(339, '163', 'joomla', '23', 3, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img4.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_23__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=10&Itemid=117","mosaic_item_tags":"travel, photos","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(340, '163', 'joomla', '24', 4, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img5.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_24__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=5&Itemid=112","mosaic_item_tags":"travel, sports","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(341, '163', 'joomla', '25', 5, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img6.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_25__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_tags":"photos, sports","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(342, '163', 'joomla', '26', 6, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img7.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_26__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=2&Itemid=109","mosaic_item_tags":"sports, travel","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(343, '163', 'joomla', '27', 7, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img8.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_27__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_tags":"photos, sports","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(344, '163', 'joomla', '28', 8, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img9.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_28__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=3&Itemid=110","mosaic_item_tags":"photos, travel","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","lists_item_link":"-default-","features_item_title":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","lists_item_description":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","headlines_item_description":"-default-","features_item_link":"-default-"}'),
(461, '162', 'joomla', '1', 0, '{"features_item_title":"-none-","features_item_description":"-none-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img2.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_1__params_features_item_image''}","features_item_link":"-none-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","lists_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(462, '162', 'joomla', '6', 1, '{"features_item_title":"-none-","features_item_description":"-none-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img1.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_features_item_image''}","features_item_link":"-none-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","lists_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(463, '162', 'joomla', '10', 2, '{"features_item_title":"-none-","features_item_description":"-none-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img1.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_features_item_image&undefined''}","features_item_link":"-none-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","lists_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(464, '162', 'joomla', '21', 3, '{"features_item_title":"-none-","features_item_description":"-none-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img1.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_21__params_features_item_image''}","features_item_link":"-none-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","lists_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_scheduler_options`
--

CREATE TABLE IF NOT EXISTS `jobs_scheduler_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jobs_scheduler_options`
--

INSERT INTO `jobs_scheduler_options` (`id`, `name`, `value`) VALUES
(1, 'scheduler_xml', '<config><active_tab>a1</active_tab><settings><settings_width>680px</settings_width><settings_height>600px</settings_height><settings_eventnumber>5</settings_eventnumber><settings_link></settings_link><settings_posts>false</settings_posts><settings_repeat>true</settings_repeat><settings_firstday>false</settings_firstday><settings_multiday>true</settings_multiday><settings_fullday>false</settings_fullday><settings_marknow>false</settings_marknow><settings_singleclick>false</settings_singleclick><settings_day>true</settings_day><settings_week>true</settings_week><settings_month>true</settings_month><settings_agenda>false</settings_agenda><settings_week_agenda>false</settings_week_agenda><settings_year>false</settings_year><settings_map>false</settings_map><settings_defaultmode>week</settings_defaultmode><settings_debug>false</settings_debug><settings_collision>false</settings_collision><settings_expand>true</settings_expand><settings_pdf>true</settings_pdf><settings_ical>true</settings_ical><settings_minical>false</settings_minical></settings><access><group id="-1"><view>true</view><add>false</add><edit>false</edit></group><group id="editor"><view>true</view><add>true</add><edit>true</edit></group><group id="administrator"><view>true</view><add>true</add><edit>true</edit></group><group id="8"><view>true</view><add>true</add><edit>true</edit></group><privatemode>off</privatemode></access><templates><templates_defaultdate><![CDATA[%d %M %Y]]></templates_defaultdate><templates_monthdate><![CDATA[%F %Y]]></templates_monthdate><templates_weekdate><![CDATA[%l]]></templates_weekdate><templates_daydate><![CDATA[%d/%m/%Y]]></templates_daydate><templates_hourdate><![CDATA[%H:%i]]></templates_hourdate><templates_monthday><![CDATA[%d]]></templates_monthday><templates_minmin><![CDATA[5]]></templates_minmin><templates_hourheight><![CDATA[42]]></templates_hourheight><templates_starthour><![CDATA[0]]></templates_starthour><templates_endhour><![CDATA[24]]></templates_endhour><templates_agendatime><![CDATA[30]]></templates_agendatime><templates_eventtext><![CDATA[return event.text;]]></templates_eventtext><templates_eventheader><![CDATA[return scheduler.templates.hour_scale(start) + " - " + scheduler.templates.hour_scale(end);]]></templates_eventheader><templates_eventbartext><![CDATA[return "<span title=+event.text+>" + event.text + "</span>";]]></templates_eventbartext><templates_username>false</templates_username></templates><customfields><customfield name="Text" dsc="Description" type="textarea" old_name="Text" use_colors="false" units="false" timeline="null" height="150" /></customfields><google><google_email></google_email><google_cal></google_cal></google><skins><use>false</use><bg>#C2D5FC</bg><event>#FFE763</event></skins></config>'),
(2, 'scheduler_php', ''),
(3, 'scheduler_php_version', '0'),
(4, 'scheduler_xml_version', '1'),
(5, 'sidebar_num', '5'),
(6, 'scheduler_stable_config', '<config><active_tab>a1</active_tab><settings><settings_width>680px</settings_width><settings_height>600px</settings_height><settings_eventnumber>5</settings_eventnumber><settings_link></settings_link><settings_posts>false</settings_posts><settings_repeat>true</settings_repeat><settings_firstday>false</settings_firstday><settings_multiday>true</settings_multiday><settings_fullday>false</settings_fullday><settings_marknow>false</settings_marknow><settings_singleclick>false</settings_singleclick><settings_day>true</settings_day><settings_week>true</settings_week><settings_month>true</settings_month><settings_agenda>false</settings_agenda><settings_week_agenda>false</settings_week_agenda><settings_year>false</settings_year><settings_map>false</settings_map><settings_defaultmode>week</settings_defaultmode><settings_debug>false</settings_debug><settings_collision>false</settings_collision><settings_expand>true</settings_expand><settings_pdf>true</settings_pdf><settings_ical>true</settings_ical><settings_minical>false</settings_minical></settings><access><group id="-1"><view>true</view><add>false</add><edit>false</edit></group><group id="editor"><view>true</view><add>true</add><edit>true</edit></group><group id="administrator"><view>true</view><add>true</add><edit>true</edit></group><group id="8"><view>true</view><add>true</add><edit>true</edit></group><privatemode>off</privatemode></access><templates><templates_defaultdate><![CDATA[%d %M %Y]]></templates_defaultdate><templates_monthdate><![CDATA[%F %Y]]></templates_monthdate><templates_weekdate><![CDATA[%l]]></templates_weekdate><templates_daydate><![CDATA[%d/%m/%Y]]></templates_daydate><templates_hourdate><![CDATA[%H:%i]]></templates_hourdate><templates_monthday><![CDATA[%d]]></templates_monthday><templates_minmin><![CDATA[5]]></templates_minmin><templates_hourheight><![CDATA[42]]></templates_hourheight><templates_starthour><![CDATA[0]]></templates_starthour><templates_endhour><![CDATA[24]]></templates_endhour><templates_agendatime><![CDATA[30]]></templates_agendatime><templates_eventtext><![CDATA[return event.text;]]></templates_eventtext><templates_eventheader><![CDATA[return scheduler.templates.hour_scale(start) + " - " + scheduler.templates.hour_scale(end);]]></templates_eventheader><templates_eventbartext><![CDATA[return "<span title=+event.text+>" + event.text + "</span>";]]></templates_eventbartext><templates_username>false</templates_username></templates><customfields><customfield name="Text" dsc="Description" type="textarea" old_name="Text" use_colors="false" units="false" timeline="null" height="150" /></customfields><google><google_email></google_email><google_cal></google_cal></google><skins><use>false</use><bg>#C2D5FC</bg><event>#FFE763</event></skins></config>');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_schemas`
--

CREATE TABLE IF NOT EXISTS `jobs_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_schemas`
--

INSERT INTO `jobs_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.9');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_session`
--

CREATE TABLE IF NOT EXISTS `jobs_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_session`
--

INSERT INTO `jobs_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('b34n26mj47jajakpnhi4cgq557', 0, 0, '1369290381', '__default|a:9:{s:15:"session.counter";i:12;s:19:"session.timer.start";i:1369285828;s:18:"session.timer.last";i:1369289540;s:17:"session.timer.now";i:1369290380;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.2; rv:21.0) Gecko/20100101 Firefox/21.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:6:"return";s:20:"index.php?Itemid=101";s:4:"data";a:0:{}}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\0*\0isRoot";b:0;s:2:"id";s:3:"591";s:4:"name";s:4:"ssss";s:8:"username";s:4:"ssss";s:8:"headline";N;s:5:"email";s:19:"sssssssss@gmail.com";s:8:"password";s:65:"3592bde6cf51b0f6f38b471734497d85:1cjnvRexdWSO40BgilTimgMqwPfk8Edk";s:14:"password_clear";s:0:"";s:8:"usertype";s:6:"normal";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:12:"registerDate";s:19:"2013-05-07 07:09:35";s:13:"lastvisitDate";s:19:"2013-05-23 04:56:07";s:10:"activation";s:32:"3566063ccc6593d9158799a80abcdaf0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:10;s:2:"10";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:10;}s:14:"\0*\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:6;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;s:7:"statues";s:1:"0";}s:23:"gantry-current-template";s:12:"rt_leviathan";s:13:"session.token";s:32:"edaadf297e5e79f947528a7064c30192";}sess|a:1:{i:0;a:1:{s:10:"session_id";s:26:"b34n26mj47jajakpnhi4cgq557";}}', 591, 'ssss', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_template_styles`
--

CREATE TABLE IF NOT EXISTS `jobs_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jobs_template_styles`
--

INSERT INTO `jobs_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'rt_leviathan', 0, '0', 'rt_leviathan - Default', '{"master":"true","current_id":"7","template_full_name":"Leviathan","grid_system":"12","template_prefix":"leviathan-","cookie_time":"31536000","override_set":"2.5","name":"Preset1","copy_lang_files_if_diff":"1","logo":{"enabled":"1","position":"header-a","type":"style1","custom":{"image":""}},"main":{"accent":"#5b9bc9","accent2":"#55b8df","accentoverlay":"light","accent2overlay":"light","overlay":"brown"},"body":"light","background":{"pattern":"wood"},"font":{"family":"s:leviathan","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","dropdownmenu-priority":"18","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","webfonts-priority":"27","styledeclaration-enabled":"1","social":{"enabled":"1","position":"copyright-c","twitter":"","facebook":"","google":"","rss":""},"date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"feature-b"},"login":{"enabled":"1","position":"utility-c","text":"Member Login","logouttext":"Logout"},"popup":{"enabled":"0","position":"utility-d","text":"Popup Module","width":"250","height":"235"},"branding":{"enabled":"0","position":"copyright-a"},"copyright":{"enabled":"1","position":"copyright-a","text":"CopyRight by Khmer.jobs Group","layout":"3,3,3,3","showall":"0","showmax":"6"},"totop":{"enabled":"0","position":"copyright-b","text":"Back to Top"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"0","position":"copyright-d","text":"Reset Settings"},"analytics":{"enabled":"0","code":"","position":"analytics"},"menu":{"enabled":"1","type":"dropdownmenu","dropdownmenu":{"theme":"gantry-dropdown","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","menutype":"mainmenu","position":"header-b","responsive-menu":"panel","enable-current-id":"0","module_cache":"1"},"splitmenu":{"mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","cache":"0","menutype":"mainmenu","theme":"gantry-splitmenu","mainmenu-position":"header-b","submenu-position":"sidebar-a","submenu-title":"1","submenu-class_sfx":"","submenu-module_sfx":"title1","responsive-menu":"panel","roknavmenu_dropdown_enable-current-id":"0","module_cache":"1"}},"top":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"header":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:3;i:1;i:9;}}}","showall":"0","showmax":"6"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"a:1:{i:12;a:1:{i:2;a:2:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:9;}}}","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"extension":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"layout-mode":"responsive","loadtransition":"0","component-enabled":"1","mainbody-enabled":"1","rtl-enabled":"1","pagesuffix-enabled":"0","selectivizr-enabled":"0","less":{"compression":"1","compilewait":"2","debugheader":"0"},"ie7splash-enabled":"1","k2":"0"}'),
(9, 'rt_leviathan', 0, '1', 'rt_leviathan - Home', '{"master":"7","current_id":"9","main":{"accent2":"#ffffff"},"showcase":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:3;i:1;i:9;}}}"},"feature":{"layout":"a:1:{i:12;a:1:{i:4;a:4:{i:0;i:3;i:1;i:3;i:2;i:3;i:3;i:3;}}}"}}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_updates`
--

CREATE TABLE IF NOT EXISTS `jobs_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=210 ;

--
-- Dumping data for table `jobs_updates`
--

INSERT INTO `jobs_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(2, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(3, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.9.2', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(4, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(5, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(6, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(7, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(8, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(9, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(10, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(11, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(12, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(13, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(14, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(15, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(16, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(17, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(18, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.3', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(19, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(20, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(21, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(22, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(23, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(24, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(25, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.9.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(26, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(27, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(28, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(29, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(30, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(31, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(32, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(33, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(34, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(35, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(36, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.8.4', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(37, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(38, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(39, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(40, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(41, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(42, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(43, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(44, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(45, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(46, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(47, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(48, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(49, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(50, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(54, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(55, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(56, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(57, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(58, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(59, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(60, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(61, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(62, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(63, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(64, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(65, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(66, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(67, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(68, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(69, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(70, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(71, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(72, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(73, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(74, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(75, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(76, 4, 10001, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.9', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(77, 4, 10001, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.9', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(78, 5, 10015, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.4', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(79, 5, 10015, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.4', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(80, 5, 10025, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.1', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(81, 5, 10025, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.1', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(82, 5, 10011, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.7', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(84, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(86, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(87, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(89, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(90, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(91, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(92, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(93, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(94, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(95, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(96, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(97, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(98, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(99, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(100, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(101, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(102, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(103, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(104, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(105, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(106, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(107, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(108, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(109, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.8', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(110, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.8', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(111, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(112, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(113, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(114, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(115, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.8', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(116, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.8', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(117, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(118, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(119, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.8', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(120, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.10', '', 'http://update.joomla.org/core/extension.xml', ''),
(121, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(122, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(123, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(124, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(125, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(126, 5, 10006, 0, 'RokNavMenu', '', 'mod_roknavmenu', 'module', '', 0, '2.0.2', '', 'http://updates.rockettheme.com/joomla/modules/roknavmenu.xml', ''),
(127, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(128, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(129, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(130, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(131, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(132, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(133, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(134, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(135, 5, 10017, 0, 'RokBooster', '', 'rokbooster', 'plugin', 'system', 0, '1.1.6', '', 'http://updates.rockettheme.com/joomla/plugins/rokbooster.xml', ''),
(136, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(137, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(138, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(139, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(140, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(141, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(142, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(143, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(144, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(145, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(146, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(147, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(148, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(149, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.9', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(150, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(151, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(152, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(153, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(154, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(155, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(156, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(157, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(158, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(159, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(160, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(161, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(162, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(163, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(164, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(165, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(166, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(167, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(168, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(169, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(170, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(171, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(172, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(173, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(174, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(175, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(176, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(177, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(178, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(179, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(180, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(181, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(182, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(183, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(184, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(185, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(186, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(187, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(188, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(189, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(190, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(191, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(192, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(193, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(194, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(195, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(196, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(197, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(198, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(199, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(200, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(201, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(202, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(203, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(204, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', ''),
(205, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(206, 4, 0, 0, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.10', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org'),
(207, 5, 0, 0, 'RokPad', '', 'rokpad', 'plugin', 'editors', 0, '2.1.5', '', 'http://updates.rockettheme.com/joomla/plugins/rokpad.xml', ''),
(208, 5, 0, 0, 'RokBox', '', 'rokbox', 'plugin', 'system', 0, '2.0.3', '', 'http://updates.rockettheme.com/joomla/plugins/rokbox.xml', ''),
(209, 5, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.8.10', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_update_categories`
--

CREATE TABLE IF NOT EXISTS `jobs_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_update_sites`
--

CREATE TABLE IF NOT EXISTS `jobs_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jobs_update_sites`
--

INSERT INTO `jobs_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1369040775),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1367219292),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1366340942),
(4, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1369040775),
(5, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1369040775),
(6, 'RocketTheme Update Directory', 'collection', '\n            http://updates.rockettheme.com/joomla/updates.xml\n        ', 0, 1366340940),
(7, 'Plugin include component Update Site', 'extension', 'http://tech.reumer.net/update/plugin_includecomponent/extension.xml', 1, 1369040775);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jobs_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jobs_update_sites_extensions`
--

INSERT INTO `jobs_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10001),
(5, 10011),
(5, 10015),
(5, 10017),
(5, 10019),
(6, 10103),
(7, 10127);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_usergroups`
--

CREATE TABLE IF NOT EXISTS `jobs_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jobs_usergroups`
--

INSERT INTO `jobs_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 22, 'Public'),
(2, 1, 12, 19, 'Registered'),
(3, 2, 13, 18, 'Author'),
(4, 3, 14, 17, 'Editor'),
(5, 4, 15, 16, 'Publisher'),
(6, 1, 8, 11, 'Manager'),
(7, 6, 9, 10, 'Administrator'),
(8, 1, 20, 21, 'Super Users'),
(9, 1, 4, 5, 'HR'),
(10, 1, 6, 7, 'Job_seeker'),
(11, 1, 2, 3, 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_users`
--

CREATE TABLE IF NOT EXISTS `jobs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `statues` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=621 ;

--
-- Dumping data for table `jobs_users`
--

INSERT INTO `jobs_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `statues`) VALUES
(459, 'Super User', 'admin', 'kol.kagnara@yahoo.com', '75416af57f287a8046f097b0aec28159:5JwxTf6qFJVYXzCvDSqtXZvj5UHhNBK3', 'deprecated', 0, 1, '2013-04-05 04:38:46', '2013-05-23 01:09:19', '0', '', '0000-00-00 00:00:00', 0, 0),
(477, 'kaka', 'kaka', 'kaka@gmail.com', 'ababbf61cbe37d0a2f945c3ae25858cc:Y2jd4ssTcHMVJNyiek5gz5iPW7alC8g2', 'deprecated', 0, 0, '2013-04-25 00:58:19', '2013-04-30 10:42:46', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, 0),
(479, 'kol', 'kolkanika', 'kagnara.kol@mapring.com', '94aa5299649ebd6cc5be30c149c61a8c:TkLtLjoL199kwXZrmqM1a2CJRXahUFsu', 'deprecated', 0, 0, '2013-04-25 02:13:07', '2013-05-07 06:58:40', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, 1),
(586, 'som1', 'som1', 'som1@gmail.com', '442dac23f5f5c8dbbc75fb23982748a5:1hdkBmC605d3pMdzuuBXOh8SnOCOjKsA', 'normal', 0, 0, '2013-05-06 03:54:17', '2013-05-23 05:01:07', 'e8cbe8220c803693911a0bce0bbbe31c', '{}', '0000-00-00 00:00:00', 0, 1),
(589, 'kirikou', 'kirikou', 'kirikou@ymail.com', '6d0241ca553421f94fc121296fcf562f:BLbwfUhfkHGGmRrvIjRuvCZAzp6wNDBK', 'normal', 0, 0, '2013-05-06 07:35:20', '2013-05-22 06:51:19', 'cd6b6670bae2c280243d527fed3f83d4', '{}', '0000-00-00 00:00:00', 0, 0),
(591, 'ssss', 'ssss', 'sssssssss@gmail.com', '3592bde6cf51b0f6f38b471734497d85:1cjnvRexdWSO40BgilTimgMqwPfk8Edk', 'normal', 0, 0, '2013-05-07 07:09:35', '2013-05-23 05:10:41', '3566063ccc6593d9158799a80abcdaf0', '{}', '0000-00-00 00:00:00', 0, 0),
(592, 'aaaa', 'aaaa', 'aaaa@gmail.com', '9baef49d6d4074e8e96aa1f50eb3f60e:PRHzHJEpIAEzoVT6QxaZVTEfIwtaSUew', 'normal', 0, 0, '2013-05-07 07:29:52', '0000-00-00 00:00:00', '170e306a73c12763a8c63d03c396bd9d', '{}', '0000-00-00 00:00:00', 0, 1),
(593, 'CA', 'CA', 'kol.kanika@gmail.com', '8d65a086e4b093b3f58ef20f5399ca24:SuDTY0MFNVlbH9Gqmnqnjzo61d72gptl', '', 0, 0, '2013-05-17 02:54:16', '2013-05-23 05:02:54', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, 0),
(594, 'kima', 'kima', 'kima@gmail.com', 'e6b33a850bebf76e043d3ed55b86c7d5:AzcSJR98QPfyrASviySOGaj1AwGxGhKv', 'normal', 0, 0, '2013-05-17 06:45:16', '0000-00-00 00:00:00', '12db9aa73c5bbf0af4a1335cc09d61ad', '{}', '0000-00-00 00:00:00', 0, 1),
(608, 'apple', 'apple', 'apple@yahoo.com', '80a091a8fa304b5a0c18055732343ac1:7f4Q2TMG5AU1H53nUYTSpLNtIa0NVRDm', 'normal', 0, 0, '2013-05-17 08:24:56', '2013-05-22 10:07:24', '6f18768d382a279bfb60ea16549383a0', '{}', '0000-00-00 00:00:00', 0, 0),
(616, 'Se', 'SeSom', 'se.somitc41@gmail.com', '0527780f5e46c6e8684b5e88a9fddc7c:KziDRQE3wGFATPvloWszLos5KidPAEb7', 'deprecated', 0, 0, '2013-05-20 03:51:06', '2013-05-20 03:58:47', '', '{}', '0000-00-00 00:00:00', 0, 0),
(617, 'mani', 'mani', 'mani.kaka@gmail.com', 'eae3def5d269bafb5f8c1775ee1bd9f7:1efLHQWwIdDIZpVvFlNxOMQLctAQrKrt', 'normal', 0, 0, '2013-05-20 03:59:20', '2013-05-22 04:43:23', '8fc0f696f0dd41f9b53850c64f7e6d1f', '{}', '0000-00-00 00:00:00', 0, 0),
(619, 'cn', 'cnpisit', 'pisit_lovlov@yahoo.com', '6cba1a97bc04997388c6b789889d94d5:rpS7YVge4Ei8bCQD0KIxaeVcZVBn7hX3', 'deprecated', 0, 0, '2013-05-23 01:27:03', '2013-05-23 01:33:26', '', '{}', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_user_notes`
--

CREATE TABLE IF NOT EXISTS `jobs_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jobs_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `jobs_user_profiles`
--

INSERT INTO `jobs_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(473, 'profile.aboutme', '', 5),
(473, 'profile.address1', '', 1),
(473, 'profile.address2', '', 2),
(473, 'profile.city', '', 3),
(473, 'profile.dob', '2013-04-10', 4),
(473, 'profile.website', '', 6),
(477, 'profile.aboutme', '""', 10),
(477, 'profile.address1', '""', 1),
(477, 'profile.address2', '""', 2),
(477, 'profile.city', '""', 3),
(477, 'profile.country', '""', 5),
(477, 'profile.dob', '""', 11),
(477, 'profile.favoritebook', '""', 9),
(477, 'profile.phone', '""', 7),
(477, 'profile.postal_code', '""', 6),
(477, 'profile.region', '""', 4),
(477, 'profile.website', '""', 8),
(479, 'profile.aboutme', '""', 10),
(479, 'profile.address1', '""', 1),
(479, 'profile.address2', '""', 2),
(479, 'profile.city', '""', 3),
(479, 'profile.country', '""', 5),
(479, 'profile.dob', '""', 11),
(479, 'profile.favoritebook', '""', 9),
(479, 'profile.phone', '""', 7),
(479, 'profile.postal_code', '""', 6),
(479, 'profile.region', '""', 4),
(479, 'profile.website', '""', 8),
(480, 'profile.aboutme', '""', 10),
(480, 'profile.address1', '""', 1),
(480, 'profile.address2', '""', 2),
(480, 'profile.city', '""', 3),
(480, 'profile.country', '""', 5),
(480, 'profile.dob', '""', 11),
(480, 'profile.favoritebook', '""', 9),
(480, 'profile.phone', '""', 7),
(480, 'profile.postal_code', '""', 6),
(480, 'profile.region', '""', 4),
(480, 'profile.website', '""', 8),
(481, 'profile.aboutme', '""', 10),
(481, 'profile.address1', '""', 1),
(481, 'profile.address2', '""', 2),
(481, 'profile.city', '""', 3),
(481, 'profile.country', '""', 5),
(481, 'profile.dob', '""', 11),
(481, 'profile.favoritebook', '""', 9),
(481, 'profile.phone', '""', 7),
(481, 'profile.postal_code', '""', 6),
(481, 'profile.region', '""', 4),
(481, 'profile.website', '""', 8),
(482, 'profile.aboutme', '""', 10),
(482, 'profile.address1', '""', 1),
(482, 'profile.address2', '""', 2),
(482, 'profile.city', '""', 3),
(482, 'profile.country', '""', 5),
(482, 'profile.dob', '""', 11),
(482, 'profile.favoritebook', '""', 9),
(482, 'profile.phone', '""', 7),
(482, 'profile.postal_code', '""', 6),
(482, 'profile.region', '""', 4),
(482, 'profile.website', '""', 8),
(483, 'profile.aboutme', '""', 10),
(483, 'profile.address1', '""', 1),
(483, 'profile.address2', '""', 2),
(483, 'profile.city', '""', 3),
(483, 'profile.country', '""', 5),
(483, 'profile.dob', '""', 11),
(483, 'profile.favoritebook', '""', 9),
(483, 'profile.phone', '""', 7),
(483, 'profile.postal_code', '""', 6),
(483, 'profile.region', '""', 4),
(483, 'profile.website', '""', 8),
(484, 'profile.aboutme', '""', 10),
(484, 'profile.address1', '""', 1),
(484, 'profile.address2', '""', 2),
(484, 'profile.city', '""', 3),
(484, 'profile.country', '""', 5),
(484, 'profile.dob', '""', 11),
(484, 'profile.favoritebook', '""', 9),
(484, 'profile.phone', '""', 7),
(484, 'profile.postal_code', '""', 6),
(484, 'profile.region', '""', 4),
(484, 'profile.website', '""', 8),
(485, 'profile.aboutme', '""', 10),
(485, 'profile.address1', '""', 1),
(485, 'profile.address2', '""', 2),
(485, 'profile.city', '""', 3),
(485, 'profile.country', '""', 5),
(485, 'profile.dob', '""', 11),
(485, 'profile.favoritebook', '""', 9),
(485, 'profile.phone', '""', 7),
(485, 'profile.postal_code', '""', 6),
(485, 'profile.region', '""', 4),
(485, 'profile.website', '""', 8),
(486, 'profile.aboutme', '""', 10),
(486, 'profile.address1', '""', 1),
(486, 'profile.address2', '""', 2),
(486, 'profile.city', '""', 3),
(486, 'profile.country', '""', 5),
(486, 'profile.dob', '""', 11),
(486, 'profile.favoritebook', '""', 9),
(486, 'profile.phone', '""', 7),
(486, 'profile.postal_code', '""', 6),
(486, 'profile.region', '""', 4),
(486, 'profile.website', '""', 8),
(487, 'profile.aboutme', '""', 10),
(487, 'profile.address1', '""', 1),
(487, 'profile.address2', '""', 2),
(487, 'profile.city', '""', 3),
(487, 'profile.country', '""', 5),
(487, 'profile.dob', '""', 11),
(487, 'profile.favoritebook', '""', 9),
(487, 'profile.phone', '""', 7),
(487, 'profile.postal_code', '""', 6),
(487, 'profile.region', '""', 4),
(487, 'profile.website', '""', 8),
(488, 'profile.aboutme', '""', 10),
(488, 'profile.address1', '""', 1),
(488, 'profile.address2', '""', 2),
(488, 'profile.city', '""', 3),
(488, 'profile.country', '""', 5),
(488, 'profile.dob', '""', 11),
(488, 'profile.favoritebook', '""', 9),
(488, 'profile.phone', '""', 7),
(488, 'profile.postal_code', '""', 6),
(488, 'profile.region', '""', 4),
(488, 'profile.website', '""', 8),
(489, 'profile.aboutme', '""', 10),
(489, 'profile.address1', '""', 1),
(489, 'profile.address2', '""', 2),
(489, 'profile.city', '""', 3),
(489, 'profile.country', '""', 5),
(489, 'profile.dob', '""', 11),
(489, 'profile.favoritebook', '""', 9),
(489, 'profile.phone', '""', 7),
(489, 'profile.postal_code', '""', 6),
(489, 'profile.region', '""', 4),
(489, 'profile.website', '""', 8),
(490, 'profile.aboutme', '""', 10),
(490, 'profile.address1', '""', 1),
(490, 'profile.address2', '""', 2),
(490, 'profile.city', '""', 3),
(490, 'profile.country', '""', 5),
(490, 'profile.dob', '""', 11),
(490, 'profile.favoritebook', '""', 9),
(490, 'profile.phone', '""', 7),
(490, 'profile.postal_code', '""', 6),
(490, 'profile.region', '""', 4),
(490, 'profile.website', '""', 8),
(491, 'profile.aboutme', '""', 10),
(491, 'profile.address1', '""', 1),
(491, 'profile.address2', '""', 2),
(491, 'profile.city', '""', 3),
(491, 'profile.country', '""', 5),
(491, 'profile.dob', '""', 11),
(491, 'profile.favoritebook', '""', 9),
(491, 'profile.phone', '""', 7),
(491, 'profile.postal_code', '""', 6),
(491, 'profile.region', '""', 4),
(491, 'profile.website', '""', 8),
(492, 'profile.aboutme', '""', 10),
(492, 'profile.address1', '""', 1),
(492, 'profile.address2', '""', 2),
(492, 'profile.city', '""', 3),
(492, 'profile.country', '""', 5),
(492, 'profile.dob', '""', 11),
(492, 'profile.favoritebook', '""', 9),
(492, 'profile.phone', '""', 7),
(492, 'profile.postal_code', '""', 6),
(492, 'profile.region', '""', 4),
(492, 'profile.website', '""', 8),
(493, 'profile.aboutme', '""', 10),
(493, 'profile.address1', '""', 1),
(493, 'profile.address2', '""', 2),
(493, 'profile.city', '""', 3),
(493, 'profile.country', '""', 5),
(493, 'profile.dob', '""', 11),
(493, 'profile.favoritebook', '""', 9),
(493, 'profile.phone', '""', 7),
(493, 'profile.postal_code', '""', 6),
(493, 'profile.region', '""', 4),
(493, 'profile.website', '""', 8),
(494, 'profile.aboutme', '""', 10),
(494, 'profile.address1', '""', 1),
(494, 'profile.address2', '""', 2),
(494, 'profile.city', '""', 3),
(494, 'profile.country', '""', 5),
(494, 'profile.dob', '""', 11),
(494, 'profile.favoritebook', '""', 9),
(494, 'profile.phone', '""', 7),
(494, 'profile.postal_code', '""', 6),
(494, 'profile.region', '""', 4),
(494, 'profile.website', '""', 8),
(495, 'profile.aboutme', '""', 10),
(495, 'profile.address1', '""', 1),
(495, 'profile.address2', '""', 2),
(495, 'profile.city', '""', 3),
(495, 'profile.country', '""', 5),
(495, 'profile.dob', '""', 11),
(495, 'profile.favoritebook', '""', 9),
(495, 'profile.phone', '""', 7),
(495, 'profile.postal_code', '""', 6),
(495, 'profile.region', '""', 4),
(495, 'profile.website', '""', 8),
(496, 'profile.aboutme', '""', 10),
(496, 'profile.address1', '""', 1),
(496, 'profile.address2', '""', 2),
(496, 'profile.city', '""', 3),
(496, 'profile.country', '""', 5),
(496, 'profile.dob', '""', 11),
(496, 'profile.favoritebook', '""', 9),
(496, 'profile.phone', '""', 7),
(496, 'profile.postal_code', '""', 6),
(496, 'profile.region', '""', 4),
(496, 'profile.website', '""', 8),
(497, 'profile.aboutme', '""', 10),
(497, 'profile.address1', '""', 1),
(497, 'profile.address2', '""', 2),
(497, 'profile.city', '""', 3),
(497, 'profile.country', '""', 5),
(497, 'profile.dob', '""', 11),
(497, 'profile.favoritebook', '""', 9),
(497, 'profile.phone', '""', 7),
(497, 'profile.postal_code', '""', 6),
(497, 'profile.region', '""', 4),
(497, 'profile.website', '""', 8),
(498, 'profile.aboutme', '""', 10),
(498, 'profile.address1', '""', 1),
(498, 'profile.address2', '""', 2),
(498, 'profile.city', '""', 3),
(498, 'profile.country', '""', 5),
(498, 'profile.dob', '""', 11),
(498, 'profile.favoritebook', '""', 9),
(498, 'profile.phone', '""', 7),
(498, 'profile.postal_code', '""', 6),
(498, 'profile.region', '""', 4),
(498, 'profile.website', '""', 8),
(499, 'profile.aboutme', '""', 10),
(499, 'profile.address1', '""', 1),
(499, 'profile.address2', '""', 2),
(499, 'profile.city', '""', 3),
(499, 'profile.country', '""', 5),
(499, 'profile.dob', '""', 11),
(499, 'profile.favoritebook', '""', 9),
(499, 'profile.phone', '""', 7),
(499, 'profile.postal_code', '""', 6),
(499, 'profile.region', '""', 4),
(499, 'profile.website', '""', 8),
(500, 'profile.aboutme', '""', 10),
(500, 'profile.address1', '""', 1),
(500, 'profile.address2', '""', 2),
(500, 'profile.city', '""', 3),
(500, 'profile.country', '""', 5),
(500, 'profile.dob', '""', 11),
(500, 'profile.favoritebook', '""', 9),
(500, 'profile.phone', '""', 7),
(500, 'profile.postal_code', '""', 6),
(500, 'profile.region', '""', 4),
(500, 'profile.website', '""', 8),
(501, 'profile.aboutme', '""', 10),
(501, 'profile.address1', '""', 1),
(501, 'profile.address2', '""', 2),
(501, 'profile.city', '""', 3),
(501, 'profile.country', '""', 5),
(501, 'profile.dob', '""', 11),
(501, 'profile.favoritebook', '""', 9),
(501, 'profile.phone', '""', 7),
(501, 'profile.postal_code', '""', 6),
(501, 'profile.region', '""', 4),
(501, 'profile.website', '""', 8),
(502, 'profile.aboutme', '""', 10),
(502, 'profile.address1', '""', 1),
(502, 'profile.address2', '""', 2),
(502, 'profile.city', '""', 3),
(502, 'profile.country', '""', 5),
(502, 'profile.dob', '""', 11),
(502, 'profile.favoritebook', '""', 9),
(502, 'profile.phone', '""', 7),
(502, 'profile.postal_code', '""', 6),
(502, 'profile.region', '""', 4),
(502, 'profile.website', '""', 8),
(503, 'profile.aboutme', '""', 10),
(503, 'profile.address1', '""', 1),
(503, 'profile.address2', '""', 2),
(503, 'profile.city', '""', 3),
(503, 'profile.country', '""', 5),
(503, 'profile.dob', '""', 11),
(503, 'profile.favoritebook', '""', 9),
(503, 'profile.phone', '""', 7),
(503, 'profile.postal_code', '""', 6),
(503, 'profile.region', '""', 4),
(503, 'profile.website', '""', 8),
(504, 'profile.aboutme', '""', 10),
(504, 'profile.address1', '""', 1),
(504, 'profile.address2', '""', 2),
(504, 'profile.city', '""', 3),
(504, 'profile.country', '""', 5),
(504, 'profile.dob', '""', 11),
(504, 'profile.favoritebook', '""', 9),
(504, 'profile.phone', '""', 7),
(504, 'profile.postal_code', '""', 6),
(504, 'profile.region', '""', 4),
(504, 'profile.website', '""', 8),
(505, 'profile.aboutme', '""', 10),
(505, 'profile.address1', '""', 1),
(505, 'profile.address2', '""', 2),
(505, 'profile.city', '""', 3),
(505, 'profile.country', '""', 5),
(505, 'profile.dob', '""', 11),
(505, 'profile.favoritebook', '""', 9),
(505, 'profile.phone', '""', 7),
(505, 'profile.postal_code', '""', 6),
(505, 'profile.region', '""', 4),
(505, 'profile.website', '""', 8),
(506, 'profile.aboutme', '""', 10),
(506, 'profile.address1', '""', 1),
(506, 'profile.address2', '""', 2),
(506, 'profile.city', '""', 3),
(506, 'profile.country', '""', 5),
(506, 'profile.dob', '""', 11),
(506, 'profile.favoritebook', '""', 9),
(506, 'profile.phone', '""', 7),
(506, 'profile.postal_code', '""', 6),
(506, 'profile.region', '""', 4),
(506, 'profile.website', '""', 8),
(507, 'profile.aboutme', '""', 10),
(507, 'profile.address1', '""', 1),
(507, 'profile.address2', '""', 2),
(507, 'profile.city', '""', 3),
(507, 'profile.country', '""', 5),
(507, 'profile.dob', '""', 11),
(507, 'profile.favoritebook', '""', 9),
(507, 'profile.phone', '""', 7),
(507, 'profile.postal_code', '""', 6),
(507, 'profile.region', '""', 4),
(507, 'profile.website', '""', 8),
(508, 'profile.aboutme', '""', 10),
(508, 'profile.address1', '""', 1),
(508, 'profile.address2', '""', 2),
(508, 'profile.city', '""', 3),
(508, 'profile.country', '""', 5),
(508, 'profile.dob', '""', 11),
(508, 'profile.favoritebook', '""', 9),
(508, 'profile.phone', '""', 7),
(508, 'profile.postal_code', '""', 6),
(508, 'profile.region', '""', 4),
(508, 'profile.website', '""', 8),
(509, 'profile.aboutme', '""', 10),
(509, 'profile.address1', '""', 1),
(509, 'profile.address2', '""', 2),
(509, 'profile.city', '""', 3),
(509, 'profile.country', '""', 5),
(509, 'profile.dob', '""', 11),
(509, 'profile.favoritebook', '""', 9),
(509, 'profile.phone', '""', 7),
(509, 'profile.postal_code', '""', 6),
(509, 'profile.region', '""', 4),
(509, 'profile.website', '""', 8),
(510, 'profile.aboutme', '""', 10),
(510, 'profile.address1', '""', 1),
(510, 'profile.address2', '""', 2),
(510, 'profile.city', '""', 3),
(510, 'profile.country', '""', 5),
(510, 'profile.dob', '""', 11),
(510, 'profile.favoritebook', '""', 9),
(510, 'profile.phone', '""', 7),
(510, 'profile.postal_code', '""', 6),
(510, 'profile.region', '""', 4),
(510, 'profile.website', '""', 8),
(511, 'profile.aboutme', '""', 10),
(511, 'profile.address1', '""', 1),
(511, 'profile.address2', '""', 2),
(511, 'profile.city', '""', 3),
(511, 'profile.country', '""', 5),
(511, 'profile.dob', '""', 11),
(511, 'profile.favoritebook', '""', 9),
(511, 'profile.phone', '""', 7),
(511, 'profile.postal_code', '""', 6),
(511, 'profile.region', '""', 4),
(511, 'profile.website', '""', 8),
(512, 'profile.aboutme', '""', 10),
(512, 'profile.address1', '""', 1),
(512, 'profile.address2', '""', 2),
(512, 'profile.city', '""', 3),
(512, 'profile.country', '""', 5),
(512, 'profile.dob', '""', 11),
(512, 'profile.favoritebook', '""', 9),
(512, 'profile.phone', '""', 7),
(512, 'profile.postal_code', '""', 6),
(512, 'profile.region', '""', 4),
(512, 'profile.website', '""', 8),
(513, 'profile.aboutme', '""', 10),
(513, 'profile.address1', '""', 1),
(513, 'profile.address2', '""', 2),
(513, 'profile.city', '""', 3),
(513, 'profile.country', '""', 5),
(513, 'profile.dob', '""', 11),
(513, 'profile.favoritebook', '""', 9),
(513, 'profile.phone', '""', 7),
(513, 'profile.postal_code', '""', 6),
(513, 'profile.region', '""', 4),
(513, 'profile.website', '""', 8),
(514, 'profile.aboutme', '""', 10),
(514, 'profile.address1', '""', 1),
(514, 'profile.address2', '""', 2),
(514, 'profile.city', '""', 3),
(514, 'profile.country', '""', 5),
(514, 'profile.dob', '""', 11),
(514, 'profile.favoritebook', '""', 9),
(514, 'profile.phone', '""', 7),
(514, 'profile.postal_code', '""', 6),
(514, 'profile.region', '""', 4),
(514, 'profile.website', '""', 8),
(515, 'profile.aboutme', '""', 10),
(515, 'profile.address1', '""', 1),
(515, 'profile.address2', '""', 2),
(515, 'profile.city', '""', 3),
(515, 'profile.country', '""', 5),
(515, 'profile.dob', '""', 11),
(515, 'profile.favoritebook', '""', 9),
(515, 'profile.phone', '""', 7),
(515, 'profile.postal_code', '""', 6),
(515, 'profile.region', '""', 4),
(515, 'profile.website', '""', 8),
(516, 'profile.aboutme', '""', 10),
(516, 'profile.address1', '""', 1),
(516, 'profile.address2', '""', 2),
(516, 'profile.city', '""', 3),
(516, 'profile.country', '""', 5),
(516, 'profile.dob', '""', 11),
(516, 'profile.favoritebook', '""', 9),
(516, 'profile.phone', '""', 7),
(516, 'profile.postal_code', '""', 6),
(516, 'profile.region', '""', 4),
(516, 'profile.website', '""', 8),
(517, 'profile.aboutme', '""', 10),
(517, 'profile.address1', '""', 1),
(517, 'profile.address2', '""', 2),
(517, 'profile.city', '""', 3),
(517, 'profile.country', '""', 5),
(517, 'profile.dob', '""', 11),
(517, 'profile.favoritebook', '""', 9),
(517, 'profile.phone', '""', 7),
(517, 'profile.postal_code', '""', 6),
(517, 'profile.region', '""', 4),
(517, 'profile.website', '""', 8),
(518, 'profile.aboutme', '""', 10),
(518, 'profile.address1', '""', 1),
(518, 'profile.address2', '""', 2),
(518, 'profile.city', '""', 3),
(518, 'profile.country', '""', 5),
(518, 'profile.dob', '""', 11),
(518, 'profile.favoritebook', '""', 9),
(518, 'profile.phone', '""', 7),
(518, 'profile.postal_code', '""', 6),
(518, 'profile.region', '""', 4),
(518, 'profile.website', '""', 8),
(519, 'profile.aboutme', '""', 10),
(519, 'profile.address1', '""', 1),
(519, 'profile.address2', '""', 2),
(519, 'profile.city', '""', 3),
(519, 'profile.country', '""', 5),
(519, 'profile.dob', '""', 11),
(519, 'profile.favoritebook', '""', 9),
(519, 'profile.phone', '""', 7),
(519, 'profile.postal_code', '""', 6),
(519, 'profile.region', '""', 4),
(519, 'profile.website', '""', 8),
(520, 'profile.aboutme', '""', 10),
(520, 'profile.address1', '""', 1),
(520, 'profile.address2', '""', 2),
(520, 'profile.city', '""', 3),
(520, 'profile.country', '""', 5),
(520, 'profile.dob', '""', 11),
(520, 'profile.favoritebook', '""', 9),
(520, 'profile.phone', '""', 7),
(520, 'profile.postal_code', '""', 6),
(520, 'profile.region', '""', 4),
(520, 'profile.website', '""', 8),
(521, 'profile.aboutme', '""', 10),
(521, 'profile.address1', '""', 1),
(521, 'profile.address2', '""', 2),
(521, 'profile.city', '""', 3),
(521, 'profile.country', '""', 5),
(521, 'profile.dob', '""', 11),
(521, 'profile.favoritebook', '""', 9),
(521, 'profile.phone', '""', 7),
(521, 'profile.postal_code', '""', 6),
(521, 'profile.region', '""', 4),
(521, 'profile.website', '""', 8),
(522, 'profile.aboutme', '""', 10),
(522, 'profile.address1', '""', 1),
(522, 'profile.address2', '""', 2),
(522, 'profile.city', '""', 3),
(522, 'profile.country', '""', 5),
(522, 'profile.dob', '""', 11),
(522, 'profile.favoritebook', '""', 9),
(522, 'profile.phone', '""', 7),
(522, 'profile.postal_code', '""', 6),
(522, 'profile.region', '""', 4),
(522, 'profile.website', '""', 8),
(523, 'profile.aboutme', '""', 10),
(523, 'profile.address1', '""', 1),
(523, 'profile.address2', '""', 2),
(523, 'profile.city', '""', 3),
(523, 'profile.country', '""', 5),
(523, 'profile.dob', '""', 11),
(523, 'profile.favoritebook', '""', 9),
(523, 'profile.phone', '""', 7),
(523, 'profile.postal_code', '""', 6),
(523, 'profile.region', '""', 4),
(523, 'profile.website', '""', 8),
(524, 'profile.aboutme', '""', 10),
(524, 'profile.address1', '""', 1),
(524, 'profile.address2', '""', 2),
(524, 'profile.city', '""', 3),
(524, 'profile.country', '""', 5),
(524, 'profile.dob', '""', 11),
(524, 'profile.favoritebook', '""', 9),
(524, 'profile.phone', '""', 7),
(524, 'profile.postal_code', '""', 6),
(524, 'profile.region', '""', 4),
(524, 'profile.website', '""', 8),
(525, 'profile.aboutme', '""', 10),
(525, 'profile.address1', '""', 1),
(525, 'profile.address2', '""', 2),
(525, 'profile.city', '""', 3),
(525, 'profile.country', '""', 5),
(525, 'profile.dob', '""', 11),
(525, 'profile.favoritebook', '""', 9),
(525, 'profile.phone', '""', 7),
(525, 'profile.postal_code', '""', 6),
(525, 'profile.region', '""', 4),
(525, 'profile.website', '""', 8),
(526, 'profile.aboutme', '""', 10),
(526, 'profile.address1', '""', 1),
(526, 'profile.address2', '""', 2),
(526, 'profile.city', '""', 3),
(526, 'profile.country', '""', 5),
(526, 'profile.dob', '""', 11),
(526, 'profile.favoritebook', '""', 9),
(526, 'profile.phone', '""', 7),
(526, 'profile.postal_code', '""', 6),
(526, 'profile.region', '""', 4),
(526, 'profile.website', '""', 8),
(527, 'profile.aboutme', '""', 10),
(527, 'profile.address1', '""', 1),
(527, 'profile.address2', '""', 2),
(527, 'profile.city', '""', 3),
(527, 'profile.country', '""', 5),
(527, 'profile.dob', '""', 11),
(527, 'profile.favoritebook', '""', 9),
(527, 'profile.phone', '""', 7),
(527, 'profile.postal_code', '""', 6),
(527, 'profile.region', '""', 4),
(527, 'profile.website', '""', 8),
(528, 'profile.aboutme', '""', 10),
(528, 'profile.address1', '""', 1),
(528, 'profile.address2', '""', 2),
(528, 'profile.city', '""', 3),
(528, 'profile.country', '""', 5),
(528, 'profile.dob', '""', 11),
(528, 'profile.favoritebook', '""', 9),
(528, 'profile.phone', '""', 7),
(528, 'profile.postal_code', '""', 6),
(528, 'profile.region', '""', 4),
(528, 'profile.website', '""', 8),
(529, 'profile.aboutme', '""', 10),
(529, 'profile.address1', '""', 1),
(529, 'profile.address2', '""', 2),
(529, 'profile.city', '""', 3),
(529, 'profile.country', '""', 5),
(529, 'profile.dob', '""', 11),
(529, 'profile.favoritebook', '""', 9),
(529, 'profile.phone', '""', 7),
(529, 'profile.postal_code', '""', 6),
(529, 'profile.region', '""', 4),
(529, 'profile.website', '""', 8),
(530, 'profile.aboutme', '""', 10),
(530, 'profile.address1', '""', 1),
(530, 'profile.address2', '""', 2),
(530, 'profile.city', '""', 3),
(530, 'profile.country', '""', 5),
(530, 'profile.dob', '""', 11),
(530, 'profile.favoritebook', '""', 9),
(530, 'profile.phone', '""', 7),
(530, 'profile.postal_code', '""', 6),
(530, 'profile.region', '""', 4),
(530, 'profile.website', '""', 8),
(531, 'profile.aboutme', '""', 10),
(531, 'profile.address1', '""', 1),
(531, 'profile.address2', '""', 2),
(531, 'profile.city', '""', 3),
(531, 'profile.country', '""', 5),
(531, 'profile.dob', '""', 11),
(531, 'profile.favoritebook', '""', 9),
(531, 'profile.phone', '""', 7),
(531, 'profile.postal_code', '""', 6),
(531, 'profile.region', '""', 4),
(531, 'profile.website', '""', 8),
(532, 'profile.aboutme', '""', 10),
(532, 'profile.address1', '""', 1),
(532, 'profile.address2', '""', 2),
(532, 'profile.city', '""', 3),
(532, 'profile.country', '""', 5),
(532, 'profile.dob', '""', 11),
(532, 'profile.favoritebook', '""', 9),
(532, 'profile.phone', '""', 7),
(532, 'profile.postal_code', '""', 6),
(532, 'profile.region', '""', 4),
(532, 'profile.website', '""', 8),
(533, 'profile.aboutme', '""', 10),
(533, 'profile.address1', '""', 1),
(533, 'profile.address2', '""', 2),
(533, 'profile.city', '""', 3),
(533, 'profile.country', '""', 5),
(533, 'profile.dob', '""', 11),
(533, 'profile.favoritebook', '""', 9),
(533, 'profile.phone', '""', 7),
(533, 'profile.postal_code', '""', 6),
(533, 'profile.region', '""', 4),
(533, 'profile.website', '""', 8),
(534, 'profile.aboutme', '""', 10),
(534, 'profile.address1', '""', 1),
(534, 'profile.address2', '""', 2),
(534, 'profile.city', '""', 3),
(534, 'profile.country', '""', 5),
(534, 'profile.dob', '""', 11),
(534, 'profile.favoritebook', '""', 9),
(534, 'profile.phone', '""', 7),
(534, 'profile.postal_code', '""', 6),
(534, 'profile.region', '""', 4),
(534, 'profile.website', '""', 8),
(535, 'profile.aboutme', '""', 10),
(535, 'profile.address1', '""', 1),
(535, 'profile.address2', '""', 2),
(535, 'profile.city', '""', 3),
(535, 'profile.country', '""', 5),
(535, 'profile.dob', '""', 11),
(535, 'profile.favoritebook', '""', 9),
(535, 'profile.phone', '""', 7),
(535, 'profile.postal_code', '""', 6),
(535, 'profile.region', '""', 4),
(535, 'profile.website', '""', 8),
(536, 'profile.aboutme', '""', 10),
(536, 'profile.address1', '""', 1),
(536, 'profile.address2', '""', 2),
(536, 'profile.city', '""', 3),
(536, 'profile.country', '""', 5),
(536, 'profile.dob', '""', 11),
(536, 'profile.favoritebook', '""', 9),
(536, 'profile.phone', '""', 7),
(536, 'profile.postal_code', '""', 6),
(536, 'profile.region', '""', 4),
(536, 'profile.website', '""', 8),
(537, 'profile.aboutme', '""', 10),
(537, 'profile.address1', '""', 1),
(537, 'profile.address2', '""', 2),
(537, 'profile.city', '""', 3),
(537, 'profile.country', '""', 5),
(537, 'profile.dob', '""', 11),
(537, 'profile.favoritebook', '""', 9),
(537, 'profile.phone', '""', 7),
(537, 'profile.postal_code', '""', 6),
(537, 'profile.region', '""', 4),
(537, 'profile.website', '""', 8),
(538, 'profile.aboutme', '""', 10),
(538, 'profile.address1', '""', 1),
(538, 'profile.address2', '""', 2),
(538, 'profile.city', '""', 3),
(538, 'profile.country', '""', 5),
(538, 'profile.dob', '""', 11),
(538, 'profile.favoritebook', '""', 9),
(538, 'profile.phone', '""', 7),
(538, 'profile.postal_code', '""', 6),
(538, 'profile.region', '""', 4),
(538, 'profile.website', '""', 8),
(539, 'profile.aboutme', '""', 10),
(539, 'profile.address1', '""', 1),
(539, 'profile.address2', '""', 2),
(539, 'profile.city', '""', 3),
(539, 'profile.country', '""', 5),
(539, 'profile.dob', '""', 11),
(539, 'profile.favoritebook', '""', 9),
(539, 'profile.phone', '""', 7),
(539, 'profile.postal_code', '""', 6),
(539, 'profile.region', '""', 4),
(539, 'profile.website', '""', 8),
(540, 'profile.aboutme', '""', 10),
(540, 'profile.address1', '""', 1),
(540, 'profile.address2', '""', 2),
(540, 'profile.city', '""', 3),
(540, 'profile.country', '""', 5),
(540, 'profile.dob', '""', 11),
(540, 'profile.favoritebook', '""', 9),
(540, 'profile.phone', '""', 7),
(540, 'profile.postal_code', '""', 6),
(540, 'profile.region', '""', 4),
(540, 'profile.website', '""', 8),
(541, 'profile.aboutme', '""', 10),
(541, 'profile.address1', '""', 1),
(541, 'profile.address2', '""', 2),
(541, 'profile.city', '""', 3),
(541, 'profile.country', '""', 5),
(541, 'profile.dob', '""', 11),
(541, 'profile.favoritebook', '""', 9),
(541, 'profile.phone', '""', 7),
(541, 'profile.postal_code', '""', 6),
(541, 'profile.region', '""', 4),
(541, 'profile.website', '""', 8),
(542, 'profile.aboutme', '""', 10),
(542, 'profile.address1', '""', 1),
(542, 'profile.address2', '""', 2),
(542, 'profile.city', '""', 3),
(542, 'profile.country', '""', 5),
(542, 'profile.dob', '""', 11),
(542, 'profile.favoritebook', '""', 9),
(542, 'profile.phone', '""', 7),
(542, 'profile.postal_code', '""', 6),
(542, 'profile.region', '""', 4),
(542, 'profile.website', '""', 8),
(543, 'profile.aboutme', '""', 10),
(543, 'profile.address1', '""', 1),
(543, 'profile.address2', '""', 2),
(543, 'profile.city', '""', 3),
(543, 'profile.country', '""', 5),
(543, 'profile.dob', '""', 11),
(543, 'profile.favoritebook', '""', 9),
(543, 'profile.phone', '""', 7),
(543, 'profile.postal_code', '""', 6),
(543, 'profile.region', '""', 4),
(543, 'profile.website', '""', 8),
(544, 'profile.aboutme', '""', 10),
(544, 'profile.address1', '""', 1),
(544, 'profile.address2', '""', 2),
(544, 'profile.city', '""', 3),
(544, 'profile.country', '""', 5),
(544, 'profile.dob', '""', 11),
(544, 'profile.favoritebook', '""', 9),
(544, 'profile.phone', '""', 7),
(544, 'profile.postal_code', '""', 6),
(544, 'profile.region', '""', 4),
(544, 'profile.website', '""', 8),
(545, 'profile.aboutme', '""', 10),
(545, 'profile.address1', '""', 1),
(545, 'profile.address2', '""', 2),
(545, 'profile.city', '""', 3),
(545, 'profile.country', '""', 5),
(545, 'profile.dob', '""', 11),
(545, 'profile.favoritebook', '""', 9),
(545, 'profile.phone', '""', 7),
(545, 'profile.postal_code', '""', 6),
(545, 'profile.region', '""', 4),
(545, 'profile.website', '""', 8),
(546, 'profile.aboutme', '""', 10),
(546, 'profile.address1', '""', 1),
(546, 'profile.address2', '""', 2),
(546, 'profile.city', '""', 3),
(546, 'profile.country', '""', 5),
(546, 'profile.dob', '""', 11),
(546, 'profile.favoritebook', '""', 9),
(546, 'profile.phone', '""', 7),
(546, 'profile.postal_code', '""', 6),
(546, 'profile.region', '""', 4),
(546, 'profile.website', '""', 8),
(547, 'profile.aboutme', '""', 10),
(547, 'profile.address1', '""', 1),
(547, 'profile.address2', '""', 2),
(547, 'profile.city', '""', 3),
(547, 'profile.country', '""', 5),
(547, 'profile.dob', '""', 11),
(547, 'profile.favoritebook', '""', 9),
(547, 'profile.phone', '""', 7),
(547, 'profile.postal_code', '""', 6),
(547, 'profile.region', '""', 4),
(547, 'profile.website', '""', 8),
(548, 'profile.aboutme', '""', 10),
(548, 'profile.address1', '""', 1),
(548, 'profile.address2', '""', 2),
(548, 'profile.city', '""', 3),
(548, 'profile.country', '""', 5),
(548, 'profile.dob', '""', 11),
(548, 'profile.favoritebook', '""', 9),
(548, 'profile.phone', '""', 7),
(548, 'profile.postal_code', '""', 6),
(548, 'profile.region', '""', 4),
(548, 'profile.website', '""', 8),
(549, 'profile.aboutme', '""', 10),
(549, 'profile.address1', '""', 1),
(549, 'profile.address2', '""', 2),
(549, 'profile.city', '""', 3),
(549, 'profile.country', '""', 5),
(549, 'profile.dob', '""', 11),
(549, 'profile.favoritebook', '""', 9),
(549, 'profile.phone', '""', 7),
(549, 'profile.postal_code', '""', 6),
(549, 'profile.region', '""', 4),
(549, 'profile.website', '""', 8),
(550, 'profile.aboutme', '""', 10),
(550, 'profile.address1', '""', 1),
(550, 'profile.address2', '""', 2),
(550, 'profile.city', '""', 3),
(550, 'profile.country', '""', 5),
(550, 'profile.dob', '""', 11),
(550, 'profile.favoritebook', '""', 9),
(550, 'profile.phone', '""', 7),
(550, 'profile.postal_code', '""', 6),
(550, 'profile.region', '""', 4),
(550, 'profile.website', '""', 8),
(551, 'profile.aboutme', '""', 10),
(551, 'profile.address1', '""', 1),
(551, 'profile.address2', '""', 2),
(551, 'profile.city', '""', 3),
(551, 'profile.country', '""', 5),
(551, 'profile.dob', '""', 11),
(551, 'profile.favoritebook', '""', 9),
(551, 'profile.phone', '""', 7),
(551, 'profile.postal_code', '""', 6),
(551, 'profile.region', '""', 4),
(551, 'profile.website', '""', 8),
(552, 'profile.aboutme', '""', 10),
(552, 'profile.address1', '""', 1),
(552, 'profile.address2', '""', 2),
(552, 'profile.city', '""', 3),
(552, 'profile.country', '""', 5),
(552, 'profile.dob', '""', 11),
(552, 'profile.favoritebook', '""', 9),
(552, 'profile.phone', '""', 7),
(552, 'profile.postal_code', '""', 6),
(552, 'profile.region', '""', 4),
(552, 'profile.website', '""', 8),
(553, 'profile.aboutme', '""', 10),
(553, 'profile.address1', '""', 1),
(553, 'profile.address2', '""', 2),
(553, 'profile.city', '""', 3),
(553, 'profile.country', '""', 5),
(553, 'profile.dob', '""', 11),
(553, 'profile.favoritebook', '""', 9),
(553, 'profile.phone', '""', 7),
(553, 'profile.postal_code', '""', 6),
(553, 'profile.region', '""', 4),
(553, 'profile.website', '""', 8),
(554, 'profile.aboutme', '""', 10),
(554, 'profile.address1', '""', 1),
(554, 'profile.address2', '""', 2),
(554, 'profile.city', '""', 3),
(554, 'profile.country', '""', 5),
(554, 'profile.dob', '""', 11),
(554, 'profile.favoritebook', '""', 9),
(554, 'profile.phone', '""', 7),
(554, 'profile.postal_code', '""', 6),
(554, 'profile.region', '""', 4),
(554, 'profile.website', '""', 8),
(555, 'profile.aboutme', '""', 10),
(555, 'profile.address1', '""', 1),
(555, 'profile.address2', '""', 2),
(555, 'profile.city', '""', 3),
(555, 'profile.country', '""', 5),
(555, 'profile.dob', '""', 11),
(555, 'profile.favoritebook', '""', 9),
(555, 'profile.phone', '""', 7),
(555, 'profile.postal_code', '""', 6),
(555, 'profile.region', '""', 4),
(555, 'profile.website', '""', 8),
(556, 'profile.aboutme', '""', 10),
(556, 'profile.address1', '""', 1),
(556, 'profile.address2', '""', 2),
(556, 'profile.city', '""', 3),
(556, 'profile.country', '""', 5),
(556, 'profile.dob', '""', 11),
(556, 'profile.favoritebook', '""', 9),
(556, 'profile.phone', '""', 7),
(556, 'profile.postal_code', '""', 6),
(556, 'profile.region', '""', 4),
(556, 'profile.website', '""', 8),
(557, 'profile.aboutme', '""', 10),
(557, 'profile.address1', '""', 1),
(557, 'profile.address2', '""', 2),
(557, 'profile.city', '""', 3),
(557, 'profile.country', '""', 5),
(557, 'profile.dob', '""', 11),
(557, 'profile.favoritebook', '""', 9),
(557, 'profile.phone', '""', 7),
(557, 'profile.postal_code', '""', 6),
(557, 'profile.region', '""', 4),
(557, 'profile.website', '""', 8),
(558, 'profile.aboutme', '""', 10),
(558, 'profile.address1', '""', 1),
(558, 'profile.address2', '""', 2),
(558, 'profile.city', '""', 3),
(558, 'profile.country', '""', 5),
(558, 'profile.dob', '""', 11),
(558, 'profile.favoritebook', '""', 9),
(558, 'profile.phone', '""', 7),
(558, 'profile.postal_code', '""', 6),
(558, 'profile.region', '""', 4),
(558, 'profile.website', '""', 8),
(559, 'profile.aboutme', '""', 10),
(559, 'profile.address1', '""', 1),
(559, 'profile.address2', '""', 2),
(559, 'profile.city', '""', 3),
(559, 'profile.country', '""', 5),
(559, 'profile.dob', '""', 11),
(559, 'profile.favoritebook', '""', 9),
(559, 'profile.phone', '""', 7),
(559, 'profile.postal_code', '""', 6),
(559, 'profile.region', '""', 4),
(559, 'profile.website', '""', 8),
(560, 'profile.aboutme', '""', 10),
(560, 'profile.address1', '""', 1),
(560, 'profile.address2', '""', 2),
(560, 'profile.city', '""', 3),
(560, 'profile.country', '""', 5),
(560, 'profile.dob', '""', 11),
(560, 'profile.favoritebook', '""', 9),
(560, 'profile.phone', '""', 7),
(560, 'profile.postal_code', '""', 6),
(560, 'profile.region', '""', 4),
(560, 'profile.website', '""', 8),
(561, 'profile.aboutme', '""', 10),
(561, 'profile.address1', '""', 1),
(561, 'profile.address2', '""', 2),
(561, 'profile.city', '""', 3),
(561, 'profile.country', '""', 5),
(561, 'profile.dob', '""', 11),
(561, 'profile.favoritebook', '""', 9),
(561, 'profile.phone', '""', 7),
(561, 'profile.postal_code', '""', 6),
(561, 'profile.region', '""', 4),
(561, 'profile.website', '""', 8),
(562, 'profile.aboutme', '""', 10),
(562, 'profile.address1', '""', 1),
(562, 'profile.address2', '""', 2),
(562, 'profile.city', '""', 3),
(562, 'profile.country', '""', 5),
(562, 'profile.dob', '""', 11),
(562, 'profile.favoritebook', '""', 9),
(562, 'profile.phone', '""', 7),
(562, 'profile.postal_code', '""', 6),
(562, 'profile.region', '""', 4),
(562, 'profile.website', '""', 8),
(563, 'profile.aboutme', '""', 10),
(563, 'profile.address1', '""', 1),
(563, 'profile.address2', '""', 2),
(563, 'profile.city', '""', 3),
(563, 'profile.country', '""', 5),
(563, 'profile.dob', '""', 11),
(563, 'profile.favoritebook', '""', 9),
(563, 'profile.phone', '""', 7),
(563, 'profile.postal_code', '""', 6),
(563, 'profile.region', '""', 4),
(563, 'profile.website', '""', 8),
(564, 'profile.aboutme', '""', 10),
(564, 'profile.address1', '""', 1),
(564, 'profile.address2', '""', 2),
(564, 'profile.city', '""', 3),
(564, 'profile.country', '""', 5),
(564, 'profile.dob', '""', 11),
(564, 'profile.favoritebook', '""', 9),
(564, 'profile.phone', '""', 7),
(564, 'profile.postal_code', '""', 6),
(564, 'profile.region', '""', 4),
(564, 'profile.website', '""', 8),
(565, 'profile.aboutme', '""', 10),
(565, 'profile.address1', '""', 1),
(565, 'profile.address2', '""', 2),
(565, 'profile.city', '""', 3),
(565, 'profile.country', '""', 5),
(565, 'profile.dob', '""', 11),
(565, 'profile.favoritebook', '""', 9),
(565, 'profile.phone', '""', 7),
(565, 'profile.postal_code', '""', 6),
(565, 'profile.region', '""', 4),
(565, 'profile.website', '""', 8),
(566, 'profile.aboutme', '""', 10),
(566, 'profile.address1', '""', 1),
(566, 'profile.address2', '""', 2),
(566, 'profile.city', '""', 3),
(566, 'profile.country', '""', 5),
(566, 'profile.dob', '""', 11),
(566, 'profile.favoritebook', '""', 9),
(566, 'profile.phone', '""', 7),
(566, 'profile.postal_code', '""', 6),
(566, 'profile.region', '""', 4),
(566, 'profile.website', '""', 8),
(567, 'profile.aboutme', '""', 10),
(567, 'profile.address1', '""', 1),
(567, 'profile.address2', '""', 2),
(567, 'profile.city', '""', 3),
(567, 'profile.country', '""', 5),
(567, 'profile.dob', '""', 11),
(567, 'profile.favoritebook', '""', 9),
(567, 'profile.phone', '""', 7),
(567, 'profile.postal_code', '""', 6),
(567, 'profile.region', '""', 4),
(567, 'profile.website', '""', 8),
(568, 'profile.aboutme', '""', 10),
(568, 'profile.address1', '""', 1),
(568, 'profile.address2', '""', 2),
(568, 'profile.city', '""', 3),
(568, 'profile.country', '""', 5),
(568, 'profile.dob', '""', 11),
(568, 'profile.favoritebook', '""', 9),
(568, 'profile.phone', '""', 7),
(568, 'profile.postal_code', '""', 6),
(568, 'profile.region', '""', 4),
(568, 'profile.website', '""', 8),
(569, 'profile.aboutme', '""', 10),
(569, 'profile.address1', '""', 1),
(569, 'profile.address2', '""', 2),
(569, 'profile.city', '""', 3),
(569, 'profile.country', '""', 5),
(569, 'profile.dob', '""', 11),
(569, 'profile.favoritebook', '""', 9),
(569, 'profile.phone', '""', 7),
(569, 'profile.postal_code', '""', 6),
(569, 'profile.region', '""', 4),
(569, 'profile.website', '""', 8),
(570, 'profile.aboutme', '""', 10),
(570, 'profile.address1', '""', 1),
(570, 'profile.address2', '""', 2),
(570, 'profile.city', '""', 3),
(570, 'profile.country', '""', 5),
(570, 'profile.dob', '""', 11),
(570, 'profile.favoritebook', '""', 9),
(570, 'profile.phone', '""', 7),
(570, 'profile.postal_code', '""', 6),
(570, 'profile.region', '""', 4),
(570, 'profile.website', '""', 8),
(571, 'profile.aboutme', '""', 10),
(571, 'profile.address1', '""', 1),
(571, 'profile.address2', '""', 2),
(571, 'profile.city', '""', 3),
(571, 'profile.country', '""', 5),
(571, 'profile.dob', '""', 11),
(571, 'profile.favoritebook', '""', 9),
(571, 'profile.phone', '""', 7),
(571, 'profile.postal_code', '""', 6),
(571, 'profile.region', '""', 4),
(571, 'profile.website', '""', 8),
(572, 'profile.aboutme', '""', 10),
(572, 'profile.address1', '""', 1),
(572, 'profile.address2', '""', 2),
(572, 'profile.city', '""', 3),
(572, 'profile.country', '""', 5),
(572, 'profile.dob', '""', 11),
(572, 'profile.favoritebook', '""', 9),
(572, 'profile.phone', '""', 7),
(572, 'profile.postal_code', '""', 6),
(572, 'profile.region', '""', 4),
(572, 'profile.website', '""', 8),
(573, 'profile.aboutme', '""', 10),
(573, 'profile.address1', '""', 1),
(573, 'profile.address2', '""', 2),
(573, 'profile.city', '""', 3),
(573, 'profile.country', '""', 5),
(573, 'profile.dob', '""', 11),
(573, 'profile.favoritebook', '""', 9),
(573, 'profile.phone', '""', 7),
(573, 'profile.postal_code', '""', 6),
(573, 'profile.region', '""', 4),
(573, 'profile.website', '""', 8),
(574, 'profile.aboutme', '""', 10),
(574, 'profile.address1', '""', 1),
(574, 'profile.address2', '""', 2),
(574, 'profile.city', '""', 3),
(574, 'profile.country', '""', 5),
(574, 'profile.dob', '""', 11),
(574, 'profile.favoritebook', '""', 9),
(574, 'profile.phone', '""', 7),
(574, 'profile.postal_code', '""', 6),
(574, 'profile.region', '""', 4),
(574, 'profile.website', '""', 8),
(575, 'profile.aboutme', '""', 10),
(575, 'profile.address1', '""', 1),
(575, 'profile.address2', '""', 2),
(575, 'profile.city', '""', 3),
(575, 'profile.country', '""', 5),
(575, 'profile.dob', '""', 11),
(575, 'profile.favoritebook', '""', 9),
(575, 'profile.phone', '""', 7),
(575, 'profile.postal_code', '""', 6),
(575, 'profile.region', '""', 4),
(575, 'profile.website', '""', 8),
(576, 'profile.aboutme', '""', 10),
(576, 'profile.address1', '""', 1),
(576, 'profile.address2', '""', 2),
(576, 'profile.city', '""', 3),
(576, 'profile.country', '""', 5),
(576, 'profile.dob', '""', 11),
(576, 'profile.favoritebook', '""', 9),
(576, 'profile.phone', '""', 7),
(576, 'profile.postal_code', '""', 6),
(576, 'profile.region', '""', 4),
(576, 'profile.website', '""', 8),
(577, 'profile.aboutme', '""', 10),
(577, 'profile.address1', '""', 1),
(577, 'profile.address2', '""', 2),
(577, 'profile.city', '""', 3),
(577, 'profile.country', '""', 5),
(577, 'profile.dob', '""', 11),
(577, 'profile.favoritebook', '""', 9),
(577, 'profile.phone', '""', 7),
(577, 'profile.postal_code', '""', 6),
(577, 'profile.region', '""', 4),
(577, 'profile.website', '""', 8),
(578, 'profile.aboutme', '""', 10),
(578, 'profile.address1', '""', 1),
(578, 'profile.address2', '""', 2),
(578, 'profile.city', '""', 3),
(578, 'profile.country', '""', 5),
(578, 'profile.dob', '""', 11),
(578, 'profile.favoritebook', '""', 9),
(578, 'profile.phone', '""', 7),
(578, 'profile.postal_code', '""', 6),
(578, 'profile.region', '""', 4),
(578, 'profile.website', '""', 8),
(579, 'profile.aboutme', '""', 10),
(579, 'profile.address1', '""', 1),
(579, 'profile.address2', '""', 2),
(579, 'profile.city', '""', 3),
(579, 'profile.country', '""', 5),
(579, 'profile.dob', '""', 11),
(579, 'profile.favoritebook', '""', 9),
(579, 'profile.phone', '""', 7),
(579, 'profile.postal_code', '""', 6),
(579, 'profile.region', '""', 4),
(579, 'profile.website', '""', 8),
(581, 'profile.aboutme', '""', 10),
(581, 'profile.address1', '""', 1),
(581, 'profile.address2', '""', 2),
(581, 'profile.city', '""', 3),
(581, 'profile.country', '""', 5),
(581, 'profile.dob', '""', 11),
(581, 'profile.favoritebook', '""', 9),
(581, 'profile.phone', '""', 7),
(581, 'profile.postal_code', '""', 6),
(581, 'profile.region', '""', 4),
(581, 'profile.website', '""', 8),
(582, 'profile.aboutme', '""', 10),
(582, 'profile.address1', '""', 1),
(582, 'profile.address2', '""', 2),
(582, 'profile.city', '""', 3),
(582, 'profile.country', '""', 5),
(582, 'profile.dob', '""', 11),
(582, 'profile.favoritebook', '""', 9),
(582, 'profile.phone', '""', 7),
(582, 'profile.postal_code', '""', 6),
(582, 'profile.region', '""', 4),
(582, 'profile.website', '""', 8),
(583, 'profile.aboutme', '""', 10),
(583, 'profile.address1', '""', 1),
(583, 'profile.address2', '""', 2),
(583, 'profile.city', '""', 3),
(583, 'profile.country', '""', 5),
(583, 'profile.dob', '""', 11),
(583, 'profile.favoritebook', '""', 9),
(583, 'profile.phone', '""', 7),
(583, 'profile.postal_code', '""', 6),
(583, 'profile.region', '""', 4),
(583, 'profile.website', '""', 8),
(584, 'profile.aboutme', '""', 10),
(584, 'profile.address1', '""', 1),
(584, 'profile.address2', '""', 2),
(584, 'profile.city', '""', 3),
(584, 'profile.country', '""', 5),
(584, 'profile.dob', '""', 11),
(584, 'profile.favoritebook', '""', 9),
(584, 'profile.phone', '""', 7),
(584, 'profile.postal_code', '""', 6),
(584, 'profile.region', '""', 4),
(584, 'profile.website', '""', 8),
(585, 'profile.aboutme', '""', 10),
(585, 'profile.address1', '""', 1),
(585, 'profile.address2', '""', 2),
(585, 'profile.city', '""', 3),
(585, 'profile.country', '""', 5),
(585, 'profile.dob', '""', 11),
(585, 'profile.favoritebook', '""', 9),
(585, 'profile.phone', '""', 7),
(585, 'profile.postal_code', '""', 6),
(585, 'profile.region', '""', 4),
(585, 'profile.website', '""', 8),
(586, 'profile.aboutme', '""', 10),
(586, 'profile.address1', '""', 1),
(586, 'profile.address2', '""', 2),
(586, 'profile.city', '""', 3),
(586, 'profile.country', '""', 5),
(586, 'profile.dob', '""', 11),
(586, 'profile.favoritebook', '""', 9),
(586, 'profile.phone', '""', 7),
(586, 'profile.postal_code', '""', 6),
(586, 'profile.region', '""', 4),
(586, 'profile.website', '""', 8),
(587, 'profile.aboutme', '""', 10),
(587, 'profile.address1', '""', 1),
(587, 'profile.address2', '""', 2),
(587, 'profile.city', '""', 3),
(587, 'profile.country', '""', 5),
(587, 'profile.dob', '""', 11),
(587, 'profile.favoritebook', '""', 9),
(587, 'profile.phone', '""', 7),
(587, 'profile.postal_code', '""', 6),
(587, 'profile.region', '""', 4),
(587, 'profile.website', '""', 8),
(588, 'profile.aboutme', '""', 10),
(588, 'profile.address1', '""', 1),
(588, 'profile.address2', '""', 2),
(588, 'profile.city', '""', 3),
(588, 'profile.country', '""', 5),
(588, 'profile.dob', '""', 11),
(588, 'profile.favoritebook', '""', 9),
(588, 'profile.phone', '""', 7),
(588, 'profile.postal_code', '""', 6),
(588, 'profile.region', '""', 4),
(588, 'profile.website', '""', 8),
(589, 'profile.aboutme', '""', 10),
(589, 'profile.address1', '""', 1),
(589, 'profile.address2', '""', 2),
(589, 'profile.city', '""', 3),
(589, 'profile.country', '""', 5),
(589, 'profile.dob', '""', 11),
(589, 'profile.favoritebook', '""', 9),
(589, 'profile.phone', '""', 7),
(589, 'profile.postal_code', '""', 6),
(589, 'profile.region', '""', 4),
(589, 'profile.website', '""', 8),
(591, 'profile.aboutme', '""', 10),
(591, 'profile.address1', '""', 1),
(591, 'profile.address2', '""', 2),
(591, 'profile.city', '""', 3),
(591, 'profile.country', '""', 5),
(591, 'profile.dob', '""', 11),
(591, 'profile.favoritebook', '""', 9),
(591, 'profile.phone', '""', 7),
(591, 'profile.postal_code', '""', 6),
(591, 'profile.region', '""', 4),
(591, 'profile.website', '""', 8),
(592, 'profile.aboutme', '""', 10),
(592, 'profile.address1', '""', 1),
(592, 'profile.address2', '""', 2),
(592, 'profile.city', '""', 3),
(592, 'profile.country', '""', 5),
(592, 'profile.dob', '""', 11),
(592, 'profile.favoritebook', '""', 9),
(592, 'profile.phone', '""', 7),
(592, 'profile.postal_code', '""', 6),
(592, 'profile.region', '""', 4),
(592, 'profile.website', '""', 8),
(593, 'profile.aboutme', '""', 10),
(593, 'profile.address1', '""', 1),
(593, 'profile.address2', '""', 2),
(593, 'profile.city', '""', 3),
(593, 'profile.country', '""', 5),
(593, 'profile.dob', '""', 11),
(593, 'profile.favoritebook', '""', 9),
(593, 'profile.phone', '""', 7),
(593, 'profile.postal_code', '""', 6),
(593, 'profile.region', '""', 4),
(593, 'profile.website', '""', 8),
(594, 'profile.aboutme', '""', 10),
(594, 'profile.address1', '""', 1),
(594, 'profile.address2', '""', 2),
(594, 'profile.city', '""', 3),
(594, 'profile.country', '""', 5),
(594, 'profile.dob', '""', 11),
(594, 'profile.favoritebook', '""', 9),
(594, 'profile.phone', '""', 7),
(594, 'profile.postal_code', '""', 6),
(594, 'profile.region', '""', 4),
(594, 'profile.website', '""', 8),
(608, 'profile.aboutme', '""', 10),
(608, 'profile.address1', '""', 1),
(608, 'profile.address2', '""', 2),
(608, 'profile.city', '""', 3),
(608, 'profile.country', '""', 5),
(608, 'profile.dob', '""', 11),
(608, 'profile.favoritebook', '""', 9),
(608, 'profile.phone', '""', 7),
(608, 'profile.postal_code', '""', 6),
(608, 'profile.region', '""', 4),
(608, 'profile.website', '""', 8),
(617, 'profile.aboutme', '""', 10),
(617, 'profile.address1', '""', 1),
(617, 'profile.address2', '""', 2),
(617, 'profile.city', '""', 3),
(617, 'profile.country', '""', 5),
(617, 'profile.dob', '""', 11),
(617, 'profile.favoritebook', '""', 9),
(617, 'profile.phone', '""', 7),
(617, 'profile.postal_code', '""', 6),
(617, 'profile.region', '""', 4),
(617, 'profile.website', '""', 8),
(620, 'profile.aboutme', '""', 10),
(620, 'profile.address1', '""', 1),
(620, 'profile.address2', '""', 2),
(620, 'profile.city', '""', 3),
(620, 'profile.country', '""', 5),
(620, 'profile.dob', '""', 11),
(620, 'profile.favoritebook', '""', 9),
(620, 'profile.phone', '""', 7),
(620, 'profile.postal_code', '""', 6),
(620, 'profile.region', '""', 4),
(620, 'profile.website', '""', 8);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jobs_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs_user_usergroup_map`
--

INSERT INTO `jobs_user_usergroup_map` (`user_id`, `group_id`) VALUES
(0, 2),
(459, 8),
(477, 10),
(479, 10),
(571, 9),
(572, 9),
(573, 9),
(574, 10),
(575, 10),
(576, 9),
(577, 9),
(578, 10),
(579, 9),
(580, 10),
(581, 10),
(582, 10),
(583, 10),
(584, 10),
(585, 10),
(586, 9),
(587, 10),
(588, 10),
(589, 10),
(590, 10),
(591, 10),
(592, 9),
(593, 11),
(594, 10),
(595, 10),
(596, 10),
(597, 10),
(598, 10),
(599, 10),
(600, 10),
(601, 10),
(602, 10),
(603, 10),
(604, 10),
(605, 10),
(606, 10),
(607, 10),
(608, 10),
(609, 10),
(610, 10),
(611, 10),
(612, 10),
(613, 10),
(614, 10),
(615, 10),
(616, 10),
(617, 10),
(618, 10),
(619, 10),
(620, 9);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jobs_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jobs_viewlevels`
--

INSERT INTO `jobs_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'ca', 0, '[11]'),
(5, 'hr', 0, '[9]'),
(6, 'js', 0, '[10]');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_weblinks`
--

CREATE TABLE IF NOT EXISTS `jobs_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobs_weblinks`
--

INSERT INTO `jobs_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 17, 0, 'Joomla Templates', 'joomla-templates', 'http://www.rockettheme.com/joomla', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-12-12 15:25:05', 459, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 17, 0, 'Wordpress Themes', 'wordpress-themes', 'http://www.rockettheme.com/wordpress', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-12-12 15:25:12', 459, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 17, 0, 'Magento Templates', 'magento-templates', 'http://www.rockettheme.com/magento', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-12-12 15:25:19', 459, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 17, 0, 'phpBB3 Styles', 'phpbb3-styles', 'http://www.rockettheme.com/phpbb3', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-12-12 15:25:28', 459, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_provider`
--

CREATE TABLE IF NOT EXISTS `user_provider` (
  `user_id` int(11) NOT NULL,
  `provider_id` varchar(50) NOT NULL,
  `provider` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`provider_id`),
  UNIQUE KEY `provider_id` (`provider_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_provider`
--

INSERT INTO `user_provider` (`user_id`, `provider_id`, `provider`) VALUES
(5, '100001321634714', 'facebook'),
(7, 'qeVUQ7BWVS', 'linkedIn'),
(6, 'VZPYRnwLf2', 'linkedIn');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `a_calendar`
--
ALTER TABLE `a_calendar`
  ADD CONSTRAINT `a_calendar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `a_cover`
--
ALTER TABLE `a_cover`
  ADD CONSTRAINT `a_cover_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `a_cv`
--
ALTER TABLE `a_cv`
  ADD CONSTRAINT `a_cv_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `a_cv_edu`
--
ALTER TABLE `a_cv_edu`
  ADD CONSTRAINT `a_cv_edu_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `a_cv_exp`
--
ALTER TABLE `a_cv_exp`
  ADD CONSTRAINT `a_cv_exp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `a_cv_skill`
--
ALTER TABLE `a_cv_skill`
  ADD CONSTRAINT `a_cv_skill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jobs_users` (`id`);

--
-- Constraints for table `b_catsubject`
--
ALTER TABLE `b_catsubject`
  ADD CONSTRAINT `b_catsubject_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `b_category` (`cat_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `b_catsubject_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `b_subject` (`sub_id`) ON DELETE CASCADE;

--
-- Constraints for table `b_job`
--
ALTER TABLE `b_job`
  ADD CONSTRAINT `b_job_ibfk_1` FOREIGN KEY (`jcat_id`) REFERENCES `b_jobcategory` (`jcat_id`) ON DELETE CASCADE;

--
-- Constraints for table `b_jobcategory`
--
ALTER TABLE `b_jobcategory`
  ADD CONSTRAINT `b_jobcategory_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `a_company` (`com_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `b_jobcategory_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `b_category` (`cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `b_percentage`
--
ALTER TABLE `b_percentage`
  ADD CONSTRAINT `b_percentage_ibfk_1` FOREIGN KEY (`jcat_id`) REFERENCES `b_jobcategory` (`jcat_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `b_percentage_ibfk_2` FOREIGN KEY (`sub_id`) REFERENCES `b_subject` (`sub_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
