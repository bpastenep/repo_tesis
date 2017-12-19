class Programa < ApplicationRecord
	has_many :planificacions
	has_many :had_rda
	has_many :resultados_de_aprendizajes, through: :had_rda
	has_many :preguntas, class_name: "Preguntum"
	has_many :has_unity
	has_many :untiies, through: :has_unity

	after_create :set_has_rda

	#Asignación del atributo virtual rda (Para cuando se crea)
	def rda=(value)
		@rda = value
	end

	def unidad=(value)
		@unidad = value
	end
	#Creación en la tabla Had_rda del id del programa y el id del resultado de aprendizaje
	def set_has_rda
		@rda.each do |rda_id|
			HadRda.create(resultados_de_aprendizaje_id: rda_id, programa_id: self.id)
		end
	end

end

