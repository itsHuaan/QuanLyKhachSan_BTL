-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 12:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlykhachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TenDichVu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ChiPhi` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `ChiPhi`) VALUES
('DV001', 'Dịch vụ 1', 50000),
('DV002', 'Dịch vụ 2', 75000),
('DV003', 'Dịch vụ 3', 100000),
('DV004', 'Dịch vụ 4', 120000),
('DV005', 'Dịch vụ 5', 90000),
('DV006', 'Dịch vụ 6', 60000),
('DV007', 'Dịch vụ 7', 80000),
('DV008', 'Dịch vụ 8', 110000),
('DV009', 'Dịch vụ 9', 95000),
('DV010', 'Dịch vụ 10', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `NgayDen` datetime DEFAULT NULL,
  `NgayDi` datetime DEFAULT NULL,
  `SoNguoi` int(11) NOT NULL,
  `MaPhong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `SoDienThoai`, `NgayDen`, `NgayDi`, `SoNguoi`, `MaPhong`) VALUES
('12314', 'hfghrt', '6457', '2023-12-14 00:00:00', '2023-12-15 00:00:00', 1, 'P501'),
('123431', 'fwer', '534', '2023-12-14 00:00:00', '2023-12-23 00:00:00', 2, 'P202'),
('1254316', 'ksl', '758394', '2023-12-20 00:00:00', '2023-12-22 00:00:00', 3, 'P304'),
('34532', 'gdfg', '646456', '2023-12-14 00:00:00', '2023-12-15 00:00:00', 2, 'P203'),
('627362', 'asdk', '5893487', '2023-12-21 00:00:00', '2023-12-23 00:00:00', 1, 'P502'),
('763428', 'alsdk', '7384', '2023-12-28 00:00:00', '2023-12-30 00:00:00', 3, 'P404'),
('7686789', 'fertgert', '456456', '2023-12-14 00:00:00', '2023-12-15 00:00:00', 2, 'P603'),
('867445', 'grttyrt', '566756', '2023-12-07 00:00:00', '2023-12-15 00:00:00', 2, 'P202'),
('8678', 'gdf', '645', '2023-12-13 00:00:00', '2023-12-15 00:00:00', 3, 'P802');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoTen`, `GioiTinh`, `MatKhau`) VALUES
('NV020501', 'Lê Thị Phương Liên', 'Nữ', '020501'),
('NV050300', 'Nguyễn Ngô Dương', 'Nam', '050300'),
('NV190901', 'Đỗ Quang Huân', 'Nam', '190901');

-- --------------------------------------------------------

--
-- Table structure for table `phieuden`
--

CREATE TABLE `phieuden` (
  `MaPhieu` varchar(255) NOT NULL,
  `MaKhachHang` varchar(255) NOT NULL,
  `MaPhong` varchar(255) NOT NULL,
  `NgayDen` datetime NOT NULL,
  `NgayDi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieuden`
--

INSERT INTO `phieuden` (`MaPhieu`, `MaKhachHang`, `MaPhong`, `NgayDen`, `NgayDi`) VALUES
('PD9268', '1254316', 'P304', '2023-12-20 00:00:00', '2023-12-22 00:00:00'),
('PD9538', '123431', 'P202', '2023-12-14 00:00:00', '2023-12-23 00:00:00'),
('PD9558', '763428', 'P404', '2023-12-28 00:00:00', '2023-12-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaPhong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `LoaiPhong` enum('SGL','TWN','DBL','TRPL') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `HangPhong` enum('Tiêu chuẩn','Cao cấp','Sang trọng','Thượng hạng') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ViTri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `GiaThue` decimal(10,0) NOT NULL,
  `TinhTrang` enum('Trống','Đã đặt','Đã thuê') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Trống'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaPhong`, `LoaiPhong`, `HangPhong`, `ViTri`, `GiaThue`, `TinhTrang`) VALUES
