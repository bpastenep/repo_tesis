class CreatePlanificacions < ActiveRecord::Migration[5.0]
  def change
    create_table :planificacions do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.integer :cantidad_clases

      t.timestamps
    end
  end
end
