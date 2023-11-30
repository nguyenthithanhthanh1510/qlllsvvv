-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2023 lúc 03:01 PM
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
-- Cơ sở dữ liệu: `truonghoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cvht`
--

CREATE TABLE `cvht` (
  `macvht` varchar(10) NOT NULL,
  `tencvht` varchar(50) NOT NULL,
  `emailcvht` varchar(50) NOT NULL,
  `sdtcvht` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cvht`
--

INSERT INTO `cvht` (`macvht`, `tencvht`, `emailcvht`, `sdtcvht`) VALUES
('', '', '', ''),
('cv01', 'Nguyễn Thị Hồng Yến', 'nthy@gmail.com', '0834595916'),
('cv02', 'Hồng Thanh Luận', 'htl@gmail.com', '0834596523'),
('cv03', 'Đặng Trung Tín', 'dtt@gmail.com', '0839996523');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `magiangvien` varchar(10) NOT NULL,
  `tengiangvien` varchar(50) NOT NULL,
  `sdtgiangvien` varchar(11) NOT NULL,
  `emailgiangvien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`magiangvien`, `tengiangvien`, `sdtgiangvien`, `emailgiangvien`) VALUES
('gv01', 'Đặng Thùy Dung', '0922879122', 'dtd@gmail.com'),
('gv02', 'Lê Anh Nhã Uyên', '0922874444', 'lanu@gmail.com'),
('gv03', 'Đinh Thành Nhân', '0922875555', 'dtn@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `maketqua` int(10) NOT NULL,
  `masinhvien` varchar(10) NOT NULL,
  `malophocphan` varchar(10) NOT NULL,
  `diem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`maketqua`, `masinhvien`, `malophocphan`, `diem`) VALUES
(1, 'sv01', 'csdl', 9),
(2, 'sv02', 'lthdt', 5),
(3, 'sv03', 'ltw', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(10) NOT NULL,
  `tenlop` varchar(50) NOT NULL,
  `nambatdau` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `nambatdau`) VALUES
('CNTT0120', 'Công Nghệ Thông Tin Khóa 8', 2020),
('KHMT0119', 'Khoa Học Máy Tính K7', 2019),
('KTPM0121', 'Kỹ Thuật Phần Mềm Khóa 9', 2021);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophocphan`
--

CREATE TABLE `lophocphan` (
  `malophocphan` varchar(10) NOT NULL,
  `tenlophocphan` varchar(50) NOT NULL,
  `magiangvien` varchar(10) NOT NULL,
  `masinhvien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophocphan`
--

INSERT INTO `lophocphan` (`malophocphan`, `tenlophocphan`, `magiangvien`, `masinhvien`) VALUES
('csdl', 'Cơ Sở Dữ Liệu', 'gv01', 'sv01'),
('lthdt', 'Lập Trình Hướng Đối Tượng', 'gv03', 'sv03'),
('ltw', 'Lập Trình Web', 'gv02', 'sv02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `maphuhuynh` varchar(10) NOT NULL,
  `tenphuhuynh` varchar(50) NOT NULL,
  `sdtphuhuynh` varchar(11) NOT NULL,
  `emailphuhuynh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh`
--

INSERT INTO `phuhuynh` (`maphuhuynh`, `tenphuhuynh`, `sdtphuhuynh`, `emailphuhuynh`) VALUES
('ph01', 'Huỳnh Văn Dũng', '09365845337', 'hvd@gmailcom'),
('ph02', 'Đặng Hải Tường', '08365744337', 'dht@gmail.com'),
('ph03', 'Đỗ Thanh Bùi', '05545742337', 'dtb@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` varchar(10) NOT NULL,
  `tensinhvien` varchar(50) NOT NULL,
  `sdtsinhvien` varchar(11) NOT NULL,
  `emailsinhvien` varchar(50) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `ngaysinh` date NOT NULL,
  `malop` varchar(10) NOT NULL,
  `macvht` varchar(10) NOT NULL,
  `maphuhuynh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `tensinhvien`, `sdtsinhvien`, `emailsinhvien`, `gioitinh`, `ngaysinh`, `malop`, `macvht`, `maphuhuynh`) VALUES
('sv01', 'Huỳnh Hải Duy', '0834595916', 'hhd@gmail.com', 'nam', '2003-12-22', 'CNTT0120', 'cv01', 'ph01'),
('sv02', 'Huỳnh Thị Hồng Phấn', '0834512981', 'hthp@gmail.com', 'nữ', '2001-08-12', 'KHMT0119', 'cv02', 'ph02'),
('sv03', 'Nguyễn Hoàng Hải', '0834969696', 'nhh@gmail.com', 'nam', '2002-01-01', 'KTPM0121', 'cv03', 'ph03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `mataikhoan` int(11) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `vaitro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`mataikhoan`, `tendangnhap`, `matkhau`, `vaitro`) VALUES
(1, 'admincp123', 'admincp123', 'ad'),
(2, 'giangvien123', 'giangvien123', 'gv'),
(3, 'phuhuynh123', 'phuhuynh123', 'ph'),
(4, 'cvht123', 'cvht123', 'cvht');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cvht`
--
ALTER TABLE `cvht`
  ADD PRIMARY KEY (`macvht`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`magiangvien`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`maketqua`),
  ADD KEY `masinhvien` (`masinhvien`),
  ADD KEY `malophocphan` (`malophocphan`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`);

--
-- Chỉ mục cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`malophocphan`),
  ADD KEY `magiangvien` (`magiangvien`),
  ADD KEY `masinhvien` (`masinhvien`);

--
-- Chỉ mục cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`maphuhuynh`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD KEY `malop` (`malop`),
  ADD KEY `macvht` (`macvht`),
  ADD KEY `maphuhuynh` (`maphuhuynh`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`mataikhoan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `maketqua` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_ibfk_1` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`),
  ADD CONSTRAINT `ketqua_ibfk_2` FOREIGN KEY (`malophocphan`) REFERENCES `lophocphan` (`malophocphan`);

--
-- Các ràng buộc cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`magiangvien`) REFERENCES `giangvien` (`magiangvien`),
  ADD CONSTRAINT `lophocphan_ibfk_2` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`),
  ADD CONSTRAINT `lophocphan_ibfk_3` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`),
  ADD CONSTRAINT `sinhvien_ibfk_2` FOREIGN KEY (`macvht`) REFERENCES `cvht` (`macvht`),
  ADD CONSTRAINT `sinhvien_ibfk_3` FOREIGN KEY (`maphuhuynh`) REFERENCES `phuhuynh` (`maphuhuynh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
