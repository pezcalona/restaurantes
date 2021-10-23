Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#usuario
  get   'usuarios/nuevo',     to: 'usuarios#crear',     as:'nuevo_usuario'
  get   'usuarios/:id',       to: 'usuarios#mostrar',    as:'usuario'
  
  post  'usuarios',           to: 'usuarios#guardar',   as: 'usuarios'
end
