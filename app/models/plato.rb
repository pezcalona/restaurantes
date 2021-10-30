class Plato < ApplicationRecord

  before_validation :convertir_capitalizar

  belongs_to :restaurante
  has_many :puntajes_plato
  has_many :puntajes, through: :puntajes_platos

  validates(:nombre, presence: true)
  validates(:precio,precense: true)
  validates(:descripcion, presence: true)

  private
    def convertir_capitalizar
        self.tipo.capitalize!
    end
end
