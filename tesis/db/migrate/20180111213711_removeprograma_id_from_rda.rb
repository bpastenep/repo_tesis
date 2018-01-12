class RemoveprogramaIdFromRda < ActiveRecord::Migration[5.0]
  def change
  	remove_column :rdas, :programa_id
  end
end
