class AddGamestuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dead,     :boolean
    add_column :users, :werewolf, :boolean
  end
end
