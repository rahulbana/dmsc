<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	function __construct(){
        parent::__construct();
    }
	public function index(){
		if ($this->session->userdata('user')) {
	        $this->load->view('home_view');
	    } else {
	        redirect('/user/login');
	    }
	}
}
