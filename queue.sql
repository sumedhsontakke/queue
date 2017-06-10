-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2017 at 11:04 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `queue`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `admin_token` varchar(100) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email_id`, `admin_token`, `created_date`) VALUES
(1, 'admin', 'admin', '', 'abc12oiu648jd', '');

-- --------------------------------------------------------

--
-- Table structure for table `handler`
--

CREATE TABLE IF NOT EXISTS `handler` (
  `handler_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `handler_username` varchar(100) NOT NULL,
  `handler_password` varchar(100) NOT NULL,
  `queue_id` bigint(50) NOT NULL,
  `handler_created_date` varchar(100) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE IF NOT EXISTS `queue` (
  `queue_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `close_time` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `queue_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `details_of_queue` varchar(100) NOT NULL,
  `flag` varchar(100) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  `active_status` int(10) NOT NULL,
  `flag_1` int(10) NOT NULL,
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `queue_category`
--

CREATE TABLE IF NOT EXISTS `queue_category` (
  `queue_category_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `queue_category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`queue_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `queue_category`
--

INSERT INTO `queue_category` (`queue_category_id`, `queue_category_name`) VALUES
(1, 'Doctor Appointment'),
(2, 'Passport appointment');

-- --------------------------------------------------------

--
-- Table structure for table `queue_date_wise`
--

CREATE TABLE IF NOT EXISTS `queue_date_wise` (
  `queue_date_wise_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `queue_id` bigint(50) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`queue_date_wise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_full_name` varchar(100) NOT NULL,
  `user_city` varchar(100) NOT NULL,
  `user_mobile_no` varchar(100) NOT NULL,
  `user_email_id` varchar(100) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
