-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2015 at 02:31 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
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
(2, 'admin@gmail.com', '123456');

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
  `cart_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Ind_OR_Company` int(11) NOT NULL,
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
  `customer_image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `Ind_OR_Company`, `customer_email`, `customer_pass`, `company_name`, `registration_number`, `address1`, `address2`, `customer_country`, `customer_city`, `State`, `contact_person`, `customer_contact1`, `customer_contact2`, `customer_address`, `customer_image`, `status`, `is_delete`) VALUES
(56, '::1', 'ali1', 0, 'ali1@g.com', '123', 'dsfa', 'sdag', 'sdgfgd', 'dfbgd', 'Sabah', 'sdgsda', 'gdsag', 'gsdag', 'sdga', 'gdsag', 'gsdag', 'Koala.jpg', 0, 0),
(65, '::1', 'dfghr', 0, 'ali@gmail.com', 'asdf', 'reyh', 'fghr', 'rtyry', 'rty', 'Putra Jaya', 'fghfg', 'treuu', 'rt', 'rtuetu', 'fhghf', 'fgdjygjkj', '', 1, 1),
(70, '::1', 'dfsgghgf', 0, 'ali12@gmail.com', 'asdf', 'jhkhj', 'fgjghk', 'ghfkjh', 'hjglkj;', 'Putra Jaya', 'jk;h', 'l;hj;', 'gjklgklhi', 'yujhk', 'hjgl', 'hlgl;;', '', 0, 0),
(71, '::1', 'rtuytrui', 0, 'alityuty@.com', 'asdf', 'tyuiyi', 'uyoiup[io[', 'ioupio', 'iup[uio[', 'Kuala Lumpur', 'iu[io[uio', 'io[io[', 'io[uh', 'jghjk', 'ghjkk', 'ghkk', '', 0, 0),
(72, '::1', 'fdggh', 0, 'ali@gmgfhfgail.com', 'asdf', 'fgdj', 'ghjgh', 'ghjkfhk', 'hjkhjkhj', 'Kedah', 'jhkhj', 'hjk', 'hjgl;k;', 'hjljklj', 'gljlj', 'lgjljk', '', 0, 0),
(73, '::1', 'sdtret', 0, 'ali@gmail.com', 'asdf', 'dsgsdfy', 'weryrty', 'tytreutyeu', 'tyutyuty', 'Kedah', 'ujtyjhtyuj', 'hngfk', 'ghfk', 'ghfj', 'ghjghfj', 'kghfkhjkjkl', '', 0, 0),
(74, '::1', 'jhkykjhjhfjk', 0, 'ali@gmail.com', 'asdf', 'uyiu', 'yuo', 'yuto', 'yuo', 'Kuala Lumpur', 'yutiutot', 'yoyuo', 'yuituo', 'yuo', 'yut', 'yuouip', '', 0, 0),
(75, '::1', 'rtyr5y', 0, 'ali@gmail.com', 'asdf', 'erwtyr', 'rtey', 'rtyrty', 'rturyu', 'Kedah', 'uyut', 'tyuty', 'rtuteyu', 'reutyiri', 'rtuti', 'ruteu', '', 0, 0),
(76, '::1', 'rdtygshs', 0, 'ali@gmail.com', 'asdf', 'dgssdfhy', 'fgh', 'gfh', 'gsdfgh', 'Kuala Lumpur', 'fgsh', 'fgshf', 'sdfh', 'fghs', 'hfsfh', 'fshfsh', '', 0, 0),
(77, '::1', 'ali', 0, 'ali@gmail.com', 'asdf', 'sfgh', 'fgdj', 'fgh', 'fgdj', 'Kelantan', 'fgjd', 'jdghj', 'fdgj', 'fhg', 'dfhj', 'fdjgh', '', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `Product_id`, `view`, `fav_date`) VALUES
(3, 0, 0, '0', '0000-00-00'),
(4, 0, 0, '0', '0000-00-00'),
(5, 0, 0, '0', '0000-00-00'),
(6, 0, 0, '0', '0000-00-00'),
(7, 0, 0, '0', '0000-00-00'),
(8, 0, 0, '0', '0000-00-00'),
(9, 0, 0, '0', '0000-00-00'),
(10, 0, 0, '0', '0000-00-00'),
(11, 0, 0, '0', '0000-00-00'),
(36, 55, 23, '', '0000-00-00'),
(38, 55, 22, '', '0000-00-00');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `c_id`, `fname`, `companyid`, `Email_address`, `telephone_number`, `subject`, `feedback`) VALUES
(1, 0, 'Rovaid khan', 're', 'er', '3078814627', 'errrrrrr', ' errrrrrrrrrr'),
(2, 0, 'dadas', '4234', 'rizw_@gmail.com', '2424234', 'tets', ' dadadasdas'),
(3, 0, 'Farman', 'Ilead', 'farman_ilead,pk', '4454521', 'test email', ' csdfsfsdfsd'),
(4, 0, 'dadas', '4234', 'rizw_@gmail.com', '2424234', 'tets', ' Saadsad'),
(5, 55, 'gjj', 'gjhjh', 'ghgj', 'ghj', 'ghhj', 'ghhjjj'),
(6, 55, 'alissssssssssssssssss', '2', 'ali@gmail.com', 'fghfss', 'abc', ' weterwyrtrtrturtbgcfgf'),
(7, 55, 'alissssssssssssssssss', '2', 'ali@gmail.com', 'fghfss', 'abc', ' weterwyrtrtrturtbgcfgf'),
(8, 55, 'alissssssssssssssssss', '2', 'ali@gmail.com', 'fghfss', 'gfdgdfgsg', ' test test');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `ods_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_price` varchar(15) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ods_id`, `order_no`, `p_id`, `p_price`, `unit_price`, `c_id`, `qty`) VALUES
(41, 37, 41, '0', 0, 65, 1),
(40, 36, 20, '0', 0, 55, 1),
(39, 36, 20, '0', 0, 55, 1),
(38, 36, 33, '0', 0, 55, 1),
(37, 35, 20, '250', 0, 55, 1),
(34, 34, 33, '1', 0, 55, 1),
(35, 34, 20, '4', 0, 55, 1),
(36, 35, 33, '25556', 0, 55, 1),
(42, 38, 41, '324', 244, 65, 1),
(43, 38, 35, '242', 24578, 65, 1),
(44, 39, 35, '0', 0, 65, 1),
(45, 39, 33, '0', 0, 65, 1),
(46, 40, 40, '54', 54646, 56, 1),
(47, 40, 38, '5465', 45656, 56, 1),
(48, 41, 41, '574', 0, 56, 1),
(49, 42, 42, '22', 0, 65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `status_order` varchar(80) NOT NULL,
  `order_date` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `c_id`, `status_order`, `order_date`) VALUES
(42, 65, 'issue_po', 1442244879),
(41, 56, 'issue_po', 1442243054),
(40, 56, 'issue_po', 1442240437),
(39, 65, 'issue_po', 1442240351),
(38, 65, 'issue_po', 1442240316),
(37, 65, 'submit_rfq', 1442237856),
(36, 55, 'submit_rfq', 1441901835),
(35, 55, 'issue_po', 1441812217),
(34, 55, 'cancel', 1441812080);

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
  `product_keywords` text NOT NULL,
  `gallery_image1` varchar(50) NOT NULL,
  `gallery_image2` varchar(50) NOT NULL,
  `gallery_image3` varchar(50) NOT NULL,
  `gallery_image4` varchar(50) NOT NULL,
  `gallery_image5` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `gallery_image1`, `gallery_image2`, `gallery_image3`, `gallery_image4`, `gallery_image5`) VALUES
