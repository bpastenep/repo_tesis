class CreateJoinTablePropositoRda < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Propositos, :Rdas do |t|
       t.index [:proposito_id, :rda_id]
       t.index [:rda_id, :proposito_id]
    end
  end
end
