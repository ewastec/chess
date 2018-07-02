<?php

class PostController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
		$session = new UserSession();
		$blogmodel = new BlogModel();
		$commentsModel = new CommentsModel();

		$articles = $blogmodel->getAllArticles();
		

		if(isset($queryFields['post_id'])){
			$oneArticle = $blogmodel->getOneArticle([$queryFields['post_id']]);
			$commentsForOneArticle = $commentsModel->getAllCommentsForOneArticle([$queryFields['post_id']]);
			return ['articles' => $articles, 'oneArticle' => $oneArticle, 'commentsForOneArticle' => $commentsForOneArticle ];
		}elseif($session->isAuthenticated())
		{
			return ['session' => $session, 'articles' => $articles, 'oneArticle' => $oneArticle, 'commentsForOneArticle' => $commentsForOneArticle];
		}else{

		}
			
		
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */
		//var_dump($formFields); die;
		$validateForm = new FormValidation();
		$commentsModel = new CommentsModel();
		try
		{
			$validateForm->isValid($formFields);
						
			//var_dump($formFields); die;
			//get values from $formFields
			$form = array_values($formFields);
			$status = 'waiting';
			array_push($form, $status);

			//var_dump($form); die;
			$commentsModel->createComment($form);
			//(`article_id`, `user_id`, `body`, `status`)


		
		}catch (Exception $e)
		{
			echo $e->getMessage();
			exit();
			$http->redirectTo('/');
		}
    }
}