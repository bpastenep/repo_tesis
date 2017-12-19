class CreateUnities < ActiveRecord::Migration[5.0]
  def change
    create_table :unities do |t|
      t.text :descripcion
      t.string :id_rda
      t.string :nombre
      t.integer :id_programa
      t.timestamps
    end
  end
end
