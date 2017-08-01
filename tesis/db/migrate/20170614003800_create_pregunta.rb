class CreatePregunta < ActiveRecord::Migration[5.0]
  def change
    create_table :pregunta do |t|
      t.text :pregunta_realizar
      t.integer :tipo_pregunta
      t.text :respuesta
      t.integer :id_imagen

      t.timestamps
    end
  end
end
