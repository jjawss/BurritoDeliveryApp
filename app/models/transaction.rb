class Transaction < ApplicationRecord
  
  belongs_to :user
  belong_to :store
  has_many :burritos

end