class Planificacion < ApplicationRecord
	belongs_to :programa
	has_and_belongs_to_many :resultados_de_aprendizajes

	
end
