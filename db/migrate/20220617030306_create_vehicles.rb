class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :pick_up_address
      t.string :destination_address
      t.string :pick_up_time
      t.string :destination_time
      t.string :vehicle

      t.timestamps
    end
  end
end
