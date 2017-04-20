class AddEvalucionIdToResultado < ActiveRecord::Migration[5.0]
  def change
    add_column :resultados, :evaluacion_id, :integer
  end
end
