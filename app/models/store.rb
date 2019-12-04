class Store < ApplicationRecord
  has_many :orders
  has_many :Users, through :orders
end