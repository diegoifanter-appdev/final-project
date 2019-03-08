# == Schema Information
#
# Table name: expense_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ExpenseCategory < ApplicationRecord
  
  validates :name, presence: true
  
  has_many :expense_subcategories, :foreign_key => "category_id", :dependent => :destroy
  has_many :expenses, :through => :expense_subcategories, :source => :expenses
  
end
