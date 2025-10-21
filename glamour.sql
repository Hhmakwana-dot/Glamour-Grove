-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2024 at 10:29 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glamour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
(1, 'admin', '1412'),
(2, 'admin', '520');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `service_time` varchar(100) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `c_h_name` varchar(50) NOT NULL,
  `c_number` varchar(16) NOT NULL,
  `c_expiry` year(4) NOT NULL,
  `c_cvv` int(3) NOT NULL,
  `c_pay` int(11) NOT NULL,
  `book_date` date NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `user_id` (`user_id`),
  KEY `pro_id` (`pro_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `sub_id`, `pro_id`, `user_id`, `service_date`, `service_time`, `b_address`, `c_h_name`, `c_number`, `c_expiry`, `c_cvv`, `c_pay`, `book_date`) VALUES
(31, 18, 6, 14, '2024-02-28', '5:30 pm', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'makwana krishna', '1234567812345678', 2026, 520, 399, '2024-02-24'),
(44, 18, 13, 3, '2024-02-28', '12:30 pm', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'makwana krishna', '1478523874532152', 2026, 630, 399, '2024-02-26'),
(46, 12, 10, 3, '2024-02-28', '5:30 pm', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'makwana monali', '1234567812345678', 2026, 652, 600, '2024-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`user_id`, `name`, `gender`, `number`, `address`, `email`, `password`) VALUES
(3, 'monali makwana', 'female', '9978052418', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'hhmakvana16@gmail.com', '1412'),
(14, 'makwana jignasa', 'female', '8523697410', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'hhmakvana14@gmail.com', '123'),
(15, 'shivani makwana', 'male', '9978052418', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'hh8@gmail.com', '852963'),
(16, 'kaira bhutt', 'female', '8523697410', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'kaira@gmail.com', '741852'),
(17, 'padia drashti', 'female', '9978052418', 'navagadh,dasijivan para, kenal kandhe , navagadh,jetpur', 'drashti@gmail.com', '852369');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_name` varchar(100) NOT NULL,
  `con_email` varchar(100) NOT NULL,
  `con_phone` varchar(10) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_name`, `con_email`, `con_phone`, `message`) VALUES
(1, 'monali makwana', 'hhmakvana16@gmail.com', '9978052418', 'i want to joing as a professional'),
(2, 'kaveri sapariya', 'hhkaveri@gmail.com', '8765657810', 'what a nice concept  i want joing as beauty professional ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fed_id` int(11) NOT NULL AUTO_INCREMENT,
  `fed_name` varchar(50) NOT NULL,
  `fed_email` varchar(50) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`fed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fed_id`, `fed_name`, `fed_email`, `feedback`, `message`) VALUES
