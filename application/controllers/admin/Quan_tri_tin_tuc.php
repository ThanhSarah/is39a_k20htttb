<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_tin_tuc extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL
		$this->load->model('m_tin_tuc');

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
		$data["noi_dung_tin_tuc"] = $this->m_tin_tuc->get_tin_tuc();

		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}

	public function them_moi()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_tin_tuc_them_moi');
	}

	public function thuc_hien_them_moi()
	{
		// Lấy dữ liệu từ FORM THÊM MỚI chuyển sang
		$tieu_de=$_POST["txtTieuDe"];
		$mo_ta=$_POST["txtMoTa"];
		$anh_minh_hoa=$_POST["txtAnhMinhHoa"];
		$noi_dung=$_POST["txtNoiDung"];

		// Tạo ra mảng dữ liệu insert vào hệ thống
		$data = array(
			"tieu_de" => $tieu_de,
			"mo_ta" => $mo_ta,
			"anh_minh_hoa" => $anh_minh_hoa,
			"noi_dung" => $noi_dung 
		);

		// Đẩy dữ liệu sang MODEL để insert được vào bảng txt_tin_tuc
		$this->m_tin_tuc->insert_tin_tuc($data);

		// Đẩy người dùng về trang quản trị tin tức
			echo "
				<script type='text/javascript'>
					window.alert('Bạn đã thêm mới tin tức thành công.');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../quan_tri_tin_tuc';
				</script>
			";

	}
}