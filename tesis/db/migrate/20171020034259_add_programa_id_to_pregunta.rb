class AddProgramaIdToPregunta < ActiveRecord::Migration[5.0]
  def change
    add_reference :pregunta, :programa, foreign_key: true
    add_column :pregunta, :respuesta_1, :text
    add_column :pregunta, :respuesta_2, :text
    add_column :pregunta, :respuesta_3, :text
  end

end
