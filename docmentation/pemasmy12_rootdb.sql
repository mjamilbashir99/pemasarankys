-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2015 at 07:22 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemasmy12_rootdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'sundaram24@yahoo.com', '123456'),
(2, 'admintest@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Sony'),
(6, 'Toshiba');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `p_id`, `ip_add`, `qty`, `status`) VALUES
(55, 23, '::1', 1, 0),
(55, 25, '::1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(7, 'Anatomy'),
(8, 'Biotechnology'),
(9, 'Earth Science'),
(11, 'Lab Supplies & Equipment'),
(13, 'Chemistry'),
(14, 'Life Science'),
(15, 'Living Organisms'),
(16, 'Microscopes & Optics'),
(17, 'Physical & Earth Sciences'),
(18, 'Preserved Organisms'),
(19, 'Instructional Materials'),
(20, 'eLearning Resources'),
(21, 'Physical & Earth Sciences'),
(22, 'Life Science'),
(23, 'Safety Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `Ind_OR_Company` varchar(30) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `customer_country` varchar(50) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `customer_contact1` varchar(255) NOT NULL,
  `customer_contact2` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `Ind_OR_Company`, `customer_email`, `customer_pass`, `company_name`, `registration_number`, `address1`, `address2`, `customer_country`, `customer_city`, `State`, `contact_person`, `customer_contact1`, `customer_contact2`, `customer_address`, `customer_image`) VALUES
(37, '::1', '3232', 'Company', 'userdemo@itechscripts.com', 'userdemo', '32', '3232', '3232', '3232', 'Johor', '32', '32332', 'weewwe', 'ewewwe', 'weewew', 'we', ''),
(54, '::1', 'alis', '', 'ali@g.com', '123', 'testaaa', '12345 testaaa', 'asdf testssss', 'asdf testasdf testaaa', 'India', 'asdf testaaaaa', 'asdf testsssss', 'asdf testssssssss', 'asdf testaaaaa', 'asdf testasdf testasdf testasdf test', 'asdf testasdf testaaaaaa', ''),
(55, '::1', 'aliss', 'Company', 'ali@gmail.com', 'asdf', 'dsdfg', 'fdgh', 'dfshh', 'dfgh', 'N. Sembilan', 'dsghh', 'dfhh', 'sdfdgf', 'fghf', 'fghg', 'dfsfh', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Product_id` int(10) NOT NULL,
  `view` varchar(50) NOT NULL,
  `fav_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `Product_id`, `view`, `fav_date`) VALUES
(1, 55, 19, '10', '2015-09-10'),
(2, 55, 20, '10', '2015-09-17'),
(3, 0, 0, '0', '0000-00-00'),
(4, 0, 0, '0', '0000-00-00'),
(5, 0, 0, '0', '0000-00-00'),
(6, 0, 0, '0', '0000-00-00'),
(7, 0, 0, '0', '0000-00-00'),
(8, 0, 0, '0', '0000-00-00'),
(9, 0, 0, '0', '0000-00-00'),
(10, 0, 0, '0', '0000-00-00'),
(11, 0, 0, '0', '0000-00-00'),
(21, 55, 27, '', '0000-00-00'),
(22, 55, 27, '', '0000-00-00'),
(23, 55, 32, '', '0000-00-00'),
(24, 55, 1, '', '0000-00-00'),
(25, 55, 1, '', '0000-00-00'),
(26, 55, 1, '', '0000-00-00'),
(27, 55, 1, '', '0000-00-00'),
(28, 55, 1, '', '0000-00-00'),
(29, 55, 39, '', '0000-00-00'),
(30, 55, 1, '', '0000-00-00'),
(31, 55, 21, '', '0000-00-00'),
(32, 55, 20, '', '0000-00-00'),
(33, 55, 34, '', '0000-00-00'),
(34, 55, 39, '', '0000-00-00'),
(35, 55, 38, '', '0000-00-00'),
(36, 55, 23, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `Email_address` varchar(25) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `feedback` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `c_id`, `fname`, `companyid`, `Email_address`, `telephone_number`, `subject`, `feedback`) VALUES
(1, 0, 'Rovaid khan', 're', 'er', '3078814627', 'errrrrrr', ' errrrrrrrrrr'),
(2, 0, 'dadas', '4234', 'rizw_@gmail.com', '2424234', 'tets', ' dadadasdas'),
(3, 0, 'Farman', 'Ilead', 'farman_ilead,pk', '4454521', 'test email', ' csdfsfsdfsd'),
(4, 0, 'dadas', '4234', 'rizw_@gmail.com', '2424234', 'tets', ' Saadsad');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `status` text NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_id`, `c_id`, `qty`, `invoice_no`, `status`, `order_date`) VALUES
(5, 8, 5, 1, 462643381, 'Completed', '0000-00-00'),
(6, 6, 5, 3, 481994459, 'Completed', '2014-07-21'),
(7, 9, 0, 1, 1545302558, 'Completed', '2014-07-23'),
(8, 5, 0, 2, 705705316, 'in Progress', '2014-08-08'),
(9, 7, 6, 1, 1935681132, 'in Progress', '2014-08-08'),
(10, 9, 6, 3, 1817786416, 'in Progress', '2014-08-08'),
(11, 5, 6, 2, 423122154, 'in Progress', '2014-08-08'),
(12, 8, 55, 4, 496641685, 'in Progress', '2014-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `currency` text NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `amount`, `customer_id`, `product_id`, `trx_id`, `currency`, `payment_date`) VALUES
(1, 800, 5, 6, '31B07494JS505133P', 'USD', '0000-00-00'),
(2, 500, 5, 9, '18747053K31546734', 'USD', '0000-00-00'),
(3, 1000, 5, 9, '183154524M7953521', 'USD', '0000-00-00'),
(4, 900, 5, 5, '8L053110TE658224T', 'USD', '2014-07-21'),
(5, 450, 5, 8, '42M62596JN658381G', 'USD', '2014-07-21'),
(6, 600, 5, 6, '1FC71986FP579232R', 'USD', '2014-07-21'),
(7, 500, 0, 9, '0AH67056C64289013', 'USD', '2014-07-23'),
(8, 1800, 0, 5, '1F431738AY795223E', 'USD', '2014-08-08'),
(9, 250, 6, 7, '3G918931JL634141Y', 'USD', '2014-08-08'),
(10, 1500, 6, 9, '0BF7586175203573G', 'USD', '2014-08-08'),
(11, 1800, 6, 5, '7RS823437E828061K', 'USD', '2014-08-08'),
(12, 1800, 6, 8, '84J65197FN011600G', 'USD', '2014-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(8, 0, 0, 'Economy Sexless Human Torso', 428, '<h3><strong>Economy Sexless Human Torso with Open Back</strong></h3>\r\n<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', 'AC120662l.jpg', 'Economy Sexless Human Torso with Open Back'),
(20, 0, 0, 'American Deluxe Dual Sex Torso', 0, '<h3>American Deluxe Dual Sex Torso (24-Part)</h3>\r\n<p>Offers all the possibilities you need for detailed demonstrations in human anatomy. Torso model contains these removable parts and organs:<br />&bull; Three-part head (removable)<br />&bull; Two-part stomach<br />&bull; Female chest wall<br />&bull; Two lungs<br />&bull; Two-part heart<br />&bull; Liver with gall bladder<br />&bull; Four-part intestinal tract<br />&bull; Front half of kidney<br />&bull; Four-part male genital insert<br />&bull; Three-part female genital insert with fetus<br />Includes 3B Torso Teaching Guide. 34" x 15" x 10".</p>', 'AC120662l.jpg', 'American Deluxe Dual Sex Torso (24-Part)'),
(21, 0, 0, 'Photosynthesis', 80, '<p><strong>Grades 9-12.</strong><br />Allow students to get the most out of their AP&reg; Biology class with college-level labs designed to challenge the more advanced student. Students will explore key concepts while preparing for higher education. Enough materials provided for eight lab groups.<br /><br />Learn all the necessary components and conditions for photosynthesis to occur while using leaf disks to measure the accumulation of oxygen and relate it to the rate of photosynthesis. Then use guided inquiry to design and conduct an experiment to examine the effects of a chosen variable on the rate of photosynthesis. Enough materials provided for eight lab groups. Includes teacher&rsquo;s manual and student study guide copy masters. Meets AP&reg; Science Practices 1, 2, 3, 6, and 7 and Big Idea 2.<br /><br /><strong>Kit includes:</strong><br />&bull; One hole punch<br />&bull; 16 syringes (each 10 ml)<br />&bull; 16 plastic cups<br />&bull; 30 ml dilute soap solution<br />&bull; 50 g sodium bicarbonate<br /><br /><strong>Required but not included in kit:</strong><br />&bull; Living plant leaves<br />&bull; Light source<br />&bull; Timers or stopwatches<br />&bull; Distilled or deionized water</p>', 'AC141485l.jpg', 'Photosynthesis'),
(22, 9, 0, 'Erupting Volcano Classroom Pack1', 150, '<p>&nbsp;</p>\r\n<div id="print_product" style="margin-top: 20px; margin-bottom: 20px;">\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">This four-session project makes any classroom explode with total student involvement! Create fun, interactive volcanoes that actually erupt, sending student knowledge and retention skyrocketing. Meets expectations of the National Science Education Standards for Earth Sciences. Pack includes enough materials for 12 individual or group projects: project bases with labels, dark green underbrush, medium green coarse accent, two-part eruption mixture, volcano tubes, rock and black colors, Earth undercoat, plaster cloth rolls, cardboard pads, foam brushes, plastic cups, sifter lids, project glue, and teacher and student guides. Grades 3-8.</p>\r\n</div>\r\n<p><br /><br /></p>', 'AC101306l.jpg', 'Erupting Volcano Classroom Pack'),
(23, 0, 0, 'Knee-Length Lab Coat - Medium', 20, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">Knee-Length Lab Coat - Medium (Size 40)</h3>\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">A men&rsquo;s lab coat that combines style, comfort, and value. Made of 65% Dacron&reg; and 35% finely combed cotton to withstand many launderings. Features a lapel collar; double-thickness cuffs; adjustable belt in back; upper left pencil-seamed breast pocket; two deep, roomy lower pockets; side slit openings; and buttons. Wash and dry. White. Fabric U.S.A.</p>', 'AC120662l.jpg', 'Knee-Length Lab Coat - Medium (Size 40)'),
(25, 7, 0, 'drik bottles', 1320, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">Knee-Length Lab Coat - Medium (Size 40)</h3>\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">A men&rsquo;s lab coat that combines style, comfort, and value. Made of 65% Dacron&reg; and 35% finely combed cotton to withstand many launderings. Features a lapel collar; double-thickness cuffs; adjustable belt in back; upper left pencil-seamed breast pocket; two deep, roomy lower pockets; side slit openings; and buttons. Wash and dry. White. Fabric U.S.A.</p>', '1.jpg', 'Knee-Length Lab Coat - Medium '),
(26, 0, 0, 't2', 1, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</h3>', '2.jpg', 't2'),
(27, 0, 0, 't3', 1, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '3.jpg', 't3'),
(28, 0, 0, 't4', 4, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '4.jpg', 't4'),
(29, 0, 0, 't5', 5, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '5.jpg', 't5'),
(30, 14, 0, 't6', 6, '<p>t6</p>', '6.jpg', 't6'),
(31, 15, 0, 't7', 7, '<p>t7</p>', '7.jpg', 't7'),
(32, 16, 0, 't8', 8, '<p>t8</p>', '8.jpg', 't8'),
(33, 17, 0, 't9', 9, '<p>t9</p>', '9.jpg', 't9'),
(34, 18, 0, 't10', 10, '<p>10</p>', '10.jpg', '10'),
(35, 19, 0, 't11', 11, '<p>11</p>', '11.jpg', '11'),
(36, 0, 0, 't12', 12, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '12.jpg', '12'),
(37, 0, 0, 't13', 13, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '13.jpg', '13'),
(38, 0, 0, 't14', 14, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '14.jpg', '14'),
(39, 0, 0, 't15', 15, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '15.jpg', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
