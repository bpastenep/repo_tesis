class CreatePropositosRdas < ActiveRecord::Migration[5.0]
  def change
    create_table :propositos_rdas do |t|
      t.references :rdas, foreign_key: true
      t.references :propositos, foreign_key: true

      t.timestamps
    end
  end
end
