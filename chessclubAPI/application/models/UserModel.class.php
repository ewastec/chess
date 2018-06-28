<?php
class UserModel
{
    protected $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function checkEmail($email)
    {
        //var_dump($email); die;
        $sql = "SELECT * FROM `users` WHERE email = ?";
        $result = $this->db->query($sql, [$email]);
        return $result;
    }
    public function registerUser($form)
    {        
        // var_dump($form); die;
        $sql = 'INSERT INTO `users`(`first_name`, `last_name`, `email`, `tel`, `password`, `user_photo`, `role`) VALUES (?, ?, ?, ?, ?, ?, ?)';		
        $lastId = $this->db->executeSql($sql, $form);         
        return $lastId;       
    }
    public function loginUser($form)
    {
        $sql = "SELECT * FROM `users` WHERE email = ? AND password = ?";
        $result = $this->db->queryOne($sql, $form);
        //var_dump($result); die();
        return $result;
    }
    public function editUserAccount($userId)
    {
        $sql = "UPDATE `users` SET `first_name`=?,`last_name`=?,`email`=?, `tel`=?, `password`=?, `user_photo`=?, `role`=? WHERE id = ?";
        $result = $this->db->query($sql, $userId);
    }
}