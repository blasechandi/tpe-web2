<form action="add" method="POST" class="mt-3 mb-2">
  <div class="form-floating mb-1 ">
    <input type="text" name="marca" class="form-control" id="floatingInput" placeholder="Marca">
    <label for="floatingInput">Marca</label>
  </div>
  <div class="form-floating mb-1 ">
    <input type="text" name="nombre" class="form-control" id="floatingPassword" placeholder="Password">
    <label for="floatingPassword">Nombre de Producto</label>
  </div>
  <div class="form-floating mb-1 ">
    <input type="text" name="color" class="form-control" id="floatingInput" placeholder="Marca">
    <label for="floatingInput">Color</label>
  </div>
  <div class="form-floating mb-1">
    <textarea class="form-control" name="descripcion" placeholder="Descripcion" id="floatingTextarea"></textarea>
    <label for="floatingTextarea">Descripcion</label>
  </div>
  <div class="form-floating mb-1">
      <select class="form-select" name="tipo" aria-label=".form-select-sm example">
      <option selected>Tipo de Periferico</option>
      {foreach from=$categories item=$category}
        <option value="{$category->id_tipo_periferico}"> {$category->id_tipo_periferico}</option> 
        {/foreach}                  
      </select>
  </div>
  
  <div class="form-floating mb-1">
    <input type="number" name="precio" class="form-control" id="floatingPassword" placeholder="Password">
    <label for="floatingPassword">Precio</label>
  </div>
  <div class="col-12">
  <button class="btn btn-primary" type="submit">Agregar</button>
</div>
</form>