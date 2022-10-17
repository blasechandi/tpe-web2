<?php
require_once 'app/models/user.model.php';
require_once 'app/views/auth.view.php';

class AuthController {
    private $view;
    private $model;

    public function __construct()
    {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }

    function showLogin() {
        $this->view->showFormLogin();
    }

    function validateUser() {
        //guardo los datos del form
        $email = $_POST['email'];
        $password = $_POST['password'];

        //busco el user por email
        $user = $this->model->getUserByEmail($email);

        //verifico que sea correcto
        if ($user && password_verify($password, $user->password)){
            session_start();
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['USER_EMAIL'] = $user->email;
            $_SESSION['IS_LOGGED'] = true;
            
            header("LOCATION: " . BASE_URL);
        } else {
            $this->view->showFormLogin('Usuario y/o contraseña incorrectos o no existen.');
        }
    }

    function logout() {
        session_start();
        session_destroy();
        header("LOCATION: " . BASE_URL);
    }
    
}