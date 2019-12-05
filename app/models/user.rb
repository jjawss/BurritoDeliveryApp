class User < ApplicationRecord
  has_many :transactions
  has_many :stores, through: :orders
end