{include file="header.tpl"}

{if isset($smarty.session.IS_LOGGED)}
{include file="form-add-category.tpl"}
{/if}


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
            {foreach from=$categories item=$category}
                <tr>
                    <th scope="row">~</th>
                    <td> {$category->id_tipo_periferico} </td>
                    {if isset($smarty.session.IS_LOGGED)}
                        <td> <a href='editCategory/{$category->id}' type='button' class='btn btn-warning'>Editar</a> </td>
                        <td> <a href='deleteCategory/{$category->id}' type='button' class='btn btn-danger'>Borrar</a> </td>
                    {/if}
                </tr>
            {/foreach}
        </tbody>
    </table>

</div>



{include file="footer.tpl"}