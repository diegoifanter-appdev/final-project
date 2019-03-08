# == Schema Information
#
# Table name: cash_balances
#
#  id         :integer          not null, primary key
#  date       :date
#  balance    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CashBalance < ApplicationRecord
  
  validates :date, presence: true
  validates :balance, presence: true
  
end
