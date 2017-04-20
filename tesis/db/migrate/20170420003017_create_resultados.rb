class CreateResultados < ActiveRecord::Migration[5.0]
  def change
    create_table :resultados do |t|
      t.integer :resultado_id
      t.integer :puntaje_max
      t.string :punteje_obtenido
      t.string :integer

      t.timestamps
    end
  end
end
