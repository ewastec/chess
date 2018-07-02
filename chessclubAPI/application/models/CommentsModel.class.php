<?php
class CommentsModel
{
    protected $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function createComment($form)
    {
        $sql = 'INSERT INTO `comments`(`article_id`, `user_id`, `body`, `status`) VALUES (?, ?, ?, ?)';
        $lastId = $this->db->executeSql($sql, $form);  

        return $lastId; 
    }

    public function getAllCommentsForOneArticle($id)
    {
        $sql = 'SELECT c.body, c.creation_date, CONCAT(u.first_name, " ", u.last_name) AS author 
        FROM comments AS c
        INNER JOIN users AS u
        ON c.user_id = u.id
        WHERE c.article_id = ? 
        ORDER BY c.creation_date  DESC';

        $result = $this->db->query($sql, $id);

        return $result;
    }

    public function getAllCommentsStatusWaiting()
    {
        $form = ['waiting'];
        $sql = 'SELECT c.*, CONCAT(u.first_name, " ", u.last_name) AS author 
        FROM comments AS c
        INNER JOIN users AS u
        ON c.user_id = u.id
        WHERE c.status = ? 
        ORDER BY c.creation_date  ASC';

        $result = $this->db->query($sql, $form);

        return $result;
    }

    public function updateStatus($form)
    {
        $sql = 'UPDATE `comments` SET `status`=? WHERE id =?';
        $result = $this->db->executeSql($sql, $form);

        return $result;
    }


}