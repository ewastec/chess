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
        $sql = 'SELECT * FROM articles';
        $form = [];
        $results = $this->db->query($sql, $form);         
        return $results; 
    }

    public function updateArticle(){}
    public function deleteArticle(){}

}