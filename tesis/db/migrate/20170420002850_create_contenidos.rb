class CreateContenidos < ActiveRecord::Migration[5.0]
  def change
    create_table :contenidos do |t|
      t.integer :contenido_id
      t.text :descripcion_contenido

      t.timestamps
    end
  end
end
