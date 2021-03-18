-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 09:02 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k20htttb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `tin_tuc_id` int(11) NOT NULL,
  `tieu_de` varchar(200) NOT NULL,
  `mo_ta` varchar(500) NOT NULL,
  `noi_dung` text NOT NULL,
  `anh_minh_hoa` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_stick` int(11) NOT NULL DEFAULT '2',
  `total_read` int(11) NOT NULL DEFAULT '0',
  `ghi_chu` text,
  `created_by` int(11) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_log` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`tin_tuc_id`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `is_active`, `is_stick`, `total_read`, `ghi_chu`, `created_by`, `created_time`, `modified_by`, `modified_time`, `modified_log`) VALUES
(1, 'Quyết định công nhận kết quả trúng tuyển kỳ tuyển dụng viên chức, người lao động năm 2020', 'Đề nghị ông/bà đến phòng Tổ chức cán bộ để hoàn thiện hồ sơ tuyển dụng theo quy định của pháp luật từ 7h30 ngày 22/2/2021 tới 17h ngày 26/2/2021.', 'Hồ sơ tuyển dụng gồm 2 bộ, trong đó 1 bộ bản chính (để đối chiếu) và 1 bộ bản sao có công chứng, chứng thực của cơ quan có thẩm quyền, cụ thể:\r\n- Văn bằng, chứng chỉ theo yêu cầu của vị trí việc làm dự tuyển, chứng nhận đối tượng ưu tiên (nếu có)\r\n- Phiếu lý lịch tư pháp do cơ quan có thẩm quyền cấp.', 'tuyen_dung.jpg', 1, 2, 0, NULL, NULL, '2021-03-18 08:01:37', NULL, NULL, NULL),
(2, 'Giới thiệu ông Phạm Minh Chính ứng cử Quốc hội khối Chính phủ', 'Ông Phạm Minh Chính, Trưởng ban Tổ chức Trung ương, được giới thiệu ứng cử đại biểu Quốc hội ở khối Chính phủ.', 'Sáng 18/3, Đoàn chủ tịch Ủy ban Trung ương Mặt trận tổ quốc Việt Nam tổ chức hội nghị hiệp thương lần thứ 2 để thỏa thuận lập danh sách sơ bộ người của các cơ quan Trung ương ứng cử Đại biểu Quốc hội khóa XV.\r\n\r\nDanh sách những người được giới thiệu khối Chính phủ gồm 15 ứng viên, trong đó có: Ông Phạm Minh Chính, Trưởng ban Tổ chức Trung ương; ông Nguyễn Hồng Diên, Phó trưởng ban Tuyên giáo Trung ương; ông Hồ Đức Phớc, Tổng kiểm toán Nhà nước; ông Phan Văn Giang, Tổng tham mưu trưởng QĐND VN, Thứ trưởng Quốc phòng; ông Nguyễn Kim Sơn, Giám đốc Đại học Quốc gia Hà Nội...', 'Pham-Minh-Chinh-2735-1616036330.jpg', 1, 2, 0, NULL, NULL, '2021-03-18 08:01:37', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`tin_tuc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `tin_tuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
