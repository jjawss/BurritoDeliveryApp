class Order < ApplicationRecord
  belongs_to :users
  belongs_to :stores
  has_many :burritos


  def total_price
    total = 0
    self.burritos.each do | burrito |
      total += burrito.price
    end
    return total
  end
  
end