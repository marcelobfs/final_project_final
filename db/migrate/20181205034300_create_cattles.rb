class CreateCattles < ActiveRecord::Migration[5.1]
  def change
    create_table :cattles do |t|
      t.string :brinco
      t.date :data_compra_ou_desmame
      t.date :data_nascimento
      t.string :origem
      t.string :raca
      t.string :sexo
      t.string :pai
      t.string :brinco_mae
      t.float :peso_entrada
      t.float :preco_por_kilo
      t.string :status

      t.timestamps
    end
  end
end
