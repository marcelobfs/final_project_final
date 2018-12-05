class CreatePregnancies < ActiveRecord::Migration[5.1]
  def change
    create_table :pregnancies do |t|
      t.integer :cattle_id
      t.string :brinco
      t.string :touro
      t.integer :prenha

      t.timestamps
    end
  end
end
