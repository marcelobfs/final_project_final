class CreateCattleSales < ActiveRecord::Migration[5.1]
  def change
    create_table :cattle_sales do |t|
      t.integer :cattle_id
      t.string :brinco
      t.float :peso
      t.float :preco_por_kilo

      t.timestamps
    end
  end
end