(8, 0, 0, 'Economy Sexless Human Torso', 428, '<h3><strong>Economy Sexless Human Torso with Open Back</strong></h3>\r\n<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', 'AC120662l.jpg', 'Economy Sexless Human Torso with Open Back', '', '', '', '', ''),
(20, 0, 0, 'American Deluxe Dual Sex Torso', 0, '<h3>American Deluxe Dual Sex Torso (24-Part)</h3>\r\n<p>Offers all the possibilities you need for detailed demonstrations in human anatomy. Torso model contains these removable parts and organs:<br />&bull; Three-part head (removable)<br />&bull; Two-part stomach<br />&bull; Female chest wall<br />&bull; Two lungs<br />&bull; Two-part heart<br />&bull; Liver with gall bladder<br />&bull; Four-part intestinal tract<br />&bull; Front half of kidney<br />&bull; Four-part male genital insert<br />&bull; Three-part female genital insert with fetus<br />Includes 3B Torso Teaching Guide. 34" x 15" x 10".</p>', 'AC120662l.jpg', 'American Deluxe Dual Sex Torso (24-Part)', 'AC120662l.jpg', 'AC120662l.jpg', 'AC120662l.jpg', 'AC120662l.jpg', 'AC120662l.jpg'),
(21, 0, 0, 'Photosynthesis', 80, '<p><strong>Grades 9-12.</strong><br />Allow students to get the most out of their AP&reg; Biology class with college-level labs designed to challenge the more advanced student. Students will explore key concepts while preparing for higher education. Enough materials provided for eight lab groups.<br /><br />Learn all the necessary components and conditions for photosynthesis to occur while using leaf disks to measure the accumulation of oxygen and relate it to the rate of photosynthesis. Then use guided inquiry to design and conduct an experiment to examine the effects of a chosen variable on the rate of photosynthesis. Enough materials provided for eight lab groups. Includes teacher&rsquo;s manual and student study guide copy masters. Meets AP&reg; Science Practices 1, 2, 3, 6, and 7 and Big Idea 2.<br /><br /><strong>Kit includes:</strong><br />&bull; One hole punch<br />&bull; 16 syringes (each 10 ml)<br />&bull; 16 plastic cups<br />&bull; 30 ml dilute soap solution<br />&bull; 50 g sodium bicarbonate<br /><br /><strong>Required but not included in kit:</strong><br />&bull; Living plant leaves<br />&bull; Light source<br />&bull; Timers or stopwatches<br />&bull; Distilled or deionized water</p>', 'AC141485l.jpg', 'Photosynthesis', '', '', '', '', ''),
(22, 9, 0, 'Erupting Volcano Classroom Pack1', 150, '<p>&nbsp;</p>\r\n<div id="print_product" style="margin-top: 20px; margin-bottom: 20px;">\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">This four-session project makes any classroom explode with total student involvement! Create fun, interactive volcanoes that actually erupt, sending student knowledge and retention skyrocketing. Meets expectations of the National Science Education Standards for Earth Sciences. Pack includes enough materials for 12 individual or group projects: project bases with labels, dark green underbrush, medium green coarse accent, two-part eruption mixture, volcano tubes, rock and black colors, Earth undercoat, plaster cloth rolls, cardboard pads, foam brushes, plastic cups, sifter lids, project glue, and teacher and student guides. Grades 3-8.</p>\r\n</div>\r\n<p><br /><br /></p>', 'AC101306l.jpg', 'Erupting Volcano Classroom Pack', '', '', '', '', ''),
(23, 0, 0, 'Knee-Length Lab Coat - Medium', 20, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">Knee-Length Lab Coat - Medium (Size 40)</h3>\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">A men&rsquo;s lab coat that combines style, comfort, and value. Made of 65% Dacron&reg; and 35% finely combed cotton to withstand many launderings. Features a lapel collar; double-thickness cuffs; adjustable belt in back; upper left pencil-seamed breast pocket; two deep, roomy lower pockets; side slit openings; and buttons. Wash and dry. White. Fabric U.S.A.</p>', 'AC120662l.jpg', 'Knee-Length Lab Coat - Medium (Size 40)', '', '', '', '', ''),
(25, 7, 0, 'drik bottles', 1320, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">Knee-Length Lab Coat - Medium (Size 40)</h3>\r\n<p style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">A men&rsquo;s lab coat that combines style, comfort, and value. Made of 65% Dacron&reg; and 35% finely combed cotton to withstand many launderings. Features a lapel collar; double-thickness cuffs; adjustable belt in back; upper left pencil-seamed breast pocket; two deep, roomy lower pockets; side slit openings; and buttons. Wash and dry. White. Fabric U.S.A.</p>', '1.jpg', 'Knee-Length Lab Coat - Medium ', '', '', '', '', ''),
(26, 0, 0, 't2', 1, '<h3 style="font-family: Verdana, Arial; color: black; font-size: 120%; padding: 5px;">This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</h3>', '2.jpg', 't2', '', '', '', '', ''),
(27, 0, 0, 't3', 1, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '3.jpg', 't3', '', '', '', '', ''),
(28, 0, 0, 't4', 4, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '4.jpg', 't4', '', '', '', '', ''),
(29, 0, 0, 't5', 5, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '5.jpg', 't5', '', '', '', '', ''),
(30, 14, 0, 't6', 6, '<p>t6</p>', '6.jpg', 't6', '', '', '', '', ''),
(31, 15, 0, 't7', 7, '<p>t7</p>', '7.jpg', 't7', '', '', '', '', ''),
(32, 16, 0, 't8', 8, '<p>t8</p>', '8.jpg', 't8', '', '', '', '', ''),
(33, 0, 0, 't9dfsgydtyh', 9, '<p>t9fgdhfgdfh</p>', 'Koala.jpg', 't9', '', '', '', '', ''),
(34, 18, 0, 't10', 10, '<p>10</p>', '10.jpg', '10', '', '', '', '', ''),
(35, 19, 0, 't11', 11, '<p>11</p>', '11.jpg', '11', '', '', '', '', ''),
(36, 0, 0, 't12', 12, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '12.jpg', '12', '', '', '', '', ''),
(37, 0, 0, 't13', 13, '<p>This 17-part torso shows the major body systems in detail. The head is opened, exposing one half of the brain, and the neck is dissected to show muscular, glandular, vascular, and neural structures. The thorax and abdomen are removable, allowing easy observation of the organs. The back is opened and dissected, showing the vertebral column, spinal cord, and nerve endings. The following parts can be removed: torso, cerebrum, cerebellum, left and right lung with ribs, heart (two parts), liver, stomach (two parts), half kidney, half bladder, 7th thoracic vertebrae, intestine, colon with pancreas, removable transverse colon, and cecum cover. Includes key card. 34" H x 13" W x 9" D.</p>', '13.jpg', '13', '', '', '', '', ''),
(38, 7, 2, 'fgdysstu', 0, '<p>ghgjhjghj</p>', 'Chrysanthemum.jpg', 'fgdututu', '', '', '', '', ''),
(39, 8, 1, 't9dfsgydtyh', 0, '<p>earyrery</p>', '', 'qw45rweqr', '', '', '', '', ''),
(40, 9, 2, 'fgdysstu', 0, '<p>werwerwer</p>', '', 'qwerwer', '', '', '', '', ''),
(41, 0, 1, 'rty4eter', 50000000, '<p>yrtyert76yry</p>', 'Lighthouse.jpg', 'rtyerty', '', '', '', '', ''),
(42, 7, 1, 't9dfsgydtyh', 345623, '<p>erqwer</p>', '', 'wertq34t', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tell_friend`
--

CREATE TABLE IF NOT EXISTS `tell_friend` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tell_friend`
--

INSERT INTO `tell_friend` (`id`, `user_id`, `product_id`, `status`) VALUES
(1, 65, 42, 0),
(19, 65, 22, 0),
(20, 65, 22, 0),
(21, 65, 23, 0);

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
  ADD PRIMARY KEY (`cart_id`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ods_id`);

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
-- Indexes for table `tell_friend`
--
ALTER TABLE `tell_friend`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `ods_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tell_friend`
--
ALTER TABLE `tell_friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"turkeyvi_cities","table":"dbc_blog"},{"db":"turkeyvi_cities","table":"dbc_advertesing"},{"db":"turkeyvi_cities","table":"dbc_county"},{"db":"turkeyvi_cities","table":"dbc_categories_post"},{"db":"turkeyvi_cities","table":"dbc_categories"},{"db":"turkeyvi_cities","table":"dbc_magazines"},{"db":"turkeyvi_cities","table":"dbc_posts"},{"db":"pemasmy12_rootdb","table":"customers"},{"db":"pemasmy12_rootdb","table":"order_details"},{"db":"turkeyvi_cities","table":"dbc_locations"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'turkeyvi_cities', 'dbc_apps', '{"sorted_col":"`featured_img` ASC"}', '2015-08-27 16:48:58'),
('root', 'turkeyvi_cities', 'dbc_magazines', '{"sorted_col":"`dbc_magazines`.`id` ASC"}', '2015-08-29 12:38:50'),
('root', 'turkeyvi_cities', 'dbc_extra_video_urls', '{"sorted_col":"`dbc_extra_video_urls`.`user_id` ASC"}', '2015-08-26 13:38:42'),
('root', 'turkeyvi_cities', 'dbc_issues', '{"sorted_col":"`dbc_issues`.`featured_img` ASC"}', '2015-08-31 18:49:09'),
('root', 'turkeyvi_cities', 'dbc_advertesing', '{"sorted_col":"`dbc_advertesing`.`target_area` ASC"}', '2015-08-28 16:05:46'),
('root', 'turkeyvi_cities', 'dbc_posts', '{"sorted_col":"`created_by` ASC"}', '2015-09-03 14:02:02'),
('root', 'turkeyvi_cities', 'dbc_banners_area', '{"sorted_col":"`dbc_banners_area`.`banner_area` ASC"}', '2015-09-01 14:30:11'),
('root', 'turkeyvi_cities', 'dbc_blog', '{"sorted_col":"`dbc_blog`.`country` ASC"}', '2015-09-21 18:01:42'),
('root', 'turkeyvi_cities', 'dbc_locations', '{"sorted_col":"`featured_img` ASC"}', '2015-09-17 13:56:12'),
('root', 'pemasmy12_rootdb', 'customers', '{"sorted_col":"`customers`.`customer_email` DESC"}', '2015-09-15 15:22:45'),
('root', 'pemasmy12_rootdb', 'favorites', '{"sorted_col":"`favorites`.`user_id` ASC"}', '2015-09-07 15:48:09'),
('root', 'pemasmy12_rootdb', 'products', '{"sorted_col":"`product_id` ASC"}', '2015-09-15 16:56:00'),
('root', 'pemasmy12_rootdb', 'orders', '{"sorted_col":"`orders`.`order_id` ASC"}', '2015-09-10 15:18:11'),
('root', 'pemasmy12_rootdb', 'order_details', '{"sorted_col":"`order_details`.`order_no` ASC"}', '2015-09-10 15:18:30'),
('root', 'turkeyvi_cities', 'dbc_categories_post', '{"sorted_col":"`dbc_categories_post`.`description` ASC"}', '2015-09-19 15:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-08-07 17:23:52', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
--
-- Database: `turkeyvi_cities`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbc_advertesing`
--

CREATE TABLE IF NOT EXISTS `dbc_advertesing` (
  `id` int(11) NOT NULL,
  `county` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `categories` int(11) NOT NULL,
  `target_area` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `lower_description` varchar(256) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `advertesing` varchar(256) NOT NULL,
  `ad_type` varchar(256) NOT NULL,
  `start_date` int(150) NOT NULL,
  `end_date` int(150) NOT NULL,
  `impression` int(11) NOT NULL,
  `script_area` varchar(256) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_advertesing`
--

INSERT INTO `dbc_advertesing` (`id`, `county`, `city`, `categories`, `target_area`, `url`, `lower_description`, `width`, `height`, `advertesing`, `ad_type`, `start_date`, `end_date`, `impression`, `script_area`, `status`) VALUES
(1, 93, 622, 1, 4, 'ytuyt', 'ghhjhg', 110, 22, 'Jellyfish2.jpg', '6', 1296604920, 669428100, 22, 'test', 1),
(2, 93, 698, 13, 0, 'test test test', 'test test test testtest testtest test', 111, 222, 'Chrysanthemum2.jpg', '6', 0, 2147483647, 222, 'testtesttesttest test', 0),
(6, 93, 0, 14, 0, 'ghj', 'hgfii', 55, 66, '0', '2', 0, 2147483647, 100, 'ytjhgkk', 0),
(15, 97, 715, 10, 0, 'ffgh', 'fgdj', 7578, 8767, 'Lighthouse1.jpg', '0', 0, 2147483647, 876, '7ghfiiuyuy', 0),
(16, 93, 0, 0, 0, '', 'gyutyi', 0, 0, '0', '0', 0, 2147483647, 0, '', 0),
(17, 93, 698, 1, 0, 'ghujty', 'rtujyjhhgj', 110, 546546, '0', '2', 0, 2015, 878, 'ghujgyhjgh', 0),
(18, 94, 698, 17, 0, 'fgghfg', 'dffhhfg', 0, 0, '0', '0', 2147483647, 2014, 0, '', 0),
(25, 93, 655, 0, 0, '', 'asdf', 0, 0, '0', '0', 1970, 1970, 0, '', 0),
(26, 93, 0, 0, 0, '', 'jgjg', 0, 0, '0', '0', 0, 0, 0, '', 0),
(27, 93, 0, 0, 0, '', 'fdghh', 0, 0, 'Tulips2.jpg', '4', 698544060, 637957140, 0, '', 0),
(28, 93, 622, 12, 4, 'asdf', 'asdf test', 100, 100, 'Desert3.jpg', '2', 1356015660, 1421685660, 142, 'test', 1),
(29, 102, 625, 6, 0, 'test', 'test', 110, 876, '0', '3', 891424800, 1466207015, 876, 'hgfko', 1),
(30, 99, 715, 8, 4, 'ytuyt', 'fgdj', 5, 545, '0', '6', 1420136340, 1468798955, 876, 'reyrsy', 1),
(31, 96, 623, 0, 4, 'test', 'fgfg', 55, 66, 'Penguins7.jpg', '3', 1420066800, 1417307675, 876, 'dfdsgd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_apps`
--

CREATE TABLE IF NOT EXISTS `dbc_apps` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `app_no` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `window` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `android` varchar(200) DEFAULT NULL,
  `featured_img` varchar(200) DEFAULT NULL,
  `gallery` varbinary(1000) DEFAULT NULL,
  `tags` varbinary(200) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_apps`
--

INSERT INTO `dbc_apps` (`id`, `post_id`, `app_no`, `title`, `description`, `window`, `mac`, `android`, `featured_img`, `gallery`, `tags`, `qr`) VALUES
(13, 22, NULL, 'visit adana', '<p>adana</p>', 'www.visitadana.com', 'www.visitadana.com', 'www.visitadana.com', 'img12.jpg', 0x5b226170705f73637265656e5f73686f74735f3231362e706e67222c226170705f73637265656e5f73686f74735f3231312e706e67222c226170705f73637265656e5f73686f74735f3231332e706e67222c226170705f73637265656e5f73686f74735f3231322e706e67222c226170705f73637265656e5f73686f74735f3231352e706e67222c226170705f73637265656e5f73686f74735f3231342e706e67225d, 0x7669736974202c6164616e612c74726176656c, '0'),
(14, 25, NULL, 'app1', '<p>app1</p>', 'app1', 'app1', 'app1', 'valilik-iletisim1.jpg', 0x5b2276616c696c696b2d696c65746973696d2e6a7067225d, 0x61707031, 'valilik-iletisim2.jpg'),
(17, 22, NULL, NULL, 'test testy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 22, NULL, 'weqteertry', 'test test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 21, NULL, '', '', '', '', '', 'no-image.png', 0x5b5d, '', 'no-image.png'),
(20, 26, NULL, '', '', '', '', '', 'no-image.png', 0x5b5d, '', 'no-image.png');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_banners_area`
--

CREATE TABLE IF NOT EXISTS `dbc_banners_area` (
  `id` int(11) NOT NULL,
  `banner_area` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_banners_area`
--

INSERT INTO `dbc_banners_area` (`id`, `banner_area`) VALUES
(4, 'Homepage footer banner 1200 x 100'),
(5, 'Homepage footer banner 1200 * 100'),
(6, 'Homepage right column 300 * 250'),
(7, 'Location Homepage footer banner 1200 * 100'),
(8, 'Location Homepage right column 300 * 250'),
(9, 'Location County  Homepage footer banner 1200 * 100'),
(10, 'Location County  Homepage right column 300 * 250'),
(11, 'Location County  page footer banner 1200 * 100'),
(12, 'Location County  page right column 300 * 250'),
(13, 'News Homepage footer banner 1200 * 100'),
(14, 'News Homepage right column  300 * 250'),
(15, 'News City page footer banner 1200 * 100'),
(16, 'News City page right column 300 * 250'),
(17, 'News City categories footer banner  1200 * 100'),
(18, 'News City categories  right column 300 * 250'),
(19, 'News page footer banner   1200 * 100'),
(20, 'News page  right column    300 * 250'),
(21, 'Destination Homepage footer banner 1200 * 100'),
(22, 'Destination  Homepage right column 300 * 250'),
(23, 'Destination City page footer banner  1200 * 100'),
(24, 'Destination City page right column 300 * 250'),
(25, 'Destination City categories footer banner 1200 * 100'),
(26, 'Destination City categories  right column 300 * 250'),
(27, 'Destination information page footer banner 1200 * 100'),
(28, 'Destination information page  right column 300 * 250'),
(29, 'BLOG  Homepage footer banner  1200 * 100'),
(30, 'BLOG  Homepage right column  300 * 250'),
(31, 'BLOG City page footer banner 1200 * 100'),
(32, 'BLOG City page right column   300 * 250'),
(33, 'BLOG City categories footer banner  1200 * 100'),
(34, 'BLOG City categories  right column  300 * 250'),
(35, 'BLOG  Article footer banner 1200 * 100'),
(36, 'BLOG  Article right column  300 * 250'),
(37, 'Emagazine Home footer banner  1200 * 100'),
(38, 'Emagazine Home right column 300 * 250'),
(39, 'Emagazine Detail page footer banner 1200 * 100'),
(40, 'Emagazine Detail page right column  300 * 250'),
(41, 'Apps Home footer banner  1200 * 100'),
(42, 'Apps Home right column  300 * 250'),
(43, 'Apps Detail page footer banner 1200 * 100'),
(44, 'Apps Detail page right column  300 * 250'),
(45, 'Video Home footer banner   1200 * 100'),
(46, 'Video Home right column   300 * 250'),
(47, 'USER DIRECTORY PAGE Home right column  300 * 250');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_blog`
--

CREATE TABLE IF NOT EXISTS `dbc_blog` (
  `id` int(11) NOT NULL,
  `type` char(30) NOT NULL,
  `featured_img` char(200) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `category` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `gallery` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbc_blog`
--

INSERT INTO `dbc_blog` (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`, `category`, `country`, `gallery`) VALUES
(1, 'blog', '2013-chevrolet-express-cargo-van-steel-wheels-980x4761.jpg', '{"ar":"hello world","bn":"","en":"Demo blog post en","es":"","fr":"","nl":"","pt":"","ru":"Demo blog post ru"}', '{"ar":"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\\r\\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>","bn":"","en":"<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\\r\\n<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>","es":"","fr":"","nl":"","pt":"","ru":"<p>ru demo blog post content.<\\/p>"}', 4, 1423740705, 0, '', '', ''),
(2, 'article', 'iphone42.jpg', '{"ar":"","bn":"","en":"Lorem ipsum doller sit amet","es":"","fr":"","nl":"","pt":"","ru":""}', '{"ar":"","bn":"","en":"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>","es":"","fr":"","nl":"","pt":"","ru":""}', 4, 1424087935, 0, '', '', ''),
(3, 'news', '2013-chevrolet-express-cargo-van-steel-wheels-980x4763.jpg', '{"ar":"","bn":"","en":"Lorem ipsum doller sit ametLorem ipsum doller sit amet","es":"","fr":"","nl":"","pt":"","ru":""}', '{"ar":"","bn":"","en":"<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\\r\\n<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>","es":"","fr":"","nl":"","pt":"","ru":""}', 4, 1424087980, 0, '', '', ''),
(4, 'blog', 'jewelry.jpg', '{"en":"My Blog","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439915756, 1, '', '92', ''),
(5, 'blog', 'Pamukkale-at-sunset-704x420.jpg', '{"en":"INCREDIBLE TURKEY","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<header class=\\"entry-header\\">\\r\\n<h3 class=\\"entry-title\\"><a href=\\"http:\\/\\/www.turkeytravelcentre.com\\/blog\\/pamukkale-cotton-castle-turkey\\/\\">Pamukkale : The Cotton Castle of Turkey<\\/a><\\/h3>\\r\\n<\\/header>\\r\\n<div class=\\"entry-content\\">\\r\\n<p>Pamukkale in Aegean Turkey is also called the &ldquo;Cotton Castle&rdquo;, because of the white, cottony appearance of the mineral bath spas that abound the province, which is rich in calcium. Known as a &ldquo;spa town&rdquo; since the Roman era, tourists travel to Pamukkale to relax in warm, soothing and therapeutic waters in the myriad spas<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1440002210, 1, '7', '92', '0'),
(6, 'blog', 'Derinkuyu-underground-city.jpg', '{"en":"The Pride of Cappadocia","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<h3>There are more than 40 underground cities in Cappadocia.&nbsp; These underground settlements were made common in the ancient years, especially during the Hittite period when the region always found itself under siege by looters and marauders.<\\/h3>\\r\\n<h3><span style=\\"font-size: 11px;\\">Possibly the most remarkable of these underground cities is the Derinkuyu Underground City as it is the biggest and deepest subterranean dwelling in&nbsp;<\\/span><a style=\\"font-size: 11px;\\" title=\\"Four Extremely Good Reasons to Visit Cappadocia\\" href=\\"http:\\/\\/www.turkeytravelcentre.com\\/blog\\/four-extremely-good-reasons-to-visit-cappadocia\\/\\" target=\\"_blank\\">Cappadocia<\\/a><span style=\\"font-size: 11px;\\">.<\\/span><\\/h3>\\r\\n<h3>It has 11 floors and most rooms are used for storage of wine and oil.&nbsp; While most underground cities were used for storage, there is a floor in Derinkuyu that is believed to have been used for religious studies and ceremonies.<\\/h3>\\r\\n<p>&nbsp;<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442673543, 1, 'dfsgshfshdfsyh578', 'sdfdgdgdftfgdg', 'false'),
(7, 'blog', 'Balikli-Gol-in-Sanliurfa.jpg', '{"en":"The Pool of Sacred Fish in Urfa","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>One of&nbsp;<a title=\\"Sanliurfa &ndash; Abraham, Beehive Houses, and Ancient Settlements\\" href=\\"http:\\/\\/www.turkeytravelcentre.com\\/blog\\/sanliurfa-abraham-beehive-houses-ancient-settlements\\/\\">Urfa&rsquo;s<\\/a>&nbsp;main attractions is the Sacred Fish Pool inhabited by thousands of fish. The Sacred Fish Pool can be found in the courtyard of the Halil-ur-Rahman mosque, which dates back to 1211.<\\/p>\\r\\n<p>What makes the Sacred Fish Pool popular aren&rsquo;t only the fishes or the colorful gardens that surround it, but its historical significance. The location of the Sacred Fish Pool is the spot where the brutal King Nimrod threw Abraham into deathly flames.<\\/p>\\r\\n<p>History is often partnered with legends and with the Sacred Fish Pool, it is believed that heaven&rsquo;s gates will open when a white fish is spotted.<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442504549, 1, 'abcd', 'fdgdfd', 'false'),
(8, 'news', 'ankara.JPG', '{"en":"ANKARA\\u2019DA KONGRE TUR\\u0130ZM\\u0130 ATA\\u011eI","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<div><strong>ATO&rsquo;NUN D&Uuml;ZENLED\\u0130\\u011e\\u0130 VE &Ccedil;OK SAYIDA KAMU, &Ouml;ZEL SEKT&Ouml;R VE S\\u0130V\\u0130L TOPLUM KURULU\\u015eUNUN KATILDI\\u011eI &ldquo;ANKARA&rsquo;DA KONGRE TUR\\u0130ZM\\u0130 ORTAK AKIL ARAMA TOPLANTISI&rdquo;NDAN BA\\u015eKENT \\u0130&Ccedil;\\u0130N &Ouml;NEML\\u0130 KARARLAR &Ccedil;IKTI. TOPLANTIDA ANKARA&rsquo;NIN REKLAM VE TANITIMI \\u0130&Ccedil;\\u0130N &Ouml;NCEL\\u0130KLE &ldquo;TANITIM &Uuml;ST KURULU&rdquo; KURULMASI KARARLA\\u015eTIRILDI.&nbsp;<\\/strong><\\/div>\\r\\n<div>&nbsp;<\\/div>\\r\\n<p>&nbsp;<strong>Ankara Ticaret Odas\\u0131&rsquo;n\\u0131n (ATO)<\\/strong>&nbsp;Ba\\u015fkent&rsquo;i kongre turizmi merkezi haline getirmek i&ccedil;in yol haritas\\u0131 belirlemek ve yap\\u0131lacak &ccedil;al\\u0131\\u015fmalara t&uuml;m taraflar\\u0131 dahil etmek amac\\u0131yla d&uuml;zenledi\\u011fi&nbsp;<strong>&ldquo;Ankara&rsquo;da Kongre Turizmi Ortak Ak\\u0131l Arama Toplant\\u0131s\\u0131&rdquo;<\\/strong>ndan &ouml;nemli kararlar &ccedil;\\u0131kt\\u0131.&nbsp;<br \\/>&nbsp;<br \\/>21-22 Nisan 2015 tarihlerinde Ankara Sheraton Oteli&rsquo;nde d&uuml;zenlenen toplant\\u0131n\\u0131n sonu&ccedil; bildirgesi yay\\u0131nland\\u0131. Toplant\\u0131ya, Ankara Valili\\u011fi, Ankara B&uuml;y&uuml;k\\u015fehir Belediyesi, &Ccedil;ankaya Belediyesi, Beypazar\\u0131 Belediyesi, Haymana Belediyesi, Kazan Belediyesi, Polatl\\u0131 Belediyesi, \\u0130l K&uuml;lt&uuml;r ve Turizm M&uuml;d&uuml;rl&uuml;\\u011f&uuml;, \\u0130l Sa\\u011fl\\u0131k M&uuml;d&uuml;rl&uuml;\\u011f&uuml;, Gen&ccedil;lik ve Spor \\u0130l M&uuml;d&uuml;rl&uuml;\\u011f&uuml;, &Ccedil;evre ve \\u015eehircilik \\u0130l M&uuml;d&uuml;rl&uuml;\\u011f&uuml;, Ankara Kalk\\u0131nma Ajans\\u0131, Ankara Devlet Tiyatrolar\\u0131 M&uuml;d&uuml;rl&uuml;\\u011f&uuml;, T&uuml;rk Hava Yollar\\u0131, Esenbo\\u011fa Havaliman\\u0131, T&Uuml;RSAB, Ankara Sanayi Odas\\u0131, &uuml;niversiteler, oteller, hastaneler, fuar firmalar\\u0131, turizm firmalar\\u0131, seyahat acenteleri ve sivil toplum &ouml;rg&uuml;t&uuml; temsilcileri kat\\u0131ld\\u0131...<\\/p>\\r\\n<p>&nbsp;<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439914432, 0, '7', '92', ''),
(9, 'news', 'Osmanbey-6.jpg', '{"en":"\\u015eEHR\\u0130N EN G\\u00dcZEL ZAMANI","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p><strong>\\u0130stanbul Shopping Fest 6-28 Haziran 2015<\\/strong><\\/p>\\r\\n<p><strong>Avrupa&rsquo;n\\u0131n en b&uuml;y&uuml;leyici \\u015fehirlerinden biri olan \\u0130stanbul, bu y\\u0131l be\\u015fincisi d&uuml;zenlenecek Shopping Fest ile unutulmaz bir &lsquo;\\u0130stanbul&rsquo; deneyimi ile al\\u0131\\u015fveri\\u015f zevkini bir arada sunuyor. 6-28 Haziran tarihlerinde ger&ccedil;ekle\\u015ftirilecek festival, indirim ve kampanyalar\\u0131n yan\\u0131 s\\u0131ra, \\u0130stanbul&rsquo;u keyifle ya\\u015fay\\u0131p ke\\u015ffetmenizi sa\\u011flayacak etkinliklerle &ouml;ne &ccedil;\\u0131kacak.<\\/strong><\\/p>\\r\\n<p>\\u0130stanbul&rsquo;un zengin tarihi ge&ccedil;mi\\u015fini, k&uuml;lt&uuml;r&uuml;n&uuml;, mutfak sanat\\u0131n\\u0131, al\\u0131\\u015fveri\\u015f ve e\\u011flenceyle bulu\\u015fturan \\u0130stanbul Shopping Fest, bu y\\u0131l 6-28 Haziran tarihleri aras\\u0131nda be\\u015finci kez d&uuml;zenlenecek. D&uuml;nyan\\u0131n en g&ouml;z al\\u0131c\\u0131 \\u015fehirlerinden biri olan \\u0130stanbul&rsquo;da, bu 23 g&uuml;n boyunca akl\\u0131n\\u0131za ve kalbinize hitap eden pek &ccedil;ok heyecan verici deneyim ya\\u015fayacak, unutamayaca\\u011f\\u0131n\\u0131z bir maceraya at\\u0131lacaks\\u0131n\\u0131z. Oryantal ruhunu Bat\\u0131&rsquo;n\\u0131n dinamizmiyle birle\\u015ftiren ve herkes i&ccedil;in b&uuml;y&uuml;l&uuml; bir d&uuml;nyaya d&ouml;n&uuml;\\u015fen \\u0130stanbul, bu kez de \\u0130stanbul Shopping Fest ile size al\\u0131\\u015fveri\\u015f keyfi, e\\u011flence ve s&uuml;rprizlerle dolu bir atmosferin kap\\u0131lar\\u0131n\\u0131 aralayacak.<\\/p>\\r\\n<p>\\u0130stanbul Shopping Fest boyunca, pek &ccedil;ok marka avantajl\\u0131 kampanya ve indirimleriyle size al\\u0131\\u015fveri\\u015flerinizde ayr\\u0131cal\\u0131klar sunacak. S&uuml;rpriz &ccedil;ekili\\u015fler, bu &ccedil;ekili\\u015flerin sonunda kazanaca\\u011f\\u0131n\\u0131z birbirinden g&uuml;zel hediyeler de sizleri bekliyor olacak. Bu y\\u0131l festival ve al\\u0131\\u015fveri\\u015f ruhunu \\u015fehrin her yerine ta\\u015f\\u0131yacak olan \\u0130stanbul Shopping Fest, 6-28 Haziran s&uuml;resince sadece AVM&rsquo;lerde de\\u011fil, \\u015fehrin de\\u011fi\\u015fik merkezi noktalar\\u0131nda konserler, yar\\u0131\\u015fmalar ve &ccedil;ok &ouml;zel defileler d&uuml;zenleyecek. Rengarenk s&uuml;sl&uuml; caddeleri, arad\\u0131\\u011f\\u0131n\\u0131z her \\u015feyi ayn\\u0131 &ccedil;at\\u0131 alt\\u0131nda, &uuml;stelik uygun fiyatlara bulabilece\\u011finiz modern al\\u0131\\u015fveri\\u015f merkezleri, sokaklar\\u0131nda y&uuml;r&uuml;rken sizi bekleyen s&uuml;rprizlerle keyiflenece\\u011finiz bir \\u0130stanbul olacak bu kez kar\\u015f\\u0131n\\u0131zda. Ve elbette bu g&uuml;zel kent, ke\\u015ffedilmeye de\\u011fer her bir k&ouml;\\u015fesiyle sizi yeni deneyimlere ve maceralara &ccedil;a\\u011f\\u0131racak.<br \\/>Ger&ccedil;ek bir festival, benzersiz bir ya\\u015fam ve al\\u0131\\u015fveri\\u015f deneyimine tan\\u0131k olmak istiyorsan\\u0131z, 6-28 Haziran 2015 tarihlerini ajandan\\u0131za kaydedin ve daha fazlas\\u0131n\\u0131 bulmak i&ccedil;in siz de \\u0130stanbul&rsquo;a gelin!<\\/p>\\r\\n<p>\\u0130stanbul Shopping Fest&rsquo;te planlanan b&uuml;t&uuml;n s&uuml;rprizleri takip edebilmek i&ccedil;in, sayfalar\\u0131m\\u0131z\\u0131 ziyaret edebilirsiniz:<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442587546, 1, 'abcd', 'test', '["Lighthouse18.jpg","Tulips5.jpg","Hydrangeas2.jpg","Desert3.jpg"]'),
(10, 'article', 'istanbul-dunya-.jpg', '{"en":"\\u0130stanbul, d\\u00fcnya kongre tercihlerinde ilk 10\\u2019da yerini ald\\u0131!","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p class=\\"ecxMsoNoSpacing\\">Uluslararas\\u0131 kongre sekt&ouml;r&uuml; birli\\u011fi olan ve d&uuml;nya kongre turizminin ilgiyle takip etti\\u011fi ICCA&rsquo;n\\u0131n her y\\u0131l May\\u0131s ay\\u0131nda yay\\u0131nlanan ve bir &ouml;nceki y\\u0131l\\u0131n istatistiki verilerinden haz\\u0131rlanan ve destinasyon \\u015fehirleri aras\\u0131nda merakla beklenen rapor a&ccedil;\\u0131kland\\u0131. 2014 y\\u0131l\\u0131n\\u0131n istatistiklerine g&ouml;re d&uuml;nya kongre \\u015fehirleri aras\\u0131nda destinasyon tercihlerinde \\u0130stanbul, ger&ccedil;ekle\\u015ftirilen 130 kongre ile d&uuml;nya 9.su oldu.<\\/p>\\r\\n<p class=\\"ecxMsoNoSpacing\\"><strong>&ldquo;\\u0130stanbul, d&uuml;nya &ccedil;ap\\u0131nda bir kongre \\u015fehridir&rdquo;<\\/strong><\\/p>\\r\\n<p class=\\"ecxMsoNoSpacing\\">Konuyla ilgili bilgi veren \\u0130stanbul Ticaret Odas\\u0131, \\u0130stanbul Kongre ve Ziyaret&ccedil;i B&uuml;rosu-ICVB Ba\\u015fkan\\u0131 \\u0130brahim &Ccedil;a\\u011flar &ldquo;\\u0130stanbul&acute;da kongre say\\u0131s\\u0131 son 10 y\\u0131lda % 280 artt\\u0131, bu ba\\u015far\\u0131n\\u0131n y&uuml;kselerek devam edece\\u011fine inan\\u0131yorum. \\u0130stanbul Kongre ve Ziyaret&ccedil;i B&uuml;rosu&ndash;ICVB olarak \\u0130stanbul&rsquo;un kongre turizmi alan\\u0131nda tam anlam\\u0131yla tercih edilen bir var\\u0131\\u015f noktas\\u0131 haline gelmesi ve pazar pay\\u0131n\\u0131n her b&uuml;y&uuml;kl&uuml;kteki kongre i&ccedil;in art\\u0131r\\u0131lmas\\u0131na katk\\u0131da bulunmak i&ccedil;in &ccedil;al\\u0131\\u015fmalar\\u0131m\\u0131z &ccedil;ok y&ouml;nl&uuml; devam ediyor.\\u0130stanbul, mevcut de\\u011ferlerini bir turizm potansiyeli olarak harekete ge&ccedil;irmek konusunda art\\u0131k bir refleks kazanm\\u0131\\u015ft\\u0131r. Bunun olu\\u015fumunda ICVB&rsquo;nin s&uuml;rd&uuml;rd&uuml;\\u011f&uuml; etkin tan\\u0131t\\u0131m ve pazarlama &ccedil;al<a target=\\"_blank\\" name=\\"_GoBack\\"><\\/a>\\u0131\\u015fmalar\\u0131n\\u0131n rol&uuml; b&uuml;y&uuml;kt&uuml;r. Ayr\\u0131ca isabetli kamu ve &ouml;zel sekt&ouml;r yat\\u0131r\\u0131mlar\\u0131 \\u0130stanbul&rsquo;un s\\u0131&ccedil;ramas\\u0131na olanak sa\\u011flam\\u0131\\u015ft\\u0131r. \\u0130stanbul alg\\u0131s\\u0131 t&uuml;m d&uuml;nyada y&uuml;kseldi ve &ldquo;Trend Destinasyon&rdquo; haline geldi. \\u0130stanbul, kongre turizminde d&uuml;nya 9.su oldu. Bu b&uuml;y&uuml;k bir ba\\u015far\\u0131. \\u0130stanbul sahip oldu\\u011fu ula\\u015f\\u0131labilirlik, toplant\\u0131 ve kongre merkezlerinin kalitesi ve say\\u0131s\\u0131, konaklama olanaklar\\u0131ndaki kalite ve alternatifler, tarih-k&uuml;lt&uuml;r ve do\\u011fa gibi kendi &ouml;z zenginlikleri ve hizmet kalitesi ile d&uuml;nya &ccedil;ap\\u0131nda bir kongre \\u015fehridir. \\u0130stanbul ayr\\u0131ca T&uuml;rkiye kongre sekt&ouml;r&uuml;n&uuml;n lokomotifi durumundad\\u0131r&rdquo; dedi.<\\/p>\\r\\n<p class=\\"ecxMsoNoSpacing\\">\\u0130stanbul, ICCA istatistiklerine g&ouml;re 2000&rsquo;li y\\u0131llar\\u0131n ba\\u015f\\u0131nda 40. s\\u0131rada yer al\\u0131rken, 2009 y\\u0131l\\u0131nda 17. s\\u0131raya y&uuml;kseldi, 2010 y\\u0131l\\u0131ndan bug&uuml;ne y&uuml;kselerek tercihlerde &uuml;st s\\u0131ralarda yer alan \\u0130stanbul, 2014 y\\u0131l\\u0131 raporunda da d&uuml;nya kongre turizminin destinasyon tercihlerinde parlayan y\\u0131ld\\u0131z\\u0131 olarak 9. s\\u0131rada yer ald\\u0131.<\\/p>\\r\\n<p class=\\"ecxMsoNoSpacing\\"><strong>&ldquo;Hedefimiz ilk 5 aras\\u0131nda yer almak&rdquo;<\\/strong><\\/p>\\r\\n<p class=\\"ecxMsoNoSpacing\\">Toplam ziyaret&ccedil;i say\\u0131s\\u0131 anlam\\u0131nda da \\u0130stanbul&rsquo;un, Avrupa''n\\u0131n en &ccedil;ok ziyaret edilen 3''&uuml;nc&uuml; kenti konumunda oldu\\u011funu belirten \\u0130brahim &Ccedil;a\\u011flar, &ldquo;\\u0130stanbul''u d&uuml;nyan\\u0131n en &ccedil;ok ziyaret edilen kenti yapma yolunda &ccedil;al\\u0131\\u015fmalar da devam edecek. 1997 y\\u0131l\\u0131nda a&ccedil;\\u0131lan \\u0130stanbul Kongre ve Ziyaret&ccedil;i B&uuml;rosu-ICVB, bug&uuml;ne kadar &ccedil;ok &ouml;nemli at\\u0131l\\u0131mlar yapt\\u0131. Tabii biz bunu ald\\u0131\\u011f\\u0131m\\u0131zdan daha iyi bir noktada b\\u0131rakmak i&ccedil;in u\\u011fra\\u015faca\\u011f\\u0131z. 2023 y\\u0131l\\u0131 i&ccedil;in hedefimiz ilk 5 \\u015fehir aras\\u0131nda yer alabilmek&rdquo; dedi.<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442854604, 1, '4', '1', 'false'),
(11, 'news', 'oteller-rus-turist-cekmek-icin-arayista.jpg', '{"en":"Oteller, Rus turist \\u00e7ekmek i\\u00e7in aray\\u0131\\u015fta","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<h2 class=\\"haberozeti\\">Rusya da ya\\u015fanan ekonomik kriz sonras\\u0131nda Rus turistin &uuml;lkemize gelmesini sa\\u011flamak i&ccedil;in verilen devlet desteklerinin yan\\u0131nda Akdeniz B&ouml;lgesi&rsquo; nde ki oteller de &ouml;zellikle Rus turisti hedefleyen etkinliklere imza at\\u0131yorlar<\\/h2>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>2014 y\\u0131l\\u0131nda T&uuml;rkiye&rsquo;nin en e\\u011flenceli oteli se&ccedil;ilen Calista Luxury Resort, Rus May\\u0131s Bayram\\u0131 sebebi ile&nbsp; d&uuml;zenledi\\u011fi konser ve partilerle Belek gecelerini renklendirdi.<\\/p>\\r\\n<p>Otel Genel M&uuml;d&uuml;r&uuml; Ali K\\u0131z\\u0131lda\\u011f; &ldquo;Rusya&rsquo;n\\u0131n en &ccedil;ok dinlenen radyosu &ldquo;Ruskaya Radio&rdquo; ve &ldquo;ru.tv&rdquo; ile &ouml;zel bir anla\\u015fma yapt\\u0131k. Kriz d&ouml;neminde tatil yapan misafirimize Rusya&rsquo;da ki problemlerini unuttural\\u0131m istedik. Sezon a&ccedil;\\u0131l\\u0131\\u015f\\u0131 da say\\u0131labilecek bu konser ve partiler sezon boyunca s&uuml;recek&rdquo; dedi.<\\/p>\\r\\n<p>Otelde may\\u0131s bayram\\u0131 boyunca Via Gra, Banderos, Gradusi, Mali, Loya, DJ. MEG, dj. Olen&rsquo; in gibi bir &ccedil;ok&nbsp; &uuml;nl&uuml; Rus \\u015fark\\u0131c\\u0131 ve DJ&rsquo; ler sahne ald\\u0131<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439914348, 0, '6', '', ''),
(12, 'article', '', '{"en":"\\u0130novasyon Her Yerde","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p><img src=\\"http:\\/\\/www.konutveyapi.com\\/images\\/yazarlar\\/meral_1.jpg\\" alt=\\"Meral T&uuml;rke\\u015f\\" width=\\"138\\" height=\\"190\\" \\/><\\/p>\\r\\n<p>Bir grup insan u&ccedil;akta yolculuk ediyormu\\u015f. Pilot u&ccedil;a\\u011f\\u0131n d&uuml;\\u015ft&uuml;\\u011f&uuml;n&uuml; s&ouml;ylemi\\u015f ama u&ccedil;akta bir para\\u015f&uuml;t eksikmi\\u015f. Adam\\u0131n biri ben Fransa&rsquo;n\\u0131n ba\\u015fkan\\u0131y\\u0131m ya\\u015famal\\u0131y\\u0131m, deyip para\\u015f&uuml;t&uuml;n birini al\\u0131p atlam\\u0131\\u015f.<br \\/>Ba\\u015fka bir adam o Fransa&rsquo;n\\u0131n ba\\u015fkan\\u0131ysa bende Amerika&rsquo;n\\u0131n ba\\u015fkan\\u0131y\\u0131m deyip o da atlam\\u0131\\u015f.<br \\/>Adam\\u0131n biride ben d&uuml;nyan\\u0131n en zeki insan\\u0131y\\u0131m demi\\u015f o da atlam\\u0131\\u015f. Ve u&ccedil;akta en son sadece bir ya\\u015fl\\u0131 bir de gen&ccedil; adam kalm\\u0131\\u015f. Ya\\u015fl\\u0131 adam, &lsquo;O\\u011flum benim aya\\u011f\\u0131m\\u0131n biri &ccedil;ukurda sen atla&rsquo; demi\\u015f.<br \\/>Gen&ccedil; delikanl\\u0131 &lsquo;Amca ikimizde kurtulaca\\u011f\\u0131z&rsquo; demi\\u015f.Ya\\u015fl\\u0131 adam da, &lsquo;Nas\\u0131l olacak bu&rsquo; demi\\u015f.Gen&ccedil; &ccedil;ocukta, &lsquo;Hani o ben d&uuml;nyan\\u0131n en zeki insan\\u0131y\\u0131m diyerek atlayan adam vard\\u0131 ya o benim s\\u0131rt &ccedil;antam\\u0131 al\\u0131p da atlad\\u0131&rsquo; demi\\u015f.&nbsp;<br \\/>\\u015eakas\\u0131 bir yana zeka i\\u015f hayat\\u0131nda ger&ccedil;ekten &ccedil;ok &ouml;nemli bir unsur. Ama art\\u0131k sadece ticaret zekas\\u0131 kesinlikle yetmiyor. Liderlik s&uuml;rd&uuml;r&uuml;lebilir olmal\\u0131. Lider, Pazar ara\\u015ft\\u0131rmalar\\u0131n gereken yat\\u0131r\\u0131m\\u0131 yapar. &Uuml;retimden ba\\u015flayarak rekabet avantaj\\u0131n\\u0131 elinde tutacak yenilik&ccedil;i &ccedil;&ouml;z&uuml;mler bulur. G&uuml;n&uuml;m&uuml;z&uuml;n lideri bir de inovasyona de\\u011fer verir.<br \\/>\\u0130&ccedil;inde bulundu\\u011fumuz y\\u0131l, in\\u015faat sekt&ouml;r&uuml; a&ccedil;\\u0131s\\u0131ndan maliyet analizlerinin ve yat\\u0131r\\u0131m planlar\\u0131n\\u0131n ge&ccedil;mi\\u015fe oranla daha dikkatli yap\\u0131lmas\\u0131 gereken bir y\\u0131l olacak. Bu daha y\\u0131l\\u0131n ikinci ay\\u0131nda belli oldu. Ayakta kalmak ve rekabet etmek i&ccedil;in al\\u0131c\\u0131lar\\u0131n &uuml;r&uuml;nlerimizi tercih etmelerini sa\\u011flamal\\u0131y\\u0131z. Tercih edilmek i&ccedil;in &uuml;r&uuml;nlerimize ekledi\\u011fimiz &ouml;zelliklerin ismi ise, inovasyondur. \\u0130novasyon hem \\u015firket i&ccedil;i hem de \\u015firket d\\u0131\\u015f\\u0131ndan fikirlerle ger&ccedil;ekle\\u015fir.<br \\/>\\u0130n\\u015faat sekt&ouml;r&uuml; i&ccedil;in, mevcut ekolojiinin korunarak yeni imar planlar\\u0131n\\u0131n a&ccedil;\\u0131lmas\\u0131,&ccedil;ok b&uuml;y&uuml;k &ouml;nem arz ediyor. Bu s&uuml;recin i\\u015fleyi\\u015fine y&ouml;n verecek altyap\\u0131, ula\\u015f\\u0131m, enerji gibi farkl\\u0131 ba\\u015fl\\u0131klardaki &ccedil;&ouml;z&uuml;mlemelerin uzun vadeli hizmet verecek \\u015fekilde planlanmas\\u0131 da, sekt&ouml;re &ouml;nemli katk\\u0131lar sa\\u011flayacak.T&uuml;rk in\\u015faat sekt&ouml;r&uuml;n&uuml;n s&uuml;rd&uuml;r&uuml;lebilir b&uuml;y&uuml;me sa\\u011flayabilmesi i&ccedil;in, katma de\\u011feri y&uuml;ksek &ccedil;&ouml;z&uuml;mler &uuml;retmesi \\u015fart. Kar\\u015f\\u0131la\\u015ft\\u0131\\u011f\\u0131m\\u0131z t&uuml;m ekonomik sohbetlerde inovasyon kelimesiyle kar\\u015f\\u0131 kar\\u015f\\u0131ya kal\\u0131yoruz. \\u015eirketlerin &uuml;r&uuml;nlerini de\\u011fi\\u015ftirmeleri ve yenilemesine bizler k\\u0131saca \\u0130novasyon diyoruz. Ara\\u015ft\\u0131rma geli\\u015ftirme inovasyon i&ccedil;in gereken en &ouml;nemli faaliyetlerden biridir. Ancak Ar-ge&rsquo;yi yapanlar\\u0131n giri\\u015fimcilik niteli\\u011fi yoksa, de\\u011fer yarat\\u0131lamaz. \\u0130novasyon teknolojik, organizasyonel ve pazarlama olarak &uuml;&ccedil;e ayr\\u0131l\\u0131r. \\u0130novasyon icat de\\u011fildir. \\u0130catlar\\u0131n sonu&ccedil;lar\\u0131ndan yararlan\\u0131labilir. Ancak as\\u0131l &ouml;nemli olan ekonomik getirisi olan, hen&uuml;z yap\\u0131lmam\\u0131\\u015f, bilinmeyen bir\\u015feyleri yapmakt\\u0131r. &Ouml;rnek olarak Sony kulakl\\u0131l\\u0131 kaset&ccedil;alar (Walkman) dan milyarlarca dolar kazanm\\u0131\\u015ft\\u0131r.&nbsp;<br \\/>Firmalar\\u0131n inovatif olmas\\u0131 i&ccedil;in \\u015fu soruya cevap vermeleri gerekir. &lsquo;T&uuml;m kaynaklar\\u0131m\\u0131z\\u0131n kapasitesini ne t&uuml;r bir de\\u011fi\\u015fiklik art\\u0131r\\u0131r? Ba\\u015far\\u0131l\\u0131 bir inovasyon, farkl\\u0131 d&uuml;\\u015f&uuml;nmek ve farkl\\u0131 yapmakla ger&ccedil;ekle\\u015fir. Einstein&rsquo;in dedi\\u011fi gibi &lsquo;Bug&uuml;n yaratt\\u0131\\u011f\\u0131m\\u0131z d&uuml;nyan\\u0131n problemleri, bu problemleri yarat\\u0131rken d&uuml;\\u015f&uuml;nd&uuml;\\u011f&uuml;m&uuml;z \\u015fekilde d&uuml;\\u015f&uuml;n&uuml;rsek &ccedil;&ouml;z&uuml;lemezler. Bir \\u015feyleri farkl\\u0131 yapmak gerek.<br \\/>\\u0130n\\u015faat sekt&ouml;r&uuml;n&uuml;n geli\\u015fmesi i&ccedil;in bir &ouml;nemli konuya daha dikkat &ccedil;ekmek istiyorum. M&uuml;\\u015fteri \\u0130li\\u015fkileri Y&ouml;netimi (M\\u0130Y). M\\u0130Y, strateji geli\\u015ftirme ve de\\u011fer yaratma s&uuml;recini kapsar. M&uuml;teahhit firmalar\\u0131n yan\\u0131tlamas\\u0131 gereken sorular ise \\u015funlar: &lsquo;Biz hangi i\\u015fi yap\\u0131yoruz? Hangi m&uuml;\\u015fterilere hizmet ediyoruz. Bu m&uuml;\\u015fterilere nas\\u0131l de\\u011fer yaratabilir ve bu yarat\\u0131lan de\\u011feri nas\\u0131l iletebiliriz?&rsquo; Yani m&uuml;\\u015fteri memnuniyeti &uuml;zerinde &ccedil;al\\u0131\\u015fmak gerekiyor. &Ouml;ncelikle,<br \\/>1-Analitik M\\u0130Y yap\\u0131lmal\\u0131. Yani m&uuml;\\u015fteri ili\\u015fkileriyle ilgili bilgi toplanmal\\u0131. &Ouml;rne\\u011fin bir m&uuml;\\u015fteri datas\\u0131 olu\\u015fturulmal\\u0131.&nbsp;<br \\/>2-\\u0130\\u015flevsel M\\u0130Y yap\\u0131lmal\\u0131: Sat\\u0131\\u015f, pazarlama ve hizmeti i&ccedil;eren &ouml;n ofis i\\u015f s&uuml;re&ccedil;lerine destek sa\\u011flar.<br \\/>3-\\u0130\\u015fbirlik&ccedil;i M\\u0130Y. M&uuml;\\u015fteri konular\\u0131, sorular\\u0131, \\u015fikayetlerine etkili destek ve duyarl\\u0131l\\u0131k i&ccedil;in altyap\\u0131 olu\\u015fturarak m&uuml;\\u015fteriye verilen destek ve &ccedil;ok kanalll\\u0131 hizmeti koordine etmektir.&nbsp;<br \\/>4-M\\u0130Y veri tabanl\\u0131 bir pazarlama y&ouml;ntemi ve s&uuml;recidir. M\\u0130Y&rsquo;de m&uuml;\\u015fteri ba\\u011fl\\u0131l\\u0131\\u011f\\u0131 olu\\u015fturma plan\\u0131 vard\\u0131r.&nbsp;<br \\/>Son olarak; M&uuml;\\u015fteri mutlulu\\u011fu: Bekledi\\u011fi performans - Elde etti\\u011fi performans \\u015feklinde form&uuml;le edilir.<br \\/>Bir konu daha var. O da y&uuml;zde y&uuml;z m&uuml;\\u015fteri memnuniyeti &uuml;zerine &ccedil;al\\u0131\\u015fma. \\u015eikayet y&ouml;netimi s&uuml;reci de bunun arkas\\u0131ndan geliyor ki, bu da gelecek ayki konumuz olsun.&nbsp;<br \\/>T&uuml;m okuyucular\\u0131ma iyi haftalar diliyorum.&nbsp;<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439917453, 1, '10', '92', ''),
(13, 'article', 'Penguins2.jpg', '{"en":"Karma projeler i\\u00e7in imar planlar\\u0131 yeniden d\\u00fczenlenmeli","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p><img src=\\"http:\\/\\/www.konutveyapi.com\\/images\\/yazarlar\\/Basri_akyildiz.jpg\\" alt=\\"Basri Aky\\u0131ld\\u0131z\\" width=\\"138\\" height=\\"190\\" \\/><\\/p>\\r\\n<p>2001 y\\u0131l\\u0131ndan itibaren T&uuml;rk in\\u015faat sekt&ouml;r&uuml;yle birlikte, Bursa in\\u015faat sekt&ouml;r&uuml; de h\\u0131z kazanm\\u0131\\u015ft\\u0131r. Sekt&ouml;rdeki h\\u0131zl\\u0131 y&uuml;kseli\\u015f farkl\\u0131 sekt&ouml;rlerdeki yat\\u0131r\\u0131mc\\u0131n\\u0131n in\\u015faata y&ouml;nelmesine sebep olmu\\u015ftur.<\\/p>\\r\\n<p>Bursa yap\\u0131 stokunun b&uuml;y&uuml;k bir b&ouml;l&uuml;m&uuml;n&uuml;n ka&ccedil;ak, &ccedil;arp\\u0131k ve m&uuml;hendislik hizmeti almam\\u0131\\u015f g&uuml;vensiz yap\\u0131lardan olu\\u015fmas\\u0131, son y\\u0131llarda ya\\u015fad\\u0131\\u011f\\u0131m\\u0131z ve can kayb\\u0131na neden olan depremlerle birlikte g&uuml;venli, modern ve ya\\u015fanabilir yeni konutlara olan talep artm\\u0131\\u015ft\\u0131r. Yeni konuta olan talebin art\\u0131\\u015f\\u0131yla birlikte in\\u015faat sekt&ouml;r&uuml; i&ccedil;inde konut in\\u015faatlar\\u0131n\\u0131n pay\\u0131 da artm\\u0131\\u015ft\\u0131r. Bu b&uuml;y&uuml;me sekt&ouml;r i&ccedil;indeki rekabeti artt\\u0131rm\\u0131\\u015f ve al\\u0131c\\u0131lar\\u0131n beklentilerinin her ge&ccedil;en g&uuml;n y&uuml;kselmesine neden olmu\\u015ftur.<\\/p>\\r\\n<p>Y&uuml;kselen rekabetle birlikte daha &ccedil;ok sosyal ve k&uuml;lt&uuml;rel imk&acirc;n\\u0131 i&ccedil;inde bar\\u0131nd\\u0131ran, daha konforlu ve l&uuml;ks konut &uuml;retim yar\\u0131\\u015f\\u0131 ba\\u015flam\\u0131\\u015ft\\u0131r. Bursa&rsquo;da oldu\\u011fu gibi di\\u011fer b&uuml;y&uuml;k illerde de bu talepleri kar\\u015f\\u0131lama noktas\\u0131nda karma projeler dedi\\u011fimiz ofis, konut, AVM ve sosyal tesisleri b&uuml;nyesinde bar\\u0131nd\\u0131ran, ya\\u015fayanlar\\u0131n neredeyse t&uuml;m ihtiya&ccedil;lar\\u0131n\\u0131 yerle\\u015fke i&ccedil;erisinde kar\\u015f\\u0131layacaklar\\u0131 dev projeler kar\\u015f\\u0131m\\u0131za &ccedil;\\u0131k\\u0131yor.<\\/p>\\r\\n<p>Yat\\u0131r\\u0131mc\\u0131n\\u0131n ilgisini cezbeden karma projelerin al\\u0131c\\u0131n\\u0131n her t&uuml;rl&uuml; beklenti ve talebini kar\\u015f\\u0131lamas\\u0131 bu t&uuml;r projelere olan ilgiyi de her ge&ccedil;en g&uuml;n artt\\u0131rmaktad\\u0131r.<\\/p>\\r\\n<p>\\u0130stanbul&rsquo;daki &ouml;rnekleri her ge&ccedil;en g&uuml;n artmakta olan karma projeleri, Bursa''da da yava\\u015f yava\\u015f g&ouml;rmeye ba\\u015flayaca\\u011f\\u0131z gibi g&ouml;z&uuml;k&uuml;yor. Bursa&rsquo;daki ilk &ouml;rneklerinden biri Koru Park olan karma projeler i&ccedil;in uygun planlamalar yap\\u0131lmad\\u0131\\u011f\\u0131 dolay\\u0131 3-4 katl\\u0131 bir konut b&ouml;lgesinde bir anda 20-30 katl\\u0131 devasa projeler y&uuml;kselebiliyor.<\\/p>\\r\\n<p>Hem al\\u0131c\\u0131n\\u0131n hem de yat\\u0131r\\u0131mc\\u0131n\\u0131n ilgisinin y&ouml;neldi\\u011fi karma projeler gibi yat\\u0131r\\u0131mlar\\u0131n kent planlamas\\u0131na uygun ve sa\\u011fl\\u0131kl\\u0131 olarak &uuml;retilebilmesi i&ccedil;in mevcut imar planlar\\u0131m\\u0131zda g&uuml;n&uuml;n ihtiya&ccedil;lar\\u0131n\\u0131 kar\\u015f\\u0131layacak gerekli d&uuml;zenlemeler yap\\u0131lmal\\u0131. Sa\\u011fl\\u0131kl\\u0131 kentle\\u015fmenin &ouml;n&uuml;n&uuml; a&ccedil;acak yeni planlama alanlar\\u0131 olu\\u015fturulmal\\u0131. &Ccedil;arp\\u0131k ve ka&ccedil;ak yap\\u0131la\\u015fman\\u0131n yo\\u011fun oldu\\u011fu b&ouml;lgelerde de yeni yap\\u0131lacak imar planlar\\u0131yla do\\u011fal bir kentsel d&ouml;n&uuml;\\u015f&uuml;m&uuml;n &ouml;n&uuml; a&ccedil;\\u0131lmal\\u0131d\\u0131r.<\\/p>\\r\\n<p>Bursa&rsquo;n\\u0131n tarihi ve k&uuml;lt&uuml;rel dokusu dikkate al\\u0131narak planlanacak kentsel d&ouml;n&uuml;\\u015f&uuml;m alanlar\\u0131nda bu t&uuml;r karma projelerin yap\\u0131labilmesine imk&acirc;n sa\\u011flan\\u0131rsa b&ouml;lgenin daha h\\u0131zl\\u0131 d&ouml;n&uuml;\\u015f&uuml;m&uuml; ve finansman sorununun daha kolay a\\u015f\\u0131labilmesi noktas\\u0131nda etkili bir y&ouml;ntem olabilir. Ayr\\u0131ca bu b&ouml;lgelere bu t&uuml;r sosyal ve k&uuml;lt&uuml;rel i&ccedil;erikli projelerin yap\\u0131lmas\\u0131yla birlikte n&uuml;fusun kent i&ccedil;inde dengeli da\\u011f\\u0131l\\u0131m\\u0131na katk\\u0131da bulunulmu\\u015f olacak, g&uuml;n i&ccedil;erisindeki trafik hareketleri k\\u0131smen azalt\\u0131larak trafik sorununa da bir nebze olsun katk\\u0131 sa\\u011flanm\\u0131\\u015f olacakt\\u0131r.<\\/p>\\r\\n<p>Ancak Bursa i&ccedil;in karma projeler d&uuml;\\u015f&uuml;n&uuml;l&uuml;rken kentin tarihi ve k&uuml;lt&uuml;rel kimli\\u011fine uygun tasar\\u0131mlar olmas\\u0131na dikkat edilmelidir. Daha &ccedil;ok ba\\u011f\\u0131ms\\u0131z b&ouml;l&uuml;m s\\u0131\\u011fd\\u0131rabilme veya k&acirc;r\\u0131 art\\u0131rmak ad\\u0131na Bursa&rsquo;n\\u0131n ba\\u011fr\\u0131na bir han&ccedil;er daha saplamamal\\u0131y\\u0131z.&nbsp;<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439992310, 1, '9', '92', ''),
(14, 'article', '', '{"en":"Kentsel D\\u00f6n\\u00fc\\u015f\\u00fcm S\\u00fcrecinde De\\u011fi\\u015fen Dinamikler","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p><img src=\\"http:\\/\\/www.konutveyapi.com\\/images\\/yazarlar\\/nilufer_akncturk.jpg\\" alt=\\"Nilufer Akinciturk\\" width=\\"138\\" height=\\"190\\" \\/><\\/p>\\r\\n<p>G&uuml;n&uuml;m&uuml;zde &ccedil;ok farkl\\u0131 problemlerin ya\\u015fand\\u0131\\u011f\\u0131 kentsel alanlarda sorunlar\\u0131n &ccedil;&ouml;z&uuml;m&uuml; i&ccedil;in tek bir model belirlemek ve bunu &ldquo;kentsel d&ouml;n&uuml;\\u015f&uuml;m&rdquo; olarak tan\\u0131mlamak zordur. Deprem ger&ccedil;e\\u011finden yola &ccedil;\\u0131karak, fiziksel &ouml;mr&uuml; bitmi\\u015f yap\\u0131lar\\u0131n y\\u0131k\\u0131larak yeniden in\\u015faas\\u0131 d&ouml;n&uuml;\\u015f&uuml;m i&ccedil;in yetersiz bir eylemdir.<br \\/><br \\/>1970&rsquo;lerin sonuna do\\u011fru Avrupa&rsquo;n\\u0131n ekonomiyi hareketlendirme ama&ccedil;l\\u0131 ilkkentsel canland\\u0131rma kurgulu politikalar ge&ccedil;erli olmu\\u015ftur. 1980&rsquo;lerde ise, yat\\u0131r\\u0131m yapmaya te\\u015fvik daha &ouml;n plandad\\u0131r. Kentsel m&uuml;dahalelerde emlak eksenli geli\\u015fmeler, yat\\u0131r\\u0131m yapmay\\u0131 kolayla\\u015ft\\u0131ran dinamikler geli\\u015ftirilmi\\u015ftir. Bu giri\\u015fimlerin kent ve kentli i&ccedil;in sosyo k&uuml;lt&uuml;rel ve sosyo ekonomik de\\u011fi\\u015fimlerindeki &ouml;nceli\\u011fi yetersiz kalm\\u0131\\u015ft\\u0131r. Kentsel yeniden canland\\u0131rma hareketleri 2000&rsquo;li y\\u0131llarda yeniden yap\\u0131lanma, yeniden canland\\u0131rma hatta kentsel yenile\\u015fme, kentsel iyile\\u015ftirme ve daha farkl\\u0131 anlamlar y&uuml;klenen uygulama bi&ccedil;imleri ile g&uuml;ndeme gelmi\\u015ftir.<br \\/><br \\/>T&uuml;rkiye&rsquo;de kentten kente de\\u011fi\\u015fim g&ouml;steren bu konu, kentlinin nesnel ihtiya&ccedil;lar\\u0131 kadar, &ouml;znel isteklerine kadar her boyutuyla ele al\\u0131narak &ccedil;&ouml;z&uuml;lmesi gereken bir problemdir. \\u0130nsan odakl\\u0131 olarak geli\\u015fmesi gereken bu yakla\\u015f\\u0131m, tek bir modele indirgenemez. Ortak paydas\\u0131 ise; kaliteli kentsel ya\\u015fam ve mekantasar\\u0131m\\u0131d\\u0131r. Bu olgu da mimarl\\u0131k mesle\\u011fi ekseninde geli\\u015fmekle birlikle, disiplinleraras\\u0131 bir bak\\u0131\\u015f a&ccedil;\\u0131s\\u0131yla yakla\\u015f\\u0131larak teknolojik oldu\\u011fu kadar sosyolojik dinamiklerle g&uuml;&ccedil;lendirilmesi gereken stratejileri i&ccedil;erir.<br \\/><br \\/>S&uuml;rd&uuml;r&uuml;lebilir bir kentsel d&ouml;n&uuml;\\u015f&uuml;m, s&uuml;rekli iyile\\u015ftirmeye a&ccedil;\\u0131k kentlerde i&ccedil;sel ve d\\u0131\\u015fsal dinamiklerle y&ouml;nlendirilen yerle\\u015fim alanlar\\u0131nda kendine &ouml;zg&uuml; karakterleri ta\\u015f\\u0131yan modelleri yans\\u0131tmal\\u0131d\\u0131r. Yasalar, y&ouml;netmelikler \\u0131\\u015f\\u0131\\u011f\\u0131nda \\u015fekillenen insan ihtiya&ccedil;lar\\u0131 ve kent kimli\\u011fi ile b&uuml;t&uuml;nle\\u015fen bir sistemin i&ccedil;inde kentsel d&ouml;n&uuml;\\u015f&uuml;m ger&ccedil;ekle\\u015ftirilmelidir. Planlama s&uuml;recinde en &ouml;nemli ve asla g&ouml;zard\\u0131 edilmemesi gereken konu, kat\\u0131l\\u0131mc\\u0131l\\u0131kt\\u0131r. Konu ile ilgili t&uuml;m akt&ouml;rlerintemsiliyetleriylebir araya gelerek t&uuml;m giri\\u015fimlerin iyi bir y&ouml;r&uuml;ngeye oturtulmas\\u0131yla elde edilecek sa\\u011fl\\u0131kl\\u0131 bir model elde edilebilir. Bu ba\\u011flamda olu\\u015fturulan kentsel d&ouml;n&uuml;\\u015f&uuml;m modeli ana ekseni ve temel kriterleri orada ya\\u015fayanlar i&ccedil;in geli\\u015ftirilmi\\u015f, kaliteli ve sa\\u011fl\\u0131kl\\u0131 ya\\u015fam hakk\\u0131 ile tan\\u0131mlanmal\\u0131d\\u0131r. Yanl\\u0131\\u015f se&ccedil;ilen bir model, s&uuml;recin herhangi bir a\\u015famas\\u0131nda ortaya &ccedil;\\u0131kan problemlerle hedeflere ula\\u015famama tehlikesini yaratabilir.<br \\/><br \\/>Sonu&ccedil; olarak kentsel d&ouml;n&uuml;\\u015f&uuml;m s&uuml;recinin sorun odakl\\u0131 d&uuml;zenlenmesi, kentlinin her a\\u015famada s&ouml;z sahibi oldu\\u011fu temel ihtiya&ccedil;lara y&ouml;nelik ger&ccedil;ekle\\u015fmesi &ouml;nemlidir. Sosyal donat\\u0131larla beslenmi\\u015f fiziksel alanlar, bulu\\u015fmalar ve kar\\u015f\\u0131la\\u015fmalar, sosyalle\\u015fme ama&ccedil;l\\u0131 eylemler i&ccedil;in f\\u0131rsat yaratmal\\u0131d\\u0131r. Ya\\u015fl\\u0131 ile &ccedil;ocuk bir araya geldi\\u011fi gibi farkl\\u0131 gelir gruplar\\u0131nda birlikteli\\u011fi sa\\u011flanabilir. Belli bir denge ve stat&uuml;de g&uuml;n&uuml;m&uuml;z anlay\\u0131\\u015f\\u0131yla baz\\u0131 de\\u011ferlerin &ouml;rf ve adetlerin s&uuml;rd&uuml;r&uuml;lebilirli\\u011fi &ccedil;er&ccedil;evesinde tasarlanm\\u0131\\u015f alanlar yaratmak &ouml;nemlidir. Ge&ccedil;mi\\u015f mahalle k&uuml;lt&uuml;r&uuml;n&uuml; g&uuml;n&uuml;m&uuml;z de\\u011fi\\u015fen dinamikleriyle yorumlayarak donat\\u0131lm\\u0131\\u015fyeni yerle\\u015fim alanlar\\u0131, daha ya\\u015fanabilir bir e\\u015fik olu\\u015fturacakt\\u0131r. Kaybolan de\\u011ferlerin fiziksel, sosyal ve ekonomik niteliklerle d&ouml;n&uuml;\\u015ft&uuml;r&uuml;lmesi ya\\u015fan\\u0131l\\u0131r kentlerde uzun erimli bir s&uuml;re&ccedil; olarak tasarlanmas\\u0131 do\\u011fru modeller olu\\u015fturur. Daha &ouml;nce yap\\u0131lan uygulamalardan olumlu ve olumsuz y&ouml;nde al\\u0131nan dersler de &ouml;nemli veriler olarak de\\u011ferlendirilmeli iyi bir \\u015fekilde kritik edilmelidir.<br \\/><br \\/>Asla &ouml;d&uuml;n verilmemesi gereken bir konu ise do\\u011fal kaynaklar\\u0131n korunumu ve enerji verimlili\\u011fidir. G&uuml;n&uuml;m&uuml;zde oldu\\u011fu kadar, gelece\\u011fin yap\\u0131lar\\u0131nda &ccedil;ok daha &ouml;nem kazanm\\u0131\\u015f olan bu ger&ccedil;ekler, mimari tasar\\u0131mda meslekler aras\\u0131 i\\u015fbirli\\u011fi &ccedil;er&ccedil;evesinde odaklanarak d&uuml;n&uuml; ve bug&uuml;n&uuml; yar\\u0131n\\u0131n kentlerine ta\\u015f\\u0131yan e\\u015fi\\u011fi olu\\u015fturacakt\\u0131r. Bu nokta kentle\\u015fmeye ve mimariye, k\\u0131r\\u0131lma noktas\\u0131ndan sonraki yeni de\\u011fi\\u015fen dinamikleri en iyi \\u015fekilde yans\\u0131tan ba\\u015far\\u0131l\\u0131 tasar\\u0131mlarla haketti\\u011fi de\\u011ferleri kazand\\u0131racakt\\u0131r.&nbsp;<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1439995007, 1, '9', '92', '0'),
(15, 'news', 'Desert.jpg', '{"en":"fghf","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>fgduhuu<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442504448, 1, 'abcd', 'test', 'false'),
(16, 'news', '', '{"en":"dfgdf","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>dfdffd<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1440002304, 1, '9', '92', '0'),
(17, 'blog', '', '{"en":"bvjhg","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>ghghfj<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1440005813, 0, '8', '92', '["Chrysanthemum5.jpg","Koala7.jpg","Hydrangeas3.jpg"]'),
(18, 'article', 'Koala2.jpg', '{"en":"fghfgjhftjhfghfg","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>dfsghfhsfg<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442587607, 1, 'abcd', 'fdgdfd', 'false'),
(19, 'news', 'Desert1.jpg', '{"en":"test tmg","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>test<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442673516, 1, 'abc tmg', 'fdgdfd', 'false'),
(20, 'blog', '', '{"en":"test","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442673675, 1, 'abcd', 'sdfdgdgdftfgdg', 'false'),
(21, 'news', 'Tulips4.jpg', '{"en":"test","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>test<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442673706, 1, 'abc tmg', 'test', 'false'),
(22, 'article', 'Lighthouse2.jpg', '{"en":"hfghfg test","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', '{"en":"<p>testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 1, 1442853707, 1, '5', '2', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_blog_meta`
--

CREATE TABLE IF NOT EXISTS `dbc_blog_meta` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbc_categories`
--

CREATE TABLE IF NOT EXISTS `dbc_categories` (
  `id` int(11) NOT NULL,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `featured_img` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_menu` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` int(15) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_categories`
--

INSERT INTO `dbc_categories` (`id`, `title`, `fa_icon`, `featured_img`, `show_menu`, `created_by`, `create_time`, `status`, `description`, `type`) VALUES
(1, 'airports', 'fa-plane', 'airport1.jpg', 0, 1, 1425378600, 1, '{"en":"<p>sdadfdfgdfs<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 'blog'),
(2, 'cafe', 'fa-coffee', 'cafe.jpg', 0, 1, 1425378640, 1, '', ''),
(3, 'cinemas', 'fa-ticket', 'cinemas.jpg', 0, 1, 1425378732, 1, '', ''),
(4, 'hotels_and_resorts', 'fa-building-o', 'resort1.jpg', 0, 1, 1425378851, 1, '', ''),
(5, 'libraries', 'fa-book', 'library.jpg', 0, 1, 1425378937, 1, '', ''),
(6, 'night_clubs', 'fa-glass', 'night_club1.jpg', 0, 1, 1425379043, 1, '', ''),
(7, 'offices', 'fa-briefcase', 'office.png', 0, 1, 1425379116, 1, '', ''),
(8, 'restaurants', 'fa-cutlery', 'restaurant.jpg', 0, 1, 1425379224, 1, '', ''),
(9, 'shops', 'fa-shopping-cart', 'shop.jpg', 0, 1, 1425379268, 1, '', ''),
(10, 'municipalities', 'fa-car', 'bursa-osmangazi-belediyesi.jpg', 0, 1, 1431428528, 1, '', ''),
(11, 'rentacar', 'fa-car', 'rent_a_car.jpg', 0, 1, 1431433496, 1, '', ''),
(12, 'Governorship', 'fa-car', 'konyavaligi1.jpg', 0, 1, 1432021331, 1, '', ''),
(13, 'abc', 'sdg', 'Penguins.jpg', 0, 1, 1439903419, 1, '', ''),
(14, 'dfgsdfsd', 'fa-car', 'Penguins5.jpg', 0, 1, 1440078257, 1, '0', 'article'),
(15, 'fgdjj', 'fa-car', 'Tulips1.jpg', 0, 1, 1440078273, 1, '0', 'article'),
(16, 'sdadfg', 'dfagdf', 'Penguins6.jpg', 0, 1, 1440085019, 1, '0', 'article'),
(17, 'dfsghdfhdfsh', 'dfshdf', 'Lighthouse.jpg', 0, 1, 1440085146, 0, '{"en":"<p>fgshfh<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 'article'),
(18, 'testdfgs', 'dfgdfgdfsghdfsgg', 'Hydrangeas1.jpg', 0, 1, 1442416772, 1, '{"en":false,"es":false,"ru":false,"ar":false,"de":false,"fr":false,"it":false,"pt":false,"tr":false,"hi":false,"bn":false}', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_categories_post`
--

CREATE TABLE IF NOT EXISTS `dbc_categories_post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `featured_img` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_categories_post`
--

INSERT INTO `dbc_categories_post` (`id`, `name`, `type`, `description`, `featured_img`, `status`) VALUES
(1, 'abc tmg', 'news', 'test', 'Tulips.jpg', 0),
(2, 'abcd', 'blog', 'test', 'Penguins.jpg', 0),
(4, 'dfsgshfshdfsyh578', 'article', 'ghgujgj', 'Desert.jpg', 0),
(5, 'abc tmg', 'article', 'rgrtyyuty', 'Hydrangeas2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_county`
--

CREATE TABLE IF NOT EXISTS `dbc_county` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `featured_img` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_county`
--

INSERT INTO `dbc_county` (`id`, `parent`, `name`, `type`, `city`, `description`, `featured_img`) VALUES
(1, 92, 'sdfdgdgdftfgdg', 'city', ' Keçiborlu', 'dsfgdfhdfdfsfdfghdfs', 'Tulips3.jpg'),
(2, 92, 'test', 'city', ' Gelendost', 'dsfgdfhdf', 'Tulips1.jpg'),
(3, 92, 'fdgdfd', 'state', ' Gelendost', 'dfgdfsgdfsgh', 'Koala1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_emailtmpl`
--

CREATE TABLE IF NOT EXISTS `dbc_emailtmpl` (
  `id` int(11) NOT NULL,
  `email_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_emailtmpl`
--

INSERT INTO `dbc_emailtmpl` (`id`, `email_name`, `values`, `status`) VALUES
(1, 'confirmation_email', '{"subject":"Confirmation email","body":"Hi #username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\\r\\n \\r\\n#activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#useremail,#activationlink,#webadmin"}', 1),
(2, 'recovery_email', '{"subject":"Recovery email","body":"Hi #username,\\r\\nWe have received an account recovery request from your email. Please follow the below link for setting new password \\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#recoverylink,#webadmin"}', 1),
(3, 'payment_confirmation_email', '{"subject":"Confirmation email","body":"Hi #username,\\r\\nYou decided to make a payment. You can resume the payment from the following link\\r\\n\\r\\n#resumelink\\r\\n\\r\\nThanks\\r\\n#webadmin","avl_vars":"#username,#resumelink,#webadmin"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_extra_video_urls`
--

CREATE TABLE IF NOT EXISTS `dbc_extra_video_urls` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url_0` char(200) DEFAULT NULL,
  `url_1` char(200) DEFAULT NULL,
  `url_2` char(200) DEFAULT NULL,
  `url_3` char(200) DEFAULT NULL,
  `url_4` char(200) DEFAULT NULL,
  `url_5` char(200) DEFAULT NULL,
  `url_6` char(200) DEFAULT NULL,
  `url_7` char(200) DEFAULT NULL,
  `url_8` char(200) DEFAULT NULL,
  `url_9` char(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_extra_video_urls`
--

INSERT INTO `dbc_extra_video_urls` (`id`, `user_id`, `url_0`, `url_1`, `url_2`, `url_3`, `url_4`, `url_5`, `url_6`, `url_7`, `url_8`, `url_9`) VALUES
(1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_issues`
--

CREATE TABLE IF NOT EXISTS `dbc_issues` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `magazine_id` int(11) DEFAULT NULL,
  `featured_img` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_issues`
--

INSERT INTO `dbc_issues` (`id`, `post_id`, `magazine_id`, `featured_img`, `name`, `year`, `month`, `description`, `url`, `active`) VALUES
(32, 25, 33, '104600871.jpg', 'magazine1', 2015, 'January', 'issue1', 'issue1', 0),
(33, 25, 34, 'oro-nightclub1.jpg', 'magazine2', 2015, 'January', 'qqq', 'qqq', 0),
(34, 25, 33, '263637241.jpg', 'magazine1', 2015, 'January', 'issue2', 'issue2', 0),
(35, 25, 33, 'img111.jpg', 'magazine1', 2015, 'January', 'issue3ttt', 'http://exportercatalogs.com/yayin/expo1/', 1),
(36, 25, 34, 'oro-nightclub1.jpg', 'magazine2', 2015, 'January', 'qqq', 'qqq', 1),
(37, 22, 35, 'kapak.png', 'Bursa City Magazine', 2015, 'January', 'Make a point to try the locally-created Iskender Kebap, a dish of bread, tomato sauce, strips of grilled meat, melted butter and yogurt. Candied chestnuts are another regional speciality.', 'http://exportercatalogs.com/yayin/expo1/', 0),
(38, 22, 35, 'kapak2.png', 'Bursa City Magazine', 2015, 'February', 'A tour of the city beginsin the eastern section at the Yesil turbe (Green Mausoleum). Set in a garden and distinguished by its exterior paneling of tiles, the mausoleum holds the tiled cenotaph of Sultan Mehmet 1. Across the street, the Yesil Mosque of 1424 relects the new ottoman, as opposed to Seljuk, aesthetic. ', 'http://exportercatalogs.com/yayin/expo1/', 1),
(39, 22, 36, 'kapak21.png', 'Bursa Travel Guide', 2015, 'July', 'The city of Bursa, southeast of the Sea of Marmara, lies on the lower slopes of Uludag (Mt. Olympos of Mysia, 2443 meters). The city derives its name from its founder King Prusias, of Bithynia. Its previous antique name was Prussa ad Hypium. It ', 'http://exportercatalogs.com/yayin/expo1/', 1),
(40, 21, 37, 'no-image.png', '', 2015, 'January', '', '', 1),
(41, 26, 38, 'no-image.png', '', 2015, 'January', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_locations`
--

CREATE TABLE IF NOT EXISTS `dbc_locations` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `parent_country` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `description` varchar(256) NOT NULL,
  `featured_img` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1186 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_locations`
--

INSERT INTO `dbc_locations` (`id`, `parent`, `parent_country`, `name`, `type`, `status`, `description`, `featured_img`) VALUES
(92, 0, 0, 'Turkey', 'country', 1, '', ''),
(93, 92, 92, 'Adana', 'state', 1, '', ''),
(94, 92, 92, 'Adıyaman', 'state', 1, '', ''),
(95, 92, 92, 'Afyonkarahisar', 'state', 1, '', ''),
(96, 92, 92, 'Ağrı', 'state', 1, '', ''),
(97, 92, 92, 'Aksaray', 'state', 1, '', ''),
(98, 92, 92, 'Amasya', 'state', 1, '', ''),
(99, 92, 92, 'Ankara', 'state', 1, '', ''),
(100, 92, 92, 'Antalya', 'state', 1, '', ''),
(101, 92, 92, 'Ardahan', 'state', 1, '', ''),
(102, 92, 92, 'Artvin', 'state', 1, '', ''),
(103, 92, 92, 'Aydın', 'state', 1, '', ''),
(104, 92, 92, 'Balıkesir', 'state', 1, '', ''),
(105, 92, 92, 'Bartın', 'state', 1, '', ''),
(106, 92, 92, 'Batman', 'state', 1, '', ''),
(107, 92, 92, 'Bayburt', 'state', 1, '', ''),
(108, 92, 92, 'Bilecik', 'state', 1, '', ''),
(109, 92, 92, 'Bingöl', 'state', 1, '', ''),
(110, 92, 92, 'Bitlis', 'state', 1, '', ''),
(111, 92, 92, 'Bolu', 'state', 1, '', ''),
(112, 92, 92, 'Burdur', 'state', 1, '', ''),
(113, 92, 92, 'Bursa', 'state', 1, '', ''),
(114, 92, 92, 'Çanakkale', 'state', 1, '', ''),
(115, 92, 92, 'Çankırı', 'state', 1, '', ''),
(116, 92, 92, 'Çorum', 'state', 1, '', ''),
(117, 92, 92, 'Denizli', 'state', 1, '', ''),
(118, 92, 92, 'Diyarbakır', 'state', 1, '', ''),
(119, 92, 92, 'Düzce', 'state', 1, '', ''),
(120, 92, 92, 'Edirne', 'state', 1, '', ''),
(121, 92, 92, 'Elazığ', 'state', 1, '', ''),
(122, 92, 92, 'Erzincan', 'state', 1, '', ''),
(123, 92, 92, 'Erzurum', 'state', 1, '', ''),
(124, 92, 92, 'Eskişehir', 'state', 1, '', ''),
(125, 92, 92, 'Gaziantep', 'state', 1, '', ''),
(126, 92, 92, 'Giresun', 'state', 1, '', ''),
(127, 92, 92, 'Gümüşhane', 'state', 1, '', ''),
(128, 92, 92, 'Hakkari', 'state', 1, '', ''),
(129, 92, 92, 'Hatay', 'state', 1, '', ''),
(130, 92, 92, 'Iğdır', 'state', 1, '', ''),
(131, 92, 92, 'Isparta', 'state', 1, '', ''),
(132, 92, 92, 'İstanbul', 'state', 1, '', ''),
(133, 92, 92, 'İzmir', 'state', 1, '', ''),
(134, 92, 92, 'Kahramanmaraş', 'state', 1, '', ''),
(135, 92, 92, 'Karabük', 'state', 1, '', ''),
(136, 92, 92, 'Karaman', 'state', 1, '', ''),
(137, 92, 92, 'Kars', 'state', 1, '', ''),
(138, 92, 92, 'Kastamonu', 'state', 1, '', ''),
(139, 92, 92, 'Kayseri', 'state', 1, '', ''),
(140, 92, 92, 'Kırıkkale', 'state', 1, '', ''),
(141, 92, 92, 'Kırklareli', 'state', 1, '', ''),
(142, 92, 92, 'Kırşehir', 'state', 1, '', ''),
(143, 92, 92, 'Kilis', 'state', 1, '', ''),
(144, 92, 92, 'Kocaeli', 'state', 1, '', ''),
(145, 92, 92, 'Konya', 'state', 1, '', ''),
(146, 92, 92, 'Kütahya', 'state', 1, '', ''),
(147, 92, 92, 'Malatya', 'state', 1, '', ''),
(148, 92, 92, 'Manisa', 'state', 1, '', ''),
(149, 92, 92, 'Mardin', 'state', 1, '', ''),
(150, 92, 92, 'Mersin', 'state', 1, '', ''),
(151, 92, 92, 'Muğla', 'state', 1, '', ''),
(152, 92, 92, 'Muş', 'state', 1, '', ''),
(153, 92, 92, 'Nevşehir', 'state', 1, '', ''),
(154, 92, 92, 'Niğde', 'state', 1, '', ''),
(155, 92, 92, 'Ordu', 'state', 1, '', ''),
(156, 92, 92, 'Osmaniye', 'state', 1, '', ''),
(157, 92, 92, 'Rize', 'state', 1, '', ''),
(158, 92, 92, 'Sakarya', 'state', 1, '', ''),
(159, 92, 92, 'Samsun', 'state', 1, '', ''),
(160, 92, 92, 'Siirt', 'state', 1, '', ''),
(161, 92, 92, 'Sinop', 'state', 1, '', ''),
(162, 92, 92, 'Sivas', 'state', 1, '', ''),
(163, 92, 92, 'Şanlıurfa', 'state', 1, '', ''),
(164, 92, 92, 'Şırnak', 'state', 1, '', ''),
(165, 92, 92, 'Tekirdağ', 'state', 1, '', ''),
(166, 92, 92, 'Tokat', 'state', 1, '', ''),
(167, 92, 92, 'Trabzon', 'state', 1, '', ''),
(168, 92, 92, 'Tunceli', 'state', 1, '', ''),
(169, 92, 92, 'Uşak', 'state', 1, '', ''),
(170, 92, 92, 'Van', 'state', 1, '', ''),
(171, 92, 92, 'Yalova', 'state', 1, '', ''),
(172, 92, 92, 'Yozgat', 'state', 1, '', ''),
(173, 92, 92, 'Zonguldak', 'state', 1, '', ''),
(175, 93, 92, 'Aladağ', 'city', 1, '', ''),
(176, 93, 92, 'Ceyhan', 'city', 1, '', ''),
(177, 93, 92, 'Çukurova', 'city', 1, '', ''),
(178, 93, 92, 'Feke', 'city', 1, '', ''),
(179, 93, 92, 'İmamoğlu', 'city', 1, '', ''),
(180, 93, 92, 'Karaisalı', 'city', 1, '', ''),
(181, 93, 92, 'Karataş', 'city', 1, '', ''),
(182, 93, 92, 'Kozan', 'city', 1, '', ''),
(183, 93, 92, 'Pozantı', 'city', 1, '', ''),
(184, 93, 92, 'Saimbeyli', 'city', 1, '', ''),
(185, 93, 92, 'Sarıçam', 'city', 1, '', ''),
(186, 93, 92, 'Seyhan', 'city', 1, '', ''),
(187, 93, 92, 'Tufanbeyli', 'city', 1, '', ''),
(188, 93, 92, 'Yumurtalık', 'city', 1, '', ''),
(189, 93, 92, 'Yüreğir', 'city', 1, '', ''),
(191, 94, 92, 'Besni', 'city', 1, '', ''),
(192, 94, 92, 'Çelikhan', 'city', 1, '', ''),
(193, 94, 92, 'Gerger', 'city', 1, '', ''),
(194, 94, 92, 'Gölbaşı', 'city', 1, '', ''),
(195, 94, 92, 'Kahta', 'city', 1, '', ''),
(196, 94, 92, 'Samsat', 'city', 1, '', ''),
(197, 94, 92, 'Sincik', 'city', 1, '', ''),
(198, 94, 92, 'Tut', 'city', 1, '', ''),
(200, 95, 92, 'Başmakçı', 'city', 1, '', ''),
(201, 95, 92, 'Bayat', 'city', 1, '', ''),
(202, 95, 92, 'Bolvadin', 'city', 1, '', ''),
(203, 95, 92, 'Çay', 'city', 1, '', ''),
(204, 95, 92, 'Çobanlar', 'city', 1, '', ''),
(205, 95, 92, 'Dazkırı', 'city', 1, '', ''),
(206, 95, 92, 'Dinar', 'city', 1, '', ''),
(207, 95, 92, 'Emirdağ', 'city', 1, '', ''),
(208, 95, 92, 'Evciler', 'city', 1, '', ''),
(209, 95, 92, 'Hocalar', 'city', 1, '', ''),
(210, 95, 92, 'İscehisar', 'city', 1, '', ''),
(211, 95, 92, 'İhsaniye', 'city', 1, '', ''),
(212, 95, 92, 'Kızılören', 'city', 1, '', ''),
(213, 95, 92, 'Sandıklı', 'city', 1, '', ''),
(214, 95, 92, 'Sinanpaşa', 'city', 1, '', ''),
(215, 95, 92, 'Sultandağı', 'city', 1, '', ''),
(216, 95, 92, 'Şuhut', 'city', 1, '', ''),
(218, 96, 92, 'Diyadin', 'city', 1, '', ''),
(219, 96, 92, 'Doğubeyazıt', 'city', 1, '', ''),
(220, 96, 92, 'Eleşkirt', 'city', 1, '', ''),
(221, 96, 92, 'Hamur', 'city', 1, '', ''),
(222, 96, 92, 'Patnos', 'city', 1, '', ''),
(223, 96, 92, 'Taşlıçay', 'city', 1, '', ''),
(224, 96, 92, 'Tutak', 'city', 1, '', ''),
(225, 96, 92, '', 'city', 1, '', ''),
(226, 97, 92, 'Ağaçören', 'city', 1, '', ''),
(227, 97, 92, 'Eskil', 'city', 1, '', ''),
(228, 97, 92, 'Gülağaç', 'city', 1, '', ''),
(229, 97, 92, 'Güzelyurt', 'city', 1, '', ''),
(230, 97, 92, 'Ortaköy', 'city', 1, '', ''),
(231, 97, 92, 'Sarıyahşi', 'city', 1, '', ''),
(233, 98, 92, 'Göynücek', 'city', 1, '', ''),
(234, 98, 92, 'Gümüşhacıköy', 'city', 1, '', ''),
(235, 98, 92, 'Hamamözü', 'city', 1, '', ''),
(236, 98, 92, 'Merzifon', 'city', 1, '', ''),
(237, 98, 92, 'Suluova', 'city', 1, '', ''),
(238, 98, 92, 'Taşova', 'city', 1, '', ''),
(240, 99, 92, 'Akyurt', 'city', 1, '', ''),
(241, 99, 92, 'Altındağ', 'city', 1, '', ''),
(242, 99, 92, 'Ayaş', 'city', 1, '', ''),
(243, 99, 92, 'Bala', 'city', 1, '', ''),
(244, 99, 92, 'Beypazarı', 'city', 1, '', ''),
(245, 99, 92, 'Çamlıdere', 'city', 1, '', ''),
(246, 99, 92, 'Çankaya', 'city', 1, '', ''),
(247, 99, 92, 'Çubuk', 'city', 1, '', ''),
(248, 99, 92, 'Elmadağ', 'city', 1, '', ''),
(249, 99, 92, 'Etimesgut', 'city', 1, '', ''),
(250, 99, 92, 'Evren', 'city', 1, '', ''),
(251, 99, 92, 'Gölbaşı', 'city', 1, '', ''),
(252, 99, 92, 'Güdül', 'city', 1, '', ''),
(253, 99, 92, 'Haymana', 'city', 1, '', ''),
(254, 99, 92, 'Kalecik', 'city', 1, '', ''),
(255, 99, 92, 'Kazan', 'city', 1, '', ''),
(256, 99, 92, 'Keçiören', 'city', 1, '', ''),
(257, 99, 92, 'Kızılcahamam', 'city', 1, '', ''),
(258, 99, 92, 'Mamak', 'city', 1, '', ''),
(259, 99, 92, 'Nallıhan', 'city', 1, '', ''),
(260, 99, 92, 'Polatlı', 'city', 1, '', ''),
(261, 99, 92, 'Pursaklar', 'city', 1, '', ''),
(262, 99, 92, 'Sincan', 'city', 1, '', ''),
(263, 99, 92, 'Şereflikoçhisar', 'city', 1, '', ''),
(264, 99, 92, 'Yenimahalle', 'city', 1, '', ''),
(266, 100, 92, 'Akseki', 'city', 1, '', ''),
(267, 100, 92, 'Alanya', 'city', 1, '', ''),
(268, 100, 92, 'Demre', 'city', 1, '', ''),
(269, 100, 92, 'Döşemealtı', 'city', 1, '', ''),
(270, 100, 92, 'Elmalı', 'city', 1, '', ''),
(271, 100, 92, 'Finike', 'city', 1, '', ''),
(272, 100, 92, 'Gazipaşa', 'city', 1, '', ''),
(273, 100, 92, 'Gündoğmuş', 'city', 1, '', ''),
(274, 100, 92, 'İbradı', 'city', 1, '', ''),
(275, 100, 92, 'Kaş', 'city', 1, '', ''),
(276, 100, 92, 'Kemer', 'city', 1, '', ''),
(277, 100, 92, 'Kepez', 'city', 1, '', ''),
(278, 100, 92, 'Konyaaltı', 'city', 1, '', ''),
(279, 100, 92, 'Korkuteli', 'city', 1, '', ''),
(280, 100, 92, 'Kumluca', 'city', 1, '', ''),
(281, 100, 92, 'Manavgat', 'city', 1, '', ''),
(282, 100, 92, 'Muratpaşa', 'city', 1, '', ''),
(283, 100, 92, 'Serik', 'city', 1, '', ''),
(285, 101, 92, 'Çıldır', 'city', 1, '', ''),
(286, 101, 92, 'Damal', 'city', 1, '', ''),
(287, 101, 92, 'Göle', 'city', 1, '', ''),
(288, 101, 92, 'Hanak', 'city', 1, '', ''),
(289, 101, 92, 'Posof', 'city', 1, '', ''),
(291, 102, 92, 'Ardanuç', 'city', 1, '', ''),
(292, 102, 92, 'Arhavi', 'city', 1, '', ''),
(293, 102, 92, 'Borçka', 'city', 1, '', ''),
(294, 102, 92, 'Hopa', 'city', 1, '', ''),
(295, 102, 92, 'Murgul', 'city', 1, '', ''),
(296, 102, 92, 'Şavşat', 'city', 1, '', ''),
(297, 102, 92, 'Yusufeli', 'city', 1, '', ''),
(299, 103, 92, 'Bozdoğan', 'city', 1, '', ''),
(300, 103, 92, 'Buharkent', 'city', 1, '', ''),
(301, 103, 92, 'Çine', 'city', 1, '', ''),
(302, 103, 92, 'Didim', 'city', 1, '', ''),
(303, 103, 92, 'Efeler', 'city', 1, '', ''),
(304, 103, 92, 'Germencik', 'city', 1, '', ''),
(305, 103, 92, 'İncirliova', 'city', 1, '', ''),
(306, 103, 92, 'Karacasu', 'city', 1, '', ''),
(307, 103, 92, 'Karpuzlu', 'city', 1, '', ''),
(308, 103, 92, 'Koçarlı', 'city', 1, '', ''),
(309, 103, 92, 'Köşk', 'city', 1, '', ''),
(310, 103, 92, 'Kuşadası', 'city', 1, '', ''),
(311, 103, 92, 'Kuyucak', 'city', 1, '', ''),
(312, 103, 92, 'Nazilli', 'city', 1, '', ''),
(313, 103, 92, 'Sultanhisar', 'city', 1, '', ''),
(314, 103, 92, 'Söke', 'city', 1, '', ''),
(315, 103, 92, 'Yenipazar', 'city', 1, '', ''),
(317, 104, 92, 'Altıeylül', 'city', 1, '', ''),
(318, 104, 92, 'Ayvalık', 'city', 1, '', ''),
(319, 104, 92, 'Balya', 'city', 1, '', ''),
(320, 104, 92, 'Bandırma', 'city', 1, '', ''),
(321, 104, 92, 'Bigadiç', 'city', 1, '', ''),
(322, 104, 92, 'Burhaniye', 'city', 1, '', ''),
(323, 104, 92, 'Dursunbey', 'city', 1, '', ''),
(324, 104, 92, 'Edremit', 'city', 1, '', ''),
(325, 104, 92, 'Erdek', 'city', 1, '', ''),
(326, 104, 92, 'Gömeç', 'city', 1, '', ''),
(327, 104, 92, 'Gönen', 'city', 1, '', ''),
(328, 104, 92, 'Havran', 'city', 1, '', ''),
(329, 104, 92, 'İvrindi', 'city', 1, '', ''),
(330, 104, 92, 'Karesi', 'city', 1, '', ''),
(331, 104, 92, 'Kepsut', 'city', 1, '', ''),
(332, 104, 92, 'Manyas', 'city', 1, '', ''),
(333, 104, 92, 'Marmara Adası', 'city', 1, '', ''),
(334, 104, 92, 'Savaştepe', 'city', 1, '', ''),
(335, 104, 92, 'Sındırgı', 'city', 1, '', ''),
(336, 104, 92, 'Susurluk', 'city', 1, '', ''),
(338, 105, 92, 'Amasra', 'city', 1, '', ''),
(339, 105, 92, 'Kurucaşile', 'city', 1, '', ''),
(340, 105, 92, 'Ulus', 'city', 1, '', ''),
(342, 106, 92, 'Beşiri', 'city', 1, '', ''),
(343, 106, 92, 'Gercüş', 'city', 1, '', ''),
(344, 106, 92, 'Hasankeyf', 'city', 1, '', ''),
(345, 106, 92, 'Kozluk', 'city', 1, '', ''),
(346, 106, 92, 'Sason', 'city', 1, '', ''),
(348, 107, 92, 'Aydıntepe', 'city', 1, '', ''),
(349, 107, 92, 'Demirözü', 'city', 1, '', ''),
(351, 108, 92, 'Bozüyük', 'city', 1, '', ''),
(352, 108, 92, 'Gölpazarı', 'city', 1, '', ''),
(353, 108, 92, 'İnhisar', 'city', 1, '', ''),
(354, 108, 92, 'Osmaneli', 'city', 1, '', ''),
(355, 108, 92, 'Pazaryeri', 'city', 1, '', ''),
(356, 108, 92, 'Söğüt', 'city', 1, '', ''),
(357, 108, 92, 'Yenipazar', 'city', 1, '', ''),
(359, 109, 92, 'Adaklı', 'city', 1, '', ''),
(360, 109, 92, 'Genç', 'city', 1, '', ''),
(361, 109, 92, 'Karlıova', 'city', 1, '', ''),
(362, 109, 92, 'Kiğı', 'city', 1, '', ''),
(363, 109, 92, 'Solhan', 'city', 1, '', ''),
(364, 109, 92, 'Yayladere', 'city', 1, '', ''),
(365, 109, 92, 'Yedisu', 'city', 1, '', ''),
(367, 110, 92, 'Adilcevaz', 'city', 1, '', ''),
(368, 110, 92, 'Ahlat', 'city', 1, '', ''),
(369, 110, 92, 'Güroymak', 'city', 1, '', ''),
(370, 110, 92, 'Hizan', 'city', 1, '', ''),
(371, 110, 92, 'Mutki', 'city', 1, '', ''),
(372, 110, 92, 'Tatvan', 'city', 1, '', ''),
(374, 111, 92, 'Dörtdivan', 'city', 1, '', ''),
(375, 111, 92, 'Gerede', 'city', 1, '', ''),
(376, 111, 92, 'Göynük', 'city', 1, '', ''),
(377, 111, 92, 'Kıbrıscık', 'city', 1, '', ''),
(378, 111, 92, 'Mengen', 'city', 1, '', ''),
(379, 111, 92, 'Mudurnu', 'city', 1, '', ''),
(380, 111, 92, 'Seben', 'city', 1, '', ''),
(381, 111, 92, 'Yeniçağa', 'city', 1, '', ''),
(383, 112, 92, 'Ağlasun', 'city', 1, '', ''),
(384, 112, 92, 'Altınyayla', 'city', 1, '', ''),
(385, 112, 92, 'Bucak', 'city', 1, '', ''),
(386, 112, 92, 'Çavdır', 'city', 1, '', ''),
(387, 112, 92, 'Çeltikçi', 'city', 1, '', ''),
(388, 112, 92, 'Gölhisar', 'city', 1, '', ''),
(389, 112, 92, 'Karamanlı', 'city', 1, '', ''),
(390, 112, 92, 'Kemer', 'city', 1, '', ''),
(391, 112, 92, 'Tefenni', 'city', 1, '', ''),
(392, 112, 92, 'Yeşilova', 'city', 1, '', ''),
(394, 113, 92, 'Büyükorhan', 'city', 1, '', ''),
(395, 113, 92, 'Gemlik', 'city', 1, '', ''),
(396, 113, 92, 'Gürsu', 'city', 1, '', ''),
(397, 113, 92, 'Harmancık', 'city', 1, '', ''),
(398, 113, 92, 'İnegöl', 'city', 1, '', ''),
(399, 113, 92, 'İznik', 'city', 1, '', ''),
(400, 113, 92, 'Karacabey', 'city', 1, '', ''),
(401, 113, 92, 'Keles', 'city', 1, '', ''),
(402, 113, 92, 'Kestel', 'city', 1, '', ''),
(403, 113, 92, 'M.Kemalpaşa', 'city', 1, '', ''),
(404, 113, 92, 'Mudanya', 'city', 1, '', ''),
(405, 113, 92, 'Nilüfer', 'city', 1, '', ''),
(406, 113, 92, 'Orhaneli', 'city', 1, '', ''),
(407, 113, 92, 'Orhangazi', 'city', 1, '', ''),
(408, 113, 92, 'Osmangazi', 'city', 1, '', ''),
(409, 113, 92, 'Uludağ', 'city', 1, '', ''),
(410, 113, 92, 'Yenişehir', 'city', 1, '', ''),
(411, 113, 92, 'Yıldırım', 'city', 1, '', ''),
(413, 114, 92, 'Ayvacık', 'city', 1, '', ''),
(414, 114, 92, 'Bayramiç', 'city', 1, '', ''),
(415, 114, 92, 'Biga', 'city', 1, '', ''),
(416, 114, 92, 'Bozcaada', 'city', 1, '', ''),
(417, 114, 92, 'Çan', 'city', 1, '', ''),
(418, 114, 92, 'Eceabat', 'city', 1, '', ''),
(419, 114, 92, 'Ezine', 'city', 1, '', ''),
(420, 114, 92, 'Gelibolu', 'city', 1, '', ''),
(421, 114, 92, 'Gökçeada', 'city', 1, '', ''),
(422, 114, 92, 'Lapseki', 'city', 1, '', ''),
(423, 114, 92, 'Yenice', 'city', 1, '', ''),
(425, 115, 92, 'Atkaracalar', 'city', 1, '', ''),
(426, 115, 92, 'Bayramören', 'city', 1, '', ''),
(427, 115, 92, 'Çerkeş', 'city', 1, '', ''),
(428, 115, 92, 'Eldivan', 'city', 1, '', ''),
(429, 115, 92, 'Ilgaz', 'city', 1, '', ''),
(430, 115, 92, 'Kızılırmak', 'city', 1, '', ''),
(431, 115, 92, 'Korgun', 'city', 1, '', ''),
(432, 115, 92, 'Kurşunlu', 'city', 1, '', ''),
(433, 115, 92, 'Orta', 'city', 1, '', ''),
(434, 115, 92, 'Şabanözü', 'city', 1, '', ''),
(435, 115, 92, 'Yapraklı', 'city', 1, '', ''),
(437, 116, 92, 'Alaca', 'city', 1, '', ''),
(438, 116, 92, 'Bayat', 'city', 1, '', ''),
(439, 116, 92, 'Boğazkale', 'city', 1, '', ''),
(440, 116, 92, 'Dodurga', 'city', 1, '', ''),
(441, 116, 92, 'İskilip', 'city', 1, '', ''),
(442, 116, 92, 'Kargı', 'city', 1, '', ''),
(443, 116, 92, 'Laçin', 'city', 1, '', ''),
(444, 116, 92, 'Mecitözü', 'city', 1, '', ''),
(445, 116, 92, 'Oğuzlar', 'city', 1, '', ''),
(446, 116, 92, 'Ortaköy', 'city', 1, '', ''),
(447, 116, 92, 'Osmancık', 'city', 1, '', ''),
(448, 116, 92, 'Sungurlu', 'city', 1, '', ''),
(449, 116, 92, 'Uğurludağ', 'city', 1, '', ''),
(451, 117, 92, 'Acıpayam', 'city', 1, '', ''),
(452, 117, 92, 'Akköy', 'city', 1, '', ''),
(453, 117, 92, 'Babadağ', 'city', 1, '', ''),
(454, 117, 92, 'Baklan', 'city', 1, '', ''),
(455, 117, 92, 'Bekilli', 'city', 1, '', ''),
(456, 117, 92, 'Beyağaç', 'city', 1, '', ''),
(457, 117, 92, 'Bozkurt', 'city', 1, '', ''),
(458, 117, 92, 'Buldan', 'city', 1, '', ''),
(459, 117, 92, 'Çal', 'city', 1, '', ''),
(460, 117, 92, 'Çameli', 'city', 1, '', ''),
(461, 117, 92, 'Çardak', 'city', 1, '', ''),
(462, 117, 92, 'Çivril', 'city', 1, '', ''),
(463, 117, 92, 'Güney', 'city', 1, '', ''),
(464, 117, 92, 'Honaz', 'city', 1, '', ''),
(465, 117, 92, 'Kale', 'city', 1, '', ''),
(466, 117, 92, 'Merkezefendi', 'city', 1, '', ''),
(467, 117, 92, 'Pamukkale', 'city', 1, '', ''),
(468, 117, 92, 'Sarayköy', 'city', 1, '', ''),
(469, 117, 92, 'Serinhisar', 'city', 1, '', ''),
(470, 117, 92, 'Tavas', 'city', 1, '', ''),
(472, 118, 92, 'Bağlar', 'city', 1, '', ''),
(473, 118, 92, 'Bismil', 'city', 1, '', ''),
(474, 118, 92, 'Çermik', 'city', 1, '', ''),
(475, 118, 92, 'Çınar', 'city', 1, '', ''),
(476, 118, 92, 'Çüngüş', 'city', 1, '', ''),
(477, 118, 92, 'Dicle', 'city', 1, '', ''),
(478, 118, 92, 'Eğil', 'city', 1, '', ''),
(479, 118, 92, 'Ergani', 'city', 1, '', ''),
(480, 118, 92, 'Hani', 'city', 1, '', ''),
(481, 118, 92, 'Hazro', 'city', 1, '', ''),
(482, 118, 92, 'Kayapınar', 'city', 1, '', ''),
(483, 118, 92, 'Kocaköy', 'city', 1, '', ''),
(484, 118, 92, 'Kulp', 'city', 1, '', ''),
(485, 118, 92, 'Lice', 'city', 1, '', ''),
(486, 118, 92, 'Sur', 'city', 1, '', ''),
(487, 118, 92, 'Silvan', 'city', 1, '', ''),
(488, 118, 92, 'Yenişehir', 'city', 1, '', ''),
(490, 119, 92, 'Akçakoca', 'city', 1, '', ''),
(491, 119, 92, 'Cumayeri', 'city', 1, '', ''),
(492, 119, 92, 'Çilimli', 'city', 1, '', ''),
(493, 119, 92, 'Gölyaka', 'city', 1, '', ''),
(494, 119, 92, 'Gümüşova', 'city', 1, '', ''),
(495, 119, 92, 'Kaynaşlı', 'city', 1, '', ''),
(496, 119, 92, 'Yığılca', 'city', 1, '', ''),
(498, 120, 92, 'Enez', 'city', 1, '', ''),
(499, 120, 92, 'Havsa', 'city', 1, '', ''),
(500, 120, 92, 'İpsala', 'city', 1, '', ''),
(501, 120, 92, 'Keşan', 'city', 1, '', ''),
(502, 120, 92, 'Lalapaşa', 'city', 1, '', ''),
(503, 120, 92, 'Meriç', 'city', 1, '', ''),
(504, 120, 92, 'Süloğlu', 'city', 1, '', ''),
(505, 120, 92, 'Uzunköprü', 'city', 1, '', ''),
(507, 121, 92, 'Ağın', 'city', 1, '', ''),
(508, 121, 92, 'Alacakaya', 'city', 1, '', ''),
(509, 121, 92, 'Arıcak', 'city', 1, '', ''),
(510, 121, 92, 'Baskil', 'city', 1, '', ''),
(511, 121, 92, 'Karakoçan', 'city', 1, '', ''),
(512, 121, 92, 'Keban', 'city', 1, '', ''),
(513, 121, 92, 'Kovancılar', 'city', 1, '', ''),
(514, 121, 92, 'Maden', 'city', 1, '', ''),
(515, 121, 92, 'Palu', 'city', 1, '', ''),
(516, 121, 92, 'Sivrice', 'city', 1, '', ''),
(518, 122, 92, 'Tercan', 'city', 1, '', ''),
(519, 122, 92, 'Refahiye', 'city', 1, '', ''),
(520, 122, 92, 'Kemah', 'city', 1, '', ''),
(521, 122, 92, 'Çayırlı', 'city', 1, '', ''),
(522, 122, 92, 'Otlukbeli', 'city', 1, '', ''),
(523, 122, 92, 'Kemaliye', 'city', 1, '', ''),
(524, 122, 92, 'Üzümlü', 'city', 1, '', ''),
(526, 123, 92, 'Aşkale', 'city', 1, '', ''),
(527, 123, 92, 'Aziziye', 'city', 1, '', ''),
(528, 123, 92, 'Çat', 'city', 1, '', ''),
(529, 123, 92, 'Horasan', 'city', 1, '', ''),
(530, 123, 92, 'İspir', 'city', 1, '', ''),
(531, 123, 92, 'Hınıs', 'city', 1, '', ''),
(532, 123, 92, 'Karaçoban', 'city', 1, '', ''),
(533, 123, 92, 'Karayazı', 'city', 1, '', ''),
(534, 123, 92, 'Köprüköy', 'city', 1, '', ''),
(535, 123, 92, 'Narman', 'city', 1, '', ''),
(536, 123, 92, 'Oltu', 'city', 1, '', ''),
(537, 123, 92, 'Olur', 'city', 1, '', ''),
(538, 123, 92, 'Palandöken', 'city', 1, '', ''),
(539, 123, 92, 'Pasinler', 'city', 1, '', ''),
(540, 123, 92, 'Pazaryolu', 'city', 1, '', ''),
(541, 123, 92, 'Şenkaya', 'city', 1, '', ''),
(542, 123, 92, 'Tekman', 'city', 1, '', ''),
(543, 123, 92, 'Tortum', 'city', 1, '', ''),
(544, 123, 92, 'Uzundere', 'city', 1, '', ''),
(545, 123, 92, 'Yakutiye', 'city', 1, '', ''),
(547, 124, 92, 'Alpu', 'city', 1, '', ''),
(548, 124, 92, 'Beylikova', 'city', 1, '', ''),
(549, 124, 92, 'Çifteler', 'city', 1, '', ''),
(550, 124, 92, 'Günyüzü', 'city', 1, '', ''),
(551, 124, 92, 'Han', 'city', 1, '', ''),
(552, 124, 92, 'İnönü', 'city', 1, '', ''),
(553, 124, 92, 'Kaymaz', 'city', 1, '', ''),
(554, 124, 92, 'Mahmudiye', 'city', 1, '', ''),
(555, 124, 92, 'Mihalgazi', 'city', 1, '', ''),
(556, 124, 92, 'Mihalıççık', 'city', 1, '', ''),
(557, 124, 92, 'Odunpazarı', 'city', 1, '', ''),
(558, 124, 92, 'Sarıcakaya', 'city', 1, '', ''),
(559, 124, 92, 'Seyitgazi', 'city', 1, '', ''),
(560, 124, 92, 'Sivrihisar', 'city', 1, '', ''),
(561, 124, 92, 'Tepebaşı', 'city', 1, '', ''),
(563, 125, 92, 'Araban', 'city', 1, '', ''),
(564, 125, 92, 'İslahiye', 'city', 1, '', ''),
(565, 125, 92, 'Karkamış', 'city', 1, '', ''),
(566, 125, 92, 'Nizip', 'city', 1, '', ''),
(567, 125, 92, 'Nurdağı', 'city', 1, '', ''),
(568, 125, 92, 'Oğuzeli', 'city', 1, '', ''),
(569, 125, 92, 'Şahinbey', 'city', 1, '', ''),
(570, 125, 92, 'Şehitkamil', 'city', 1, '', ''),
(571, 125, 92, 'Yavuzeli', 'city', 1, '', ''),
(573, 126, 92, 'Alucra', 'city', 1, '', ''),
(574, 126, 92, 'Bulancak', 'city', 1, '', ''),
(575, 126, 92, 'Çamoluk', 'city', 1, '', ''),
(576, 126, 92, 'Çanakçı', 'city', 1, '', ''),
(577, 126, 92, 'Dereli', 'city', 1, '', ''),
(578, 126, 92, 'Doğankent', 'city', 1, '', ''),
(579, 126, 92, 'Espiye', 'city', 1, '', ''),
(580, 126, 92, 'Eynesil', 'city', 1, '', ''),
(581, 126, 92, 'Görele', 'city', 1, '', ''),
(582, 126, 92, 'Güce', 'city', 1, '', ''),
(583, 126, 92, 'Keşap', 'city', 1, '', ''),
(584, 126, 92, 'Piraziz', 'city', 1, '', ''),
(585, 126, 92, 'Şebinkarahisar', 'city', 1, '', ''),
(586, 126, 92, 'Tirebolu', 'city', 1, '', ''),
(587, 126, 92, 'Yağlıdere', 'city', 1, '', ''),
(589, 127, 92, 'Kelkit', 'city', 1, '', ''),
(590, 127, 92, 'Köse', 'city', 1, '', ''),
(591, 127, 92, 'Kürtün', 'city', 1, '', ''),
(592, 127, 92, 'Şiran', 'city', 1, '', ''),
(593, 127, 92, 'Torul', 'city', 1, '', ''),
(594, 127, 92, 'Zigana', 'city', 1, '', ''),
(596, 128, 92, 'Çukurca', 'city', 1, '', ''),
(597, 128, 92, 'Şemdinli', 'city', 1, '', ''),
(598, 128, 92, 'Yüksekova', 'city', 1, '', ''),
(600, 129, 92, 'Altınözü', 'city', 1, '', ''),
(601, 129, 92, 'Arsuz', 'city', 1, '', ''),
(602, 129, 92, 'Belen', 'city', 1, '', ''),
(603, 129, 92, 'Defne', 'city', 1, '', ''),
(604, 129, 92, 'Dörtyol', 'city', 1, '', ''),
(605, 129, 92, 'Erzin', 'city', 1, '', ''),
(606, 129, 92, 'Hassa', 'city', 1, '', ''),
(607, 129, 92, 'İskenderun', 'city', 1, '', ''),
(608, 129, 92, 'Kırıkhan', 'city', 1, '', ''),
(609, 129, 92, 'Kumlu', 'city', 1, '', ''),
(610, 129, 92, 'Payas', 'city', 1, '', ''),
(611, 129, 92, 'Reyhanlı', 'city', 1, '', ''),
(612, 129, 92, 'Samandağ', 'city', 1, '', ''),
(613, 129, 92, 'Yayladağı', 'city', 1, '', ''),
(615, 130, 92, 'Aralık', 'city', 1, '', ''),
(616, 130, 92, 'Karakoyunlu', 'city', 1, '', ''),
(617, 130, 92, 'Tuzluca', 'city', 1, '', ''),
(618, 130, 92, '', 'city', 1, '', ''),
(619, 131, 92, 'Isparta Merkez', 'city', 1, '', ''),
(620, 131, 92, ' Aksu', 'city', 1, '', ''),
(621, 131, 92, ' Atabey', 'city', 1, '', ''),
(622, 131, 92, ' Eğirdir', 'city', 1, '', ''),
(623, 131, 92, ' Gelendost', 'city', 1, '', ''),
(624, 131, 92, ' Gönen', 'city', 1, '', ''),
(625, 131, 92, ' Keçiborlu', 'city', 1, '', ''),
(626, 131, 92, ' Senirkent', 'city', 1, '', ''),
(627, 131, 92, ' Sütçüler', 'city', 1, '', ''),
(628, 131, 92, 'Şarkikaraağaç', 'city', 1, '', ''),
(629, 131, 92, 'Uluborlu', 'city', 1, '', ''),
(630, 131, 92, 'Yalvaç', 'city', 1, '', ''),
(631, 131, 92, 'Yenişarbademli', 'city', 1, '', ''),
(633, 132, 92, 'Ataşehir', 'city', 1, '', ''),
(634, 132, 92, 'Avcılar', 'city', 1, '', ''),
(635, 132, 92, 'Bağcılar', 'city', 1, '', ''),
(636, 132, 92, 'Bahçelievler', 'city', 1, '', ''),
(637, 132, 92, 'Bakırköy', 'city', 1, '', ''),
(638, 132, 92, 'Başakşehir', 'city', 1, '', ''),
(639, 132, 92, 'Bayrampaşa', 'city', 1, '', ''),
(640, 132, 92, 'Beşiktaş', 'city', 1, '', ''),
(641, 132, 92, 'Beykoz', 'city', 1, '', ''),
(642, 132, 92, 'Beyoğlu', 'city', 1, '', ''),
(643, 132, 92, 'Beylikdüzü', 'city', 1, '', ''),
(644, 132, 92, 'Büyükada', 'city', 1, '', ''),
(645, 132, 92, 'Büyükçekmece', 'city', 1, '', ''),
(646, 132, 92, 'Çatalca', 'city', 1, '', ''),
(647, 132, 92, 'Çekmeköy', 'city', 1, '', ''),
(648, 132, 92, 'Eyüp', 'city', 1, '', ''),
(649, 132, 92, 'Esenler', 'city', 1, '', ''),
(650, 132, 92, 'Esenyurt', 'city', 1, '', ''),
(651, 132, 92, 'Fatih', 'city', 1, '', ''),
(652, 132, 92, 'Gaziosmanpaşa', 'city', 1, '', ''),
(653, 132, 92, 'Güngören', 'city', 1, '', ''),
(654, 132, 92, 'Hadımköy', 'city', 1, '', ''),
(655, 132, 92, '\nKadıköy', 'city', 1, '', ''),
(656, 132, 92, 'Kağıthane', 'city', 1, '', ''),
(657, 132, 92, 'Kartal', 'city', 1, '', ''),
(658, 132, 92, 'Küçükçekmece', 'city', 1, '', ''),
(659, 132, 92, 'Maltepe', 'city', 1, '', ''),
(660, 132, 92, 'Pendik', 'city', 1, '', ''),
(661, 132, 92, 'Sancaktepe', 'city', 1, '', ''),
(662, 132, 92, 'Sarıyer', 'city', 1, '', ''),
(663, 132, 92, 'Silivri', 'city', 1, '', ''),
(664, 132, 92, 'Sultanbeyli', 'city', 1, '', ''),
(665, 132, 92, 'Sultangazi', 'city', 1, '', ''),
(666, 132, 92, 'Şile', 'city', 1, '', ''),
(667, 132, 92, 'Şişli', 'city', 1, '', ''),
(668, 132, 92, 'Tuzla', 'city', 1, '', ''),
(669, 132, 92, 'Ümraniye', 'city', 1, '', ''),
(670, 132, 92, 'Üsküdar', 'city', 1, '', ''),
(671, 132, 92, 'Zeytinburnu', 'city', 1, '', ''),
(673, 133, 92, 'Aliağa', 'city', 1, '', ''),
(674, 133, 92, 'Balçova', 'city', 1, '', ''),
(675, 133, 92, 'Bayındır', 'city', 1, '', ''),
(676, 133, 92, 'Bayraklı', 'city', 1, '', ''),
(677, 133, 92, 'Bergama', 'city', 1, '', ''),
(678, 133, 92, 'Beydağ', 'city', 1, '', ''),
(679, 133, 92, 'Bornova', 'city', 1, '', ''),
(680, 133, 92, 'Bozdağ', 'city', 1, '', ''),
(681, 133, 92, 'Buca', 'city', 1, '', ''),
(682, 133, 92, 'Çeşme', 'city', 1, '', ''),
(683, 133, 92, 'Çiğli', 'city', 1, '', ''),
(684, 133, 92, 'Dikili', 'city', 1, '', ''),
(685, 133, 92, 'Foça', 'city', 1, '', ''),
(686, 133, 92, 'Gaziemir', 'city', 1, '', ''),
(687, 133, 92, 'Güzelbahçe', 'city', 1, '', ''),
(688, 133, 92, 'Karabağlar', 'city', 1, '', ''),
(689, 133, 92, 'Karaburun', 'city', 1, '', ''),
(690, 133, 92, 'Karşıyaka', 'city', 1, '', ''),
(691, 133, 92, 'Kemalpaşa', 'city', 1, '', ''),
(692, 133, 92, 'Kınık', 'city', 1, '', ''),
(693, 133, 92, 'Kiraz', 'city', 1, '', ''),
(694, 133, 92, 'Konak', 'city', 1, '', ''),
(695, 133, 92, 'Menderes', 'city', 1, '', ''),
(696, 133, 92, 'Menemen', 'city', 1, '', ''),
(697, 133, 92, 'Narlıdere', 'city', 1, '', ''),
(698, 133, 92, '\nÖdemiş', 'city', 1, '', ''),
(699, 133, 92, 'Seferihisar', 'city', 1, '', ''),
(700, 133, 92, 'Selçuk', 'city', 1, '', ''),
(701, 133, 92, 'Tire', 'city', 1, '', ''),
(702, 133, 92, 'Torbalı', 'city', 1, '', ''),
(703, 133, 92, 'Urla', 'city', 1, '', ''),
(705, 134, 92, 'Afşin', 'city', 1, '', ''),
(706, 134, 92, 'Andırın', 'city', 1, '', ''),
(707, 134, 92, 'Çağlıyancerit', 'city', 1, '', ''),
(708, 134, 92, 'Dulkadiroğlu', 'city', 1, '', ''),
(709, 134, 92, 'Ekinözü', 'city', 1, '', ''),
(710, 134, 92, 'Elbistan', 'city', 1, '', ''),
(711, 134, 92, 'Göksun', 'city', 1, '', ''),
(712, 134, 92, 'Nurhak', 'city', 1, '', ''),
(713, 134, 92, 'Pazarcık', 'city', 1, '', ''),
(714, 134, 92, 'Türkoğlu', 'city', 1, '', ''),
(715, 134, 92, '12 Şubat', 'city', 1, '', ''),
(717, 135, 92, 'Eflani', 'city', 1, '', ''),
(718, 135, 92, 'Eskipazar', 'city', 1, '', ''),
(719, 135, 92, 'Ovacık', 'city', 1, '', ''),
(720, 135, 92, 'Safranbolu', 'city', 1, '', ''),
(721, 135, 92, 'Yenice', 'city', 1, '', ''),
(723, 169, 92, 'Banaz', 'city', 1, '', ''),
(724, 169, 92, 'Eşme', 'city', 1, '', ''),
(725, 169, 92, 'Sivaslı', 'city', 1, '', ''),
(726, 169, 92, 'Karahallı', 'city', 1, '', ''),
(727, 169, 92, 'Ulubey', 'city', 1, '', ''),
(729, 170, 92, 'Bahçesaray', 'city', 1, '', ''),
(730, 170, 92, 'Başkale', 'city', 1, '', ''),
(731, 170, 92, 'Çaldıran', 'city', 1, '', ''),
(732, 170, 92, 'Çatak', 'city', 1, '', ''),
(733, 170, 92, 'Edremit', 'city', 1, '', ''),
(734, 170, 92, 'Erciş', 'city', 1, '', ''),
(735, 170, 92, 'Gevaş', 'city', 1, '', ''),
(736, 170, 92, 'Gürpınar', 'city', 1, '', ''),
(737, 170, 92, 'İpekyolu', 'city', 1, '', ''),
(738, 170, 92, 'Muradiye', 'city', 1, '', ''),
(739, 170, 92, 'Özalp', 'city', 1, '', ''),
(740, 170, 92, 'Saray', 'city', 1, '', ''),
(741, 170, 92, 'Tuşba', 'city', 1, '', ''),
(743, 171, 92, 'Altınova', 'city', 1, '', ''),
(744, 171, 92, 'Armutlu', 'city', 1, '', ''),
(745, 171, 92, 'Çınarcık', 'city', 1, '', ''),
(746, 171, 92, 'Çiftlikköy', 'city', 1, '', ''),
(747, 171, 92, 'Termal', 'city', 1, '', ''),
(749, 172, 92, 'Akdağmadeni', 'city', 1, '', ''),
(750, 172, 92, 'Aydıncık', 'city', 1, '', ''),
(751, 172, 92, 'Boğazlıyan', 'city', 1, '', ''),
(752, 172, 92, 'Çandır', 'city', 1, '', ''),
(753, 172, 92, 'Çayıralan', 'city', 1, '', ''),
(754, 172, 92, 'Çekerek', 'city', 1, '', ''),
(755, 172, 92, 'Kadışehri', 'city', 1, '', ''),
(756, 172, 92, 'Saraykent', 'city', 1, '', ''),
(757, 172, 92, 'Sarıkaya', 'city', 1, '', ''),
(758, 172, 92, 'Şefaatli', 'city', 1, '', ''),
(759, 172, 92, 'Sorgun', 'city', 1, '', ''),
(760, 172, 92, 'Yenifakılı', 'city', 1, '', ''),
(761, 172, 92, 'Yerköy', 'city', 1, '', ''),
(763, 173, 92, 'Alaplı', 'city', 1, '', ''),
(764, 173, 92, 'Çaycuma', 'city', 1, '', ''),
(765, 173, 92, 'Devrek', 'city', 1, '', ''),
(766, 173, 92, 'Ereğli', 'city', 1, '', ''),
(767, 173, 92, 'Gökçebey', 'city', 1, '', ''),
(768, 173, 92, 'Kilimli', 'city', 1, '', ''),
(769, 173, 92, 'Kozlu', 'city', 1, '', ''),
(771, 168, 92, 'Çemişgezek', 'city', 1, '', ''),
(772, 168, 92, 'Hozat', 'city', 1, '', ''),
(773, 168, 92, 'Mazgirt', 'city', 1, '', ''),
(774, 168, 92, 'Nazımiye', 'city', 1, '', ''),
(775, 168, 92, 'Ovacık', 'city', 1, '', ''),
(776, 168, 92, 'Pertek', 'city', 1, '', ''),
(777, 168, 92, 'Pülümür', 'city', 1, '', ''),
(779, 167, 92, 'Akçaaabat', 'city', 1, '', ''),
(780, 167, 92, 'Araklı', 'city', 1, '', ''),
(781, 167, 92, 'Arsin', 'city', 1, '', ''),
(782, 167, 92, 'Beşikdüzü', 'city', 1, '', ''),
(783, 167, 92, 'Çarşıbaşı', 'city', 1, '', ''),
(784, 167, 92, 'Çaykara', 'city', 1, '', ''),
(785, 167, 92, 'Dernekpazarı', 'city', 1, '', ''),
(786, 167, 92, 'Düzköy', 'city', 1, '', ''),
(787, 167, 92, 'Hayrat', 'city', 1, '', ''),
(788, 167, 92, 'Köprübaşı', 'city', 1, '', ''),
(789, 167, 92, 'Maçka', 'city', 1, '', ''),
(790, 167, 92, 'Maçka Altındere', 'city', 1, '', ''),
(791, 167, 92, 'Of', 'city', 1, '', ''),
(792, 167, 92, ' Ortahisar', 'city', 1, '', ''),
(793, 167, 92, ' Sürmene', 'city', 1, '', ''),
(794, 167, 92, ' Şalpazarı', 'city', 1, '', ''),
(795, 167, 92, 'Tonya', 'city', 1, '', ''),
(796, 167, 92, ' Uzungöl', 'city', 1, '', ''),
(797, 167, 92, 'Vakfıkebir', 'city', 1, '', ''),
(798, 167, 92, 'Yomra', 'city', 1, '', ''),
(800, 166, 92, 'Almus', 'city', 1, '', ''),
(801, 166, 92, 'Artova', 'city', 1, '', ''),
(802, 166, 92, 'Başçiftlik', 'city', 1, '', ''),
(803, 166, 92, 'Erbaa', 'city', 1, '', ''),
(804, 166, 92, 'Niksar', 'city', 1, '', ''),
(805, 166, 92, 'Pazar', 'city', 1, '', ''),
(806, 166, 92, 'Reşadiye', 'city', 1, '', ''),
(807, 166, 92, 'Sulusaray', 'city', 1, '', ''),
(808, 166, 92, 'Turhal', 'city', 1, '', ''),
(809, 166, 92, 'Yeşilyurt', 'city', 1, '', ''),
(810, 166, 92, 'Zile', 'city', 1, '', ''),
(812, 165, 92, 'Çerkezköy', 'city', 1, '', ''),
(813, 165, 92, 'Çorlu', 'city', 1, '', ''),
(814, 165, 92, 'Ergene', 'city', 1, '', ''),
(815, 165, 92, 'Hayrabolu', 'city', 1, '', ''),
(816, 165, 92, 'Kapaklı', 'city', 1, '', ''),
(817, 165, 92, 'Malkara', 'city', 1, '', ''),
(818, 165, 92, 'Marmaraereğlisi', 'city', 1, '', ''),
(819, 165, 92, 'Muratlı', 'city', 1, '', ''),
(820, 165, 92, 'Saray', 'city', 1, '', ''),
(821, 165, 92, 'Süleymanpaşa', 'city', 1, '', ''),
(822, 165, 92, 'Şarköy', 'city', 1, '', ''),
(824, 159, 92, 'Atakum', 'city', 1, '', ''),
(825, 159, 92, 'Alaçam', 'city', 1, '', ''),
(826, 159, 92, 'Asarcık', 'city', 1, '', ''),
(827, 159, 92, 'Ayvacık', 'city', 1, '', ''),
(828, 159, 92, 'Bafra', 'city', 1, '', ''),
(829, 159, 92, 'Canik', 'city', 1, '', ''),
(830, 159, 92, 'Çarşamba', 'city', 1, '', ''),
(831, 159, 92, 'Havza', 'city', 1, '', ''),
(832, 159, 92, 'İlkadım', 'city', 1, '', ''),
(833, 159, 92, 'Kavak', 'city', 1, '', ''),
(834, 159, 92, 'Ladik', 'city', 1, '', ''),
(835, 159, 92, '19 Mayıs', 'city', 1, '', ''),
(836, 159, 92, 'Salıpazarı', 'city', 1, '', ''),
(837, 159, 92, 'Tekkeköy', 'city', 1, '', ''),
(838, 159, 92, 'Terme', 'city', 1, '', ''),
(839, 159, 92, 'Vezirköprü', 'city', 1, '', ''),
(840, 159, 92, 'Yakakent', 'city', 1, '', ''),
(842, 160, 92, 'Aydınlar', 'city', 1, '', ''),
(843, 160, 92, 'Baykan', 'city', 1, '', ''),
(844, 160, 92, 'Eruh', 'city', 1, '', ''),
(845, 160, 92, 'Kurtalan', 'city', 1, '', ''),
(846, 160, 92, 'Pervari', 'city', 1, '', ''),
(847, 160, 92, 'Sirvan', 'city', 1, '', ''),
(849, 161, 92, 'Ayancık', 'city', 1, '', ''),
(850, 161, 92, 'Boyabat', 'city', 1, '', ''),
(851, 161, 92, 'Dikmen', 'city', 1, '', ''),
(852, 161, 92, 'Durağan', 'city', 1, '', ''),
(853, 161, 92, 'Erfelek', 'city', 1, '', ''),
(854, 161, 92, 'Gerze', 'city', 1, '', ''),
(855, 161, 92, 'Saraydüzü', 'city', 1, '', ''),
(856, 161, 92, 'Türkeli', 'city', 1, '', ''),
(858, 162, 92, 'Akıncılar', 'city', 1, '', ''),
(859, 162, 92, 'Altınyayla', 'city', 1, '', ''),
(860, 162, 92, 'Divriği', 'city', 1, '', ''),
(861, 162, 92, 'Doğanşar', 'city', 1, '', ''),
(862, 162, 92, 'Gemerek', 'city', 1, '', ''),
(863, 162, 92, 'Gölova', 'city', 1, '', ''),
(864, 162, 92, 'Gürün', 'city', 1, '', ''),
(865, 162, 92, 'Hafik', 'city', 1, '', ''),
(866, 162, 92, 'İmranlı', 'city', 1, '', ''),
(867, 162, 92, 'Kangal', 'city', 1, '', ''),
(868, 162, 92, 'Koyulhisar', 'city', 1, '', ''),
(869, 162, 92, 'Şarkışla', 'city', 1, '', ''),
(870, 162, 92, 'Suşehri', 'city', 1, '', ''),
(871, 162, 92, 'Ulaş', 'city', 1, '', ''),
(872, 162, 92, 'Yıldızeli', 'city', 1, '', ''),
(873, 162, 92, 'Zara', 'city', 1, '', ''),
(875, 163, 92, 'Akçakale', 'city', 1, '', ''),
(876, 163, 92, 'Birecik', 'city', 1, '', ''),
(877, 163, 92, 'Bozova', 'city', 1, '', ''),
(878, 163, 92, 'Ceylanpınar', 'city', 1, '', ''),
(879, 163, 92, 'Halfeti', 'city', 1, '', ''),
(880, 163, 92, 'Harran', 'city', 1, '', ''),
(881, 163, 92, 'Hilvan', 'city', 1, '', ''),
(882, 163, 92, 'Siverek', 'city', 1, '', ''),
(883, 163, 92, 'Suruç', 'city', 1, '', ''),
(884, 163, 92, 'Viranşehir', 'city', 1, '', ''),
(886, 164, 92, 'Beytüşşebap', 'city', 1, '', ''),
(887, 164, 92, 'Cizre', 'city', 1, '', ''),
(888, 164, 92, 'Güçlükonak', 'city', 1, '', ''),
(889, 164, 92, 'İdil', 'city', 1, '', ''),
(890, 164, 92, 'Uludere', 'city', 1, '', ''),
(891, 164, 92, 'Silopi', 'city', 1, '', ''),
(893, 153, 92, 'Acıgöl', 'city', 1, '', ''),
(894, 153, 92, 'Avanos', 'city', 1, '', ''),
(895, 153, 92, 'Derinkuyu', 'city', 1, '', ''),
(896, 153, 92, 'Gülşehir', 'city', 1, '', ''),
(897, 153, 92, 'Hacıbektaş', 'city', 1, '', ''),
(898, 153, 92, 'Kozaklı', 'city', 1, '', ''),
(899, 153, 92, 'Ürgüp', 'city', 1, '', ''),
(901, 154, 92, 'Altunhisar', 'city', 1, '', ''),
(902, 154, 92, 'Bor', 'city', 1, '', ''),
(903, 154, 92, 'Çamardı', 'city', 1, '', ''),
(904, 154, 92, 'Çiftlik', 'city', 1, '', ''),
(905, 154, 92, 'Ulukışla', 'city', 1, '', ''),
(907, 155, 92, 'Akkuş', 'city', 1, '', ''),
(908, 155, 92, 'Aybastı', 'city', 1, '', ''),
(909, 155, 92, 'Çamaş', 'city', 1, '', ''),
(910, 155, 92, 'Çatalpınar', 'city', 1, '', ''),
(911, 155, 92, 'Çaybaşı', 'city', 1, '', ''),
(912, 155, 92, 'Fatsa', 'city', 1, '', ''),
(913, 155, 92, 'Gölköy', 'city', 1, '', ''),
(914, 155, 92, 'Gülyalı', 'city', 1, '', ''),
(915, 155, 92, 'Gürgentepe', 'city', 1, '', ''),
(916, 155, 92, 'İkizce', 'city', 1, '', ''),
(917, 155, 92, 'Kabadüz', 'city', 1, '', ''),
(918, 155, 92, 'Kabataş', 'city', 1, '', ''),
(919, 155, 92, 'Korgan', 'city', 1, '', ''),
(920, 155, 92, 'Kumru', 'city', 1, '', ''),
(921, 155, 92, 'Mesudiye', 'city', 1, '', ''),
(922, 155, 92, 'Perşembe', 'city', 1, '', ''),
(923, 155, 92, 'Ulubey', 'city', 1, '', ''),
(924, 155, 92, 'Ünye', 'city', 1, '', ''),
(926, 156, 92, 'Bahçe', 'city', 1, '', ''),
(927, 156, 92, 'Düziçi', 'city', 1, '', ''),
(928, 156, 92, 'Hasanbeyli', 'city', 1, '', ''),
(929, 156, 92, 'Kadirli', 'city', 1, '', ''),
(930, 156, 92, 'Sumbas', 'city', 1, '', ''),
(931, 156, 92, 'Toprakkale', 'city', 1, '', ''),
(933, 157, 92, 'Ardeşen', 'city', 1, '', ''),
(934, 157, 92, 'Ayder', 'city', 1, '', ''),
(935, 157, 92, 'Çamlıhemşin', 'city', 1, '', ''),
(936, 157, 92, 'Çayeli', 'city', 1, '', ''),
(937, 157, 92, 'Derepazarı', 'city', 1, '', ''),
(938, 157, 92, 'Fındıklı', 'city', 1, '', ''),
(939, 157, 92, 'Güneysu', 'city', 1, '', ''),
(940, 157, 92, 'Hemşin', 'city', 1, '', ''),
(941, 157, 92, 'İkizdere', 'city', 1, '', ''),
(942, 157, 92, 'İyidere', 'city', 1, '', ''),
(943, 157, 92, 'Kalkandere', 'city', 1, '', ''),
(944, 157, 92, 'Pazar', 'city', 1, '', ''),
(946, 158, 92, 'Adapazarı', 'city', 1, '', ''),
(947, 158, 92, 'Akyazı', 'city', 1, '', ''),
(948, 158, 92, 'Arifiye', 'city', 1, '', ''),
(949, 158, 92, 'Erenler', 'city', 1, '', ''),
(950, 158, 92, 'Ferizli', 'city', 1, '', ''),
(951, 158, 92, 'Geyve', 'city', 1, '', ''),
(952, 158, 92, 'Hendek', 'city', 1, '', ''),
(953, 158, 92, 'Karapürcek', 'city', 1, '', ''),
(954, 158, 92, 'Karasu', 'city', 1, '', ''),
(955, 158, 92, 'Kaynarca', 'city', 1, '', ''),
(956, 158, 92, 'Kocaali', 'city', 1, '', ''),
(957, 158, 92, 'Pamukova', 'city', 1, '', ''),
(958, 158, 92, 'Sapanca', 'city', 1, '', ''),
(959, 158, 92, 'Serdivan', 'city', 1, '', ''),
(960, 158, 92, 'Söğütlü', 'city', 1, '', ''),
(961, 158, 92, 'Taraklı', 'city', 1, '', ''),
(963, 148, 92, 'Ahmetli', 'city', 1, '', ''),
(964, 148, 92, 'Akhisar', 'city', 1, '', ''),
(965, 148, 92, 'Alaşehir', 'city', 1, '', ''),
(966, 148, 92, 'Demirci', 'city', 1, '', ''),
(967, 148, 92, 'Gölmarmara', 'city', 1, '', ''),
(968, 148, 92, 'Gördes', 'city', 1, '', ''),
(969, 148, 92, 'Kırkağaç', 'city', 1, '', ''),
(970, 148, 92, 'Köprübaşı', 'city', 1, '', ''),
(971, 148, 92, 'Kula', 'city', 1, '', ''),
(972, 148, 92, 'Salihli', 'city', 1, '', ''),
(973, 148, 92, 'Sarıgöl', 'city', 1, '', ''),
(974, 148, 92, 'Saruhanlı', 'city', 1, '', ''),
(975, 148, 92, 'Selendi', 'city', 1, '', ''),
(976, 148, 92, 'Soma', 'city', 1, '', ''),
(977, 148, 92, 'Şehzadeler', 'city', 1, '', ''),
(978, 148, 92, 'Turgutlu', 'city', 1, '', ''),
(979, 148, 92, 'Yunusemre', 'city', 1, '', ''),
(981, 149, 92, 'Dargeçit', 'city', 1, '', ''),
(982, 149, 92, 'Derik', 'city', 1, '', ''),
(983, 149, 92, 'Kızıltepe', 'city', 1, '', ''),
(984, 149, 92, 'Mazıdağı', 'city', 1, '', ''),
(985, 149, 92, 'Midyat', 'city', 1, '', ''),
(986, 149, 92, 'Nusaybin', 'city', 1, '', ''),
(987, 149, 92, 'Ömerli', 'city', 1, '', ''),
(988, 149, 92, 'Savur', 'city', 1, '', ''),
(989, 149, 92, 'Yeşilli', 'city', 1, '', ''),
(991, 150, 92, 'Akdeniz', 'city', 1, '', ''),
(992, 150, 92, 'Anamur', 'city', 1, '', ''),
(993, 150, 92, 'Aydıncık', 'city', 1, '', ''),
(994, 150, 92, 'Bozyazı', 'city', 1, '', ''),
(995, 150, 92, 'Çamlıyayla', 'city', 1, '', ''),
(996, 150, 92, 'Erdemli', 'city', 1, '', ''),
(997, 150, 92, 'Gülnar', 'city', 1, '', ''),
(998, 150, 92, 'Mezitli', 'city', 1, '', ''),
(999, 150, 92, 'Mut', 'city', 1, '', ''),
(1000, 150, 92, 'Silifke', 'city', 1, '', ''),
(1001, 150, 92, 'Tarsus', 'city', 1, '', ''),
(1002, 150, 92, 'Toroslar', 'city', 1, '', ''),
(1003, 150, 92, 'Yenişehir', 'city', 1, '', ''),
(1005, 151, 92, 'Bodrum', 'city', 1, '', ''),
(1006, 151, 92, 'Dalaman', 'city', 1, '', ''),
(1007, 151, 92, 'Datça', 'city', 1, '', ''),
(1008, 151, 92, 'Fethiye', 'city', 1, '', ''),
(1009, 151, 92, 'Kavaklıdere', 'city', 1, '', ''),
(1010, 151, 92, 'Köyceğiz', 'city', 1, '', ''),
(1011, 151, 92, 'Marmaris', 'city', 1, '', ''),
(1012, 151, 92, 'Menteşe', 'city', 1, '', ''),
(1013, 151, 92, 'Milas', 'city', 1, '', ''),
(1014, 151, 92, 'Ortaca', 'city', 1, '', ''),
(1015, 151, 92, 'Ula', 'city', 1, '', ''),
(1016, 151, 92, 'Seydikemer', 'city', 1, '', ''),
(1017, 151, 92, 'Yatağan', 'city', 1, '', ''),
(1019, 152, 92, 'Bulanık', 'city', 1, '', ''),
(1020, 152, 92, 'Korkut', 'city', 1, '', ''),
(1021, 152, 92, 'Hasköy', 'city', 1, '', ''),
(1022, 152, 92, 'Malazgirt', 'city', 1, '', ''),
(1023, 152, 92, 'Varto', 'city', 1, '', ''),
(1025, 136, 92, 'Ayrancı', 'city', 1, '', ''),
(1026, 136, 92, 'Başyayla', 'city', 1, '', ''),
(1027, 136, 92, 'Ermenek', 'city', 1, '', ''),
(1028, 136, 92, 'Kazımkarabekir', 'city', 1, '', ''),
(1029, 136, 92, 'Sarıveliler', 'city', 1, '', ''),
(1031, 137, 92, 'Akyaka', 'city', 1, '', ''),
(1032, 137, 92, 'Arpaçay', 'city', 1, '', ''),
(1033, 137, 92, 'Digor', 'city', 1, '', ''),
(1034, 137, 92, 'Kağızman', 'city', 1, '', ''),
(1035, 137, 92, 'Sarıkamış', 'city', 1, '', ''),
(1036, 137, 92, 'Selim', 'city', 1, '', ''),
(1037, 137, 92, 'Susuz', 'city', 1, '', ''),
(1039, 138, 92, 'Abana', 'city', 1, '', ''),
(1040, 138, 92, 'Ağlı', 'city', 1, '', ''),
(1041, 138, 92, 'Araç', 'city', 1, '', ''),
(1042, 138, 92, 'Azdavay', 'city', 1, '', ''),
(1043, 138, 92, 'Bozkurt', 'city', 1, '', ''),
(1044, 138, 92, 'Cide', 'city', 1, '', ''),
(1045, 138, 92, 'Çatalzeytin', 'city', 1, '', ''),
(1046, 138, 92, 'Daday', 'city', 1, '', ''),
(1047, 138, 92, 'Devrekani', 'city', 1, '', ''),
(1048, 138, 92, 'Doğanyurt', 'city', 1, '', ''),
(1049, 138, 92, 'Hanönü', 'city', 1, '', ''),
(1050, 138, 92, 'İhsangazi', 'city', 1, '', ''),
(1051, 138, 92, 'İnebolu', 'city', 1, '', ''),
(1052, 138, 92, 'Küre', 'city', 1, '', ''),
(1053, 138, 92, 'Pınarbaşı', 'city', 1, '', ''),
(1054, 138, 92, 'Seydiler', 'city', 1, '', ''),
(1055, 138, 92, 'Şenpazar', 'city', 1, '', ''),
(1056, 138, 92, 'Taşköprü', 'city', 1, '', ''),
(1057, 138, 92, 'Tosya', 'city', 1, '', ''),
(1059, 139, 92, 'Akkışla', 'city', 1, '', ''),
(1060, 139, 92, 'Bünyan', 'city', 1, '', ''),
(1061, 139, 92, 'Develi', 'city', 1, '', ''),
(1062, 139, 92, 'Felahiye', 'city', 1, '', ''),
(1063, 139, 92, 'Hacılar', 'city', 1, '', ''),
(1064, 139, 92, 'İncesu', 'city', 1, '', ''),
(1065, 139, 92, 'Kocasinan', 'city', 1, '', ''),
(1066, 139, 92, 'Melikgazi', 'city', 1, '', ''),
(1067, 139, 92, 'Özvatan', 'city', 1, '', ''),
(1068, 139, 92, 'Pınarbaşı', 'city', 1, '', ''),
(1069, 139, 92, 'Sarıoğlan', 'city', 1, '', ''),
(1070, 139, 92, 'Sarız', 'city', 1, '', ''),
(1071, 139, 92, 'Talas', 'city', 1, '', ''),
(1072, 139, 92, 'Tomarza', 'city', 1, '', ''),
(1073, 139, 92, 'Yahyalı', 'city', 1, '', ''),
(1074, 139, 92, 'Yeşilhisar', 'city', 1, '', ''),
(1076, 140, 92, 'Bahşılı', 'city', 1, '', ''),
(1077, 140, 92, 'Balışeyh', 'city', 1, '', ''),
(1078, 140, 92, 'Çelebi', 'city', 1, '', ''),
(1079, 140, 92, 'Delice', 'city', 1, '', ''),
(1080, 140, 92, 'Karakeçili', 'city', 1, '', ''),
(1081, 140, 92, 'Keskin', 'city', 1, '', ''),
(1082, 140, 92, 'Sulakyurt', 'city', 1, '', ''),
(1083, 140, 92, 'Yahşihan', 'city', 1, '', ''),
(1085, 141, 92, 'Babaeski', 'city', 1, '', ''),
(1086, 141, 92, 'Demirköy', 'city', 1, '', ''),
(1087, 141, 92, 'Kofçaz', 'city', 1, '', ''),
(1088, 141, 92, 'Lüleburgaz', 'city', 1, '', ''),
(1089, 141, 92, 'Pehlivanköy', 'city', 1, '', ''),
(1090, 141, 92, 'Pınarhisar', 'city', 1, '', ''),
(1091, 141, 92, 'Vize', 'city', 1, '', ''),
(1093, 142, 92, 'Akçakent', 'city', 1, '', ''),
(1094, 142, 92, 'Akpınar', 'city', 1, '', ''),
(1095, 142, 92, 'Boztepe', 'city', 1, '', ''),
(1096, 142, 92, 'Çiçekdağı', 'city', 1, '', ''),
(1097, 142, 92, 'Kaman', 'city', 1, '', ''),
(1098, 142, 92, 'Mucur', 'city', 1, '', ''),
(1100, 143, 92, 'Elbeyli', 'city', 1, '', ''),
(1101, 143, 92, 'Musabeyli', 'city', 1, '', ''),
(1102, 143, 92, 'Polateli', 'city', 1, '', ''),
(1104, 144, 92, 'Başiskele', 'city', 1, '', ''),
(1105, 144, 92, 'Çayırova', 'city', 1, '', ''),
(1106, 144, 92, 'Darıca', 'city', 1, '', ''),
(1107, 144, 92, 'Derince', 'city', 1, '', ''),
(1108, 144, 92, 'Dilovası', 'city', 1, '', ''),
(1109, 144, 92, 'Gebze', 'city', 1, '', ''),
(1110, 144, 92, 'Gölcük', 'city', 1, '', ''),
(1111, 144, 92, 'İzmit', 'city', 1, '', ''),
(1112, 144, 92, 'Kandıra', 'city', 1, '', ''),
(1113, 144, 92, 'Karamürsel', 'city', 1, '', ''),
(1114, 144, 92, 'Kartepe', 'city', 1, '', ''),
(1115, 144, 92, 'Körfez', 'city', 1, '', ''),
(1117, 145, 92, 'Ahırlı', 'city', 1, '', ''),
(1118, 145, 92, 'Akören', 'city', 1, '', ''),
(1119, 145, 92, 'Akşehir', 'city', 1, '', ''),
(1120, 145, 92, 'Altınekin', 'city', 1, '', ''),
(1121, 145, 92, 'Beyşehir', 'city', 1, '', ''),
(1122, 145, 92, 'Bozkır', 'city', 1, '', ''),
(1123, 145, 92, 'Cihanbeyli', 'city', 1, '', ''),
(1124, 145, 92, 'Çeltik', 'city', 1, '', ''),
(1125, 145, 92, 'Çumra', 'city', 1, '', ''),
(1126, 145, 92, 'Derbent', 'city', 1, '', ''),
(1127, 145, 92, 'Derebucak', 'city', 1, '', ''),
(1128, 145, 92, 'Doğanhisar', 'city', 1, '', ''),
(1129, 145, 92, 'Emirgazi', 'city', 1, '', ''),
(1130, 145, 92, 'Ereğli', 'city', 1, '', ''),
(1131, 145, 92, 'Güneysınır', 'city', 1, '', ''),
(1132, 145, 92, 'Hadim', 'city', 1, '', ''),
(1133, 145, 92, 'Halkapınar', 'city', 1, '', ''),
(1134, 145, 92, 'Hüyük', 'city', 1, '', ''),
(1135, 145, 92, 'Ilgın', 'city', 1, '', ''),
(1136, 145, 92, 'Kadınhanı', 'city', 1, '', ''),
(1137, 145, 92, 'Karapınar', 'city', 1, '', ''),
(1138, 145, 92, 'Kulu', 'city', 1, '', ''),
(1139, 145, 92, 'Sarayönü', 'city', 1, '', ''),
(1140, 145, 92, 'Seydişehir', 'city', 1, '', ''),
(1141, 145, 92, 'Taşkent', 'city', 1, '', ''),
(1142, 145, 92, 'Tuzlukçu', 'city', 1, '', ''),
(1143, 145, 92, 'Yalıhüyük', 'city', 1, '', ''),
(1144, 145, 92, 'Yunak', 'city', 1, '', ''),
(1145, 145, 92, '', 'city', 1, '', ''),
(1146, 146, 92, 'Altıntaş', 'city', 1, '', ''),
(1147, 146, 92, 'Aslanapa', 'city', 1, '', ''),
(1148, 146, 92, 'Çavdarhisar', 'city', 1, '', ''),
(1149, 146, 92, 'Domaniç', 'city', 1, '', ''),
(1150, 146, 92, 'Dumlupınar', 'city', 1, '', ''),
(1151, 146, 92, 'Emet', 'city', 1, '', ''),
(1152, 146, 92, 'Gediz', 'city', 1, '', ''),
(1153, 146, 92, 'Hisarcık', 'city', 1, '', ''),
(1154, 146, 92, 'Pazarlar', 'city', 1, '', ''),
(1155, 146, 92, 'Şaphane', 'city', 1, '', ''),
(1156, 146, 92, 'Simav', 'city', 1, '', ''),
(1157, 146, 92, 'Tavşanlı', 'city', 1, '', ''),
(1159, 147, 92, 'Akçadağ', 'city', 1, '', ''),
(1160, 147, 92, 'Arapgir', 'city', 1, '', ''),
(1161, 147, 92, 'Arguvan', 'city', 1, '', ''),
(1162, 147, 92, 'Battalgazi', 'city', 1, '', ''),
(1163, 147, 92, 'Darende', 'city', 1, '', ''),
(1164, 147, 92, 'Doğanşehir', 'city', 1, '', ''),
(1165, 147, 92, 'Doğanyol', 'city', 1, '', ''),
(1166, 147, 92, 'Hekimhan', 'city', 1, '', ''),
(1167, 147, 92, 'Kale', 'city', 1, '', ''),
(1168, 147, 92, 'Kuluncak', 'city', 1, '', ''),
(1169, 147, 92, 'Pütürge', 'city', 1, '', ''),
(1170, 147, 92, 'Yazıhan', 'city', 1, '', ''),
(1171, 147, 92, 'Yeşilyurt', 'city', 1, '', ''),
(1173, 93, 92, 'Adana  Center', 'city', 1, '', ''),
(1174, 94, 92, 'Adıyaman Center', 'city', 1, '', ''),
(1175, 95, 92, 'Afyonkarahisar Center', 'city', 1, '', ''),
(1176, 96, 92, 'Ağrı Center', 'city', 1, '', ''),
(1177, 97, 92, 'Aksaray Center', 'city', 1, '', ''),
(1178, 98, 92, 'Amasya Center', 'city', 1, '', ''),
(1179, 99, 92, 'Ankara Center', 'city', 1, '', ''),
(1180, 100, 92, 'Antalya Center', 'city', 1, '', ''),
(1181, 101, 92, 'Arhadan Center', 'city', 1, '', ''),
(1182, 102, 92, 'Artvin Center', 'city', 1, '', ''),
(1183, 103, 92, 'Aydın Center', 'city', 0, '', ''),
(1184, 0, 0, 'abc', 'county', 1, '{"en":"<p>ertgery<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 'Penguins9.jpg'),
(1185, 173, 92, 'Zigana', 'city', 1, '{"en":"<p>gyjtyu test<\\/p>","es":"","ru":"","ar":"","de":"","fr":"","it":"","pt":"","tr":"","hi":"","bn":""}', 'Penguins11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_magazines`
--

CREATE TABLE IF NOT EXISTS `dbc_magazines` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `magazine_no` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `window` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `android` varchar(200) DEFAULT NULL,
  `gallery` varchar(1000) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  `magazine_language` varchar(200) DEFAULT NULL,
  `magazine_frequency` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_magazines`
--

INSERT INTO `dbc_magazines` (`id`, `post_id`, `magazine_no`, `title`, `description`, `window`, `mac`, `android`, `gallery`, `tags`, `qr`, `magazine_language`, `magazine_frequency`) VALUES
(33, 25, NULL, 'magazine1', '<p>magazine1</p>', 'magazine1', 'magazine1', 'magazine1', '["restaurant21.jpg"]', 'magazine1', 'restaurant21.jpg', 'English', 'Weekly'),
(34, 25, NULL, 'magazine2', '<p>magazine2</p>', 'magazine2', 'magazine2', 'magazine2', '["airport21.jpg"]', 'magazine2', 'airport2122.jpg', 'Bangla', 'Fortnightly'),
(35, 22, NULL, 'bursa city magazine', '<p>The city of Bursa, southeast of the Sea of Marmara, lies on the lower slopes of Uludag (Mt. Olympos of Mysia, 2443 meters). The city derives its name from its founder King Prusias, of Bithynia. Its previous antique name was Prussa ad Hypium. It subsequently came under Roman, then Byzantine rule before falling to Orhan Gazi in 1326, when it become the first capital of the Ottoman Empire. Many important Ottoman buildings remain.&nbsp;</p>', '', 'https://itunes.apple.com/us/app/kalear/id605338127?mt=8&ign-mpt=uo%3D4', 'https://play.google.com/store/apps/details?id=arcelik.android.remote', '["Exporter-NovDec-Issue-26-170x220.jpg","Exporter-Cover-July-2012-Issue-24-170x220.jpg","Exporter_Issue34_July-2014_1-170x220.jpg","Exporter_Issue36_November-2014-170x220.jpg","Exporter-FC-May-June-2013-2-170x220.jpg","Exporter-March-2015-170x220.jpg","Exporter-FC-issue-31_2013-1-170x220.jpg","Exporter-SeptOct-Issue-25FC_0-170x220.jpg"]', '', 'mobydickqrcode.png', 'English', 'Monthly'),
(36, 22, NULL, 'bursa city magazine', NULL, NULL, NULL, NULL, '["Exporter-NovDec-Issue-26-170x220.jpg","Exporter-Cover-July-2012-Issue-24-170x220.jpg","Exporter_Issue34_July-2014_1-170x220.jpg","Exporter_Issue36_November-2014-170x220.jpg","Exporter-FC-May-June-2013-2-170x220.jpg","Exporter-March-2015-170x220.jpg","Exporter-FC-issue-31_2013-1-170x220.jpg","Exporter-SeptOct-Issue-25FC_0-170x220.jpg"]', NULL, NULL, 'dfshdt', 'dfgdf'),
(37, 21, NULL, '', '', '', '', '', '[]', '', 'no-image.png', 'English', 'Weekly'),
(38, 26, NULL, '', '', '', '', '', '[]', '', 'no-image.png', 'English', 'Weekly');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_media`
--

CREATE TABLE IF NOT EXISTS `dbc_media` (
  `id` int(10) NOT NULL,
  `media_name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_url` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbc_options`
--

CREATE TABLE IF NOT EXISTS `dbc_options` (
  `id` int(11) NOT NULL,
  `key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_options`
--

INSERT INTO `dbc_options` (`id`, `key`, `values`, `status`) VALUES
(1, 'site_settings', '{"site_title":"VisitTurkey \\/ Cities Guides","footer_text":"Visitturkey 2015, all rights reserved","site_logo":"visitcitys1.png","site_lang":"en","site_direction":"ltr","site_direction_rules":"required","per_page":"10","default_layout":"1","ga_tracking_code":"UA-64062027-1","meta_description":"Turkish Cities Guides.","key_words":"visit,visit turkey,travel,holiday,region,cities,county,municipality\\n","crawl_after":"3"}', 1),
(2, 'active_theme', 'custom', 1),
(3, 'positions', '[{"name":"home_page","status":1,"widgets":["category_main","category_counter","featured_posts_main","recent_posts_main","top_locations_home","adsense_full_width"]},{"name":"right_bar_home","status":1,"widgets":["plain_search_widget","top_posts","category_sidebar","fb_likebox","featured_post","recent_post","top_users","adsense_sidebar","top_locations_sidebar","adsense_sidebar2"]},{"name":"right_bar_detail","status":1,"widgets":["top_locations_sidebar","plain_search_widget","recent_post"]},{"name":"right_bar_all_users","status":1,"widgets":["plain_search_widget","featured_post","top_locations_sidebar","category_sidebar","recent_post"]},{"name":"right_bar_locations","status":1,"widgets":["plain_search_widget","recent_post","top_locations_sidebar","category_sidebar","featured_post","adsense_sidebar"]},{"name":"right_bar_categories","status":1,"widgets":["plain_search_widget","recent_post","adsense_sidebar","fb_likebox","top_locations_sidebar","category_featured_post"]},{"name":"right_bar_search_page","status":1,"widgets":false},{"name":"right_bar_general","status":1,"widgets":["plain_search_widget","featured_post","top_locations_sidebar","category_sidebar"]},{"name":"right_bar_blog_posts","status":1,"widgets":["plain_search_widget"]},{"name":"footer_first_column","status":1,"widgets":["contact_text"]},{"name":"footer_second_column","status":1,"widgets":["follow_us"]},{"name":"footer_third_column","status":1,"widgets":["short_description"]}]', 1),
(4, 'top_menu', '[{"id":"1","parent":0},{"id":"11","parent":0},{"id":"7","parent":0},{"id":"8","parent":0},{"id":"14","parent":0},{"id":"15","parent":0},{"id":"16","parent":0},{"id":"6","parent":0},{"id":"4","parent":0}]', 1),
(5, 'purchase_key', '8ed63c70-bd0f-4c50-b2a2-d3312a8845eb', 1),
(6, 'item_id', '10661606', 1),
(7, 'paypal_settings', '{"enable_sandbox_mode":"Yes","enable_sandbox_mode_rules":"required","item_name":"Publish Business","item_name_rules":"required","email":"seller@paypalsandbox.com","email_rules":"required","currency":"USD","currency_rules":"required","finish_url":"user\\/payment\\/finish_url","finish_url_rules":"required","cancel_url":"user\\/payment\\/cancel_url","cancel_url_rules":"required"}', 1),
(8, 'banner_settings', '{"top_bar_bg_color":"#fdfdfd","menu_bg_color":"#ffffff","menu_text_color":"#666","active_menu_text_color":"#3a5b9c","banner_type":"Layer Slider","search_panel_bg_color":"#9fee9b","show_bg_image":false,"search_bg":"vacation_house_interior-wallpaper-1920x1200-1920x664.jpg","map_latitude":"41.017222","map_longitude":"28.971111","map_zoom":"10"}', 1),
(9, 'webadmin_email', '{"contact_email":"support@yourdomain.com","webadmin_name":"Webadmin","webadmin_email":"support@yourdomain.com"}', 1),
(10, 'smtp_settings', '{"smtp_email":"Disable","smtp_email_rules":"required","smtp_host":"ssl:\\/\\/smtp.googlemail.com","smtp_host_rules":"required","smtp_port":"465","smtp_port_rules":"required","smtp_timeout":"30","smtp_timeout_rules":"required","smtp_user":"test@example.com","smtp_user_rules":"required|valid_email","smtp_pass":"1234","smtp_pass_rules":"required","char_set":"utf-8","char_set_rules":"required","new_line":"\\\\r\\\\n","new_line_rules":"required","mail_type":"html","mail_type_rules":"required"}', 1),
(11, 'business_settings', '{"publish_directly":"No","publish_directly_rules":"required","system_currency":"ALL","system_currency_type":"0","system_currency_rules":"required","enable_signup":"Yes","enable_signup_rules":"required","hide_posts_if_expired":"No","hide_posts_if_expired_rules":"required","show_admin_agent":"Yes","show_admin_agent_rules":"required","show_street_view":"No","show_street_view_rules":"required","show_state_province":"yes","show_state_province_rules":"required","city_dropdown":"dropdown","city_dropdown_rules":"required","show_distance_in":"kms","show_distance_in_rules":"required","posts_per_page":"6","posts_per_page_rules":"required","currency_placing":"before_with_no_gap","currency_placing_rules":"required","enable_fb_login":"No","enable_fb_login_rules":"required","fb_app_id":"","fb_app_id_rules":"","fb_secret_key":"","fb_secret_key_rules":"","enable_comment":"No","enable_comment_rules":"required","fb_comment_app_id":"","fb_comment_app_id_rules":"","disqus_shortname":"","disqus_shortname_rules":""}', 1),
(12, 'package_settings', '{"enable_pricing":"No","enable_pricing_rules":"required","enable_paypal_transfer":"No","enable_paypal_transfer_rules":"required","enable_bank_transfer":"No","enable_bank_transfer_rules":"required","bank_transfer_instruction_for_posts":"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank","bank_transfer_instruction_for_posts_rules":"","enable_featured_pricing":"No","enable_featured_pricing_rules":"required","enable_featured_paypal_transfer":"No","enable_featured_paypal_transfer_rules":"required","enable_featured_bank_transfer":"No","enable_featured_bank_transfer_rules":"required","bank_transfer_instruction_for_featured_posts":"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank","bank_transfer_instruction_for_featured_posts_rules":"","bank_currency":"use_paypal","bank_currency_rules":"required"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_packages`
--

CREATE TABLE IF NOT EXISTS `dbc_packages` (
  `id` int(11) NOT NULL,
  `type` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post_package',
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `expiration_time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_packages`
--

INSERT INTO `dbc_packages` (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `status`) VALUES
(1, 'featured_package', 'Free', 'Free for 15 days', '0.00', 15, 1),
(2, 'post_package', 'Normal', '', '10.00', 60, 1),
(3, 'post_package', 'Free', 'Free for 30 days', '0.00', 30, 1),
(4, 'featured_package', 'Ultimate', 'Featured for 60 days', '5.00', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_pages`
--

CREATE TABLE IF NOT EXISTS `dbc_pages` (
  `id` int(11) NOT NULL,
  `alias` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_in_menu` int(1) NOT NULL DEFAULT '1',
  `layout` int(1) NOT NULL,
  `content_from` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manual',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_settings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `editable` int(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_pages`
--

INSERT INTO `dbc_pages` (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES
(1, 'home', 1, 1, 'Url', '[home]', '', '', '', '{"meta_description":"classified buy sell. real estates electronics pets vehicles matrimonial jobs community services fashion search and post your ad Top Featured Posts categories","key_words":"sale,rent,buy,classified,cms,whiz,electronics,real estate,pets,fashion","crawl_after":"3"}', 1424346356, 1, 0, 0),
(2, 'advanced_search', 1, 1, 'Url', '[advanced_search]', 'results', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432406579, 2, 0, 0),
(3, 'about', 1, 1, 'Manual', '[about]', 'page/about', '<p>About Us:</p>\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>', '<p>Phone : 0850 433 45 46</p>\n<p>Mail : contact@visit.com.tr</p>', '{"meta_description":"","key_words":"","crawl_after":""}', 1432413376, 2, 0, 0),
(4, 'contact', 1, 1, 'Url', '[contact]', 'contact', '', '', '{"meta_description":"contact us page for whiz, this meta will be read by search engine","key_words":"classified,buy,sale","crawl_after":"3"}', 1424339457, 1, 1, 0),
(5, 'users', 1, 0, 'Url', '[users]', 'users', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1431456099, 2, 1, 0),
(6, 'Blog', 1, 0, 'Url', '[Blog]', 'blog-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432461423, 1, 1, 0),
(7, 'news', 1, 1, 'Url', '[News]', 'news-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432461614, 1, 1, 0),
(8, 'destinations', 1, 0, 'Url', '[Destinations]', 'article-posts', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432413136, 1, 1, 0),
(9, 'pages', 1, 0, 'Url', '[pages]', '#', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1431455940, 0, 1, 0),
(10, 'list_business', 1, 0, 'Url', '[list_business]', 'list-business', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432406538, 2, 1, 0),
(11, 'locations', 1, 2, 'Url', '[locations]', 'locations', '', '', '{"meta_description":"city, state, country","key_words":"city, state, country","crawl_after":"3"}', 2147483647, 1, 1, 0),
(12, 'terms_and_conditions', 0, 2, 'Manual', '[terms_and_conditions]', 'page/terms_and_conditions', '<h2>Terms and conditions</h2>\r\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>\r\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1429350671, 1, 1, 0),
(13, 'bursa', 0, 0, 'Url', 'bursa', 'www.visit.com.tr/bursa', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1431431981, 0, 1, 0),
(14, 'apps', 1, 1, 'Url', '[Apps]', 'apps', '', '', '{"meta_description":"","key_words":"","crawl_after":"3"}', 1436186520, 1, 1, 0),
(15, 'emagazine', 1, 1, 'Url', '[Emagazine]', 'emagazine', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1432461538, 1, 1, 0),
(16, 'videos', 1, 1, 'Url', 'Videos', 'videos', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1436186535, 1, 1, 0),
(17, 'cfgfgh', 1, 0, 'Url', 'cfgfgh', '', '', '', '{"meta_description":"","key_words":"","crawl_after":""}', 1440079368, 0, 1, 0),
(18, 'hggjfkjkfghj', 0, 0, 'Manual', 'hggjfkjkfghj', 'page/hggjfkjkfghj', '<p>ghfhjk</p>', '<p>jhgfjhj</p>', '{"meta_description":"","key_words":"","crawl_after":""}', 1440082949, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_post_meta`
--

CREATE TABLE IF NOT EXISTS `dbc_post_meta` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_post_meta`
--

INSERT INTO `dbc_post_meta` (`id`, `post_id`, `key`, `value`, `status`) VALUES
(1, 3, 'facebook_profile', '', 1),
(2, 3, 'twitter_profile', '', 1),
(3, 3, 'linkedin_profile', '', 1),
(4, 3, 'pinterest_profile', '', 1),
(5, 3, 'googleplus_profile', '', 1),
(6, 3, 'business_logo', 'no-image.png', 1),
(7, 8, 'facebook_profile', '', 1),
(8, 8, 'twitter_profile', '', 1),
(9, 8, 'linkedin_profile', '', 1),
(10, 8, 'pinterest_profile', '', 1),
(11, 8, 'googleplus_profile', '', 1),
(12, 8, 'business_logo', 'Vanamo_Logo.png', 1),
(13, 9, 'facebook_profile', '', 1),
(14, 9, 'twitter_profile', '', 1),
(15, 9, 'linkedin_profile', '', 1),
(16, 9, 'pinterest_profile', '', 1),
(17, 9, 'googleplus_profile', '', 1),
(18, 9, 'business_logo', 'no-image.png', 1),
(19, 7, 'facebook_profile', '', 1),
(20, 7, 'twitter_profile', '', 1),
(21, 7, 'linkedin_profile', '', 1),
(22, 7, 'pinterest_profile', '', 1),
(23, 7, 'googleplus_profile', '', 1),
(24, 7, 'business_logo', 'no-image.png', 1),
(25, 6, 'facebook_profile', '', 1),
(26, 6, 'twitter_profile', '', 1),
(27, 6, 'linkedin_profile', '', 1),
(28, 6, 'pinterest_profile', '', 1),
(29, 6, 'googleplus_profile', '', 1),
(30, 6, 'business_logo', 'no-image.png', 1),
(31, 5, 'facebook_profile', '', 1),
(32, 5, 'twitter_profile', '', 1),
(33, 5, 'linkedin_profile', '', 1),
(34, 5, 'pinterest_profile', '', 1),
(35, 5, 'googleplus_profile', '', 1),
(36, 5, 'business_logo', 'no-image.png', 1),
(37, 4, 'facebook_profile', '', 1),
(38, 4, 'twitter_profile', '', 1),
(39, 4, 'linkedin_profile', '', 1),
(40, 4, 'pinterest_profile', '', 1),
(41, 4, 'googleplus_profile', '', 1),
(42, 4, 'business_logo', 'no-image.png', 1),
(43, 2, 'facebook_profile', '', 1),
(44, 2, 'twitter_profile', '', 1),
(45, 2, 'linkedin_profile', '', 1),
(46, 2, 'pinterest_profile', '', 1),
(47, 2, 'googleplus_profile', '', 1),
(48, 2, 'business_logo', 'no-image.png', 1),
(49, 1, 'facebook_profile', '', 1),
(50, 1, 'twitter_profile', '', 1),
(51, 1, 'linkedin_profile', '', 1),
(52, 1, 'pinterest_profile', '', 1),
(53, 1, 'googleplus_profile', '', 1),
(54, 1, 'business_logo', 'no-image.png', 1),
(55, 10, 'facebook_profile', 'http://www.facebook.com/pages/MUSTAFA-D%C3%9CNDAR/386477004760284', 1),
(56, 10, 'twitter_profile', 'https://twitter.com/#!/mustafadundar65', 1),
(57, 10, 'linkedin_profile', '', 1),
(58, 10, 'pinterest_profile', '', 1),
(59, 10, 'googleplus_profile', '', 1),
(60, 10, 'business_logo', 'logo.png', 1),
(61, 11, 'facebook_profile', 'https://www.facebook.com/pages/TC-Adana-Valili%C4%9Fi/699476423495603', 1),
(62, 11, 'twitter_profile', 'https://twitter.com/TCAdanaValiligi', 1),
(63, 11, 'linkedin_profile', '', 1),
(64, 11, 'pinterest_profile', '', 1),
(65, 11, 'googleplus_profile', 'https://plus.google.com/113657633051702495153', 1),
(66, 11, 'business_logo', 'logoadana1.png', 1),
(67, 12, 'facebook_profile', 'https://www.facebook.com/AdiyamanValiligi', 1),
(68, 12, 'twitter_profile', 'https://twitter.com/adiyamangovtr', 1),
(69, 12, 'linkedin_profile', '', 1),
(70, 12, 'pinterest_profile', '', 1),
(71, 12, 'googleplus_profile', '', 1),
(72, 12, 'business_logo', 'adiyamanlogo.jpg', 1),
(73, 13, 'facebook_profile', 'https://www.facebook.com/afyonkarahisarvaliligi', 1),
(74, 13, 'twitter_profile', 'https://twitter.com/AfyonValiligi', 1),
(75, 13, 'linkedin_profile', '', 1),
(76, 13, 'pinterest_profile', '', 1),
(77, 13, 'googleplus_profile', 'https://plus.google.com/103762948581700491162/posts', 1),
(78, 13, 'business_logo', 'valilik_logo.jpg', 1),
(79, 14, 'facebook_profile', '', 1),
(80, 14, 'twitter_profile', '', 1),
(81, 14, 'linkedin_profile', '', 1),
(82, 14, 'pinterest_profile', '', 1),
(83, 14, 'googleplus_profile', '', 1),
(84, 14, 'business_logo', 'AGRI_VALILIK_LOGO.JPG', 1),
(85, 15, 'facebook_profile', '', 1),
(86, 15, 'twitter_profile', '', 1),
(87, 15, 'linkedin_profile', '', 1),
(88, 15, 'pinterest_profile', '', 1),
(89, 15, 'googleplus_profile', '', 1),
(90, 15, 'business_logo', 'logoindex.gif', 1),
(91, 16, 'facebook_profile', '', 1),
(92, 16, 'twitter_profile', '', 1),
(93, 16, 'linkedin_profile', '', 1),
(94, 16, 'pinterest_profile', '', 1),
(95, 16, 'googleplus_profile', '', 1),
(96, 16, 'business_logo', 'amasya-valiligi_76ge3.jpg', 1),
(97, 17, 'facebook_profile', 'https://www.facebook.com/pages/Ankara-Valili%C4%9Fi/101337269964761', 1),
(98, 17, 'twitter_profile', 'https://twitter.com/ankaravaliligi', 1),
(99, 17, 'linkedin_profile', '', 1),
(100, 17, 'pinterest_profile', '', 1),
(101, 17, 'googleplus_profile', 'https://plus.google.com/u/0/104042992859832326475/', 1),
(102, 17, 'business_logo', 'ankaralogo.gif', 1),
(103, 18, 'facebook_profile', '', 1),
(104, 18, 'twitter_profile', '', 1),
(105, 18, 'linkedin_profile', '', 1),
(106, 18, 'pinterest_profile', '', 1),
(107, 18, 'googleplus_profile', '', 1),
(108, 18, 'business_logo', 'logoantalya.jpg', 1),
(109, 19, 'facebook_profile', '', 1),
(110, 19, 'twitter_profile', '', 1),
(111, 19, 'linkedin_profile', '', 1),
(112, 19, 'pinterest_profile', '', 1),
(113, 19, 'googleplus_profile', '', 1),
(114, 19, 'business_logo', 'vilayet_1_copy.jpg', 1),
(115, 20, 'facebook_profile', 'https://www.facebook.com/Valilik.Artvin', 1),
(116, 20, 'twitter_profile', 'http://www.twitter.com/artvinvaliligi/', 1),
(117, 20, 'linkedin_profile', '', 1),
(118, 20, 'pinterest_profile', '', 1),
(119, 20, 'googleplus_profile', '', 1),
(120, 20, 'business_logo', 'valilikLogo.png', 1),
(121, 21, 'facebook_profile', 'https://www.facebook.com/Valilik.Artvin', 1),
(122, 21, 'twitter_profile', '', 1),
(123, 21, 'linkedin_profile', '', 1),
(124, 21, 'pinterest_profile', '', 1),
(125, 21, 'googleplus_profile', 'https://www.facebook.com/Valilik.Artvin', 1),
(126, 21, 'business_logo', 'Valilik_Logo.JPG', 1),
(127, 22, 'facebook_profile', '', 1),
(128, 22, 'twitter_profile', '', 1),
(129, 22, 'linkedin_profile', '', 1),
(130, 22, 'pinterest_profile', '', 1),
(131, 22, 'googleplus_profile', '', 1),
(132, 22, 'business_logo', 'no-image.png', 1),
(133, 23, 'facebook_profile', '', 1),
(134, 23, 'twitter_profile', '', 1),
(135, 23, 'linkedin_profile', '', 1),
(136, 23, 'pinterest_profile', '', 1),
(137, 23, 'googleplus_profile', '', 1),
(138, 23, 'business_logo', 'no-image.png', 1),
(139, 24, 'facebook_profile', '', 1),
(140, 24, 'twitter_profile', '', 1),
(141, 24, 'linkedin_profile', '', 1),
(142, 24, 'pinterest_profile', '', 1),
(143, 24, 'googleplus_profile', '', 1),
(144, 24, 'business_logo', 'no-image.png', 1),
(145, 25, 'facebook_profile', '', 1),
(146, 25, 'twitter_profile', '', 1),
(147, 25, 'linkedin_profile', '', 1),
(148, 25, 'pinterest_profile', '', 1),
(149, 25, 'googleplus_profile', '', 1),
(150, 25, 'business_logo', 'no-image.png', 1),
(151, 21, 'youtube_profile', '', 1),
(152, 21, 'whatsapp_profile', '', 1),
(153, 26, 'facebook_profile', '', 1),
(154, 26, 'twitter_profile', '', 1),
(155, 26, 'linkedin_profile', '', 1),
(156, 26, 'pinterest_profile', '', 1),
(157, 26, 'googleplus_profile', '', 1),
(158, 26, 'business_logo', 'no-image.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_post_package`
--

CREATE TABLE IF NOT EXISTS `dbc_post_package` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) NOT NULL,
  `post_id` int(15) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `is_active` int(1) NOT NULL COMMENT '0=no,2=pending,1=active',
  `status` int(1) NOT NULL COMMENT '0=deleted,1=active',
  `payment_medium` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'paypal',
  `payment_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `response_log` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_post_package`
--

INSERT INTO `dbc_post_package` (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES
(1, '5551ff6ce6867', 10, 2, '10.00', '2015-05-12', '2015-05-12', '2015-07-11', 1, 1, 'paypal', 'post', 'Approved by admin'),
(2, '555aed2b562ab', 11, 3, '0.00', '2015-05-19', '2015-05-19', '2015-06-18', 1, 1, 'paypal', 'post', 'Free package'),
(3, '555af27832171', 12, 3, '0.00', '2015-05-19', '2015-05-19', '2015-06-18', 1, 1, 'paypal', 'post', 'Free package'),
(4, '555b020c48167', 13, 3, '0.00', '2015-05-19', '2015-05-19', '2015-06-18', 1, 1, 'paypal', 'post', 'Free package'),
(5, '555b09f13aae5', 14, 2, '10.00', '2015-05-19', '2015-05-19', '2015-07-18', 1, 1, 'paypal', 'post', 'Approved by admin'),
(6, '555ef12347598', 15, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(7, '555ef8d445f05', 16, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(8, '555f01b8c03c9', 17, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(9, '555f126622af2', 18, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(10, '555f18feba001', 19, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(11, '555f219e63604', 20, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin'),
(12, '555f2593b255a', 21, 2, '10.00', '2015-05-22', '2015-05-22', '2015-07-21', 1, 1, 'paypal', 'post', 'Approved by admin');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_posts`
--

CREATE TABLE IF NOT EXISTS `dbc_posts` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rating` decimal(2,1) NOT NULL DEFAULT '0.0',
  `category` int(11) NOT NULL DEFAULT '0',
  `price_range` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_website` char(200) NOT NULL,
  `founded` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip_code` char(15) NOT NULL,
  `latitude` decimal(11,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `featured_img` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_url` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `opening_hour` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `additional_features` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `food_menu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `publish_time` int(20) NOT NULL DEFAULT '0',
  `last_update_time` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expirtion_date` date DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `featured_expiration_date` date DEFAULT NULL,
  `report` int(11) NOT NULL DEFAULT '0',
  `total_view` int(10) NOT NULL DEFAULT '0',
  `search_meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_posts`
--

INSERT INTO `dbc_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `price_range`, `address`, `phone_no`, `website`, `project_website`, `founded`, `email`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `opening_hour`, `additional_features`, `food_menu`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(1, '54f5920b0b99e', '{"en":"Demo Airport","es":"Demo Airport","ru":"Demo Airport","ar":"Demo Airport","de":"Demo Airport","fr":"Demo Airport","it":"Demo Airport","pt":"Demo Airport","tr":"Demo Airport","hi":"Demo Airport","bn":"Demo Airport"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'airport, plane, airlines', '0.0', 1, '', 'saimbeyli', '333-100-9900', 'www.test-air.org', '', '1960', 'airport@example.com', 92, 93, 184, '94128', '37.98601490', '36.09002010', 'air1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425379851, 1425379851, 1431359574, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 915, 'Airport 1960 Turkey Adana Saimbeyli 94128 saimbeyli Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport Demo Airport airport, plane, airlines '),
(2, '54f593af839fa', '{"en":"Night Club","es":"Night Club","ru":"Night Club","ar":"Night Club","de":"Night Club","fr":"Night Club","it":"Night Club","pt":"Night Club","tr":"Night Club","hi":"Night Club","bn":"Night Club"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'nightlife, club, party, place, dj', '0.0', 6, '200$ - 1800$', 'pozantı', '212-992-0091', 'www.test-night.com', '', '2002', 'night@example.com', 92, 93, 183, '22314', '37.42658020', '34.87207300', 'oro-nightclub.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '["Best Dj","Awesome Party","Sexy Girls"]', NULL, 1, 1425380271, 1425380272, 1431359434, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 684, 'Night Clubs 2002 Turkey Adana Pozantı 22314 pozantı Night Club Night Club Night Club Night Club Night Club Night Club Night Club Night Club Night Club Night Club Night Club nightlife, club, party, place, dj '),
(3, '54f595875cce9', '{"en":"Best Resort","es":"Best Resort","ru":"Best Resort","ar":"Best Resort","de":"Best Resort","fr":"Best Resort","it":"Best Resort","pt":"Best Resort","tr":"Best Resort","hi":"Best Resort","bn":"Best Resort"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'resort, vacation, travel, relax, family', '0.0', 4, '300$-25000$', 'kozan', '212-992-0091', 'www.test-hotel.com', '', '1978', 'hotel@example.com', 92, 93, 182, '96815', '37.45000000', '35.80000000', 'resort11.jpg', '', '["7172953627_ecd4e2277f_b.jpg","3601132112_8d00490483_b.jpg","10466694366_e9db09a762_b.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425380743, 1425380743, 1431359386, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 511, 'Hotels & Resorts 1978 Turkey Adana Kozan 96815 kozan Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort Best Resort resort, vacation, travel, relax, family '),
(4, '54f5971764a0e', '{"en":"Test Restaurant","es":"Test Restaurant","ru":"Test Restaurant","ar":"Test Restaurant","de":"Test Restaurant","fr":"Test Restaurant","it":"Test Restaurant","pt":"Test Restaurant","tr":"Test Restaurant","hi":"Test Restaurant","bn":"Test Restaurant"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', '', '0.0', 8, '', 'karaisali', '222-333-1331', '', '', '', 'restau@example.com', 92, 93, 180, '11206', '37.25201000', '35.06329000', 'restaurant1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425381143, 1425381143, 1431359281, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 678, 'Restaurants  Turkey Adana Karaisalı 11206 karaisali Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant Test Restaurant  ');
INSERT INTO `dbc_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `price_range`, `address`, `phone_no`, `website`, `project_website`, `founded`, `email`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `opening_hour`, `additional_features`, `food_menu`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(5, '54f598d994ec0', '{"en":"Hot Cofee","es":"Hot Cofee","ru":"Hot Cofee","ar":"Hot Cofee","de":"Hot Cofee","fr":"Hot Cofee","it":"Hot Cofee","pt":"Hot Cofee","tr":"Hot Cofee","hi":"Hot Cofee","bn":"Hot Cofee"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'cafe, coffee, hangout, tea ', '0.0', 2, '', '5633 Hollywood Blvd', '333-100-9900', 'www.cafetest.com', '', '1978', 'sooncafe@example.com', 92, 93, 179, '90028', '37.00000000', '35.32133300', 'cafe1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425381593, 1425381594, 1431359008, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 688, 'Cafe 1978 Turkey Adana İmamoğlu 90028 5633 Hollywood Blvd Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee Hot Cofee cafe, coffee, hangout, tea  '),
(6, '54f59a2baf959', '{"en":"New Cinema","es":"New Cinema","ru":"New Cinema","ar":"New Cinema","de":"New Cinema","fr":"New Cinema","it":"New Cinema","pt":"New Cinema","tr":"New Cinema","hi":"New Cinema","bn":"New Cinema"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'movie, blockbuster, art, cinema', '0.0', 3, '', 'feke', '333-100-9900', 'www.westcoocinemas.net', '', '1930', 'cinema@example.com', 92, 93, 178, '89109', '37.81493790', '35.91180250', 'cinemas1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425381931, 1425381934, 1431358916, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 872, 'Cinemas 1930 Turkey Adana Feke 89109 feke New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema New Cinema movie, blockbuster, art, cinema '),
(7, '54f59c2d0b040', '{"en":"Best Shop","es":"Best Shop","ru":"Best Shop","ar":"Best Shop","de":"Best Shop","fr":"Best Shop","it":"Best Shop","pt":"Best Shop","tr":"Best Shop","hi":"Best Shop","bn":"Best Shop"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'shop, clothes, buy, trial', '0.0', 9, '', 'çukurova', '333-100-9900', 'www.nwrr.com', '', '1990', 'shopzww@example.com', 92, 93, 177, '30309', '37.04790000', '35.29862710', 'shop1.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425382445, 1425382446, 1431358866, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 950, 'Shops 1990 Turkey Adana Çukurova 30309 çukurova Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop Best Shop shop, clothes, buy, trial '),
(8, '54f59efd337e4', '{"en":"Aryan Club","es":"Aryan Club","ru":"Aryan Club","ar":"Aryan Club","de":"Aryan Club","fr":"Aryan Club","it":"Aryan Club","pt":"Aryan Club","tr":"Aryan Club","hi":"Aryan Club","bn":"Aryan Club"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'night, club, party, girls', '0.0', 6, '', 'aladağ', '333-100-9900', 'www.test-night.com', '', '2009', 'night@example.com', 92, 93, 175, '90069', '37.52778960', '35.39872940', 'night_club11.jpg', 'https://www.youtube.com/watch?v=D2WHIMlPAKc', '["images1.jpg","images6.jpg","images5.jpg","images3.jpg","images4.jpg","images2.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425383165, 1425383165, 1431431595, 1, '2015-03-03', '2015-04-02', 0, '2015-03-25', 0, 886, 'Night Clubs 2009 Turkey Adana Aladağ 90069 aladağ Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club Aryan Club night, club, party, girls ');
INSERT INTO `dbc_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `price_range`, `address`, `phone_no`, `website`, `project_website`, `founded`, `email`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `opening_hour`, `additional_features`, `food_menu`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(9, '54f5a06e62f7a', '{"en":"Indian Food","es":"Indian Food","ru":"Indian Food","ar":"Indian Food","de":"Indian Food","fr":"Indian Food","it":"Indian Food","pt":"Indian Food","tr":"Indian Food","hi":"Indian Food","bn":"Indian Food"}', '{"en":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","es":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ru":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","ar":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","de":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","fr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","it":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","pt":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","tr":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","hi":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>","bn":"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>"}', 'desi, indian, food, taste', '0.0', 8, '', 'ceyhan', '333-100-9900', '', '', '', 'food@example.com', 92, 93, 176, '', '37.03170000', '35.82275000', 'restaurant2.jpg', 'https://www.youtube.com/watch?v=rCfjYBYOJyY', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1425383534, 1425383534, 1431353820, 1, '2015-03-03', '2015-04-02', 0, NULL, 0, 765, 'Restaurants  Turkey Adana Ceyhan  ceyhan Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food Indian Food desi, indian, food, taste '),
(10, '5551ff6cb8a1d', '{"en":"Osmangazi Municipality","es":"Presentation","ru":"Presentation","ar":"Presentation","de":"Presentation","fr":"Presentation","it":"Presentation","pt":"Presentation","tr":"Presentation","hi":"Presentation","bn":"Presentation"}', '{"en":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","es":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","ru":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","ar":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","de":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","fr":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","it":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","pt":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","tr":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","hi":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>","bn":"<p>The overall population of Bursa province by 2000 is 2.125.140, its area is 10.422 km&sup2; and the density of the population is 204 persons per square kilometer. % 3.1 of the entire population of Turkey live in Bursa.<\\/p>\\n<p>The overall surface of Osmangazi Municipality, the biggest district within the city, is 70783 ha: 18054 ha of which is the area and 52729 ha of which is the contiguous area. There are 108 quarters and 30 contiguous villages within the boundary of Osmangazi Municipality, where the population is 747.370 in accordance with datum from T&Uuml;\\u0130K (Turkish Statistical Institute) and it goes up to one-million during the day-time. As well as 5-stars hotels and malls, there are also 88 hotels, 554 restaurant and 9 cinemas.<\\/p>\\n<p>Nonetheless following types of industries are existing in the district: automotive supply industry, textile, towel, knitter&amp;tricot, shoe industry, agricultural machines, furniture, leather, plastic, machine and metal industry, electric, foundry, welding machine, stove and knife sectors. Moreover there are also oil and flour factories.<\\/p>\\n<p>Osmangazi is the most-developed district of Bursa in terms of economy and culture. The average level of education is higher than Turkey&rsquo;s average. The literacy rate is % 99. Osmangazi is one of the biggest districts of Turkey. It is bigger than 56 Turkish cities and it is a touristic city with historical beauties, mountain and thermal springs, an agricultural city with unique nature and fertile plain, a trade and industrial city with facilities and factories.<\\/p>\\n<p class=\\"form11\\">Main attraction places within Osmangazi are as follows: Re\\u015fat Oyal Culture Park which is the symbol of Bursa, \\u0130nkaya Plane which is the natural monument of 500 years old, Tophane Slopes, Kozahan which is located between Ulu Mosque amd Orhan Mosque, Emirhan which was built by Orhan Bey in 1340, more than twenty tombs including Murat II. and Cem Sultan, Muradiye Complex which is composed of madrasah, school, soup house, bath and mosque, H&uuml;davendigar Mosque, Ulu mosque which is the sample of multi-pillared and multi-domed mosques, Merinos City Park, Botanical Park, So\\u011fanl\\u0131 Zoo, P\\u0131narba\\u015f\\u0131 Park, So\\u011fukkuyu Park, Hamitler Park, Cable Water Ski Center.<\\/p>\\n<p>Below are the other important historical momunets within the district: Bursa Castle, Bursa Fortress, Tomb of Murad I., Tomb of Pars Bey, &Ccedil;ak\\u0131r A\\u011fa Bath, Tombs of Osmangazi and Orhangazi, Tomb of \\u015eehzade Mustafa, Bazaar, Archeology Museum, Atat&uuml;rk Museum, Museum of Ottoman House, City Museum, &Ouml;rdekli Culture Center, G&ouml;kdere Madrasah, Irgand\\u0131 Bridge, Hara&ccedil;&ccedil;\\u0131o\\u011flu Madrasah, Karaba\\u015f-\\u0131 Veli Lodge, Balibey Khan, Muradiye Bath, Galle Khan.<\\/p>"}', '', '5.0', 10, '', 'Santral Garaj Mh', '0224) 273 0000', 'www.abc.com', 'www.abc.com', '', 'info@osmangazi.bel.tr', 92, 113, 408, '16200', '40.19769400', '29.06197990', 'bursa-osmangazi-belediyesi1.jpg', 'https://www.youtube.com/watch?v=D2WHIMlPAKc', '["fg_002.jpg","fg_008.jpg","fg_005.jpg","fg_007.jpg","fg_006.jpg","fg_003.jpg","fg_001.jpg","fg_004.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 2, 1431437164, 1431437164, 1431437787, 1, '2015-05-12', '2015-07-11', 0, '2015-06-27', 0, 665, 'municipalities  Turkey Bursa Osmangazi 16200 Santral Garaj Mh Osmangazi Municipality Presentation Presentation Presentation Presentation Presentation Presentation Presentation Presentation Presentation Presentation  '),
(11, '555aed2aec56f', '{"en":"Governorship  of Adana","es":"proconsulate of Adana","ru":"proconsulate of Adana","ar":"proconsulate of Adana","de":"proconsulate of Adana","fr":"proconsulate of Adana","it":"proconsulate of Adana","pt":"proconsulate of Adana","tr":"proconsulate of Adana","hi":"proconsulate of Adana","bn":"proconsulate of Adana"}', '{"en":"<p>Governorship &nbsp;of Adana<\\/p>","es":"<p>proconsulate of Adana<\\/p>","ru":"<p>proconsulate of Adana<\\/p>","ar":"<p>proconsulate of Adana<\\/p>","de":"<p>proconsulate of Adana<\\/p>","fr":"<p>proconsulate of Adana<\\/p>","it":"<p>proconsulate of Adana<\\/p>","pt":"<p>proconsulate of Adana<\\/p>","tr":"<p>proconsulate of Adana<\\/p>","hi":"<p>proconsulate of Adana<\\/p>","bn":"<p>proconsulate of Adana<\\/p>"}', 'proconsulate of Adana', '0.0', 12, '', 'Döşeme Mahallesi Mehmet Nuri SABUNCU Bulvarı No:89 Seyhan / ADANA ', '90 322 459 27 43', 'www.adana.gov.tr', '', '', 'adana@adana.gov.tr', 92, 93, 1173, '01330', '37.00000000', '35.32133300', 'valilik-iletisim.jpg', '', '["129401,adana-merkez-7jpg.png","129402,ala-kapi-saimbeyli-sar-15jpg.png","129461,yeni-muze-8jpg.png","129465,yumurtalik-3jpg.png","129464,yumurtalik-2jpg.png","129466,yumurtalik-agyatanjpg.png","129463,yumurtalik-25jpg.png","129460,varda-koprusu2jpg.png","129458,tatli-1jpg.png","129459,ulu-cami-jpg.png","129449,saimbeyli-kalesi-7jpg.png","129457,tas-kopru-adanajpg.png","129455,tarihi-evler-2jpg.png","129454,sehir-manzarasi-4jpg.png","129456,tarihi-evler-3jpg.png","129451,salgan-2jpg.png","129450,saimbeyli-kalesijpg.png","129444,misis-3jpg.png","129446,misis-koprusu-2jpg.png","129447,sabanci-merkez--camii-1jpg.png","129435,kiraz-saimbeylijpg.png","129441,merkez-park-adana-2jpg.png","129436,kirk-kilise-tufanbeylijpg.png","129438,manzara-2jpg.png","129433,karatas-3jpg.png","129431,karatas-2jpg.png","129427,hipokampus-mozaikleri-yumurjpg.png","129429,kapikaya-kanyonu-karaisalijpg.png","129424,eski-barajjpg.png","129430,karatas--1jpg.png","129428,istasyonjpg.png","129410,dikenli-incirjpg.png","129423,eros-mozaikleri-yumurtalik-jpg.png","129426,feke-kalesijpg.png","129407,belemedik-pozantijpg.png","129404,anavarza-kozanjpg.png","129409,buyuksaat1jpg.png","129399,adana-kebap-2jpg.png","129408,buyuk-saat-carsijpg.png","129403,anavarza-kozan-2jpg.png","129405,bebekli-kilisejpg.png","129400,adana-kebapjpg.png","Adana-Foto\\u011fraflar\\u0131-3.jpg","Adana-Manzaralar\\u0131-41.jpg","Adana-Duvar-Ka\\u011f\\u0131tlar\\u0131.jpg","adana-arka-planlar\\u0131-3.jpg","Adana-Resimleri-2.jpg","Adana.jpg","adana-foto\\u011fraflar\\u0131-4.jpg","adana-manzaralar\\u0131-5.jpg","Adana-Manzaralar\\u0131-4.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432022314, 1432022333, 1432046863, 1, '2015-05-19', '2015-06-18', 0, NULL, 0, 205, 'Governorship  Turkey Adana Adana Center 01330 Döşeme Mahallesi Mehmet Nuri SABUNCU Bulvarı No:89 Seyhan / ADANA  Governorship  of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana proconsulate of Adana '),
(12, '555af277450fc', '{"en":"Governorship of Adiyaman","es":"Governorship of Adiyaman","ru":"Governorship of Adiyaman","ar":"Governorship of Adiyaman","de":"Governorship of Adiyaman","fr":"Governorship of Adiyaman","it":"Governorship of Adiyaman","pt":"Governorship of Adiyaman","tr":"Governorship of Adiyaman","hi":"Governorship of Adiyaman","bn":"Governorship of Adiyaman"}', '{"en":"<p>Governorship of Adiyaman<\\/p>","es":"<p>Governorship of Adiyaman<\\/p>","ru":"<p>Governorship of Adiyaman<\\/p>","ar":"<p>Governorship of Adiyaman<\\/p>","de":"<p>Governorship of Adiyaman<\\/p>","fr":"<p>Governorship of Adiyaman<\\/p>","it":"<p>Governorship of Adiyaman<\\/p>","pt":"<p>Governorship of Adiyaman<\\/p>","tr":"<p>Governorship of Adiyaman<\\/p>","hi":"<p>Governorship of Adiyaman<\\/p>","bn":"<p>Governorship of Adiyaman<\\/p>"}', '', '0.0', 12, '', 'Turgut Reis Mh.,  Adıyaman', '90 416 216 10 01', '', '', '', 'valilik02@adiyaman.gov.tr', 92, 94, 1174, '02200', '37.76639300', '38.27626810', '10460087.jpg', 'https://www.youtube.com/watch?v=SLYEwxKIIzI', '["adiyaman_2014_9.JPG","DSC08498.JPG","GAP-4.JPG","kara_ku\\u015f1.jpg","GAP-1.JPG","Kopyas\\u0131_DSC01076.JPG"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432023671, 1432023687, 1432024111, 1, '2015-05-19', '2015-06-18', 0, NULL, 0, 210, 'Governorship  Turkey Adıyaman Adıyaman Center 02200 Turgut Reis Mh.,  Adıyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman Governorship of Adiyaman  ');
INSERT INTO `dbc_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `price_range`, `address`, `phone_no`, `website`, `project_website`, `founded`, `email`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `opening_hour`, `additional_features`, `food_menu`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(13, '555b020bef5f5', '{"en":"Governorship of Afyonkarahisar","es":"Governorship of Afyonkarahisar","ru":"Governorship of Afyonkarahisar","ar":"Governorship of Afyonkarahisar","de":"Governorship of Afyonkarahisar","fr":"Governorship of Afyonkarahisar","it":"Governorship of Afyonkarahisar","pt":"Governorship of Afyonkarahisar","tr":"Governorship of Afyonkarahisar","hi":"Governorship of Afyonkarahisar","bn":"Governorship of Afyonkarahisar"}', '{"en":"<p>Governorship of Afyonkarahisar<\\/p>","es":"<p>Governorship of Afyonkarahisar<\\/p>","ru":"<p>Governorship of Afyonkarahisar<\\/p>","ar":"<p>Governorship of Afyonkarahisar<\\/p>","de":"<p>Governorship of Afyonkarahisar<\\/p>","fr":"<p>Governorship of Afyonkarahisar<\\/p>","it":"<p>Governorship of Afyonkarahisar<\\/p>","pt":"<p>Governorship of Afyonkarahisar<\\/p>","tr":"<p>Governorship of Afyonkarahisar<\\/p>","hi":"<p>Governorship of Afyonkarahisar<\\/p>","bn":"<p>Governorship of Afyonkarahisar<\\/p>"}', 'Governorship of Afyonkarahisar', '0.0', 12, '', 'Afyonkarahisar Valiliği', '90 272  214 06 60', 'http://www.afyonkarahisar.gov.tr', '', '', 'ozelkalem@afyonkarahisar.gov.tr', 92, 95, 1175, '', '38.75753900', '30.53866280', 'kilitin-bina_görüntüsü.jpg', '', '["2.PNG","1.PNG","3.PNG","afyon2a.png","5.PNG","afyon3a.png","afyon1a.png"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432027659, 1432028739, 1432028739, 1, '2015-05-19', '2015-06-18', 0, NULL, 0, 173, 'Governorship  Turkey Afyonkarahisar Afyonkarahisar Center  Afyonkarahisar Valiliği Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar Governorship of Afyonkarahisar '),
(14, '555b09f0e6949', '{"en":"Governorship of A\\u011fr\\u0131","es":"Governorship of A\\u011fr\\u0131","ru":"Governorship of A\\u011fr\\u0131","ar":"Governorship of A\\u011fr\\u0131","de":"Governorship of A\\u011fr\\u0131","fr":"Governorship of A\\u011fr\\u0131","it":"Governorship of A\\u011fr\\u0131","pt":"Governorship of A\\u011fr\\u0131","tr":"Governorship of A\\u011fr\\u0131","hi":"Governorship of A\\u011fr\\u0131","bn":"Governorship of A\\u011fr\\u0131"}', '{"en":"<p>Governorship of A\\u011fr\\u0131<\\/p>","es":"<p>Governorship of A\\u011fr\\u0131<\\/p>","ru":"<p>Governorship of A\\u011fr\\u0131<\\/p>","ar":"<p>Governorship of A\\u011fr\\u0131<\\/p>","de":"<p>Governorship of A\\u011fr\\u0131<\\/p>","fr":"<p>Governorship of A\\u011fr\\u0131<\\/p>","it":"<p>Governorship of A\\u011fr\\u0131<\\/p>","pt":"<p>Governorship of A\\u011fr\\u0131<\\/p>","tr":"<p>Governorship of A\\u011fr\\u0131<\\/p>","hi":"<p>Governorship of A\\u011fr\\u0131<\\/p>","bn":"<p>Governorship of A\\u011fr\\u0131<\\/p>"}', 'Governorship of Ağrı', '0.0', 12, '', 'Erzurum Caddesi Hükümet Konağı  ', '90 472 215 10 01', 'http://www.agri.gov.tr/', '', '', 'info@agri.gov.tr', 92, 96, 1176, '', '39.71883180', '43.04842690', 'Valilik_Basın_Açıklaması.jpg', 'https://www.youtube.com/watch?v=CFRTXmqRvYA&feature=youtu.be', '["agri-solo-2011-1.JPG","Agri_Dagi.jpg","5829a5c954f472f0dfda20ccb761cf8d.jpg","agri_resim2.jpg","argdag8.jpg","agri3.jpg","Agri_ishakpasa_sarayi.jpg","1b9962f0722.jpg","agri_013.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432029680, 1432029680, 1432031047, 1, '2015-05-19', '2015-07-18', 0, NULL, 0, 247, 'Governorship  Turkey Ağrı Ağrı Center  Erzurum Caddesi Hükümet Konağı   Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı Governorship of Ağrı '),
(15, '555ef12314716', '{"en":"Governorship of Aksaray","es":"Governorship of Aksaray","ru":"Governorship of Aksaray","ar":"Governorship of Aksaray","de":"Governorship of Aksaray","fr":"Governorship of Aksaray","it":"Governorship of Aksaray","pt":"Governorship of Aksaray","tr":"Governorship of Aksaray","hi":"Governorship of Aksaray","bn":"Governorship of Aksaray"}', '{"en":"<p>Governorship of Aksaray<\\/p>","es":"<p>Governorship of Aksaray<\\/p>","ru":"<p>Governorship of Aksaray<\\/p>","ar":"<p>Governorship of Aksaray<\\/p>","de":"<p>Governorship of Aksaray<\\/p>","fr":"<p>Governorship of Aksaray<\\/p>","it":"<p>Governorship of Aksaray<\\/p>","pt":"<p>Governorship of Aksaray<\\/p>","tr":"<p>Governorship of Aksaray<\\/p>","hi":"<p>Governorship of Aksaray<\\/p>","bn":"<p>Governorship of Aksaray<\\/p>"}', 'Governorship of Aksaray', '0.0', 12, '', 'Hükümet Meydanı,  AKSARAY', '90 382 213 50 20', 'http://www.aksaray.gov.tr/', '', '', 'aksaray@aksaray.gov.tr', 92, 97, 1177, '68100', '38.37213700', '34.02689000', 'vilayet_1_copy.jpg', 'https://www.youtube.com/watch?v=HsNxZOA2Nno&feature=youtu.be', '["53784,1jpg.png","53786,11jpg.png","53792,12jpg.png","53793,7jpg.png","53787,10jpg.png","53795,5jpg.png","53794,3jpg.png","53791,9jpg.png","53785,8jpg.png","53790,4jpg.png","53788,6jpg.png","53789,2jpg.png"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432285475, 1432285475, 1432286561, 1, '2015-05-22', '2015-07-21', 0, NULL, 0, 158, 'Governorship  Turkey Aksaray Aksaray Center 68100 Hükümet Meydanı,  AKSARAY Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray Governorship of Aksaray '),
(16, '555ef8d3ec09f', '{"en":"Governership of Amasya","es":"Governership of Amasya","ru":"Governership of Amasya","ar":"Governership of Amasya","de":"Governership of Amasya","fr":"Governership of Amasya","it":"Governership of Amasya","pt":"Governership of Amasya","tr":"Governership of Amasya","hi":"Governership of Amasya","bn":"Governership of Amasya"}', '{"en":"<p>Governership of Amasya<\\/p>","es":"<p>Governership of Amasya<\\/p>","ru":"<p>Governership of Amasya<\\/p>","ar":"<p>Governership of Amasya<\\/p>","de":"<p>Governership of Amasya<\\/p>","fr":"<p>Governership of Amasya<\\/p>","it":"<p>Governership of Amasya<\\/p>","pt":"<p>Governership of Amasya<\\/p>","tr":"<p>Governership of Amasya<\\/p>","hi":"<p>Governership of Amasya<\\/p>","bn":"<p>Governership of Amasya<\\/p>"}', 'Governership of Amasya', '0.0', 12, '', 'Hükümet Konağı Nergis Mahallesi Elmasiye Cad. Amasya', '90 358 218 10 33', 'http://www.amasya.gov.tr/', '', '', 'info@amasya.gov.tr', 92, 98, 1178, '05100', '40.65506800', '35.83349700', 'DH3I76PJ.JPG', 'https://www.youtube.com/watch?v=D5Y8lhha-64', '["SI6P53EJ.JPG","FL6H23CZ.JPG","YU6M41RY.jpg","UC4K16GD.JPG","KT1D27RU.JPG","XN6O56KE.jpg","WW2U70WN.jpg","VI6R16SH.jpg","HG7J75SX.JPG","TC8H24SN.jpg","RS7K41JB.JPG","PN9S23FG.JPG","MF2K87NW.JPG","IG6H38HU.jpg","MT9Y05BS.JPG","JT2W30PM.jpg","GD1R80HU.JPG","IU3I94DI.jpg","IH2P71AY.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432287443, 1432287443, 1432287997, 1, '2015-05-22', '2015-07-21', 0, '2015-06-27', 0, 412, 'Governorship  Turkey Amasya Amasya Center 05100 Hükümet Konağı Nergis Mahallesi Elmasiye Cad. Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya Governership of Amasya '),
(17, '555f01b8541b4', '{"en":"Governorship of Ankara","es":"Governorship of Ankara","ru":"Governorship of Ankara","ar":"Governorship of Ankara","de":"Governorship of Ankara","fr":"Governorship of Ankara","it":"Governorship of Ankara","pt":"Governorship of Ankara","tr":"Governorship of Ankara","hi":"Governorship of Ankara","bn":"Governorship of Ankara"}', '{"en":"<p>Governorship of Ankara<\\/p>","es":"<p>Governorship of Ankara<\\/p>","ru":"<p>Governorship of Ankara<\\/p>","ar":"<p>Governorship of Ankara<\\/p>","de":"<p>Governorship of Ankara<\\/p>","fr":"<p>Governorship of Ankara<\\/p>","it":"<p>Governorship of Ankara<\\/p>","pt":"<p>Governorship of Ankara<\\/p>","tr":"<p>Governorship of Ankara<\\/p>","hi":"<p>Governorship of Ankara<\\/p>","bn":"<p>Governorship of Ankara<\\/p>"}', 'Governorship of Ankara', '0.0', 12, '', 'Hacı Bayram Mh., Ankara', '90 312 306 6666', 'http://www.ankara.gov.tr/', '', '', 'bilgi@ankara.gov.tr', 92, 99, 1179, ' 06030', '39.94474550', '32.85780500', 'ankara_valilik_binasi.jpg', 'https://www.youtube.com/watch?v=nO_hnEBdjsw', '["e87e9-AFK37.jpg","c5d7e-AFK15.jpg","4adaf-AFK25.jpg","ec90e-AFK19.jpg","df024-AFK36.jpg","e17c5-AFK51.jpg","b2717-AFK50.jpg","aa03c-AFK49.jpg","dd87b-AFK52.jpg","acec3-AFK14.jpg","d62af-AFK18.jpg","bce96-AFK34.jpg","90368-AFK30.jpg","ab1e6-AFK32.jpg","58440-AFK44.jpg","07412-AFK20.jpg","44440-AFK42.jpg","633f7-AFK27.jpg","9f93c-AFK48.jpg","767a9-AFK45.jpg","881e0-AFK47.jpg","589f5-AFK26.jpg","396bf-AFK24.jpg","91d9d-AFK31.jpg","60a10-AFK11.jpg","20f30-AFK22.jpg","2f243-AFK23.jpg","4ed5d-AFK43.jpg","7b97f-AFK46.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432289720, 1432289720, 1432290250, 1, '2015-05-22', '2015-07-21', 0, '2015-06-27', 0, 673, 'Governorship  Turkey Ankara Ankara Center  06030 Hacı Bayram Mh., Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara Governorship of Ankara '),
(18, '555f1265c1e0d', '{"en":"Governorship of Antalya","es":"Governorship of Antalya","ru":"Governorship of Antalya","ar":"Governorship of Antalya","de":"Governorship of Antalya","fr":"Governorship of Antalya","it":"Governorship of Antalya","pt":"Governorship of Antalya","tr":"Governorship of Antalya","hi":"Governorship of Antalya","bn":"Governorship of Antalya"}', '{"en":"<p>Governorship of Antalya<\\/p>","es":"<p>Governorship of Antalya<\\/p>","ru":"<p>Governorship of Antalya<\\/p>","ar":"<p>Governorship of Antalya<\\/p>","de":"<p>Governorship of Antalya<\\/p>","fr":"<p>Governorship of Antalya<\\/p>","it":"<p>Governorship of Antalya<\\/p>","pt":"<p>Governorship of Antalya<\\/p>","tr":"<p>Governorship of Antalya<\\/p>","hi":"<p>Governorship of Antalya<\\/p>","bn":"<p>Governorship of Antalya<\\/p>"}', 'Governorship of Antalya', '0.0', 12, '', 'Hükümet Konağı , ANTALYA', '90 242 243 97 91', 'http://www.antalya.gov.tr/', '', '', '07basin@icisleri.gov.tr', 92, 100, 1180, '07280', '36.88791600', '30.70277890', '26363724.jpg', 'https://www.youtube.com/watch?v=hcC-ZjNc9ws', '["d3296513469c796515a41667a7b387e1.jpg","dfa4e888e076eb2d1b822b663a643257.jpg","dff68f1ac4237d34c5d857a31e7e24e3.jpg","cc0c79c1f64ff80037ccd25c0eeb9e03.jpg","df46f7d3d1bb2dcce19454ad04201e88.jpg","b86cbc59d9630fe8bdece585ca6dc8b0.jpg","cfe9f864b2e3f6369995ccc82b991a78.jpg","cf9e6e5049be88d5b57dec63ed99177d.jpg","bbf362921aa11bb0321f5a5b7b381be6.jpg","c4af820e86d828a26b66d5db8131db44.jpg","8560ad23438d9d13a287eb3682f15c3c.jpg","72d6bbcc321491ab719c001a37e778b0.jpg","18316bae735044e871af3f9d424c5834.jpg","23a83bc6b2f4cb6ae05f2742c8ed7c60.jpg","a593a16c85b2bfeb12f7999549e6493d.jpg","11a399a4736570fd15fd6e9bd8357c69.jpg","59c250611e03120b11dfe6f09ed869a9.jpg","41edf0c28ddcc06e5678b55a66b7234c.jpg","7d748401257524cd126bb6a0efe21212.jpg","7abab20f6043500512de0290fc371eca.jpg","2d449ed24862fed074642b47bfe45b72.jpg","6c7b9245e95f1f5ba8dee327b5033417.jpg","1d29b444a00a9e734a5ea404c91858c7.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432293989, 1432293989, 1432294663, 1, '2015-05-22', '2015-07-21', 0, NULL, 0, 252, 'Governorship  Turkey Antalya Antalya Center 07280 Hükümet Konağı , ANTALYA Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya Governorship of Antalya '),
(19, '555f18fe82a1d', '{"en":"Governorship of Ardahan","es":"Governorship of Ardahan","ru":"Governorship of Ardahan","ar":"Governorship of Ardahan","de":"Governorship of Ardahan","fr":"Governorship of Ardahan","it":"Governorship of Ardahan","pt":"Governorship of Ardahan","tr":"Governorship of Ardahan","hi":"Governorship of Ardahan","bn":"Governorship of Ardahan"}', '{"en":"<p>Governorship of Ardahan<\\/p>","es":"<p>Governorship of Ardahan<\\/p>","ru":"<p>Governorship of Ardahan<\\/p>","ar":"<p>Governorship of Ardahan<\\/p>","de":"<p>Governorship of Ardahan<\\/p>","fr":"<p>Governorship of Ardahan<\\/p>","it":"<p>Governorship of Ardahan<\\/p>","pt":"<p>Governorship of Ardahan<\\/p>","tr":"<p>Governorship of Ardahan<\\/p>","hi":"<p>Governorship of Ardahan<\\/p>","bn":"<p>Governorship of Ardahan<\\/p>"}', 'Governorship of Ardahan', '0.0', 12, '', 'Arhadan Valiliği ,Ardahan', '90 478 211 30 02', 'http://www.ardahan.gov.tr/', '', '', 'ardahan@icisleri.gov.tr', 92, 101, 1181, '75000', '41.11187300', '42.70253600', 'DSC_3163.jpg', 'https://www.youtube.com/watch?v=JMLMO0C979s', '["2006.05_.31_(827)_1_.jpg","9.jpg","43198,10jpg.png","43200,7jpg.png","43199,3jpg.png","DSC_0615.jpg","43197,1jpg.png","43196,8jpg.png","43195,4jpg.png","43192,6jpg.png","43193,11jpg.png","43194,12jpg.png","43191,2jpg.png","43190,9jpg.png","43189,5jpg.png","3.jpg","12.jpg","18.jpg","14.jpg","2.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"17:00 PM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432295678, 1432295678, 1432295928, 1, '2015-05-22', '2015-07-21', 0, NULL, 0, 433, 'Governorship  Turkey Ardahan Arhadan Center 75000 Arhadan Valiliği ,Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan Governorship of Ardahan '),
(20, '555f219e2026c', '{"en":"Governorship of Artvin","es":"Governorship of Artvin","ru":"Governorship of Artvin","ar":"Governorship of Artvin","de":"Governorship of Artvin","fr":"Governorship of Artvin","it":"Governorship of Artvin","pt":"Governorship of Artvin","tr":"Governorship of Artvin","hi":"Governorship of Artvin","bn":"Governorship of Artvin"}', '{"en":"<p>Governorship of Artvin<\\/p>","es":"<p>Governorship of Artvin<\\/p>","ru":"<p>Governorship of Artvin<\\/p>","ar":"<p>Governorship of Artvin<\\/p>","de":"<p>Governorship of Artvin<\\/p>","fr":"<p>Governorship of Artvin<\\/p>","it":"<p>Governorship of Artvin<\\/p>","pt":"<p>Governorship of Artvin<\\/p>","tr":"<p>Governorship of Artvin<\\/p>","hi":"<p>Governorship of Artvin<\\/p>","bn":"<p>Governorship of Artvin<\\/p>"}', 'Governorship of Artvin', '0.0', 12, '', 'Çarşı Mah. İnönü Cad. No:24/A ,Artvin', '90 466 212 10 08', 'http://www.artvin.gov.tr/', '', '', 'artvin@artvin.gov.tr', 92, 102, 1182, '', '41.18020810', '41.81946630', 'artvin-valilik.jpg', 'https://www.youtube.com/watch?v=49NVcu8b-bU', '["08.jpg","tibeti-kilisesi.png","porta-manatr.png","kafkasor-yaylasi.png","SalihBeyCamii.png","dolishane-kilisesi.png","merkez-carsi-camii.png","07.jpg","barhal-vadisi.png","camili-gorgit-temsili.png","02.jpg","artvin.png","03.jpg","05.jpg"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1432297886, 1432297886, 1432298506, 1, '2015-05-22', '2015-07-21', 0, NULL, 0, 325, 'Governorship  Turkey Artvin Artvin Center  Çarşı Mah. İnönü Cad. No:24/A ,Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin Governorship of Artvin '),
(21, '555f259321006', '{"en":"Governorship of Ayd\\u0131n","es":"Governorship of Ayd\\u0131n","ru":"Governorship of Ayd\\u0131n","ar":"Governorship of Ayd\\u0131n","de":"Governorship of Ayd\\u0131n","fr":"Governorship of Ayd\\u0131n","it":"Governorship of Ayd\\u0131n","pt":"Governorship of Ayd\\u0131n","tr":"Governorship of Ayd\\u0131n","hi":"Governorship of Ayd\\u0131n","bn":"Governorship of Ayd\\u0131n"}', '{"en":"<p>Governorship of Ayd\\u0131n<\\/p>","es":"<p>Governorship of Ayd\\u0131n<\\/p>","ru":"<p>Governorship of Ayd\\u0131n<\\/p>","ar":"<p>Governorship of Ayd\\u0131n<\\/p>","de":"<p>Governorship of Ayd\\u0131n<\\/p>","fr":"<p>Governorship of Ayd\\u0131n<\\/p>","it":"<p>Governorship of Ayd\\u0131n<\\/p>","pt":"<p>Governorship of Ayd\\u0131n<\\/p>","tr":"<p>Governorship of Ayd\\u0131n<\\/p>","hi":"<p>Governorship of Ayd\\u0131n<\\/p>","bn":"<p>Governorship of Ayd\\u0131n<\\/p>"}', 'Governorship of Aydın', '0.0', 12, '', 'Hükümet Bulvarı ,Aydın.', '90 256 212 24 16', 'http://www.aydin.gov.tr/', '', '', 'aydin@aydin.gov.tr', 92, 103, 312, '', '37.85007200', '27.84390800', 'aydin-hukumet-konagi-valilik.jpg', 'https://www.youtube.com/watch?v=GVKGNF4tjWI', '["56073,9jpg.png","56071,21jpg.png","56054,1jpg.png","56068,17jpg.png","56072,6jpg.png","56070,19jpg.png","56055,3jpg.png","56069,18jpg.png","56066,15jpg.png","56056,2jpg.png","56067,16jpg.png","56065,13jpg.png","56063,5jpg.png","56064,10jpg.png","56062,7jpg.png","56061,8jpg.png","56060,14jpg.png","56059,dscf1669jpg.png","56057,11jpg.png","56058,dscf1515jpg.png"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":1,"start_time":"","close_time":""},{"day":"sunday","closed":1,"start_time":"","close_time":""}]', '[]', NULL, 1, 1432298899, 1432298899, 1441291301, 1, '2015-05-22', '2015-07-21', 0, NULL, 0, 524, 'Governorship  Turkey Aydın Nazilli  Hükümet Bulvarı ,Aydın. Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın Governorship of Aydın '),
(22, '55909f9206df3', '{"en":"test","es":"test","ru":"test","ar":"test","de":"test","fr":"test","it":"test","pt":"test","tr":"test","hi":"test","bn":"test"}', '{"en":"<p>test<\\/p>","es":"<p>test<\\/p>","ru":"<p>test<\\/p>","ar":"<p>test<\\/p>","de":"<p>test<\\/p>","fr":"<p>test<\\/p>","it":"<p>test<\\/p>","pt":"<p>test<\\/p>","tr":"<p>test<\\/p>","hi":"<p>test<\\/p>","bn":"<p>test<\\/p>"}', 'test', '0.0', 1, '', 'test', '111', 'www.merkez.com', 'www.merkez.com.tr', '', 'test@gmail.com', 92, 105, 339, '123', '24.00000000', '24.00000000', 'admin_logo.png', 'https://www.youtube.com/watch?v=d9vQBZQlZds', '["263637241.jpg","logo_dbcinfotech1.png","favicon2.png"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1435541394, 1435559769, 1436162401, 1, NULL, NULL, 0, NULL, 0, 1097, 'Airport  Turkey Bartın Kurucaşile 123 test test test test test test test test test test test test test '),
(23, '5590a4617e2b7', '{"en":"wer","es":"wer","ru":"wer","ar":"wer","de":"wer","fr":"wer","it":"wer","pt":"wer","tr":"wer","hi":"wer","bn":"wer"}', '{"en":"<p>ewr<\\/p>","es":"<p>ewr<\\/p>","ru":"<p>ewr<\\/p>","ar":"<p>ewr<\\/p>","de":"<p>ewr<\\/p>","fr":"<p>ewr<\\/p>","it":"<p>ewr<\\/p>","pt":"<p>ewr<\\/p>","tr":"<p>ewr<\\/p>","hi":"<p>ewr<\\/p>","bn":"<p>ewr<\\/p>"}', '', '0.0', 3, '', 'qwe', '444', '', '', '', 'qwe', 92, 95, 204, 'qe', '34.00000000', '34.00000000', 'admin_logo1.png', 'https://www.youtube.com/watch?v=d9vQBZQlZds', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1435542625, 1435542625, 1435542695, 0, NULL, NULL, 0, NULL, 0, 0, 'Cinemas  Turkey Afyonkarahisar Çobanlar qe qwe wer wer wer wer wer wer wer wer wer wer wer  '),
(24, '5590a5ed6080d', '{"en":"oo","es":"oo","ru":"oo","ar":"oo","de":"oo","fr":"oo","it":"oo","pt":"oo","tr":"oo","hi":"oo","bn":"oo"}', '{"en":"<p>oo<\\/p>","es":"<p>oo<\\/p>","ru":"<p>oo<\\/p>","ar":"<p>oo<\\/p>","de":"<p>oo<\\/p>","fr":"<p>oo<\\/p>","it":"<p>oo<\\/p>","pt":"<p>oo<\\/p>","tr":"<p>oo<\\/p>","hi":"<p>oo<\\/p>","bn":"<p>oo<\\/p>"}', 'ooo', '0.0', 5, '', 'uu', '222', 'uuuuu', 'uuuuuu', '', 'uuu', 92, 97, 228, 'uu', '4.00000000', '45.00000000', 'admin_logo2.png', 'https://www.youtube.com/watch?v=QAEPTbPq7rk', '["favicon1.png"]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1435543021, 1435543021, 1435543398, 0, NULL, NULL, 0, NULL, 0, 0, 'Libraries  Turkey Aksaray Gülağaç uu uu oo oo oo oo oo oo oo oo oo oo oo ooo '),
(25, '5599c8dc3f945', '{"en":"test","es":"test","ru":"test","ar":"test","de":"test","fr":"test","it":"test","pt":"test","tr":"test","hi":"test","bn":"test"}', '{"en":"<p>test<\\/p>","es":"<p>test<\\/p>","ru":"<p>test<\\/p>","ar":"<p>test<\\/p>","de":"<p>test<\\/p>","fr":"<p>test<\\/p>","it":"<p>test<\\/p>","pt":"<p>test<\\/p>","tr":"<p>test<\\/p>","hi":"<p>test<\\/p>","bn":"<p>test<\\/p>"}', 'test', '0.0', 2, '', 'test', '1234567890', 'test', 'test', 'test', 'test@gmail.com', 92, 94, 1174, '1234', '33.00000000', '33.00000000', 'Valilik_BasÄ±n_AÃ§Ä±klamasÄ±.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 1, 1436141788, 1436163455, 1436163455, 1, NULL, NULL, 0, NULL, 0, 278, 'Cafe test Turkey Adıyaman Adıyaman Center 1234 test test test test test test test test test test test test test '),
(26, '559a203bcaad0', '{"en":"hakk\\u0131m\\u0131zda","es":"hakk\\u0131m\\u0131zda","ru":"hakk\\u0131m\\u0131zda","ar":"hakk\\u0131m\\u0131zda","de":"hakk\\u0131m\\u0131zda","fr":"hakk\\u0131m\\u0131zda","it":"hakk\\u0131m\\u0131zda","pt":"hakk\\u0131m\\u0131zda","tr":"hakk\\u0131m\\u0131zda","hi":"hakk\\u0131m\\u0131zda","bn":"hakk\\u0131m\\u0131zda"}', '{"en":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","es":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","ru":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","ar":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","de":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","fr":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","it":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","pt":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","tr":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","hi":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>","bn":"<p><strong>hakk\\u0131m\\u0131zda<\\/strong><\\/p>"}', 'haber,istanbul,üsküdar', '0.0', 11, '', 'üsküdar', '08504334546', 'www.haberajansi.com.tr', 'www.visituskudar.com', '2012', 'posta@haberajansi.com.tr', 92, 132, 670, '34000', '41.02478984', '29.02567236', 'kiz_kulesi2_131_1317741.jpg', '', '[]', '[{"day":"monday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"tuesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"wednesday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"thursday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"friday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"saturday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"},{"day":"sunday","closed":0,"start_time":"09:00 AM","close_time":"09:00 AM"}]', '[]', NULL, 3, 1436164155, 1436164155, 1441291462, 2, NULL, NULL, 0, NULL, 0, 0, 'rentacar 2012 Turkey İstanbul Üsküdar 34000 üsküdar hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda hakkımızda haber,istanbul,üsküdar ');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_review`
--

CREATE TABLE IF NOT EXISTS `dbc_review` (
  `id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rating` int(2) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `create_time` int(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbc_review`
--

INSERT INTO `dbc_review` (`id`, `comment`, `rating`, `post_id`, `created_by`, `create_time`, `status`) VALUES
(1, 'Test', 4, 17, 1, 1424952821, 1),
(2, 'Test 2', 3, 17, 1, 1424952937, 1),
(3, 'Test 3', 4, 17, 1, 1424954535, 1),
(4, 'Test  5 starts', 5, 17, 1, 1424954563, 1),
(5, 'Test  5 starts', 5, 17, 1, 1424954563, 1),
(6, 'Naaah', 2, 17, 1, 1425109213, 1),
(7, 'Naaah', 2, 17, 1, 1425109216, 1),
(8, 'Naaah', 2, 17, 1, 1425109216, 1),
(9, 'hahahah', 3, 17, 1, 1425116940, 1),
(10, 'hahahha', 3, 17, 1, 1425117032, 1),
(11, 'Really Had a good time.', 4, 17, 2, 1425294530, 1),
(12, 'Good place to get together...!!!!', 3, 19, 2, 1425295400, 1),
(13, 'Success Municipality', 5, 10, 1, 1431437971, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_sessions`
--

CREATE TABLE IF NOT EXISTS `dbc_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbc_slider`
--

CREATE TABLE IF NOT EXISTS `dbc_slider` (
  `id` int(11) NOT NULL,
  `slide_order` int(11) NOT NULL DEFAULT '0',
  `featured_img` char(200) NOT NULL,
  `title` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbc_slider`
--

INSERT INTO `dbc_slider` (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES
(1, 2, 'cover-4.png', ' Easy management', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 1, 1432308506, 1),
(2, 3, 'TTC_Comp_41.jpg', 'New iMac', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 1432308689, 1),
(3, 1, 'cover-1.png', 'Buy DSLR', 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 1, 1432308414, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_user_meta`
--

CREATE TABLE IF NOT EXISTS `dbc_user_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_user_meta`
--

INSERT INTO `dbc_user_meta` (`id`, `user_id`, `key`, `value`, `status`) VALUES
(1, 2, 'company_name', 'ajans', 1),
(2, 2, 'phone', '', 1),
(3, 2, 'about_me', '', 1),
(4, 2, 'fb_profile', '', 1),
(5, 2, 'twitter_profile', '', 1),
(6, 2, 'li_profile', '', 1),
(7, 2, 'gp_profile', '', 1),
(8, 3, 'company_name', 'haber ajansi', 1),
(9, 3, 'phone', '', 1),
(10, 2, 'hide_email', '0', 1),
(11, 2, 'hide_phone', '0', 1),
(12, 1, 'company_name', 'Elektronik Medya', 1),
(13, 1, 'phone', '', 1),
(14, 1, 'about_me', '', 1),
(15, 1, 'fb_profile', '', 1),
(16, 1, 'twitter_profile', '', 1),
(17, 1, 'li_profile', '', 1),
(18, 1, 'gp_profile', '', 1),
(19, 1, 'hide_email', '0', 1),
(20, 1, 'hide_phone', '0', 1),
(21, 4, 'company_name', 'ucare ', 1),
(22, 4, 'phone', '07854327040', 1),
(23, 5, 'company_name', '', 1),
(24, 5, 'phone', 'visitturkey', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_users`
--

CREATE TABLE IF NOT EXISTS `dbc_users` (
  `id` int(10) NOT NULL,
  `user_type` int(3) NOT NULL,
  `first_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recovery_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` int(1) NOT NULL DEFAULT '1',
  `confirmed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `banned_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned_till` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_users`
--

INSERT INTO `dbc_users` (`id`, `user_type`, `first_name`, `last_name`, `gender`, `profile_photo`, `user_name`, `user_email`, `password`, `remember_me_key`, `recovery_key`, `confirmation_key`, `confirmed`, `confirmed_date`, `status`, `banned`, `banned_date`, `banned_till`) VALUES
(1, 1, 'Can', 'Ak', 'male', 'visitim2.jpg', 'visitturkey', 'contact@visit.com.tr', '0deacd13ef8d388efb4a54f84c819dae597d3736', '', '', '', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Şeyda', 'Başar', 'female', 'visitim1.jpg', 'emedya', 'hakan@metrotek.net', '5321f0bccce2aff946dee249b7c82a52128847c3', '', '', '', 1, '2015-05-11 02:42:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'ali', 'can', 'male', '', 'haberci', 'posta@haberajansi.com.tr', 'cf2edaa1bb71edf2dfde15f62af8ab3db7f06389', '', '', '', 1, '2015-07-06 08:21:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'liaqat', 'ali', 'male', '', 'admin', 'ali@onyxtech.co.uk', '965f03dab7f7b5bcb3aaee4e8414e6278268b0be', '', '', '', 1, '2015-07-06 04:59:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'tmg', 'test', 'male', '', 'tmg', 'tmg@test.com', '0deacd13ef8d388efb4a54f84c819dae597d3736', '', '', '', 1, '2015-08-15 11:41:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dbc_usertype`
--

CREATE TABLE IF NOT EXISTS `dbc_usertype` (
  `id` int(3) NOT NULL,
  `name` char(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_usertype`
--

INSERT INTO `dbc_usertype` (`id`, `name`, `status`) VALUES
(1, 'admin', 1),
(2, 'business', 1),
(3, 'individual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbc_widgets`
--

CREATE TABLE IF NOT EXISTS `dbc_widgets` (
  `id` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(1) NOT NULL,
  `editable` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbc_widgets`
--

INSERT INTO `dbc_widgets` (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES
(1, 'Facebook like box', 'fb_likebox', '', 1, 1),
(2, 'Contact text', 'contact_text', '', 1, 1),
(3, 'Follow us', 'follow_us', '', 1, 1),
(4, 'Short Description', 'short_description', '', 1, 1),
(5, 'Adsense full width', 'adsense_full_width', '', 1, 1),
(6, 'Adsense Sidebar', 'adsense_sidebar', '', 1, 1),
(7, 'Plain Search Widget', 'plain_search_widget', '', 1, 1),
(8, 'Adv Search Widget', 'advance_search_widget', '', 1, 1),
(9, 'Recent Posts Main', 'recent_posts_main', '', 1, 1),
(10, 'Category Main', 'category_main', '', 1, 1),
(11, 'Top Bar', 'top_bar', NULL, 1, 1),
(12, 'Top Bar Social', 'top_bar_social', NULL, 1, 1),
(13, 'Footer Links', 'footer_links', NULL, 1, 1),
(14, 'Top Posts', 'top_posts', NULL, 1, 1),
(15, 'Category Counter', 'category_counter', NULL, 1, 1),
(16, 'Tag Cloud', 'tag_cloud', NULL, 1, 1),
(17, 'Recent Post', 'recent_post', NULL, 1, 1),
(18, 'Category Featured Post', 'category_featured_post', NULL, 1, 1),
(19, 'Category Sidebar', 'category_sidebar', NULL, 1, 1),
(20, 'Social Media Cloud', 'social_media_cloud', NULL, 1, 1),
(21, 'Featured Posts Main', 'featured_posts_main', NULL, 1, 1),
(22, 'Top Locations Home', 'top_locations_home', NULL, 1, 1),
(23, 'Featured Post', 'featured_post', NULL, 1, 1),
(24, 'Top Locations Sidebar', 'top_locations_sidebar', NULL, 1, 1),
(25, 'Top Users', 'top_users', NULL, 1, 1),
(26, 'Login Page Description', 'login_page_description', NULL, 1, 1),
(27, 'Register Page Description', 'register_page_description', NULL, 1, 1),
(28, 'Blog post', 'blog_post', NULL, 1, 1),
(29, 'Article post', 'article_post', NULL, 1, 1),
(30, 'News post', 'news_post', NULL, 1, 1),
(40, 'Adsense Sidebar2', 'adsense_sidebar_2', '', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbc_advertesing`
--
ALTER TABLE `dbc_advertesing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_apps`
--
ALTER TABLE `dbc_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_banners_area`
--
ALTER TABLE `dbc_banners_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_blog`
--
ALTER TABLE `dbc_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_blog_meta`
--
ALTER TABLE `dbc_blog_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_categories`
--
ALTER TABLE `dbc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_categories_post`
--
ALTER TABLE `dbc_categories_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_county`
--
ALTER TABLE `dbc_county`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_emailtmpl`
--
ALTER TABLE `dbc_emailtmpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_extra_video_urls`
--
ALTER TABLE `dbc_extra_video_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_issues`
--
ALTER TABLE `dbc_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_locations`
--
ALTER TABLE `dbc_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_magazines`
--
ALTER TABLE `dbc_magazines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_media`
--
ALTER TABLE `dbc_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_options`
--
ALTER TABLE `dbc_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_packages`
--
ALTER TABLE `dbc_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_pages`
--
ALTER TABLE `dbc_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `alias_2` (`alias`);

--
-- Indexes for table `dbc_post_meta`
--
ALTER TABLE `dbc_post_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_post_package`
--
ALTER TABLE `dbc_post_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `dbc_posts`
--
ALTER TABLE `dbc_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `dbc_review`
--
ALTER TABLE `dbc_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_sessions`
--
ALTER TABLE `dbc_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `dbc_slider`
--
ALTER TABLE `dbc_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_user_meta`
--
ALTER TABLE `dbc_user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_users`
--
ALTER TABLE `dbc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_usertype`
--
ALTER TABLE `dbc_usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbc_widgets`
--
ALTER TABLE `dbc_widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbc_advertesing`
--
ALTER TABLE `dbc_advertesing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `dbc_apps`
--
ALTER TABLE `dbc_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `dbc_banners_area`
--
ALTER TABLE `dbc_banners_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `dbc_blog`
--
ALTER TABLE `dbc_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `dbc_blog_meta`
--
ALTER TABLE `dbc_blog_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbc_categories`
--
ALTER TABLE `dbc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dbc_categories_post`
--
ALTER TABLE `dbc_categories_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dbc_county`
--
ALTER TABLE `dbc_county`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dbc_emailtmpl`
--
ALTER TABLE `dbc_emailtmpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dbc_extra_video_urls`
--
ALTER TABLE `dbc_extra_video_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dbc_issues`
--
ALTER TABLE `dbc_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `dbc_locations`
--
ALTER TABLE `dbc_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1186;
--
-- AUTO_INCREMENT for table `dbc_magazines`
--
ALTER TABLE `dbc_magazines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `dbc_media`
--
ALTER TABLE `dbc_media`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbc_options`
--
ALTER TABLE `dbc_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dbc_packages`
--
ALTER TABLE `dbc_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dbc_pages`
--
ALTER TABLE `dbc_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dbc_post_meta`
--
ALTER TABLE `dbc_post_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `dbc_post_package`
--
ALTER TABLE `dbc_post_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dbc_posts`
--
ALTER TABLE `dbc_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `dbc_review`
--
ALTER TABLE `dbc_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dbc_slider`
--
ALTER TABLE `dbc_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dbc_user_meta`
--
ALTER TABLE `dbc_user_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `dbc_users`
--
ALTER TABLE `dbc_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dbc_usertype`
--
ALTER TABLE `dbc_usertype`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dbc_widgets`
--
ALTER TABLE `dbc_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
