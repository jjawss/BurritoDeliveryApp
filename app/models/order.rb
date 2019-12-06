class Order < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :burritos


  def total_price
    total = 0
    self.burritos.each do | burrito |
      total += burrito.price
    end
    return total
  end
  
end