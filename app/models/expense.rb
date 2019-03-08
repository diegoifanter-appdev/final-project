# == Schema Information
#
# Table name: expenses
#
#  id             :integer          not null, primary key
#  amount         :integer
#  subcategory_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Expense < ApplicationRecord
  
  validates :amount, presence: true
  validates :subcategory_id, presence: true
  
  belongs_to :subcategory, :class_name => "ExpenseSubcategory"
  has_one :category, :through => :subcategory, :source => :category
  
end
