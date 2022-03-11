-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 23, 2021 lúc 04:32 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `ten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quyen` int(11) NOT NULL COMMENT '1:  supper admin, 2:nhan viên, 3:...',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `pass`, `ten`, `quyen`) VALUES
('quantri', '0123456789', 'Nguyễn Quang Thông', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `idBrand` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nameBrand` varchar(100) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`idBrand`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`idBrand`, `nameBrand`) VALUES
('b1', 'Roadstar'),
('b2', 'Levis'),
('b3', 'Persol\r\n'),
('b4', 'Nike'),
('b5', 'Edwin'),
('b6', 'New Balance'),
('b7', 'Paul Smith'),
('b8', 'Ray-Ban');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `idCategories` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `nameCategories` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idCategories`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`idCategories`, `nameCategories`) VALUES
('c1', 'Nam'),
('c2', 'Nữ'),
('c3', 'Trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

DROP TABLE IF EXISTS `chitiethd`;
CREATE TABLE IF NOT EXISTS `chitiethd` (
  `machitiet` int(11) NOT NULL AUTO_INCREMENT,
  `mahd` varchar(100) NOT NULL,
  `idProduct` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` float NOT NULL,
  `size` varchar(10) NOT NULL,
  PRIMARY KEY (`machitiet`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`machitiet`, `mahd`, `idProduct`, `soluong`, `gia`, `size`) VALUES
(44, 'dh51801707@student.stu.edu.vn1640277012', '3', 1, 125, 'S'),
(43, 'dh51802374@student.stu.edu.vn1640276884', '3', 1, 125, 'S'),
(42, 'dh51802374@student.stu.edu.vn1640276884', '2', 1, 150, 'S');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `idDiscount` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `nameDiscount` varchar(100) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`idDiscount`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `discount`
--

INSERT INTO `discount` (`idDiscount`, `nameDiscount`) VALUES
('d1', 'Upto - 10%'),
('d2', '40% - 50%'),
('d3', '30% - 20%'),
('d4', '10% - 5%'),
('d6', 'khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `masp` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`masp`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ngayhd` datetime NOT NULL,
  `tennguoinhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachinguoinhan` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhan` date NOT NULL,
  `dienthoai` varchar(10) NOT NULL,
  PRIMARY KEY (`mahd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `email`, `ngayhd`, `tennguoinhan`, `diachinguoinhan`, `ngaynhan`, `dienthoai`) VALUES
('dh51802374@student.stu.edu.vn1640276884', 'dh51802374@student.stu.edu.vn', '2021-12-23 04:28:04', 'Tiến', 'mỹ phụng xuân lộc sông cầu phú yên', '2021-12-23', '0339647045'),
('dh51801707@student.stu.edu.vn1640277012', 'dh51801707@student.stu.edu.vn', '2021-12-23 04:30:12', 'NguyenQuangThong', 'abcdez', '2021-12-23', '0339647045');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `idProduct` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `namProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `priceOld` int(11) NOT NULL,
  `priceNew` int(11) NOT NULL,
  `idType` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `idDiscount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `idBrand` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `img` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `idCategories` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idProduct`, `namProduct`, `priceOld`, `priceNew`, `idType`, `idDiscount`, `idBrand`, `img`, `idCategories`) VALUES
('1', 'Bộ thun thể thao tay ngắn phối viền sọc', 100, 75, 't1', 'd2', 'b3', 'product1.jpg', 'c2'),
('2', 'Bộ quần áo thể thao nữ dài tay cao cấp ', 200, 150, 't2', 'd1', 'b2', 'product2.jpg', 'c2'),
('3', 'Bộ đồ thể thao nam cao cấp', 150, 125, 't3', 'd2', 'b1', 'product3.jpg', 'c1'),
('4', 'Áo thể thao AC xanh Copan', 125, 100, 't4', 'd3', 'b1', 'product4.jpg', 'c2'),
('5', 'Set bộ đồ quần áo thể thao nam', 155, 130, 't2', 'd1', 'b2', 'product5.jpg', 'c1'),
('6', 'Bộ đồ thể thao ngoài sân đấu', 1500, 75, 't3', 'd2', 'b3', 'product6.jpg', 'c2'),
('7', 'Bộ quần áo bóng đá  Bulbal Predator II', 200, 150, 't1', 'd2', 'b2', 'product7.jpg', 'c1'),
('8', 'Bộ Đồ thể thao - Quần Áo gió QAN002', 125, 75, 't3', 'd2', 'b1', 'product8.jpg', 'c1'),
('9', 'Bộ thể thao ba lỗ Ksport cho bé trai', 125, 100, 't3', 'd3', 'b2', 'product9.jpg', 'c3'),
('10', 'Bộ thun thể thao USA-Champion ', 220, 195, 't1', 'd1', 'b2', 'product10.jpg', 'c3'),
('11', 'Bộ quần áo giữ nhiệt trẻ em', 150, 75, 't3', 'd3', 'b3', 'product11.jpg', 'c3'),
('12', 'Đồ Thể Thao Bé Trai BBRO1762', 155, 150, 't4', 'd2', 'b4', 'product12.jpg', 'c3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

DROP TABLE IF EXISTS `quantri`;
CREATE TABLE IF NOT EXISTS `quantri` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`username`, `pass`, `ten`, `quyen`) VALUES
('quantri', '0123456789', 'Nguyễn Quang Thông', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idType` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `nameType` varchar(100) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`idType`, `nameType`) VALUES
('t1', 'Bền bỉ'),
('t2', 'Túi'),
('t3', 'Mũ và nón'),
('t4', 'Áó khoác'),
('t5', 'Quần jean'),
('t6', 'Áo sơ mi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `matkhau`, `ten`, `diachi`, `dienthoai`) VALUES
('dh51802374@student.stu.edu.vn', '123456', 'Quangthong', 'mỹ phụng xuân lộc sông cầu phú yên', '0339647045'),
('dh51801707@student.stu.edu.vn', '123456', 'NguyenQuangThong', 'mỹ phụng xuân lộc sông cầu phú yên', '0339647045');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zise`
--

DROP TABLE IF EXISTS `zise`;
CREATE TABLE IF NOT EXISTS `zise` (
  `idzise` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`idzise`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `zise`
--

INSERT INTO `zise` (`idzise`, `name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
