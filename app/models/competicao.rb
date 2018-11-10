class Competicao < ApplicationRecord
    
    has_many :score
    has_many :atleta, through: :score

    validates :competicao, presence: true
    validates :dt_ini, presence: true
    validates :dt_fim, presence: true

    
end
