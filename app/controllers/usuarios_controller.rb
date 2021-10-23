class UsuariosController < ApplicationController

    #get/usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end
    #get/usuario/id
    def mostrar
        @usuario = Usuario.find(params[:id])
    end

    #post/usuarios
    def guardar
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        @usuario = Usuario.new(datos_usuario)
        if @usuario.save
            redirect_to usuario_path(@usuario)
        else
            render :crear
        end
    end
end