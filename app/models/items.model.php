<?php

class ItemsModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_perifericos;charset=utf8', 'root', '');
    }

    public function getAllPerifericos()
    {
        $query = $this->db->prepare("SELECT * FROM periferico");
        $query->execute();

        $perifericos = $query->fetchAll(PDO::FETCH_OBJ);
        return $perifericos;
    }

    public function getPerifericoById($id)
    {
        $query = $this->db->prepare("SELECT * FROM periferico WHERE id = ?");
        $query->execute([$id]);

        $periferico = $query->fetch(PDO::FETCH_OBJ);
        return $periferico;
    }

    public function getAllCategories() {
        $query = $this->db->prepare("SELECT * FROM tipo_periferico");
        $query->execute();

        $categories = $query->fetchAll(PDO::FETCH_OBJ);
        return $categories;
    }

    public function add($marca, $nombre, $color, $descripcion, $tipo, $precio)
    {
        $query = $this->db->prepare("INSERT INTO periferico (marca, nombre, color, descripcion, precio, id_tipo_periferico) VALUES (?, ?, ?, ?, ?, ?) ");
        $query->execute([$marca, $nombre, $color, $descripcion, $precio, $tipo]);
    }

    public function delete($id)
    {
        $query = $this->db->prepare("DELETE FROM periferico WHERE id = ?");
        $query->execute([$id]);
    }

    public function editPerifericoById($marca, $nombre, $color, $descripcion, $precio, $tipo, $id)
    {
        $query = $this->db->prepare("UPDATE periferico SET marca= ?,nombre= ?, color= ?, descripcion= ?, precio= ?, id_tipo_periferico=? WHERE id = ? ");
        $query->execute([$marca, $nombre, $color, $descripcion, $precio, $tipo, $id]);
    }

    public function verificarExisteTipo($tipo) {
        $query = $this->db->prepare("SELECT * FROM tipo_periferico WHERE id_tipo_periferico = ?");
        $query->execute([$tipo]);

        $existeTipo = $query->fetch(PDO::FETCH_OBJ);
        return $existeTipo;

    }
}
