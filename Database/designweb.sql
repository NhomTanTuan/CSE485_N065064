-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 07:51 AM
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
(12, 'PHÒNG & GIÁ', 0, 'Khách sạn', 9, 1),
(17, 'TRANG CHỦ', 0, 'Trang chủ', 10, 1),
(18, 'LIÊN HỆ', 0, 'Liên hệ', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datphong`
--

CREATE TABLE `datphong` (
  `id` int(10) NOT NULL,
  `idlp` int(10) NOT NULL,
  `idks` int(10) NOT NULL,
  `ngaynhan` date NOT NULL,
  `ngaytra` date NOT NULL,
  `giodat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `madat` int(20) NOT NULL,
  `ngaydat` date NOT NULL,
  `thanhtoan` int(30) NOT NULL,
  `status` int(1) NOT NULL,
  `hoten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slphong` int(10) NOT NULL,
  `sotienthue` int(50) NOT NULL,
  `tongtien` int(50) NOT NULL,
  `sodem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datphong`
--

INSERT INTO `datphong` (`id`, `idlp`, `idks`, `ngaynhan`, `ngaytra`, `giodat`, `madat`, `ngaydat`, `thanhtoan`, `status`, `hoten`, `dienthoai`, `email`, `diachi`, `slphong`, `sotienthue`, `tongtien`, `sodem`) VALUES
(5, 4, 38, '2019-01-02', '2019-01-04', '8:48 PM', 4381, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 462400, 3182400, 2),
(6, 4, 38, '2019-01-03', '2019-01-04', '8:49 PM', 4386, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 2, 462400, 1822400, 1),
(8, 4, 38, '2019-01-11', '2019-01-15', '9:09 PM', 4388, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 924800, 6364800, 4),
(9, 4, 38, '2019-01-04', '2019-01-09', '9:10 PM', 4389, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 1156000, 7956000, 5),
(10, 4, 38, '2019-01-02', '2019-01-09', '9:16 PM', 43810, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Địnhhhhh', 1, 1618400, 11138400, 7),
(11, 4, 38, '2019-01-02', '2019-01-09', '9:20 PM', 43811, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 1618400, 11138400, 7),
(12, 4, 38, '2019-01-03', '2019-01-09', '11:21 PM', 43812, '2019-01-02', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 1387200, 9547200, 6),
(13, 4, 38, '2019-01-03', '2019-01-04', '5:26 PM', 43813, '2019-01-03', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 231200, 1591200, 1),
(14, 4, 38, '2019-01-04', '2019-01-05', '9:17 AM', 43814, '2019-01-04', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 231200, 1591200, 1),
(15, 4, 38, '2019-01-04', '2019-01-05', '10:40 AM', 43815, '2019-01-04', 0, 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định', 1, 231200, 1591200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `danhmuc` int(10) NOT NULL,
  `giagoc` int(20) NOT NULL,
  `giakhuyenmai` int(11) NOT NULL,
  `slphong` int(11) NOT NULL,
  `songuoi` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `thue` int(20) NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `anh_thumb` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `thanhpho` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tiennghi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachsan`
--

INSERT INTO `khachsan` (`id`, `title`, `danhmuc`, `giagoc`, `giakhuyenmai`, `slphong`, `songuoi`, `status`, `noidung`, `thue`, `anh`, `anh_thumb`, `view`, `ngaydang`, `giodang`, `tomtat`, `diachi`, `thanhpho`, `tiennghi`) VALUES
(36, 'My Moon Hotel Hanoi', 12, 2000000, 1999999, 10, 2, 1, '<div id=\"summary\" style=\"font-size: 14px; color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, \">\r\n<p>My Moon Hotel Hanoi cung cấp các phòng nghỉ sang trọng cách Hoàng Thành Thăng Long chỉ 300 m. Khách sạn có nhà hàng và quán bar, đồng thời cung cấp miễn phí WiFi cũng như bãi đỗ xe công cộng ngay tại khuôn viên.</p>\r\n\r\n<p>Mỗi phòng đều có khu vực tiếp khách, TV truyền hình vệ tinh màn hình phẳng và két an toàn cá nhân. Một số phòng có ban công. Minibar và ấm đun nước điện cũng được cung cấp cho du khách sử dụng. Phòng tắm riêng được trang bị bồn tắm hoặc vòi hoa sen, máy sấy tóc, đồ vệ sinh cá nhân miễn phí, áo choàng tắm và dép.</p>\r\n\r\n<p>Nhân viên ở quầy lễ tân 24 h có thể hỗ trợ du khách với các dịch vụ như nhận phòng/trả phòng nhanh, lưu giữ hành lý và sắp xếp việc đi lại. Dịch vụ vận chuyển, đưa đón sân bay và cho thuê xe hơi được cung cấp theo yêu cầu.</p>\r\n\r\n<p>Đạp xe là hoạt động phổ biến tại khu vực này. Nhà Thờ Lớn và Ô Quan Chưởng đều cách chỗ nghỉ 800 m. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách đó 20 km.&nbsp;</p>\r\n\r\n<p>Quận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích&nbsp;mua sắm,&nbsp;ẩm thực đường phố&nbsp;và&nbsp;không gian.</p>\r\n</div>\r\n\r\n<p>Đây là khu vực ở Hà Nội mà khách yêu thích, theo các đánh giá độc lập.</p>\r\n\r\n<p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm&nbsp;<strong>9,1</strong>&nbsp;cho kỳ nghỉ dành cho 2 người.</p>\r\n\r\n<p>Khách sạn này cũng được đánh giá là đáng giá tiền nhất ở Hà Nội! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.</p>\r\n\r\n<p>Chúng tôi sử dụng ngôn ngữ của bạn!</p>\r\n', 0, 'upload/APC2.jpg', 'upload/resized/APC2_thumb.jpg', 13, '2018-12-19', '9:34 PM', 'My Moon Hotel Hanoi cung cấp các phòng nghỉ sang trọng cách Hoàng Thành Thăng Long chỉ 300 m.', '27 Ninh Bằng, Cao Sơn', 'Hà Nội', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Dọn phòng hàng ngày/broom,Giặt là/tshirt,Chấp nhận thú cưng/cat,Cửa hàng lưu niệm/gift,Sân tennis/baseball-ball,Massage/mask,Khu vui chơi cho trẻ em/child'),
(37, 'Hanoi Cristina Hotel & Travel', 12, 3000000, 2999999, 20, 2, 1, '<div id=\"summary\" style=\"font-size: 14px; color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, \">\r\n<div id=\"summary\" style=\"font-size: 14px; color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, \">\r\n<p>Tọa lạc tại một vị trí thuận tiện ở quận Hoàn Kiếm của thành phố Hà Nội, Hanoi Cristina Hotel &amp; Travel cung cấp các phòng với máy điều hòa, quầy bar và Wi-Fi miễn phí. Chỗ nghỉ này nằm trong bán kính khoảng 500 m từ Ô Quan Chưởng và 600 m từ Nhà hát Múa rối Nước Thăng Long. Bàn đặt tour có thể cung cấp cho quý khách các thông tin về khu vực.</p>\r\n\r\n<p>Tại khách sạn, mỗi phòng đều có tủ quần áo, tủ lạnh và TV màn hình phẳng. Với phòng tắm riêng đi kèm chậu rửa vệ sinh và đồ vệ sinh cá nhân miễn phí, một số phòng tại Hanoi Cristina Hotel &amp; Travel còn có tầm nhìn ra dòng sông.</p>\r\n\r\n<p>Chỗ nghỉ phục vụ bữa sáng kiểu lục địa và tự chọn hàng ngày. Nhà hàng trong khuôn viên chuyên về các món ăn Argentina đồng thời cung cấp các thực đơn món ăn chay không trứng sữa, món ăn Kosher (dành cho người theo đạo Do Thái) và các món không chứa sữa.</p>\r\n\r\n<p>Đi xe đạp là một trong những hoạt động mà quý khách có thể tham gia gần Hanoi Cristina Hotel &amp; Travel.</p>\r\n\r\n<p>Nhân viên lễ tân thông thạo cả tiếng Anh và tiếng Việt.</p>\r\n\r\n<p>Đền Ngọc Sơn nằm trong bán kính 600 m từ khách sạn trong khi Chợ Đồng Xuân cách đó chưa đến 1 km. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách Hanoi Cristina Hotel &amp; Travel 25 km.&nbsp;</p>\r\n\r\n<p>Quận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích&nbsp;mua sắm,&nbsp;ẩm thực đường phố&nbsp;và&nbsp;không gian.</p>\r\n</div>\r\n\r\n<p>Đây là khu vực ở Hà Nội mà khách yêu thích, theo các đánh giá độc lập.</p>\r\n\r\n<p>Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Hà Nội! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.</p>\r\n\r\n<p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm&nbsp;<strong>9,4</strong>&nbsp;cho kỳ nghỉ dành cho 2 người.</p>\r\n\r\n<p>Khách sạn này cũng được đánh giá là đáng giá tiền nhất ở Hà Nội! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.</p>\r\n\r\n<p>Chúng tôi sử dụng ngôn ngữ của bạn!</p>\r\n</div>\r\n', 0, 'upload/anh-girl-xinh-9x-kute-16.jpg', 'upload/resized/anh-girl-xinh-9x-kute-16_thumb.jpg', 42, '2018-12-19', '9:34 PM', 'Tọa lạc tại một vị trí thuận tiện ở quận Hoàn Kiếm của thành phố Hà Nội, Hanoi Cristina Hotel & Travel cung cấp các phòng với máy điều hòa, quầy bar và Wi-Fi miễn phí.', 'Số 39, Võ Văn Kiệt, Phước Mỹ, Sơn Trà', 'Hà Nội', ',Bãi đỗ xe/car,Giặt là/tshirt,Chấp nhận thú cưng/cat,Quán cafe/coffee,Hồ bơi ngoài trời/swimmer,Phòng họp/users'),
(38, 'Hanoi Golden Holiday Hotel', 12, 2000000, 1999999, 10, 2, 1, '<div id=\"summary\" style=\"font-size: 14px; color: rgb(56, 56, 56); font-family: BlinkMacSystemFont, -apple-system, \">\r\n<p>Nằm ở quận Hoàn Kiếm, thành phố Hà Nội, cách Chợ Đồng Xuân 300 m, Hanoi Golden Holiday Hotel có tầm nhìn ra thành phố. Chỗ nghỉ cung cấp miễn phí Wi-Fi và lớp học nấu ăn.</p>\r\n\r\n<p>Mỗi phòng tại khách sạn này đều được trang bị máy điều hòa, TV truyền hình cáp màn hình phẳng, tủ lạnh mini và ấm đun nước điện. Phòng tắm riêng đi kèm bồn tắm/vòi sen và máy sấy tóc. Áo choàng tắm, dép đi trong phòng và đồ vệ sinh cá nhân miễn phí cũng được cung cấp để mang lại sự thoải mái cho khách. Trong phòng còn có khăn tắm và bộ khăn trải giường.</p>\r\n\r\n<p>Hanoi Golden Holiday Hotel cách Ô Quan Chưởng khoảng 500 m và Đền Ngọc Sơn 800 m. Sân bay gần nhất là Sân bay Quốc tế Nội Bài, cách khách sạn 20 km. Dịch vụ đưa đón sân bay được cung cấp kèm phụ phí.</p>\r\n\r\n<p>Lễ tân 24 giờ của khách sạn có thể trợ giúp khách với dịch vụ thu đổi ngoại tệ, chỗ để hành lý và thu xếp chương trình tour. Trong khuôn viên có máy rút tiền tự động. Bếp chung và sảnh khách chung cũng nằm trong số các tiện nghi tại Hanoi Golden Holiday Hotel. Khách sạn còn cung cấp dịch vụ thuê xe đạp.</p>\r\n\r\n<p>Trong khuôn viên khách sạn có nhà hàng. Dịch vụ ăn uống tại phòng và thực đơn theo chế độ ăn đặc biệt cũng được đáp ứng theo yêu cầu.&nbsp;</p>\r\n\r\n<p>Quận Hoàn Kiếm là lựa chọn tuyệt vời cho du khách thích&nbsp;mua sắm,&nbsp;ẩm thực đường phố&nbsp;và&nbsp;không gian.</p>\r\n</div>\r\n\r\n<p>Đây là khu vực ở Hà Nội mà khách yêu thích, theo các đánh giá độc lập.</p>\r\n\r\n<p>Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Hà Nội! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.</p>\r\n\r\n<p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm&nbsp;<strong>9,6</strong>&nbsp;cho kỳ nghỉ dành cho 2 người.</p>\r\n\r\n<p>Khách sạn này cũng được đánh giá là đáng giá tiền nhất ở Hà Nội! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.</p>\r\n', 17, 'upload/hanoi.jpg', 'upload/resized/hanoi_thumb.jpg', 707, '2018-12-27', '11:20 PM', 'Nằm ở quận Hoàn Kiếm, thành phố Hà Nội, cách Chợ Đồng Xuân 300 m, Hanoi Golden Holiday Hotel có tầm nhìn ra thành phố. Chỗ nghỉ cung cấp miễn phí Wi-Fi và lớp học nấu ăn.\r\n', 'Số 6, Hoa Bằng, Yên Hòa', 'Hà Nội', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Lễ tân 24/24/user-tag,Truyền hình cáp/Vệ tinh/tv,Giữ hành lý/luggage-cart,Dọn phòng hàng ngày/broom,Bãi đỗ xe/car,Nhà hàng/utensils,Cho thuê xe máy/motorcycle,Giặt là/tshirt,Chấp nhận thú cưng/cat,Cửa hàng lưu niệm/gift,Karaoke/microphone-alt,Quán cafe/coffee,Sân tennis/baseball-ball,Massage/mask,Hồ bơi ngoài trời/swimmer,Bida/bowling-ball,Thu đổi ngoại tệ/coins,Khu vui chơi cho trẻ em/child,Phòng họp/users'),
(39, 'Khách Sạn White Sand Boutique ', 12, 1850000, 1287000, 20, 2, 1, '<p style=\"text-align:justify\"><strong>Khách sạn White Sand Boutique&nbsp;</strong>tọa lạc tại số 89-91 Võ Văn kiệt, TP Đà Nẵng, nằm giữa trục đường nối thẳng từ Cầu Rồng đến Bãi biển Mỹ Khê - được mệnh danh là một trong 6 bãi biển đẹp nhất hành tinh .</p>\r\n\r\n<p style=\"text-align:justify\">Với vị trí cách trung tâm thành phố chỉ 2km, từ&nbsp;<strong>Khách sạn White Sand Boutique</strong>, du khách chỉ mất khoảng 10 phút đi xe để tham quan các địa điểm thu hút khách hàng đầu của Đà Nẵng như bãi biển Mỹ khê, bán đảo Sơn Trà, Chợ Hàn, Cầu quay sông Hàn,… Ngoài ra, khách sạn còn nằm trên con đường di sản văn hóa thế giới: Phố cổ Hội An, Thánh địa Mỹ Sơn, Cố đô Huế.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Đến với&nbsp;<strong>Khách sạn White Sand Boutique</strong>, bạn sẽ được đắm mình trong một không gian nghỉ dưỡng sang trọng và tinh tế từ dịch vụ đến cơ sở vật chất, với 15 tầng và 60 phòng nghỉ, được thiết kế theo phong cách Á Đông thanh lịch, độc đáo cùng trang thiết bị nội, ngoại thất sang trọng. Bên cạnh đó là hệ thống nhà hàng White Sand chuyên phục vụ các món ẩm thực theo phong cách Âu - Á và những món ăn truyền thống Việt Nam. Phòng hội nghị hiện đại có sức chứa lên đến 150 khách. Khu vui chơi giải trí ,chăm sóc sức khoẻ, Massage – Sauna, Bar- Café và Hồ bơi thông minh, Internet, wifi..cùng các dịch vụ tiện ích khác. Tại&nbsp;<strong>Khách sạn White Sand Boutique</strong>, chúng tôi hân hạnh mang lại cho bạn 1 không gian nghỉ dưỡng hoàn toàn khác biệt.</p>\r\n\r\n<p style=\"text-align:justify\">Tại&nbsp;<strong>White Sand Boutique</strong>, bạn sẽ được phục vụ bởi đội ngũ nhân viên lành nghề, năng động, được đào tạo chuyên nghiệp, phong cách phục vụ chu đáo và lịch sự nhằm mang đến sự hài lòng cao nhất. Đến với chúng tôi, quý khách sẽ luôn luôn cảm thấy ấm áp và thoải mái như đang ở chính ngôi nhà thân yêu của mình.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Khách sạn White Sand Boutique</strong>&nbsp;hứa hẹn sẽ là điểm dừng chân lý tưởng cho các khách du lịch trong và ngoài nước khi đến với Đà Nẵng – thành phố biển xinh đẹp và thân thiện.</p>\r\n', 15, 'upload/da-nang.jpg', 'upload/resized/da-nang_thumb.jpg', 1, '2019-01-03', '4:27 PM', 'Khách sạn White Sand Boutique tọa lạc trên đường Ngô Quyền nằm giữa sông Hàn thơ mộng và bãi biển đẹp nhất miền Trung. Khách Sạn kết hợp hài hoà giữa nền văn hóa Tây Bắc với sự hiện đại của châu ', '89 -91 Võ Văn kiệt , P. Phước Mỹ, Sơn Trà', 'Đà Nẵng', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Lễ tân 24/24/user-tag,Truyền hình cáp/Vệ tinh/tv,Giữ hành lý/luggage-cart,Nhà hàng/utensils,Cho thuê xe máy/motorcycle,Cửa hàng lưu niệm/gift,Karaoke/microphone-alt,Quán cafe/coffee,Sân tennis/baseball-ball,Massage/mask,Hồ bơi ngoài trời/swimmer,Bida/bowling-ball,Thu đổi ngoại tệ/coins,Khu vui chơi cho trẻ em/child,Phòng họp/users'),
(40, 'Khách Sạn Ngọc Phát ', 12, 957000, 737000, 30, 2, 1, '<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Ngọc Phát</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;- tọa lạc ở vị trí đẹp của Trung tâm Thành phố Đà Lạt, hưởng được rất nhiều lợi thế trong vui chơi gia đình, lãng mạn, ngắm cảnh trung tâm của Đà Lạt. Khách sạn không quá xa trung tâm thành phố: chỉ cách 0.3 Km, và thông thường chỉ mất khoảng 33 phút để đến sân bay. Với vị trí thuận lợi, khách sạn dễ dàng tiếp cận những điểm tham quan du lịch nổi tiếng của thành phố.</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Ngọc Phát</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;với 68 phòng ngủ được thiết kế sang trọng, hiện đại và với hơn một nửa số phòng có hướng nhìn ra Hồ Xuân Hương và một số ít phòng còn lại nhìn sang công viên với đồi thông – một loài cây đặc trưng của Đà Lạt.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Bên cạnh đó,&nbsp;khách sạn Ngọc Phát&nbsp;chỉ cách khu trung tâm mua sắm, quảng trường chính của thành phố vài bước chân đi bộ. Chắc chắn trong tương lai không xa,&nbsp;Ngọc Phát&nbsp;sẽ là một địa chỉ quen thuộc của du khách khi đến với thành phố Đà Lạt ngàn hoa.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Thiết bị và dịch vụ cung cấp bởi&nbsp;<strong>Khách sạn Ngọc Phát</strong>&nbsp;bảo đảm kì nghỉ dễ chịu cho du khách. Khách sạn trang bị một loạt thiết bị trực tuyến để nhằm thỏa mãn cả vị khách khó tính nhất.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.&nbsp;<strong>Khách sạn Ngọc Phát</strong>&nbsp;là nơi bạn có thể dừng chân ở một khách sạn chất lượng tại Đà Lạt.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Đến với&nbsp;<strong>Khách sạn Ngọc Phát</strong>&nbsp;&nbsp;du khách vừa có thể nghỉ dưỡng trong khung cảnh nên thơ, vừa tận hưởng được những tiện nghi hiện đại mà khách sạn cung cấp cùng với đội ngũ nhân viên thân thiện, nhiệt tình và chuyên nghiệp.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khi đặt phòng&nbsp;<strong>Khách sạn Ngọc Phát</strong>, bạn sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu. Là nơi nghỉ ngơi chất lượng trong vui chơi gia đình, lãng mạn, ngắm cảnh của Đà Lạt,&nbsp;<strong>Khách sạn Ngọc Phát</strong>&nbsp;nổi tiếng phục vụ cho cả khách nghỉ dưỡng và các doanh nhân.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Bạn cũng có thể tới thăm vườn hoa đà lạt, thung lũng tình yêu, đồi mộng mơ…&nbsp;<span style=\"font-family:open sans,sans-serif !important; font-size:13px !important\">hàng năm thu hút rất nhiều du khách đặt tour du lịch tới đây tham quan.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Bạn có thể đặt phòng giá rẻ nhất tại&nbsp;</span><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Ngọc Phát</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;cũng như các khách sạn trên khắp các tỉnh thành thuộc hệ thống Mytour.vn để giúp bạn lên kế hoạch cho một chuyến du lịch “Dễ dàng”, “Hài lòng” và “Tiết kiệm”.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Nhanh tay đặt khách sạn giá rẻ nhất trên Mytour và tận hưởng kì nghỉ thú vị của bạn ngay từ bây giờ nhé!</span></p>\r\n', 17, 'upload/dalat.jpg', 'upload/resized/dalat_thumb.jpg', 0, '2019-01-03', '4:33 PM', 'Khách Sạn Ngọc Phát Đà Lạt có nhân viên thân thiện, nhiệt tình. Với 68 phòng ngủ được thiết kế sang trọng, hiện đại và với hơn một nửa số phòng có hướng nhìn ra Hồ Xuân Hương', 'Số 10 Hồ Tùng Mậu, phường 3', 'Đà Lạt', ',Thang máy/sort-amount-up,Dọn phòng hàng ngày/broom,Nhà hàng/utensils,Giặt là/tshirt,Chấp nhận thú cưng/cat,Cửa hàng lưu niệm/gift,Quán cafe/coffee,Sân tennis/baseball-ball,Massage/mask,Thu đổi ngoại tệ/coins'),
(41, 'Lotus Central Hotel Saigon ', 12, 1300000, 999999, 25, 2, 1, '<p dir=\"ltr\">Nổi bật với thiết kế không gian sang trọng, ấm cúng nhưng không kém phần lãng mạn, mang nét văn hóa và vẻ đẹp Việt giữa lòng Sài Gòn, Lotus Central Hotel còn gây bất ngờ với du khách gần xa khi nội thất sử dụng đều được nhập khẩu 100% từ Nhật Bản.</p>\r\n\r\n<p dir=\"ltr\">Xu hướng nội thất Nhật Bản được cho là sự kết hợp giữa 2 xu hướng nội thất hiện đại và Scandinavia, giúp không gian trở nên ấm áp và thoải mái hơn. Điều đó gây nên một sự tương đồng với ý tưởng của&nbsp;<strong>Lotus Central</strong>&nbsp;muốn thể hiện.</p>\r\n\r\n<p dir=\"ltr\">Lấy ý tưởng chủ đạo từ hoa sen – Lotus, loài hoa mang đậm hồn Việt, 102 phòng nghỉ sang trọng và cao cấp tại<strong>&nbsp;Lotus Central Hotel</strong>, gây thích thú bởi không gian kiến trúc cổ điển phá cách tạo nên nét thanh nhã, tinh tế khó rời mắt. Không gian kiến trúc đan xen giữa hiện đại và cổ điển, hệ thống phòng lưu trú chuyên nghiệp, được chia làm 4 loại để khách hàng dễ dàng lựa chọn theo nhu cầu sử dụng, kết hợp linh hoạt cùng hệ thống nội thất được nhập khẩu 100% từ Nhật Bản giúp du khách trải nghiệm những phút giây nghỉ dưỡng vừa hiện đại, tiện nghi lại thoải mái, thư giãn như ở căn nhà của chính mình.</p>\r\n', 17, 'upload/ho-chi-minh.jpg', 'upload/resized/ho-chi-minh_thumb.jpg', 0, '2019-01-03', '4:36 PM', 'Nổi bật với thiết kế không gian sang trọng, ấm cúng nhưng không kém phần lãng mạn, mang nét văn hóa và vẻ đẹp Việt giữa lòng Sài Gòn, Lotus Central Hotel còn gây bất ngờ với du khách gần xa khi nội thất sử ', '102 - 104 - 106 Le Thi Hong Gam, Quận 1', 'Hồ Chí Minh', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Lễ tân 24/24/user-tag,Truyền hình cáp/Vệ tinh/tv,Giữ hành lý/luggage-cart,Dọn phòng hàng ngày/broom,Bãi đỗ xe/car,Nhà hàng/utensils,Cho thuê xe máy/motorcycle,Giặt là/tshirt,Cửa hàng lưu niệm/gift,Karaoke/microphone-alt,Quán cafe/coffee,Massage/mask,Hồ bơi ngoài trời/swimmer,Thu đổi ngoại tệ/coins,Khu vui chơi cho trẻ em/child'),
(42, 'Khách Sạn Sun City Nha Trang ', 12, 800000, 522000, 10, 2, 1, '<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Sun City Nha Trang</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">nằm trên vịnh Nha Trang, một trong những vịnh biển đẹp nhất thế giới. Khách sạn chỉ cách biển 100 m (khoảng 2 phút đi bộ) và cách sân bay Cam Ranh 35 km.</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Sun City Nha Trang</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;được xây vào năm 2012 theo tiêu chuẩn 3&nbsp;sao quốc tế.&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">Với phong cách phục vụ chuyên nghiệp và sự thân thiện của nhân viên,&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu.</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Sun City Nha Trang</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;cao 12 tầng với 37 phòng được trang bị đầy đủ nội thất,&nbsp;trong đó có khoảng 8 phòng Standard diện tích khoảng 20 m2 không cửa sổ và cảnh quan, 22 phòng Superior diện tích khoảng 22 m2, 6 phòng Deluxe diện tích khoảng 28 m2 đều có cửa sổ tuy nhiên tầm nhìn biển sẽ bị hạn chế. Khi đặt phòng&nbsp;<strong>khách sạn&nbsp;Sun City&nbsp;Nha Trang</strong><strong>,</strong>du khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây.</span></p>\r\n\r\n<p style=\"text-align:justify\"><em><span style=\"font-family:arial,sans-serif; font-size:10pt\">Từ khách sạn, khách du lịch sẽ được thoả sức đắm chìm trong những cảnh đẹp</span></em>&nbsp;<span style=\"font-family:arial,sans-serif; font-size:10pt\">của Khánh Hòa như bãi biển Cà Ná, bãi biển Nha Trang, chợ đêm,<span style=\"font-family:open sans,sans-serif !important; font-size:13px !important\">&nbsp;</span>tháp Trầm Hương, công viên nước Phù Đổng… Quý khách có thể tự thiết kế riêng cho mình một lịch trình tham quan, nghỉ dưỡng hoặc đặt tour du lịch khám phá các địa danh nổi tiếng tại quầy khách sạn để có được chuyến đi đáng nhớ nhất.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Quý khách có thể đặt phòng giá rẻ nhất tại&nbsp;<strong>khách sạn&nbsp;Sun City</strong></span><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;Nha Trang</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;cũng như các khách sạn trên khắp các tỉnh thành thuộc hệ thống Mytour.vn của chúng tôi để giúp khách hàng lên kế hoạch cho một chuyến du lịch “Dễ dàng”, “Hài lòng” và “Tiết kiệm”.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Nhanh tay đặt khách sạn giá rẻ nhất trên Mytour và tận hưởng kì nghỉ thú vị của quý khách ngay từ bây giờ nhé!</span></p>\r\n', 15, 'upload/nha-trang.jpg', 'upload/resized/nha-trang_thumb.jpg', 1, '2019-01-03', '4:40 PM', 'Khách Sạn Sun City Nha Trang nằm trên vịnh Nha Trang, một trong những vịnh biển đẹp nhất thế giới. Với phong cách phục vụ chuyên nghiệp, du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc ', '18 Tôn Đản, phường Lộc Thọ', 'Nha Trang', ',Wifi miễn phí/wifi,Lễ tân 24/24/user-tag,Giữ hành lý/luggage-cart,Bãi đỗ xe/car,Cho thuê xe máy/motorcycle,Giặt là/tshirt,Cửa hàng lưu niệm/gift'),
(43, 'Sài Gòn Suối Nhum Resort ', 12, 1200000, 955000, 10, 2, 1, '<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Sài Gòn Suối Nhum Resort</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;là một trong những khu nghỉ dưỡng đẳng cấp bậc nhất tại Phan Thiết,&nbsp;Sài Gòn Suối Nhum Resort&nbsp;được nhiều du khách lựa chọn bởi vị trí lý tưởng và tiện nghi hiện đại, thoải mái. Khu nghỉ dưỡng nằm cách trung tâm phố Hồ Chí Minh 195km về hướng Đông, cách trung tâm thành phố Phan Thiết 23km và cách hải đăng Kê Gà 6 km; được thiết kế và xây dựng trên diện tích hơn 2 hecta ở khu vực Hàm Thuận Nam với quy mô hơn 150 phòng đạt tiêu chuẩn 3 sao. Hầu hết các phòng đều có hướng nhìn ra biển, diện tích rộng rãi và thoải mái.</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Sài Gòn Suối Nhum Resort</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;nơi có chất lượng tuyệt vời và dịch vụ chu đáo. Từ đây, khách có thể dễ dàng tiếp cận được nét đẹp sống động của thành phố ở mọi góc cạnh. Với những điểm du lịch chính của thành phố như Hải đăng Kê Gà khá gần, khách tham quan khi đến khách sạn đều rất hài lòng với vị trí này của khách sạn.</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Sài Gòn Suối Nhum Resort</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;có 150 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, như tivi LCD/Plasma, bàn, nước đóng chai miễn phí, bồn tắm tạo sóng, áo choàng tắm. bồn tắm nóng, bãi biển riêng, sân tennis, bể bơi (trẻ em), vườn của khách sạn là nơi lý tưởng để thư giãn và đổi gió sau một ngày bận rộn. Với vị trí lý tưởng và cơ sở vật chất thích hợp, Saigon Suoi Nhum Resort đạt được tiêu chuẩn ở mọi khía cạnh. Mytour sẽ tư vấn đặt phòng phù hợp với nhu cầu của bạn</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Với việc mang lại dịch vụ cao cấp cho khách và một loạt những tiện nghi hiện đại,&nbsp;<strong>Sài Gòn Suối Nhum Resort</strong>&nbsp;cam kết sẽ đem đến cho bạn một kì nghỉ thoải mái dễ chịu nhất có thể. Vì sự thoải mái và tiện nghi của khách, khách sạn trang bị đầy đủ quán bar cạnh bể bơi, dịch vụ làm đẹp, quán cà phê, cho thuê xe đạp, dịch vụ trông trẻ.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Tại&nbsp;<strong>Sài Gòn Suối Nhum Resort</strong>&nbsp;&nbsp;bạn có thể đặt tour đi tham quan Đồi Cát, tham quan các di tích lịch sử, suối Tiên huyền diệu, suối Hồng, đồi Cát Bay, hòn Lao, gành đá, làng Chài và Bàu Trắng … là những điểm tham quan thu hút hàng nghìn người mỗi năm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Quý khách có thể đặt phòng&nbsp;</span><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Sài Gòn Suối Nhum Resort&nbsp;</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">cũng như các khách sạn trên khắp các tỉnh thành thuộc hệ thống Mytour.vn của chúng tôi để giúp khách hàng lên kế hoạch cho một chuyến du lịch “Dễ dàng”, “Hài lòng” và “Tiết kiệm”.</span></p>\r\n\r\n<div>&nbsp;</div>\r\n', 17, 'upload/phan-thiet.jpg', 'upload/resized/phan-thiet_thumb.jpg', 0, '2019-01-03', '4:43 PM', 'Sài Gòn Suối Nhum Resort Phan Thiết nằm trên khu bờ biển với những nét độc đáo hiếm nơi nào có được, thiết bị hiện đại, phòng rộng rãi, thoáng mát và sạch sẽ. Nhân viên được đào tạo chuyên nghiệp và tận ', 'Thôn Thuận Thành , Thuận Quý,Hàm Thuận Nam', 'Phan Thiết', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Giữ hành lý/luggage-cart,Dọn phòng hàng ngày/broom,Cho thuê xe máy/motorcycle,Giặt là/tshirt,Karaoke/microphone-alt,Quán cafe/coffee,Hồ bơi ngoài trời/swimmer'),
(44, 'Khách Sạn Thiên Hải Sơn ', 12, 1011000, 988000, 10, 2, 1, '<p style=\"text-align:justify\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">Khách sạn Thiên Hải Sơn</span></strong><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;nằm trong khu vực rộng trên 3 ha, bãi biển dài 200 m có khuôn viên cây xanh thoáng mát, rộng rãi nằm trong khu vực Bà Kèo, thị trấn Dương Đông, Phú Quốc. Khách sạn cách sân bay 15 phút đi bằng xe du lịch và cách cảng An Thới 30 phút đi xe du lịch hoặc xe buýt. Khách sạn Thiên Hải Sơn là điểm đến lý tưởng cho quý khách hoà mình cùng thiên nhiên và chiêm ngưỡng những phong cảnh tuyệt vời mà tạo hoá đã ban tặng cho Phú Quốc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Được xây vào năm 2005 và vừa tu sửa lại năm 2013,&nbsp;<strong>khách sạn Thiên Hải Sơn</strong>&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">gồm 97 phòng, biệt thư và bungalow được trang bị những tiện nghi hiện đại nhất. Với lối thiết kế các phòng đều có ban công riêng nhìn ra biển để bạn có thể ngắm nhìn vẻ đẹp thiên nhiên sinh thái trong xanh, lắng nghe tiếng sóng biển rì rào vỗ từng đợt với những bọt nước trắng xóa. Không chỉ vậy bạn có thể ngâm mình vào làn nước xanh trong của bơi rộng lớn giúp du khách có những phút giây thư giãn tuyệt vời.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Tất cả các phòng đều được thiết kế trang nhã, đầy đủ tiện nghi như máy điều hòa, tivi, wifi, internet, điện thoại quốc tế, bàn làm việc…</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;Với sự hỗ trợ của nhân viên Mytour, du khách sẽ có cơ hội đặt phòng giá rẻ nhất và tận hưởng kỳ nghỉ thú vị của mình thật thoải mái.</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Tại đây bạn có thể thưởng thức nhiều món ăn đặc sản của Phú Quốc, tham gia các chương trình khám phá đại dương với môn lặn để tận mắt chứng kiến những vẻ đẹp thiên nhiên kỳ diệu.<strong>&nbsp;Khách sạn Thiên Hải Sơn</strong>&nbsp;thích hợp cho cả nghỉ dưỡng gia đình hay khách đoàn hội họp, khách sạn còn có hồ bơi rộng, sân tennis trong khuôn viên, nhà hàng sức chứa lớn cho khách đoàn và bar bên cạnh bãi biển.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Với vị trí thuận lợi, du khách có thể tự thiết kế riêng cho mình một lịch trình tham quan, nghỉ dưỡng hoặc đặt tour du lịch khám phá các địa danh nổi tiếng tại quầy khách sạn để có được chuyến đi đáng nhớ nhất.&nbsp;Quý khách có thể ghé thăm các địa điểm du lịch gần với khách sạn như&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:10pt\">bãi biển Phú Quốc, Dinh Cậu, suối Tranh…</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,sans-serif; font-size:10pt\">Đến với Mytour.vn, quý khách sẽ có cơ hội đặt khách sạn giá rẻ nhất cùng với nhiều chương trình khuyến mại hấp dẫn chỉ dành riêng cho khách hàng của Mytour.</span></p>\r\n', 17, 'upload/phu-quoc.jpg', 'upload/resized/phu-quoc_thumb.jpg', 3, '2019-01-03', '4:46 PM', 'Khách Sạn Thiên Hải Sơn Phú Quốc có phong cách phục vụ chu đáo, nhiệt tình chắc chắn sẽ làm quý khách hài lòng và mang đến cảm giác ấm cúng. Trang thiết bị hiện đại và được bài trí sang trọng, hòa nhã.', '68 Trần Hưng Đạo, Thị Trấn Dương Đông', 'Phú Quốc', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Lễ tân 24/24/user-tag,Truyền hình cáp/Vệ tinh/tv,Cho thuê xe máy/motorcycle,Karaoke/microphone-alt,Quán cafe/coffee,Sân tennis/baseball-ball,Hồ bơi ngoài trời/swimmer,Bida/bowling-ball,Thu đổi ngoại tệ/coins,Khu vui chơi cho trẻ em/child,Phòng họp/users'),
(45, 'Paradise Beach Resort ', 12, 1167000, 898000, 10, 2, 1, '<p>&nbsp;<span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\"><strong>Paradise Beach Resort</strong></span></span><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">&nbsp;nằm ở số 1 Thùy Vân Phường Nguyễn An Ninh, Tp. Vũng Tàu với diện tích 220ha là khu du lịch bên bờ biển được thiết kể mở ra vườn để du khách tận hưởng khung cảnh bên ngoài. Đến với Paradise Beach Resort bạn như lạc bước vào một thiên đường thiên nhiên với một màu xanh ngút ngàn đầy cuốn hút và kỳ bí. Bạn sẽ vô cùng thích thú và thanh thản dạo bước trên những thảm cỏ non xanh mướt cùng những bãi cát dài thoai thoải bên những con sóng vỗ bờ…. Một bãi tắm thật đẹp, sạch sẽ trải dài 2km đường biển cho bạn tha hồ đắm mình, vui đùa cùng sóng nước. Khu nhà rông như đưa bạn đến với miền đất lạ của núi rừng thật hoang sơ, bình yên.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">Nét nổi bật nữa của khu resort này chính là kiến trúc đẹp mắt: mô phỏng theo cấu trúc nhà sàn của người Tây Nguyên, được xây dựng từng căn riêng biệt nối nhau bằng những lối đi trải nhẹ trên thảm cỏ. Diện tích và số lượng phòng của mỗi bungalow được thiết kế khác nhau, đáp ứng nhu cầu đa dạng của các nhóm, đoàn thể và gia đình khi lựa chọn trải qua kỳ nghỉ lý tưởng tại đây.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\"><em>Paradise Beach Resort</em></span></span><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">&nbsp;vừa đưa vào hoạt động bãi tắm cao cấp mang tên “Hòn ngọc Đông Hải”. Bãi tắm này nằm trong tách biệt hẳn với khu vực bên ngoài, có chiều dài khoảng 200m bờ biển.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">Toàn khu có diện tích 2,5ha, gồm các hạng mục như hồ bơi nước ngọt rộng 1.200m2; nhà hàng; khu thể thao nước như jestky, ca nô; dù lá; thảm cỏ; vườn đá…được trang trí mang phong cách dân dã như thúng, thuyền chài, quang gánh…</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">Sau khi đi vào hoạt động, Hòn Ngọc Đông Hải đã thu hút được khá đông khách nước ngoài đến từ các nước Nga, Hàn Quốc, các chuyên gia nước ngoài làm việc tại các khu công nghiệp, dầu khí trên địa bàn tỉnh…</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\"><em>Paradise Beach Resort</em></span></span><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">&nbsp;như một thiên đường với bãi tắm thơ mộng, sạch đẹp, cùng với những thú vui giải trí phong phú. Câu lạc bộ biển Marina với những sinh hoạt thể thao như: thuyền buồm, thuyền máy … nhà hàng với các món ăn miền biển. Paradise Beach Resort có sân golf bờ biển đầu tiên ở Việt Nam với quy mô 27 lỗ.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,serif\"><span style=\"font-family:open sans,sans-serif !important; font-size:small\">Bên cạnh đó, khi đặt phòng Paradise Beach Resort, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Paradise Beach Resort luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Vũng Tàu.</span></span></p>\r\n', 17, 'upload/vung-tau.jpg', 'upload/resized/vung-tau_thumb.jpg', 2, '2019-01-03', '4:53 PM', 'Paradise Beach Resort Vũng Tàu được nhiều du khách biết đến và lựa chọn bởi trang thiết bị tiện nghi, hiện đại, đội ngũ nhân viên nhiệt tình, chuyên nghiệp và các chương trình ưu đãi đặc biệt cho mọi du khách.', '1 Thùy Vân, Phường Nguyễn An Ninh, Vũng Tàu, Bà Rịa', 'Vũng Tàu', ',Wifi miễn phí/wifi,Thang máy/sort-amount-up,Lễ tân 24/24/user-tag,Truyền hình cáp/Vệ tinh/tv,Dọn phòng hàng ngày/broom,Bãi đỗ xe/car,Nhà hàng/utensils,Cửa hàng lưu niệm/gift,Massage/mask,Hồ bơi ngoài trời/swimmer,Bida/bowling-ball,Thu đổi ngoại tệ/coins,Khu vui chơi cho trẻ em/child,Phòng họp/users');

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
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `id` int(10) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `anh` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_thumb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dientich` int(10) NOT NULL,
  `viewphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giuongdon` int(2) NOT NULL,
  `giuongdoi` int(2) NOT NULL,
  `songuoi` int(3) NOT NULL,
  `tuychon` text COLLATE utf8_unicode_ci NOT NULL,
  `giagoc` int(20) NOT NULL,
  `giakm` int(20) NOT NULL,
  `ngaydang` date NOT NULL,
  `giodang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idks` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`id`, `title`, `anh`, `anh_thumb`, `dientich`, `viewphong`, `giuongdon`, `giuongdoi`, `songuoi`, `tuychon`, `giagoc`, `giakm`, `ngaydang`, `giodang`, `idks`, `status`) VALUES
(4, 'Deluxe Twin', 'upload/stunning-winter-scenery-18720-19199-hd-wallpapers.jpg', 'upload/resized/stunning-winter-scenery-18720-19199-hd-wallpapers_thumb.jpg', 32, 'Hướng biển', 2, 0, 2, ',Miễn phí bữa ăn sáng-utensils,1 vé buffer miễn phí-utensils', 1600000, 1360000, '2018-12-31', '7:41 PM', 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topdiemden`
--

CREATE TABLE `topdiemden` (
  `id` int(10) NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  `ordernum` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topdiemden`
--

INSERT INTO `topdiemden` (`id`, `anh`, `diachi`, `noidung`, `status`, `ordernum`) VALUES
(9, 'upload/hanoi.jpg', 'Hà Nội', '<p>Thủ đô&nbsp;<strong>Hà Nội</strong>&nbsp;- trung tâm chính trị, kinh tế, văn hoá của đất nước. Trải qua bao biến động và thách thức, Hà Nội đang không ngừng phát triển và khẳng định vị thế là một trong những trung tâm du lịch lớn nhất cả nước. Khí hậu Hà Nội mang đặc điểm nhiệt đới gió mùa ẩm, mỗi năm có đủ bốn mùa xuân, hạ, thu, đông. Đặc biệt, vẻ đẹp của mùa thu Hà Nội với mùi thơm nồng nàn của hoa sữa hay màu xanh của những mẹt cốm làng Vòng… đã trở thành cảm hứng sáng tác của biết bao văn nghệ sỹ.</p>\r\n\r\n<p>Từ lâu, Hà Nội trở thành điểm đến thu hút du khách quốc tế lớn nhất cả nước bởi vẻ đẹp cổ kính, trầm mặc, thanh lịch. Hà Nội có tài nguyên du lịch tự nhiên và nhân văn phong phú, Hà Nội có hệ thống hồ đẹp, tạo nên giá trị cảnh quan rất riêng của Hà Nội: như Hồ Tây, hồ Hoàn Kiếm, hồ Quan Sơn, Suối Hai, đầm Vân Trì…đặc biệt Khu di tích Hoàng Thành Thăng Long, lễ Hội Gióng ở đền Phù Đổng và đền Sóc, Ca trù được UNESCO công nhận là di sản văn hóa thế giới, ngoài ra, hệ thống các văn bia tiến sĩ thời Lê Mạc tại Văn Miếu Quốc Tử Giám được UNESCO công nhận là di sản tư liệu thế giới&nbsp; thuộc chương trình ký ức thế giới của UNESCO.</p>\r\n', 1, 10),
(13, 'upload/da-nang.jpg', 'Đà Nẵng', '<p>Đà Nẵng, một trong 20 thành phố sạch nhất thế giới, là điểm sáng không thể bỏ qua nếu bạn muốn khám phá vùng Nam Trung Bộ nước ta. Đà Nẵng, ở đó có sắc hoa tươi bốn mùa nở rộ, có sương mây lảng vảng bồng bềnh, có những cơn gió lạnh êm đềm tản mát từng làn hơi thở dịu êm. Tại nơi đó còn có những món ngon khó tả, ăn là ghiền, ngửi là nghiện, những món ăn đặc sản chắc chắn bạn không thể bỏ qua.</p>\r\n\r\n<p>Các điểm tham quan du lịch nổi tiếng ở Đà Nẵng có khu du lịch Bà Nà, có bãi biển Mỹ Khê, còn có những thắng cảnh mê hồn như đèo Hải Vân, rừng nguyên sinh bán đảo Sơn Trà và Ngũ Hành Sơn. Đặc biệt, Đà Nẵng được bao quanh bởi 3 di sản văn hóa thế giới là Huế, Hội An và Mỹ Sơn. Và cũng đừng bỏ qua Lễ hội Pháo hoa hàng năm của thành phố đặc biệt này bạn nhé. Hãy đến nơi đây, trải nghiệm thành phố này bên trong những khu nghỉ dưỡng, khách sạn trên cả tuyệt vời.</p>\r\n', 1, 9),
(14, 'upload/dalat.jpg', 'Đà Lạt', '<p><span style=\"font-family:open sans,sans-serif\">Đà Lạt là vùng đất từ lâu được biết đến với cái tên “thành phố ngàn hoa”, với khí hậu mát mẻ quanh năm đây sẽ là nơi tuyệt vời để du lịch nghỉ dưỡng cùng gia đình và bạn bè, tránh khỏi cái oi bức nóng nực của thành phố đầy khói bụi. Đà Lạt với hàng loạt danh lam thắng cảnh đã trở thành những điểm du lịch nổi tiếng không thể bỏ qua trong những lần đến nơi đây như: Chợ Đà Lạt, Hồ Xuân Hương, Hồ Tuyền Lâm, &nbsp;Đỉnh Langbiang, Thiền viện Trúc Lâm, Nhà ga Đà Lạt, Nhà thờ Con Gà,....</span></p>\r\n', 1, 8),
(15, 'upload/ho-chi-minh.jpg', 'Hồ Chí Minh', '<p>Thành phố Hồ Chí Minh - hay vẫn thường được gọi với cái tên thân thương: Sài Gòn - cùng với Hà Nội là trung tâm kinh tế, văn hóa trọng điểm của cả nước và cũng là điểm du lịch hàng đầu ở nước ta. Đến với Sài Gòn – TP.HCM hơn 300 năm tuổi, bạn sẽ thấy những nhà cao tầng thi nhau vươn cao dưới bầu trời đầy nắng, những khu vui chơi giải trí, trung tâm mua sắm sầm uất, nhưng cũng không thiếu những biệt thự cổ kính, những ngôi chợ truyền thống hàng trăm năm tuổi.</p>\r\n\r\n<p>Sài Gòn rộng lớn và không thiếu những đặc sản đến từ một nền ẩm thực đa dạng và thú vị, cũng như những “đặc sản” du lịch không thể bỏ qua như Du ngoạn ven sông Sài Gòn, phố Tây, mua sắm ở chợ Bến Thành hay trốn tránh cái náo nhiệt, xô bồ tại biển Cần Giờ hoang sơ lộng gió… , những khu vui chơi giải trí, trung tâm mua sắm sầm uất, nhưng cũng không thiếu những biệt thự cổ kính, những ngôi chợ truyền thống tồn tại đã hàng trăm năm. Choáng ngợp, điên cuồng, bận rộn và sôi động là những gì mà người ta sẽ dành để nói tới thành phố tươi trẻ này.</p>\r\n', 1, 7),
(16, 'upload/nha-trang.jpg', 'Nha Trang', '<p><span style=\"font-family:open sans,sans-serif\">Du lịch Nha Trang từ lâu không còn là địa điểm du lịch quá xa lạ với khách du lịch. Với các bãi biển dài và cát trắng Nha Trang được mệnh danh là hòn ngọc biển Đông. Nếu đã được một lần đến với vùng đất Nha Trang này, du khách sẽ bị “mê hoặc” bởi sự quyến rũ và năng động của thành phố xinh đẹp này. Với khí hậu ôn hòa, Nha Trang có hai mùa mưa nắng rõ rệt. Mùa hè thường kéo dài nhưng nắng nóng không quá gay gắt. Bởi vì thế du lịch Nha Trang quanh năm luôn sẵn sàng chào đón khách du lịch đến thăm. Với các địa điểm du lịch Nha Trang nổi tiếng như Vinpearl Land, đảo Hòn Mun, Tháp Bà Ponagar, Vịnh Vân Phong,...</span></p>\r\n', 1, 6),
(17, 'upload/phan-thiet.jpg', 'Phan Thiết', '<p><span style=\"font-family:open sans,sans-serif\">Phan Thiết là một huyện thuộc tình Bình Thuận, là trung tâm chính trị, kinh tế, văn hóa và khoa học kỹ thuật của tỉnh Bình Thuận. Du khách sẽ đựơc khám phá rất nhiều danh lam thắng cảnh hàng năm thu hút hàng ngàn lượt khách trong và ngoài nước như tháp nước Phan Thiết, đồi cát trắng dài mịn nơi Mũi Né, hay chinh phục ngọn hải đăng Kê Gà, suối Tiên, hành hương đến chùa Phật Quang, tháp Chăm Po Sah Inư, đắm mình trong bãi tắm Đồi Dương, Bàu Trắng… và thưởng thức những đặc sản truyền thống như bánh xèo, bánh căn, gỏi cá, mỳ quảng, bánh canh cá, bánh rế… là những hifh ảnh và món ăn luôn lưu lại trong lòng du khách thập phương mỗi khi đến đây.</span></p>\r\n', 1, 5),
(18, 'upload/phu-quoc.jpg', 'Phú Quốc', '<p>Phú Quốc là một huyện thuộc tỉnh Kiên Giang, Phú Quốc được đánh giá là đảo thiên đường với những bãi biển được cho là đẹp nhất Việt Nam. Đến với Phú Quốc, chắc hẳn du khách sẽ không khỏi ngỡ ngàng trước cảnh tượng thiên nhiên vô cùng đẹp mắt, hoang sơ và yên bình nơi đây, Phú Quốc được đánh giá là điểm nghỉ dưỡng tuyệt vời dành cho mọi du khách với những bãi cát dài trắng mịn, nước biển trong, xanh ngắt.</p>\r\n\r\n<p>Các bãi biển đẹp của Phú Quốc có thể kể tới là bãi Kem, bãi Sao&nbsp;ngoài ra còn có những hệ thống sinh thái biển dạng như hòn thầy bói,, hòn móng tay, quần đảo An Thới… hàng năm thu hút hàng trăm ngàn lượt du khách tới đây tham quan và nghỉ dưỡng.</p>\r\n', 1, 4),
(19, 'upload/vung-tau.jpg', 'Vũng Tàu', '<p><span style=\"font-family:open sans,sans-serif\">Bà Rịa - Vũng Tàu là một tỉnh cửa ngõ ra biển Đông. Đây là một tỉnh thuộc vùng kinh tế trọng điểm phía Nam. Bà Rịa - Vũng Tàu được phát triển thành một thành phố du lịch lớn của Việt Nam. Nơi đây được biết đến với các địa điểm du lịch nổi tiếng Bạch Dinh, Tượng chúa Kito, suối nước nóng Bình Châu, ngọn Hải Đăng...Cách Hồ Chí Minh chỉ hơn 100km. Bà Rịa - Vũng Tàu là điểm đến ưa thích của nhiều người dân Thành Phố Hồ Chí Minh.</span></p>\r\n', 1, 3);

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
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `quyen`, `hoten`, `sdt`, `email`, `diachi`) VALUES
(1, 'phamtan', '698d51a19d8a121ce581499d7b701668', 1, '', '0', '', ''),
(2, 'van', '1', 0, '', '0', '', ''),
(3, 'ww', '12', 0, '', '0', '', ''),
(4, 'ee', 'q', 0, '', '0', '', ''),
(5, '3', '3', 0, '', '0', '', ''),
(6, '1651060891', '1', 0, '', '0', '', ''),
(7, 'anhtan98abc@gmail.comư', 'ư', 0, '', '0', '', ''),
(8, 'anhtan98abc@gmail.comee', 'e', 0, '', '0', '', ''),
(9, 'anhtan98abc@gmail.comrrr', '1', 0, '', '0', '', ''),
(10, '16510608911', '12', 0, '', '0', '', ''),
(11, '165106089111', '1', 0, '', '0', '', ''),
(12, 'anhtan98abc@gmail.comqq', 'q', 0, '', '0', '', ''),
(13, '012856551', '1', 0, '', '0', '', ''),
(14, '16510608911111', '1', 0, '', '0', '', ''),
(15, '012856551111', '1', 0, '', '0', '', ''),
(16, 'anhtan98abc@gmail.com11111', '1', 0, '', '0', '', ''),
(17, 'anhtan98abc@gmail.comâ', 'a', 0, '', '0', '', ''),
(18, 'anhtan98abc@gmail.comq', 'q', 0, '', '0', '', ''),
(19, 'q', 'q', 0, '', '0', '', ''),
(20, 'anhtan98abc@gmail.comqư', 'ư', 0, '', '0', '', ''),
(21, 'anhtan98abc@gmail.comwww', 'ư', 0, '', '0', '', ''),
(22, 'www', 'ư', 0, '', '0', '', ''),
(23, 'phamtan', '1', 0, '1', '1', '1', '1'),
(24, 'phamtan1', '1', 0, '1', '1', '1111', '1'),
(30, 'phamtan111111', '1', 0, '1', '1', '1111111111', '1'),
(44, '123', 'c4ca4238a0b923820dcc509a6f75849b', 0, 'Phạm Văn Tấn', '01296153431', 'phamtan365@gmail.com', 'Nam Định');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datphong`
--
ALTER TABLE `datphong`
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
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topdiemden`
--
ALTER TABLE `topdiemden`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topdiemden`
--
ALTER TABLE `topdiemden`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
