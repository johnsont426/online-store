class ChangeRoleInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :role, :integer, default: 1
  end
end
