<?php

class OnepostController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
		//var_dump($queryFields); die;
		$blogModel = new blogModel();
		if(isset($queryFields['article_id'])){
			$oneArticle = $blogModel->getOneArticle([$queryFields['article_id']]);

			//var_dump($oneArticle);
			return['oneArticle' => $oneArticle];
		}
		$session = new UserSession();
		if($session->isAuthenticated())
		{
			return ['session' => $session];
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
		var_dump($formFields);
		if(isset($formFields['logout']))
		{
			$session = new UserSession();
			$session->destroy();
		}
    }
}