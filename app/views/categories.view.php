<?php

require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class CategoriesView
{

    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }

    function showCategories($categories, $status) {
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('status', $status);
        $this->smarty->display('categories.tpl');
    }

    function showEditForm($category) {
        $this->smarty->assign('category', $category);
        $this->smarty->display('edit-category.tpl');
    }
}
