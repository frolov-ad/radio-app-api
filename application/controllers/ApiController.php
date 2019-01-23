<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ApiController extends CI_Controller
{
	public function getList()
	{
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: *");
		header("Access-Control-Allow-Headers: *");

		if($_SERVER['REQUEST_METHOD'] === "OPTIONS")
			return true;

		$request_body = file_get_contents('php://input');
		$data = json_decode($request_body);

		if($data->token !== NULL) {
			$secretKey = $this->config->item('secret_key');
			$token = jwt::decode($data->token,$secretKey,true);
		}

		$user_id = isset($token->id) ? $token->id : false;
		$this->load->model('TopListModel', 't_model');

		$data = $this->t_model->getTopTrack($user_id);

		echo json_encode($data);
	}

	public function setTrackLike()
	{
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: *");
		header("Access-Control-Allow-Headers: *");

		if($_SERVER['REQUEST_METHOD'] === "OPTIONS")
			return true;

		$request_body = file_get_contents('php://input');
		$data = json_decode($request_body);

		$this->load->model('TopListModel', 't_model');

		$this->t_model->setTrackLike($data);
	}

	public function getDonationSum() {
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: *");
		header("Access-Control-Allow-Headers: *");

		if($_SERVER['REQUEST_METHOD'] === "OPTIONS")
			return true;

		$this->load->model('DonationModel', 'd_model');

		$data = $this->d_model->getDonationSum();

		echo json_encode($data);
	}

	public function setDonationSum() {
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: *");
		header("Access-Control-Allow-Headers: *");

		if($_SERVER['REQUEST_METHOD'] === "OPTIONS")
			return true;

		$request_body = file_get_contents('php://input');
		$sum = json_decode($request_body);

		$this->load->model('DonationModel', 'd_model');

		$data = $this->d_model->setDonationSum($sum);
	}

}
