class CreateClases < ActiveRecord::Migration[5.0]
  def change
    create_table :clases do |t|
      t.integer :clase_id
      t.string :nombre_clase
      t.text :descripcion_clase

      t.timestamps
    end
  end
end
