<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: location controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 31 Desember 2014
*/

class Location extends CI_Controller
{
	var $layout	= 'admin';

	function __construct(){
		parent::__construct();
		Sys::_security();

		$this->load->model('admin/Location_model');
	}

	public function index(){
		$data['title']	= 'Site Lokasi Sekitar';

		$data['total_data']	= $this->Location_model->total_data();
		if($data['total_data'] > 0){

			$data['data_obj']	= $this->Location_model->list_data();
		}

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/location/index';
		Sys::_render($data);
	}

	public function create(){
		$data['title']	= 'Input Lokasi Sekitar';

		if(isset($_POST['Location'])){
			$this->Location_model->save();
			redirect('admin/location');
		}

		// Opt
		$data['list_status']	= $this->My_model->_opt('list_status');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/location/create';
		Sys::_render($data);
	}

	public function update($id){
		$data['title']	= 'Input Lokasi Sekitar';

		if(isset($_POST['Location'])){
			$this->Location_model->save($id);
			redirect('admin/location');
		}

		$data['data_set']		= $this->Location_model->get_data($id);

		// Opt
		$data['list_status']	= $this->My_model->_opt('list_status');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/location/create';
		Sys::_render($data);
	}

	public function delete($id){
		$this->Location_model->delete($id);
		redirect('admin/location');
	}
}

?>