class Programa < ApplicationRecord
	has_many :planificacions

	after_create :set_has_rda

	def rda=(value)
		@rda = value
	end

	def set_has_rda
		@rda.each do |rda_id|
			HadRda.create(resultados_de_aprendizaje_id: rda_id, programa_id: self.id)
		end
	end
end
