class CreateMarketPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :market_prices do |t|
      t.string :last_update
      t.string :observation
      t.string :age_group
      t.string :gender
      t.float :price

      t.timestamps
    end
  end
end
