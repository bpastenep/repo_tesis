class CreateProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :programas do |t|
      t.string :carrera
      t.string :nombre
      t.integer :codigo
      t.text :requisitos
      t.string :dicta
      t.string :ano_sem_vil
      t.string :categora
      t.integer :horas_presen
      t.integer :TEL
      t.text :perfil_prof
      t.string :version
      t.string :resolucion
      t.string :autor_es
      t.text :descripcion

      t.timestamps
    end
  end
end
