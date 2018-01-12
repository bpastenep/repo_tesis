class CreateUnities < ActiveRecord::Migration[5.0]
  def change
    create_table :unities do |t|
      t.text :descripcion
      t.string :nombre
      t.references :rda_generals, foreign_key: true

      t.timestamps
    end
  end
end
