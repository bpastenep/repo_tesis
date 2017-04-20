class CreateObjetivoAprendizajes < ActiveRecord::Migration[5.0]
  def change
    create_table :objetivo_aprendizajes do |t|
      t.integer :objetivo_aprendizaje_id
      t.text :descripcion_oa
      t.text :topico

      t.timestamps
    end
  end
end
