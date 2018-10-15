-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2018 at 08:17 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hw3`
--
CREATE DATABASE IF NOT EXISTS `HW3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `HW3`;

-- --------------------------------------------------------

--
-- Table structure for table `babynames`
--

DROP TABLE IF EXISTS `babynames`;
CREATE TABLE IF NOT EXISTS `babynames` (
  `name` char(100) NOT NULL,
  `year` int(10) NOT NULL,
  `ranking` int(10) NOT NULL,
  `gender` char(10) NOT NULL,
  PRIMARY KEY (`year`,`ranking`,`gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babynames`
--

INSERT INTO `babynames` (`name`, `year`, `ranking`, `gender`) VALUES
('Emily', 2005, 1, 'f'),
('Jacob', 2005, 1, 'm'),
('Emma', 2005, 2, 'f'),
('Michael', 2005, 2, 'm'),
('Madison', 2005, 3, 'f'),
('Joshua', 2005, 3, 'm'),
('Abigail', 2005, 4, 'f'),
('Matthew', 2005, 4, 'm'),
('Olivia', 2005, 5, 'f'),
('Ethan', 2005, 5, 'm'),
('Emily', 2006, 1, 'f'),
('Jacob', 2006, 1, 'm'),
('Emma', 2006, 2, 'f'),
('Michael', 2006, 2, 'm'),
('Madison', 2006, 3, 'f'),
('Joshua', 2006, 3, 'm'),
('Isabella', 2006, 4, 'f'),
('Ethan', 2006, 4, 'm'),
('Ava', 2006, 5, 'f'),
('Matthew', 2006, 5, 'm'),
('Emily', 2007, 1, 'f'),
('Jacob', 2007, 1, 'm'),
('Isabella', 2007, 2, 'f'),
('Michael', 2007, 2, 'm'),
('Emma', 2007, 3, 'f'),
('Ethan', 2007, 3, 'm'),
('Ava', 2007, 4, 'f'),
('Joshua', 2007, 4, 'm'),
('Madison', 2007, 5, 'f'),
('Daniel', 2007, 5, 'm'),
('Emma', 2008, 1, 'f'),
('Jacob', 2008, 1, 'm'),
('Isabella', 2008, 2, 'f'),
('Michael', 2008, 2, 'm'),
('Emily', 2008, 3, 'f'),
('Ethan', 2008, 3, 'm'),
('Olivia', 2008, 4, 'f'),
('Joshua', 2008, 4, 'm'),
('Ava', 2008, 5, 'f'),
('Daniel', 2008, 5, 'm'),
('Isabella', 2009, 1, 'f'),
('Jacob', 2009, 1, 'm'),
('Emma', 2009, 2, 'f'),
('Ethan', 2009, 2, 'm'),
('Olivia', 2009, 3, 'f'),
('Michael', 2009, 3, 'm'),
('Sophia', 2009, 4, 'f'),
('Alexander', 2009, 4, 'm'),
('Ava', 2009, 5, 'f'),
('William', 2009, 5, 'm'),
('Isabella', 2010, 1, 'f'),
('Jacob', 2010, 1, 'm'),
('Sophia', 2010, 2, 'f'),
('Ethan', 2010, 2, 'm'),
('Emma', 2010, 3, 'f'),
('Michael', 2010, 3, 'm'),
('Olivia', 2010, 4, 'f'),
('Jayden', 2010, 4, 'm'),
('Ava', 2010, 5, 'f'),
('William', 2010, 5, 'm'),
('Sophia', 2011, 1, 'f'),
('Jacob', 2011, 1, 'm'),
('Isabella', 2011, 2, 'f'),
('Mason', 2011, 2, 'm'),
('Emma', 2011, 3, 'f'),
('William', 2011, 3, 'm'),
('Olivia', 2011, 4, 'f'),
('Jayden', 2011, 4, 'm'),
('Ava', 2011, 5, 'f'),
('Noah', 2011, 5, 'm'),
('Sophia', 2012, 1, 'f'),
('Jacob', 2012, 1, 'm'),
('Emma', 2012, 2, 'f'),
('Mason', 2012, 2, 'm'),
('Isabella', 2012, 3, 'f'),
('Ethan', 2012, 3, 'm'),
('Olivia', 2012, 4, 'f'),
('Noah', 2012, 4, 'm'),
('Ava', 2012, 5, 'f'),
('William', 2012, 5, 'm'),
('Sophia', 2013, 1, 'f'),
('Noah', 2013, 1, 'm'),
('Emma', 2013, 2, 'f'),
('Liam', 2013, 2, 'm'),
('Olivia', 2013, 3, 'f'),
('Jacob', 2013, 3, 'm'),
('Isabella', 2013, 4, 'f'),
('Mason', 2013, 4, 'm'),
('Ava', 2013, 5, 'f'),
('William', 2013, 5, 'm'),
('Emma', 2014, 1, 'f'),
('Noah', 2014, 1, 'm'),
('Olivia', 2014, 2, 'f'),
('Liam', 2014, 2, 'm'),
('Sophia', 2014, 3, 'f'),
('Mason', 2014, 3, 'm'),
('Isabella', 2014, 4, 'f'),
('Jacob', 2014, 4, 'm'),
('Ava', 2014, 5, 'f'),
('William', 2014, 5, 'm'),
('Emma', 2015, 1, 'f'),
('Noah', 2015, 1, 'm'),
('Olivia', 2015, 2, 'f'),
('Liam', 2015, 2, 'm'),
('Sophia', 2015, 3, 'f'),
('Mason', 2015, 3, 'm'),
('Ava', 2015, 4, 'f'),
('Jacob', 2015, 4, 'm'),
('Isabella', 2015, 5, 'f'),
('William', 2015, 5, 'm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
