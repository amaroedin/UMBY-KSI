<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: banners controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 30 Desember 2014
*/

class Banners extends CI_Controller
{
	var $layout = 'admin';

	function __construct(){
		parent::__construct();
		Sys::_security();

		$this->load->model('admin/Banners_model');
	}

	public function index(){
		$data['title']	= 'Slide Show';

		$data['total_data']	= $this->Banners_model->total_data();
		if($data['total_data'] > 0){
			$data['data_obj']	= $this->Banners_model->list_data();
		}

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/banners/index';
		Sys::_render($data);
	}

	public function create(){
		$data['title']	= 'Input Slide Show';

		if(isset($_POST['Banners'])){
			$this->Banners_model->save();
			redirect('admin/banners');
		}

		// Opt
		$data['list_status']= $this->My_model->_opt('list_status');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/banners/create';
		Sys::_render($data);
	}

	public function update($id){
		$data['title']	= 'Input Slide Show';

		if(isset($_POST['Banners'])){
			$this->Banners_model->save($id);
			redirect('admin/banners');
		}

		$data['data_set']	= $this->Banners_model->get_data($id);
		
		// Opt
		$data['list_status']= $this->My_model->_opt('list_status');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/banners/update';
		Sys::_render($data);
	}

	public function delete($id){
		$this->Banners_model->delete($id);
		redirect('admin/banners');
	}
}

?>