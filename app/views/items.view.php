<?php
    // Aca va el requiere de Smarty.
    require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

    class ItemsView {
        private $smarty;
        
        public function __construct()
        {
            $this->smarty = new Smarty ();
        }

        function showInicio($perifericos, $status, $categories) {
            $this->smarty->assign('inicio', "Perifericos");
            $this->smarty->assign('perifericos', $perifericos);
            $this->smarty->assign('categories', $categories);
            $this->smarty->assign('status', $status);
            $this->smarty->display('inicio.tpl');
        }

        function showEditInputs($periferico) {
            $this->smarty->assign('periferico', $periferico);
            $this->smarty->display('edit-periferico.tpl');
        }

        function showFiltro($perifericos) {
            $this->smarty->assign('perifericos', $perifericos);

            $this->smarty->display('filtro.tpl');

        }
    }