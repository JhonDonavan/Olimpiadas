class Atleta < ApplicationRecord
    has_many :score
    has_many :competicao, through: :score
    
    validates :atleta, presence: true

end