('P101', 'SGL', 'Tiêu chuẩn', 'Tầng 1', 150000, 'Trống'),
('P102', 'TWN', 'Tiêu chuẩn', 'Tầng 1', 150000, 'Trống'),
('P103', 'DBL', 'Tiêu chuẩn', 'Tầng 1', 150000, 'Trống'),
('P104', 'TRPL', 'Tiêu chuẩn', 'Tầng 1', 150000, 'Trống'),
('P201', 'SGL', 'Cao cấp', 'Tầng 2', 200000, 'Trống'),
('P202', 'TWN', 'Cao cấp', 'Tầng 2', 200000, 'Đã thuê'),
('P203', 'DBL', 'Cao cấp', 'Tầng 2', 200000, 'Đã đặt'),
('P204', 'TRPL', 'Cao cấp', 'Tầng 2', 200000, 'Trống'),
('P301', 'SGL', 'Sang trọng', 'Tầng 3', 250000, 'Trống'),
('P302', 'TWN', 'Sang trọng', 'Tầng 3', 250000, 'Trống'),
('P303', 'DBL', 'Sang trọng', 'Tầng 3', 250000, 'Trống'),
('P304', 'TRPL', 'Sang trọng', 'Tầng 3', 250000, 'Đã thuê'),
('P401', 'SGL', 'Thượng hạng', 'Tầng 4', 300000, 'Trống'),
('P402', 'TWN', 'Thượng hạng', 'Tầng 4', 300000, 'Trống'),
('P403', 'DBL', 'Thượng hạng', 'Tầng 4', 300000, 'Trống'),
('P404', 'TRPL', 'Thượng hạng', 'Tầng 4', 300000, 'Đã thuê'),
('P501', 'SGL', 'Tiêu chuẩn', 'Tầng 5', 150000, 'Đã đặt'),
('P502', 'SGL', 'Cao cấp', 'Tầng 5', 200000, 'Trống'),
('P503', 'SGL', 'Sang trọng', 'Tầng 5', 250000, 'Trống'),
('P504', 'SGL', 'Thượng hạng', 'Tầng 5', 300000, 'Trống'),
('P601', 'TWN', 'Tiêu chuẩn', 'Tầng 6', 150000, 'Trống'),
('P602', 'TWN', 'Cao cấp', 'Tầng 6', 200000, 'Trống'),
('P603', 'TWN', 'Sang trọng', 'Tầng 6', 250000, 'Trống'),
('P604', 'TWN', 'Thượng hạng', 'Tầng 6', 300000, 'Trống'),
('P701', 'DBL', 'Thượng hạng', 'Tầng 7', 300000, 'Trống'),
('P702', 'DBL', 'Tiêu chuẩn', 'Tầng 7', 150000, 'Trống'),
('P703', 'DBL', 'Cao cấp', 'Tầng 7', 200000, 'Trống'),
('P704', 'DBL', 'Sang trọng', 'Tầng 7', 250000, 'Trống'),
('P801', 'TRPL', 'Tiêu chuẩn', 'Tầng 8', 150000, 'Trống'),
('P802', 'TRPL', 'Cao cấp', 'Tầng 8', 200000, 'Trống'),
('P803', 'TRPL', 'Sang trọng', 'Tầng 8', 250000, 'Trống'),
('P804', 'TRPL', 'Thượng hạng', 'Tầng 8', 300000, 'Trống');

-- --------------------------------------------------------

--
-- Table structure for table `phong_dichvu`
--

CREATE TABLE `phong_dichvu` (
  `MaPhong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MaDichVu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ThoiDiemYeuCau` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phong_dichvu`
--

INSERT INTO `phong_dichvu` (`MaPhong`, `MaDichVu`, `ThoiDiemYeuCau`) VALUES
('P202', 'DV001', '2023-12-06 18:45:49'),
('P202', 'DV006', '2023-12-06 18:45:49'),
('P202', 'DV009', '2023-12-06 18:45:49'),
('P304', 'DV001', '2023-12-06 18:45:38'),
('P304', 'DV003', '2023-12-06 18:45:38'),
('P304', 'DV006', '2023-12-06 18:45:38'),
('P304', 'DV008', '2023-12-06 18:45:38'),
('P404', 'DV002', '2023-12-06 18:45:43'),
('P404', 'DV004', '2023-12-06 18:45:43'),
('P404', 'DV008', '2023-12-06 18:45:43'),
('P404', 'DV010', '2023-12-06 18:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `MaThanhToan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MaKhachHang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MaPhong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TienPhong` decimal(10,0) NOT NULL,
  `TienDichVu` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `ThoiDiemThanhToan` datetime NOT NULL,
  `MaNhanVien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`MaThanhToan`, `MaKhachHang`, `MaPhong`, `TienPhong`, `TienDichVu`, `TongTien`, `ThoiDiemThanhToan`, `MaNhanVien`) VALUES
