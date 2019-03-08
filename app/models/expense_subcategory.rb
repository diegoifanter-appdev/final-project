# == Schema Information
#
# Table name: expense_subcategories
#
#  id          :integer          not null, primary key
#  name        :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ExpenseSubcategory < ApplicationRecord
  
  validates :name, presence: true
  validates :category_id, presence: true
  
  belongs_to :category, :class_name => "ExpenseCategory"
  has_many :expenses, :foreign_key => "subcategory_id", :dependent => :destroy
  
end
