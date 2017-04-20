class AddEvalucionIdToObjetivoAprendizaje < ActiveRecord::Migration[5.0]
  def change
    add_column :objetivo_aprendizajes, :evaluacion_id, :integer
  end
end
