class AddMoreBadmintonStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :md_partner,         :string
    add_column :users, :wd_partner,         :string
    add_column :users, :xd_partner,         :string
    add_column :users, :address_street,     :string 
    add_column :users, :address_city_state, :string
    add_column :users, :address_zip,        :string 
    add_column :users, :phone,              :string
    add_column :users, :club,               :string
    add_column :users, :gender,             :string
    add_column :users, :fees,               :integer
  end
end
