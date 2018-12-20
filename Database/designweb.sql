-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 01:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `designweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `danhmuc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `chucnang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ordernum` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `danhmuc`, `parent_id`, `chucnang`, `ordernum`, `status`) VALUES
(3, 'Trang chủ', 0, '2', 1, 1),
(4, 'Trang chủ', 0, '2', 1, 1),
(5, 'Trang chủ', 0, 'Bài viết', 1, 1),
(6, 'Trang chủ', 0, 'Bài viết', 1, 1),
(7, 'Top Điểm Đến', 3, 'Bài viết', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giagoc` int(20) NOT NULL,
  `giakhuyenmai` int(11) NOT NULL,
  `slphong` int(11) NOT NULL,
  `songuoi` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `noidung` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `anh_thumb` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachsan`
--

INSERT INTO `khachsan` (`id`, `title`, `giagoc`, `giakhuyenmai`, `slphong`, `songuoi`, `status`, `noidung`, `anh`, `anh_thumb`, `view`, `ngaydang`, `giodang`, `tomtat`) VALUES
(36, 'Nm', 1111, 1, 1, 1, 1, '<p>ưffffffffffffffffffffffffffffffff</p>\r\n', 'upload/APC2.jpg', 'upload/resized/APC2_thumb.jpg', 0, '2018-12-19', '9:34 PM', '1111111111wwwwwwwwwwwwwwwwwwwwwwwwww'),
(37, 'Nm', 1111, 1, 1, 1, 1, '<p>ưffffffffffffffffffffffffffffffff</p>\r\n', 'upload/APC2.jpg', 'upload/resized/APC2_thumb.jpg', 0, '2018-12-19', '9:34 PM', '1111111111wwwwwwwwwwwwwwwwwwwwwwwwww');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(10) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `status` int(1) NOT NULL,
  `noidung` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nameu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `hoten`, `dienthoai`, `diachi`, `email`, `ngaydang`, `status`, `noidung`, `nameu`) VALUES
(1, 'Phạm Văn Tấn', '01664295063', 'Nam Định', 'phamtan365@gmail.com', '2018-12-18', 0, 'ghi đè', '0'),
(2, 'Phạm Phi', '037475567', 'Hà Nội', 'anhtan98abc@gmail.com', '2018-12-18', 0, 'ý kiến', '0'),
(3, 'ư', 'ư', 'ư', 'anhtan98abc@gmail.com', '2018-12-18', 0, 'ư', '123'),
(4, '222', '222', '222', 'anhtan98abc@gmail.com', '2018-12-18', 0, '2222', '123'),
(5, 'Phạm', '222222', 'Nam', 'phamtan365@gmail.comw', '2018-12-19', 0, 'tấn', 'username'),
(6, 'vu manh tuan', '0943465677', 'vu hoi vu thu thia', 'tuan@gmail.com', '0000-00-00', 0, 'trgfvb', 'username');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(1) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `quyen`, `hoten`, `sdt`, `email`, `diachi`) VALUES
(1, 'phamtan', '698d51a19d8a121ce581499d7b701668', 1, '', 0, '', ''),
(2, 'van', '1', 0, '', 0, '', ''),
(3, 'ww', '12', 0, '', 0, '', ''),
(4, 'ee', 'q', 0, '', 0, '', ''),
(5, '3', '3', 0, '', 0, '', ''),
(6, '1651060891', '1', 0, '', 0, '', ''),
(7, 'anhtan98abc@gmail.comư', 'ư', 0, '', 0, '', ''),
(8, 'anhtan98abc@gmail.comee', 'e', 0, '', 0, '', ''),
(9, 'anhtan98abc@gmail.comrrr', '1', 0, '', 0, '', ''),
(10, '16510608911', '12', 0, '', 0, '', ''),
(11, '165106089111', '1', 0, '', 0, '', ''),
(12, 'anhtan98abc@gmail.comqq', 'q', 0, '', 0, '', ''),
(13, '012856551', '1', 0, '', 0, '', ''),
(14, '16510608911111', '1', 0, '', 0, '', ''),
(15, '012856551111', '1', 0, '', 0, '', ''),
(16, 'anhtan98abc@gmail.com11111', '1', 0, '', 0, '', ''),
(17, 'anhtan98abc@gmail.comâ', 'a', 0, '', 0, '', ''),
(18, 'anhtan98abc@gmail.comq', 'q', 0, '', 0, '', ''),
(19, 'q', 'q', 0, '', 0, '', ''),
(20, 'anhtan98abc@gmail.comqư', 'ư', 0, '', 0, '', ''),
(21, 'anhtan98abc@gmail.comwww', 'ư', 0, '', 0, '', ''),
(22, 'www', 'ư', 0, '', 0, '', ''),
(23, 'phamtan', '1', 0, '1', 1, '1', '1'),
(24, 'phamtan1', '1', 0, '1', 1, '1111', '1'),
(30, 'phamtan111111', '1', 0, '1', 1, '1111111111', '1'),
(31, 'phamtan111', '1', 1, 'pham', 1, '111111@gmail.com', '1'),
(41, 'tttttt', '1111', 0, 'Phạm', 0, 'phamtan365@gmail.com', 'Nam Định');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
