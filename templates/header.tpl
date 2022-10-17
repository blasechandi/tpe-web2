<!DOCTYPE html>
<html lang="en">

<head>

    <base href="{BASE_URL}">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://kit.fontawesome.com/6d62f3b5bd.js" crossorigin="anonymous"></script>
    

    <title>TP Especial</title>
</head>

<body>
    <header>

        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="inicio">Perifericos EXA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav d-flex">
                        <li class="nav-item p-2">
                            <a class="nav-link" aria-current="page" href="inicio">Inicio</a>
                        </li>
                        <li class="nav-item p-2">
                            <a class="nav-link" href="categories">Categorias</a>
                        </li>
                        {if !isset($smarty.session.USER_ID)}
                        <li class="nav-item ml-auto p-2">
                            <a class="nav-link" href="login">Login <i class="fa-solid fa-user"></i> </a>
                        </li>
                        {else}
                            <li class="nav-item ml-auto p-2">
                            <a class="nav-link" href="logout">Logout ADMIN <i class="fa-solid fa-user"></i> </a>
                        </li>
                        {/if}
                    </ul>
                </div>
            </div>
        </nav>

    </header>
<!-- Contenido de la pagina-->
    <main class="container">