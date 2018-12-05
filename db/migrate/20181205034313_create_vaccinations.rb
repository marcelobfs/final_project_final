class CreateVaccinations < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccinations do |t|
      t.integer :cattle_id
      t.string :brinco
      t.string :tipo_vacina

      t.timestamps
    end
  end
end
