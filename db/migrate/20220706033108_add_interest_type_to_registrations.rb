class AddInterestTypeToRegistrations < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :interest_type, :string
  end
end
