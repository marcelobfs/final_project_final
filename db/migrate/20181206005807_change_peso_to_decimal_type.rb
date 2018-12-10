class ChangePesoToDecimalType < ActiveRecord::Migration[5.1]
  def change
    change_column :weightings, :peso, :float
  end
end
