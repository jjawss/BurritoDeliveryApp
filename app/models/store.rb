class Store < ApplicationRecord
  has_many :transactions
  has_many :Users, through :transactions
end