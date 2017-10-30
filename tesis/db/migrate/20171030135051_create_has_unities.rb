class CreateHasUnities < ActiveRecord::Migration[5.0]
  def change
    create_table :has_unities do |t|
      t.references :planificacions, foreign_key: true
      t.references :unities, foreign_key: true
      t.timestamps
    end
  end
end
