class AddObjetivoAprendizajeIdToResultado < ActiveRecord::Migration[5.0]
  def change
    add_column :resultados, :objetivo_aprendizaje_id, :integer
  end
end
