{include file="header.tpl"}


<div class="categories-table">
<h1> Tipos de Perifericos </h1>
<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Tipo</th>
        </tr>
    </thead>
    <tbody>
            <tr>
                <th scope="row">~</th>
                <td> {$category->id_tipo_periferico} </td>
            </tr>
    </tbody>
</table>


<form action="updateCategory/{$category->id}" method="POST" class="mt-3 mb-2">
    <div class="form-floating mb-1 ">
        <input type="text" name="Ncategory" class="form-control" id="floatingInput" placeholder="Categoria">
        <label for="floatingInput">{$category->id_tipo_periferico}</label>
    </div>
 
    
    <button class="btn btn-primary" type="submit">Editar Categoria</button>
</form>

{include file="footer.tpl"}