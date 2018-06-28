<?php 
class FormValidation
{
    public function ifIsEmpty($formFields)
    {
        $form = array_values($formFields);
        foreach($form as $x)
        {
            if(empty($x))
            {
                $errorEmpty = "This cant be empty";
                throw new Exception($errorEmpty);
            }
        }
        return true;
    }
    public function ifPasswordMatch($formFields)
    {
        if($formFields['password'] !== $formFields['password2'])
        {
            $passwordError = "Password has to match";
            throw new Exception($passwordError);
        }
        return true;
    }
    public function validateEmail($formFields)
    {
        if (filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            return true;
        }else{
            $emailError = "Email not valid";
            throw new Exception($emailError);
        }
    }
    public function isValid($formFields)
    {
        return $this->ifIsEmpty($formFields);
        return $this->ifPasswordMatch($formFields);
        return $this->validateEmail($formFields);
    }
}