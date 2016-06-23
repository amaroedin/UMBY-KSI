<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: Location_model model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 31 Desember 2014
*/

class Location_model extends CI_Model
{
	var $_table = 'location';

	function list_data($limit=10,$offset=0, $conditions=null) {
		$this->db->limit($limit,$offset);
		return $this->db->get($this->_table)->result();
	}

	function total_data($conditions=null) {
		return $this->db->get($this->_table)->num_rows();
	}

	function get_data($id) {
		return $this->db->get_where($this->_table, array('id_location'=>$id))->row();
	}

	function save($id=null) {
		// Upload
		$path = './assets/uploads/location/';
		$image = Sys::_upload($path,'image','file_name');

		$data = $_POST['Location'];
		$data['image']	= str_replace('./', '', $path).$image;

		if($id !=''){
			$this->db->where('id_location',$id);
			$result = $this->db->update($this->_table, $data);
		}else{
			$result = $this->db->insert($this->_table, $data);
		}
		return $result;
	}

	function delete($id) {
		$this->db->where('id_location', $id);
		return $this->db->delete($this->_table);
	}
}

?>