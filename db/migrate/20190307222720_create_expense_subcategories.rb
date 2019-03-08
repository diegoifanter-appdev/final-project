class CreateExpenseSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_subcategories do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
