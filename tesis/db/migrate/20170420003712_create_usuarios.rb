class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.integer :user_id
      t.integer :rol
      t.string :nombre
      t.string :rut
      t.text :mail

      t.timestamps
    end
  end
end
