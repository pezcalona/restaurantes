class Puntaje < ApplicationRecord

    before_validation :convertir_upcase

    has_many :puntajes_platos
    has_many :puntajes_restaurantes

    
    validates(:tipo, presence: true)
    validates(:tipo, uniqueness: true)

    private
    def convertir_upcase
        
        self.tipo = self.tipo.upcase
    end
    
end
