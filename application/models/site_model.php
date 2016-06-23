<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: Site_model model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 12 Desember 2014
*/

class Site_model extends CI_Model
{
	var $_pages = 'pages';
	var $_post = 'post';
	var $_map = 'map';
	var $_location = 'location';
	var $_post_category = 'post_category';
	var $_guest_book = 'guest_book';
	var $_banners = 'banners';

	function list_banners($limit=0, $offset=0){
		if($limit !=0 && $offset !=0) {
			$this->db->limit($limit, $offset);
		}

		return $this->db->get($this->_banners)->result();
	}

	function get_page($condition){
		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_pages)->row();
	}

	function list_post_category($condition=null){
		if(!empty($condition['order'])){
			foreach($condition['order'] as $key=>$val){
				$this->db->order_by($key, strtolower($val));
			}
		}

		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_post_category)->result();
	}

	function list_post($limit=0, $offset=0, $condition=null){
		if($limit !=0 && $offset !=0) {
			$this->db->limit($limit, $offset);
		}

		if(!empty($condition['order'])){
			foreach($condition['order'] as $key=>$val){
				$this->db->order_by($key, strtolower($val));
			}
		}

		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_post)->result();
	}

	function list_post_category_item(){
		$data = array();
		foreach($this->list_post_category() as $category) {
			$condition['condition'] = array('id_category'=>$category->id_category);
			foreach($this->list_post(0,0,$condition) as $post) {
				$data[$post->id_post.'_'.$post->id_category] = $post;
			}
		}
		return $data;
	}

	function get_post($condition){
		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_post)->row();
	}

	function get_map(){
		$this->db->limit(1);
		return $this->db->get($this->_map)->row();
	}

	function list_location($limit=0, $offset=0, $condition=null){
		$this->db->limit($limit, $offset);
		if(!empty($condition['order'])){
			foreach($condition['order'] as $key=>$val){
				$this->db->order_by($key, strtolower($val));
			}
		}
		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_location)->result();
	}

	function get_location($condition){
		if(!empty($condition['condition'])){
			$this->db->where($condition['condition']);
		}

		return $this->db->get($this->_location)->row();
	}

	function save_guest_book(){
		$data = $_POST['GuestBooks'];
		$data['date_create']	= gmt('datetime');

		return $this->db->insert($this->_guest_book, $data);
	}
}

?>