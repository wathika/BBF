class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :motorNo
      t.string :batteryNo
      t.string :chargerNo
      t.string :colour

      t.timestamps
    end
  end
end
