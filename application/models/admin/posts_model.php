<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: Posts_model model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 27 Desember 2014
*/

class Posts_model extends CI_Model
{
	var $_table = 'post';

	function list_data($limit=10,$offset=0, $conditions=null) {
		$this->db->limit($limit,$offset);
		return $this->db->get($this->_table)->result();
	}

	function total_data($conditions=null) {
		return $this->db->get($this->_table)->num_rows();
	}

	function get_data($id) {
		return $this->db->get_where($this->_table, array('id_post'=>$id))->row();
	}

	function save($id=null) {
		// Upload
		$path = './assets/uploads/post/';
		$image = Sys::_upload($path,'image','file_name');

		$data = $_POST['Posts'];
		$data['image']		= str_replace('./', '', $path).$image;
		$data['id_user']	= $this->session->userdata('id_user');
		$data['post_date']	= convert_date($_POST['Posts']['post_date']);
		$data['status']		= 1;

		if($id !=''){
			$data['post_update']	= gmt('datetime');

			$this->db->where('id_post',$id);
			$result = $this->db->update($this->_table, $data);
		}else{
			$result = $this->db->insert($this->_table, $data);
		}
		return $result;
	}

	function delete($id) {
		$this->db->where('id_post', $id);
		return $this->db->delete($this->_table);
	}
}

?>