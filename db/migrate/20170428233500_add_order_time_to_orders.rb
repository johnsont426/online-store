class AddOrderTimeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_time, :datetime
  end
end
