
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tipo</th>
      <th scope="col">Marca</th>
      <th scope="col">Nombre</th>
      <th scope="col">Color</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Precio</th>
    </tr>
  </thead>
  <tbody>
    {foreach from=$perifericos item=$periferico}
      <tr>
        <th scope="row">~</th>
        <td> {$periferico->id_tipo_periferico} </td>
        <td>{$periferico->marca}</td>
        <td>{$periferico->nombre}</td>
        <td>{$periferico->color}</td>
        <td>{$periferico->descripcion}</td>
        <td>{$periferico->precio}</td>
        {if isset($smarty.session.IS_LOGGED)}
          <td> <a href='edit/{$periferico->id}' type='button' class='btn btn-warning'>Editar</a> </td>
          <td> <a href='delete/{$periferico->id}' type='button' class='btn btn-danger'>Borrar</a> </td>
        {/if}
      </tr>
    {/foreach}
  </tbody>
</table>