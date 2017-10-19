class CreateHadRdas < ActiveRecord::Migration[5.0]
  def change
    create_table :had_rdas do |t|
      t.references :resultados_de_aprendizaje, foreign_key: true
      t.references :programa, foreign_key: true

      t.timestamps
    end
  end
end
