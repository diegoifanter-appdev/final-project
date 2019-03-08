class CreateWorkOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :work_orders do |t|
      t.integer :employee_id
      t.integer :total_amount
      t.string :amount_payed
      t.date :date_in
      t.date :due_date
      t.date :date_out

      t.timestamps
    end
  end
end
