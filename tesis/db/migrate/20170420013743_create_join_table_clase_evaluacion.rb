class CreateJoinTableClaseEvaluacion < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Clases, :Evaluacions do |t|
      # t.index [:clase_id, :evaluacion_id]
      # t.index [:evaluacion_id, :clase_id]
    end
  end
end
