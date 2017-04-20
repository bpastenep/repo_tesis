class CreateJoinTableUsuarioClase < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Usuarios, :Clases do |t|
      # t.index [:usuario_id, :clase_id]
      # t.index [:clase_id, :usuario_id]
    end
  end
end
