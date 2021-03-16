<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tin_tuc extends CI_Controller {
	public function index()
	{
		$this->load->view('v_tin_tuc_tong_hop');
	}

	public function tin_tuc_tong_hop()
	{
		$this->load->view('v_tin_tuc_tong_hop');
	}


	public function tin_tuc_chi_tiet()
	{
		// Chuẩn bị các dữ liệu
		// Chuẩn bị tiêu đề
		$data["tieu_de"] = "Welcome to CodeIgniter";
		// Chuẩn bị mô tả nội dung bài viết		
		$data["mo_ta"] = "CodeIgniter is an Application Development Framework - a toolkit - for people who build web sites using PHP.";
		// Chuẩn bị ảnh minh họa
		$data["anh_minh_hoa"] = "sMelun-hospital-ICU-covid-9299-1615765020.jpg";
		// Chuẩn bị nội dung
		$data["noi_dung"] = "Its goal is to enable you to develop projects much faster than you could if you were writing code from scratch, by providing a rich set of libraries for commonly needed tasks, as well as a simple interface and logical structure to access these libraries. CodeIgniter lets you creatively focus on your project by minimizing the amount of code needed for a given task.";
		// Chuẩn bị tác giả
		$data["tac_gia"] = "Nguyễn Hữu Tú";

		// Hiển thị giao diện
		$this->load->view('v_tin_tuc_chi_tiet', $data);
	}

	public function tin_tuc_noi_bat()
	{
		echo 'Tin tức nổi bật';
	}

}