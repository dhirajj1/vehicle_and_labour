class CreateLabours < ActiveRecord::Migration[7.0]
  def change
    create_table :labours do |t|
      t.string :first_name
      t.string :last_name
      t.string :labour
      t.string :address
      t.string :contact_no

      t.timestamps
    end
  end
end
