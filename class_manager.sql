-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2018 lúc 03:45 PM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `class_manager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance_detailt`
--

CREATE TABLE `attendance_detail` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `thoi_gian_diem_danh` bigint(20) NOT NULL,
  `attendance_slots_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `attendance_detailt`
--

INSERT INTO `attendance_detail` (`id`, `status`, `thoi_gian_diem_danh`, `attendance_slots_id`, `student_id`) VALUES
(1, 1, 1527683830369, 1, 1),
(2, 1, 1527683830369, 1, 2),
(3, 1, 1527683830369, 1, 3),
(4, 1, 1527683830369, 2, 4),
(5, 1, 1527683830369, 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance_slots`
--

CREATE TABLE `attendance_slots` (
  `id` int(11) NOT NULL,
  `ma_mon_hoc` varchar(255) DEFAULT NULL,
  `ngay_diem_danh` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `class_info_id` int(11) DEFAULT NULL,
  `timeslots_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `attendance_slots`
--

INSERT INTO `attendance_slots` (`id`, `ma_mon_hoc`, `ngay_diem_danh`, `status`, `class_info_id`, `timeslots_id`) VALUES
(1, 'PHP', 1527683830369, 1, 1, 1),
(2, 'JAVA', 1527683830369, 1, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_info`
--

CREATE TABLE `class_info` (
  `id` int(11) NOT NULL,
  `ma_lop` varchar(255) DEFAULT NULL,
  `ngay_tao` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `class_info`
--

INSERT INTO `class_info` (`id`, `ma_lop`, `ngay_tao`, `status`) VALUES
(1, 'T1707M', 1527683830369, 1),
(2, 'T1708M', 1527683830369, 1),
(3, 'T1709M', 1527683830369, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1),
(1),
(1),
(1),
(1),
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `ma_sinh_vien` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class_info_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`id`, `ma_sinh_vien`, `name`, `class_info_id`) VALUES
(1, 'A03876', 'dong1', 1),
(2, 'A03877', 'truong1', 1),
(3, 'A03878', 'thang1', 1),
(4, 'A03879', 'dong2', 2),
(5, 'A03810', 'truong2', 2),
(6, 'A03811', 'thang2', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_class`
--

CREATE TABLE `student_class` (
  `id` int(11) NOT NULL,
  `ngay_tao` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `class_info_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(11) NOT NULL,
  `time_range` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `timeslots`
--

INSERT INTO `timeslots` (`id`, `time_range`) VALUES
(1, '8h-12h'),
(2, '13h30-17h30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attendance_detailt`
--
ALTER TABLE `attendance_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnthl7gw1oirau6lq039ml1qb3` (`attendance_slots_id`),
  ADD KEY `FKr0nn7cosy1h8mdn8hm3clbwoi` (`student_id`);

--
-- Chỉ mục cho bảng `attendance_slots`
--
ALTER TABLE `attendance_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa6f8ynk60gishdn59vx4crb4b` (`class_info_id`),
  ADD KEY `FK5cwwlst78gyc1t27hvb278lsp` (`timeslots_id`);

--
-- Chỉ mục cho bảng `class_info`
--
ALTER TABLE `class_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr7yycn7picx69h39o41j00yuk` (`class_info_id`);

--
-- Chỉ mục cho bảng `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlt4tnfvpi7wy9wxcpf9nxsbwo` (`class_info_id`),
  ADD KEY `FK2f81ovfviq7rv4jhpdr46dk3e` (`student_id`);

--
-- Chỉ mục cho bảng `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
