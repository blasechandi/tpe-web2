{include file="header.tpl"}

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
      <tr>
        <th scope="row">~</th>
        <td> {$periferico->id_tipo_periferico} </td>
        <td>{$periferico->marca}</td>
        <td>{$periferico->nombre}</td>
        <td>{$periferico->color}</td>
        <td>{$periferico->descripcion}</td>
        <td>{$periferico->precio}</td>
      </tr>
  </tbody>
</table>


<form action="editPeriferico/{$periferico->id}" method="POST" class="mt-3 mb-2">
    <div class="form-floating mb-1 ">
      <input type="text" name="Nmarca" class="form-control" id="floatingInput" placeholder="Marca">
      <label for="floatingInput">{$periferico->marca}</label>
    </div>
    <div class="form-floating mb-1 ">
      <input type="text" name="Nnombre" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">{$periferico->nombre}</label>
    </div>
    <div class="form-floating mb-1 ">
      <input type="text" name="Ncolor" class="form-control" id="floatingInput" placeholder="Marca">
      <label for="floatingInput">{$periferico->color}</label>
    </div>
    <div class="form-floating mb-1">
      <textarea class="form-control" name="Ndescripcion" placeholder="Descripcion" id="floatingTextarea"></textarea>
      <label for="floatingTextarea">{$periferico->descripcion}</label>
    </div>
    <div class="form-floating mb-1">
        <select class="form-select" name="Ntipo" aria-label=".form-select-sm example">
          <option selected>{$periferico->id_tipo_periferico}</option>
          <option value="Mouse"> Mouse</option> 
          <option value="Teclado"> Teclado</option>          
          <option value="Auricular"> Auricular</option>                   
        </select>
    </div>
    
    <div class="form-floating mb-1">
      <input type="number" name="Nprecio" class="form-control" id="floatingPassword" placeholder="Precio">
      <label for="floatingPassword">{$periferico->precio}</label>
    </div>
    <div class="col-12">
    <button class="btn btn-primary" type="submit">Editar</button>
  </div>
</form>

{include file="footer.tpl"}