<?php
class BlogModel
{
    protected $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function createArticle($form)
    {
        $sql = 'INSERT INTO `articles`(`user_id`, `title`, `body`, `likes`, `nolikes`, `article_main_photo`, `author`) VALUES (?, ?, ?, ?, ?, ?, ?)';
        $lastId = $this->db->executeSql($sql, $form);         
        return $lastId; 
    }

    public function getAllArticles()
    {
        $sql = 'SELECT * FROM articles ORDER BY creation_date  DESC';
        $form = [];
        $results = $this->db->query($sql, $form);         
        return $results; 
    }

    public function getOneArticle($id)
    {
        $sql ='SELECT * FROM articles WHERE id = ?';
        $result = $this->db->queryOne($sql, $id);

        return $result;
    }

    public function editArticle($form)
    {
        $sql = 'UPDATE `articles` SET `title`=?,`body`=?,`article_main_photo`=?,`author`=? WHERE id = ?';
        $result = $this->db->executeSql($sql, $form); 
    }
    public function deleteArticle(){}

}