class ChangeAmountPayedToBeIntegerAndBePaidInWorkOrders2 < ActiveRecord::Migration[5.1]
  def change
    rename_column :work_orders, :integer, :amount_paid
    change_column :work_orders, :amount_paid, :integer
  end
end
