-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2025 at 06:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps_ashwini_tea`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_name`
--

CREATE TABLE `attribute_name` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attribute_name`
--

INSERT INTO `attribute_name` (`id`, `CatId`, `Name`, `Status`) VALUES
(1, 1, 'Size', 1),
(2, 1, 'Storage', 1),
(3, 0, 'Color', 1),
(4, 0, 'RAM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` int(11) NOT NULL,
  `AttrNameId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `CatId`, `SubCatId`, `AttrNameId`, `Name`, `Status`) VALUES
(1, 0, 0, 1, '1kg', 1),
(2, 0, 0, 1, '2kg', 1),
(3, 0, 0, 1, '10 Packet', 1),
(4, 0, 0, 1, '20 Packet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('prodcat', 'a:23:{i:0;O:8:\"stdClass\":17:{s:2:\"id\";i:25;s:4:\"Name\";s:4:\"test\";s:4:\"Icon\";N;s:5:\"Photo\";s:20:\"1730116373_refer.png\";s:6:\"Photo2\";N;s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-10-28 11:49:31\";s:12:\"ModifiedDate\";s:19:\"2024-10-28 11:52:53\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:2091;s:10:\"ModifiedBy\";i:2091;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-10-28 11:52:53.273\";}i:1;O:8:\"stdClass\":17:{s:2:\"id\";i:22;s:4:\"Name\";s:4:\"test\";s:4:\"Icon\";N;s:5:\"Photo\";N;s:6:\"Photo2\";N;s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-10-28 06:08:41\";s:12:\"ModifiedDate\";N;s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:2091;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-10-28 06:08:41.166\";}i:2;O:8:\"stdClass\":17:{s:2:\"id\";i:21;s:4:\"Name\";s:12:\"Special Menu\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:21;s:11:\"CreatedDate\";s:19:\"2024-10-19 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-10-19 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-10-19 08:36:38.906\";}i:3;O:8:\"stdClass\":17:{s:2:\"id\";i:20;s:4:\"Name\";s:25:\"FOODWORSE GLOBAL PVT. LTD\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-08-14 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-08-14 06:14:39.534\";}i:4;O:8:\"stdClass\":17:{s:2:\"id\";i:19;s:4:\"Name\";s:19:\"HEALTHY POC PRODUCT\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-27 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-27 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-27 08:01:57.200\";}i:5;O:8:\"stdClass\":17:{s:2:\"id\";i:18;s:4:\"Name\";s:14:\"PEPSI COLDRINK\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-27 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-27 07:42:54.470\";}i:6;O:8:\"stdClass\":17:{s:2:\"id\";i:17;s:4:\"Name\";s:19:\"HEALTHY POC PRODUCT\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-24 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-24 09:45:47.467\";}i:7;O:8:\"stdClass\":17:{s:2:\"id\";i:16;s:4:\"Name\";s:14:\"COTHAS PRODUCT\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-24 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-24 09:47:03.136\";}i:8;O:8:\"stdClass\":17:{s:2:\"id\";i:15;s:4:\"Name\";s:15:\"BAKERY PRODUCTS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-09 10:29:07.633\";}i:9;O:8:\"stdClass\":17:{s:2:\"id\";i:14;s:4:\"Name\";s:17:\"HALDIRAM PRODUCTS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-24 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-24 09:47:26.364\";}i:10;O:8:\"stdClass\":17:{s:2:\"id\";i:13;s:4:\"Name\";s:18:\"EVERGREEN PRODUCTS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-24 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-24 09:47:45.604\";}i:11;O:8:\"stdClass\":17:{s:2:\"id\";i:12;s:4:\"Name\";s:19:\"PACKED MRP PRODUCTS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-27 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-27 07:23:48.338\";}i:12;O:8:\"stdClass\":17:{s:2:\"id\";i:11;s:4:\"Name\";s:13:\"LADACHI KULFI\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:12:\"icecream.jpg\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-09 10:25:55.606\";}i:13;O:8:\"stdClass\":17:{s:2:\"id\";i:10;s:4:\"Name\";s:20:\"SOUTH INDIAN SPECIAL\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:1;s:11:\"CreatedDate\";s:19:\"2024-07-09 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-09 10:25:18.442\";}i:14;O:8:\"stdClass\":17:{s:2:\"id\";i:9;s:4:\"Name\";s:13:\"AJIT PRODUCTS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:7;s:11:\"CreatedDate\";s:19:\"2024-07-08 00:00:00\";s:12:\"ModifiedDate\";s:19:\"2024-07-24 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:1;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-24 09:48:21.971\";}i:15;O:8:\"stdClass\":17:{s:2:\"id\";i:8;s:4:\"Name\";s:6:\"COMBOS\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:12;s:11:\"CreatedDate\";s:19:\"2024-07-04 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:0;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-07-04 17:56:58.105\";}i:16;O:8:\"stdClass\":17:{s:2:\"id\";i:7;s:4:\"Name\";s:14:\"SPECIAL THALI \";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:21;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:17;O:8:\"stdClass\":17:{s:2:\"id\";i:6;s:4:\"Name\";s:5:\"SWEET\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:20;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:18;O:8:\"stdClass\":17:{s:2:\"id\";i:5;s:4:\"Name\";s:8:\"BEVERAGE\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:19;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:19;O:8:\"stdClass\":17:{s:2:\"id\";i:4;s:4:\"Name\";s:4:\"RICE\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:18;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:20;O:8:\"stdClass\":17:{s:2:\"id\";i:3;s:4:\"Name\";s:8:\"UTHAPPAM\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:17;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:21;O:8:\"stdClass\":17:{s:2:\"id\";i:2;s:4:\"Name\";s:15:\"IDLI /VADA/UPMA\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:0:\"\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:16;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}i:22;O:8:\"stdClass\":17:{s:2:\"id\";i:1;s:4:\"Name\";s:4:\"DOSA\";s:4:\"Icon\";s:0:\"\";s:5:\"Photo\";s:8:\"dosa.jpg\";s:6:\"Photo2\";s:0:\"\";s:8:\"Featured\";i:0;s:7:\"Service\";i:0;s:6:\"Status\";i:1;s:4:\"srno\";d:15;s:11:\"CreatedDate\";s:19:\"0000-00-00 00:00:00\";s:12:\"ModifiedDate\";s:19:\"0000-00-00 00:00:00\";s:4:\"Roll\";i:1;s:9:\"CreatedBy\";i:253;s:10:\"ModifiedBy\";i:0;s:9:\"push_flag\";i:0;s:11:\"delete_flag\";i:0;s:13:\"modified_time\";s:23:\"2024-05-27 16:47:23.686\";}}', 1730121615);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_orders`
--

