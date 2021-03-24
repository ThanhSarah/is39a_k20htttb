<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_lien_he extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL
		$this->load->model('M_lien_he');

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
		// Lấy dữ liệu, chuẩn bị dữ liệu để đẩy sang View
		$data["thong_tin_lien_he"] = $this->M_lien_he->get_lien_he();

		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_lien_he', $data);
	}

	public function them_moi()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_lien_he_them_moi');
	}

	public function thuc_hien_them_moi()
	{
		// Lấy dữ liệu từ FORM THÊM MỚI chuyển sang
		$ho_ten=$_POST["txtHoTen"];
		$email=$_POST["txtEmail"];
		$dien_thoai=$_POST["txtDienThoai"];
		$noi_dung_lien_he=$_POST["txtNoiDung"];

		// Tạo ra mảng dữ liệu insert vào hệ thống
		$data = array(
			"ho_ten" => $ho_ten,
			"email" => $email,
			"dien_thoai" => $dien_thoai,
			"noi_dung_lien_he" => $noi_dung_lien_he 
		);

		// Đẩy dữ liệu sang MODEL để insert được vào bảng txt_lien_he
		$this->M_lien_he->insert_lien_he($data);

		// Đẩy người dùng về trang quản trị liên hệ
			echo "
				<script type='text/javascript'>
					window.alert('Bạn đã thêm mới liên hệ thành công.');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../quan_tri_lien_he';
				</script>
			";

	}
}
