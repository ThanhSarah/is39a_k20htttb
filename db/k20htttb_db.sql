-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 24, 2021 lúc 07:26 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k20htttb_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lien_he`
--

CREATE TABLE `tbl_lien_he` (
  `id_lien_he` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_lien_he` text COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_phuc_dap` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lien_he`
--

INSERT INTO `tbl_lien_he` (`id_lien_he`, `ho_ten`, `email`, `dien_thoai`, `noi_dung_lien_he`, `noi_dung_phuc_dap`) VALUES
(1, 'Nguyễn Thị Hà', 'hant@gmail.com', '0989999999', 'Tôi muốn hỏi về quy trình mua sản phẩm bên công ty. Bên công ty có hỗ trợ giao hàng cho tôi miễn phí?', NULL),
(2, 'Nguyễn Thịnh', 'thinhnguyen@gmail.com', '0988999000', 'Tôi muốn hỏi về quy trình mua sản phẩm bên công ty. Bên công ty có hỗ trợ giao hàng cho tôi miễn phí?', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_san_pham`
--

CREATE TABLE `tbl_san_pham` (
  `id_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia_ban` float NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_san_pham`
--

INSERT INTO `tbl_san_pham` (`id_san_pham`, `ten_san_pham`, `mo_ta`, `anh_minh_hoa`, `gia_ban`, `ghi_chu`) VALUES
(1, 'JAVEN WATER - C30', '    Nước Javen (Giaven) là dung dịch của hỗn hợp hai muối: muối ăn (NaCl) và Natri hypochlorit (NaClO), có màu vàng nhạt, mùi hắc, có tính kiềm và là chất ôxy hóa mạnh.\r\n\r\n    Nước Javen (giaven) là hợp chất rất thông dụng dùng trong công nghiệp và dân dụng. Nước giaven được dùng để ôxy hóa các chất màu, tẩy trắng vải sợi, khử trùng nước sinh hoạt, trong chăn nuôi, nước bể bơi và các vật dụng y tế trong bệnh viện ...\r\n\r\n    Thiết bị JAVEN WATER ứng dụng công nghệ điện phân muối ăn, được sử dụng ', '', 0, ''),
(2, 'JAVEN WATER - C500', '    Nước Javen (Giaven) là dung dịch của hỗn hợp hai muối: muối ăn (NaCl) và Natri hypochlorit (NaClO), có màu vàng nhạt, mùi hắc, có tính kiềm và là chất ôxy hóa mạnh.\r\n\r\n    Nước Javen (giaven) là hợp chất rất thông dụng dùng trong công nghiệp và dân dụng. Nước giaven được dùng để ôxy hóa các chất màu, tẩy trắng vải sợi, khử trùng nước sinh hoạt, trong chăn nuôi, nước bể bơi và các vật dụng y tế trong bệnh viện ...\r\n\r\n    Thiết bị JAVEN WATER ứng dụng công nghệ điện phân muối ăn, được sử dụng ', '', 0, ''),
(3, 'JAVEN WATER - C1000', 'Nước Javen (Giaven) là dung dịch của hỗn hợp hai muối: muối ăn (NaCl) và Natri hypochlorit (NaClO), có màu vàng nhạt, mùi hắc, có tính kiềm và là chất ôxy hóa mạnh.\r\n\r\nNước Javen (Giaven) là hợp chất rất thông dụng dùng trong công nghiệp và dân dụng. Nước giaven được dùng để ôxy hóa các chất màu, tẩy trắng vải sợi, khử trùng nước sinh hoạt,trong chăn nuôi, nước bể bơi và các vật dụng y tế trong bệnh viện ...\r\n\r\n', '', 0, ''),
(4, 'JAVEN WATER - C1500', 'Nước Javen (Giaven) là dung dịch của hỗn hợp hai muối: muối ăn (NaCl) và Natri hypochlorit (NaClO), có màu vàng nhạt, mùi hắc, có tính kiềm và là chất ôxy hóa mạnh.\r\n\r\nNước Javen (Giaven) là hợp chất rất thông dụng dùng trong công nghiệp và dân dụng. Nước giaven được dùng để ôxy hóa các chất màu, tẩy trắng vải sợi, khử trùng nước sinh hoạt,trong chăn nuôi, nước bể bơi và các vật dụng y tế trong bệnh viện ...', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `tin_tuc_id` int(11) NOT NULL,
  `tieu_de` varchar(200) NOT NULL,
  `mo_ta` varchar(500) NOT NULL,
  `noi_dung` text NOT NULL,
  `anh_minh_hoa` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_stick` int(11) NOT NULL DEFAULT 2,
  `total_read` int(11) NOT NULL DEFAULT 0,
  `ghi_chu` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_log` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`tin_tuc_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `is_active`, `is_stick`, `total_read`, `ghi_chu`, `created_by`, `created_time`, `modified_by`, `modified_time`, `modified_log`) VALUES
(1, 'Quyết định công nhận kết quả trúng tuyển kỳ tuyển dụng viên chức, người lao động năm 2020', 'Đề nghị ông/bà đến phòng Tổ chức cán bộ để hoàn thiện hồ sơ tuyển dụng theo quy định của pháp luật từ 7h30 ngày 22/2/2021 tới 17h ngày 26/2/2021.', 'Hồ sơ tuyển dụng gồm 2 bộ, trong đó 1 bộ bản chính (để đối chiếu) và 1 bộ bản sao có công chứng, chứng thực của cơ quan có thẩm quyền, cụ thể:\r\n- Văn bằng, chứng chỉ theo yêu cầu của vị trí việc làm dự tuyển, chứng nhận đối tượng ưu tiên (nếu có)\r\n- Phiếu lý lịch tư pháp do cơ quan có thẩm quyền cấp.', 'tuyen_dung.jpg', 1, 2, 0, NULL, NULL, '2021-03-18 08:01:37', NULL, NULL, NULL),
(2, 'Giới thiệu ông Phạm Minh Chính ứng cử Quốc hội khối Chính phủ', 'Ông Phạm Minh Chính, Trưởng ban Tổ chức Trung ương, được giới thiệu ứng cử đại biểu Quốc hội ở khối Chính phủ.', 'Sáng 18/3, Đoàn chủ tịch Ủy ban Trung ương Mặt trận tổ quốc Việt Nam tổ chức hội nghị hiệp thương lần thứ 2 để thỏa thuận lập danh sách sơ bộ người của các cơ quan Trung ương ứng cử Đại biểu Quốc hội khóa XV.\r\n\r\nDanh sách những người được giới thiệu khối Chính phủ gồm 15 ứng viên, trong đó có: Ông Phạm Minh Chính, Trưởng ban Tổ chức Trung ương; ông Nguyễn Hồng Diên, Phó trưởng ban Tuyên giáo Trung ương; ông Hồ Đức Phớc, Tổng kiểm toán Nhà nước; ông Phan Văn Giang, Tổng tham mưu trưởng QĐND VN, Thứ trưởng Quốc phòng; ông Nguyễn Kim Sơn, Giám đốc Đại học Quốc gia Hà Nội...', 'Pham-Minh-Chinh-2735-1616036330.jpg', 1, 2, 0, NULL, NULL, '2021-03-18 08:01:37', NULL, NULL, NULL),
(3, 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'tuyen_dung.jpg', 1, 2, 0, NULL, NULL, '2021-03-22 04:53:03', NULL, NULL, NULL),
(4, 'SAP TechTalk - Are you ready for the future of work?', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'tuyen_dung.jpg', 1, 2, 0, NULL, NULL, '2021-03-22 04:54:14', NULL, NULL, NULL),
(5, 'Phân công GVHD thực hiện Khóa luận & Chuyên đề tốt nghiệp K20HTTT', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'Chương trình Sinh viên tài năng (Viettel Digital Talent Program)', 'tuyen_dung.jpg', 1, 2, 0, NULL, NULL, '2021-03-22 04:54:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `ten_tai_khoan` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `ho_va_ten` varchar(50) NOT NULL,
  `anh_dai_dien` varchar(50) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `quyen_han_id` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `ghi_chu` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_log` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `ten_tai_khoan`, `mat_khau`, `ho_va_ten`, `anh_dai_dien`, `so_dien_thoai`, `email`, `quyen_han_id`, `is_active`, `ghi_chu`, `created_by`, `created_time`, `modified_by`, `modified_time`, `modified_log`) VALUES
(1, 'admin@k20htttb.com', '123', 'Quản Văn Trị', NULL, NULL, 'admin@k20htttb.com', 1, 1, NULL, NULL, '2021-03-22 03:32:05', NULL, NULL, NULL),
(2, 'huycv@bav.edu.vn', '123', 'Chu Văn Huy', NULL, NULL, 'huycv@bav.edu.vn', 1, 1, NULL, NULL, '2021-03-22 03:32:05', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- Chỉ mục cho bảng `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD PRIMARY KEY (`id_san_pham`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`tin_tuc_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  MODIFY `id_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `tin_tuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
