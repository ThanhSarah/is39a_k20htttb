<?php
class M_san_pham extends CI_Model {
        public function get_san_pham()
        {
                $query = $this->db->query("
                        SELECT *
                        FROM tbl_san_pham
                ");

                return $query->result();
        }

        public function insert_san_pham($data)
        {
                $this->db->insert('tbl_san_pham', $data);
        }

        public function update_san_pham()
        {
        }

        public function delete_san_pham()
        {
        }
}
