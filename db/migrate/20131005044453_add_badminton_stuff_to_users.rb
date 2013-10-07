class AddBadmintonStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :md, :boolean
    add_column :users, :xd, :boolean
    add_column :users, :wd, :boolean

    add_column :users, :paid, :boolean,  default: false
  end
end
