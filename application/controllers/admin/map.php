<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: map controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 31 Desember 2014
*/

class Map extends CI_Controller
{
	var $layout = 'admin';

	function __construct(){
		parent::__construct();
		Sys::_security();

		$this->load->model('admin/Map_model');
	}

	public function index(){
		$data['title']	= 'Site Lokasi Candi';

		$data['data_set']	= $this->Map_model->get_data();
		if(isset($_POST['Map'])){
			$id_map = $this->input->post('id_map');
			$this->Map_model->save($id_map);
		}

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/maps/index';
		Sys::_render($data);
	}
}

?>