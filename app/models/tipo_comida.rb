class TipoComida < ApplicationRecord

    before_validation :convertir_capitalizar

    has_many :restaurantes #plural

    validates(:tipo, presence: true)
    validates(:tipo, uniqueness: true)

    private
    def convertir_capitalizar
        # puts "ANTES DE LA VALIDACION ***"
        self.tipo.capitalize!
    
        #self.tipo = self.tipo.upcase
        #self.tipo = self.tipo.downcase
        #@tipo.capitalize!
    end

end
