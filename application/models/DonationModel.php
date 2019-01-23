<?php

class DonationModel extends CI_Model
{
	public function getDonationSum()
	{
		$data = $this->db->select('SUM(sum) as sum')->from('donations')->get()->row()->sum;
		return $data;
	}

	public function setDonationSum($sum) {
		$this->db->insert('donations', ['sum' => $sum]);
	}
}
