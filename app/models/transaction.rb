class Transaction < ApplicationRecord
  has_many :users
  has_many :stores
  belongs_to :burrito
end