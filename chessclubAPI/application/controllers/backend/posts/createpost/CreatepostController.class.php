<?php

class CreatepostController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
		$blogmodel = new BlogModel();
		$articles = $blogmodel->getAllArticles();
		return ['articles' => $articles];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */
		//var_dump($formFields); var_dump($_FILES); die;
		$userSession = new UserSession();
		$blogModel = new BlogModel();
		try{
			$path = "/uploads/articleMainPhoto";
			$pathInfo = $http->moveUploadedFile('fileToUpload', $path );
			$likes = '0';
			$nolikes = '0';
			$user_id = $userSession->getUserId();
			$form = [
				$user_id,
				$formFields['title'],
				$formFields['editor1'],
				$likes,
				$nolikes,
				$pathInfo,
				$formFields['author']
			];
			//var_dump($form); die;
			$blogModel->createArticle($form);

		}catch (Exception $e){
			echo $e->getMessage();
			exit();
			$http->redirectTo('/backend');
		}
    }
}