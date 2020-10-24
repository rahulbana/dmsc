<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	function __construct(){
        parent::__construct();
		$this->load->model('User_model');
    }
	public function index(){	
		$res = $this->User_model->getUsers();
		print_r($res);
		$this->load->view('login_view');
	}
	public function login(){	
		if ($this->input->post()){
			$res = $this->User_model->islogin();
			if($res == 1){
				$this->session->set_userdata(array('user'=>$this->input->post('email'))); 	
				redirect('/');
			}else{
				$this->data['message'] = 'username or password is incorrect!';
				$this->load->view('login_view', $this->data);
			}
		}else{
			$this->load->view('login_view');
		}
	}

	public function signup(){	
		if ($this->input->post()){
			if(!$this->User_model->isUserExist($this->input->post('email'))){
				$res = $this->User_model->register();
				if($res){ 	
					redirect('/user/thanks');
				}else{
					$this->data['message'] = 'username or password is incorrect!';
					$this->load->view('signup_view', $this->data);
				}
			}else{
				$this->data['message'] = 'username already exist';
				$this->load->view('signup_view', $this->data);
			}
		}else{
			$this->load->view('signup_view');
		}
	}
	public function thanks(){	
		$this->load->view('thanks_view');
	}
	public function logout(){
		$this->session->unset_userdata('user');  
        redirect("user/login");  
	}
}
