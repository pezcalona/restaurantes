class TipoComida < ApplicationRecord
    has_many :restaurantes #plural

    validates(:tipo, presence: true)
    validates(:tipo, uniqueness: true)
end
