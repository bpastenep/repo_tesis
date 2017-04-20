class AddEvalucionIdToContenido < ActiveRecord::Migration[5.0]
  def change
    add_column :contenidos, :evaluacion_id, :integer
  end
end
