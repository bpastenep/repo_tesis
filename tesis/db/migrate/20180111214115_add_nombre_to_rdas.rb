class AddNombreToRdas < ActiveRecord::Migration[5.0]
  def change
    add_column :rdas, :nombre, :string
  end
end
