class Competicao < ApplicationRecord
    validates :competicao, presence: true
    validates :dt_ini, presence: true
    validates :dt_fim, presence: true
    validates :encerrada, presence: true
    
end
