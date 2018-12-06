-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2018 at 09:59 AM
-- Server version: 10.2.17-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u551018196_soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applications`
--

CREATE TABLE `Applications` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `referredByEmail` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ArchivedEmployees`
--

CREATE TABLE `ArchivedEmployees` (
  `id` bigint(20) NOT NULL,
  `ref_id` bigint(20) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` enum('Male','Female') DEFAULT NULL,
  `ssn_num` varchar(100) DEFAULT '',
  `nic_num` varchar(100) DEFAULT '',
  `other_id` varchar(100) DEFAULT '',
  `work_email` varchar(100) DEFAULT NULL,
  `joined_date` datetime DEFAULT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `supervisor` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `termination_date` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Attendance`
--

CREATE TABLE `Attendance` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `image_in` longtext DEFAULT NULL,
  `image_out` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AuditLog`
--

CREATE TABLE `AuditLog` (
  `id` bigint(20) NOT NULL,
  `time` datetime DEFAULT NULL,
  `user` bigint(20) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `employee` varchar(300) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Benifits`
--

CREATE TABLE `Benifits` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Benifits`
--

INSERT INTO `Benifits` (`id`, `name`) VALUES
(1, 'Retirement plan'),
(2, 'Health plan'),
(3, 'Life insurance'),
(4, 'Paid vacations');

-- --------------------------------------------------------

--
-- Table structure for table `Calls`
--

CREATE TABLE `Calls` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Candidates`
--

CREATE TABLE `Candidates` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `nationality` bigint(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `marital_status` enum('Married','Single','Divorced','Widowed','Other') DEFAULT NULL,
  `address1` varchar(100) DEFAULT '',
  `address2` varchar(100) DEFAULT '',
  `city` varchar(150) DEFAULT '',
  `country` char(2) DEFAULT NULL,
  `province` bigint(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `cv_title` varchar(200) NOT NULL DEFAULT '',
  `cv` varchar(150) DEFAULT NULL,
  `cvtext` text DEFAULT NULL,
  `industry` text DEFAULT NULL,
  `profileImage` varchar(150) DEFAULT NULL,
  `head_line` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `work_history` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `referees` text DEFAULT NULL,
  `linkedInUrl` varchar(500) DEFAULT NULL,
  `linkedInData` text DEFAULT NULL,
  `totalYearsOfExperience` int(11) DEFAULT NULL,
  `totalMonthsOfExperience` int(11) DEFAULT NULL,
  `htmlCVData` longtext DEFAULT NULL,
  `generatedCVFile` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `expectedSalary` int(11) DEFAULT NULL,
  `preferedPositions` text DEFAULT NULL,
  `preferedJobtype` varchar(60) DEFAULT NULL,
  `preferedCountries` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `calls` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `linkedInProfileLink` varchar(250) DEFAULT NULL,
  `linkedInProfileId` varchar(50) DEFAULT NULL,
  `facebookProfileLink` varchar(250) DEFAULT NULL,
  `facebookProfileId` varchar(50) DEFAULT NULL,
  `twitterProfileLink` varchar(250) DEFAULT NULL,
  `twitterProfileId` varchar(50) DEFAULT NULL,
  `googleProfileLink` varchar(250) DEFAULT NULL,
  `googleProfileId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Certifications`
--

CREATE TABLE `Certifications` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Certifications`
--

INSERT INTO `Certifications` (`id`, `name`, `description`) VALUES
(1, 'Red Hat Certified Architect (RHCA)', 'Red Hat Certified Architect (RHCA)'),
(2, 'GIAC Secure Software Programmer -Java', 'GIAC Secure Software Programmer -Java'),
(3, 'Risk Management Professional (PMI)', 'Risk Management Professional (PMI)'),
(4, 'IT Infrastructure Library (ITIL) Expert Certification', 'IT Infrastructure Library (ITIL) Expert Certification'),
(5, 'Microsoft Certified Architect', 'Microsoft Certified Architect'),
(6, 'Oracle Exadata 11g Certified Implementation Specialist', 'Oracle Exadata 11g Certified Implementation Specialist'),
(7, 'Cisco Certified Design Professional (CCDP)', 'Cisco Certified Design Professional (CCDP)'),
(8, 'Cisco Certified Internetwork Expert (CCIE)', 'Cisco Certified Internetwork Expert (CCIE)'),
(9, 'Cisco Certified Network Associate', 'Cisco Certified Network Associate'),
(10, 'HP/Master Accredited Solutions Expert (MASE)', 'HP/Master Accredited Solutions Expert (MASE)'),
(11, 'HP/Master Accredited Systems Engineer (Master ASE)', 'HP/Master Accredited Systems Engineer (Master ASE)'),
(12, 'Certified Information Security Manager (CISM)', 'Certified Information Security Manager (CISM)'),
(13, 'Certified Information Systems Auditor (CISA)', 'Certified Information Systems Auditor (CISA)'),
(14, 'CyberSecurity Forensic Analyst (CSFA)', 'CyberSecurity Forensic Analyst (CSFA)'),
(15, 'Open Group Certified Architect (OpenCA)', 'Open Group Certified Architect (OpenCA)'),
(16, 'Oracle DBA Administrator Certified Master OCM', 'Oracle DBA Administrator Certified Master OCM'),
(17, 'Project Management Professional', 'Project Management Professional'),
(18, 'Apple Certified Support Professional', 'Apple Certified Support Professional'),
(19, 'Certified Public Accountant (CPA)', 'Certified Public Accountant (CPA)'),
(20, 'Chartered Financial Analyst', 'Chartered Financial Analyst'),
(21, 'Professional in Human Resources (PHR)', 'Professional in Human Resources (PHR)');

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `first_contact_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(25) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `company_url` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Clients`
--

INSERT INTO `Clients` (`id`, `name`, `details`, `first_contact_date`, `created`, `address`, `contact_number`, `contact_email`, `company_url`, `status`) VALUES
(1, 'IceHrm Sample Client 1', NULL, '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'icehrm+client1@web-stalk.com', 'http://icehrm.com', 'Active'),
(2, 'IceHrm Sample Client 2', NULL, '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'icehrm+client1@web-stalk.com', 'http://icehrm.com', 'Active'),
(3, 'IceHrm Sample Client 3', NULL, '2012-01-04', '2013-01-03 05:47:33', '001, Sample Road,\nSample City, USA', '678-894-1047', 'icehrm+client1@web-stalk.com', 'http://icehrm.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `CompanyDocuments`
--

CREATE TABLE `CompanyDocuments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `notify_employees` enum('Yes','No') DEFAULT 'Yes',
  `attachment` varchar(100) DEFAULT NULL,
  `share_departments` varchar(100) DEFAULT NULL,
  `share_employees` varchar(100) DEFAULT NULL,
  `share_userlevel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CompanyLoans`
--

CREATE TABLE `CompanyLoans` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CompanyLoans`
--

INSERT INTO `CompanyLoans` (`id`, `name`, `details`) VALUES
(1, 'Personal loan', 'Personal loans'),
(2, 'Educational loan', 'Educational loan');

-- --------------------------------------------------------

--
-- Table structure for table `CompanyStructures`
--

CREATE TABLE `CompanyStructures` (
  `id` bigint(20) NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `address` text DEFAULT NULL,
  `type` enum('Company','Head Office','Regional Office','Department','Unit','Sub Unit','Other') DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '0',
  `parent` bigint(20) DEFAULT NULL,
  `timezone` varchar(100) NOT NULL DEFAULT 'Europe/London',
  `heads` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CompanyStructures`
--

INSERT INTO `CompanyStructures` (`id`, `title`, `description`, `address`, `type`, `country`, `parent`, `timezone`, `heads`) VALUES
(1, 'Your Company', 'Please update your company name here. You can update, delete or add units according to your needs', '', 'Company', 'US', NULL, 'Europe/London', NULL),
(2, 'Head Office', 'US Head office', 'PO Box 001002\nSample Road, Sample Town', 'Head Office', 'US', 1, 'Europe/London', NULL),
(3, 'Marketing Department', 'Marketing Department', 'PO Box 001002\nSample Road, Sample Town', 'Department', 'US', 2, 'Europe/London', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Conversations`
--

CREATE TABLE `Conversations` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `type` varchar(35) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `target` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `timeint` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationUserStatus`
--

CREATE TABLE `ConversationUserStatus` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `seen_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `id` bigint(20) NOT NULL,
  `code` char(2) NOT NULL DEFAULT '',
  `namecap` varchar(80) DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`id`, `code`, `namecap`, `name`, `iso3`, `numcode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152),
(44, 'CN', 'CHINA', 'China', 'CHN', 156),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352),
(99, 'IN', 'INDIA', 'India', 'IND', 356),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
(168, 'PE', 'PERU', 'Peru', 'PER', 604),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan', 'TWN', 158),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `id` bigint(20) NOT NULL,
  `code` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text DEFAULT NULL,
  `coordinator` bigint(20) DEFAULT NULL,
  `trainer` varchar(300) DEFAULT NULL,
  `trainer_info` text DEFAULT NULL,
  `paymentType` enum('Company Sponsored','Paid by Employee') DEFAULT 'Company Sponsored',
  `currency` varchar(3) DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT 0.00,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`id`, `code`, `name`, `description`, `coordinator`, `trainer`, `trainer_info`, `paymentType`, `currency`, `cost`, `status`, `created`, `updated`) VALUES
(1, 'C0001', 'Info Marketing', 'Learn how to Create and Outsource Info Marketing Products', 1, 'Tim Jhon', 'Tim Jhon has a background in business management and has been working with small business to establish their online presence', 'Company Sponsored', 'USD', '55.00', 'Active', '2018-12-01 15:36:10', '2018-12-01 15:36:10'),
(2, 'C0002', 'People Management', 'Learn how to Manage People', 1, 'Tim Jhon', 'Tim Jhon has a background in business management and has been working with small business to establish their online presence', 'Company Sponsored', 'USD', '59.00', 'Active', '2018-12-01 15:36:10', '2018-12-01 15:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `Crons`
--

CREATE TABLE `Crons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `lastrun` datetime DEFAULT NULL,
  `frequency` int(4) NOT NULL,
  `time` varchar(50) NOT NULL,
  `type` enum('Minutely','Hourly','Daily','Weekly','Monthly','Yearly') DEFAULT 'Hourly',
  `status` enum('Enabled','Disabled') DEFAULT 'Enabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Crons`
--

INSERT INTO `Crons` (`id`, `name`, `class`, `lastrun`, `frequency`, `time`, `type`, `status`) VALUES
(1, 'Email Sender Task', 'EmailSenderTask', NULL, 1, '1', 'Minutely', 'Enabled'),
(2, 'Document Expire Alert', 'DocumentExpiryNotificationTask', NULL, 1, '51', 'Hourly', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `CurrencyTypes`
--

CREATE TABLE `CurrencyTypes` (
  `id` bigint(20) NOT NULL,
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CurrencyTypes`
--

INSERT INTO `CurrencyTypes` (`id`, `code`, `name`) VALUES
(3, 'AED', 'Utd. Arab Emir. Dirham'),
(4, 'AFN', 'Afghanistan Afghani'),
(5, 'ALL', 'Albanian Lek'),
(6, 'ANG', 'NL Antillian Guilder'),
(7, 'AOR', 'Angolan New Kwanza'),
(8, 'ARS', 'Argentine Peso'),
(10, 'AUD', 'Australian Dollar'),
(11, 'AWG', 'Aruban Florin'),
(12, 'BBD', 'Barbados Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(15, 'BGL', 'Bulgarian Lev'),
(16, 'BHD', 'Bahraini Dinar'),
(17, 'BIF', 'Burundi Franc'),
(18, 'BMD', 'Bermudian Dollar'),
(19, 'BND', 'Brunei Dollar'),
(20, 'BOB', 'Bolivian Boliviano'),
(21, 'BRL', 'Brazilian Real'),
(22, 'BSD', 'Bahamian Dollar'),
(23, 'BTN', 'Bhutan Ngultrum'),
(24, 'BWP', 'Botswana Pula'),
(25, 'BZD', 'Belize Dollar'),
(26, 'CAD', 'Canadian Dollar'),
(27, 'CHF', 'Swiss Franc'),
(28, 'CLP', 'Chilean Peso'),
(29, 'CNY', 'Chinese Yuan Renminbi'),
(30, 'COP', 'Colombian Peso'),
(31, 'CRC', 'Costa Rican Colon'),
(32, 'CUP', 'Cuban Peso'),
(33, 'CVE', 'Cape Verde Escudo'),
(34, 'CYP', 'Cyprus Pound'),
(37, 'DJF', 'Djibouti Franc'),
(38, 'DKK', 'Danish Krona'),
(39, 'DOP', 'Dominican Peso'),
(40, 'DZD', 'Algerian Dinar'),
(41, 'ECS', 'Ecuador Sucre'),
(42, 'EUR', 'Euro'),
(43, 'EEK', 'Estonian Krona'),
(44, 'EGP', 'Egyptian Pound'),
(46, 'ETB', 'Ethiopian Birr'),
(48, 'FJD', 'Fiji Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(51, 'GBP', 'Pound Sterling'),
(52, 'GHC', 'Ghanaian Cedi'),
(53, 'GIP', 'Gibraltar Pound'),
(54, 'GMD', 'Gambian Dalasi'),
(55, 'GNF', 'Guinea Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanan Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(66, 'ILS', 'Israeli New Shekel'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Iceland Krona'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KHR', 'Kampuchean Riel'),
(77, 'KMF', 'Comoros Franc'),
(78, 'KPW', 'North Korean Won'),
(79, 'KRW', 'Korean Won'),
(80, 'KWD', 'Kuwaiti Dinar'),
(81, 'KYD', 'Cayman Islands Dollar'),
(82, 'KZT', 'Kazakhstan Tenge'),
(83, 'LAK', 'Lao Kip'),
(84, 'LBP', 'Lebanese Pound'),
(85, 'LKR', 'Sri Lanka Rupee'),
(86, 'LRD', 'Liberian Dollar'),
(87, 'LSL', 'Lesotho Loti'),
(88, 'LTL', 'Lithuanian Litas'),
(90, 'LVL', 'Latvian Lats'),
(91, 'LYD', 'Libyan Dinar'),
(92, 'MAD', 'Moroccan Dirham'),
(93, 'MGF', 'Malagasy Franc'),
(94, 'MMK', 'Myanmar Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macau Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya'),
(98, 'MTL', 'Maltese Lira'),
(99, 'MUR', 'Mauritius Rupee'),
(100, 'MVR', 'Maldive Rufiyaa'),
(101, 'MWK', 'Malawi Kwacha'),
(102, 'MXN', 'Mexican New Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZM', 'Mozambique Metical'),
(105, 'NAD', 'Namibia Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Cordoba Oro'),
(109, 'NOK', 'Norwegian Krona'),
(110, 'NPR', 'Nepalese Rupee'),
(111, 'NZD', 'New Zealand Dollar'),
(112, 'OMR', 'Omani Rial'),
(113, 'PAB', 'Panamanian Balboa'),
(114, 'PEN', 'Peruvian Nuevo Sol'),
(115, 'PGK', 'Papua New Guinea Kina'),
(116, 'PHP', 'Philippine Peso'),
(117, 'PKR', 'Pakistan Rupee'),
(118, 'PLN', 'Polish Zloty'),
(120, 'PYG', 'Paraguay Guarani'),
(121, 'QAR', 'Qatari Rial'),
(122, 'ROL', 'Romanian Leu'),
(123, 'RUB', 'Russian Rouble'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychelles Rupee'),
(127, 'SDD', 'Sudanese Dinar'),
(128, 'SDP', 'Sudanese Pound'),
(129, 'SEK', 'Swedish Krona'),
(130, 'SKK', 'Slovak Koruna'),
(131, 'SGD', 'Singapore Dollar'),
(132, 'SHP', 'St. Helena Pound'),
(135, 'SLL', 'Sierra Leone Leone'),
(136, 'SOS', 'Somali Shilling'),
(137, 'SRD', 'Surinamese Dollar'),
(138, 'STD', 'Sao Tome/Principe Dobra'),
(139, 'SVC', 'El Salvador Colon'),
(140, 'SYP', 'Syrian Pound'),
(141, 'SZL', 'Swaziland Lilangeni'),
(142, 'THB', 'Thai Baht'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRL', 'Turkish Lira'),
(146, 'TTD', 'Trinidad/Tobago Dollar'),
(147, 'TWD', 'Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukraine Hryvnia'),
(150, 'UGX', 'Uganda Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYP', 'Uruguayan Peso'),
(153, 'VEB', 'Venezuelan Bolivar'),
(154, 'VND', 'Vietnamese Dong'),
(155, 'VUV', 'Vanuatu Vatu'),
(156, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver (oz.)'),
(160, 'XAU', 'Gold (oz.)'),
(161, 'XCD', 'Eastern Caribbean Dollars'),
(162, 'XOF', 'CFA Franc BCEAO'),
(163, 'XPD', 'Palladium (oz.)'),
(164, 'XPF', 'CFP Franc'),
(165, 'XPT', 'Platinum (oz.)'),
(166, 'YER', 'Yemeni Riyal'),
(167, 'YUM', 'Yugoslavian Dinar'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZRN', 'New Zaire'),
(170, 'ZWD', 'Zimbabwe Dollar'),
(171, 'CZK', 'Czech Koruna'),
(172, 'MXP', 'Mexican Peso'),
(173, 'SAR', 'Saudi Arabia Riyal'),
(175, 'YUN', 'Yugoslav Dinar'),
(176, 'ZMK', 'Zambian Kwacha'),
(177, 'ARP', 'Argentina Pesos'),
(179, 'XDR', 'IMF Special Drawing Right'),
(180, 'RUR', 'Russia Rubles');

-- --------------------------------------------------------

--
-- Table structure for table `CustomFields`
--

CREATE TABLE `CustomFields` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `data` text DEFAULT NULL,
  `display` enum('Form','Table and Form','Hidden') DEFAULT 'Form',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `field_label` varchar(50) DEFAULT NULL,
  `field_validation` varchar(50) DEFAULT NULL,
  `field_options` varchar(500) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `display_section` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CustomFieldValues`
--

CREATE TABLE `CustomFieldValues` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `object_id` varchar(60) NOT NULL,
  `value` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DataEntryBackups`
--

CREATE TABLE `DataEntryBackups` (
  `id` bigint(20) NOT NULL,
  `tableType` varchar(200) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DataImport`
--

CREATE TABLE `DataImport` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dataType` varchar(60) NOT NULL,
  `details` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DataImport`
--

INSERT INTO `DataImport` (`id`, `name`, `dataType`, `details`, `columns`, `updated`, `created`) VALUES
(1, 'Employee Data Import', 'EmployeeDataImporter', '', '[{\"name\":\"employee_id\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"Yes\",\"id\":\"columns_7\"},{\"name\":\"first_name\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_3\"},{\"name\":\"middle_name\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_5\"},{\"name\":\"last_name\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_6\"},{\"name\":\"address1\",\"title\":\"Address1\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_8\"},{\"name\":\"address2\",\"title\":\"Address2\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_9\"},{\"name\":\"home_phone\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_14\"},{\"name\":\"mobile_phone\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_15\"},{\"name\":\"work_email\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_16\"},{\"name\":\"gender\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_17\"},{\"name\":\"marital_status\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_18\"},{\"name\":\"birthday\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_20\"},{\"name\":\"nationality\",\"title\":\"Nationality\",\"type\":\"Reference\",\"dependOn\":\"Nationality\",\"dependOnField\":\"name\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_22\"},{\"name\":\"ethnicity\",\"title\":\"Ethnicity\",\"type\":\"Normal\",\"dependOn\":\"Ethnicity\",\"dependOnField\":\"name\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_23\"},{\"name\":\"EmergencyContact/name\",\"title\":\"\",\"type\":\"Attached\",\"dependOn\":\"EmergencyContact\",\"dependOnField\":\"name\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_24\"},{\"name\":\"EmergencyContact/relationship\",\"title\":\"\",\"type\":\"Attached\",\"dependOn\":\"EmergencyContact\",\"dependOnField\":\"relationship\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_25\"},{\"name\":\"EmergencyContact/home_phone\",\"title\":\"\",\"type\":\"Attached\",\"dependOn\":\"EmergencyContact\",\"dependOnField\":\"home_phone\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_26\"},{\"name\":\"ssn_num\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_31\"},{\"name\":\"job_title\",\"title\":\"\",\"type\":\"Reference\",\"dependOn\":\"JobTitle\",\"dependOnField\":\"name\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_32\"},{\"name\":\"employment_status\",\"title\":\"\",\"type\":\"Reference\",\"dependOn\":\"EmploymentStatus\",\"dependOnField\":\"name\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_33\"},{\"name\":\"joined_date\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_36\"},{\"name\":\"department\",\"title\":\"\",\"type\":\"Reference\",\"dependOn\":\"CompanyStructure\",\"dependOnField\":\"title\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_38\"}]', '2016-06-02 18:56:32', '2016-06-02 18:56:32'),
(2, 'Attendance Data Import', 'AttendanceDataImporter', '', '[{\"name\":\"employee\",\"title\":\"\",\"type\":\"Reference\",\"dependOn\":\"Employee\",\"dependOnField\":\"employee_id\",\"isKeyField\":\"Yes\",\"idField\":\"No\",\"id\":\"columns_1\"},{\"name\":\"in_time\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_2\"},{\"name\":\"out_time\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_3\"},{\"name\":\"note\",\"title\":\"\",\"type\":\"Normal\",\"dependOn\":\"NULL\",\"dependOnField\":\"\",\"isKeyField\":\"No\",\"idField\":\"No\",\"id\":\"columns_4\"}]', '2016-08-14 02:51:56', '2016-08-14 02:51:56'),
(3, 'Payroll Data Import', 'PayrollDataImporter', '', '[]', '2016-08-14 02:51:56', '2016-08-14 02:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `DataImportFiles`
--

CREATE TABLE `DataImportFiles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `data_import_definition` varchar(200) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DeductionGroup`
--

CREATE TABLE `DeductionGroup` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Deductions`
--

CREATE TABLE `Deductions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `componentType` varchar(250) DEFAULT NULL,
  `component` varchar(250) DEFAULT NULL,
  `payrollColumn` int(11) DEFAULT NULL,
  `rangeAmounts` text DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Documents`
--

CREATE TABLE `Documents` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `expire_notification` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_month` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_week` enum('Yes','No') DEFAULT 'Yes',
  `expire_notification_day` enum('Yes','No') DEFAULT 'Yes',
  `sign` enum('Yes','No') DEFAULT 'Yes',
  `sign_label` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Documents`
--

INSERT INTO `Documents` (`id`, `name`, `details`, `expire_notification`, `expire_notification_month`, `expire_notification_week`, `expire_notification_day`, `sign`, `sign_label`, `created`, `updated`) VALUES
(1, 'ID Copy', 'Your ID copy', 'Yes', 'Yes', 'Yes', 'Yes', 'No', NULL, '2018-12-01 15:36:10', '2018-12-01 15:36:10'),
(2, 'Degree Certificate', 'Degree Certificate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', NULL, '2018-12-01 15:36:10', '2018-12-01 15:36:10'),
(3, 'Driving License', 'Driving License', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', NULL, '2018-12-01 15:36:10', '2018-12-01 15:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `EducationLevel`
--

CREATE TABLE `EducationLevel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EducationLevel`
--

INSERT INTO `EducationLevel` (`id`, `name`) VALUES
(1, 'Unspecified'),
(2, 'High School or equivalent'),
(3, 'Certification'),
(4, 'Vocational'),
(5, 'Associate Degree'),
(6, 'Bachelor\'s Degree'),
(7, 'Master\'s Degree'),
(8, 'Doctorate'),
(9, 'Professional'),
(10, 'Some College Coursework Completed'),
(11, 'Vocational - HS Diploma'),
(12, 'Vocational - Degree'),
(13, 'Some High School Coursework');

-- --------------------------------------------------------

--
-- Table structure for table `Educations`
--

CREATE TABLE `Educations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Educations`
--

INSERT INTO `Educations` (`id`, `name`, `description`) VALUES
(1, 'Bachelors Degree', 'Bachelors Degree'),
(2, 'Diploma', 'Diploma'),
(3, 'Masters Degree', 'Masters Degree'),
(4, 'Doctorate', 'Doctorate');

-- --------------------------------------------------------

--
-- Table structure for table `Emails`
--

CREATE TABLE `Emails` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `toEmail` varchar(300) NOT NULL,
  `template` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `cclist` varchar(500) DEFAULT NULL,
  `bcclist` varchar(500) DEFAULT NULL,
  `error` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Pending','Sent','Error') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmergencyContacts`
--

CREATE TABLE `EmergencyContacts` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `home_phone` varchar(15) DEFAULT NULL,
  `work_phone` varchar(15) DEFAULT NULL,
  `mobile_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeApprovals`
--

CREATE TABLE `EmployeeApprovals` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `element` bigint(20) NOT NULL,
  `approver` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `active` int(11) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeAttendanceSheets`
--

CREATE TABLE `EmployeeAttendanceSheets` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` enum('Approved','Pending','Rejected','Submitted') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeCertifications`
--

CREATE TABLE `EmployeeCertifications` (
  `id` bigint(20) NOT NULL,
  `certification_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `institute` varchar(400) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeCompanyLoans`
--

CREATE TABLE `EmployeeCompanyLoans` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `loan` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `last_installment_date` date NOT NULL,
  `period_months` bigint(20) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `monthly_installment` decimal(10,2) NOT NULL,
  `status` enum('Approved','Repayment','Paid','Suspended') DEFAULT 'Approved',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeDataHistory`
--

CREATE TABLE `EmployeeDataHistory` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `field` varchar(100) NOT NULL,
  `old_value` varchar(500) DEFAULT NULL,
  `new_value` varchar(500) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeDependents`
--

CREATE TABLE `EmployeeDependents` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `relationship` enum('Child','Spouse','Parent','Other') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `id_number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeDocuments`
--

CREATE TABLE `EmployeeDocuments` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `document` bigint(20) DEFAULT NULL,
  `date_added` date NOT NULL,
  `valid_until` date DEFAULT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `details` text DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `expire_notification_last` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeEducations`
--

CREATE TABLE `EmployeeEducations` (
  `id` bigint(20) NOT NULL,
  `education_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `institute` varchar(400) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeEthnicity`
--

CREATE TABLE `EmployeeEthnicity` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `ethnicity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeExpenses`
--

CREATE TABLE `EmployeeExpenses` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `expense_date` date DEFAULT NULL,
  `payment_method` bigint(20) NOT NULL,
  `transaction_no` varchar(300) NOT NULL,
  `payee` varchar(500) NOT NULL,
  `category` bigint(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `amount` decimal(10,3) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeForms`
--

CREATE TABLE `EmployeeForms` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `form` bigint(20) NOT NULL,
  `status` enum('Pending','Completed') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeImmigrations`
--

CREATE TABLE `EmployeeImmigrations` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `document` bigint(20) DEFAULT NULL,
  `documentname` varchar(150) NOT NULL,
  `valid_until` date NOT NULL,
  `status` enum('Active','Inactive','Draft') DEFAULT 'Active',
  `details` text DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeImmigrationStatus`
--

CREATE TABLE `EmployeeImmigrationStatus` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeLanguages`
--

CREATE TABLE `EmployeeLanguages` (
  `id` bigint(20) NOT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `reading` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `speaking` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `writing` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL,
  `understanding` enum('Elementary Proficiency','Limited Working Proficiency','Professional Working Proficiency','Full Professional Proficiency','Native or Bilingual Proficiency') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeLeaveDays`
--

CREATE TABLE `EmployeeLeaveDays` (
  `id` bigint(20) NOT NULL,
  `employee_leave` bigint(20) NOT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_type` enum('Full Day','Half Day - Morning','Half Day - Afternoon','1 Hour - Morning','2 Hours - Morning','3 Hours - Morning','1 Hour - Afternoon','2 Hours - Afternoon','3 Hours - Afternoon') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeLeaveLog`
--

CREATE TABLE `EmployeeLeaveLog` (
  `id` bigint(20) NOT NULL,
  `employee_leave` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `data` varchar(500) NOT NULL,
  `status_from` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `status_to` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeLeaves`
--

CREATE TABLE `EmployeeLeaves` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `leave_period` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `attachment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeOverTime`
--

CREATE TABLE `EmployeeOverTime` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `category` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeProjects`
--

CREATE TABLE `EmployeeProjects` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Current','Inactive','Completed') DEFAULT 'Current',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `id` bigint(20) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `nationality` bigint(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `marital_status` enum('Married','Single','Divorced','Widowed','Other') DEFAULT NULL,
  `ssn_num` varchar(100) DEFAULT NULL,
  `nic_num` varchar(100) DEFAULT NULL,
  `other_id` varchar(100) DEFAULT NULL,
  `driving_license` varchar(100) DEFAULT NULL,
  `driving_license_exp_date` date DEFAULT NULL,
  `employment_status` bigint(20) DEFAULT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `pay_grade` bigint(20) DEFAULT NULL,
  `work_station_id` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `province` bigint(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `work_phone` varchar(50) DEFAULT NULL,
  `work_email` varchar(100) DEFAULT NULL,
  `private_email` varchar(100) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `confirmation_date` date DEFAULT NULL,
  `supervisor` bigint(20) DEFAULT NULL,
  `indirect_supervisors` varchar(250) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `custom1` varchar(250) DEFAULT NULL,
  `custom2` varchar(250) DEFAULT NULL,
  `custom3` varchar(250) DEFAULT NULL,
  `custom4` varchar(250) DEFAULT NULL,
  `custom5` varchar(250) DEFAULT NULL,
  `custom6` varchar(250) DEFAULT NULL,
  `custom7` varchar(250) DEFAULT NULL,
  `custom8` varchar(250) DEFAULT NULL,
  `custom9` varchar(250) DEFAULT NULL,
  `custom10` varchar(250) DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Active','Terminated') DEFAULT 'Active',
  `ethnicity` bigint(20) DEFAULT NULL,
  `immigration_status` bigint(20) DEFAULT NULL,
  `approver1` bigint(20) DEFAULT NULL,
  `approver2` bigint(20) DEFAULT NULL,
  `approver3` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `nationality`, `birthday`, `gender`, `marital_status`, `ssn_num`, `nic_num`, `other_id`, `driving_license`, `driving_license_exp_date`, `employment_status`, `job_title`, `pay_grade`, `work_station_id`, `address1`, `address2`, `city`, `country`, `province`, `postal_code`, `home_phone`, `mobile_phone`, `work_phone`, `work_email`, `private_email`, `joined_date`, `confirmation_date`, `supervisor`, `indirect_supervisors`, `department`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `termination_date`, `notes`, `status`, `ethnicity`, `immigration_status`, `approver1`, `approver2`, `approver3`) VALUES
(1, 'EMP001', 'IceHrm', 'Sample', 'Employee', 35, '1984-03-17', 'Male', 'Married', '', '294-38-3535', '294-38-3535', '', NULL, 3, 11, 2, '', '2772 Flynn Street', 'Willoughby', 'Willoughby', 'US', 41, '44094', '440-953-4578', '440-953-4578', '440-953-4578', 'icehrm+admin@web-stalk.com', 'icehrm+admin@web-stalk.com', '2005-08-03', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeSalary`
--

CREATE TABLE `EmployeeSalary` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `component` bigint(20) NOT NULL,
  `pay_frequency` enum('Hourly','Daily','Bi Weekly','Weekly','Semi Monthly','Monthly') DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeSkills`
--

CREATE TABLE `EmployeeSkills` (
  `id` bigint(20) NOT NULL,
  `skill_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `details` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeTimeEntry`
--

CREATE TABLE `EmployeeTimeEntry` (
  `id` bigint(20) NOT NULL,
  `project` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `timesheet` bigint(20) NOT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `time_start` varchar(10) NOT NULL,
  `date_end` datetime DEFAULT NULL,
  `time_end` varchar(10) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeTimesheets`
--

CREATE TABLE `EmployeeTimesheets` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` enum('Approved','Pending','Rejected','Submitted') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EmployeeTimesheets`
--

INSERT INTO `EmployeeTimesheets` (`id`, `employee`, `date_start`, `date_end`, `status`) VALUES
(1, 1, '2018-11-25', '2018-12-01', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeTrainingSessions`
--

CREATE TABLE `EmployeeTrainingSessions` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `trainingSession` bigint(20) DEFAULT NULL,
  `feedBack` varchar(1500) DEFAULT NULL,
  `status` enum('Scheduled','Attended','Not-Attended','Completed') DEFAULT 'Scheduled',
  `proof` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeTravelRecords`
--

CREATE TABLE `EmployeeTravelRecords` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `type` varchar(200) DEFAULT '',
  `purpose` varchar(200) NOT NULL,
  `travel_from` varchar(200) NOT NULL,
  `travel_to` varchar(200) NOT NULL,
  `travel_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `funding` decimal(10,3) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `attachment1` varchar(100) DEFAULT NULL,
  `attachment2` varchar(100) DEFAULT NULL,
  `attachment3` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EmployementType`
--

CREATE TABLE `EmployementType` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EmployementType`
--

INSERT INTO `EmployementType` (`id`, `name`) VALUES
(1, 'Full-time'),
(2, 'Part-time'),
(3, 'Contract'),
(4, 'Temporary'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `EmploymentStatus`
--

CREATE TABLE `EmploymentStatus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EmploymentStatus`
--

INSERT INTO `EmploymentStatus` (`id`, `name`, `description`) VALUES
(1, 'Full Time Contract', 'Full Time Contract'),
(2, 'Full Time Internship', 'Full Time Internship'),
(3, 'Full Time Permanent', 'Full Time Permanent'),
(4, 'Part Time Contract', 'Part Time Contract'),
(5, 'Part Time Internship', 'Part Time Internship'),
(6, 'Part Time Permanent', 'Part Time Permanent');

-- --------------------------------------------------------

--
-- Table structure for table `Ethnicity`
--

CREATE TABLE `Ethnicity` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ethnicity`
--

INSERT INTO `Ethnicity` (`id`, `name`) VALUES
(1, 'White American'),
(2, 'Black or African American'),
(3, 'Native American'),
(4, 'Alaska Native'),
(5, 'Asian American'),
(6, 'Native Hawaiian'),
(7, 'Pacific Islander');

-- --------------------------------------------------------

--
-- Table structure for table `ExpensesCategories`
--

CREATE TABLE `ExpensesCategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `pre_approve` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ExpensesCategories`
--

INSERT INTO `ExpensesCategories` (`id`, `name`, `created`, `updated`, `pre_approve`) VALUES
(1, 'Auto - Gas', NULL, NULL, 'Yes'),
(2, 'Auto - Insurance', NULL, NULL, 'Yes'),
(3, 'Auto - Maintenance', NULL, NULL, 'Yes'),
(4, 'Auto - Payment', NULL, NULL, 'Yes'),
(5, 'Transportation', NULL, NULL, 'Yes'),
(6, 'Bank Fees', NULL, NULL, 'Yes'),
(7, 'Dining Out', NULL, NULL, 'Yes'),
(8, 'Entertainment', NULL, NULL, 'Yes'),
(9, 'Hotel / Motel', NULL, NULL, 'Yes'),
(10, 'Insurance', NULL, NULL, 'Yes'),
(11, 'Interest Charges', NULL, NULL, 'Yes'),
(12, 'Loan Payment', NULL, NULL, 'Yes'),
(13, 'Medical', NULL, NULL, 'Yes'),
(14, 'Mileage', NULL, NULL, 'Yes'),
(15, 'Rent', NULL, NULL, 'Yes'),
(16, 'Rental Car', NULL, NULL, 'Yes'),
(17, 'Utility', NULL, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `ExpensesPaymentMethods`
--

CREATE TABLE `ExpensesPaymentMethods` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ExpensesPaymentMethods`
--

INSERT INTO `ExpensesPaymentMethods` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Cash', NULL, NULL),
(2, 'Check', NULL, NULL),
(3, 'Credit Card', NULL, NULL),
(4, 'Debit Card', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ExperienceLevel`
--

CREATE TABLE `ExperienceLevel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ExperienceLevel`
--

INSERT INTO `ExperienceLevel` (`id`, `name`) VALUES
(1, 'Not Applicable'),
(2, 'Internship'),
(3, 'Entry level'),
(4, 'Associate'),
(5, 'Mid-Senior level'),
(6, 'Director'),
(7, 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `FieldNameMappings`
--

CREATE TABLE `FieldNameMappings` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `textOrig` varchar(200) DEFAULT NULL,
  `textMapped` varchar(200) DEFAULT NULL,
  `display` enum('Form','Table and Form','Hidden') DEFAULT 'Form',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FieldNameMappings`
--

INSERT INTO `FieldNameMappings` (`id`, `type`, `name`, `textOrig`, `textMapped`, `display`, `created`, `updated`) VALUES
(1, 'Employee', 'employee_id', 'Employee Number', 'Employee Number', 'Table and Form', NULL, NULL),
(2, 'Employee', 'first_name', 'First Name', 'First Name', 'Table and Form', NULL, NULL),
(3, 'Employee', 'middle_name', 'Middle Name', 'Middle Name', 'Form', NULL, NULL),
(4, 'Employee', 'last_name', 'Last Name', 'Last Name', 'Table and Form', NULL, NULL),
(5, 'Employee', 'nationality', 'Nationality', 'Nationality', 'Form', NULL, NULL),
(6, 'Employee', 'ethnicity', 'Ethnicity', 'Ethnicity', 'Form', NULL, NULL),
(7, 'Employee', 'immigration_status', 'Immigration Status', 'Immigration Status', 'Form', NULL, NULL),
(8, 'Employee', 'birthday', 'Date of Birth', 'Date of Birth', 'Form', NULL, NULL),
(9, 'Employee', 'gender', 'Gender', 'Gender', 'Form', NULL, NULL),
(10, 'Employee', 'marital_status', 'Marital Status', 'Marital Status', 'Form', NULL, NULL),
(11, 'Employee', 'ssn_num', 'SSN/NRIC', 'SSN/NRIC', 'Form', NULL, NULL),
(12, 'Employee', 'nic_num', 'NIC', 'NIC', 'Form', NULL, NULL),
(13, 'Employee', 'other_id', 'Other ID', 'Other ID', 'Form', NULL, NULL),
(14, 'Employee', 'driving_license', 'Driving License No', 'Driving License No', 'Form', NULL, NULL),
(15, 'Employee', 'employment_status', 'Employment Status', 'Employment Status', 'Form', NULL, NULL),
(16, 'Employee', 'job_title', 'Job Title', 'Job Title', 'Form', NULL, NULL),
(17, 'Employee', 'pay_grade', 'Pay Grade', 'Pay Grade', 'Form', NULL, NULL),
(18, 'Employee', 'work_station_id', 'Work Station Id', 'Work Station Id', 'Form', NULL, NULL),
(19, 'Employee', 'address1', 'Address Line 1', 'Address Line 1', 'Form', NULL, NULL),
(20, 'Employee', 'address2', 'Address Line 2', 'Address Line 2', 'Form', NULL, NULL),
(21, 'Employee', 'city', 'City', 'City', 'Form', NULL, NULL),
(22, 'Employee', 'country', 'Country', 'Country', 'Form', NULL, NULL),
(23, 'Employee', 'province', 'Province', 'Province', 'Form', NULL, NULL),
(24, 'Employee', 'postal_code', 'Postal/Zip Code', 'Postal/Zip Code', 'Form', NULL, NULL),
(25, 'Employee', 'home_phone', 'Home Phone', 'Home Phone', 'Form', NULL, NULL),
(26, 'Employee', 'mobile_phone', 'Mobile Phone', 'Mobile Phone', 'Table and Form', NULL, NULL),
(27, 'Employee', 'work_phone', 'Work Phone', 'Work Phone', 'Form', NULL, NULL),
(28, 'Employee', 'work_email', 'Work Email', 'Work Email', 'Form', NULL, NULL),
(29, 'Employee', 'private_email', 'Private Email', 'Private Email', 'Form', NULL, NULL),
(30, 'Employee', 'joined_date', 'Joined Date', 'Joined Date', 'Form', NULL, NULL),
(31, 'Employee', 'confirmation_date', 'Confirmation Date', 'Confirmation Date', 'Form', NULL, NULL),
(32, 'Employee', 'termination_date', 'Termination Date', 'Termination Date', 'Form', NULL, NULL),
(33, 'Employee', 'supervisor', 'Supervisor', 'Supervisor', 'Table and Form', NULL, NULL),
(34, 'Employee', 'department', 'Department', 'Department', 'Table and Form', NULL, NULL),
(35, 'Employee', 'indirect_supervisors', 'Indirect Supervisors', 'Indirect Supervisors', 'Form', NULL, NULL),
(36, 'Employee', 'notes', 'Notes', 'Notes', 'Form', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `file_group` varchar(100) NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `size_text` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Forms`
--

CREATE TABLE `Forms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Holidays`
--

CREATE TABLE `Holidays` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateh` date DEFAULT NULL,
  `status` enum('Full Day','Half Day') DEFAULT 'Full Day',
  `country` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Holidays`
--

INSERT INTO `Holidays` (`id`, `name`, `dateh`, `status`, `country`) VALUES
(1, 'New Year\'s Day', '2015-01-01', 'Full Day', NULL),
(2, 'Christmas Day', '2015-12-25', 'Full Day', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ImmigrationDocuments`
--

CREATE TABLE `ImmigrationDocuments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `required` enum('Yes','No') DEFAULT 'Yes',
  `alert_on_missing` enum('Yes','No') DEFAULT 'Yes',
  `alert_before_expiry` enum('Yes','No') DEFAULT 'Yes',
  `alert_before_day_number` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ImmigrationStatus`
--

CREATE TABLE `ImmigrationStatus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ImmigrationStatus`
--

INSERT INTO `ImmigrationStatus` (`id`, `name`) VALUES
(1, 'Citizen'),
(2, 'Permanent Resident'),
(3, 'Work Permit Holder'),
(4, 'Dependant Pass Holder');

-- --------------------------------------------------------

--
-- Table structure for table `Industry`
--

CREATE TABLE `Industry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Interviews`
--

CREATE TABLE `Interviews` (
  `id` bigint(20) NOT NULL,
  `job` bigint(20) NOT NULL,
  `candidate` bigint(20) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `scheduled` datetime DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `mapId` bigint(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE `Job` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `shortDescription` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `country` bigint(20) DEFAULT NULL,
  `company` bigint(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `employementType` bigint(20) DEFAULT NULL,
  `industry` bigint(20) DEFAULT NULL,
  `experienceLevel` bigint(20) DEFAULT NULL,
  `jobFunction` bigint(20) DEFAULT NULL,
  `educationLevel` bigint(20) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `showSalary` enum('Yes','No') DEFAULT NULL,
  `salaryMin` bigint(20) DEFAULT NULL,
  `salaryMax` bigint(20) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `status` enum('Active','On hold','Closed') DEFAULT NULL,
  `closingDate` datetime DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `display` varchar(200) NOT NULL,
  `postedBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `JobFunction`
--

CREATE TABLE `JobFunction` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JobFunction`
--

INSERT INTO `JobFunction` (`id`, `name`) VALUES
(1, 'Accounting/Auditing'),
(2, 'Administrative'),
(3, 'Advertising'),
(4, 'Business Analyst'),
(5, 'Financial Analyst'),
(6, 'Data Analyst'),
(7, 'Art/Creative'),
(8, 'Business Development'),
(9, 'Consulting'),
(10, 'Customer Service'),
(11, 'Distribution'),
(12, 'Design'),
(13, 'Education'),
(14, 'Engineering'),
(15, 'Finance'),
(16, 'General Business'),
(17, 'Health Care Provider'),
(18, 'Human Resources'),
(19, 'Information Technology'),
(20, 'Legal'),
(21, 'Management'),
(22, 'Manufacturing'),
(23, 'Marketing'),
(24, 'Other'),
(25, 'Public Relations'),
(26, 'Purchasing'),
(27, 'Product Management'),
(28, 'Project Management'),
(29, 'Production'),
(30, 'Quality Assurance'),
(31, 'Research'),
(32, 'Sales'),
(33, 'Science'),
(34, 'Strategy/Planning'),
(35, 'Supply Chain'),
(36, 'Training'),
(37, 'Writing/Editing');

-- --------------------------------------------------------

--
-- Table structure for table `JobTitles`
--

CREATE TABLE `JobTitles` (
  `id` bigint(20) NOT NULL,
  `code` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `specification` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JobTitles`
--

INSERT INTO `JobTitles` (`id`, `code`, `name`, `description`, `specification`) VALUES
(1, 'SE', 'Software Engineer', 'The work of a software engineer typically includes designing and programming system-level software: operating systems, database systems, embedded systems and so on. They understand how both software a', 'Software Engineer'),
(2, 'ASE', 'Assistant Software Engineer', 'Assistant Software Engineer', 'Assistant Software Engineer'),
(3, 'PM', 'Project Manager', 'Project Manager', 'Project Manager'),
(4, 'QAE', 'QA Engineer', 'Quality Assurance Engineer ', 'Quality Assurance Engineer '),
(5, 'PRM', 'Product Manager', 'Product Manager', 'Product Manager'),
(6, 'AQAE', 'Assistant QA Engineer ', 'Assistant QA Engineer ', 'Assistant QA Engineer '),
(7, 'TPM', 'Technical Project Manager', 'Technical Project Manager', 'Technical Project Manager'),
(8, 'PRS', 'Pre-Sales Executive', 'Pre-Sales Executive', 'Pre-Sales Executive'),
(9, 'ME', 'Marketing Executive', 'Marketing Executive', 'Marketing Executive'),
(10, 'DH', 'Department Head', 'Department Head', 'Department Head'),
(11, 'CEO', 'Chief Executive Officer', 'Chief Executive Officer', 'Chief Executive Officer'),
(12, 'DBE', 'Database Engineer', 'Database Engineer', 'Database Engineer'),
(13, 'SA', 'Server Admin', 'Server Admin', 'Server Admin');

-- --------------------------------------------------------

--
-- Table structure for table `Languages`
--

CREATE TABLE `Languages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeaveGroupEmployees`
--

CREATE TABLE `LeaveGroupEmployees` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `leave_group` bigint(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeaveGroups`
--

CREATE TABLE `LeaveGroups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeavePeriods`
--

CREATE TABLE `LeavePeriods` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LeavePeriods`
--

INSERT INTO `LeavePeriods` (`id`, `name`, `date_start`, `date_end`, `status`) VALUES
(3, 'Year 2015', '2015-01-01', '2015-12-31', 'Active'),
(4, 'Year 2016', '2016-01-01', '2016-12-31', 'Active'),
(5, 'Year 2017', '2017-01-01', '2017-12-31', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `LeaveRules`
--

CREATE TABLE `LeaveRules` (
  `id` bigint(20) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `employment_status` bigint(20) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `supervisor_leave_assign` enum('Yes','No') DEFAULT 'Yes',
  `employee_can_apply` enum('Yes','No') DEFAULT 'Yes',
  `apply_beyond_current` enum('Yes','No') DEFAULT 'Yes',
  `leave_accrue` enum('No','Yes') DEFAULT 'No',
  `carried_forward` enum('No','Yes') DEFAULT 'No',
  `default_per_year` decimal(10,3) NOT NULL,
  `carried_forward_percentage` int(11) DEFAULT 0,
  `carried_forward_leave_availability` int(11) DEFAULT 365,
  `propotionate_on_joined_date` enum('No','Yes') DEFAULT 'No',
  `leave_group` bigint(20) DEFAULT NULL,
  `max_carried_forward_amount` int(11) DEFAULT 0,
  `exp_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeaveStartingBalance`
--

CREATE TABLE `LeaveStartingBalance` (
  `id` bigint(20) NOT NULL,
  `leave_type` bigint(20) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `leave_period` bigint(20) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeaveTypes`
--

CREATE TABLE `LeaveTypes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `supervisor_leave_assign` enum('Yes','No') DEFAULT 'Yes',
  `employee_can_apply` enum('Yes','No') DEFAULT 'Yes',
  `apply_beyond_current` enum('Yes','No') DEFAULT 'Yes',
  `leave_accrue` enum('No','Yes') DEFAULT 'No',
  `carried_forward` enum('No','Yes') DEFAULT 'No',
  `default_per_year` decimal(10,3) NOT NULL,
  `carried_forward_percentage` int(11) DEFAULT 0,
  `carried_forward_leave_availability` int(11) DEFAULT 365,
  `propotionate_on_joined_date` enum('No','Yes') DEFAULT 'No',
  `send_notification_emails` enum('Yes','No') DEFAULT 'Yes',
  `leave_group` bigint(20) DEFAULT NULL,
  `leave_color` varchar(10) DEFAULT NULL,
  `max_carried_forward_amount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LeaveTypes`
--

INSERT INTO `LeaveTypes` (`id`, `name`, `supervisor_leave_assign`, `employee_can_apply`, `apply_beyond_current`, `leave_accrue`, `carried_forward`, `default_per_year`, `carried_forward_percentage`, `carried_forward_leave_availability`, `propotionate_on_joined_date`, `send_notification_emails`, `leave_group`, `leave_color`, `max_carried_forward_amount`) VALUES
(1, 'Annual leave', 'No', 'Yes', 'No', 'No', 'No', '14.000', 0, 365, 'No', 'Yes', NULL, NULL, 0),
(2, 'Casual leave', 'Yes', 'Yes', 'No', 'No', 'No', '7.000', 0, 365, 'No', 'Yes', NULL, NULL, 0),
(3, 'Medical leave', 'Yes', 'Yes', 'Yes', 'No', 'No', '7.000', 0, 365, 'No', 'Yes', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Migrations`
--

CREATE TABLE `Migrations` (
  `id` bigint(20) NOT NULL,
  `file` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` enum('Pending','Up','Down','UpError','DownError') DEFAULT 'Pending',
  `last_error` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Migrations`
--

INSERT INTO `Migrations` (`id`, `file`, `version`, `created`, `updated`, `status`, `last_error`) VALUES
(1, 'v20161116_190001_unique_index_cron_name.php', 190001, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(2, 'v20170310_190401_add_timesheet_changes.php', 190401, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(3, 'v20170702_190500_add_attendance_image.php', 190500, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(4, 'v20170908_200000_payroll_group.php', 200000, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(5, 'v20170918_200000_add_attendance_image_out.php', 200000, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(6, 'v20171001_200201_update_attendance_out.php', 200201, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(7, 'v20171003_200301_add_deduction_group_payroll.php', 200301, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(8, 'v20171003_200302_payroll_meta_export.php', 200302, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(9, 'v20171126_200303_swift_mail.php', 200303, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(10, 'v20180305_210100_drop_si_hi_languages.php', 210100, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(11, 'v20180317_210200_leave_rule_experience.php', 210200, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(12, 'v20180325_210101_delete_leave_group_employee.php', 210101, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(13, 'v20180417_210501_update_menu_names.php', 210501, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(14, 'v20180507_230001_update_travel_record_type.php', 230001, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(15, 'v20180514_230002_add_conversation_tables.php', 230002, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(16, 'v20180527_230003_update_menu_names.php', 230003, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(17, 'v20180602_230004_add_gsuite_fields.php', 230004, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(18, 'v20180615_230402_remove_eh_manager.php', 230402, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(19, 'v20180622_240001_set_valid_until_null.php', 240001, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL),
(20, 'v20180623_240002_update_employee_report.php', 240002, '2018-12-01 15:36:12', '2018-12-01 15:36:12', 'Up', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Modules`
--

CREATE TABLE `Modules` (
  `id` bigint(20) NOT NULL,
  `menu` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `mod_group` varchar(30) NOT NULL,
  `mod_order` int(11) DEFAULT NULL,
  `status` enum('Enabled','Disabled') DEFAULT 'Enabled',
  `version` varchar(10) DEFAULT '',
  `update_path` varchar(500) DEFAULT '',
  `user_levels` varchar(500) NOT NULL,
  `user_roles` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Modules`
--

INSERT INTO `Modules` (`id`, `menu`, `name`, `label`, `icon`, `mod_group`, `mod_order`, `status`, `version`, `update_path`, `user_levels`, `user_roles`) VALUES
(1, 'Employees', 'attendance', 'Monitor Attendance', 'fa-clock-o', 'admin', 8, 'Enabled', '', 'admin>attendance', '[\"Admin\",\"Manager\"]', ''),
(2, 'Admin', 'company_structure', 'Company Structure', 'fa-building-o', 'admin', 2, 'Enabled', '', 'admin>company_structure', '[\"Admin\",\"Manager\"]', ''),
(3, 'Admin', 'dashboard', 'Dashboard', 'fa-desktop', 'admin', 1, 'Enabled', '', 'admin>dashboard', '[\"Admin\",\"Other\"]', ''),
(4, 'System', 'data', 'Data', 'fa-database', 'admin', 8, 'Enabled', '', 'admin>data', '[\"Admin\"]', ''),
(5, 'Employees', 'employees', 'Employees', 'fa-users', 'admin', 1, 'Enabled', '', 'admin>employees', '[\"Admin\",\"Manager\"]', ''),
(6, 'Admin', 'fieldnames', 'Employee Custom Fields', 'fa-sliders', 'admin', 83, 'Enabled', '', 'admin>fieldnames', '[\"Admin\"]', ''),
(7, 'Admin', 'jobs', 'Job Details Setup', 'fa-columns', 'admin', 3, 'Enabled', '', 'admin>jobs', '[\"Admin\"]', ''),
(8, 'Admin', 'loans', 'Company Loans', 'fa-shield', 'admin', 89, 'Enabled', '', 'admin>loans', '[\"Admin\"]', ''),
(9, 'System', 'metadata', 'Manage Metadata', 'fa-sort-alpha-asc', 'admin', 6, 'Enabled', '', 'admin>metadata', '[\"Admin\"]', ''),
(10, 'System', 'modules', 'Manage Modules', 'fa-folder-open', 'admin', 3, 'Enabled', '', 'admin>modules', '[\"Admin\"]', ''),
(11, 'Admin', 'overtime', 'Overtime Administration', 'fa-align-center', 'admin', 82, 'Enabled', '', 'admin>overtime', '[\"Admin\",\"Manager\"]', ''),
(12, 'Payroll', 'payroll', 'Payroll Reports', 'fa-cogs', 'admin', 6, 'Enabled', '', 'admin>payroll', '[\"Admin\"]', ''),
(13, 'System', 'permissions', 'Manage Permissions', 'fa-unlock', 'admin', 4, 'Enabled', '', 'admin>permissions', '[\"Admin\"]', ''),
(14, 'Admin', 'projects', 'Projects/Client Setup', 'fa-list-alt', 'admin', 51, 'Enabled', '', 'admin>projects', '[\"Admin\",\"Manager\"]', ''),
(15, 'Admin', 'qualifications', 'Qualifications Setup', 'fa-check-square-o', 'admin', 4, 'Enabled', '', 'admin>qualifications', '[\"Admin\",\"Manager\"]', ''),
(16, 'Admin Reports', 'reports', 'Reports', 'fa-file-o', 'admin', 1, 'Enabled', '', 'admin>reports', '[\"Admin\",\"Manager\"]', ''),
(17, 'Payroll', 'salary', 'Salary', 'fa-money', 'admin', 1, 'Enabled', '', 'admin>salary', '[\"Admin\"]', ''),
(18, 'System', 'settings', 'Settings', 'fa-cogs', 'admin', 1, 'Enabled', '', 'admin>settings', '[\"Admin\"]', ''),
(19, 'Employees', 'travel', 'Travel Requests', 'fa-plane', 'admin', 6, 'Enabled', '', 'admin>travel', '[\"Admin\",\"Manager\"]', ''),
(20, 'System', 'users', 'Users', 'fa-user', 'admin', 2, 'Enabled', '', 'admin>users', '[\"Admin\"]', ''),
(21, 'Time Management', 'attendance', 'Attendance', 'fa-clock-o', 'user', NULL, 'Enabled', '', 'modules>attendance', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(22, 'Personal Information', 'dashboard', 'Dashboard', 'fa-desktop', 'user', NULL, 'Enabled', '', 'modules>dashboard', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(23, 'Personal Information', 'dependents', 'Dependents', 'fa-sliders', 'user', NULL, 'Enabled', '', 'modules>dependents', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(24, 'Personal Information', 'emergency_contact', 'Emergency Contacts', 'fa-phone-square', 'user', NULL, 'Enabled', '', 'modules>emergency_contact', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(25, 'Personal Information', 'employees', 'Basic Information', 'fa-user', 'user', NULL, 'Enabled', '', 'modules>employees', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(26, 'Finance', 'loans', 'Loans', 'fa-shield', 'user', NULL, 'Enabled', '', 'modules>loans', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(27, 'Time Management', 'overtime', 'Overtime Requests', 'fa-align-center', 'user', NULL, 'Enabled', '', 'modules>overtime', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(28, 'Time Management', 'projects', 'Projects', 'fa-pencil-square', 'user', NULL, 'Enabled', '', 'modules>projects', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(29, 'Personal Information', 'qualifications', 'Qualifications', 'fa-graduation-cap', 'user', NULL, 'Enabled', '', 'modules>qualifications', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(30, 'User Reports', 'reports', 'Reports', 'fa-file-o', 'user', NULL, 'Enabled', '', 'modules>reports', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(31, 'Finance', 'salary', 'Salary', 'fa-calculator', 'user', NULL, 'Enabled', '', 'modules>salary', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(32, 'Time Management', 'time_sheets', 'Time Sheets', 'fa-check-circle-o', 'user', NULL, 'Enabled', '', 'modules>time_sheets', '[\"Admin\",\"Manager\",\"Employee\"]', ''),
(33, 'Travel Management', 'travel', 'Travel', 'fa-plane', 'user', NULL, 'Enabled', '', 'modules>travel', '[\"Admin\",\"Manager\",\"Employee\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `Nationality`
--

CREATE TABLE `Nationality` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Nationality`
--

INSERT INTO `Nationality` (`id`, `name`) VALUES
(1, 'Afghan'),
(2, 'Albanian'),
(3, 'Algerian'),
(4, 'American'),
(5, 'Andorran'),
(6, 'Angolan'),
(7, 'Antiguans'),
(8, 'Argentinean'),
(9, 'Armenian'),
(10, 'Australian'),
(11, 'Austrian'),
(12, 'Azerbaijani'),
(13, 'Bahamian'),
(14, 'Bahraini'),
(15, 'Bangladeshi'),
(16, 'Barbadian'),
(17, 'Barbudans'),
(18, 'Batswana'),
(19, 'Belarusian'),
(20, 'Belgian'),
(21, 'Belizean'),
(22, 'Beninese'),
(23, 'Bhutanese'),
(24, 'Bolivian'),
(25, 'Bosnian'),
(26, 'Brazilian'),
(27, 'British'),
(28, 'Bruneian'),
(29, 'Bulgarian'),
(30, 'Burkinabe'),
(31, 'Burmese'),
(32, 'Burundian'),
(33, 'Cambodian'),
(34, 'Cameroonian'),
(35, 'Canadian'),
(36, 'Cape Verdean'),
(37, 'Central African'),
(38, 'Chadian'),
(39, 'Chilean'),
(40, 'Chinese'),
(41, 'Colombian'),
(42, 'Comoran'),
(43, 'Congolese'),
(44, 'Costa Rican'),
(45, 'Croatian'),
(46, 'Cuban'),
(47, 'Cypriot'),
(48, 'Czech'),
(49, 'Danish'),
(50, 'Djibouti'),
(51, 'Dominican'),
(52, 'Dutch'),
(53, 'East Timorese'),
(54, 'Ecuadorean'),
(55, 'Egyptian'),
(56, 'Emirian'),
(57, 'Equatorial Guinean'),
(58, 'Eritrean'),
(59, 'Estonian'),
(60, 'Ethiopian'),
(61, 'Fijian'),
(62, 'Filipino'),
(63, 'Finnish'),
(64, 'French'),
(65, 'Gabonese'),
(66, 'Gambian'),
(67, 'Georgian'),
(68, 'German'),
(69, 'Ghanaian'),
(70, 'Greek'),
(71, 'Grenadian'),
(72, 'Guatemalan'),
(73, 'Guinea-Bissauan'),
(74, 'Guinean'),
(75, 'Guyanese'),
(76, 'Haitian'),
(77, 'Herzegovinian'),
(78, 'Honduran'),
(79, 'Hungarian'),
(80, 'I-Kiribati'),
(81, 'Icelander'),
(82, 'Indian'),
(83, 'Indonesian'),
(84, 'Iranian'),
(85, 'Iraqi'),
(86, 'Irish'),
(87, 'Israeli'),
(88, 'Italian'),
(89, 'Ivorian'),
(90, 'Jamaican'),
(91, 'Japanese'),
(92, 'Jordanian'),
(93, 'Kazakhstani'),
(94, 'Kenyan'),
(95, 'Kittian and Nevisian'),
(96, 'Kuwaiti'),
(97, 'Kyrgyz'),
(98, 'Laotian'),
(99, 'Latvian'),
(100, 'Lebanese'),
(101, 'Liberian'),
(102, 'Libyan'),
(103, 'Liechtensteiner'),
(104, 'Lithuanian'),
(105, 'Luxembourger'),
(106, 'Macedonian'),
(107, 'Malagasy'),
(108, 'Malawian'),
(109, 'Malaysian'),
(110, 'Maldivan'),
(111, 'Malian'),
(112, 'Maltese'),
(113, 'Marshallese'),
(114, 'Mauritanian'),
(115, 'Mauritian'),
(116, 'Mexican'),
(117, 'Micronesian'),
(118, 'Moldovan'),
(119, 'Monacan'),
(120, 'Mongolian'),
(121, 'Moroccan'),
(122, 'Mosotho'),
(123, 'Motswana'),
(124, 'Mozambican'),
(125, 'Namibian'),
(126, 'Nauruan'),
(127, 'Nepalese'),
(128, 'New Zealander'),
(129, 'Nicaraguan'),
(130, 'Nigerian'),
(131, 'Nigerien'),
(132, 'North Korean'),
(133, 'Northern Irish'),
(134, 'Norwegian'),
(135, 'Omani'),
(136, 'Pakistani'),
(137, 'Palauan'),
(138, 'Panamanian'),
(139, 'Papua New Guinean'),
(140, 'Paraguayan'),
(141, 'Peruvian'),
(142, 'Polish'),
(143, 'Portuguese'),
(144, 'Qatari'),
(145, 'Romanian'),
(146, 'Russian'),
(147, 'Rwandan'),
(148, 'Saint Lucian'),
(149, 'Salvadoran'),
(150, 'Samoan'),
(151, 'San Marinese'),
(152, 'Sao Tomean'),
(153, 'Saudi'),
(154, 'Scottish'),
(155, 'Senegalese'),
(156, 'Serbian'),
(157, 'Seychellois'),
(158, 'Sierra Leonean'),
(159, 'Singaporean'),
(160, 'Slovakian'),
(161, 'Slovenian'),
(162, 'Solomon Islander'),
(163, 'Somali'),
(164, 'South African'),
(165, 'South Korean'),
(166, 'Spanish'),
(167, 'Sri Lankan'),
(168, 'Sudanese'),
(169, 'Surinamer'),
(170, 'Swazi'),
(171, 'Swedish'),
(172, 'Swiss'),
(173, 'Syrian'),
(174, 'Taiwanese'),
(175, 'Tajik'),
(176, 'Tanzanian'),
(177, 'Thai'),
(178, 'Togolese'),
(179, 'Tongan'),
(180, 'Trinidadian or Tobagonian'),
(181, 'Tunisian'),
(182, 'Turkish'),
(183, 'Tuvaluan'),
(184, 'Ugandan'),
(185, 'Ukrainian'),
(186, 'Uruguayan'),
(187, 'Uzbekistani'),
(188, 'Venezuelan'),
(189, 'Vietnamese'),
(190, 'Welsh'),
(191, 'Yemenite'),
(192, 'Zambian'),
(193, 'Zimbabwean');

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` bigint(20) NOT NULL,
  `time` datetime DEFAULT NULL,
  `fromUser` bigint(20) DEFAULT NULL,
  `fromEmployee` bigint(20) DEFAULT NULL,
  `toUser` bigint(20) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `action` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` enum('Unread','Read') DEFAULT 'Unread',
  `employee` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `OvertimeCategories`
--

CREATE TABLE `OvertimeCategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayFrequency`
--

CREATE TABLE `PayFrequency` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PayFrequency`
--

INSERT INTO `PayFrequency` (`id`, `name`) VALUES
(1, 'Bi Weekly'),
(2, 'Weekly'),
(3, 'Semi Monthly'),
(4, 'Monthly'),
(5, 'Yearly');

-- --------------------------------------------------------

--
-- Table structure for table `PayGrades`
--

CREATE TABLE `PayGrades` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `min_salary` decimal(12,2) DEFAULT 0.00,
  `max_salary` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PayGrades`
--

INSERT INTO `PayGrades` (`id`, `name`, `currency`, `min_salary`, `max_salary`) VALUES
(1, 'Manager', 'SGD', '5000.00', '15000.00'),
(2, 'Executive', 'SGD', '3500.00', '7000.00'),
(3, 'Assistant ', 'SGD', '2000.00', '4000.00'),
(4, 'Administrator', 'SGD', '2000.00', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `Payroll`
--

CREATE TABLE `Payroll` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pay_period` bigint(20) NOT NULL,
  `department` bigint(20) NOT NULL,
  `column_template` bigint(20) DEFAULT NULL,
  `columns` varchar(500) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('Draft','Completed','Processing') DEFAULT 'Draft',
  `payslipTemplate` bigint(20) DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayrollColumns`
--

CREATE TABLE `PayrollColumns` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `calculation_hook` varchar(200) DEFAULT NULL,
  `salary_components` varchar(500) DEFAULT NULL,
  `deductions` varchar(500) DEFAULT NULL,
  `add_columns` varchar(500) DEFAULT NULL,
  `sub_columns` varchar(500) DEFAULT NULL,
  `colorder` int(11) DEFAULT NULL,
  `editable` enum('Yes','No') DEFAULT 'Yes',
  `enabled` enum('Yes','No') DEFAULT 'Yes',
  `default_value` varchar(25) DEFAULT NULL,
  `calculation_columns` varchar(500) DEFAULT NULL,
  `calculation_function` varchar(100) DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayrollColumnTemplates`
--

CREATE TABLE `PayrollColumnTemplates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `columns` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayrollData`
--

CREATE TABLE `PayrollData` (
  `id` int(11) NOT NULL,
  `payroll` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `payroll_item` int(11) NOT NULL,
  `amount` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayrollEmployees`
--

CREATE TABLE `PayrollEmployees` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) NOT NULL,
  `pay_frequency` int(11) DEFAULT NULL,
  `currency` bigint(20) DEFAULT NULL,
  `deduction_exemptions` varchar(250) DEFAULT NULL,
  `deduction_allowed` varchar(250) DEFAULT NULL,
  `deduction_group` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PayslipTemplates`
--

CREATE TABLE `PayslipTemplates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `status` enum('Show','Hide') DEFAULT 'Show',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Permissions`
--

CREATE TABLE `Permissions` (
  `id` bigint(20) NOT NULL,
  `user_level` enum('Admin','Employee','Manager') DEFAULT NULL,
  `module_id` bigint(20) NOT NULL,
  `permission` varchar(200) DEFAULT NULL,
  `meta` varchar(500) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Permissions`
--

INSERT INTO `Permissions` (`id`, `user_level`, `module_id`, `permission`, `meta`, `value`) VALUES
(1, 'Manager', 2, 'Add Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(2, 'Manager', 2, 'Edit Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(3, 'Manager', 2, 'Delete Company Structure', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(4, 'Manager', 14, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(5, 'Manager', 14, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(6, 'Manager', 14, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(7, 'Manager', 14, 'Add Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(8, 'Manager', 14, 'Edit Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(9, 'Manager', 14, 'Delete Clients', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(10, 'Manager', 15, 'Add Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(11, 'Manager', 15, 'Edit Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(12, 'Manager', 15, 'Delete Skills', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(13, 'Manager', 15, 'Add Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(14, 'Manager', 15, 'Edit Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(15, 'Manager', 15, 'Delete Education', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(16, 'Manager', 15, 'Add Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(17, 'Manager', 15, 'Edit Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(18, 'Manager', 15, 'Delete Certifications', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(19, 'Manager', 15, 'Add Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(20, 'Manager', 15, 'Edit Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(21, 'Manager', 15, 'Delete Languages', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(22, 'Manager', 23, 'Add Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(23, 'Manager', 23, 'Edit Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(24, 'Manager', 23, 'Delete Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(25, 'Employee', 23, 'Add Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(26, 'Employee', 23, 'Edit Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(27, 'Employee', 23, 'Delete Dependents', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(28, 'Manager', 24, 'Add Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(29, 'Manager', 24, 'Edit Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(30, 'Manager', 24, 'Delete Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(31, 'Employee', 24, 'Add Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(32, 'Employee', 24, 'Edit Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(33, 'Employee', 24, 'Delete Emergency Contacts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(34, 'Manager', 25, 'Edit Employee Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(35, 'Manager', 25, 'Edit EPF/CPF Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(36, 'Manager', 25, 'Edit Employment Status', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(37, 'Manager', 25, 'Edit Job Title', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(38, 'Manager', 25, 'Edit Pay Grade', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(39, 'Manager', 25, 'Edit Joined Date', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(40, 'Manager', 25, 'Edit Department', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(41, 'Manager', 25, 'Edit Work Email', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(42, 'Manager', 25, 'Edit Country', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(43, 'Manager', 25, 'Upload/Delete Profile Image', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(44, 'Manager', 25, 'Edit Employee Details', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(45, 'Employee', 25, 'Edit Employee Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(46, 'Employee', 25, 'Edit EPF/CPF Number', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(47, 'Employee', 25, 'Edit Employment Status', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(48, 'Employee', 25, 'Edit Job Title', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(49, 'Employee', 25, 'Edit Pay Grade', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(50, 'Employee', 25, 'Edit Joined Date', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(51, 'Employee', 25, 'Edit Department', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(52, 'Employee', 25, 'Edit Work Email', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(53, 'Employee', 25, 'Edit Country', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(54, 'Employee', 25, 'Upload/Delete Profile Image', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(55, 'Employee', 25, 'Edit Employee Details', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(56, 'Manager', 28, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(57, 'Manager', 28, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(58, 'Manager', 28, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(59, 'Employee', 28, 'Add Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(60, 'Employee', 28, 'Edit Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(61, 'Employee', 28, 'Delete Projects', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(62, 'Manager', 31, 'Add Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(63, 'Manager', 31, 'Edit Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(64, 'Manager', 31, 'Delete Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(65, 'Employee', 31, 'Add Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(66, 'Employee', 31, 'Edit Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(67, 'Employee', 31, 'Delete Salary', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'No'),
(68, 'Manager', 33, 'Add Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(69, 'Manager', 33, 'Edit Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(70, 'Manager', 33, 'Delete Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(71, 'Employee', 33, 'Add Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(72, 'Employee', 33, 'Edit Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes'),
(73, 'Employee', 33, 'Delete Travel Request', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Yes\",\"Yes\"],[\"No\",\"No\"]]}]', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `client` bigint(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` enum('Active','On Hold','Completed','Dropped') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`id`, `name`, `client`, `details`, `created`, `status`) VALUES
(1, 'Project 1', 3, NULL, '2013-01-03 05:53:38', 'Active'),
(2, 'Project 2', 3, NULL, '2013-01-03 05:54:22', 'Active'),
(3, 'Project 3', 1, NULL, '2013-01-03 05:55:02', 'Active'),
(4, 'Project 4', 2, NULL, '2013-01-03 05:56:16', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE `Province` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT 'US'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Province`
--

INSERT INTO `Province` (`id`, `name`, `code`, `country`) VALUES
(1, 'Alaska', 'AK', 'US'),
(2, 'Alabama', 'AL', 'US'),
(3, 'American Samoa', 'AS', 'US'),
(4, 'Arizona', 'AZ', 'US'),
(5, 'Arkansas', 'AR', 'US'),
(6, 'California', 'CA', 'US'),
(7, 'Colorado', 'CO', 'US'),
(8, 'Connecticut', 'CT', 'US'),
(9, 'Delaware', 'DE', 'US'),
(10, 'District of Columbia', 'DC', 'US'),
(11, 'Federated States of Micronesia', 'FM', 'US'),
(12, 'Florida', 'FL', 'US'),
(13, 'Georgia', 'GA', 'US'),
(14, 'Guam', 'GU', 'US'),
(15, 'Hawaii', 'HI', 'US'),
(16, 'Idaho', 'ID', 'US'),
(17, 'Illinois', 'IL', 'US'),
(18, 'Indiana', 'IN', 'US'),
(19, 'Iowa', 'IA', 'US'),
(20, 'Kansas', 'KS', 'US'),
(21, 'Kentucky', 'KY', 'US'),
(22, 'Louisiana', 'LA', 'US'),
(23, 'Maine', 'ME', 'US'),
(24, 'Marshall Islands', 'MH', 'US'),
(25, 'Maryland', 'MD', 'US'),
(26, 'Massachusetts', 'MA', 'US'),
(27, 'Michigan', 'MI', 'US'),
(28, 'Minnesota', 'MN', 'US'),
(29, 'Mississippi', 'MS', 'US'),
(30, 'Missouri', 'MO', 'US'),
(31, 'Montana', 'MT', 'US'),
(32, 'Nebraska', 'NE', 'US'),
(33, 'Nevada', 'NV', 'US'),
(34, 'New Hampshire', 'NH', 'US'),
(35, 'New Jersey', 'NJ', 'US'),
(36, 'New Mexico', 'NM', 'US'),
(37, 'New York', 'NY', 'US'),
(38, 'North Carolina', 'NC', 'US'),
(39, 'North Dakota', 'ND', 'US'),
(40, 'Northern Mariana Islands', 'MP', 'US'),
(41, 'Ohio', 'OH', 'US'),
(42, 'Oklahoma', 'OK', 'US'),
(43, 'Oregon', 'OR', 'US'),
(44, 'Palau', 'PW', 'US'),
(45, 'Pennsylvania', 'PA', 'US'),
(46, 'Puerto Rico', 'PR', 'US'),
(47, 'Rhode Island', 'RI', 'US'),
(48, 'South Carolina', 'SC', 'US'),
(49, 'South Dakota', 'SD', 'US'),
(50, 'Tennessee', 'TN', 'US'),
(51, 'Texas', 'TX', 'US'),
(52, 'Utah', 'UT', 'US'),
(53, 'Vermont', 'VT', 'US'),
(54, 'Virgin Islands', 'VI', 'US'),
(55, 'Virginia', 'VA', 'US'),
(56, 'Washington', 'WA', 'US'),
(57, 'West Virginia', 'WV', 'US'),
(58, 'Wisconsin', 'WI', 'US'),
(59, 'Wyoming', 'WY', 'US'),
(60, 'Armed Forces Africa', 'AE', 'US'),
(61, 'Armed Forces Americas (except Canada)', 'AA', 'US'),
(62, 'Armed Forces Canada', 'AE', 'US'),
(63, 'Armed Forces Europe', 'AE', 'US'),
(64, 'Armed Forces Middle East', 'AE', 'US'),
(65, 'Armed Forces Pacific', 'AP', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `ReportFiles`
--

CREATE TABLE `ReportFiles` (
  `id` bigint(20) NOT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `query` text DEFAULT NULL,
  `paramOrder` varchar(500) NOT NULL,
  `type` enum('Query','Class') DEFAULT 'Query',
  `report_group` varchar(500) DEFAULT NULL,
  `output` varchar(15) NOT NULL DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Reports`
--

INSERT INTO `Reports` (`id`, `name`, `details`, `parameters`, `query`, `paramOrder`, `type`, `report_group`, `output`) VALUES
(1, 'Employee Details Report', 'This report list all employee details and you can filter employees by department, employment status or job title', '[[\"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],[\"employment_status\", {\"label\":\"Employment Status\",\"type\":\"select2\",\"remote-source\":[\"EmploymentStatus\",\"id\",\"name\"],\"allow-null\":true}],[\"job_title\", {\"label\":\"Job Title\",\"type\":\"select2\",\"remote-source\":[\"JobTitle\",\"id\",\"name\"],\"allow-null\":true}]]', 'EmployeeDetailsReport', '[\"department\",\"employment_status\",\"job_title\"]', 'Class', 'Employee Information', 'CSV'),
(2, 'Employee Attendance Report', 'This report list all employee attendance entries by employee and date range', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeAttendanceReport', '[\"employee\",\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(3, 'Employee Time Tracking Report', 'This report list employee working hours and attendance details for each day for a given period ', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimeTrackReport', '[\"employee\",\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(4, 'Employee Time Entry Report', 'View employee time entries by date range and project', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"Not Selected\",\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"project\", {\"label\":\"Or Project\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"All Projects\",\"remote-source\":[\"Project\",\"id\",\"name\",\"getAllProjects\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimesheetReport', '[\"employee\",\"client\",\"project\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(5, 'Active Employee Report', 'This report list employees who are currently active based on joined date and termination date ', '[\r\n[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}]\r\n]', 'ActiveEmployeeReport', '[\"department\"]', 'Class', 'Employee Information', 'CSV'),
(6, 'New Hires Employee Report', 'This report list employees who are joined between given two dates ', '[[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'NewHiresEmployeeReport', '[\"department\",\"date_start\",\"date_end\"]', 'Class', 'Employee Information', 'CSV'),
(7, 'Terminated Employee Report', 'This report list employees who are terminated between given two dates ', '[[ \"department\", {\"label\":\"Department\",\"type\":\"select2\",\"remote-source\":[\"CompanyStructure\",\"id\",\"title\"],\"allow-null\":true}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'TerminatedEmployeeReport', '[\"department\",\"date_start\",\"date_end\"]', 'Class', 'Employee Information', 'CSV'),
(8, 'Travel Request Report', 'This report list employees travel requests for a specified period', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'TravelRequestReport', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Travel and Expense Management', 'CSV'),
(9, 'Employee Time Sheet Report', 'This report list all employee time sheets by employee and date range', '[\r\n[ \"employee\", {\"label\":\"Employee\",\"type\":\"select2multi\",\"allow-null\":true,\"null-label\":\"All Employees\",\"remote-source\":[\"Employee\",\"id\",\"first_name+last_name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"allow-null\":true,\"null-label\":\"All Status\",\"type\":\"select\",\"source\":[[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"]]}]\r\n]', 'EmployeeTimeSheetData', '[\"employee\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(10, 'Payroll Meta Data Export', 'Export payroll module configurations', '[\r\n[ \"deduction_group\", {\"label\":\"Calculation Group\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"DeductionGroup\",\"id\",\"name\"]}],\r\n[ \"payroll\", {\"label\":\"Sample Payroll\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"Payroll\",\"id\",\"name\"]}]]', 'PayrollDataExport', '[\"deduction_group\",\"payroll\"]', 'Class', 'Payroll', 'JSON');

-- --------------------------------------------------------

--
-- Table structure for table `RestAccessTokens`
--

CREATE TABLE `RestAccessTokens` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RestAccessTokens`
--

INSERT INTO `RestAccessTokens` (`id`, `userId`, `hash`, `token`, `created`, `updated`) VALUES
(1, 1, 'bb8d457f24d69763f00c5a622af10e6b', 'rgPyEhRdAlyG3iSWSCBK+cJy3gQbmAiHXJvywJiDkMwFmL5S0hPhj50sIWBkRXBP14OXF5K6Ojm/3wMizEmVAbm7vqndXg==', '2018-12-01 15:36:12', '2018-12-01 15:36:12'),
(2, 2, '1e69ae207e39e2efe6723d3b459544fb', 'fwH6v42sA1y4veM0b2v1d5D5lky0TUNVTbKc8FWMdHsFO99vRrqvcXbQGXCkmhLaoQEqWbhs0NyrzN/R7tX+YBSKqoiyWg==', '2018-12-02 15:27:33', '2018-12-02 15:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `SalaryComponent`
--

CREATE TABLE `SalaryComponent` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `componentType` bigint(20) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SalaryComponent`
--

INSERT INTO `SalaryComponent` (`id`, `name`, `componentType`, `details`) VALUES
(1, 'Basic Salary', 1, NULL),
(2, 'Fixed Allowance', 1, NULL),
(3, 'Car Allowance', 2, NULL),
(4, 'Telephone Allowance', 2, NULL),
(5, 'Regular Hourly Pay', 3, NULL),
(6, 'Overtime Hourly Pay', 3, NULL),
(7, 'Double Time Hourly Pay', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SalaryComponentType`
--

CREATE TABLE `SalaryComponentType` (
  `id` bigint(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SalaryComponentType`
--

INSERT INTO `SalaryComponentType` (`id`, `code`, `name`) VALUES
(1, 'B001', 'Basic'),
(2, 'B002', 'Allowance'),
(3, 'B003', 'Hourly');

-- --------------------------------------------------------

--
-- Table structure for table `Settings`
--

CREATE TABLE `Settings` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Settings`
--

INSERT INTO `Settings` (`id`, `name`, `value`, `description`, `meta`) VALUES
(1, 'Company: Logo', '', '', '[ \"value\", {\"label\":\"Logo\",\"type\":\"fileupload\",\"validation\":\"none\"}]'),
(2, 'Company: Name', 'Sample Company Pvt Ltd', 'Update your company name - For updating company logo copy a file named logo.png to /app/data/ folder', ''),
(3, 'Company: Description', 'This is a company using icehrm.com', '', ''),
(4, 'Email: Enable', '1', '0 will disable all outgoing emails from modules. Value 1 will enable outgoing emails', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(5, 'Email: Mode', 'SMTP', 'Update email sender', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"SMTP\",\"SMTP\"],[\"Swift SMTP\",\"Swift SMTP\"],[\"PHP Mailer\",\"PHP Mailer\"],[\"SES\",\"Amazon SES\"]]}]'),
(6, 'Email: SMTP Host', 'localhost', 'SMTP host IP', ''),
(7, 'Email: SMTP Authentication Required', '0', 'Is authentication required by this SMTP server', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(8, 'Email: SMTP User', 'none', 'SMTP user', ''),
(9, 'Email: SMTP Password', 'none', 'SMTP password', ''),
(10, 'Email: SMTP Port', 'none', '25', ''),
(11, 'Email: Amazon Access Key ID', '', 'If email mode is Amazon SNS please provide SNS Key', ''),
(12, 'Email: Amazon Secret Access Key', '', 'If email mode is Amazon SNS please provide SNS Secret', ''),
(13, 'Email: Email From', 'icehrm@mydomain.com', '', ''),
(14, 'System: Do not pass JSON in request', '0', 'Select Yes if you are having trouble loading data for some tables', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(15, 'System: Reset Modules and Permissions', '0', 'Select this to reset module and permission information in Database (If you have done any changes to meta files)', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(16, 'System: Reset Module Names', '0', 'Select this to reset module names in Database', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(17, 'System: Add New Permissions', '0', 'Select this to add new permission changes done to meta.json file of any module', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(18, 'System: Debug Mode', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(19, 'Projects: Make All Projects Available to Employees', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(20, 'Leave: Share Calendar to Whole Company', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(21, 'Leave: CC Emails', '', 'Every email sent though leave module will be CC to these comma seperated list of emails addresses', ''),
(22, 'Leave: BCC Emails', '', 'Every email sent though leave module will be BCC to these comma seperated list of emails addresses', ''),
(23, 'Attendance: Time-sheet Cross Check', '0', 'Only allow users to add an entry to a timesheet only if they have marked atteandance for the selected period', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(24, 'Api: REST Api Enabled', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"No\"],[\"1\",\"Yes\"]]}]'),
(25, 'Api: REST Api Token', 'Click on edit icon', '', '[\"value\", {\"label\":\"Value\",\"type\":\"placeholder\"}]'),
(26, 'LDAP: Enabled', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"No\"],[\"1\",\"Yes\"]]}]'),
(27, 'LDAP: Server', '', 'LDAP Server IP or DNS', ''),
(28, 'LDAP: Port', '389', 'LDAP Server Port', ''),
(29, 'LDAP: Root DN', '', 'e.g: dc=mycompany,dc=net', ''),
(30, 'LDAP: Manager DN', '', 'e.g: cn=admin,dc=mycompany,dc=net', ''),
(31, 'LDAP: Manager Password', '', 'Password of the manager user', ''),
(32, 'LDAP: Version 3', '1', 'Are you using LDAP v3', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(33, 'LDAP: User Filter', '', 'e.g: uid={}, we will replace {} with actual username provided by the user at the time of login', ''),
(34, 'Recruitment: Show Quick Apply', '1', 'Show quick apply button when candidates are applying for jobs. Quick apply allow candidates to apply with minimum amount of information', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(35, 'Recruitment: Show Apply', '1', 'Show apply button when candidates are applying for jobs', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(36, 'Notifications: Send Document Expiry Emails', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(37, 'Notifications: Copy Document Expiry Emails to Manager', '1', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(38, 'Expense: Pre-Approve Expenses', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(39, 'Travel: Pre-Approve Travel Request', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(40, 'Attendance: Use Department Time Zone', '0', '', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(41, 'Travel: Allow Indirect Admins to Approve', '0', 'Allow indirect admins to approve travel requests', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(42, 'Attendance: Overtime Calculation Class', 'BasicOvertimeCalculator', 'Set the method used to calculate overtime', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"BasicOvertimeCalculator\",\"BasicOvertimeCalculator\"],[\"CaliforniaOvertimeCalculator\",\"CaliforniaOvertimeCalculator\"]]}]'),
(43, 'Attendance: Overtime Calculation Period', 'Daily', 'Set the period for overtime calculation. (Affects attendance sheets)', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"Daily\",\"Daily\"],[\"Weekly\",\"Weekly\"]]}]'),
(44, 'Attendance: Overtime Start Hour', '8', 'Overtime calculation will start after an employee work this number of hours per day, 0 to indicate no overtime', ''),
(45, 'Attendance: Double time Start Hour', '12', 'Double time calculation will start after an employee work this number of hours per day, 0 to indicate no double time', ''),
(46, 'Attendance: Work Week Start Day', '0', 'Set the starting day of the work week', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"0\",\"Sunday\"],[\"1\",\"Monday\"],[\"2\",\"Tuesday\"],[\"3\",\"Wednesday\"],[\"4\",\"Thursday\"],[\"5\",\"Friday\"],[\"6\",\"Saturday\"]]}]'),
(47, 'System: Allowed Countries', '', 'Only these countries will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"Country\",\"id\",\"name\"]}]'),
(48, 'System: Allowed Currencies', '', 'Only these currencies will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"CurrencyType\",\"id\",\"code+name\"]}]'),
(49, 'System: Allowed Nationality', '', 'Only these nationalities will be allowed in select boxes', '[\"value\", {\"label\":\"Value\",\"type\":\"select2multi\",\"remote-source\":[\"Nationality\",\"id\",\"name\"]}]'),
(50, 'System: Language', 'en', 'Current Language', '[\"value\", {\"label\":\"Value\",\"type\":\"select2\",\"allow-null\":false,\"remote-source\":[\"SupportedLanguage\",\"name\",\"description\"]}]'),
(51, 'System: Time-sheet Entry Start and End time Required', '1', 'Select 0 if you only need to store the time spend in time sheets', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(52, 'Attendance: Photo Attendance', '0', 'Require submitting a photo using web cam when marking attendance', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(53, 'System: G Suite Enabled', '0', 'If you want to allow users to login via G Suite accounts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(54, 'System: G Suite Disable Password Login', '0', 'If you want to allow users to login only via G Suite accounts', '[\"value\", {\"label\":\"Value\",\"type\":\"select\",\"source\":[[\"1\",\"Yes\"],[\"0\",\"No\"]]}]'),
(55, 'Instance : ID', 'e3a1cbe6dcf135de84e24aff3cff9bb6', NULL, NULL),
(56, 'Instance: Key', 'WQIqbEBdAlz3cepXCw8TQBx/PvxtpnvIhsikkW23lfN/2JuwO1OkrAcnhhFZ6j4=', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Skills`
--

CREATE TABLE `Skills` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Skills`
--

INSERT INTO `Skills` (`id`, `name`, `description`) VALUES
(1, 'Programming and Application Development', 'Programming and Application Development'),
(2, 'Project Management', 'Project Management'),
(3, 'Help Desk/Technical Support', 'Help Desk/Technical Support'),
(4, 'Networking', 'Networking'),
(5, 'Databases', 'Databases'),
(6, 'Business Intelligence', 'Business Intelligence'),
(7, 'Cloud Computing', 'Cloud Computing'),
(8, 'Information Security', 'Information Security'),
(9, 'HTML Skills', 'HTML Skills'),
(10, 'Graphic Designing', 'Graphic Designing');

-- --------------------------------------------------------

--
-- Table structure for table `StatusChangeLogs`
--

CREATE TABLE `StatusChangeLogs` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `element` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `data` varchar(500) NOT NULL,
  `status_from` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `status_to` enum('Approved','Pending','Rejected','Cancellation Requested','Cancelled','Processing') DEFAULT 'Pending',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SupportedLanguages`
--

CREATE TABLE `SupportedLanguages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SupportedLanguages`
--

INSERT INTO `SupportedLanguages` (`id`, `name`, `description`) VALUES
(1, 'en', 'English'),
(2, 'de', 'German'),
(3, 'fr', 'French'),
(4, 'pl', 'Polish'),
(5, 'it', 'Italian'),
(7, 'zh', 'Chinese'),
(8, 'ja', 'Japanese'),
(10, 'es', 'Spanish'),
(11, 'fi', 'Finnish');

-- --------------------------------------------------------

--
-- Table structure for table `Tags`
--

CREATE TABLE `Tags` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Timezones`
--

CREATE TABLE `Timezones` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `details` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Timezones`
--

INSERT INTO `Timezones` (`id`, `name`, `details`) VALUES
(1, 'Pacific/Midway', '(GMT-11:00) Midway Island'),
(2, 'US/Samoa', '(GMT-11:00) Samoa'),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii'),
(4, 'US/Alaska', '(GMT-09:00) Alaska'),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US, Canada)'),
(6, 'America/Tijuana', '(GMT-08:00) Tijuana'),
(7, 'US/Arizona', '(GMT-07:00) Arizona'),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US, Canada)'),
(9, 'America/Chihuahua', '(GMT-07:00) Chihuahua'),
(10, 'America/Mazatlan', '(GMT-07:00) Mazatlan'),
(11, 'America/Mexico_City', '(GMT-06:00) Mexico City'),
(12, 'America/Monterrey', '(GMT-06:00) Monterrey'),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan'),
(14, 'US/Central', '(GMT-06:00) Central Time (US , Canada)'),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US , Canada)'),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)'),
(17, 'America/Bogota', '(GMT-05:00) Bogota'),
(18, 'America/Lima', '(GMT-05:00) Lima'),
(19, 'America/Caracas', '(GMT-04:30) Caracas'),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)'),
(21, 'America/La_Paz', '(GMT-04:00) La Paz'),
(22, 'America/Santiago', '(GMT-04:00) Santiago'),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland'),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires'),
(25, 'Greenland', '(GMT-03:00) Greenland'),
(26, 'Atlantic/Stanley', '(GMT-02:00) Stanley'),
(27, 'Atlantic/Azores', '(GMT-01:00) Azores'),
(28, 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde Is.'),
(29, 'Africa/Casablanca', '(GMT) Casablanca'),
(30, 'Europe/Dublin', '(GMT) Dublin'),
(31, 'Europe/Lisbon', '(GMT) Lisbon'),
(32, 'Europe/London', '(GMT) London'),
(33, 'Africa/Monrovia', '(GMT) Monrovia'),
(34, 'Europe/Amsterdam', '(GMT+01:00) Amsterdam'),
(35, 'Europe/Belgrade', '(GMT+01:00) Belgrade'),
(36, 'Europe/Berlin', '(GMT+01:00) Berlin'),
(37, 'Europe/Bratislava', '(GMT+01:00) Bratislava'),
(38, 'Europe/Brussels', '(GMT+01:00) Brussels'),
(39, 'Europe/Budapest', '(GMT+01:00) Budapest'),
(40, 'Europe/Copenhagen', '(GMT+01:00) Copenhagen'),
(41, 'Europe/Ljubljana', '(GMT+01:00) Ljubljana'),
(42, 'Europe/Madrid', '(GMT+01:00) Madrid'),
(43, 'Europe/Paris', '(GMT+01:00) Paris'),
(44, 'Europe/Prague', '(GMT+01:00) Prague'),
(45, 'Europe/Rome', '(GMT+01:00) Rome'),
(46, 'Europe/Sarajevo', '(GMT+01:00) Sarajevo'),
(47, 'Europe/Skopje', '(GMT+01:00) Skopje'),
(48, 'Europe/Stockholm', '(GMT+01:00) Stockholm'),
(49, 'Europe/Vienna', '(GMT+01:00) Vienna'),
(50, 'Europe/Warsaw', '(GMT+01:00) Warsaw'),
(51, 'Europe/Zagreb', '(GMT+01:00) Zagreb'),
(52, 'Europe/Athens', '(GMT+02:00) Athens'),
(53, 'Europe/Bucharest', '(GMT+02:00) Bucharest'),
(54, 'Africa/Cairo', '(GMT+02:00) Cairo'),
(55, 'Africa/Harare', '(GMT+02:00) Harare'),
(56, 'Europe/Helsinki', '(GMT+02:00) Helsinki'),
(57, 'Europe/Istanbul', '(GMT+02:00) Istanbul'),
(58, 'Asia/Jerusalem', '(GMT+02:00) Jerusalem'),
(59, 'Europe/Kiev', '(GMT+02:00) Kyiv'),
(60, 'Europe/Minsk', '(GMT+02:00) Minsk'),
(61, 'Europe/Riga', '(GMT+02:00) Riga'),
(62, 'Europe/Sofia', '(GMT+02:00) Sofia'),
(63, 'Europe/Tallinn', '(GMT+02:00) Tallinn'),
(64, 'Europe/Vilnius', '(GMT+02:00) Vilnius'),
(65, 'Asia/Baghdad', '(GMT+03:00) Baghdad'),
(66, 'Asia/Kuwait', '(GMT+03:00) Kuwait'),
(67, 'Africa/Nairobi', '(GMT+03:00) Nairobi'),
(68, 'Asia/Riyadh', '(GMT+03:00) Riyadh'),
(69, 'Europe/Moscow', '(GMT+03:00) Moscow'),
(70, 'Asia/Tehran', '(GMT+03:30) Tehran'),
(71, 'Asia/Baku', '(GMT+04:00) Baku'),
(72, 'Europe/Volgograd', '(GMT+04:00) Volgograd'),
(73, 'Asia/Muscat', '(GMT+04:00) Muscat'),
(74, 'Asia/Tbilisi', '(GMT+04:00) Tbilisi'),
(75, 'Asia/Yerevan', '(GMT+04:00) Yerevan'),
(76, 'Asia/Kabul', '(GMT+04:30) Kabul'),
(77, 'Asia/Karachi', '(GMT+05:00) Karachi'),
(78, 'Asia/Tashkent', '(GMT+05:00) Tashkent'),
(79, 'Asia/Kolkata', '(GMT+05:30) Kolkata'),
(80, 'Asia/Kathmandu', '(GMT+05:45) Kathmandu'),
(81, 'Asia/Yekaterinburg', '(GMT+06:00) Ekaterinburg'),
(82, 'Asia/Almaty', '(GMT+06:00) Almaty'),
(83, 'Asia/Dhaka', '(GMT+06:00) Dhaka'),
(84, 'Asia/Novosibirsk', '(GMT+07:00) Novosibirsk'),
(85, 'Asia/Bangkok', '(GMT+07:00) Bangkok'),
(86, 'Asia/Jakarta', '(GMT+07:00) Jakarta'),
(87, 'Asia/Krasnoyarsk', '(GMT+08:00) Krasnoyarsk'),
(88, 'Asia/Chongqing', '(GMT+08:00) Chongqing'),
(89, 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong'),
(90, 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur'),
(91, 'Australia/Perth', '(GMT+08:00) Perth'),
(92, 'Asia/Singapore', '(GMT+08:00) Singapore'),
(93, 'Asia/Taipei', '(GMT+08:00) Taipei'),
(94, 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaan Bataar'),
(95, 'Asia/Urumqi', '(GMT+08:00) Urumqi'),
(96, 'Asia/Irkutsk', '(GMT+09:00) Irkutsk'),
(97, 'Asia/Seoul', '(GMT+09:00) Seoul'),
(98, 'Asia/Tokyo', '(GMT+09:00) Tokyo'),
(99, 'Australia/Adelaide', '(GMT+09:30) Adelaide'),
(100, 'Australia/Darwin', '(GMT+09:30) Darwin'),
(101, 'Asia/Yakutsk', '(GMT+10:00) Yakutsk'),
(102, 'Australia/Brisbane', '(GMT+10:00) Brisbane'),
(103, 'Australia/Canberra', '(GMT+10:00) Canberra'),
(104, 'Pacific/Guam', '(GMT+10:00) Guam'),
(105, 'Australia/Hobart', '(GMT+10:00) Hobart'),
(106, 'Australia/Melbourne', '(GMT+10:00) Melbourne'),
(107, 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby'),
(108, 'Australia/Sydney', '(GMT+10:00) Sydney'),
(109, 'Asia/Vladivostok', '(GMT+11:00) Vladivostok'),
(110, 'Asia/Magadan', '(GMT+12:00) Magadan'),
(111, 'Pacific/Auckland', '(GMT+12:00) Auckland'),
(112, 'Pacific/Fiji', '(GMT+12:00) Fiji');

-- --------------------------------------------------------

--
-- Table structure for table `TrainingSessions`
--

CREATE TABLE `TrainingSessions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `course` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `scheduled` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `deliveryMethod` enum('Classroom','Self Study','Online') DEFAULT 'Classroom',
  `deliveryLocation` varchar(500) DEFAULT NULL,
  `status` enum('Pending','Approved','Completed','Cancelled') DEFAULT 'Pending',
  `attendanceType` enum('Sign Up','Assign') DEFAULT 'Sign Up',
  `attachment` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `requireProof` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserReports`
--

CREATE TABLE `UserReports` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `query` text DEFAULT NULL,
  `paramOrder` varchar(500) NOT NULL,
  `type` enum('Query','Class') DEFAULT 'Query',
  `report_group` varchar(500) DEFAULT NULL,
  `output` varchar(15) NOT NULL DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserReports`
--

INSERT INTO `UserReports` (`id`, `name`, `details`, `parameters`, `query`, `paramOrder`, `type`, `report_group`, `output`) VALUES
(1, 'Time Entry Report', 'View your time entries by date range and project', '[\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"Not Selected\",\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"project\", {\"label\":\"Or Project\",\"type\":\"select\",\"allow-null\":true,\"null-label\":\"All Projects\",\"remote-source\":[\"Project\",\"id\",\"name\",\"getAllProjects\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimesheetReport', '[\"client\",\"project\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(2, 'Attendance Report', 'View your attendance entries by date range', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeAttendanceReport', '[\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(3, 'Time Tracking Report', 'View your working hours and attendance details for each day for a given period ', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'EmployeeTimeTrackReport', '[\"date_start\",\"date_end\"]', 'Class', 'Time Management', 'CSV'),
(4, 'Travel Request Report', 'View travel requests for a specified period', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"type\":\"select\",\"source\":[[\"NULL\",\"All Statuses\"],[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"],[\"Cancellation Requested\",\"Cancellation Requested\"],[\"Cancelled\",\"Cancelled\"]]}]\r\n]', 'TravelRequestReport', '[\"date_start\",\"date_end\",\"status\"]', 'Class', 'Travel and Expense Management', 'CSV'),
(5, 'Time Sheet Report', 'This report list all employee time sheets by employee and date range', '[\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}],\r\n[ \"status\", {\"label\":\"Status\",\"allow-null\":true,\"null-label\":\"All Status\",\"type\":\"select\",\"source\":[[\"Approved\",\"Approved\"],[\"Pending\",\"Pending\"],[\"Rejected\",\"Rejected\"]]}]\r\n]', 'EmployeeTimeSheetData', '[\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'CSV'),
(6, 'Client Project Time Report', 'View your time entries for projects under a given client', '[\r\n[ \"client\", {\"label\":\"Select Client\",\"type\":\"select\",\"allow-null\":false,\"remote-source\":[\"Client\",\"id\",\"name\"]}],\r\n[ \"date_start\", {\"label\":\"Start Date\",\"type\":\"date\"}],\r\n[ \"date_end\", {\"label\":\"End Date\",\"type\":\"date\"}]\r\n]', 'ClientProjectTimeReport', '[\"client\",\"date_start\",\"date_end\",\"status\"]', 'Class', 'Time Management', 'PDF'),
(7, 'Download Payslips', 'Download your payslips', '[\r\n[ \"payroll\", {\"label\":\"Select Payroll\",\"type\":\"select\",\"allow-null\":false,\"remote-source\":[\"Payroll\",\"id\",\"name\",\"getEmployeePayrolls\"]}]]', 'PayslipReport', '[\"payroll\"]', 'Class', 'Finance', 'PDF');

-- --------------------------------------------------------

--
-- Table structure for table `UserRoles`
--

CREATE TABLE `UserRoles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserRoles`
--

INSERT INTO `UserRoles` (`id`, `name`) VALUES
(2, 'Attendance Manager'),
(1, 'Report Manager');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `default_module` bigint(20) DEFAULT NULL,
  `user_level` enum('Admin','Employee','Manager','Other') DEFAULT NULL,
  `user_roles` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `login_hash` varchar(64) DEFAULT NULL,
  `lang` bigint(20) DEFAULT NULL,
  `googleUserData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `email`, `password`, `employee`, `default_module`, `user_level`, `user_roles`, `last_login`, `last_update`, `created`, `login_hash`, `lang`, `googleUserData`) VALUES
(1, 'admin', 'icehrm+admin@web-stalk.com', '21232f297a57a5a743894a0e4a801fc3', 1, NULL, 'Admin', '', '2018-12-02 15:27:50', NULL, NULL, NULL, NULL, NULL),
(2, 'manager', 'demo@demo.com', '25d55ad283aa400af464c76d713c07ad', 1, NULL, 'Manager', NULL, '2018-12-02 15:28:07', '2018-12-02 15:26:31', '2018-12-02 15:26:31', NULL, NULL, NULL),
(3, 'manager1', 'demo@demo.com1', 'f5bb66b4cd294d0abbb4bf7e4139bf5e', 1, NULL, 'Manager', NULL, '2018-12-02 15:26:43', '2018-12-02 15:26:43', '2018-12-02 15:26:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Workdays`
--

CREATE TABLE `Workdays` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('Full Day','Half Day','Non-working Day') DEFAULT 'Full Day',
  `country` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Workdays`
--

INSERT INTO `Workdays` (`id`, `name`, `status`, `country`) VALUES
(1, 'Monday', 'Full Day', NULL),
(2, 'Tuesday', 'Full Day', NULL),
(3, 'Wednesday', 'Full Day', NULL),
(4, 'Thursday', 'Full Day', NULL),
(5, 'Friday', 'Full Day', NULL),
(6, 'Saturday', 'Non-working Day', NULL),
(7, 'Sunday', 'Non-working Day', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job` (`job`,`candidate`),
  ADD KEY `Fk_Applications_Candidates` (`candidate`);

--
-- Indexes for table `ArchivedEmployees`
--
ALTER TABLE `ArchivedEmployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Attendance`
--
ALTER TABLE `Attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_time` (`in_time`),
  ADD KEY `out_time` (`out_time`),
  ADD KEY `employee_in_time` (`employee`,`in_time`),
  ADD KEY `employee_out_time` (`employee`,`out_time`);

--
-- Indexes for table `AuditLog`
--
ALTER TABLE `AuditLog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_AuditLog_Users` (`user`);

--
-- Indexes for table `Benifits`
--
ALTER TABLE `Benifits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Calls`
--
ALTER TABLE `Calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Calls_Job` (`job`),
  ADD KEY `Fk_Calls_Candidates` (`candidate`);

--
-- Indexes for table `Candidates`
--
ALTER TABLE `Candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Certifications`
--
ALTER TABLE `Certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CompanyDocuments`
--
ALTER TABLE `CompanyDocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CompanyLoans`
--
ALTER TABLE `CompanyLoans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CompanyStructures`
--
ALTER TABLE `CompanyStructures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_CompanyStructures_Own` (`parent`);

--
-- Indexes for table `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Conversations_attachment` (`attachment`),
  ADD KEY `KEY_Conversations_type` (`type`),
  ADD KEY `KEY_Conversations_employee` (`employee`),
  ADD KEY `KEY_Conversations_target` (`target`),
  ADD KEY `KEY_Conversations_target_type` (`target`,`type`),
  ADD KEY `KEY_Conversations_timeint` (`timeint`),
  ADD KEY `KEY_Conversations_timeint_type` (`timeint`,`type`);

--
-- Indexes for table `ConversationUserStatus`
--
ALTER TABLE `ConversationUserStatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_ConversationLastSeen_employee` (`employee`),
  ADD KEY `KEY_ConversationLastSeen_seen_at` (`seen_at`),
  ADD KEY `KEY_ConversationLastSeen_status` (`seen_at`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Courses_Employees` (`coordinator`);

--
-- Indexes for table `Crons`
--
ALTER TABLE `Crons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Crons_name` (`name`),
  ADD KEY `KEY_Crons_frequency` (`frequency`);

--
-- Indexes for table `CurrencyTypes`
--
ALTER TABLE `CurrencyTypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CurrencyTypes_code` (`code`);

--
-- Indexes for table `CustomFields`
--
ALTER TABLE `CustomFields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CustomFields_name` (`type`,`name`);

--
-- Indexes for table `CustomFieldValues`
--
ALTER TABLE `CustomFieldValues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CustomFields_type_name_object_id` (`type`,`name`,`object_id`),
  ADD KEY `CustomFields_type_object_id` (`type`,`object_id`);

--
-- Indexes for table `DataEntryBackups`
--
ALTER TABLE `DataEntryBackups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DataImport`
--
ALTER TABLE `DataImport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DataImportFiles`
--
ALTER TABLE `DataImportFiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DeductionGroup`
--
ALTER TABLE `DeductionGroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Deductions`
--
ALTER TABLE `Deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Deductions_DeductionGroup` (`deduction_group`);

--
-- Indexes for table `Documents`
--
ALTER TABLE `Documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `EducationLevel`
--
ALTER TABLE `EducationLevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Educations`
--
ALTER TABLE `Educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Emails`
--
ALTER TABLE `Emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KEY_Emails_status` (`status`),
  ADD KEY `KEY_Emails_created` (`created`);

--
-- Indexes for table `EmergencyContacts`
--
ALTER TABLE `EmergencyContacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmergencyContacts_Employee` (`employee`);

--
-- Indexes for table `EmployeeApprovals`
--
ALTER TABLE `EmployeeApprovals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeApprovals_type_element_level` (`type`,`element`,`level`),
  ADD KEY `EmployeeApprovals_type_element_status_level` (`type`,`element`,`status`,`level`),
  ADD KEY `EmployeeApprovals_type_element` (`type`,`element`),
  ADD KEY `EmployeeApprovals_type` (`type`);

--
-- Indexes for table `EmployeeAttendanceSheets`
--
ALTER TABLE `EmployeeAttendanceSheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeAttendanceSheetsKey` (`employee`,`date_start`,`date_end`),
  ADD KEY `EmployeeAttendanceSheets_date_end` (`date_end`);

--
-- Indexes for table `EmployeeCertifications`
--
ALTER TABLE `EmployeeCertifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`certification_id`),
  ADD KEY `Fk_EmployeeCertifications_Certifications` (`certification_id`);

--
-- Indexes for table `EmployeeCompanyLoans`
--
ALTER TABLE `EmployeeCompanyLoans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeCompanyLoans_CompanyLoans` (`loan`),
  ADD KEY `Fk_EmployeeCompanyLoans_Employee` (`employee`);

--
-- Indexes for table `EmployeeDataHistory`
--
ALTER TABLE `EmployeeDataHistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDataHistory_Employee` (`employee`),
  ADD KEY `Fk_EmployeeDataHistory_Users` (`user`);

--
-- Indexes for table `EmployeeDependents`
--
ALTER TABLE `EmployeeDependents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDependents_Employee` (`employee`);

--
-- Indexes for table `EmployeeDocuments`
--
ALTER TABLE `EmployeeDocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeDocuments_Documents` (`document`),
  ADD KEY `Fk_EmployeeDocuments_Employee` (`employee`),
  ADD KEY `KEY_EmployeeDocuments_valid_until` (`valid_until`),
  ADD KEY `KEY_EmployeeDocuments_valid_until_status` (`valid_until`,`status`,`expire_notification_last`);

--
-- Indexes for table `EmployeeEducations`
--
ALTER TABLE `EmployeeEducations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeEducations_Educations` (`education_id`),
  ADD KEY `Fk_EmployeeEducations_Employee` (`employee`);

--
-- Indexes for table `EmployeeEthnicity`
--
ALTER TABLE `EmployeeEthnicity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeEthnicity_Employee` (`employee`),
  ADD KEY `Fk_EmployeeEthnicity_Ethnicity` (`ethnicity`);

--
-- Indexes for table `EmployeeExpenses`
--
ALTER TABLE `EmployeeExpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeExpenses_Employee` (`employee`),
  ADD KEY `Fk_EmployeeExpenses_pm` (`payment_method`),
  ADD KEY `Fk_EmployeeExpenses_category` (`category`);

--
-- Indexes for table `EmployeeForms`
--
ALTER TABLE `EmployeeForms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeForms_Employee` (`employee`),
  ADD KEY `Fk_EmployeeForms_Forms` (`form`);

--
-- Indexes for table `EmployeeImmigrations`
--
ALTER TABLE `EmployeeImmigrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeImmigrations_Employee` (`employee`),
  ADD KEY `Fk_EmployeeImmigrations_ImmigrationDocuments` (`document`);

--
-- Indexes for table `EmployeeImmigrationStatus`
--
ALTER TABLE `EmployeeImmigrationStatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeImmigrationStatus_Employee` (`employee`),
  ADD KEY `Fk_EmployeeImmigrationStatus_Type` (`status`);

--
-- Indexes for table `EmployeeLanguages`
--
ALTER TABLE `EmployeeLanguages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`language_id`),
  ADD KEY `Fk_EmployeeLanguages_Languages` (`language_id`);

--
-- Indexes for table `EmployeeLeaveDays`
--
ALTER TABLE `EmployeeLeaveDays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaveDays_EmployeeLeaves` (`employee_leave`);

--
-- Indexes for table `EmployeeLeaveLog`
--
ALTER TABLE `EmployeeLeaveLog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaveLog_EmployeeLeaves` (`employee_leave`),
  ADD KEY `Fk_EmployeeLeaveLog_Users` (`user_id`);

--
-- Indexes for table `EmployeeLeaves`
--
ALTER TABLE `EmployeeLeaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeLeaves_Employee` (`employee`),
  ADD KEY `Fk_EmployeeLeaves_LeaveTypes` (`leave_type`),
  ADD KEY `Fk_EmployeeLeaves_LeavePeriods` (`leave_period`);

--
-- Indexes for table `EmployeeOverTime`
--
ALTER TABLE `EmployeeOverTime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeOvertime_Employee` (`employee`),
  ADD KEY `Fk_EmployeeOvertime_Category` (`category`);

--
-- Indexes for table `EmployeeProjects`
--
ALTER TABLE `EmployeeProjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeProjectsKey` (`employee`,`project`),
  ADD KEY `Fk_EmployeeProjects_Projects` (`project`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `Fk_Employee_Nationality` (`nationality`),
  ADD KEY `Fk_Employee_JobTitle` (`job_title`),
  ADD KEY `Fk_Employee_EmploymentStatus` (`employment_status`),
  ADD KEY `Fk_Employee_Country` (`country`),
  ADD KEY `Fk_Employee_Province` (`province`),
  ADD KEY `Fk_Employee_Supervisor` (`supervisor`),
  ADD KEY `Fk_Employee_CompanyStructures` (`department`),
  ADD KEY `Fk_Employee_PayGrades` (`pay_grade`);

--
-- Indexes for table `EmployeeSalary`
--
ALTER TABLE `EmployeeSalary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeSalary_Employee` (`employee`),
  ADD KEY `Fk_EmployeeSalary_Currency` (`currency`);

--
-- Indexes for table `EmployeeSkills`
--
ALTER TABLE `EmployeeSkills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee` (`employee`,`skill_id`),
  ADD KEY `Fk_EmployeeSkills_Skills` (`skill_id`);

--
-- Indexes for table `EmployeeTimeEntry`
--
ALTER TABLE `EmployeeTimeEntry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTimeEntry_Projects` (`project`),
  ADD KEY `Fk_EmployeeTimeEntry_EmployeeTimeSheets` (`timesheet`),
  ADD KEY `employee_project` (`employee`,`project`),
  ADD KEY `employee_project_date_start` (`employee`,`project`,`date_start`);

--
-- Indexes for table `EmployeeTimesheets`
--
ALTER TABLE `EmployeeTimesheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmployeeTimeSheetsKey` (`employee`,`date_start`,`date_end`),
  ADD KEY `EmployeeTimeSheets_date_end` (`date_end`);

--
-- Indexes for table `EmployeeTrainingSessions`
--
ALTER TABLE `EmployeeTrainingSessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTrainingSessions_TrainingSessions` (`trainingSession`),
  ADD KEY `Fk_EmployeeTrainingSessions_Employee` (`employee`);

--
-- Indexes for table `EmployeeTravelRecords`
--
ALTER TABLE `EmployeeTravelRecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_EmployeeTravelRecords_Employee` (`employee`);

--
-- Indexes for table `EmployementType`
--
ALTER TABLE `EmployementType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `EmploymentStatus`
--
ALTER TABLE `EmploymentStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Ethnicity`
--
ALTER TABLE `Ethnicity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpensesCategories`
--
ALTER TABLE `ExpensesCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpensesPaymentMethods`
--
ALTER TABLE `ExpensesPaymentMethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExperienceLevel`
--
ALTER TABLE `ExperienceLevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FieldNameMappings`
--
ALTER TABLE `FieldNameMappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `Forms`
--
ALTER TABLE `Forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Holidays`
--
ALTER TABLE `Holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `holidays_dateh_country` (`dateh`,`country`);

--
-- Indexes for table `ImmigrationDocuments`
--
ALTER TABLE `ImmigrationDocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ImmigrationStatus`
--
ALTER TABLE `ImmigrationStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Industry`
--
ALTER TABLE `Industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Interviews`
--
ALTER TABLE `Interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Interviews_Job` (`job`),
  ADD KEY `Fk_Interviews_Candidates` (`candidate`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Job_status` (`status`);

--
-- Indexes for table `JobFunction`
--
ALTER TABLE `JobFunction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `JobTitles`
--
ALTER TABLE `JobTitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Languages`
--
ALTER TABLE `Languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LeaveGroupEmployees`
--
ALTER TABLE `LeaveGroupEmployees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_LeaveGroupEmployees_LeaveGroups` (`leave_group`),
  ADD KEY `Fk_LeaveGroupEmployees_Employee` (`employee`);

--
-- Indexes for table `LeaveGroups`
--
ALTER TABLE `LeaveGroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LeavePeriods`
--
ALTER TABLE `LeavePeriods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LeaveRules`
--
ALTER TABLE `LeaveRules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LeaveStartingBalance`
--
ALTER TABLE `LeaveStartingBalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LeaveTypes`
--
ALTER TABLE `LeaveTypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Migrations`
--
ALTER TABLE `Migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KEY_Migrations_file` (`file`),
  ADD KEY `KEY_Migrations_status` (`status`),
  ADD KEY `KEY_Migrations_version` (`version`);

--
-- Indexes for table `Modules`
--
ALTER TABLE `Modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Modules_name_modgroup` (`name`,`mod_group`);

--
-- Indexes for table `Nationality`
--
ALTER TABLE `Nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toUser_time` (`toUser`,`time`),
  ADD KEY `toUser_status_time` (`toUser`,`status`,`time`);

--
-- Indexes for table `OvertimeCategories`
--
ALTER TABLE `OvertimeCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PayFrequency`
--
ALTER TABLE `PayFrequency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PayGrades`
--
ALTER TABLE `PayGrades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_PayGrades_CurrencyTypes` (`currency`);

--
-- Indexes for table `Payroll`
--
ALTER TABLE `Payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PayrollColumns`
--
ALTER TABLE `PayrollColumns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PayrollColumnTemplates`
--
ALTER TABLE `PayrollColumnTemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PayrollData`
--
ALTER TABLE `PayrollData`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PayrollDataUniqueKey` (`payroll`,`employee`,`payroll_item`);

--
-- Indexes for table `PayrollEmployees`
--
ALTER TABLE `PayrollEmployees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PayrollEmployees_employee` (`employee`),
  ADD KEY `Fk_PayrollEmployees_DeductionGroup` (`deduction_group`);

--
-- Indexes for table `PayslipTemplates`
--
ALTER TABLE `PayslipTemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Permissions`
--
ALTER TABLE `Permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Module_Permission` (`user_level`,`module_id`,`permission`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Projects_Client` (`client`);

--
-- Indexes for table `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_Province_Country` (`country`);

--
-- Indexes for table `ReportFiles`
--
ALTER TABLE `ReportFiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ReportFiles_attachment` (`attachment`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Reports_Name` (`name`);

--
-- Indexes for table `RestAccessTokens`
--
ALTER TABLE `RestAccessTokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userId` (`userId`);

--
-- Indexes for table `SalaryComponent`
--
ALTER TABLE `SalaryComponent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_SalaryComponent_SalaryComponentType` (`componentType`);

--
-- Indexes for table `SalaryComponentType`
--
ALTER TABLE `SalaryComponentType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Settings`
--
ALTER TABLE `Settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Skills`
--
ALTER TABLE `Skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StatusChangeLogs`
--
ALTER TABLE `StatusChangeLogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmployeeApprovals_type_element` (`type`,`element`);

--
-- Indexes for table `SupportedLanguages`
--
ALTER TABLE `SupportedLanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Tags`
--
ALTER TABLE `Tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Timezones`
--
ALTER TABLE `Timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TrainingSessions`
--
ALTER TABLE `TrainingSessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_TrainingSessions_Courses` (`course`);

--
-- Indexes for table `UserReports`
--
ALTER TABLE `UserReports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserReports_Name` (`name`);

--
-- Indexes for table `UserRoles`
--
ALTER TABLE `UserRoles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `Fk_User_Employee` (`employee`),
  ADD KEY `Fk_User_SupportedLanguages` (`lang`),
  ADD KEY `login_hash_index` (`login_hash`);

--
-- Indexes for table `Workdays`
--
ALTER TABLE `Workdays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workdays_name_country` (`name`,`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Applications`
--
ALTER TABLE `Applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ArchivedEmployees`
--
ALTER TABLE `ArchivedEmployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Attendance`
--
ALTER TABLE `Attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AuditLog`
--
ALTER TABLE `AuditLog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Benifits`
--
ALTER TABLE `Benifits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Calls`
--
ALTER TABLE `Calls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Candidates`
--
ALTER TABLE `Candidates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Certifications`
--
ALTER TABLE `Certifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `CompanyDocuments`
--
ALTER TABLE `CompanyDocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CompanyLoans`
--
ALTER TABLE `CompanyLoans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `CompanyStructures`
--
ALTER TABLE `CompanyStructures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationUserStatus`
--
ALTER TABLE `ConversationUserStatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Crons`
--
ALTER TABLE `Crons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `CurrencyTypes`
--
ALTER TABLE `CurrencyTypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `CustomFields`
--
ALTER TABLE `CustomFields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CustomFieldValues`
--
ALTER TABLE `CustomFieldValues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DataEntryBackups`
--
ALTER TABLE `DataEntryBackups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DataImport`
--
ALTER TABLE `DataImport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `DataImportFiles`
--
ALTER TABLE `DataImportFiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DeductionGroup`
--
ALTER TABLE `DeductionGroup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Deductions`
--
ALTER TABLE `Deductions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Documents`
--
ALTER TABLE `Documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `EducationLevel`
--
ALTER TABLE `EducationLevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Educations`
--
ALTER TABLE `Educations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Emails`
--
ALTER TABLE `Emails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmergencyContacts`
--
ALTER TABLE `EmergencyContacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeApprovals`
--
ALTER TABLE `EmployeeApprovals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeAttendanceSheets`
--
ALTER TABLE `EmployeeAttendanceSheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeCertifications`
--
ALTER TABLE `EmployeeCertifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeCompanyLoans`
--
ALTER TABLE `EmployeeCompanyLoans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeDataHistory`
--
ALTER TABLE `EmployeeDataHistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeDependents`
--
ALTER TABLE `EmployeeDependents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeDocuments`
--
ALTER TABLE `EmployeeDocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeEducations`
--
ALTER TABLE `EmployeeEducations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeEthnicity`
--
ALTER TABLE `EmployeeEthnicity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeExpenses`
--
ALTER TABLE `EmployeeExpenses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeForms`
--
ALTER TABLE `EmployeeForms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeImmigrations`
--
ALTER TABLE `EmployeeImmigrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeImmigrationStatus`
--
ALTER TABLE `EmployeeImmigrationStatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeLanguages`
--
ALTER TABLE `EmployeeLanguages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeLeaveDays`
--
ALTER TABLE `EmployeeLeaveDays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeLeaveLog`
--
ALTER TABLE `EmployeeLeaveLog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeLeaves`
--
ALTER TABLE `EmployeeLeaves`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeOverTime`
--
ALTER TABLE `EmployeeOverTime`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeProjects`
--
ALTER TABLE `EmployeeProjects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EmployeeSalary`
--
ALTER TABLE `EmployeeSalary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeSkills`
--
ALTER TABLE `EmployeeSkills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeTimeEntry`
--
ALTER TABLE `EmployeeTimeEntry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeTimesheets`
--
ALTER TABLE `EmployeeTimesheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EmployeeTrainingSessions`
--
ALTER TABLE `EmployeeTrainingSessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeTravelRecords`
--
ALTER TABLE `EmployeeTravelRecords`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployementType`
--
ALTER TABLE `EmployementType`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `EmploymentStatus`
--
ALTER TABLE `EmploymentStatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Ethnicity`
--
ALTER TABLE `Ethnicity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ExpensesCategories`
--
ALTER TABLE `ExpensesCategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ExpensesPaymentMethods`
--
ALTER TABLE `ExpensesPaymentMethods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ExperienceLevel`
--
ALTER TABLE `ExperienceLevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `FieldNameMappings`
--
ALTER TABLE `FieldNameMappings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Forms`
--
ALTER TABLE `Forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Holidays`
--
ALTER TABLE `Holidays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ImmigrationDocuments`
--
ALTER TABLE `ImmigrationDocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ImmigrationStatus`
--
ALTER TABLE `ImmigrationStatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Industry`
--
ALTER TABLE `Industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Interviews`
--
ALTER TABLE `Interviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Job`
--
ALTER TABLE `Job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JobFunction`
--
ALTER TABLE `JobFunction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `JobTitles`
--
ALTER TABLE `JobTitles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Languages`
--
ALTER TABLE `Languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LeaveGroupEmployees`
--
ALTER TABLE `LeaveGroupEmployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LeaveGroups`
--
ALTER TABLE `LeaveGroups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LeavePeriods`
--
ALTER TABLE `LeavePeriods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `LeaveRules`
--
ALTER TABLE `LeaveRules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LeaveStartingBalance`
--
ALTER TABLE `LeaveStartingBalance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LeaveTypes`
--
ALTER TABLE `LeaveTypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Migrations`
--
ALTER TABLE `Migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Modules`
--
ALTER TABLE `Modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `Nationality`
--
ALTER TABLE `Nationality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OvertimeCategories`
--
ALTER TABLE `OvertimeCategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayFrequency`
--
ALTER TABLE `PayFrequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `PayGrades`
--
ALTER TABLE `PayGrades`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Payroll`
--
ALTER TABLE `Payroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayrollColumns`
--
ALTER TABLE `PayrollColumns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayrollColumnTemplates`
--
ALTER TABLE `PayrollColumnTemplates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayrollData`
--
ALTER TABLE `PayrollData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayrollEmployees`
--
ALTER TABLE `PayrollEmployees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PayslipTemplates`
--
ALTER TABLE `PayslipTemplates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Permissions`
--
ALTER TABLE `Permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Province`
--
ALTER TABLE `Province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ReportFiles`
--
ALTER TABLE `ReportFiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `RestAccessTokens`
--
ALTER TABLE `RestAccessTokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SalaryComponent`
--
ALTER TABLE `SalaryComponent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `SalaryComponentType`
--
ALTER TABLE `SalaryComponentType`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Settings`
--
ALTER TABLE `Settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `Skills`
--
ALTER TABLE `Skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `StatusChangeLogs`
--
ALTER TABLE `StatusChangeLogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SupportedLanguages`
--
ALTER TABLE `SupportedLanguages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Tags`
--
ALTER TABLE `Tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Timezones`
--
ALTER TABLE `Timezones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `TrainingSessions`
--
ALTER TABLE `TrainingSessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserReports`
--
ALTER TABLE `UserReports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `UserRoles`
--
ALTER TABLE `UserRoles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Workdays`
--
ALTER TABLE `Workdays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applications`
--
ALTER TABLE `Applications`
  ADD CONSTRAINT `Fk_Applications_Candidates` FOREIGN KEY (`candidate`) REFERENCES `Candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Applications_Job` FOREIGN KEY (`job`) REFERENCES `Job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Attendance`
--
ALTER TABLE `Attendance`
  ADD CONSTRAINT `Fk_Attendance_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `AuditLog`
--
ALTER TABLE `AuditLog`
  ADD CONSTRAINT `Fk_AuditLog_Users` FOREIGN KEY (`user`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Calls`
--
ALTER TABLE `Calls`
  ADD CONSTRAINT `Fk_Calls_Candidates` FOREIGN KEY (`candidate`) REFERENCES `Candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Calls_Job` FOREIGN KEY (`job`) REFERENCES `Job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CompanyStructures`
--
ALTER TABLE `CompanyStructures`
  ADD CONSTRAINT `Fk_CompanyStructures_Own` FOREIGN KEY (`parent`) REFERENCES `CompanyStructures` (`id`);

--
-- Constraints for table `Courses`
--
ALTER TABLE `Courses`
  ADD CONSTRAINT `Fk_Courses_Employees` FOREIGN KEY (`coordinator`) REFERENCES `Employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Deductions`
--
ALTER TABLE `Deductions`
  ADD CONSTRAINT `Fk_Deductions_DeductionGroup` FOREIGN KEY (`deduction_group`) REFERENCES `DeductionGroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmergencyContacts`
--
ALTER TABLE `EmergencyContacts`
  ADD CONSTRAINT `Fk_EmergencyContacts_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeAttendanceSheets`
--
ALTER TABLE `EmployeeAttendanceSheets`
  ADD CONSTRAINT `Fk_EmployeeAttendanceSheets_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeCertifications`
--
ALTER TABLE `EmployeeCertifications`
  ADD CONSTRAINT `Fk_EmployeeCertifications_Certifications` FOREIGN KEY (`certification_id`) REFERENCES `Certifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCertifications_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeCompanyLoans`
--
ALTER TABLE `EmployeeCompanyLoans`
  ADD CONSTRAINT `Fk_EmployeeCompanyLoans_CompanyLoans` FOREIGN KEY (`loan`) REFERENCES `CompanyLoans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeCompanyLoans_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeDataHistory`
--
ALTER TABLE `EmployeeDataHistory`
  ADD CONSTRAINT `Fk_EmployeeDataHistory_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeDataHistory_Users` FOREIGN KEY (`user`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeDependents`
--
ALTER TABLE `EmployeeDependents`
  ADD CONSTRAINT `Fk_EmployeeDependents_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeDocuments`
--
ALTER TABLE `EmployeeDocuments`
  ADD CONSTRAINT `Fk_EmployeeDocuments_Documents` FOREIGN KEY (`document`) REFERENCES `Documents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeDocuments_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeEducations`
--
ALTER TABLE `EmployeeEducations`
  ADD CONSTRAINT `Fk_EmployeeEducations_Educations` FOREIGN KEY (`education_id`) REFERENCES `Educations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeEducations_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeEthnicity`
--
ALTER TABLE `EmployeeEthnicity`
  ADD CONSTRAINT `Fk_EmployeeEthnicity_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeEthnicity_Ethnicity` FOREIGN KEY (`ethnicity`) REFERENCES `Ethnicity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeExpenses`
--
ALTER TABLE `EmployeeExpenses`
  ADD CONSTRAINT `Fk_EmployeeExpenses_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeExpenses_category` FOREIGN KEY (`category`) REFERENCES `ExpensesCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeExpenses_pm` FOREIGN KEY (`payment_method`) REFERENCES `ExpensesPaymentMethods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeForms`
--
ALTER TABLE `EmployeeForms`
  ADD CONSTRAINT `Fk_EmployeeForms_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeForms_Forms` FOREIGN KEY (`form`) REFERENCES `Forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeImmigrations`
--
ALTER TABLE `EmployeeImmigrations`
  ADD CONSTRAINT `Fk_EmployeeImmigrations_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeImmigrations_ImmigrationDocuments` FOREIGN KEY (`document`) REFERENCES `ImmigrationDocuments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeImmigrationStatus`
--
ALTER TABLE `EmployeeImmigrationStatus`
  ADD CONSTRAINT `Fk_EmployeeImmigrationStatus_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeImmigrationStatus_Type` FOREIGN KEY (`status`) REFERENCES `ImmigrationStatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeLanguages`
--
ALTER TABLE `EmployeeLanguages`
  ADD CONSTRAINT `Fk_EmployeeLanguages_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLanguages_Languages` FOREIGN KEY (`language_id`) REFERENCES `Languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeLeaveDays`
--
ALTER TABLE `EmployeeLeaveDays`
  ADD CONSTRAINT `Fk_EmployeeLeaveDays_EmployeeLeaves` FOREIGN KEY (`employee_leave`) REFERENCES `EmployeeLeaves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeLeaveLog`
--
ALTER TABLE `EmployeeLeaveLog`
  ADD CONSTRAINT `Fk_EmployeeLeaveLog_EmployeeLeaves` FOREIGN KEY (`employee_leave`) REFERENCES `EmployeeLeaves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLeaveLog_Users` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeLeaves`
--
ALTER TABLE `EmployeeLeaves`
  ADD CONSTRAINT `Fk_EmployeeLeaves_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeLeaves_LeavePeriods` FOREIGN KEY (`leave_period`) REFERENCES `LeavePeriods` (`id`),
  ADD CONSTRAINT `Fk_EmployeeLeaves_LeaveTypes` FOREIGN KEY (`leave_type`) REFERENCES `LeaveTypes` (`id`);

--
-- Constraints for table `EmployeeOverTime`
--
ALTER TABLE `EmployeeOverTime`
  ADD CONSTRAINT `Fk_EmployeeOvertime_Category` FOREIGN KEY (`category`) REFERENCES `OvertimeCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeOvertime_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeProjects`
--
ALTER TABLE `EmployeeProjects`
  ADD CONSTRAINT `Fk_EmployeeProjects_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeProjects_Projects` FOREIGN KEY (`project`) REFERENCES `Projects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Fk_Employee_CompanyStructures` FOREIGN KEY (`department`) REFERENCES `CompanyStructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Country` FOREIGN KEY (`country`) REFERENCES `Country` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_EmploymentStatus` FOREIGN KEY (`employment_status`) REFERENCES `EmploymentStatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_JobTitle` FOREIGN KEY (`job_title`) REFERENCES `JobTitles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Nationality` FOREIGN KEY (`nationality`) REFERENCES `Nationality` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_PayGrades` FOREIGN KEY (`pay_grade`) REFERENCES `PayGrades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Province` FOREIGN KEY (`province`) REFERENCES `Province` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Supervisor` FOREIGN KEY (`supervisor`) REFERENCES `Employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeSalary`
--
ALTER TABLE `EmployeeSalary`
  ADD CONSTRAINT `Fk_EmployeeSalary_Currency` FOREIGN KEY (`currency`) REFERENCES `CurrencyTypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeSalary_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeSkills`
--
ALTER TABLE `EmployeeSkills`
  ADD CONSTRAINT `Fk_EmployeeSkills_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeSkills_Skills` FOREIGN KEY (`skill_id`) REFERENCES `Skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeTimeEntry`
--
ALTER TABLE `EmployeeTimeEntry`
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_EmployeeTimeSheets` FOREIGN KEY (`timesheet`) REFERENCES `EmployeeTimesheets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTimeEntry_Projects` FOREIGN KEY (`project`) REFERENCES `Projects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeTimesheets`
--
ALTER TABLE `EmployeeTimesheets`
  ADD CONSTRAINT `Fk_EmployeeTimeSheets_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeTrainingSessions`
--
ALTER TABLE `EmployeeTrainingSessions`
  ADD CONSTRAINT `Fk_EmployeeTrainingSessions_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeTrainingSessions_TrainingSessions` FOREIGN KEY (`trainingSession`) REFERENCES `TrainingSessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EmployeeTravelRecords`
--
ALTER TABLE `EmployeeTravelRecords`
  ADD CONSTRAINT `Fk_EmployeeTravelRecords_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Interviews`
--
ALTER TABLE `Interviews`
  ADD CONSTRAINT `Fk_Interviews_Candidates` FOREIGN KEY (`candidate`) REFERENCES `Candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Interviews_Job` FOREIGN KEY (`job`) REFERENCES `Job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LeaveGroupEmployees`
--
ALTER TABLE `LeaveGroupEmployees`
  ADD CONSTRAINT `Fk_LeaveGroupEmployees_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_LeaveGroupEmployees_LeaveGroups` FOREIGN KEY (`leave_group`) REFERENCES `LeaveGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD CONSTRAINT `Fk_Notifications_Users` FOREIGN KEY (`toUser`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PayGrades`
--
ALTER TABLE `PayGrades`
  ADD CONSTRAINT `Fk_PayGrades_CurrencyTypes` FOREIGN KEY (`currency`) REFERENCES `CurrencyTypes` (`code`);

--
-- Constraints for table `PayrollData`
--
ALTER TABLE `PayrollData`
  ADD CONSTRAINT `Fk_PayrollData_Payroll` FOREIGN KEY (`payroll`) REFERENCES `Payroll` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PayrollEmployees`
--
ALTER TABLE `PayrollEmployees`
  ADD CONSTRAINT `Fk_PayrollEmployee_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_PayrollEmployees_DeductionGroup` FOREIGN KEY (`deduction_group`) REFERENCES `DeductionGroup` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `Fk_Projects_Client` FOREIGN KEY (`client`) REFERENCES `Clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Province`
--
ALTER TABLE `Province`
  ADD CONSTRAINT `Fk_Province_Country` FOREIGN KEY (`country`) REFERENCES `Country` (`code`);

--
-- Constraints for table `SalaryComponent`
--
ALTER TABLE `SalaryComponent`
  ADD CONSTRAINT `Fk_SalaryComponent_SalaryComponentType` FOREIGN KEY (`componentType`) REFERENCES `SalaryComponentType` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `TrainingSessions`
--
ALTER TABLE `TrainingSessions`
  ADD CONSTRAINT `Fk_TrainingSessions_Courses` FOREIGN KEY (`course`) REFERENCES `Courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Fk_User_Employee` FOREIGN KEY (`employee`) REFERENCES `Employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_User_SupportedLanguages` FOREIGN KEY (`lang`) REFERENCES `SupportedLanguages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
