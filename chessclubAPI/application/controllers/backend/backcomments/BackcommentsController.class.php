<?php

class BackcommentsController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
        $commentsModel = new CommentsModel();
        $allCommentsStatusWaiting = $commentsModel->getAllCommentsStatusWaiting();
        //var_dump($allCommentsStatusWaiting); die;
        return ['allCommentsStatusWaiting' => $allCommentsStatusWaiting];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */
        $commentsModel = new CommentsModel();

        //var_dump($formFields['send']); die;
        if(isset($formFields['send']) && $formFields['send'] == 'acceptComment')
        {
            try
            { 
                $status = 'published';
                $id = $formFields['comment_id'];
                $form = [$status, $id];                       
                //var_dump($form); die;
                $commentsModel->updateStatus($form);
                //(`article_id`, `user_id`, `body`, `status`
            
            }catch (Exception $e)
            {
                echo $e->getMessage();
                exit();
                $http->redirectTo('/');
            }
        }
    }   
}