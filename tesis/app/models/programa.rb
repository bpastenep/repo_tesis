class Programa < ApplicationRecord
	#has_many :preguntas, class_name: "Preguntum"
	#has_many :has_unity
	#has_many :untiies, through: :has_unity
	has_one :rda_general
	#after_create 	:set_has_rda
	#Asignación del atributo virtual rda (Para cuando se crea)


end

