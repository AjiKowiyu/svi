<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends CI_Controller {


    public function __construct()
	{
		parent::__construct();
		$this-> load-> helper(['form', 'url']);
		$this-> load-> library(['form_validation']);
		$this-> load-> model('M_article');
	}


    public function index() {
		if ($_SERVER['REQUEST_METHOD'] == 'GET') {
			$publish    = $this-> M_article-> get_publish_entries();
			$draft      = $this-> M_article-> get_draft_entries();
			$trash      = $this-> M_article-> get_trash_entries();
            $respon     = [
                'publish' => $publish,
                'draft' => $draft,
                'trash' => $trash,
            ];
			echo json_encode($respon);
		}
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$form_validation = $this->form_validation;
            $input = $this->input;

            $form_validation-> set_rules('add_title', 'Title', 'required|trim|min_length[20]');
            $form_validation-> set_rules('add_content', 'Content', 'required|trim|min_length[200]');
            $form_validation-> set_rules('add_category', 'Category', 'required|trim|min_length[3]');
            $form_validation-> set_rules('add_status', 'Status', 'required|trim');

            if ($form_validation-> run() === false) {
                $data = [
                    'response'  => "error",
                    'message'   => validation_errors(),
                ];
            } else {
                $ajax_data = [
                    'Title'         => $input-> post('add_title'),
                    'Content'       => $input-> post('add_content'),
                    'Category'      => $input-> post('add_category'),
                    'Status'        => $input-> post('add_status'),
                    'Created_date'  => date('Y-m-d H:i:s'),
                ];

                if ($this-> M_article-> insert_entries($ajax_data)) {
                    $data = [
                        'response'	=> "success",
                        'message' 	=> "Data added successfully",
                    ];
                } else {
                    $data = [
                        'response'	=> "error",
                        'message'	=> "failed",
                    ];
                }
            }
            echo json_encode($data);
		}
	}


    public function trash() {
        $trash_id = $this-> input-> post('trash_id');
        if ($this-> M_article-> trash_entries($trash_id)) {
            $data = ['response' => "success"];
        } else {
            $data = ['response' => "error"];
        }
        echo json_encode($data);
	}


    public function draft() {
        $draft_id = $this-> input-> post('draft_id');
        if ($this-> M_article-> draft_entries($draft_id)) {
            $data = ['response' => "success"];
        } else {
            $data = ['response' => "error"];
        }
        echo json_encode($data);
	}


    public function publish() {
        $publish_id = $this-> input-> post('publish_id');
        if ($this-> M_article-> publish_entries($publish_id)) {
            $data = ['response' => "success"];
        } else {
            $data = ['response' => "error"];
        }
        echo json_encode($data);
	}


    public function edit() {
        $edit_id = $this-> input-> post('edit_id');
        if ($post = $this-> M_article-> single_entries($edit_id)) {
            $data = [
                'response' => "success",
                'post' => $post
            ];
        } else {
            $data = [
                'response' => "error",
                'message' => "failed"
            ];
        }
        echo json_encode($data);
    }


    public function update() {
        $form_validation = $this->form_validation;
        $input = $this->input;

        $form_validation-> set_rules('edit_title', 'Title', 'required|trim|min_length[20]');
        $form_validation-> set_rules('edit_content', 'Content', 'required|trim|min_length[200]');
        $form_validation-> set_rules('edit_category', 'Category', 'required|trim|min_length[3]');
        $form_validation-> set_rules('edit_status', 'Status', 'required|trim');

        if ($form_validation-> run() === false) {
            $data = [
                'response'  => "error",
                'message'   => validation_errors(),
            ];
        } else {
            $ajax_data = [
                'Id'            => $input-> post('edit_id_article'),
                'Title'         => $input-> post('edit_title'),
                'Content'       => $input-> post('edit_content'),
                'Category'      => $input-> post('edit_category'),
                'Status'        => $input-> post('edit_status'),
                'Updated_date'  => date('Y-m-d H:i:s'),
            ];

            if ($this-> M_article-> update_entries($ajax_data)) {
                $data = [
                    'response'	=> "success",
                    'message' 	=> "Data updated successfully",
                ];
            } else {
                $data = [
                    'response'	=> "error",
                    'message'	=> "failed",
                ];
            }
        }
        echo json_encode($data);
    }


}
