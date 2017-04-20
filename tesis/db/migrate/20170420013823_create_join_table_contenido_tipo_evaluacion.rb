class CreateJoinTableContenidoTipoEvaluacion < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Contenidos, :Tipo_Evaluacions do |t|
      # t.index [:contenido_id, :tipo_evaluacion_id]
      # t.index [:tipo_evaluacion_id, :contenido_id]
    end
  end
end
