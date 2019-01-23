<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TopList extends CI_Controller
{
	public function index($type) {
		if($type === 'topTrack')
			$data = json_decode(file_get_contents("https://itunes.apple.com/us/rss/topsongs/limit=100/json"));

		if(!$data)
			return;

		$this->load->model('TopListModel', 't_model');
		$this->t_model->saveTrackList($data->feed->entry);
	}
}
