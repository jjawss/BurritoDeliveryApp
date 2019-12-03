class Store < ApplicationRecord
  has_many :transactions
  has_many :users, through :transactions
end