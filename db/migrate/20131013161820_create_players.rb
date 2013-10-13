class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email

      t.boolean :md
      t.boolean :wd
      t.boolean :xd
      t.boolean :paid

      t.string  :md_partner
      t.string  :wd_partner
      t.string  :xd_partner
      t.string  :address_street
      t.string  :address_city_state
      t.string  :address_zip
      t.string  :phone
      t.string  :club
      t.string  :gender
      t.integer :fees
      t.string  :signature
      t.string  :skill

      t.timestamps
    end

      add_index :players, :email, unique: true
  end
end
