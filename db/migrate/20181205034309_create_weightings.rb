class CreateWeightings < ActiveRecord::Migration[5.1]
  def change
    create_table :weightings do |t|
      t.integer :cattle_id
      t.string :brinco
      t.string :lote
      t.string :peso

      t.timestamps
    end
  end
end
