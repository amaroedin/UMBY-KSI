<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: Pages_model model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 26 Desember 2014
*/

class Pages_model extends CI_Model
{
	var $_table = 'pages';

	function list_data($limit=10,$offset=0, $conditions=null) {
		$this->db->limit($limit,$offset);
		return $this->db->get($this->_table)->result();
	}

	function total_data($conditions=null) {
		return $this->db->get($this->_table)->num_rows();
	}

	function get_data($id) {
		return $this->db->get_where($this->_table, array('id_page'=>$id))->row();
	}

	function save($id=null) {
		// Upload
		$path = './assets/uploads/page/';
		$image = Sys::_upload($path,'image','file_name');

		$data = $_POST['Pages'];
		$data['image']	= str_replace('./', '', $path).$image;
		$data['id_user']= $this->session->userdata('id_user');

		if($id !=''){
			$data['date_update']	= gmt('datetime');
			
			$this->db->where('id_page',$id);
			$result = $this->db->update($this->_table, $data);
		}else{
			$result = $this->db->insert($this->_table, $data);
		}
		return $result;
	}

	function delete($id) {
		$this->db->where('id_page', $id);
		return $this->db->delete($this->_table);
	}
}

?>