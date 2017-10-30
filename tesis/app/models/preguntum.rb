class Preguntum < ApplicationRecord
	has_many :had_rda 
	has_many :resultados_de_aprendizajes, through: :had_rda
	belongs_to :programa
	
end