(1, 'makwana jignasa', 'hhmakvana16@gmail.com', 'Goog', 'nice job'),
(2, 'monali makwana', 'monali14@gmail.com', 'not bad', 'not bed'),
(5, 'monali makwana', 'hhmakvana16@gmail.com', 'Goog', 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `main_service`
--

DROP TABLE IF EXISTS `main_service`;
CREATE TABLE IF NOT EXISTS `main_service` (
  `main_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_name` varchar(100) NOT NULL,
  PRIMARY KEY (`main_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_service`
--

INSERT INTO `main_service` (`main_id`, `main_name`) VALUES
(1, 'Body'),
(2, 'Skin'),
(3, 'Hair');

-- --------------------------------------------------------

--
-- Table structure for table `professional`
--

DROP TABLE IF EXISTS `professional`;
CREATE TABLE IF NOT EXISTS `professional` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_image` varchar(500) NOT NULL,
  `pro_gender` varchar(100) NOT NULL,
  `pro_age` varchar(5) NOT NULL,
  `pro_number` varchar(10) NOT NULL,
  `pro_status` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `main_id` (`main_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional`
--

INSERT INTO `professional` (`pro_id`, `main_id`, `pro_name`, `pro_image`, `pro_gender`, `pro_age`, `pro_number`, `pro_status`, `date`) VALUES
(6, 2, 'Rekha Sharma', 'pro-1.jpg', 'female', '26', '9043456789', 'Available', '2024-02-16'),
(7, 1, 'heena sapariya', 'pro-2.jpg', 'female', '29', '9245378906', 'Available', '2024-02-16'),
(8, 3, 'neha modi', 'pro-3.jpg', 'female', '21', '7634256750', 'Available', '2024-02-16'),
(9, 1, 'Naina Kapur', 'pro-7.jpg', 'female', '26', '7645321202', 'Available', '2024-02-16'),
(10, 2, 'Isha kukadia ', 'pro-6.jpg', 'female', '28', '907854334', 'booked', '2024-02-16'),
(11, 3, 'Naina Kapur', 'pro-5.jpg', 'female', '31', '6845323974', 'Available', '2024-02-16'),
(12, 3, 'Darsh pande', 'pro-8.jpeg', 'male', '28', '9632058741', 'Available', '2024-02-25'),
(13, 2, 'Sumit Modi', 'pro-9.jpeg', 'male', '32', '9674581230', 'booked', '2024-02-25'),
(14, 1, 'Rudra Shrma', 'pro-10.jpg', 'male', '25', '9632058741', 'Available', '2024-02-25'),
(15, 2, 'Ashok mishra', 'pro-10.jpeg', 'male', '35', '7634256750', 'Available', '2024-02-25'),
(16, 3, 'ravi paramar', 'pro-11.jpg', 'male', '34', '9245378906', 'Available', '2024-02-25'),
(17, 1, 'kartik bariya', 'pro-12.jpg', 'male', '30', '9043456789', 'Available', '2024-02-25'),
(18, 3, 'vaishali', 'hair1.jpg', 'female', '26', '1234567890', 'Available', '2024-02-26'),
(19, 1, 'meera sadiya', 'pro-13.jpg', 'female', '35', '7634256750', 'Available', '2024-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_service`
--

DROP TABLE IF EXISTS `sub_service`;
CREATE TABLE IF NOT EXISTS `sub_service` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_id` int(11) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_image` varchar(100) NOT NULL,
  `sub_for` varchar(50) NOT NULL,
  `sub_details` text NOT NULL,
  `aftercare_tip` text NOT NULL,
  `sub_price` int(5) NOT NULL,
  `sub_time` varchar(20) NOT NULL,
  `sub_brand` varchar(100) DEFAULT 'Not specify',
  PRIMARY KEY (`sub_id`),
  KEY `main_id` (`main_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_service`
--

INSERT INTO `sub_service` (`sub_id`, `main_id`, `sub_name`, `sub_image`, `sub_for`, `sub_details`, `aftercare_tip`, `sub_price`, `sub_time`, `sub_brand`) VALUES
(12, 2, 'Face & Neck Detan', 'Detan1.png\r\n', 'male', ' \r\n                                    \r\n                                    <h4>1.Warm-up massage</h4> \r\n<p>Dry massage of shoulder, ear and scalp before the service</p>\r\n<h4>2.Cleansing & scrubbing</h4>\r\n<p>Cleansing of face and neck with a wet sponge followed by exfoliating the skin with Dabur scrub</p> \r\n<h4>3.Mask application </h4>\r\n<p>Even application of detan mask on the face and neck with a brush</p>\r\n<h4>4.Dry palm massage</h4>\r\n<p>Palm massage while the mask dries up</p>\r\n<h4>5.Removal & toning</h4>\r\n<p>Removal with disposable sponge followed by application of toner for smooth skin</p>\r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    ', '<h5>1.Apply moisturiser & sunscreen to relax your skin</h5>\r\n<h5>2.Avoid chemical-based products for a day</h5>\r\n<h5>3.Avoid scrubbing for 4 days</h5>\r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    ', 500, '60 min', 'Garnier'),
(13, 2, 'Skin Brightening Facial', 'facial2.jpeg', 'male', ' \r\n                                    <h4>1.Cleansing & massage</h4>\r\n<p>Cleansing of face, neck along with dry massage of head, shoulders</p>\r\n<h4>2.Exfoliation </h4>\r\n<p>Scrubbing and deep cleansing of face, neck to remove dead skin cells</p>\r\n<h4>3.Steam & blackhead removal</h4>\r\n<p>Steaming and blackhead / whitehead removal with a suction tool followed by toner application</p>\r\n<h4>4.Face & neck massage (20 mins)</h4>\r\n<p>Massage of face and neck for clear, firm skin</p>\r\n<h4>5.Face mask (10 mins)</h4>\r\n<p>Face mask application along with dry palm massage</p>\r\n<h4>6.Skin toning</h4>\r\n<p>Removal of mask followed by rose water application</p>\r\n<h4>7.Back massage (5 mins)</h4>\r\n<p>Dry massage of upper and lower back for relaxation</p>\r\n                                    \r\n                                    ', ' \r\n                                     <h5> 1.Apply moisturiser & sunscreen regularly for long-lasting glow</h5>\r\n<h5>2.Do not use soap/ facewash for 12 hours after the service</h5>\r\n<h5>3.Avoid harsh scrubs for 24 hours after the service</h5>\r\n                                    \r\n                                    ', 1399, '1 hr 5 mins', 'Garnier'),
(14, 3, 'Biotique Hair Color', 'color.jpeg', 'male', '<h4>1.Consultation</h4>\r\n<p>Professional understands requirements and hair condition</p>\r\n<h4>2.Set-up</h4>\r\n<p>Sanitisation and placement of bowl, brush, comb and cape</p>\r\n<h4>3. Detangling</h4>\r\n<p>Detangling of hair followed by dividing it into small sections</p>\r\n<h4>4.Hair colour</h4>\r\n<p>Application of a properly made mixture of color & developer from hair roots to ends</p>\r\n<h4>5.Post-service care</h4>\r\n<p>Covering of hair with a shower cap and proper cleanup of tools, surrounding area</p>\r\n                                    ', '<h5>1.Wash your hair after 35-40 mins of application</h5>\r\n<h5>2.Use sulfate-free shampoo & conditioner</h5>\r\n<h5>3.Avoid washing your hair with warm water</h5>\r\n                                    ', 345, '30 min', 'Garnier'),
(15, 3, 'Godrej Professionals Hair Color', 'godrej.png', 'male', '<h4>1.Consultation</h4>\r\n<p>Professional understands requirements and hair condition</p>\r\n<h4>2.Set-up</h4>\r\n<p>Sanitisation and placement of bowl, brush, comb and cape</p>\r\n<h4>3. Detangling</h4>\r\n<p>Detangling of hair followed by dividing it into small sections</p>\r\n<h4>4.Hair colour</h4>\r\n<p>Application of a properly made mixture of color & developer from hair roots to ends</p>\r\n<h4>5.Post-service care</h4>\r\n<p>Covering of hair with a shower cap and proper cleanup of tools, surrounding area</p>\r\n                                    ', '<h5>1.Wash your hair after 35-40 mins of application</h5>\r\n<h5>2.Use sulfate-free shampoo & conditioner</h5>\r\n</h5>3.Avoid washing your hair with warm water</h5>\r\n                                    ', 399, '60 min', 'godrej'),
(16, 1, 'Full arms + full legs + underarms waxing', 'waxing.jpeg', 'female', ' \r\n                                    \r\n                                    \r\n                                   <h4>1.Pre-wax preparation</h4>\r\n<p>Warm water compress, tea tree scrub, pre-wax gel application to open up the pores and soften skin </p>\r\n<h4>2.Roll-on waxing (arms & legs)</h4>\r\n<p>Uniform, low-heat wax application with roll-on applicator. Hair removal with disposable strips.</p>\r\n<h4>3.Waxing (underarms)</h4>\r\n<p>Use of non-sticky & anti-irritant Cirépil intimate peel-off wax for underarms </p>\r\n<h4>4.Post-wax oil</h4>\r\n<p>Clean up to remove stickiness followed by post-wax oil application for soothing effect</p>\r\n<h4>5.Pressing massage</h4>\r\n<p>Relaxing low-pressure massage to comfort waxed skin</p>\r\n<h4>6.Post-service cleanup</h4>\r\n<p>Disposal of used items in a garbage bag and wiping off water/ wax (if any) from all surfaces</p>\r\n                                  \r\n                                    \r\n                                    \r\n                                    ', ' \r\n                                     \r\n                                     \r\n                                     <h5>1.Moisturise your skin</h5>\r\n<h5>2.Apply moisturiser on waxed area for a soothing effect</h5>\r\n<h5>3.No chemical products</h5>\r\n<h5>4.Avoid using chemical products (perfume, scrub, etc.) for 2-3 days</h5>\r\n<h5>5.Avoid warm / hot shower</h5>\r\n<h5>6.Do not shower immediately with warm or hot water</h5>\r\n                                    \r\n                                    \r\n                                    \r\n                                    ', 500, '1 hr 50 mins', 'Honey'),
(17, 3, 'Hair colour/ mehendi (only application)', 'woman-hair.jpg', 'female', ' <h4>1.Petroleum jelly application</h4> \r\n<p>Petroleum jelly application on forehead and hair line to prevent stains on the skin</p>\r\n<h4>2.Colour/ henna application</h4>\r\n<p>Detangling and sectioning of hair followed by application of the paste from the roots to the tips </p>\r\n<h4>3.Bun formation </h4>\r\n<p>Tying a top bun and clipping the hair to prevent dripping</p>\r\n<h4>4.Head cover</h4>\r\n<p>Covering up of the entire head with a plastic shower cap to prevent the paste from drying</p>\r\n                                    ', ' <h5>1.Use a shampoo and conditioner to wash your hair</h5>\r\n<h5>2.Apply hair serum to maintain the shine</h5>\r\n<h5>3.Avoid washing your hair for an hour after the service</h5>\r\n                                    ', 252, '60 min', 'Not specify'),
(18, 2, 'Bleach Face & neck', 'blech.jpeg', 'female', '<h4>1.Cleansing</h4>\r\n<p>Face cleansing to remove dirt, grim, unwanted oil, etc.</p>\r\n<h4>2.Pre-bleach preparation</h4>\r\n<p>Mixing cream & activator powder to prepare the bleach cream Pre-bleach preparation</p>\r\n<h4>3.Application</h4>\r\n<p>Even application of bleach cream (Cheryl\'s or Olivia) on the face & neck with a brush for 8-15 mins Application</p>\r\n<h4>4.Removal</h4>\r\n<p>Removal of bleach with rose water dipped cotton pad followed by post-bleach lotion application</p>\r\n                                    ', '<h5>1.Apply moisturiser & sunscreen to relax your skin</h5>\r\n<h5>2.Avoid chemical-based products and makeup for 24 hours</h5>\r\n<h5>3.Avoid scrubbing for 4 days</h5>\r\n                                    ', 299, '40 min', 'Not specify'),
(19, 2, 'O3+ power brightening facial', 'facial1-woman.jpg', 'female', ' \r\n                                    \r\n                                    <h5>1.Set-up</h5>\r\n<p>Partner secures tools & products for uninterrupted service.</p>\r\n<h5>2.Cleansing</h5>\r\n<p>Cleanser removes dirt, oil & makeup. It preps your skin for product absorption & deep hydration.</p>\r\n<h5>3.Bleach application</h5>\r\n<p>Bleach to lighten & even out skin tone. It reduces dark spots, pigmentation & discoloration.</p>\r\n<h5>4.Scrub massage</h5>\r\n<p>Scrub massage gently exfoliates dead skin cells, unclogs pores & improves blood circulation</p>\r\n<h5>5.Steaming & extraction</h5>\r\n<p>Steaming & blackhead extraction opens up pores, softens skin, promotes circulation</p>\r\n<h5>6.Skin toning</h5>\r\n<p>Toning restores pH balance, gives hydration & tones skin. It promotes skin health & gives radiance.</p>\r\n<h5>7.Serum & cream massage</h5>\r\n<p>Serum massage reduces inflammation, minimises pores and cream massage locks in moisture</p>\r\n<h5>8.Mask application</h5>\r\n<p>Whitening mask application all over the face & neck</p>\r\n<h5>9.Dry head & palm massage</h5>\r\n<p>Relish a relaxing head & palm massage while the mask does its work</p>\r\n<h5>10.Moisturisation</h5>\r\n<p>Moisturiser application after the mask is removed</p>\r\n<h5>11.Back massage</h5>\r\n<p>Unwind & relax any tense muscles with a comforting back massage</p>\r\n\r\n                                    \r\n                                    \r\n                                    ', '<h5>1.Apply moisturiser & sunscreen regularly.</h5>\r\n<h5>2.Avoid makeup & harsh scrubs for 24 hours after the service.</h5>\r\n<h5>3.Do not shower immediately with warm or hot water.</h5>\r\n                                    \r\n                                    \r\n                                    ', 1200, '1 hr 25 mins', 'O3+'),
(20, 2, 'Cheryl by L\'Oréal glovite facial', 'facial2.jpg', 'female', ' \r\n                                    <h4>1.Set-up</h4>\r\n<p>Partner secures tools & products for uninterrupted service.</p>\r\n<h4>2.Cleansing</h4>\r\n<p>Cleanser removes dirt, oil & makeup. It preps your skin for product absorption & deep hydration.</p>\r\n<h4>3.Exfoliation & steaming</h4>\r\n<p>Massage with peeling cream with steam for 2 mins and without steam for 3 mins to rejuvenate skin</p>\r\n<h4>4.Extraction & skin toning</h4>\r\n<p>Blackhead extraction opens up pores & softens skin while toning restores the pH balance</p>\r\n<h4>5.Cream massage</h4>\r\n<p>Energising cream massage nourishes skin, making it brighter</p>\r\n<h4>6.Mask application</h4>\r\n<p>Mask application all over the face & neck</p>\r\n<h4>7.Dry head & palm massage</h4>\r\n<p>Relish a relaxing head & palm massage while the mask does its work</p>\r\n<h4>8.Back massage</h4>\r\n<p>Unwind & relax any tense muscles with a comforting back massage</p>\r\n<h4>9.Moisturisation </h4>\r\n<p>Moisturiser application after the mask is removed</p>\r\n                                    \r\n                                    ', ' \r\n                                    <h5>1.Apply moisturiser & sunscreen regularly.</h5>\r\n<h5>2.Avoid makeup & harsh scrubs for 24 hours after the service.</h5>\r\n<h5>3.Do not shower immediately with warm or hot water.</h5>\r\n                                    \r\n                                    ', 1099, '1 hr 20 mins', 'Lotus'),
(21, 1, 'Cut, file & polish ', 'pen.jpeg', 'female', ' \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                   <h4>1.Cut & file</h4>\r\n<p>Old nail polish removal followed by cutting and filing of nails as per your preference</p>\r\n<h4>2.Nail polish application</h4>\r\n<p>Base coat application followed by two more coats of regular nail polish (not gel)</p>\r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    ', ' \r\n                                     <h5>1.Trim your nails regularly to prevent breakage</h5>\r\n<h5>2.Give your cuticles a massage for nourishment</h5>\r\n\r\n                                    \r\n                                    \r\n                                    ', 249, '20 min', 'Not specify'),
(24, 3, 'Head massage', 'massage-female.jpg', 'female', '<h4>1.Combing & sectioning</h4>\r\n<p>Detangling and dividing your hair into sections.</p>\r\n<h4>2.Oil application</h4>\r\n<p>Even application of oil all over the head followed by a nourising massage.</p>', '<h5>1.Drink plenty of water after the service</h5>\r\n<h5>2.Avoid taking shower immediately after the service</h5>', 299, '20 min', 'Not specify'),
(25, 3, 'Head massage', 'massage-male.jpg', 'male', '  <h4>1.Combing & sectioning</h4>\r\n<p>Detangling and dividing your hair into sections.</p>\r\n<h4>2.Oil application</h4>\r\n<p>Even application of oil all over the head followed by a nourising massage.</p>\r\n                                    ', '   <h5>1.Drink plenty of water after the service</h5>\r\n<h5>2.Avoid taking shower immediately after the service</h5>\r\n                                    ', 299, '20 min', 'Not specify'),
(26, 2, 'Office-ready Cleanup', 'Office-ready Cleanup.jpeg', 'male', '<h4>1.Cleansing & massage</h4>\r\n<p>Cleansing of face, neck with cleansing gel along with dry massage of head, shoulders</p>\r\n<h4>2.Exfoliation </h4>\r\n<p>Scrubbing and deep cleansing of face, neck to remove dead skin cells</p>\r\n<h4>3.Steam & blackhead removal</h4>\r\n<p>Steaming and blackhead / whitehead removal with a suction tool followed by toner application</p>\r\n<h4>4.Face mask (10 mins)</h4>\r\n<p>Face mask application along with dry palm massage</p>\r\n<h4>5.Skin toning</h4>\r\n<p>Removal of mask followed by serum application</p>', '<h5>1. Apply moisturiser & sunscreen regularly</h5>\r\n<h5>2. Do not use soap/ facewash for 12 hours after the service</h5>\r\n<h5>3. Avoid harsh scrubs for 24 hours after the service</h5>', 699, '35 min', 'Not specify'),
(27, 3, 'Anti-Dandruff Ritual', 'dendraf-male.jpeg', 'male', '<h4>1.Scalp treatment massage with active oil that is a rich natural blend of purifying doses.</h4>\r\n<h4>2.Application of the trio ingredient mask that soothes itching and calms the flaky scalp.</h4>\r\n<h4>3. Professional massages for neck & shoulder to help you relax (15 minutes).</h4>\r\n<h4>4. To be followed by rinsing and shampoo (not included in the service).</h4>', '<h5>Why get it from GG?</h5>\r\n<p>6 Sanitized equipment\'s and tools</p>\r\n<p>100% hygienic and mess-free service</p>\r\n<p>Brands Used: Brillaire</p>\r\n<p>Stylists specifically trained to deliver hair care services<p>', 650, '35 min', 'Not specify'),
(28, 2, 'Clean Shave (Gillette)', 'Clean Shave.jpeg', 'male', '<h4>1.100% Mess Free service</h4>\r\n<h4>2.Close Shave</h4>\r\n<h4>3.Disposable sheets to ensure no mess is left behind after the service</h4>\r\n<h4>4.Ustraa shave with a single use blade for a smoother finish</h4>', '<h5>Our stylists carry disposable sheets to spread on the floor in order to catch the hair that falls on the floor. </h5>\r\n<h5>They will ensure a thorough cleanup post the service to ensure there is zero mess left behind.</h5>', 199, '20 min', 'Not specify'),
(29, 1, 'Express Pedicure', 'Express Pedicure.jpeg', 'male', ' \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                   <h4>1.Preparation</h4>\r\n<p>Wiping feet with a cloth followed by cutting and filing of nails.</p> \r\n<h4>2.Soak & cuticle care</h4>\r\n<p>Dipping feet in warm water soak. Cuticle cream application, dipping feet again, cleaning of cuticles.</p>\r\n<h4>3.Scraping & cleansing</h4>\r\n<p>Removal of dead skin cells from heels & sole with scraper followed by cleansing feet till knees.</p>\r\n<h4>4.Massage </h4>\r\n<p>Relaxing cream massage till knees in upward and circular motions followed by cleaning of nails.</p>\r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    ', ' \r\n                                     \r\n                                     \r\n                                     \r\n                                     \r\n                                     \r\n                                    <h5>1.Moisturise your feet regularly</h5>\r\n<h5>2.Trim your nails regularly to maintain hygiene</h5>\r\n<h5>3.Give your cuticles an oil massage for nourishment</h5>\r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                    ', 499, '30 min', 'Not specify'),
(30, 3, 'Root touch up', 'Root touch up.jpeg', 'female', '<h4>1.Petroleum jelly application</h4>\r\n<p>Applying the gel on forehead and hair line to prevent stains on the skin.</p>\r\n<h4>2.Hair color application</h4>\r\n<p>Detangling and sectioning of hair followed by application of the colour from the roots to the tips</p>\r\n<h4>3.Bun formation</h4>\r\n<p>Tying a top bun and clipping the hair to prevent dripping.</p>\r\n<h4>4.Headcover</h4>\r\n<p>Covering up the entire head with a plastic shower cap to prevent the colour from drying.</p>', '<h5>1.Cover your head with a shower cap</h5>\r\n<h5>2.Avoid taking shower immediately after the service</h5>', 249, '30 min', 'Not specify'),
(31, 3, 'L\'Oreal Matrix Hair Color', 'loarial.png', 'male', '<h4>1.Consultation</h4>\r\n<p>Professional understands requirements and hair condition</p>\r\n<h4>2.Set-up</h4>\r\n<p>Sanitisation and placement of bowl, brush, comb and cape</p>\r\n<h4>3. Detangling</h4>\r\n<p>Detangling of hair followed by dividing it into small sections</p>\r\n<h4>4.Hair colour</h4>\r\n<p>Application of a properly made mixture of color & developer from hair roots to ends</p>\r\n<h4>5.Post-service care</h4>\r\n<p>Covering of hair with a shower cap and proper cleanup of tools, surrounding area</p>', '<h4>1.Wash your hair after 35-40 mins of application<h4>\r\n<h4>2.Use sulfate-free shampoo & conditioner</h4>\r\n<h4>3.Avoid washing your hair with warm water</h4>', 499, '1 hr 5 mins', 'Not specify'),
(32, 3, 'Haircut for men', 'cut.jpeg', 'male', '<h4>1.Consultation</h4>\r\n<p>Professional understands customer needs and hair condition to suggest suitable options</p>\r\n<h4>2.Set-up</h4>\r\n<p>Sanitisation of tools and placement of cape, mirror, floor sheet </p>\r\n<h4>3. Parting & sectioning</h4>\r\n<p>Detangling of hair followed by dividing it into small sections</p>\r\n<h4>4.Hair cut</h4>\r\n<p>Spraying of water, followed by cutting of hair as per the desired hair style with the cape on</p>\r\n<h4>5.Confirmation</h4>\r\n<p>Rechecking of the output with customer and working on suggestions (if any) for desired results</p>\r\n<h4>6.Clean up</h4>\r\n<p>Removal of all the hair strands, sanitisation of tools and clean up of the surrounding area</p>', '<h5>1.Wash the hair immediately after the service</h5>\r\n<h5>2.Dry the hair gently with a brush</h5>\r\n<h5>3.Take regular hair oil massage to nourish your hair & scalp</h5>\r\n<h5>4.Avoid styling products as much as possible</h5>', 249, '30 min', 'Not specify'),
(33, 3, 'Haircut for women', 'haircut for female.png', 'female', '<p>Professional understands customer needs and hair condition to suggest suitable options</p>\r\n<h4>2.Set-up</h4>\r\n<p>Sanitisation of tools and placement of cape, mirror, floor sheet </p>\r\n<h4>3. Parting & sectioning</h4>\r\n<p>Detangling of hair followed by dividing it into small sections</p>\r\n<h4>4.Hair cut</h4>\r\n<p>Spraying of water, followed by cutting of hair as per the desired hair style with the cape on</p>\r\n<h4>5.Confirmation</h4>\r\n<p>Rechecking of the output with customer and working on suggestions (if any) for desired results</p>\r\n<h4>6.Clean up</h4>\r\n<p>Removal of all the hair strands, sanitisation of tools and clean up of the surrounding area</p>', '<h5>1.Wash the hair immediately after the service</h5>\r\n<h5>2.Dry the hair gently with a brush</h5>\r\n<h5>3.Take regular hair oil massage to nourish your hair & scalp</h5>\r\n<h5>4.Avoid styling products as much as possible</h5>', 700, '60 min', 'Not specify'),
(34, 1, 'Manicure', 'manicure-hand1.jpg', 'male', ' \r\n                                   <h4>1.Preparation</h4>\r\n<p>Wiping hands with a cloth followed by cutting and filing of nails </p>\r\n<h4>2.Soak & cuticle care</h4>\r\n<p>Dipping hands in warm water. Cuticle cream application, dipping hands again, cleaning of cuticles</p>\r\n<h4>3.Cleansing</h4>\r\n<p>Cleansing hands till elbows with a cleanser</p> \r\n<h4>4.Massage </h4>\r\n<p>Relaxing cream massage till elbows in upward and circular motions followed by cleaning of nails</p>\r\n                                    ', ' <h5>1.Trim your nails regularly to prevent breakage</h5>\r\n<h5>2.Give your cuticles a massage for nourishment</h5>\r\n ', 499, '30 min', 'Not specify'),
(35, 2, 'full face Threading', 'Threading.jpeg', 'female', '<h4>1.Skin preparation</h4>\r\n<p>Face cleansing followed by talcum application</p>\r\n<h4>2.Threading</h4>\r\n<p>Precise threading using good quality thread</p>\r\n<h4>3.Post-service massage</h4>\r\n<p>Massage on the specific area for a soothing effect</p>', '<h5>1.Wash your face with cold water</h5>\r\n<h5>2.Apply a light moisturiser, if needed</h5>\r\n<h5>3.Avoid touching threaded area immediately after the service</h5>', 400, '30 min', 'Not specify'),
(36, 2, 'Detan Face & neck', 'detan.jpeg', 'female', '<h4>1.Cleansing</h4>\r\n<p>Face cleansing to remove dirt, grim, unwanted oil, etc.</p>\r\n<h4>2.Application</h4>\r\n<p>Even application of detan mask enriched with milk, honey, fruit extracts & essential oils</p>\r\n<h4>3.Removal</h4>\r\n<p>Removal of detan mask with rose water dipped cotton pad followed by moisturising lotion application</p>', '<h5>1.Apply moisturiser & sunscreen to relax your skin</h5>\r\n<h5>2.Avoid chemical-based products and makeup for 24 hours</h5>\r\n<h5>3.Avoid scrubbing for 4 days</h5>', 349, '20 min', 'Not specify'),
(37, 3, 'Loreal hair spa', 'Loreal hair spa.jpeg', 'female', '<h4>1.Proper consultation</h4>\r\n<p>Examining the hair type, condition before the service for effective results</p>\r\n<h4>2.Combing & sectioning</h4>\r\n<p>Detangling and dividing your hair into four equal sections</p>\r\n<h4>3.Application & emulsification</h4>\r\n<p>Cream application on all hair sections with a brush followed by emulsifying it with hands</p>\r\n<h4>4.Massage</h4>\r\n<p>Scalp & forehead massage using multiple techniques for relaxation and comfort</p>\r\n<h4>5.Steam & cover</h4>\r\n<p>Steam followed by tying the hair and covering it with a shower cap</p>', '<h5>1.Go for loose hairstyles for 2-3 days</h5>\r\n<h5>2.Do not apply oil right after the hair spa</h5>\r\n<h5>3.Avoid using straightener, curler, blower, etc. for 2 days</h5>', 1999, '1 hr 20 mins', 'loreal'),
(38, 1, 'Bombini luxury manicure', 'Bombini luxury manicure.jpeg', 'male', '<h4>1.Nail care</h4>\r\n<p>Old polish removal followed by cutting and filing of nails as per your preference</p>\r\n<h4>2.Soak</h4>\r\n<p>Dipping hands in warm water ice-cream ball soak. The ball melts to form a creamy</p> moisturising soak\r\n<h4>3.Deep cleanse </h4>\r\n<p>Cuticle pushing and cutting followed by cleaning hands till elbow with Bombini wet cleanser</p>\r\n<h4>4.Mellow massage & exfoliation</h4>\r\n<p>Mellow massage followed by scrubbing hands with sugar scrub till elbow to remove dead skin cells</p>\r\n<h4>5.Nourishing mask</h4>\r\n<p>Bombini mask application with a brush till elbow</p>\r\n<h4>6.Massage</h4>\r\n<p>Relaxing massage (pressure as per your comfort) with sea lush cream till it penetrates into the skin</p>\r\n<h4>7.Nail polish application</h4>\r\n<p>Gentle dab of the serum all over your hands for a finishing touch</p>', '<h5>1.Apply moisturiser & sunscreen regularly</h5>\r\n<h5>2.Trim your nails every 1-2 weeks</h5>\r\n<h5>3.Apply cuticle oil for nourishment</h5>\r\n', 1399, '60 min', 'Not specify');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `client` (`user_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `professional` (`pro_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`sub_id`) REFERENCES `sub_service` (`sub_id`);

--
-- Constraints for table `professional`
--
ALTER TABLE `professional`
  ADD CONSTRAINT `professional_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main_service` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_service`
--
ALTER TABLE `sub_service`
  ADD CONSTRAINT `sub_service_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main_service` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
