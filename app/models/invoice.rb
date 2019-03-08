# == Schema Information
#
# Table name: invoices
#
#  id             :integer          not null, primary key
#  invoice_number :integer
#  creation_date  :date
#  work_order_id  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Invoice < ApplicationRecord
  
  validates :invoice_number, presence: true, uniqueness: true
  validates :work_order_id, presence: true
  validates :creation_date, presence: true
  
  belongs_to :work_order
  has_one :employee, :through => :work_order, :source => :employee
  
end
