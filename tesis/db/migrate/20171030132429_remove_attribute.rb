class RemoveAttribute < ActiveRecord::Migration[5.0]
  
  remove_column :planificacions , :fecha_inicio
  remove_column :planificacions , :fecha_termino
  remove_column :planificacions , :cantidad_clases

end
