class AddApprovedToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :approved, :boolean, :default => false, :null => false
  end
end
