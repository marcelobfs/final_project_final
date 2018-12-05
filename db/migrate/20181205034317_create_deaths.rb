class CreateDeaths < ActiveRecord::Migration[5.1]
  def change
    create_table :deaths do |t|
      t.integer :cattle_id
      t.string :brinco
      t.string :causa

      t.timestamps
    end
  end
end
