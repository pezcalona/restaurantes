class Usuario < ApplicationRecord
    has_secure_password

    before_validation :convertir_capitalizar

    has_many :invitaciones
    # has_many :invitaciones_restaurantes, through: :invitaciones, source: :restaurante
    # has_many :camino1, through: :invitaciones, source: :restaurante
    
    has_many :promociones
    # has_many :camino2, through: :promociones, source: :restaurante

    has_many :puntajes_platos    
    has_many :puntajes_restaurantes

    validates(:nombre_usuario, presence: true)
    validates(:nombre_usuario, uniqueness: true)

    private
    def convertir_capitalizar
        self.tipo.capitalize!
    end
    
end
