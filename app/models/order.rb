class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
  has_many :stocks
  
  def total_price
    order_items.inject(0) { |sum, item| sum + item.total_price }
  end
end
