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
	}

	public function index()
	{
		// Lấy dữ liệu, chuẩn bị dữ liệu để đẩy sang View
		$data["noi_dung_tin_tuc"] = $this->m_tin_tuc->get_tin_tuc();

		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}
}