CREATE TABLE `cancel_orders` (
  `id` int(11) NOT NULL,
  `Ordid` int(11) NOT NULL,
  `OrdNo` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `ReasonId` int(11) NOT NULL,
  `CancelById` int(11) NOT NULL,
  `CancelBy` varchar(100) NOT NULL,
  `CancelDate` date NOT NULL,
  `CancelTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Featured` int(11) NOT NULL,
  `Service` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Name`, `Icon`, `Photo`, `Photo2`, `Featured`, `Service`, `Status`, `srno`, `CreatedDate`, `ModifiedDate`, `Roll`) VALUES
(16, 'Tea', '', '44_2504_tanduri-chai.jpg', '74_2504_tanduri-chai.jpg', 0, 0, 1, 0.0, '2023-05-20', '2023-06-12', 3),
(17, 'Vada Pav', '', '57_vadapav.jpg', '66_vadapav.jpg', 0, 0, 1, 0.0, '2023-05-20', '0000-00-00', 3),
(18, 'Snacks', '', '24_snacks.jpg', '25_snacks.jpg', 0, 0, 1, 0.0, '2023-05-20', '2023-06-12', 3),
(19, 'Juices', '', '91_juices2.jpg', '', 0, 0, 1, 0.0, '2023-05-20', '2023-05-22', 3),
(20, 'Combo Meal', '', '33_combomeal.jpg', '', 0, 0, 1, 0.0, '2023-05-20', '2023-06-12', 3),
(21, 'Shakes', '', '5_shakes.jpg', '', 0, 0, 1, 0.0, '2023-05-20', '0000-00-00', 3),
(22, 'Apron', '', '36_1620467539_169.png', '95_1620467539_169.png', 0, 0, 1, 0.0, '2023-06-12', '0000-00-00', 3),
(23, 'Maha Cup', '', '71_cup.jpg', '21_cup.jpg', 0, 0, 1, 0.0, '2023-06-12', '0000-00-00', 3),
(24, 'Spices', '', '9_1620624338_183.jpeg', '66_1620624338_183.jpeg', 0, 0, 1, 0.0, '2023-06-12', '0000-00-00', 3),
(25, 'Watter', '', '17_1669722898_163.jpg', '14_1669722898_163.jpg', 0, 0, 1, 0.0, '2023-06-12', '2023-08-10', 3),
(27, 'Premix', '', '2_Pav_Bhaji52.jpg', '23_Pav_Bhaji52.jpg', 0, 0, 1, 0.0, '2023-08-10', '2023-09-07', 3),
(28, 'Bakery', '', '', '', 0, 0, 0, 0.0, '2023-08-10', '2023-09-07', 3),
(29, 'Sathi Chai Ka', '', '55_Sathi_Chai_Ka-Rusk.jpg', '61_Sathi_Chai_Ka-Rusk.jpg', 0, 0, 1, 0.0, '2023-08-10', '2023-09-07', 3),
(30, 'Mocktails', '', '90_Mocktails-Guava_Chilli111.jpg', '', 0, 0, 1, 0.0, '2023-08-10', '2023-09-07', 3),
(31, 'Coffee', '', '6_Vanilla_Coffee_With_Milk12255.jpg', '', 0, 0, 1, 0.0, '2023-08-10', '2023-09-07', 3),
(32, 'Cold Drinks', '', '45_juices.jpg', '', 0, 0, 1, 0.0, '2023-08-10', '2023-09-07', 3),
(33, 'Disposable Items', '', '', '', 0, 0, 1, 0.0, '2023-12-27', '2023-12-27', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_details`
--

CREATE TABLE `cms_details` (
  `id` tinyint(1) NOT NULL,
  `AboutUs` text DEFAULT NULL,
  `PrivacyPolicy` text DEFAULT NULL,
  `Shipping` text DEFAULT NULL,
  `Cancellation` text DEFAULT NULL,
  `Terms_Condition` longtext DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_details`
--

INSERT INTO `cms_details` (`id`, `AboutUs`, `PrivacyPolicy`, `Shipping`, `Cancellation`, `Terms_Condition`, `Photo`) VALUES
(1, '<h3 style=\"text-align:justify\"><strong>Founded in 1986, I.D. Jewelry, LLC, a family owned &amp; operated business has become a house-hold name in states all over the USA as well as countries all over the world.</strong></h3>\r\n\r\n<p style=\"text-align:justify\">For those that rather the full immersion of the in store experience we welcome your company and look forward to meeting you face to face. Being located in the 47 street diamond district, known to be the largest diamond.</p>\r\n\r\n<p style=\"text-align:justify\">Based in the heart of New York&rsquo;s Diamond District, also known as the NYC diamond district, I. D. Jewelry has some of the most competitively priced in the market. It is our goal to supply our clients.</p>', '', '', '', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Our Terms and Conditions for Retail Services:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Customers satisfaction is our first priority. In fact, we treat your laundry as if it were our own, however we still need to agree to some rules to ensure that there are no misunderstandings about Modern Dhobi Laundry Services (referred to as &ldquo;we,&rdquo; &ldquo;us,&rdquo; &ldquo;our&rdquo;, or &ldquo;M0dern Dhobi Laundry Services&rdquo;) or your obligations and responsibilities. By using our service, you acknowledge and accept the following Terms and Conditions.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Suitability for Laundering:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">By using our service, you agree that your clothes are suitable to be washed in cold/warm water, and dried using heat in a tumble dryer. We cannot be responsible for any damage to clothing that is not suitable for this standard laundering process.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Damaged Laundry:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Best clothing treatment is taken care to avoid damaging your laundry. Unfortunately, there are limitations to what we can do. For example, we don&rsquo;t have time to check your pockets to see if you have left anything in them. Therefore, we can&rsquo;t be held responsible if something left in your laundry (like nail polish, chewing gum, or a pen) causes any damage. Similarly, if you call and tell us that you left your favourite ring, or anything else, in your pocket, we can&rsquo;t guarantee that we will find or be able to return it.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">It is not possible for us to inspect every item for damage or its prior condition upon receiving it. We wash many articles of clothing that are damaged in some form or another for customers every day. You the customer therefore agree to not hold us liable for any damages based on the condition of clothing after we deliver it back to you, as a condition of using our services. If you do not accept these terms in full then you can cancel your order without penalty up to one hour prior to your pick-up time. After you have us pick-up your laundry, you agree to accept these terms in full and agree to not hold us liable for any damages. We still want to be sure there isn&rsquo;t something we did to cause any damage so if you find something you didn&rsquo;t recognize prior, we need to hear from you within 12 hrs of delivery in order for us to investigate it promptly. We reserve the right, at our own discretion, to reimburse someone for up to 10 times the cost of what we charged to wash a particular article. If we choose to do this, you will need to be able to provide proof of purchase with a written copy of the receipt.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">All laundering processes, regardless of how gentle, cause normal wear and tear on clothing. As a result, we cannot be responsible for any wear and tear of laundry, including loss of buttons, fading, fatiguing, holes, or abrasions. Similarly, we reserve the right to decline cleaning any particular piece of laundry if we think it will lead to trouble.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Cleaning and drying laundry also creates other risks. As stated earlier, we do not individually examine every garment prior to placing it in the laundry. Therefore, if something is &ldquo;dry-clean only,&rdquo; or otherwise unsuitable for common washing and drying techniques, please do not include it in the laundry you give to us.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We wash all items together as our standard procedure. If you prefer, and notify us ahead of time, we can wash items separately. It is preferred you separate before dropping your clothes off however we can also do the separation for you. Both of these services incur an additional fee. Along the same lines, we can&rsquo;t be held responsible for the re-disposition of colors (aka bleeding) or dimensional changes (aka shrinking or stretching).</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Stain Removal</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We do NOT offer stain removal services however we do offer a &ldquo;Colour Safe&rdquo; bleach alternative that is made for tough stains and we can add that if requested into your order. Many common stains do come out during our normal washing however we make no claims or guarantees that we will be able to remove any of them as we only provide basic washing and drying services.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Lost Laundry:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We would love to be able to inventory every piece of laundry you give us. Unfortunately, it is cost-prohibitive for us to do so. As a result, we can&rsquo;t be held responsible for any lost laundry; we simply have no efficient way of verifying that we actually received any particular piece of laundry in the first place. Rest assured though, we carefully track your clothes. For instance, we tag your clothes with your sales slip, and your clothes are never lose in our facility unless they&rsquo;re inside a machine, on the folding table with us present, or locked in our office. If you do believe you are missing something from your delivery, please notify us within <span style=\"color:red\">6 hours</span> of receiving your clean clothes back &mdash; we are much more likely to find misplaced laundry if it is reported early. You agree that by using our services that if you are not home during delivery, that it is OK for us to leave your order by the front door or to the neighbours. You further agree that any loss, stolen, or damaged laundry as a result of the pick-up or delivery process is not our fault and you agree that you accept full responsibility for your laundry during these times.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Cancelation Policy or Minimum Policy:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We do have a minimum weight limit for &ldquo;drop off&rdquo; laundry (if you drop it off at our store) of 5kg or 500 Rs. If you have less than 5kg., we&rsquo;re happy to wash your clothes but you will be charged for the minimal 5kg. fee. With our &ldquo;Free Pick Up and Delivery Service,&rdquo; we have a minimum 500 Rs order amount per visit. If you cancel your order after we have already picked up your laundry you will still be charged this minimum 250 Rs fee in order to cover the cost of returning the laundry to you without servicing it. Please take the time to weigh your clothes ahead of time so that you know what to expect regarding cost before placing an order and agreeing to both these terms/conditions as well as our pricing.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Pick-up and Delivery Scheduling:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Modern Dhobi Laundry Services provides pick-up and delivery service between Concord and Discovery Bay and every City in between these two. We will do our best to pick-up your laundry at the agreed upon time however sometimes things beyond our control (road traffic or raining season or an accident) can cause delays. We don&rsquo;t want to be late however we can&rsquo;t be held accountable if we are late for unforeseen circumstances. Similarly, we hope that you will strive to be on-time for our pick-ups and deliveries. If you do miss a pick-up or delivery, we will try to coordinate an alternate time as soon as possible.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">A No Show is when we show up to your door, but you and your laundry aren&rsquo;t around. In the case of a Now Show, we reserve the right to charge a No Show fee. Keep in mind, there&rsquo;s no fee if you cancel or reschedule 4 hours before the start of your pick-up or delivery time.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Unattended Pick-up and Delivery:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">If you request that we leave your laundry unattended (e.g., on your porch, in a hallway, or in your foyer) or with a third party (e.g., with a doorman or a neighbour), we are not responsible for your laundry before we have picked it up or after we have dropped it off. You also agree that our records of pick-up and drop-off times are true and accurate.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Allergies:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We offer and use &ldquo;All Free and Clear&rdquo; detergent for customers with sensitive skin. However, we do wash clothes in shared washing machines where other detergents may have been used, and it is possible that small amounts of other detergents, which may not be hypoallergenic, may not be completely rinsed out of these washing machines.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Refund Policy:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Before you commit to using our &ldquo;drop off&rdquo; service we weigh your clothes to tell you what the cost will be ahead of time. If you agree to use our services at that point, then we expect payment before washing your clothes.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">If you choose to use our &ldquo;Free Pick-Up and Delivery&rdquo; Service, then you can weigh your clothes and estimate their weight/price before choosing to proceed with your order online. Once we receive your order back at our store, we will go through your laundry looking to be sure there are no items you missed like comforters, blankets, sleeping bags, and rugs which are priced by the item and NOT by any other standard. We reserve the right to then modify the price on your order and continue washing the clothes/items and charge you appropriately. Although we truly hope you are satisfied with our services, once we have laundered your clothes, we cannot offer a refund. Additionally, once we pick up your clothes there is a minimum fee (see minimum fee section above).</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Privacy Policy:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We collect information from you when you register on our site or when you talk to one of our employees. When ordering or registering on our web site, as appropriate, you may be asked for information like your name, e-mail address, home address, phone number and credit card information. We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or other&rsquo;s rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Coupons &amp; Discounts:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Coupon can only be applied by customer using Modern Dhobi Laundry Services mobile app on available platform.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Once order placed, and invoice is generated coupon can&#39;t be applied.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">No two or more discounts / coupons / offers can be clubbed together.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Miscellaneous:</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">As our business changes, we may want to modify some of terms in this agreement. Therefore, we encourage you to check back frequently to familiarize yourself with any changes.</span></span></p>\r\n', '26_about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Oname` varchar(100) NOT NULL,
  `Phone1` varchar(100) NOT NULL,
  `Phone2` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `EmailId2` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Files` varchar(100) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `BankName` varchar(100) NOT NULL,
  `BranchName` varchar(100) NOT NULL,
  `AccName` varchar(100) NOT NULL,
  `AccNo` varchar(100) NOT NULL,
  `Ifsc` varchar(100) NOT NULL,
  `Instamojo` varchar(1000) NOT NULL,
  `Gpay` varchar(100) NOT NULL,
  `Files2` varchar(100) NOT NULL,
  `Phonepay` varchar(100) NOT NULL,
  `Files3` varchar(100) NOT NULL,
  `Facebook` text NOT NULL,
  `Google` text NOT NULL,
  `Twitter` text NOT NULL,
  `Linkedin` text NOT NULL,
  `Pinterest` text NOT NULL,
  `Instagram` text NOT NULL,
  `GoogleMap` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `Sname`, `Oname`, `Phone1`, `Phone2`, `EmailId`, `EmailId2`, `Address`, `Files`, `FileName`, `BankName`, `BranchName`, `AccName`, `AccNo`, `Ifsc`, `Instamojo`, `Gpay`, `Files2`, `Phonepay`, `Files3`, `Facebook`, `Google`, `Twitter`, `Linkedin`, `Pinterest`, `Instagram`, `GoogleMap`) VALUES
(1, 'Maha Buddy', '-', '9730445152', '9730445152', 'info@mahabuddy.com', '', 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', '25_3.jpeg', '3.jpeg', 'SBI', 'SHANTINAGAR', 'The Pets Park', '37183765682', 'SBIN0017638', '', '', '3_petsparkcode.jpeg', '7767900053', '3_petsparkcode.jpeg', '#', '#', '#', '#', '#', '#', '');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_orders`
--

CREATE TABLE `confirm_orders` (
  `id` bigint(20) NOT NULL,
  `Ordid` bigint(20) NOT NULL,
  `OrdNo` varchar(100) NOT NULL,
  `VedId` int(11) NOT NULL,
  `EmpId` int(11) NOT NULL,
  `ConfirmDate` date NOT NULL,
  `ConfirmTime` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `DispatchStatus` int(11) NOT NULL,
  `DispatchDate` date NOT NULL,
  `DispatchTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirm_orders`
--

INSERT INTO `confirm_orders` (`id`, `Ordid`, `OrdNo`, `VedId`, `EmpId`, `ConfirmDate`, `ConfirmTime`, `Status`, `DispatchStatus`, `DispatchDate`, `DispatchTime`) VALUES
(1, 12, '', 0, 8, '2021-11-01', '11:42 pm', 1, 0, '0000-00-00', ''),
(2, 13, '', 0, 8, '2021-11-01', '11:50 pm', 1, 0, '0000-00-00', ''),
(3, 23, '', 0, 8, '2021-12-15', '11:56 pm', 1, 0, '0000-00-00', ''),
(4, 5, '', 0, 5, '2023-05-05', '05:52 pm', 1, 0, '0000-00-00', ''),
(5, 32, '', 0, 0, '2024-01-19', '12:52 pm', 1, 0, '0000-00-00', ''),
(6, 39, '#10645239', 0, 0, '2024-01-19', '12:52 pm', 1, 0, '0000-00-00', ''),
(7, 45, '#61820345', 0, 0, '2024-01-19', '12:52 pm', 1, 0, '0000-00-00', ''),
(8, 48, '#36388548', 0, 0, '2024-03-25', '02:31 pm', 1, 0, '0000-00-00', ''),
(9, 50, '#100050', 0, 0, '2024-04-18', '10:42 am', 1, 0, '0000-00-00', ''),
(10, 52, '#100052', 0, 0, '2024-04-18', '10:46 am', 1, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `crop_image`
--

CREATE TABLE `crop_image` (
  `id` int(11) NOT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SrNo` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `id` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `AreaId` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`id`, `UserId`, `Fname`, `Lname`, `Phone`, `EmailId`, `CountryId`, `StateId`, `CityId`, `AreaId`, `Address`, `Pincode`, `Status`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 8, 'Testing Franchise', '', '8149693719', 'testing@gmail.com', 0, 1, 0, 0, 'Nandanvan,Nagpur', '', 1, '2025-09-17', 0),
(2, 9, 'Godown 1', '', '9977665544', '', 0, 0, 0, 0, 'Nagpur', '', 1, '2025-09-17', 0),
(3, 10, 'Ashwini Production', '', '8866557744', '', 0, 0, 0, 0, 'Nagpur', '', 1, '2025-09-17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Roll` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `Name`, `Photo`, `Status`, `Roll`) VALUES
(25, '', '14_4756_brand_story.jpg', 1, 1),
(26, '', '32_8554_3.jpg', 1, 1),
(27, '', '70_1526_mission_and_vision.jpg', 1, 1),
(28, '', '14_4756_brand_story.jpg', 1, 2),
(29, '', '32_8554_3.jpg', 1, 2),
(30, '', '70_1526_mission_and_vision.jpg', 1, 2),
(31, '', '14_4756_brand_story.jpg', 1, 4),
(32, '', '32_8554_3.jpg', 1, 4),
(33, '', '70_1526_mission_and_vision.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `srno` float(14,1) NOT NULL,
  `OrderNo` varchar(100) NOT NULL,
  `UserId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `Roll` tinyint(1) NOT NULL,
  `CityId` int(11) NOT NULL,
  `AddressId` int(11) NOT NULL,
  `OrderTotal` float(14,2) NOT NULL,
  `ShippingCharge` float(14,2) NOT NULL,
  `ServiceFee` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(10) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `CouponCode` varchar(255) DEFAULT NULL,
  `Promoprice` float(14,2) DEFAULT NULL,
  `SevenDaysFree` float(14,2) DEFAULT NULL,
  `PaymentMethod` int(11) NOT NULL,
  `DeliveryMethod` tinyint(1) NOT NULL,
  `RightSph` varchar(100) DEFAULT NULL,
  `RightCyl` varchar(100) DEFAULT NULL,
  `RightAxis` varchar(100) DEFAULT NULL,
  `LeftSph` varchar(100) DEFAULT NULL,
  `LeftCyl` varchar(100) DEFAULT NULL,
  `LeftAxis` varchar(100) DEFAULT NULL,
  `File` varchar(100) DEFAULT NULL,
  `Type` varchar(255) DEFAULT 'Cart',
  `Status` int(11) NOT NULL,
  `OrderProcess` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` varchar(100) NOT NULL,
  `DelieverDate` date NOT NULL,
  `DelieverTime` varchar(100) NOT NULL,
  `CancelMessage` text NOT NULL,
  `CancelDate` date NOT NULL,
  `CancelTime` varchar(100) NOT NULL,
  `ConfirmDate` date NOT NULL,
  `ConfirmTime` varchar(100) NOT NULL,
  `DispatchDate` date NOT NULL,
  `DispatchTime` varchar(100) NOT NULL,
  `Step2` varchar(500) DEFAULT NULL,
  `Step3` varchar(500) DEFAULT NULL,
  `Step4` varchar(500) DEFAULT NULL,
  `Step2Date` datetime DEFAULT NULL,
  `Step3Date` datetime DEFAULT NULL,
  `Step4Date` datetime DEFAULT NULL,
  `Step2By` int(11) NOT NULL,
  `Step3By` int(11) NOT NULL,
  `Step4By` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `PaymentStatus` tinyint(1) NOT NULL,
  `PaymentId` varchar(255) DEFAULT NULL,
  `PaymentReceipt` varchar(255) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaStatus` tinyint(1) NOT NULL,
  `PaidAmt` float(14,2) NOT NULL,
  `PayStatus` tinyint(1) NOT NULL DEFAULT 1,
  `WalletAmt` float(14,2) DEFAULT NULL,
  `CashbackAmt` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reason`
--

CREATE TABLE `order_cancel_reason` (
  `id` int(11) NOT NULL,
  `Reasons` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `OrderNo` varchar(100) NOT NULL,
  `UserId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductCode` varchar(100) NOT NULL,
  `SizeId` int(11) NOT NULL,
  `RamId` int(11) NOT NULL,
  `StorageId` int(11) NOT NULL,
  `ColorId` int(11) NOT NULL,
  `Rate` float(14,2) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float(14,2) NOT NULL,
  `Repeats` varchar(100) DEFAULT NULL,
  `Daily` varchar(255) DEFAULT NULL,
  `WeekDays` varchar(255) DEFAULT NULL,
  `Weekends` varchar(255) DEFAULT NULL,
  `Recharge` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `Type` varchar(100) NOT NULL DEFAULT 'Cart',
  `OrderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `Name`, `Status`) VALUES
(1, 'Order Delivered', 1),
(2, 'In Progress', 1),
(3, 'Order Cancel', 1),
(4, 'Order Confirmed', 1),
(5, 'Order Dispatch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `Name`, `Status`) VALUES
(1, 'Cash On Delivery', 0),
(2, 'Online', 0),
(3, 'Online', 1),
(4, 'Wallet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `VedId` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Details` text NOT NULL,
  `Highlight1` text NOT NULL,
  `Highlight2` text NOT NULL,
  `Highlight3` text NOT NULL,
  `Highlight4` text NOT NULL,
  `Highlight5` text NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` int(11) NOT NULL,
  `BrandId` int(11) NOT NULL,
  `NameSize` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `NameColor` int(11) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `NameStorage` int(11) NOT NULL,
  `Storage` int(11) NOT NULL,
  `NameRam` int(11) NOT NULL,
  `Ram` int(11) NOT NULL,
  `BatchCode` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `MinPrice` float(14,2) NOT NULL,
  `MaxPrice` float(14,2) NOT NULL,
  `OfferPrice` float(14,2) NOT NULL,
  `OfferPer` int(11) NOT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Points` int(11) NOT NULL,
  `Tax` float(14,2) NOT NULL,
  `Cashback` varchar(100) NOT NULL,
  `Featured` int(11) NOT NULL,
  `FreeShipping` int(11) NOT NULL,
  `Bestseller` int(11) NOT NULL,
  `Trending` int(11) NOT NULL,
  `Subscription` tinyint(1) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `ItemStock` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `SGST` float(14,2) NOT NULL,
  `CGST` float(14,2) NOT NULL,
  `IGST` float(14,2) NOT NULL,
  `Status` int(11) NOT NULL,
  `DeliveryInfo` text NOT NULL,
  `Offers` text NOT NULL,
  `Pune` tinyint(1) NOT NULL,
  `Dhule` tinyint(1) NOT NULL,
  `Ahemadnagar` tinyint(1) NOT NULL,
  `Shirpur` tinyint(1) NOT NULL,
  `Mumbai` tinyint(1) NOT NULL,
  `Panvel` tinyint(1) NOT NULL,
  `MetaTag` text NOT NULL,
  `MetaDesc` text NOT NULL,
  `Keywords` text NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `roll` tinyint(1) NOT NULL DEFAULT 1,
  `DdsOffers` text DEFAULT NULL,
  `MinQty` int(11) NOT NULL DEFAULT 1,
  `ProdFor` tinyint(1) NOT NULL DEFAULT 1,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `PurchaseProdPrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `Files` varchar(100) NOT NULL,
  `FileName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qsr_exit_interviews`
--

CREATE TABLE `qsr_exit_interviews` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `location_branch` varchar(100) DEFAULT NULL,
  `date_of_exit` date DEFAULT NULL,
  `interviewer` varchar(100) DEFAULT NULL,
  `employment_duration` varchar(50) DEFAULT NULL,
  `motivation` text DEFAULT NULL,
  `enjoyed_most` text DEFAULT NULL,
  `job_challenges` text DEFAULT NULL,
  `work_culture` varchar(20) DEFAULT NULL,
  `relation_manager` varchar(20) DEFAULT NULL,
  `relation_team` varchar(20) DEFAULT NULL,
  `training_support` text DEFAULT NULL,
  `salary_satisfaction` varchar(10) DEFAULT NULL,
  `meals_fair` text DEFAULT NULL,
  `reason_for_leaving` varchar(100) DEFAULT NULL,
  `retain_suggestion` text DEFAULT NULL,
  `improve_employee_satisfaction` text DEFAULT NULL,
  `improve_operations` text DEFAULT NULL,
  `improve_customer_service` text DEFAULT NULL,
  `rejoin_future` varchar(10) DEFAULT NULL,
  `final_comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `id` bigint(20) NOT NULL,
  `srno` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `AttrNameSize` int(11) NOT NULL,
  `AttrValueSize` int(11) NOT NULL,
  `AttrNameRam` int(11) NOT NULL,
  `AttrValueRam` int(11) NOT NULL,
  `AttrNameStorage` int(11) NOT NULL,
  `AttrValueStorage` int(11) NOT NULL,
  `MinPrice` float(14,2) NOT NULL,
  `MaxPrice` float(14,2) NOT NULL,
  `OfferPrice` float(14,2) NOT NULL,
  `OfferPer` varchar(100) NOT NULL,
  `ItemStock` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `roll` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_price`
--

CREATE TABLE `shipping_price` (
  `id` int(11) NOT NULL,
  `OrderPrice` float(14,2) NOT NULL,
  `ShippingPrice` float(14,2) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shipping_price`
--

INSERT INTO `shipping_price` (`id`, `OrderPrice`, `ShippingPrice`, `Status`) VALUES
(1, 1000.00, 60.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories`
--

CREATE TABLE `tbl_accessories` (
  `id` int(11) NOT NULL,
  `AccName` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accessories`
--

INSERT INTO `tbl_accessories` (`id`, `AccName`, `Price`, `Details`, `Photo`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(3, 'duct 400 motor coolman 15\"', 2200.00, '', '', 1, 1, '2022-12-07', 0, NULL),
(4, 'wheels', 100.00, '', '', 1, 1, '2022-12-07', 0, NULL),
(5, 'cool man', 1000.00, '', '', 1, 1, '2023-01-31', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories_sell`
--

CREATE TABLE `tbl_accessories_sell` (
  `id` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Gname` varchar(255) DEFAULT NULL,
  `Gphone` varchar(100) DEFAULT NULL,
  `Gname2` varchar(255) DEFAULT NULL,
  `Gphone2` varchar(100) DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ProdDetails` text DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `TotalAmt` float(14,2) DEFAULT NULL,
  `ProcFees` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `DownPayment` float(14,2) DEFAULT NULL,
  `Balance` float(14,2) DEFAULT NULL,
  `EmiMonth` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ProductNo` varchar(100) DEFAULT NULL,
  `CatName` varchar(255) DEFAULT NULL,
  `BrandName` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelNo` varchar(100) DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL DEFAULT 1,
  `PayMode` varchar(255) DEFAULT NULL,
  `ScrapProdDetails` text DEFAULT NULL,
  `BranchId` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `AgentName` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accessories_sell`
--

INSERT INTO `tbl_accessories_sell` (`id`, `CustId`, `CustName`, `CellNo`, `Address`, `Gname`, `Gphone`, `Gname2`, `Gphone2`, `InvoiceNo`, `InvoiceDate`, `PayType`, `CatId`, `BrandId`, `ProductId`, `ProdDetails`, `Qty`, `Price`, `SubTotal`, `Discount`, `TotalAmt`, `ProcFees`, `Total`, `DownPayment`, `Balance`, `EmiMonth`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `ProductNo`, `CatName`, `BrandName`, `ProductName`, `ModelNo`, `ProdType`, `PayMode`, `ScrapProdDetails`, `BranchId`, `ExeId`, `AgentName`) VALUES
(1, 4, 'tidke enterpries bhandara', '', 'bhandara', '', '', '', '', '1', '2022-12-07', 'Cash', 0, 0, 0, '', 0, 0.00, 2600.00, 0.00, 2600.00, 0.00, 0.00, 0.00, 0.00, 0, 'old pending duct 400 motor and 4 wheel set', 1, 1, '2022-12-07', NULL, NULL, '', '', '', '', '', 0, NULL, '', 2, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories_stock`
--

CREATE TABLE `tbl_accessories_stock` (
  `id` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `AccId` int(11) NOT NULL,
  `AccName` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CrDr` varchar(10) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories_stock_invoice`
--

CREATE TABLE `tbl_accessories_stock_invoice` (
  `id` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `TotQty` int(11) NOT NULL,
  `DmNo` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_head`
--

CREATE TABLE `tbl_account_head` (
  `id` int(11) NOT NULL,
  `Code` varchar(20) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_account_head`
--

INSERT INTO `tbl_account_head` (`id`, `Code`, `Name`, `Status`) VALUES
(1, 'AC1', 'Comapny Account', 1),
(2, 'AC2', 'Tea', 1),
(3, 'AC3', 'Petrol', 1),
(4, 'AC4', 'MEDICINE', 1),
(5, 'AC5', 'STATIONARY', 1),
(6, 'AC6', 'ELECTRIC BILL', 1),
(7, 'AC7', 'OFFICE RENT', 1),
(8, 'AC8', 'INTERNET   RECHARGE', 1),
(9, 'AC9', 'ALHIND RECHARGE', 1),
(10, 'AC10', 'AMAN SALLARY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ac_charges`
--

CREATE TABLE `tbl_ac_charges` (
  `id` int(11) NOT NULL,
  `Percentage` varchar(100) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ac_charges`
--

INSERT INTO `tbl_ac_charges` (`id`, `Percentage`, `push_flag`, `delete_flag`, `modified_time`) VALUES
(1, '20', 0, 0, '2024-08-24 20:40:28.000'),
(2, '30', 1, 1, '2024-09-19 13:10:14.000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_payment_details`
--

CREATE TABLE `tbl_advance_payment_details` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ReqId` int(11) NOT NULL,
  `PayDate` date DEFAULT NULL,
  `PayMode` varchar(10) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `UtrNo` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_request`
--

CREATE TABLE `tbl_advance_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `OutletName` varchar(100) DEFAULT NULL,
  `BankAccNo` varchar(50) DEFAULT NULL,
  `IfscCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary`
--

CREATE TABLE `tbl_advance_salary` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `AdvanceDate` date DEFAULT NULL,
  `TotalDays` varchar(50) DEFAULT NULL,
  `PresentDay` varchar(50) DEFAULT NULL,
  `AbsentDay` varchar(50) DEFAULT NULL,
  `TotalSalary` varchar(50) DEFAULT NULL,
  `AdvanceSalary` varchar(50) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MannagerComment` text DEFAULT NULL,
  `MannagerApproveDate` date DEFAULT NULL,
  `HrBy` int(11) NOT NULL,
  `HrStatus` tinyint(1) NOT NULL,
  `HrComment` text DEFAULT NULL,
  `HrApproveDate` date DEFAULT NULL,
  `AccBy` int(11) NOT NULL,
  `AccPaidStatus` tinyint(1) NOT NULL,
  `AccPaidDate` date DEFAULT NULL,
  `AccComment` text DEFAULT NULL,
  `PayAmount` float(14,2) DEFAULT NULL,
  `PayMode` varchar(10) DEFAULT NULL,
  `UtrNo` varchar(50) DEFAULT NULL,
  `EmpCode` varchar(100) DEFAULT NULL,
  `OutletName` varchar(100) DEFAULT NULL,
  `BankAccNo` varchar(50) DEFAULT NULL,
  `IfscCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allocated_fr_prd`
--

CREATE TABLE `tbl_allocated_fr_prd` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `checkstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allocated_fr_raw_prd`
--

CREATE TABLE `tbl_allocated_fr_raw_prd` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `checkstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_allocated_fr_raw_prd`
--

INSERT INTO `tbl_allocated_fr_raw_prd` (`id`, `ProdId`, `FrId`, `checkstatus`) VALUES
(304142, 412, 7002, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allocate_cat_ids`
--

CREATE TABLE `tbl_allocate_cat_ids` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `prodid` int(11) NOT NULL,
  `frid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allocate_cust_products`
--

CREATE TABLE `tbl_allocate_cust_products` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` varchar(10) NOT NULL DEFAULT '0',
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `MinPrice` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL,
  `Assets` tinyint(1) NOT NULL,
  `QrDisplay` varchar(10) NOT NULL DEFAULT 'No',
  `MinQty` varchar(50) DEFAULT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `checkstatus` tinyint(1) NOT NULL DEFAULT 1,
  `tempstatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applied_code`
--

CREATE TABLE `tbl_applied_code` (
  `id` int(11) NOT NULL,
  `Oid` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_applied_code`
--

INSERT INTO `tbl_applied_code` (`id`, `Oid`, `UserId`, `Code`, `Amount`, `CreatedDate`) VALUES
(1, 0, 19, 'MILK7D', 0.00, '2022-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_area`
--

CREATE TABLE `tbl_area` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CountryId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `WarrantyDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `OtherName` varchar(255) DEFAULT NULL,
  `asset_id` varchar(100) DEFAULT NULL COMMENT 'Asset ID/Serial Number',
  `asset_name` varchar(255) NOT NULL COMMENT 'Asset Name/Description',
  `asset_category` varchar(255) NOT NULL COMMENT 'Asset Category',
  `acquisition_date` date DEFAULT NULL COMMENT 'Date of Acquisition',
  `purchase_cost` decimal(10,2) DEFAULT NULL COMMENT 'Purchase Cost',
  `supplier_name` varchar(255) DEFAULT NULL COMMENT 'Supplier/Vendor Name',
  `supplier_contact_number` varchar(15) DEFAULT NULL COMMENT 'Supplier/Vendor Contact Number',
  `invoice_number` varchar(255) DEFAULT NULL COMMENT 'Invoice/Order Number',
  `location` varchar(255) DEFAULT NULL COMMENT 'Current Location of Asset',
  `department` varchar(255) DEFAULT NULL COMMENT 'Department/Unit',
  `assigned_person` varchar(255) DEFAULT NULL COMMENT 'Assigned Person',
  `assigned_date` date DEFAULT NULL COMMENT 'Assigned Date',
  `transfer_date` date DEFAULT NULL COMMENT 'Transfer Date',
  `transfer_employee` varchar(255) DEFAULT NULL COMMENT 'Transfer to Employee',
  `transfer_location` varchar(255) DEFAULT NULL COMMENT 'Transfer to Other Location',
  `transfer_asset_id` int(11) NOT NULL,
  `transfer_asset_name` varchar(255) NOT NULL,
  `transfer_assigned_person` varchar(255) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_contact` varchar(50) NOT NULL,
  `asset_qty` varchar(20) DEFAULT NULL,
  `transfer_asset_qty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asset_category`
--

CREATE TABLE `tbl_asset_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `srno` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_fr_to_zone`
--

CREATE TABLE `tbl_assign_fr_to_zone` (
  `id` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `frids` text DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_assign_fr_to_zone`
--

INSERT INTO `tbl_assign_fr_to_zone` (`id`, `zone`, `frids`, `createddate`, `createdby`, `modifiedby`, `modifieddate`) VALUES
(1, 1, '253,344,357,385,499,520,522,523,621,702,717,962,964,1184,1370,1371,1372,1412,1547,1765,1801,1949,2001,2088,2382,2391,2392,2486,2661,2695,3323,3467,3468,3469,3471,4572,4575,4577,4578,4579,4834,5333,5334,5335,5447,5448,6057,6061,6064,6069,6379,6380', '2024-11-22 20:29:16', 2650, 5, '2025-04-08 21:22:21'),
(2, 2, '253,357,499,522,621,1184,1372,1412,1765,2001,2392,248', '2024-11-23 16:42:09', 5, 5, '2024-11-29 12:46:03'),
(3, 3, '710,717,1949,2372,2373,2382,2391,2486,2596,2661,2718,9,385,394,963,1535,1536,1538,1539,1540,1541,1542,1543,1991,2394,2428,2605,2636,2646', '2024-11-23 16:45:24', 5, 5, '2025-01-13 20:11:38'),
(4, 4, '8', '2024-11-23 16:47:55', 5, 1, '2025-09-17 14:55:49'),
(7, 7, '253,357,522,621,1184,1372,1412', '2024-12-09 14:15:15', 5, 0, NULL),
(8, 8, '499,1765,2001,2392,2695', '2024-12-13 20:45:38', 5, 5, '2025-01-05 17:05:11'),
(9, 9, '710,2372,2373,2596,2675,2688,2718,3313,3314,3315,3329,3331,3333,3468,4568,4570,4655,5338,5567,5568,5570,5660,5731,5732,5734,5742,5743,6067,963,1991,2605,2636', '2024-12-27 19:49:09', 249, 5, '2025-04-05 13:28:35'),
(10, 10, '771,4913,5336,5784,6069', '2025-04-08 21:07:56', 5, 5, '2025-04-08 21:22:37'),
(11, 12, '253,344,357,520,522,523,621,962,964,1184,1370,1371,1372,1412,1801,2088,4834', '2025-06-03 23:37:04', 2651, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` time DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Latemark` tinyint(1) NOT NULL,
  `HalfDay` tinyint(1) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Salary` float(14,2) DEFAULT NULL,
  `Type` tinyint(1) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `AttRoll` tinyint(1) NOT NULL COMMENT '0:Morning\r\n1:Evening',
  `ApproveStatus` tinyint(1) NOT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveDate` date DEFAULT NULL,
  `ApproveTime` varchar(50) DEFAULT NULL,
  `ApproveLine` varchar(50) DEFAULT NULL,
  `EndEveDateTime` datetime DEFAULT NULL,
  `HandoverAmt` varchar(100) DEFAULT '0',
  `HandoverUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance_request`
--

CREATE TABLE `tbl_attendance_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ReqDate` date DEFAULT NULL,
  `NoticePeriod` varchar(50) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `MrgBy` int(11) NOT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MannagerComment` text DEFAULT NULL,
  `MannagerApproveDate` date DEFAULT NULL,
  `HrBy` int(11) NOT NULL,
  `HrStatus` tinyint(1) NOT NULL,
  `HrComment` text DEFAULT NULL,
  `HrApproveDate` date DEFAULT NULL,
  `AttRoll` tinyint(1) NOT NULL,
  `FromDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `Latitude` varchar(20) DEFAULT NULL,
  `Longitude` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance_tasks`
--

CREATE TABLE `tbl_attendance_tasks` (
  `id` int(11) NOT NULL,
  `AttId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Task` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(20) DEFAULT NULL,
  `Latitude` varchar(20) DEFAULT NULL,
  `Longitude` varchar(20) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Type` tinyint(1) NOT NULL,
  `AttRoll` tinyint(1) NOT NULL,
  `TaskDone` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit_category`
--

CREATE TABLE `tbl_audit_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Featured` int(11) NOT NULL,
  `Service` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit_questions`
--

CREATE TABLE `tbl_audit_questions` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_balance_ved_expenses`
--

CREATE TABLE `tbl_balance_ved_expenses` (
  `id` int(11) NOT NULL,
  `expid` int(11) NOT NULL,
  `vedid` int(11) NOT NULL,
  `amount` float(14,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banks`
--

CREATE TABLE `tbl_banks` (
  `id` int(11) NOT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccNo` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_banks`
--

INSERT INTO `tbl_banks` (`id`, `BankName`, `AccNo`, `Status`) VALUES
(1, 'HDFC BANK', '50200051016084', 1),
(2, 'BANK OF MAHARASHTRA', '60456334947', 1),
(3, 'UCO BANK', '00220210004722', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_details`
--

CREATE TABLE `tbl_bank_details` (
  `id` int(11) NOT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `AccountNo` varchar(50) DEFAULT NULL,
  `Branch` varchar(100) DEFAULT NULL,
  `IfscCode` varchar(50) DEFAULT NULL,
  `Status` smallint(6) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bank_details`
--

INSERT INTO `tbl_bank_details` (`id`, `AccountName`, `BankName`, `AccountNo`, `Branch`, `IfscCode`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `userid`, `type`) VALUES
(1, '', '', '', '', '', 1, 1, '2025-09-17', 1, '2025-09-17', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_detail_excel_data`
--

CREATE TABLE `tbl_bank_detail_excel_data` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `AccountName` varchar(100) DEFAULT NULL,
  `AccountNo` varchar(50) DEFAULT NULL,
  `IfscCode` varchar(50) DEFAULT NULL,
  `Amount` varchar(20) DEFAULT NULL,
  `PayType` varchar(255) DEFAULT NULL,
  `PayDate` date DEFAULT NULL,
  `ExpId` varchar(100) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `Status` smallint(6) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bdm_checklist`
--

CREATE TABLE `tbl_bdm_checklist` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answertype` varchar(50) NOT NULL DEFAULT 'Text',
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bdm_checklist_records`
--

CREATE TABLE `tbl_bdm_checklist_records` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `visitdate` date DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_machine_login`
--

CREATE TABLE `tbl_billing_machine_login` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `OpenDate` date DEFAULT NULL,
  `OpenTime` time DEFAULT NULL,
  `CloseDate` date DEFAULT NULL,
  `CloseTime` time DEFAULT NULL,
  `SyncDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billsoft_discount`
--

CREATE TABLE `tbl_billsoft_discount` (
  `id` int(11) NOT NULL,
  `Percentage` varchar(100) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill_expenses`
--

CREATE TABLE `tbl_bill_expenses` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boolet_rally`
--

CREATE TABLE `tbl_boolet_rally` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PhoneNo` varchar(50) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `PhoneNo2` varchar(50) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `AadharCard` varchar(255) DEFAULT NULL,
  `DrivingLicense` varchar(255) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bp_leads`
--

CREATE TABLE `tbl_bp_leads` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `Comment` text DEFAULT NULL,
  `ApproveBy` int(11) NOT NULL,
  `AllocateTo` int(11) NOT NULL,
  `AllocateDate` date DEFAULT NULL,
  `AllocateStatus` tinyint(1) NOT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`id`, `Name`, `Photo`, `Phone`, `Phone2`, `EmailId`, `Address`, `Status`) VALUES
(1, 'Gujrat', '', '9765074481', '', '', 'MANISH NAGAR', 1),
(2, 'Delhi', '', '9545904488', '', '', 'ASHOK SQUARE', 1),
(3, 'Nagpur', '', '9545904488', '', '', 'Nagpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch_expenses`
--

CREATE TABLE `tbl_branch_expenses` (
  `id` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_branch_expenses`
--

INSERT INTO `tbl_branch_expenses` (`id`, `BranchId`, `UserId`, `Amount`, `MgrAmount`, `AccAmount`, `ExpenseDate`, `PaymentMode`, `Photo`, `Photo2`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifedBy`, `ModifedDate`, `ApproveDate`, `MannagerComment`, `AdminApproveDate`, `ManagerStatus`, `MrgBy`, `AccBy`, `AdminStatus`, `AdminComment`, `Gst`, `ModifiedDate`, `ModifiedBy`) VALUES
(652, 1, 3, 1000.00, NULL, NULL, '2024-01-12', 'Cash', '', '', 'ddd', 0, 3, '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `srno` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `name`, `srno`, `status`, `createdby`, `createddate`, `modifiedby`, `modifieddate`) VALUES
(1, 'Haldiram', 1, 1, 2091, '2024-12-14 23:44:15', 2091, '2025-01-15 15:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancel_items`
--

CREATE TABLE `tbl_cancel_items` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `OrderNo` varchar(255) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cancel_items`
--

INSERT INTO `tbl_cancel_items` (`id`, `oid`, `OrderNo`, `Message`, `CreatedDate`, `CreatedTime`) VALUES
(1, 1, '#6797071', '1 item cancel ddd', '2022-02-02', '12:04 am'),
(2, 90, '#62157990', 'Unibic biscuits not available', '2022-09-19', '12:07 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashback_amount`
--

CREATE TABLE `tbl_cashback_amount` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_book`
--

CREATE TABLE `tbl_cash_book` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `TotalAmount` float(14,2) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `BalAmt` float(14,2) DEFAULT NULL,
  `TransferDate` date DEFAULT NULL,
  `BankId` int(11) NOT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountNo` varchar(255) DEFAULT NULL,
  `Files` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `ApproveStatus` tinyint(1) NOT NULL,
  `ApproveDate` date DEFAULT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveComment` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_handover`
--

CREATE TABLE `tbl_cash_handover` (
  `id` int(11) NOT NULL,
  `HandoverAmt` decimal(10,2) NOT NULL,
  `HandoverUserId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedDate` date NOT NULL COMMENT 'PunchOutDate',
  `CreatedTime` time NOT NULL COMMENT 'PunchOutTime',
  `CreatedAt` timestamp NULL DEFAULT current_timestamp(),
  `AttRoll` tinyint(1) NOT NULL,
  `PunchInDate` date DEFAULT NULL,
  `PunchInTime` time DEFAULT NULL,
  `Sale` float(14,2) NOT NULL,
  `FrId` int(11) NOT NULL,
  `Type` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_uses`
--

CREATE TABLE `tbl_cash_uses` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `StateId` varchar(100) NOT NULL,
  `TopCity` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `CountryId`, `Name`, `Photo`, `StateId`, `TopCity`, `Status`) VALUES
(1, 1, 'Nagpur', '', '1', 2, 1),
(2, 1, 'Wayfal-Samudhi mahamag', '', '1', 0, 1),
(3, 1, 'Kadvanchi', '', '1', 0, 1),
(4, 1, 'Greater Noida West', '', '2', 0, 1),
(5, 1, 'Nashik', '', '1', 0, 1),
(6, 1, 'Khamla', '', '1', 0, 1),
(7, 1, 'Shivni', '', '1', 0, 1),
(8, 1, 'Dawala', '', '1', 0, 1),
(9, 1, 'Goa', '', '1', 0, 1),
(10, 1, 'Renkapur', '', '1', 0, 1),
(11, 1, 'Ganeshpur', '', '1', 0, 1),
(12, 1, 'Prozone Mall (Aurangabad)', '', '1', 0, 1),
(13, 1, 'Jhansi', '', '2', 0, 1),
(14, 1, 'Goa', '', '3', 0, 1),
(15, 1, 'Dongaon (HPCL)', '', '1', 0, 1),
(16, 1, 'Nashik -BPCL', '', '1', 0, 1),
(17, 1, 'Akatwada-BPCL', '', '1', 0, 1),
(18, 1, 'Pune', '', '1', 0, 1),
(19, 1, 'Nashik (RIL)', '', '1', 0, 1),
(20, 1, 'Dongaon (BPCL)', '', '1', 0, 1),
(21, 1, 'Mandwa (Right)', '', '1', 0, 1),
(22, 1, 'Pokhari', '', '1', 0, 1),
(23, 1, 'ST Mauda', '', '1', 0, 1),
(24, 1, 'Happy Shop', '', '1', 0, 1),
(25, 1, 'Haryana', '', '4', 0, 1),
(26, 1, 'Landmark - Sitaburdi', '', '1', 0, 1),
(27, 1, 'Mandwa (Left)', '', '1', 0, 1),
(28, 1, 'Sharma Points', '', '5', 0, 1),
(29, 1, 'Mehta Brothers', '', '5', 0, 1),
(30, 1, 'Solapur', '', '1', 0, 1),
(31, 1, 'Praygraj', '', '2', 0, 1),
(32, 1, 'Sahara Airport', '', '1', 0, 1),
(33, 1, 'Wadhwa- Filling Station', '', '2', 0, 1),
(34, 1, 'Asha Hospital', '', '1', 0, 1),
(35, 1, 'Pragyraj-Kumbh Mela', '', '5', 0, 1),
(36, 1, 'Sitaburdi -Metro Station', '', '1', 0, 1),
(37, 1, 'manesar', '', '2', 0, 1),
(38, 1, 'Mandsor', '', '8', 0, 1),
(39, 1, 'Pune', NULL, '1', 0, 1),
(40, 1, 'Indore Manglia sadak', NULL, '8', 0, 1),
(41, 1, 'Bhubneshwar', '', '23', 0, 1),
(42, 1, 'Sanpada (mumbai)', '', '1', 0, 1),
(43, 1, 'Chunar', '', '2', 0, 1),
(44, 1, 'Sambhaji Nagar', '', '1', 0, 1),
(45, 1, 'Jagannath puri', '', '23', 0, 1),
(46, 1, 'Sirsa', '', '5', 0, 1),
(47, 1, 'Sai (Aurangabad)', '', '1', 0, 1),
(48, 1, 'Gundewadi', '', '1', 0, 1),
(49, 1, 'Kanpur (Ashoka Motors)', '', '2', 0, 1),
(50, 1, 'Samba', '', '36', 0, 1),
(51, 1, 'Gwalior', '', '8', 0, 1),
(52, 1, 'Noida (HO)', '', '2', 0, 1),
(53, 1, 'Ambala', '', '5', 0, 1),
(54, 1, 'Mumbai', '', '1', 0, 1),
(55, 1, 'Sirsa', '', '1', 0, 1),
(56, 1, 'Bhopal', '', '8', 0, 1),
(57, 1, 'Delhi', '', '2', 0, 1),
(58, 1, 'Raipur', '', '13', 0, 1),
(59, 1, 'Jabalpur', '', '8', 0, 1),
(60, 1, 'Guwahati', '', '11', 0, 1),
(61, 1, 'Jalna', '', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms_details`
--

CREATE TABLE `tbl_cms_details` (
  `id` tinyint(1) NOT NULL,
  `AboutUs` text DEFAULT NULL,
  `PrivacyPolicy` text DEFAULT NULL,
  `Terms_Condition` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Vision` text DEFAULT NULL,
  `Mission` text DEFAULT NULL,
  `CustomManufact` text DEFAULT NULL,
  `StockPrivate` text DEFAULT NULL,
  `ImpressivePkg` text DEFAULT NULL,
  `Fulfillment` text DEFAULT NULL,
  `Video` text DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `SocialMediaPhoto` varchar(255) DEFAULT NULL,
  `AboutUs2Photo` varchar(255) DEFAULT NULL,
  `AboutUs2Photo2` varchar(255) DEFAULT NULL,
  `JourneyPhoto` varchar(255) DEFAULT NULL,
  `JourneyPhotoMview` varchar(255) DEFAULT NULL,
  `Title1` varchar(255) DEFAULT NULL,
  `Detail1` text DEFAULT NULL,
  `Title2` varchar(255) DEFAULT NULL,
  `Detail2` text DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cms_details`
--

INSERT INTO `tbl_cms_details` (`id`, `AboutUs`, `PrivacyPolicy`, `Terms_Condition`, `Photo`, `Vision`, `Mission`, `CustomManufact`, `StockPrivate`, `ImpressivePkg`, `Fulfillment`, `Video`, `Title`, `Details`, `Photo2`, `SocialMediaPhoto`, `AboutUs2Photo`, `AboutUs2Photo2`, `JourneyPhoto`, `JourneyPhotoMview`, `Title1`, `Detail1`, `Title2`, `Detail2`, `Photo3`) VALUES
(1, '<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Since 2014, The Yash Academy, Nagpur has been at the forefront for providing quality coaching for CIVIL &amp; STATE Services Examinations conducted by The UPSC and the MPSC. Since its inception, our goal has been to provide the most comprehensive and fluid learning experience so as to inculcate the requisite attitude in the ASPIRANTS. We, at the Yash Academy, always strive to provide very precise and accurate knowledge to the Aspirants which not only helps them to crack the Examinations in the very first go itself but also helps them in terms of concept building.</p>', '<p>Since 2014, The Yash Academy, Nagpur has been at the forefront for providing quality coaching for CIVIL &amp; STATE Services Examinations conducted by The UPSC and the MPSC. Since its inception, our goal has been to provide the most comprehensive and fluid learning experience so as to inculcate the requisite attitude in the ASPIRANTS. We, at the Yash Academy, always strive to provide very precise and accurate knowledge to the Aspirants which not only helps them to crack the Examinations in the very first go itself but also helps them in terms of concept building.</p>', '17_logo33.png', '', '', 'Manufacturing custom vitamins can be a work-intense job. From formulation to sourcing to encapsulation; we can take care of everything for you at the highest quality achievable.', 'We have a large selection of pre-made supplements ready for your label and your customers to purchase. Stock pre-made supplements have a lower MOQ and shorter lead times.', 'We offer a large selection of bottles, labels, lids, boxes, etc. We understand the importance of marketing and standing out form the competition. Packaging can go a long way to achieve that.', 'After your product is complete we offer warehouse storage space and order shipping/fulfillment services. We also offer customer service options for refunds, returns, etc.', '', '', '', '', '65_img1.png', '40_55.jpg', '72_33.jpg', '16_journey14.jpg', NULL, '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_commision_note`
--

CREATE TABLE `tbl_commision_note` (
  `id` int(11) NOT NULL,
  `FinancerId` int(11) NOT NULL,
  `NoteNo` varchar(100) DEFAULT NULL,
  `NoteDate` date DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `SalesAmount` float(14,2) DEFAULT NULL,
  `NonGstSale` varchar(100) DEFAULT NULL,
  `Commision` varchar(100) DEFAULT NULL,
  `SubAmount` float(14,2) DEFAULT NULL,
  `Tds` float(14,2) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `BankRefNo` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_common_master`
--

CREATE TABLE `tbl_common_master` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Roll` tinyint(4) NOT NULL,
  `Type` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_common_master`
--

INSERT INTO `tbl_common_master` (`id`, `Name`, `Status`, `Roll`, `Type`) VALUES
(1, 'Dairy/Bakery', 1, 1, 1),
(2, 'Vegetables', 1, 1, 1),
(3, 'Water Bottles/Cans', 1, 1, 1),
(4, 'IceCream', 1, 1, 1),
(5, 'Grocery', 1, 1, 1),
(6, 'MRP Products', 1, 1, 1),
(7, 'Food Items', 1, 1, 1),
(8, 'Cleaning Material', 1, 1, 1),
(9, 'Disposable Items', 1, 1, 1),
(10, 'Gas/Petrol/Diesel', 1, 1, 1),
(11, 'Advertisements & Branding', 1, 1, 1),
(12, 'New store Opening Expenses', 1, 1, 1),
(13, 'Maintenance & Miscellaneous', 1, 1, 1),
(14, 'Kitchen Utensils', 1, 1, 1),
(15, 'Other fixed Assets', 1, 1, 1),
(16, 'Tourse and Travels', 1, 1, 1),
(17, 'Compliances', 1, 1, 1),
(18, 'Electronic Accessories', 1, 1, 1),
(19, 'Cold Drink & Ice Cream', 1, 1, 1),
(20, 'FURNITURE', 1, 1, 1),
(27, 'RENT', 1, 1, 1),
(32, 'Recuiter', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_emails`
--

CREATE TABLE `tbl_company_emails` (
  `id` int(11) NOT NULL,
  `ExpMail` varchar(100) DEFAULT NULL,
  `OrderMail` varchar(100) DEFAULT NULL,
  `AdminMail` varchar(100) DEFAULT NULL,
  `AccountMail` varchar(100) DEFAULT NULL,
  `AllMail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_company_emails`
--

INSERT INTO `tbl_company_emails` (`id`, `ExpMail`, `OrderMail`, `AdminMail`, `AccountMail`, `AllMail`) VALUES
(1, 'info@mahachaha.com', 'info@mahachaha.com', 'info@mahachaha.com', 'info@mahachaha.com', 'info@mahachaha.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_policy`
--

CREATE TABLE `tbl_company_policy` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `Pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company_policy`
--

INSERT INTO `tbl_company_policy` (`id`, `Title`, `Details`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `Pdf`) VALUES
(4, 'TRAVEL POLICY', '', 1, 2651, '2025-08-14', 2650, '0000-00-00 00:00:00', '72_Mahachai_Local_Travel_Policy_HR_Copy.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_profile`
--

CREATE TABLE `tbl_company_profile` (
  `id` int(11) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Oname` varchar(100) NOT NULL,
  `Phone1` varchar(100) NOT NULL,
  `Phone2` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `EmailId2` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Address2` text DEFAULT NULL,
  `GoogleMap` text NOT NULL,
  `Files` varchar(100) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `BankName` varchar(100) NOT NULL,
  `BranchName` varchar(100) NOT NULL,
  `AccName` varchar(100) NOT NULL,
  `AccNo` varchar(100) NOT NULL,
  `Ifsc` varchar(100) NOT NULL,
  `Instamojo` varchar(1000) NOT NULL,
  `Gpay` varchar(100) NOT NULL,
  `Files2` varchar(100) NOT NULL,
  `Phonepay` varchar(100) NOT NULL,
  `Files3` varchar(100) NOT NULL,
  `Facebook` text NOT NULL,
  `Google` text NOT NULL,
  `Twitter` text NOT NULL,
  `Linkedin` text NOT NULL,
  `Pinterest` text NOT NULL,
  `Instagram` text NOT NULL,
  `SupportNo` varchar(100) DEFAULT NULL,
  `SupportEmailId` varchar(100) DEFAULT NULL,
  `PanNo` varchar(100) DEFAULT NULL,
  `GstNo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company_profile`
--

INSERT INTO `tbl_company_profile` (`id`, `Sname`, `Oname`, `Phone1`, `Phone2`, `EmailId`, `EmailId2`, `Address`, `Address2`, `GoogleMap`, `Files`, `FileName`, `BankName`, `BranchName`, `AccName`, `AccNo`, `Ifsc`, `Instamojo`, `Gpay`, `Files2`, `Phonepay`, `Files3`, `Facebook`, `Google`, `Twitter`, `Linkedin`, `Pinterest`, `Instagram`, `SupportNo`, `SupportEmailId`, `PanNo`, `GstNo`) VALUES
(1, 'MAHACHAI', 'MAHACHAI PRIVATE LIMITED', '9730445152', '9730445152', 'info@mahabuddy.com', 'info@mahachaha.com', 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', '', '', '', '', '', 'MAHACHAI', '', '', '', '7561991981', '', '7561991981', '', '#', '#', '#', '#', '#', '#', '123456789', 'support@dorcabs.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `id` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ComplaintDate` date DEFAULT NULL,
  `Complaint` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complete_task`
--

CREATE TABLE `tbl_complete_task` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `TaskId` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `Details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_control_room`
--

CREATE TABLE `tbl_control_room` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `Details` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `Name`, `Status`) VALUES
(1, 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `MinOrder` float(14,2) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`id`, `Name`, `Price`, `MinOrder`, `Status`) VALUES
(1, 'NEW100', 199.00, 499.00, 1),
(2, 'course', 1200.00, 999.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `CouponId` int(11) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `DiscountType` enum('flat','percent') DEFAULT NULL,
  `DiscountValue` decimal(10,2) DEFAULT NULL,
  `MinOrderAmount` decimal(10,2) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `UsageLimit` int(11) DEFAULT 0,
  `Status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`CouponId`, `Code`, `DiscountType`, `DiscountValue`, `MinOrderAmount`, `StartDate`, `EndDate`, `UsageLimit`, `Status`) VALUES
(1, 'FLAT100', 'flat', 100.00, 500.00, '2025-09-01', '2025-09-30', 100, 1),
(2, 'OCT10', 'percent', 10.00, 1000.00, '2025-10-01', '2025-10-31', 200, 1),
(3, 'CLOTH20', 'percent', 20.00, 0.00, '2025-09-01', '2025-12-31', 500, 1),
(4, 'ITEM50', 'flat', 50.00, 0.00, '2025-09-01', '2025-12-31', 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_categories`
--

CREATE TABLE `tbl_coupon_categories` (
  `Id` int(11) NOT NULL,
  `CouponId` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupon_categories`
--

INSERT INTO `tbl_coupon_categories` (`Id`, `CouponId`, `CategoryId`) VALUES
(1, 1, 5),
(2, 1, 53),
(3, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_code`
--

CREATE TABLE `tbl_coupon_code` (
  `id` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `CouponFor` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `DiscountType` int(11) NOT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `PointDays` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `MinOrder` float(14,2) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupon_code`
--

INSERT INTO `tbl_coupon_code` (`id`, `Code`, `CouponFor`, `CatId`, `DiscountType`, `Discount`, `PointDays`, `Photo`, `FromDate`, `ToDate`, `MinOrder`, `Details`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, 'CREAMROLL10', 2, 29, 2, 10.00, 0, '', '2023-10-05', '2023-10-31', 500.00, '', 1, 5, '2023-10-05', 5, '2023-10-05'),
(2, 'CREAMROLL12', 1, 0, 1, 2.00, 0, '', '2023-10-05', '2024-11-29', 500.00, '', 1, 5, '2023-10-05', 5, '2024-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_products`
--

CREATE TABLE `tbl_coupon_products` (
  `Id` int(11) NOT NULL,
  `CouponId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coupon_products`
--

INSERT INTO `tbl_coupon_products` (`Id`, `CouponId`, `ProductId`) VALUES
(1, 1, 3615),
(2, 1, 3898),
(3, 1, 262);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `ColgId` int(11) DEFAULT NULL,
  `CourseCode` varchar(255) DEFAULT NULL,
  `CatId` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CoursePrice` float(14,2) DEFAULT NULL,
  `Duration` varchar(255) NOT NULL,
  `Period` tinyint(1) NOT NULL,
  `ShortDetails` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Lectures` varchar(100) DEFAULT NULL,
  `Language` varchar(100) DEFAULT NULL,
  `Deadline` varchar(100) DEFAULT NULL,
  `CourseType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_crop_image`
--

CREATE TABLE `tbl_crop_image` (
  `id` int(11) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SessionId` text DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_feedback`
--

CREATE TABLE `tbl_customer_feedback` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PhoneNo` varchar(50) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `InfoSource` varchar(255) DEFAULT NULL,
  `Outlet` text DEFAULT NULL,
  `FoodItem` text DEFAULT NULL,
  `Ambience` varchar(50) DEFAULT NULL,
  `Hygiene` varchar(50) DEFAULT NULL,
  `FoodPresent` varchar(50) DEFAULT NULL,
  `Freshness` varchar(50) DEFAULT NULL,
  `DressCode` varchar(50) DEFAULT NULL,
  `Experience` varchar(50) DEFAULT NULL,
  `Scope` varchar(50) DEFAULT NULL,
  `Recommendation` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `InvNo` varchar(255) DEFAULT NULL,
  `FrId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice`
--

CREATE TABLE `tbl_customer_invoice` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `SrNo` int(11) NOT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `CustId` int(11) NOT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `CellNo` varchar(50) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(100) DEFAULT NULL,
  `CgstPer` varchar(100) DEFAULT NULL,
  `IgstPer` varchar(100) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ExtraAmount` float(14,2) DEFAULT NULL,
  `TotalAmount` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(50) NOT NULL DEFAULT '0',
  `Discount` float(14,2) DEFAULT NULL,
  `NetAmount` float(14,2) DEFAULT NULL,
  `Advance` float(14,2) DEFAULT NULL,
  `Balance` float(14,2) DEFAULT NULL,
  `ExtraReason` text DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `PayType2` varchar(100) DEFAULT NULL,
  `ChequeNo2` varchar(100) DEFAULT NULL,
  `ChqDate2` date DEFAULT NULL,
  `BankName2` varchar(100) DEFAULT NULL,
  `UpiNo2` varchar(100) DEFAULT NULL,
  `Amount1` float(14,2) DEFAULT NULL,
  `Amount2` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` int(11) NOT NULL COMMENT '1:franchise;2:customer;',
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `OrderNo` int(11) NOT NULL,
  `KitchenStatus` tinyint(1) NOT NULL,
  `CreatedTime` time DEFAULT NULL,
  `BillNo` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ac_per` varchar(50) DEFAULT NULL,
  `ac_charges` varchar(50) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ShopFrom` varchar(50) DEFAULT NULL,
  `OrderProcess` tinyint(1) NOT NULL DEFAULT 2,
  `AddressId` int(11) NOT NULL,
  `CancelDate` date DEFAULT NULL,
  `CancelTime` varchar(100) DEFAULT NULL,
  `CancelMessage` text DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `TableNo` varchar(100) DEFAULT NULL,
  `RedeemAmount` double DEFAULT NULL,
  `RedeemStatus` int(11) NOT NULL DEFAULT 0,
  `order_instructions` text DEFAULT NULL,
  `table_id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `table_name` text NOT NULL,
  `table_alias` text NOT NULL,
  `table_label` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `CouponAmt` float(14,2) DEFAULT NULL,
  `CouponName` varchar(100) DEFAULT NULL,
  `exchange_invoice_no` varchar(100) DEFAULT NULL,
  `exchange_credit` varchar(100) DEFAULT NULL,
  `is_exchange_order` varchar(100) DEFAULT NULL,
  `exchange_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice_2025`
--

CREATE TABLE `tbl_customer_invoice_2025` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `SrNo` int(11) NOT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `CustId` int(11) NOT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `CellNo` varchar(50) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(100) DEFAULT NULL,
  `CgstPer` varchar(100) DEFAULT NULL,
  `IgstPer` varchar(100) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ExtraAmount` float(14,2) DEFAULT NULL,
  `TotalAmount` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(50) NOT NULL DEFAULT '0',
  `Discount` float(14,2) DEFAULT NULL,
  `NetAmount` float(14,2) DEFAULT NULL,
  `Advance` float(14,2) DEFAULT NULL,
  `Balance` float(14,2) DEFAULT NULL,
  `ExtraReason` text DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `PayType2` varchar(100) DEFAULT NULL,
  `ChequeNo2` varchar(100) DEFAULT NULL,
  `ChqDate2` date DEFAULT NULL,
  `BankName2` varchar(100) DEFAULT NULL,
  `UpiNo2` varchar(100) DEFAULT NULL,
  `Amount1` float(14,2) DEFAULT NULL,
  `Amount2` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` int(11) NOT NULL COMMENT '1:franchise;2:customer;',
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `OrderNo` int(11) NOT NULL,
  `KitchenStatus` tinyint(1) NOT NULL,
  `CreatedTime` time DEFAULT NULL,
  `BillNo` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ac_per` varchar(50) DEFAULT NULL,
  `ac_charges` varchar(50) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ShopFrom` varchar(50) NOT NULL,
  `OrderProcess` tinyint(1) NOT NULL DEFAULT 2,
  `AddressId` int(11) NOT NULL,
  `CancelDate` date DEFAULT NULL,
  `CancelTime` varchar(100) DEFAULT NULL,
  `CancelMessage` text DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `TableNo` varchar(100) DEFAULT NULL,
  `RedeemAmount` double DEFAULT NULL,
  `RedeemStatus` int(11) NOT NULL DEFAULT 0,
  `order_instructions` text DEFAULT NULL,
  `table_id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `table_name` text NOT NULL,
  `table_alias` text NOT NULL,
  `table_label` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `CouponAmt` float(14,2) DEFAULT NULL,
  `CouponName` varchar(100) DEFAULT NULL,
  `exchange_invoice_no` varchar(100) DEFAULT NULL,
  `exchange_credit` varchar(100) DEFAULT NULL,
  `is_exchange_order` varchar(100) DEFAULT NULL,
  `exchange_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice_details`
--

CREATE TABLE `tbl_customer_invoice_details` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `ServerInvId` int(11) NOT NULL,
  `InvId` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ActPrice` float(14,2) DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CustProd` tinyint(1) NOT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `upstatus` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice_details_2025`
--

CREATE TABLE `tbl_customer_invoice_details_2025` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `ServerInvId` int(11) NOT NULL,
  `InvId` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ActPrice` float(14,2) DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CustProd` tinyint(1) NOT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `upstatus` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice_details_temp`
--

CREATE TABLE `tbl_customer_invoice_details_temp` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `ServerInvId` int(11) NOT NULL,
  `InvId` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ActPrice` float(14,2) DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CustProd` tinyint(1) NOT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `upstatus` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_invoice_temp`
--

CREATE TABLE `tbl_customer_invoice_temp` (
  `Unqid` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `SrNo` int(11) NOT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `CustId` int(11) NOT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `CellNo` varchar(50) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(100) DEFAULT NULL,
  `CgstPer` varchar(100) DEFAULT NULL,
  `IgstPer` varchar(100) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ExtraAmount` float(14,2) DEFAULT NULL,
  `TotalAmount` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(50) NOT NULL DEFAULT '0',
  `Discount` float(14,2) DEFAULT NULL,
  `NetAmount` float(14,2) DEFAULT NULL,
  `Advance` float(14,2) DEFAULT NULL,
  `Balance` float(14,2) DEFAULT NULL,
  `ExtraReason` text DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `PayType2` varchar(100) DEFAULT NULL,
  `ChequeNo2` varchar(100) DEFAULT NULL,
  `ChqDate2` date DEFAULT NULL,
  `BankName2` varchar(100) DEFAULT NULL,
  `UpiNo2` varchar(100) DEFAULT NULL,
  `Amount1` float(14,2) DEFAULT NULL,
  `Amount2` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` int(11) NOT NULL COMMENT '1:franchise;2:customer;',
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `PrimeDiscount` float(14,2) DEFAULT NULL,
  `OrderNo` int(11) NOT NULL,
  `KitchenStatus` tinyint(1) NOT NULL,
  `CreatedTime` time DEFAULT NULL,
  `BillNo` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ac_per` varchar(50) DEFAULT NULL,
  `ac_charges` varchar(50) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ShopFrom` varchar(50) DEFAULT NULL,
  `OrderProcess` tinyint(1) NOT NULL DEFAULT 2,
  `AddressId` int(11) NOT NULL,
  `CancelDate` date DEFAULT NULL,
  `CancelTime` varchar(100) DEFAULT NULL,
  `CancelMessage` text DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `TableNo` varchar(100) DEFAULT NULL,
  `RedeemAmount` double DEFAULT NULL,
  `RedeemStatus` int(11) NOT NULL DEFAULT 0,
  `order_instructions` text DEFAULT NULL,
  `table_id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `table_name` text NOT NULL,
  `table_alias` text NOT NULL,
  `table_label` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `CouponAmt` float(14,2) DEFAULT NULL,
  `CouponName` varchar(100) DEFAULT NULL,
  `exchange_invoice_no` varchar(100) DEFAULT NULL,
  `exchange_credit` varchar(100) DEFAULT NULL,
  `is_exchange_order` varchar(100) DEFAULT NULL,
  `exchange_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_points`
--

CREATE TABLE `tbl_customer_points` (
  `id` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `total_amount` float(14,2) DEFAULT NULL,
  `rupees` float(14,2) DEFAULT NULL,
  `points` float(14,2) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `frid` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `invid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_queries`
--

CREATE TABLE `tbl_customer_queries` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Diaposition` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_query_feedback`
--

CREATE TABLE `tbl_customer_query_feedback` (
  `id` int(11) NOT NULL,
  `SellId` int(11) DEFAULT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `Diaposition` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_visits`
--

CREATE TABLE `tbl_customer_visits` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `Details` text DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  `VisitTime` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `ApprovedBy` int(11) NOT NULL,
  `ApprovedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_category`
--

CREATE TABLE `tbl_cust_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Featured` int(11) NOT NULL,
  `Service` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_category_2025`
--

CREATE TABLE `tbl_cust_category_2025` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Featured` tinyint(1) NOT NULL DEFAULT 0,
  `ProdType` int(11) NOT NULL COMMENT '0:custcat; 1:rawcat;',
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `OldNew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cust_category_2025`
--

INSERT INTO `tbl_cust_category_2025` (`id`, `Name`, `Icon`, `Photo`, `Photo2`, `Featured`, `ProdType`, `Status`, `srno`, `CreatedDate`, `ModifiedDate`, `Roll`, `CreatedBy`, `ModifiedBy`, `push_flag`, `delete_flag`, `modified_time`, `OldNew`) VALUES
(1, 'Tea', '', '', '', 0, 0, 1, 1.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:54:22.688', 0),
(2, 'Coffee', '', '', '', 0, 0, 1, 2.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:54:21.712', 0),
(3, 'Milk', '', '', '', 0, 0, 1, 3.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:54:15.356', 0),
(4, 'Tea Premixes', '', '', '', 0, 2, 1, 1.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:52:57.407', 0),
(5, 'Crockery & Cups', '', '', '', 0, 2, 1, 2.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:53:00.701', 0),
(6, 'Packaged Water', '', '', '', 0, 2, 1, 3.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:53:01.600', 0),
(7, 'Merchandise', '', '', '', 0, 2, 1, 4.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:53:04.531', 0),
(8, 'Bulk Tea & Dust', '', '', '', 0, 2, 1, 5.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:53:06.998', 0),
(9, 'Snacks & Bakery', '', '', '', 0, 2, 1, 6.0, '2025-09-17 00:00:00', NULL, 0, 0, 0, 1, 0, '2025-09-17 10:53:09.615', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_general_ledger`
--

CREATE TABLE `tbl_cust_general_ledger` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `CustPhone` varchar(20) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `GstPer` varchar(100) DEFAULT NULL,
  `CrDr` varchar(100) DEFAULT NULL,
  `Roll` tinyint(1) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `SellId` int(11) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SellType` varchar(100) NOT NULL DEFAULT 'Gold',
  `BranchId` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ChequeNo` varchar(20) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(50) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `InvId` text DEFAULT NULL,
  `UniqInvId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_products`
--

CREATE TABLE `tbl_cust_products` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` int(11) NOT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `MinPrice` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL,
  `Assets` tinyint(1) NOT NULL,
  `QrDisplay` varchar(10) NOT NULL DEFAULT 'No',
  `MinQty` varchar(50) DEFAULT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_products2`
--

CREATE TABLE `tbl_cust_products2` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `BrandId` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` varchar(10) NOT NULL DEFAULT '0',
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `MinPrice` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL,
  `Assets` tinyint(1) NOT NULL,
  `QrDisplay` varchar(10) NOT NULL DEFAULT 'No',
  `MinQty` varchar(50) DEFAULT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `checkstatus` tinyint(1) NOT NULL,
  `tempstatus` tinyint(1) NOT NULL,
  `clearprod` varchar(10) NOT NULL DEFAULT 'No',
  `SubTotal` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(20) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Division` int(11) NOT NULL,
  `Segment` int(11) NOT NULL,
  `Family` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `McDesc` int(11) NOT NULL,
  `BrandDesc` int(11) NOT NULL,
  `CrossSell` tinyint(1) NOT NULL,
  `MatchMrpProdId` int(11) NOT NULL,
  `kitchen_type` varchar(100) DEFAULT NULL,
  `OldNew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cust_products2`
--

INSERT INTO `tbl_cust_products2` (`id`, `ProdId`, `ProductName`, `BrandId`, `CatId`, `SubCatId`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `ProdPrice`, `MinPrice`, `Status`, `SrNo`, `Photo`, `code`, `CreatedDate`, `ModifiedDate`, `CreatedBy`, `ModifiedBy`, `BarcodeNo`, `StockQty`, `TempPrdId`, `Display`, `push_flag`, `delete_flag`, `modified_time`, `ProdType`, `Qty`, `Unit`, `Transfer`, `Assets`, `QrDisplay`, `MinQty`, `ProdType2`, `PurchasePrice`, `checkstatus`, `tempstatus`, `clearprod`, `SubTotal`, `DiscPer`, `Discount`, `Division`, `Segment`, `Family`, `ClassId`, `McDesc`, `BrandDesc`, `CrossSell`, `MatchMrpProdId`, `kitchen_type`, `OldNew`) VALUES
(1, 0, 'REGULAR TEA', 0, 1, '', '2.5', '2.5', '0', 0.29, 0.29, 0.00, 0.57, 11.43, 12.00, 1, 0.00, '', 'kKbppolq7G1', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 50212, 1, 0, 0, NULL, 0, NULL, '', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 12.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(2, 0, 'COFFEE', 0, 2, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'kco2K1Zfh62', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 39495, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 25.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(3, 0, 'BLACK LEMON TEA', 0, 1, '', '2.5', '2.5', '0', 0.36, 0.36, 0.00, 0.71, 14.29, 15.00, 1, 0.00, '', 'Q0Kc7hiXat3', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 92565, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 15.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(4, 0, 'LOW SUGAR TEA', 0, 1, '', '2.5', '2.5', '0', 0.36, 0.36, 0.00, 0.71, 14.29, 15.00, 1, 0.00, '', '9n9UwiJQV94', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 51150, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 15.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(5, 0, 'COLD COFFEE', 0, 2, '', '2.5', '2.5', '0', 1.43, 1.43, 0.00, 2.86, 57.14, 60.00, 1, 0.00, '', 'ofjsvB7UwA5', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 80456, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 60.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(6, 0, 'JAGGERY TEA (Gud Chai)', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'OZJYvNU75J6', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 10993, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(7, 0, 'ILAYACHI TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'PMixWxPViH7', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 58108, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(8, 0, 'LEMON GRASS GINGER', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'EZVtumr15n8', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 44278, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(9, 0, 'BLACK TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'h1ctrFg9JM9', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 78391, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(10, 0, 'CHOCOLATE', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'cwmRZTvA7k10', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 99901, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(11, 0, 'JAGGERY WITH MASALA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', '3cKh9qavOq11', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 93329, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(12, 0, 'JAGGERY WITH COFFEE', 0, 2, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'XIHsXtAkjL12', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 83971, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 25.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(13, 0, 'KESAR PISTA MILK', 0, 3, '', '2.5', '2.5', '0', 0.71, 0.71, 0.00, 1.43, 28.57, 30.00, 1, 0.00, '', 'iDp0tfZNFf13', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 57440, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 30.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(14, 0, 'TULSI TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'dHiSlWigY314', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 63663, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(15, 0, 'ROSE TEA', 0, 1, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'trAnagLDtp15', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 63754, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 25.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(16, 0, 'ICE LEMON TEA', 0, 1, '', '2.5', '2.5', '0', 0.83, 0.83, 0.00, 1.67, 33.33, 35.00, 1, 0.00, '', 'KsWoT5lobo16', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 30240, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 35.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(17, 0, 'GINGER TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'oDwjK2IpJA17', '2025-09-17 00:00:00', NULL, 0, 0, '', 0, 93395, 1, 0, 0, NULL, 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 0, 0, 'No', 20.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(18, 0, 'REGULAR TEA MASALA', 0, 4, '', '2.5', '2.5', '0', 66.67, 66.67, 0.00, 133.33, 2666.67, 2800.00, 1, 0.00, '', 'FHrna0TtlD18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '90230', 0, 65498, 1, 0, 0, NULL, 0, NULL, 'Box', 1, 0, 'No', '', 3, 0.00, 0, 0, 'No', 2800.00, '0', 0.00, 0, 0, 0, 0, 0, 0, 0, 18, NULL, 0),
(19, 0, 'REGULAR TEA MASALA', 0, 4, '', '2.5', '2.5', '0', 61.90, 61.90, 0.00, 123.81, 2476.19, 2600.00, 1, 0.00, '', 'X4LQx5YaUK19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '090230', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.408', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(20, 0, 'COFFEE PREMIX HOT', 0, 4, '', '9', '9', '0', 25.17, 25.17, 0.00, 50.34, 279.66, 330.00, 1, 0.00, '', 'qALjuBS8Pz20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21011200', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.412', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(21, 0, 'COFFEE PREMIX COLD', 0, 4, '', '9', '9', '0', 21.36, 21.36, 0.00, 42.71, 237.29, 280.00, 1, 0.00, '', 'zK0AmYxwFT21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21011200', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.414', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(22, 0, 'INST.LEMON TEA', 0, 4, '', '9', '9', '0', 19.07, 19.07, 0.00, 38.14, 211.86, 250.00, 1, 0.00, '', 'eVwUh9wHBs22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '210120', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.415', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(23, 0, 'TEA PREMIX JAGGERY MIX - 10 GRM', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'lUfb96TQhR23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.418', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(24, 0, 'ASH JAGGERY TEA 17 GMS SACHET', 0, 4, '', '2.5', '2.5', '0', 8.33, 8.33, 0.00, 16.67, 333.33, 350.00, 1, 0.00, '', 'JL2IGm067H24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '9021010', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.419', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(25, 0, 'ASH JAGGERY TEA 170 GM PKT - 1 LTR (R)', 0, 4, '', '2.5', '2.5', '0', 1.67, 1.67, 0.00, 3.33, 66.67, 70.00, 1, 0.00, '', 'aQCOJm5Ssy25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '9021010', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.421', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(26, 0, 'SUGAR FREE', 0, 4, '', '9', '9', '0', 17.16, 17.16, 0.00, 34.32, 190.68, 225.00, 1, 0.00, '', '7n16edqVi326', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '9021010', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.423', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(27, 0, 'KESAR MILK PISTA', 0, 4, '', '2.5', '2.5', '0', 10.71, 10.71, 0.00, 21.43, 428.57, 450.00, 1, 0.00, '', '0Zs65l3O2L27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4022990', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.425', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(28, 0, 'JAGGERY MIX COFFEE', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'ANUCX50pNS28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.426', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(29, 0, 'JAGGERY MIX MASALA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'zkrvNOTXAP29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4022990', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.428', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(30, 0, 'BLACK TEA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', '4hAVitUi5T30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.429', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(31, 0, 'LEMON GRASS GINGER', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'Ej3q0nebzo31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.431', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(32, 0, 'TEA MASALA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'ekRvFqRG6r32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.433', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(33, 0, 'CHOCOLATE TEA PREMIX', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'hNaGiPDLeU33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '18063100', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.435', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(34, 0, 'CARDAMOM TEA PREMIX', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', 'bXElAUvG6e34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.436', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(35, 0, 'GINGER TEA PREMIX', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', 'lbEMuQW65H35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.438', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(36, 0, 'TULSI TEA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', '53Xn2ir44L36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.441', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(37, 0, 'GREEN TEA ', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'lMWBNmxesd37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '9022010', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.442', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(38, 0, 'INSTANT LEMON ICED TEA', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', '51lku7UYcE38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21012090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.444', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(39, 0, 'INSTANT  NIMBUPANI MIX', 0, 4, '', '6', '6', '0', 18.75, 18.75, 0.00, 37.50, 312.50, 350.00, 1, 0.00, '', 'YkWzbZa7aE39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21069050', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.445', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(40, 0, 'CERAMIC CUP - REGULAR (KITHENWEAR)', 0, 5, '', '6', '6', '0', 64.29, 64.29, 0.00, 128.57, 1071.43, 1200.00, 1, 0.00, '', 'kbdPWzB6es40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '69119090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.447', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(41, 0, 'CERAMIC CUP - BIG (KITHENWEAR)', 0, 5, '', '6', '6', '0', 80.36, 80.36, 0.00, 160.71, 1339.29, 1500.00, 1, 0.00, '', 'S6rJHLu3AB41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '69119090', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.449', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(42, 0, 'DISPOSAL CUP - 65 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 280.68, 280.68, 0.00, 561.36, 3118.64, 3680.00, 1, 0.00, '', 'PzUDWB3Hf942', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '48236000', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.450', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(43, 0, 'DISPOSAL CUP - 55 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 317.29, 317.29, 0.00, 634.58, 3525.42, 4160.00, 1, 0.00, '', 'JgBKwQ2aDq43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '48236000', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.451', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(44, 0, 'DISPOSAL CUP - 150 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 114.41, 114.41, 0.00, 228.81, 1271.19, 1500.00, 1, 0.00, '', 'A7xYXFJPs144', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '48236000', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.453', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(45, 0, 'AS - WATER BOTTLE - 1 LTRS', 0, 6, '', '9', '9', '0', 7.63, 7.63, 0.00, 15.25, 84.75, 100.00, 1, 0.00, '', 'Er5X6xJhMI45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21011200', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.455', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(46, 0, 'AS - WATER BOTTLE - 500 ML ', 0, 6, '', '9', '9', '0', 10.30, 10.30, 0.00, 20.59, 114.41, 135.00, 1, 0.00, '', 'jgwT8AYmhy46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '21011200', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.456', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(47, 0, 'T - SHIRT', 0, 7, '', '2.5', '2.5', '0', 8.33, 8.33, 0.00, 16.67, 333.33, 350.00, 1, 0.00, '', 'gYGS0QJZGo47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '61091000', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.458', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(48, 0, 'CAPS', 0, 7, '', '2.5', '2.5', '0', 1.19, 1.19, 0.00, 2.38, 47.62, 50.00, 1, 0.00, '', 'ZPMEAZF2Fh48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '61091000', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.459', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(49, 0, 'CHAI KADAK - 250 GRAMS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 9.05, 9.05, 0.00, 18.10, 361.90, 380.00, 1, 0.00, '', 'HMxt1EiKPo49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '090240', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.461', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(50, 0, 'TEA DUST - 5 KGS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 5.21, 5.21, 0.00, 10.43, 208.57, 219.00, 1, 0.00, '', 'qlWj0JS7Bd50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '090240', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.462', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(51, 0, 'TEA MIX - 5 KGS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 5.33, 5.33, 0.00, 10.67, 213.33, 224.00, 1, 0.00, '', 'G55ybta3ZH51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '090240', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.464', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(52, 0, 'ASHWINI CHAI KADAK - 250 GRAMS - PET JAR ', 0, 8, '', '2.5', '2.5', '0', 2.86, 2.86, 0.00, 5.71, 114.29, 120.00, 1, 0.00, '', 'aMHwEM2JZG52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '090240', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.465', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(53, 0, 'BHAKARWADI - 25 GM - 126 NOS - 1 BOX', 0, 9, '', '6', '6', '0', 60.75, 60.75, 0.00, 121.50, 1012.50, 1134.00, 1, 0.00, '', 'Mrr49Y7bMV53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '210690', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.467', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(54, 0, 'ASHWINI COOKIES - 40 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 51.86, 51.86, 0.00, 103.73, 576.27, 680.00, 1, 0.00, '', 'naLkeIKngK54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '190590', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.468', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(55, 0, 'ASHWINI CREAM ROLL - 24 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 15.56, 15.56, 0.00, 31.12, 172.88, 204.00, 1, 0.00, '', '3KD8uGVwfc55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '190590', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.469', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(56, 0, 'ASHWINI FINGER CAKE - 24 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 16.47, 16.47, 0.00, 32.95, 183.05, 216.00, 1, 0.00, '', 'WCspWen5Yz56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '190590', 0, 0, 0, 0, 0, '2025-09-18 12:48:12.471', 0, '', '', 0, 0, 'No', '', 3, 0.00, 0, 0, '', 0.00, '', 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_products2_temp`
--

CREATE TABLE `tbl_cust_products2_temp` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `BrandId` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` varchar(10) NOT NULL DEFAULT '0',
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `MinPrice` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL,
  `Assets` tinyint(1) NOT NULL,
  `QrDisplay` varchar(10) NOT NULL DEFAULT 'No',
  `MinQty` varchar(50) DEFAULT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `checkstatus` tinyint(1) NOT NULL,
  `tempstatus` tinyint(1) NOT NULL,
  `clearprod` varchar(10) NOT NULL DEFAULT 'No',
  `SubTotal` float(14,2) DEFAULT NULL,
  `DiscPer` varchar(20) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Division` int(11) NOT NULL,
  `Segment` int(11) NOT NULL,
  `Family` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `McDesc` int(11) NOT NULL,
  `BrandDesc` int(11) NOT NULL,
  `CrossSell` tinyint(1) NOT NULL,
  `MatchMrpProdId` int(11) NOT NULL,
  `kitchen_type` varchar(100) DEFAULT NULL,
  `OldNew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_products_2025`
--

CREATE TABLE `tbl_cust_products_2025` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `BrandId` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` varchar(10) NOT NULL DEFAULT '0',
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `MinPrice` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL,
  `Assets` tinyint(1) NOT NULL,
  `QrDisplay` varchar(10) NOT NULL DEFAULT 'No',
  `MinQty` varchar(50) DEFAULT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `checkstatus` tinyint(1) NOT NULL DEFAULT 1,
  `tempstatus` tinyint(1) NOT NULL DEFAULT 1,
  `clearprod` varchar(10) NOT NULL DEFAULT 'No',
  `SubTotal` float(14,2) NOT NULL,
  `DiscPer` float(14,2) NOT NULL DEFAULT 0.00,
  `Discount` float(14,2) NOT NULL,
  `Division` int(11) NOT NULL,
  `Segment` int(11) NOT NULL,
  `Family` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `McDesc` int(11) NOT NULL,
  `BrandDesc` int(11) NOT NULL,
  `CrossSell` tinyint(1) NOT NULL,
  `MatchMrpProdId` int(11) NOT NULL,
  `kitchen_type` varchar(100) DEFAULT NULL,
  `OldNew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cust_products_2025`
--

INSERT INTO `tbl_cust_products_2025` (`id`, `ProdId`, `ProductName`, `BrandId`, `CatId`, `SubCatId`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `ProdPrice`, `MinPrice`, `Status`, `SrNo`, `Photo`, `code`, `CreatedDate`, `ModifiedDate`, `CreatedBy`, `ModifiedBy`, `BarcodeNo`, `StockQty`, `TempPrdId`, `Display`, `push_flag`, `delete_flag`, `modified_time`, `ProdType`, `Qty`, `Unit`, `Transfer`, `Assets`, `QrDisplay`, `MinQty`, `ProdType2`, `PurchasePrice`, `checkstatus`, `tempstatus`, `clearprod`, `SubTotal`, `DiscPer`, `Discount`, `Division`, `Segment`, `Family`, `ClassId`, `McDesc`, `BrandDesc`, `CrossSell`, `MatchMrpProdId`, `kitchen_type`, `OldNew`) VALUES
(1, 18, 'REGULAR TEA MASALA', 0, 4, '', '2.5', '2.5', '0', 66.67, 66.67, 0.00, 133.33, 2666.67, 2800.00, 1, 0.00, '', 'E5myU635aF18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 1, '90230', 0, 65498, 1, 1, 0, '2025-09-17 10:52:41.327', 0, NULL, 'Box', 1, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(2, 19, 'REGULAR TEA MASALA', 0, 4, '', '2.5', '2.5', '0', 61.90, 61.90, 0.00, 123.81, 2476.19, 2600.00, 1, 0.00, '', '3Sn9cDiSKS19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '090230', 0, 0, 0, 1, 0, '2025-09-17 10:52:42.507', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(3, 20, 'COFFEE PREMIX HOT', 0, 4, '', '9', '9', '0', 25.17, 25.17, 0.00, 50.34, 279.66, 330.00, 1, 0.00, '', 'KctBYwQCSU20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21011200', 0, 0, 0, 1, 0, '2025-09-17 10:52:42.940', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(4, 21, 'COFFEE PREMIX COLD', 0, 4, '', '9', '9', '0', 21.36, 21.36, 0.00, 42.71, 237.29, 280.00, 1, 0.00, '', 'd9PtfRAlU021', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21011200', 0, 0, 0, 1, 0, '2025-09-17 10:52:43.390', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(5, 22, 'INST.LEMON TEA', 0, 4, '', '9', '9', '0', 19.07, 19.07, 0.00, 38.14, 211.86, 250.00, 1, 0.00, '', 'pXDE9JvIAx22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '210120', 0, 0, 0, 1, 0, '2025-09-17 10:52:43.838', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(6, 23, 'TEA PREMIX JAGGERY MIX - 10 GRM', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'g0XxRcvFge23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:44.261', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(7, 24, 'ASH JAGGERY TEA 17 GMS SACHET', 0, 4, '', '2.5', '2.5', '0', 8.33, 8.33, 0.00, 16.67, 333.33, 350.00, 1, 0.00, '', '4Joh8Zz5hG24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '9021010', 0, 0, 0, 1, 0, '2025-09-17 10:52:44.804', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(8, 25, 'ASH JAGGERY TEA 170 GM PKT - 1 LTR (R)', 0, 4, '', '2.5', '2.5', '0', 1.67, 1.67, 0.00, 3.33, 66.67, 70.00, 1, 0.00, '', 'N22XwbOqzW25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '9021010', 0, 0, 0, 1, 0, '2025-09-17 10:52:45.262', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(9, 26, 'SUGAR FREE', 0, 4, '', '9', '9', '0', 17.16, 17.16, 0.00, 34.32, 190.68, 225.00, 1, 0.00, '', 'xy2zC7ymmR26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '9021010', 0, 0, 0, 1, 0, '2025-09-17 10:52:46.371', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(10, 27, 'KESAR MILK PISTA', 0, 4, '', '2.5', '2.5', '0', 10.71, 10.71, 0.00, 21.43, 428.57, 450.00, 1, 0.00, '', 'lahzxsCNXu27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '4022990', 0, 0, 0, 1, 0, '2025-09-17 10:52:48.478', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(11, 28, 'JAGGERY MIX COFFEE', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'kT8XdWo7t728', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:49.936', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(12, 29, 'JAGGERY MIX MASALA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'bQvtNo0tv629', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '4022990', 0, 0, 0, 1, 0, '2025-09-17 10:52:49.454', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(13, 30, 'BLACK TEA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', '5VJ9nbtV9e30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:50.519', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(14, 31, 'LEMON GRASS GINGER', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'UWiH3kRwju31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:50.942', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(15, 32, 'TEA MASALA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'RLqKisNruj32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:51.403', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(16, 33, 'CHOCOLATE TEA PREMIX', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'N5Fh8nMnxc33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '18063100', 0, 0, 0, 1, 0, '2025-09-17 10:52:52.373', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(17, 34, 'CARDAMOM TEA PREMIX', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', 'vHKuZgIB9f34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:52.434', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(18, 35, 'GINGER TEA PREMIX', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', 'wbpnHsh8m935', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:53.617', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(19, 36, 'TULSI TEA', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'pvwk0kMzTX36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:54.535', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(20, 37, 'GREEN TEA ', 0, 4, '', '9', '9', '0', 26.69, 26.69, 0.00, 53.39, 296.61, 350.00, 1, 0.00, '', 'Gw7seK0n3j37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '9022010', 0, 0, 0, 1, 0, '2025-09-17 10:52:56.345', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(21, 38, 'INSTANT LEMON ICED TEA', 0, 4, '', '9', '9', '0', 30.51, 30.51, 0.00, 61.02, 338.98, 400.00, 1, 0.00, '', 'XCN09l4fqg38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21012090', 0, 0, 0, 1, 0, '2025-09-17 10:52:56.853', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(22, 39, 'INSTANT  NIMBUPANI MIX', 0, 4, '', '6', '6', '0', 18.75, 18.75, 0.00, 37.50, 312.50, 350.00, 1, 0.00, '', 'eJJt15Kskr39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21069050', 0, 0, 0, 1, 0, '2025-09-17 10:52:57.407', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(23, 40, 'CERAMIC CUP - REGULAR (KITHENWEAR)', 0, 5, '', '6', '6', '0', 64.29, 64.29, 0.00, 128.57, 1071.43, 1200.00, 1, 0.00, '', 'H0ykl31qRT40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '69119090', 0, 0, 0, 1, 0, '2025-09-17 10:52:57.885', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(24, 41, 'CERAMIC CUP - BIG (KITHENWEAR)', 0, 5, '', '6', '6', '0', 80.36, 80.36, 0.00, 160.71, 1339.29, 1500.00, 1, 0.00, '', 'rAaNkEpuPK41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '69119090', 0, 0, 0, 1, 0, '2025-09-17 10:52:58.483', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(25, 42, 'DISPOSAL CUP - 65 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 280.68, 280.68, 0.00, 561.36, 3118.64, 3680.00, 1, 0.00, '', 'DmNnBJQtsH42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '48236000', 0, 0, 0, 1, 0, '2025-09-17 10:52:59.654', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(26, 43, 'DISPOSAL CUP - 55 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 317.29, 317.29, 0.00, 634.58, 3525.42, 4160.00, 1, 0.00, '', '1hFkKd6Q0j43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '48236000', 0, 0, 0, 1, 0, '2025-09-17 10:53:00.238', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(27, 44, 'DISPOSAL CUP - 150 ML - PKT RATE ', 0, 5, '', '9', '9', '0', 114.41, 114.41, 0.00, 228.81, 1271.19, 1500.00, 1, 0.00, '', 'TCfdtaHRoE44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '48236000', 0, 0, 0, 1, 0, '2025-09-17 10:53:00.701', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(28, 45, 'AS - WATER BOTTLE - 1 LTRS', 0, 6, '', '9', '9', '0', 7.63, 7.63, 0.00, 15.25, 84.75, 100.00, 1, 0.00, '', 'DXdHfIhqFz45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21011200', 0, 0, 0, 1, 0, '2025-09-17 10:53:01.217', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(29, 46, 'AS - WATER BOTTLE - 500 ML ', 0, 6, '', '9', '9', '0', 10.30, 10.30, 0.00, 20.59, 114.41, 135.00, 1, 0.00, '', 'TpxYncxsri46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '21011200', 0, 0, 0, 1, 0, '2025-09-17 10:53:01.600', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(30, 47, 'T - SHIRT', 0, 7, '', '2.5', '2.5', '0', 8.33, 8.33, 0.00, 16.67, 333.33, 350.00, 1, 0.00, '', 'taxR7EmGM747', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '61091000', 0, 0, 0, 1, 0, '2025-09-17 10:53:03.986', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(31, 48, 'CAPS', 0, 7, '', '2.5', '2.5', '0', 1.19, 1.19, 0.00, 2.38, 47.62, 50.00, 1, 0.00, '', 'rKfHrNaowj48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '61091000', 0, 0, 0, 1, 0, '2025-09-17 10:53:04.531', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(32, 49, 'CHAI KADAK - 250 GRAMS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 9.05, 9.05, 0.00, 18.10, 361.90, 380.00, 1, 0.00, '', 'kiDwo1QwDp49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '090240', 0, 0, 0, 1, 0, '2025-09-17 10:53:05.607', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(33, 50, 'TEA DUST - 5 KGS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 5.21, 5.21, 0.00, 10.43, 208.57, 219.00, 1, 0.00, '', 'iPjuazeMtW50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '090240', 0, 0, 0, 1, 0, '2025-09-17 10:53:06.711', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(34, 51, 'TEA MIX - 5 KGS - 1 KG RATE', 0, 8, '', '2.5', '2.5', '0', 5.33, 5.33, 0.00, 10.67, 213.33, 224.00, 1, 0.00, '', 'BOQAafcWl651', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '090240', 0, 0, 0, 1, 0, '2025-09-17 10:53:06.549', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(35, 52, 'ASHWINI CHAI KADAK - 250 GRAMS - PET JAR ', 0, 8, '', '2.5', '2.5', '0', 2.86, 2.86, 0.00, 5.71, 114.29, 120.00, 1, 0.00, '', 'ZsExHVBwrF52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '090240', 0, 0, 0, 1, 0, '2025-09-17 10:53:06.998', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(36, 53, 'BHAKARWADI - 25 GM - 126 NOS - 1 BOX', 0, 9, '', '6', '6', '0', 60.75, 60.75, 0.00, 121.50, 1012.50, 1134.00, 1, 0.00, '', 'SUnV6i7UuN53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '210690', 0, 0, 0, 1, 0, '2025-09-17 10:53:07.493', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(37, 54, 'ASHWINI COOKIES - 40 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 51.86, 51.86, 0.00, 103.73, 576.27, 680.00, 1, 0.00, '', 'GacOYltOJ854', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '190590', 0, 0, 0, 1, 0, '2025-09-17 10:53:08.102', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(38, 55, 'ASHWINI CREAM ROLL - 24 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 15.56, 15.56, 0.00, 31.12, 172.88, 204.00, 1, 0.00, '', 'pQ0nn5XOJT55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '190590', 0, 0, 0, 1, 0, '2025-09-17 10:53:08.582', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(39, 56, 'ASHWINI FINGER CAKE - 24 PCS - 1 BOX', 0, 9, '', '9', '9', '0', 16.47, 16.47, 0.00, 32.95, 183.05, 216.00, 1, 0.00, '', 'U8gpzGR22156', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, '190590', 0, 0, 0, 1, 0, '2025-09-17 10:53:09.615', 0, '', '', 0, 0, 'No', '', 3, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(40, 1, 'REGULAR TEA', 0, 1, '', '2.5', '2.5', '0', 0.29, 0.29, 0.00, 0.57, 11.43, 12.00, 1, 0.00, '', 'wcEN3QPcJL1', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 50212, 1, 1, 0, '2025-09-17 10:54:19.875', 0, NULL, '', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(41, 2, 'COFFEE', 0, 2, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'pUd7ecahlI2', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 39495, 1, 1, 0, '2025-09-17 10:54:20.405', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(42, 3, 'BLACK LEMON TEA', 0, 1, '', '2.5', '2.5', '0', 0.36, 0.36, 0.00, 0.71, 14.29, 15.00, 1, 0.00, '', 'EcowXcDwxE3', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 92565, 1, 1, 0, '2025-09-17 10:54:20.890', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(43, 4, 'LOW SUGAR TEA', 0, 1, '', '2.5', '2.5', '0', 0.36, 0.36, 0.00, 0.71, 14.29, 15.00, 1, 0.00, '', 'XaCwShuLjP4', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 51150, 1, 1, 0, '2025-09-17 10:54:21.293', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(44, 5, 'COLD COFFEE', 0, 2, '', '2.5', '2.5', '0', 1.43, 1.43, 0.00, 2.86, 57.14, 60.00, 1, 0.00, '', 'ENiudGUFQM5', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 80456, 1, 1, 0, '2025-09-17 10:54:21.712', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(45, 6, 'JAGGERY TEA (Gud Chai)', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'pf5YbsKThd6', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 10993, 1, 1, 0, '2025-09-17 10:54:22.122', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(46, 7, 'ILAYACHI TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'MiUL3PKcEW7', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 58108, 1, 1, 0, '2025-09-17 10:54:22.688', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(47, 8, 'LEMON GRASS GINGER', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'O24l3LgeN48', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 44278, 1, 1, 0, '2025-09-17 10:54:17.571', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(48, 9, 'BLACK TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'BdIMSPsM6k9', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 78391, 1, 1, 0, '2025-09-17 10:54:17.747', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(49, 10, 'CHOCOLATE', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'JTYgKsvqKL10', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 99901, 1, 1, 0, '2025-09-17 10:54:16.625', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(50, 11, 'JAGGERY WITH MASALA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'DMDHRmeO2b11', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 93329, 1, 1, 0, '2025-09-17 10:54:16.205', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(51, 12, 'JAGGERY WITH COFFEE', 0, 2, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'HTpVJRuKKL12', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 83971, 1, 1, 0, '2025-09-17 10:54:15.775', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(52, 13, 'KESAR PISTA MILK', 0, 3, '', '2.5', '2.5', '0', 0.71, 0.71, 0.00, 1.43, 28.57, 30.00, 1, 0.00, '', 'TF8yqIjIag13', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 57440, 1, 1, 0, '2025-09-17 10:54:15.356', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(53, 14, 'TULSI TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'ju2u3nPdnK14', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 63663, 1, 1, 0, '2025-09-17 10:54:14.351', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(54, 15, 'ROSE TEA', 0, 1, '', '2.5', '2.5', '0', 0.60, 0.60, 0.00, 1.19, 23.81, 25.00, 1, 0.00, '', 'm1STb8Nnfe15', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 63754, 1, 1, 0, '2025-09-17 10:54:13.907', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(55, 16, 'ICE LEMON TEA', 0, 1, '', '2.5', '2.5', '0', 0.83, 0.83, 0.00, 1.67, 33.33, 35.00, 1, 0.00, '', 'KOY7vpg9Jx16', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 30240, 1, 1, 0, '2025-09-17 10:54:13.478', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(56, 17, 'GINGER TEA', 0, 1, '', '2.5', '2.5', '0', 0.48, 0.48, 0.00, 0.95, 19.05, 20.00, 1, 0.00, '', 'ZfKcOnpVYa17', '2025-09-17 00:00:00', NULL, 8, 0, '', 0, 93395, 1, 1, 0, '2025-09-17 10:54:13.230', 0, NULL, 'Ml', 1, 0, 'No', '', 2, 0.00, 1, 0, 'No', 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_product_images`
--

CREATE TABLE `tbl_cust_product_images` (
  `id` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `Files` varchar(100) NOT NULL,
  `FileName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_product_specification`
--

CREATE TABLE `tbl_cust_product_specification` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `AcDc` varchar(100) NOT NULL,
  `Surface` int(11) NOT NULL,
  `PumpCapacity` int(11) NOT NULL,
  `WaterSource` int(11) NOT NULL,
  `BoreDia` int(11) NOT NULL,
  `PumpHead` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProdName` varchar(255) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_prod_stock`
--

CREATE TABLE `tbl_cust_prod_stock` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_prod_stock_2025`
--

CREATE TABLE `tbl_cust_prod_stock_2025` (
  `id` bigint(20) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `orgstockid` varchar(50) NOT NULL DEFAULT '0',
  `Wastage` smallint(6) NOT NULL,
  `VedInvId` int(11) NOT NULL,
  `vedorder` varchar(10) NOT NULL DEFAULT 'No',
  `VedExpItem` varchar(10) NOT NULL DEFAULT 'No',
  `VedExpId` int(11) NOT NULL,
  `EmpExpItem` varchar(10) DEFAULT 'No',
  `EmpExpId` int(11) NOT NULL,
  `ExpItemId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `MfgDate` date DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `WastageInvId` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_prod_stock_2025_backup`
--

CREATE TABLE `tbl_cust_prod_stock_2025_backup` (
  `id` bigint(20) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `orgstockid` int(11) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `VedInvId` int(11) NOT NULL,
  `vedorder` varchar(10) DEFAULT 'No',
  `VedExpItem` varchar(10) DEFAULT 'No',
  `VedExpId` int(11) NOT NULL,
  `EmpExpItem` varchar(10) DEFAULT 'No',
  `EmpExpId` int(11) NOT NULL,
  `ExpItemId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `MfgDate` date DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `WastageInvId` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_prod_stock_2025_temp`
--

CREATE TABLE `tbl_cust_prod_stock_2025_temp` (
  `id` bigint(20) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `checkstatus` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_stock_inv_2025`
--

CREATE TABLE `tbl_cust_stock_inv_2025` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `InvNo` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `TotalQty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_stock_ved_inv`
--

CREATE TABLE `tbl_cust_stock_ved_inv` (
  `id` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `InvNo` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `TotalQty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ProdType` smallint(6) NOT NULL,
  `AdminStatus` smallint(6) NOT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `AdminComment` text DEFAULT NULL,
  `AccountantApproveDate` date DEFAULT NULL,
  `AccountantComment` text DEFAULT NULL,
  `AccountantStatus` smallint(6) NOT NULL,
  `AccountantBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_sub_category`
--

CREATE TABLE `tbl_cust_sub_category` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `FrId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_sub_category_2025`
--

CREATE TABLE `tbl_cust_sub_category_2025` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ProdType` tinyint(1) NOT NULL COMMENT '0:custcat; 1:rawcat;	',
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `OldNew` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_ved_prod_stock`
--

CREATE TABLE `tbl_cust_ved_prod_stock` (
  `id` bigint(20) NOT NULL,
  `VedId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `checkstatus` smallint(6) NOT NULL,
  `VedExp` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_locations`
--

CREATE TABLE `tbl_daily_locations` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Lattitude` varchar(100) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `CreatedTime2` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_reports`
--

CREATE TABLE `tbl_daily_reports` (
  `id` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedDate` int(11) NOT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `ModifiedDate` int(11) NOT NULL,
  `ModifiedTime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivered_invoice`
--

CREATE TABLE `tbl_delivered_invoice` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `InvNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `LrNo` varchar(255) DEFAULT NULL,
  `LrDate` date DEFAULT NULL,
  `Transport` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diapostion`
--

CREATE TABLE `tbl_diapostion` (
  `id` int(11) NOT NULL,
  `CatId` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `SrNo` float NOT NULL,
  `Negative` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_documents`
--

CREATE TABLE `tbl_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `folder_name` varchar(255) NOT NULL,
  `sub_folder_name` varchar(255) DEFAULT NULL,
  `concat_folder` varchar(255) DEFAULT NULL,
  `file_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dynamic_menu`
--

CREATE TABLE `tbl_dynamic_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `color` varchar(10) NOT NULL DEFAULT '#607D8B',
  `route` varchar(200) DEFAULT '',
  `open_web` tinyint(1) DEFAULT 0,
  `url` varchar(255) DEFAULT '',
  `status` tinyint(1) DEFAULT 1,
  `userid` text NOT NULL,
  `srnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dynamic_menu`
--

INSERT INTO `tbl_dynamic_menu` (`id`, `title`, `icon`, `color`, `route`, `open_web`, `url`, `status`, `userid`, `srnum`) VALUES
(1, 'Billing', 'receipt_long', '#2196F3', '/billing', 0, '', 1, '253,8757', 1),
(2, 'Products', 'shopping_bag', '#4CAF50', '/inventory_menu', 0, NULL, 1, '253,8757', 3),
(3, 'Inventory', 'inventory_2', '#FF9800', '/inventory_menu', 0, NULL, 1, '253,8757', 4),
(4, 'Reports', 'pie_chart', '#673AB7', '/inventory_menu', 0, NULL, 1, '253,8757', 5),
(5, 'Orders', 'list_alt', '#00BCD4', '/inventory_menu', 0, NULL, 1, '253,8757', 6),
(6, 'Credit Orders', 'credit_card', '#F44336', '/inventory_menu', 0, NULL, 1, '253,8757', 7),
(7, 'Inventory Reports', 'assignment', '#009688', '/inventory_menu', 0, NULL, 1, '253,8757', 8),
(10, 'Employee', 'people', '#3F51B5', '/inventory_menu', 0, NULL, 1, '253,8757', 11),
(12, 'Print Setting', 'print', '#795548', '/inventory_menu', 0, NULL, 1, '253,8757', 30),
(16, 'Customers', 'group', '#00BCD4', '/inventory_menu', 0, NULL, 1, '253,8757', 15),
(19, 'Setup', 'settings', '#212121', '/setup', 0, '', 1, '253,8757', 2),
(20, 'Backup DB', 'download_rounded', '#4CAF50', '/inventory_menu', 0, '', 1, '253,8757', 18),
(28, 'Kitchen Orders', 'receipt_long', '#607D8B', '/view_kitchen_orders', 0, '', 1, '253', 3),
(31, 'Today Orders', 'assignment', '#F44336', '/order_items', 0, '', 1, '', 2),
(33, 'Selling Products', '', '#607D8B', '/inventory_menu', 0, NULL, 1, '', 26),
(40, 'Dashboard', 'print', '#795548', '/inventory_menu', 0, NULL, 1, '0', 30),
(41, 'Discount', 'print', '#795548', '/inventory_menu', 0, NULL, 1, '0', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emi`
--

CREATE TABLE `tbl_emi` (
  `id` int(11) NOT NULL,
  `SellId` int(11) DEFAULT NULL,
  `CustId` int(11) DEFAULT NULL,
  `EmiDate` date DEFAULT NULL,
  `EmiAmt` float(14,2) DEFAULT NULL,
  `EmiChequeNo` varchar(100) DEFAULT NULL,
  `PayStatus` tinyint(1) NOT NULL COMMENT '0:not paid;1:paid;2:half paid;',
  `ReceiptNo` varchar(100) DEFAULT NULL,
  `ReceiptDate` date DEFAULT NULL,
  `ReceiptAmt` float(14,2) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_expense_prod_items`
--

CREATE TABLE `tbl_emp_expense_prod_items` (
  `id` bigint(20) NOT NULL,
  `EmpId` int(11) NOT NULL,
  `ExpId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ExpItemId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `checkstatus` smallint(6) NOT NULL,
  `VedExp` varchar(10) NOT NULL DEFAULT 'Yes',
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_scheme`
--

CREATE TABLE `tbl_emp_scheme` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exe_double_cashback`
--

CREATE TABLE `tbl_exe_double_cashback` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exe_shop_feedback`
--

CREATE TABLE `tbl_exe_shop_feedback` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  `ShopLocation` varchar(255) DEFAULT NULL,
  `CleaningRate` varchar(255) DEFAULT NULL,
  `EmpDressCode` varchar(255) DEFAULT NULL,
  `Offer` varchar(255) DEFAULT NULL,
  `Quality` varchar(255) DEFAULT NULL,
  `Communication` text DEFAULT NULL,
  `Suggest` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `Rating` varchar(255) DEFAULT NULL,
  `Contribution` varchar(255) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `AccHeadId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `CrDr` varchar(10) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `FrId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses_category`
--

CREATE TABLE `tbl_expenses_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_expenses_category`
--

INSERT INTO `tbl_expenses_category` (`id`, `Name`, `Status`) VALUES
(1, 'Food Items', 1),
(2, 'Petrol/Diesel/Toll Tax', 1),
(3, 'Salary/Adhoc Work Payment', 1),
(4, 'Printing & Stationary', 1),
(5, 'Travel & Conveyance', 1),
(6, 'Transportation Charges', 1),
(7, 'Kitchen & Electrical Equipements', 1),
(8, 'Repair & Maintenance', 1),
(9, 'Agreement/Licensing/Contract Related Expenses', 1),
(10, 'Others/Miscellaneous', 1),
(11, 'New Store Development Expenses', 1),
(12, 'New Execution or Regular Claim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_request`
--

CREATE TABLE `tbl_expense_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `Photo4` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT 'No',
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `TempPrdId` int(11) NOT NULL,
  `TempPrdId2` int(11) NOT NULL,
  `VedPhone` varchar(50) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `WebPhoto` varchar(255) DEFAULT NULL,
  `WebPhoto2` varchar(255) DEFAULT NULL,
  `Locations` int(11) NOT NULL,
  `ExpCatId` int(11) NOT NULL,
  `TotDays` varchar(10) NOT NULL,
  `TempUpdate` tinyint(1) NOT NULL,
  `Claims` tinyint(1) NOT NULL,
  `mult` smallint(6) NOT NULL,
  `SendToApproval` varchar(10) NOT NULL DEFAULT 'Yes',
  `AccountStatus` tinyint(1) NOT NULL,
  `AccountApproveDate` date DEFAULT NULL,
  `AccountComment` text DEFAULT NULL,
  `AccountBy` int(11) NOT NULL,
  `AccountAmount` varchar(50) DEFAULT NULL,
  `FinalAccountStatus` tinyint(1) NOT NULL,
  `FinalAccountApproveDate` date DEFAULT NULL,
  `FinalAccountComment` text DEFAULT NULL,
  `FinalAccountBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_request_items`
--

CREATE TABLE `tbl_expense_request_items` (
  `id` int(11) NOT NULL,
  `ExpCatId` int(11) NOT NULL,
  `Claims` tinyint(1) NOT NULL,
  `Locations` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ExpId` int(11) NOT NULL,
  `Amount` varchar(20) DEFAULT NULL,
  `PaymentMode` varchar(50) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Gst` varchar(20) DEFAULT NULL,
  `VedPhone` varchar(20) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `Photo4` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Product` varchar(10) DEFAULT NULL,
  `srno` int(11) NOT NULL,
  `PdfLink` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE `tbl_faqs` (
  `id` int(11) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `Answer` text NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_billsoft_discount`
--

CREATE TABLE `tbl_fr_billsoft_discount` (
  `id` int(11) NOT NULL,
  `Percentage` varchar(100) DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) NOT NULL,
  `FrId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_raw_counts`
--

CREATE TABLE `tbl_fr_raw_counts` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `Cnt` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_raw_stock`
--

CREATE TABLE `tbl_fr_raw_stock` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `SellPrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_raw_stock_2025`
--

CREATE TABLE `tbl_fr_raw_stock_2025` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `SellPrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_req_prod_stock`
--

CREATE TABLE `tbl_fr_req_prod_stock` (
  `id` bigint(20) NOT NULL,
  `VedId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `ProdType2` tinyint(1) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `checkstatus` smallint(6) NOT NULL,
  `VedExp` varchar(10) NOT NULL DEFAULT 'No',
  `PurchaseBy` int(11) NOT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `PurchaseStatus` tinyint(1) NOT NULL,
  `PurchaseComment` text DEFAULT NULL,
  `PurchaseQty` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fr_req_stock_inv`
--

CREATE TABLE `tbl_fr_req_stock_inv` (
  `id` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `InvNo` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `TotalQty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ProdType` smallint(6) NOT NULL,
  `AdminStatus` smallint(6) NOT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `AdminComment` text DEFAULT NULL,
  `AccountantApproveDate` date DEFAULT NULL,
  `AccountantComment` text DEFAULT NULL,
  `AccountantStatus` smallint(6) NOT NULL,
  `AccountantBy` int(11) NOT NULL,
  `PurchaseBy` int(11) NOT NULL,
  `PurchaseApproveDate` date DEFAULT NULL,
  `PurchaseComments` text DEFAULT NULL,
  `PurchaseStatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fuel_checklist_images`
--

CREATE TABLE `tbl_fuel_checklist_images` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `roll` tinyint(1) NOT NULL COMMENT '1:image;2:video;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fuel_city`
--

CREATE TABLE `tbl_fuel_city` (
  `id` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL DEFAULT 1,
  `Name` varchar(100) NOT NULL,
  `StateId` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fuel_state`
--

CREATE TABLE `tbl_fuel_state` (
  `id` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL DEFAULT 1,
  `Name` varchar(512) NOT NULL DEFAULT '',
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fuel_station_details`
--

CREATE TABLE `tbl_fuel_station_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `FuelStationName` varchar(255) DEFAULT NULL,
  `LocationCity` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `GoogleLocation` varchar(255) DEFAULT NULL,
  `FuelStationType` varchar(255) DEFAULT NULL,
  `DealerName` varchar(255) DEFAULT NULL,
  `DealerContact` varchar(50) DEFAULT NULL,
  `ManagerName` varchar(255) DEFAULT NULL,
  `ManagerContact` varchar(50) DEFAULT NULL,
  `SalesOfficerName` varchar(255) DEFAULT NULL,
  `SalesOfficerContact` varchar(50) DEFAULT NULL,
  `PumpOperational` varchar(10) DEFAULT NULL,
  `PetrolSales` varchar(50) DEFAULT NULL,
  `DieselSales` varchar(50) DEFAULT NULL,
  `CNGAvailability` varchar(10) DEFAULT NULL,
  `ElectricChargingAvailability` varchar(10) DEFAULT NULL,
  `PumpAreaSqFt` varchar(50) DEFAULT NULL,
  `NozzleCount` varchar(50) DEFAULT NULL,
  `SpaceAvailability` varchar(10) DEFAULT NULL,
  `BuiltSpaceAvailability` varchar(10) DEFAULT NULL,
  `BuiltSpaceAreaSqFt` varchar(50) DEFAULT NULL,
  `VehiclesVisited` text DEFAULT NULL,
  `ExpectedSales` varchar(50) DEFAULT NULL,
  `CrossSalesExpected` varchar(10) DEFAULT NULL,
  `OnlineSalesExpected` varchar(10) DEFAULT NULL,
  `MediaFiles` text DEFAULT NULL,
  `points` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` date DEFAULT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `Latitude` varchar(50) DEFAULT NULL,
  `Logitude` varchar(50) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Pending',
  `StatusBy` int(11) NOT NULL,
  `StatusDate` datetime DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `TouristLocation` varchar(10) DEFAULT NULL,
  `MarkLatitude` varchar(20) DEFAULT NULL,
  `MarkLogitude` varchar(20) DEFAULT NULL,
  `MarkAddress` text DEFAULT NULL,
  `StateId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_function_details`
--

CREATE TABLE `tbl_function_details` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_ledger`
--

CREATE TABLE `tbl_general_ledger` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `GstPer` varchar(100) DEFAULT NULL,
  `CrDr` varchar(100) DEFAULT NULL,
  `Roll` tinyint(1) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `SellId` int(11) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SellType` varchar(100) NOT NULL DEFAULT 'Gold',
  `BranchId` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ExpenseId` int(11) NOT NULL,
  `Flag` varchar(100) DEFAULT NULL,
  `AccRoll` varchar(100) DEFAULT NULL,
  `PostId` int(11) NOT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BorrowFlag` tinyint(1) NOT NULL,
  `BillSoftFrId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_general_ledger`
--

INSERT INTO `tbl_general_ledger` (`id`, `SrNo`, `Code`, `UserId`, `AccCode`, `AccountName`, `InvoiceNo`, `Amount`, `PaymentDate`, `GstPer`, `CrDr`, `Roll`, `Type`, `SellId`, `PayMode`, `Narration`, `CreatedDate`, `ModifiedDate`, `SellType`, `BranchId`, `CompId`, `ExpenseId`, `Flag`, `AccRoll`, `PostId`, `ChequeNo`, `ChqDate`, `BankName`, `UpiNo`, `Main`, `CreatedBy`, `ModifiedBy`, `BorrowFlag`, `BillSoftFrId`) VALUES
(1, NULL, NULL, 7, NULL, 'dd', NULL, 0.00, '0000-00-00', NULL, 'Cr', NULL, 'OB', NULL, NULL, 'Total Sell Amount', '2025-09-17', NULL, 'Gold', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0),
(2, NULL, NULL, 8, NULL, 'Testing Franchise', NULL, 0.00, '0000-00-00', NULL, 'Cr', NULL, 'OB', NULL, NULL, 'Total Sell Amount', '2025-09-17', NULL, 'Gold', 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_products`
--

CREATE TABLE `tbl_godown_products` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `SubCatId` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_prod_category`
--

CREATE TABLE `tbl_godown_prod_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Featured` int(11) NOT NULL,
  `Service` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_prod_sub_category`
--

CREATE TABLE `tbl_godown_prod_sub_category` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `FrId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_raw_prod_inv`
--

CREATE TABLE `tbl_godown_raw_prod_inv` (
  `id` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_raw_prod_stock`
--

CREATE TABLE `tbl_godown_raw_prod_stock` (
  `id` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `TotalPrice` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `RetailerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_raw_prod_stock_2025`
--

CREATE TABLE `tbl_godown_raw_prod_stock_2025` (
  `id` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `TotalPrice` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `RetailerId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_godown_raw_prod_stock_2025`
--

INSERT INTO `tbl_godown_raw_prod_stock_2025` (`id`, `InvId`, `GodownId`, `FranchiseId`, `ProdId`, `Qty`, `Unit`, `StockDate`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `UserId`, `TransferId`, `Price`, `TotalPrice`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `OwnShop`, `RetailerId`, `VedId`) VALUES
(1, 0, 9, 0, 45, '10', '', '2025-09-17', '', 'Cr', 1, '2025-09-17', 0, NULL, 0, 0, 100.00, 1000.00, '9', '9', '0', 90.00, 90.00, 0.00, 180.00, 0, 0, 9),
(2, 0, 9, 0, 24, '20', '', '2025-09-17', '', 'Cr', 1, '2025-09-17', 0, NULL, 0, 0, 350.00, 7000.00, '2.5', '2.5', '0', 175.00, 175.00, 0.00, 350.00, 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_helps_enquiry`
--

CREATE TABLE `tbl_helps_enquiry` (
  `id` int(11) NOT NULL,
  `TokenNo` varchar(255) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL COMMENT '1:pending;2:inprocess;3:reject;4:complete;	',
  `CreatedDate` date DEFAULT NULL,
  `AssignStatus` tinyint(1) NOT NULL,
  `AssignDate` date DEFAULT NULL,
  `AssignTo` int(11) NOT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_help_support_details`
--

CREATE TABLE `tbl_help_support_details` (
  `id` int(11) NOT NULL,
  `TokenId` int(11) NOT NULL,
  `TokenNo` varchar(255) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `Message` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL COMMENT '1:pending;2:inprocess;3:reject;4:complete;	',
  `SenderName` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_gallery`
--

CREATE TABLE `tbl_image_gallery` (
  `id` int(11) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance_clain`
--

CREATE TABLE `tbl_insurance_clain` (
  `id` int(11) NOT NULL,
  `TicketNo` varchar(100) DEFAULT NULL,
  `BranchId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(255) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `DocumentsStatus` varchar(255) DEFAULT NULL,
  `ClainReason` varchar(255) DEFAULT NULL,
  `ClainStatus` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_insurance_clain`
--

INSERT INTO `tbl_insurance_clain` (`id`, `TicketNo`, `BranchId`, `CustId`, `CellNo`, `CustName`, `Address`, `DocumentsStatus`, `ClainReason`, `ClainStatus`, `Status`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, '#7485', 3, 8, '9545904488', 'rajat dhanwalkar', 'Nagpur, Nagpur, Nagpur', 'Received', 'Theft', 'Open', 1, '2023-04-18', 1, '2023-05-11', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance_clain_details`
--

CREATE TABLE `tbl_insurance_clain_details` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ClainStatus` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_insurance_clain_details`
--

INSERT INTO `tbl_insurance_clain_details` (`id`, `CompId`, `ClainStatus`, `Message`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, 1, 'In Process', 'Test jkjkd', 1, '2023-04-27', 1, '2023-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `CustId` int(11) NOT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `CellNo` varchar(50) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(100) DEFAULT NULL,
  `CgstPer` varchar(100) DEFAULT NULL,
  `IgstPer` varchar(100) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ExtraAmount` float(14,2) DEFAULT NULL,
  `TotalAmount` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `NetAmount` float(14,2) DEFAULT NULL,
  `Advance` float(14,2) DEFAULT NULL,
  `Balance` float(14,2) DEFAULT NULL,
  `ExtraReason` text DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `PayType2` varchar(100) DEFAULT NULL,
  `ChequeNo2` varchar(100) DEFAULT NULL,
  `ChqDate2` date DEFAULT NULL,
  `BankName2` varchar(100) DEFAULT NULL,
  `UpiNo2` varchar(100) DEFAULT NULL,
  `Amount1` float(14,2) DEFAULT NULL,
  `Amount2` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`id`, `SrNo`, `Barcode`, `CustId`, `AccCode`, `CellNo`, `CustName`, `EmailId`, `Address`, `InvoiceNo`, `InvoiceDate`, `SubTotal`, `SgstPer`, `CgstPer`, `IgstPer`, `GstAmt`, `ExtraAmount`, `TotalAmount`, `Discount`, `NetAmount`, `Advance`, `Balance`, `ExtraReason`, `PayType`, `ChequeNo`, `ChqDate`, `BankName`, `UpiNo`, `PayType2`, `ChequeNo2`, `ChqDate2`, `BankName2`, `UpiNo2`, `Amount1`, `Amount2`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(2, 2, '', 444, 'V86005444', '8600533476', 'Sant Krupa & Co.', '', 'New Mondha Jalna', '002', '2024-05-10', 13240.00, '', '', '', 0.00, 0.00, 0.00, 0.00, 13240.00, 13240.00, 0.00, '', 'Cash', '', '0000-00-00', '', '', 'Cash', '', '0000-00-00', '', '', 13240.00, 0.00, 'Good purchase by cash Through Vishwambar', 1, 162, '2024-05-10', 0, NULL),
(3, 3, '', 444, 'V86005444', '8600533476', 'Sant Krupa & Co.', '', 'New Mondha Jalna', '003', '2024-05-08', 5000.00, '', '', '', 0.00, 0.00, 0.00, 0.00, 5000.00, 5000.00, 0.00, '', 'UPI', '', '0000-00-00', '', '', 'UPI', '', '0000-00-00', '', '', 5000.00, 0.00, '', 1, 162, '2024-05-10', 162, '2024-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_details`
--

CREATE TABLE `tbl_invoice_details` (
  `id` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `UnitId` int(11) NOT NULL,
  `Unit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_invoice_details`
--

INSERT INTO `tbl_invoice_details` (`id`, `InvId`, `ProdId`, `Qty`, `Price`, `CgstPer`, `SgstPer`, `GstAmt`, `Total`, `CreatedDate`, `UnitId`, `Unit`) VALUES
(3, 2, 6, 343, 16.00, '', '', 0.00, 5488.00, '2024-05-10', 0, ''),
(4, 2, 7, 323, 24.00, '', '', 0.00, 7752.00, '2024-05-10', 1, 'KG'),
(6, 3, 9, 100, 50.00, '', '', 0.00, 5000.00, '2024-05-08', 4, 'QTY');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issues`
--

CREATE TABLE `tbl_issues` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_issues`
--

INSERT INTO `tbl_issues` (`id`, `Name`, `Photo`, `Phone`, `Phone2`, `EmailId`, `Address`, `Status`) VALUES
(1, 'VFD Issu', '', '9765074481', '', '', 'MANISH NAGAR', 1),
(2, 'Pump Issue', '', '9545904488', '', '', 'ASHOK SQUARE', 1),
(3, 'Module Damage', '', '9545904488', '', '', 'MANEWADA BESA ROAD', 1),
(4, 'Cable Damag', NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Water Pressure\r\nLow', NULL, NULL, NULL, NULL, NULL, 1),
(6, 'Theft', NULL, NULL, NULL, NULL, NULL, 1),
(7, 'Others ', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kot_data`
--

CREATE TABLE `tbl_kot_data` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `table_number` varchar(50) DEFAULT '',
  `customer_name` varchar(100) DEFAULT '',
  `customer_phone` varchar(20) DEFAULT '',
  `order_instructions` text DEFAULT NULL,
  `kot_type` varchar(50) NOT NULL,
  `kot_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`kot_data`)),
  `total_items` int(11) DEFAULT 0,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `printed_at` datetime NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kot_data`
--

INSERT INTO `tbl_kot_data` (`id`, `invoice_no`, `table_number`, `customer_name`, `customer_phone`, `order_instructions`, `kot_type`, `kot_data`, `total_items`, `total_amount`, `printed_at`, `created_at`, `updated_at`) VALUES
(1, '20250911201214512', '8', '', '', '', 'DELTA', '[{\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Batata Vada\", \"kitchen_type\": \"south_indian\"}, {\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Masala Tea ( Cutting )\", \"kitchen_type\": \"chinese\"}, {\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Masala Tea (Medium )\", \"kitchen_type\": \"chinese\"}]', 3, 0.00, '0000-00-00 00:00:00', '2025-09-11 20:12:20', '2025-09-11 20:12:20'),
(2, '20250911201226825', '8', '', '', '', 'DELTA', '[{\"qty\": 2, \"price\": 0.0, \"ProductName\": \"Batata Vada\", \"kitchen_type\": \"south_indian\"}]', 1, 0.00, '0000-00-00 00:00:00', '2025-09-11 20:12:31', '2025-09-11 20:12:31'),
(3, '20250911201251643', '8', '', '', '', 'REPRINT', '[{\"qty\": 3, \"price\": 0.0, \"ProductName\": \"Batata Vada\", \"kitchen_type\": \"south_indian\"}, {\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Masala Tea ( Cutting )\", \"kitchen_type\": \"chinese\"}, {\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Masala Tea (Medium )\", \"kitchen_type\": \"chinese\"}]', 3, 0.00, '0000-00-00 00:00:00', '2025-09-11 20:12:55', '2025-09-11 20:12:55'),
(4, '20250911201443283', '8', '', '', '', 'DELTA', '[{\"qty\": 5, \"price\": 0.0, \"ProductName\": \"Batata Vada\", \"kitchen_type\": \"south_indian\"}]', 1, 0.00, '0000-00-00 00:00:00', '2025-09-11 20:14:48', '2025-09-11 20:14:48'),
(5, '20250912103010144', '1', '', '', '', 'DELTA', '[{\"qty\": 1, \"price\": 0.0, \"ProductName\": \"Staff Tea Free\", \"kitchen_type\": \"south_indian\"}]', 1, 0.00, '0000-00-00 00:00:00', '2025-09-12 10:30:13', '2025-09-12 10:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kyc`
--

CREATE TABLE `tbl_kyc` (
  `id` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Phone2` varchar(100) DEFAULT NULL,
  `Profession` varchar(255) DEFAULT NULL,
  `PanNo` varchar(100) DEFAULT NULL,
  `AadharNo` varchar(100) DEFAULT NULL,
  `FsiicNo` varchar(255) DEFAULT NULL,
  `ShopActNo` varchar(255) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `AnniversaryDate` date DEFAULT NULL,
  `ShopOpenDate` date DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kyc`
--

INSERT INTO `tbl_kyc` (`id`, `ExeId`, `Name`, `Address`, `Phone`, `Phone2`, `Profession`, `PanNo`, `AadharNo`, `FsiicNo`, `ShopActNo`, `Dob`, `AnniversaryDate`, `ShopOpenDate`, `Status`, `CreatedDate`) VALUES
(1, 2, 'Rajat Dhanwalkar', 'Ayodhyanagar,Nagpur', '9595454907', '8149693719', 'dd', 'dd', 'dd', 'dd', 'dd', '2023-06-04', '2023-06-17', '2023-06-07', 1, '2023-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leads`
--

CREATE TABLE `tbl_leads` (
  `id` int(11) NOT NULL,
  `TicketNo` varchar(100) DEFAULT NULL,
  `BranchId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(255) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `DocumentsStatus` varchar(255) DEFAULT NULL,
  `ClainReason` varchar(255) DEFAULT NULL,
  `ClainStatus` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `AllocateId` int(11) NOT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `OppConverted` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lead_details`
--

CREATE TABLE `tbl_lead_details` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ClainStatus` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_request`
--

CREATE TABLE `tbl_leave_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ReqDate` date DEFAULT NULL,
  `NoticePeriod` varchar(50) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `MrgBy` int(11) NOT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MannagerComment` text DEFAULT NULL,
  `MannagerApproveDate` date DEFAULT NULL,
  `HrBy` int(11) NOT NULL,
  `HrStatus` tinyint(1) NOT NULL,
  `HrComment` text DEFAULT NULL,
  `HrApproveDate` date DEFAULT NULL,
  `AttRoll` tinyint(1) NOT NULL,
  `FromDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `Latitude` varchar(20) DEFAULT NULL,
  `Longitude` varchar(20) DEFAULT NULL,
  `TotDays` int(11) NOT NULL,
  `AvailLeave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE `tbl_locations` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_time`
--

CREATE TABLE `tbl_login_time` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `LoginDate` date DEFAULT NULL,
  `LoginTIme` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_login_time`
--

INSERT INTO `tbl_login_time` (`id`, `UserId`, `LoginDate`, `LoginTIme`) VALUES
(1, 1, '2025-09-17', '14:13:56'),
(2, 1, '2025-09-17', '16:53:43'),
(3, 1, '2025-09-18', '16:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maha_photos`
--

CREATE TABLE `tbl_maha_photos` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Roll` varchar(50) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_maha_photos`
--

INSERT INTO `tbl_maha_photos` (`id`, `Name`, `Photo`, `Roll`, `Status`) VALUES
(1, 'Tea', '86_banner.jpeg', 'Product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manager_checkpoint`
--

CREATE TABLE `tbl_manager_checkpoint` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `staff_grooming` varchar(255) NOT NULL,
  `food_quality_test` varchar(255) NOT NULL,
  `store_stock_check` varchar(255) NOT NULL,
  `problem_solutions` varchar(255) NOT NULL,
  `preparation_freezer` varchar(255) NOT NULL,
  `equipment_maintenance_check` varchar(255) NOT NULL,
  `outlet_running_operation` varchar(255) NOT NULL,
  `unused_product_transfer` varchar(255) NOT NULL,
  `sale_purchase_report` varchar(255) NOT NULL,
  `counter_display_arrangement` varchar(255) NOT NULL,
  `staff_grooming_question` varchar(255) DEFAULT 'Staff grooming',
  `food_quality_test_question` varchar(255) DEFAULT 'Food Quality and test',
  `store_stock_check_question` varchar(255) DEFAULT 'Store stock check',
  `problem_solutions_question` varchar(255) DEFAULT 'Problem solutions',
  `preparation_freezer_question` varchar(255) DEFAULT 'Preparation check in freezer',
  `equipment_maintenance_check_question` varchar(255) DEFAULT 'Equipment and maintenance check',
  `outlet_running_operation_question` varchar(255) DEFAULT 'Observe outlet running operation',
  `unused_product_transfer_question` varchar(255) DEFAULT 'Unused product transfer to other outlet',
  `sale_purchase_report_question` varchar(255) DEFAULT 'Check sale and purchase report',
  `counter_display_arrangement_question` varchar(255) DEFAULT 'Counter display and arrangement check',
  `FrId` int(11) NOT NULL,
  `question_issue_observation` text DEFAULT NULL,
  `issue_observation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdby` int(11) NOT NULL,
  `createddate` date DEFAULT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manager_sell_percentage`
--

CREATE TABLE `tbl_manager_sell_percentage` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Percent` float(14,2) DEFAULT NULL,
  `Roll` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mh_menu`
--

CREATE TABLE `tbl_mh_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_money_range`
--

CREATE TABLE `tbl_money_range` (
  `id` int(11) NOT NULL,
  `RangeFrom` float(14,2) DEFAULT NULL,
  `RangeTo` float(14,2) DEFAULT NULL,
  `Percentage` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mrp_available_stock`
--

CREATE TABLE `tbl_mrp_available_stock` (
  `id` bigint(20) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` float(14,2) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `orgstockid` varchar(50) NOT NULL DEFAULT '0',
  `Wastage` smallint(6) NOT NULL,
  `VedInvId` int(11) NOT NULL,
  `vedorder` varchar(10) NOT NULL DEFAULT 'No',
  `VedExpItem` varchar(10) NOT NULL DEFAULT 'No',
  `VedExpId` int(11) NOT NULL,
  `EmpExpItem` varchar(10) DEFAULT 'No',
  `EmpExpId` int(11) NOT NULL,
  `ExpItemId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `MfgDate` date DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `WastageInvId` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mrp_available_stock_inv`
--

CREATE TABLE `tbl_mrp_available_stock_inv` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `InvNo` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `TotalQty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `SenderId` int(11) NOT NULL,
  `ReceiverId` int(11) NOT NULL,
  `DeptId` int(11) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `BatchId` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `AccType` varchar(100) DEFAULT NULL,
  `AccName` varchar(100) DEFAULT NULL,
  `ClearStatus` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nso_vendor_expenses`
--

CREATE TABLE `tbl_nso_vendor_expenses` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `TempPrdId` int(11) NOT NULL,
  `TempPrdId2` int(11) NOT NULL,
  `VedPhone` varchar(50) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `WebPhoto` varchar(255) DEFAULT NULL,
  `WebPhoto2` varchar(255) DEFAULT NULL,
  `Locations` int(11) NOT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `AccBalance` float(14,2) NOT NULL,
  `TradeName` varchar(255) DEFAULT NULL,
  `TypeOfVendor` int(11) NOT NULL,
  `PoNo` varchar(100) DEFAULT NULL,
  `AdvAmount` varchar(50) DEFAULT NULL,
  `InvType` varchar(50) DEFAULT NULL,
  `PayAmount` varchar(50) DEFAULT NULL,
  `BalAmt` varchar(50) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentStatus` tinyint(1) NOT NULL,
  `PayBy` int(11) NOT NULL,
  `PayNarration` text DEFAULT NULL,
  `BdmStatus` tinyint(1) NOT NULL,
  `BdmBy` int(11) NOT NULL,
  `BdmApproveDate` date DEFAULT NULL,
  `BdmComment` text DEFAULT NULL,
  `BdmAmount` varchar(20) DEFAULT NULL,
  `PurchaseStatus` tinyint(1) NOT NULL,
  `PurchaseBy` int(11) NOT NULL,
  `PurchaseApproveDate` date DEFAULT NULL,
  `PurchaseComment` text DEFAULT NULL,
  `PurchaseAmount` varchar(20) DEFAULT NULL,
  `GrnNo` varchar(100) DEFAULT NULL,
  `UtrNo` varchar(100) DEFAULT NULL,
  `Product` varchar(20) NOT NULL DEFAULT 'No',
  `NsoStatus` tinyint(1) NOT NULL,
  `NsoBy` int(11) NOT NULL,
  `NsoApproveDate` date DEFAULT NULL,
  `NsoComment` text DEFAULT NULL,
  `NsoAmount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nso_vendor_expense_ledger`
--

CREATE TABLE `tbl_nso_vendor_expense_ledger` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `GstPer` varchar(100) DEFAULT NULL,
  `CrDr` varchar(100) DEFAULT NULL,
  `Roll` tinyint(1) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `SellId` int(11) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SellType` varchar(100) NOT NULL DEFAULT 'Gold',
  `BranchId` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ExpenseId` int(11) NOT NULL,
  `Flag` varchar(100) DEFAULT NULL,
  `AccRoll` varchar(100) DEFAULT NULL,
  `PostId` int(11) NOT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BorrowFlag` tinyint(1) NOT NULL,
  `BillSoftFrId` int(11) NOT NULL,
  `UtrNo` varchar(100) DEFAULT NULL,
  `NsoVed` tinyint(1) NOT NULL,
  `ExpId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_percentage`
--

CREATE TABLE `tbl_offer_percentage` (
  `id` int(11) NOT NULL,
  `AccountId` tinyint(1) NOT NULL COMMENT '4:doctor; 5:optician; 6:wholesaler; 7:customer; 8:retailer;',
  `Percentage` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `BillSoft` tinyint(1) NOT NULL,
  `FrSoft` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`id`, `Name`, `BillSoft`, `FrSoft`, `admin`) VALUES
(1, 'Locations', 0, 0, 0),
(2, 'Download Center', 0, 0, 0),
(3, 'MahaTube', 0, 0, 0),
(4, 'Image gallery', 0, 0, 0),
(5, 'User Type', 0, 0, 0),
(6, 'Cashback Amount', 0, 0, 0),
(7, 'Shopping Cashback Price Range', 0, 0, 0),
(8, 'Add Money Cashback Price Range', 0, 0, 0),
(9, 'Notifications', 0, 0, 0),
(10, 'Edit', 0, 0, 0),
(11, 'Delete', 0, 0, 0),
(12, 'Payment Method', 0, 0, 0),
(13, 'Cancel Reason', 0, 0, 0),
(14, 'Add', 0, 0, 0),
(15, 'Coupon Code', 0, 0, 0),
(16, 'Generate Order', 0, 0, 0),
(17, 'Orders', 0, 0, 0),
(18, 'Products', 0, 0, 0),
(19, 'Category', 0, 0, 0),
(20, 'Sub Category', 0, 0, 0),
(21, 'Product Attributes', 0, 0, 0),
(22, 'Shipping Price', 0, 0, 0),
(23, 'Home Sliders', 0, 0, 0),
(24, 'Home Banners', 0, 0, 0),
(25, 'Faq\'s', 0, 0, 0),
(26, 'About Us', 0, 0, 0),
(27, 'Franchise Account', 0, 0, 0),
(28, 'Customer Account', 0, 0, 0),
(29, 'Employee Account', 0, 0, 0),
(30, 'Business Partner Account', 0, 0, 0),
(31, 'Task', 0, 0, 0),
(32, 'Franchise Query', 0, 0, 0),
(33, 'Executive Track', 0, 0, 0),
(34, 'Executive Visit', 0, 0, 0),
(35, 'Leads', 0, 0, 0),
(36, 'Expense Request', 0, 0, 0),
(37, 'Account', 0, 0, 0),
(38, 'Withdraw Amount Request', 0, 0, 0),
(39, 'Wallet', 0, 0, 0),
(40, 'Reports', 0, 0, 0),
(41, 'Account Reports', 0, 0, 0),
(42, 'Manager Expense Request', 0, 0, 0),
(43, 'Allocate Leads', 0, 0, 0),
(44, 'View Allocate Leads', 0, 0, 0),
(45, 'Lead Action', 0, 0, 0),
(46, 'Today Calling Leads', 0, 0, 0),
(47, 'Resign Requests', 0, 0, 0),
(48, 'Selling Product Category', 1, 0, 1),
(49, 'Selling Product Sub Category', 1, 0, 1),
(50, 'Selling Products', 1, 0, 1),
(51, 'Allocate Products', 1, 0, 1),
(52, 'Raw Product Category', 1, 0, 1),
(53, 'Raw Product Sub Category', 1, 0, 1),
(54, 'Raw Products', 1, 0, 1),
(55, 'Allocate Raw Products', 1, 0, 1),
(56, 'Franchise Account', 1, 0, 1),
(57, 'Employee Account', 1, 1, 1),
(58, 'Godown Account', 1, 0, 1),
(59, 'Godown Product', 1, 0, 1),
(60, 'Godown Stock', 1, 0, 1),
(61, 'Godown Transfer Stock', 1, 0, 1),
(62, 'Pending Request For Product Stocks', 1, 0, 1),
(63, 'Approve Request For Product Stocks', 1, 0, 1),
(64, 'Create Invoice For Product Stocks', 1, 0, 1),
(65, 'Return Godown Product', 1, 0, 1),
(66, 'Product Stock Report', 1, 1, 1),
(67, 'Raw Product Stock Report', 1, 1, 1),
(68, 'Category Wise Sell Report', 1, 1, 1),
(69, 'Product Wise Sell Report', 1, 1, 1),
(70, 'Discount Report', 1, 1, 1),
(71, 'Customer Sell Report', 1, 0, 1),
(72, 'Daily Sale Report', 1, 0, 1),
(73, 'Weekly Sale report', 1, 0, 1),
(74, 'Godown Stock Report', 1, 0, 1),
(75, 'Godown Product Stock report', 1, 0, 1),
(76, 'Transfer Stock Godown To Franchise Report', 1, 0, 1),
(77, 'Print Setting', 1, 1, 0),
(80, 'Cash Book', 1, 1, 0),
(81, 'Today Orders', 1, 1, 0),
(82, 'Today Pending Orders', 1, 1, 0),
(83, 'All Orders', 1, 1, 0),
(84, 'Today Barcode Order', 1, 1, 0),
(85, 'Today Online Orders', 1, 1, 0),
(86, 'Selling Products', 1, 1, 0),
(87, 'Today Pending Orders', 0, 0, 0),
(88, 'All Pending Orders', 0, 0, 0),
(92, 'Manage Product Stock', 1, 1, 0),
(93, 'Raw Products', 1, 1, 0),
(94, 'Manage Raw Product Stock', 1, 1, 0),
(96, 'Return MRP Product', 1, 1, 0),
(97, 'Return Raw Product', 1, 1, 0),
(100, 'Daily DB Backup', 0, 0, 0),
(101, 'Customer Feedback', 0, 0, 0),
(102, 'Boolet Rally', 0, 0, 0),
(103, 'Complaints', 0, 0, 0),
(104, 'Asset management', 0, 0, 0),
(105, 'Admin Vendor Expenses', 0, 0, 0),
(115, 'Production Raw Product', 0, 0, 0),
(116, 'Manage Production Raw Stock', 1, 0, 0),
(117, 'Godown Product Category', 1, 0, 0),
(118, 'Controll Room', 0, 0, 0),
(119, 'Create New Expenses', 0, 0, 0),
(120, 'Store Manager Duties', 0, 0, 0),
(121, 'Manager Checkpoints', 0, 0, 0),
(122, 'Fuel Station Checklist', 0, 0, 0),
(123, 'Bank Details', 0, 0, 0),
(124, 'Employee Pending Expense List', 0, 0, 0),
(125, 'Documents', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option_billsoft`
--

CREATE TABLE `tbl_option_billsoft` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Roll` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_option_billsoft`
--

INSERT INTO `tbl_option_billsoft` (`id`, `Name`, `Roll`) VALUES
(1, 'Sub Zone Expense VS Sale', 1),
(2, 'Zone Expense Vs Sale', 1),
(3, 'Franchise Expense Vs Sale Report', 1),
(4, 'Zone Wise', 1),
(5, 'Sub Zone Wise', 1),
(6, 'Franchise Wise', 1),
(7, 'Franchise', 1),
(8, 'Employees', 1),
(9, 'Brands', 1),
(10, 'Edit', 1),
(11, 'Delete', 1),
(12, 'MRP Products', 1),
(13, 'Making Products', 1),
(14, 'Add', 1),
(15, 'Allocate Products', 1),
(16, 'Allocate Products To Vendor', 1),
(17, 'Division', 1),
(18, 'Segment', 1),
(19, 'Family', 1),
(20, 'Class', 1),
(21, 'Mc. Desc', 1),
(22, 'Brand Desc', 1),
(23, 'Category', 1),
(24, 'Sub Category', 1),
(25, 'Products', 1),
(26, 'Allocate Products', 1),
(27, 'Allocate Products To Vendor', 1),
(28, 'Godown Account', 1),
(29, 'Add Godown Stock', 1),
(30, 'View Godown Stock', 1),
(31, 'Upload Godown Stock By Excel', 1),
(32, 'Transfer Stock Godown To COCO Franchise', 1),
(33, 'Transfer Stock Godown To FOFO Franchise', 1),
(34, 'Transfer Stock Godown To Other Franchise', 1),
(35, 'Return Godown Product', 1),
(36, 'MRP Product Stocks Request', 1),
(37, 'Raw Product Stocks Request', 1),
(38, 'Other Product Stocks Request', 1),
(39, 'Set Target', 1),
(40, 'Target Completion', 1),
(41, 'Target Completion New', 1),
(42, 'Target Completion Report', 1),
(43, 'Target Completion Report Date Wise', 1),
(44, 'Daily Sale Report', 1),
(45, 'Daily Sale Report 2', 1),
(46, 'Weekly Sale Report', 1),
(47, 'Weekly Sale Report 2', 1),
(48, 'Godown Product Stock report', 1),
(49, 'Transfer Stock Godown To Franchise Report', 1),
(50, 'Transfer Stock Godown To Franchise Report 2', 1),
(51, 'Product Stock Report', 1),
(52, 'Account Product Stock Report', 1),
(53, 'Raw Product Stock Report', 1),
(54, 'Category Wise Sell Report', 1),
(55, 'Product Wise Sell Report', 1),
(56, 'MRP Product Wise Sell Report', 1),
(57, 'Sell Report', 1),
(58, 'Discount Report', 1),
(59, 'Cancelled Report', 1),
(60, 'Discount Percentage', 1),
(61, 'Financer/Partner Account', 1),
(62, 'Commision Note', 1),
(63, 'Product Stock Report', 1),
(64, 'Raw Product Stock Report', 1),
(65, 'Category Wise Sell Report', 1),
(66, 'Product Wise Sell Report', 1),
(67, 'Discount Report', 1),
(68, 'Category', 1),
(69, 'Sub Category', 1),
(70, 'Godown Products', 1),
(71, 'Print Setting', 2),
(72, 'Cash Book', 2),
(73, 'Credit Order Accounts', 2),
(74, 'Today Orders', 2),
(75, 'Cancelled Orders', 2),
(76, 'Today Barcode Orders', 2),
(77, 'Today Online Orders', 2),
(78, 'All Orders', 2),
(79, 'Today Pending Orders', 2),
(80, 'MRP Invenotory Stock Report', 2),
(81, 'Raw Invenotory Stock Report', 2),
(82, 'Assets Invenotory Stock Report', 2),
(83, 'Min MRP Invenotory Stock Report', 2),
(84, 'Top Selling Product', 2),
(85, 'Stock Level', 2),
(86, 'Product Stock Report', 2),
(87, 'Account Product Stock Report', 2),
(88, 'Raw Product Stock Report', 2),
(89, 'Category Wise Sell Report', 2),
(90, 'Product Wise Sell Report', 2),
(91, 'Product Wise Sell Report Date Wise', 2),
(92, 'Discount Report', 2),
(93, 'Credit Order Outstanding Report', 2),
(94, 'Credit Order Customer Report', 2),
(95, 'Customer Products', 2),
(96, 'Other Products', 2),
(97, 'Download Customer Products Excel', 2),
(98, 'Manage Stocks', 2),
(99, 'Add Stocks By Barcode (Single)', 2),
(100, 'Add Stocks By Excel', 2),
(101, 'Manage Wastage Stocks', 2),
(102, 'Raw/Making Products', 2),
(103, 'Download Raw Product Excel', 2),
(104, 'Manage Raw Stocks', 2),
(105, 'Add Stocks By Excel', 2),
(106, 'Manage Wastage Raw Stocks', 2),
(107, 'Return MRP Product', 2),
(108, 'Return Raw Product', 2),
(109, 'Receive Go-Down Stocks', 2),
(110, 'Transfer Stock Franchise To Franchise', 2),
(111, 'Receive Coco Franchise Stocks', 2),
(112, 'Employees', 2),
(113, 'Order QR Code', 2),
(114, 'Payment Mode Change', 2),
(115, 'Add', 2),
(116, 'Edit', 2),
(117, 'Delete', 2),
(118, 'Category', 1),
(119, 'Sub Category', 1),
(120, 'Allocate Godown Product', 1),
(122, 'Transfer MRP Stock Godown To Franchise', 1),
(123, 'Date Wise Sale Report', 1),
(124, 'Products', 1),
(125, 'Allocate Products', 1),
(126, 'Allocate Products To Vendor', 1),
(127, 'Discount', 2),
(128, 'Transfer Raw Stock Franchise To Franchise', 2),
(129, 'Sell report FMCG MG', 1),
(130, 'Franchise Wise New', 1),
(131, 'Vendors', 1),
(132, 'Distributers', 1),
(133, 'Productions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option_cp`
--

CREATE TABLE `tbl_option_cp` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_option_cp`
--

INSERT INTO `tbl_option_cp` (`id`, `Name`) VALUES
(1, 'Sub Zone Expense VS Sale'),
(2, 'Zone Expense Vs Sale'),
(3, 'Franchise Expense Vs Sale Report'),
(4, 'All Pending Expenses'),
(5, 'All Pending Petty Cash Request'),
(6, 'All Pending Vendor Expenses Request'),
(7, 'All Pending NSO Vendor Expenses Request'),
(8, 'All Pending Attendace Request'),
(9, 'All Expenses'),
(10, 'Edit'),
(11, 'Delete'),
(12, 'All Petty Cash Request'),
(13, 'All Vendor Expenses Request'),
(14, 'Add'),
(15, 'All NSO Vendor Expenses Request'),
(16, 'All Attendace Request'),
(17, 'Account Vendor Expenses'),
(18, 'Account NSO Vendor Expenses'),
(19, 'Cash Book'),
(20, 'Admin Petty Cash Request'),
(21, 'Daily Sale Report'),
(22, 'Daily Sale Report-2'),
(23, 'Weekly Sale Report'),
(24, 'Weekly Sale Report-2'),
(25, 'Item Wise Sale Report'),
(26, 'Expense Report'),
(27, 'Expense Summary Report'),
(28, 'Account Petty Cash Request'),
(29, 'Pay Advance Amount'),
(30, 'Controll Room'),
(31, 'Store Manager Duties'),
(32, 'Manager Checkpoints'),
(33, 'Fuel Station Checklist'),
(34, 'Documents'),
(35, 'Attendance'),
(36, 'Advance Salary'),
(37, 'Customer Feedback'),
(38, 'Admin Employee Expenses'),
(39, 'Bank Details'),
(40, 'BDM Vendor Expenses'),
(41, 'Purchase Dept Vendor Expenses'),
(42, 'Purchase Dept NSO Vendor Expenses'),
(43, 'NSO Vendor Expenses'),
(44, 'Manager Expenses'),
(45, 'HR Salary Expenses'),
(46, 'Mananger Petty Cash Request'),
(47, 'Pay Vendor Amount'),
(48, 'Pay NSO Vendor Amount'),
(49, 'Complaints'),
(50, 'Asset management'),
(51, 'Masters'),
(52, 'Zone'),
(53, 'Sub Zone'),
(54, 'Assign Franchise To Zone'),
(55, 'Franchise'),
(56, 'Employee'),
(57, 'Vendors'),
(59, 'Freelancer/Business Partner'),
(60, 'Task'),
(61, 'Franchise Query'),
(62, 'Executive Track'),
(63, 'Account/Admin Advance Request'),
(64, 'HR Resign Request'),
(65, 'HR Advance Request'),
(66, 'HR Attendance Request'),
(67, 'HR Leave Request'),
(68, 'Manager Resign Request'),
(69, 'Manager Advance Request'),
(70, 'Manager Attendance Request'),
(71, 'Manager Leave Request'),
(72, 'Admin Vendor Expenses'),
(73, 'Admin NSO Vendor Expenses'),
(74, 'Withdraw Amount Request'),
(75, 'Wallet'),
(76, 'Profit And Loss'),
(77, 'Franchise Daily Checklist Report'),
(78, 'Account Report'),
(79, 'Franchise Query report'),
(80, 'Employee Task Report'),
(81, 'Employee Attendace Report'),
(82, 'Employee Wallet Report'),
(83, 'Employee Wallet Outstanding'),
(84, 'Employee Wallet Outstanding-2'),
(85, 'Add Cash Book'),
(86, 'Admin Employee Expense Request'),
(87, 'Cash Book Request'),
(88, 'Account Employee Expenses'),
(89, 'All Approve Expenses'),
(90, 'All Approve Petty Cash Request'),
(91, 'All Approve Vendor Expenses Request'),
(92, 'All Approve NSO Vendor Expenses Request'),
(93, 'All Approve Attendace Request'),
(94, 'Employee Scheme'),
(95, 'Employee Dashboard'),
(96, 'Daily MIS of Joining'),
(97, 'Daily MIS of Attrition (Exit)'),
(98, 'Employee Attendance Report Percentage Wise'),
(99, 'Aliances Upload Documents'),
(100, 'Company Policy'),
(101, 'Admin Approve Employee Expenses'),
(102, 'Cash Handover Report'),
(103, 'First NSO Vendor Expenses Approval'),
(104, 'Stock Available Report'),
(105, 'Daily Wise Sale Report'),
(106, 'Shop Sessions Report');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `order_timestamp` datetime NOT NULL,
  `franchise_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `delivery_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(10) NOT NULL DEFAULT 'INR',
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(50) DEFAULT NULL,
  `delivery_type` varchar(50) NOT NULL DEFAULT 'Home Delivery',
  `delivery_time` varchar(50) NOT NULL,
  `estimated_delivery` datetime NOT NULL,
  `delivery_instructions` text DEFAULT NULL,
  `delivery_partner_id` varchar(50) DEFAULT NULL,
  `delivery_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `platform` varchar(50) NOT NULL DEFAULT 'mobile_app',
  `app_version` varchar(20) NOT NULL DEFAULT '1.0.0',
  `device_type` varchar(20) NOT NULL DEFAULT 'mobile',
  `order_source` varchar(50) NOT NULL DEFAULT 'customer_app',
  `promo_code` varchar(50) DEFAULT NULL,
  `referral_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_2025`
--

CREATE TABLE `tbl_orders_2025` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_timestamp` datetime NOT NULL,
  `franchise_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `delivery_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(10) DEFAULT 'INR',
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(50) DEFAULT NULL,
  `delivery_type` varchar(50) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `estimated_delivery` datetime DEFAULT NULL,
  `delivery_instructions` text DEFAULT NULL,
  `delivery_partner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `app_version` varchar(20) DEFAULT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `order_source` varchar(50) DEFAULT NULL,
  `promo_code` varchar(50) DEFAULT NULL,
  `referral_code` varchar(50) DEFAULT NULL,
  `delivery_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_orders_2025`
--

INSERT INTO `tbl_orders_2025` (`id`, `order_id`, `order_status`, `order_timestamp`, `franchise_id`, `customer_id`, `subtotal`, `delivery_charges`, `tax_amount`, `discount_amount`, `total_amount`, `currency`, `payment_method`, `payment_status`, `transaction_id`, `payment_gateway`, `delivery_type`, `delivery_time`, `estimated_delivery`, `delivery_instructions`, `delivery_partner_id`, `delivery_status`, `platform`, `app_version`, `device_type`, `order_source`, `promo_code`, `referral_code`, `delivery_address`, `created_at`, `updated_at`) VALUES
(28, '1754388290885', 'Confirmed', '2025-08-05 15:34:50', 7987, 155, 290.00, 30.00, 29.00, 0.00, 349.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-05 16:19:50', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nnn', '2025-08-05 10:04:51', '2025-08-05 10:04:51'),
(29, '1754392613202', 'Confirmed', '2025-08-05 16:46:53', 671, 155, 140.00, 30.00, 14.00, 0.00, 184.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-05 17:31:53', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-05 11:16:53', '2025-08-05 11:16:53'),
(30, '1754407509611', 'Confirmed', '2025-08-05 20:55:09', 7987, 155, 130.00, 30.00, 13.00, 0.00, 173.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-05 21:40:09', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-05 15:25:09', '2025-08-05 15:25:09'),
(31, '1754412897020', 'Confirmed', '2025-08-05 22:24:57', 2392, 155, 80.00, 30.00, 8.00, 0.00, 118.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-05 23:09:57', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-05 16:54:57', '2025-08-05 16:54:57'),
(32, '1754420370701', 'Confirmed', '2025-08-06 00:29:30', 7987, 155, 130.00, 30.00, 13.00, 0.00, 173.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-06 01:14:30', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-05 18:59:30', '2025-08-05 18:59:30'),
(33, '1754420684280', 'Confirmed', '2025-08-06 00:34:44', 7987, 155, 130.00, 30.00, 13.00, 0.00, 173.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-06 01:19:44', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-05 19:04:44', '2025-08-05 19:04:44'),
(34, '1754469038338', 'Confirmed', '2025-08-06 14:00:38', 7987, 155, 70.00, 30.00, 7.00, 0.00, 107.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-06 14:45:38', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-06 08:30:39', '2025-08-06 08:30:39'),
(35, '1754482174895', 'Confirmed', '2025-08-06 17:39:34', 8088, 155, 60.00, 30.00, 6.00, 0.00, 96.00, 'INR', 'Cash on Delivery', 'Pending', NULL, 'Razorpay', 'Home Delivery', '0000-00-00 00:00:00', '2025-08-06 18:24:34', '', NULL, 'Order Confirmed', 'mobile_app', '1.0.0', 'android', 'customer_app', NULL, NULL, 'nagpur', '2025-08-06 12:09:35', '2025-08-06 12:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` varchar(20) DEFAULT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `item_total` decimal(10,2) NOT NULL,
  `product_image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items_2025`
--

CREATE TABLE `tbl_order_items_2025` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `item_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `product_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_items_2025`
--

INSERT INTO `tbl_order_items_2025` (`id`, `order_id`, `product_id`, `product_name`, `category_id`, `category_name`, `product_price`, `quantity`, `item_total`, `product_image`, `created_at`, `updated_at`) VALUES
(19, '1754388290885', 285074, 'Eg Dry Kachori 200gm', 0, 'Food Items', 70.00, 1, 70.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 10:04:51', '2025-08-05 10:04:51'),
(20, '1754388290885', 322241, 'EG NYLON GANTHIYA 200GM', 0, 'Food Items', 60.00, 3, 180.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 10:04:51', '2025-08-05 10:04:51'),
(21, '1754388290885', 284932, 'Eg Patta Wafers Salted 80Gm', 0, 'Food Items', 40.00, 1, 40.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 10:04:51', '2025-08-05 10:04:51'),
(22, '1754392613202', 22176, '4 Puri+ Bhaji', 0, 'Food Items', 80.00, 1, 80.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 11:16:53', '2025-08-05 11:16:53'),
(23, '1754392613202', 22109, '7Up Can 300Ml', 0, 'Food Items', 60.00, 1, 60.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 11:16:53', '2025-08-05 11:16:53'),
(24, '1754407509611', 285074, 'Eg Dry Kachori 200gm', 0, 'Food Items', 70.00, 1, 70.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 15:25:09', '2025-08-05 15:25:09'),
(25, '1754407509611', 322241, 'EG NYLON GANTHIYA 200GM', 0, 'Food Items', 60.00, 1, 60.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 15:25:09', '2025-08-05 15:25:09'),
(26, '1754412897020', 8372, '4 Puri+ Bhaji', 0, 'Food Items', 80.00, 1, 80.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 16:54:57', '2025-08-05 16:54:57'),
(27, '1754420370701', 285074, 'Eg Dry Kachori 200gm', 0, 'Food Items', 70.00, 1, 70.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 18:59:30', '2025-08-05 18:59:30'),
(28, '1754420370701', 322241, 'EG NYLON GANTHIYA 200GM', 0, 'Food Items', 60.00, 1, 60.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 18:59:30', '2025-08-05 18:59:30'),
(29, '1754420684280', 285074, 'Eg Dry Kachori 200gm', 0, 'Food Items', 70.00, 1, 70.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 19:04:44', '2025-08-05 19:04:44'),
(30, '1754420684280', 322241, 'EG NYLON GANTHIYA 200GM', 0, 'Food Items', 60.00, 1, 60.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-05 19:04:44', '2025-08-05 19:04:44'),
(31, '1754469038338', 285074, 'Eg Dry Kachori 200gm', 0, 'Food Items', 70.00, 1, 70.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-06 08:30:39', '2025-08-06 08:30:39'),
(32, '1754482174895', 249003, 'Aloo Bonda', 0, 'Food Items', 40.00, 1, 40.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-06 12:09:35', '2025-08-06 12:09:35'),
(33, '1754482174895', 247235, 'Aloo Bonda Half', 0, 'Food Items', 20.00, 1, 20.00, 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg', '2025-08-06 12:09:35', '2025-08-06 12:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_feedback`
--

CREATE TABLE `tbl_other_feedback` (
  `id` int(11) NOT NULL,
  `FeedId` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packages`
--

CREATE TABLE `tbl_packages` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Amount` float(14,2) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Period` tinyint(1) NOT NULL,
  `ContactLimit` int(11) NOT NULL,
  `Discount` float(14,2) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Title1` varchar(255) DEFAULT NULL,
  `Title2` text DEFAULT NULL,
  `Title3` text DEFAULT NULL,
  `Title4` text DEFAULT NULL,
  `Title5` text DEFAULT NULL,
  `Title6` varchar(255) NOT NULL,
  `Title7` varchar(255) NOT NULL,
  `Title8` varchar(255) NOT NULL,
  `Title9` varchar(255) NOT NULL,
  `Title10` varchar(255) NOT NULL,
  `Detail1` varchar(1000) NOT NULL,
  `Detail2` varchar(1000) NOT NULL,
  `Detail3` varchar(1000) NOT NULL,
  `Detail4` varchar(1000) NOT NULL,
  `Detail5` varchar(1000) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_packages`
--

INSERT INTO `tbl_packages` (`id`, `Name`, `Amount`, `Duration`, `Period`, `ContactLimit`, `Discount`, `Photo`, `Title1`, `Title2`, `Title3`, `Title4`, `Title5`, `Title6`, `Title7`, `Title8`, `Title9`, `Title10`, `Detail1`, `Detail2`, `Detail3`, `Detail4`, `Detail5`, `Status`, `CreatedDate`, `ModifiedDate`, `CreatedBy`, `ModifiedBy`, `Points`) VALUES
(2, 'Silver', 99.00, 1, 1, 0, 2.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-04-13 20:26:19', '2023-09-30 23:31:47', 1, 5, 0),
(3, 'Gold', 199.00, 3, 1, 0, 3.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-05-22 19:33:51', '2023-09-30 23:32:06', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_title`
--

CREATE TABLE `tbl_package_title` (
  `id` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package_title`
--

INSERT INTO `tbl_package_title` (`id`, `PostId`, `Title`) VALUES
(21, 2, '100% Money back guarantee'),
(22, 2, 'Evaluation'),
(23, 2, 'Dedicated Support'),
(24, 3, '100% Money back guarantee'),
(25, 3, 'Evaluation'),
(26, 3, 'Dedicated Support');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_files`
--

CREATE TABLE `tbl_page_files` (
  `id` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Files` varchar(300) DEFAULT NULL,
  `FileName` varchar(300) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_page_files`
--

INSERT INTO `tbl_page_files` (`id`, `PostId`, `Title`, `Details`, `Files`, `FileName`, `Status`, `Photo`) VALUES
(1, 0, 'File 1', '', '51_sample.pdf', NULL, 1, '74_25_snacks.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paid_emi`
--

CREATE TABLE `tbl_paid_emi` (
  `id` int(11) NOT NULL,
  `InvId` int(11) DEFAULT NULL,
  `ReceiptNo` varchar(100) DEFAULT NULL,
  `ReceiptDate` date DEFAULT NULL,
  `ReceiptAmt` float(14,2) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_details`
--

CREATE TABLE `tbl_payment_details` (
  `id` bigint(20) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PkgId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `payment_id` varchar(1000) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `amount` float(14,2) NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `buyer_phone` varchar(100) NOT NULL,
  `buyer_email` varchar(100) NOT NULL,
  `instrument_type` varchar(100) NOT NULL,
  `billing_instrument` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'dr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_mode`
--

CREATE TABLE `tbl_payment_mode` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Value` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment_mode`
--

INSERT INTO `tbl_payment_mode` (`id`, `Name`, `Value`, `Status`, `push_flag`, `delete_flag`, `modified_time`) VALUES
(1, 'Cash', 'Cash', 1, 0, 0, '2024-05-19 06:54:29.000'),
(2, 'Phone Pay', 'Phone Pay', 1, 0, 0, '2024-05-19 06:54:29.000'),
(3, 'Google Pay', 'UPI', 1, 0, 0, '2024-05-19 06:54:29.000'),
(4, 'Paytm', 'Paytm', 1, 0, 0, '2024-05-19 06:54:29.000'),
(5, 'Other UPI', 'Other UPI', 1, 0, 0, '2024-05-19 06:54:29.000'),
(6, 'Credit / उधार', 'Borrowing', 1, 0, 0, '2024-07-04 06:54:29.000'),
(7, 'Zomato', 'Zomato', 1, 0, 0, '2024-05-19 06:54:29.000'),
(8, 'Swiggy', 'Swiggy', 1, 0, 0, '2025-03-29 17:14:10.000'),
(9, 'Website online', 'Website online', 1, 0, 0, '2025-06-16 17:21:51.000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photos`
--

CREATE TABLE `tbl_photos` (
  `id` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_points`
--

CREATE TABLE `tbl_points` (
  `id` int(11) NOT NULL,
  `Oid` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Points` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CrDr` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup_image`
--

CREATE TABLE `tbl_popup_image` (
  `id` int(11) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_popup_image`
--

INSERT INTO `tbl_popup_image` (`id`, `Photo`, `Status`, `modifiedby`, `modifieddate`) VALUES
(1, '81_new-3.jpg', 1, 2651, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_po_references`
--

CREATE TABLE `tbl_po_references` (
  `id` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `Ref` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_po_references`
--

INSERT INTO `tbl_po_references` (`id`, `SellId`, `Ref`) VALUES
(1, 2, 'Offer asreceived on dated : OIPL/22-23/E-2384 Dated.17.03.2023'),
(2, 2, 'EESL Tender No. 1712& all corrigendum’sfor solar water pumping programme');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prettycash_request`
--

CREATE TABLE `tbl_prettycash_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `UtrNo` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `AdminAmount` varchar(50) DEFAULT NULL,
  `AccAmount` varchar(50) DEFAULT NULL,
  `AccStatus` int(11) NOT NULL,
  `AccComment` text DEFAULT NULL,
  `AccApproveDate` date DEFAULT NULL,
  `MrgBy` int(11) NOT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MannagerComment` text DEFAULT NULL,
  `MannagerApproveDate` date DEFAULT NULL,
  `MannagerAmount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_price_range`
--

CREATE TABLE `tbl_price_range` (
  `id` int(11) NOT NULL,
  `RangeFrom` float(14,2) DEFAULT NULL,
  `RangeTo` float(14,2) DEFAULT NULL,
  `Percentage` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_price_range`
--

INSERT INTO `tbl_price_range` (`id`, `RangeFrom`, `RangeTo`, `Percentage`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, 500.00, 5000.00, 5.00, 1, 1, '2023-07-04', 5, '2023-10-05'),
(4, 5001.00, 10000.00, 7.00, 1, 1, '2023-07-05', 5, '2023-10-05'),
(5, 10001.00, 20000.00, 9.00, 1, 1, '2023-07-11', 5, '2023-10-05'),
(6, 20001.00, 100000.00, 10.00, 1, 1, '2023-07-11', 5, '2023-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_products`
--

CREATE TABLE `tbl_production_products` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_production_products`
--

INSERT INTO `tbl_production_products` (`id`, `ProductName`, `Price`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `ProdPrice`, `Qty`, `Unit`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `ProdType`) VALUES
(1, 'Product 1', 40.00, '2.5', '2.5', '0', 1.00, 1.00, 0.00, 2.00, 38.00, '1', 'PKT', 1, 5, '2024-06-13', 0, NULL, 0),
(2, 'Water Bottle', 20.00, '2.5', '2.5', '0', 0.50, 0.50, 0.00, 1.00, 19.00, '1', 'Ltr', 1, 2091, '2025-06-20', 0, NULL, 0),
(3, 'Hr Gol Kachori', 120.00, '2.5', '2.5', '0', 3.00, 3.00, 0.00, 6.00, 114.00, '1', 'Gm', 1, 2091, '2025-06-20', 0, NULL, 0),
(4, 'DR BATHROOM SET', 1299.00, '2.5', '2.5', '0', 32.48, 32.48, 0.00, 64.95, 1234.05, '1', 'PKT', 1, 2091, '2025-06-20', 0, NULL, 0),
(5, 'Hr Orange burfee', 620.00, '2.5', '2.5', '0', 15.50, 15.50, 0.00, 31.00, 589.00, '1', 'Gm', 1, 2091, '2025-06-20', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_raw_stock`
--

CREATE TABLE `tbl_production_raw_stock` (
  `id` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `TotalPrice` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `RetailerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_production_raw_stock`
--

INSERT INTO `tbl_production_raw_stock` (`id`, `GodownId`, `FranchiseId`, `ProdId`, `Qty`, `Unit`, `StockDate`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `UserId`, `TransferId`, `Price`, `TotalPrice`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `OwnShop`, `RetailerId`) VALUES
(11, 0, 0, 1, '10', 'KG', '2024-06-14', 'added', 'Cr', 5, '2024-06-14', 0, NULL, 0, 0, 20.00, 200.00, '2.5', '2.5', '0', 5.00, 5.00, 0.00, 10.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `PrdNo` varchar(100) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_specification`
--

CREATE TABLE `tbl_product_specification` (
  `id` int(11) NOT NULL,
  `AcDc` varchar(100) NOT NULL,
  `Surface` int(11) NOT NULL,
  `PumpCapacity` int(11) NOT NULL,
  `WaterSource` int(11) NOT NULL,
  `BoreDia` int(11) NOT NULL,
  `PumpHead` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `ProdName` varchar(255) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_stocks`
--

CREATE TABLE `tbl_product_stocks` (
  `id` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CrDr` varchar(10) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Oid` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `InvDetId` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `Roll` varchar(100) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profit_loss`
--

CREATE TABLE `tbl_profit_loss` (
  `id` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `totalsell` varchar(20) DEFAULT NULL,
  `salary` varchar(20) DEFAULT NULL,
  `rent` varchar(20) DEFAULT NULL,
  `electricity` varchar(20) DEFAULT NULL,
  `pettycash` varchar(20) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `hocost` varchar(20) DEFAULT NULL,
  `prodcost` float(14,2) DEFAULT NULL,
  `salaryper` varchar(10) DEFAULT NULL,
  `renteleper` varchar(10) DEFAULT NULL,
  `rentelecost` float(14,2) DEFAULT NULL,
  `invshareper` varchar(10) DEFAULT NULL,
  `invsharecost` float(14,2) DEFAULT NULL,
  `balance` varchar(20) DEFAULT NULL,
  `narration` text DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_feedback`
--

CREATE TABLE `tbl_purchase_feedback` (
  `id` int(11) NOT NULL,
  `SellId` int(11) DEFAULT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `Diaposition` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_order`
--

CREATE TABLE `tbl_purchase_order` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL DEFAULT 1,
  `PayMode` varchar(255) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `GrossAmt` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(10) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(10) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstPer` varchar(10) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `UcdAmt` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `SellType` varchar(100) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `PurchaseSubject` text DEFAULT NULL,
  `Ref1` text DEFAULT NULL,
  `Ref2` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `TermsCondition` text DEFAULT NULL,
  `ConsigneeAddress` text DEFAULT NULL,
  `SpecialConditions` text DEFAULT NULL,
  `EmpId` int(11) NOT NULL,
  `ApplyDate` date DEFAULT NULL,
  `ApplyTime` varchar(100) DEFAULT NULL,
  `ApplyStatus` int(11) NOT NULL,
  `SendDate` date DEFAULT NULL,
  `SendTime` varchar(100) DEFAULT NULL,
  `SendStatus` int(11) NOT NULL,
  `ReceiveDate` date DEFAULT NULL,
  `ReceiveTime` varchar(100) DEFAULT NULL,
  `ReceiveStatus` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `DeliveredDate` date DEFAULT NULL,
  `DeliveredTime` varchar(100) NOT NULL,
  `DeliveredStatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_order_products`
--

CREATE TABLE `tbl_purchase_order_products` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Purity` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Making` float(14,2) DEFAULT NULL,
  `HmCharge` float(14,2) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `TotalRate` float(14,2) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qtn_products`
--

CREATE TABLE `tbl_qtn_products` (
  `id` int(11) NOT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `PrdNo` varchar(100) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(255) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `QtnSubject` text DEFAULT NULL,
  `KindAttn` varchar(255) DEFAULT NULL,
  `RefEnqNo` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `TermsCondition` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `TotalAmt` float(14,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_order_products`
--

CREATE TABLE `tbl_quotation_order_products` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Purity` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Making` float(14,2) DEFAULT NULL,
  `HmCharge` float(14,2) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `TotalRate` float(14,2) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_production_products`
--

CREATE TABLE `tbl_raw_production_products` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `CatId` int(11) NOT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `IgstPer` varchar(50) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `ProdPrice` float(14,2) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `SrNo` float(14,2) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `BarcodeNo` varchar(255) DEFAULT NULL,
  `StockQty` int(11) NOT NULL,
  `TempPrdId` int(11) NOT NULL,
  `Display` tinyint(1) NOT NULL DEFAULT 1,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL,
  `ProdType` int(11) NOT NULL COMMENT '0:Cust Product\r\n1: Raw Product',
  `Qty` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Transfer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_production_prod_make_qty`
--

CREATE TABLE `tbl_raw_production_prod_make_qty` (
  `id` bigint(20) NOT NULL,
  `RawProdId` int(11) NOT NULL,
  `CustProdId` int(11) NOT NULL,
  `MakingQty` varchar(50) DEFAULT NULL,
  `RawQty` varchar(50) DEFAULT '0',
  `RawUnit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_products`
--

CREATE TABLE `tbl_raw_products` (
  `id` int(11) NOT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `PrdNo` varchar(100) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CGST` varchar(100) DEFAULT NULL,
  `SGST` varchar(100) DEFAULT NULL,
  `IGST` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `CustProdId` int(11) NOT NULL,
  `MakingQty` varchar(50) NOT NULL DEFAULT '0',
  `Qty` varchar(50) NOT NULL DEFAULT '0',
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Roll` tinyint(1) NOT NULL,
  `FrId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_prod_category`
--

CREATE TABLE `tbl_raw_prod_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Featured` int(11) NOT NULL,
  `Service` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `srno` float(14,1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Roll` int(11) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_prod_make_qty`
--

CREATE TABLE `tbl_raw_prod_make_qty` (
  `id` bigint(20) NOT NULL,
  `RawProdId` int(11) NOT NULL,
  `CustProdId` int(11) NOT NULL,
  `MakingQty` varchar(50) DEFAULT NULL,
  `RawQty` varchar(50) DEFAULT '0',
  `RawUnit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_prod_make_qty_2025`
--

CREATE TABLE `tbl_raw_prod_make_qty_2025` (
  `id` bigint(20) NOT NULL,
  `RawProdId` int(11) NOT NULL,
  `CustProdId` int(11) NOT NULL,
  `MakingQty` varchar(50) DEFAULT NULL,
  `MakingQty2` varchar(50) DEFAULT NULL,
  `MakingQtyUnit2` varchar(50) DEFAULT NULL,
  `RawQty` varchar(50) DEFAULT '0',
  `RawUnit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_prod_sub_category`
--

CREATE TABLE `tbl_raw_prod_sub_category` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `FrId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_stock`
--

CREATE TABLE `tbl_raw_stock` (
  `id` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `InvDetId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(50) DEFAULT NULL,
  `SgstPer` varchar(50) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `CrDr` varchar(10) DEFAULT NULL,
  `UseRawId` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `UnitId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referral_details`
--

CREATE TABLE `tbl_referral_details` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ReqDate` date DEFAULT NULL,
  `CandName` varchar(255) DEFAULT NULL,
  `CandPhone` varchar(20) DEFAULT NULL,
  `CandEmail` varchar(100) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_referral_details`
--

INSERT INTO `tbl_referral_details` (`id`, `UserId`, `ReqDate`, `CandName`, `CandPhone`, `CandEmail`, `Notes`, `CreatedDate`) VALUES
(4, 9055, '2025-08-28', 'DEENA RAM', '9257251283', 'parihardinu6@gmail.com', 'Referral by BHAGRAJ', '2025-08-28 23:28:28'),
(5, 10501, '2025-08-30', 'Preeti Pandey', '8808626691', '', 'Anubha refer Preeti Pandey as a helper category', '2025-08-30 11:17:40'),
(6, 4916, '2025-09-13', 'Bishan Dass', '8082766253', 'ashusk0037@gmail.com', 'Please share below mentioned details with documents to add in Maha buddy:\r\nEmployee Name:Bishan Dass\r\nPermanent Address:rayala Jagir pouni undampur Jammu  and Kashmir \r\nMb No : ‪80827 66253\r\n3 Referance No: 96224 68490 \r\n9622149471\r\nDesignation: halper \r\nDate of Birth:21/06/ 1978\r\nAadhar Card No :627039232571\r\nBlood Group: O \r\nDate Of Joining: 10 / 09 / 2025\r\nEmail Id : ashusk003@gmail.com \r\nCompany mail id:\r\nPer day Salary :400\r\nUAN No:\r\nESIC No:\r\nBank account details:- \r\nBank holder name: Bishan Dass\r\nBank Name  j&k Bank \r\n Account No : 0544040860006901\r\nBranch : pouni \r\nIfsc Code.Jaka0poinie\r\nName of father/ husband:\r\nNominee name:angle \r\nNominee relation:wife \r\nNominee Pan Card No. FJCPD3020B\r\nNominee Aadhar card No/Nominee Voter Id No:\r\n•	Nominee Contact No:', '2025-09-13 14:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_product_stock`
--

CREATE TABLE `tbl_request_product_stock` (
  `id` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveDate` date DEFAULT NULL,
  `ApproveTime` varchar(100) DEFAULT NULL,
  `ApproveLine` varchar(255) DEFAULT NULL,
  `ApproveStatus` tinyint(1) NOT NULL,
  `GstAmount` varchar(20) DEFAULT NULL,
  `UpdatedDate` date DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `UpdatedDateTime` datetime DEFAULT NULL,
  `UpdateStatus` tinyint(1) NOT NULL,
  `Photo1` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `VedId` int(11) NOT NULL,
  `FinancerBy1` int(11) NOT NULL,
  `FinancerStatus1` tinyint(1) NOT NULL,
  `FinancerComment1` text DEFAULT NULL,
  `FinancerApproveDate1` date DEFAULT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `FinancerBy2` int(11) NOT NULL,
  `FinancerStatus2` tinyint(1) NOT NULL,
  `FinancerComment2` text DEFAULT NULL,
  `FinancerApproveDate2` date DEFAULT NULL,
  `PaidAmt` float(14,2) DEFAULT NULL,
  `BalanceAmt` float(14,2) DEFAULT NULL,
  `PayType` varchar(50) DEFAULT NULL,
  `ChequeNo` varchar(50) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(50) DEFAULT NULL,
  `NextDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_product_stock_2025`
--

CREATE TABLE `tbl_request_product_stock_2025` (
  `id` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveDate` date DEFAULT NULL,
  `ApproveTime` varchar(100) DEFAULT NULL,
  `ApproveLine` varchar(255) DEFAULT NULL,
  `ApproveStatus` tinyint(1) NOT NULL,
  `GstAmount` varchar(20) DEFAULT NULL,
  `UpdatedDate` date DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `UpdatedDateTime` datetime DEFAULT NULL,
  `UpdateStatus` tinyint(1) NOT NULL,
  `Photo1` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `VedId` int(11) NOT NULL,
  `FinancerBy1` int(11) NOT NULL,
  `FinancerStatus1` tinyint(1) NOT NULL,
  `FinancerComment1` text DEFAULT NULL,
  `FinancerApproveDate1` date DEFAULT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `FinancerBy2` int(11) NOT NULL,
  `FinancerStatus2` tinyint(1) NOT NULL,
  `FinancerComment2` text DEFAULT NULL,
  `FinancerApproveDate2` date DEFAULT NULL,
  `PaidAmt` float(14,2) DEFAULT NULL,
  `BalanceAmt` float(14,2) DEFAULT NULL,
  `PayType` varchar(50) DEFAULT NULL,
  `ChequeNo` varchar(50) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(50) DEFAULT NULL,
  `NextDueDate` date DEFAULT NULL,
  `FranchiseId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_product_stock_items`
--

CREATE TABLE `tbl_request_product_stock_items` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `CgstPer` varchar(10) DEFAULT NULL,
  `SgstPer` varchar(10) DEFAULT NULL,
  `IgstPer` varchar(10) DEFAULT NULL,
  `CgstAmt` varchar(20) DEFAULT NULL,
  `SgstAmt` varchar(20) DEFAULT NULL,
  `IgstAmt` varchar(20) DEFAULT NULL,
  `ProdPrice` varchar(20) DEFAULT NULL,
  `MinPrice` varchar(20) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `GstAmt` varchar(20) DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_product_stock_items_2025`
--

CREATE TABLE `tbl_request_product_stock_items_2025` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `CgstPer` varchar(10) DEFAULT NULL,
  `SgstPer` varchar(10) DEFAULT NULL,
  `IgstPer` varchar(10) DEFAULT NULL,
  `CgstAmt` varchar(20) DEFAULT NULL,
  `SgstAmt` varchar(20) DEFAULT NULL,
  `IgstAmt` varchar(20) DEFAULT NULL,
  `ProdPrice` varchar(20) DEFAULT NULL,
  `MinPrice` varchar(20) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `GstAmt` varchar(20) DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ApproveBy` int(11) NOT NULL,
  `ApproveDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resign_request`
--

CREATE TABLE `tbl_resign_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ReqDate` date DEFAULT NULL,
  `NoticePeriod` varchar(50) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `MrgBy` int(11) NOT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MannagerComment` text DEFAULT NULL,
  `MannagerApproveDate` date DEFAULT NULL,
  `HrBy` int(11) NOT NULL,
  `HrStatus` tinyint(1) NOT NULL,
  `HrComment` text DEFAULT NULL,
  `HrApproveDate` date DEFAULT NULL,
  `LastWorkingDay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resign_requests`
--

CREATE TABLE `tbl_resign_requests` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ResignComment` text DEFAULT NULL,
  `ReqDate` date DEFAULT NULL,
  `ReqTime` varchar(100) DEFAULT NULL,
  `ResignStatus` tinyint(1) NOT NULL,
  `ResignDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_prod_items`
--

CREATE TABLE `tbl_return_prod_items` (
  `id` int(11) NOT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `ReturnStatus` tinyint(1) NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL COMMENT '	1:Mrp;2:Raw;3:Godown;	',
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_prod_stock`
--

CREATE TABLE `tbl_return_prod_stock` (
  `id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `InvNo` varchar(100) DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `VedId` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `ProdType` tinyint(1) NOT NULL COMMENT '1:Mrp;2:Raw;3:Godown;',
  `ReturnStatus` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_return_prod_stock`
--

INSERT INTO `tbl_return_prod_stock` (`id`, `srno`, `InvNo`, `ReturnDate`, `VedId`, `Narration`, `FrId`, `ProdType`, `ReturnStatus`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, 1, '001', '2024-09-07', 261, 'dddd', 253, 1, 0, 253, '2024-09-07 23:24:56', 0, NULL),
(3, 0, '001', '2024-09-08', 261, 'ddd', 253, 2, 0, 253, '2024-09-08 20:25:02', 0, NULL),
(4, 0, '001', '2024-09-08', 1685, 'dsds', 0, 3, 0, 5, '2024-09-08 20:38:29', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_reason`
--

CREATE TABLE `tbl_return_reason` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_return_reason`
--

INSERT INTO `tbl_return_reason` (`id`, `Name`, `Status`) VALUES
(1, 'Received wrong Item', 1),
(2, 'Received a broken/damaged Item', 1),
(3, 'Quality of the product not as expected', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_requests`
--

CREATE TABLE `tbl_return_requests` (
  `id` int(11) NOT NULL,
  `OrderNo` varchar(100) DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_save_aliance_mail_files`
--

CREATE TABLE `tbl_save_aliance_mail_files` (
  `id` int(11) NOT NULL,
  `frid` int(11) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `files2` varchar(255) DEFAULT NULL,
  `files3` varchar(255) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scheme`
--

CREATE TABLE `tbl_scheme` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scrap_stock`
--

CREATE TABLE `tbl_scrap_stock` (
  `id` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `ScrapProdDetails` text DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `CrDr` varchar(10) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell`
--

CREATE TABLE `tbl_sell` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `PayType` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL DEFAULT 1,
  `PayMode` varchar(255) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `GrossAmt` float(14,2) DEFAULT NULL,
  `CgstPer` varchar(10) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstPer` varchar(10) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstPer` varchar(10) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `UcdAmt` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Total` float(14,2) DEFAULT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL,
  `SellType` varchar(100) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `PayStatus` varchar(255) DEFAULT NULL,
  `WarrantyPeriod` varchar(10) DEFAULT NULL,
  `LrNo` varchar(255) DEFAULT NULL,
  `LrDate` date DEFAULT NULL,
  `Transport` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sell`
--

INSERT INTO `tbl_sell` (`id`, `SrNo`, `CustId`, `CustName`, `CellNo`, `Address`, `InvoiceNo`, `InvoiceDate`, `PayType`, `Narration`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `ProdType`, `PayMode`, `DeliveryDate`, `GrossAmt`, `CgstPer`, `CgstAmt`, `SgstPer`, `SgstAmt`, `IgstPer`, `IgstAmt`, `SubTotal`, `UcdAmt`, `Discount`, `Total`, `ChequeNo`, `ChqDate`, `BankName`, `UpiNo`, `CreatedTime`, `SellType`, `BranchId`, `PayStatus`, `WarrantyPeriod`, `LrNo`, `LrDate`, `Transport`) VALUES
(1, 1, 0, '', '', '', '001', '2023-05-07', '', 'Test', 1, 22, '2023-05-07', NULL, NULL, 0, '', '0000-00-00', 0.00, '', 0.00, '', 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, '', '0000-00-00', '', '', '01:49 am', 'Challan', 3, '', '1', '12345', '2023-05-07', 'VTECH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell_products`
--

CREATE TABLE `tbl_sell_products` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `SellId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Purity` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Making` float(14,2) DEFAULT NULL,
  `HmCharge` float(14,2) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `TotalRate` float(14,2) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `BranchId` int(11) NOT NULL,
  `SerialNo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell_retailer`
--

CREATE TABLE `tbl_sell_retailer` (
  `id` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `GstAmount` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sell_retailer`
--

INSERT INTO `tbl_sell_retailer` (`id`, `GodownId`, `FranchiseId`, `StockDate`, `TotQty`, `TotalAmount`, `GstAmount`, `Narration`, `CreatedBy`, `CreatedDate`, `InvoiceNo`, `OwnShop`) VALUES
(2, 409, 718, '2024-06-12', '10', 500.00, 25.00, 'Stock Used', 5, '2024-06-12', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell_retailer_items`
--

CREATE TABLE `tbl_sell_retailer_items` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `Price` float(14,2) NOT NULL,
  `TotalPrice` float(14,2) NOT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sell_retailer_items`
--

INSERT INTO `tbl_sell_retailer_items` (`id`, `TransferId`, `GodownId`, `FranchiseId`, `ProdId`, `FrProdId`, `Qty`, `Unit`, `StockDate`, `CreatedBy`, `CreatedDate`, `Receive`, `Price`, `TotalPrice`, `CgstPer`, `SgstPer`, `IgstPer`, `CgstAmt`, `SgstAmt`, `IgstAmt`, `GstAmt`, `OwnShop`) VALUES
(1, 2, 409, 718, 1, 0, '10', 'KG', '2024-06-12', 5, '2024-06-12', 0, 50.00, 500.00, '2.5', '2.5', '0', 12.50, 12.50, 0.00, 25.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_complaint`
--

CREATE TABLE `tbl_service_complaint` (
  `id` int(11) NOT NULL,
  `TicketNo` varchar(255) DEFAULT NULL,
  `BranchId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` text NOT NULL,
  `RelatedIssue` varchar(100) DEFAULT NULL,
  `Issue` int(11) NOT NULL,
  `Message` text DEFAULT NULL,
  `ClainStatus` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service_complaint`
--

INSERT INTO `tbl_service_complaint` (`id`, `TicketNo`, `BranchId`, `CustId`, `CellNo`, `CustName`, `Address`, `RelatedIssue`, `Issue`, `Message`, `ClainStatus`, `Status`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, '#6766', 1, 6, '9545904488', 'sachin narule', 'Nagpur, Nagpur, Nagpur', 'Repair', 1, 'dsdsds', 'Open', 1, 1, '2023-04-14', 22, '2023-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_complaint_details`
--

CREATE TABLE `tbl_service_complaint_details` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ClainStatus` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_service_complaint_details`
--

INSERT INTO `tbl_service_complaint_details` (`id`, `CompId`, `ClainStatus`, `Message`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, 1, 'In Process', 'test', 1, '2023-04-27', 1, '2023-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_fee`
--

CREATE TABLE `tbl_service_fee` (
  `id` int(11) NOT NULL,
  `Fee` float(14,2) DEFAULT NULL,
  `SubFee` float(14,2) DEFAULT NULL,
  `OrderPrice` float(14,2) DEFAULT NULL,
  `ShippingPrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service_fee`
--

INSERT INTO `tbl_service_fee` (`id`, `Fee`, `SubFee`, `OrderPrice`, `ShippingPrice`) VALUES
(1, 0.00, 0.00, 500.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_set_target`
--

CREATE TABLE `tbl_set_target` (
  `id` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `qsrkitchen_target` varchar(50) DEFAULT '0',
  `packfood_target` varchar(50) DEFAULT '0',
  `cross_sale_target` varchar(50) DEFAULT '0',
  `createdby` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` int(11) NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_sessions`
--

CREATE TABLE `tbl_shop_sessions` (
  `id` int(11) NOT NULL,
  `session_uid` varchar(64) DEFAULT NULL,
  `FrId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `OpenedAt` datetime DEFAULT NULL,
  `OpeningCash` decimal(10,2) DEFAULT 0.00,
  `OpeningNote` text DEFAULT NULL,
  `ClosedAt` datetime DEFAULT NULL,
  `ClosingCash` decimal(10,2) DEFAULT NULL,
  `ClosingNote` text DEFAULT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp(),
  `UpdatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_popup_image`
--

CREATE TABLE `tbl_show_popup_image` (
  `id` int(11) NOT NULL,
  `showdate` date DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `Name` varchar(512) NOT NULL DEFAULT '',
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `CountryId`, `Name`, `Status`) VALUES
(1, 1, 'Maharashtra', 1),
(2, 1, 'Uttar Pradesh', 1),
(3, 1, 'Panjim', 1),
(4, 1, 'Himachal Pradesh', 1),
(5, 1, 'Haryana', 1),
(8, 1, 'Madhya Pradesh', 1),
(9, 1, 'Andhra Pradesh', 1),
(10, 1, 'Arunachal Pradesh', 1),
(11, 1, 'Assam', 1),
(12, 1, 'Bihar', 1),
(13, 1, 'Chhattisgarh', 1),
(14, 1, 'Goa', 1),
(15, 1, 'Gujarat', 1),
(16, 1, 'Jharkhand', 1),
(17, 1, 'Karnataka', 1),
(18, 1, 'Kerala', 1),
(19, 1, 'Manipur', 1),
(20, 1, 'Meghalaya', 1),
(21, 1, 'Mizoram', 1),
(22, 1, 'Nagaland', 1),
(23, 1, 'Odisha', 1),
(24, 1, 'Punjab', 1),
(25, 1, 'Rajasthan', 1),
(26, 1, 'Sikkim', 1),
(27, 1, 'Tamil Nadu', 1),
(28, 1, 'Tripura', 1),
(29, 1, 'Telangana', 1),
(30, 1, 'Uttarakhand', 1),
(31, 1, 'West Bengal', 1),
(32, 1, 'Andaman & Nicobar (UT)', 1),
(33, 1, 'Chandigarh (UT)', 1),
(34, 1, 'Dadra & Nagar Haveli and Daman & Diu (UT)', 1),
(35, 1, 'Delhi [National Capital Territory (NCT)]', 1),
(36, 1, 'Jammu & Kashmir (UT)', 1),
(37, 1, 'Ladakh (UT)', 1),
(38, 1, 'Lakshadweep (UT)', 1),
(39, 1, 'Puducherry (UT)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stocks`
--

CREATE TABLE `tbl_stocks` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) NOT NULL,
  `InvId` int(11) DEFAULT NULL,
  `SellId` int(11) NOT NULL,
  `VedId` int(11) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ProductNo` varchar(100) DEFAULT NULL,
  `CatName` varchar(255) DEFAULT NULL,
  `BrandName` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelNo` varchar(255) DEFAULT NULL,
  `ModelName` varchar(255) DEFAULT NULL,
  `BuyStatus` tinyint(1) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CrDr` varchar(10) DEFAULT NULL,
  `BranchId` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `FromBranchId` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `SellType` varchar(100) NOT NULL,
  `CompId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `SerialNo` varchar(255) DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `Unit` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_invoice`
--

CREATE TABLE `tbl_stock_invoice` (
  `id` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `TotQty` int(11) NOT NULL,
  `DmNo` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Narration` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_manager_duties`
--

CREATE TABLE `tbl_store_manager_duties` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `operation_flow_question` text DEFAULT NULL,
  `operation_flow` text DEFAULT NULL,
  `positive_culture_question` text DEFAULT NULL,
  `positive_culture` text DEFAULT NULL,
  `work_schedule_question` text DEFAULT NULL,
  `work_schedule` text DEFAULT NULL,
  `hygiene_compliance_question` text DEFAULT NULL,
  `hygiene_compliance` text DEFAULT NULL,
  `stock_management_question` text DEFAULT NULL,
  `stock_management` text DEFAULT NULL,
  `staff_supervision_question` text DEFAULT NULL,
  `staff_supervision` text DEFAULT NULL,
  `employee_training_question` text DEFAULT NULL,
  `employee_training` text DEFAULT NULL,
  `customer_feedback_question` text DEFAULT NULL,
  `customer_feedback` text DEFAULT NULL,
  `daily_checklist_question` text DEFAULT NULL,
  `daily_checklist` text DEFAULT NULL,
  `staff_room_cleaning_question` text DEFAULT NULL,
  `staff_room_cleaning` text DEFAULT NULL,
  `staff_grooming_question` text DEFAULT NULL,
  `staff_grooming` text DEFAULT NULL,
  `security_checks_question` text DEFAULT NULL,
  `security_checks` text DEFAULT NULL,
  `food_wastage_question` text DEFAULT NULL,
  `food_wastage` text DEFAULT NULL,
  `electricity_wastage_question` text DEFAULT NULL,
  `electricity_wastage` text DEFAULT NULL,
  `cash_deposits_question` text DEFAULT NULL,
  `cash_deposits` text DEFAULT NULL,
  `staff_uniform_question` text DEFAULT NULL,
  `staff_uniform` text DEFAULT NULL,
  `special_board_question` text DEFAULT NULL,
  `special_board` text DEFAULT NULL,
  `staff_attendance_question` text DEFAULT NULL,
  `staff_attendance` text DEFAULT NULL,
  `question_issue_observation` varchar(255) DEFAULT NULL,
  `issue_observation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stud_docs`
--

CREATE TABLE `tbl_stud_docs` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Files` varchar(255) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `id` int(11) NOT NULL,
  `CatId` varchar(255) DEFAULT NULL,
  `Services` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `id` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `table_values` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `srno` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_zone`
--

CREATE TABLE `tbl_sub_zone` (
  `id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey`
--

CREATE TABLE `tbl_survey` (
  `id` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `Question1` text DEFAULT NULL,
  `Answer1` varchar(255) DEFAULT NULL,
  `Question2` text DEFAULT NULL,
  `Answer2` varchar(255) DEFAULT NULL,
  `Question3` text DEFAULT NULL,
  `Answer3` varchar(255) DEFAULT NULL,
  `Question4` text DEFAULT NULL,
  `Answer4` varchar(255) DEFAULT NULL,
  `Question5` text DEFAULT NULL,
  `Answer5` varchar(255) DEFAULT NULL,
  `Question6` text DEFAULT NULL,
  `Answer6` varchar(255) DEFAULT NULL,
  `Question7` text DEFAULT NULL,
  `Answer7` varchar(255) DEFAULT NULL,
  `Question8` text DEFAULT NULL,
  `Answer8` varchar(255) DEFAULT NULL,
  `Question9` text DEFAULT NULL,
  `Answer9` varchar(255) DEFAULT NULL,
  `Question10` text DEFAULT NULL,
  `Answer10` varchar(255) DEFAULT NULL,
  `Question11` text DEFAULT NULL,
  `Answer11` varchar(100) DEFAULT NULL,
  `Question12` text DEFAULT NULL,
  `Answer12` varchar(100) DEFAULT NULL,
  `Question13` text DEFAULT NULL,
  `Answer13` varchar(100) DEFAULT NULL,
  `Suggestion` text DEFAULT NULL,
  `Type` tinyint(1) NOT NULL COMMENT '1:shop visit;2:shop daily',
  `Status` tinyint(1) DEFAULT 1,
  `CreatedDate` date DEFAULT NULL,
  `CreatedTime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_questions`
--

CREATE TABLE `tbl_survey_questions` (
  `id` int(11) NOT NULL,
  `QueNo` float(14,1) DEFAULT NULL,
  `DeptId` int(11) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `BatchId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `TestSeriesId` int(11) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `ShortQues` varchar(255) DEFAULT NULL,
  `Question` text DEFAULT NULL,
  `OptNo1` varchar(100) DEFAULT '1',
  `Option1` text DEFAULT NULL,
  `OptNo2` varchar(100) DEFAULT '2',
  `Option2` text DEFAULT NULL,
  `OptNo3` varchar(100) DEFAULT '3',
  `Option3` text DEFAULT NULL,
  `OptNo4` varchar(100) DEFAULT '4',
  `Option4` text DEFAULT NULL,
  `OptNo5` varchar(255) NOT NULL,
  `Option5` text NOT NULL,
  `Opt5Type` int(11) NOT NULL,
  `Answer` int(11) NOT NULL,
  `Explaination` text DEFAULT NULL,
  `ExpPhoto` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SurveyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks`
--

CREATE TABLE `tbl_tasks` (
  `id` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `TaskDate` date DEFAULT NULL,
  `TaskName` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_details`
--

CREATE TABLE `tbl_task_details` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ClainStatus` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `NextDate` date DEFAULT NULL,
  `NextTime` varchar(100) DEFAULT NULL,
  `DoneBy` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_new`
--

CREATE TABLE `tbl_task_new` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `TaskDate` date DEFAULT NULL,
  `TaskName` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Latitude` varchar(50) DEFAULT NULL,
  `Longitude` varchar(50) DEFAULT NULL,
  `ActionDate` datetime DEFAULT NULL,
  `DueDate` date NOT NULL,
  `ClainStatus` varchar(20) NOT NULL DEFAULT 'Pending',
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_allocated_fr_prd`
--

CREATE TABLE `tbl_temp_allocated_fr_prd` (
  `sessionid` text DEFAULT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `checkstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_allocated_fr_raw_prd`
--

CREATE TABLE `tbl_temp_allocated_fr_raw_prd` (
  `sessionid` text DEFAULT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `checkstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_allocated_ved_prd`
--

CREATE TABLE `tbl_temp_allocated_ved_prd` (
  `sessionid` text DEFAULT NULL,
  `ProdId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `checkstatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_stock`
--

CREATE TABLE `tbl_temp_stock` (
  `id` int(11) NOT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `ModelNo` varchar(100) DEFAULT NULL,
  `ModelName` varchar(255) DEFAULT NULL,
  `ProductNo` varchar(100) DEFAULT NULL,
  `SrNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Feedback` text NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_franchise_prod_stock`
--

CREATE TABLE `tbl_transfer_franchise_prod_stock` (
  `id` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_franchise_prod_stock_2025`
--

CREATE TABLE `tbl_transfer_franchise_prod_stock_2025` (
  `id` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `ProdType` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_franchise_prod_stock_items`
--

CREATE TABLE `tbl_transfer_franchise_prod_stock_items` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_franchise_prod_stock_items_2025`
--

CREATE TABLE `tbl_transfer_franchise_prod_stock_items_2025` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `FromFrId` int(11) NOT NULL,
  `ToFrId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `Price` float(14,2) DEFAULT NULL,
  `TotalPrice` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_godown_raw_prod_stock`
--

CREATE TABLE `tbl_transfer_godown_raw_prod_stock` (
  `id` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `GstAmount` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_godown_raw_prod_stock_2025`
--

CREATE TABLE `tbl_transfer_godown_raw_prod_stock_2025` (
  `id` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` varchar(50) DEFAULT '0',
  `TotalAmount` float(14,2) NOT NULL,
  `GstAmount` float(14,2) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `SubTotalAmount` float(14,2) DEFAULT NULL,
  `DiscPer` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_godown_raw_stock_items`
--

CREATE TABLE `tbl_transfer_godown_raw_stock_items` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `Price` float(14,2) NOT NULL,
  `TotalPrice` float(14,2) NOT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_godown_raw_stock_items_2025`
--

CREATE TABLE `tbl_transfer_godown_raw_stock_items_2025` (
  `id` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `GodownId` int(11) NOT NULL,
  `FranchiseId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `FrProdId` int(11) NOT NULL,
  `Qty` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Receive` tinyint(1) NOT NULL,
  `Price` float(14,2) NOT NULL,
  `TotalPrice` float(14,2) NOT NULL,
  `CgstPer` varchar(20) DEFAULT NULL,
  `SgstPer` varchar(20) DEFAULT NULL,
  `IgstPer` varchar(20) DEFAULT NULL,
  `CgstAmt` float(14,2) DEFAULT NULL,
  `SgstAmt` float(14,2) DEFAULT NULL,
  `IgstAmt` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `OwnShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Name2` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `roll` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `Name`, `Name2`, `Status`, `roll`) VALUES
(1, 'Gm', 'Kg', 1, 0),
(2, 'Ml', 'Ltr', 1, 0),
(3, 'Pieces', 'Pieces', 1, 0),
(1, 'Gm', 'Kg', 1, 0),
(2, 'Ml', 'Ltr', 1, 0),
(3, 'Pieces', 'Pieces', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units_2025`
--

CREATE TABLE `tbl_units_2025` (
  `id` int(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Name2` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `roll` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_units_2025`
--

INSERT INTO `tbl_units_2025` (`id`, `Name`, `Name2`, `Status`, `roll`) VALUES
(1, 'Gm', '', 1, 0),
(2, 'Ml', '', 1, 0),
(3, 'Pieces', 'Pieces', 1, 0),
(4, 'Kg', NULL, 1, 0),
(5, 'Box', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `CustomerId` varchar(100) NOT NULL,
  `ColgId` int(11) DEFAULT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CountryId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `AreaId` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Pincode` varchar(100) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `GstNo` varchar(255) DEFAULT '27AANCM5897K1ZH',
  `PanNo` varchar(255) DEFAULT NULL,
  `Roll` int(11) NOT NULL COMMENT '1:superadmin;2:telecaller;3:Manufacture;4:supervisior;5:customer;6:executive;7:admin;8:employee;9:dealer;10:company;',
  `Status` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Options` text DEFAULT NULL,
  `BranchId` varchar(255) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `UserType` int(11) NOT NULL,
  `PayMode` varchar(255) DEFAULT NULL,
  `UnderUser` int(11) NOT NULL,
  `ProjectType` varchar(10) DEFAULT NULL,
  `BeneficiaryId` varchar(10) DEFAULT NULL,
  `Taluka` varchar(10) DEFAULT NULL,
  `Village` varchar(10) DEFAULT NULL,
  `District` varchar(10) DEFAULT NULL,
  `PumpCapacity` varchar(10) DEFAULT NULL,
  `RooftopPlantCapacity` varchar(10) DEFAULT NULL,
  `Lattitude` varchar(50) DEFAULT NULL,
  `Longitude` varchar(50) DEFAULT NULL,
  `OffOnGrid` varchar(10) DEFAULT NULL,
  `SanctionLoad` varchar(10) DEFAULT NULL,
  `LoadExtension` varchar(10) DEFAULT NULL,
  `WaterSource` varchar(10) DEFAULT NULL,
  `SummerDepth` varchar(10) DEFAULT NULL,
  `WinterDepth` varchar(10) DEFAULT NULL,
  `PumpHead` varchar(10) DEFAULT NULL,
  `BgNumber` varchar(10) DEFAULT NULL,
  `BgValidity` varchar(10) DEFAULT NULL,
  `BgClaimPeriod` varchar(10) DEFAULT NULL,
  `InsuranceNumber` varchar(10) DEFAULT NULL,
  `InsuranceAgency` varchar(10) DEFAULT NULL,
  `InsuranceValidity` varchar(10) DEFAULT NULL,
  `InstallationVendor` varchar(10) DEFAULT NULL,
  `SurveyDetails` tinyint(1) NOT NULL,
  `SchemeId` int(11) NOT NULL,
  `PumpHeadSelect` varchar(10) DEFAULT NULL,
  `AcDc` varchar(10) DEFAULT NULL,
  `Surface` varchar(10) DEFAULT NULL,
  `AadharNo` varchar(50) DEFAULT NULL,
  `AadharCard` varchar(255) DEFAULT NULL,
  `AadharCard2` varchar(255) DEFAULT NULL,
  `PanCard` varchar(255) DEFAULT NULL,
  `PanCard2` varchar(255) DEFAULT NULL,
  `GstCertificate` varchar(255) DEFAULT NULL,
  `AccountName` text DEFAULT NULL,
  `BankName` text DEFAULT NULL,
  `AccountNo` text DEFAULT NULL,
  `IfscCode` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `UpiNo` text DEFAULT NULL,
  `GumastaNo` varchar(100) DEFAULT NULL,
  `Gumasta` text DEFAULT NULL,
  `MsmeNo` varchar(50) DEFAULT NULL,
  `Msme` text DEFAULT NULL,
  `InspectionDate` date DEFAULT NULL,
  `CommissioningDate` date DEFAULT NULL,
  `CustType` int(11) NOT NULL,
  `BoreDia` varchar(100) NOT NULL,
  `Details` text DEFAULT NULL,
  `CatId` varchar(10) NOT NULL,
  `CompName` varchar(255) DEFAULT NULL,
  `CompAddress` text DEFAULT NULL,
  `CompPhone` varchar(100) DEFAULT NULL,
  `AuthorName` varchar(255) DEFAULT NULL,
  `Tokens` text DEFAULT NULL,
  `CompId` int(11) NOT NULL,
  `FatherPhone` varchar(100) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `BloodGroup` varchar(100) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `EmailId2` varchar(255) DEFAULT NULL,
  `PerDaySalary` float(14,2) DEFAULT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `KycStatus` tinyint(1) NOT NULL,
  `KycDate` date DEFAULT NULL,
  `Profession` varchar(50) DEFAULT NULL,
  `FsiicNo` varchar(50) DEFAULT NULL,
  `ShopActNo` varchar(50) DEFAULT NULL,
  `AnniversaryDate` date DEFAULT NULL,
  `ExeId` int(11) NOT NULL,
  `SellAmt` float(14,2) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `UnderFr` int(11) NOT NULL,
  `ReportingMgr` tinyint(1) NOT NULL,
  `ResignStatus` tinyint(1) NOT NULL,
  `ResignDate` date DEFAULT NULL,
  `ResignComment` text DEFAULT NULL,
  `BillSoftFrId` int(11) NOT NULL,
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date NOT NULL,
  `PkgValidity` date DEFAULT NULL,
  `Prime` tinyint(1) NOT NULL,
  `terms_condition` text DEFAULT NULL,
  `bottom_title` text DEFAULT NULL,
  `ReferCode` varchar(255) DEFAULT NULL,
  `OwnFranchise` tinyint(1) NOT NULL,
  `PrintCompName` varchar(255) DEFAULT 'MAHACHAI PRIVATE LIMITED',
  `PrintMobNo` varchar(50) DEFAULT '9730445152',
  `TableQrCode` varchar(255) DEFAULT NULL,
  `FoodLicence` varchar(255) DEFAULT NULL,
  `FoodLicenceReceipt` varchar(255) DEFAULT NULL,
  `AgreementCopy` varchar(255) DEFAULT NULL,
  `SalaryType` tinyint(1) NOT NULL,
  `CreditSalaryStatus` tinyint(1) NOT NULL,
  `IdStatus` tinyint(1) NOT NULL,
  `zone` text DEFAULT NULL,
  `CocoFranchiseAccess` text DEFAULT NULL,
  `CinNo` text DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime NOT NULL,
  `UnderFrId` int(11) NOT NULL,
  `Location` text DEFAULT NULL,
  `ShowFrStatus` tinyint(1) NOT NULL DEFAULT 1,
  `ReferalNo1` text DEFAULT NULL,
  `ReferalNo2` text DEFAULT NULL,
  `NomineePartnerName` text DEFAULT NULL,
  `NomineePartnerRelation` text DEFAULT NULL,
  `NomineePartnerPhone` text DEFAULT NULL,
  `BillAmount` float(14,2) DEFAULT NULL,
  `ExpCatId` varchar(100) DEFAULT NULL,
  `MainBrEmp` tinyint(1) NOT NULL,
  `ExpApproval` tinyint(1) NOT NULL,
  `UnderByUser` int(11) NOT NULL,
  `DeliveryPerson` tinyint(1) NOT NULL,
  `ChequeBook` text DEFAULT NULL,
  `TradeName` text DEFAULT NULL,
  `TypeOfVendor` int(11) NOT NULL,
  `RefPhone` varchar(20) DEFAULT NULL,
  `RefPhone2` varchar(20) DEFAULT NULL,
  `RefEmailId` varchar(50) DEFAULT NULL,
  `AllocateProd` text DEFAULT NULL,
  `AllocateRawProd` text DEFAULT NULL,
  `Percentage` varchar(20) DEFAULT NULL,
  `AuthToken` text DEFAULT NULL,
  `DeclarationPdf` text DEFAULT NULL,
  `NomineeName` text DEFAULT NULL,
  `NomineeRelation` text DEFAULT NULL,
  `NomineePhone` int(11) DEFAULT NULL,
  `NomineeAadharNo` text DEFAULT NULL,
  `ZoneId` int(11) NOT NULL,
  `MonthlySalary` float(14,2) NOT NULL,
  `DeclarationPhoto` text DEFAULT NULL,
  `MgrCheckpoint` tinyint(1) NOT NULL DEFAULT 0,
  `OtherEmp` tinyint(1) NOT NULL DEFAULT 0,
  `FrDevCost` text DEFAULT NULL,
  `MonthlyRent` text DEFAULT NULL,
  `PumpName` text DEFAULT NULL,
  `SpacePartner` text DEFAULT NULL,
  `SubZoneId` int(11) NOT NULL,
  `subzones` text DEFAULT NULL,
  `NoticePeriod` text DEFAULT NULL,
  `ReferName` text DEFAULT NULL,
  `Education` text DEFAULT NULL,
  `UanNo` text DEFAULT NULL,
  `AssignFranchiseAttendance` text DEFAULT NULL,
  `AssignFranchiseVedExp` text DEFAULT NULL,
  `MenuId` int(11) DEFAULT NULL,
  `NewFr` varchar(10) NOT NULL DEFAULT 'Old',
  `NsoVedPay` tinyint(1) NOT NULL,
  `YearlyWeekOff` int(11) NOT NULL DEFAULT 60,
  `MonthlyWeekOff` int(11) NOT NULL DEFAULT 5,
  `ReJoinDate` date DEFAULT NULL,
  `ApproveBy` text DEFAULT NULL,
  `UnderByBdm` int(11) NOT NULL,
  `logincnt` int(11) NOT NULL,
  `FamilyName1` varchar(255) DEFAULT NULL,
  `FamilyMobile1` varchar(20) DEFAULT NULL,
  `EmpRelation1` varchar(100) DEFAULT NULL,
  `FamilyDob1` date DEFAULT NULL,
  `FamilyResident1` varchar(100) DEFAULT NULL,
  `FamilyCity1` varchar(100) DEFAULT NULL,
  `FamilyState1` varchar(100) DEFAULT NULL,
  `FamilyName2` varchar(255) DEFAULT NULL,
  `FamilyMobile2` varchar(20) DEFAULT NULL,
  `EmpRelation2` varchar(100) DEFAULT NULL,
  `FamilyDob2` date DEFAULT NULL,
  `FamilyResident2` varchar(100) DEFAULT NULL,
  `FamilyCity2` varchar(100) DEFAULT NULL,
  `FamilyState2` varchar(100) DEFAULT NULL,
  `FamilyName3` varchar(255) DEFAULT NULL,
  `FamilyMobile3` varchar(20) DEFAULT NULL,
  `EmpRelation3` varchar(100) DEFAULT NULL,
  `FamilyDob3` date DEFAULT NULL,
  `FamilyResident3` varchar(100) DEFAULT NULL,
  `FamilyCity3` varchar(100) DEFAULT NULL,
  `FamilyState3` varchar(100) DEFAULT NULL,
  `FamilyName4` varchar(255) DEFAULT NULL,
  `FamilyMobile4` varchar(20) DEFAULT NULL,
  `EmpRelation4` varchar(100) DEFAULT NULL,
  `FamilyDob4` date DEFAULT NULL,
  `FamilyResident4` varchar(100) DEFAULT NULL,
  `FamilyCity4` varchar(100) DEFAULT NULL,
  `FamilyState4` varchar(100) DEFAULT NULL,
  `FamilyName5` varchar(255) DEFAULT NULL,
  `FamilyMobile5` varchar(20) DEFAULT NULL,
  `EmpRelation5` varchar(100) DEFAULT NULL,
  `FamilyDob5` date DEFAULT NULL,
  `FamilyResident5` varchar(100) DEFAULT NULL,
  `FamilyCity5` varchar(100) DEFAULT NULL,
  `FamilyState5` varchar(100) DEFAULT NULL,
  `FamilyName6` varchar(255) DEFAULT NULL,
  `FamilyMobile6` varchar(20) DEFAULT NULL,
  `EmpRelation6` varchar(100) DEFAULT NULL,
  `FamilyDob6` date DEFAULT NULL,
  `FamilyResident6` varchar(100) DEFAULT NULL,
  `FamilyCity6` varchar(100) DEFAULT NULL,
  `FamilyState6` varchar(100) DEFAULT NULL,
  `Increment` varchar(20) DEFAULT 'No',
  `IncrementPer` int(11) NOT NULL,
  `ReferId` int(11) NOT NULL,
  `Options2` text DEFAULT NULL,
  `PettyCash` varchar(10) DEFAULT 'No',
  `PettyAmount` varchar(50) DEFAULT NULL,
  `MarkAttendance` tinyint(1) NOT NULL,
  `subzone` text DEFAULT NULL,
  `AlianceName` varchar(100) DEFAULT NULL,
  `AliancePhone` varchar(20) DEFAULT NULL,
  `AlianceEmailId` varchar(100) DEFAULT NULL,
  `AliancePer` float(14,2) DEFAULT NULL,
  `VendorExpSecOpt` tinyint(1) NOT NULL,
  `EmpStatus` tinyint(1) NOT NULL,
  `OfficeAddress` text DEFAULT NULL,
  `FssaiNo` varchar(50) DEFAULT NULL,
  `EmpScheme` int(11) NOT NULL,
  `EsicNo` varchar(50) NOT NULL,
  `TrustedVendor` varchar(10) NOT NULL DEFAULT 'No',
  `BdmCheckpoint` tinyint(1) NOT NULL,
  `AssignFranchiseDelivery` text DEFAULT NULL,
  `AssignFranchiseBdm` text DEFAULT NULL,
  `EmpAppDashboard` tinyint(1) NOT NULL,
  `OperationalFr` varchar(20) DEFAULT NULL,
  `InternshipEmp` tinyint(1) NOT NULL,
  `ZomatoSwiggy` text DEFAULT NULL,
  `PayPeriod` int(11) NOT NULL,
  `CashHandover` tinyint(1) NOT NULL,
  `submenuid` text DEFAULT NULL,
  `menu_ids` text DEFAULT NULL,
  `AllocateNewRawProd` text DEFAULT NULL,
  `OpenTime` varchar(50) DEFAULT NULL,
  `CloseTime` varchar(50) DEFAULT NULL,
  `OpenTime24` time DEFAULT NULL,
  `CloseTime24` time DEFAULT NULL,
  `ModelType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `CustomerId`, `ColgId`, `ShopName`, `Fname`, `Mname`, `Lname`, `Phone`, `Phone2`, `EmailId`, `Password`, `CountryId`, `StateId`, `CityId`, `AreaId`, `Address`, `Pincode`, `Photo`, `Photo2`, `Photo3`, `GstNo`, `PanNo`, `Roll`, `Status`, `CreatedBy`, `ModifiedBy`, `CreatedDate`, `ModifiedDate`, `Options`, `BranchId`, `Dob`, `Area`, `UserType`, `PayMode`, `UnderUser`, `ProjectType`, `BeneficiaryId`, `Taluka`, `Village`, `District`, `PumpCapacity`, `RooftopPlantCapacity`, `Lattitude`, `Longitude`, `OffOnGrid`, `SanctionLoad`, `LoadExtension`, `WaterSource`, `SummerDepth`, `WinterDepth`, `PumpHead`, `BgNumber`, `BgValidity`, `BgClaimPeriod`, `InsuranceNumber`, `InsuranceAgency`, `InsuranceValidity`, `InstallationVendor`, `SurveyDetails`, `SchemeId`, `PumpHeadSelect`, `AcDc`, `Surface`, `AadharNo`, `AadharCard`, `AadharCard2`, `PanCard`, `PanCard2`, `GstCertificate`, `AccountName`, `BankName`, `AccountNo`, `IfscCode`, `Branch`, `UpiNo`, `GumastaNo`, `Gumasta`, `MsmeNo`, `Msme`, `InspectionDate`, `CommissioningDate`, `CustType`, `BoreDia`, `Details`, `CatId`, `CompName`, `CompAddress`, `CompPhone`, `AuthorName`, `Tokens`, `CompId`, `FatherPhone`, `Designation`, `BloodGroup`, `JoinDate`, `EmailId2`, `PerDaySalary`, `Barcode`, `KycStatus`, `KycDate`, `Profession`, `FsiicNo`, `ShopActNo`, `AnniversaryDate`, `ExeId`, `SellAmt`, `SellDate`, `UnderFr`, `ReportingMgr`, `ResignStatus`, `ResignDate`, `ResignComment`, `BillSoftFrId`, `PkgId`, `PkgAmt`, `PkgDiscount`, `PkgDate`, `PkgValidity`, `Prime`, `terms_condition`, `bottom_title`, `ReferCode`, `OwnFranchise`, `PrintCompName`, `PrintMobNo`, `TableQrCode`, `FoodLicence`, `FoodLicenceReceipt`, `AgreementCopy`, `SalaryType`, `CreditSalaryStatus`, `IdStatus`, `zone`, `CocoFranchiseAccess`, `CinNo`, `push_flag`, `delete_flag`, `modified_time`, `UnderFrId`, `Location`, `ShowFrStatus`, `ReferalNo1`, `ReferalNo2`, `NomineePartnerName`, `NomineePartnerRelation`, `NomineePartnerPhone`, `BillAmount`, `ExpCatId`, `MainBrEmp`, `ExpApproval`, `UnderByUser`, `DeliveryPerson`, `ChequeBook`, `TradeName`, `TypeOfVendor`, `RefPhone`, `RefPhone2`, `RefEmailId`, `AllocateProd`, `AllocateRawProd`, `Percentage`, `AuthToken`, `DeclarationPdf`, `NomineeName`, `NomineeRelation`, `NomineePhone`, `NomineeAadharNo`, `ZoneId`, `MonthlySalary`, `DeclarationPhoto`, `MgrCheckpoint`, `OtherEmp`, `FrDevCost`, `MonthlyRent`, `PumpName`, `SpacePartner`, `SubZoneId`, `subzones`, `NoticePeriod`, `ReferName`, `Education`, `UanNo`, `AssignFranchiseAttendance`, `AssignFranchiseVedExp`, `MenuId`, `NewFr`, `NsoVedPay`, `YearlyWeekOff`, `MonthlyWeekOff`, `ReJoinDate`, `ApproveBy`, `UnderByBdm`, `logincnt`, `FamilyName1`, `FamilyMobile1`, `EmpRelation1`, `FamilyDob1`, `FamilyResident1`, `FamilyCity1`, `FamilyState1`, `FamilyName2`, `FamilyMobile2`, `EmpRelation2`, `FamilyDob2`, `FamilyResident2`, `FamilyCity2`, `FamilyState2`, `FamilyName3`, `FamilyMobile3`, `EmpRelation3`, `FamilyDob3`, `FamilyResident3`, `FamilyCity3`, `FamilyState3`, `FamilyName4`, `FamilyMobile4`, `EmpRelation4`, `FamilyDob4`, `FamilyResident4`, `FamilyCity4`, `FamilyState4`, `FamilyName5`, `FamilyMobile5`, `EmpRelation5`, `FamilyDob5`, `FamilyResident5`, `FamilyCity5`, `FamilyState5`, `FamilyName6`, `FamilyMobile6`, `EmpRelation6`, `FamilyDob6`, `FamilyResident6`, `FamilyCity6`, `FamilyState6`, `Increment`, `IncrementPer`, `ReferId`, `Options2`, `PettyCash`, `PettyAmount`, `MarkAttendance`, `subzone`, `AlianceName`, `AliancePhone`, `AlianceEmailId`, `AliancePer`, `VendorExpSecOpt`, `EmpStatus`, `OfficeAddress`, `FssaiNo`, `EmpScheme`, `EsicNo`, `TrustedVendor`, `BdmCheckpoint`, `AssignFranchiseDelivery`, `AssignFranchiseBdm`, `EmpAppDashboard`, `OperationalFr`, `InternshipEmp`, `ZomatoSwiggy`, `PayPeriod`, `CashHandover`, `submenuid`, `menu_ids`, `AllocateNewRawProd`, `OpenTime`, `CloseTime`, `OpenTime24`, `CloseTime24`, `ModelType`) VALUES
(1, 'MH5', NULL, 'MAHACHAI PRIVATE LIMITED', 'Nilesh Giradkar admin', '', '', '8149693720', '', 'nileshgiradkar1@gmail.com', '12345', 0, 0, 0, NULL, 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', '', '', NULL, NULL, '27AANCM5897K1ZH', NULL, 1, 1, 0, 0, '0000-00-00', '0000-00-00', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.138936', '79.1262246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, '', NULL, NULL, NULL, NULL, 'eMIkeCUiQnicCfVw6LkVz8:APA91bH6GW2ht7JyDhpy0FNJAKfwUSAMDdGZBmGYUXx20THKkZovrB2WqNClex-9O2DU7rZ7DGo7lFfV81B0YA-WbQQHXdfBGzQOwTCQqk_aOWPCTseq5g4', 0, NULL, NULL, NULL, NULL, NULL, NULL, '5.png', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, '0000-00-00', NULL, 0, 'Thank you for your business!', 'Powered by MAHACHAI PRIVATE LIMITED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, '1,2,3,4,5,6,7,8,10,11,14,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,35,36,37,38,39,49,51,52,53,54,55,56,57,59,60,61,62,72,73,74,75,76,77,78,79,80,81,82,83,84,85,89,90,91,92,93,94,95,96,97,98,99,100,104,105', 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'MH5', NULL, 'MAHACHAI PRIVATE LIMITED', 'Rajat Dhanwalkar admin', '', '', '9595454975', '', 'rajatdh07@gmail.com', '12345', 0, 0, 0, NULL, 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', '', '', NULL, NULL, '27AANCM5897K1ZH', NULL, 1, 1, 0, 0, '0000-00-00', '0000-00-00', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.138956', '79.1262272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, '', NULL, NULL, NULL, NULL, 'd70jwElsS6qi6UEKjvWhn9:APA91bGFZ-g0wA4UIfBWnXl_K7Ob92Grr1umq48Tdje4_T2Hlt6phgiUHdQzpamul-VnZJZ4EKS9N44Ag2flGlm6CF-NeOPGXSqXd4lmq3e1X7R1rQpz9tE', 0, NULL, NULL, NULL, NULL, NULL, NULL, '5.png', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, '0000-00-00', NULL, 0, 'Thank you for your business!', 'Powered by MAHACHAI PRIVATE LIMITED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, '1,2,3,4,5,6,7,8,10,11,14,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,35,36,37,38,39,49,51,52,53,54,55,56,57,59,60,61,62,72,73,74,75,76,77,78,79,80,81,82,83,84,85,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106', 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'MH8', 0, 'Ashwini Amrut Tulya T', 'Ashwini Amrut Tulya T', '', '', '8149693719', '', 'testing@gmail.com', '12345', 0, 1, 0, NULL, 'Nandanvan,Nagpur', '', NULL, NULL, NULL, '', '', 5, 1, 1, 0, '2025-09-17', '0000-00-00', '10,11,14,48,49,50,56,57,59,60,69,71,73,74,77,78,79,80,81,82,84,85,86,92,93,94,96,97,98,99', '', '0000-00-00', '', 0, NULL, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', NULL, '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '0000-00-00', 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, '0000-00-00', NULL, 0, 'Happy Journey Visit Again', 'Powered by KWICK BILL (For Bill Machine and Software please  call : 8149693719)', NULL, 1, 'ASHWINI AMRUTULYA', '8149693719', NULL, '', '', '', 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-09-17 09:25:00', 0, 'Nandanvan', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0.00, NULL, 0, 0, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, NULL, 'No', NULL, 0, NULL, '', '', '', 0.00, 0, 0, NULL, '', 0, '', 'No', 0, NULL, NULL, 0, '', 0, '0', 0, 0, NULL, NULL, NULL, '10:00 AM', '11:00 PM', '10:00:00', '23:00:00', 0),
(9, 'V9', NULL, NULL, 'Agrawal', '', '', '7766443322', '', '', '', 0, 0, 0, NULL, 'Nagpur', '', '', '', '', '', NULL, 3, 1, 1, 1, '2025-09-17', '2025-09-17', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, '0000-00-00', NULL, 0, NULL, NULL, NULL, 0, 'MAHACHAI PRIVATE LIMITED', '9730445152', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', 'Haldiram', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Nagpur', NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, NULL, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_bill`
--

CREATE TABLE `tbl_users_bill` (
  `id` int(11) NOT NULL,
  `CustomerId` varchar(100) NOT NULL,
  `ColgId` int(11) DEFAULT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Phone2` varchar(20) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CountryId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `AreaId` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Pincode` varchar(100) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `GstNo` varchar(255) DEFAULT NULL,
  `PanNo` varchar(255) DEFAULT NULL,
  `Roll` int(11) NOT NULL COMMENT '1:superadmin;2:telecaller;3:Manufacture;4:supervisior;5:customer;6:executive;7:admin;8:employee;9:dealer;10:company;',
  `Status` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Options` text DEFAULT NULL,
  `BranchId` varchar(255) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `UserType` int(11) NOT NULL,
  `PayMode` varchar(255) DEFAULT NULL,
  `UnderUser` int(11) NOT NULL,
  `ProjectType` varchar(10) DEFAULT NULL,
  `BeneficiaryId` varchar(10) DEFAULT NULL,
  `Taluka` varchar(10) DEFAULT NULL,
  `Village` varchar(10) DEFAULT NULL,
  `District` varchar(10) DEFAULT NULL,
  `PumpCapacity` varchar(10) DEFAULT NULL,
  `RooftopPlantCapacity` varchar(10) DEFAULT NULL,
  `Lattitude` varchar(50) DEFAULT NULL,
  `Longitude` varchar(50) DEFAULT NULL,
  `OffOnGrid` varchar(10) DEFAULT NULL,
  `SanctionLoad` varchar(10) DEFAULT NULL,
  `LoadExtension` varchar(10) DEFAULT NULL,
  `WaterSource` varchar(10) DEFAULT NULL,
  `SummerDepth` varchar(10) DEFAULT NULL,
  `WinterDepth` varchar(10) DEFAULT NULL,
  `PumpHead` varchar(10) DEFAULT NULL,
  `BgNumber` varchar(10) DEFAULT NULL,
  `BgValidity` varchar(10) DEFAULT NULL,
  `BgClaimPeriod` varchar(10) DEFAULT NULL,
  `InsuranceNumber` varchar(10) DEFAULT NULL,
  `InsuranceAgency` varchar(10) DEFAULT NULL,
  `InsuranceValidity` varchar(10) DEFAULT NULL,
  `InstallationVendor` varchar(10) DEFAULT NULL,
  `SurveyDetails` tinyint(1) NOT NULL,
  `SchemeId` int(11) NOT NULL,
  `PumpHeadSelect` varchar(10) DEFAULT NULL,
  `AcDc` varchar(10) DEFAULT NULL,
  `Surface` varchar(10) DEFAULT NULL,
  `AadharNo` varchar(50) DEFAULT NULL,
  `AadharCard` varchar(255) DEFAULT NULL,
  `AadharCard2` varchar(255) DEFAULT NULL,
  `PanCard` varchar(255) DEFAULT NULL,
  `PanCard2` varchar(255) DEFAULT NULL,
  `GstCertificate` varchar(255) DEFAULT NULL,
  `AccountName` text DEFAULT NULL,
  `BankName` text DEFAULT NULL,
  `AccountNo` text DEFAULT NULL,
  `IfscCode` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `UpiNo` text DEFAULT NULL,
  `GumastaNo` varchar(100) DEFAULT NULL,
  `Gumasta` text DEFAULT NULL,
  `MsmeNo` varchar(50) DEFAULT NULL,
  `Msme` text DEFAULT NULL,
  `InspectionDate` date DEFAULT NULL,
  `CommissioningDate` date DEFAULT NULL,
  `CustType` int(11) NOT NULL,
  `BoreDia` varchar(100) NOT NULL,
  `Details` text DEFAULT NULL,
  `CatId` varchar(10) NOT NULL,
  `CompName` varchar(255) DEFAULT NULL,
  `CompAddress` text DEFAULT NULL,
  `CompPhone` varchar(100) DEFAULT NULL,
  `AuthorName` varchar(255) DEFAULT NULL,
  `Tokens` text DEFAULT NULL,
  `CompId` int(11) NOT NULL,
  `FatherPhone` varchar(100) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `BloodGroup` varchar(100) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `EmailId2` varchar(255) DEFAULT NULL,
  `PerDaySalary` float(14,2) DEFAULT NULL,
  `Barcode` varchar(255) DEFAULT NULL,
  `KycStatus` tinyint(1) NOT NULL,
  `KycDate` date DEFAULT NULL,
  `Profession` varchar(50) DEFAULT NULL,
  `FsiicNo` varchar(50) DEFAULT NULL,
  `ShopActNo` varchar(50) DEFAULT NULL,
  `AnniversaryDate` date DEFAULT NULL,
  `ExeId` int(11) NOT NULL,
  `SellAmt` float(14,2) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `UnderFr` int(11) NOT NULL,
  `ReportingMgr` tinyint(1) NOT NULL,
  `ResignStatus` tinyint(1) NOT NULL,
  `ResignDate` date DEFAULT NULL,
  `ResignComment` text DEFAULT NULL,
  `BillSoftFrId` int(11) NOT NULL,
  `PkgId` int(11) NOT NULL,
  `PkgAmt` float(14,2) DEFAULT NULL,
  `PkgDiscount` float(14,2) DEFAULT NULL,
  `PkgDate` date DEFAULT NULL,
  `PkgValidity` date DEFAULT NULL,
  `Prime` tinyint(1) NOT NULL,
  `terms_condition` text DEFAULT NULL,
  `bottom_title` text DEFAULT NULL,
  `ReferCode` varchar(255) DEFAULT NULL,
  `OwnFranchise` tinyint(1) NOT NULL,
  `PrintCompName` varchar(255) DEFAULT NULL,
  `PrintMobNo` varchar(50) DEFAULT NULL,
  `TableQrCode` varchar(255) DEFAULT NULL,
  `FoodLicence` varchar(255) DEFAULT NULL,
  `FoodLicenceReceipt` varchar(255) DEFAULT NULL,
  `AgreementCopy` varchar(255) DEFAULT NULL,
  `SalaryType` tinyint(1) NOT NULL,
  `CreditSalaryStatus` tinyint(1) NOT NULL,
  `IdStatus` tinyint(1) NOT NULL,
  `zone` text DEFAULT NULL,
  `CocoFranchiseAccess` text DEFAULT NULL,
  `CinNo` text DEFAULT NULL,
  `push_flag` tinyint(1) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL,
  `modified_time` datetime NOT NULL,
  `UnderFrId` int(11) NOT NULL,
  `Location` text DEFAULT NULL,
  `ShowFrStatus` tinyint(1) NOT NULL DEFAULT 1,
  `ReferalNo1` text DEFAULT NULL,
  `ReferalNo2` text DEFAULT NULL,
  `NomineePartnerName` text DEFAULT NULL,
  `NomineePartnerRelation` text DEFAULT NULL,
  `NomineePartnerPhone` text DEFAULT NULL,
  `BillAmount` float(14,2) DEFAULT NULL,
  `ExpCatId` varchar(100) DEFAULT NULL,
  `MainBrEmp` tinyint(1) NOT NULL,
  `ExpApproval` tinyint(1) NOT NULL,
  `UnderByUser` int(11) NOT NULL,
  `DeliveryPerson` tinyint(1) NOT NULL,
  `ChequeBook` text DEFAULT NULL,
  `TradeName` text DEFAULT NULL,
  `TypeOfVendor` int(11) NOT NULL,
  `RefPhone` varchar(20) DEFAULT NULL,
  `RefPhone2` varchar(20) DEFAULT NULL,
  `RefEmailId` varchar(50) DEFAULT NULL,
  `AllocateProd` text DEFAULT NULL,
  `AllocateRawProd` text DEFAULT NULL,
  `Percentage` varchar(20) DEFAULT NULL,
  `AuthToken` text DEFAULT NULL,
  `DeclarationPdf` text DEFAULT NULL,
  `NomineeName` text DEFAULT NULL,
  `NomineeRelation` text DEFAULT NULL,
  `NomineePhone` int(11) DEFAULT NULL,
  `NomineeAadharNo` text DEFAULT NULL,
  `ZoneId` int(11) NOT NULL,
  `MonthlySalary` varchar(20) DEFAULT NULL,
  `DeclarationPhoto` text DEFAULT NULL,
  `MgrCheckpoint` tinyint(1) NOT NULL DEFAULT 0,
  `OtherEmp` tinyint(1) NOT NULL DEFAULT 0,
  `FrDevCost` text DEFAULT NULL,
  `MonthlyRent` text DEFAULT NULL,
  `PumpName` text DEFAULT NULL,
  `SpacePartner` text DEFAULT NULL,
  `SubZoneId` int(11) NOT NULL,
  `subzones` text DEFAULT NULL,
  `NoticePeriod` text DEFAULT NULL,
  `ReferName` text DEFAULT NULL,
  `Education` text DEFAULT NULL,
  `UanNo` text DEFAULT NULL,
  `AssignFranchiseAttendance` text DEFAULT NULL,
  `AssignFranchiseVedExp` text DEFAULT NULL,
  `MenuId` int(11) DEFAULT NULL,
  `NewFr` varchar(10) NOT NULL DEFAULT 'Old',
  `NsoVedPay` tinyint(1) NOT NULL,
  `YearlyWeekOff` int(11) NOT NULL DEFAULT 60,
  `MonthlyWeekOff` int(11) NOT NULL DEFAULT 5,
  `ReJoinDate` date DEFAULT NULL,
  `ApproveBy` text DEFAULT NULL,
  `UnderByBdm` int(11) NOT NULL,
  `logincnt` int(11) NOT NULL,
  `FamilyName1` varchar(255) DEFAULT NULL,
  `FamilyMobile1` varchar(20) DEFAULT NULL,
  `EmpRelation1` varchar(100) DEFAULT NULL,
  `FamilyDob1` date DEFAULT NULL,
  `FamilyResident1` varchar(100) DEFAULT NULL,
  `FamilyCity1` varchar(100) DEFAULT NULL,
  `FamilyState1` varchar(100) DEFAULT NULL,
  `FamilyName2` varchar(255) DEFAULT NULL,
  `FamilyMobile2` varchar(20) DEFAULT NULL,
  `EmpRelation2` varchar(100) DEFAULT NULL,
  `FamilyDob2` date DEFAULT NULL,
  `FamilyResident2` varchar(100) DEFAULT NULL,
  `FamilyCity2` varchar(100) DEFAULT NULL,
  `FamilyState2` varchar(100) DEFAULT NULL,
  `FamilyName3` varchar(255) DEFAULT NULL,
  `FamilyMobile3` varchar(20) DEFAULT NULL,
  `EmpRelation3` varchar(100) DEFAULT NULL,
  `FamilyDob3` date DEFAULT NULL,
  `FamilyResident3` varchar(100) DEFAULT NULL,
  `FamilyCity3` varchar(100) DEFAULT NULL,
  `FamilyState3` varchar(100) DEFAULT NULL,
  `FamilyName4` varchar(255) DEFAULT NULL,
  `FamilyMobile4` varchar(20) DEFAULT NULL,
  `EmpRelation4` varchar(100) DEFAULT NULL,
  `FamilyDob4` date DEFAULT NULL,
  `FamilyResident4` varchar(100) DEFAULT NULL,
  `FamilyCity4` varchar(100) DEFAULT NULL,
  `FamilyState4` varchar(100) DEFAULT NULL,
  `FamilyName5` varchar(255) DEFAULT NULL,
  `FamilyMobile5` varchar(20) DEFAULT NULL,
  `EmpRelation5` varchar(100) DEFAULT NULL,
  `FamilyDob5` date DEFAULT NULL,
  `FamilyResident5` varchar(100) DEFAULT NULL,
  `FamilyCity5` varchar(100) DEFAULT NULL,
  `FamilyState5` varchar(100) DEFAULT NULL,
  `FamilyName6` varchar(255) DEFAULT NULL,
  `FamilyMobile6` varchar(20) DEFAULT NULL,
  `EmpRelation6` varchar(100) DEFAULT NULL,
  `FamilyDob6` date DEFAULT NULL,
  `FamilyResident6` varchar(100) DEFAULT NULL,
  `FamilyCity6` varchar(100) DEFAULT NULL,
  `FamilyState6` varchar(100) DEFAULT NULL,
  `Increment` varchar(20) DEFAULT 'No',
  `IncrementPer` int(11) NOT NULL,
  `ReferId` int(11) NOT NULL,
  `Options2` text DEFAULT NULL,
  `PettyCash` varchar(10) DEFAULT 'No',
  `PettyAmount` varchar(50) DEFAULT NULL,
  `MarkAttendance` tinyint(1) NOT NULL,
  `subzone` text DEFAULT NULL,
  `AlianceName` varchar(100) DEFAULT NULL,
  `AliancePhone` varchar(20) DEFAULT NULL,
  `AlianceEmailId` varchar(100) DEFAULT NULL,
  `AliancePer` float(14,2) DEFAULT NULL,
  `VendorExpSecOpt` tinyint(1) NOT NULL,
  `EmpStatus` tinyint(1) NOT NULL,
  `OfficeAddress` text DEFAULT NULL,
  `FssaiNo` varchar(50) DEFAULT NULL,
  `EmpScheme` int(11) NOT NULL,
  `EsicNo` varchar(50) NOT NULL,
  `TrustedVendor` varchar(10) NOT NULL DEFAULT 'No',
  `BdmCheckpoint` tinyint(1) NOT NULL,
  `AssignFranchiseDelivery` text DEFAULT NULL,
  `AssignFranchiseBdm` text DEFAULT NULL,
  `EmpAppDashboard` tinyint(1) NOT NULL,
  `OperationalFr` varchar(20) DEFAULT NULL,
  `InternshipEmp` tinyint(1) NOT NULL,
  `ZomatoSwiggy` text DEFAULT NULL,
  `PayPeriod` int(11) NOT NULL,
  `CashHandover` tinyint(1) NOT NULL,
  `submenuid` text DEFAULT NULL,
  `menu_ids` text DEFAULT NULL,
  `AllocateNewRawProd` text DEFAULT NULL,
  `OpenTime` varchar(50) DEFAULT NULL,
  `CloseTime` varchar(50) DEFAULT NULL,
  `OpenTime24` time DEFAULT NULL,
  `CloseTime24` time DEFAULT NULL,
  `ModelType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_users_bill`
--

INSERT INTO `tbl_users_bill` (`id`, `CustomerId`, `ColgId`, `ShopName`, `Fname`, `Mname`, `Lname`, `Phone`, `Phone2`, `EmailId`, `Password`, `CountryId`, `StateId`, `CityId`, `AreaId`, `Address`, `Pincode`, `Photo`, `Photo2`, `Photo3`, `GstNo`, `PanNo`, `Roll`, `Status`, `CreatedBy`, `ModifiedBy`, `CreatedDate`, `ModifiedDate`, `Options`, `BranchId`, `Dob`, `Area`, `UserType`, `PayMode`, `UnderUser`, `ProjectType`, `BeneficiaryId`, `Taluka`, `Village`, `District`, `PumpCapacity`, `RooftopPlantCapacity`, `Lattitude`, `Longitude`, `OffOnGrid`, `SanctionLoad`, `LoadExtension`, `WaterSource`, `SummerDepth`, `WinterDepth`, `PumpHead`, `BgNumber`, `BgValidity`, `BgClaimPeriod`, `InsuranceNumber`, `InsuranceAgency`, `InsuranceValidity`, `InstallationVendor`, `SurveyDetails`, `SchemeId`, `PumpHeadSelect`, `AcDc`, `Surface`, `AadharNo`, `AadharCard`, `AadharCard2`, `PanCard`, `PanCard2`, `GstCertificate`, `AccountName`, `BankName`, `AccountNo`, `IfscCode`, `Branch`, `UpiNo`, `GumastaNo`, `Gumasta`, `MsmeNo`, `Msme`, `InspectionDate`, `CommissioningDate`, `CustType`, `BoreDia`, `Details`, `CatId`, `CompName`, `CompAddress`, `CompPhone`, `AuthorName`, `Tokens`, `CompId`, `FatherPhone`, `Designation`, `BloodGroup`, `JoinDate`, `EmailId2`, `PerDaySalary`, `Barcode`, `KycStatus`, `KycDate`, `Profession`, `FsiicNo`, `ShopActNo`, `AnniversaryDate`, `ExeId`, `SellAmt`, `SellDate`, `UnderFr`, `ReportingMgr`, `ResignStatus`, `ResignDate`, `ResignComment`, `BillSoftFrId`, `PkgId`, `PkgAmt`, `PkgDiscount`, `PkgDate`, `PkgValidity`, `Prime`, `terms_condition`, `bottom_title`, `ReferCode`, `OwnFranchise`, `PrintCompName`, `PrintMobNo`, `TableQrCode`, `FoodLicence`, `FoodLicenceReceipt`, `AgreementCopy`, `SalaryType`, `CreditSalaryStatus`, `IdStatus`, `zone`, `CocoFranchiseAccess`, `CinNo`, `push_flag`, `delete_flag`, `modified_time`, `UnderFrId`, `Location`, `ShowFrStatus`, `ReferalNo1`, `ReferalNo2`, `NomineePartnerName`, `NomineePartnerRelation`, `NomineePartnerPhone`, `BillAmount`, `ExpCatId`, `MainBrEmp`, `ExpApproval`, `UnderByUser`, `DeliveryPerson`, `ChequeBook`, `TradeName`, `TypeOfVendor`, `RefPhone`, `RefPhone2`, `RefEmailId`, `AllocateProd`, `AllocateRawProd`, `Percentage`, `AuthToken`, `DeclarationPdf`, `NomineeName`, `NomineeRelation`, `NomineePhone`, `NomineeAadharNo`, `ZoneId`, `MonthlySalary`, `DeclarationPhoto`, `MgrCheckpoint`, `OtherEmp`, `FrDevCost`, `MonthlyRent`, `PumpName`, `SpacePartner`, `SubZoneId`, `subzones`, `NoticePeriod`, `ReferName`, `Education`, `UanNo`, `AssignFranchiseAttendance`, `AssignFranchiseVedExp`, `MenuId`, `NewFr`, `NsoVedPay`, `YearlyWeekOff`, `MonthlyWeekOff`, `ReJoinDate`, `ApproveBy`, `UnderByBdm`, `logincnt`, `FamilyName1`, `FamilyMobile1`, `EmpRelation1`, `FamilyDob1`, `FamilyResident1`, `FamilyCity1`, `FamilyState1`, `FamilyName2`, `FamilyMobile2`, `EmpRelation2`, `FamilyDob2`, `FamilyResident2`, `FamilyCity2`, `FamilyState2`, `FamilyName3`, `FamilyMobile3`, `EmpRelation3`, `FamilyDob3`, `FamilyResident3`, `FamilyCity3`, `FamilyState3`, `FamilyName4`, `FamilyMobile4`, `EmpRelation4`, `FamilyDob4`, `FamilyResident4`, `FamilyCity4`, `FamilyState4`, `FamilyName5`, `FamilyMobile5`, `EmpRelation5`, `FamilyDob5`, `FamilyResident5`, `FamilyCity5`, `FamilyState5`, `FamilyName6`, `FamilyMobile6`, `EmpRelation6`, `FamilyDob6`, `FamilyResident6`, `FamilyCity6`, `FamilyState6`, `Increment`, `IncrementPer`, `ReferId`, `Options2`, `PettyCash`, `PettyAmount`, `MarkAttendance`, `subzone`, `AlianceName`, `AliancePhone`, `AlianceEmailId`, `AliancePer`, `VendorExpSecOpt`, `EmpStatus`, `OfficeAddress`, `FssaiNo`, `EmpScheme`, `EsicNo`, `TrustedVendor`, `BdmCheckpoint`, `AssignFranchiseDelivery`, `AssignFranchiseBdm`, `EmpAppDashboard`, `OperationalFr`, `InternshipEmp`, `ZomatoSwiggy`, `PayPeriod`, `CashHandover`, `submenuid`, `menu_ids`, `AllocateNewRawProd`, `OpenTime`, `CloseTime`, `OpenTime24`, `CloseTime24`, `ModelType`) VALUES
(1, 'MH5', NULL, 'MAHACHAI PRIVATE LIMITED ', 'Rajat Dhanwalkar Admin', '', '', '9595454957', '', 'rajatddhadmin07@gmail.com', '12345', 0, 0, 0, NULL, 'Plot No, 3, Jetwan Society Rd, Agne Layout, Shastri Layout, Khamla, Nagpur, Maharashtra 440025', '', '', '', '', '', '', 63, 1, 0, 2091, '0000-00-00', '2025-08-20', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,98,106,107,108,109,110,111,112,113,114,115,117', '', '0000-00-00', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.1115499', '79.1104956', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', NULL, NULL, NULL, NULL, 'cwcdngdSQq6dpb1zQMB_5l:APA91bHKb02eIRNjO9R-rWYC0-pwGCuy748P24g-j40d3w-fvEN83vxN_lWDUJwK79-KRmz67YYxHMaZ_2ZARAeZA1ri74VJJjCLTtsRyERRvI9H5Nw9axS1YKpIT1YW2hmdWKpe_J4b', 0, '', 'Accountant', '', '0000-00-00', '', 0.00, '2091.png', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, '0000-00-00', '', 0, 0, NULL, NULL, '0000-00-00', NULL, 0, 'Thank you for your business!', 'Powered by MAHACHAI PRIVATE LIMITED', NULL, 0, 'MAHACHAI PRIVATE LIMITED - Main Branch', '9730445152', NULL, NULL, NULL, NULL, 0, 0, 0, '1,9,12,19,11,18', '344,385,499,520,522,621,671,702,771,962,1184,1370,1372,1412,1765,1801,1949,2001,2088,2382,2486,2675,2718,3323,3471,4568,4569,4570,4572,4576,4577,4578,4579,4913,5333,5334,5336,5338,5340,5448,5567,5568,5569,5570,5615,5660,5731,5732,5734,5742,5743,5784,6057,6061,6064,6067,6068,6069,6379,6380,6540,6836,7001,7002,7003,7004,7085,7825,7840,7893,7934,7987,8189,8190,8192,8194,8206,8404,8405,8417,8418,8419,8421,8464,8545,8757,8779,9094,9118,9120,9123,9125,9172,9512,9513,9720,9724,9725,9726,10050,10064,10067,10149,10523,10524,10525,10526,10527,10742,10743,10746,10748,10808,10810,10881,11072,11629,11632,11691,11692,11693,11695,11734,11854,11857,13176,13177,14764,14765,14766,14768,14769,14770,15335,394,963,1535,1536,1539,1540,1541,1542,1543,1991,2394,2428,2605,2636,2646,3467,10606,14548,253,357,523,710,717,964,1371,1547,2372,2373,2391,2392,2596,2661,2695,3468,3469,4575,4655,4834,5335,5447,9727,11853,7841,8088,10068', NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2,4,5,8,10,11,12,13,14,15,16,17,18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, '1,2,3,4,5,6,7,8,61,9,12,13,15,16,17,18,19,20,21,22,58,68,69,23,24,25,26,27,118,119,70,120,28,29,30,31,35,122,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,63,64,65,66,67,10,11,14,71,72,73,112,113,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,114,115,116,117,127,128', 'No', NULL, 0, '2,4,5,8,10,11,12,14,16,17,19,20,21,22,23,25,26,27,28,29,30', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'MH8', 0, 'Ashwini Amrut Tulya T', 'Ashwini Amrut Tulya T', '', '', '8149693719', '', 'testing@gmail.com', '12345', 0, 1, 0, NULL, 'Nandanvan,Nagpur', '', NULL, NULL, NULL, '', '', 5, 1, 1, 0, '2025-09-17', '0000-00-00', '10,11,14,48,49,50,56,57,59,60,69,71,73,74,77,78,79,80,81,82,84,85,86,92,93,94,96,97,98,99', '', '0000-00-00', '', 0, NULL, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', NULL, '', '', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '0000-00-00', 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, '0000-00-00', NULL, 0, 'Happy Journey Visit Again', 'Powered by KWICK BILL (For Bill Machine and Software please  call : 8149693719)', NULL, 1, 'ASHWINI AMRUTULYA', '8149693719', NULL, '', '', '', 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-09-17 09:25:00', 0, 'Nandanvan', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '0', NULL, 0, 0, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, NULL, 'No', NULL, 0, NULL, '', '', '', 0.00, 0, 0, NULL, '', 0, '', 'No', 0, NULL, NULL, 0, '', 0, '0', 0, 0, '22,23,24', '1,5,12,13,19,31', NULL, '10:00 AM', '11:00 PM', '10:00:00', '23:00:00', 0),
(9, '', NULL, NULL, 'Godown 1', '', '', '9977665544', '', '', '12345', 0, 0, 0, NULL, 'Nagpur', '', '', '', '', '', '', 93, 1, 1, 1, '2025-09-17', '2025-09-17', '', '', '0000-00-00', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', NULL, NULL, NULL, NULL, NULL, 0, '', '', '', '0000-00-00', '', 0.00, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, '0000-00-00', '', 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '', NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'C10', NULL, NULL, 'Ashwini Production', '', '', '8866557744', '', '', '12345', 0, 0, 0, NULL, 'Nagpur', '', '', '', '', '', '', 96, 1, 1, 0, '2025-09-17', NULL, '', '', '0000-00-00', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', NULL, NULL, NULL, NULL, NULL, 0, '', '', '', '0000-00-00', '', 0.00, '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, '0000-00-00', '', 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '', NULL, 0, 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Old', 0, 60, 5, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, '', 'No', 0, NULL, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_files`
--

CREATE TABLE `tbl_user_files` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Files` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_files2`
--

CREATE TABLE `tbl_user_files2` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Files` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_logs`
--

CREATE TABLE `tbl_user_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `invid` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `roll` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type`
--

CREATE TABLE `tbl_user_type` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_type`
--

INSERT INTO `tbl_user_type` (`id`, `Name`, `Photo`, `Status`) VALUES
(36, 'Accountant', '', 1),
(84, 'Cashier', '', 1),
(165, 'Shop Manager', '', 1),
(29, 'Manager', '', 1),
(63, 'Shop Employee', '', 0),
(96, 'Productions', NULL, 0),
(1, 'Admin', NULL, 0),
(166, 'Distributers', NULL, 0),
(93, 'Godown', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_use_raw_stock`
--

CREATE TABLE `tbl_use_raw_stock` (
  `id` int(11) NOT NULL,
  `StockDate` date DEFAULT NULL,
  `TotQty` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ved_expense_items`
--

CREATE TABLE `tbl_ved_expense_items` (
  `id` bigint(20) NOT NULL,
  `VedId` int(11) NOT NULL,
  `ExpId` int(11) NOT NULL,
  `MainProdId` int(11) NOT NULL,
  `ProdId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Qty2` varchar(50) DEFAULT NULL,
  `Unit2` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StockDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `InvId` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `TransferId` int(11) NOT NULL,
  `PurchasePrice` varchar(50) DEFAULT NULL,
  `SellPrice` varchar(50) DEFAULT NULL,
  `InvoiceId` text DEFAULT NULL,
  `ProdType` tinyint(1) NOT NULL,
  `Wastage` smallint(6) NOT NULL,
  `checkstatus` smallint(6) NOT NULL,
  `VedExp` varchar(10) NOT NULL DEFAULT 'Yes',
  `srno` int(11) NOT NULL,
  `item_addedby` varchar(50) DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_expenses`
--

CREATE TABLE `tbl_vendor_expenses` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `VedId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `TempPrdId` int(11) NOT NULL,
  `TempPrdId2` int(11) NOT NULL,
  `VedPhone` varchar(50) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `WebPhoto` varchar(255) DEFAULT NULL,
  `WebPhoto2` varchar(255) DEFAULT NULL,
  `Locations` int(11) NOT NULL,
  `InvoiceNo` varchar(100) DEFAULT NULL,
  `AccBalance` float(14,2) NOT NULL,
  `TradeName` varchar(255) DEFAULT NULL,
  `TypeOfVendor` int(11) NOT NULL,
  `PoNo` varchar(100) DEFAULT NULL,
  `AdvAmount` varchar(50) DEFAULT NULL,
  `InvType` varchar(50) DEFAULT NULL,
  `PayAmount` varchar(50) DEFAULT NULL,
  `BalAmt` varchar(50) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentStatus` tinyint(1) NOT NULL,
  `PayBy` int(11) NOT NULL,
  `PayNarration` text DEFAULT NULL,
  `BdmStatus` tinyint(1) NOT NULL,
  `BdmBy` int(11) NOT NULL,
  `BdmApproveDate` date DEFAULT NULL,
  `BdmComment` text DEFAULT NULL,
  `BdmAmount` varchar(20) DEFAULT NULL,
  `PurchaseStatus` tinyint(1) NOT NULL,
  `PurchaseBy` int(11) NOT NULL,
  `PurchaseApproveDate` date DEFAULT NULL,
  `PurchaseComment` text DEFAULT NULL,
  `PurchaseAmount` varchar(20) DEFAULT NULL,
  `GrnNo` varchar(100) DEFAULT NULL,
  `UtrNo` varchar(100) DEFAULT NULL,
  `Product` varchar(20) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_expense_invoices`
--

CREATE TABLE `tbl_vendor_expense_invoices` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `MgrAmount` float(14,2) DEFAULT NULL,
  `AccAmount` float(14,2) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Photo2` varchar(255) DEFAULT NULL,
  `Photo3` varchar(255) DEFAULT NULL,
  `Photo4` varchar(255) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifedBy` int(11) NOT NULL,
  `ModifedDate` date DEFAULT NULL,
  `ApproveDate` date DEFAULT NULL,
  `MannagerComment` text DEFAULT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `ManagerStatus` tinyint(1) NOT NULL,
  `MrgBy` int(11) NOT NULL,
  `AccBy` int(11) NOT NULL,
  `AdminStatus` tinyint(1) NOT NULL,
  `AdminComment` text DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `TempPrdId` int(11) NOT NULL,
  `TempPrdId2` int(11) NOT NULL,
  `VedPhone` varchar(50) DEFAULT NULL,
  `FrId` int(11) NOT NULL,
  `WebPhoto` varchar(255) DEFAULT NULL,
  `WebPhoto2` varchar(255) DEFAULT NULL,
  `Locations` int(11) NOT NULL,
  `ExpCatId` int(11) NOT NULL,
  `TotDays` varchar(10) NOT NULL,
  `TempUpdate` tinyint(1) NOT NULL,
  `Claims` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_expense_ledger`
--

CREATE TABLE `tbl_vendor_expense_ledger` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `GstPer` varchar(100) DEFAULT NULL,
  `CrDr` varchar(100) DEFAULT NULL,
  `Roll` tinyint(1) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `SellId` int(11) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SellType` varchar(100) NOT NULL DEFAULT 'Gold',
  `BranchId` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ExpenseId` int(11) NOT NULL,
  `Flag` varchar(100) DEFAULT NULL,
  `AccRoll` varchar(100) DEFAULT NULL,
  `PostId` int(11) NOT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BorrowFlag` tinyint(1) NOT NULL,
  `BillSoftFrId` int(11) NOT NULL,
  `UtrNo` varchar(100) DEFAULT NULL,
  `NsoVed` tinyint(1) NOT NULL,
  `ExpId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_invoice`
--

CREATE TABLE `tbl_vendor_invoice` (
  `id` int(11) NOT NULL,
  `VedId` int(11) DEFAULT NULL,
  `VedName` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `CellNo` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `SubTotal` float(14,2) DEFAULT NULL,
  `GstPer` float(14,2) DEFAULT NULL,
  `GstAmt` float(14,2) DEFAULT NULL,
  `Discount` float(14,2) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaidAmt` float(14,2) DEFAULT NULL,
  `BalAmt` float(14,2) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_ledger`
--

CREATE TABLE `tbl_vendor_ledger` (
  `id` int(11) NOT NULL,
  `SrNo` int(11) DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `AccCode` varchar(100) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `GstPer` varchar(100) DEFAULT NULL,
  `CrDr` varchar(100) DEFAULT NULL,
  `Roll` tinyint(1) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `SellId` int(11) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `Narration` text DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `SellType` varchar(100) NOT NULL DEFAULT 'Gold',
  `BranchId` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `ExpenseId` int(11) NOT NULL,
  `Flag` varchar(100) DEFAULT NULL,
  `AccRoll` varchar(100) DEFAULT NULL,
  `PostId` int(11) NOT NULL,
  `ChequeNo` varchar(100) DEFAULT NULL,
  `ChqDate` date DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `UpiNo` varchar(100) DEFAULT NULL,
  `Main` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `BorrowFlag` tinyint(1) NOT NULL,
  `BillSoftFrId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_stock_invoice`
--

CREATE TABLE `tbl_vendor_stock_invoice` (
  `id` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `vedid` int(11) NOT NULL,
  `invoice_no` varchar(20) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `total_amt` varchar(20) DEFAULT NULL,
  `narration` text DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `AdminStatus` smallint(6) NOT NULL,
  `AdminBy` int(11) NOT NULL,
  `AdminApproveDate` date DEFAULT NULL,
  `AdminComment` text DEFAULT NULL,
  `AccountantApproveDate` date DEFAULT NULL,
  `AccountantComment` text DEFAULT NULL,
  `AccountantStatus` smallint(6) NOT NULL,
  `AccountantBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_stock_invoice_items`
--

CREATE TABLE `tbl_vendor_stock_invoice_items` (
  `id` int(11) NOT NULL,
  `invid` int(11) NOT NULL,
  `frid` int(11) NOT NULL,
  `vedid` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `prod_type` smallint(6) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `Receive` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_gallery`
--

CREATE TABLE `tbl_video_gallery` (
  `id` int(11) NOT NULL,
  `VideoFor` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visit_details`
--

CREATE TABLE `tbl_visit_details` (
  `id` int(11) NOT NULL,
  `ExeId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(255) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  `VisitTime` varchar(255) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastage_invoice`
--

CREATE TABLE `tbl_wastage_invoice` (
  `id` int(11) NOT NULL,
  `FrId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `StockDate` date NOT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `Type` tinyint(1) NOT NULL DEFAULT 0,
  `MgrStatus` tinyint(1) NOT NULL,
  `MgrBy` int(11) NOT NULL,
  `MgrApproveDate` date DEFAULT NULL,
  `MgrComments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_week_off_punch`
--

CREATE TABLE `tbl_week_off_punch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `punch_date` date NOT NULL,
  `punch_time` time NOT NULL,
  `punch_datetime` datetime NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('active','cancelled') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdraw_request`
--

CREATE TABLE `tbl_withdraw_request` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Amount` float(14,2) DEFAULT NULL,
  `ReqDate` date DEFAULT NULL,
  `ReqTime` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `PayDate` date DEFAULT NULL,
  `PayTime` varchar(100) DEFAULT NULL,
  `PayAmt` float(14,2) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `Narration` text DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountNo` varchar(255) DEFAULT NULL,
  `IfscCode` varchar(255) DEFAULT NULL,
  `Branch` varchar(255) DEFAULT NULL,
  `UpiNo` varchar(255) DEFAULT NULL,
  `PayMode` varchar(100) DEFAULT NULL,
  `PayNarration` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_order`
--

CREATE TABLE `tbl_work_order` (
  `id` int(11) NOT NULL,
  `CompId` int(11) NOT NULL,
  `CustId` int(11) NOT NULL,
  `CellNo` varchar(255) DEFAULT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(255) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `QtnSubject` text DEFAULT NULL,
  `KindAttn` varchar(255) DEFAULT NULL,
  `RefEnqNo` text DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `TermsCondition` text DEFAULT NULL,
  `TermsCondition2` text DEFAULT NULL,
  `TermsCondition3` text DEFAULT NULL,
  `TermsCondition4` text DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `ModifiedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wo_references`
--

CREATE TABLE `tbl_wo_references` (
  `id` int(11) NOT NULL,
  `WoId` int(11) NOT NULL,
  `Ref` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`id`, `Name`, `Photo`, `Status`) VALUES
(1, 'North', '', 1),
(2, 'East', '', 1),
(3, 'West', '', 1),
(4, 'South', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp_color`
--

CREATE TABLE `temp_color` (
  `id` bigint(20) NOT NULL,
  `ProdId` bigint(20) NOT NULL,
  `Color` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_wallet`
--

CREATE TABLE `temp_wallet` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `UserId2` int(11) NOT NULL,
  `Oid` int(11) NOT NULL,
  `Percetage` float(14,2) DEFAULT NULL,
  `Amount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(100) NOT NULL,
  `CreatedDate` date NOT NULL,
  `CreatedTime` varchar(100) NOT NULL,
  `ExpId` int(11) NOT NULL,
  `LeadId` int(11) NOT NULL,
  `ExeVisit` tinyint(1) NOT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `ExtraAmt` float(14,2) DEFAULT NULL,
  `ShopDaily` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `UserId2` int(11) NOT NULL,
  `Oid` int(11) NOT NULL,
  `Percetage` float(14,2) DEFAULT NULL,
  `Amount` float(14,2) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Status` varchar(100) NOT NULL,
  `CreatedDate` date NOT NULL,
  `CreatedTime` varchar(100) NOT NULL,
  `ExpId` int(11) NOT NULL,
  `LeadId` int(11) NOT NULL,
  `ExeVisit` tinyint(1) NOT NULL,
  `CustName` varchar(255) DEFAULT NULL,
  `ExtraAmt` float(14,2) DEFAULT NULL,
  `ShopDaily` tinyint(1) NOT NULL,
  `Attendance` tinyint(1) NOT NULL,
  `AdvId` int(11) NOT NULL,
  `devcomment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_name`
--
ALTER TABLE `attribute_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_details`
--
ALTER TABLE `cms_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_orders`
--
ALTER TABLE `confirm_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_image`
--
ALTER TABLE `crop_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cancel_reason`
--
ALTER TABLE `order_cancel_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_status` (`Status`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qsr_exit_interviews`
--
ALTER TABLE `qsr_exit_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipping_price`
--
ALTER TABLE `shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accessories_sell`
--
ALTER TABLE `tbl_accessories_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accessories_stock`
--
ALTER TABLE `tbl_accessories_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accessories_stock_invoice`
--
ALTER TABLE `tbl_accessories_stock_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_head`
--
ALTER TABLE `tbl_account_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ac_charges`
--
ALTER TABLE `tbl_ac_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advance_payment_details`
--
ALTER TABLE `tbl_advance_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advance_request`
--
ALTER TABLE `tbl_advance_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advance_salary`
--
ALTER TABLE `tbl_advance_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_allocated_fr_raw_prd`
--
ALTER TABLE `tbl_allocated_fr_raw_prd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_allocate_cat_ids`
--
ALTER TABLE `tbl_allocate_cat_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applied_code`
--
ALTER TABLE `tbl_applied_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_asset_category`
--
ALTER TABLE `tbl_asset_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assign_fr_to_zone`
--
ALTER TABLE `tbl_assign_fr_to_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CreatedDate` (`CreatedDate`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `AttRoll` (`AttRoll`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `tbl_attendance_request`
--
ALTER TABLE `tbl_attendance_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance_tasks`
--
ALTER TABLE `tbl_attendance_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_audit_category`
--
ALTER TABLE `tbl_audit_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_audit_questions`
--
ALTER TABLE `tbl_audit_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_balance_ved_expenses`
--
ALTER TABLE `tbl_balance_ved_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_details`
--
ALTER TABLE `tbl_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_detail_excel_data`
--
ALTER TABLE `tbl_bank_detail_excel_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bdm_checklist`
--
ALTER TABLE `tbl_bdm_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bdm_checklist_records`
--
ALTER TABLE `tbl_bdm_checklist_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_billing_machine_login`
--
ALTER TABLE `tbl_billing_machine_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_billsoft_discount`
--
ALTER TABLE `tbl_billsoft_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bill_expenses`
--
ALTER TABLE `tbl_bill_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_boolet_rally`
--
ALTER TABLE `tbl_boolet_rally`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bp_leads`
--
ALTER TABLE `tbl_bp_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_branch_expenses`
--
ALTER TABLE `tbl_branch_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cancel_items`
--
ALTER TABLE `tbl_cancel_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashback_amount`
--
ALTER TABLE `tbl_cashback_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_book`
--
ALTER TABLE `tbl_cash_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_handover`
--
ALTER TABLE `tbl_cash_handover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_uses`
--
ALTER TABLE `tbl_cash_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cms_details`
--
ALTER TABLE `tbl_cms_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_commision_note`
--
ALTER TABLE `tbl_commision_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_common_master`
--
ALTER TABLE `tbl_common_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_emails`
--
ALTER TABLE `tbl_company_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_policy`
--
ALTER TABLE `tbl_company_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_profile`
--
ALTER TABLE `tbl_company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_complete_task`
--
ALTER TABLE `tbl_complete_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_control_room`
--
ALTER TABLE `tbl_control_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`CouponId`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Indexes for table `tbl_coupon_categories`
--
ALTER TABLE `tbl_coupon_categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_coupon_code`
--
ALTER TABLE `tbl_coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon_products`
--
ALTER TABLE `tbl_coupon_products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_crop_image`
--
ALTER TABLE `tbl_crop_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_feedback`
--
ALTER TABLE `tbl_customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_invoice`
--
ALTER TABLE `tbl_customer_invoice`
  ADD PRIMARY KEY (`Unqid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `NetAmount` (`NetAmount`),
  ADD KEY `InvoiceDate` (`InvoiceDate`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `CustId` (`CustId`),
  ADD KEY `Unqid` (`Unqid`),
  ADD KEY `PayType` (`PayType`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`),
  ADD KEY `modified_time` (`modified_time`),
  ADD KEY `Roll` (`Roll`),
  ADD KEY `Status` (`Status`),
  ADD KEY `delete_flag` (`delete_flag`),
  ADD KEY `idx_customer_invoice_frid` (`FrId`),
  ADD KEY `idx_customer_invoice_invoicedate` (`InvoiceDate`),
  ADD KEY `idx_customer_invoice_status` (`Status`),
  ADD KEY `idx_customer_invoice_paytype` (`PayType`),
  ADD KEY `idx_customer_invoice_roll` (`Roll`),
  ADD KEY `idx_customer_invoice_composite` (`FrId`,`InvoiceDate`,`Status`);

--
-- Indexes for table `tbl_customer_invoice_2025`
--
ALTER TABLE `tbl_customer_invoice_2025`
  ADD PRIMARY KEY (`Unqid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `NetAmount` (`NetAmount`),
  ADD KEY `InvoiceDate` (`InvoiceDate`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `CustId` (`CustId`),
  ADD KEY `Unqid` (`Unqid`),
  ADD KEY `PayType` (`PayType`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`),
  ADD KEY `modified_time` (`modified_time`),
  ADD KEY `Roll` (`Roll`),
  ADD KEY `Status` (`Status`),
  ADD KEY `delete_flag` (`delete_flag`),
  ADD KEY `CellNo` (`CellNo`),
  ADD KEY `CreatedTime` (`CreatedTime`),
  ADD KEY `idx_customer_invoice_2025_frid` (`FrId`),
  ADD KEY `idx_customer_invoice_2025_invoicedate` (`InvoiceDate`),
  ADD KEY `idx_customer_invoice_2025_status` (`Status`),
  ADD KEY `idx_customer_invoice_2025_paytype` (`PayType`),
  ADD KEY `idx_customer_invoice_2025_roll` (`Roll`),
  ADD KEY `idx_customer_invoice_2025_composite` (`FrId`,`InvoiceDate`,`Status`);

--
-- Indexes for table `tbl_customer_invoice_details`
--
ALTER TABLE `tbl_customer_invoice_details`
  ADD PRIMARY KEY (`Unqid`),
  ADD KEY `CatId` (`CatId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `Total` (`Total`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `id` (`id`),
  ADD KEY `Price` (`Price`),
  ADD KEY `modified_time` (`modified_time`),
  ADD KEY `InvId` (`InvId`),
  ADD KEY `idx_customer_invoice_details_serverinvid` (`ServerInvId`),
  ADD KEY `idx_customer_invoice_details_prodid` (`ProdId`);

--
-- Indexes for table `tbl_customer_invoice_details_2025`
--
ALTER TABLE `tbl_customer_invoice_details_2025`
  ADD PRIMARY KEY (`Unqid`),
  ADD KEY `CatId` (`CatId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `Total` (`Total`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `id` (`id`),
  ADD KEY `Price` (`Price`),
  ADD KEY `modified_time` (`modified_time`),
  ADD KEY `InvId` (`InvId`),
  ADD KEY `MainProdId` (`MainProdId`),
  ADD KEY `Qty` (`Qty`),
  ADD KEY `CreatedDate` (`CreatedDate`),
  ADD KEY `idx_customer_invoice_details_2025_serverinvid` (`ServerInvId`),
  ADD KEY `idx_customer_invoice_details_2025_prodid` (`ProdId`),
  ADD KEY `idx_customer_invoice_details_2025_frid` (`FrId`);

--
-- Indexes for table `tbl_customer_invoice_details_temp`
--
ALTER TABLE `tbl_customer_invoice_details_temp`
  ADD PRIMARY KEY (`Unqid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `InvId` (`InvId`),
  ADD KEY `CatId` (`CatId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `Total` (`Total`),
  ADD KEY `FrId` (`FrId`);

--
-- Indexes for table `tbl_customer_invoice_temp`
--
ALTER TABLE `tbl_customer_invoice_temp`
  ADD PRIMARY KEY (`Unqid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `NetAmount` (`NetAmount`),
  ADD KEY `InvoiceDate` (`InvoiceDate`),
  ADD KEY `FrId` (`FrId`);

--
-- Indexes for table `tbl_customer_points`
--
ALTER TABLE `tbl_customer_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_queries`
--
ALTER TABLE `tbl_customer_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_query_feedback`
--
ALTER TABLE `tbl_customer_query_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_visits`
--
ALTER TABLE `tbl_customer_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_category`
--
ALTER TABLE `tbl_cust_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_category_2025`
--
ALTER TABLE `tbl_cust_category_2025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cust_category_2025_status` (`Status`);

--
-- Indexes for table `tbl_cust_general_ledger`
--
ALTER TABLE `tbl_cust_general_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_products`
--
ALTER TABLE `tbl_cust_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cust_products_code` (`code`),
  ADD KEY `idx_cust_products_status` (`Status`);

--
-- Indexes for table `tbl_cust_products2`
--
ALTER TABLE `tbl_cust_products2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProdType` (`ProdType`),
  ADD KEY `ProdType2` (`ProdType2`),
  ADD KEY `idx_cust_products2_catid` (`CatId`),
  ADD KEY `idx_cust_products2_status` (`Status`);

--
-- Indexes for table `tbl_cust_products2_temp`
--
ALTER TABLE `tbl_cust_products2_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProdType` (`ProdType`),
  ADD KEY `ProdType2` (`ProdType2`),
  ADD KEY `idx_cust_products2_catid` (`CatId`),
  ADD KEY `idx_cust_products2_status` (`Status`);

--
-- Indexes for table `tbl_cust_products_2025`
--
ALTER TABLE `tbl_cust_products_2025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `code` (`code`),
  ADD KEY `CreatedBy` (`CreatedBy`),
  ADD KEY `ProdType2` (`ProdType2`),
  ADD KEY `ProdType` (`ProdType`),
  ADD KEY `checkstatus` (`checkstatus`),
  ADD KEY `delete_flag` (`delete_flag`),
  ADD KEY `modified_time` (`modified_time`),
  ADD KEY `CatId` (`CatId`),
  ADD KEY `idx_cust_products_2025_prodid` (`ProdId`),
  ADD KEY `idx_cust_products_2025_createdby` (`CreatedBy`),
  ADD KEY `idx_cust_products_2025_checkstatus` (`checkstatus`),
  ADD KEY `idx_cust_products_2025_delete_flag` (`delete_flag`),
  ADD KEY `idx_cust_products_2025_composite` (`CreatedBy`,`checkstatus`,`delete_flag`);

--
-- Indexes for table `tbl_cust_product_images`
--
ALTER TABLE `tbl_cust_product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_product_specification`
--
ALTER TABLE `tbl_cust_product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_prod_stock`
--
ALTER TABLE `tbl_cust_prod_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_cust_prod_stock_2025`
--
ALTER TABLE `tbl_cust_prod_stock_2025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MainProdId` (`MainProdId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Qty` (`Qty`),
  ADD KEY `Qty2` (`Qty2`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `ProdType` (`ProdType`),
  ADD KEY `WastageInvId` (`WastageInvId`),
  ADD KEY `idx_cust_prod_stock_2025_frid` (`FrId`),
  ADD KEY `idx_cust_prod_stock_2025_prodid` (`ProdId`),
  ADD KEY `idx_cust_prod_stock_2025_status` (`Status`),
  ADD KEY `idx_cust_prod_stock_2025_prodtype` (`ProdType`),
  ADD KEY `idx_cust_prod_stock_2025_composite` (`FrId`,`ProdId`,`Status`,`ProdType`);

--
-- Indexes for table `tbl_cust_prod_stock_2025_backup`
--
ALTER TABLE `tbl_cust_prod_stock_2025_backup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_cust_prod_stock_2025_temp`
--
ALTER TABLE `tbl_cust_prod_stock_2025_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_cust_stock_inv_2025`
--
ALTER TABLE `tbl_cust_stock_inv_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_stock_ved_inv`
--
ALTER TABLE `tbl_cust_stock_ved_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_sub_category`
--
ALTER TABLE `tbl_cust_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_sub_category_2025`
--
ALTER TABLE `tbl_cust_sub_category_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cust_ved_prod_stock`
--
ALTER TABLE `tbl_cust_ved_prod_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_daily_locations`
--
ALTER TABLE `tbl_daily_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_daily_reports`
--
ALTER TABLE `tbl_daily_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivered_invoice`
--
ALTER TABLE `tbl_delivered_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_diapostion`
--
ALTER TABLE `tbl_diapostion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_documents`
--
ALTER TABLE `tbl_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dynamic_menu`
--
ALTER TABLE `tbl_dynamic_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emi`
--
ALTER TABLE `tbl_emi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emp_expense_prod_items`
--
ALTER TABLE `tbl_emp_expense_prod_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_emp_scheme`
--
ALTER TABLE `tbl_emp_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exe_double_cashback`
--
ALTER TABLE `tbl_exe_double_cashback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exe_shop_feedback`
--
ALTER TABLE `tbl_exe_shop_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses_category`
--
ALTER TABLE `tbl_expenses_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_request`
--
ALTER TABLE `tbl_expense_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ExpenseDate` (`ExpenseDate`),
  ADD KEY `AdminStatus` (`AdminStatus`),
  ADD KEY `ManagerStatus` (`ManagerStatus`),
  ADD KEY `UserId_2` (`UserId`),
  ADD KEY `ExpCatId` (`ExpCatId`),
  ADD KEY `ExpenseDate_2` (`ExpenseDate`),
  ADD KEY `Amount` (`Amount`),
  ADD KEY `AccountBy` (`AccountBy`),
  ADD KEY `AccountApproveDate` (`AccountApproveDate`);

--
-- Indexes for table `tbl_expense_request_items`
--
ALTER TABLE `tbl_expense_request_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fr_billsoft_discount`
--
ALTER TABLE `tbl_fr_billsoft_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fr_raw_counts`
--
ALTER TABLE `tbl_fr_raw_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fr_raw_stock`
--
ALTER TABLE `tbl_fr_raw_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fr_raw_stock_2025`
--
ALTER TABLE `tbl_fr_raw_stock_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fr_req_prod_stock`
--
ALTER TABLE `tbl_fr_req_prod_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `idx_fr_req_prod_stock_invid` (`InvId`),
  ADD KEY `idx_fr_req_prod_stock_prodid` (`ProdId`);

--
-- Indexes for table `tbl_fr_req_stock_inv`
--
ALTER TABLE `tbl_fr_req_stock_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fuel_checklist_images`
--
ALTER TABLE `tbl_fuel_checklist_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fuel_city`
--
ALTER TABLE `tbl_fuel_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fuel_state`
--
ALTER TABLE `tbl_fuel_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fuel_station_details`
--
ALTER TABLE `tbl_fuel_station_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_function_details`
--
ALTER TABLE `tbl_function_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_general_ledger`
--
ALTER TABLE `tbl_general_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SrNo` (`SrNo`),
  ADD KEY `Code` (`Code`(250)),
  ADD KEY `Code_2` (`Code`(250)),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `InvoiceNo` (`InvoiceNo`(250));

--
-- Indexes for table `tbl_godown_products`
--
ALTER TABLE `tbl_godown_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_godown_prod_category`
--
ALTER TABLE `tbl_godown_prod_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_godown_prod_sub_category`
--
ALTER TABLE `tbl_godown_prod_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_godown_raw_prod_inv`
--
ALTER TABLE `tbl_godown_raw_prod_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_godown_raw_prod_stock`
--
ALTER TABLE `tbl_godown_raw_prod_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_godown_raw_prod_stock_2025`
--
ALTER TABLE `tbl_godown_raw_prod_stock_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_helps_enquiry`
--
ALTER TABLE `tbl_helps_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_help_support_details`
--
ALTER TABLE `tbl_help_support_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image_gallery`
--
ALTER TABLE `tbl_image_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_insurance_clain`
--
ALTER TABLE `tbl_insurance_clain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_insurance_clain_details`
--
ALTER TABLE `tbl_insurance_clain_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_issues`
--
ALTER TABLE `tbl_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kot_data`
--
ALTER TABLE `tbl_kot_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kyc`
--
ALTER TABLE `tbl_kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lead_details`
--
ALTER TABLE `tbl_lead_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leave_request`
--
ALTER TABLE `tbl_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_locations`
--
ALTER TABLE `tbl_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_time`
--
ALTER TABLE `tbl_login_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_maha_photos`
--
ALTER TABLE `tbl_maha_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manager_checkpoint`
--
ALTER TABLE `tbl_manager_checkpoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manager_sell_percentage`
--
ALTER TABLE `tbl_manager_sell_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mh_menu`
--
ALTER TABLE `tbl_mh_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_money_range`
--
ALTER TABLE `tbl_money_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mrp_available_stock`
--
ALTER TABLE `tbl_mrp_available_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MainProdId` (`MainProdId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Qty` (`Qty`),
  ADD KEY `Qty2` (`Qty2`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `ProdType` (`ProdType`),
  ADD KEY `WastageInvId` (`WastageInvId`);

--
-- Indexes for table `tbl_mrp_available_stock_inv`
--
ALTER TABLE `tbl_mrp_available_stock_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nso_vendor_expenses`
--
ALTER TABLE `tbl_nso_vendor_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nso_vendor_expense_ledger`
--
ALTER TABLE `tbl_nso_vendor_expense_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SrNo` (`SrNo`),
  ADD KEY `Code` (`Code`(250)),
  ADD KEY `Code_2` (`Code`(250)),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `InvoiceNo` (`InvoiceNo`(250));

--
-- Indexes for table `tbl_offer_percentage`
--
ALTER TABLE `tbl_offer_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_option_billsoft`
--
ALTER TABLE `tbl_option_billsoft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_option_cp`
--
ALTER TABLE `tbl_option_cp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_franchise_id` (`franchise_id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_order_status` (`order_status`),
  ADD KEY `idx_payment_status` (`payment_status`),
  ADD KEY `idx_order_timestamp` (`order_timestamp`),
  ADD KEY `idx_orders_status_timestamp_fallback` (`order_status`,`order_timestamp`),
  ADD KEY `idx_orders_franchise_status_fallback` (`franchise_id`,`order_status`),
  ADD KEY `idx_orders_customer_timestamp_fallback` (`customer_id`,`order_timestamp`),
  ADD KEY `idx_orders_payment_status_fallback` (`payment_status`,`payment_gateway`);

--
-- Indexes for table `tbl_orders_2025`
--
ALTER TABLE `tbl_orders_2025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_order_id` (`order_id`),
  ADD KEY `idx_franchise_id` (`franchise_id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_orders_status_timestamp` (`order_status`,`order_timestamp`),
  ADD KEY `idx_orders_franchise_status` (`franchise_id`,`order_status`),
  ADD KEY `idx_orders_customer_timestamp` (`customer_id`,`order_timestamp`),
  ADD KEY `idx_orders_payment_status` (`payment_status`,`payment_gateway`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_order_items_product_fallback` (`product_id`,`order_id`);

--
-- Indexes for table `tbl_order_items_2025`
--
ALTER TABLE `tbl_order_items_2025`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_order_items_product` (`product_id`,`order_id`);

--
-- Indexes for table `tbl_other_feedback`
--
ALTER TABLE `tbl_other_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_title`
--
ALTER TABLE `tbl_package_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page_files`
--
ALTER TABLE `tbl_page_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paid_emi`
--
ALTER TABLE `tbl_paid_emi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_details`
--
ALTER TABLE `tbl_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_mode`
--
ALTER TABLE `tbl_payment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_points`
--
ALTER TABLE `tbl_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup_image`
--
ALTER TABLE `tbl_popup_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_po_references`
--
ALTER TABLE `tbl_po_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_prettycash_request`
--
ALTER TABLE `tbl_prettycash_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_price_range`
--
ALTER TABLE `tbl_price_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_products`
--
ALTER TABLE `tbl_production_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_production_raw_stock`
--
ALTER TABLE `tbl_production_raw_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_specification`
--
ALTER TABLE `tbl_product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_stocks`
--
ALTER TABLE `tbl_product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_stocks_prodid` (`ProdId`),
  ADD KEY `idx_product_stocks_stockdate` (`StockDate`),
  ADD KEY `idx_product_stocks_roll` (`Roll`),
  ADD KEY `idx_product_stocks_crdr` (`CrDr`),
  ADD KEY `idx_product_stocks_composite` (`ProdId`,`StockDate`,`Roll`,`CrDr`);

--
-- Indexes for table `tbl_profit_loss`
--
ALTER TABLE `tbl_profit_loss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_feedback`
--
ALTER TABLE `tbl_purchase_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_order_products`
--
ALTER TABLE `tbl_purchase_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_qtn_products`
--
ALTER TABLE `tbl_qtn_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quotation_order_products`
--
ALTER TABLE `tbl_quotation_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_production_products`
--
ALTER TABLE `tbl_raw_production_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_production_prod_make_qty`
--
ALTER TABLE `tbl_raw_production_prod_make_qty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_products`
--
ALTER TABLE `tbl_raw_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_prod_category`
--
ALTER TABLE `tbl_raw_prod_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_prod_make_qty`
--
ALTER TABLE `tbl_raw_prod_make_qty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_prod_make_qty_2025`
--
ALTER TABLE `tbl_raw_prod_make_qty_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_prod_sub_category`
--
ALTER TABLE `tbl_raw_prod_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_raw_stock`
--
ALTER TABLE `tbl_raw_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referral_details`
--
ALTER TABLE `tbl_referral_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_product_stock`
--
ALTER TABLE `tbl_request_product_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_product_stock_2025`
--
ALTER TABLE `tbl_request_product_stock_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_product_stock_items`
--
ALTER TABLE `tbl_request_product_stock_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_product_stock_items_2025`
--
ALTER TABLE `tbl_request_product_stock_items_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_resign_request`
--
ALTER TABLE `tbl_resign_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_resign_requests`
--
ALTER TABLE `tbl_resign_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return_prod_items`
--
ALTER TABLE `tbl_return_prod_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return_prod_stock`
--
ALTER TABLE `tbl_return_prod_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return_reason`
--
ALTER TABLE `tbl_return_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return_requests`
--
ALTER TABLE `tbl_return_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_save_aliance_mail_files`
--
ALTER TABLE `tbl_save_aliance_mail_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scheme`
--
ALTER TABLE `tbl_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scrap_stock`
--
ALTER TABLE `tbl_scrap_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sell`
--
ALTER TABLE `tbl_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sell_products`
--
ALTER TABLE `tbl_sell_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sell_retailer`
--
ALTER TABLE `tbl_sell_retailer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sell_retailer_items`
--
ALTER TABLE `tbl_sell_retailer_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_complaint`
--
ALTER TABLE `tbl_service_complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_complaint_details`
--
ALTER TABLE `tbl_service_complaint_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_fee`
--
ALTER TABLE `tbl_service_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_set_target`
--
ALTER TABLE `tbl_set_target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_sessions`
--
ALTER TABLE `tbl_shop_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_uid` (`session_uid`);

--
-- Indexes for table `tbl_show_popup_image`
--
ALTER TABLE `tbl_show_popup_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stocks`
--
ALTER TABLE `tbl_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stock_invoice`
--
ALTER TABLE `tbl_stock_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stud_docs`
--
ALTER TABLE `tbl_stud_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_stock`
--
ALTER TABLE `tbl_temp_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units_2025`
--
ALTER TABLE `tbl_units_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `Phone` (`Phone`),
  ADD KEY `Roll` (`Roll`),
  ADD KEY `idx_users_subzoneid` (`SubZoneId`),
  ADD KEY `idx_users_zoneid` (`ZoneId`),
  ADD KEY `idx_users_status` (`Status`),
  ADD KEY `idx_users_roll` (`Roll`),
  ADD KEY `idx_users_underfrid` (`UnderFrId`),
  ADD KEY `idx_users_composite` (`SubZoneId`,`ZoneId`,`Status`,`Roll`);

--
-- Indexes for table `tbl_users_bill`
--
ALTER TABLE `tbl_users_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopName` (`ShopName`),
  ADD KEY `id` (`id`),
  ADD KEY `Status` (`Status`),
  ADD KEY `ZoneId` (`ZoneId`),
  ADD KEY `SubZoneId` (`SubZoneId`),
  ADD KEY `idx_users_bill_zoneid` (`ZoneId`),
  ADD KEY `idx_users_bill_subzoneid` (`SubZoneId`),
  ADD KEY `idx_users_bill_status` (`Status`),
  ADD KEY `idx_users_bill_roll` (`Roll`),
  ADD KEY `idx_users_bill_composite` (`ZoneId`,`SubZoneId`,`Status`,`Roll`);

--
-- Indexes for table `tbl_user_files`
--
ALTER TABLE `tbl_user_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_files2`
--
ALTER TABLE `tbl_user_files2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_logs`
--
ALTER TABLE `tbl_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_use_raw_stock`
--
ALTER TABLE `tbl_use_raw_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ved_expense_items`
--
ALTER TABLE `tbl_ved_expense_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FrId` (`FrId`),
  ADD KEY `StockDate` (`StockDate`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tbl_vendor_expenses`
--
ALTER TABLE `tbl_vendor_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendor_expense_invoices`
--
ALTER TABLE `tbl_vendor_expense_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ExpenseDate` (`ExpenseDate`);

--
-- Indexes for table `tbl_vendor_expense_ledger`
--
ALTER TABLE `tbl_vendor_expense_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SrNo` (`SrNo`),
  ADD KEY `Code` (`Code`(250)),
  ADD KEY `Code_2` (`Code`(250)),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `InvoiceNo` (`InvoiceNo`(250));

--
-- Indexes for table `tbl_vendor_invoice`
--
ALTER TABLE `tbl_vendor_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendor_ledger`
--
ALTER TABLE `tbl_vendor_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SrNo` (`SrNo`),
  ADD KEY `Code` (`Code`(250)),
  ADD KEY `Code_2` (`Code`(250)),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `InvoiceNo` (`InvoiceNo`(250));

--
-- Indexes for table `tbl_vendor_stock_invoice`
--
ALTER TABLE `tbl_vendor_stock_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendor_stock_invoice_items`
--
ALTER TABLE `tbl_vendor_stock_invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video_gallery`
--
ALTER TABLE `tbl_video_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visit_details`
--
ALTER TABLE `tbl_visit_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastage_invoice`
--
ALTER TABLE `tbl_wastage_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_franchise` (`FrId`),
  ADD KEY `idx_user` (`UserId`);

--
-- Indexes for table `tbl_week_off_punch`
--
ALTER TABLE `tbl_week_off_punch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_date` (`user_id`,`punch_date`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_punch_date` (`punch_date`);

--
-- Indexes for table `tbl_withdraw_request`
--
ALTER TABLE `tbl_withdraw_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_work_order`
--
ALTER TABLE `tbl_work_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wo_references`
--
ALTER TABLE `tbl_wo_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zone_status` (`Status`);

--
-- Indexes for table `temp_color`
--
ALTER TABLE `temp_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_wallet`
--
ALTER TABLE `temp_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `Amount` (`Amount`),
  ADD KEY `CreatedDate` (`CreatedDate`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_name`
--
ALTER TABLE `attribute_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_details`
--
ALTER TABLE `cms_details`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `confirm_orders`
--
ALTER TABLE `confirm_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crop_image`
--
ALTER TABLE `crop_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_cancel_reason`
--
ALTER TABLE `order_cancel_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qsr_exit_interviews`
--
ALTER TABLE `qsr_exit_interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `related_products`
--
ALTER TABLE `related_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_price`
--
ALTER TABLE `shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_accessories_sell`
--
ALTER TABLE `tbl_accessories_sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_accessories_stock`
--
ALTER TABLE `tbl_accessories_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_accessories_stock_invoice`
--
ALTER TABLE `tbl_accessories_stock_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_account_head`
--
ALTER TABLE `tbl_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_ac_charges`
--
ALTER TABLE `tbl_ac_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_advance_payment_details`
--
ALTER TABLE `tbl_advance_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_advance_request`
--
ALTER TABLE `tbl_advance_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_advance_salary`
--
ALTER TABLE `tbl_advance_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_allocated_fr_raw_prd`
--
ALTER TABLE `tbl_allocated_fr_raw_prd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318508;

--
-- AUTO_INCREMENT for table `tbl_allocate_cat_ids`
--
ALTER TABLE `tbl_allocate_cat_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_applied_code`
--
ALTER TABLE `tbl_applied_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_asset_category`
--
ALTER TABLE `tbl_asset_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assign_fr_to_zone`
--
ALTER TABLE `tbl_assign_fr_to_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_attendance_request`
--
ALTER TABLE `tbl_attendance_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_attendance_tasks`
--
ALTER TABLE `tbl_attendance_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_audit_category`
--
ALTER TABLE `tbl_audit_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_audit_questions`
--
ALTER TABLE `tbl_audit_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_balance_ved_expenses`
--
ALTER TABLE `tbl_balance_ved_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_banks`
--
ALTER TABLE `tbl_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_bank_details`
--
ALTER TABLE `tbl_bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bank_detail_excel_data`
--
ALTER TABLE `tbl_bank_detail_excel_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bdm_checklist`
--
ALTER TABLE `tbl_bdm_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bdm_checklist_records`
--
ALTER TABLE `tbl_bdm_checklist_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_billing_machine_login`
--
ALTER TABLE `tbl_billing_machine_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_billsoft_discount`
--
ALTER TABLE `tbl_billsoft_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bill_expenses`
--
ALTER TABLE `tbl_bill_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_boolet_rally`
--
ALTER TABLE `tbl_boolet_rally`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bp_leads`
--
ALTER TABLE `tbl_bp_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_branch_expenses`
--
ALTER TABLE `tbl_branch_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cancel_items`
--
ALTER TABLE `tbl_cancel_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cashback_amount`
--
ALTER TABLE `tbl_cashback_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_book`
--
ALTER TABLE `tbl_cash_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_handover`
--
ALTER TABLE `tbl_cash_handover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_uses`
--
ALTER TABLE `tbl_cash_uses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_cms_details`
--
ALTER TABLE `tbl_cms_details`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_commision_note`
--
ALTER TABLE `tbl_commision_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_common_master`
--
ALTER TABLE `tbl_common_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_company_emails`
--
ALTER TABLE `tbl_company_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_company_policy`
--
ALTER TABLE `tbl_company_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_company_profile`
--
ALTER TABLE `tbl_company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_complete_task`
--
ALTER TABLE `tbl_complete_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_control_room`
--
ALTER TABLE `tbl_control_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  MODIFY `CouponId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_coupon_categories`
--
ALTER TABLE `tbl_coupon_categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_coupon_code`
--
ALTER TABLE `tbl_coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_coupon_products`
--
ALTER TABLE `tbl_coupon_products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_crop_image`
--
ALTER TABLE `tbl_crop_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_feedback`
--
ALTER TABLE `tbl_customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice`
--
ALTER TABLE `tbl_customer_invoice`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice_2025`
--
ALTER TABLE `tbl_customer_invoice_2025`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice_details`
--
ALTER TABLE `tbl_customer_invoice_details`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice_details_2025`
--
ALTER TABLE `tbl_customer_invoice_details_2025`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice_details_temp`
--
ALTER TABLE `tbl_customer_invoice_details_temp`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_invoice_temp`
--
ALTER TABLE `tbl_customer_invoice_temp`
  MODIFY `Unqid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_points`
--
ALTER TABLE `tbl_customer_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_queries`
--
ALTER TABLE `tbl_customer_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_query_feedback`
--
ALTER TABLE `tbl_customer_query_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_visits`
--
ALTER TABLE `tbl_customer_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_category`
--
ALTER TABLE `tbl_cust_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_category_2025`
--
ALTER TABLE `tbl_cust_category_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_cust_general_ledger`
--
ALTER TABLE `tbl_cust_general_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_products`
--
ALTER TABLE `tbl_cust_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_products2`
--
ALTER TABLE `tbl_cust_products2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_cust_products2_temp`
--
ALTER TABLE `tbl_cust_products2_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_products_2025`
--
ALTER TABLE `tbl_cust_products_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_cust_product_images`
--
ALTER TABLE `tbl_cust_product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_product_specification`
--
ALTER TABLE `tbl_cust_product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_prod_stock`
--
ALTER TABLE `tbl_cust_prod_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_prod_stock_2025`
--
ALTER TABLE `tbl_cust_prod_stock_2025`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_prod_stock_2025_backup`
--
ALTER TABLE `tbl_cust_prod_stock_2025_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_prod_stock_2025_temp`
--
ALTER TABLE `tbl_cust_prod_stock_2025_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_stock_inv_2025`
--
ALTER TABLE `tbl_cust_stock_inv_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_stock_ved_inv`
--
ALTER TABLE `tbl_cust_stock_ved_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_sub_category`
--
ALTER TABLE `tbl_cust_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_sub_category_2025`
--
ALTER TABLE `tbl_cust_sub_category_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cust_ved_prod_stock`
--
ALTER TABLE `tbl_cust_ved_prod_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_daily_locations`
--
ALTER TABLE `tbl_daily_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_daily_reports`
--
ALTER TABLE `tbl_daily_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_delivered_invoice`
--
ALTER TABLE `tbl_delivered_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_diapostion`
--
ALTER TABLE `tbl_diapostion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_documents`
--
ALTER TABLE `tbl_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dynamic_menu`
--
ALTER TABLE `tbl_dynamic_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_emi`
--
ALTER TABLE `tbl_emi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_emp_expense_prod_items`
--
ALTER TABLE `tbl_emp_expense_prod_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_emp_scheme`
--
ALTER TABLE `tbl_emp_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exe_double_cashback`
--
ALTER TABLE `tbl_exe_double_cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exe_shop_feedback`
--
ALTER TABLE `tbl_exe_shop_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses_category`
--
ALTER TABLE `tbl_expenses_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_expense_request`
--
ALTER TABLE `tbl_expense_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_request_items`
--
ALTER TABLE `tbl_expense_request_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_billsoft_discount`
--
ALTER TABLE `tbl_fr_billsoft_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_raw_counts`
--
ALTER TABLE `tbl_fr_raw_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_raw_stock`
--
ALTER TABLE `tbl_fr_raw_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_raw_stock_2025`
--
ALTER TABLE `tbl_fr_raw_stock_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_req_prod_stock`
--
ALTER TABLE `tbl_fr_req_prod_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fr_req_stock_inv`
--
ALTER TABLE `tbl_fr_req_stock_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fuel_checklist_images`
--
ALTER TABLE `tbl_fuel_checklist_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fuel_city`
--
ALTER TABLE `tbl_fuel_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fuel_state`
--
ALTER TABLE `tbl_fuel_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fuel_station_details`
--
ALTER TABLE `tbl_fuel_station_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_function_details`
--
ALTER TABLE `tbl_function_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_general_ledger`
--
ALTER TABLE `tbl_general_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_godown_products`
--
ALTER TABLE `tbl_godown_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_godown_prod_category`
--
ALTER TABLE `tbl_godown_prod_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_godown_prod_sub_category`
--
ALTER TABLE `tbl_godown_prod_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_godown_raw_prod_inv`
--
ALTER TABLE `tbl_godown_raw_prod_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_godown_raw_prod_stock`
--
ALTER TABLE `tbl_godown_raw_prod_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_godown_raw_prod_stock_2025`
--
ALTER TABLE `tbl_godown_raw_prod_stock_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_helps_enquiry`
--
ALTER TABLE `tbl_helps_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_help_support_details`
--
ALTER TABLE `tbl_help_support_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_image_gallery`
--
ALTER TABLE `tbl_image_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_insurance_clain`
--
ALTER TABLE `tbl_insurance_clain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_insurance_clain_details`
--
ALTER TABLE `tbl_insurance_clain_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_issues`
--
ALTER TABLE `tbl_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kot_data`
--
ALTER TABLE `tbl_kot_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kyc`
--
ALTER TABLE `tbl_kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lead_details`
--
ALTER TABLE `tbl_lead_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leave_request`
--
ALTER TABLE `tbl_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_locations`
--
ALTER TABLE `tbl_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login_time`
--
ALTER TABLE `tbl_login_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_maha_photos`
--
ALTER TABLE `tbl_maha_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_manager_checkpoint`
--
ALTER TABLE `tbl_manager_checkpoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_manager_sell_percentage`
--
ALTER TABLE `tbl_manager_sell_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mh_menu`
--
ALTER TABLE `tbl_mh_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_money_range`
--
ALTER TABLE `tbl_money_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mrp_available_stock`
--
ALTER TABLE `tbl_mrp_available_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mrp_available_stock_inv`
--
ALTER TABLE `tbl_mrp_available_stock_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_nso_vendor_expenses`
--
ALTER TABLE `tbl_nso_vendor_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_nso_vendor_expense_ledger`
--
ALTER TABLE `tbl_nso_vendor_expense_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer_percentage`
--
ALTER TABLE `tbl_offer_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tbl_option_billsoft`
--
ALTER TABLE `tbl_option_billsoft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tbl_option_cp`
--
ALTER TABLE `tbl_option_cp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_2025`
--
ALTER TABLE `tbl_orders_2025`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_items_2025`
--
ALTER TABLE `tbl_order_items_2025`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_other_feedback`
--
ALTER TABLE `tbl_other_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_package_title`
--
ALTER TABLE `tbl_package_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_page_files`
--
ALTER TABLE `tbl_page_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_paid_emi`
--
ALTER TABLE `tbl_paid_emi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_details`
--
ALTER TABLE `tbl_payment_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_mode`
--
ALTER TABLE `tbl_payment_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_points`
--
ALTER TABLE `tbl_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup_image`
--
ALTER TABLE `tbl_popup_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_po_references`
--
ALTER TABLE `tbl_po_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_prettycash_request`
--
ALTER TABLE `tbl_prettycash_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_price_range`
--
ALTER TABLE `tbl_price_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_production_products`
--
ALTER TABLE `tbl_production_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_production_raw_stock`
--
ALTER TABLE `tbl_production_raw_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_product_specification`
--
ALTER TABLE `tbl_product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_stocks`
--
ALTER TABLE `tbl_product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_profit_loss`
--
ALTER TABLE `tbl_profit_loss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_feedback`
--
ALTER TABLE `tbl_purchase_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_order_products`
--
ALTER TABLE `tbl_purchase_order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qtn_products`
--
ALTER TABLE `tbl_qtn_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation_order_products`
--
ALTER TABLE `tbl_quotation_order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_production_products`
--
ALTER TABLE `tbl_raw_production_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_production_prod_make_qty`
--
ALTER TABLE `tbl_raw_production_prod_make_qty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_products`
--
ALTER TABLE `tbl_raw_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_prod_category`
--
ALTER TABLE `tbl_raw_prod_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_prod_make_qty`
--
ALTER TABLE `tbl_raw_prod_make_qty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_prod_make_qty_2025`
--
ALTER TABLE `tbl_raw_prod_make_qty_2025`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_prod_sub_category`
--
ALTER TABLE `tbl_raw_prod_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_raw_stock`
--
ALTER TABLE `tbl_raw_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referral_details`
--
ALTER TABLE `tbl_referral_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_request_product_stock`
--
ALTER TABLE `tbl_request_product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_request_product_stock_2025`
--
ALTER TABLE `tbl_request_product_stock_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_request_product_stock_items`
--
ALTER TABLE `tbl_request_product_stock_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_request_product_stock_items_2025`
--
ALTER TABLE `tbl_request_product_stock_items_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_resign_request`
--
ALTER TABLE `tbl_resign_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_resign_requests`
--
ALTER TABLE `tbl_resign_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_prod_items`
--
ALTER TABLE `tbl_return_prod_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_prod_stock`
--
ALTER TABLE `tbl_return_prod_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_return_reason`
--
ALTER TABLE `tbl_return_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_return_requests`
--
ALTER TABLE `tbl_return_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_save_aliance_mail_files`
--
ALTER TABLE `tbl_save_aliance_mail_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_scheme`
--
ALTER TABLE `tbl_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_scrap_stock`
--
ALTER TABLE `tbl_scrap_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sell`
--
ALTER TABLE `tbl_sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_sell_products`
--
ALTER TABLE `tbl_sell_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sell_retailer`
--
ALTER TABLE `tbl_sell_retailer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sell_retailer_items`
--
ALTER TABLE `tbl_sell_retailer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_service_complaint`
--
ALTER TABLE `tbl_service_complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_service_complaint_details`
--
ALTER TABLE `tbl_service_complaint_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_service_fee`
--
ALTER TABLE `tbl_service_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_set_target`
--
ALTER TABLE `tbl_set_target`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shop_sessions`
--
ALTER TABLE `tbl_shop_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_show_popup_image`
--
ALTER TABLE `tbl_show_popup_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_stocks`
--
ALTER TABLE `tbl_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock_invoice`
--
ALTER TABLE `tbl_stock_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stud_docs`
--
ALTER TABLE `tbl_stud_docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_temp_stock`
--
ALTER TABLE `tbl_temp_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_units_2025`
--
ALTER TABLE `tbl_units_2025`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_users_bill`
--
ALTER TABLE `tbl_users_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_files`
--
ALTER TABLE `tbl_user_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_files2`
--
ALTER TABLE `tbl_user_files2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_logs`
--
ALTER TABLE `tbl_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_use_raw_stock`
--
ALTER TABLE `tbl_use_raw_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ved_expense_items`
--
ALTER TABLE `tbl_ved_expense_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_expenses`
--
ALTER TABLE `tbl_vendor_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_expense_invoices`
--
ALTER TABLE `tbl_vendor_expense_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_expense_ledger`
--
ALTER TABLE `tbl_vendor_expense_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_invoice`
--
ALTER TABLE `tbl_vendor_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_ledger`
--
ALTER TABLE `tbl_vendor_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_stock_invoice`
--
ALTER TABLE `tbl_vendor_stock_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_stock_invoice_items`
--
ALTER TABLE `tbl_vendor_stock_invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video_gallery`
--
ALTER TABLE `tbl_video_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_visit_details`
--
ALTER TABLE `tbl_visit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wastage_invoice`
--
ALTER TABLE `tbl_wastage_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_week_off_punch`
--
ALTER TABLE `tbl_week_off_punch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_withdraw_request`
--
ALTER TABLE `tbl_withdraw_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_work_order`
--
ALTER TABLE `tbl_work_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wo_references`
--
ALTER TABLE `tbl_wo_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_color`
--
ALTER TABLE `temp_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_wallet`
--
ALTER TABLE `temp_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD CONSTRAINT `tbl_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order_items_2025`
--
ALTER TABLE `tbl_order_items_2025`
  ADD CONSTRAINT `fk_order_items_order` FOREIGN KEY (`order_id`) REFERENCES `tbl_orders_2025` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
