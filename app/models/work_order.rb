# == Schema Information
#
# Table name: work_orders
#
#  id                :integer          not null, primary key
#  employee_id       :integer
#  total_amount      :integer
#  amount_paid       :integer
#  date_in           :date
#  due_date          :date
#  date_out          :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  work_order_number :integer
#

class WorkOrder < ApplicationRecord
  
  validates :work_order_number, presence: true, uniqueness: true
  validates :total_amount, presence: true
  
  has_one :invoice, :dependent => :destroy
  belongs_to :employee
  
end
