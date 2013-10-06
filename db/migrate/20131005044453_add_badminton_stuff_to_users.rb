class AddBadmintonStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :md, :string 
    add_column :users, :xd, :string
    add_column :users, :wd, :string
    add_column :users, :partner, :string 

    add_column :users, :paid, :boolean,  default: false
  end
end
