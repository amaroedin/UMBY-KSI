<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	
/*
program	: beranda controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 08 Desember 2014
*/

class Beranda extends CI_Controller
{
	function __construct(){
		parent::__construct();

		$this->load->model('Beranda_model','beranda');
	}

	public function index(){
		$data['title']	= "Beranda";

		$data['get_data']	= $this->beranda->get_data(1);
		$data['list_news']	= $this->beranda->list_news(1);
		$data['list_event']	= $this->beranda->list_event(5);
		
		$data['template']	= 'beranda/home';
		$this->load->view('templates/front/main', $data);
	}
}
?>