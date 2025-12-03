-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2025 lúc 07:35 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlnhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bangcong`
--

CREATE TABLE `tbl_bangcong` (
  `MaBC` int(11) NOT NULL,
  `Nam` int(11) DEFAULT NULL,
  `Thang` int(11) DEFAULT NULL,
  `Ngay` int(11) DEFAULT NULL,
  `GioVao` int(11) DEFAULT NULL,
  `PhutVao` int(11) DEFAULT NULL,
  `GioRa` int(11) DEFAULT NULL,
  `PhutRa` int(11) DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `IDLoaiCong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baohiem`
--

CREATE TABLE `tbl_baohiem` (
  `IDBH` int(11) NOT NULL,
  `SoBH` varchar(50) DEFAULT NULL,
  `NgayCap` date DEFAULT NULL,
  `NoiCap` varchar(50) DEFAULT NULL,
  `NoiKhamBenh` varchar(50) DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bophan`
--

CREATE TABLE `tbl_bophan` (
  `IDBP` int(11) NOT NULL,
  `TenBP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chucvu`
--

CREATE TABLE `tbl_chucvu` (
  `IDCV` int(11) NOT NULL,
  `TenCV` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hopdong`
--

CREATE TABLE `tbl_hopdong` (
  `SoHD` int(11) NOT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `NgayKi` date DEFAULT NULL,
  `NoiDung` varchar(5000) DEFAULT NULL,
  `LanKy` int(11) DEFAULT NULL,
  `ThoiHan` varchar(50) DEFAULT NULL,
  `HeSoLuong` float DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khenthuong&kyluat`
--

CREATE TABLE `tbl_khenthuong&kyluat` (
  `ID` int(11) NOT NULL,
  `SoKTKL` int(11) DEFAULT NULL,
  `NoiDung` varchar(500) DEFAULT NULL,
  `Ngay` date DEFAULT NULL,
  `MaNV` date DEFAULT NULL,
  `Loai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaica`
--

CREATE TABLE `tbl_loaica` (
  `IDLoaiCa` int(11) NOT NULL,
  `TenLoaiCa` varchar(50) DEFAULT NULL,
  `HeSo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaicong`
--

CREATE TABLE `tbl_loaicong` (
  `IDLoaiCong` int(11) NOT NULL,
  `TenLC` varchar(50) DEFAULT NULL,
  `HeSo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `MaNV` int(11) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `GioiTinh` bit(20) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DienThoai` varchar(50) DEFAULT NULL,
  `CCCD` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(300) DEFAULT NULL,
  `HinhAnh` varbinary(50000) DEFAULT NULL,
  `IDPB` int(11) DEFAULT NULL,
  `IDBP` int(11) DEFAULT NULL,
  `IDCV` int(11) DEFAULT NULL,
  `IDTD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phongban`
--

CREATE TABLE `tbl_phongban` (
  `IDPB` int(11) NOT NULL,
  `TenPB` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phucap`
--

CREATE TABLE `tbl_phucap` (
  `IDPC` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `Ngay` date DEFAULT NULL,
  `NoiDung` varchar(500) DEFAULT NULL,
  `SoTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tangca`
--

CREATE TABLE `tbl_tangca` (
  `ID` int(11) NOT NULL,
  `Nam` int(11) DEFAULT NULL,
  `Thang` int(11) DEFAULT NULL,
  `Ngay` int(11) DEFAULT NULL,
  `SoGio` float DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `IDLoaiCa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_trinhdo`
--

CREATE TABLE `tbl_trinhdo` (
  `IDTD` int(11) NOT NULL,
  `TenTD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ungluong`
--

CREATE TABLE `tbl_ungluong` (
  `ID` int(11) NOT NULL,
  `Nam` int(11) DEFAULT NULL,
  `Thang` int(11) DEFAULT NULL,
  `Ngay` int(11) DEFAULT NULL,
  `SoTien` float DEFAULT NULL,
  `TrangThai` bit(50) DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_bangcong`
--
ALTER TABLE `tbl_bangcong`
  ADD PRIMARY KEY (`MaBC`);

--
-- Chỉ mục cho bảng `tbl_baohiem`
--
ALTER TABLE `tbl_baohiem`
  ADD PRIMARY KEY (`IDBH`);

--
-- Chỉ mục cho bảng `tbl_bophan`
--
ALTER TABLE `tbl_bophan`
  ADD PRIMARY KEY (`IDBP`);

--
-- Chỉ mục cho bảng `tbl_chucvu`
--
ALTER TABLE `tbl_chucvu`
  ADD PRIMARY KEY (`IDCV`);

--
-- Chỉ mục cho bảng `tbl_hopdong`
--
ALTER TABLE `tbl_hopdong`
  ADD PRIMARY KEY (`SoHD`);

--
-- Chỉ mục cho bảng `tbl_khenthuong&kyluat`
--
ALTER TABLE `tbl_khenthuong&kyluat`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_loaica`
--
ALTER TABLE `tbl_loaica`
  ADD PRIMARY KEY (`IDLoaiCa`);

--
-- Chỉ mục cho bảng `tbl_loaicong`
--
ALTER TABLE `tbl_loaicong`
  ADD PRIMARY KEY (`IDLoaiCong`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `tbl_phongban`
--
ALTER TABLE `tbl_phongban`
  ADD PRIMARY KEY (`IDPB`);

--
-- Chỉ mục cho bảng `tbl_phucap`
--
ALTER TABLE `tbl_phucap`
  ADD PRIMARY KEY (`IDPC`);

--
-- Chỉ mục cho bảng `tbl_tangca`
--
ALTER TABLE `tbl_tangca`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_trinhdo`
--
ALTER TABLE `tbl_trinhdo`
  ADD PRIMARY KEY (`IDTD`);

--
-- Chỉ mục cho bảng `tbl_ungluong`
--
ALTER TABLE `tbl_ungluong`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
