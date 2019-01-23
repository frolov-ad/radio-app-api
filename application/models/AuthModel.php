<?php

class AuthModel extends CI_Model
{
	public function login($data)
	{
		$name = $data->name;
		$password = $data->password;

		$check = $this->db->get_where('user', ['name'=> $name, 'password' => $password]);

		if(!$check->num_rows()) {
			header("HTTP/1.1 401 Unauthorized");
			return false;
		}

		$secretKey = $this->config->item('secret_key');
		$jwt['name'] = $name;
		$jwt['id'] = $check->row()->id;
		$token = jwt::encode($jwt, $secretKey);

		return $token;
	}


}
