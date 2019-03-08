class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
