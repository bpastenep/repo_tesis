class Planificacion < ApplicationRecord
	belongs_to :programas
	has_and_belongs_to_many :resultados_de_aprendizajes
end
