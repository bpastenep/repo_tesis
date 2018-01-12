class CreateRdaGenerals < ActiveRecord::Migration[5.0]
  def change
    create_table :rda_generals do |t|
      t.text :descripcion
      t.references :programas
      t.string :nombre

      t.timestamps
    end
  end
end
