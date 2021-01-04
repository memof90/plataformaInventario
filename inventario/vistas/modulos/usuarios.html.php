<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Administrar Usuarios
      </h1>
      <ol class="breadcrumb">
        <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active">Administrar Usuarios</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">

        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuario">
          Agregar Usuario
        </button>

          
        </div>

        <div class="box-body">
         
        <table class="table table-bordered table-striped dt-responsive  tablas">

        <thead>
          <tr>
            <th style="width: 10px;">#</th>
            <th>Nombre</th>
            <th>Usuario</th>
            <th>Foto</th>
            <th>Perfil</th>
            <th>Estado</th>
            <th>Último login</th>
            <th>Acciones</th>

          </tr>
        </thead>

        <!-- body-table -->
        <tbody>
          <tr>
            <td>1</td>
            <td>Usuario Administrador</td>
            <td>admin</td>
            <td><img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail" width="40px"></td>
            <td>Administrador</td>
            <td><button class="btn btn-success btn-xs">Activado</button></td>
            <td>2019-05-08 15:30:32</td>
            <td>
              <div class="btn-group">
                <button class="btn btn-warning"><i class="fa fa-pencil" aria-hidden="true"></i></button>
                <button class="btn btn-danger"><i class="fa fa-times" aria-hidden="true"></i></button>
                
              </div>
            </td>
          </tr>
        </tbody>

        </table>


        </div>
        
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- ventana-Modal-agregar usuario -->
  
  <!-- Modal -->
<div id="modalAgregarUsuario" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <form role="form" method="post" enctype="multipart/form-data">

      <div class="modal-header" style="background: #3c8dbc; color: white;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Agregar Usuario</h4>
      </div>

      <div class="modal-body">
        <div class="box-body">
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
               <i class="fa fa-user" aria-hidden="true"></i></span>

               <input type="text" name="nuevoNombre" placeholder="Ingresar Nombre" required class="form-control input-lg">
            </div>
          </div> <!-- nombreUsuario -->

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
               <i class="fa fa-key" aria-hidden="true"></i></span>

               <input type="text" name="nuevoUsuario" placeholder="Ingresar Usuario" required class="form-control input-lg">
            </div>
          </div><!-- entradaUsuario -->

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
               <i class="fa fa-lock" aria-hidden="true"></i></span>

               <input type="password" name="nuevoPassword" placeholder="Ingresar Contraseña" required class="form-control input-lg">
            </div>
          </div><!-- entradaContraseña -->

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
               <i class="fa fa-users" aria-hidden="true"></i></span>

               <select name="nuevoPerfil"  class="form-control input-lg">
                 <option value="">Seleccionar Perifl</option>
                 <option value="Administrador">Administrador</option>
                 <option value="Especial">Especial</option>
                 <option value="Vendedor">Vendedor</option>
               </select>
            </div>
          </div><!-- seleccionarPerfil -->

          <div class="form-group">
            <div class="panel">SUBIR FOTO</div>
            <input type="file" id="nuevaFoto" name="nuevaFoto">
            <p class="help-block">Peso máximo de la foto 200 MB</p>
            <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail" width="100px">
          </div><!-- subirFoto -->


        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Salir</button>
        <button type="submit" class="btn btn-primary " data-dismiss="modal">Guardar Usuario</button>
      </div>
      </form>
    </div>

  </div>
</div>
