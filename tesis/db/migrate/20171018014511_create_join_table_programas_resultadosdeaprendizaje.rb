class CreateJoinTableProgramasResultadosdeaprendizaje < ActiveRecord::Migration[5.0]
  def change
    create_join_table :programs, :resultados_de_aprendizajes do |t|
      # t.index [:program_id, :resultados_de_aprendizaje_id]
      # t.index [:resultados_de_aprendizaje_id, :program_id]
    end
  end
end
