class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.date :creation_date
      t.integer :work_order_id

      t.timestamps
    end
  end
end
