<?php
class m_user extends CI_Model {
        public function check_user($email, $password)
        {
                $query = $this->db->query("
                        SELECT *
                        FROM tbl_user
                        WHERE ten_tai_khoan='".$email."' AND mat_khau='".$password."'
                ");

                return $query->num_rows();
        }

        public function get_user()
        {
                $query = $this->db->query("
                        SELECT *
                        FROM tbl_user
                ");

                return $query->result();
        }

        public function insert_user()
        {
        }

        public function update_user()
        {
        }

        public function delete_user()
        {
        }
}