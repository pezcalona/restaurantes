class PuntajesController < ApplicationController

    before_action :asignar_puntaje, only: [:mostrar, :editar, :actualizar, :eliminar]

    # GET /puntajes
    def listar
        @todos_los_puntajes = Puntaje.all
    end

    # GET /puntajes/nuevo
    def crear
        @puntaje = Puntaje.new
    end

    # GET /puntajes/:id
    def mostrar
#        @puntaje = Puntaje.find(params[:id]) #repetido
    end

    # GET /puntajes/:id/editar
    def editar
#        @puntaje = Puntaje.find(params[:id]) #repetido
    end

    # POST /puntajes
    def guardar
#        datos_puntaje = params.require(:puntaje).permit(:tipo) #repetido2
        @puntaje = Puntaje.new(almacenar_puntaje)
        if @puntaje.save
            redirect_to puntajes_path
        else
            render :crear
        end
    end

    # PUT   /puntajes/:id
    # PATCH /puntajes/:id
    def actualizar
#        @puntaje = Puntaje.find(params[:id]) #repetido
#        datos_puntaje = params.require(:puntaje).permit(:tipo) #repetido2
        @puntaje.tipo = almacenar_puntaje[:tipo]
        @puntaje.save
        redirect_to puntajes_path
    end

    # DELETE /puntajes/:id    
    def eliminar
#        @puntaje = Puntaje.find(params[:id]) #repetido
        @puntaje.destroy
        redirect_to puntajes_path
    end

private

    def asignar_puntaje
        @puntaje = Puntaje.find(params[:id])
    end

    def almacenar_puntaje
        datos_puntaje = params.require(:puntaje).permit(:tipo)
    end

end