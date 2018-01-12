class AddReferenceToUnity < ActiveRecord::Migration[5.0]
  def change
    add_reference :unities, :rdas, foreign_key: true
  end
end
