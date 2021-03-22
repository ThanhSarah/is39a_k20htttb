<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_he_thong extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Khởi tạo session
		$this->load->library('session');

		if ($this->session->userdata('S_EMAIL')=="") {
			// Hiển thị hộp thoại thông báo người dùng không được phép truy c ập
			echo "
				<script type='text/javascript'>
					window.alert('Bạn không được phép truy cập. Vui lòng đăng nhập lại.');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../admin/dang_nhap';
				</script>
			";
		}
	}

	public function index()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_he_thong');
	}
}