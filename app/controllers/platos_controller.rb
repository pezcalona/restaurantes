class PlatosController < ApplicationController

    before_action :asignar_plato, only: [:mostrar, :editar, :actualizar, :eliminar]
    before_action :consultar_restaurantes, only: [:crear, :editar] # accion para definir el restaurante

    def listar
        @platos = Plato.all
    end

    def crear
        @plato = Plato.new
    end

    def mostrar
    end

    def editar

    end

    def guardar
    @plato = Plato.new(params_plato)
    if @plato.save
        redirect_to platos_path # variable despues de path
    else
        consultar_restaurantes
        render :crear
    end
    end

    def actualizar
    if @plato.update(params_plato)
        redirect_to plato_path(@plato)
    else
        consultar_restaurantes
        render :editar
    end
    end

    def eliminar
    @plato.destroy
    end

    private
    
    def asignar_plato
    @plato = Plato.find(params[:id])
    end

    def params_plato
    datos_platos = params.require(:plato).permit(:nombre, :descripcion, :precio, :restaurante_id) #S de Datos_platos / no aparece en github
    end

    def consultar_restaurantes
    @restaurantes = Restaurante.all
    end
end