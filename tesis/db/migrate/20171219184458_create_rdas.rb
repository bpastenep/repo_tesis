class CreateRdas < ActiveRecord::Migration[5.0]
  def change
    create_table :rdas do |t|
      t.text :descripcion
      t.references :programa, foreign_key: true
      t.timestamps
    end
  end
end
