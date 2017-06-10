<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
		parent::__construct();
		header('Access-Control-Allow-Origin: *'); 
		$this->load->model('Admin_model');
		$this->load->model('Categories_model');
	}	
	
	public function index()
	{
		echo "hello";
	}
	
	public function login(){
		
		//declare array to get username and password
		$value = array();
		$value["username"] = $this->input->get_post("username");
		$value["password"] = $this->input->get_post("password");
		$data = array();
		
		if($dataValues = $this->Admin_model->getWhere($value)){
			
			$data["status"] = 200;
			$data["message"] = "Logged Successfully";
			$data["data"] = $dataValues;;
		}else{
			$data["status"] = 100;
			$data["message"] = "Wrong username/password";			
		}
		
		echo json_encode($data);
	}
	
	public function getCategories(){
		$data = array();
		$data["status"] = 200;

		if($data["data"] = $this->Categories_model->getdata()){
			
		}else{
			$data["data"][0]["queue_category_name"] = "No data found"; 
		}
		
		echo json_encode($data);
	}

	public function createqueue(){
		
		$value = array();
		$value["category"] = $this->input->get_post("category");
		$value["city"] = $this->input->get_post("city");
		$value["close_day"] = $this->input->get_post("closeDay");
		$value["close_time"] = $this->input->get_post("endTime");
		$value["handler_password"] = $this->input->get_post("handlerPassword");
		$value["handler_username"] = $this->input->get_post("handlerUsername");
		$value["queue_name"] = $this->input->get_post("queueName");
		$value["start_time"] = $this->input->get_post("startTime");
		$value["state"] = $this->input->get_post("state");
		
		print_r($value);
	}
}
