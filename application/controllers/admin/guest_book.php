<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: guest_book model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 30 Desember 2014
*/

class Guest_book extends CI_Controller
{
	var $layout = 'admin';

	function __construct(){
		parent::__construct();
		Sys::_security();

		$this->load->model('admin/GuestBook_model');
	}

	public function index(){
		$data['title']	= 'Guest Book';

		$data['total_data']	= $this->GuestBook_model->total_data();
		if($data['total_data'] > 0){
			$data['data_obj']	= $this->GuestBook_model->list_data();
		}

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/guest_book/index';
		Sys::_render($data);
	}

	public function delete($id){
		$this->GuestBook_model->delete($id);
		redirect('admin/guest_book');
	}
}

?>