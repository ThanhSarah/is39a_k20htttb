<?php
class M_lien_he extends CI_Model {
        public function get_lien_he()
        {
                $query = $this->db->query("
                        SELECT *
                        FROM tbl_lien_he
                ");

                return $query->result();
        }

        public function insert_lien_he($data)
        {
                $this->db->insert('tbl_lien_he', $data);
        }

        public function update_lien_he()
        {
        }

        public function delete_lien_he()
        {
        }
}
