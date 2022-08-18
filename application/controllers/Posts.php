<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Posts extends CI_Controller {


    public function index() {
		$data = [
			'konten' => 'welcome_message',
			'title' => 'Home',
		];
		$this->load->view('template', $data);
	}


    public function all() {
        $data = [
			'konten' => 'posts/all',
			'title' => 'All Posts',
		];
		$this->load->view('template', $data);
    }


    public function new() {
        $data = [
			'konten' => 'posts/new',
			'title' => 'New Posts',
		];
		$this->load->view('template', $data);
    }


}
