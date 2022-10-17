<?php

class AuthHelper {


    public function checkLoggedIn() {
        session_start();
        if (!isset($_SESSION['IS_LOGGED'])) {
            header("Location: " . BASE_URL . 'login');

            die();
        }
    } 

    function status() {
        session_start();
        if (isset($_SESSION['IS_LOGGED'])) {
            return true;
        }
        return false;
    }
}