# == Schema Information
#
# Table name: employees
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  percentage_fee :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Employee < ApplicationRecord
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  has_many :work_orders
  has_many :invoices, :through => :work_orders, :source => :invoice
  
end
