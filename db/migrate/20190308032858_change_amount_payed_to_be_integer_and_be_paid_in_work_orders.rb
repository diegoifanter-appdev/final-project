class ChangeAmountPayedToBeIntegerAndBePaidInWorkOrders < ActiveRecord::Migration[5.1]
  def change
    
    rename_column :work_orders, :amount_payed, :amount_paid
    rename_column :work_orders, :amount_paid, :integer
    
  end
end
