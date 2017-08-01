class CreateResultadosDeAprendizajes < ActiveRecord::Migration[5.0]
  def change
    create_table :resultados_de_aprendizajes do |t|
      t.text :descripcion_resultado

      t.timestamps
    end
  end
end
