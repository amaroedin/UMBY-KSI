<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	
/*
program	: site controller
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 08 Desember 2014
*/

class Site extends CI_Controller
{
	var $layout = 'site';

	function __construct(){
		parent::__construct();

		$this->load->model('Site_model');
	}

	public function index(){
		$data['title']	= "Beranda";

		$data['data_set']	= $this->Site_model->get_page(1);

		$condition1['order']		= array('post_date'=>'desc');
		$condition1['condition']	= array('id_category'=>'1');
		$data['list_news']		= $this->Site_model->list_post(4,0,$condition1);

		// data sidebar
		$condition2['condition']	= array('id_category'=>2);
		$data['list_event']			= $this->Site_model->list_post(5,0,$condition2);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();
		
		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/home';
		Sys::_render($data);
	}

	public function pages($name){
		if($name == '') redirect('site');
		$data['title']	= $name;

		$condition['condition']	= array('name'=>$name);
		$data['data_set']	= $this->Site_model->get_page($condition);

		// data sidebar
		$condition['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/pages';
		Sys::_render($data);
	}

	public function location(){
		$data['title']	= 'Wisata Sekitar';

		$data['list_location']	= $this->Site_model->list_location(page_limit);

		// data sidebar
		$condition['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/location';
		Sys::_render($data);
	}

	public function location_detail($id){
		$data['title']	= 'Detail Wisata Sekitar';

		$condition['condition']	= array('id_location'=>$id);
		$data['data_set']		= $this->Site_model->get_location($condition);
		// data sidebar
		$condition['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/location_detail';
		Sys::_render($data);
	}

	public function map(){
		$data['title']	= 'Peta Lokasi';

		$data['data_set']	= $this->Site_model->get_map();

		// data sidebar
		$condition['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/map';
		Sys::_render($data);
	}

	public function post(){
		$data['title']	= 'Semua Informasi';

		$condition1['order']	= array('name'=>'asc');
		$data['list_post_category']	= $this->Site_model->list_post_category($condition1);
		$data['list_post_item']		= $this->Site_model->list_post_category_item();

		// data sidebar
		$condition2['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition2);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/post';
		Sys::_render($data);
	}

	public function post_detail($id, $id_category, $title){
		if($id == '' || $id_category == '') redirect('site');
		$data['title'] 	= $this->My_model->get_post_category($id_category, 'name');

		$condition['condition']	= array('id_post'=>$id,'id_category'=>$id_category);
		$data['data_set']	= $this->Site_model->get_post($condition);

		// data sidebar
		$condition['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/post_detail';
		Sys::_render($data);
	}

	public function gallery(){
		$data['title']	= 'Galeri';

		$condition1['condition']	= array('id_category'=>3);
		$data['list_gallery']		= $this->Site_model->list_post($condition1);

		// data sidebar
		$condition2['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition2);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/gallery';
		Sys::_render($data);
	}

	public function guest_book(){
		$data['title']	= 'Buku Tamu';

		if(isset($_POST['GuestBooks'])){
			$this->Site_model->save_guest_book();
			redirect('site/guest_book');
		}
		
		$data['map_set']= $this->Site_model->get_map();

		// data sidebar
		$condition2['condition']	= array('id_category'=>2);
		$data['list_event']	= $this->Site_model->list_post(5,0,$condition2);
		$data['list_wisata_sekitar']= $this->Site_model->list_location(3);
		$data['list_banners']		= $this->Site_model->list_banners();

		$data['layout']		= $this->layout;
		$data['template']	= $data['layout'].'/guest_book';
		Sys::_render($data);
	}
}
?>