class CreateCashBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :cash_balances do |t|
      t.date :date
      t.string :balance

      t.timestamps
    end
  end
end