('TT90897', '867445', 'P202', 1600000, 375000, 1975000, '2023-12-06 14:10:30', 'NV190901'),
('TT91636', '867445', 'P202', 1600000, 375000, 1975000, '2023-09-06 14:12:29', 'NV190901'),
('TT91851', '627362', 'P502', 400000, 235000, 635000, '2023-03-11 14:13:30', 'NV190901'),
('TT92519', '627362', 'P502', 400000, 235000, 635000, '2023-02-11 14:13:19', 'NV190901'),
('TT92584', '867445', 'P202', 1600000, 375000, 1975000, '2023-03-11 14:13:51', 'NV190901'),
('TT93143', '627362', 'P502', 400000, 235000, 635000, '2023-12-06 18:44:21', 'NV190901'),
('TT93218', '867445', 'P202', 1600000, 375000, 1975000, '2023-12-06 18:44:18', 'NV190901'),
('TT93873', '867445', 'P202', 1600000, 375000, 1975000, '2023-12-06 14:10:23', 'NV190901'),
('TT94502', '8678', 'P802', 400000, 0, 400000, '2023-12-06 02:16:54', 'NV190901'),
('TT94808', '7686789', 'P603', 250000, 290000, 540000, '2023-02-11 14:13:13', 'NV190901'),
('TT95186', '627362', 'P502', 400000, 235000, 635000, '2023-03-11 14:13:46', 'NV190901'),
('TT95656', '7686789', 'P603', 250000, 290000, 540000, '2023-01-08 14:12:57', 'NV190901'),
('TT96130', '7686789', 'P603', 250000, 290000, 540000, '2023-12-06 14:10:27', 'NV190901'),
('TT96384', '7686789', 'P603', 250000, 290000, 540000, '2023-12-06 18:44:24', 'NV190901'),
('TT97952', '867445', 'P202', 1600000, 375000, 1975000, '2023-12-06 18:44:15', 'NV190901'),
('TT98383', '867445', 'P202', 1600000, 375000, 1975000, '2023-02-11 14:13:22', 'NV190901'),
('TT98586', '627362', 'P502', 400000, 235000, 635000, '2023-06-06 14:12:50', 'NV190901'),
('TT98833', '7686789', 'P603', 250000, 290000, 540000, '2023-03-11 14:13:49', 'NV190901'),
('TT98886', '867445', 'P202', 1600000, 375000, 1975000, '2023-03-11 14:13:35', 'NV190901'),
('TT99765', '627362', 'P502', 400000, 235000, 635000, '2023-12-06 14:10:53', 'NV190901'),
('TT99830', '7686789', 'P603', 250000, 290000, 540000, '2023-03-11 14:13:33', 'NV190901');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `phieuden`
--
ALTER TABLE `phieuden`
  ADD PRIMARY KEY (`MaPhieu`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Indexes for table `phong_dichvu`
--
ALTER TABLE `phong_dichvu`
  ADD PRIMARY KEY (`MaPhong`,`MaDichVu`),
  ADD KEY `MaDichVu` (`MaDichVu`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`MaThanhToan`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `thanhtoan_ibfk_2` (`MaPhong`),
  ADD KEY `thanhtoan_ibfk_3` (`MaNhanVien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `phieuden`
--
ALTER TABLE `phieuden`
  ADD CONSTRAINT `phieuden_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `phieuden_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `phong_dichvu`
--
ALTER TABLE `phong_dichvu`
  ADD CONSTRAINT `phong_dichvu_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `phong_dichvu_ibfk_2` FOREIGN KEY (`MaDichVu`) REFERENCES `dichvu` (`MaDichVu`);

--
-- Constraints for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `thanhtoan_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `thanhtoan_ibfk_3` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
