<?php
require_once './app/controllers/items.controller.php';
require_once './app/controllers/auth.controller.php';
require_once './app/controllers/categories.controller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'inicio'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

// tabla de ruteo
switch ($params[0]) {

// Casos relacionados al Login
    case 'login':
        $authController = new AuthController();
        $authController->showLogin();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser();
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout();

// Casos relacionados al inicio y ABM de items.

    case 'inicio':
        $itemsController = new ItemsController();
        $itemsController->showInicio();
        break;
    case 'add':
        $itemsController = new ItemsController();
        $itemsController->addPeriferico();
        break;
    case 'delete':
        $itemsController = new ItemsController();
        $id = $params[1];
        $itemsController->delete($id);
    case 'edit':
        $itemsController = new ItemsController();
        $id = $params[1];
        $itemsController->showEditForm($id);
        break;

    case 'editPeriferico':
        $itemsController = new ItemsController();
        $id = $params[1];
        $itemsController->editPeriferico($id);
        break;
// Casos relacionados a Categorias y su ABM

    case 'categories':
        $categoriesController = new CategoriesController();
        $categoriesController->showCategories();
        break;
    case 'addCategory': 
        $categoriesController = new CategoriesController();
        $categoriesController->addNewCategory();
        break;
    case 'deleteCategory':
        $categoriesController = new CategoriesController();
        $id = $params[1];
        $categoriesController->deleteCategory($id);
        break;
    case 'editCategory':
        $categoriesController = new CategoriesController();
        $id = $params[1];
        $categoriesController->showEditFormCategory($id);
        break;
    case 'updateCategory':
        $categoriesController = new CategoriesController();
        $id = $params[1];
        $categoriesController->updateCategoryById($id);
        break;
    default:
        echo ('404 Page not found');
        break;
}
