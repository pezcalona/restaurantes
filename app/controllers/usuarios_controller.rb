class UsuariosController < ApplicationController

    #get/usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    #post/usuarios
    def guardar
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        @usuario = Usuario.new(datos_usuario)
        if @usuario.save
            #mostrar un mensaje o vista de confirmación
        else
            render :crear
        end
    end
end