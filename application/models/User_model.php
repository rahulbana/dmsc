<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model {
  function __constuct(){
    parent::__constuct(); // Call the Model constructor
  }

  function getUsers(){
    $response = array();

    $q = $this->db->get('users');
    $response = $q->result_array();

    return $response;
  }

  function isUserExist($username){
    $response = array();

    $this->db->select('*');
	$this->db->from('users');
	$this->db->where('username',$username);
	$q=$this->db->get();
	if($q->num_rows() > 0){
		return 1;
	}else{
		return 0;
	}
  }

  function islogin(){
    $response = array();

    $this->db->select('*');
	$this->db->from('users');
	$this->db->where('username',$this->input->post('email'));
	$this->db->where("password",$this->input->post('password'));
	$q=$this->db->get();
	if($q->num_rows() > 0){
		return 1;
	}else{
		return 0;
	}
  }

  function register(){
	$username = trim(xss_clean($this->input->post('email')));
    $password = trim(xss_clean($this->input->post('password')));
    $data = array(
        'username'=>$username,
        'password'=>$password
    );

    $this->db->insert('users',$data);
    return ($this->db->affected_rows() != 1) ? false : true;
  }

}