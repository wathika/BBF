class CreateBatteries < ActiveRecord::Migration[5.1]
  def change
    create_table :batteries do |t|
      t.string :batteryNo

      t.timestamps
    end
  end
end
