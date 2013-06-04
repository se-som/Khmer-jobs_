-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2013 at 02:39 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kmer_job`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `a_company`
--

INSERT INTO `a_company` (`com_id`, `user_id`, `approve`, `com_name`, `com_location`, `com_phone`, `com_email`, `com_web`) VALUES
(211, 479, 0, 'mapring', 'phnom penh', '012 32 12 13', 'mapringinfo@gmail.com', 'www.mapring.com'),
(214, 586, 1, 'ABC', 'PP', '098 76 98 90', 'abc@info.com', 'www.abc.com'),
(218, 592, 1, 'kaka.co.ltd', 'Kch', '098 78 79 80', 'kaka@info.com', 'www.kaka.com');

-- --------------------------------------------------------

--
-- Table structure for table `b_category`
--

CREATE TABLE IF NOT EXISTS `b_category` (
  `cat_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

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
