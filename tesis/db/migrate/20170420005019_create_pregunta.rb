class CreatePregunta < ActiveRecord::Migration[5.0]
  def change
    create_table :pregunta do |t|
      t.integer :pregunta_id
      t.string :contenido

      t.timestamps
    end
  end
end
