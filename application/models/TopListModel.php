<?php

class TopListModel extends CI_Model
{
	public function saveTrackList($data)
	{
		$category = [];
		$result = [];

		foreach ($data as $value) {
			if( ! array_search($value->category->attributes->{'im:id'}, array_column($category, 'id'))
				&& array_search($value->category->attributes->{'im:id'}, array_column($category, 'id')) !== 0) {
					array_push($category, [
						'id' => $value->category->attributes->{'im:id'},
						'name' => $value->category->attributes->label
					]);
			}

			array_push($result, [
				'id' => $value->id->attributes->{'im:id'},
				'name' => $value->{'im:name'}->label,
				'artist' => $value->{'im:artist'}->label,
				'album' => $value->{'im:collection'}->{'im:name'}->label,
				'category_id' => $value->category->attributes->{'im:id'},
				'img' => $value->{'im:image'}[1]->label
			]);
		}

		$this->db->empty_table('track');
		$this->db->insert_batch('track', $result);

		foreach ($category as $value) {
			$this->db->replace('category', $value);
		}
	}

	public function getTopTrack($user_id) {
		$data = $this->db->select('t.*, c.name as category_name');
		if($user_id)
			$data = $this->db->select('(CASE WHEN tl.id IS NOT NULL THEN 1 END) as track_like');
		$data = $this->db->from('track t');
		$data = $this->db->join('category c', 't.category_id = c.id');
		if($user_id)
			$data = $this->db->join('track_like tl', "t.id = tl.track_id AND user_id = $user_id", 'left', false);
		$data = $this->db->order_by('position')
			->get()->result();
		return $data;
	}

	public function setTrackLike($data) {
		$token = false;

		if($data->token !== NULL) {
			$secretKey = $this->config->item('secret_key');
			$token = jwt::decode($data->token,$secretKey,true);
		}

		if (!$token) {
			header("HTTP/1.1 401 Unauthorized");
			return false;
		}

		if($data->type)
			$this->db->insert('track_like', ['user_id' => $token->id, 'track_id' => $data->trackId]);
		else
			$this->db->delete('track_like', ['user_id' => $token->id, 'track_id' => $data->trackId]);
	}
}
