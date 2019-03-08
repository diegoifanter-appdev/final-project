class AddWorkOrderNumberToWorkOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :work_orders, :work_order_number, :integer
  end
end
