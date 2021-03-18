<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dang_nhap extends CI_Controller {
	public function index()
	{
		// Hiển thị giao diện bên phần View
		$this->load->view('admin/v_dang_nhap');
	}
}