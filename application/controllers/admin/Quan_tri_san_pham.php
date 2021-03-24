<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_san_pham extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL
		$this->load->model('M_san_pham');

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
		$data["thong_tin_san_pham"] = $this->M_san_pham->get_san_pham();

		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_san_pham', $data);
	}

	public function them_moi()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_san_pham_them_moi');
	}

	public function thuc_hien_them_moi()
	{
		// Lấy dữ liệu từ FORM THÊM MỚI chuyển sang
		$ten_san_pham=$_POST["txtTenSanPham"];
		$mo_ta=$_POST["txtMoTa"];
		$anh_minh_hoa=$_POST["txtAnhMinhHoa"];
		$gia_ban=$_POST["txtGiaBan"];

		// Tạo ra mảng dữ liệu insert vào hệ thống
		$data = array(
			"ten_san_pham" => $ten_san_pham,
			"mo_ta" => $mo_ta,
			"anh_minh_hoa" => $anh_minh_hoa,
			"gia_ban" => $gia_ban 
		);

		// Đẩy dữ liệu sang MODEL để insert được vào bảng txt_san_pham
		$this->M_san_pham->insert_san_pham($data);

		// Đẩy người dùng về trang quản trị sản phẩm
			echo "
				<script type='text/javascript'>
					window.alert('Bạn đã thêm mới sản phẩm thành công.');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../quan_tri_san_pham';
				</script>
			";

	}
}
