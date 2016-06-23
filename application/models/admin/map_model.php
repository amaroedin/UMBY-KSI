<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
program	: Map_model model
author 	: Amarudin M (amarudhien@gmail.com)
@version: 1.0, 31 Desember 2014
*/

class Map_model extends CI_Model
{
	var $_table = 'map';

	function get_data() {
		$this->db->limit(1);
		return $this->db->get_where($this->_table)->row();
	}

	function save($id=null) {
		$data = $_POST['Map'];

		if($id !=''){
			$this->db->where('id_map',$id);
			$result = $this->db->update($this->_table, $data);
		}else{
			$result = $this->db->insert($this->_table, $data);
		}
		return $result;
	}
}

?>