<?php
class m_tin_tuc extends CI_Model {
        public function get_tin_tuc()
        {
                $query = $this->db->query("
                        SELECT *
                        FROM tbl_tin_tuc
                ");

                return $query->result();
        }

        public function insert_tin_tuc($data)
        {
                $this->db->insert('tbl_tin_tuc', $data);
        }

        public function update_tin_tuc()
        {
        }

        public function delete_tin_tuc()
        {
        }
}