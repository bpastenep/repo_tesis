class DeletePropositosRdasTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :Propositos_Rdas
  end
end
