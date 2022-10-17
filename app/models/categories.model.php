<?php

class CategoriesModel {

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_perifericos;charset=utf8', 'root', '');
    }

    function getAllCategories() {
        $query = $this->db->prepare("SELECT * FROM tipo_periferico");
        $query->execute();

        $categories = $query->fetchAll(PDO::FETCH_OBJ);
        return $categories;
    }

    function add($category) {
        $query = $this->db->prepare("INSERT INTO tipo_periferico (id_tipo_periferico) VALUES (?) ");
        $query->execute([$category]);
    }

    function deleteById($id){
        $query = $this->db->prepare("DELETE FROM tipo_periferico WHERE id = ?");
        $query->execute([$id]);
    }

    function getById($id){ 
        $query = $this->db->prepare("SELECT * FROM tipo_periferico WHERE id = ?");
        $query->execute([$id]);

        $category = $query->fetch(PDO::FETCH_OBJ);
        return $category;
    }
    function update($category, $id) {
        $query = $this->db->prepare("UPDATE tipo_periferico SET id_tipo_periferico = ? WHERE id = ?");
        $query->execute([$category, $id]);
    }
}