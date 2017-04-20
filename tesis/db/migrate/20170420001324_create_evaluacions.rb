class CreateEvaluacions < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluacions do |t|
      t.integer :id_evaluacion
      t.date :fecha
      t.time :hora
      t.boolean :repetir

      t.timestamps
    end
  end
end
