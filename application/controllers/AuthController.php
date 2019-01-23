<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthController extends CI_Controller
{
	public function login() {
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: *");
		header("Access-Control-Allow-Headers: *");

		if($_SERVER['REQUEST_METHOD'] === "OPTIONS")
			return true;

		$request_body = file_get_contents('php://input');
		$data = json_decode($request_body);

		if (!$data) {
			header("HTTP/1.1 401 Unauthorized");
			return false;
		}

		$this->load->model('authModel', 'a_model');
		echo json_encode($this->a_model->login($data));
	}
}
