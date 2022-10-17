<?php

require_once './app/models/categories.model.php';
require_once './app/views/categories.view.php';
require_once './app/helpers/auth.helper.php';

class CategoriesController {
    private $view;
    private $model;
    private $authHelper;

    public function __construct()
    {
        $this->view = new CategoriesView();
        $this->model = new CategoriesModel();
        $this->authHelper = new AuthHelper();
    }

    function showCategories() {
        $categories = $this->model->getAllCategories();
        $status = $this->authHelper->status();
        $this->view->showCategories($categories, $status);
    }

    function addNewCategory() {
        $this->authHelper->checkLoggedIn();
        if (!empty($_POST['category'])) {
            $category = $_POST['category'];
            $this->model->add($category);
            header("Location: " . "categories"); 
        } else {
            header("Location: " . "categories"); 

        }
    }

    function deleteCategory($id) {
        $this->authHelper->checkLoggedIn();
        $this->model->deleteById($id);
        header("Location: " . BASE_URL); 

    }

    function showEditFormCategory($id) {
        $this->authHelper->checkLoggedIn();
        $category = $this->model->getById($id);
        $this->view->showEditForm($category);
    }

    function updateCategoryById($id) {
        $this->authHelper->checkLoggedIn();
        if(!empty($_POST['Ncategory'])) {
            $category = $_POST['Ncategory'];
            $this->model->update($category, $id);

        } 
        header("Location: " . BASE_URL); 

    }
}