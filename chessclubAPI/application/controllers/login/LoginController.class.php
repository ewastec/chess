<?php

class LoginController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */
		//REGISTER ___><
		if(isset($formFields['firstName']))
		{
			//var_dump($formFields); die;
			$validateForm = new FormValidation();
			try
			{
				$validateForm->isValid($formFields);
				if($formFields['password']){
					$formFields['password'] = password_hash($formFields['password'], PASSWORD_BCRYPT);
				}
				//var_dump($formFields); die;
				// upload file php
				$path = "/uploads/usersPhoto";
				//var_dump($formFields);
				//var_dump($_FILES);
				$pathInfo = $http->moveUploadedFile('fileToUpload', $path );
				
				//var_dump($pathInfo); die;
				//get values from $formFields
				$form = array_values($formFields);
				$splice = array_splice($form, 5, 1);
				array_push($form, $pathInfo);
				//var_dump($form); die;
				// check if email exist in db
				$email = $formFields['email'];
				$userMod = new UserModel();
				$numberOfUsers = $userMod->checkEmail($email);
				//var_dump(count($numberOfUsers)); die;
					if(count($numberOfUsers) > 0)
					{
						$message = 'user with this email addresse alredy exist !!!';
						return ['message' => $message];
					}else{
						//var_dump($form); die;
						//push role on the end of array
						$role = 'admin';
						array_push($form, $role);
						//var_dump($form); die;
						//register user		
						$userMod->registerUser($form);
						//$http->redirectTo('/login');
						$message = 'thank you for registering with us !!! You can login now !!!';
						return ['message' => $message];
					}
			
			}catch (Exception $e)
			{
				echo $e->getMessage();
				exit();
				$http->redirectTo('/');
			}
		}else{
			try{
				//get values from $formFields
				$form = array_values($formFields);
				//var_dump($formFields); die;
				//check if email and password exists in db
				$userMod = new UserModel();
				$numberOfUsers = $userMod->checkEmail($formFields['email']);

				//var_dump(count($numberOfUsers)); die; 
				//if user exist check the password 
				//else message error there is no user with this email
				if(count($numberOfUsers) > 0)
				{	
					//check the password
					//var_dump($numberOfUsers[0]['password']); die;
					$validPassword = password_verify($formFields['password'], $numberOfUsers[0]['password']);
					//var_dump($validPassword); die;
					// if password match create session 
					if($validPassword)
					{
						$message = 'You are logged in !!!';
						$userId = $numberOfUsers[0]['id'];
						$firstName = $numberOfUsers[0]['first_name'];
						$lastName = $numberOfUsers[0]['last_name'];
						$email = $numberOfUsers[0]['email'];
						$tel = $numberOfUsers[0]['tel'];
						$userPhoto = $numberOfUsers[0]['user_photo'];
						$role = $numberOfUsers[0]['role'];
						//var_dump($userId); die;
						$session = new UserSession();
						$session->create($userId, $firstName, $lastName, $email, $tel, $userPhoto, $role);
					}					
				}
				else
				{
					$message = 'wrong password or email';
					return ['message' => $message];
				}
				//return ['message' => $message];

				$http->redirectTo('account');
			}catch (Exception $e)
			{
				echo $e->getMessage();
				exit();
				$http->redirectTo('/');
			}			
		}
    }
}