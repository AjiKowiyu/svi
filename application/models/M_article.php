<?php

class M_article extends CI_Model {


    public function get_publish_entries() {
        return $this->db->get_where('posts', ['Status' => 'publish'])->result();
    }


    public function get_draft_entries() {
        return $this->db->get_where('posts', ['Status' => 'draft'])->result();
    }


    public function get_trash_entries() {
        return $this->db->get_where('posts', ['Status' => 'trash'])->result();
    }


    public function insert_entries($data) {
        return $this->db->insert('posts', $data);
    }


    public function trash_entries($id) {
        return $this->db->update('posts', ['Status' => 'trash'], ['Id' => $id]);
    }


    public function draft_entries($id) {
        return $this->db->update('posts', ['Status' => 'draft'], ['Id' => $id]);
    }


    public function publish_entries($id) {
        return $this->db->update('posts', ['Status' => 'publish'], ['Id' => $id]);
    }


    public function delete_entries($id) {
        return $this->db->delete('posts', ['Id' => $id]);
    }


    public function single_entries($id) {
        $query = $this->db->get_where('posts', ['Id' => $id]);
        if (count($query->result()) > 0) {
            return $query->row();
        }
    }


    public function update_entries($data) {
        return $this->db->update('posts', $data, ['Id' => $data['Id']]);
    }
}