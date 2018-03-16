class CreateChargers < ActiveRecord::Migration[5.1]
  def change
    create_table :chargers do |t|
      t.string :chargerNo

      t.timestamps
    end
  end
end
