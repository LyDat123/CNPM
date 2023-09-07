-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 13, 2023 lúc 11:00 AM


-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 107, 'PROID', 10),
(2, '0', 1, 101, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'SHOES', 0),
(11, 'BAGS', 0),
(17, 'WOMENS', 0),
(18, 'MENS', 0),
(19, 'SPORTSWEAR', 0),
(24, 'COUPLE', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'janobe', 'Palacios', '', '321', 'Coloso Street', 'brgy. 1', 'Kabankalan City', 'Negros Occidental', 'Philippines', '0000-00-00', 'Male', '+639956112920', '', 6111, 'kenjie@yahoo.com', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', 1, '2015-11-26'),
(2, 'Mark Anthony', 'Geasin', '', '1234', 'paglaom', 'dancalan', 'ilog', 'negros occ', 'philippines', '0000-00-00', '', '091023333234', '', 6111, 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg', 1, '2015-11-26'),
(3, 'Jano', 'Palacios', '', '12312', 's', 'brgy 1', 'kabankalan city', 'negross occidental', 'philippines', '0000-00-00', 'Male', '21312312312', '', 6111, 'jan', '53199fa57fdf5676d03d89fbdd26e69a927766fc', 'customer_image/Tropical-Beach-Wallpaper.jpg', 1, '2017-12-08'),
(4, 'Jamei', 'Laveste', '', '', '', '', 'kabankalan city', '', '', '0000-00-00', 'Female', '362656556', '', 0, 'jame', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'customer_image/1351064148bpguarhW.jpg', 1, '2018-01-23'),
(5, 'Jeanniebe', 'Palacios', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Female', '+639486457414', '', 0, 'bebe', 'd079a1c06803587ea09bff3f44a567e19169e7b5', '', 1, '2018-02-09'),
(6, 'Janry', 'Tan', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '0234234', '', 0, 'jan', '0271c5467994a9e88e01be5b7e1f5f43d0ab93d2', '', 1, '2018-04-01'),
(7, 'Jake', 'Cuenca', '', '', '', '', 'Kabankalan City', '', '', '0000-00-00', 'Male', '639305235027', '', 0, 'jake', '403ba16f713c8371eef121530a922824be29b68a', '', 1, '2018-04-16'),
(8, 'Jake', 'Tam', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '021312312', '', 0, 'j', '30e1fe53111f7e583c382596a32885fd27283970', '', 1, '2018-09-23'),
(9, 'Annie', 'Paredes', '', '', '', '', 's', '', '', '0000-00-00', 'Female', '12312312', '', 0, 'an', 'aa46142b604e671794a84129896d4dec508dec81', 'customer_image/shirt2.jpg', 1, '2019-08-20'),
(10, 'zoha', 'gul', '', '', '', '', 'khi', '', '', '0000-00-00', 'Male', '92111111', '', 0, 'zoha', 'eb9bd013134064c3e2f6d1d164d98a5d465dbc8f', '', 1, '2022-08-15'),
(11, 'zoha', 'gula', '', '', '', '', 'khi', '', '', '0000-00-00', 'Male', '48029384209', '', 0, 'zoha', 'bbdbf707cbe1520ae147fd95ffd9455a76e17784', 'customer_image/recommend3.jpg', 1, '2022-08-16'),
(12, 'john', 'elia', '', '', '', '', 'khi', '', '', '0000-00-00', 'Male', '633902830', '', 0, 'johnelia', '8f48819108e2a452a470cd699bd2942146276fd7', 'customer_image/iframe3.png', 1, '2022-08-17'),
(13, 'UsNPIF', 'NPIF', '', '', '', '', 'Tp.HCM', '', '', '0000-00-00', 'Male', '11122334455', '', 0, 'NPIF', '210da5fd964b4ced7cf5373c30ae920c283d01b2', '', 1, '2023-08-03'),
(14, 'Thanh', 'Tran', '', '', '', '', 'Tp.HCM', '', '', '0000-00-00', 'Male', '1234567890', '', 0, 'ThanhTr', '89ed4c93045edf3a40520b7109d547503293c40c', '', 1, '2023-08-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0),
(4, 201740, 1, 149, 95, 0),
(5, 201737, 1, 119, 96, 0),
(6, 201739, 1, 289, 96, 0),
(7, 201737, 1, 119, 97, 0),
(8, 201739, 1, 289, 97, 0),
(9, 201737, 2, 238, 98, 0),
(10, 201737, 1, 119, 99, 0),
(11, 2017105, 1, 200, 100, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201752, 'Áo polo nam ', '', 100, 169, 169, 18, 'uploaded_photos/ao plo.png', 'Available', 'Áo Polo ', '445454542'),
(201753, 'B? áo qu?n polo nam', '', 100, 250, 250, 0, 'uploaded_photos/full polo.png', 'Available', 'B? áo qu?n polo nam', '15141541'),
(201756, 'Do bo Polo nam ', '', 100, 250, 250, 18, 'uploaded_photos/full polo.png', 'Available', 'Do bo Polo nam ', '884847'),
(201757, 'Do bo nam hoa tiet Gucci', '', 100, 250, 250, 18, 'uploaded_photos/full gucci.png', 'Available', 'Do bo nam hoa tiet Gucci', '1441141'),
(201758, 'Do bo nam hoa tiet NY', '', 100, 250, 250, 18, 'uploaded_photos/full NY.png', 'Available', 'Do bo nam hoa tiet NY', '8488984'),
(201759, 'Do bo hoa tiet gau Panda cute', '', 100, 250, 250, 18, 'uploaded_photos/full panda.png', 'Available', 'Do bo hoa tiet gau Panda cute', '78498498'),
(201760, 'Do bo nam dai', '', 100, 270, 270, 18, 'uploaded_photos/full dai.png', 'Available', 'Do bo nam dai', '48949849'),
(201762, 'Ao so mi nam ', '', 2, 280, 280, 18, 'uploaded_photos/somi1.png', 'Available', 'Ao so mi nam ', '498498'),
(201763, 'Quan Baggy nam', '', 100, 250, 250, 18, 'uploaded_photos/baggy.png', 'Available', 'Quan Baggy nam', '1984522'),
(201764, 'Quan tay xanh ', '', 11, 300, 300, 18, 'uploaded_photos/quan tay1.png', 'Available', 'Quan tay xanh ', '9841'),
(201765, 'Ao so mi cap doi xanh reu', '', 100, 420, 420, 24, 'uploaded_photos/Somi doi 1.png', 'Available', 'Ao so mi cap doi xanh reu', '891498'),
(201766, 'Ao so mi cap doi trang sua', '', 100, 420, 420, 24, 'uploaded_photos/somi doi 2.png', 'Available', 'Ao so mi cap doi trang sua', '98415'),
(201767, 'Ao so mi cap doi nau', '', 100, 420, 420, 18, 'uploaded_photos/somi doi 3.png', 'Available', 'Ao so mi cap doi nau', '98716'),
(201769, 'Ao thun doi hoa tiet de thuong', '', 100, 300, 300, 24, 'uploaded_photos/ao doi 5.png', 'Available', 'Ao thun doi hoa tiet de thuong', '4894961165'),
(201770, 'Ao thun doi hoa tiet trai tim', '', 56, 300, 300, 24, 'uploaded_photos/ao doi 4.png', 'Available', 'Ao thun doi hoa tiet trai tim', '651516'),
(201771, 'Ao thun doi hoa tiet trai tim', '', 32, 300, 300, 24, 'uploaded_photos/AO THUN DOI.png', 'Available', 'Ao thun doi hoa tiet trai tim', '89484968496'),
(201772, 'Ao thun doi hoa tiet trai tim', '', 65, 300, 300, 24, 'uploaded_photos/AO THUN DOI1.png', 'Available', 'Ao thun doi hoa tiet trai tim', '8498496'),
(201773, 'Ao so mi doi Han Quoc', '', 10, 450, 450, 24, 'uploaded_photos/somi han quo.png', 'Available', 'Ao so mi doi Han Quoc', '586'),
(201774, 'Ao len doi', '', 32, 500, 500, 24, 'uploaded_photos/len doi.png', 'Available', 'Ao len doi ', '61855'),
(201775, 'Ao thun nu Han Quoc', '', 65, 150, 150, 17, 'uploaded_photos/ao nu 1.png', 'Available', 'Ao thun nu Han Quoc', '4658645'),
(201776, 'Ao thun doi gau dau', '', 58, 350, 350, 24, 'uploaded_photos/doi gau dau.png', 'Available', 'Ao thun doi gau dau', '98415'),
(201777, 'Ao thun nu', '', 21, 200, 200, 17, 'uploaded_photos/ao thun nu.png', 'Available', 'Ao thun nu', '96415615'),
(201778, 'Ao thun nu hong', '', 46, 160, 160, 17, 'uploaded_photos/ao hong.png', 'Available', 'Ao thun nu hong', '898496'),
(201779, 'Dam tay phong', '', 56, 320, 320, 17, 'uploaded_photos/DAM NU.png', 'Available', 'Dam tay phong', '9848496'),
(201780, 'Dam co bup be', '', 6, 360, 360, 17, 'uploaded_photos/dam bup be.png', 'Available', 'Dam co bup be', '685685'),
(201781, 'Dam nu co khoa keo', '', 42, 320, 320, 17, 'uploaded_photos/dam nu khoa keo.png', 'Available', 'Dam nu co khoa keo', '6484'),
(201782, 'Giay Canvas co cao', '', 12, 500, 500, 5, 'uploaded_photos/giay Canvas .png', 'Available', 'Giay Canvas co cao', '8498496'),
(201783, 'Giay phong cach Hongkong', '', 45, 551, 551, 5, 'uploaded_photos/giay hongkong.png', 'Available', 'Giay phong cach Hongkong', '8686'),
(201784, 'Giay de cao', '', 3, 620, 620, 5, 'uploaded_photos/Giay de cao.png', 'Available', 'Giay de cao', '566565'),
(201785, 'Giay the thao Unisex', '', 2, 600, 600, 5, 'uploaded_photos/giay the thao unisex.png', 'Available', 'Giay the thao Unisex', '656895'),
(201786, 'Giay the thao nam', '', 3, 720, 720, 5, 'uploaded_photos/giay the thao nam.png', 'Available', 'Giay the thao nam', '6685'),
(201787, 'Giay da Chelsea Boots', '', 54, 1500, 1500, 5, 'uploaded_photos/da chelsea boots.png', 'Available', 'Giay da Chelsea Boots', '9848'),
(201788, 'Tui deo cheo Unisex', '', 31, 250, 250, 11, 'uploaded_photos/tui deo cheo unisex.png', 'Available', 'Tui deo cheo Unisex', '15684'),
(201789, 'Tui da nang nu', '', 45, 510, 510, 11, 'uploaded_photos/tui da nang nu.png', 'Available', 'Tui da nang nu', '867543'),
(201790, 'Tui deo  cho sinh vien', '', 21, 250, 250, 11, 'uploaded_photos/tui sinh vien.png', 'Available', 'Tui deo  cho sinh vien', '89653'),
(201791, 'Tui canvas', '', 78, 300, 300, 11, 'uploaded_photos/tui canvas.png', 'Available', 'Tui canvas', '5684'),
(201792, 'Tui hoa tiet SaiGon', '', 4, 230, 230, 11, 'uploaded_photos/tui hoa tiet Saigon.png', 'Available', 'Tui hoa tiet SaiGon', '1234567'),
(201793, 'Tui deo cheo nam', '', 4, 409, 409, 11, 'uploaded_photos/tui deo cheo nam.png', 'Available', 'Tui deo cheo nam', '568535'),
(201794, 'Tui deo di hoc & di choi', '', 54, 320, 320, 11, 'uploaded_photos/tui di hoc di choi.png', 'Available', 'Tui deo di hoc & di choi', '85546'),
(201795, 'Balo chong nuoc', '', 21, 540, 540, 11, 'uploaded_photos/balo chong nuoc.png', 'Available', 'Balo chong nuoc', '789654578'),
(201796, 'Balo di hoc', '', 38, 350, 350, 11, 'uploaded_photos/balo di hoc.png', 'Available', 'Balo di hoc', '58888888'),
(201797, 'Set bo 3 mon tap the duc nam', '', 89, 360, 360, 19, 'uploaded_photos/set 3 mon tap the duc nam.png', 'Available', 'Set bo 3 mon tap the duc nam', '45789654'),
(201798, 'Set bo 5 mon tap the duc nam', '', 78, 560, 560, 19, 'uploaded_photos/set 5 mon tap the duc nam.png', 'Available', 'Set bo 5 mon tap the duc nam', '6586569'),
(201799, 'Ao tap Gym', '', 645, 160, 160, 19, 'uploaded_photos/ao tap gym.png', 'Available', 'Ao tap Gym', '848464816'),
(2017100, 'Bo tap Gym nu', '', 65, 150, 150, 19, 'uploaded_photos/bo tap gym nu.png', 'Available', 'Bo tap Gym nu', '0987654'),
(2017101, 'Bo tap Gym den ', '', 54, 200, 200, 19, 'uploaded_photos/do tap gym den.png', 'Available', 'Bo tap Gym den ', '45454'),
(2017102, 'Bra tap Gym', '', 54, 60, 60, 19, 'uploaded_photos/bra tap gym.png', 'Available', 'Bra tap Gym', '6564'),
(2017103, 'Do tap the duc ', '', 54, 120, 120, 19, 'uploaded_photos/do tap the duc.png', 'Available', 'Do tap the duc ', '984916'),
(2017104, 'Ao thun 3 lo nam', '', 12, 100, 100, 19, 'uploaded_photos/ao 3 lo nam.png', 'Available', 'Ao thun 3 lo nam', '65'),
(2017105, 'Do  tap Erobic', '', 4, 200, 200, 19, 'uploaded_photos/do tap erobic.png', 'Available', 'Do  tap Erobic', '4865865120'),
(2017106, 'Do the thao hut mo hoi', '', 46, 250, 250, 19, 'uploaded_photos/do the thao hut mo hoi.png', 'Available', 'Do the thao hut mo hoi', '43456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(16, 201752, 0, 169, 0, 0),
(17, 201753, 0, 250, 0, 0),
(20, 201756, 0, 250, 0, 0),
(21, 201757, 0, 250, 0, 0),
(22, 201758, 0, 250, 0, 0),
(23, 201759, 0, 250, 0, 0),
(24, 201760, 0, 270, 0, 0),
(26, 201762, 0, 280, 0, 0),
(27, 201763, 0, 250, 0, 0),
(28, 201764, 0, 300, 0, 0),
(29, 201765, 0, 420, 0, 0),
(30, 201766, 0, 420, 0, 0),
(31, 201767, 0, 420, 0, 0),
(33, 201769, 0, 300, 0, 0),
(34, 201770, 0, 300, 0, 0),
(35, 201771, 0, 300, 0, 0),
(36, 201772, 0, 300, 0, 0),
(37, 201773, 0, 450, 0, 0),
(38, 201774, 0, 500, 0, 0),
(39, 201775, 0, 150, 0, 0),
(40, 201776, 0, 350, 0, 0),
(41, 201777, 0, 200, 0, 0),
(42, 201778, 0, 160, 0, 0),
(43, 201779, 0, 320, 0, 0),
(44, 201780, 0, 360, 0, 0),
(45, 201781, 0, 320, 0, 0),
(46, 201782, 0, 500, 0, 0),
(47, 201783, 0, 551, 0, 0),
(48, 201784, 0, 620, 0, 0),
(49, 201785, 0, 600, 0, 0),
(50, 201786, 0, 720, 0, 0),
(51, 201787, 0, 1500, 0, 0),
(52, 201788, 0, 250, 0, 0),
(53, 201789, 0, 510, 0, 0),
(54, 201790, 0, 250, 0, 0),
(55, 201791, 0, 300, 0, 0),
(56, 201792, 0, 230, 0, 0),
(57, 201793, 0, 409, 0, 0),
(58, 201794, 0, 320, 0, 0),
(59, 201795, 0, 540, 0, 0),
(60, 201796, 0, 350, 0, 0),
(61, 201797, 0, 360, 0, 0),
(62, 201798, 0, 560, 0, 0),
(63, 201799, 0, 160, 0, 0),
(64, 2017100, 0, 150, 0, 0),
(65, 2017101, 0, 200, 0, 0),
(66, 2017102, 0, 60, 0, 0),
(67, 2017103, 0, 120, 0, 0),
(68, 2017104, 0, 100, 0, 0),
(69, 2017105, 0, 200, 0, 0),
(70, 2017106, 0, 250, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Kabankalan City', 'Brgy. 1', 50),
(2, 'Himamaylan City', 'Brgy. 1', 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(1, '2019-08-21 06:24:24', 9, 93, 0, 0, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0),
(3, '2019-08-21 06:27:09', 9, 94, 70, 269, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2019-08-21 00:00:00', 1, 0),
(4, '2022-08-15 06:13:51', 10, 95, 70, 219, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2022-08-16 00:00:00', 0, 0),
(5, '2022-08-16 01:51:55', 11, 96, 0, 408, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2022-08-16 00:00:00', 0, 0),
(7, '2022-08-17 12:19:59', 12, 97, 50, 408, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(9, '2023-08-03 07:43:22', 13, 98, 0, 238, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(10, '2023-08-12 03:57:30', 14, 99, 0, 119, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0),
(11, '2023-08-13 05:59:05', 14, 100, 70, 200, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(124, 'Brain deo', 'kenjie', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Staff', 'photos/COC-war-base-design.jpg'),
(126, 'NPIFAd', 'NPIFAd', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Administrator', 'photos/apple.jpg.png'),
(127, 'Nowdemy Manager', 'Manager', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Encoder', ''),
(128, 'Thanh', 'thanh@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Administrator', ''),
(129, 'Banana', 'Banana', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Administrator', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2019-08-21', '0'),
(3, 10, 201740, '2022-08-15', '0'),
(4, 12, 201742, '2022-08-17', '0'),
(5, 13, 201750, '2023-08-03', '0'),
(6, 13, 201742, '2023-08-03', '0'),
(7, 14, 201737, '2023-08-12', '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Chỉ mục cho bảng `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Chỉ mục cho bảng `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Chỉ mục cho bảng `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Chỉ mục cho bảng `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Chỉ mục cho bảng `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Chỉ mục cho bảng `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Chỉ mục cho bảng `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Chỉ mục cho bảng `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Chỉ mục cho bảng `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Chỉ mục cho bảng `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Chỉ mục cho bảng `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
