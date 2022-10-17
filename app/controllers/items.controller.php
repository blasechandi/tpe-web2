<?php
    require_once 'app/views/items.view.php'; 
    require_once 'app/models/items.model.php'; 
    require_once 'app/helpers/auth.helper.php';

    class ItemsController {
        private $view;
        private $model;
        private $authHelper;

        public function __construct()
        {
            $this->view = new ItemsView();
            $this->model = new ItemsModel();
            $this->authHelper = new AuthHelper();
        }

        public function showInicio() {
            $perifericos = $this->model->getAllPerifericos();
            $status = $this->authHelper->status();
            $categories = $this->model->getAllCategories();
            $this->view->showInicio($perifericos, $status, $categories);

        }

        public function addPeriferico() {
            $this->authHelper->checkLoggedIn();
            $tipo = $_POST['tipo'];
            $control = $this->model->verificarExisteTipo($tipo);
            if (!empty($control)) {
                $marca = $_POST['marca'];
                $nombre = $_POST['nombre'];
                $color = $_POST['color'];
                $descripcion = $_POST['descripcion'];
                $precio = $_POST['precio'];
                $this->model->add($marca, $nombre, $color, $descripcion, $tipo, $precio);
                header("Location: " . BASE_URL); 
            } else {
                header("Location: " . BASE_URL); 
            }

        }
        public function showEditForm($id) {
            $this->authHelper->checkLoggedIn();
            $periferico = $this->model->getPerifericoById($id);
            $this->view->showEditInputs($periferico);
        }

        public function editPeriferico($id) {
            $this->authHelper->checkLoggedIn();
            $marca = $_POST['Nmarca'];
            $nombre = $_POST['Nnombre'];
            $color = $_POST['Ncolor'];
            $descripcion = $_POST['Ndescripcion'];
            $precio = $_POST['Nprecio'];
            $tipo = $_POST['Ntipo'];
            $this->model->editPerifericoById($marca, $nombre, $color, $descripcion, $precio, $tipo, $id);
            header("Location: " . BASE_URL); 

        }

        public function delete($id) {
            $this->authHelper->checkLoggedIn();
            $this->model->delete($id);
            header("Location: " . BASE_URL); 

        }

    }



