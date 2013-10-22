class AddNotNullToPlayersPaid < ActiveRecord::Migration
  def change
    change_column :players, :paid, :boolean, :default => false, :null => false
  end
end
