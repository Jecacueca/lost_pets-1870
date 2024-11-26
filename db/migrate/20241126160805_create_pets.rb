class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :species
      t.date :date_lost

      t.timestamps
    end
  end
end
