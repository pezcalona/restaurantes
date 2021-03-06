Rails.application.routes.draw do
 
  #Ruta a las votaciones

  root "votaciones#listar"
  post "votaciones/:id_restaurante/puntaje/:id_puntaje", to: "votaciones#votar", as: 'votar_restaurante'
  
  # Rutas Tipos Comidas

  # Verbo /       #controlador/plural         #controlador#metodo             alias (cómo creamos el path en rails)
  #Get/Put/                                   Quién se hace cargo
  #Patch/Delete
  
  get             'tipos_comidas',             to: 'tipos_comidas#listar',     as: 'tipos_comidas'      # listar 
  get             'tipos_comidas/nuevo',       to: 'tipos_comidas#crear',      as: 'nuevo_tipo_comida'  # formulario de nuevo
  get             'tipos_comidas/:id',         to: 'tipos_comidas#mostrar',    as: 'tipo_comida'        # vista del detalle de un tipo de comida
  get             'tipos_comidas/:id/editar',  to: 'tipos_comidas#editar',     as: 'editar_tipo_comida' # formulario para editar el registro

  post     'tipos_comidas',             to: 'tipos_comidas#guardar'
  put      'tipos_comidas/:id',         to: 'tipos_comidas#actualizar'
  patch    'tipos_comidas/:id',         to: 'tipos_comidas#actualizar'
  delete   'tipos_comidas/:id',         to: 'tipos_comidas#eliminar'

  # Puntajes

  get       'puntajes',                 to: 'puntajes#listar',          as: 'puntajes'
  get       'puntajes/nuevo',           to: 'puntajes#crear',           as: 'nuevo_puntaje'
  get       'puntajes/:id',             to: 'puntajes#mostrar',         as: 'puntaje'
  get       'puntajes/:id/editar',      to: 'puntajes#editar',          as: 'editar_puntaje'

  post      'puntajes',                 to: 'puntajes#guardar'
  put       'puntajes/:id',             to: 'puntajes#actualizar'
  patch     'puntajes/:id',             to: 'puntajes#actualizar'
  delete    'puntajes/:id',             to: 'puntajes#eliminar'

  # Usuarios

  get       'usuarios',                 to: 'usuarios#listar',         as: 'usuarios'
  get       'usuarios/nuevo',           to: 'usuarios#crear',          as: 'nuevo_usuario'
  get       'usuarios/:id',             to: 'usuarios#mostrar',        as: 'usuario'
  get       'usuarios/:id/editar',      to: 'usuarios#editar',         as: 'editar_usuario'

  post      'usuarios',                 to: 'usuarios#guardar'
  put       'usuarios/:id',             to: 'usuarios#actualizar'
  patch     'usuarios/:id',             to: 'usuarios#actualizar'
  delete    'usuarios/:id',             to: 'usuarios#eliminar'

  # get       'usuarios/nuevo',           to: 'usuarios#crear',         as: 'nuevo_usuario'
  # get       'usuarios/:id',             to: 'usuarios#mostrar',       as: 'usuario'
  # get       'usuarios/:id/editar',      to: 'usuarios#editar',        as: 'editar_usuario'

  # post      'usuarios',                 to: 'usuarios#guardar',       as: 'usuarios'
  # patch     'usuarios/:id',             to: 'usuarios#actualizar'
  # put       'usuarios/:id',             to: 'usuarios#actualizar' # buena práctica colocar el PUT 
  # delete    'usuarios/:id',             to: 'usuarios#eliminar'

  # Restaurantes
  get           'restaurantes',               to: 'restaurantes#listar',  as: 'restaurantes'
  get           'restaurantes/nuevo',         to: 'restaurantes#crear',   as: 'nuevo_restaurante'
  get           'restaurantes/:id',           to: 'restaurantes#mostrar', as: 'restaurante'
  get           'restaurantes/:id/editar',    to: 'restaurantes#editar',  as: 'editar_restaurante'
  
  post          'restaurantes',               to: 'restaurantes#guardar'
  patch         'restaurantes/:id',           to: 'restaurantes#actualizar'
  put           'restaurantes/:id',           to: 'restaurantes#actualizar'
  delete        'restaurantes/:id',           to: 'restaurantes#eliminar'

  # Platos

  get 'platos',                    to: 'platos#listar',   as: 'platos'
  get 'platos/nuevo',              to: 'platos#crear',    as: 'nuevo_plato'
  get 'platos/:id',                to: 'platos#mostrar',  as: 'plato'
  get 'platos/:id/editar',         to: 'platos#editar',   as: 'editar_plato'
  
  post    'platos',            to: 'platos#guardar'
  patch   'platos',            to: 'platos#actualizar'
  put     'platos',            to: 'platos#actualizar'
  delete  'platos',            to: 'platos#eliminar'

end
