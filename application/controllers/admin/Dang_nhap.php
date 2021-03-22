<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dang_nhap extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Load thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL
		$this->load->model('m_user');

		// Khởi tạo session
		$this->load->library('session');

	}

	public function index()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_dang_nhap');
	}

	public function thuc_hien_dang_nhap() {
		// Lấy dữ liệu từ FORM ĐĂNG NHẬP chuyển sang
		$email = $_POST["txtEmail"];
		$password = $_POST["txtPassword"];

		// Check thử dữ liệu chuyển sang ok không?
		echo $email." | ".$password;

		// Kiểm tra xem người dùng có được phép truy cập vào phần quản trị hay không?
		if ($this->m_user->check_user($email, $password)==1) {
			// Khởi tại phiên làm việc cho người dùng đăng nhập thành công
			$this->session->set_userdata('S_EMAIL', $email);

			// Hiển thị hộp thoại thông báo đăng nhập thành công
			echo "
				<script type='text/javascript'>
					window.alert('Đăng nhập thành công');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../quan_tri_he_thong';
				</script>
			";
		} else {
			// Hiển thị hộp thoại thông báo đăng nhập thất bại
			echo "
				<script type='text/javascript'>
					window.alert('Đăng nhập thất bại. Vui lòng đăng nhập lại.');
				</script>
			";

			// Đẩy người dùng về trang đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href='../dang_nhap';
				</script>
			";
		}
	}
}