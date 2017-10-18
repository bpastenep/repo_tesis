class AddDependencyPlanificacions < ActiveRecord::Migration[5.0]
  def change

    change_table :planificacions do |t|
      t.belongs_to :programa, index: true
    end

    change_table :resultados_de_aprendizajes do |t|
    	t.belongs_to :planificaciones, index: true
    end
  end
end
