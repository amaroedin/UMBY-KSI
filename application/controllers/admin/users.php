
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: user controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 30 Desember 2014
*/

class Users extends CI_Controller
{
	var $layout = 'admin';

	function __construct(){
		parent::__construct();
		Sys::_security();

		$this->load->model('admin/Users_model');
	}

	public function index(){
		$data['title']	= 'User';

		$data['total_data']	= $this->Users_model->total_data();
		if($data['total_data'] > 0){
			$data['data_obj']	= $this->Users_model->list_data();
		}

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/users/index';
		Sys::_render($data);
	}

	public function create(){
		$data['title']	= 'Input User';

		if(isset($_POST['Users'])){
			$this->Users_model->save();
			redirect('admin/users');
		}

		// opt
		$data['list_user_group']	= $this->My_model->_opt('list_user_group');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/users/create';
		Sys::_render($data);
	}

	public function update($id){
		$data['title']	= 'Input User';

		if(isset($_POST['Users'])){
			$this->Users_model->save();
			redirect('admin/users');
		}

		$data['data_set']	= $this->Users_model->get_data($id);

		// opt
		$data['list_user_group']	= $this->My_model->_opt('list_user_group');

		$data['form_action']=current_url();
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/users/update';
		Sys::_render($data);
	}

	public function delete($id){
		$this->Users_model->delete($id);
		redirect('admin/users');
	}
}

?>