class Stock < ApplicationRecord
  has_many :stock_items
  accepts_nested_attributes_for :stock_items, reject_if: :all_blank, allow_destroy: true
  
end
